Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dstein?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dstein_:bb.a
  %i.fh = fadd double %i.fb, %i.fg                ; 2 uses
  %i.fi = fcmp oge double %i.es, %i.fh
  %i.fj = select i1 %i.fi, double %i.es, double %i.fh ; 2 uses
  %exitcond391.not.1 = icmp eq i64 %indvars.iv.next388.1, %i.cy
  br i1 %exitcond391.not.1, label %._crit_edge337, label %.lr.ph336, !llvm.loop !9

._crit_edge337:                                   ; preds = %.lr.ph336.prol.loopexit, %.lr.ph336, %bb.o
  %.1278.lcssa = phi double [ %i.dg, %bb.o ], [ %.lcssa.unr, %.lr.ph336.prol.loopexit ], [ %i.fj, %.lr.ph336 ] ; 2 uses
  %i.fk = fmul double %.1278.lcssa, 1.000000e-03
  %i.fl = sitofp i32 %i.cd to double
  %i.fm = fdiv double 1.000000e-01, %i.fl
  %i.fn = call double @sqrt(double noundef %i.fm) #6
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %._crit_edge337
  %.1286 = phi i32 [ %.0285370, %bb.n ], [ %.0282371, %._crit_edge337 ] ; 2 uses
  %.1281 = phi double [ %.0280372, %bb.n ], [ %i.fk, %._crit_edge337 ] ; 4 uses
  %.2 = phi double [ %.0277373, %bb.n ], [ %.1278.lcssa, %._crit_edge337 ] ; 4 uses
  %.1276 = phi double [ %.0275374, %bb.n ], [ %i.fn, %._crit_edge337 ] ; 4 uses
  %i.fo = load i32, ptr %3, align 4, !tbaa !17    ; 2 uses
  %.not311352 = icmp sgt i32 %.0282371, %i.fo
  br i1 %.not311352, label %._crit_edge360, label %.lr.ph359

.lr.ph359:                                        ; preds = %bb.p
  %i.fp = sext i32 %.0284 to i64                  ; 5 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.fp
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.fp ; 2 uses
  %i.fs = add nsw i32 %.0284, -1
  %i.ft = mul i32 %i.q, %.0282371
  %i.fu = add i32 %i.ft, 1
  %i.fv = sext i32 %.0282371 to i64
  %i.fw = add i32 %i.fo, 1
  %i.fx = sub i32 %i.fw, %.0282371
  %wide.trip.count418 = zext i32 %i.fx to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.s, i64 %i.fp
  %invariant.gep448 = getelementptr [8 x i8], ptr %i.s, i64 %i.fp
  %invariant.gep450 = getelementptr [8 x i8], ptr %i.s, i64 %i.fp
  %i.fy = mul i32 %i.q, %.0282371
  %i.fz = add i32 %.0284, %i.fy                   ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph359, %._crit_edge351
  %i.ga = phi i32 [ %i.cd, %.lr.ph359 ], [ %i.mo, %._crit_edge351 ]
  %indvars.iv413 = phi i64 [ 0, %.lr.ph359 ], [ %indvars.iv.next414, %._crit_edge351 ] ; 5 uses
  %indvars.iv411 = phi i64 [ %i.fv, %.lr.ph359 ], [ %indvars.iv.next412, %._crit_edge351 ] ; 9 uses
  %.1357 = phi double [ %.0375, %.lr.ph359 ], [ %i.qc, %._crit_edge351 ] ; 6 uses
  %.2287356 = phi i32 [ %.1286, %.lr.ph359 ], [ %.7, %._crit_edge351 ] ; 3 uses
  %i.gb = trunc i64 %indvars.iv413 to i32
  %i.gc = mul i32 %i.q, %i.gb
  %i.gd = add i32 %i.gc, %i.fz
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 3
  %i.gg = trunc i64 %indvars.iv413 to i32
  %i.gh = mul i32 %i.q, %i.gg
  %i.gi = add i32 %i.gh, %i.fz                    ; 2 uses
  %i.gj = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.gk = mul i32 %i.q, %i.gj
  %i.gl = add i32 %i.fu, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %i.gn = shl nsw i64 %i.gm, 3
  %scevgep402 = getelementptr i8, ptr %scevgep, i64 %i.gn
  %i.go = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv411
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !17
  %i.gq = zext i32 %i.gp to i64
  %.not312 = icmp eq i64 %indvars.iv420, %i.gq
  %i.gr = trunc nsw i64 %indvars.iv411 to i32     ; 11 uses
  br i1 %.not312, label %bb.r, label %._crit_edge360

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv411
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !19 ; 3 uses
  store double %i.gt, ptr %i.g, align 8, !tbaa !19
  %i.gu = icmp eq i32 %i.ga, 1
  br i1 %i.gu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store double 1.000000e+00, ptr %9, align 8, !tbaa !19
  br label %bb.aj

bb.t:                                             ; preds = %bb.r
  %.not313 = icmp eq i64 %indvars.iv413, 0        ; 4 uses
  br i1 %.not313, label %.outer, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gv = fmul double %i.av, %i.gt                ; 3 uses
  %i.gw = fcmp oge double %i.gv, 0.000000e+00
  %i.gx = fneg double %i.gv
  %i.gy = select i1 %i.gw, double %i.gv, double %i.gx
  %i.gz = fmul double %i.gy, 1.000000e+01         ; 2 uses
  %i.ha = fsub double %i.gt, %.1357
  %i.hb = fcmp olt double %i.ha, %i.gz
  br i1 %i.hb, label %bb.v, label %.outer

bb.v:                                             ; preds = %bb.u
  %i.hc = fadd double %.1357, %i.gz
  store double %i.hc, ptr %i.g, align 8, !tbaa !19
  br label %.outer

.outer:                                           ; preds = %bb.u, %bb.v, %bb.t
  call void @dlarnv_(ptr noundef nonnull @c__2, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef %9) #6
  call void @dcopy_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.fq, ptr noundef nonnull @c__1, ptr noundef %i.bg, ptr noundef nonnull @c__1) #6
  %i.hd = load i32, ptr %i.h, align 4, !tbaa !17
  %i.he = add nsw i32 %i.hd, -1
  store i32 %i.he, ptr %i.d, align 4, !tbaa !17
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.fr, ptr noundef nonnull @c__1, ptr noundef %i.bj, ptr noundef nonnull @c__1) #6
  %i.hf = load i32, ptr %i.h, align 4, !tbaa !17
  %i.hg = add nsw i32 %i.hf, -1
  store i32 %i.hg, ptr %i.d, align 4, !tbaa !17
  call void @dcopy_(ptr noundef nonnull %i.d, ptr noundef nonnull %i.fr, ptr noundef nonnull @c__1, ptr noundef %i.bm, ptr noundef nonnull @c__1) #6
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !19
  call void @dlagtf_(ptr noundef nonnull %i.h, ptr noundef %i.bg, ptr noundef nonnull %i.g, ptr noundef %i.bj, ptr noundef %i.bm, ptr noundef nonnull %i.j, ptr noundef %i.bp, ptr noundef %10, ptr noundef nonnull %i.f) #6
  %i.hh = add nsw i64 %indvars.iv411, -1          ; 3 uses
  %i.hi = trunc nsw i64 %i.hh to i32
  br label %bb.x

bb.w:                                             ; preds = %.loopexit
  %i.hj = add nuw nsw i32 %i.hk, 1
  %exitcond395 = icmp eq i32 %i.hk, 5
  br i1 %exitcond395, label %.loopexit397, label %bb.x

bb.x:                                             ; preds = %.outer, %bb.w
  %i.hk = phi i32 [ 1, %.outer ], [ %i.hj, %bb.w ] ; 5 uses
  %.3463 = phi i32 [ %.2287356, %.outer ], [ %.5, %bb.w ] ; 2 uses
  %i.hl = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef %9, ptr noundef nonnull @c__1) #6
  %i.hm = load i32, ptr %i.h, align 4, !tbaa !17  ; 2 uses
  %i.hn = add nsw i32 %i.hm, %i.ax
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !19 ; 3 uses
  %i.hr = fcmp oge double %i.hq, 0.000000e+00
  %i.hs = fneg double %i.hq
  %i.ht = select i1 %i.hr, double %i.hq, double %i.hs ; 2 uses
  %i.hu = sitofp i32 %i.hm to double
  %i.hv = fmul double %.2, %i.hu
  %i.hw = fcmp oge double %i.av, %i.ht
  %i.hx = select i1 %i.hw, double %i.av, double %i.ht
  %i.hy = fmul double %i.hv, %i.hx
  %i.hz = sext i32 %i.hl to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !19 ; 3 uses
  %i.ic = fcmp oge double %i.ib, 0.000000e+00
  %i.id = fneg double %i.ib
  %i.ie = select i1 %i.ic, double %i.ib, double %i.id
  %i.if = fdiv double %i.hy, %i.ie
  store double %i.if, ptr %i.i, align 8, !tbaa !19
  call void @dscal_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef %9, ptr noundef nonnull @c__1) #6
  call void @dlagts_(ptr noundef nonnull @c_n1, ptr noundef nonnull %i.h, ptr noundef %i.bg, ptr noundef %i.bj, ptr noundef %i.bm, ptr noundef %i.bp, ptr noundef %10, ptr noundef %9, ptr noundef nonnull %i.j, ptr noundef nonnull %i.f) #6
  br i1 %.not313, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ig = load double, ptr %i.g, align 8, !tbaa !19
  %i.ih = fsub double %i.ig, %.1357
  %i.ii = call double @llvm.fabs.f64(double %i.ih)
  %i.ij = fcmp ogt double %i.ii, %.1281
  %spec.select318 = select i1 %i.ij, i32 %i.gr, i32 %.3463 ; 4 uses
  %.not314 = icmp eq i32 %spec.select318, %i.gr
  br i1 %.not314, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 %i.hi, ptr %i.d, align 4, !tbaa !17
  %i.ik = sext i32 %spec.select318 to i64         ; 2 uses
  %.not315338.not = icmp sgt i64 %indvars.iv411, %i.ik
  br i1 %.not315338.not, label %.lr.ph341, label %.loopexit

.lr.ph341:                                        ; preds = %bb.z, %.lr.ph341
  %indvars.iv392 = phi i64 [ %indvars.iv.next393, %.lr.ph341 ], [ %i.ik, %bb.z ] ; 3 uses
  %i.il = mul nsw i64 %indvars.iv392, %i.bq
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.il ; 2 uses
  %i.im = call double @ddot_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1, ptr noundef %gep, ptr noundef nonnull @c__1) #6
  %i.in = fneg double %i.im
  store double %i.in, ptr %i.k, align 8, !tbaa !19
  call void @daxpy_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef %gep, ptr noundef nonnull @c__1, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %indvars.iv.next393 = add nsw i64 %indvars.iv392, 1
  %i.io = load i32, ptr %i.d, align 4, !tbaa !17
  %i.ip = sext i32 %i.io to i64
  %.not315.not = icmp slt i64 %indvars.iv392, %i.ip
  br i1 %.not315.not, label %.lr.ph341, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph341, %bb.z, %bb.y, %bb.x
  %.5 = phi i32 [ %.3463, %bb.x ], [ %i.gr, %bb.y ], [ %spec.select318, %bb.z ], [ %spec.select318, %.lr.ph341 ] ; 4 uses
  %i.iq = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ir
  %i.it = load double, ptr %i.is, align 8, !tbaa !19
  %i.iu = call double @llvm.fabs.f64(double %i.it)
  %i.iv = fcmp olt double %i.iu, %.1276
  br i1 %i.iv, label %bb.w, label %.outer.1

.outer.1:                                         ; preds = %.loopexit
  %smax.1 = call i32 @llvm.smax.i32(i32 %i.hk, i32 5)
  %i.iw = trunc nsw i64 %i.hh to i32
  %exitcond395.1464 = icmp samesign ugt i32 %i.hk, 4
  br i1 %exitcond395.1464, label %.loopexit397, label %.lr.ph

bb.aa:                                            ; preds = %.loopexit.1
  %exitcond395.1 = icmp eq i32 %i.ix, %smax.1
  br i1 %exitcond395.1, label %.loopexit397, label %.lr.ph

.lr.ph:                                           ; preds = %.outer.1, %bb.aa
  %.in = phi i32 [ %i.ix, %bb.aa ], [ %i.hk, %.outer.1 ] ; 2 uses
  %.3.1465 = phi i32 [ %.5.1, %bb.aa ], [ %.5, %.outer.1 ] ; 2 uses
  %i.ix = add i32 %.in, 1                         ; 4 uses
  %i.iy = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %i.iz = load i32, ptr %i.h, align 4, !tbaa !17  ; 2 uses
  %i.ja = add nsw i32 %i.iz, %i.ax
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !19 ; 3 uses
  %i.je = fcmp oge double %i.jd, 0.000000e+00
  %i.jf = fneg double %i.jd
  %i.jg = select i1 %i.je, double %i.jd, double %i.jf ; 2 uses
  %i.jh = sitofp i32 %i.iz to double
  %i.ji = fmul double %.2, %i.jh
  %i.jj = fcmp oge double %i.av, %i.jg
  %i.jk = select i1 %i.jj, double %i.av, double %i.jg
  %i.jl = fmul double %i.ji, %i.jk
  %i.jm = sext i32 %i.iy to i64
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.jm
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !19 ; 3 uses
  %i.jp = fcmp oge double %i.jo, 0.000000e+00
  %i.jq = fneg double %i.jo
  %i.jr = select i1 %i.jp, double %i.jo, double %i.jq
  %i.js = fdiv double %i.jl, %i.jr
  store double %i.js, ptr %i.i, align 8, !tbaa !19
  call void @dscal_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  call void @dlagts_(ptr noundef nonnull @c_n1, ptr noundef nonnull %i.h, ptr noundef %i.bg, ptr noundef %i.bj, ptr noundef %i.bm, ptr noundef %i.bp, ptr noundef %10, ptr noundef nonnull %9, ptr noundef nonnull %i.j, ptr noundef nonnull %i.f) #6
  br i1 %.not313, label %.loopexit.1, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.jt = load double, ptr %i.g, align 8, !tbaa !19
  %i.ju = fsub double %i.jt, %.1357
  %i.jv = call double @llvm.fabs.f64(double %i.ju)
  %i.jw = fcmp ogt double %i.jv, %.1281
  %spec.select318.1 = select i1 %i.jw, i32 %i.gr, i32 %.3.1465 ; 4 uses
  %.not314.1 = icmp eq i32 %spec.select318.1, %i.gr
  br i1 %.not314.1, label %.loopexit.1, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.iw, ptr %i.d, align 4, !tbaa !17
  %i.jx = sext i32 %spec.select318.1 to i64       ; 2 uses
  %.not315338.not.1 = icmp sgt i64 %indvars.iv411, %i.jx
  br i1 %.not315338.not.1, label %.lr.ph341.1, label %.loopexit.1

.lr.ph341.1:                                      ; preds = %bb.ac, %.lr.ph341.1
  %indvars.iv392.1 = phi i64 [ %indvars.iv.next393.1, %.lr.ph341.1 ], [ %i.jx, %bb.ac ] ; 3 uses
  %i.jy = mul nsw i64 %indvars.iv392.1, %i.bq
  %gep449 = getelementptr [8 x i8], ptr %invariant.gep448, i64 %i.jy ; 2 uses
  %i.jz = call double @ddot_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1, ptr noundef %gep449, ptr noundef nonnull @c__1) #6
  %i.ka = fneg double %i.jz
  store double %i.ka, ptr %i.k, align 8, !tbaa !19
  call void @daxpy_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef %gep449, ptr noundef nonnull @c__1, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %indvars.iv.next393.1 = add nsw i64 %indvars.iv392.1, 1
  %i.kb = load i32, ptr %i.d, align 4, !tbaa !17
  %i.kc = sext i32 %i.kb to i64
  %.not315.not.1 = icmp slt i64 %indvars.iv392.1, %i.kc
  br i1 %.not315.not.1, label %.lr.ph341.1, label %.loopexit.1, !llvm.loop !10

.loopexit.1:                                      ; preds = %.lr.ph341.1, %bb.ac, %bb.ab, %.lr.ph
  %.5.1 = phi i32 [ %.3.1465, %.lr.ph ], [ %i.gr, %bb.ab ], [ %spec.select318.1, %bb.ac ], [ %spec.select318.1, %.lr.ph341.1 ] ; 4 uses
  %i.kd = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ke
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !19
  %i.kh = call double @llvm.fabs.f64(double %i.kg)
  %i.ki = fcmp olt double %i.kh, %.1276
  br i1 %i.ki, label %bb.aa, label %.outer.2

.outer.2:                                         ; preds = %.loopexit.1
  %smax.2 = call i32 @llvm.smax.i32(i32 %i.ix, i32 5)
  %i.kj = trunc nsw i64 %i.hh to i32
  %exitcond395.2466 = icmp sgt i32 %i.ix, 4
  br i1 %exitcond395.2466, label %.loopexit397, label %.lr.ph468

.lr.ph468:                                        ; preds = %.outer.2
  %i.kk = add i32 %.in, 2
  br label %bb.ae

bb.ad:                                            ; preds = %.loopexit.2
  %i.kl = add i32 %i.km, 1
  %exitcond395.2 = icmp eq i32 %i.km, %smax.2
  br i1 %exitcond395.2, label %.loopexit397, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph468, %bb.ad
  %i.km = phi i32 [ %i.kk, %.lr.ph468 ], [ %i.kl, %bb.ad ] ; 2 uses
  %.3.2467 = phi i32 [ %.5.1, %.lr.ph468 ], [ %.5.2, %bb.ad ] ; 2 uses
  %i.kn = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %i.ko = load i32, ptr %i.h, align 4, !tbaa !17  ; 2 uses
  %i.kp = add nsw i32 %i.ko, %i.ax
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.kq
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !19 ; 3 uses
  %i.kt = fcmp oge double %i.ks, 0.000000e+00
  %i.ku = fneg double %i.ks
  %i.kv = select i1 %i.kt, double %i.ks, double %i.ku ; 2 uses
  %i.kw = sitofp i32 %i.ko to double
  %i.kx = fmul double %.2, %i.kw
  %i.ky = fcmp oge double %i.av, %i.kv
  %i.kz = select i1 %i.ky, double %i.av, double %i.kv
  %i.la = fmul double %i.kx, %i.kz
  %i.lb = sext i32 %i.kn to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.lb
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !19 ; 3 uses
  %i.le = fcmp oge double %i.ld, 0.000000e+00
  %i.lf = fneg double %i.ld
  %i.lg = select i1 %i.le, double %i.ld, double %i.lf
  %i.lh = fdiv double %i.la, %i.lg
  store double %i.lh, ptr %i.i, align 8, !tbaa !19
  call void @dscal_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  call void @dlagts_(ptr noundef nonnull @c_n1, ptr noundef nonnull %i.h, ptr noundef %i.bg, ptr noundef %i.bj, ptr noundef %i.bm, ptr noundef %i.bp, ptr noundef %10, ptr noundef nonnull %9, ptr noundef nonnull %i.j, ptr noundef nonnull %i.f) #6
  br i1 %.not313, label %.loopexit.2, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.li = load double, ptr %i.g, align 8, !tbaa !19
  %i.lj = fsub double %i.li, %.1357
  %i.lk = call double @llvm.fabs.f64(double %i.lj)
  %i.ll = fcmp ogt double %i.lk, %.1281
  %spec.select318.2 = select i1 %i.ll, i32 %i.gr, i32 %.3.2467 ; 4 uses
  %.not314.2 = icmp eq i32 %spec.select318.2, %i.gr
  br i1 %.not314.2, label %.loopexit.2, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 %i.kj, ptr %i.d, align 4, !tbaa !17
  %i.lm = sext i32 %spec.select318.2 to i64       ; 2 uses
  %.not315338.not.2 = icmp sgt i64 %indvars.iv411, %i.lm
  br i1 %.not315338.not.2, label %.lr.ph341.2, label %.loopexit.2

.lr.ph341.2:                                      ; preds = %bb.ag, %.lr.ph341.2
  %indvars.iv392.2 = phi i64 [ %indvars.iv.next393.2, %.lr.ph341.2 ], [ %i.lm, %bb.ag ] ; 3 uses
  %i.ln = mul nsw i64 %indvars.iv392.2, %i.bq
  %gep451 = getelementptr [8 x i8], ptr %invariant.gep450, i64 %i.ln ; 2 uses
  %i.lo = call double @ddot_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1, ptr noundef %gep451, ptr noundef nonnull @c__1) #6
  %i.lp = fneg double %i.lo
  store double %i.lp, ptr %i.k, align 8, !tbaa !19
  call void @daxpy_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, ptr noundef %gep451, ptr noundef nonnull @c__1, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %indvars.iv.next393.2 = add nsw i64 %indvars.iv392.2, 1
  %i.lq = load i32, ptr %i.d, align 4, !tbaa !17
  %i.lr = sext i32 %i.lq to i64
  %.not315.not.2 = icmp slt i64 %indvars.iv392.2, %i.lr
  br i1 %.not315.not.2, label %.lr.ph341.2, label %.loopexit.2, !llvm.loop !10

.loopexit.2:                                      ; preds = %.lr.ph341.2, %bb.ag, %bb.af, %bb.ae
  %.5.2 = phi i32 [ %.3.2467, %bb.ae ], [ %i.gr, %bb.af ], [ %spec.select318.2, %bb.ag ], [ %spec.select318.2, %.lr.ph341.2 ] ; 3 uses
  %i.ls = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.lt
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !19
  %i.lw = call double @llvm.fabs.f64(double %i.lv)
  %i.lx = fcmp olt double %i.lw, %.1276
  br i1 %i.lx, label %bb.ad, label %.loopexit320

.loopexit397:                                     ; preds = %bb.w, %bb.aa, %bb.ad, %.outer.1, %.outer.2
  %.3.lcssa = phi i32 [ %.5.2, %bb.ad ], [ %.5.1, %bb.aa ], [ %.5.1, %.outer.2 ], [ %.5, %.outer.1 ], [ %.5, %bb.w ]
  %i.ly = load i32, ptr %12, align 4, !tbaa !17
  %i.lz = add nsw i32 %i.ly, 1                    ; 2 uses
  store i32 %i.lz, ptr %12, align 4, !tbaa !17
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ma
  store i32 %i.gr, ptr %i.mb, align 4, !tbaa !17
  br label %.loopexit320

.loopexit320:                                     ; preds = %.loopexit.2, %.loopexit397
  %.6 = phi i32 [ %.3.lcssa, %.loopexit397 ], [ %.5.2, %.loopexit.2 ]
  %i.mc = call double @dnrm2_(ptr noundef nonnull %i.h, ptr noundef %9, ptr noundef nonnull @c__1) #6
  %i.md = fdiv double 1.000000e+00, %i.mc
  store double %i.md, ptr %i.i, align 8, !tbaa !19
  %i.me = call i32 @idamax_(ptr noundef nonnull %i.h, ptr noundef %9, ptr noundef nonnull @c__1) #6
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.mf
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !19
  %i.mi = fcmp olt double %i.mh, 0.000000e+00
  br i1 %i.mi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.loopexit320
  %i.mj = load double, ptr %i.i, align 8, !tbaa !19
  %i.mk = fneg double %i.mj
  store double %i.mk, ptr %i.i, align 8, !tbaa !19
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit320
  call void @dscal_(ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %9, ptr noundef nonnull @c__1) #6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.s
  %.7 = phi i32 [ %.2287356, %bb.s ], [ %.6, %bb.ai ] ; 2 uses
  %i.ml = load i32, ptr %0, align 4, !tbaa !17    ; 2 uses
  %.not316342 = icmp slt i32 %i.ml, 1
  br i1 %.not316342, label %._crit_edge346, label %.lr.ph345

.lr.ph345:                                        ; preds = %bb.aj
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = shl nuw nsw i64 %i.mm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep402, i8 0, i64 %i.mn, i1 false), !tbaa !19
  br label %._crit_edge346

._crit_edge346:                                   ; preds = %.lr.ph345, %bb.aj
  %i.mo = load i32, ptr %i.h, align 4, !tbaa !17  ; 8 uses
  store i32 %i.mo, ptr %i.d, align 4, !tbaa !17
  %.not317347 = icmp slt i32 %i.mo, 1
  br i1 %.not317347, label %._crit_edge351, label %iter.check

iter.check:                                       ; preds = %._crit_edge346
  %i.mp = trunc i64 %indvars.iv411 to i32
  %i.mq = mul i32 %i.q, %i.mp
  %i.mr = add i32 %i.fs, %i.mq                    ; 11 uses
  %i.ms = add nuw i32 %i.mo, 1
  %wide.trip.count409 = zext i32 %i.ms to i64     ; 3 uses
  %i.mt = zext nneg i32 %i.mo to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.mo, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.mu = add nsw i64 %wide.trip.count409, -2     ; 2 uses
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = add i32 %i.gi, %i.mv
  %i.mx = icmp slt i32 %i.mw, %i.gi
  %i.my = icmp ugt i64 %i.mu, 4294967295
  %i.mz = or i1 %i.mx, %i.my
  %.reass504 = add i64 %i.gf, %invariant.op503
  %diff.check = icmp ult i64 %.reass504, 127
  %or.cond480 = select i1 %i.mz, i1 true, i1 %diff.check
  br i1 %or.cond480, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check470 = icmp ult i32 %i.mo, 16
  br i1 %min.iters.check470, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.na = and i64 %i.mt, 12
  %n.vec = and i64 %i.mt, 2147483632              ; 4 uses
  %i.nb = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nc = getelementptr [8 x i8], ptr %9, i64 %index ; 4 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 64
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 96
  %wide.load = load <4 x double>, ptr %i.nc, align 8, !tbaa !19
  %wide.load471 = load <4 x double>, ptr %i.nd, align 8, !tbaa !19
  %wide.load472 = load <4 x double>, ptr %i.ne, align 8, !tbaa !19
  %wide.load473 = load <4 x double>, ptr %i.nf, align 8, !tbaa !19
  %i.ng = trunc i64 %index to i32
  %i.nh = or disjoint i32 %i.ng, 1
  %i.ni = add i32 %i.mr, %i.nh
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.nj ; 4 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 64
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 96
  store <4 x double> %wide.load, ptr %i.nk, align 8, !tbaa !19
  store <4 x double> %wide.load471, ptr %i.nl, align 8, !tbaa !19
  store <4 x double> %wide.load472, ptr %i.nm, align 8, !tbaa !19
  store <4 x double> %wide.load473, ptr %i.nn, align 8, !tbaa !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.no = icmp eq i64 %index.next, %n.vec
  br i1 %i.no, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.mt
  br i1 %cmp.n, label %._crit_edge351, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.na, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec474 = and i64 %i.mt, 2147483644           ; 3 uses
  %i.np = or disjoint i64 %n.vec474, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index475 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next477, %vec.epilog.vector.body ] ; 3 uses
  %i.nq = getelementptr [8 x i8], ptr %9, i64 %index475
  %wide.load476 = load <4 x double>, ptr %i.nq, align 8, !tbaa !19
  %i.nr = trunc i64 %index475 to i32
  %i.ns = or disjoint i32 %i.nr, 1
  %i.nt = add i32 %i.mr, %i.ns
end_hunk_0
