Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/analyze?download=true
inline.NumInlined: 97
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@compute_scalar_stats:bb.a
  %xtraiter524 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.hc = add nsw i32 %spec.select403, -2
  %i.hd = icmp ult i32 %i.hc, 3
  br i1 %i.hd, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod525.not = icmp eq i64 %xtraiter524, 0
  br i1 %lcmp.mod525.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %.05773.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.ih, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod527 = icmp ne i64 %xtraiter524, 0
  call void @llvm.assume(i1 %lcmp.mod527)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.05773.i.epil = phi double [ %.05773.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.hh, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i.epil
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = sitofp i32 %i.hf to double
  %i.hh = fadd double %.05773.i.epil, %i.hg       ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter524
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !52

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.an
  %.057.lcssa.i = phi double [ 0.000000e+00, %bb.an ], [ %i.ih, %.preheader.i.loopexit.unr-lcssa ], [ %i.hh, %.lr.ph.i.epil ]
  %i.hi = fsub double %3, %i.dk
  %i.hj = fmul double %3, %3
  %i.hk = fadd double %3, -1.000000e+00
  %i.hl = fmul double %i.hj, %i.hk
  %i.hm = insertelement <2 x double> <double 1.000000e+00, double poison>, double %3, i64 1
  %i.hn = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ao

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.05773.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.ih, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.hq = load i32, ptr %i.hp, align 4
  %i.hr = sitofp i32 %i.hq to double
  %i.hs = fadd double %.05773.i, %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = sitofp i32 %i.hv to double
  %i.hx = fadd double %i.hs, %i.hw
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = sitofp i32 %i.ia to double
  %i.ic = fadd double %i.hx, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = sitofp i32 %i.if to double
  %i.ih = fadd double %i.ic, %i.ig                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

bb.ao:                                            ; preds = %bb.aq, %.preheader.i
  %indvars.iv78.i = phi i64 [ %i.fk, %.preheader.i ], [ %indvars.iv.next79.i, %bb.aq ] ; 3 uses
  %.176.i = phi double [ %.057.lcssa.i, %.preheader.i ], [ %i.jr, %bb.aq ] ; 2 uses
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, -1 ; 4 uses
  %i.ii = trunc nuw nsw i64 %indvars.iv.next79.i to i32
  %i.ij = uitofp nneg i32 %i.ii to double
  %i.ik = fsub double %.058.i, %i.ij              ; 2 uses
  %i.il = fcmp ogt double %i.ik, 1.000000e+00
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next79.i ; 2 uses
  %i.in = load i32, ptr %i.im, align 4
  %i.io = sitofp i32 %i.in to double
  %i.ip = fmul double %3, %i.io
  %i.iq = insertelement <2 x double> poison, double %.176.i, i64 0
  %i.ir = insertelement <2 x double> %i.iq, double %i.ip, i64 1
  %i.is = fdiv <2 x double> %i.ir, %i.ho          ; 2 uses
  %i.it = fsub <2 x double> %i.hm, %i.is          ; 2 uses
  %i.iu = extractelement <2 x double> %i.it, i64 0
  %i.iv = fsub double %i.iu, %i.gt                ; 2 uses
  %i.iw = fcmp olt double %i.iv, 0.000000e+00
  %spec.store.select.i = select i1 %i.iw, double 0.000000e+00, double %i.iv ; 2 uses
  %i.ix = fcmp ogt double %spec.store.select.i, 1.000000e+00
  %spec.store.select2.i = select i1 %i.ix, double 1.000000e+00, double %spec.store.select.i ; 2 uses
  %i.iy = fdiv double %spec.store.select2.i, %i.ik
  %.0.i405 = select i1 %i.il, double %i.iy, double %spec.store.select2.i
  %i.iz = extractelement <2 x double> %i.is, i64 1
  %i.ja = fmul double %i.iz, %i.dk
  %i.jb = extractelement <2 x double> %i.it, i64 1
  %i.jc = fmul double %i.ja, %i.jb
  %i.jd = fmul double %i.hi, %i.jc
  %i.je = fdiv double %i.jd, %i.hl
  %i.jf = call double @sqrt(double noundef %i.je) #13
  %i.jg = load i32, ptr %i.im, align 4
  %i.jh = sitofp i32 %i.jg to double
  %i.ji = fmul double %i.jf, 2.000000e+00
  %i.jj = call double @llvm.fmuladd.f64(double %.0.i405, double %i.dk, double %i.ji)
  %i.jk = fadd double %i.jj, 5.000000e-01
  %i.jl = fcmp olt double %i.jk, %i.jh
  br i1 %i.jl, label %.thread.loopexit.split.loop.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jm = icmp eq i64 %indvars.iv.next79.i, 0
  br i1 %i.jm, label %analyze_mcv_list.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jn = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv78.i
  %i.jo = getelementptr i8, ptr %i.jn, i64 -8
  %i.jp = load i32, ptr %i.jo, align 4
  %i.jq = sitofp i32 %i.jp to double
  %i.jr = fsub double %.176.i, %i.jq
  br label %bb.ao

.thread.loopexit.split.loop.exit.i:               ; preds = %bb.ao
  %i.js = trunc nuw nsw i64 %indvars.iv78.i to i32
  br label %analyze_mcv_list.exit

analyze_mcv_list.exit:                            ; preds = %.thread.loopexit.split.loop.exit.i, %bb.ak
  %.2371 = phi i32 [ %.3375, %bb.ak ], [ %i.js, %.thread.loopexit.split.loop.exit.i ] ; 3 uses
  %i.jt = icmp sgt i32 %.2371, 0
  br i1 %i.jt, label %analyze_mcv_list.exit.thread498, label %analyze_mcv_list.exit.thread

analyze_mcv_list.exit.thread498:                  ; preds = %.unr-lcssa, %analyze_mcv_list.exit
  %.2371500 = phi i32 [ %.2371, %analyze_mcv_list.exit ], [ %spec.select403, %.unr-lcssa ] ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.jv, ptr @CurrentMemoryContext, align 8
  %i.jx = zext nneg i32 %.2371500 to i64          ; 3 uses
  %i.jy = shl nuw nsw i64 %i.jx, 3
  %i.jz = call ptr @palloc(i64 noundef %i.jy) #13 ; 2 uses
  %i.ka = shl nuw nsw i64 %i.jx, 2
  %i.kb = call ptr @palloc(i64 noundef %i.ka) #13 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %analyze_mcv_list.exit.thread498, %bb.ar
  %indvars.iv468 = phi i64 [ 0, %analyze_mcv_list.exit.thread498 ], [ %indvars.iv.next469, %bb.ar ] ; 4 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv468 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.ke = load i32, ptr %i.kd, align 4
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.kf
  %i.kh = load i64, ptr %i.kg, align 8
  %i.ki = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 78
  %i.kk = load i8, ptr %i.kj, align 2, !range !6, !noundef !7
  %i.kl = trunc nuw i8 %i.kk to i1
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 76
  %i.kn = load i16, ptr %i.km, align 4
  %i.ko = sext i16 %i.kn to i32
  %i.kp = call i64 @datumCopy(i64 noundef %i.kh, i1 noundef zeroext %i.kl, i32 noundef %i.ko) #13
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %indvars.iv468
  store i64 %i.kp, ptr %i.kq, align 8
  %i.kr = load i32, ptr %i.kc, align 4
  %i.ks = sitofp i32 %i.kr to double
  %i.kt = fdiv double %i.ks, %i.dk
  %i.ku = fptrunc double %i.kt to float
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %indvars.iv468
  store float %i.ku, ptr %i.kv, align 4
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %i.jx
  br i1 %exitcond472.not, label %bb.as, label %bb.ar, !llvm.loop !53

bb.as:                                            ; preds = %bb.ar
  store ptr %i.jw, ptr @CurrentMemoryContext, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 1, ptr %i.kw, align 8
  %i.kx = load i32, ptr %i.o, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.kx, ptr %i.ky, align 4
  %i.kz = load i32, ptr %i.z, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.kz, ptr %i.la, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.kb, ptr %i.lb, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %.2371500, ptr %i.lc, align 4
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.jz, ptr %i.ld, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.2371500, ptr %i.le, align 8
  br label %analyze_mcv_list.exit.thread

analyze_mcv_list.exit.thread:                     ; preds = %bb.ap, %bb.al, %bb.as, %analyze_mcv_list.exit
  %i.lf = phi i1 [ true, %bb.as ], [ false, %analyze_mcv_list.exit ], [ false, %bb.al ], [ false, %bb.ap ]
  %.2371407 = phi i32 [ %.2371500, %bb.as ], [ %.2371, %analyze_mcv_list.exit ], [ %spec.select403, %bb.al ], [ 0, %bb.ap ] ; 3 uses
  %.0357 = phi i32 [ 1, %bb.as ], [ 0, %analyze_mcv_list.exit ], [ 0, %bb.al ], [ 0, %bb.ap ] ; 3 uses
  %i.lg = sub i32 %.1366, %.2371407               ; 2 uses
  %i.lh = icmp sgt i32 %i.lg, %i.m
  %i.li = add i32 %i.m, 1
  %spec.select404 = select i1 %i.lh, i32 %i.li, i32 %i.lg ; 5 uses
  %i.lj = icmp sgt i32 %spec.select404, 1
  br i1 %i.lj, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %analyze_mcv_list.exit.thread
  %i.lk = sext i32 %.2371407 to i64
  call void @qsort_interruptible(ptr noundef %i.w, i64 noundef %i.lk, i64 noundef 8, ptr noundef nonnull @compare_mcvs, ptr noundef null) #13
  br i1 %i.lf, label %.lr.ph444, label %.lr.ph450.preheader

.lr.ph444:                                        ; preds = %bb.at, %bb.aw
  %.0338443 = phi i32 [ %.3341, %bb.aw ], [ 0, %bb.at ] ; 4 uses
  %.0342442 = phi i32 [ %.1343, %bb.aw ], [ 0, %bb.at ] ; 3 uses
  %.0344441 = phi i32 [ %.3347, %bb.aw ], [ 0, %bb.at ] ; 3 uses
  %i.ll = icmp slt i32 %.0338443, %.2371407
  br i1 %i.ll, label %bb.au, label %.thread408

bb.au:                                            ; preds = %.lr.ph444
  %i.lm = sext i32 %.0338443 to i64
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lp = load i32, ptr %i.lo, align 4            ; 3 uses
  %.not399 = icmp slt i32 %.0344441, %i.lp
  br i1 %.not399, label %.thread408, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lq = load i32, ptr %i.ln, align 4
  %i.lr = add i32 %i.lq, %i.lp
  %i.ls = add nsw i32 %.0338443, 1
  br label %bb.aw

.thread408:                                       ; preds = %.lr.ph444, %bb.au
  %.pn = phi i32 [ %i.lp, %bb.au ], [ %.1377, %.lr.ph444 ] ; 2 uses
  %.1337 = sub i32 %.pn, %.0344441                ; 2 uses
  %i.lt = sext i32 %.0342442 to i64
  %i.lu = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.lt
  %i.lv = sext i32 %.0344441 to i64
  %i.lw = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.lv
  %i.lx = sext i32 %.1337 to i64
  %i.ly = shl nsw i64 %i.lx, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.lu, ptr align 8 %i.lw, i64 %i.ly, i1 false)
  %i.lz = add i32 %.1337, %.0342442
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread408
  %.3347 = phi i32 [ %.pn, %.thread408 ], [ %i.lr, %bb.av ] ; 2 uses
  %.1343 = phi i32 [ %i.lz, %.thread408 ], [ %.0342442, %bb.av ] ; 2 uses
  %.3341 = phi i32 [ %.0338443, %.thread408 ], [ %i.ls, %bb.av ]
  %i.ma = icmp slt i32 %.3347, %.1377
  br i1 %i.ma, label %.lr.ph444, label %.lr.ph450.preheader

.lr.ph450.preheader:                              ; preds = %bb.aw, %bb.at
  %.0352 = phi i32 [ %.1377, %bb.at ], [ %.1343, %bb.aw ]
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8
  %i.md = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.mc, ptr @CurrentMemoryContext, align 8
  %i.me = zext nneg i32 %spec.select404 to i64
  %i.mf = shl nuw nsw i64 %i.me, 3
  %i.mg = call ptr @palloc(i64 noundef %i.mf) #13 ; 2 uses
  %i.mh = add i32 %.0352, -1                      ; 2 uses
  %i.mi = add nsw i32 %spec.select404, -1         ; 4 uses
  %i.mj = sdiv i32 %i.mh, %i.mi
  %i.mk = srem i32 %i.mh, %i.mi
  %wide.trip.count476 = zext nneg i32 %spec.select404 to i64
  br label %.lr.ph450

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %.lr.ph450
  %indvars.iv473 = phi i64 [ 0, %.lr.ph450.preheader ], [ %indvars.iv.next474, %.lr.ph450 ] ; 2 uses
  %.0348447 = phi i32 [ 0, %.lr.ph450.preheader ], [ %.1349, %.lr.ph450 ]
  %.0350446 = phi i32 [ 0, %.lr.ph450.preheader ], [ %.1351, %.lr.ph450 ] ; 2 uses
  %i.ml = sext i32 %.0350446 to i64
  %i.mm = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ml
  %i.mn = load i64, ptr %i.mm, align 8
  %i.mo = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 78
  %i.mq = load i8, ptr %i.mp, align 2, !range !6, !noundef !7
  %i.mr = trunc nuw i8 %i.mq to i1
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 76
  %i.mt = load i16, ptr %i.ms, align 4
  %i.mu = sext i16 %i.mt to i32
  %i.mv = call i64 @datumCopy(i64 noundef %i.mn, i1 noundef zeroext %i.mr, i32 noundef %i.mu) #13
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %indvars.iv473
  store i64 %i.mv, ptr %i.mw, align 8
  %i.mx = add i32 %.0350446, %i.mj
  %i.my = add i32 %.0348447, %i.mk                ; 2 uses
  %.not398 = icmp sge i32 %i.my, %i.mi            ; 2 uses
  %i.mz = zext i1 %.not398 to i32
  %.1351 = add i32 %i.mx, %i.mz
  %i.na = select i1 %.not398, i32 %i.mi, i32 0
  %.1349 = sub nsw i32 %i.my, %i.na
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %exitcond477.not = icmp eq i64 %indvars.iv.next474, %wide.trip.count476
  br i1 %exitcond477.not, label %._crit_edge451, label %.lr.ph450, !llvm.loop !54

._crit_edge451:                                   ; preds = %.lr.ph450
  store ptr %i.md, ptr @CurrentMemoryContext, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.nc = zext nneg i32 %.0357 to i64             ; 5 uses
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr %i.nb, i64 %i.nc
  store i16 2, ptr %i.nd, align 2
  %i.ne = load i32, ptr %i.ad, align 4
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.nc
  store i32 %i.ne, ptr %i.ng, align 4
  %i.nh = load i32, ptr %i.z, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nc
  store i32 %i.nh, ptr %i.nj, align 4
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nc
  store ptr %i.mg, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %i.nc
  store i32 %spec.select404, ptr %i.nn, align 4
  %i.no = add nuw nsw i32 %.0357, 1
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge451, %analyze_mcv_list.exit.thread
  %.1358 = phi i32 [ %i.no, %._crit_edge451 ], [ %.0357, %analyze_mcv_list.exit.thread ]
  %.not397 = icmp eq i32 %.1377, 1
  br i1 %.not397, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.nq, ptr @CurrentMemoryContext, align 8
  %i.ns = call ptr @palloc(i64 noundef 4) #13     ; 2 uses
  store ptr %i.nr, ptr @CurrentMemoryContext, align 8
  %i.nt = add nsw i32 %.1377, -1
  %i.nu = uitofp nneg i32 %i.nt to double
  %i.nv = uitofp nneg i32 %.1377 to double        ; 3 uses
  %i.nw = fmul nnan double %i.nv, %i.nu           ; 2 uses
  %i.nx = fmul nnan double %i.nw, 5.000000e-01    ; 2 uses
  %i.ny = shl nuw i32 %.1377, 1
  %i.nz = add i32 %i.ny, -1
  %i.oa = sitofp i32 %i.nz to double
  %i.ob = fmul nnan double %i.nw, %i.oa
  %i.oc = fdiv double %i.ob, 6.000000e+00
  %i.od = fneg double %i.nx
  %i.oe = fmul double %i.nx, %i.od                ; 2 uses
  %i.of = call double @llvm.fmuladd.f64(double %i.nv, double %i.cb, double %i.oe)
  %i.og = call double @llvm.fmuladd.f64(double %i.nv, double %i.oc, double %i.oe)
  %i.oh = fdiv double %i.of, %i.og
  %i.oi = fptrunc double %i.oh to float
  store float %i.oi, ptr %i.ns, align 4
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ok = zext nneg i32 %.1358 to i64             ; 5 uses
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.oj, i64 %i.ok
  store i16 3, ptr %i.ol, align 2
  %i.om = load i32, ptr %i.ad, align 4
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.ok
  store i32 %i.om, ptr %i.oo, align 4
  %i.op = load i32, ptr %i.z, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.ok
  store i32 %i.op, ptr %i.or, align 4
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.ok
  store ptr %i.ns, ptr %i.ot, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.ok
  store i32 1, ptr %i.ov, align 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.thread506

bb.ba:                                            ; preds = %._crit_edge
  %i.ow = icmp sgt i32 %.1333, 0
  br i1 %i.ow, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.ox, align 8
  %i.oy = sitofp i32 %.1331 to double
  %i.oz = sitofp i32 %2 to double
  %i.pa = fdiv double %i.oy, %i.oz
  %i.pb = fptrunc double %i.pa to float           ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.pb, ptr %i.pc, align 4
  br i1 %i.l, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.pd = uitofp nneg i32 %.1333 to double
  %i.pe = fdiv double %.2381, %i.pd
  %i.pf = fptosi double %i.pe to i32
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.pg = load ptr, ptr %i.b, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 76
  %i.pi = load i16, ptr %i.ph, align 4
  %i.pj = sext i16 %i.pi to i32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink478 = phi i32 [ %i.pf, %bb.bc ], [ %i.pj, %bb.bd ]
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink478, ptr %i.pk, align 8
  %i.pl = fsub float 1.000000e+00, %i.pb
  %i.pm = fneg float %i.pl
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %i.pm, ptr %i.pn, align 4
  br label %.thread506

bb.bf:                                            ; preds = %bb.ba
  %i.po = icmp sgt i32 %.1331, 0
  br i1 %i.po, label %bb.bg, label %.thread506

bb.bg:                                            ; preds = %bb.bf
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.pp, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float 1.000000e+00, ptr %i.pq, align 4
  br i1 %i.l, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.pr = load ptr, ptr %i.b, align 8
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 76
  %i.pt = load i16, ptr %i.ps, align 4
  %i.pu = sext i16 %i.pt to i32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %.sink479 = phi i32 [ %i.pu, %bb.bh ], [ 0, %bb.bg ]
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink479, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float 0.000000e+00, ptr %i.pw, align 4
  br label %.thread506

.thread506:                                       ; preds = %.thread, %bb.be, %bb.bi, %bb.bf, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_distinct_stats(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, double noundef %3) #0 {
bb.a:
  %4 = alloca %struct.FmgrInfo, align 8           ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 78
  %i.e = load i8, ptr %i.d, align 2, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.h = load i16, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp eq i16 %i.h, -1
  %i.j = icmp slt i16 %i.h, 0
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.k = phi i1 [ %i.i, %bb.b ], [ false, %bb.a ]
  %i.l = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.m = load i32, ptr %0, align 8                ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = shl i32 %i.m, 1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.p, i32 10) ; 4 uses
  %i.q = zext nneg i32 %spec.store.select to i64
  %i.r = shl nuw nsw i64 %i.q, 4
  %i.s = tail call ptr @palloc(i64 noundef %i.r) #13 ; 26 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.u = load i32, ptr %i.t, align 4
  call void @fmgr_info(i32 noundef %i.u, ptr noundef nonnull %4) #13
  %i.v = icmp sgt i32 %2, 0
  br i1 %i.v, label %.lr.ph278, label %analyze_mcv_list.exit.thread

.lr.ph278:                                        ; preds = %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph278, %.critedge
  %.0216277 = phi i32 [ 0, %.lr.ph278 ], [ %i.dq, %.critedge ] ; 2 uses
  %.0219276 = phi i32 [ 0, %.lr.ph278 ], [ %.1220, %.critedge ] ; 7 uses
  %.0231275 = phi i32 [ 0, %.lr.ph278 ], [ %.3, %.critedge ] ; 11 uses
  %.0234274 = phi double [ 0.000000e+00, %.lr.ph278 ], [ %.2236, %.critedge ] ; 4 uses
  %.0237273 = phi i32 [ 0, %.lr.ph278 ], [ %.1238, %.critedge ] ; 7 uses
  %.0239272 = phi i32 [ 0, %.lr.ph278 ], [ %.1240, %.critedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @vacuum_delay_point(i1 noundef zeroext true) #13
  %i.x = call i64 %1(ptr noundef %0, i32 noundef %.0216277, ptr noundef nonnull %i.a) #13 ; 5 uses
  %i.y = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.z = trunc nuw i8 %i.y to i1
end_hunk_0
