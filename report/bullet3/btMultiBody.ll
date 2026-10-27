Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBody?download=true
inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZNK11btMultiBody12solveImatrixERK20btSpatialForceVectorR21btSpatialMotionVector:bb.a
  %i.rn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> %i.qs, <2 x float> %i.rm)
  %i.ro = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qg, <2 x float> %i.mj, <2 x float> %i.rn)
  %i.rp = fmul float %i.mn, %i.ql
  %i.rq = extractelement <2 x float> %i.mm, i64 0
  %i.rr = tail call float @llvm.fmuladd.f32(float %i.qi, float %i.rq, float %i.rp)
  %i.rs = tail call noundef float @llvm.fmuladd.f32(float %i.qp, float %i.br, float %i.rr)
  %i.rt = fmul <2 x float> %i.qv, %i.ln
  %i.ru = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.qx, <2 x float> %i.rt)
  %i.rv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nu, <2 x float> %i.ml, <2 x float> %i.ru)
  %i.rw = fmul float %i.mp, %i.lx
  %i.rx = extractelement <2 x float> %i.mo, i64 0
  %i.ry = tail call float @llvm.fmuladd.f32(float %i.ly, float %i.rx, float %i.rw)
  %i.rz = tail call noundef float @llvm.fmuladd.f32(float %i.nx, float %i.bv, float %i.ry)
  %i.sa = fadd <2 x float> %i.rv, %i.ro
  %i.sb = fadd float %i.rz, %i.rs
  %.sroa.8.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sb, i64 0
  store <2 x float> %i.rl, ptr %2, align 4
  %.sroa.851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.851.8.vec.insert275, ptr %.sroa.851.0..sroa_idx, align 4, !tbaa !21
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x float> %i.sa, ptr %i.sc, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <2 x float> %.sroa.8.8.vec.insert, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.h, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK11btMultiBody9mulMatrixEPKfS1_iiiiPf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %6, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.c = icmp sgt i32 %5, 0
  %i.d = zext nneg i32 %6 to i64                  ; 5 uses
  br i1 %i.c, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.e = zext nneg i32 %3 to i64
  %i.f = mul nuw nsw i64 %i.d, %i.e
  %i.g = shl nuw i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 %i.g, i1 false), !tbaa !20
  br label %._crit_edge.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.h = sext i32 %4 to i64
  %wide.trip.count46 = zext nneg i32 %3 to i64
  %wide.trip.count41 = zext nneg i32 %6 to i64
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %5, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod54 = trunc i32 %5 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge30.split.us.us
  %indvars.iv43 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next44, %._crit_edge30.split.us.us ] ; 3 uses
  %i.j = mul nuw nsw i64 %indvars.iv43, %i.d
  %i.k = mul nsw i64 %indvars.iv43, %i.h
  %invariant.gep52 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.j
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.k ; 3 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 3 uses
  %gep53 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep52, i64 %indvars.iv38 ; 4 uses
  store float 0.000000e+00, ptr %gep53, align 4, !tbaa !20
  %invariant.gep50 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv38 ; 3 uses
  br i1 %i.i, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %i.l = phi float [ %i.t, %.lr.ph.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.m = load float, ptr %gep, align 4, !tbaa !20
  %i.n = mul nuw nsw i64 %indvars.iv, %i.d
  %gep51 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50, i64 %i.n
  %i.o = load float, ptr %gep51, align 4, !tbaa !20
  %i.p = tail call float @llvm.fmuladd.f32(float %i.m, float %i.o, float %i.l) ; 2 uses
  store float %i.p, ptr %gep53, align 4, !tbaa !20
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.q = load float, ptr %gep.1, align 4, !tbaa !20
  %i.r = mul nuw nsw i64 %indvars.iv.next, %i.d
  %gep51.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50, i64 %i.r
  %i.s = load float, ptr %gep51.1, align 4, !tbaa !20
  %i.t = tail call float @llvm.fmuladd.f32(float %i.q, float %i.s, float %i.p) ; 3 uses
  store float %i.t, ptr %gep53, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !7

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us ], [ %i.t, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.u = load float, ptr %gep.epil, align 4, !tbaa !20
  %i.v = mul nuw nsw i64 %indvars.iv.epil.init, %i.d
  %gep51.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50, i64 %i.v
  %i.w = load float, ptr %gep51.epil, align 4, !tbaa !20
  %i.x = tail call float @llvm.fmuladd.f32(float %i.u, float %i.w, float %.epil.init)
  store float %i.x, ptr %gep53, align 4, !tbaa !20
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge30.split.us.us, label %.lr.ph.us.us, !llvm.loop !344

._crit_edge30.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %._crit_edge.split, label %.preheader.us, !llvm.loop !8

._crit_edge.split:                                ; preds = %._crit_edge30.split.us.us, %.preheader.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK11btMultiBody12solveImatrixERK9btVector3S2_Pf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load float, ptr %i.d, align 4, !tbaa !20 ; 2 uses
  %i.f = fcmp ult float %i.e, f0x34000000
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !20
  %i.i = fcmp ult float %i.h, f0x34000000
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !20
  %i.l = fcmp ult float %i.k, f0x34000000
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load float, ptr %2, align 4, !tbaa !20
  %i.n = fdiv float %i.m, %i.e
  store float %i.n, ptr %3, align 4, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !20
  %i.q = load float, ptr %i.g, align 8, !tbaa !20
  %i.r = fdiv float %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.r, ptr %i.s, align 4, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !20
  %i.v = load float, ptr %i.j, align 4, !tbaa !20
  %i.w = fdiv float %i.u, %i.v
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi float [ 0.000000e+00, %bb.f ], [ %i.w, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sink, ptr %i.x, align 4, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !45 ; 2 uses
  %i.aa = fcmp ult float %i.z, f0x34000000
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load float, ptr %1, align 4, !tbaa !20
  %i.ac = fdiv float %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.ac, ptr %i.ad, align 4, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !20
  %i.ag = load float, ptr %i.y, align 8, !tbaa !45
  %i.ah = fdiv float %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.ah, ptr %i.ai, align 4, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !20
  %i.al = load float, ptr %i.y, align 8, !tbaa !45
  %i.am = fdiv float %i.ak, %i.al
  br label %.loopexit.sink.split

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 12
  store <2 x float> zeroinitializer, ptr %i.an, align 4, !tbaa !20
  br label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !99, !range !68, !noundef !69
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.k, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i64 24, i1 false), !tbaa !20
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.be = load float, ptr %i.bd, align 8, !tbaa !20, !noalias !353 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !20, !noalias !353 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bi = load float, ptr %i.bh, align 8, !tbaa !20, !noalias !353 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !20, !noalias !354 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !20, !noalias !354 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !20, !noalias !355
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !20, !noalias !355
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bz = load float, ptr %i.by, align 8, !tbaa !20, !noalias !355
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cf = load float, ptr %i.aw, align 8, !tbaa !20, !noalias !356 ; 4 uses
  %i.cg = load <6 x float>, ptr %i.at, align 4, !tbaa !20, !noalias !356 ; 4 uses
  %i.ch = shufflevector <6 x float> %i.cg, <6 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.ci = load float, ptr %i.au, align 8, !tbaa !20, !noalias !356 ; 3 uses
  %i.cj = load float, ptr %i.as, align 8, !tbaa !20, !noalias !356 ; 4 uses
  %i.ck = load <2 x float>, ptr %i.ar, align 8, !tbaa !20, !noalias !356 ; 6 uses
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.cm = extractelement <2 x float> %i.ck, i64 0
  %i.cn = load float, ptr %i.ay, align 8, !tbaa !20, !noalias !356 ; 5 uses
  %i.co = fneg float %i.cj
  %i.cp = shufflevector <6 x float> %i.cg, <6 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cq = insertelement <2 x float> %i.cp, float %i.ci, i64 0
  %i.cr = load <2 x float>, ptr %i.az, align 8, !tbaa !20, !noalias !353 ; 4 uses
  %i.cs = load <2 x float>, ptr %i.bb, align 8, !tbaa !20, !noalias !353 ; 5 uses
  %i.ct = load <2 x float>, ptr %i.br, align 8, !tbaa !20, !noalias !355 ; 2 uses
  %i.cu = load <2 x float>, ptr %i.bu, align 8, !tbaa !20, !noalias !355 ; 2 uses
  %i.cv = load <2 x float>, ptr %i.ax, align 4, !tbaa !20, !noalias !356 ; 3 uses
  %i.cw = load <2 x float>, ptr %i.av, align 8
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.cy = shufflevector <3 x float> %i.ch, <3 x float> %i.cx, <3 x i32> <i32 0, i32 4, i32 5>
  %i.cz = fneg <3 x float> %i.cy                  ; 3 uses
  %i.da = shufflevector <2 x float> %i.ck, <2 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 1>
  %i.db = insertelement <3 x float> %i.da, float %i.cn, i64 0
  %i.dc = insertelement <3 x float> %i.db, float %i.cf, i64 1
  %i.dd = fmul <3 x float> %i.dc, %i.cz
  %i.de = shufflevector <2 x float> %i.cv, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.df = insertelement <3 x float> %i.de, float %i.cf, i64 0
  %i.dg = insertelement <3 x float> %i.df, float %i.cn, i64 2
  %i.dh = shufflevector <2 x float> %i.ck, <2 x float> poison, <6 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <6 x float> %i.dh, <6 x float> %i.cg, <3 x i32> <i32 0, i32 6, i32 poison>
  %i.dj = shufflevector <3 x float> %i.di, <3 x float> %i.de, <3 x i32> <i32 0, i32 1, i32 3>
  %i.dk = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dg, <3 x float> %i.dj, <3 x float> %i.dd) ; 2 uses
  %i.dl = extractelement <3 x float> %i.dk, i64 1
  %i.dm = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.cf, i64 1
  %i.do = fneg <2 x float> %i.dn                  ; 2 uses
  %i.dp = insertelement <2 x float> %i.cl, float %i.cn, i64 0
  %i.dq = fmul <2 x float> %i.dp, %i.do
  %i.dr = insertelement <2 x float> %i.ck, float %i.cn, i64 1
  %i.ds = insertelement <2 x float> %i.cw, float %i.cj, i64 1
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.ds, <2 x float> %i.dq)
  %i.du = shufflevector <3 x float> %i.cz, <3 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = insertelement <2 x float> %i.du, float %i.co, i64 1
  %i.dw = fmul <2 x float> %i.ck, %i.dv
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.cq, <2 x float> %i.dw)
  %i.dy = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <6 x i32> <i32 1, i32 1, i32 1, i32 3, i32 poison, i32 poison>
  %i.dz = shufflevector <2 x float> %i.cs, <2 x float> poison, <6 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = shufflevector <2 x float> %i.cr, <2 x float> %i.cs, <6 x i32> <i32 0, i32 0, i32 0, i32 2, i32 2, i32 2>
  %i.eb = load <2 x float>, ptr %i.bj, align 8, !tbaa !20, !noalias !354 ; 8 uses
  %i.ec = load <2 x float>, ptr %i.bk, align 8, !tbaa !20, !noalias !354 ; 8 uses
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ee = insertelement <2 x float> %i.ed, float %i.bp, i64 0 ; 2 uses
  %i.ef = load <2 x float>, ptr %i.bl, align 8, !tbaa !20, !noalias !354 ; 7 uses
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.eh = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ei = insertelement <2 x float> %i.eh, float %i.bn, i64 0 ; 2 uses
  %i.ej = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ek = extractelement <2 x float> %i.ec, i64 0 ; 2 uses
  %i.el = extractelement <2 x float> %i.eb, i64 0 ; 2 uses
  %i.em = extractelement <2 x float> %i.ec, i64 1 ; 2 uses
  %i.en = extractelement <2 x float> %i.eb, i64 1 ; 2 uses
  %i.eo = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ep = insertelement <2 x float> %i.eo, float %i.bt, i64 0
  %i.eq = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.er = insertelement <2 x float> %i.eq, float %i.bw, i64 0
  %i.es = load <2 x float>, ptr %i.bx, align 8, !tbaa !20, !noalias !355
  %i.et = insertelement <3 x float> poison, float %i.bg, i64 0
  %i.eu = shufflevector <3 x float> %i.et, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ev = insertelement <3 x float> poison, float %i.be, i64 0
  %i.ew = shufflevector <3 x float> %i.ev, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ex = insertelement <3 x float> poison, float %i.bi, i64 0
  %i.ey = shufflevector <3 x float> %i.ex, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ez = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> %i.do, <2 x i32> <i32 0, i32 2>
  %i.fb = shufflevector <3 x float> %i.cz, <3 x float> poison, <6 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <6 x float> %i.fb, <6 x float> %i.cg, <2 x i32> <i32 2, i32 6>
  %i.fd = fmul <2 x float> %i.fa, %i.fc
  %i.fe = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.cj, i64 1
  %i.fg = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fh = insertelement <2 x float> %i.fg, float %i.ci, i64 0
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.fh, <2 x float> %i.fd) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.cl, %i.fi
  %i.fj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.dl, float %i.fj)
  %i.fl = extractelement <2 x float> %i.fi, i64 1
  %i.fm = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.fl, float %i.fk)
  %i.fn = fdiv float -1.000000e+00, %i.fm         ; 2 uses
  %i.fo = insertelement <3 x float> poison, float %i.fn, i64 0
  %i.fp = shufflevector <3 x float> %i.fo, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fq = fmul <3 x float> %i.dk, %i.fp           ; 8 uses
  %i.fr = shufflevector <3 x float> %i.fq, <3 x float> poison, <6 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2>
  %i.fs = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fu = fmul <2 x float> %i.dt, %i.ft           ; 8 uses
  %i.fv = fmul <2 x float> %i.dx, %i.ft           ; 7 uses
  %i.fw = shufflevector <2 x float> %i.fu, <2 x float> poison, <6 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %i.fx = shufflevector <6 x float> %i.dy, <6 x float> %i.fw, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 11>
  %i.fy = extractelement <3 x float> %i.fq, i64 1 ; 3 uses
  %i.fz = extractelement <3 x float> %i.fq, i64 2 ; 3 uses
  %i.ga = extractelement <3 x float> %i.fq, i64 0 ; 3 uses
  %i.gb = fmul <2 x float> %i.fi, %i.ft           ; 12 uses
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <6 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison>
  %i.gd = shufflevector <6 x float> %i.fx, <6 x float> %i.gc, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 10, i32 5>
  %i.ge = shufflevector <2 x float> %i.fu, <2 x float> %i.gb, <6 x i32> <i32 1, i32 2, i32 0, i32 1, i32 poison, i32 poison>
  %i.gf = shufflevector <6 x float> %i.ge, <6 x float> %i.dz, <6 x i32> <i32 0, i32 1, i32 2, i32 3, i32 7, i32 7>
  %i.gg = fmul <6 x float> %i.gd, %i.gf
  %i.gh = tail call <6 x float> @llvm.fmuladd.v6f32(<6 x float> %i.fr, <6 x float> %i.ea, <6 x float> %i.gg)
  %i.gi = shufflevector <2 x float> %i.fv, <2 x float> %i.gb, <3 x i32> <i32 1, i32 3, i32 0>
  %i.gj = shufflevector <2 x float> %i.fv, <2 x float> %i.gb, <6 x i32> <i32 1, i32 3, i32 0, i32 1, i32 3, i32 0>
  %i.gk = shufflevector <2 x float> %i.fu, <2 x float> %i.gb, <3 x i32> <i32 1, i32 2, i32 0>
  %i.gl = fmul <3 x float> %i.gk, %i.eu
  %i.gm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fq, <3 x float> %i.ew, <3 x float> %i.gl)
  %i.gn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gi, <3 x float> %i.ey, <3 x float> %i.gm) ; 6 uses
  %i.go = shufflevector <3 x float> %i.gn, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gp = fmul <2 x float> %i.ec, %i.go
  %i.gq = shufflevector <3 x float> %i.gn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.gq, <2 x float> %i.gp)
  %i.gs = shufflevector <3 x float> %i.gn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.gs, <2 x float> %i.gr)
  %i.gu = extractelement <3 x float> %i.gn, i64 2
  %i.gv = fmul float %i.gu, %i.bp
  %i.gw = extractelement <3 x float> %i.gn, i64 1
  %i.gx = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.gw, float %i.gv)
  %i.gy = extractelement <3 x float> %i.gn, i64 0
  %i.gz = fadd <2 x float> %i.gt, %i.es           ; 3 uses
  %i.ha = extractelement <2 x float> %i.gz, i64 1 ; 2 uses
  %i.hb = fneg float %i.ha                        ; 2 uses
  %i.hc = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hd = load <2 x float>, ptr %i.ba, align 4, !tbaa !20, !noalias !353 ; 4 uses
  %i.he = load <2 x float>, ptr %i.bc, align 4, !tbaa !20, !noalias !353 ; 4 uses
  %i.hf = shufflevector <2 x float> %i.hd, <2 x float> %i.he, <6 x i32> <i32 1, i32 1, i32 1, i32 3, i32 3, i32 3>
  %i.hg = tail call <6 x float> @llvm.fmuladd.v6f32(<6 x float> %i.gj, <6 x float> %i.hf, <6 x float> %i.gh) ; 6 uses
  %i.hh = shufflevector <6 x float> %i.hg, <6 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.hi = fmul <2 x float> %i.hh, %i.ec
  %i.hj = fmul <2 x float> %i.hh, %i.ee
  %i.hk = shufflevector <6 x float> %i.hg, <6 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.hk, <2 x float> %i.hi)
  %i.hm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.hk, <2 x float> %i.hj)
  %i.hn = shufflevector <6 x float> %i.hg, <6 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ho = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.hn, <2 x float> %i.hl)
  %i.hp = shufflevector <6 x float> %i.hg, <6 x float> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.hq = fmul <2 x float> %i.hp, %i.ec
  %i.hr = fmul <2 x float> %i.hp, %i.ee
  %i.hs = shufflevector <6 x float> %i.hg, <6 x float> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.ht = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.hs, <2 x float> %i.hq)
  %i.hu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.hs, <2 x float> %i.hr)
  %i.hv = shufflevector <6 x float> %i.hg, <6 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK11btMultiBody12solveImatrixERK9btVector3S2_Pf:bb.a
  %i.lb = fmul <2 x float> %i.jr, %i.jo
  %i.lc = shufflevector <2 x float> %i.jr, <2 x float> %i.hx, <2 x i32> <i32 1, i32 3>
  %i.ld = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lc, <2 x float> %i.jk, <2 x float> %i.lb)
  %i.le = fmul <2 x float> %i.ld, %i.kz           ; 4 uses
  %i.lf = fmul <2 x float> %i.kl, %i.kz           ; 4 uses
  %i.lg = extractelement <4 x float> %i.kv, i64 1
  %i.lh = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.kx, float %i.lg) ; 2 uses
  %i.li = extractelement <4 x float> %i.kv, i64 2
  %i.lj = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.kx, float %i.li) ; 2 uses
  %i.lk = extractelement <4 x float> %i.kv, i64 3
  %i.ll = tail call noundef float @llvm.fmuladd.f32(float %i.bi, float %i.kx, float %i.lk) ; 2 uses
  %i.lm = fmul float %i.ih, %i.lj
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.fy, float %i.lh, float %i.lm)
  %i.lo = tail call noundef float @llvm.fmuladd.f32(float %i.ii, float %i.ll, float %i.ln) ; 5 uses
  %i.lp = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = fmul <2 x float> %i.fu, %i.lq
  %i.ls = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.lt, <2 x float> %i.lr)
  %i.lv = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.lw, <2 x float> %i.lu) ; 6 uses
  %i.ly = fmul <2 x float> %i.ik, %i.le
  %i.lz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.la, <2 x float> %i.ly)
  %i.ma = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.in, <2 x float> %i.lf, <2 x float> %i.lz) ; 3 uses
  %i.mb = fmul <2 x float> %i.io, %i.le
  %i.mc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.la, <2 x float> %i.mb)
  %i.md = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ir, <2 x float> %i.lf, <2 x float> %i.mc) ; 3 uses
  %i.me = fmul <2 x float> %i.is, %i.le
  %i.mf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.la, <2 x float> %i.me)
  %i.mg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.lf, <2 x float> %i.mf) ; 3 uses
  %i.mh = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mi = fmul <2 x float> %i.fu, %i.mh
  %i.mj = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.mj, <2 x float> %i.mi)
  %i.ml = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.ml, <2 x float> %i.mk) ; 5 uses
  %i.mn = fmul <2 x float> %i.iw, %i.md
  %i.mo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ix, <2 x float> %i.ma, <2 x float> %i.mn)
  %i.mp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %i.mg, <2 x float> %i.mo) ; 5 uses
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mr = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ms = fmul <2 x float> %i.fu, %i.mr
  %i.mt = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.mt, <2 x float> %i.ms)
  %i.mv = shufflevector <2 x float> %i.mg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.mv, <2 x float> %i.mu) ; 7 uses
  %i.mx = extractelement <2 x float> %i.mp, i64 0 ; 2 uses
  %i.my = fmul float %i.en, %i.mx
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.lo, float %i.el, float %i.my)
  %i.na = extractelement <2 x float> %i.mp, i64 1 ; 2 uses
  %i.nb = tail call noundef float @llvm.fmuladd.f32(float %i.na, float %i.bn, float %i.mz)
  %i.nc = extractelement <2 x float> %i.mm, i64 0 ; 2 uses
  %i.nd = fmul float %i.en, %i.nc
  %i.ne = extractelement <2 x float> %i.lx, i64 0 ; 2 uses
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.ne, float %i.el, float %i.nd)
  %i.ng = extractelement <2 x float> %i.mw, i64 0
  %i.nh = tail call noundef float @llvm.fmuladd.f32(float %i.ng, float %i.bn, float %i.nf) ; 2 uses
  %i.ni = fmul float %i.em, %i.mx
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.lo, float %i.ek, float %i.ni)
  %i.nk = tail call noundef float @llvm.fmuladd.f32(float %i.na, float %i.bp, float %i.nj) ; 2 uses
  %i.nl = fmul float %i.em, %i.nc
  %i.nm = shufflevector <2 x float> %i.mm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nn = fmul <2 x float> %i.iz, %i.nm
  %i.no = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.np = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.no, <2 x float> %i.ja, <2 x float> %i.nn)
  %i.nq = shufflevector <2 x float> %i.mw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nq, <2 x float> %i.jc, <2 x float> %i.np) ; 4 uses
  %i.ns = tail call float @llvm.fmuladd.f32(float %i.ne, float %i.ek, float %i.nl)
  %i.nt = insertelement <4 x float> %i.jd, float %i.ns, i64 0
  %i.nu = shufflevector <2 x float> %i.mp, <2 x float> %i.mm, <4 x i32> <i32 poison, i32 0, i32 2, i32 3>
  %i.nv = insertelement <4 x float> %i.nu, float 1.000000e+00, i64 0
  %i.nw = fmul <4 x float> %i.nt, %i.nv
  %i.nx = shufflevector <2 x float> %i.mw, <2 x float> %i.lx, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.ny = shufflevector <4 x float> %i.nx, <4 x float> %i.eg, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.nz = insertelement <4 x float> %i.jf, float %i.lo, i64 1
  %i.oa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ny, <4 x float> %i.nz, <4 x float> %i.nw) ; 2 uses
  %i.ob = fadd float %i.nb, -1.000000e+00         ; 2 uses
  %i.oc = extractelement <4 x float> %i.oa, i64 0
  %i.od = fadd float %i.oc, -1.000000e+00         ; 2 uses
  %i.oe = fmul float %i.fz, %i.nk
  %i.of = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.og = insertelement <4 x float> %i.of, float %i.ob, i64 1
  %i.oh = shufflevector <4 x float> %i.og, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.oi = shufflevector <2 x float> %i.mw, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.oj = shufflevector <3 x float> %i.fq, <3 x float> %i.oi, <4 x i32> <i32 1, i32 poison, i32 3, i32 4>
  %i.ok = shufflevector <4 x float> %i.oj, <4 x float> %i.mq, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.ol = insertelement <4 x float> %i.oa, float %i.oe, i64 0
  %i.om = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oh, <4 x float> %i.ok, <4 x float> %i.ol) ; 6 uses
  %i.on = extractelement <4 x float> %i.om, i64 3
  %i.oo = fadd float %i.on, -1.000000e+00         ; 2 uses
  %i.op = extractelement <4 x float> %i.om, i64 0
  %i.oq = extractelement <4 x float> %i.om, i64 1
  %i.or = tail call noundef float @llvm.fmuladd.f32(float %i.oq, float %i.ga, float %i.op)
  %i.os = fmul float %i.fz, %i.od
  %i.ot = tail call float @llvm.fmuladd.f32(float %i.nh, float %i.fy, float %i.os)
  %i.ou = extractelement <4 x float> %i.om, i64 2
  %i.ov = tail call noundef float @llvm.fmuladd.f32(float %i.ou, float %i.ga, float %i.ot)
  %i.ow = extractelement <2 x float> %i.nr, i64 1
  %i.ox = fmul float %i.fz, %i.ow
  %i.oy = extractelement <2 x float> %i.nr, i64 0
  %i.oz = tail call float @llvm.fmuladd.f32(float %i.oy, float %i.fy, float %i.ox)
  %i.pa = tail call noundef float @llvm.fmuladd.f32(float %i.oo, float %i.ga, float %i.oz)
  %i.pb = shufflevector <2 x float> %i.fu, <2 x float> %i.fv, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.pc = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.pd = shufflevector <2 x float> %i.pc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pe = fmul <2 x float> %i.pb, %i.pd
  %i.pf = insertelement <2 x float> poison, float %i.ob, i64 0
  %i.pg = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ph = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pg, <2 x float> %i.gb, <2 x float> %i.pe)
  %i.pi = shufflevector <4 x float> %i.om, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pj = shufflevector <2 x float> %i.fu, <2 x float> %i.fv, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.pk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pi, <2 x float> %i.pj, <2 x float> %i.ph)
  %i.pl = insertelement <2 x float> poison, float %i.od, i64 0
  %i.pm = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pn = fmul <2 x float> %i.pb, %i.pm
  %i.po = insertelement <2 x float> poison, float %i.nh, i64 0
  %i.pp = shufflevector <2 x float> %i.po, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pp, <2 x float> %i.gb, <2 x float> %i.pn)
  %i.pr = shufflevector <4 x float> %i.om, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ps = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pr, <2 x float> %i.pj, <2 x float> %i.pq)
  %i.pt = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pu = fmul <2 x float> %i.pb, %i.pt
  %i.pv = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pv, <2 x float> %i.gb, <2 x float> %i.pu)
  %i.px = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.py, <2 x float> %i.pj, <2 x float> %i.pw)
  %i.qa = load float, ptr %1, align 4, !tbaa !20  ; 2 uses
  %i.qb = load float, ptr %i.ca, align 4, !tbaa !20 ; 2 uses
  %i.qc = load float, ptr %i.cb, align 4, !tbaa !20 ; 2 uses
  %i.qd = load float, ptr %2, align 4, !tbaa !20  ; 2 uses
  %i.qe = load float, ptr %i.cc, align 4, !tbaa !20 ; 2 uses
  %i.qf = load float, ptr %i.cd, align 4, !tbaa !20 ; 2 uses
  %i.qg = insertelement <4 x float> poison, float %i.qb, i64 0
  %i.qh = shufflevector <4 x float> %i.qg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qi = shufflevector <2 x float> %i.mw, <2 x float> %i.lx, <4 x i32> <i32 2, i32 poison, i32 0, i32 poison>
  %i.qj = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.qk = shufflevector <4 x float> %i.qi, <4 x float> %i.qj, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.ql = insertelement <4 x float> %i.qk, float %i.ov, i64 3
  %i.qm = fmul <4 x float> %i.qh, %i.ql
  %i.qn = insertelement <4 x float> poison, float %i.lo, i64 0
  %i.qo = shufflevector <2 x float> %i.mp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.qp = shufflevector <4 x float> %i.qn, <4 x float> %i.qo, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.qq = insertelement <4 x float> %i.qp, float %i.or, i64 3
  %i.qr = insertelement <4 x float> poison, float %i.qa, i64 0
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qq, <4 x float> %i.qs, <4 x float> %i.qm)
  %i.qu = shufflevector <2 x float> %i.mw, <2 x float> %i.lx, <4 x i32> <i32 3, i32 poison, i32 1, i32 poison>
  %i.qv = shufflevector <4 x float> %i.qu, <4 x float> %i.qj, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.qw = insertelement <4 x float> %i.qv, float %i.pa, i64 3
  %i.qx = insertelement <4 x float> poison, float %i.qc, i64 0
  %i.qy = shufflevector <4 x float> %i.qx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qw, <4 x float> %i.qy, <4 x float> %i.qt)
  %i.ra = insertelement <2 x float> poison, float %i.qb, i64 0
  %i.rb = shufflevector <2 x float> %i.ra, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rc = fmul <2 x float> %i.rb, %i.ps
  %i.rd = insertelement <2 x float> poison, float %i.qa, i64 0
  %i.re = shufflevector <2 x float> %i.rd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pk, <2 x float> %i.re, <2 x float> %i.rc)
  %i.rg = insertelement <2 x float> poison, float %i.qc, i64 0
  %i.rh = shufflevector <2 x float> %i.rg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ri = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pz, <2 x float> %i.rh, <2 x float> %i.rf)
  %i.rj = insertelement <4 x float> poison, float %i.qe, i64 0
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rl = insertelement <4 x float> poison, float %i.kn, i64 0
  %i.rm = shufflevector <2 x float> %i.le, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rn = shufflevector <4 x float> %i.rl, <4 x float> %i.rm, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ro = shufflevector <4 x float> %i.rn, <4 x float> %i.qo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.rp = fmul <4 x float> %i.rk, %i.ro
  %i.rq = insertelement <4 x float> poison, float %i.km, i64 0
  %i.rr = shufflevector <2 x float> %i.la, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rs = shufflevector <4 x float> %i.rq, <4 x float> %i.rr, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.rt = insertelement <4 x float> %i.rs, float %i.lo, i64 3
  %i.ru = insertelement <4 x float> poison, float %i.qd, i64 0
  %i.rv = shufflevector <4 x float> %i.ru, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rt, <4 x float> %i.rv, <4 x float> %i.rp)
  %i.rx = insertelement <4 x float> poison, float %i.kx, i64 0
  %i.ry = shufflevector <2 x float> %i.lf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rz = shufflevector <4 x float> %i.rx, <4 x float> %i.ry, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.sa = shufflevector <4 x float> %i.rz, <4 x float> %i.qo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.sb = insertelement <4 x float> poison, float %i.qf, i64 0
  %i.sc = shufflevector <4 x float> %i.sb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.sa, <4 x float> %i.sc, <4 x float> %i.rw)
  %i.se = insertelement <2 x float> poison, float %i.qe, i64 0
  %i.sf = shufflevector <2 x float> %i.se, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sg = fmul <2 x float> %i.sf, %i.mm
  %i.sh = insertelement <2 x float> poison, float %i.qd, i64 0
  %i.si = shufflevector <2 x float> %i.sh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lx, <2 x float> %i.si, <2 x float> %i.sg)
  %i.sk = insertelement <2 x float> poison, float %i.qf, i64 0
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mw, <2 x float> %i.sl, <2 x float> %i.sj)
  %i.sn = fadd <4 x float> %i.sd, %i.qz
  %i.so = fadd <2 x float> %i.sm, %i.ri
  store <4 x float> %i.sn, ptr %3, align 4, !tbaa !20
  store <2 x float> %i.so, ptr %i.ce, align 4, !tbaa !20
  br label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.h, %bb.i
  %.sink249 = phi float [ 0.000000e+00, %bb.i ], [ %i.am, %bb.h ]
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %.sink249, ptr %4, align 4, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.preheader.preheader, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11btMultiBody30calcAccelerationDeltasMultiDofEPKfPfR20btAlignedObjectArrayIfERS3_I9btVector3E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = alloca [6 x float], align 16             ; 7 uses
  %5 = alloca %struct.btSpatialMotionVector, align 8 ; 9 uses
  %i.c = alloca [6 x float], align 16             ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 628 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !83   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !51   ; 3 uses
  %i.j = icmp sgt i32 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !52
  %i.m = icmp slt i32 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sext i32 %i.g to i64
  %i.o = shl nsw i64 %i.n, 2
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !51
  br label %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i: ; preds = %bb.d, %bb.c
  %i.q = phi i32 [ %.pre.i, %bb.d ], [ %i.i, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.d ], [ null, %bb.c ] ; 9 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %.0.i.i.i522 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.v = sub i64 %i.u, %.0.i.i.i522
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x float>, ptr %i.x, align 4, !tbaa !20
  %wide.load523 = load <4 x float>, ptr %i.y, align 4, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x float> %wide.load, ptr %i.w, align 4, !tbaa !20
  store <4 x float> %wide.load523, ptr %i.z, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !357

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.prol
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !20
  store float %i.ad, ptr %i.ab, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !358

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !20
  store float %i.ai, ptr %i.ag, align 4, !tbaa !20
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !20
  store float %i.al, ptr %i.aj, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.ao = load float, ptr %i.an, align 4, !tbaa !20
  store float %i.ao, ptr %i.am, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20
  store float %i.ar, ptr %i.ap, align 4, !tbaa !20
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !359

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.at = load i8, ptr %i.as, align 8, !tbaa !49, !range !68, !noundef !69
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.e, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.e:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.e, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %i.av, align 8, !tbaa !49
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !50
  store i32 %i.g, ptr %i.k, align 8, !tbaa !52
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %i.aw = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.ax = sext i32 %i.i to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.g to i64
  %i.ay = shl nsw i64 %i.ax, 2
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.ay
  %i.az = sub nsw i64 %wide.trip.count.i, %i.ax
  %i.ba = shl nsw i64 %i.az, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ba, i1 false), !tbaa !20
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i, %bb.a
  store i32 %i.g, ptr %i.h, align 4, !tbaa !51
  %i.bb = shl nsw i32 %i.e, 2
  %i.bc = add nsw i32 %i.bb, 4                    ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !55 ; 2 uses
  %i.bf = icmp sgt i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.f, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !56
  %i.bi = icmp slt i32 %i.bh, %i.bc
  br i1 %i.bi, label %bb.g, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i153 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i153, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = sext i32 %i.bc to i64
  %i.bk = shl nsw i64 %i.bj, 4
  %i.bl = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bk, i32 noundef 16)
  %.pre.i154 = load i32, ptr %i.bd, align 4, !tbaa !55
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bm = phi i32 [ %.pre.i154, %bb.h ], [ %i.be, %bb.g ] ; 4 uses
  %.0.i.i.i155 = phi ptr [ %i.bl, %bb.h ], [ null, %bb.g ] ; 4 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i157, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i157:                                  ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %wide.trip.count.i.i.i158 = zext nneg i32 %i.bm to i64 ; 2 uses
  %xtraiter564 = and i64 %wide.trip.count.i.i.i158, 1
  %i.bp = icmp eq i32 %i.bm, 1
  br i1 %i.bp, label %.epil.preheader, label %.lr.ph.i.i.i157.new
end_hunk_1
