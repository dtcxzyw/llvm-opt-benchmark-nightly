Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgejsv?download=true
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@dgejsv_:bb.a
  %i.ir = load double, ptr %i.q, align 8, !tbaa !116 ; 2 uses
  %i.is = load double, ptr %i.p, align 8, !tbaa !116 ; 2 uses
  %i.it = fmul double %i.ir, %i.is
  %i.iu = load i32, ptr %6, align 4, !tbaa !114
  %i.iv = load i32, ptr %7, align 4, !tbaa !114
  %i.iw = add nsw i32 %i.iv, %i.iu
  %i.ix = load i32, ptr %i.k, align 4, !tbaa !114 ; 4 uses
  %i.iy = add nsw i32 %i.iw, %i.ix
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.iz
  store double %i.it, ptr %i.ja, align 8, !tbaa !116
  %i.jb = load double, ptr %i.j, align 8, !tbaa !116
  %i.jc = call double @sqrt(double noundef %i.jb) #7
  %i.jd = fmul double %i.is, %i.jc
  %i.je = fmul double %i.ir, %i.jd                ; 6 uses
  %i.jf = load i32, ptr %7, align 4, !tbaa !114
  %i.jg = add nsw i32 %i.jf, %i.ix
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.jh
  store double %i.je, ptr %i.ji, align 8, !tbaa !116
  store double %.019342381, ptr %i.f, align 8, !tbaa !116
  %i.jj = fcmp oge double %.019342381, %i.je
  %i.jk = select i1 %i.jj, double %.019342381, double %i.je ; 2 uses
  %i.jl = fcmp une double %i.je, 0.000000e+00
  br i1 %i.jl, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.lr.ph2383
  store double %.019372380, ptr %i.f, align 8, !tbaa !116
  %i.jm = fcmp ole double %.019372380, %i.je
  %i.jn = select i1 %i.jm, double %.019372380, double %i.je
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph2383, %bb.cp
  %.11938 = phi double [ %i.jn, %bb.cp ], [ %.019372380, %.lr.ph2383 ] ; 2 uses
  %i.jo = add nsw i32 %i.ix, 1                    ; 2 uses
  store i32 %i.jo, ptr %i.k, align 4, !tbaa !114
  %i.jp = load i32, ptr %i.d, align 4, !tbaa !114
  %.not2128.not = icmp slt i32 %i.ix, %i.jp
  br i1 %.not2128.not, label %.lr.ph2383, label %.loopexit2365.thread, !llvm.loop !11

.thread2328:                                      ; preds = %.thread2326..thread2328_crit_edge, %bb.cn
  %i.jq = phi i32 [ %.pre3134, %.thread2326..thread2328_crit_edge ], [ %i.im, %bb.cn ] ; 2 uses
  store i32 %i.jq, ptr %i.d, align 4, !tbaa !114
  store i32 1, ptr %i.k, align 4, !tbaa !114
  %.not21262419 = icmp slt i32 %i.jq, 1
  br i1 %.not21262419, label %.thread2329, label %.lr.ph2423

.lr.ph2423:                                       ; preds = %.thread2328, %.lr.ph2423
  %.219392421 = phi double [ %i.kn, %.lr.ph2423 ], [ %i.dp, %.thread2328 ] ; 3 uses
  %storemerge21252420 = phi i32 [ %i.ko, %.lr.ph2423 ], [ 1, %.thread2328 ] ; 2 uses
  %i.jr = load double, ptr %i.p, align 8, !tbaa !116
  %i.js = add nsw i32 %storemerge21252420, %i.s
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.jt
  %i.jv = call i32 @idamax_(ptr noundef nonnull %7, ptr noundef %i.ju, ptr noundef nonnull %9) #7
  %i.jw = mul nsw i32 %i.jv, %i.s
  %i.jx = add nsw i32 %i.jw, %storemerge21252420
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.jy
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !116 ; 3 uses
  %i.kb = fcmp oge double %i.ka, 0.000000e+00
  %i.kc = fneg double %i.ka
  %i.kd = select i1 %i.kb, double %i.ka, double %i.kc
  %i.ke = fmul double %i.jr, %i.kd                ; 3 uses
  %i.kf = load i32, ptr %6, align 4, !tbaa !114
  %i.kg = load i32, ptr %7, align 4, !tbaa !114
  %i.kh = add nsw i32 %i.kg, %i.kf
  %i.ki = load i32, ptr %i.k, align 4, !tbaa !114 ; 3 uses
  %i.kj = add nsw i32 %i.kh, %i.ki
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.kk
  store double %i.ke, ptr %i.kl, align 8, !tbaa !116
  store double %.219392421, ptr %i.f, align 8, !tbaa !116
  %i.km = fcmp ole double %.219392421, %i.ke
  %i.kn = select i1 %i.km, double %.219392421, double %i.ke
  %i.ko = add nsw i32 %i.ki, 1                    ; 2 uses
  store i32 %i.ko, ptr %i.k, align 4, !tbaa !114
  %i.kp = load i32, ptr %i.d, align 4, !tbaa !114
  %.not2126.not = icmp slt i32 %i.ki, %i.kp
  br i1 %.not2126.not, label %.lr.ph2423, label %.thread2329, !llvm.loop !12

.loopexit2365.thread:                             ; preds = %bb.cq
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !116
  store double 1.000000e+00, ptr %i.j, align 8, !tbaa !116
  call void @dlassq_(ptr noundef nonnull %7, ptr noundef %10, ptr noundef nonnull @c__1, ptr noundef nonnull %i.q, ptr noundef nonnull %i.j) #7
  %i.kq = load double, ptr %i.j, align 8, !tbaa !116
  %i.kr = fdiv double 1.000000e+00, %i.kq         ; 3 uses
  store double %i.kr, ptr %i.j, align 8, !tbaa !116
  %i.ks = load i32, ptr %7, align 4, !tbaa !114   ; 3 uses
  %.not21302386 = icmp slt i32 %i.ks, 1
  br i1 %.not21302386, label %bb.cu, label %.lr.ph2390

.lr.ph2390:                                       ; preds = %.loopexit2365.thread
  %i.kt = load double, ptr %i.q, align 8, !tbaa !116
  %i.ku = add nuw i32 %i.ks, 1                    ; 2 uses
  %wide.trip.count2923 = zext i32 %i.ku to i64
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph2390, %bb.ct
  %indvars.iv2920 = phi i64 [ 1, %.lr.ph2390 ], [ %indvars.iv.next2921, %bb.ct ] ; 2 uses
  %.019532388 = phi double [ 0.000000e+00, %.lr.ph2390 ], [ %.11954, %bb.ct ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv2920
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !116
  %i.kx = fdiv double %i.kw, %i.kt                ; 3 uses
  %i.ky = fmul double %i.kx, %i.kx
  %i.kz = fmul double %i.kr, %i.ky                ; 3 uses
  %i.la = fcmp une double %i.kz, 0.000000e+00
  br i1 %i.la, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.lb = call double @log(double noundef %i.kz) #7
  %i.lc = call double @llvm.fmuladd.f64(double %i.kz, double %i.lb, double %.019532388)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %.11954 = phi double [ %i.lc, %bb.cs ], [ %.019532388, %bb.cr ] ; 2 uses
  %indvars.iv.next2921 = add nuw nsw i64 %indvars.iv2920, 1 ; 2 uses
  %exitcond2924.not = icmp eq i64 %indvars.iv.next2921, %wide.trip.count2923
  br i1 %exitcond2924.not, label %._crit_edge2391, label %bb.cr, !llvm.loop !13

._crit_edge2391:                                  ; preds = %bb.ct
  store double %i.kx, ptr %i.f, align 8, !tbaa !116
  %.pre3132 = load i32, ptr %7, align 4, !tbaa !114
  br label %bb.cu

bb.cu:                                            ; preds = %._crit_edge2391, %.loopexit2365.thread
  %i.ld = phi i32 [ %.pre3132, %._crit_edge2391 ], [ %i.ks, %.loopexit2365.thread ]
  %storemerge2129.lcssa = phi i32 [ %i.ku, %._crit_edge2391 ], [ 1, %.loopexit2365.thread ]
  %.01953.lcssa = phi double [ %.11954, %._crit_edge2391 ], [ 0.000000e+00, %.loopexit2365.thread ]
  store i32 %storemerge2129.lcssa, ptr %i.k, align 4, !tbaa !114
  %i.le = fneg double %.01953.lcssa
  %i.lf = sitofp i32 %i.ld to double
  %i.lg = call double @log(double noundef %i.lf) #7
  %i.lh = fdiv double %i.le, %i.lg                ; 4 uses
  %i.li = load i32, ptr %7, align 4, !tbaa !114   ; 2 uses
  %i.lj = load i32, ptr %6, align 4, !tbaa !114   ; 3 uses
  %i.lk = add nsw i32 %i.lj, %i.li                ; 2 uses
  store i32 %i.lk, ptr %i.d, align 4, !tbaa !114
  %.not2132.not2396 = icmp sgt i32 %i.lj, 0
  br i1 %.not2132.not2396, label %.lr.ph2400, label %bb.cy

.lr.ph2400:                                       ; preds = %bb.cu
  %storemerge21312395 = add i32 %i.li, 1
  %i.ll = load double, ptr %i.q, align 8, !tbaa !116
  %i.lm = sext i32 %storemerge21312395 to i64
  %i.ln = sext i32 %i.lk to i64
  br label %bb.cv

bb.cv:                                            ; preds = %.lr.ph2400, %bb.cx
  %indvars.iv2925 = phi i64 [ %i.lm, %.lr.ph2400 ], [ %indvars.iv.next2926, %bb.cx ] ; 3 uses
  %.019292397 = phi double [ 0.000000e+00, %.lr.ph2400 ], [ %.11930, %bb.cx ] ; 2 uses
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv2925
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !116
  %i.lq = fdiv double %i.lp, %i.ll                ; 3 uses
  %i.lr = fmul double %i.lq, %i.lq
  %i.ls = fmul double %i.kr, %i.lr                ; 3 uses
  %i.lt = fcmp une double %i.ls, 0.000000e+00
  br i1 %i.lt, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lu = call double @log(double noundef %i.ls) #7
  %i.lv = call double @llvm.fmuladd.f64(double %i.ls, double %i.lu, double %.019292397)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw
  %.11930 = phi double [ %i.lv, %bb.cw ], [ %.019292397, %bb.cv ] ; 2 uses
  %indvars.iv.next2926 = add nsw i64 %indvars.iv2925, 1
  %.not2132.not = icmp slt i64 %indvars.iv2925, %i.ln
  br i1 %.not2132.not, label %bb.cv, label %._crit_edge2401, !llvm.loop !14

._crit_edge2401:                                  ; preds = %bb.cx
  store double %i.lq, ptr %i.f, align 8, !tbaa !116
  %.pre3133 = load i32, ptr %6, align 4, !tbaa !114
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge2401, %bb.cu
  %i.lw = phi i32 [ %.pre3133, %._crit_edge2401 ], [ %i.lj, %bb.cu ]
  %.01929.lcssa = phi double [ %.11930, %._crit_edge2401 ], [ 0.000000e+00, %bb.cu ]
  %i.lx = fneg double %.01929.lcssa
  %i.ly = sitofp i32 %i.lw to double
  %i.lz = call double @log(double noundef %i.ly) #7
  %i.ma = fdiv double %i.lx, %i.lz                ; 4 uses
  %i.mb = fcmp olt double %i.ma, %i.lh
  br i1 %i.mb, label %bb.cz, label %.thread2329

bb.cz:                                            ; preds = %bb.cy
  %i.mc = load i32, ptr %7, align 4, !tbaa !114   ; 14 uses
  %.not2134.not2407 = icmp sgt i32 %i.mc, 1
  br i1 %.not2134.not2407, label %.lr.ph2410, label %._crit_edge2411

.lr.ph2410:                                       ; preds = %bb.cz
  store i32 %i.mc, ptr %i.e, align 4, !tbaa !114
  %i.md = sext i32 %i.s to i64                    ; 6 uses
  %wide.trip.count2936 = zext nneg i32 %i.mc to i64 ; 5 uses
  %ident.check.not = icmp eq i32 %i.s, 1
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph2410, %.loopexit3826
  %indvar = phi i64 [ 0, %.lr.ph2410 ], [ %indvar.next, %.loopexit3826 ] ; 2 uses
  %indvars.iv2928 = phi i64 [ 1, %.lr.ph2410 ], [ %indvars.iv.next2929, %.loopexit3826 ] ; 6 uses
  %19 = mul nsw i64 %indvars.iv2928, %i.md
  %invariant.gep = getelementptr [8 x i8], ptr %i.u, i64 %19 ; 6 uses
  %invariant.gep3438 = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv2928 ; 6 uses
  %20 = xor i64 %indvar, -1
  %21 = add i64 %20, %wide.trip.count2936         ; 3 uses
  %min.iters.check = icmp ugt i64 %21, 7
  %or.cond3827 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond3827, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %bb.da
  %n.vec = and i64 %21, -8                        ; 3 uses
  %i.me = add i64 %indvars.iv2928, %n.vec
  %invariant.op4049 = add nuw i64 %indvars.iv2928, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass4050 = add nuw i64 %index, %invariant.op4049 ; 2 uses
  %i.mf = getelementptr [8 x i8], ptr %invariant.gep, i64 %.reass4050 ; 3 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 32     ; 2 uses
  %wide.load = load <4 x double>, ptr %i.mf, align 8, !tbaa !116
  %wide.load3544 = load <4 x double>, ptr %i.mg, align 8, !tbaa !116
  %i.mh = getelementptr [8 x i8], ptr %invariant.gep3438, i64 %.reass4050 ; 3 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 32     ; 2 uses
  %wide.load3545 = load <4 x double>, ptr %i.mh, align 8, !tbaa !116
  %wide.load3546 = load <4 x double>, ptr %i.mi, align 8, !tbaa !116
  store <4 x double> %wide.load3545, ptr %i.mf, align 8, !tbaa !116
  store <4 x double> %wide.load3546, ptr %i.mg, align 8, !tbaa !116
  store <4 x double> %wide.load, ptr %i.mh, align 8, !tbaa !116
  store <4 x double> %wide.load3544, ptr %i.mi, align 8, !tbaa !116
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.mj = icmp eq i64 %index.next, %n.vec
  br i1 %i.mj, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %21, %n.vec
  br i1 %cmp.n, label %.loopexit3826, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.da, %middle.block
  %indvars.iv2930.ph = phi i64 [ %indvars.iv2928, %bb.da ], [ %i.me, %middle.block ] ; 4 uses
  %i.mk = sub i64 %wide.trip.count2936, %indvars.iv2930.ph
  %xtraiter3883 = and i64 %i.mk, 3                ; 2 uses
  %lcmp.mod3884.not = icmp eq i64 %xtraiter3883, 0
  br i1 %lcmp.mod3884.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv2930.prol = phi i64 [ %indvars.iv.next2931.prol, %scalar.ph.prol ], [ %indvars.iv2930.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %indvars.iv.next2931.prol = add nuw nsw i64 %indvars.iv2930.prol, 1 ; 4 uses
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next2931.prol ; 2 uses
  %i.ml = load double, ptr %gep.prol, align 8, !tbaa !116
  %i.mm = mul nsw i64 %indvars.iv.next2931.prol, %i.md
  %gep3439.prol = getelementptr [8 x i8], ptr %invariant.gep3438, i64 %i.mm ; 2 uses
  %i.mn = load double, ptr %gep3439.prol, align 8, !tbaa !116
  store double %i.mn, ptr %gep.prol, align 8, !tbaa !116
  store double %i.ml, ptr %gep3439.prol, align 8, !tbaa !116
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3883
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !16

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv2930.unr = phi i64 [ %indvars.iv2930.ph, %scalar.ph.preheader ], [ %indvars.iv.next2931.prol, %scalar.ph.prol ]
  %i.mo = sub i64 %indvars.iv2930.ph, %wide.trip.count2936
  %i.mp = icmp ugt i64 %i.mo, -4
  br i1 %i.mp, label %.loopexit3826, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv2930 = phi i64 [ %indvars.iv.next2931.3, %scalar.ph ], [ %indvars.iv2930.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %indvars.iv.next2931 = add nuw nsw i64 %indvars.iv2930, 1 ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next2931 ; 2 uses
  %i.mq = load double, ptr %gep, align 8, !tbaa !116
  %i.mr = mul nsw i64 %indvars.iv.next2931, %i.md
  %gep3439 = getelementptr [8 x i8], ptr %invariant.gep3438, i64 %i.mr ; 2 uses
  %i.ms = load double, ptr %gep3439, align 8, !tbaa !116
  store double %i.ms, ptr %gep, align 8, !tbaa !116
  store double %i.mq, ptr %gep3439, align 8, !tbaa !116
  %indvars.iv.next2931.1 = add nuw nsw i64 %indvars.iv2930, 2 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next2931.1 ; 2 uses
  %i.mt = load double, ptr %gep.1, align 8, !tbaa !116
  %i.mu = mul nsw i64 %indvars.iv.next2931.1, %i.md
  %gep3439.1 = getelementptr [8 x i8], ptr %invariant.gep3438, i64 %i.mu ; 2 uses
  %i.mv = load double, ptr %gep3439.1, align 8, !tbaa !116
  store double %i.mv, ptr %gep.1, align 8, !tbaa !116
  store double %i.mt, ptr %gep3439.1, align 8, !tbaa !116
  %indvars.iv.next2931.2 = add nuw nsw i64 %indvars.iv2930, 3 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next2931.2 ; 2 uses
  %i.mw = load double, ptr %gep.2, align 8, !tbaa !116
  %i.mx = mul nsw i64 %indvars.iv.next2931.2, %i.md
  %gep3439.2 = getelementptr [8 x i8], ptr %invariant.gep3438, i64 %i.mx ; 2 uses
  %i.my = load double, ptr %gep3439.2, align 8, !tbaa !116
  store double %i.my, ptr %gep.2, align 8, !tbaa !116
  store double %i.mw, ptr %gep3439.2, align 8, !tbaa !116
  %indvars.iv.next2931.3 = add nuw nsw i64 %indvars.iv2930, 4 ; 4 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next2931.3 ; 2 uses
  %i.mz = load double, ptr %gep.3, align 8, !tbaa !116
  %i.na = mul nsw i64 %indvars.iv.next2931.3, %i.md
  %gep3439.3 = getelementptr [8 x i8], ptr %invariant.gep3438, i64 %i.na ; 2 uses
  %i.nb = load double, ptr %gep3439.3, align 8, !tbaa !116
  store double %i.nb, ptr %gep.3, align 8, !tbaa !116
  store double %i.mz, ptr %gep3439.3, align 8, !tbaa !116
  %exitcond2934.not.3 = icmp eq i64 %indvars.iv.next2931.3, %wide.trip.count2936
  br i1 %exitcond2934.not.3, label %.loopexit3826, label %scalar.ph, !llvm.loop !17

.loopexit3826:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next2929 = add nuw nsw i64 %indvars.iv2928, 1 ; 2 uses
  %exitcond2937.not = icmp eq i64 %indvars.iv.next2929, %wide.trip.count2936
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond2937.not, label %._crit_edge2411, label %bb.da, !llvm.loop !18

._crit_edge2411:                                  ; preds = %.loopexit3826, %bb.cz
  store i32 %i.mc, ptr %i.d, align 4, !tbaa !114
  %.not21362413 = icmp slt i32 %i.mc, 1
  br i1 %.not21362413, label %._crit_edge2417, label %.lr.ph2416

.lr.ph2416:                                       ; preds = %._crit_edge2411
  %i.nc = load i32, ptr %6, align 4, !tbaa !114   ; 3 uses
  %invariant.op = add i32 %i.mc, %i.nc            ; 6 uses
  %i.nd = zext nneg i32 %i.mc to i64              ; 2 uses
  %i.ne = add nuw i32 %i.mc, 1                    ; 4 uses
  %wide.trip.count2941 = zext i32 %i.ne to i64    ; 4 uses
  %invariant.gep3440 = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.nd ; 6 uses
  %i.nf = zext nneg i32 %i.mc to i64              ; 2 uses
  %min.iters.check3560 = icmp ult i32 %i.mc, 40
  br i1 %min.iters.check3560, label %scalar.ph3559.preheader, label %vector.scevcheck3547

vector.scevcheck3547:                             ; preds = %.lr.ph2416
  %i.ng = add nsw i64 %wide.trip.count2941, -2    ; 2 uses
  %i.nh = add i32 %i.mc, %i.nc
  %i.ni = add i32 %i.nh, 1                        ; 2 uses
  %i.nj = trunc i64 %i.ng to i32
  %i.nk = add i32 %i.ni, %i.nj
  %i.nl = icmp slt i32 %i.nk, %i.ni
  %i.nm = icmp ugt i64 %i.ng, 4294967295
  %i.nn = or i1 %i.nl, %i.nm
  br i1 %i.nn, label %scalar.ph3559.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck3547
  %i.no = add i32 %i.mc, %i.nc
  %i.np = add i32 %i.no, 1
  %i.nq = sext i32 %i.np to i64
  %i.nr = shl nsw i64 %i.nq, 3                    ; 2 uses
  %i.ns = getelementptr i8, ptr %15, i64 %i.nr
  %i.nt = getelementptr i8, ptr %i.ns, i64 -8     ; 2 uses
  %i.nu = shl nuw nsw i64 %wide.trip.count2941, 3 ; 3 uses
  %i.nv = getelementptr i8, ptr %15, i64 %i.nr
  %i.nw = getelementptr i8, ptr %i.nv, i64 %i.nu
  %i.nx = getelementptr i8, ptr %i.nw, i64 -16    ; 2 uses
  %i.ny = getelementptr i8, ptr %10, i64 %i.nu
  %i.nz = getelementptr i8, ptr %i.ny, i64 -8     ; 2 uses
  %i.oa = shl nuw nsw i64 %i.nd, 3                ; 2 uses
  %i.ob = getelementptr i8, ptr %15, i64 %i.oa    ; 2 uses
  %i.oc = getelementptr i8, ptr %15, i64 %i.oa
  %i.od = getelementptr i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr i8, ptr %i.od, i64 -8     ; 2 uses
  %bound0 = icmp ult ptr %i.nt, %i.nz
  %bound1 = icmp ult ptr %10, %i.nx
  %found.conflict = and i1 %bound0, %bound1
  %bound03561 = icmp ult ptr %i.nt, %i.oe
  %bound13562 = icmp ult ptr %i.ob, %i.nx
  %found.conflict3563 = and i1 %bound03561, %bound13562
  %conflict.rdx = or i1 %found.conflict, %found.conflict3563
  %bound03564 = icmp ult ptr %10, %i.oe
  %bound13565 = icmp ult ptr %i.ob, %i.nz
  %found.conflict3566 = and i1 %bound03564, %bound13565
  %conflict.rdx3567 = or i1 %conflict.rdx, %found.conflict3566
  br i1 %conflict.rdx3567, label %scalar.ph3559.preheader, label %vector.ph3568

vector.ph3568:                                    ; preds = %vector.memcheck
  %n.vec3569 = and i64 %i.nf, 2147483640          ; 3 uses
  %i.of = or disjoint i64 %n.vec3569, 1
  br label %vector.body3570

vector.body3570:                                  ; preds = %vector.body3570, %vector.ph3568
  %index3571 = phi i64 [ 0, %vector.ph3568 ], [ %index.next3576, %vector.body3570 ] ; 3 uses
  %i.og = or disjoint i64 %index3571, 1           ; 2 uses
  %i.oh = getelementptr [8 x i8], ptr %10, i64 %index3571 ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 32 ; 2 uses
  %wide.load3572 = load <4 x double>, ptr %i.oh, align 8, !tbaa !116, !alias.scope !121, !noalias !122
  %wide.load3573 = load <4 x double>, ptr %i.oi, align 8, !tbaa !116, !alias.scope !121, !noalias !122
  %i.oj = trunc nuw nsw i64 %i.og to i32
  %i.ok = add i32 %invariant.op, %i.oj
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ol ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  store <4 x double> %wide.load3572, ptr %i.om, align 8, !tbaa !116, !alias.scope !123, !noalias !124
  store <4 x double> %wide.load3573, ptr %i.on, align 8, !tbaa !116, !alias.scope !123, !noalias !124
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep3440, i64 %i.og ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %wide.load3574 = load <4 x double>, ptr %i.oo, align 8, !tbaa !116, !alias.scope !122
  %wide.load3575 = load <4 x double>, ptr %i.op, align 8, !tbaa !116, !alias.scope !122
  store <4 x double> %wide.load3574, ptr %i.oh, align 8, !tbaa !116, !alias.scope !121, !noalias !122
  store <4 x double> %wide.load3575, ptr %i.oi, align 8, !tbaa !116, !alias.scope !121, !noalias !122
  %index.next3576 = add nuw i64 %index3571, 8     ; 2 uses
  %i.oq = icmp eq i64 %index.next3576, %n.vec3569
  br i1 %i.oq, label %middle.block3577, label %vector.body3570, !llvm.loop !23

middle.block3577:                                 ; preds = %vector.body3570
  %cmp.n3578 = icmp eq i64 %n.vec3569, %i.nf
  br i1 %cmp.n3578, label %._crit_edge2417, label %scalar.ph3559.preheader

scalar.ph3559.preheader:                          ; preds = %vector.memcheck, %vector.scevcheck3547, %.lr.ph2416, %middle.block3577
  %indvars.iv2938.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %vector.scevcheck3547 ], [ 1, %.lr.ph2416 ], [ %i.of, %middle.block3577 ] ; 4 uses
  %i.or = sub nsw i64 %wide.trip.count2941, %indvars.iv2938.ph
  %i.os = zext nneg i32 %i.mc to i64
  %i.ot = sub nsw i64 %i.os, %indvars.iv2938.ph
  %xtraiter3885 = and i64 %i.or, 3                ; 2 uses
  %lcmp.mod3886.not = icmp eq i64 %xtraiter3885, 0
  br i1 %lcmp.mod3886.not, label %scalar.ph3559.prol.loopexit, label %scalar.ph3559.prol

scalar.ph3559.prol:                               ; preds = %scalar.ph3559.preheader, %scalar.ph3559.prol
  %indvars.iv2938.prol = phi i64 [ %indvars.iv.next2939.prol, %scalar.ph3559.prol ], [ %indvars.iv2938.ph, %scalar.ph3559.preheader ] ; 4 uses
  %prol.iter3887 = phi i64 [ %prol.iter3887.next, %scalar.ph3559.prol ], [ 0, %scalar.ph3559.preheader ]
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv2938.prol ; 2 uses
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !116
  %i.ow = trunc nuw nsw i64 %indvars.iv2938.prol to i32
  %.reass.prol = add i32 %invariant.op, %i.ow
  %i.ox = sext i32 %.reass.prol to i64
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ox
  store double %i.ov, ptr %i.oy, align 8, !tbaa !116
  %gep3441.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep3440, i64 %indvars.iv2938.prol
  %i.oz = load double, ptr %gep3441.prol, align 8, !tbaa !116
  store double %i.oz, ptr %i.ou, align 8, !tbaa !116
  %indvars.iv.next2939.prol = add nuw nsw i64 %indvars.iv2938.prol, 1 ; 2 uses
  %prol.iter3887.next = add i64 %prol.iter3887, 1 ; 2 uses
  %prol.iter3887.cmp.not = icmp eq i64 %prol.iter3887.next, %xtraiter3885
  br i1 %prol.iter3887.cmp.not, label %scalar.ph3559.prol.loopexit, label %scalar.ph3559.prol, !llvm.loop !24

scalar.ph3559.prol.loopexit:                      ; preds = %scalar.ph3559.prol, %scalar.ph3559.preheader
  %indvars.iv2938.unr = phi i64 [ %indvars.iv2938.ph, %scalar.ph3559.preheader ], [ %indvars.iv.next2939.prol, %scalar.ph3559.prol ]
  %i.pa = icmp ult i64 %i.ot, 3
  br i1 %i.pa, label %._crit_edge2417, label %scalar.ph3559

scalar.ph3559:                                    ; preds = %scalar.ph3559.prol.loopexit, %scalar.ph3559
  %indvars.iv2938 = phi i64 [ %indvars.iv.next2939.3, %scalar.ph3559 ], [ %indvars.iv2938.unr, %scalar.ph3559.prol.loopexit ] ; 8 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv2938 ; 2 uses
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !116
end_hunk_0
