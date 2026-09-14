Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fftsg?download=true
inline.NumInlined: 74
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dfst:bb.a
  %found.conflict374 = and i1 %bound0372, %bound1373
  %bound0375 = icmp ult ptr %i.he, %scevgep368
  %bound1376 = icmp ult ptr %scevgep367, %scevgep363
  %found.conflict377 = and i1 %bound0375, %bound1376
  %conflict.rdx378 = or i1 %found.conflict374, %found.conflict377
  %bound0379 = icmp ult ptr %i.he, %scevgep371
  %bound1380 = icmp ult ptr %scevgep370, %scevgep363
  %found.conflict381 = and i1 %bound0379, %bound1380
  %conflict.rdx382 = or i1 %conflict.rdx378, %found.conflict381
  %bound0383 = icmp ult ptr %scevgep365, %scevgep368
  %bound1384 = icmp ult ptr %scevgep367, %invariant.gep284
  %found.conflict385 = and i1 %bound0383, %bound1384
  %conflict.rdx386 = or i1 %conflict.rdx382, %found.conflict385
  %bound0387 = icmp ult ptr %scevgep365, %scevgep371
  %bound1388 = icmp ult ptr %scevgep370, %invariant.gep284
  %found.conflict389 = and i1 %bound0387, %bound1388
  %conflict.rdx390 = or i1 %conflict.rdx386, %found.conflict389
  br i1 %conflict.rdx390, label %.lr.ph247.preheader407, label %vector.ph393

vector.ph393:                                     ; preds = %vector.memcheck362
  %n.vec394 = and i64 %i.lr, -2                   ; 2 uses
  %i.ly = or i64 %i.lr, 1
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph393
  %index396 = phi i64 [ 0, %vector.ph393 ], [ %index.next403, %vector.body395 ] ; 2 uses
  %i.lz = or disjoint i64 %index396, 1            ; 3 uses
  %i.ma = sub nuw nsw i64 %i.lq, %i.lz            ; 2 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %i.ma
  %i.mc = getelementptr inbounds i8, ptr %i.mb, i64 -8 ; 2 uses
  %wide.load397 = load <2 x double>, ptr %i.mc, align 8, !tbaa !14, !alias.scope !91
  %reverse398 = shufflevector <2 x double> %wide.load397, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %i.lz
  %wide.load399 = load <2 x double>, ptr %i.md, align 8, !tbaa !14, !alias.scope !92 ; 2 uses
  %i.me = fadd <2 x double> %reverse398, %wide.load399
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.lz
  store <2 x double> %i.me, ptr %i.mf, align 8, !tbaa !14, !alias.scope !93, !noalias !94
  %wide.load400 = load <2 x double>, ptr %i.mc, align 8, !tbaa !14, !alias.scope !91
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ma
  %i.mh = getelementptr inbounds i8, ptr %i.mg, i64 -8
  %i.mi = shufflevector <2 x double> %wide.load399, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse402 = fsub <2 x double> %wide.load400, %i.mi
  store <2 x double> %reverse402, ptr %i.mh, align 8, !tbaa !14, !alias.scope !95, !noalias !96
  %index.next403 = add nuw i64 %index396, 2       ; 2 uses
  %i.mj = icmp eq i64 %index.next403, %n.vec394
  br i1 %i.mj, label %middle.block404, label %vector.body395, !llvm.loop !78

middle.block404:                                  ; preds = %vector.body395
  %cmp.n405 = icmp eq i64 %i.lr, %n.vec394
  br i1 %cmp.n405, label %._crit_edge248, label %.lr.ph247.preheader407

.lr.ph247.preheader407:                           ; preds = %vector.memcheck362, %.lr.ph247.preheader, %middle.block404
  %indvars.iv263.ph = phi i64 [ 1, %vector.memcheck362 ], [ 1, %.lr.ph247.preheader ], [ %i.ly, %middle.block404 ] ; 6 uses
  %.neg = add nsw i64 %indvars.iv263.ph, 1
  %i.mk = and i64 %.pre-phi270275, 1
  %lcmp.mod416.not.not = icmp eq i64 %i.mk, 0
  br i1 %lcmp.mod416.not.not, label %.lr.ph247.prol, label %.lr.ph247.prol.loopexit

.lr.ph247.prol:                                   ; preds = %.lr.ph247.preheader407
  %i.ml = sub nuw nsw i64 %i.lq, %indvars.iv263.ph ; 2 uses
  %gep285.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %i.ml ; 2 uses
  %i.mm = load double, ptr %gep285.prol, align 8, !tbaa !14
  %gep287.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %indvars.iv263.ph
  %i.mn = load double, ptr %gep287.prol, align 8, !tbaa !14 ; 2 uses
  %i.mo = fadd double %i.mm, %i.mn
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv263.ph
  store double %i.mo, ptr %i.mp, align 8, !tbaa !14
  %i.mq = load double, ptr %gep285.prol, align 8, !tbaa !14
  %i.mr = fsub double %i.mq, %i.mn
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ml
  store double %i.mr, ptr %i.ms, align 8, !tbaa !14
  %indvars.iv.next264.prol = add nuw nsw i64 %indvars.iv263.ph, 1
  br label %.lr.ph247.prol.loopexit

.lr.ph247.prol.loopexit:                          ; preds = %.lr.ph247.prol, %.lr.ph247.preheader407
  %indvars.iv263.unr = phi i64 [ %indvars.iv263.ph, %.lr.ph247.preheader407 ], [ %indvars.iv.next264.prol, %.lr.ph247.prol ]
  %i.mt = icmp eq i64 %.pre-phi270275, %.neg
  br i1 %i.mt, label %._crit_edge248, label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.prol.loopexit, %.lr.ph247
  %indvars.iv263 = phi i64 [ %indvars.iv.next264.1, %.lr.ph247 ], [ %indvars.iv263.unr, %.lr.ph247.prol.loopexit ] ; 5 uses
  %i.mu = sub nuw nsw i64 %i.lq, %indvars.iv263   ; 2 uses
  %gep285 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %i.mu ; 2 uses
  %i.mv = load double, ptr %gep285, align 8, !tbaa !14
  %gep287 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %indvars.iv263
  %i.mw = load double, ptr %gep287, align 8, !tbaa !14 ; 2 uses
  %i.mx = fadd double %i.mv, %i.mw
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv263
  store double %i.mx, ptr %i.my, align 8, !tbaa !14
  %i.mz = load double, ptr %gep285, align 8, !tbaa !14
  %i.na = fsub double %i.mz, %i.mw
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mu
  store double %i.na, ptr %i.nb, align 8, !tbaa !14
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 3 uses
  %i.nc = sub nuw nsw i64 %i.lq, %indvars.iv.next264 ; 2 uses
  %gep285.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %i.nc ; 2 uses
  %i.nd = load double, ptr %gep285.1, align 8, !tbaa !14
  %gep287.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %indvars.iv.next264
  %i.ne = load double, ptr %gep287.1, align 8, !tbaa !14 ; 2 uses
  %i.nf = fadd double %i.nd, %i.ne
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next264
  store double %i.nf, ptr %i.ng, align 8, !tbaa !14
  %i.nh = load double, ptr %gep285.1, align 8, !tbaa !14
  %i.ni = fsub double %i.nh, %i.ne
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nc
  store double %i.ni, ptr %i.nj, align 8, !tbaa !14
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %exitcond267.not.1 = icmp eq i64 %indvars.iv.next264.1, %.pre-phi270275
  br i1 %exitcond267.not.1, label %._crit_edge248, label %.lr.ph247, !llvm.loop !79

._crit_edge248:                                   ; preds = %.lr.ph247.prol.loopexit, %.lr.ph247, %middle.block404
  %i.nk = add nuw nsw i32 %i.ht, %.0199250
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nl
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !14
  store double %i.nn, ptr %2, align 8, !tbaa !14
  br label %bb.i, !llvm.loop !80

._crit_edge252.loopexit:                          ; preds = %._crit_edge244, %._crit_edge244.thread
  %.ph = phi i32 [ %i.kz, %._crit_edge244.thread ], [ %i.lp, %._crit_edge244 ]
  %i.no = add nuw nsw i32 %i.ht, %.0199250
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.np
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !14 ; 2 uses
  store double %i.nr, ptr %2, align 8, !tbaa !14
  %i.ns = sext i32 %.ph to i64
  br label %._crit_edge252

._crit_edge252:                                   ; preds = %.preheader.._crit_edge252_crit_edge, %._crit_edge252.loopexit
  %i.nt = phi double [ %.pre, %.preheader.._crit_edge252_crit_edge ], [ %i.nr, %._crit_edge252.loopexit ]
  %.0200.lcssa = phi i64 [ 2, %.preheader.._crit_edge252_crit_edge ], [ %i.ns, %._crit_edge252.loopexit ]
  %i.nu = getelementptr inbounds [8 x i8], ptr %1, i64 %.0200.lcssa
  store double %i.nt, ptr %i.nu, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge252, %makect.exit
  store double 0.000000e+00, ptr %1, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftf1st(i32 noundef %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1
  %i.c = shl nsw i32 %i.a, 2
  %i.d = mul nsw i32 %i.a, 6
  %i.e = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.e, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = fadd double %i.k, %i.m                   ; 2 uses
  %i.o = fsub double %i.e, %i.h                   ; 2 uses
  %i.p = fsub double %i.k, %i.m                   ; 2 uses
  %i.q = sext i32 %i.b to i64                     ; 8 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.t = sext i32 %i.d to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.t ; 3 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !14 ; 2 uses
  %i.w = fadd double %i.s, %i.v                   ; 2 uses
  %i.x = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 2 uses
  %i.z = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !14 ; 2 uses
  %i.ab = fadd double %i.y, %i.aa                 ; 2 uses
  %i.ac = fsub double %i.s, %i.v                  ; 2 uses
  %i.ad = fsub double %i.y, %i.aa                 ; 2 uses
  %i.ae = fadd double %i.i, %i.w
  store double %i.ae, ptr %1, align 8, !tbaa !14
  %i.af = fadd double %i.n, %i.ab
  store double %i.af, ptr %i.j, align 8, !tbaa !14
  %i.ag = fsub double %i.i, %i.w
  store double %i.ag, ptr %i.r, align 8, !tbaa !14
  %i.ah = fsub double %i.n, %i.ab
  store double %i.ah, ptr %i.x, align 8, !tbaa !14
  %i.ai = fsub double %i.o, %i.ad
  store double %i.ai, ptr %i.g, align 8, !tbaa !14
  %i.aj = fadd double %i.p, %i.ac
  store double %i.aj, ptr %i.l, align 8, !tbaa !14
  %i.ak = fadd double %i.o, %i.ad
  store double %i.ak, ptr %i.u, align 8, !tbaa !14
  %i.al = fsub double %i.p, %i.ac
  store double %i.al, ptr %i.z, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !14 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !14 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !14 ; 4 uses
  %i.as = add nsw i32 %i.a, -2                    ; 2 uses
  %i.at = icmp sgt i32 %i.a, 4
  br i1 %i.at, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.as to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.au = zext nneg i32 %i.as to i64              ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.q
  %invariant.gep711 = getelementptr [8 x i8], ptr %1, i64 %i.q
  %i.av = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv703 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next704, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0695 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %14, %.lr.ph ]
  %.0684694 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %9, %.lr.ph ]
  %i.ax = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph.preheader ], [ %i.ba, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ba = load <2 x double>, ptr %i.ay, align 8, !tbaa !14 ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bc = add nuw nsw i64 %indvars.iv703, %i.q    ; 2 uses
  %i.bd = add nuw nsw i64 %i.bc, %i.q             ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv703 ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 16     ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bc ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bd ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16     ; 2 uses
  %i.bk = getelementptr i8, ptr %gep, i64 16      ; 2 uses
  %i.bl = load <2 x double>, ptr %i.be, align 8, !tbaa !14 ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bf, align 8, !tbaa !14 ; 2 uses
  %i.bn = fadd <2 x double> %i.bl, %i.bm          ; 2 uses
  %i.bo = load <2 x double>, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bp = load <2 x double>, ptr %gep, align 8, !tbaa !14 ; 2 uses
  %i.bq = fadd <2 x double> %i.bo, %i.bp          ; 2 uses
  %i.br = fadd <2 x double> %i.bn, %i.bq
  %i.bs = load <2 x double>, ptr %i.bg, align 8, !tbaa !14 ; 2 uses
  %i.bt = load <2 x double>, ptr %i.bh, align 8, !tbaa !14 ; 2 uses
  %i.bu = fadd <2 x double> %i.bs, %i.bt          ; 2 uses
  %i.bv = load <2 x double>, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %i.bw = load <2 x double>, ptr %i.bk, align 8, !tbaa !14 ; 2 uses
  %i.bx = fadd <2 x double> %i.bv, %i.bw          ; 2 uses
  %i.by = fadd <2 x double> %i.bu, %i.bx
  %i.bz = fsub <2 x double> %i.bn, %i.bq
  %i.ca = fsub <2 x double> %i.bu, %i.bx
  %i.cb = sub nsw i64 %i.q, %indvars.iv703        ; 2 uses
  %i.cc = add nsw i64 %i.cb, %i.q                 ; 2 uses
  %i.cd = add nsw i64 %i.cc, %i.q                 ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cb ; 3 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cd ; 3 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 -16    ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cf, i64 -16    ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cc ; 3 uses
  %gep712 = getelementptr [8 x i8], ptr %invariant.gep711, i64 %i.cd ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -16    ; 2 uses
  %i.ck = getelementptr i8, ptr %gep712, i64 -16  ; 2 uses
  %4 = fsub <2 x double> %i.bl, %i.bm             ; 2 uses
  %i.cl = fsub <2 x double> %i.bo, %i.bp
  %5 = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cm = fadd <2 x double> %4, %5                ; 2 uses
  %6 = fsub <2 x double> %4, %5                   ; 4 uses
  %7 = shufflevector <2 x double> %i.cm, <2 x double> %6, <2 x i32> <i32 0, i32 3> ; 2 uses
  %8 = load double, ptr %i.bb, align 8, !tbaa !14 ; 3 uses
  %9 = load double, ptr %3, align 8, !tbaa !14    ; 4 uses
  %10 = fsub double %.0695, %8
  %11 = fadd double %.0684694, %9
  %12 = fmul double %i.ar, %10
  %13 = fmul double %i.ar, %11
  %14 = fneg double %8                            ; 3 uses
  store <2 x double> %i.br, ptr %i.be, align 8, !tbaa !14
  store <2 x double> %i.by, ptr %i.bg, align 8, !tbaa !14
  store <2 x double> %i.bz, ptr %i.bi, align 8, !tbaa !14
  store <2 x double> %i.ca, ptr %i.bj, align 8, !tbaa !14
  %15 = insertelement <2 x double> poison, double %12, i64 0
  %i.cn = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fneg <2 x double> %7
  %i.cp = shufflevector <2 x double> %6, <2 x double> %i.co, <2 x i32> <i32 1, i32 2>
  %i.cq = fmul <2 x double> %i.cn, %i.cp
  %16 = insertelement <2 x double> poison, double %13, i64 0
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %7, <2 x double> %i.cq)
  %i.cs = fadd <2 x double> %i.ax, %i.ba
  %i.ct = fmul <2 x double> %i.aw, %i.cs          ; 2 uses
  %i.cu = shufflevector <2 x double> %6, <2 x double> %i.cm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cv = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cw = fneg <2 x double> %i.cu
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> %6, <2 x i32> <i32 1, i32 2>
  %i.cy = fmul <2 x double> %i.cv, %i.cx
  %i.cz = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.cu, <2 x double> %i.cy)
  store <2 x double> %i.da, ptr %i.bf, align 8, !tbaa !14
  %i.db = fsub <2 x double> %i.bs, %i.bt          ; 2 uses
  %i.dc = fsub <2 x double> %i.bv, %i.bw
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.de = fadd <2 x double> %i.db, %i.dd          ; 3 uses
  %i.df = fsub <2 x double> %i.db, %i.dd          ; 4 uses
  %i.dg = shufflevector <2 x double> %i.de, <2 x double> %i.df, <2 x i32> <i32 0, i32 3>
  %i.dh = shufflevector <2 x double> %i.df, <2 x double> %i.de, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.di = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dj = fneg <2 x double> %i.dh
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> %i.df, <2 x i32> <i32 1, i32 2>
  %i.dl = fmul <2 x double> %i.di, %i.dk
  %i.dm = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dh, <2 x double> %i.dl)
  store <2 x double> %i.dn, ptr %i.bh, align 8, !tbaa !14
  store <2 x double> %i.cr, ptr %gep, align 8, !tbaa !14
  %i.do = shufflevector <2 x double> %i.df, <2 x double> %i.de, <2 x i32> <i32 1, i32 2>
  %18 = insertelement <2 x double> poison, double %14, i64 0 ; 2 uses
  %i.dp = insertelement <2 x double> %18, double %8, i64 1
  %i.dq = fmul <2 x double> %i.do, %i.dp
  %19 = insertelement <2 x double> poison, double %9, i64 0
  %i.dr = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dg, <2 x double> %i.dq)
  store <2 x double> %i.ds, ptr %i.bk, align 8, !tbaa !14
  %i.dt = load <2 x double>, ptr %i.cg, align 8, !tbaa !14 ; 2 uses
  %i.du = load <2 x double>, ptr %i.ch, align 8, !tbaa !14 ; 2 uses
  %i.dv = fadd <2 x double> %i.dt, %i.du          ; 2 uses
  %i.dw = load <2 x double>, ptr %i.cj, align 8, !tbaa !14 ; 2 uses
  %i.dx = load <2 x double>, ptr %i.ck, align 8, !tbaa !14 ; 2 uses
  %i.dy = fadd <2 x double> %i.dw, %i.dx          ; 2 uses
  %i.dz = load <2 x double>, ptr %i.ce, align 8, !tbaa !14 ; 2 uses
  %i.ea = load <2 x double>, ptr %i.cf, align 8, !tbaa !14 ; 2 uses
  %i.eb = fadd <2 x double> %i.dz, %i.ea          ; 2 uses
  %i.ec = fsub <2 x double> %i.dz, %i.ea          ; 2 uses
  %i.ed = load <2 x double>, ptr %i.ci, align 8, !tbaa !14 ; 2 uses
  %i.ee = load <2 x double>, ptr %gep712, align 8, !tbaa !14 ; 2 uses
  %i.ef = fadd <2 x double> %i.ed, %i.ee          ; 2 uses
  %i.eg = fsub <2 x double> %i.ed, %i.ee
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ei = fadd <2 x double> %i.eb, %i.ef
  store <2 x double> %i.ei, ptr %i.ce, align 8, !tbaa !14
  %i.ej = fadd <2 x double> %i.dv, %i.dy
  store <2 x double> %i.ej, ptr %i.cg, align 8, !tbaa !14
  %i.ek = fsub <2 x double> %i.eb, %i.ef
  store <2 x double> %i.ek, ptr %i.ci, align 8, !tbaa !14
  %i.el = fsub <2 x double> %i.dv, %i.dy
  store <2 x double> %i.el, ptr %i.cj, align 8, !tbaa !14
  %i.em = fsub <2 x double> %i.ec, %i.eh          ; 4 uses
  %i.en = fadd <2 x double> %i.ec, %i.eh          ; 2 uses
  %i.eo = shufflevector <2 x double> %i.em, <2 x double> %i.en, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.ep = fneg <2 x double> %i.eo
  %i.eq = shufflevector <2 x double> %i.em, <2 x double> %i.ep, <2 x i32> <i32 0, i32 2>
  %i.er = fmul <2 x double> %i.cz, %i.eq
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.eo, <2 x double> %i.er)
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.et, ptr %i.cf, align 8, !tbaa !14
  %i.eu = shufflevector <2 x double> %i.en, <2 x double> %i.em, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ev = fneg <2 x double> %i.eu
  %i.ew = shufflevector <2 x double> %i.em, <2 x double> %i.ev, <2 x i32> <i32 1, i32 2>
  %i.ex = fmul <2 x double> %17, %i.ew
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.eu, <2 x double> %i.ex)
  %i.ez = fsub <2 x double> %i.dt, %i.du          ; 2 uses
  %i.fa = fsub <2 x double> %i.dw, %i.dx
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fc = fsub <2 x double> %i.ez, %i.fb          ; 4 uses
  %i.fd = fadd <2 x double> %i.ez, %i.fb          ; 2 uses
  %i.fe = shufflevector <2 x double> %i.fc, <2 x double> %i.fd, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ff = fneg <2 x double> %i.fe
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> %i.fc, <2 x i32> <i32 1, i32 2>
  %i.fh = fmul <2 x double> %i.dm, %i.fg
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.fe, <2 x double> %i.fh)
  store <2 x double> %i.fi, ptr %i.ch, align 8, !tbaa !14
  store <2 x double> %i.ey, ptr %gep712, align 8, !tbaa !14
  %i.fj = shufflevector <2 x double> %i.fd, <2 x double> %i.fc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fk = fneg <2 x double> %i.fj
  %i.fl = shufflevector <2 x double> %i.fc, <2 x double> %i.fk, <2 x i32> <i32 1, i32 2>
  %i.fm = fmul <2 x double> %i.dr, %i.fl
  %i.fn = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fj, <2 x double> %i.fm)
  store <2 x double> %i.fo, ptr %i.ck, align 8, !tbaa !14
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 4 ; 2 uses
  %i.fp = icmp samesign ult i64 %indvars.iv.next704, %i.au
  br i1 %i.fp, label %.lr.ph, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.au, %.lr.ph ]
  %.0684.lcssa = phi double [ 1.000000e+00, %.._crit_edge_crit_edge ], [ %9, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %14, %.lr.ph ]
  %i.fq = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.._crit_edge_crit_edge ], [ %i.ba, %.lr.ph ]
  %i.fr = insertelement <2 x double> poison, double %i.an, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = fadd <2 x double> %i.fs, %i.fq
  %i.fu = fsub double %.0684.lcssa, %i.an
  %i.fv = fsub double %.0.lcssa, %i.an
  %i.fw = mul nsw i32 %i.a, 3
  %i.fx = mul nsw i32 %i.a, 5
  %i.fy = mul nsw i32 %i.a, 7
  %i.fz = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !14 ; 2 uses
  %i.gb = sext i32 %i.fx to i64
  %i.gc = getelementptr [8 x i8], ptr %1, i64 %i.gb ; 5 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16    ; 2 uses
  %i.ge = sext i32 %i.a to i64
  %i.gf = getelementptr [8 x i8], ptr %1, i64 %i.ge ; 6 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 -8     ; 2 uses
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !14 ; 2 uses
  %i.gi = sext i32 %i.fw to i64
  %i.gj = getelementptr [8 x i8], ptr %1, i64 %i.gi ; 7 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 -16    ; 2 uses
  %i.gl = sext i32 %i.fy to i64
  %i.gm = getelementptr [8 x i8], ptr %1, i64 %i.gl ; 5 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 -16    ; 2 uses
  %i.go = getelementptr i8, ptr %i.gj, i64 -8
  %i.gp = load <2 x double>, ptr %i.gd, align 8, !tbaa !14 ; 3 uses
  %i.gq = extractelement <2 x double> %i.gp, i64 0
  %i.gr = fadd double %i.ga, %i.gq                ; 2 uses
  %i.gs = extractelement <2 x double> %i.gp, i64 1
  %i.gt = fadd double %i.gh, %i.gs                ; 2 uses
  %i.gu = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gh, i64 1
  %i.gw = fsub <2 x double> %i.gv, %i.gp          ; 2 uses
  %i.gx = load <2 x double>, ptr %i.gk, align 8, !tbaa !14 ; 3 uses
  %i.gy = load <2 x double>, ptr %i.gn, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.gx, %i.gy
  %i.gz = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop717 = fadd <2 x double> %i.gx, %i.gy
  %i.ha = extractelement <2 x double> %foldExtExtBinop717, i64 1 ; 2 uses
  %i.hb = fsub <2 x double> %i.gx, %i.gy
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hd = fadd double %i.gr, %i.gz
  store double %i.hd, ptr %i.fz, align 8, !tbaa !14
  %i.he = fadd double %i.gt, %i.ha
  store double %i.he, ptr %i.gg, align 8, !tbaa !14
  %i.hf = fsub double %i.gr, %i.gz
  store double %i.hf, ptr %i.gk, align 8, !tbaa !14
  %i.hg = fsub double %i.gt, %i.ha
  store double %i.hg, ptr %i.go, align 8, !tbaa !14
  %i.hh = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x double> %i.hi, %i.ft          ; 2 uses
  %i.hk = fsub <2 x double> %i.gw, %i.hc          ; 4 uses
  %i.hl = fadd <2 x double> %i.gw, %i.hc          ; 3 uses
  %i.hm = shufflevector <2 x double> %i.hk, <2 x double> %i.hl, <2 x i32> <i32 0, i32 3>
  %i.hn = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ho = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hp = shufflevector <2 x double> %i.hl, <2 x double> %i.hk, <2 x i32> <i32 0, i32 3>
  %i.hq = fneg <2 x double> %i.hl
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> %i.hk, <2 x i32> <i32 0, i32 2>
  %i.ht = fmul <2 x double> %i.hn, %i.hs
  %i.hu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.hm, <2 x double> %i.ht)
  store <2 x double> %i.hu, ptr %i.gd, align 8, !tbaa !14
  %i.hv = shufflevector <2 x double> %i.hk, <2 x double> %i.hr, <2 x i32> <i32 1, i32 3>
  %i.hw = getelementptr i8, ptr %i.gf, i64 8      ; 2 uses
  %i.hx = getelementptr i8, ptr %i.gc, i64 8      ; 2 uses
  %i.hy = load double, ptr %i.gj, align 8, !tbaa !14 ; 2 uses
  %i.hz = load double, ptr %i.gm, align 8, !tbaa !14 ; 2 uses
  %i.ia = fadd double %i.hy, %i.hz                ; 2 uses
  %i.ib = getelementptr i8, ptr %i.gj, i64 8      ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !14 ; 2 uses
  %i.id = getelementptr i8, ptr %i.gm, i64 8      ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !14 ; 2 uses
  %i.if = fadd double %i.ic, %i.ie                ; 2 uses
  %i.ig = fsub double %i.hy, %i.hz                ; 2 uses
  %i.ih = fsub double %i.ic, %i.ie                ; 2 uses
  %i.ii = fneg double %i.an                       ; 2 uses
  %i.ij = getelementptr i8, ptr %i.gf, i64 16     ; 2 uses
  %i.ik = getelementptr i8, ptr %i.gc, i64 16     ; 2 uses
  %i.il = getelementptr i8, ptr %i.gf, i64 24
  %i.im = getelementptr i8, ptr %i.gj, i64 16     ; 2 uses
  %i.in = getelementptr i8, ptr %i.gm, i64 16     ; 2 uses
  %i.io = getelementptr i8, ptr %i.gj, i64 24
  %i.ip = fmul double %i.ar, %i.fu
  %i.iq = fmul double %i.ar, %i.fv
  %i.ir = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.it = fmul <2 x double> %i.is, %i.hv
  %i.iu = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.iv = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.hp, <2 x double> %i.it)
  store <2 x double> %i.iw, ptr %i.gn, align 8, !tbaa !14
  %i.ix = load double, ptr %i.gf, align 8, !tbaa !14 ; 2 uses
  %i.iy = load double, ptr %i.gc, align 8, !tbaa !14 ; 2 uses
  %i.iz = fadd double %i.ix, %i.iy                ; 2 uses
  %i.ja = load double, ptr %i.hw, align 8, !tbaa !14 ; 2 uses
  %i.jb = load double, ptr %i.hx, align 8, !tbaa !14 ; 2 uses
  %i.jc = fadd double %i.ja, %i.jb                ; 2 uses
  %i.jd = fsub double %i.ix, %i.iy                ; 2 uses
  %i.je = fsub double %i.ja, %i.jb                ; 2 uses
  %i.jf = fadd double %i.iz, %i.ia
  store double %i.jf, ptr %i.gf, align 8, !tbaa !14
  %i.jg = fadd double %i.jc, %i.if
  store double %i.jg, ptr %i.hw, align 8, !tbaa !14
  %i.jh = fsub double %i.iz, %i.ia
  store double %i.jh, ptr %i.gj, align 8, !tbaa !14
  %i.ji = fsub double %i.jc, %i.if
  store double %i.ji, ptr %i.ib, align 8, !tbaa !14
  %i.jj = fsub double %i.jd, %i.ih                ; 2 uses
  %i.jk = fadd double %i.je, %i.ig                ; 2 uses
  %i.jl = fsub double %i.jj, %i.jk
  %i.jm = fmul double %i.an, %i.jl
  store double %i.jm, ptr %i.gc, align 8, !tbaa !14
  %i.jn = fadd double %i.jk, %i.jj
  %i.jo = fmul double %i.an, %i.jn
  store double %i.jo, ptr %i.hx, align 8, !tbaa !14
  %i.jp = fadd double %i.jd, %i.ih                ; 2 uses
  %i.jq = fsub double %i.je, %i.ig                ; 2 uses
  %i.jr = fadd double %i.jq, %i.jp
  %i.js = fmul double %i.jr, %i.ii
  store double %i.js, ptr %i.gm, align 8, !tbaa !14
  %i.jt = fsub double %i.jq, %i.jp
  %i.ju = fmul double %i.jt, %i.ii
  store double %i.ju, ptr %i.id, align 8, !tbaa !14
  %i.jv = load <2 x double>, ptr %i.ij, align 8, !tbaa !14 ; 3 uses
  %i.jw = load <2 x double>, ptr %i.ik, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop719 = fadd <2 x double> %i.jv, %i.jw ; 2 uses
  %foldExtExtBinop721 = fadd <2 x double> %i.jv, %i.jw
  %i.jx = extractelement <2 x double> %foldExtExtBinop721, i64 1 ; 2 uses
  %i.jy = fsub <2 x double> %i.jv, %i.jw          ; 2 uses
  %i.jz = load <2 x double>, ptr %i.im, align 8, !tbaa !14 ; 3 uses
  %i.ka = load <2 x double>, ptr %i.in, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop723 = fadd <2 x double> %i.jz, %i.ka ; 2 uses
  %foldExtExtBinop725 = fadd <2 x double> %i.jz, %i.ka
  %i.kb = extractelement <2 x double> %foldExtExtBinop725, i64 1 ; 2 uses
  %i.kc = fsub <2 x double> %i.jz, %i.ka
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %foldExtExtBinop727 = fadd <2 x double> %foldExtExtBinop719, %foldExtExtBinop723
  %i.ke = extractelement <2 x double> %foldExtExtBinop727, i64 0
  store double %i.ke, ptr %i.ij, align 8, !tbaa !14
  %i.kf = fadd double %i.jx, %i.kb
  store double %i.kf, ptr %i.il, align 8, !tbaa !14
  %foldExtExtBinop729 = fsub <2 x double> %foldExtExtBinop719, %foldExtExtBinop723
  %i.kg = extractelement <2 x double> %foldExtExtBinop729, i64 0
  store double %i.kg, ptr %i.im, align 8, !tbaa !14
  %i.kh = fsub double %i.jx, %i.kb
  store double %i.kh, ptr %i.io, align 8, !tbaa !14
  %i.ki = fsub <2 x double> %i.jy, %i.kd          ; 4 uses
  %i.kj = fadd <2 x double> %i.jy, %i.kd          ; 3 uses
  %i.kk = shufflevector <2 x double> %i.ki, <2 x double> %i.kj, <2 x i32> <i32 0, i32 3>
  %i.kl = shufflevector <2 x double> %i.kj, <2 x double> %i.ki, <2 x i32> <i32 0, i32 3>
  %i.km = fneg <2 x double> %i.kj
  %i.kn = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> %i.ki, <2 x i32> <i32 0, i32 2>
  %i.kp = fmul <2 x double> %i.ho, %i.ko
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.kk, <2 x double> %i.kp)
  store <2 x double> %i.kq, ptr %i.ik, align 8, !tbaa !14
  %i.kr = shufflevector <2 x double> %i.ki, <2 x double> %i.kn, <2 x i32> <i32 1, i32 3>
  %i.ks = fmul <2 x double> %i.iv, %i.kr
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.is, <2 x double> %i.kl, <2 x double> %i.ks)
  store <2 x double> %i.kt, ptr %i.in, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftrec1(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = ashr i32 %0, 2                           ; 2 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
  %i.c = sub nsw i32 %2, %i.b
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %3, i64 %i.d
  tail call void @cftmdl1(i32 noundef %0, ptr noundef %1, ptr noundef %i.e)
  %i.f = icmp sgt i32 %0, 512
  br i1 %i.f, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.g = phi i32 [ %i.q, %tailrecurse ], [ %i.b, %bb.a ]
  %i.h = phi i32 [ %i.p, %tailrecurse ], [ %i.a, %bb.a ] ; 9 uses
  %.tr2932 = phi ptr [ %i.o, %tailrecurse ], [ %1, %bb.a ] ; 4 uses
  tail call void @cftrec1(i32 noundef %i.h, ptr noundef %.tr2932, i32 noundef %2, ptr noundef %3)
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.tr2932, i64 %i.i
  tail call void @cftrec2(i32 noundef %i.h, ptr noundef %i.j, i32 noundef %2, ptr noundef %3)
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.tr2932, i64 %i.k
  tail call void @cftrec1(i32 noundef %i.h, ptr noundef %i.l, i32 noundef %2, ptr noundef %3)
  %i.m = mul nuw nsw i32 %i.h, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.tr2932, i64 %i.n ; 3 uses
  %i.p = lshr i32 %i.h, 2                         ; 2 uses
  %i.q = shl nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = sub nsw i32 %2, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %3, i64 %i.s
  tail call void @cftmdl1(i32 noundef %i.h, ptr noundef %i.o, ptr noundef %i.t)
  %i.u = icmp sgt i32 %i.h, 512
  br i1 %i.u, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
end_hunk_0
begin_hunk_1_@cftf081:bb.a
  %i.x = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.y = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.z = fadd <4 x double> %i.x, %i.y             ; 2 uses
  %i.aa = fsub double %i.q, %i.w                  ; 2 uses
  %i.ab = fadd double %i.r, %i.v                  ; 2 uses
  %i.ac = fadd double %i.q, %i.w                  ; 2 uses
  %i.ad = fsub double %i.r, %i.v                  ; 2 uses
  %i.ae = load <2 x double>, ptr %i.h, align 8, !tbaa !14 ; 3 uses
  %i.af = load <2 x double>, ptr %i.i, align 8, !tbaa !14 ; 3 uses
  %i.ag = fadd <2 x double> %i.ae, %i.af          ; 2 uses
  %foldExtExtBinop132 = fsub <2 x double> %i.ae, %i.af
  %i.ah = extractelement <2 x double> %foldExtExtBinop132, i64 0 ; 2 uses
  %foldExtExtBinop134 = fsub <2 x double> %i.ae, %i.af
  %i.ai = extractelement <2 x double> %foldExtExtBinop134, i64 1 ; 2 uses
  %i.aj = load <2 x double>, ptr %i.k, align 8, !tbaa !14 ; 3 uses
  %i.ak = load <2 x double>, ptr %i.l, align 8, !tbaa !14 ; 3 uses
  %i.al = fadd <2 x double> %i.aj, %i.ak          ; 2 uses
  %foldExtExtBinop136 = fsub <2 x double> %i.aj, %i.ak
  %i.am = extractelement <2 x double> %foldExtExtBinop136, i64 0 ; 2 uses
  %foldExtExtBinop138 = fsub <2 x double> %i.aj, %i.ak
  %i.an = extractelement <2 x double> %foldExtExtBinop138, i64 1 ; 2 uses
  %i.ao = shufflevector <2 x double> %i.ag, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ap = shufflevector <2 x double> %i.al, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aq = fadd <4 x double> %i.ao, %i.ap          ; 2 uses
  %i.ar = fsub double %i.ah, %i.an                ; 2 uses
  %i.as = fadd double %i.ai, %i.am                ; 2 uses
  %i.at = fadd double %i.ah, %i.an                ; 2 uses
  %i.au = fsub double %i.ai, %i.am                ; 2 uses
  %i.av = fsub double %i.ar, %i.as
  %i.aw = fmul double %i.b, %i.av                 ; 2 uses
  %i.ax = fadd double %i.as, %i.ar
  %i.ay = fmul double %i.b, %i.ax                 ; 2 uses
  %i.az = fsub double %i.at, %i.au
  %i.ba = fmul double %i.b, %i.az                 ; 2 uses
  %i.bb = fadd double %i.au, %i.at
  %i.bc = fmul double %i.b, %i.bb                 ; 2 uses
  %i.bd = fadd double %i.aa, %i.aw
  store double %i.bd, ptr %i.c, align 8, !tbaa !14
  %i.be = fadd double %i.ab, %i.ay
  store double %i.be, ptr %i.d, align 8, !tbaa !14
  %i.bf = fsub double %i.aa, %i.aw
  store double %i.bf, ptr %i.i, align 8, !tbaa !14
  %i.bg = fsub double %i.ab, %i.ay
  store double %i.bg, ptr %i.j, align 8, !tbaa !14
  %i.bh = fsub double %i.ac, %i.bc
  store double %i.bh, ptr %i.f, align 8, !tbaa !14
  %i.bi = fadd double %i.ad, %i.ba
  store double %i.bi, ptr %i.g, align 8, !tbaa !14
  %i.bj = fadd double %i.ac, %i.bc
  store double %i.bj, ptr %i.l, align 8, !tbaa !14
  %i.bk = fsub double %i.ad, %i.ba
  store double %i.bk, ptr %i.m, align 8, !tbaa !14
  %i.bl = fadd <4 x double> %i.z, %i.aq
  %i.bm = fsub <4 x double> %i.z, %i.aq
  %i.bn = shufflevector <4 x double> %i.bm, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x double> %i.bl, <4 x double> %i.bn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.bo, ptr %0, align 8, !tbaa !14
  %i.bp = shufflevector <2 x double> %i.p, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bq = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.br = fsub <4 x double> %i.bp, %i.bq          ; 2 uses
  %i.bs = fsub <2 x double> %i.ag, %i.al
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.bu = fsub <4 x double> %i.br, %i.bt
  %i.bv = fadd <4 x double> %i.br, %i.bt
  %i.bw = shufflevector <4 x double> %i.bu, <4 x double> %i.bv, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x double> %i.bw, ptr %i.e, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv208(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.e, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.g, ptr %i.c, align 8, !tbaa !14
  %i.h = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.f, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.h, ptr %i.d, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf040(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !14  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.d = fadd double %i.a, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.f, %i.h                   ; 2 uses
  %i.j = fsub double %i.a, %i.c                   ; 2 uses
  %i.k = fsub double %i.f, %i.h                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.p = fadd double %i.m, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = fadd double %i.r, %i.t                   ; 2 uses
  %i.v = fsub double %i.m, %i.o                   ; 2 uses
  %i.w = fsub double %i.r, %i.t                   ; 2 uses
  %i.x = fadd double %i.d, %i.p
  store double %i.x, ptr %0, align 8, !tbaa !14
  %i.y = fadd double %i.i, %i.u
  store double %i.y, ptr %i.e, align 8, !tbaa !14
  %i.z = fsub double %i.d, %i.p
  store double %i.z, ptr %i.b, align 8, !tbaa !14
  %i.aa = fsub double %i.i, %i.u
  store double %i.aa, ptr %i.g, align 8, !tbaa !14
  %i.ab = fsub double %i.j, %i.w
  store double %i.ab, ptr %i.l, align 8, !tbaa !14
  %i.ac = fadd double %i.k, %i.v
  store double %i.ac, ptr %i.q, align 8, !tbaa !14
  %i.ad = fadd double %i.j, %i.w
  store double %i.ad, ptr %i.n, align 8, !tbaa !14
  %i.ae = fsub double %i.k, %i.v
  store double %i.ae, ptr %i.s, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftx020(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !14 ; 2 uses
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.d = fadd <2 x double> %i.b, %i.c
  store <2 x double> %i.d, ptr %0, align 8, !tbaa !14
  %i.e = fsub <2 x double> %i.b, %i.c
  store <2 x double> %i.e, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftb1st(i32 noundef %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1
  %i.c = shl nsw i32 %i.a, 2
  %i.d = mul nsw i32 %i.a, 6
  %i.e = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.e, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.l = fneg double %i.k
  %i.m = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.o = fsub double %i.l, %i.n                   ; 2 uses
  %i.p = fsub double %i.e, %i.h                   ; 2 uses
  %i.q = fsub double %i.n, %i.k                   ; 2 uses
  %i.r = sext i32 %i.b to i64                     ; 8 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r ; 3 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = sext i32 %i.d to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u ; 3 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !14 ; 2 uses
  %i.x = fadd double %i.t, %i.w                   ; 2 uses
  %i.y = getelementptr i8, ptr %i.s, i64 8        ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !14 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %i.ac = fadd double %i.z, %i.ab                 ; 2 uses
  %i.ad = fsub double %i.t, %i.w                  ; 2 uses
  %i.ae = fsub double %i.z, %i.ab                 ; 2 uses
  %i.af = fadd double %i.i, %i.x
  store double %i.af, ptr %1, align 8, !tbaa !14
  %i.ag = fsub double %i.o, %i.ac
  store double %i.ag, ptr %i.j, align 8, !tbaa !14
  %i.ah = fsub double %i.i, %i.x
  store double %i.ah, ptr %i.s, align 8, !tbaa !14
  %i.ai = fadd double %i.o, %i.ac
  store double %i.ai, ptr %i.y, align 8, !tbaa !14
  %i.aj = fadd double %i.p, %i.ae
  store double %i.aj, ptr %i.g, align 8, !tbaa !14
  %i.ak = fadd double %i.q, %i.ad
  store double %i.ak, ptr %i.m, align 8, !tbaa !14
  %i.al = fsub double %i.p, %i.ae
  store double %i.al, ptr %i.v, align 8, !tbaa !14
  %i.am = fsub double %i.q, %i.ad
  store double %i.am, ptr %i.aa, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !14 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !14 ; 4 uses
  %i.at = add nsw i32 %i.a, -2                    ; 2 uses
  %i.au = icmp sgt i32 %i.a, 4
  br i1 %i.au, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.at to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.av = zext nneg i32 %i.at to i64              ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.r
  %invariant.gep711 = getelementptr [8 x i8], ptr %1, i64 %i.r
  %i.aw = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv703 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next704, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0695 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %10, %.lr.ph ]
  %.0684694 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %5, %.lr.ph ]
  %i.ay = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bb = load <2 x double>, ptr %i.az, align 8, !tbaa !14 ; 5 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bd = add nuw nsw i64 %indvars.iv703, %i.r    ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, %i.r             ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv703 ; 5 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.be ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bg, i64 16     ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bg, i64 24
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.be ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = getelementptr i8, ptr %i.bn, i64 16     ; 2 uses
  %i.bq = getelementptr i8, ptr %gep, i64 16      ; 2 uses
  %i.br = getelementptr i8, ptr %i.bn, i64 24
  %i.bs = sub nsw i64 %i.r, %indvars.iv703        ; 2 uses
  %i.bt = add nsw i64 %i.bs, %i.r                 ; 2 uses
  %i.bu = add nsw i64 %i.bt, %i.r                 ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs ; 5 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bu ; 5 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 8      ; 2 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 8
  %i.bz = getelementptr i8, ptr %i.bv, i64 -16    ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 -16    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bv, i64 -8     ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bw, i64 -8
  %i.cd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bt ; 5 uses
  %gep712 = getelementptr [8 x i8], ptr %invariant.gep711, i64 %i.bu ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %i.cf = getelementptr i8, ptr %i.cd, i64 -16    ; 2 uses
  %i.cg = getelementptr i8, ptr %gep712, i64 -16  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cd, i64 -8
  %i.ci = load <2 x double>, ptr %i.bf, align 8, !tbaa !14 ; 3 uses
  %i.cj = load double, ptr %i.bh, align 8, !tbaa !14
  %i.ck = load <2 x double>, ptr %i.bg, align 8, !tbaa !14 ; 3 uses
  %i.cl = load double, ptr %i.bi, align 8, !tbaa !14
  %foldExtExtBinop = fadd <2 x double> %i.ci, %i.ck ; 2 uses
  %i.cm = fneg double %i.cj
  %i.cn = fsub double %i.cm, %i.cl                ; 2 uses
  %i.co = shufflevector <2 x double> %i.ck, <2 x double> %i.ci, <2 x i32> <i32 1, i32 2>
  %i.cp = shufflevector <2 x double> %i.ci, <2 x double> %i.ck, <2 x i32> <i32 1, i32 2>
  %i.cq = fsub <2 x double> %i.co, %i.cp          ; 2 uses
  %i.cr = load <2 x double>, ptr %i.bn, align 8, !tbaa !14 ; 3 uses
  %i.cs = load <2 x double>, ptr %gep, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop717 = fadd <2 x double> %i.cr, %i.cs ; 2 uses
  %foldExtExtBinop719 = fadd <2 x double> %i.cr, %i.cs
  %i.ct = extractelement <2 x double> %foldExtExtBinop719, i64 1 ; 2 uses
  %i.cu = fsub <2 x double> %i.cr, %i.cs          ; 2 uses
  %foldExtExtBinop721 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop717
  %i.cv = extractelement <2 x double> %foldExtExtBinop721, i64 0
  %i.cw = fsub double %i.cn, %i.ct
  %foldExtExtBinop723 = fsub <2 x double> %foldExtExtBinop, %foldExtExtBinop717
  %i.cx = extractelement <2 x double> %foldExtExtBinop723, i64 0
  %i.cy = fadd double %i.cn, %i.ct
  %i.cz = fsub <2 x double> %i.cq, %i.cu          ; 3 uses
  %4 = load double, ptr %i.bc, align 8, !tbaa !14 ; 3 uses
  %5 = load double, ptr %3, align 8, !tbaa !14    ; 4 uses
  %6 = fsub double %.0695, %4
  %7 = fadd double %.0684694, %5
  %8 = fmul double %i.as, %6
  %9 = fmul double %i.as, %7
  %10 = fneg double %4                            ; 3 uses
  %11 = insertelement <2 x double> poison, double %8, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.da = fneg <2 x double> %i.cz
  %i.db = shufflevector <2 x double> %i.da, <2 x double> %i.cz, <2 x i32> <i32 1, i32 2>
  %i.dc = fmul <2 x double> %12, %i.db
  %13 = insertelement <2 x double> poison, double %9, i64 0
  %i.dd = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> %i.cz, <2 x double> %i.dc)
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dg = fadd <2 x double> %i.ay, %i.bb
  %i.dh = fmul <2 x double> %i.ax, %i.dg          ; 2 uses
  %i.di = load <2 x double>, ptr %i.bj, align 8, !tbaa !14 ; 3 uses
  %i.dj = load double, ptr %i.bl, align 8, !tbaa !14
  %i.dk = load <2 x double>, ptr %i.bk, align 8, !tbaa !14 ; 3 uses
  %i.dl = load double, ptr %i.bm, align 8, !tbaa !14
  %foldExtExtBinop725 = fadd <2 x double> %i.di, %i.dk ; 2 uses
  %i.dm = fneg double %i.dj
  %i.dn = fsub double %i.dm, %i.dl                ; 2 uses
  %i.do = shufflevector <2 x double> %i.dk, <2 x double> %i.di, <2 x i32> <i32 1, i32 2>
  %i.dp = shufflevector <2 x double> %i.di, <2 x double> %i.dk, <2 x i32> <i32 1, i32 2>
  %i.dq = fsub <2 x double> %i.do, %i.dp          ; 2 uses
  %i.dr = load <2 x double>, ptr %i.bp, align 8, !tbaa !14 ; 3 uses
  %i.ds = load <2 x double>, ptr %i.bq, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop727 = fadd <2 x double> %i.dr, %i.ds ; 2 uses
  %foldExtExtBinop729 = fadd <2 x double> %i.dr, %i.ds
  %i.dt = extractelement <2 x double> %foldExtExtBinop729, i64 1 ; 2 uses
  %i.du = fsub <2 x double> %i.dr, %i.ds          ; 2 uses
  %foldExtExtBinop731 = fadd <2 x double> %foldExtExtBinop725, %foldExtExtBinop727
  %i.dv = extractelement <2 x double> %foldExtExtBinop731, i64 0
  %i.dw = fsub double %i.dn, %i.dt
  %foldExtExtBinop733 = fsub <2 x double> %foldExtExtBinop725, %foldExtExtBinop727
  %i.dx = extractelement <2 x double> %foldExtExtBinop733, i64 0
  %i.dy = fadd double %i.dn, %i.dt
  %i.dz = fsub <2 x double> %i.dq, %i.du          ; 2 uses
  store double %i.cv, ptr %i.bf, align 8, !tbaa !14
  store double %i.cw, ptr %i.bh, align 8, !tbaa !14
  store double %i.dv, ptr %i.bj, align 8, !tbaa !14
  store double %i.dw, ptr %i.bl, align 8, !tbaa !14
  store double %i.cx, ptr %i.bn, align 8, !tbaa !14
  store double %i.cy, ptr %i.bo, align 8, !tbaa !14
  store double %i.dx, ptr %i.bp, align 8, !tbaa !14
  store double %i.dy, ptr %i.br, align 8, !tbaa !14
  %i.ea = fadd <2 x double> %i.dq, %i.du          ; 3 uses
  %i.eb = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ec = fneg <2 x double> %i.ea
  %i.ed = shufflevector <2 x double> %i.ea, <2 x double> %i.ec, <2 x i32> <i32 1, i32 2>
  %i.ee = fmul <2 x double> %i.eb, %i.ed
  %i.ef = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.ea, <2 x double> %i.ee)
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.eh, ptr %i.bk, align 8, !tbaa !14
  store <2 x double> %i.df, ptr %gep, align 8, !tbaa !14
  %14 = insertelement <2 x double> poison, double %10, i64 0 ; 2 uses
  %i.ei = insertelement <2 x double> %14, double %4, i64 1
  %i.ej = fmul <2 x double> %i.dz, %i.ei
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %15 = insertelement <2 x double> poison, double %5, i64 0
  %i.el = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.dz, <2 x double> %i.ek)
  %i.en = fadd <2 x double> %i.cq, %i.cu          ; 3 uses
  %i.eo = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ep = fneg <2 x double> %i.en
  %i.eq = shufflevector <2 x double> %i.en, <2 x double> %i.ep, <2 x i32> <i32 1, i32 2>
  %i.er = fmul <2 x double> %i.eo, %i.eq
  %i.es = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.en, <2 x double> %i.er)
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.eu, ptr %i.bg, align 8, !tbaa !14
  %i.ev = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ev, ptr %i.bq, align 8, !tbaa !14
  %i.ew = load <2 x double>, ptr %i.bv, align 8, !tbaa !14 ; 3 uses
  %i.ex = load double, ptr %i.bx, align 8, !tbaa !14
  %i.ey = load <2 x double>, ptr %i.bw, align 8, !tbaa !14 ; 3 uses
  %i.ez = load double, ptr %i.by, align 8, !tbaa !14
  %foldExtExtBinop735 = fadd <2 x double> %i.ew, %i.ey ; 2 uses
  %i.fa = fneg double %i.ex
  %i.fb = fsub double %i.fa, %i.ez                ; 2 uses
  %i.fc = shufflevector <2 x double> %i.ey, <2 x double> %i.ew, <2 x i32> <i32 1, i32 2>
  %i.fd = shufflevector <2 x double> %i.ew, <2 x double> %i.ey, <2 x i32> <i32 1, i32 2>
  %i.fe = fsub <2 x double> %i.fc, %i.fd          ; 2 uses
  %i.ff = load <2 x double>, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.fg = load <2 x double>, ptr %gep712, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop737 = fadd <2 x double> %i.ff, %i.fg ; 2 uses
  %foldExtExtBinop739 = fadd <2 x double> %i.ff, %i.fg
  %i.fh = extractelement <2 x double> %foldExtExtBinop739, i64 1 ; 2 uses
  %i.fi = fsub <2 x double> %i.ff, %i.fg          ; 2 uses
  %foldExtExtBinop741 = fadd <2 x double> %foldExtExtBinop735, %foldExtExtBinop737
  %i.fj = extractelement <2 x double> %foldExtExtBinop741, i64 0
  %i.fk = fsub double %i.fb, %i.fh
  %foldExtExtBinop743 = fsub <2 x double> %foldExtExtBinop735, %foldExtExtBinop737
  %i.fl = extractelement <2 x double> %foldExtExtBinop743, i64 0
  %i.fm = fadd double %i.fb, %i.fh
  %i.fn = fadd <2 x double> %i.fe, %i.fi          ; 3 uses
  %i.fo = fneg <2 x double> %i.fn
  %i.fp = shufflevector <2 x double> %i.fn, <2 x double> %i.fo, <2 x i32> <i32 1, i32 2>
  %i.fq = fmul <2 x double> %i.es, %i.fp
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.fn, <2 x double> %i.fq)
  %i.fs = fsub <2 x double> %i.fe, %i.fi          ; 3 uses
  %i.ft = fneg <2 x double> %i.fs
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> %i.fs, <2 x i32> <i32 1, i32 2>
  %i.fv = fmul <2 x double> %i.dd, %i.fu
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %i.fs, <2 x double> %i.fv)
  %i.fx = load <2 x double>, ptr %i.bz, align 8, !tbaa !14 ; 3 uses
  %i.fy = load double, ptr %i.cb, align 8, !tbaa !14
  %i.fz = load <2 x double>, ptr %i.ca, align 8, !tbaa !14 ; 3 uses
  %i.ga = load double, ptr %i.cc, align 8, !tbaa !14
  %foldExtExtBinop745 = fadd <2 x double> %i.fx, %i.fz ; 2 uses
  %i.gb = fneg double %i.fy
  %i.gc = fsub double %i.gb, %i.ga                ; 2 uses
  %i.gd = shufflevector <2 x double> %i.fz, <2 x double> %i.fx, <2 x i32> <i32 1, i32 2>
  %i.ge = shufflevector <2 x double> %i.fx, <2 x double> %i.fz, <2 x i32> <i32 1, i32 2>
  %i.gf = fsub <2 x double> %i.gd, %i.ge          ; 2 uses
  %i.gg = load <2 x double>, ptr %i.cf, align 8, !tbaa !14 ; 3 uses
  %i.gh = load <2 x double>, ptr %i.cg, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop747 = fadd <2 x double> %i.gg, %i.gh ; 2 uses
  %foldExtExtBinop749 = fadd <2 x double> %i.gg, %i.gh
  %i.gi = extractelement <2 x double> %foldExtExtBinop749, i64 1 ; 2 uses
  %i.gj = fsub <2 x double> %i.gg, %i.gh          ; 2 uses
  store double %i.fj, ptr %i.bv, align 8, !tbaa !14
  store double %i.fk, ptr %i.bx, align 8, !tbaa !14
  %foldExtExtBinop751 = fadd <2 x double> %foldExtExtBinop745, %foldExtExtBinop747
  %i.gk = extractelement <2 x double> %foldExtExtBinop751, i64 0
  store double %i.gk, ptr %i.bz, align 8, !tbaa !14
  %i.gl = fsub double %i.gc, %i.gi
  store double %i.gl, ptr %i.cb, align 8, !tbaa !14
  store double %i.fl, ptr %i.cd, align 8, !tbaa !14
  store double %i.fm, ptr %i.ce, align 8, !tbaa !14
  %foldExtExtBinop753 = fsub <2 x double> %foldExtExtBinop745, %foldExtExtBinop747
  %i.gm = extractelement <2 x double> %foldExtExtBinop753, i64 0
  store double %i.gm, ptr %i.cf, align 8, !tbaa !14
  %i.gn = fadd double %i.gc, %i.gi
  store double %i.gn, ptr %i.ch, align 8, !tbaa !14
  %i.go = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.go, ptr %i.bw, align 8, !tbaa !14
  %i.gp = fadd <2 x double> %i.gf, %i.gj          ; 3 uses
  %i.gq = fneg <2 x double> %i.gp
  %i.gr = shufflevector <2 x double> %i.gp, <2 x double> %i.gq, <2 x i32> <i32 1, i32 2>
  %i.gs = fmul <2 x double> %i.ef, %i.gr
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.gp, <2 x double> %i.gs)
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gu, ptr %i.ca, align 8, !tbaa !14
  %i.gv = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gv, ptr %gep712, align 8, !tbaa !14
  %i.gw = fsub <2 x double> %i.gf, %i.gj          ; 3 uses
  %i.gx = fneg <2 x double> %i.gw
  %i.gy = shufflevector <2 x double> %i.gx, <2 x double> %i.gw, <2 x i32> <i32 1, i32 2>
  %i.gz = fmul <2 x double> %i.el, %i.gy
  %i.ha = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.gw, <2 x double> %i.gz)
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hc, ptr %i.cg, align 8, !tbaa !14
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 4 ; 2 uses
  %i.hd = icmp samesign ult i64 %indvars.iv.next704, %i.av
  br i1 %i.hd, label %.lr.ph, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.av, %.lr.ph ]
  %.0684.lcssa = phi double [ 1.000000e+00, %.._crit_edge_crit_edge ], [ %5, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %10, %.lr.ph ]
  %i.he = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.._crit_edge_crit_edge ], [ %i.bb, %.lr.ph ]
  %i.hf = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = fadd <2 x double> %i.hg, %i.he
  %i.hi = fsub double %.0684.lcssa, %i.ao
  %i.hj = fsub double %.0.lcssa, %i.ao
  %i.hk = mul nsw i32 %i.a, 3
  %i.hl = mul nsw i32 %i.a, 5
  %i.hm = mul nsw i32 %i.a, 7
  %i.hn = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !14 ; 2 uses
  %i.hp = sext i32 %i.hl to i64
  %i.hq = getelementptr [8 x i8], ptr %1, i64 %i.hp ; 7 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 -16    ; 2 uses
  %i.hs = sext i32 %i.a to i64
  %i.ht = getelementptr [8 x i8], ptr %1, i64 %i.hs ; 6 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 -8     ; 2 uses
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !14 ; 2 uses
  %i.hw = fneg double %i.hv
  %i.hx = getelementptr i8, ptr %i.hq, i64 -8
  %i.hy = sext i32 %i.hk to i64
  %i.hz = getelementptr [8 x i8], ptr %1, i64 %i.hy ; 7 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 -16    ; 2 uses
  %i.ib = sext i32 %i.hm to i64
  %i.ic = getelementptr [8 x i8], ptr %1, i64 %i.ib ; 5 uses
  %i.id = getelementptr i8, ptr %i.ic, i64 -16    ; 2 uses
  %i.ie = getelementptr i8, ptr %i.hz, i64 -8
  %i.if = load <2 x double>, ptr %i.hr, align 8, !tbaa !14 ; 2 uses
  %i.ig = load double, ptr %i.hx, align 8, !tbaa !14
  %i.ih = extractelement <2 x double> %i.if, i64 0
  %i.ii = fadd double %i.ho, %i.ih                ; 2 uses
  %i.ij = fsub double %i.hw, %i.ig                ; 2 uses
  %i.ik = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.il = insertelement <2 x double> %i.ik, double %i.ho, i64 1
  %i.im = insertelement <2 x double> %i.ik, double %i.hv, i64 0
  %i.in = fsub <2 x double> %i.il, %i.im          ; 2 uses
  %i.io = load <2 x double>, ptr %i.ia, align 8, !tbaa !14 ; 3 uses
  %i.ip = load <2 x double>, ptr %i.id, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop755 = fadd <2 x double> %i.io, %i.ip
  %i.iq = extractelement <2 x double> %foldExtExtBinop755, i64 0 ; 2 uses
  %foldExtExtBinop757 = fadd <2 x double> %i.io, %i.ip
  %i.ir = extractelement <2 x double> %foldExtExtBinop757, i64 1 ; 2 uses
  %i.is = fsub <2 x double> %i.io, %i.ip          ; 2 uses
  %i.it = fadd double %i.ii, %i.iq
  store double %i.it, ptr %i.hn, align 8, !tbaa !14
  %i.iu = fsub double %i.ij, %i.ir
  store double %i.iu, ptr %i.hu, align 8, !tbaa !14
  %i.iv = fsub double %i.ii, %i.iq
  store double %i.iv, ptr %i.ia, align 8, !tbaa !14
  %i.iw = fadd double %i.ij, %i.ir
  store double %i.iw, ptr %i.ie, align 8, !tbaa !14
  %i.ix = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x double> %i.iy, %i.hh          ; 2 uses
  %i.ja = fadd <2 x double> %i.in, %i.is          ; 2 uses
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jc = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jd = fneg <2 x double> %i.jb
  %i.je = shufflevector <2 x double> %i.ja, <2 x double> %i.jd, <2 x i32> <i32 3, i32 1>
  %i.jf = fmul <2 x double> %i.jc, %i.je
  %i.jg = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jg, <2 x double> %i.jb, <2 x double> %i.jf)
  store <2 x double> %i.jh, ptr %i.hr, align 8, !tbaa !14
  %i.ji = fsub <2 x double> %i.in, %i.is          ; 3 uses
  %i.jj = fneg <2 x double> %i.ji
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> %i.ji, <2 x i32> <i32 1, i32 2>
  %i.jl = getelementptr i8, ptr %i.ht, i64 8      ; 2 uses
  %i.jm = getelementptr i8, ptr %i.hq, i64 8      ; 2 uses
  %i.jn = load double, ptr %i.hz, align 8, !tbaa !14 ; 2 uses
  %i.jo = load double, ptr %i.ic, align 8, !tbaa !14 ; 2 uses
  %i.jp = fadd double %i.jn, %i.jo                ; 2 uses
  %i.jq = getelementptr i8, ptr %i.hz, i64 8      ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !14 ; 2 uses
  %i.js = getelementptr i8, ptr %i.ic, i64 8      ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !14 ; 2 uses
  %i.ju = fadd double %i.jr, %i.jt                ; 2 uses
  %i.jv = fsub double %i.jn, %i.jo                ; 2 uses
  %i.jw = fsub double %i.jr, %i.jt                ; 2 uses
  %i.jx = fneg double %i.ao                       ; 2 uses
  %i.jy = getelementptr i8, ptr %i.ht, i64 16     ; 2 uses
  %i.jz = getelementptr i8, ptr %i.hq, i64 16     ; 2 uses
  %i.ka = getelementptr i8, ptr %i.ht, i64 24     ; 2 uses
  %i.kb = getelementptr i8, ptr %i.hq, i64 24
  %i.kc = getelementptr i8, ptr %i.hz, i64 16     ; 2 uses
  %i.kd = getelementptr i8, ptr %i.ic, i64 16     ; 2 uses
  %i.ke = getelementptr i8, ptr %i.hz, i64 24
  %i.kf = fmul double %i.as, %i.hi
  %i.kg = fmul double %i.as, %i.hj
  %i.kh = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kj = fmul <2 x double> %i.ki, %i.jk
  %i.kk = insertelement <2 x double> poison, double %i.kf, i64 0
  %i.kl = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.km = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %i.ji, <2 x double> %i.kj)
  %i.kn = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.kn, ptr %i.id, align 8, !tbaa !14
  %i.ko = load double, ptr %i.ht, align 8, !tbaa !14 ; 2 uses
  %i.kp = load double, ptr %i.hq, align 8, !tbaa !14 ; 2 uses
  %i.kq = fadd double %i.ko, %i.kp                ; 2 uses
  %i.kr = load double, ptr %i.jl, align 8, !tbaa !14 ; 2 uses
  %i.ks = fneg double %i.kr
  %i.kt = load double, ptr %i.jm, align 8, !tbaa !14 ; 2 uses
  %i.ku = fsub double %i.ks, %i.kt                ; 2 uses
  %i.kv = fsub double %i.ko, %i.kp                ; 2 uses
  %i.kw = fsub double %i.kt, %i.kr                ; 2 uses
  %i.kx = fadd double %i.kq, %i.jp
  store double %i.kx, ptr %i.ht, align 8, !tbaa !14
  %i.ky = fsub double %i.ku, %i.ju
  store double %i.ky, ptr %i.jl, align 8, !tbaa !14
  %i.kz = fsub double %i.kq, %i.jp
  store double %i.kz, ptr %i.hz, align 8, !tbaa !14
  %i.la = fadd double %i.ku, %i.ju
  store double %i.la, ptr %i.jq, align 8, !tbaa !14
  %i.lb = fadd double %i.kv, %i.jw                ; 2 uses
  %i.lc = fadd double %i.kw, %i.jv                ; 2 uses
  %i.ld = fsub double %i.lb, %i.lc
  %i.le = fmul double %i.ao, %i.ld
  store double %i.le, ptr %i.hq, align 8, !tbaa !14
  %i.lf = fadd double %i.lc, %i.lb
  %i.lg = fmul double %i.ao, %i.lf
  store double %i.lg, ptr %i.jm, align 8, !tbaa !14
  %i.lh = fsub double %i.kv, %i.jw                ; 2 uses
  %i.li = fsub double %i.kw, %i.jv                ; 2 uses
  %i.lj = fadd double %i.li, %i.lh
  %i.lk = fmul double %i.lj, %i.jx
  store double %i.lk, ptr %i.ic, align 8, !tbaa !14
  %i.ll = fsub double %i.li, %i.lh
  %i.lm = fmul double %i.ll, %i.jx
  store double %i.lm, ptr %i.js, align 8, !tbaa !14
  %i.ln = load <2 x double>, ptr %i.jy, align 8, !tbaa !14 ; 3 uses
  %i.lo = load double, ptr %i.ka, align 8, !tbaa !14
  %i.lp = load <2 x double>, ptr %i.jz, align 8, !tbaa !14 ; 3 uses
  %i.lq = load double, ptr %i.kb, align 8, !tbaa !14
  %foldExtExtBinop759 = fadd <2 x double> %i.ln, %i.lp ; 2 uses
  %i.lr = fneg double %i.lo
  %i.ls = fsub double %i.lr, %i.lq                ; 2 uses
  %i.lt = shufflevector <2 x double> %i.lp, <2 x double> %i.ln, <2 x i32> <i32 1, i32 2>
  %i.lu = shufflevector <2 x double> %i.ln, <2 x double> %i.lp, <2 x i32> <i32 1, i32 2>
  %i.lv = fsub <2 x double> %i.lt, %i.lu          ; 2 uses
  %i.lw = load <2 x double>, ptr %i.kc, align 8, !tbaa !14 ; 3 uses
  %i.lx = load <2 x double>, ptr %i.kd, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop761 = fadd <2 x double> %i.lw, %i.lx ; 2 uses
  %foldExtExtBinop763 = fadd <2 x double> %i.lw, %i.lx
  %i.ly = extractelement <2 x double> %foldExtExtBinop763, i64 1 ; 2 uses
  %i.lz = fsub <2 x double> %i.lw, %i.lx          ; 2 uses
  %foldExtExtBinop765 = fadd <2 x double> %foldExtExtBinop759, %foldExtExtBinop761
  %i.ma = extractelement <2 x double> %foldExtExtBinop765, i64 0
  store double %i.ma, ptr %i.jy, align 8, !tbaa !14
  %i.mb = fsub double %i.ls, %i.ly
  store double %i.mb, ptr %i.ka, align 8, !tbaa !14
  %foldExtExtBinop767 = fsub <2 x double> %foldExtExtBinop759, %foldExtExtBinop761
  %i.mc = extractelement <2 x double> %foldExtExtBinop767, i64 0
  store double %i.mc, ptr %i.kc, align 8, !tbaa !14
  %i.md = fadd double %i.ls, %i.ly
  store double %i.md, ptr %i.ke, align 8, !tbaa !14
  %i.me = fadd <2 x double> %i.lv, %i.lz          ; 3 uses
  %i.mf = fneg <2 x double> %i.me
  %i.mg = shufflevector <2 x double> %i.me, <2 x double> %i.mf, <2 x i32> <i32 1, i32 2>
  %i.mh = fmul <2 x double> %i.jg, %i.mg
  %i.mi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.me, <2 x double> %i.mh)
  %i.mj = shufflevector <2 x double> %i.mi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.mj, ptr %i.jz, align 8, !tbaa !14
  %i.mk = fsub <2 x double> %i.lv, %i.lz          ; 3 uses
  %i.ml = fneg <2 x double> %i.mk
  %i.mm = shufflevector <2 x double> %i.ml, <2 x double> %i.mk, <2 x i32> <i32 1, i32 2>
  %i.mn = fmul <2 x double> %i.kl, %i.mm
  %i.mo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %i.mk, <2 x double> %i.mn)
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.mp, ptr %i.kd, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bitrv2conj(i32 noundef %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef %2) local_unnamed_addr #4 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !12
  %i.a = icmp sgt i32 %0, 8
  br i1 %i.a, label %.lr.ph245, label %._crit_edge246.thread

.lr.ph245:                                        ; preds = %bb.a, %._crit_edge
  %.0243 = phi i32 [ %i.o, %._crit_edge ], [ 1, %bb.a ] ; 6 uses
  %.0233242 = phi i32 [ %i.b, %._crit_edge ], [ %0, %bb.a ]
  %i.b = lshr i32 %.0233242, 1                    ; 5 uses
  %i.c = icmp sgt i32 %.0243, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph245
  %i.d = zext nneg i32 %.0243 to i64              ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.d ; 2 uses
  %min.iters.check = icmp ult i32 %.0243, 8
  br i1 %min.iters.check, label %.lr.ph.preheader306, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.d, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
end_hunk_1
