Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrsm_kernel_LN?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 34
begin_hunk_0_@dtrsm_kernel_LN:bb.a
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter437
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i215, label %bb.j, !llvm.loop !25

._crit_edge.us.i215:                              ; preds = %bb.j, %._crit_edge.us.i215.unr-lcssa
  %i.iq = getelementptr inbounds nuw i8, ptr %.04452.i205301, i64 8
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %7 ; 2 uses
  %i.is = load double, ptr %i.ir, align 8, !tbaa !30
  %i.it = fmul double %i.ha, %i.is                ; 3 uses
  store double %i.it, ptr %i.iq, align 8, !tbaa !30
  store double %i.it, ptr %i.ir, align 8, !tbaa !30
  %i.iu = fneg double %i.it                       ; 9 uses
  %xtraiter445 = and i64 %indvars.iv65.i203299, 7 ; 3 uses
  %i.iv = icmp ult i64 %i.hb, 7
  br i1 %i.iv, label %.epil.preheader444, label %._crit_edge.us.i215.new

._crit_edge.us.i215.new:                          ; preds = %._crit_edge.us.i215
  %unroll_iter449 = and i64 %indvars.iv65.i203299, -8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge.us.i215.new
  %indvars.iv57.i211.1 = phi i64 [ 0, %._crit_edge.us.i215.new ], [ %indvars.iv.next58.i213.1.7, %bb.k ] ; 10 uses
  %niter450 = phi i64 [ 0, %._crit_edge.us.i215.new ], [ %niter450.next.7, %bb.k ]
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.04353.i204300, i64 %indvars.iv57.i211.1
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !30
  %gep.us.i212.1 = getelementptr [8 x i8], ptr %invariant.gep.us.i210.1, i64 %indvars.iv57.i211.1 ; 2 uses
  %i.iy = load double, ptr %gep.us.i212.1, align 8, !tbaa !30
  %i.iz = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.ix, double %i.iy)
  store double %i.iz, ptr %gep.us.i212.1, align 8, !tbaa !30
  %indvars.iv.next58.i213.1 = or disjoint i64 %indvars.iv57.i211.1, 1 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.04353.i204300, i64 %indvars.iv.next58.i213.1
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !30
  %gep.us.i212.1.1 = getelementptr [8 x i8], ptr %invariant.gep.us.i210.1, i64 %indvars.iv.next58.i213.1 ; 2 uses
  %i.jc = load double, ptr %gep.us.i212.1.1, align 8, !tbaa !30
  %i.jd = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.jb, double %i.jc)
  store double %i.jd, ptr %gep.us.i212.1.1, align 8, !tbaa !30
  %indvars.iv.next58.i213.1.1 = or disjoint i64 %indvars.iv57.i211.1, 2 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.04353.i204300, i64 %indvars.iv.next58.i213.1.1
  %i.jf = load double, ptr %i.je, align 8, !tbaa !30
  %gep.us.i212.1.2 = getelementptr [8 x i8], ptr %invariant.gep.us.i210.1, i64 %indvars.iv.next58.i213.1.1 ; 2 uses
  %i.jg = load double, ptr %gep.us.i212.1.2, align 8, !tbaa !30
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.jf, double %i.jg)
  store double %i.jh, ptr %gep.us.i212.1.2, align 8, !tbaa !30
  %indvars.iv.next58.i213.1.2 = or disjoint i64 %indvars.iv57.i211.1, 3 ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.04353.i204300, i64 %indvars.iv.next58.i213.1.2
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !30
  %gep.us.i212.1.3 = getelementptr [8 x i8], ptr %invariant.gep.us.i210.1, i64 %indvars.iv.next58.i213.1.2 ; 2 uses
  %i.jk = load double, ptr %gep.us.i212.1.3, align 8, !tbaa !30
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.jj, double %i.jk)
  store double %i.jl, ptr %gep.us.i212.1.3, align 8, !tbaa !30
  %indvars.iv.next58.i213.1.3 = or disjoint i64 %indvars.iv57.i211.1, 4 ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.04353.i204300, i64 %indvars.iv.next58.i213.1.3
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !30
  %gep.us.i212.1.4 = getelementptr [8 x i8], ptr %invariant.gep.us.i210.1, i64 %indvars.iv.next58.i213.1.3 ; 2 uses
  %i.jo = load double, ptr %gep.us.i212.1.4, align 8, !tbaa !30
  %i.jp = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.jn, double %i.jo)
  store double %i.jp, ptr %gep.us.i212.1.4, align 8, !tbaa !30
  %indvars.iv.next58.i213.1.4 = or disjoint i64 %indvars.iv57.i211.1, 5 ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.04353.i204300, i64 %indvars.iv.next58.i213.1.4
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !30
  %gep.us.i212.1.5 = getelementptr [8 x i8], ptr %invariant.gep.us.i210.1, i64 %indvars.iv.next58.i213.1.4 ; 2 uses
  %i.js = load double, ptr %gep.us.i212.1.5, align 8, !tbaa !30
  %i.jt = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.jr, double %i.js)
  store double %i.jt, ptr %gep.us.i212.1.5, align 8, !tbaa !30
  %indvars.iv.next58.i213.1.5 = or disjoint i64 %indvars.iv57.i211.1, 6 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.04353.i204300, i64 %indvars.iv.next58.i213.1.5
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !30
  %gep.us.i212.1.6 = getelementptr [8 x i8], ptr %invariant.gep.us.i210.1, i64 %indvars.iv.next58.i213.1.5 ; 2 uses
  %i.jw = load double, ptr %gep.us.i212.1.6, align 8, !tbaa !30
  %i.jx = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.jv, double %i.jw)
  store double %i.jx, ptr %gep.us.i212.1.6, align 8, !tbaa !30
  %indvars.iv.next58.i213.1.6 = or disjoint i64 %indvars.iv57.i211.1, 7 ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.04353.i204300, i64 %indvars.iv.next58.i213.1.6
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !30
  %gep.us.i212.1.7 = getelementptr [8 x i8], ptr %invariant.gep.us.i210.1, i64 %indvars.iv.next58.i213.1.6 ; 2 uses
  %i.ka = load double, ptr %gep.us.i212.1.7, align 8, !tbaa !30
  %i.kb = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.jz, double %i.ka)
  store double %i.kb, ptr %gep.us.i212.1.7, align 8, !tbaa !30
  %indvars.iv.next58.i213.1.7 = add nuw nsw i64 %indvars.iv57.i211.1, 8 ; 2 uses
  %niter450.next.7 = add i64 %niter450, 8         ; 2 uses
  %niter450.ncmp.7 = icmp eq i64 %niter450.next.7, %unroll_iter449
  br i1 %niter450.ncmp.7, label %._crit_edge.us.i215.1.unr-lcssa, label %bb.k, !llvm.loop !24

._crit_edge.us.i215.1.unr-lcssa:                  ; preds = %bb.k
  %lcmp.mod447.not = icmp eq i64 %xtraiter445, 0
  br i1 %lcmp.mod447.not, label %._crit_edge.us.i215.1, label %.epil.preheader444

.epil.preheader444:                               ; preds = %._crit_edge.us.i215.1.unr-lcssa, %._crit_edge.us.i215
  %indvars.iv57.i211.1.epil.init = phi i64 [ 0, %._crit_edge.us.i215 ], [ %indvars.iv.next58.i213.1.7, %._crit_edge.us.i215.1.unr-lcssa ]
  %lcmp.mod448 = icmp ne i64 %xtraiter445, 0
  tail call void @llvm.assume(i1 %lcmp.mod448)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader444
  %indvars.iv57.i211.1.epil = phi i64 [ %indvars.iv57.i211.1.epil.init, %.epil.preheader444 ], [ %indvars.iv.next58.i213.1.epil, %bb.l ] ; 3 uses
  %epil.iter446 = phi i64 [ 0, %.epil.preheader444 ], [ %epil.iter446.next, %bb.l ]
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %.04353.i204300, i64 %indvars.iv57.i211.1.epil
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !30
  %gep.us.i212.1.epil = getelementptr [8 x i8], ptr %invariant.gep.us.i210.1, i64 %indvars.iv57.i211.1.epil ; 2 uses
  %i.ke = load double, ptr %gep.us.i212.1.epil, align 8, !tbaa !30
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.iu, double %i.kd, double %i.ke)
  store double %i.kf, ptr %gep.us.i212.1.epil, align 8, !tbaa !30
  %indvars.iv.next58.i213.1.epil = add nuw nsw i64 %indvars.iv57.i211.1.epil, 1
  %epil.iter446.next = add i64 %epil.iter446, 1   ; 2 uses
  %epil.iter446.cmp.not = icmp eq i64 %epil.iter446.next, %xtraiter445
  br i1 %epil.iter446.cmp.not, label %._crit_edge.us.i215.1, label %bb.l, !llvm.loop !26

._crit_edge.us.i215.1:                            ; preds = %bb.l, %._crit_edge.us.i215.1.unr-lcssa
  %i.kg = getelementptr inbounds i8, ptr %.04353.i204300, i64 -128 ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %.04452.i205301, i64 -16 ; 2 uses
  %indvars.iv.next66.i219 = add nsw i64 %indvars.iv65.i203299, -1 ; 4 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.next66.i219
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !30 ; 3 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.0163, i64 %indvars.iv.next66.i219 ; 4 uses
  %.not.i206 = icmp eq i64 %indvars.iv.next66.i219, 0
  %indvar.next436 = add i64 %indvar435, 1
  br i1 %.not.i206, label %.split.i221.preheader, label %.lr.ph.us.i207.preheader

.loopexit281:                                     ; preds = %.split.i221.preheader, %.loopexit283
  %i.kl = getelementptr inbounds i8, ptr %.0173303, i64 %.idx197 ; 2 uses
  %i.km = getelementptr i8, ptr %.0176302, i64 %.idx198 ; 2 uses
  %i.kn = add nsw i64 %.0167304, -1
  %i.ko = icmp sgt i64 %.0167304, 1
  br i1 %i.ko, label %bb.b, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %.loopexit281, %bb.a
  %.0176.lcssa = phi ptr [ %6, %bb.a ], [ %i.km, %.loopexit281 ] ; 5 uses
  %.0173.lcssa = phi ptr [ %5, %bb.a ], [ %i.kl, %.loopexit281 ] ; 10 uses
  %i.kp = and i64 %1, 1
  %.not = icmp eq i64 %i.kp, 0
  br i1 %.not, label %.loopexit, label %.preheader279

.preheader279:                                    ; preds = %._crit_edge
  %i.kq = add nsw i64 %8, %0                      ; 6 uses
  %i.kr = and i64 %0, 15
  %.not187 = icmp eq i64 %i.kr, 0
  %i.ks = ashr i64 %0, 4                          ; 2 uses
  %i.kt = icmp sgt i64 %i.ks, 0
  %i.ku = and i64 %0, -16
  %i.kv = add nsw i64 %i.ku, -16                  ; 2 uses
  %i.kw = mul nsw i64 %i.kv, %2
  %i.kx = getelementptr inbounds [8 x i8], ptr %4, i64 %i.kw
  %.idx189 = mul i64 %2, -128
  br i1 %.not187, label %.loopexit278, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader279
  %i.ky = and i64 %0, 1
  %.not190 = icmp eq i64 %i.ky, 0
  br i1 %.not190, label %solve.exit251, label %bb.m

bb.m:                                             ; preds = %.preheader.preheader
  %i.kz = add nsw i64 %0, -1                      ; 2 uses
  %i.la = mul nsw i64 %i.kz, %2
  %i.lb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %.0176.lcssa, i64 %i.kz ; 3 uses
  %i.ld = sub nsw i64 %2, %i.kq                   ; 2 uses
  %i.le = icmp sgt i64 %i.ld, 0
  br i1 %i.le, label %bb.n, label %.split.i246.preheader

bb.n:                                             ; preds = %bb.m
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.kq
  %i.lg = getelementptr inbounds [8 x i8], ptr %.0173.lcssa, i64 %i.kq
  %i.lh = tail call i32 @dgemm_kernel(i64 noundef 1, i64 noundef 1, i64 noundef %i.ld, double noundef -1.000000e+00, ptr noundef %i.lf, ptr noundef %i.lg, ptr noundef %i.lc, i64 noundef %7) #4 ; 0 uses
  br label %.split.i246.preheader

.split.i246.preheader:                            ; preds = %bb.m, %bb.n
  %i.li = add nsw i64 %i.kq, -1                   ; 3 uses
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.li
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !30
  %i.ll = getelementptr inbounds [8 x i8], ptr %.0173.lcssa, i64 %i.li
  %i.lm = load double, ptr %i.lc, align 8, !tbaa !30
  %i.ln = fmul double %i.lk, %i.lm                ; 2 uses
  store double %i.ln, ptr %i.ll, align 8, !tbaa !30
  store double %i.ln, ptr %i.lc, align 8, !tbaa !30
  br label %solve.exit251

solve.exit251:                                    ; preds = %.split.i246.preheader, %.preheader.preheader
  %.5 = phi i64 [ %i.kq, %.preheader.preheader ], [ %i.li, %.split.i246.preheader ] ; 5 uses
  %i.lo = and i64 %0, 2
  %.not190.1 = icmp eq i64 %i.lo, 0
  br i1 %.not190.1, label %solve.exit251.1, label %bb.o

bb.o:                                             ; preds = %solve.exit251
  %i.lp = and i64 %0, -2
  %i.lq = add nsw i64 %i.lp, -2                   ; 2 uses
  %i.lr = mul nsw i64 %i.lq, %2
  %i.ls = getelementptr inbounds [8 x i8], ptr %4, i64 %i.lr ; 2 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %.0176.lcssa, i64 %i.lq ; 5 uses
  %i.lu = sub nsw i64 %2, %.5                     ; 2 uses
  %i.lv = icmp sgt i64 %i.lu, 0
  br i1 %i.lv, label %bb.p, label %.split.i246.preheader.1

bb.p:                                             ; preds = %bb.o
  %.idx346 = shl nsw i64 %.5, 4
  %i.lw = getelementptr inbounds i8, ptr %i.ls, i64 %.idx346
  %i.lx = getelementptr inbounds [8 x i8], ptr %.0173.lcssa, i64 %.5
  %i.ly = tail call i32 @dgemm_kernel(i64 noundef 2, i64 noundef 1, i64 noundef %i.lu, double noundef -1.000000e+00, ptr noundef %i.lw, ptr noundef %i.lx, ptr noundef %i.lt, i64 noundef %7) #4 ; 0 uses
  br label %.split.i246.preheader.1

.split.i246.preheader.1:                          ; preds = %bb.p, %bb.o
  %i.lz = add nsw i64 %.5, -2                     ; 3 uses
  %.idx347 = shl nsw i64 %i.lz, 4
  %i.ma = getelementptr inbounds i8, ptr %i.ls, i64 %.idx347 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !30
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.me = getelementptr inbounds [8 x i8], ptr %.0173.lcssa, i64 %i.lz ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !30
  %i.mh = fmul double %i.mc, %i.mg                ; 3 uses
  store double %i.mh, ptr %9, align 8, !tbaa !30
  store double %i.mh, ptr %i.mf, align 8, !tbaa !30
  %i.mi = fneg double %i.mh
  %i.mj = load double, ptr %i.md, align 8, !tbaa !30
  %i.mk = load double, ptr %i.lt, align 8, !tbaa !30
  %i.ml = tail call double @llvm.fmuladd.f64(double %i.mi, double %i.mj, double %i.mk) ; 2 uses
  store double %i.ml, ptr %i.lt, align 8, !tbaa !30
  %i.mm = load double, ptr %i.ma, align 8, !tbaa !30
  %i.mn = fmul double %i.mm, %i.ml                ; 2 uses
  store double %i.mn, ptr %i.me, align 8, !tbaa !30
  store double %i.mn, ptr %i.lt, align 8, !tbaa !30
  br label %solve.exit251.1

solve.exit251.1:                                  ; preds = %.split.i246.preheader.1, %solve.exit251
  %.5.1 = phi i64 [ %.5, %solve.exit251 ], [ %i.lz, %.split.i246.preheader.1 ] ; 5 uses
  %i.mo = and i64 %0, 4
  %.not190.2 = icmp eq i64 %i.mo, 0
  br i1 %.not190.2, label %solve.exit251.2, label %bb.q

bb.q:                                             ; preds = %solve.exit251.1
  %i.mp = and i64 %0, -4
  %i.mq = add nsw i64 %i.mp, -4                   ; 2 uses
  %i.mr = mul nsw i64 %i.mq, %2
  %i.ms = getelementptr inbounds [8 x i8], ptr %4, i64 %i.mr ; 2 uses
  %i.mt = getelementptr inbounds [8 x i8], ptr %.0176.lcssa, i64 %i.mq ; 11 uses
  %i.mu = sub nsw i64 %2, %.5.1                   ; 2 uses
  %i.mv = icmp sgt i64 %i.mu, 0
  br i1 %i.mv, label %bb.r, label %.split.i246.preheader.2

bb.r:                                             ; preds = %bb.q
  %.idx348 = shl nsw i64 %.5.1, 5
  %i.mw = getelementptr inbounds i8, ptr %i.ms, i64 %.idx348
  %i.mx = getelementptr inbounds [8 x i8], ptr %.0173.lcssa, i64 %.5.1
  %i.my = tail call i32 @dgemm_kernel(i64 noundef 4, i64 noundef 1, i64 noundef %i.mu, double noundef -1.000000e+00, ptr noundef %i.mw, ptr noundef %i.mx, ptr noundef %i.mt, i64 noundef %7) #4 ; 0 uses
  br label %.split.i246.preheader.2

.split.i246.preheader.2:                          ; preds = %bb.r, %bb.q
  %i.mz = add nsw i64 %.5.1, -4                   ; 3 uses
  %.idx349 = shl nsw i64 %i.mz, 5
  %i.na = getelementptr inbounds i8, ptr %i.ms, i64 %.idx349 ; 10 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 120
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !30
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 96
  %i.ne = getelementptr inbounds [8 x i8], ptr %.0173.lcssa, i64 %i.mz ; 4 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mt, i64 24 ; 2 uses
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !30
  %i.nh = fmul double %i.nc, %i.ng                ; 3 uses
  store double %i.nh, ptr %10, align 8, !tbaa !30
  store double %i.nh, ptr %i.nf, align 8, !tbaa !30
  %i.ni = fneg double %i.nh                       ; 3 uses
  %i.nj = load double, ptr %i.nd, align 8, !tbaa !30
  %i.nk = load double, ptr %i.mt, align 8, !tbaa !30
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.ni, double %i.nj, double %i.nk)
  store double %i.nl, ptr %i.mt, align 8, !tbaa !30
  %i.nm = getelementptr inbounds nuw i8, ptr %i.na, i64 104
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !30
  %gep.us.i237.2.1 = getelementptr i8, ptr %i.mt, i64 8 ; 5 uses
  %i.no = load double, ptr %gep.us.i237.2.1, align 8, !tbaa !30
  %i.np = tail call double @llvm.fmuladd.f64(double %i.ni, double %i.nn, double %i.no)
  store double %i.np, ptr %gep.us.i237.2.1, align 8, !tbaa !30
  %i.nq = getelementptr inbounds nuw i8, ptr %i.na, i64 112
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !30
  %gep.us.i237.2.2 = getelementptr i8, ptr %i.mt, i64 16 ; 3 uses
  %i.ns = load double, ptr %gep.us.i237.2.2, align 8, !tbaa !30
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.ni, double %i.nr, double %i.ns) ; 2 uses
  store double %i.nt, ptr %gep.us.i237.2.2, align 8, !tbaa !30
  %i.nu = getelementptr inbounds nuw i8, ptr %i.na, i64 64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %i.na, i64 80
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !30
  %i.ny = fmul double %i.nx, %i.nt                ; 3 uses
  store double %i.ny, ptr %i.nv, align 8, !tbaa !30
  store double %i.ny, ptr %gep.us.i237.2.2, align 8, !tbaa !30
  %i.nz = fneg double %i.ny                       ; 2 uses
  %i.oa = load double, ptr %i.nu, align 8, !tbaa !30
  %i.ob = load double, ptr %i.mt, align 8, !tbaa !30
  %i.oc = tail call double @llvm.fmuladd.f64(double %i.nz, double %i.oa, double %i.ob)
  store double %i.oc, ptr %i.mt, align 8, !tbaa !30
  %i.od = getelementptr inbounds nuw i8, ptr %i.na, i64 72
  %i.oe = load double, ptr %i.od, align 8, !tbaa !30
  %i.of = load double, ptr %gep.us.i237.2.1, align 8, !tbaa !30
  %i.og = tail call double @llvm.fmuladd.f64(double %i.nz, double %i.oe, double %i.of) ; 2 uses
  store double %i.og, ptr %gep.us.i237.2.1, align 8, !tbaa !30
  %i.oh = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !30
  %i.ol = fmul double %i.ok, %i.og                ; 3 uses
  store double %i.ol, ptr %i.oi, align 8, !tbaa !30
  store double %i.ol, ptr %gep.us.i237.2.1, align 8, !tbaa !30
  %i.om = fneg double %i.ol
  %i.on = load double, ptr %i.oh, align 8, !tbaa !30
  %i.oo = load double, ptr %i.mt, align 8, !tbaa !30
  %i.op = tail call double @llvm.fmuladd.f64(double %i.om, double %i.on, double %i.oo) ; 2 uses
  store double %i.op, ptr %i.mt, align 8, !tbaa !30
  %i.oq = load double, ptr %i.na, align 8, !tbaa !30
  %i.or = fmul double %i.oq, %i.op                ; 2 uses
  store double %i.or, ptr %i.ne, align 8, !tbaa !30
  store double %i.or, ptr %i.mt, align 8, !tbaa !30
  br label %solve.exit251.2

solve.exit251.2:                                  ; preds = %.split.i246.preheader.2, %solve.exit251.1
  %.5.2 = phi i64 [ %.5.1, %solve.exit251.1 ], [ %i.mz, %.split.i246.preheader.2 ] ; 5 uses
  %i.os = and i64 %0, 8
  %.not190.3 = icmp eq i64 %i.os, 0
  br i1 %.not190.3, label %.loopexit278, label %bb.s

bb.s:                                             ; preds = %solve.exit251.2
  %i.ot = and i64 %0, -8
  %i.ou = add nsw i64 %i.ot, -8                   ; 2 uses
  %i.ov = mul nsw i64 %i.ou, %2
  %i.ow = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ov ; 2 uses
  %i.ox = getelementptr inbounds [8 x i8], ptr %.0176.lcssa, i64 %i.ou ; 23 uses
  %i.oy = sub nsw i64 %2, %.5.2                   ; 2 uses
  %i.oz = icmp sgt i64 %i.oy, 0
  br i1 %i.oz, label %bb.t, label %.split.i246.preheader.3

bb.t:                                             ; preds = %bb.s
  %.idx350 = shl nsw i64 %.5.2, 6
  %i.pa = getelementptr inbounds i8, ptr %i.ow, i64 %.idx350
  %i.pb = getelementptr inbounds [8 x i8], ptr %.0173.lcssa, i64 %.5.2
  %i.pc = tail call i32 @dgemm_kernel(i64 noundef 8, i64 noundef 1, i64 noundef %i.oy, double noundef -1.000000e+00, ptr noundef %i.pa, ptr noundef %i.pb, ptr noundef %i.ox, i64 noundef %7) #4 ; 0 uses
  br label %.split.i246.preheader.3

.split.i246.preheader.3:                          ; preds = %bb.t, %bb.s
  %i.pd = add nsw i64 %.5.2, -8                   ; 3 uses
  %.idx351 = shl nsw i64 %i.pd, 6
  %i.pe = getelementptr inbounds i8, ptr %i.ow, i64 %.idx351 ; 36 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 504
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !30
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 448
  %i.pi = getelementptr inbounds [8 x i8], ptr %.0173.lcssa, i64 %i.pd ; 8 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.pi, i64 56
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ox, i64 56 ; 2 uses
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !30
  %i.pl = fmul double %i.pg, %i.pk                ; 3 uses
  store double %i.pl, ptr %11, align 8, !tbaa !30
  store double %i.pl, ptr %i.pj, align 8, !tbaa !30
  %i.pm = fneg double %i.pl                       ; 7 uses
  %i.pn = load double, ptr %i.ph, align 8, !tbaa !30
  %i.po = load double, ptr %i.ox, align 8, !tbaa !30
  %i.pp = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.pn, double %i.po)
  store double %i.pp, ptr %i.ox, align 8, !tbaa !30
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 456
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !30
  %gep.us.i237.3.1 = getelementptr i8, ptr %i.ox, i64 8 ; 13 uses
  %i.ps = load double, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.pt = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.pr, double %i.ps)
  store double %i.pt, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pe, i64 464
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !30
  %gep.us.i237.3.2 = getelementptr i8, ptr %i.ox, i64 16 ; 11 uses
  %i.pw = load double, ptr %gep.us.i237.3.2, align 8, !tbaa !30
  %i.px = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.pv, double %i.pw)
  store double %i.px, ptr %gep.us.i237.3.2, align 8, !tbaa !30
  %i.py = getelementptr inbounds nuw i8, ptr %i.pe, i64 472
  %i.pz = load double, ptr %i.py, align 8, !tbaa !30
  %gep.us.i237.3.3 = getelementptr i8, ptr %i.ox, i64 24 ; 9 uses
  %i.qa = load double, ptr %gep.us.i237.3.3, align 8, !tbaa !30
  %i.qb = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.pz, double %i.qa)
  store double %i.qb, ptr %gep.us.i237.3.3, align 8, !tbaa !30
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pe, i64 480
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !30
  %gep.us.i237.3.4 = getelementptr i8, ptr %i.ox, i64 32 ; 7 uses
  %i.qe = load double, ptr %gep.us.i237.3.4, align 8, !tbaa !30
  %i.qf = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.qd, double %i.qe)
  store double %i.qf, ptr %gep.us.i237.3.4, align 8, !tbaa !30
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pe, i64 488
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !30
  %gep.us.i237.3.5 = getelementptr i8, ptr %i.ox, i64 40 ; 5 uses
  %i.qi = load double, ptr %gep.us.i237.3.5, align 8, !tbaa !30
  %i.qj = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.qh, double %i.qi)
  store double %i.qj, ptr %gep.us.i237.3.5, align 8, !tbaa !30
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pe, i64 496
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !30
  %gep.us.i237.3.6 = getelementptr i8, ptr %i.ox, i64 48 ; 3 uses
  %i.qm = load double, ptr %gep.us.i237.3.6, align 8, !tbaa !30
  %i.qn = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.ql, double %i.qm) ; 2 uses
  store double %i.qn, ptr %gep.us.i237.3.6, align 8, !tbaa !30
  %i.qo = getelementptr inbounds nuw i8, ptr %i.pe, i64 384
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pi, i64 48
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pe, i64 432
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !30
  %i.qs = fmul double %i.qr, %i.qn                ; 3 uses
  store double %i.qs, ptr %i.qp, align 8, !tbaa !30
  store double %i.qs, ptr %gep.us.i237.3.6, align 8, !tbaa !30
  %i.qt = fneg double %i.qs                       ; 6 uses
  %i.qu = load double, ptr %i.qo, align 8, !tbaa !30
  %i.qv = load double, ptr %i.ox, align 8, !tbaa !30
  %i.qw = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.qu, double %i.qv)
  store double %i.qw, ptr %i.ox, align 8, !tbaa !30
  %i.qx = getelementptr inbounds nuw i8, ptr %i.pe, i64 392
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !30
  %i.qz = load double, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.ra = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.qy, double %i.qz)
  store double %i.ra, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pe, i64 400
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !30
  %i.rd = load double, ptr %gep.us.i237.3.2, align 8, !tbaa !30
  %i.re = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.rc, double %i.rd)
  store double %i.re, ptr %gep.us.i237.3.2, align 8, !tbaa !30
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pe, i64 408
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !30
  %i.rh = load double, ptr %gep.us.i237.3.3, align 8, !tbaa !30
  %i.ri = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.rg, double %i.rh)
  store double %i.ri, ptr %gep.us.i237.3.3, align 8, !tbaa !30
  %i.rj = getelementptr inbounds nuw i8, ptr %i.pe, i64 416
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !30
  %i.rl = load double, ptr %gep.us.i237.3.4, align 8, !tbaa !30
  %i.rm = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.rk, double %i.rl)
  store double %i.rm, ptr %gep.us.i237.3.4, align 8, !tbaa !30
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pe, i64 424
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !30
  %i.rp = load double, ptr %gep.us.i237.3.5, align 8, !tbaa !30
  %i.rq = tail call double @llvm.fmuladd.f64(double %i.qt, double %i.ro, double %i.rp) ; 2 uses
  store double %i.rq, ptr %gep.us.i237.3.5, align 8, !tbaa !30
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pe, i64 320
  %i.rs = getelementptr inbounds nuw i8, ptr %i.pi, i64 40
  %i.rt = getelementptr inbounds nuw i8, ptr %i.pe, i64 360
  %i.ru = load double, ptr %i.rt, align 8, !tbaa !30
  %i.rv = fmul double %i.ru, %i.rq                ; 3 uses
  store double %i.rv, ptr %i.rs, align 8, !tbaa !30
  store double %i.rv, ptr %gep.us.i237.3.5, align 8, !tbaa !30
  %i.rw = fneg double %i.rv                       ; 5 uses
  %i.rx = load double, ptr %i.rr, align 8, !tbaa !30
  %i.ry = load double, ptr %i.ox, align 8, !tbaa !30
  %i.rz = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.rx, double %i.ry)
  store double %i.rz, ptr %i.ox, align 8, !tbaa !30
  %i.sa = getelementptr inbounds nuw i8, ptr %i.pe, i64 328
  %i.sb = load double, ptr %i.sa, align 8, !tbaa !30
  %i.sc = load double, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.sd = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.sb, double %i.sc)
  store double %i.sd, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.se = getelementptr inbounds nuw i8, ptr %i.pe, i64 336
  %i.sf = load double, ptr %i.se, align 8, !tbaa !30
  %i.sg = load double, ptr %gep.us.i237.3.2, align 8, !tbaa !30
  %i.sh = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.sf, double %i.sg)
  store double %i.sh, ptr %gep.us.i237.3.2, align 8, !tbaa !30
  %i.si = getelementptr inbounds nuw i8, ptr %i.pe, i64 344
  %i.sj = load double, ptr %i.si, align 8, !tbaa !30
  %i.sk = load double, ptr %gep.us.i237.3.3, align 8, !tbaa !30
  %i.sl = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.sj, double %i.sk)
  store double %i.sl, ptr %gep.us.i237.3.3, align 8, !tbaa !30
  %i.sm = getelementptr inbounds nuw i8, ptr %i.pe, i64 352
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !30
  %i.so = load double, ptr %gep.us.i237.3.4, align 8, !tbaa !30
  %i.sp = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.sn, double %i.so) ; 2 uses
  store double %i.sp, ptr %gep.us.i237.3.4, align 8, !tbaa !30
  %i.sq = getelementptr inbounds nuw i8, ptr %i.pe, i64 256
  %i.sr = getelementptr inbounds nuw i8, ptr %i.pi, i64 32
  %i.ss = getelementptr inbounds nuw i8, ptr %i.pe, i64 288
  %i.st = load double, ptr %i.ss, align 8, !tbaa !30
  %i.su = fmul double %i.st, %i.sp                ; 3 uses
  store double %i.su, ptr %i.sr, align 8, !tbaa !30
  store double %i.su, ptr %gep.us.i237.3.4, align 8, !tbaa !30
  %i.sv = fneg double %i.su                       ; 4 uses
  %i.sw = load double, ptr %i.sq, align 8, !tbaa !30
  %i.sx = load double, ptr %i.ox, align 8, !tbaa !30
  %i.sy = tail call double @llvm.fmuladd.f64(double %i.sv, double %i.sw, double %i.sx)
  store double %i.sy, ptr %i.ox, align 8, !tbaa !30
  %i.sz = getelementptr inbounds nuw i8, ptr %i.pe, i64 264
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !30
  %i.tb = load double, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.tc = tail call double @llvm.fmuladd.f64(double %i.sv, double %i.ta, double %i.tb)
  store double %i.tc, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.td = getelementptr inbounds nuw i8, ptr %i.pe, i64 272
  %i.te = load double, ptr %i.td, align 8, !tbaa !30
  %i.tf = load double, ptr %gep.us.i237.3.2, align 8, !tbaa !30
  %i.tg = tail call double @llvm.fmuladd.f64(double %i.sv, double %i.te, double %i.tf)
  store double %i.tg, ptr %gep.us.i237.3.2, align 8, !tbaa !30
  %i.th = getelementptr inbounds nuw i8, ptr %i.pe, i64 280
  %i.ti = load double, ptr %i.th, align 8, !tbaa !30
  %i.tj = load double, ptr %gep.us.i237.3.3, align 8, !tbaa !30
  %i.tk = tail call double @llvm.fmuladd.f64(double %i.sv, double %i.ti, double %i.tj) ; 2 uses
  store double %i.tk, ptr %gep.us.i237.3.3, align 8, !tbaa !30
  %i.tl = getelementptr inbounds nuw i8, ptr %i.pe, i64 192
  %i.tm = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %i.tn = getelementptr inbounds nuw i8, ptr %i.pe, i64 216
  %i.to = load double, ptr %i.tn, align 8, !tbaa !30
  %i.tp = fmul double %i.to, %i.tk                ; 3 uses
  store double %i.tp, ptr %i.tm, align 8, !tbaa !30
  store double %i.tp, ptr %gep.us.i237.3.3, align 8, !tbaa !30
  %i.tq = fneg double %i.tp                       ; 3 uses
  %i.tr = load double, ptr %i.tl, align 8, !tbaa !30
  %i.ts = load double, ptr %i.ox, align 8, !tbaa !30
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.tq, double %i.tr, double %i.ts)
  store double %i.tt, ptr %i.ox, align 8, !tbaa !30
  %i.tu = getelementptr inbounds nuw i8, ptr %i.pe, i64 200
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !30
  %i.tw = load double, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.tx = tail call double @llvm.fmuladd.f64(double %i.tq, double %i.tv, double %i.tw)
  store double %i.tx, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.ty = getelementptr inbounds nuw i8, ptr %i.pe, i64 208
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !30
  %i.ua = load double, ptr %gep.us.i237.3.2, align 8, !tbaa !30
  %i.ub = tail call double @llvm.fmuladd.f64(double %i.tq, double %i.tz, double %i.ua) ; 2 uses
  store double %i.ub, ptr %gep.us.i237.3.2, align 8, !tbaa !30
  %i.uc = getelementptr inbounds nuw i8, ptr %i.pe, i64 128
  %i.ud = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.ue = getelementptr inbounds nuw i8, ptr %i.pe, i64 144
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !30
  %i.ug = fmul double %i.uf, %i.ub                ; 3 uses
  store double %i.ug, ptr %i.ud, align 8, !tbaa !30
  store double %i.ug, ptr %gep.us.i237.3.2, align 8, !tbaa !30
  %i.uh = fneg double %i.ug                       ; 2 uses
  %i.ui = load double, ptr %i.uc, align 8, !tbaa !30
  %i.uj = load double, ptr %i.ox, align 8, !tbaa !30
  %i.uk = tail call double @llvm.fmuladd.f64(double %i.uh, double %i.ui, double %i.uj)
  store double %i.uk, ptr %i.ox, align 8, !tbaa !30
  %i.ul = getelementptr inbounds nuw i8, ptr %i.pe, i64 136
  %i.um = load double, ptr %i.ul, align 8, !tbaa !30
  %i.un = load double, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.uo = tail call double @llvm.fmuladd.f64(double %i.uh, double %i.um, double %i.un) ; 2 uses
  store double %i.uo, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.up = getelementptr inbounds nuw i8, ptr %i.pe, i64 64
  %i.uq = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.ur = getelementptr inbounds nuw i8, ptr %i.pe, i64 72
  %i.us = load double, ptr %i.ur, align 8, !tbaa !30
  %i.ut = fmul double %i.us, %i.uo                ; 3 uses
  store double %i.ut, ptr %i.uq, align 8, !tbaa !30
  store double %i.ut, ptr %gep.us.i237.3.1, align 8, !tbaa !30
  %i.uu = fneg double %i.ut
  %i.uv = load double, ptr %i.up, align 8, !tbaa !30
  %i.uw = load double, ptr %i.ox, align 8, !tbaa !30
  %i.ux = tail call double @llvm.fmuladd.f64(double %i.uu, double %i.uv, double %i.uw) ; 2 uses
  store double %i.ux, ptr %i.ox, align 8, !tbaa !30
  %i.uy = load double, ptr %i.pe, align 8, !tbaa !30
  %i.uz = fmul double %i.uy, %i.ux                ; 2 uses
  store double %i.uz, ptr %i.pi, align 8, !tbaa !30
  store double %i.uz, ptr %i.ox, align 8, !tbaa !30
  br label %.loopexit278

.loopexit278:                                     ; preds = %solve.exit251.2, %.split.i246.preheader.3, %.preheader279
  %.6 = phi i64 [ %i.kq, %.preheader279 ], [ %.5.2, %solve.exit251.2 ], [ %i.pd, %.split.i246.preheader.3 ]
  br i1 %i.kt, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.loopexit278
  %i.va = getelementptr inbounds [8 x i8], ptr %.0176.lcssa, i64 %i.kv
end_hunk_0
