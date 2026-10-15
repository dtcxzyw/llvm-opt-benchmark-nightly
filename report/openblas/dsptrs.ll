Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsptrs?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dsptrs_:bb.a
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge516, %bb.z
  %.pre-phi521 = phi i64 [ %.pre520, %._crit_edge516 ], [ %i.gs, %bb.z ]
  %.pre-phi = phi i64 [ %.pre517, %._crit_edge516 ], [ %i.go, %bb.z ]
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.pre-phi
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !18
  %i.gz = fdiv double 1.000000e+00, %i.gy
  store double %i.gz, ptr %i.b, align 8, !tbaa !18
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.pre-phi521
  call void @dscal_(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef %i.ha, ptr noundef nonnull %6) #5
  %i.hb = load i32, ptr %1, align 4, !tbaa !16    ; 2 uses
  %i.hc = add i32 %.4492, %.4434.neg493
  %i.hd = add i32 %i.hc, %i.hb
  br label %bb.ag

bb.ab:                                            ; preds = %bb.v
  %i.he = sub nsw i32 0, %i.gd
  %i.hf = add nuw nsw i32 %.4434491, 1            ; 4 uses
  %.not459 = icmp eq i32 %i.hf, %i.he
  br i1 %.not459, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hg = add nsw i32 %i.hf, %i.e
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.hh
  %i.hj = sub nsw i32 %i.e, %i.gd
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.hk
  call void @dswap_(ptr noundef nonnull %2, ptr noundef %i.hi, ptr noundef nonnull %6, ptr noundef %i.hl, ptr noundef nonnull %6) #5
  %.pre508 = load i32, ptr %1, align 4, !tbaa !16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hm = phi i32 [ %.pre508, %bb.ac ], [ %i.ga, %bb.ab ] ; 3 uses
  %i.hn = add nsw i32 %i.hm, -1
  %i.ho = icmp slt i32 %.4434491, %i.hn
  br i1 %i.ho, label %bb.ae, label %._crit_edge515

._crit_edge515:                                   ; preds = %bb.ad
  %.pre522 = sext i32 %.4492 to i64
  %.pre524 = add i32 %.4492, %.4434.neg493
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hp = xor i32 %.4434491, -1                   ; 2 uses
  %i.hq = add i32 %i.hm, %i.hp
  store i32 %i.hq, ptr %i.a, align 4, !tbaa !16
  %i.hr = sext i32 %.4492 to i64                  ; 2 uses
  %i.hs = getelementptr [8 x i8], ptr %i.c, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.hs, i64 16
  %i.hu = add nsw i32 %.4434491, %i.e
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.hv
  %i.hx = add i32 %i.u, %.4434491
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.hy ; 2 uses
  call void @dger_(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.ht, ptr noundef nonnull @c__1, ptr noundef %i.hw, ptr noundef nonnull %6, ptr noundef %i.hz, ptr noundef nonnull %6) #5
  %i.ia = load i32, ptr %1, align 4, !tbaa !16    ; 2 uses
  %i.ib = add i32 %i.ia, %i.hp
  store i32 %i.ib, ptr %i.a, align 4, !tbaa !16
  %i.ic = add i32 %.4492, %.4434.neg493           ; 2 uses
  %i.id = add i32 %i.ic, %i.ia
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr [8 x i8], ptr %i.c, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.if, i64 16
  %i.ih = add nsw i32 %i.hf, %i.e
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ii
  call void @dger_(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.ig, ptr noundef nonnull @c__1, ptr noundef %i.ij, ptr noundef nonnull %6, ptr noundef %i.hz, ptr noundef nonnull %6) #5
  %.pre509 = load i32, ptr %1, align 4, !tbaa !16
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge515, %bb.ae
  %.pre-phi525 = phi i32 [ %.pre524, %._crit_edge515 ], [ %i.ic, %bb.ae ]
  %.pre-phi523 = phi i64 [ %.pre522, %._crit_edge515 ], [ %i.hr, %bb.ae ]
  %i.ik = phi i32 [ %i.hm, %._crit_edge515 ], [ %.pre509, %bb.ae ] ; 3 uses
  %i.il = getelementptr [8 x i8], ptr %i.c, i64 %.pre-phi523 ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 8
  %i.in = load double, ptr %i.im, align 8, !tbaa !18
  %i.io = load double, ptr %i.il, align 8, !tbaa !18
  %i.ip = add i32 %.pre-phi525, %i.ik
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr [8 x i8], ptr %i.c, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.ir, i64 8
  %i.it = load double, ptr %i.is, align 8, !tbaa !18
  %i.iu = insertelement <2 x double> poison, double %i.it, i64 0
  %i.iv = insertelement <2 x double> %i.iu, double %i.io, i64 1
  %i.iw = insertelement <2 x double> poison, double %i.in, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer ; 11 uses
  %i.iy = fdiv <2 x double> %i.iv, %i.ix          ; 12 uses
  %i.iz = extractelement <2 x double> %i.iy, i64 0
  %i.ja = extractelement <2 x double> %i.iy, i64 1
  %i.jb = call double @llvm.fmuladd.f64(double %i.ja, double %i.iz, double -1.000000e+00) ; 6 uses
  %i.jc = load i32, ptr %2, align 4, !tbaa !16    ; 6 uses
  store i32 %i.jc, ptr %i.a, align 4, !tbaa !16
  %.not460486 = icmp slt i32 %i.jc, 1
  br i1 %.not460486, label %._crit_edge490, label %.lr.ph489.lver.check

.lr.ph489.lver.check:                             ; preds = %bb.af
  %i.jd = zext nneg i32 %i.hf to i64
  %invariant.gep553 = getelementptr [8 x i8], ptr %i.g, i64 %i.gb ; 10 uses
  %invariant.gep555 = getelementptr [8 x i8], ptr %i.g, i64 %i.jd ; 5 uses
  br i1 %ident.check574.not, label %.lr.ph489.ph, label %.lr.ph489.lver.orig.preheader

.lr.ph489.lver.orig.preheader:                    ; preds = %.lr.ph489.lver.check
  %i.je = zext nneg i32 %i.jc to i64              ; 2 uses
  %xtraiter582 = and i64 %i.je, 3                 ; 3 uses
  %i.jf = icmp ult i32 %i.jc, 4
  br i1 %i.jf, label %.lr.ph489.lver.orig.epil.preheader, label %.lr.ph489.lver.orig.preheader.new

.lr.ph489.lver.orig.preheader.new:                ; preds = %.lr.ph489.lver.orig.preheader
  %unroll_iter = and i64 %i.je, 2147483644
  %i.jg = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jk = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph489.lver.orig

.lr.ph489.lver.orig:                              ; preds = %.lr.ph489.lver.orig, %.lr.ph489.lver.orig.preheader.new
  %indvars.iv503.lver.orig = phi i64 [ 1, %.lr.ph489.lver.orig.preheader.new ], [ %indvars.iv.next504.lver.orig.3, %.lr.ph489.lver.orig ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph489.lver.orig.preheader.new ], [ %niter.next.3, %.lr.ph489.lver.orig ]
  %i.jo = mul nsw i64 %indvars.iv503.lver.orig, %i.w
  %gep554.lver.orig = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.jo ; 2 uses
  %i.jp = load <2 x double>, ptr %gep554.lver.orig, align 8, !tbaa !18
  %i.jq = fdiv <2 x double> %i.jp, %i.ix          ; 2 uses
  %i.jr = fneg <2 x double> %i.jq
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.jq, <2 x double> %i.js)
  %i.ju = fdiv <2 x double> %i.jt, %i.jh
  store <2 x double> %i.ju, ptr %gep554.lver.orig, align 8, !tbaa !18
  %indvars.iv.next504.lver.orig = add nuw nsw i64 %indvars.iv503.lver.orig, 1
  %i.jv = mul nsw i64 %indvars.iv.next504.lver.orig, %i.w
  %gep554.lver.orig.1 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.jv ; 2 uses
  %i.jw = load <2 x double>, ptr %gep554.lver.orig.1, align 8, !tbaa !18
  %i.jx = fdiv <2 x double> %i.jw, %i.ix          ; 2 uses
  %i.jy = fneg <2 x double> %i.jx
  %i.jz = shufflevector <2 x double> %i.jy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ka = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.jx, <2 x double> %i.jz)
  %i.kb = fdiv <2 x double> %i.ka, %i.jj
  store <2 x double> %i.kb, ptr %gep554.lver.orig.1, align 8, !tbaa !18
  %indvars.iv.next504.lver.orig.1 = add nuw nsw i64 %indvars.iv503.lver.orig, 2
  %i.kc = mul nsw i64 %indvars.iv.next504.lver.orig.1, %i.w
  %gep554.lver.orig.2 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.kc ; 2 uses
  %i.kd = load <2 x double>, ptr %gep554.lver.orig.2, align 8, !tbaa !18
  %i.ke = fdiv <2 x double> %i.kd, %i.ix          ; 2 uses
  %i.kf = fneg <2 x double> %i.ke
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.ke, <2 x double> %i.kg)
  %i.ki = fdiv <2 x double> %i.kh, %i.jl
  store <2 x double> %i.ki, ptr %gep554.lver.orig.2, align 8, !tbaa !18
  %indvars.iv.next504.lver.orig.2 = add nuw nsw i64 %indvars.iv503.lver.orig, 3
  %i.kj = mul nsw i64 %indvars.iv.next504.lver.orig.2, %i.w
  %gep554.lver.orig.3 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.kj ; 2 uses
  %i.kk = load <2 x double>, ptr %gep554.lver.orig.3, align 8, !tbaa !18
  %i.kl = fdiv <2 x double> %i.kk, %i.ix          ; 2 uses
  %i.km = fneg <2 x double> %i.kl
  %i.kn = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ko = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.kl, <2 x double> %i.kn)
  %i.kp = fdiv <2 x double> %i.ko, %i.jn
  store <2 x double> %i.kp, ptr %gep554.lver.orig.3, align 8, !tbaa !18
  %indvars.iv.next504.lver.orig.3 = add nuw nsw i64 %indvars.iv503.lver.orig, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge490.loopexit579.unr-lcssa, label %.lr.ph489.lver.orig, !llvm.loop !13

.lr.ph489.ph:                                     ; preds = %.lr.ph489.lver.check
  %i.kq = shl nuw nsw i64 %i.gb, 3
  %scevgep577 = getelementptr i8, ptr %scevgep576, i64 %i.kq
  %load_initial = load double, ptr %scevgep577, align 8 ; 2 uses
  %i.kr = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.kt = zext nneg i32 %i.jc to i64              ; 2 uses
  %xtraiter585 = and i64 %i.kt, 3                 ; 3 uses
  %i.ku = icmp ult i32 %i.jc, 4
  br i1 %i.ku, label %.lr.ph489.epil.preheader, label %.lr.ph489.ph.new

.lr.ph489.ph.new:                                 ; preds = %.lr.ph489.ph
  %unroll_iter589 = and i64 %i.kt, 2147483644
  br label %.lr.ph489

.lr.ph489:                                        ; preds = %.lr.ph489, %.lr.ph489.ph.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph489.ph.new ], [ %11, %.lr.ph489 ]
  %indvars.iv503 = phi i64 [ 1, %.lr.ph489.ph.new ], [ %indvars.iv.next504.3, %.lr.ph489 ] ; 5 uses
  %niter590 = phi i64 [ 0, %.lr.ph489.ph.new ], [ %niter590.next.3, %.lr.ph489 ]
  %i.kv = mul nuw nsw i64 %indvars.iv503, %i.w    ; 2 uses
  %gep554 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.kv
  %gep556 = getelementptr [8 x i8], ptr %invariant.gep555, i64 %i.kv
  %i.kw = load double, ptr %gep556, align 8, !tbaa !18
  %i.kx = insertelement <2 x double> poison, double %store_forwarded, i64 0
  %i.ky = insertelement <2 x double> %i.kx, double %i.kw, i64 1
  %i.kz = fdiv <2 x double> %i.ky, %i.ix          ; 2 uses
  %i.la = fneg <2 x double> %i.kz
  %i.lb = shufflevector <2 x double> %i.la, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.kz, <2 x double> %i.lb)
  %i.ld = fdiv <2 x double> %i.lc, %i.ks          ; 2 uses
  store <2 x double> %i.ld, ptr %gep554, align 8, !tbaa !18
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1
  %8 = extractelement <2 x double> %i.ld, i64 1
  %i.le = mul nuw nsw i64 %indvars.iv.next504, %i.w ; 2 uses
  %gep554.1 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.le
  %gep556.1 = getelementptr [8 x i8], ptr %invariant.gep555, i64 %i.le
  %i.lf = load double, ptr %gep556.1, align 8, !tbaa !18
  %i.lg = insertelement <2 x double> poison, double %8, i64 0
  %i.lh = insertelement <2 x double> %i.lg, double %i.lf, i64 1
  %i.li = fdiv <2 x double> %i.lh, %i.ix          ; 2 uses
  %i.lj = fneg <2 x double> %i.li
  %i.lk = shufflevector <2 x double> %i.lj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ll = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.li, <2 x double> %i.lk)
  %i.lm = fdiv <2 x double> %i.ll, %i.ks          ; 2 uses
  store <2 x double> %i.lm, ptr %gep554.1, align 8, !tbaa !18
  %indvars.iv.next504.1 = add nuw nsw i64 %indvars.iv503, 2
  %9 = extractelement <2 x double> %i.lm, i64 1
  %i.ln = mul nuw nsw i64 %indvars.iv.next504.1, %i.w ; 2 uses
  %gep554.2 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.ln
  %gep556.2 = getelementptr [8 x i8], ptr %invariant.gep555, i64 %i.ln
  %i.lo = load double, ptr %gep556.2, align 8, !tbaa !18
  %i.lp = insertelement <2 x double> poison, double %9, i64 0
  %i.lq = insertelement <2 x double> %i.lp, double %i.lo, i64 1
  %i.lr = fdiv <2 x double> %i.lq, %i.ix          ; 2 uses
  %i.ls = fneg <2 x double> %i.lr
  %i.lt = shufflevector <2 x double> %i.ls, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.lr, <2 x double> %i.lt)
  %i.lv = fdiv <2 x double> %i.lu, %i.ks          ; 2 uses
  store <2 x double> %i.lv, ptr %gep554.2, align 8, !tbaa !18
  %indvars.iv.next504.2 = add nuw nsw i64 %indvars.iv503, 3
  %10 = extractelement <2 x double> %i.lv, i64 1
  %i.lw = mul nuw nsw i64 %indvars.iv.next504.2, %i.w ; 2 uses
  %gep554.3 = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.lw
  %gep556.3 = getelementptr [8 x i8], ptr %invariant.gep555, i64 %i.lw
  %i.lx = load double, ptr %gep556.3, align 8, !tbaa !18
  %i.ly = insertelement <2 x double> poison, double %10, i64 0
  %i.lz = insertelement <2 x double> %i.ly, double %i.lx, i64 1
  %i.ma = fdiv <2 x double> %i.lz, %i.ix          ; 2 uses
  %i.mb = fneg <2 x double> %i.ma
  %i.mc = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.md = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.ma, <2 x double> %i.mc)
  %i.me = fdiv <2 x double> %i.md, %i.ks          ; 2 uses
  store <2 x double> %i.me, ptr %gep554.3, align 8, !tbaa !18
  %indvars.iv.next504.3 = add nuw nsw i64 %indvars.iv503, 4 ; 2 uses
  %11 = extractelement <2 x double> %i.me, i64 1  ; 2 uses
  %niter590.next.3 = add i64 %niter590, 4         ; 2 uses
  %niter590.ncmp.3 = icmp eq i64 %niter590.next.3, %unroll_iter589
  br i1 %niter590.ncmp.3, label %._crit_edge490.loopexit.unr-lcssa, label %.lr.ph489, !llvm.loop !13

._crit_edge490.loopexit.unr-lcssa:                ; preds = %.lr.ph489
  %lcmp.mod587.not = icmp eq i64 %xtraiter585, 0
  br i1 %lcmp.mod587.not, label %._crit_edge490, label %.lr.ph489.epil.preheader

.lr.ph489.epil.preheader:                         ; preds = %._crit_edge490.loopexit.unr-lcssa, %.lr.ph489.ph
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph489.ph ], [ %11, %._crit_edge490.loopexit.unr-lcssa ]
  %indvars.iv503.epil.init = phi i64 [ 1, %.lr.ph489.ph ], [ %indvars.iv.next504.3, %._crit_edge490.loopexit.unr-lcssa ]
  %lcmp.mod588 = icmp ne i64 %xtraiter585, 0
  call void @llvm.assume(i1 %lcmp.mod588)
  br label %.lr.ph489.epil

.lr.ph489.epil:                                   ; preds = %.lr.ph489.epil, %.lr.ph489.epil.preheader
  %store_forwarded.epil = phi double [ %store_forwarded.epil.init, %.lr.ph489.epil.preheader ], [ %12, %.lr.ph489.epil ]
  %indvars.iv503.epil = phi i64 [ %indvars.iv503.epil.init, %.lr.ph489.epil.preheader ], [ %indvars.iv.next504.epil, %.lr.ph489.epil ] ; 2 uses
  %epil.iter586 = phi i64 [ 0, %.lr.ph489.epil.preheader ], [ %epil.iter586.next, %.lr.ph489.epil ]
  %i.mf = mul nuw nsw i64 %indvars.iv503.epil, %i.w ; 2 uses
  %gep554.epil = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.mf
  %gep556.epil = getelementptr [8 x i8], ptr %invariant.gep555, i64 %i.mf
  %i.mg = load double, ptr %gep556.epil, align 8, !tbaa !18
  %i.mh = insertelement <2 x double> poison, double %store_forwarded.epil, i64 0
  %i.mi = insertelement <2 x double> %i.mh, double %i.mg, i64 1
  %i.mj = fdiv <2 x double> %i.mi, %i.ix          ; 2 uses
  %i.mk = fneg <2 x double> %i.mj
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.mj, <2 x double> %i.ml)
  %i.mn = fdiv <2 x double> %i.mm, %i.ks          ; 2 uses
  store <2 x double> %i.mn, ptr %gep554.epil, align 8, !tbaa !18
  %indvars.iv.next504.epil = add nuw nsw i64 %indvars.iv503.epil, 1
  %12 = extractelement <2 x double> %i.mn, i64 1
  %epil.iter586.next = add i64 %epil.iter586, 1   ; 2 uses
  %epil.iter586.cmp.not = icmp eq i64 %epil.iter586.next, %xtraiter585
  br i1 %epil.iter586.cmp.not, label %._crit_edge490, label %.lr.ph489.epil, !llvm.loop !14

._crit_edge490.loopexit579.unr-lcssa:             ; preds = %.lr.ph489.lver.orig
  %lcmp.mod583.not = icmp eq i64 %xtraiter582, 0
  br i1 %lcmp.mod583.not, label %._crit_edge490, label %.lr.ph489.lver.orig.epil.preheader

.lr.ph489.lver.orig.epil.preheader:               ; preds = %._crit_edge490.loopexit579.unr-lcssa, %.lr.ph489.lver.orig.preheader
  %indvars.iv503.lver.orig.epil.init = phi i64 [ 1, %.lr.ph489.lver.orig.preheader ], [ %indvars.iv.next504.lver.orig.3, %._crit_edge490.loopexit579.unr-lcssa ]
  %lcmp.mod584 = icmp ne i64 %xtraiter582, 0
  call void @llvm.assume(i1 %lcmp.mod584)
  %i.mo = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph489.lver.orig.epil

.lr.ph489.lver.orig.epil:                         ; preds = %.lr.ph489.lver.orig.epil, %.lr.ph489.lver.orig.epil.preheader
  %indvars.iv503.lver.orig.epil = phi i64 [ %indvars.iv.next504.lver.orig.epil, %.lr.ph489.lver.orig.epil ], [ %indvars.iv503.lver.orig.epil.init, %.lr.ph489.lver.orig.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph489.lver.orig.epil ], [ 0, %.lr.ph489.lver.orig.epil.preheader ]
  %i.mq = mul nsw i64 %indvars.iv503.lver.orig.epil, %i.w
  %gep554.lver.orig.epil = getelementptr [8 x i8], ptr %invariant.gep553, i64 %i.mq ; 2 uses
  %i.mr = load <2 x double>, ptr %gep554.lver.orig.epil, align 8, !tbaa !18
  %i.ms = fdiv <2 x double> %i.mr, %i.ix          ; 2 uses
  %i.mt = fneg <2 x double> %i.ms
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.ms, <2 x double> %i.mu)
  %i.mw = fdiv <2 x double> %i.mv, %i.mp
  store <2 x double> %i.mw, ptr %gep554.lver.orig.epil, align 8, !tbaa !18
  %indvars.iv.next504.lver.orig.epil = add nuw nsw i64 %indvars.iv503.lver.orig.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter582
  br i1 %epil.iter.cmp.not, label %._crit_edge490, label %.lr.ph489.lver.orig.epil, !llvm.loop !15

._crit_edge490:                                   ; preds = %._crit_edge490.loopexit579.unr-lcssa, %.lr.ph489.lver.orig.epil, %._crit_edge490.loopexit.unr-lcssa, %.lr.ph489.epil, %bb.af
  %i.mx = sub nsw i32 %i.ik, %.4434491
  %i.my = shl i32 %i.mx, 1
  %i.mz = add nsw i32 %i.my, %.4492
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge490, %bb.aa
  %.sink558 = phi i32 [ 2, %._crit_edge490 ], [ 1, %bb.aa ]
  %i.na = phi i32 [ %i.ik, %._crit_edge490 ], [ %i.hb, %bb.aa ] ; 6 uses
  %.5.in = phi i32 [ %i.mz, %._crit_edge490 ], [ %i.hd, %bb.aa ]
  %i.nb = add nuw nsw i32 %.4434491, %.sink558    ; 3 uses
  %.5 = add nsw i32 %.5.in, 1
  %.4434.neg = sub nsw i32 0, %i.nb
  %i.nc = icmp sgt i32 %i.nb, %i.na
  br i1 %i.nc, label %._crit_edge495, label %bb.v

._crit_edge495:                                   ; preds = %bb.ag
  %i.nd = icmp slt i32 %i.na, 1
  br i1 %i.nd, label %.loopexit, label %.lr.ph499

.lr.ph499:                                        ; preds = %._crit_edge495
  %i.ne = add nuw nsw i32 %i.na, 1
  %i.nf = mul nuw nsw i32 %i.ne, %i.na
  %i.ng = lshr i32 %i.nf, 1
  %i.nh = add nuw nsw i32 %i.ng, 1
  %i.ni = add i32 %i.e, 1                         ; 2 uses
  %i.nj = add i32 %i.e, -1
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph499, %bb.as
  %.6497 = phi i32 [ %i.nh, %.lr.ph499 ], [ %.7, %bb.as ] ; 3 uses
  %.6436496 = phi i32 [ %i.na, %.lr.ph499 ], [ %.7437, %bb.as ] ; 16 uses
  %i.nk = load i32, ptr %1, align 4, !tbaa !16    ; 2 uses
  %i.nl = sub nsw i32 %i.nk, %.6436496            ; 5 uses
  %.neg = xor i32 %i.nl, -1
  %i.nm = add i32 %.6497, %.neg                   ; 3 uses
  %i.nn = zext nneg i32 %.6436496 to i64
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.nn ; 3 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !16 ; 3 uses
  %i.nq = icmp sgt i32 %i.np, 0
  %i.nr = icmp slt i32 %.6436496, %i.nk           ; 2 uses
  br i1 %i.nq, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.nr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.nl, ptr %i.a, align 4, !tbaa !16
  %i.ns = add i32 %i.ni, %.6436496
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.nt
  %i.nv = sub i32 %.6497, %i.nl
  %i.nw = sext i32 %i.nv to i64
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.nw
  %i.ny = add nsw i32 %.6436496, %i.e
  %i.nz = sext i32 %i.ny to i64
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.nz
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.nu, ptr noundef nonnull %6, ptr noundef nonnull %i.nx, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b19, ptr noundef %i.oa, ptr noundef nonnull %6) #5
  %.pre512 = load i32, ptr %i.no, align 4, !tbaa !16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ob = phi i32 [ %.pre512, %bb.aj ], [ %i.np, %bb.ai ] ; 2 uses
  %.not466 = icmp eq i32 %i.ob, %.6436496
  br i1 %.not466, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.oc = add nsw i32 %.6436496, %i.e
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.od
  %i.of = add nsw i32 %i.ob, %i.e
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.og
  call void @dswap_(ptr noundef nonnull %2, ptr noundef %i.oe, ptr noundef nonnull %6, ptr noundef %i.oh, ptr noundef nonnull %6) #5
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.oi = add nsw i32 %.6436496, -1
  br label %bb.as

bb.an:                                            ; preds = %bb.ah
  br i1 %i.nr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 %i.nl, ptr %i.a, align 4, !tbaa !16
  %i.oj = add i32 %i.ni, %.6436496
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ok ; 2 uses
  %i.om = sub i32 %.6497, %i.nl
  %i.on = sext i32 %i.om to i64
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.on
  %i.op = add nsw i32 %.6436496, %i.e
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.oq
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.ol, ptr noundef nonnull %6, ptr noundef nonnull %i.oo, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b19, ptr noundef %i.or, ptr noundef nonnull %6) #5
  %i.os = load i32, ptr %1, align 4, !tbaa !16    ; 2 uses
  %i.ot = sub nsw i32 %i.os, %.6436496
  store i32 %i.ot, ptr %i.a, align 4, !tbaa !16
  %.neg462 = add i32 %i.nm, %.6436496
  %i.ou = sub i32 %.neg462, %i.os
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ov
  %i.ox = add i32 %i.nj, %.6436496
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.oy
  call void @dgemv_(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c_b7, ptr noundef %i.ol, ptr noundef nonnull %6, ptr noundef nonnull %i.ow, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b19, ptr noundef %i.oz, ptr noundef nonnull %6) #5
  %.pre511 = load i32, ptr %i.no, align 4, !tbaa !16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.pa = phi i32 [ %.pre511, %bb.ao ], [ %i.np, %bb.an ] ; 2 uses
  %i.pb = sub nsw i32 0, %i.pa
  %.not463 = icmp eq i32 %.6436496, %i.pb
  br i1 %.not463, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.pc = add nsw i32 %.6436496, %i.e
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.pd
  %i.pf = sub nsw i32 %i.e, %i.pa
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.pg
  call void @dswap_(ptr noundef nonnull %2, ptr noundef %i.pe, ptr noundef nonnull %6, ptr noundef %i.ph, ptr noundef nonnull %6) #5
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.pi = load i32, ptr %1, align 4, !tbaa !16
  %.neg464 = add nsw i32 %.6436496, -2            ; 2 uses
  %.neg465 = add i32 %.neg464, %i.nm
  %i.pj = sub i32 %.neg465, %i.pi
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.am
  %.7437 = phi i32 [ %i.oi, %bb.am ], [ %.neg464, %bb.ar ] ; 2 uses
  %.7 = phi i32 [ %i.nm, %bb.am ], [ %i.pj, %bb.ar ]
  %i.pk = icmp slt i32 %.7437, 1
  br i1 %i.pk, label %.loopexit, label %bb.ah

.loopexit:                                        ; preds = %bb.u, %bb.as, %.preheader475, %._crit_edge495, %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dger_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @dgemv_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3
end_hunk_0
