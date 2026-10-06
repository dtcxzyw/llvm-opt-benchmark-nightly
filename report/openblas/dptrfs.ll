Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dptrfs?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dptrfs_:bb.a
  %i.ht = fcmp oge double %i.hs, 0.000000e+00
  %i.hu = fneg double %i.hs
  %i.hv = select i1 %i.ht, double %i.hs, double %i.hu
  %i.hw = fdiv double %i.hv, %i.hj
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink472.1 = phi double [ %i.hw, %bb.n ], [ %i.hr, %bb.m ] ; 2 uses
  %i.hx = fcmp oge double %i.hh, %.sink472.1
  %i.hy = select i1 %i.hx, double %i.hh, double %.sink472.1 ; 3 uses
  %indvars.iv.next399.1 = add nuw nsw i64 %indvars.iv398, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge367.loopexit.unr-lcssa, label %.lr.ph366, !llvm.loop !17

._crit_edge367.loopexit.unr-lcssa:                ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge367, label %.lr.ph366.epil.preheader

.lr.ph366.epil.preheader:                         ; preds = %._crit_edge367.loopexit.unr-lcssa, %.lr.ph366.preheader
  %indvars.iv398.epil.init = phi i64 [ 1, %.lr.ph366.preheader ], [ %indvars.iv.next399.1, %._crit_edge367.loopexit.unr-lcssa ] ; 3 uses
  %.0334364.epil.init = phi double [ 0.000000e+00, %.lr.ph366.preheader ], [ %i.hy, %._crit_edge367.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod547 = trunc i64 %i.gp to i1
  tail call void @llvm.assume(i1 %lcmp.mod547)
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv398.epil.init
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !28 ; 3 uses
  %i.ib = fcmp ogt double %i.ia, %i.ad
  br i1 %i.ib, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph366.epil.preheader
  %gep461.epil.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep460.a, i64 %indvars.iv398.epil.init
  %i.ic = load double, ptr %gep461.epil.a, align 8, !tbaa !28 ; 3 uses
  %i.id = fcmp oge double %i.ic, 0.000000e+00
  %i.ie = fneg double %i.ic
  %i.if = select i1 %i.id, double %i.ic, double %i.ie
  %i.ig = fadd double %i.ac, %i.if
  %i.ih = fadd double %i.ac, %i.ia
  %i.ii = fdiv double %i.ig, %i.ih
  br label %._crit_edge367.loopexit.epilog-lcssa

bb.q:                                             ; preds = %.lr.ph366.epil.preheader
  %gep463.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep462.a, i64 %indvars.iv398.epil.init
  %i.ij = load double, ptr %gep463.epil, align 8, !tbaa !28 ; 3 uses
  %i.ik = fcmp oge double %i.ij, 0.000000e+00
  %i.il = fneg double %i.ij
  %i.im = select i1 %i.ik, double %i.ij, double %i.il
  %i.in = fdiv double %i.im, %i.ia
  br label %._crit_edge367.loopexit.epilog-lcssa

._crit_edge367.loopexit.epilog-lcssa:             ; preds = %bb.q, %bb.p
  %.sink472.epil = phi double [ %i.in, %bb.q ], [ %i.ii, %bb.p ] ; 2 uses
  %i.io = fcmp oge double %.0334364.epil.init, %.sink472.epil
  %i.ip = select i1 %i.io, double %.0334364.epil.init, double %.sink472.epil
  br label %._crit_edge367

._crit_edge367:                                   ; preds = %._crit_edge367.loopexit.epilog-lcssa, %._crit_edge367.loopexit.unr-lcssa, %.loopexit450
  %.not352362448 = phi i1 [ true, %.loopexit450 ], [ false, %._crit_edge367.loopexit.unr-lcssa ], [ false, %._crit_edge367.loopexit.epilog-lcssa ]
  %.0334.lcssa = phi double [ 0.000000e+00, %.loopexit450 ], [ %i.hy, %._crit_edge367.loopexit.unr-lcssa ], [ %i.ip, %._crit_edge367.loopexit.epilog-lcssa ] ; 3 uses
  store double %.0334.lcssa, ptr %i.aw, align 8, !tbaa !28
  %i.iq = fcmp ogt double %.0334.lcssa, %i.aa
  br i1 %i.iq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %._crit_edge367
  %i.ir = fmul double %.0334.lcssa, 2.000000e+00
  %i.is = fcmp ole double %i.ir, %.0
  %i.it = icmp samesign ult i32 %.0333, 6
  %or.cond = select i1 %i.is, i1 %i.it, i1 false
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.iu = sext i32 %i.bh to i64
  %i.iv = getelementptr [8 x i8], ptr %i.n, i64 %i.iu
  %i.iw = getelementptr i8, ptr %i.iv, i64 8
  tail call void @dpttrs_(ptr noundef nonnull %0, ptr noundef nonnull @c__1, ptr noundef %4, ptr noundef %5, ptr noundef %i.iw, ptr noundef nonnull %0, ptr noundef nonnull %13) #7
  %i.ix = load i32, ptr %0, align 4, !tbaa !26
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr [8 x i8], ptr %i.n, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iz, i64 8
  tail call void @daxpy_(ptr noundef nonnull %0, ptr noundef nonnull @c_b11, ptr noundef %i.ja, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bc, ptr noundef nonnull @c__1) #7
  %i.jb = load double, ptr %i.aw, align 8, !tbaa !28
  %i.jc = add nuw nsw i32 %.0333, 1
  br label %bb.i

bb.t:                                             ; preds = %bb.r, %._crit_edge367
  br i1 %.not352362448, label %._crit_edge372, label %.lr.ph371.preheader

.lr.ph371.preheader:                              ; preds = %bb.t
  %i.jd = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.je = add i32 %i.bh, 1
  %wide.trip.count407 = zext i32 %i.je to i64     ; 2 uses
  %invariant.gep464.a = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.jd ; 2 uses
  %invariant.gep466.a = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.jd ; 2 uses
  %i.jf = add nsw i64 %wide.trip.count407, -1     ; 3 uses
  %min.iters.check = icmp ult i64 %i.jf, 8
  br i1 %min.iters.check, label %.lr.ph371.preheader543, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph371.preheader
  %n.vec = and i64 %i.jf, -8                      ; 3 uses
  %i.jg = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jh = or disjoint i64 %index, 1               ; 2 uses
  %i.ji = getelementptr [8 x i8], ptr %12, i64 %index ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ji, align 8, !tbaa !28 ; 3 uses
  %wide.load479 = load <4 x double>, ptr %i.jj, align 8, !tbaa !28 ; 3 uses
  %i.jk = fcmp ogt <4 x double> %wide.load, %broadcast.splat ; 3 uses
  %i.jl = fcmp ogt <4 x double> %wide.load479, %broadcast.splat ; 3 uses
  %i.jm = xor <4 x i1> %i.jk, splat (i1 true)
  %i.jn = xor <4 x i1> %i.jl, splat (i1 true)
  %i.jo = getelementptr [8 x i8], ptr %invariant.gep464.a, i64 %i.jh ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 32
  %wide.masked.load = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jo, <4 x i1> %i.jm, <4 x double> poison), !tbaa !28 ; 3 uses
  %wide.masked.load480.a = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.jp, <4 x i1> %i.jn, <4 x double> poison), !tbaa !28 ; 3 uses
  %i.jq = fcmp oge <4 x double> %wide.masked.load, zeroinitializer
  %i.jr = fcmp oge <4 x double> %wide.masked.load480.a, zeroinitializer
  %i.js = fneg <4 x double> %wide.masked.load
  %i.jt = fneg <4 x double> %wide.masked.load480.a
  %i.ju = select <4 x i1> %i.jq, <4 x double> %wide.masked.load, <4 x double> %i.js
  %i.jv = select <4 x i1> %i.jr, <4 x double> %wide.masked.load480.a, <4 x double> %i.jt
  %i.jw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat476.a, <4 x double> %wide.load, <4 x double> %i.ju)
  %i.jx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat476.a, <4 x double> %wide.load479, <4 x double> %i.jv)
  %i.jy = fadd <4 x double> %broadcast.splat478, %i.jw
  %i.jz = fadd <4 x double> %broadcast.splat478, %i.jx
  %i.ka = getelementptr [8 x i8], ptr %invariant.gep466.a, i64 %i.jh ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 32
  %wide.masked.load481 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.ka, <4 x i1> %i.jk, <4 x double> poison), !tbaa !28 ; 3 uses
  %wide.masked.load482 = tail call <4 x double> @llvm.masked.load.v4f64.p0(ptr align 8 %i.kb, <4 x i1> %i.jl, <4 x double> poison), !tbaa !28 ; 3 uses
  %i.kc = fcmp oge <4 x double> %wide.masked.load481, zeroinitializer
  %i.kd = fcmp oge <4 x double> %wide.masked.load482, zeroinitializer
  %i.ke = fneg <4 x double> %wide.masked.load481
  %i.kf = fneg <4 x double> %wide.masked.load482
  %i.kg = select <4 x i1> %i.kc, <4 x double> %wide.masked.load481, <4 x double> %i.ke
  %i.kh = select <4 x i1> %i.kd, <4 x double> %wide.masked.load482, <4 x double> %i.kf
  %i.ki = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat476.a, <4 x double> %wide.load, <4 x double> %i.kg)
  %i.kj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat476.a, <4 x double> %wide.load479, <4 x double> %i.kh)
  %predphi = select <4 x i1> %i.jk, <4 x double> %i.ki, <4 x double> %i.jy
  %predphi483 = select <4 x i1> %i.jl, <4 x double> %i.kj, <4 x double> %i.jz
  store <4 x double> %predphi, ptr %i.ji, align 8, !tbaa !28
  store <4 x double> %predphi483, ptr %i.jj, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jf, %n.vec
  br i1 %cmp.n, label %._crit_edge372, label %.lr.ph371.preheader543

.lr.ph371.preheader543:                           ; preds = %.lr.ph371.preheader, %middle.block
  %indvars.iv403.ph = phi i64 [ 1, %.lr.ph371.preheader ], [ %i.jg, %middle.block ]
  br label %.lr.ph371

.lr.ph371:                                        ; preds = %.lr.ph371.preheader543, %bb.w
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %bb.w ], [ %indvars.iv403.ph, %.lr.ph371.preheader543 ] ; 4 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv403 ; 2 uses
  %i.km = load double, ptr %i.kl, align 8, !tbaa !28 ; 3 uses
  %i.kn = fcmp ogt double %i.km, %i.ad
  br i1 %i.kn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph371
  %gep467.a = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep466.a, i64 %indvars.iv403
  %i.ko = load double, ptr %gep467.a, align 8, !tbaa !28 ; 3 uses
  %i.kp = fcmp oge double %i.ko, 0.000000e+00
  %i.kq = fneg double %i.ko
  %i.kr = select i1 %i.kp, double %i.ko, double %i.kq
  %i.ks = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.km, double %i.kr)
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph371
  %gep465 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep464.a, i64 %indvars.iv403
  %i.kt = load double, ptr %gep465, align 8, !tbaa !28 ; 3 uses
  %i.ku = fcmp oge double %i.kt, 0.000000e+00
  %i.kv = fneg double %i.kt
  %i.kw = select i1 %i.ku, double %i.kt, double %i.kv
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.km, double %i.kw)
  %i.ky = fadd double %i.ac, %i.kx
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %storemerge = phi double [ %i.ky, %bb.v ], [ %i.ks, %bb.u ]
  store double %storemerge, ptr %i.kl, align 8, !tbaa !28
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond408.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count407
  br i1 %exitcond408.not, label %._crit_edge372, label %.lr.ph371, !llvm.loop !19

._crit_edge372:                                   ; preds = %bb.w, %middle.block, %bb.t
  %i.kz = tail call i32 @idamax_(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull @c__1) #7
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.la
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !28
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv422 ; 4 uses
  store double %i.lc, ptr %i.ld, align 8, !tbaa !28
  store double 1.000000e+00, ptr %12, align 8, !tbaa !28
  %i.le = load i32, ptr %0, align 4, !tbaa !26    ; 6 uses
  %.not354373 = icmp slt i32 %i.le, 2
  br i1 %.not354373, label %._crit_edge377, label %.lr.ph376.preheader

.lr.ph376.preheader:                              ; preds = %._crit_edge372
  %load_initial = load double, ptr %12, align 8   ; 2 uses
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = add nsw i64 %i.lf, -1                   ; 2 uses
  %xtraiter548 = and i64 %i.lg, 3                 ; 3 uses
  %i.lh = add nsw i32 %i.le, -2
  %i.li = icmp ult i32 %i.lh, 3
  br i1 %i.li, label %.lr.ph376.epil.preheader, label %.lr.ph376.preheader.new

.lr.ph376.preheader.new:                          ; preds = %.lr.ph376.preheader
  %unroll_iter551 = and i64 %i.lg, -4
  br label %.lr.ph376

.lr.ph376:                                        ; preds = %.lr.ph376, %.lr.ph376.preheader.new
  %i.lj = phi double [ %load_initial, %.lr.ph376.preheader.new ], [ %i.mo, %.lr.ph376 ]
  %indvars.iv409 = phi i64 [ 2, %.lr.ph376.preheader.new ], [ %indvars.iv.next410.3, %.lr.ph376 ] ; 7 uses
  %niter552 = phi i64 [ 0, %.lr.ph376.preheader.new ], [ %niter552.next.3, %.lr.ph376 ]
  %i.lk = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv409
  %i.ll = getelementptr i8, ptr %i.lk, i64 -8
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !28 ; 3 uses
  %i.ln = fcmp oge double %i.lm, 0.000000e+00
  %i.lo = fneg double %i.lm
  %i.lp = select i1 %i.ln, double %i.lm, double %i.lo
  %i.lq = tail call double @llvm.fmuladd.f64(double %i.lj, double %i.lp, double 1.000000e+00) ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv409
  store double %i.lq, ptr %i.lr, align 8, !tbaa !28
  %i.ls = getelementptr [8 x i8], ptr %5, i64 %indvars.iv409
  %i.lt = getelementptr i8, ptr %i.ls, i64 -8
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !28 ; 3 uses
  %i.lv = fcmp oge double %i.lu, 0.000000e+00
  %i.lw = fneg double %i.lu
  %i.lx = select i1 %i.lv, double %i.lu, double %i.lw
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.lx, double 1.000000e+00) ; 2 uses
  %i.lz = getelementptr [8 x i8], ptr %12, i64 %indvars.iv409
  store double %i.ly, ptr %i.lz, align 8, !tbaa !28
  %indvars.iv.next410.1 = add nuw nsw i64 %indvars.iv409, 2 ; 2 uses
  %i.ma = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next410.1
  %i.mb = getelementptr i8, ptr %i.ma, i64 -8
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !28 ; 3 uses
  %i.md = fcmp oge double %i.mc, 0.000000e+00
  %i.me = fneg double %i.mc
  %i.mf = select i1 %i.md, double %i.mc, double %i.me
  %i.mg = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.mf, double 1.000000e+00) ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next410.1
  store double %i.mg, ptr %i.mh, align 8, !tbaa !28
  %indvars.iv.next410.2 = add nuw nsw i64 %indvars.iv409, 3 ; 2 uses
  %i.mi = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next410.2
  %i.mj = getelementptr i8, ptr %i.mi, i64 -8
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !28 ; 3 uses
  %i.ml = fcmp oge double %i.mk, 0.000000e+00
  %i.mm = fneg double %i.mk
  %i.mn = select i1 %i.ml, double %i.mk, double %i.mm
  %i.mo = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.mn, double 1.000000e+00) ; 3 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next410.2
  store double %i.mo, ptr %i.mp, align 8, !tbaa !28
  %indvars.iv.next410.3 = add nuw nsw i64 %indvars.iv409, 4 ; 2 uses
  %niter552.next.3 = add nuw i64 %niter552, 4     ; 2 uses
  %niter552.ncmp.3 = icmp eq i64 %niter552.next.3, %unroll_iter551
  br i1 %niter552.ncmp.3, label %.lr.ph380.preheader.unr-lcssa, label %.lr.ph376, !llvm.loop !20

._crit_edge377:                                   ; preds = %._crit_edge372
  %i.mq = sext i32 %i.le to i64                   ; 2 uses
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.mq
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !28
  %i.mt = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.mq ; 2 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !28
  %i.mv = fdiv double %i.mu, %i.ms
  store double %i.mv, ptr %i.mt, align 8, !tbaa !28
  br label %._crit_edge381

.lr.ph380.preheader.unr-lcssa:                    ; preds = %.lr.ph376
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %.lr.ph380.preheader, label %.lr.ph376.epil.preheader

.lr.ph376.epil.preheader:                         ; preds = %.lr.ph380.preheader.unr-lcssa, %.lr.ph376.preheader
  %.epil.init = phi double [ %load_initial, %.lr.ph376.preheader ], [ %i.mo, %.lr.ph380.preheader.unr-lcssa ]
  %indvars.iv409.epil.init = phi i64 [ 2, %.lr.ph376.preheader ], [ %indvars.iv.next410.3, %.lr.ph380.preheader.unr-lcssa ]
  %lcmp.mod550 = icmp ne i64 %xtraiter548, 0
  tail call void @llvm.assume(i1 %lcmp.mod550)
  br label %.lr.ph376.epil

.lr.ph376.epil:                                   ; preds = %.lr.ph376.epil, %.lr.ph376.epil.preheader
  %i.mw = phi double [ %.epil.init, %.lr.ph376.epil.preheader ], [ %i.nd, %.lr.ph376.epil ]
  %indvars.iv409.epil = phi i64 [ %indvars.iv409.epil.init, %.lr.ph376.epil.preheader ], [ %indvars.iv.next410.epil, %.lr.ph376.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph376.epil.preheader ], [ %epil.iter.next, %.lr.ph376.epil ]
  %i.mx = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv409.epil
  %i.my = getelementptr i8, ptr %i.mx, i64 -8
  %i.mz = load double, ptr %i.my, align 8, !tbaa !28 ; 3 uses
  %i.na = fcmp oge double %i.mz, 0.000000e+00
  %i.nb = fneg double %i.mz
  %i.nc = select i1 %i.na, double %i.mz, double %i.nb
  %i.nd = tail call double @llvm.fmuladd.f64(double %i.mw, double %i.nc, double 1.000000e+00) ; 2 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv409.epil
  store double %i.nd, ptr %i.ne, align 8, !tbaa !28
  %indvars.iv.next410.epil = add nuw nsw i64 %indvars.iv409.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter548
  br i1 %epil.iter.cmp.not, label %.lr.ph380.preheader, label %.lr.ph376.epil, !llvm.loop !21

.lr.ph380.preheader:                              ; preds = %.lr.ph376.epil, %.lr.ph380.preheader.unr-lcssa
  %i.nf = zext nneg i32 %i.le to i64              ; 2 uses
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.nf
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !28
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.nf ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !28
  %i.nk = fdiv double %i.nj, %i.nh
  store double %i.nk, ptr %i.ni, align 8, !tbaa !28
  %i.nl = zext nneg i32 %i.le to i64              ; 2 uses
  %.phi.trans.insert430 = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.nl
  %.pre431 = load double, ptr %.phi.trans.insert430, align 8, !tbaa !28
  br label %.lr.ph380

.lr.ph380:                                        ; preds = %.lr.ph380.preheader, %.lr.ph380
  %i.nm = phi double [ %.pre431, %.lr.ph380.preheader ], [ %i.nx, %.lr.ph380 ]
  %indvars.iv414 = phi i64 [ %i.nl, %.lr.ph380.preheader ], [ %indvars.iv.next415, %.lr.ph380 ] ; 2 uses
  %indvars.iv.next415 = add nsw i64 %indvars.iv414, -1 ; 4 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next415 ; 2 uses
  %i.no = load double, ptr %i.nn, align 8, !tbaa !28
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next415
  %i.nq = load double, ptr %i.np, align 8, !tbaa !28
  %i.nr = fdiv double %i.no, %i.nq
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next415
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !28 ; 3 uses
  %i.nu = fcmp oge double %i.nt, 0.000000e+00
  %i.nv = fneg double %i.nt
  %i.nw = select i1 %i.nu, double %i.nt, double %i.nv
  %i.nx = tail call double @llvm.fmuladd.f64(double %i.nm, double %i.nw, double %i.nr) ; 2 uses
  store double %i.nx, ptr %i.nn, align 8, !tbaa !28
  %i.ny = icmp samesign ugt i64 %indvars.iv414, 2
  br i1 %i.ny, label %.lr.ph380, label %._crit_edge381, !llvm.loop !22

._crit_edge381:                                   ; preds = %.lr.ph380, %._crit_edge377
  %i.nz = tail call i32 @idamax_(ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull @c__1) #7
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.oa
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !28 ; 3 uses
  %i.od = fcmp oge double %i.oc, 0.000000e+00
  %i.oe = fneg double %i.oc
  %i.of = select i1 %i.od, double %i.oc, double %i.oe
  %i.og = load double, ptr %i.ld, align 8, !tbaa !28
  %i.oh = fmul double %i.og, %i.of                ; 2 uses
  store double %i.oh, ptr %i.ld, align 8, !tbaa !28
  %i.oi = load i32, ptr %0, align 4, !tbaa !26    ; 3 uses
  %.not355382 = icmp slt i32 %i.oi, 1
  br i1 %.not355382, label %._crit_edge387.thread, label %.lr.ph386

.lr.ph386:                                        ; preds = %._crit_edge381
  %invariant.gep468 = getelementptr [8 x i8], ptr %i.k, i64 %i.ba ; 5 uses
  %i.oj = zext nneg i32 %i.oi to i64              ; 2 uses
  %xtraiter553 = and i64 %i.oj, 3                 ; 3 uses
  %i.ok = icmp ult i32 %i.oi, 4
  br i1 %i.ok, label %.epil.preheader, label %.lr.ph386.new

.lr.ph386.new:                                    ; preds = %.lr.ph386
  %unroll_iter558 = and i64 %i.oj, 2147483644
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph386.new
  %indvars.iv417 = phi i64 [ 1, %.lr.ph386.new ], [ %indvars.iv.next418.3, %bb.x ] ; 5 uses
  %.1384 = phi double [ 0.000000e+00, %.lr.ph386.new ], [ %i.pl, %bb.x ] ; 2 uses
  %niter559 = phi i64 [ 0, %.lr.ph386.new ], [ %niter559.next.3, %bb.x ]
  %gep469 = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv417
  %i.ol = load double, ptr %gep469, align 8, !tbaa !28 ; 3 uses
  %i.om = fcmp oge double %i.ol, 0.000000e+00
  %i.on = fneg double %i.ol
  %i.oo = select i1 %i.om, double %i.ol, double %i.on ; 2 uses
  %i.op = fcmp oge double %.1384, %i.oo
  %i.oq = select i1 %i.op, double %.1384, double %i.oo ; 2 uses
  %i.or = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv417
  %gep469.1 = getelementptr i8, ptr %i.or, i64 8
  %i.os = load double, ptr %gep469.1, align 8, !tbaa !28 ; 3 uses
  %i.ot = fcmp oge double %i.os, 0.000000e+00
  %i.ou = fneg double %i.os
  %i.ov = select i1 %i.ot, double %i.os, double %i.ou ; 2 uses
  %i.ow = fcmp oge double %i.oq, %i.ov
  %i.ox = select i1 %i.ow, double %i.oq, double %i.ov ; 2 uses
  %i.oy = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv417
  %gep469.2 = getelementptr i8, ptr %i.oy, i64 16
  %i.oz = load double, ptr %gep469.2, align 8, !tbaa !28 ; 3 uses
  %i.pa = fcmp oge double %i.oz, 0.000000e+00
  %i.pb = fneg double %i.oz
  %i.pc = select i1 %i.pa, double %i.oz, double %i.pb ; 2 uses
  %i.pd = fcmp oge double %i.ox, %i.pc
  %i.pe = select i1 %i.pd, double %i.ox, double %i.pc ; 2 uses
  %i.pf = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv417
  %gep469.3 = getelementptr i8, ptr %i.pf, i64 24
  %i.pg = load double, ptr %gep469.3, align 8, !tbaa !28 ; 3 uses
  %i.ph = fcmp oge double %i.pg, 0.000000e+00
  %i.pi = fneg double %i.pg
  %i.pj = select i1 %i.ph, double %i.pg, double %i.pi ; 2 uses
  %i.pk = fcmp oge double %i.pe, %i.pj
  %i.pl = select i1 %i.pk, double %i.pe, double %i.pj ; 3 uses
  %indvars.iv.next418.3 = add nuw nsw i64 %indvars.iv417, 4 ; 2 uses
  %niter559.next.3 = add i64 %niter559, 4         ; 2 uses
  %niter559.ncmp.3 = icmp eq i64 %niter559.next.3, %unroll_iter558
  br i1 %niter559.ncmp.3, label %._crit_edge387.unr-lcssa, label %bb.x, !llvm.loop !23

._crit_edge387.unr-lcssa:                         ; preds = %bb.x
  %lcmp.mod555.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod555.not, label %._crit_edge387, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge387.unr-lcssa, %.lr.ph386
  %indvars.iv417.epil.init = phi i64 [ 1, %.lr.ph386 ], [ %indvars.iv.next418.3, %._crit_edge387.unr-lcssa ]
  %.1384.epil.init = phi double [ 0.000000e+00, %.lr.ph386 ], [ %i.pl, %._crit_edge387.unr-lcssa ]
  %lcmp.mod557 = icmp ne i64 %xtraiter553, 0
  tail call void @llvm.assume(i1 %lcmp.mod557)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %indvars.iv417.epil = phi i64 [ %indvars.iv417.epil.init, %.epil.preheader ], [ %indvars.iv.next418.epil, %bb.y ] ; 2 uses
  %.1384.epil = phi double [ %.1384.epil.init, %.epil.preheader ], [ %i.pr, %bb.y ] ; 2 uses
  %epil.iter554 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter554.next, %bb.y ]
  %gep469.epil = getelementptr [8 x i8], ptr %invariant.gep468, i64 %indvars.iv417.epil
  %i.pm = load double, ptr %gep469.epil, align 8, !tbaa !28 ; 3 uses
  %i.pn = fcmp oge double %i.pm, 0.000000e+00
  %i.po = fneg double %i.pm
  %i.pp = select i1 %i.pn, double %i.pm, double %i.po ; 2 uses
  %i.pq = fcmp oge double %.1384.epil, %i.pp
  %i.pr = select i1 %i.pq, double %.1384.epil, double %i.pp ; 2 uses
  %indvars.iv.next418.epil = add nuw nsw i64 %indvars.iv417.epil, 1
  %epil.iter554.next = add i64 %epil.iter554, 1   ; 2 uses
  %epil.iter554.cmp.not = icmp eq i64 %epil.iter554.next, %xtraiter553
  br i1 %epil.iter554.cmp.not, label %._crit_edge387, label %bb.y, !llvm.loop !24

._crit_edge387:                                   ; preds = %bb.y, %._crit_edge387.unr-lcssa
  %.lcssa545 = phi double [ %i.pl, %._crit_edge387.unr-lcssa ], [ %i.pr, %bb.y ] ; 2 uses
  %i.ps = fcmp une double %.lcssa545, 0.000000e+00
  br i1 %i.ps, label %bb.z, label %._crit_edge387.thread

bb.z:                                             ; preds = %._crit_edge387
  %i.pt = fdiv double %i.oh, %.lcssa545
  store double %i.pt, ptr %i.ld, align 8, !tbaa !28
  br label %._crit_edge387.thread

._crit_edge387.thread:                            ; preds = %._crit_edge381, %._crit_edge387, %bb.z
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1 ; 2 uses
  %exitcond426.not = icmp eq i64 %indvars.iv.next423, %wide.trip.count425
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond426.not, label %.loopexit, label %.preheader, !llvm.loop !25

.loopexit:                                        ; preds = %._crit_edge387.thread, %bb.f, %.lr.ph394.preheader, %bb.h, %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dpttrs_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @daxpy_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

end_hunk_0
