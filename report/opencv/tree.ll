Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tree?download=true
inline.NumInlined: 2303
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2cv2ml10DTreesImpl9calcValueEiRKSt6vectorIiSaIiEE:bb.a
  %i.ii = fadd double %.0244334.epil.init, %i.ih
  %i.ij = fcmp olt double %.0227335.epil.init, %i.ih ; 2 uses
  %i.ik = trunc nuw nsw i64 %indvars.iv410.epil.init to i32
  %.1246.epil = select i1 %i.ij, i32 %i.ik, i32 %.0245333.epil.init
  %.1228.epil = select i1 %i.ij, double %i.ih, double %.0227335.epil.init
  br label %._crit_edge339.loopexit

._crit_edge339.loopexit:                          ; preds = %._crit_edge339.loopexit.unr-lcssa, %.lr.ph338.epil.preheader
  %.lcssa526 = phi double [ %i.ic, %._crit_edge339.loopexit.unr-lcssa ], [ %i.ii, %.lr.ph338.epil.preheader ]
  %.1246.lcssa = phi i32 [ %.1246.1, %._crit_edge339.loopexit.unr-lcssa ], [ %.1246.epil, %.lr.ph338.epil.preheader ]
  %.1228.lcssa = phi double [ %.1228.1, %._crit_edge339.loopexit.unr-lcssa ], [ %.1228.epil, %.lr.ph338.epil.preheader ]
  %i.il = fsub double %.lcssa526, %.1228.lcssa
  br label %._crit_edge339

._crit_edge339:                                   ; preds = %._crit_edge339.loopexit, %.loopexit286
  %.0245.lcssa = phi i32 [ -1, %.loopexit286 ], [ %.1246.lcssa, %._crit_edge339.loopexit ] ; 2 uses
  %i.im = phi double [ 1.000000e+00, %.loopexit286 ], [ %i.il, %._crit_edge339.loopexit ]
  store i32 %.0245.lcssa, ptr %i.f, align 8, !tbaa !176
  %i.in = sext i32 %.0245.lcssa to i64
  %i.io = load ptr, ptr %i.q, align 8, !tbaa !79
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.in
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !36
  %i.ir = sitofp i32 %i.iq to double
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store double %i.ir, ptr %i.is, align 8, !tbaa !177
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store double %i.im, ptr %i.it, align 8, !tbaa !197
  br i1 %i.ai, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %._crit_edge339
  %i.iu = load ptr, ptr %i.a, align 8, !tbaa !163 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 88
  %i.iw = mul nsw i32 %i.p, %1
  %i.ix = load ptr, ptr %i.iv, align 8, !tbaa !106
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 112
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !106
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 136
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !106
  %i.jc = sext i32 %i.iw to i64
  %wide.trip.count423 = zext nneg i32 %i.p to i64
  %i.jd = and i64 %i.w, 8589934588
  %i.je = icmp eq i64 %i.jd, 4
  %unroll_iter575 = and i64 %i.x, 2147483646
  %i.jf = and i64 %i.w, 4
  %lcmp.mod569.not = icmp eq i64 %i.jf, 0
  %lcmp.mod574 = trunc i64 %i.x to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge349
  %indvars.iv420 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next421, %._crit_edge349 ] ; 3 uses
  br i1 %i.ce, label %.lr.ph348, label %._crit_edge349

.lr.ph348:                                        ; preds = %.preheader
  %i.jg = mul i64 %indvars.iv420, %i.x
  %i.jh = and i64 %i.jg, 4294967295
  %invariant.gep470 = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.jh ; 3 uses
  br i1 %i.je, label %.epil.preheader567, label %.lr.ph348.new

.lr.ph348.new:                                    ; preds = %.lr.ph348, %.lr.ph348.new
  %indvars.iv415 = phi i64 [ %indvars.iv.next416.1, %.lr.ph348.new ], [ 0, %.lr.ph348 ] ; 4 uses
  %.2229346 = phi double [ %.3230.1, %.lr.ph348.new ], [ -1.000000e+00, %.lr.ph348 ] ; 2 uses
  %.0240345 = phi double [ %.1241.1, %.lr.ph348.new ], [ 0.000000e+00, %.lr.ph348 ]
  %.0242344 = phi double [ %i.ju, %.lr.ph348.new ], [ 0.000000e+00, %.lr.ph348 ]
  %.0243343 = phi double [ %i.jt, %.lr.ph348.new ], [ 0.000000e+00, %.lr.ph348 ]
  %niter576 = phi i64 [ %niter576.next.1, %.lr.ph348.new ], [ 0, %.lr.ph348 ]
  %gep471 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep470, i64 %indvars.iv415
  %i.ji = load double, ptr %gep471, align 8, !tbaa !167 ; 3 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv415
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !167
  %i.jl = fsub double %i.jk, %i.ji                ; 3 uses
  %i.jm = fadd double %.0243343, %i.ji
  %i.jn = fadd double %.0242344, %i.jl
  %i.jo = fcmp olt double %.2229346, %i.jl        ; 2 uses
  %.1241 = select i1 %i.jo, double %i.ji, double %.0240345
  %.3230 = select i1 %i.jo, double %i.jl, double %.2229346 ; 2 uses
  %indvars.iv.next416 = or disjoint i64 %indvars.iv415, 1 ; 2 uses
  %gep471.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep470, i64 %indvars.iv.next416
  %i.jp = load double, ptr %gep471.1, align 8, !tbaa !167 ; 3 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next416
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !167
  %i.js = fsub double %i.jr, %i.jp                ; 3 uses
  %i.jt = fadd double %i.jm, %i.jp                ; 3 uses
  %i.ju = fadd double %i.jn, %i.js                ; 3 uses
  %i.jv = fcmp olt double %.3230, %i.js           ; 2 uses
  %.1241.1 = select i1 %i.jv, double %i.jp, double %.1241 ; 3 uses
  %.3230.1 = select i1 %i.jv, double %i.js, double %.3230 ; 3 uses
  %indvars.iv.next416.1 = add nuw nsw i64 %indvars.iv415, 2 ; 2 uses
  %niter576.next.1 = add i64 %niter576, 2         ; 2 uses
  %niter576.ncmp.1 = icmp eq i64 %niter576.next.1, %unroll_iter575
  br i1 %niter576.ncmp.1, label %._crit_edge349.loopexit.unr-lcssa, label %.lr.ph348.new, !llvm.loop !310

._crit_edge349.loopexit.unr-lcssa:                ; preds = %.lr.ph348.new
  br i1 %lcmp.mod569.not, label %._crit_edge349.loopexit, label %.epil.preheader567

.epil.preheader567:                               ; preds = %._crit_edge349.loopexit.unr-lcssa, %.lr.ph348
  %indvars.iv415.epil.init = phi i64 [ 0, %.lr.ph348 ], [ %indvars.iv.next416.1, %._crit_edge349.loopexit.unr-lcssa ] ; 2 uses
  %.2229346.epil.init = phi double [ -1.000000e+00, %.lr.ph348 ], [ %.3230.1, %._crit_edge349.loopexit.unr-lcssa ] ; 2 uses
  %.0240345.epil.init = phi double [ 0.000000e+00, %.lr.ph348 ], [ %.1241.1, %._crit_edge349.loopexit.unr-lcssa ]
  %.0242344.epil.init = phi double [ 0.000000e+00, %.lr.ph348 ], [ %i.ju, %._crit_edge349.loopexit.unr-lcssa ]
  %.0243343.epil.init = phi double [ 0.000000e+00, %.lr.ph348 ], [ %i.jt, %._crit_edge349.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod574)
  %gep471.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep470, i64 %indvars.iv415.epil.init
  %i.jw = load double, ptr %gep471.epil, align 8, !tbaa !167 ; 3 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv415.epil.init
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !167
  %i.jz = fsub double %i.jy, %i.jw                ; 3 uses
  %i.ka = fadd double %.0243343.epil.init, %i.jw
  %i.kb = fadd double %.0242344.epil.init, %i.jz
  %i.kc = fcmp olt double %.2229346.epil.init, %i.jz ; 2 uses
  %.1241.epil = select i1 %i.kc, double %i.jw, double %.0240345.epil.init
  %.3230.epil = select i1 %i.kc, double %i.jz, double %.2229346.epil.init
  br label %._crit_edge349.loopexit

._crit_edge349.loopexit:                          ; preds = %._crit_edge349.loopexit.unr-lcssa, %.epil.preheader567
  %.lcssa525 = phi double [ %i.jt, %._crit_edge349.loopexit.unr-lcssa ], [ %i.ka, %.epil.preheader567 ]
  %.lcssa = phi double [ %i.ju, %._crit_edge349.loopexit.unr-lcssa ], [ %i.kb, %.epil.preheader567 ]
  %.1241.lcssa = phi double [ %.1241.1, %._crit_edge349.loopexit.unr-lcssa ], [ %.1241.epil, %.epil.preheader567 ]
  %.3230.lcssa = phi double [ %.3230.1, %._crit_edge349.loopexit.unr-lcssa ], [ %.3230.epil, %.epil.preheader567 ]
  %i.kd = fsub double %.lcssa, %.3230.lcssa
  %i.ke = fsub double %.lcssa525, %.1241.lcssa
  br label %._crit_edge349

._crit_edge349:                                   ; preds = %._crit_edge349.loopexit, %.preheader
  %i.kf = phi double [ 1.000000e+00, %.preheader ], [ %i.kd, %._crit_edge349.loopexit ]
  %i.kg = phi double [ 0.000000e+00, %.preheader ], [ %i.ke, %._crit_edge349.loopexit ]
  %i.kh = add nsw i64 %indvars.iv420, %i.jc       ; 3 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.kh
  store double f0x41DFFFFFFFC00000, ptr %i.ki, align 8, !tbaa !167
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.kh
  store double %i.kf, ptr %i.kj, align 8, !tbaa !167
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.kh
  store double %i.kg, ptr %i.kk, align 8, !tbaa !167
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %exitcond424.not = icmp eq i64 %indvars.iv.next421, %wide.trip.count423
  br i1 %exitcond424.not, label %.loopexit, label %.preheader, !llvm.loop !311

bb.q:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit266
  %i.kl = icmp eq i32 %i.p, 0
  br i1 %i.kl, label %.preheader293, label %bb.s

.preheader293:                                    ; preds = %bb.q
  %i.km = icmp sgt i32 %i.n, 0
  br i1 %i.km, label %.lr.ph315, label %.loopexit294.thread

.lr.ph315:                                        ; preds = %.preheader293
  %i.kn = load ptr, ptr %2, align 8, !tbaa !79    ; 3 uses
  %i.ko = load ptr, ptr %i.a, align 8, !tbaa !163 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 184
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !106 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 232
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !106 ; 3 uses
  %i.kt = and i64 %i.l, 8589934588
  %i.ku = icmp eq i64 %i.kt, 4
  br i1 %i.ku, label %.epil.preheader, label %.lr.ph315.new

.lr.ph315.new:                                    ; preds = %.lr.ph315
  %unroll_iter543 = and i64 %i.m, 2147483646
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph315.new
  %indvars.iv378 = phi i64 [ 0, %.lr.ph315.new ], [ %indvars.iv.next379.1, %bb.r ] ; 3 uses
  %.0231313 = phi double [ 0.000000e+00, %.lr.ph315.new ], [ %i.ly, %bb.r ]
  %i.kv = phi <2 x double> [ zeroinitializer, %.lr.ph315.new ], [ %i.lx, %bb.r ]
  %niter544 = phi i64 [ 0, %.lr.ph315.new ], [ %niter544.next.1, %bb.r ]
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv378
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !36
  %i.ky = sext i32 %i.kx to i64                   ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.ky
  %i.la = load double, ptr %i.kz, align 8, !tbaa !167 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.ky
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !167 ; 3 uses
  %i.ld = fmul double %i.lc, %i.lc
  %i.le = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.lf = insertelement <2 x double> %i.le, double %i.lc, i64 1
  %i.lg = insertelement <2 x double> poison, double %i.la, i64 0
  %i.lh = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lf, <2 x double> %i.lh, <2 x double> %i.kv)
  %i.lj = fadd double %.0231313, %i.la
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv378
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !36
  %i.ln = sext i32 %i.lm to i64                   ; 2 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.ln
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !167 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.ln
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !167 ; 3 uses
  %i.ls = fmul double %i.lr, %i.lr
  %i.lt = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.lr, i64 1
  %i.lv = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.lw = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.lw, <2 x double> %i.li) ; 3 uses
  %i.ly = fadd double %i.lj, %i.lp                ; 3 uses
  %indvars.iv.next379.1 = add nuw nsw i64 %indvars.iv378, 2 ; 2 uses
  %niter544.next.1 = add i64 %niter544, 2         ; 2 uses
  %niter544.ncmp.1 = icmp eq i64 %niter544.next.1, %unroll_iter543
  br i1 %niter544.ncmp.1, label %.loopexit294.loopexit.unr-lcssa, label %bb.r, !llvm.loop !312

bb.s:                                             ; preds = %bb.q
  %i.lz = load ptr, ptr %3, align 8, !tbaa !204   ; 9 uses
  %i.ma = ptrtoaddr ptr %i.lz to i64              ; 7 uses
  %i.mb = sext i32 %i.p to i64                    ; 4 uses
  %i.mc = getelementptr [8 x i8], ptr %i.lz, i64 %i.mb ; 8 uses
  %i.md = getelementptr [8 x i8], ptr %i.mc, i64 %i.mb ; 7 uses
  br i1 %i.ai, label %.lr.ph.preheader, label %.preheader298

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.me = zext nneg i32 %i.p to i64
  %i.mf = shl nuw nsw i64 %i.me, 3                ; 3 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.mc, i8 0, i64 %i.mf, i1 false), !tbaa !167
  call void @llvm.memset.p0.i64(ptr align 8 %i.lz, i8 0, i64 %i.mf, i1 false), !tbaa !167
  call void @llvm.memset.p0.i64(ptr align 8 %i.md, i8 0, i64 %i.mf, i1 false), !tbaa !167
  br label %.preheader298

.preheader298:                                    ; preds = %.lr.ph.preheader, %bb.s
  %i.mg = icmp sgt i32 %i.n, 0
  br i1 %i.mg, label %.lr.ph301, label %.preheader297

.lr.ph301:                                        ; preds = %.preheader298
  %i.mh = load ptr, ptr %2, align 8, !tbaa !79
  %i.mi = load ptr, ptr %i.a, align 8, !tbaa !163 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 160
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !79
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 184
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !106
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 232
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !106
  %wide.trip.count = and i64 %i.m, 2147483647
  br label %bb.t

.preheader297:                                    ; preds = %bb.t, %.preheader298
  br i1 %i.ai, label %.lr.ph306.preheader, label %.loopexit294.thread

.lr.ph306.preheader:                              ; preds = %.preheader297
  %wide.trip.count371 = zext nneg i32 %i.p to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count371, 1
  %i.mp = icmp eq i32 %i.p, 1
  br i1 %i.mp, label %.lr.ph306.epil.preheader, label %.lr.ph306.preheader.new

.lr.ph306.preheader.new:                          ; preds = %.lr.ph306.preheader
  %unroll_iter = and i64 %wide.trip.count371, 2147483646
  br label %.lr.ph306

bb.t:                                             ; preds = %.lr.ph301, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph301 ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !36
  %i.ms = sext i32 %i.mr to i64                   ; 3 uses
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !36
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.ms
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !167 ; 2 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.ms
  %i.my = load double, ptr %i.mx, align 8, !tbaa !167 ; 3 uses
  %i.mz = sext i32 %i.mu to i64                   ; 3 uses
  %i.na = getelementptr inbounds [8 x i8], ptr %i.lz, i64 %i.mz ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !167
  %i.nc = fmul double %i.my, %i.my
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.mc, i64 %i.mz ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !167
  %i.nf = insertelement <2 x double> poison, double %i.my, i64 0
  %i.ng = insertelement <2 x double> %i.nf, double %i.nc, i64 1
  %i.nh = insertelement <2 x double> poison, double %i.mw, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = insertelement <2 x double> poison, double %i.nb, i64 0
  %i.nk = insertelement <2 x double> %i.nj, double %i.ne, i64 1
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> %i.ni, <2 x double> %i.nk) ; 2 uses
  %i.nm = extractelement <2 x double> %i.nl, i64 0
  store double %i.nm, ptr %i.na, align 8, !tbaa !167
  %i.nn = extractelement <2 x double> %i.nl, i64 1
  store double %i.nn, ptr %i.nd, align 8, !tbaa !167
  %i.no = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.mz ; 2 uses
  %i.np = load double, ptr %i.no, align 8, !tbaa !167
  %i.nq = fadd double %i.mw, %i.np
  store double %i.nq, ptr %i.no, align 8, !tbaa !167
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader297, label %bb.t, !llvm.loop !313

.lr.ph310.unr-lcssa:                              ; preds = %.lr.ph306
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph310, label %.lr.ph306.epil.preheader

.lr.ph306.epil.preheader:                         ; preds = %.lr.ph310.unr-lcssa, %.lr.ph306.preheader
  %indvars.iv368.epil.init = phi i64 [ 0, %.lr.ph306.preheader ], [ %indvars.iv.next369.1, %.lr.ph310.unr-lcssa ] ; 3 uses
  %.1232304.epil.init = phi double [ 0.000000e+00, %.lr.ph306.preheader ], [ %i.qy, %.lr.ph310.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph306.preheader ], [ %i.qv, %.lr.ph310.unr-lcssa ]
  %lcmp.mod535 = trunc i32 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod535)
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv368.epil.init
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !167
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv368.epil.init
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !167
  %i.nv = insertelement <2 x double> poison, double %i.nu, i64 0
  %i.nw = insertelement <2 x double> %i.nv, double %i.ns, i64 1
  %i.nx = fadd <2 x double> %.epil.init, %i.nw
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv368.epil.init
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !167
  %i.oa = fadd double %.1232304.epil.init, %i.nz
  br label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph310.unr-lcssa, %.lr.ph306.epil.preheader
  %.lcssa532 = phi <2 x double> [ %i.qv, %.lr.ph310.unr-lcssa ], [ %i.nx, %.lr.ph306.epil.preheader ] ; 6 uses
  %.lcssa531 = phi double [ %i.qy, %.lr.ph310.unr-lcssa ], [ %i.oa, %.lr.ph306.epil.preheader ] ; 4 uses
  %i.ob = load ptr, ptr %i.a, align 8, !tbaa !163 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 112
  %i.od = mul nsw i32 %i.p, %1
  %i.oe = load ptr, ptr %i.oc, align 8, !tbaa !106 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.ob, i64 136
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !106 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ob, i64 88
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !106 ; 3 uses
  %i.oj = sext i32 %i.od to i64                   ; 3 uses
  %wide.trip.count376 = zext nneg i32 %i.p to i64
  %min.iters.check = icmp ult i32 %i.p, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph310
  %i.ok = ptrtoaddr ptr %i.oi to i64              ; 4 uses
  %i.ol = ptrtoaddr ptr %i.og to i64              ; 4 uses
  %i.om = ptrtoaddr ptr %i.oe to i64              ; 5 uses
  %i.on = sub i64 %i.om, %i.ol
  %diff.check = icmp ugt i64 %i.on, -16
  %i.oo = sub i64 %i.om, %i.ok
  %diff.check482 = icmp ugt i64 %i.oo, -16
  %conflict.rdx = or i1 %diff.check, %diff.check482
  %i.op = shl nsw i64 %i.oj, 3                    ; 7 uses
  %6 = add i64 %i.op, %i.om
  %i.oq = shl nuw nsw i64 %i.mb, 4                ; 3 uses
  %i.or = add i64 %i.oq, %i.ma
  %i.os = sub i64 %i.or, %6
  %diff.check483 = icmp ugt i64 %i.os, -16
  %conflict.rdx484 = or i1 %conflict.rdx, %diff.check483
  %7 = add i64 %i.op, %i.om
  %i.ot = shl nuw nsw i64 %i.mb, 3                ; 3 uses
  %8 = add i64 %i.ot, %i.ma
  %i.ou = sub i64 %8, %7
  %diff.check485 = icmp ugt i64 %i.ou, -16
  %conflict.rdx486 = or i1 %conflict.rdx484, %diff.check485
  %i.ov = add i64 %i.op, %i.om
  %9 = sub i64 %i.ma, %i.ov
  %diff.check487 = icmp ugt i64 %9, -16
  %conflict.rdx488 = or i1 %conflict.rdx486, %diff.check487
  %i.ow = sub i64 %i.ol, %i.ok
  %diff.check489 = icmp ugt i64 %i.ow, -16
  %conflict.rdx490 = or i1 %conflict.rdx488, %diff.check489
  %i.ox = add i64 %i.op, %i.ol
  %i.oy = sub i64 %i.ox, %i.ma                    ; 2 uses
  %i.oz = sub i64 %i.oq, %i.oy
  %diff.check491 = icmp ugt i64 %i.oz, -16
  %conflict.rdx492 = or i1 %conflict.rdx490, %diff.check491
  %i.pa = sub i64 %i.ot, %i.oy
  %diff.check493 = icmp ugt i64 %i.pa, -16
  %conflict.rdx494 = or i1 %conflict.rdx492, %diff.check493
  %i.pb = add i64 %i.op, %i.ol
  %10 = sub i64 %i.ma, %i.pb
  %diff.check495 = icmp ugt i64 %10, -16
  %conflict.rdx496 = or i1 %conflict.rdx494, %diff.check495
  %i.pc = add i64 %i.op, %i.ok
  %i.pd = sub i64 %i.pc, %i.ma                    ; 2 uses
  %i.pe = sub i64 %i.oq, %i.pd
  %diff.check497 = icmp ugt i64 %i.pe, -16
  %conflict.rdx498 = or i1 %conflict.rdx496, %diff.check497
  %i.pf = sub i64 %i.ot, %i.pd
  %diff.check499 = icmp ugt i64 %i.pf, -16
  %conflict.rdx500 = or i1 %conflict.rdx498, %diff.check499
  %i.pg = add i64 %i.op, %i.ok
  %11 = sub i64 %i.ma, %i.pg
  %diff.check501 = icmp ugt i64 %11, -16
  %conflict.rdx502 = or i1 %conflict.rdx500, %diff.check501
  br i1 %conflict.rdx502, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count371, 2147483646 ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %.lcssa532, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %broadcast.splat504 = shufflevector <2 x double> %.lcssa532, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert505 = insertelement <2 x double> poison, double %.lcssa531, i64 0
  %broadcast.splat506 = shufflevector <2 x double> %broadcast.splatinsert505, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %index
  %wide.load = load <2 x double>, ptr %i.ph, align 8, !tbaa !167
  %i.pi = fsub <2 x double> %broadcast.splat, %wide.load ; 2 uses
  %i.pj = fsub <2 x double> %broadcast.splat, %i.pi
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %index
  %wide.load507 = load <2 x double>, ptr %i.pk, align 8, !tbaa !167
  %i.pl = fsub <2 x double> %broadcast.splat504, %wide.load507 ; 2 uses
  %i.pm = fsub <2 x double> %broadcast.splat504, %i.pl
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %index
  %wide.load508 = load <2 x double>, ptr %i.pn, align 8, !tbaa !167 ; 2 uses
  %i.po = fsub <2 x double> %broadcast.splat506, %wide.load508 ; 3 uses
  %i.pp = fcmp olt <2 x double> %i.po, splat (double f0x3CB0000000000000)
  %i.pq = select <2 x i1> %i.pp, <2 x double> splat (double f0x3CB0000000000000), <2 x double> %i.po
  %i.pr = fdiv <2 x double> %i.pj, %i.pq          ; 5 uses
  %i.ps = fneg <2 x double> %i.pr
  %i.pt = fmul <2 x double> %i.pr, %i.ps
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pt, <2 x double> %i.po, <2 x double> %i.pm)
  %i.pv = add nsw i64 %index, %i.oj               ; 3 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.pv
  store <2 x double> %i.pu, ptr %i.pw, align 8, !tbaa !167
  %i.px = fmul <2 x double> %i.pr, splat (double -2.000000e+00)
  %i.py = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.pi, <2 x double> %i.pl)
  %i.pz = fmul <2 x double> %wide.load508, %i.pr
  %i.qa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pz, <2 x double> %i.pr, <2 x double> %i.py)
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.pv
  store <2 x double> %i.qa, ptr %i.qb, align 8, !tbaa !167
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.pv
  store <2 x double> splat (double f0x41DFFFFFFFC00000), ptr %i.qc, align 8, !tbaa !167
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.qd = icmp eq i64 %index.next, %n.vec
  br i1 %i.qd, label %middle.block, label %vector.body, !llvm.loop !314

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count371
  br i1 %cmp.n, label %.loopexit294, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph310, %middle.block
  %indvars.iv373.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph310 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph306:                                        ; preds = %.lr.ph306, %.lr.ph306.preheader.new
  %indvars.iv368 = phi i64 [ 0, %.lr.ph306.preheader.new ], [ %indvars.iv.next369.1, %.lr.ph306 ] ; 5 uses
  %.1232304 = phi double [ 0.000000e+00, %.lr.ph306.preheader.new ], [ %i.qy, %.lr.ph306 ]
  %i.qe = phi <2 x double> [ zeroinitializer, %.lr.ph306.preheader.new ], [ %i.qv, %.lr.ph306 ]
  %niter = phi i64 [ 0, %.lr.ph306.preheader.new ], [ %niter.next.1, %.lr.ph306 ]
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv368
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !167
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv368
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !167
  %i.qj = insertelement <2 x double> poison, double %i.qi, i64 0
  %i.qk = insertelement <2 x double> %i.qj, double %i.qg, i64 1
  %i.ql = fadd <2 x double> %i.qe, %i.qk
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv368
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !167
  %i.qo = fadd double %.1232304, %i.qn
  %indvars.iv.next369 = or disjoint i64 %indvars.iv368, 1 ; 3 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv.next369
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !167
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.next369
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !167
  %i.qt = insertelement <2 x double> poison, double %i.qs, i64 0
  %i.qu = insertelement <2 x double> %i.qt, double %i.qq, i64 1
  %i.qv = fadd <2 x double> %i.ql, %i.qu          ; 3 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv.next369
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !167
  %i.qy = fadd double %i.qo, %i.qx                ; 3 uses
  %indvars.iv.next369.1 = add nuw nsw i64 %indvars.iv368, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph310.unr-lcssa, label %.lr.ph306, !llvm.loop !315

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv373 = phi i64 [ %indvars.iv.next374, %scalar.ph ], [ %indvars.iv373.ph, %scalar.ph.preheader ] ; 5 uses
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv373
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !167
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv373
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !167
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv373
  %i.re = load double, ptr %i.rd, align 8, !tbaa !167 ; 2 uses
  %i.rf = add nsw i64 %indvars.iv373, %i.oj       ; 3 uses
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.rf
  %i.rh = insertelement <2 x double> poison, double %i.rc, i64 0
  %i.ri = insertelement <2 x double> %i.rh, double %i.ra, i64 1
  %i.rj = fsub <2 x double> %.lcssa532, %i.ri     ; 3 uses
  %i.rk = fsub <2 x double> %.lcssa532, %i.rj     ; 2 uses
  %i.rl = fsub double %.lcssa531, %i.re           ; 3 uses
  %i.rm = fcmp olt double %i.rl, f0x3CB0000000000000
  %.sroa.speculated = select i1 %i.rm, double f0x3CB0000000000000, double %i.rl
  %i.rn = extractelement <2 x double> %i.rk, i64 1
  %i.ro = fdiv double %i.rn, %.sroa.speculated    ; 4 uses
  %i.rp = fneg double %i.ro
  %i.rq = fmul double %i.ro, -2.000000e+00
  %i.rr = extractelement <2 x double> %i.rj, i64 0
  %i.rs = extractelement <2 x double> %i.rj, i64 1
  %i.rt = call double @llvm.fmuladd.f64(double %i.rq, double %i.rs, double %i.rr)
  %i.ru = insertelement <2 x double> poison, double %i.ro, i64 0
  %i.rv = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rw = insertelement <2 x double> poison, double %i.rp, i64 0
  %i.rx = insertelement <2 x double> %i.rw, double %i.re, i64 1
  %i.ry = fmul <2 x double> %i.rv, %i.rx
  %i.rz = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.sa = insertelement <2 x double> %i.rz, double %i.ro, i64 1
  %i.sb = insertelement <2 x double> %i.rk, double %i.rt, i64 1
  %i.sc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> %i.sa, <2 x double> %i.sb) ; 2 uses
  %i.sd = extractelement <2 x double> %i.sc, i64 0
  store double %i.sd, ptr %i.rg, align 8, !tbaa !167
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.og, i64 %i.rf
  %i.sf = extractelement <2 x double> %i.sc, i64 1
  store double %i.sf, ptr %i.se, align 8, !tbaa !167
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.rf
  store double f0x41DFFFFFFFC00000, ptr %i.sg, align 8, !tbaa !167
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count376
  br i1 %exitcond377.not, label %.loopexit294, label %scalar.ph, !llvm.loop !316

.loopexit294.loopexit.unr-lcssa:                  ; preds = %bb.r
  %i.sh = and i64 %i.l, 4
  %lcmp.mod539.not = icmp eq i64 %i.sh, 0
  br i1 %lcmp.mod539.not, label %.loopexit294, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit294.loopexit.unr-lcssa, %.lr.ph315
  %indvars.iv378.epil.init = phi i64 [ 0, %.lr.ph315 ], [ %indvars.iv.next379.1, %.loopexit294.loopexit.unr-lcssa ]
  %.0231313.epil.init = phi double [ 0.000000e+00, %.lr.ph315 ], [ %i.ly, %.loopexit294.loopexit.unr-lcssa ]
  %.epil.init538 = phi <2 x double> [ zeroinitializer, %.lr.ph315 ], [ %i.lx, %.loopexit294.loopexit.unr-lcssa ]
  %lcmp.mod542 = trunc i64 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod542)
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv378.epil.init
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !36
  %i.sk = sext i32 %i.sj to i64                   ; 2 uses
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %i.sk
  %i.sm = load double, ptr %i.sl, align 8, !tbaa !167 ; 2 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.sk
  %i.so = load double, ptr %i.sn, align 8, !tbaa !167 ; 3 uses
  %i.sp = fmul double %i.so, %i.so
  %i.sq = insertelement <2 x double> poison, double %i.sp, i64 0
  %i.sr = insertelement <2 x double> %i.sq, double %i.so, i64 1
  %i.ss = insertelement <2 x double> poison, double %i.sm, i64 0
  %i.st = shufflevector <2 x double> %i.ss, <2 x double> poison, <2 x i32> zeroinitializer
  %i.su = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sr, <2 x double> %i.st, <2 x double> %.epil.init538)
  %i.sv = fadd double %.0231313.epil.init, %i.sm
  br label %.loopexit294

.loopexit294:                                     ; preds = %scalar.ph, %.epil.preheader, %.loopexit294.loopexit.unr-lcssa, %middle.block
  %.2233 = phi double [ %.lcssa531, %middle.block ], [ %i.sv, %.epil.preheader ], [ %i.ly, %.loopexit294.loopexit.unr-lcssa ], [ %.lcssa531, %scalar.ph ] ; 3 uses
  %i.sw = phi <2 x double> [ %.lcssa532, %middle.block ], [ %i.su, %.epil.preheader ], [ %i.lx, %.loopexit294.loopexit.unr-lcssa ], [ %.lcssa532, %scalar.ph ] ; 2 uses
  %i.sx = fcmp ueq double %.2233, 0.000000e+00
  br i1 %i.sx, label %.loopexit294.thread, label %bb.y

.loopexit294.thread:                              ; preds = %.preheader297, %.preheader293, %.loopexit294
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %.loopexit294.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv2ml10DTreesImpl9calcValueEiRKSt6vectorIiSaIiEE, ptr noundef nonnull @.str.1, i32 noundef 638) #24
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %.loopexit294.thread
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.x:                                             ; preds = %bb.u
  %i.sz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ta = load ptr, ptr %4, align 8, !tbaa !62    ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.tc = icmp eq ptr %i.ta, %i.tb
  br i1 %i.tc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.td = load i64, ptr %i.tb, align 8, !tbaa !63
  %i.te = add i64 %i.td, 1
  call void @_ZdlPvm(ptr noundef %i.ta, i64 noundef %i.te) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.w
  %.pn = phi { ptr, i32 } [ %i.sy, %bb.w ], [ %i.sz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.sz, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.aa

bb.y:                                             ; preds = %.loopexit294
  %i.tf = extractelement <2 x double> %i.sw, i64 1 ; 2 uses
end_hunk_0
