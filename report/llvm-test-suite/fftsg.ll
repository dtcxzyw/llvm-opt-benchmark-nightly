Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fftsg?download=true
inline.NumInlined: 74
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dfst:bb.a

bb.m:                                             ; preds = %.lr.ph243, %bb.m
  %indvars.iv258 = phi i64 [ 2, %.lr.ph243 ], [ %indvars.iv.next259, %bb.m ] ; 2 uses
  %indvars.iv256 = phi i64 [ 0, %.lr.ph243 ], [ %indvars.iv.next257, %bb.m ]
  %indvars.iv.next257 = add nsw i64 %indvars.iv256, %i.lb ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv258 ; 3 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !14
  %i.lf = fneg double %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %i.lh = load double, ptr %i.lg, align 8, !tbaa !14
  %i.li = fsub double %i.lf, %i.lh
  %i.lj = sub nsw i64 %indvars.iv.next257, %i.kw
  %i.lk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.lj
  store double %i.li, ptr %i.lk, align 8, !tbaa !14
  %i.ll = load double, ptr %i.ld, align 8, !tbaa !14
  %i.lm = load double, ptr %i.lg, align 8, !tbaa !14
  %i.ln = fsub double %i.ll, %i.lm
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next257
  store double %i.ln, ptr %gep, align 8, !tbaa !14
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 2 ; 2 uses
  %i.lo = icmp samesign ult i64 %indvars.iv.next259, %i.lc
  br i1 %i.lo, label %bb.m, label %._crit_edge244, !llvm.loop !72

._crit_edge244:                                   ; preds = %bb.m
  %i.lp = shl i32 %.0200249, 1                    ; 2 uses
  br i1 %i.hu, label %.lr.ph247.preheader, label %._crit_edge252.loopexit

.lr.ph247.preheader:                              ; preds = %._crit_edge244
  %i.lq = zext nneg i32 %.0199250 to i64          ; 6 uses
  %invariant.gep284 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.lq ; 7 uses
  %invariant.gep286 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.lq ; 4 uses
  %i.lr = add nsw i64 %.pre-phi270275, -1         ; 4 uses
  %min.iters.check392 = icmp ult i64 %i.lr, 10
  br i1 %min.iters.check392, label %.lr.ph247.preheader407, label %vector.memcheck362

vector.memcheck362:                               ; preds = %.lr.ph247.preheader
  %i.ls = shl nuw nsw i64 %.pre-phi270275, 3      ; 4 uses
  %scevgep363 = getelementptr i8, ptr %2, i64 %i.ls ; 3 uses
  %i.lt = shl nuw nsw i64 %i.lc, 3                ; 3 uses
  %i.lu = sub nsw i64 %i.lt, %i.ls
  %scevgep365 = getelementptr i8, ptr %scevgep364, i64 %i.lu ; 3 uses
  %i.lv = shl nuw nsw i64 %i.lc, 4                ; 2 uses
  %i.lw = sub nsw i64 %i.lv, %i.ls
  %scevgep367 = getelementptr i8, ptr %scevgep366, i64 %i.lw ; 2 uses
  %scevgep368 = getelementptr i8, ptr %2, i64 %i.lv ; 2 uses
  %scevgep370 = getelementptr i8, ptr %scevgep369, i64 %i.lt ; 2 uses
  %i.lx = getelementptr i8, ptr %2, i64 %i.ls
  %scevgep371 = getelementptr i8, ptr %i.lx, i64 %i.lt ; 2 uses
  %bound0372 = icmp ult ptr %i.he, %invariant.gep284
  %bound1373 = icmp ult ptr %scevgep365, %scevgep363
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
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
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
  %i.q = sext i32 %i.b to i64
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
  %3 = zext nneg i32 %i.b to i64                  ; 7 uses
  %i.au = zext nneg i32 %i.as to i64              ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %invariant.gep711 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.av = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv703 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next704, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0695 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cy, %.lr.ph ]
  %.0684694 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.ct, %.lr.ph ]
  %i.ax = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph.preheader ], [ %i.ba, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ba = load <2 x double>, ptr %i.ay, align 8, !tbaa !14 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bd = add nuw nsw i64 %indvars.iv703, %3      ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, %3               ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv703 ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.be ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 16     ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.be ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16     ; 2 uses
  %i.bl = getelementptr i8, ptr %gep, i64 16      ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bf, align 8, !tbaa !14 ; 2 uses
  %i.bn = load <2 x double>, ptr %i.bg, align 8, !tbaa !14 ; 2 uses
  %i.bo = fadd <2 x double> %i.bm, %i.bn          ; 2 uses
  %i.bp = load <2 x double>, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %i.bq = load <2 x double>, ptr %gep, align 8, !tbaa !14 ; 2 uses
  %i.br = fadd <2 x double> %i.bp, %i.bq          ; 2 uses
  %i.bs = fadd <2 x double> %i.bo, %i.br
  %i.bt = load <2 x double>, ptr %i.bh, align 8, !tbaa !14 ; 2 uses
  %i.bu = load <2 x double>, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bv = fadd <2 x double> %i.bt, %i.bu          ; 2 uses
  %i.bw = load <2 x double>, ptr %i.bk, align 8, !tbaa !14 ; 2 uses
  %i.bx = load <2 x double>, ptr %i.bl, align 8, !tbaa !14 ; 2 uses
  %i.by = fadd <2 x double> %i.bw, %i.bx          ; 2 uses
  %i.bz = fadd <2 x double> %i.bv, %i.by
  %i.ca = fsub <2 x double> %i.bo, %i.br
  %i.cb = fsub <2 x double> %i.bv, %i.by
  %i.cc = sub nuw nsw i64 %3, %indvars.iv703      ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, %3               ; 2 uses
  %i.ce = add nuw nsw i64 %i.cd, %3               ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cc ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ce ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cf, i64 -16    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 -16    ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cd ; 3 uses
  %gep712 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep711, i64 %i.ce ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -16    ; 2 uses
  %i.cl = getelementptr i8, ptr %gep712, i64 -16  ; 2 uses
  %i.cm = fsub <2 x double> %i.bm, %i.bn          ; 2 uses
  %i.cn = fsub <2 x double> %i.bp, %i.bq
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cp = fadd <2 x double> %i.cm, %i.co          ; 2 uses
  %i.cq = fsub <2 x double> %i.cm, %i.co          ; 4 uses
  %i.cr = shufflevector <2 x double> %i.cp, <2 x double> %i.cq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cs = load double, ptr %i.bc, align 8, !tbaa !14 ; 3 uses
  %i.ct = load double, ptr %i.bb, align 8, !tbaa !14 ; 4 uses
  %i.cu = fsub double %.0695, %i.cs
  %i.cv = fadd double %.0684694, %i.ct
  %i.cw = fmul double %i.ar, %i.cu
  %i.cx = fmul double %i.ar, %i.cv
  %i.cy = fneg double %i.cs                       ; 3 uses
  store <2 x double> %i.bs, ptr %i.bf, align 8, !tbaa !14
  store <2 x double> %i.bz, ptr %i.bh, align 8, !tbaa !14
  store <2 x double> %i.ca, ptr %i.bj, align 8, !tbaa !14
  store <2 x double> %i.cb, ptr %i.bk, align 8, !tbaa !14
  %i.cz = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = fneg <2 x double> %i.cr
  %i.dc = shufflevector <2 x double> %i.cq, <2 x double> %i.db, <2 x i32> <i32 1, i32 2>
  %i.dd = fmul <2 x double> %i.da, %i.dc
  %i.de = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cr, <2 x double> %i.dd)
  %4 = fsub <2 x double> %i.bt, %i.bu             ; 2 uses
  %5 = fsub <2 x double> %i.bw, %i.bx
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dh = fadd <2 x double> %4, %6                ; 3 uses
  %7 = fsub <2 x double> %4, %6                   ; 4 uses
  %8 = shufflevector <2 x double> %i.dh, <2 x double> %7, <2 x i32> <i32 0, i32 3>
  %i.di = shufflevector <2 x double> %7, <2 x double> %i.dh, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dj = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dk = fneg <2 x double> %i.di
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> %7, <2 x i32> <i32 1, i32 2>
  %i.dm = fmul <2 x double> %i.dj, %i.dl
  %i.dn = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.di, <2 x double> %i.dm)
  store <2 x double> %i.do, ptr %i.bi, align 8, !tbaa !14
  store <2 x double> %i.dg, ptr %gep, align 8, !tbaa !14
  %9 = shufflevector <2 x double> %7, <2 x double> %i.dh, <2 x i32> <i32 1, i32 2>
  %10 = insertelement <2 x double> poison, double %i.cy, i64 0 ; 2 uses
  %11 = insertelement <2 x double> %10, double %i.cs, i64 1
  %12 = fmul <2 x double> %9, %11
  %13 = insertelement <2 x double> poison, double %i.ct, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> %8, <2 x double> %12)
  store <2 x double> %15, ptr %i.bl, align 8, !tbaa !14
  %16 = fadd <2 x double> %i.ax, %i.ba
  %i.dp = fmul <2 x double> %i.aw, %16            ; 2 uses
  %17 = shufflevector <2 x double> %i.cq, <2 x double> %i.cp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %18 = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %19 = fneg <2 x double> %17
  %i.dq = shufflevector <2 x double> %19, <2 x double> %i.cq, <2 x i32> <i32 1, i32 2>
  %i.dr = fmul <2 x double> %18, %i.dq
  %i.ds = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %17, <2 x double> %i.dr)
  store <2 x double> %i.dt, ptr %i.bg, align 8, !tbaa !14
  %i.du = load <2 x double>, ptr %i.ch, align 8, !tbaa !14 ; 2 uses
  %i.dv = load <2 x double>, ptr %i.ci, align 8, !tbaa !14 ; 2 uses
  %i.dw = fadd <2 x double> %i.du, %i.dv          ; 2 uses
  %i.dx = load <2 x double>, ptr %i.ck, align 8, !tbaa !14 ; 2 uses
  %i.dy = load <2 x double>, ptr %i.cl, align 8, !tbaa !14 ; 2 uses
  %i.dz = fadd <2 x double> %i.dx, %i.dy          ; 2 uses
  %i.ea = load <2 x double>, ptr %i.cf, align 8, !tbaa !14 ; 2 uses
  %i.eb = load <2 x double>, ptr %i.cg, align 8, !tbaa !14 ; 2 uses
  %i.ec = fadd <2 x double> %i.ea, %i.eb          ; 2 uses
  %i.ed = fsub <2 x double> %i.ea, %i.eb          ; 2 uses
  %i.ee = load <2 x double>, ptr %i.cj, align 8, !tbaa !14 ; 2 uses
  %i.ef = load <2 x double>, ptr %gep712, align 8, !tbaa !14 ; 2 uses
  %i.eg = fadd <2 x double> %i.ee, %i.ef          ; 2 uses
  %i.eh = fsub <2 x double> %i.ee, %i.ef
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ej = fadd <2 x double> %i.ec, %i.eg
  store <2 x double> %i.ej, ptr %i.cf, align 8, !tbaa !14
  %i.ek = fadd <2 x double> %i.dw, %i.dz
  store <2 x double> %i.ek, ptr %i.ch, align 8, !tbaa !14
  %i.el = fsub <2 x double> %i.ec, %i.eg
  store <2 x double> %i.el, ptr %i.cj, align 8, !tbaa !14
  %i.em = fsub <2 x double> %i.dw, %i.dz
  store <2 x double> %i.em, ptr %i.ck, align 8, !tbaa !14
  %i.en = fsub <2 x double> %i.ed, %i.ei          ; 4 uses
  %i.eo = fadd <2 x double> %i.ed, %i.ei          ; 2 uses
  %i.ep = shufflevector <2 x double> %i.en, <2 x double> %i.eo, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.eq = fneg <2 x double> %i.ep
  %i.er = shufflevector <2 x double> %i.en, <2 x double> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.es = fmul <2 x double> %i.ds, %i.er
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.ep, <2 x double> %i.es)
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.eu, ptr %i.cg, align 8, !tbaa !14
  %i.ev = shufflevector <2 x double> %i.eo, <2 x double> %i.en, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ew = fneg <2 x double> %i.ev
  %i.ex = shufflevector <2 x double> %i.en, <2 x double> %i.ew, <2 x i32> <i32 1, i32 2>
  %i.ey = fmul <2 x double> %i.df, %i.ex
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.ev, <2 x double> %i.ey)
  store <2 x double> %i.ez, ptr %gep712, align 8, !tbaa !14
  %i.fa = fsub <2 x double> %i.du, %i.dv          ; 2 uses
  %i.fb = fsub <2 x double> %i.dx, %i.dy
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fd = fsub <2 x double> %i.fa, %i.fc          ; 4 uses
  %i.fe = fadd <2 x double> %i.fa, %i.fc          ; 2 uses
  %i.ff = shufflevector <2 x double> %i.fd, <2 x double> %i.fe, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fg = fneg <2 x double> %i.ff
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> %i.fd, <2 x i32> <i32 1, i32 2>
  %i.fi = fmul <2 x double> %i.dn, %i.fh
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.ff, <2 x double> %i.fi)
  store <2 x double> %i.fj, ptr %i.ci, align 8, !tbaa !14
  %i.fk = shufflevector <2 x double> %i.fe, <2 x double> %i.fd, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fl = fneg <2 x double> %i.fk
  %i.fm = shufflevector <2 x double> %i.fd, <2 x double> %i.fl, <2 x i32> <i32 1, i32 2>
  %i.fn = fmul <2 x double> %14, %i.fm
  %i.fo = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fk, <2 x double> %i.fn)
  store <2 x double> %i.fp, ptr %i.cl, align 8, !tbaa !14
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 4 ; 2 uses
  %i.fq = icmp samesign ult i64 %indvars.iv.next704, %i.au
  br i1 %i.fq, label %.lr.ph, label %._crit_edge, !llvm.loop !97

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.au, %.lr.ph ]
  %.0684.lcssa = phi double [ 1.000000e+00, %.._crit_edge_crit_edge ], [ %i.ct, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %i.cy, %.lr.ph ]
  %i.fr = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.._crit_edge_crit_edge ], [ %i.ba, %.lr.ph ]
  %i.fs = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = fadd <2 x double> %i.ft, %i.fr
  %i.fv = fsub double %.0684.lcssa, %i.an
  %i.fw = fsub double %.0.lcssa, %i.an
  %i.fx = mul nsw i32 %i.a, 3
  %i.fy = mul nsw i32 %i.a, 5
  %i.fz = mul nsw i32 %i.a, 7
  %i.ga = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !14 ; 2 uses
  %i.gc = sext i32 %i.fy to i64
  %i.gd = getelementptr [8 x i8], ptr %1, i64 %i.gc ; 5 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 -16    ; 2 uses
  %i.gf = sext i32 %i.a to i64
  %i.gg = getelementptr [8 x i8], ptr %1, i64 %i.gf ; 6 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -8     ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !14 ; 2 uses
  %i.gj = sext i32 %i.fx to i64
  %i.gk = getelementptr [8 x i8], ptr %1, i64 %i.gj ; 7 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 -16    ; 2 uses
  %i.gm = sext i32 %i.fz to i64
  %i.gn = getelementptr [8 x i8], ptr %1, i64 %i.gm ; 5 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 -16    ; 2 uses
  %i.gp = getelementptr i8, ptr %i.gk, i64 -8
  %i.gq = load <2 x double>, ptr %i.ge, align 8, !tbaa !14 ; 3 uses
  %i.gr = extractelement <2 x double> %i.gq, i64 0
  %i.gs = fadd double %i.gb, %i.gr                ; 2 uses
  %i.gt = extractelement <2 x double> %i.gq, i64 1
  %i.gu = fadd double %i.gi, %i.gt                ; 2 uses
  %i.gv = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.gi, i64 1
  %i.gx = fsub <2 x double> %i.gw, %i.gq          ; 2 uses
  %i.gy = load <2 x double>, ptr %i.gl, align 8, !tbaa !14 ; 3 uses
  %i.gz = load <2 x double>, ptr %i.go, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.gy, %i.gz
  %i.ha = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop717 = fadd <2 x double> %i.gy, %i.gz
  %i.hb = extractelement <2 x double> %foldExtExtBinop717, i64 1 ; 2 uses
  %i.hc = fsub <2 x double> %i.gy, %i.gz
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.he = fadd double %i.gs, %i.ha
  store double %i.he, ptr %i.ga, align 8, !tbaa !14
  %i.hf = fadd double %i.gu, %i.hb
  store double %i.hf, ptr %i.gh, align 8, !tbaa !14
  %i.hg = fsub double %i.gs, %i.ha
  store double %i.hg, ptr %i.gl, align 8, !tbaa !14
  %i.hh = fsub double %i.gu, %i.hb
  store double %i.hh, ptr %i.gp, align 8, !tbaa !14
  %i.hi = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = fmul <2 x double> %i.hj, %i.fu          ; 2 uses
  %i.hl = fsub <2 x double> %i.gx, %i.hd          ; 4 uses
  %i.hm = fadd <2 x double> %i.gx, %i.hd          ; 3 uses
  %i.hn = shufflevector <2 x double> %i.hl, <2 x double> %i.hm, <2 x i32> <i32 0, i32 3>
  %i.ho = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.hp = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = shufflevector <2 x double> %i.hm, <2 x double> %i.hl, <2 x i32> <i32 0, i32 3>
  %i.hr = fneg <2 x double> %i.hm
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> %i.hl, <2 x i32> <i32 0, i32 2>
  %i.hu = fmul <2 x double> %i.ho, %i.ht
  %i.hv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.hn, <2 x double> %i.hu)
  store <2 x double> %i.hv, ptr %i.ge, align 8, !tbaa !14
  %i.hw = shufflevector <2 x double> %i.hl, <2 x double> %i.hs, <2 x i32> <i32 1, i32 3>
  %i.hx = getelementptr i8, ptr %i.gg, i64 8      ; 2 uses
  %i.hy = getelementptr i8, ptr %i.gd, i64 8      ; 2 uses
  %i.hz = load double, ptr %i.gk, align 8, !tbaa !14 ; 2 uses
  %i.ia = load double, ptr %i.gn, align 8, !tbaa !14 ; 2 uses
  %i.ib = fadd double %i.hz, %i.ia                ; 2 uses
  %i.ic = getelementptr i8, ptr %i.gk, i64 8      ; 2 uses
  %i.id = load double, ptr %i.ic, align 8, !tbaa !14 ; 2 uses
  %i.ie = getelementptr i8, ptr %i.gn, i64 8      ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !14 ; 2 uses
  %i.ig = fadd double %i.id, %i.if                ; 2 uses
  %i.ih = fsub double %i.hz, %i.ia                ; 2 uses
  %i.ii = fsub double %i.id, %i.if                ; 2 uses
  %i.ij = fneg double %i.an                       ; 2 uses
  %i.ik = getelementptr i8, ptr %i.gg, i64 16     ; 2 uses
  %i.il = getelementptr i8, ptr %i.gd, i64 16     ; 2 uses
  %i.im = getelementptr i8, ptr %i.gg, i64 24
  %i.in = getelementptr i8, ptr %i.gk, i64 16     ; 2 uses
  %i.io = getelementptr i8, ptr %i.gn, i64 16     ; 2 uses
  %i.ip = getelementptr i8, ptr %i.gk, i64 24
  %i.iq = fmul double %i.ar, %i.fv
  %i.ir = fmul double %i.ar, %i.fw
  %i.is = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.it = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iu = fmul <2 x double> %i.it, %i.hw
  %i.iv = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.iw = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> %i.hq, <2 x double> %i.iu)
  store <2 x double> %i.ix, ptr %i.go, align 8, !tbaa !14
  %i.iy = load double, ptr %i.gg, align 8, !tbaa !14 ; 2 uses
  %i.iz = load double, ptr %i.gd, align 8, !tbaa !14 ; 2 uses
  %i.ja = fadd double %i.iy, %i.iz                ; 2 uses
  %i.jb = load double, ptr %i.hx, align 8, !tbaa !14 ; 2 uses
  %i.jc = load double, ptr %i.hy, align 8, !tbaa !14 ; 2 uses
  %i.jd = fadd double %i.jb, %i.jc                ; 2 uses
  %i.je = fsub double %i.iy, %i.iz                ; 2 uses
  %i.jf = fsub double %i.jb, %i.jc                ; 2 uses
  %i.jg = fadd double %i.ja, %i.ib
  store double %i.jg, ptr %i.gg, align 8, !tbaa !14
  %i.jh = fadd double %i.jd, %i.ig
  store double %i.jh, ptr %i.hx, align 8, !tbaa !14
  %i.ji = fsub double %i.ja, %i.ib
  store double %i.ji, ptr %i.gk, align 8, !tbaa !14
  %i.jj = fsub double %i.jd, %i.ig
  store double %i.jj, ptr %i.ic, align 8, !tbaa !14
  %i.jk = fsub double %i.je, %i.ii                ; 2 uses
  %i.jl = fadd double %i.jf, %i.ih                ; 2 uses
  %i.jm = fsub double %i.jk, %i.jl
  %i.jn = fmul double %i.an, %i.jm
  store double %i.jn, ptr %i.gd, align 8, !tbaa !14
  %i.jo = fadd double %i.jl, %i.jk
  %i.jp = fmul double %i.an, %i.jo
  store double %i.jp, ptr %i.hy, align 8, !tbaa !14
  %i.jq = fadd double %i.je, %i.ii                ; 2 uses
  %i.jr = fsub double %i.jf, %i.ih                ; 2 uses
  %i.js = fadd double %i.jr, %i.jq
  %i.jt = fmul double %i.js, %i.ij
  store double %i.jt, ptr %i.gn, align 8, !tbaa !14
  %i.ju = fsub double %i.jr, %i.jq
  %i.jv = fmul double %i.ju, %i.ij
  store double %i.jv, ptr %i.ie, align 8, !tbaa !14
  %i.jw = load <2 x double>, ptr %i.ik, align 8, !tbaa !14 ; 3 uses
  %i.jx = load <2 x double>, ptr %i.il, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop719 = fadd <2 x double> %i.jw, %i.jx ; 2 uses
  %foldExtExtBinop721 = fadd <2 x double> %i.jw, %i.jx
  %i.jy = extractelement <2 x double> %foldExtExtBinop721, i64 1 ; 2 uses
  %i.jz = fsub <2 x double> %i.jw, %i.jx          ; 2 uses
  %i.ka = load <2 x double>, ptr %i.in, align 8, !tbaa !14 ; 3 uses
  %i.kb = load <2 x double>, ptr %i.io, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop723 = fadd <2 x double> %i.ka, %i.kb ; 2 uses
  %foldExtExtBinop725 = fadd <2 x double> %i.ka, %i.kb
  %i.kc = extractelement <2 x double> %foldExtExtBinop725, i64 1 ; 2 uses
  %i.kd = fsub <2 x double> %i.ka, %i.kb
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %foldExtExtBinop727 = fadd <2 x double> %foldExtExtBinop719, %foldExtExtBinop723
  %i.kf = extractelement <2 x double> %foldExtExtBinop727, i64 0
  store double %i.kf, ptr %i.ik, align 8, !tbaa !14
  %i.kg = fadd double %i.jy, %i.kc
  store double %i.kg, ptr %i.im, align 8, !tbaa !14
  %foldExtExtBinop729 = fsub <2 x double> %foldExtExtBinop719, %foldExtExtBinop723
  %i.kh = extractelement <2 x double> %foldExtExtBinop729, i64 0
  store double %i.kh, ptr %i.in, align 8, !tbaa !14
  %i.ki = fsub double %i.jy, %i.kc
  store double %i.ki, ptr %i.ip, align 8, !tbaa !14
  %i.kj = fsub <2 x double> %i.jz, %i.ke          ; 4 uses
  %i.kk = fadd <2 x double> %i.jz, %i.ke          ; 3 uses
  %i.kl = shufflevector <2 x double> %i.kj, <2 x double> %i.kk, <2 x i32> <i32 0, i32 3>
  %i.km = shufflevector <2 x double> %i.kk, <2 x double> %i.kj, <2 x i32> <i32 0, i32 3>
  %i.kn = fneg <2 x double> %i.kk
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kp = shufflevector <2 x double> %i.ko, <2 x double> %i.kj, <2 x i32> <i32 0, i32 2>
  %i.kq = fmul <2 x double> %i.hp, %i.kp
  %i.kr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> %i.kl, <2 x double> %i.kq)
  store <2 x double> %i.kr, ptr %i.il, align 8, !tbaa !14
  %i.ks = shufflevector <2 x double> %i.kj, <2 x double> %i.ko, <2 x i32> <i32 1, i32 3>
  %i.kt = fmul <2 x double> %i.iw, %i.ks
  %i.ku = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.it, <2 x double> %i.km, <2 x double> %i.kt)
  store <2 x double> %i.ku, ptr %i.io, align 8, !tbaa !14
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
end_hunk_0
begin_hunk_1_@bitrv216:bb.a
  %i.q = load <2 x double>, ptr %i.h, align 8, !tbaa !14
  %i.r = load <2 x double>, ptr %i.l, align 8, !tbaa !14
  %i.s = load <2 x double>, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.m, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.s, ptr %i.g, align 8, !tbaa !14
  %i.t = load <2 x double>, ptr %i.e, align 8, !tbaa !14
  store <2 x double> %i.q, ptr %i.e, align 8, !tbaa !14
  store <2 x double> %i.t, ptr %i.h, align 8, !tbaa !14
  %i.u = load <2 x double>, ptr %i.k, align 8, !tbaa !14
  %i.v = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  store <2 x double> %i.o, ptr %i.c, align 8, !tbaa !14
  store <2 x double> %i.v, ptr %i.j, align 8, !tbaa !14
  %i.w = load <2 x double>, ptr %i.i, align 8, !tbaa !14
  store <2 x double> %i.u, ptr %i.i, align 8, !tbaa !14
  store <2 x double> %i.w, ptr %i.k, align 8, !tbaa !14
  %i.x = load <2 x double>, ptr %i.f, align 8, !tbaa !14
  store <2 x double> %i.r, ptr %i.f, align 8, !tbaa !14
  store <2 x double> %i.x, ptr %i.l, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf081(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load <2 x double>, ptr %0, align 8, !tbaa !14 ; 3 uses
  %i.o = load <2 x double>, ptr %i.c, align 8, !tbaa !14 ; 3 uses
  %i.p = fadd <2 x double> %i.n, %i.o             ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.n, %i.o
  %i.q = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop126 = fsub <2 x double> %i.n, %i.o
  %i.r = extractelement <2 x double> %foldExtExtBinop126, i64 1 ; 2 uses
  %i.s = load <2 x double>, ptr %i.e, align 8, !tbaa !14 ; 3 uses
  %i.t = load <2 x double>, ptr %i.f, align 8, !tbaa !14 ; 3 uses
  %i.u = fadd <2 x double> %i.s, %i.t             ; 2 uses
  %foldExtExtBinop128 = fsub <2 x double> %i.s, %i.t
  %i.v = extractelement <2 x double> %foldExtExtBinop128, i64 0 ; 2 uses
  %foldExtExtBinop130 = fsub <2 x double> %i.s, %i.t
  %i.w = extractelement <2 x double> %foldExtExtBinop130, i64 1 ; 2 uses
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
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
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
  %i.r = sext i32 %i.b to i64
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
  %3 = zext nneg i32 %i.b to i64                  ; 7 uses
  %i.av = zext nneg i32 %i.at to i64              ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %invariant.gep711 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.aw = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv703 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next704, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0695 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.dh, %.lr.ph ]
  %.0684694 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.dc, %.lr.ph ]
  %i.ay = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bb = load <2 x double>, ptr %i.az, align 8, !tbaa !14 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.be = add nuw nsw i64 %indvars.iv703, %3      ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, %3               ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv703 ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bf ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bh, i64 16     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bh, i64 24
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.be ; 5 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bf ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = getelementptr i8, ptr %i.bo, i64 16     ; 2 uses
  %i.br = getelementptr i8, ptr %gep, i64 16      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bo, i64 24
  %i.bt = sub nuw nsw i64 %3, %indvars.iv703      ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, %3               ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, %3               ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bt ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 5 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 8      ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bx, i64 8
  %i.ca = getelementptr i8, ptr %i.bw, i64 -16    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bx, i64 -16    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bw, i64 -8     ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bx, i64 -8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bu ; 5 uses
  %gep712 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep711, i64 %i.bv ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = getelementptr i8, ptr %i.ce, i64 -16    ; 2 uses
  %i.ch = getelementptr i8, ptr %gep712, i64 -16  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ce, i64 -8
  %i.cj = load <2 x double>, ptr %i.bg, align 8, !tbaa !14 ; 3 uses
  %i.ck = load double, ptr %i.bi, align 8, !tbaa !14
  %i.cl = load <2 x double>, ptr %i.bh, align 8, !tbaa !14 ; 3 uses
  %i.cm = load double, ptr %i.bj, align 8, !tbaa !14
  %foldExtExtBinop = fadd <2 x double> %i.cj, %i.cl ; 2 uses
  %i.cn = fneg double %i.ck
  %i.co = fsub double %i.cn, %i.cm                ; 2 uses
  %i.cp = shufflevector <2 x double> %i.cl, <2 x double> %i.cj, <2 x i32> <i32 1, i32 2>
  %i.cq = shufflevector <2 x double> %i.cj, <2 x double> %i.cl, <2 x i32> <i32 1, i32 2>
  %i.cr = fsub <2 x double> %i.cp, %i.cq          ; 2 uses
  %i.cs = load <2 x double>, ptr %i.bo, align 8, !tbaa !14 ; 3 uses
  %i.ct = load <2 x double>, ptr %gep, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop717 = fadd <2 x double> %i.cs, %i.ct ; 2 uses
  %foldExtExtBinop719 = fadd <2 x double> %i.cs, %i.ct
  %i.cu = extractelement <2 x double> %foldExtExtBinop719, i64 1 ; 2 uses
  %i.cv = fsub <2 x double> %i.cs, %i.ct          ; 2 uses
  %foldExtExtBinop721 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop717
  %i.cw = extractelement <2 x double> %foldExtExtBinop721, i64 0
  %i.cx = fsub double %i.co, %i.cu
  %foldExtExtBinop723 = fsub <2 x double> %foldExtExtBinop, %foldExtExtBinop717
  %i.cy = extractelement <2 x double> %foldExtExtBinop723, i64 0
  %i.cz = fadd double %i.co, %i.cu
  %i.da = fsub <2 x double> %i.cr, %i.cv          ; 3 uses
  %i.db = load double, ptr %i.bd, align 8, !tbaa !14 ; 3 uses
  %i.dc = load double, ptr %i.bc, align 8, !tbaa !14 ; 4 uses
  %i.dd = fsub double %.0695, %i.db
  %i.de = fadd double %.0684694, %i.dc
  %i.df = fmul double %i.as, %i.dd
  %i.dg = fmul double %i.as, %i.de
  %i.dh = fneg double %i.db                       ; 3 uses
  %i.di = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = fneg <2 x double> %i.da
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> %i.da, <2 x i32> <i32 1, i32 2>
  %i.dm = fmul <2 x double> %i.dj, %i.dl
  %i.dn = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.da, <2 x double> %i.dm)
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = load <2 x double>, ptr %i.bk, align 8, !tbaa !14 ; 3 uses
  %i.ds = load double, ptr %i.bm, align 8, !tbaa !14
  %i.dt = load <2 x double>, ptr %i.bl, align 8, !tbaa !14 ; 3 uses
  %i.du = load double, ptr %i.bn, align 8, !tbaa !14
  %foldExtExtBinop725 = fadd <2 x double> %i.dr, %i.dt ; 2 uses
  %i.dv = fneg double %i.ds
  %i.dw = fsub double %i.dv, %i.du                ; 2 uses
  %i.dx = shufflevector <2 x double> %i.dt, <2 x double> %i.dr, <2 x i32> <i32 1, i32 2>
  %i.dy = shufflevector <2 x double> %i.dr, <2 x double> %i.dt, <2 x i32> <i32 1, i32 2>
  %i.dz = fsub <2 x double> %i.dx, %i.dy          ; 2 uses
  %i.ea = load <2 x double>, ptr %i.bq, align 8, !tbaa !14 ; 3 uses
  %i.eb = load <2 x double>, ptr %i.br, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop727 = fadd <2 x double> %i.ea, %i.eb ; 2 uses
  %foldExtExtBinop729 = fadd <2 x double> %i.ea, %i.eb
  %i.ec = extractelement <2 x double> %foldExtExtBinop729, i64 1 ; 2 uses
  %i.ed = fsub <2 x double> %i.ea, %i.eb          ; 2 uses
  %foldExtExtBinop731 = fadd <2 x double> %foldExtExtBinop725, %foldExtExtBinop727
  %i.ee = extractelement <2 x double> %foldExtExtBinop731, i64 0
  %i.ef = fsub double %i.dw, %i.ec
  %foldExtExtBinop733 = fsub <2 x double> %foldExtExtBinop725, %foldExtExtBinop727
  %i.eg = extractelement <2 x double> %foldExtExtBinop733, i64 0
  %i.eh = fadd double %i.dw, %i.ec
  %i.ei = fsub <2 x double> %i.dz, %i.ed          ; 2 uses
  store double %i.cw, ptr %i.bg, align 8, !tbaa !14
  store double %i.cx, ptr %i.bi, align 8, !tbaa !14
  store double %i.ee, ptr %i.bk, align 8, !tbaa !14
  store double %i.ef, ptr %i.bm, align 8, !tbaa !14
  store double %i.cy, ptr %i.bo, align 8, !tbaa !14
  store double %i.cz, ptr %i.bp, align 8, !tbaa !14
  store double %i.eg, ptr %i.bq, align 8, !tbaa !14
  store double %i.eh, ptr %i.bs, align 8, !tbaa !14
  %i.ej = fadd <2 x double> %i.dz, %i.ed          ; 3 uses
  %i.ek = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.el = fneg <2 x double> %i.ej
  %i.em = shufflevector <2 x double> %i.ej, <2 x double> %i.el, <2 x i32> <i32 1, i32 2>
  %i.en = fmul <2 x double> %i.ek, %i.em
  %i.eo = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ej, <2 x double> %i.en)
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.eq, ptr %i.bl, align 8, !tbaa !14
  store <2 x double> %i.dq, ptr %gep, align 8, !tbaa !14
  %i.er = insertelement <2 x double> poison, double %i.dh, i64 0 ; 2 uses
  %i.es = insertelement <2 x double> %i.er, double %i.db, i64 1
  %i.et = fmul <2 x double> %i.ei, %i.es
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ev = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ei, <2 x double> %i.eu)
  %4 = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %4, ptr %i.br, align 8, !tbaa !14
  %5 = fadd <2 x double> %i.ay, %i.bb
  %6 = fmul <2 x double> %i.ax, %5                ; 2 uses
  %i.ey = fadd <2 x double> %i.cr, %i.cv          ; 3 uses
  %i.ez = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fa = fneg <2 x double> %i.ey
  %i.fb = shufflevector <2 x double> %i.ey, <2 x double> %i.fa, <2 x i32> <i32 1, i32 2>
  %i.fc = fmul <2 x double> %i.ez, %i.fb
  %i.fd = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.ey, <2 x double> %i.fc)
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ff, ptr %i.bh, align 8, !tbaa !14
  %i.fg = load <2 x double>, ptr %i.bw, align 8, !tbaa !14 ; 3 uses
  %i.fh = load double, ptr %i.by, align 8, !tbaa !14
  %i.fi = load <2 x double>, ptr %i.bx, align 8, !tbaa !14 ; 3 uses
  %i.fj = load double, ptr %i.bz, align 8, !tbaa !14
  %foldExtExtBinop735 = fadd <2 x double> %i.fg, %i.fi ; 2 uses
  %i.fk = fneg double %i.fh
  %i.fl = fsub double %i.fk, %i.fj                ; 2 uses
  %i.fm = shufflevector <2 x double> %i.fi, <2 x double> %i.fg, <2 x i32> <i32 1, i32 2>
  %i.fn = shufflevector <2 x double> %i.fg, <2 x double> %i.fi, <2 x i32> <i32 1, i32 2>
  %i.fo = fsub <2 x double> %i.fm, %i.fn          ; 2 uses
  %i.fp = load <2 x double>, ptr %i.ce, align 8, !tbaa !14 ; 3 uses
  %i.fq = load <2 x double>, ptr %gep712, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop737 = fadd <2 x double> %i.fp, %i.fq ; 2 uses
  %foldExtExtBinop739 = fadd <2 x double> %i.fp, %i.fq
  %i.fr = extractelement <2 x double> %foldExtExtBinop739, i64 1 ; 2 uses
  %i.fs = fsub <2 x double> %i.fp, %i.fq          ; 2 uses
  %foldExtExtBinop741 = fadd <2 x double> %foldExtExtBinop735, %foldExtExtBinop737
  %i.ft = extractelement <2 x double> %foldExtExtBinop741, i64 0
  %i.fu = fsub double %i.fl, %i.fr
  %foldExtExtBinop743 = fsub <2 x double> %foldExtExtBinop735, %foldExtExtBinop737
  %i.fv = extractelement <2 x double> %foldExtExtBinop743, i64 0
  %i.fw = fadd double %i.fl, %i.fr
  %i.fx = fadd <2 x double> %i.fo, %i.fs          ; 3 uses
  %i.fy = fneg <2 x double> %i.fx
  %i.fz = shufflevector <2 x double> %i.fx, <2 x double> %i.fy, <2 x i32> <i32 1, i32 2>
  %i.ga = fmul <2 x double> %i.fd, %i.fz
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> %i.fx, <2 x double> %i.ga)
  %i.gc = fsub <2 x double> %i.fo, %i.fs          ; 3 uses
  %i.gd = fneg <2 x double> %i.gc
  %i.ge = shufflevector <2 x double> %i.gd, <2 x double> %i.gc, <2 x i32> <i32 1, i32 2>
  %i.gf = fmul <2 x double> %i.do, %i.ge
  %i.gg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.gc, <2 x double> %i.gf)
  %i.gh = load <2 x double>, ptr %i.ca, align 8, !tbaa !14 ; 3 uses
  %i.gi = load double, ptr %i.cc, align 8, !tbaa !14
  %i.gj = load <2 x double>, ptr %i.cb, align 8, !tbaa !14 ; 3 uses
  %i.gk = load double, ptr %i.cd, align 8, !tbaa !14
  %foldExtExtBinop745 = fadd <2 x double> %i.gh, %i.gj ; 2 uses
  %i.gl = fneg double %i.gi
  %i.gm = fsub double %i.gl, %i.gk                ; 2 uses
  %i.gn = shufflevector <2 x double> %i.gj, <2 x double> %i.gh, <2 x i32> <i32 1, i32 2>
  %i.go = shufflevector <2 x double> %i.gh, <2 x double> %i.gj, <2 x i32> <i32 1, i32 2>
  %i.gp = fsub <2 x double> %i.gn, %i.go          ; 2 uses
  %i.gq = load <2 x double>, ptr %i.cg, align 8, !tbaa !14 ; 3 uses
  %i.gr = load <2 x double>, ptr %i.ch, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop747 = fadd <2 x double> %i.gq, %i.gr ; 2 uses
  %foldExtExtBinop749 = fadd <2 x double> %i.gq, %i.gr
  %i.gs = extractelement <2 x double> %foldExtExtBinop749, i64 1 ; 2 uses
  %i.gt = fsub <2 x double> %i.gq, %i.gr          ; 2 uses
  store double %i.ft, ptr %i.bw, align 8, !tbaa !14
  store double %i.fu, ptr %i.by, align 8, !tbaa !14
  %foldExtExtBinop751 = fadd <2 x double> %foldExtExtBinop745, %foldExtExtBinop747
  %i.gu = extractelement <2 x double> %foldExtExtBinop751, i64 0
  store double %i.gu, ptr %i.ca, align 8, !tbaa !14
  %i.gv = fsub double %i.gm, %i.gs
  store double %i.gv, ptr %i.cc, align 8, !tbaa !14
  store double %i.fv, ptr %i.ce, align 8, !tbaa !14
  store double %i.fw, ptr %i.cf, align 8, !tbaa !14
  %foldExtExtBinop753 = fsub <2 x double> %foldExtExtBinop745, %foldExtExtBinop747
  %i.gw = extractelement <2 x double> %foldExtExtBinop753, i64 0
  store double %i.gw, ptr %i.cg, align 8, !tbaa !14
  %i.gx = fadd double %i.gm, %i.gs
  store double %i.gx, ptr %i.ci, align 8, !tbaa !14
  %i.gy = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.gy, ptr %i.bx, align 8, !tbaa !14
  %i.gz = fadd <2 x double> %i.gp, %i.gt          ; 3 uses
  %i.ha = fneg <2 x double> %i.gz
  %i.hb = shufflevector <2 x double> %i.gz, <2 x double> %i.ha, <2 x i32> <i32 1, i32 2>
  %i.hc = fmul <2 x double> %i.eo, %i.hb
  %i.hd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.gz, <2 x double> %i.hc)
  %i.he = shufflevector <2 x double> %i.hd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.he, ptr %i.cb, align 8, !tbaa !14
  %i.hf = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hf, ptr %gep712, align 8, !tbaa !14
  %i.hg = fsub <2 x double> %i.gp, %i.gt          ; 3 uses
  %i.hh = fneg <2 x double> %i.hg
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> %i.hg, <2 x i32> <i32 1, i32 2>
  %i.hj = fmul <2 x double> %i.ew, %i.hi
  %i.hk = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.hg, <2 x double> %i.hj)
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hm, ptr %i.ch, align 8, !tbaa !14
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 4 ; 2 uses
  %i.hn = icmp samesign ult i64 %indvars.iv.next704, %i.av
  br i1 %i.hn, label %.lr.ph, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.av, %.lr.ph ]
  %.0684.lcssa = phi double [ 1.000000e+00, %.._crit_edge_crit_edge ], [ %i.dc, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %i.dh, %.lr.ph ]
  %i.ho = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.._crit_edge_crit_edge ], [ %i.bb, %.lr.ph ]
  %i.hp = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fadd <2 x double> %i.hq, %i.ho
  %i.hs = fsub double %.0684.lcssa, %i.ao
  %i.ht = fsub double %.0.lcssa, %i.ao
  %i.hu = mul nsw i32 %i.a, 3
  %i.hv = mul nsw i32 %i.a, 5
  %i.hw = mul nsw i32 %i.a, 7
  %i.hx = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !14 ; 2 uses
  %i.hz = sext i32 %i.hv to i64
  %i.ia = getelementptr [8 x i8], ptr %1, i64 %i.hz ; 7 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 -16    ; 2 uses
  %i.ic = sext i32 %i.a to i64
  %i.id = getelementptr [8 x i8], ptr %1, i64 %i.ic ; 6 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 -8     ; 2 uses
  %i.if = load double, ptr %i.ie, align 8, !tbaa !14 ; 2 uses
  %i.ig = fneg double %i.if
  %i.ih = getelementptr i8, ptr %i.ia, i64 -8
  %i.ii = sext i32 %i.hu to i64
  %i.ij = getelementptr [8 x i8], ptr %1, i64 %i.ii ; 7 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 -16    ; 2 uses
  %i.il = sext i32 %i.hw to i64
  %i.im = getelementptr [8 x i8], ptr %1, i64 %i.il ; 5 uses
  %i.in = getelementptr i8, ptr %i.im, i64 -16    ; 2 uses
  %i.io = getelementptr i8, ptr %i.ij, i64 -8
  %i.ip = load <2 x double>, ptr %i.ib, align 8, !tbaa !14 ; 2 uses
  %i.iq = load double, ptr %i.ih, align 8, !tbaa !14
  %i.ir = extractelement <2 x double> %i.ip, i64 0
  %i.is = fadd double %i.hy, %i.ir                ; 2 uses
  %i.it = fsub double %i.ig, %i.iq                ; 2 uses
  %i.iu = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.iv = insertelement <2 x double> %i.iu, double %i.hy, i64 1
  %i.iw = insertelement <2 x double> %i.iu, double %i.if, i64 0
  %i.ix = fsub <2 x double> %i.iv, %i.iw          ; 2 uses
  %i.iy = load <2 x double>, ptr %i.ik, align 8, !tbaa !14 ; 3 uses
  %i.iz = load <2 x double>, ptr %i.in, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop755 = fadd <2 x double> %i.iy, %i.iz
  %i.ja = extractelement <2 x double> %foldExtExtBinop755, i64 0 ; 2 uses
  %foldExtExtBinop757 = fadd <2 x double> %i.iy, %i.iz
  %i.jb = extractelement <2 x double> %foldExtExtBinop757, i64 1 ; 2 uses
  %i.jc = fsub <2 x double> %i.iy, %i.iz          ; 2 uses
  %i.jd = fadd double %i.is, %i.ja
  store double %i.jd, ptr %i.hx, align 8, !tbaa !14
  %i.je = fsub double %i.it, %i.jb
  store double %i.je, ptr %i.ie, align 8, !tbaa !14
  %i.jf = fsub double %i.is, %i.ja
  store double %i.jf, ptr %i.ik, align 8, !tbaa !14
  %i.jg = fadd double %i.it, %i.jb
  store double %i.jg, ptr %i.io, align 8, !tbaa !14
  %i.jh = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ji = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jj = fmul <2 x double> %i.ji, %i.hr          ; 2 uses
  %i.jk = fadd <2 x double> %i.ix, %i.jc          ; 2 uses
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jm = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jn = fneg <2 x double> %i.jl
  %i.jo = shufflevector <2 x double> %i.jk, <2 x double> %i.jn, <2 x i32> <i32 3, i32 1>
  %i.jp = fmul <2 x double> %i.jm, %i.jo
  %i.jq = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jq, <2 x double> %i.jl, <2 x double> %i.jp)
  store <2 x double> %i.jr, ptr %i.ib, align 8, !tbaa !14
  %i.js = fsub <2 x double> %i.ix, %i.jc          ; 3 uses
  %i.jt = fneg <2 x double> %i.js
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> %i.js, <2 x i32> <i32 1, i32 2>
  %i.jv = getelementptr i8, ptr %i.id, i64 8      ; 2 uses
  %i.jw = getelementptr i8, ptr %i.ia, i64 8      ; 2 uses
  %i.jx = load double, ptr %i.ij, align 8, !tbaa !14 ; 2 uses
  %i.jy = load double, ptr %i.im, align 8, !tbaa !14 ; 2 uses
  %i.jz = fadd double %i.jx, %i.jy                ; 2 uses
  %i.ka = getelementptr i8, ptr %i.ij, i64 8      ; 2 uses
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !14 ; 2 uses
  %i.kc = getelementptr i8, ptr %i.im, i64 8      ; 2 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !14 ; 2 uses
  %i.ke = fadd double %i.kb, %i.kd                ; 2 uses
  %i.kf = fsub double %i.jx, %i.jy                ; 2 uses
  %i.kg = fsub double %i.kb, %i.kd                ; 2 uses
  %i.kh = fneg double %i.ao                       ; 2 uses
  %i.ki = getelementptr i8, ptr %i.id, i64 16     ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ia, i64 16     ; 2 uses
  %i.kk = getelementptr i8, ptr %i.id, i64 24     ; 2 uses
  %i.kl = getelementptr i8, ptr %i.ia, i64 24
  %i.km = getelementptr i8, ptr %i.ij, i64 16     ; 2 uses
  %i.kn = getelementptr i8, ptr %i.im, i64 16     ; 2 uses
  %i.ko = getelementptr i8, ptr %i.ij, i64 24
  %i.kp = fmul double %i.as, %i.hs
  %i.kq = fmul double %i.as, %i.ht
  %i.kr = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kt = fmul <2 x double> %i.ks, %i.ju
  %i.ku = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kv = shufflevector <2 x double> %i.ku, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.js, <2 x double> %i.kt)
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.kx, ptr %i.in, align 8, !tbaa !14
  %i.ky = load double, ptr %i.id, align 8, !tbaa !14 ; 2 uses
  %i.kz = load double, ptr %i.ia, align 8, !tbaa !14 ; 2 uses
  %i.la = fadd double %i.ky, %i.kz                ; 2 uses
  %i.lb = load double, ptr %i.jv, align 8, !tbaa !14 ; 2 uses
  %i.lc = fneg double %i.lb
  %i.ld = load double, ptr %i.jw, align 8, !tbaa !14 ; 2 uses
  %i.le = fsub double %i.lc, %i.ld                ; 2 uses
  %i.lf = fsub double %i.ky, %i.kz                ; 2 uses
  %i.lg = fsub double %i.ld, %i.lb                ; 2 uses
  %i.lh = fadd double %i.la, %i.jz
  store double %i.lh, ptr %i.id, align 8, !tbaa !14
  %i.li = fsub double %i.le, %i.ke
  store double %i.li, ptr %i.jv, align 8, !tbaa !14
  %i.lj = fsub double %i.la, %i.jz
  store double %i.lj, ptr %i.ij, align 8, !tbaa !14
end_hunk_1
