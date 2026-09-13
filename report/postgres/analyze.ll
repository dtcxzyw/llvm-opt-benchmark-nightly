Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/analyze?download=true
inline.NumInlined: 97
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@compute_scalar_stats:bb.a
  %xtraiter524 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.gz = add nsw i32 %spec.select403, -2
  %i.ha = icmp ult i32 %i.gz, 3
  br i1 %i.ha, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod525.not = icmp eq i64 %xtraiter524, 0
  br i1 %lcmp.mod525.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %.05773.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.ie, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod527 = icmp ne i64 %xtraiter524, 0
  call void @llvm.assume(i1 %lcmp.mod527)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.05773.i.epil = phi double [ %.05773.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.he, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i.epil
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = sitofp i32 %i.hc to double
  %i.he = fadd double %.05773.i.epil, %i.hd       ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter524
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !52

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.an
  %.057.lcssa.i = phi double [ 0.000000e+00, %bb.an ], [ %i.ie, %.preheader.i.loopexit.unr-lcssa ], [ %i.he, %.lr.ph.i.epil ]
  %i.hf = fsub double %3, %i.dk
  %i.hg = fmul double %3, %3
  %i.hh = fadd double %3, -1.000000e+00
  %i.hi = fmul double %i.hg, %i.hh
  %i.hj = insertelement <2 x double> <double 1.000000e+00, double poison>, double %3, i64 1
  %i.hk = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ao

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.05773.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.ie, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = sitofp i32 %i.hn to double
  %i.hp = fadd double %.05773.i, %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = sitofp i32 %i.hs to double
  %i.hu = fadd double %i.hp, %i.ht
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = sitofp i32 %i.hx to double
  %i.hz = fadd double %i.hu, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = sitofp i32 %i.ic to double
  %i.ie = fadd double %i.hz, %i.id                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

bb.ao:                                            ; preds = %bb.aq, %.preheader.i
  %indvars.iv78.i = phi i64 [ %i.fk, %.preheader.i ], [ %indvars.iv.next79.i, %bb.aq ] ; 3 uses
  %.176.i = phi double [ %.057.lcssa.i, %.preheader.i ], [ %i.jo, %bb.aq ] ; 2 uses
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, -1 ; 4 uses
  %i.if = trunc nuw nsw i64 %indvars.iv.next79.i to i32
  %i.ig = uitofp nneg i32 %i.if to double
  %i.ih = fsub double %.058.i, %i.ig              ; 2 uses
  %i.ii = fcmp ogt double %i.ih, 1.000000e+00
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next79.i ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4
  %i.il = sitofp i32 %i.ik to double
  %i.im = fmul double %3, %i.il
  %i.in = insertelement <2 x double> poison, double %.176.i, i64 0
  %i.io = insertelement <2 x double> %i.in, double %i.im, i64 1
  %i.ip = fdiv <2 x double> %i.io, %i.hl          ; 2 uses
  %i.iq = fsub <2 x double> %i.hj, %i.ip          ; 2 uses
  %i.ir = extractelement <2 x double> %i.iq, i64 0
  %i.is = fsub double %i.ir, %i.gq                ; 2 uses
  %i.it = fcmp olt double %i.is, 0.000000e+00
  %spec.store.select.i = select i1 %i.it, double 0.000000e+00, double %i.is ; 2 uses
  %i.iu = fcmp ogt double %spec.store.select.i, 1.000000e+00
  %spec.store.select2.i = select i1 %i.iu, double 1.000000e+00, double %spec.store.select.i ; 2 uses
  %i.iv = fdiv double %spec.store.select2.i, %i.ih
  %.0.i405 = select i1 %i.ii, double %i.iv, double %spec.store.select2.i
  %i.iw = extractelement <2 x double> %i.ip, i64 1
  %i.ix = fmul double %i.iw, %i.dk
  %i.iy = extractelement <2 x double> %i.iq, i64 1
  %i.iz = fmul double %i.ix, %i.iy
  %i.ja = fmul double %i.hf, %i.iz
  %i.jb = fdiv double %i.ja, %i.hi
  %i.jc = call double @sqrt(double noundef %i.jb) #13
  %i.jd = load i32, ptr %i.ij, align 4
  %i.je = sitofp i32 %i.jd to double
  %i.jf = fmul double %i.jc, 2.000000e+00
  %i.jg = call double @llvm.fmuladd.f64(double %.0.i405, double %i.dk, double %i.jf)
  %i.jh = fadd double %i.jg, 5.000000e-01
  %i.ji = fcmp olt double %i.jh, %i.je
  br i1 %i.ji, label %.thread.loopexit.split.loop.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jj = icmp eq i64 %indvars.iv.next79.i, 0
  br i1 %i.jj, label %analyze_mcv_list.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jk = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv78.i
  %i.jl = getelementptr i8, ptr %i.jk, i64 -8
  %i.jm = load i32, ptr %i.jl, align 4
  %i.jn = sitofp i32 %i.jm to double
  %i.jo = fsub double %.176.i, %i.jn
  br label %bb.ao

.thread.loopexit.split.loop.exit.i:               ; preds = %bb.ao
  %i.jp = trunc nuw nsw i64 %indvars.iv78.i to i32
  br label %analyze_mcv_list.exit

analyze_mcv_list.exit:                            ; preds = %.thread.loopexit.split.loop.exit.i, %bb.ak
  %.2371 = phi i32 [ %.3375, %bb.ak ], [ %i.jp, %.thread.loopexit.split.loop.exit.i ] ; 3 uses
  %i.jq = icmp sgt i32 %.2371, 0
  br i1 %i.jq, label %analyze_mcv_list.exit.thread498, label %analyze_mcv_list.exit.thread

analyze_mcv_list.exit.thread498:                  ; preds = %.unr-lcssa, %analyze_mcv_list.exit
  %.2371500 = phi i32 [ %.2371, %analyze_mcv_list.exit ], [ %spec.select403, %.unr-lcssa ] ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.js, ptr @CurrentMemoryContext, align 8
  %i.ju = zext nneg i32 %.2371500 to i64          ; 3 uses
  %i.jv = shl nuw nsw i64 %i.ju, 3
  %i.jw = call ptr @palloc(i64 noundef %i.jv) #13 ; 2 uses
  %i.jx = shl nuw nsw i64 %i.ju, 2
  %i.jy = call ptr @palloc(i64 noundef %i.jx) #13 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %analyze_mcv_list.exit.thread498, %bb.ar
  %indvars.iv468 = phi i64 [ 0, %analyze_mcv_list.exit.thread498 ], [ %indvars.iv.next469, %bb.ar ] ; 4 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv468 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 78
  %i.kh = load i8, ptr %i.kg, align 2, !range !6, !noundef !7
  %i.ki = trunc nuw i8 %i.kh to i1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 76
  %i.kk = load i16, ptr %i.kj, align 4
  %i.kl = sext i16 %i.kk to i32
  %i.km = call i64 @datumCopy(i64 noundef %i.ke, i1 noundef zeroext %i.ki, i32 noundef %i.kl) #13
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv468
  store i64 %i.km, ptr %i.kn, align 8
  %i.ko = load i32, ptr %i.jz, align 4
  %i.kp = sitofp i32 %i.ko to double
  %i.kq = fdiv double %i.kp, %i.dk
  %i.kr = fptrunc double %i.kq to float
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv468
  store float %i.kr, ptr %i.ks, align 4
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %i.ju
  br i1 %exitcond472.not, label %bb.as, label %bb.ar, !llvm.loop !53

bb.as:                                            ; preds = %bb.ar
  store ptr %i.jt, ptr @CurrentMemoryContext, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 1, ptr %i.kt, align 8
  %i.ku = load i32, ptr %i.o, align 4
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.ku, ptr %i.kv, align 4
  %i.kw = load i32, ptr %i.z, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.kw, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.jy, ptr %i.ky, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %.2371500, ptr %i.kz, align 4
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.jw, ptr %i.la, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.2371500, ptr %i.lb, align 8
  br label %analyze_mcv_list.exit.thread

analyze_mcv_list.exit.thread:                     ; preds = %bb.ap, %bb.al, %bb.as, %analyze_mcv_list.exit
  %i.lc = phi i1 [ true, %bb.as ], [ false, %analyze_mcv_list.exit ], [ false, %bb.al ], [ false, %bb.ap ]
  %.2371407 = phi i32 [ %.2371500, %bb.as ], [ %.2371, %analyze_mcv_list.exit ], [ %spec.select403, %bb.al ], [ 0, %bb.ap ] ; 3 uses
  %.0357 = phi i32 [ 1, %bb.as ], [ 0, %analyze_mcv_list.exit ], [ 0, %bb.al ], [ 0, %bb.ap ] ; 3 uses
  %i.ld = sub i32 %.1366, %.2371407               ; 2 uses
  %i.le = icmp sgt i32 %i.ld, %i.m
  %i.lf = add i32 %i.m, 1
  %spec.select404 = select i1 %i.le, i32 %i.lf, i32 %i.ld ; 5 uses
  %i.lg = icmp sgt i32 %spec.select404, 1
  br i1 %i.lg, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %analyze_mcv_list.exit.thread
  %i.lh = sext i32 %.2371407 to i64
  call void @qsort_interruptible(ptr noundef %i.w, i64 noundef %i.lh, i64 noundef 8, ptr noundef nonnull @compare_mcvs, ptr noundef null) #13
  br i1 %i.lc, label %.lr.ph444, label %.lr.ph450.preheader

.lr.ph444:                                        ; preds = %bb.at, %bb.aw
  %.0338443 = phi i32 [ %.3341, %bb.aw ], [ 0, %bb.at ] ; 4 uses
  %.0342442 = phi i32 [ %.1343, %bb.aw ], [ 0, %bb.at ] ; 3 uses
  %.0344441 = phi i32 [ %.3347, %bb.aw ], [ 0, %bb.at ] ; 3 uses
  %i.li = icmp slt i32 %.0338443, %.2371407
  br i1 %i.li, label %bb.au, label %.thread408

bb.au:                                            ; preds = %.lr.ph444
  %i.lj = sext i32 %.0338443 to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lm = load i32, ptr %i.ll, align 4            ; 3 uses
  %.not399 = icmp slt i32 %.0344441, %i.lm
  br i1 %.not399, label %.thread408, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ln = load i32, ptr %i.lk, align 4
  %i.lo = add i32 %i.ln, %i.lm
  %i.lp = add nsw i32 %.0338443, 1
  br label %bb.aw

.thread408:                                       ; preds = %.lr.ph444, %bb.au
  %.pn = phi i32 [ %i.lm, %bb.au ], [ %.1377, %.lr.ph444 ] ; 2 uses
  %.1337 = sub i32 %.pn, %.0344441                ; 2 uses
  %i.lq = sext i32 %.0342442 to i64
  %i.lr = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.lq
  %i.ls = sext i32 %.0344441 to i64
  %i.lt = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ls
  %i.lu = sext i32 %.1337 to i64
  %i.lv = shl nsw i64 %i.lu, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.lr, ptr align 8 %i.lt, i64 %i.lv, i1 false)
  %i.lw = add i32 %.1337, %.0342442
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread408
  %.3347 = phi i32 [ %.pn, %.thread408 ], [ %i.lo, %bb.av ] ; 2 uses
  %.1343 = phi i32 [ %i.lw, %.thread408 ], [ %.0342442, %bb.av ] ; 2 uses
  %.3341 = phi i32 [ %.0338443, %.thread408 ], [ %i.lp, %bb.av ]
  %i.lx = icmp slt i32 %.3347, %.1377
  br i1 %i.lx, label %.lr.ph444, label %.lr.ph450.preheader

.lr.ph450.preheader:                              ; preds = %bb.aw, %bb.at
  %.0352 = phi i32 [ %.1377, %bb.at ], [ %.1343, %bb.aw ]
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.lz, ptr @CurrentMemoryContext, align 8
  %i.mb = zext nneg i32 %spec.select404 to i64
  %i.mc = shl nuw nsw i64 %i.mb, 3
  %i.md = call ptr @palloc(i64 noundef %i.mc) #13 ; 2 uses
  %i.me = add i32 %.0352, -1                      ; 2 uses
  %i.mf = add nsw i32 %spec.select404, -1         ; 4 uses
  %i.mg = sdiv i32 %i.me, %i.mf
  %i.mh = srem i32 %i.me, %i.mf
  %wide.trip.count476 = zext nneg i32 %spec.select404 to i64
  br label %.lr.ph450

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %.lr.ph450
  %indvars.iv473 = phi i64 [ 0, %.lr.ph450.preheader ], [ %indvars.iv.next474, %.lr.ph450 ] ; 2 uses
  %.0348447 = phi i32 [ 0, %.lr.ph450.preheader ], [ %.1349, %.lr.ph450 ]
  %.0350446 = phi i32 [ 0, %.lr.ph450.preheader ], [ %.1351, %.lr.ph450 ] ; 2 uses
  %i.mi = sext i32 %.0350446 to i64
  %i.mj = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.mi
  %i.mk = load i64, ptr %i.mj, align 8
  %i.ml = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 78
  %i.mn = load i8, ptr %i.mm, align 2, !range !6, !noundef !7
  %i.mo = trunc nuw i8 %i.mn to i1
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 76
  %i.mq = load i16, ptr %i.mp, align 4
  %i.mr = sext i16 %i.mq to i32
  %i.ms = call i64 @datumCopy(i64 noundef %i.mk, i1 noundef zeroext %i.mo, i32 noundef %i.mr) #13
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv473
  store i64 %i.ms, ptr %i.mt, align 8
  %i.mu = add i32 %.0350446, %i.mg
  %i.mv = add i32 %.0348447, %i.mh                ; 2 uses
  %.not398 = icmp sge i32 %i.mv, %i.mf            ; 2 uses
  %i.mw = zext i1 %.not398 to i32
  %.1351 = add i32 %i.mu, %i.mw
  %i.mx = select i1 %.not398, i32 %i.mf, i32 0
  %.1349 = sub nsw i32 %i.mv, %i.mx
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %exitcond477.not = icmp eq i64 %indvars.iv.next474, %wide.trip.count476
  br i1 %exitcond477.not, label %._crit_edge451, label %.lr.ph450, !llvm.loop !54

._crit_edge451:                                   ; preds = %.lr.ph450
  store ptr %i.ma, ptr @CurrentMemoryContext, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.mz = zext nneg i32 %.0357 to i64             ; 5 uses
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.my, i64 %i.mz
  store i16 2, ptr %i.na, align 2
  %i.nb = load i32, ptr %i.ad, align 4
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.mz
  store i32 %i.nb, ptr %i.nd, align 4
  %i.ne = load i32, ptr %i.z, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.mz
  store i32 %i.ne, ptr %i.ng, align 4
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.mz
  store ptr %i.md, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.mz
  store i32 %spec.select404, ptr %i.nk, align 4
  %i.nl = add nuw nsw i32 %.0357, 1
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge451, %analyze_mcv_list.exit.thread
  %.1358 = phi i32 [ %i.nl, %._crit_edge451 ], [ %.0357, %analyze_mcv_list.exit.thread ]
  %.not397 = icmp eq i32 %.1377, 1
  br i1 %.not397, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.nn, ptr @CurrentMemoryContext, align 8
  %i.np = call ptr @palloc(i64 noundef 4) #13     ; 2 uses
  store ptr %i.no, ptr @CurrentMemoryContext, align 8
  %i.nq = add nsw i32 %.1377, -1
  %i.nr = uitofp nneg i32 %i.nq to double
  %i.ns = uitofp nneg i32 %.1377 to double        ; 3 uses
  %i.nt = fmul nnan double %i.ns, %i.nr           ; 2 uses
  %i.nu = fmul nnan double %i.nt, 5.000000e-01    ; 2 uses
  %i.nv = shl nuw i32 %.1377, 1
  %i.nw = add i32 %i.nv, -1
  %i.nx = sitofp i32 %i.nw to double
  %i.ny = fmul nnan double %i.nt, %i.nx
  %i.nz = fdiv double %i.ny, 6.000000e+00
  %i.oa = fneg double %i.nu
  %i.ob = fmul double %i.nu, %i.oa                ; 2 uses
  %i.oc = call double @llvm.fmuladd.f64(double %i.ns, double %i.cb, double %i.ob)
  %i.od = call double @llvm.fmuladd.f64(double %i.ns, double %i.nz, double %i.ob)
  %i.oe = fdiv double %i.oc, %i.od
  %i.of = fptrunc double %i.oe to float
  store float %i.of, ptr %i.np, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.oh = zext nneg i32 %.1358 to i64             ; 5 uses
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %i.og, i64 %i.oh
  store i16 3, ptr %i.oi, align 2
  %i.oj = load i32, ptr %i.ad, align 4
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %i.oh
  store i32 %i.oj, ptr %i.ol, align 4
  %i.om = load i32, ptr %i.z, align 8
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %i.oh
  store i32 %i.om, ptr %i.oo, align 4
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.oh
  store ptr %i.np, ptr %i.oq, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.oh
  store i32 1, ptr %i.os, align 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.thread506

bb.ba:                                            ; preds = %._crit_edge
  %i.ot = icmp sgt i32 %.1333, 0
  br i1 %i.ot, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.ou, align 8
  %i.ov = sitofp i32 %.1331 to double
  %i.ow = sitofp i32 %2 to double
  %i.ox = fdiv double %i.ov, %i.ow
  %i.oy = fptrunc double %i.ox to float           ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.oy, ptr %i.oz, align 4
  br i1 %i.l, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.pa = uitofp nneg i32 %.1333 to double
  %i.pb = fdiv double %.2381, %i.pa
  %i.pc = fptosi double %i.pb to i32
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.pd = load ptr, ptr %i.b, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 76
  %i.pf = load i16, ptr %i.pe, align 4
  %i.pg = sext i16 %i.pf to i32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sink478 = phi i32 [ %i.pc, %bb.bc ], [ %i.pg, %bb.bd ]
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink478, ptr %i.ph, align 8
  %i.pi = fsub float 1.000000e+00, %i.oy
  %i.pj = fneg float %i.pi
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %i.pj, ptr %i.pk, align 4
  br label %.thread506

bb.bf:                                            ; preds = %bb.ba
  %i.pl = icmp sgt i32 %.1331, 0
  br i1 %i.pl, label %bb.bg, label %.thread506

bb.bg:                                            ; preds = %bb.bf
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.pm, align 8
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float 1.000000e+00, ptr %i.pn, align 4
  br i1 %i.l, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.po = load ptr, ptr %i.b, align 8
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 76
  %i.pq = load i16, ptr %i.pp, align 4
  %i.pr = sext i16 %i.pq to i32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %.sink479 = phi i32 [ %i.pr, %bb.bh ], [ 0, %bb.bg ]
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink479, ptr %i.ps, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float 0.000000e+00, ptr %i.pt, align 4
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
