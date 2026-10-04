Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/features?download=true
inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@calcIntegerFeatures:bb.a
  %i.sn = icmp ugt i64 %3, 2
  br i1 %i.sn, label %.lr.ph1322.preheader, label %._crit_edge1323

.lr.ph1322.preheader:                             ; preds = %.preheader1270
  %i.so = add i64 %3, -3                          ; 2 uses
  %i.sp = lshr i64 %i.so, 1
  %i.sq = add nuw i64 %i.sp, 1                    ; 2 uses
  %xtraiter1841 = and i64 %i.sq, 3                ; 3 uses
  %i.sr = icmp ult i64 %i.so, 6
  br i1 %i.sr, label %.lr.ph1322.epil.preheader, label %.lr.ph1322.preheader.new

.lr.ph1322.preheader.new:                         ; preds = %.lr.ph1322.preheader
  %unroll_iter1850 = and i64 %i.sq, -4
  br label %.lr.ph1322

.lr.ph1322:                                       ; preds = %.lr.ph1322, %.lr.ph1322.preheader.new
  %i.ss = phi i64 [ 2, %.lr.ph1322.preheader.new ], [ %i.tr, %.lr.ph1322 ] ; 5 uses
  %.027.i631321 = phi i64 [ 0, %.lr.ph1322.preheader.new ], [ %i.tk, %.lr.ph1322 ]
  %i.st = phi <2 x double> [ zeroinitializer, %.lr.ph1322.preheader.new ], [ %i.tq, %.lr.ph1322 ]
  %niter1851 = phi i64 [ 0, %.lr.ph1322.preheader.new ], [ %niter1851.next.3, %.lr.ph1322 ]
  %i.su = shl i64 %.027.i631321, 1
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 %i.su
  %i.sw = load <2 x i16>, ptr %i.sv, align 1
  %i.sx = uitofp <2 x i16> %i.sw to <2 x double>
  %i.sy = fadd <2 x double> %i.st, %i.sx
  %i.sz = shl i64 %i.ss, 1
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 %i.sz
  %i.tb = load <2 x i16>, ptr %i.ta, align 1
  %i.tc = uitofp <2 x i16> %i.tb to <2 x double>
  %i.td = fadd <2 x double> %i.sy, %i.tc
  %i.te = shl i64 %i.ss, 1
  %i.tf = getelementptr i8, ptr %1, i64 %i.te
  %i.tg = getelementptr i8, ptr %i.tf, i64 4
  %i.th = load <2 x i16>, ptr %i.tg, align 1
  %i.ti = uitofp <2 x i16> %i.th to <2 x double>
  %i.tj = fadd <2 x double> %i.td, %i.ti
  %i.tk = add nuw i64 %i.ss, 6                    ; 2 uses
  %i.tl = shl i64 %i.ss, 1
  %i.tm = getelementptr i8, ptr %1, i64 %i.tl
  %i.tn = getelementptr i8, ptr %i.tm, i64 8
  %i.to = load <2 x i16>, ptr %i.tn, align 1
  %i.tp = uitofp <2 x i16> %i.to to <2 x double>
  %i.tq = fadd <2 x double> %i.tj, %i.tp          ; 3 uses
  %i.tr = add nuw i64 %i.ss, 8                    ; 2 uses
  %niter1851.next.3 = add i64 %niter1851, 4       ; 2 uses
  %niter1851.ncmp.3.not = icmp eq i64 %niter1851.next.3, %unroll_iter1850
  br i1 %niter1851.ncmp.3.not, label %._crit_edge1323.loopexit.unr-lcssa, label %.lr.ph1322, !llvm.loop !24

._crit_edge1323.loopexit.unr-lcssa:               ; preds = %.lr.ph1322
  %lcmp.mod1847.not = icmp eq i64 %xtraiter1841, 0
  br i1 %lcmp.mod1847.not, label %._crit_edge1323.loopexit, label %.lr.ph1322.epil.preheader

.lr.ph1322.epil.preheader:                        ; preds = %._crit_edge1323.loopexit.unr-lcssa, %.lr.ph1322.preheader
  %.epil.init1844 = phi i64 [ 2, %.lr.ph1322.preheader ], [ %i.tr, %._crit_edge1323.loopexit.unr-lcssa ]
  %.027.i631321.epil.init = phi i64 [ 0, %.lr.ph1322.preheader ], [ %i.tk, %._crit_edge1323.loopexit.unr-lcssa ]
  %.epil.init1846 = phi <2 x double> [ zeroinitializer, %.lr.ph1322.preheader ], [ %i.tq, %._crit_edge1323.loopexit.unr-lcssa ]
  %lcmp.mod1849 = icmp ne i64 %xtraiter1841, 0
  call void @llvm.assume(i1 %lcmp.mod1849)
  br label %.lr.ph1322.epil

.lr.ph1322.epil:                                  ; preds = %.lr.ph1322.epil, %.lr.ph1322.epil.preheader
  %i.ts = phi i64 [ %i.tz, %.lr.ph1322.epil ], [ %.epil.init1844, %.lr.ph1322.epil.preheader ] ; 2 uses
  %.027.i631321.epil = phi i64 [ %i.ts, %.lr.ph1322.epil ], [ %.027.i631321.epil.init, %.lr.ph1322.epil.preheader ]
  %i.tt = phi <2 x double> [ %i.ty, %.lr.ph1322.epil ], [ %.epil.init1846, %.lr.ph1322.epil.preheader ]
  %epil.iter1842 = phi i64 [ %epil.iter1842.next, %.lr.ph1322.epil ], [ 0, %.lr.ph1322.epil.preheader ]
  %i.tu = shl i64 %.027.i631321.epil, 1
  %i.tv = getelementptr inbounds nuw i8, ptr %1, i64 %i.tu
  %i.tw = load <2 x i16>, ptr %i.tv, align 1
  %i.tx = uitofp <2 x i16> %i.tw to <2 x double>
  %i.ty = fadd <2 x double> %i.tt, %i.tx          ; 2 uses
  %i.tz = add nuw i64 %i.ts, 2
  %epil.iter1842.next = add i64 %epil.iter1842, 1 ; 2 uses
  %epil.iter1842.cmp.not = icmp eq i64 %epil.iter1842.next, %xtraiter1841
  br i1 %epil.iter1842.cmp.not, label %._crit_edge1323.loopexit, label %.lr.ph1322.epil, !llvm.loop !25

._crit_edge1323.loopexit:                         ; preds = %.lr.ph1322.epil, %._crit_edge1323.loopexit.unr-lcssa
  %.lcssa1792 = phi <2 x double> [ %i.tq, %._crit_edge1323.loopexit.unr-lcssa ], [ %i.ty, %.lr.ph1322.epil ] ; 2 uses
  %i.ua = add i64 %3, -3
  %i.ub = and i64 %i.ua, -2
  %i.uc = add nuw i64 %i.ub, 2
  %shift = shufflevector <2 x double> %.lcssa1792, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.lcssa1792, %shift
  %i.ud = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %._crit_edge1323

._crit_edge1323:                                  ; preds = %._crit_edge1323.loopexit, %.preheader1270
  %.027.i63.lcssa = phi i64 [ 0, %.preheader1270 ], [ %i.uc, %._crit_edge1323.loopexit ] ; 5 uses
  %i.ue = phi double [ 0.000000e+00, %.preheader1270 ], [ %i.ud, %._crit_edge1323.loopexit ] ; 3 uses
  %i.uf = icmp ult i64 %.027.i63.lcssa, %3
  br i1 %i.uf, label %.lr.ph1330.preheader, label %calcMean.exit67

.lr.ph1330.preheader:                             ; preds = %._crit_edge1323
  %i.ug = sub nuw i64 %3, %.027.i63.lcssa
  %xtraiter1852 = and i64 %i.ug, 3                ; 2 uses
  %lcmp.mod1853.not = icmp eq i64 %xtraiter1852, 0
  br i1 %lcmp.mod1853.not, label %.lr.ph1330.prol.loopexit, label %.lr.ph1330.prol

.lr.ph1330.prol:                                  ; preds = %.lr.ph1330.preheader, %.lr.ph1330.prol
  %.0.i651328.prol = phi double [ %i.uk, %.lr.ph1330.prol ], [ %i.ue, %.lr.ph1330.preheader ]
  %.1.i641327.prol = phi i64 [ %i.ul, %.lr.ph1330.prol ], [ %.027.i63.lcssa, %.lr.ph1330.preheader ] ; 2 uses
  %prol.iter1854 = phi i64 [ %prol.iter1854.next, %.lr.ph1330.prol ], [ 0, %.lr.ph1330.preheader ]
  %i.uh = shl i64 %.1.i641327.prol, 1
  %i.ui = getelementptr inbounds nuw i8, ptr %1, i64 %i.uh
  %.val80.prol = load i16, ptr %i.ui, align 1
  %i.uj = uitofp i16 %.val80.prol to double
  %i.uk = fadd double %.0.i651328.prol, %i.uj     ; 3 uses
  %i.ul = add nuw i64 %.1.i641327.prol, 1         ; 2 uses
  %prol.iter1854.next = add i64 %prol.iter1854, 1 ; 2 uses
  %prol.iter1854.cmp.not = icmp eq i64 %prol.iter1854.next, %xtraiter1852
  br i1 %prol.iter1854.cmp.not, label %.lr.ph1330.prol.loopexit, label %.lr.ph1330.prol, !llvm.loop !26

.lr.ph1330.prol.loopexit:                         ; preds = %.lr.ph1330.prol, %.lr.ph1330.preheader
  %.lcssa1791.unr = phi double [ poison, %.lr.ph1330.preheader ], [ %i.uk, %.lr.ph1330.prol ]
  %.0.i651328.unr = phi double [ %i.ue, %.lr.ph1330.preheader ], [ %i.uk, %.lr.ph1330.prol ]
  %.1.i641327.unr = phi i64 [ %.027.i63.lcssa, %.lr.ph1330.preheader ], [ %i.ul, %.lr.ph1330.prol ]
  %i.um = sub i64 %.027.i63.lcssa, %3
  %i.un = icmp ugt i64 %i.um, -4
  br i1 %i.un, label %calcMean.exit67, label %.lr.ph1330

.lr.ph1330:                                       ; preds = %.lr.ph1330.prol.loopexit, %.lr.ph1330
  %.0.i651328 = phi double [ %i.vg, %.lr.ph1330 ], [ %.0.i651328.unr, %.lr.ph1330.prol.loopexit ]
  %.1.i641327 = phi i64 [ %i.vh, %.lr.ph1330 ], [ %.1.i641327.unr, %.lr.ph1330.prol.loopexit ] ; 5 uses
  %i.uo = shl i64 %.1.i641327, 1
  %i.up = getelementptr inbounds nuw i8, ptr %1, i64 %i.uo
  %.val80 = load i16, ptr %i.up, align 1
  %i.uq = uitofp i16 %.val80 to double
  %i.ur = fadd double %.0.i651328, %i.uq
  %i.us = shl i64 %.1.i641327, 1
  %i.ut = getelementptr i8, ptr %1, i64 %i.us
  %i.uu = getelementptr i8, ptr %i.ut, i64 2
  %.val80.1 = load i16, ptr %i.uu, align 1
  %i.uv = uitofp i16 %.val80.1 to double
  %i.uw = fadd double %i.ur, %i.uv
  %i.ux = shl i64 %.1.i641327, 1
  %i.uy = getelementptr i8, ptr %1, i64 %i.ux
  %i.uz = getelementptr i8, ptr %i.uy, i64 4
  %.val80.2 = load i16, ptr %i.uz, align 1
  %i.va = uitofp i16 %.val80.2 to double
  %i.vb = fadd double %i.uw, %i.va
  %i.vc = shl i64 %.1.i641327, 1
  %i.vd = getelementptr i8, ptr %1, i64 %i.vc
  %i.ve = getelementptr i8, ptr %i.vd, i64 6
  %.val80.3 = load i16, ptr %i.ve, align 1
  %i.vf = uitofp i16 %.val80.3 to double
  %i.vg = fadd double %i.vb, %i.vf                ; 2 uses
  %i.vh = add nuw i64 %.1.i641327, 4              ; 2 uses
  %exitcond1364.not.3 = icmp eq i64 %i.vh, %3
  br i1 %exitcond1364.not.3, label %calcMean.exit67, label %.lr.ph1330, !llvm.loop !27

calcMean.exit67:                                  ; preds = %.lr.ph1330.prol.loopexit, %.lr.ph1330, %._crit_edge1323
  %.0.i65.lcssa = phi double [ %i.ue, %._crit_edge1323 ], [ %.lcssa1791.unr, %.lr.ph1330.prol.loopexit ], [ %i.vg, %.lr.ph1330 ]
  %i.vi = uitofp i64 %3 to double                 ; 3 uses
  %i.vj = fdiv double %.0.i65.lcssa, %i.vi        ; 5 uses
  %i.vk = icmp eq i64 %3, 1
  br i1 %i.vk, label %calcMoments.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %calcMean.exit67
  %xtraiter1855 = and i64 %3, 1
  %unroll_iter1863 = and i64 %3, -2
  br label %.preheader

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod1859.not = icmp eq i64 %xtraiter1855, 0
  br i1 %lcmp.mod1859.not, label %bb.ei, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa
  %lcmp.mod1862 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod1862)
  %i.vl = shl i64 %i.xo, 1
  %i.vm = getelementptr inbounds nuw i8, ptr %1, i64 %i.vl
  %.val.epil = load i16, ptr %i.vm, align 1
  %i.vn = uitofp i16 %.val.epil to double
  %i.vo = fsub double %i.vn, %i.vj                ; 6 uses
  %i.vp = call double @llvm.fmuladd.f64(double %i.vo, double %i.vo, double %i.xg)
  %i.vq = fmul double %i.vo, %i.vo                ; 2 uses
  %i.vr = fmul double %i.vo, %i.vq
  %i.vs = insertelement <2 x double> poison, double %i.vq, i64 0
  %i.vt = insertelement <2 x double> %i.vs, double %i.vr, i64 1
  %i.vu = insertelement <2 x double> poison, double %i.vo, i64 0
  %i.vv = shufflevector <2 x double> %i.vu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vt, <2 x double> %i.vv, <2 x double> %i.xn)
  br label %bb.ei

bb.ei:                                            ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %.lcssa1790 = phi double [ %i.xg, %.unr-lcssa ], [ %i.vp, %.preheader.epil.preheader ] ; 2 uses
  %.lcssa1789 = phi <2 x double> [ %i.xn, %.unr-lcssa ], [ %i.vw, %.preheader.epil.preheader ]
  %i.vx = fdiv double %.lcssa1790, %i.vi
  %i.vy = call double @sqrt(double noundef %i.vx) #10, !noalias !57 ; 4 uses
  %i.vz = add i64 %3, -1
  %i.wa = uitofp i64 %i.vz to double
  %i.wb = fdiv double %.lcssa1790, %i.wa          ; 2 uses
  %i.wc = call double @sqrt(double noundef %i.wb) #10, !noalias !57
  %i.wd = fmul double %i.vy, %i.vy
  %i.we = fmul double %i.vy, %i.wd                ; 2 uses
  %i.wf = fmul double %i.vy, %i.we
  %i.wg = insertelement <2 x double> poison, double %i.we, i64 0
  %i.wh = insertelement <2 x double> %i.wg, double %i.wf, i64 1
  %i.wi = fdiv <2 x double> %.lcssa1789, %i.wh
  %i.wj = insertelement <2 x double> poison, double %i.vi, i64 0
  %i.wk = shufflevector <2 x double> %i.wj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wl = fdiv <2 x double> %i.wi, %i.wk
  %8 = fadd <2 x double> %i.wl, <double -0.000000e+00, double -3.000000e+00>
  %i.wm = fptrunc double %i.wb to float
  %i.wn = fptrunc double %i.wc to float
  %9 = fptrunc <2 x double> %8 to <2 x float>     ; 2 uses
  %10 = extractelement <2 x float> %9, i64 0
  %11 = extractelement <2 x float> %9, i64 1
  br label %calcMoments.exit

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %.0.i1335 = phi double [ 0.000000e+00, %.preheader.preheader ], [ %i.xg, %.preheader ]
  %.045.i1334 = phi i64 [ 0, %.preheader.preheader ], [ %i.xo, %.preheader ] ; 3 uses
  %i.wo = phi <2 x double> [ zeroinitializer, %.preheader.preheader ], [ %i.xn, %.preheader ]
  %niter1864 = phi i64 [ 0, %.preheader.preheader ], [ %niter1864.next.1, %.preheader ]
  %i.wp = shl i64 %.045.i1334, 1
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 %i.wp
  %.val = load i16, ptr %i.wq, align 1
  %i.wr = uitofp i16 %.val to double
  %i.ws = fsub double %i.wr, %i.vj                ; 6 uses
  %i.wt = call double @llvm.fmuladd.f64(double %i.ws, double %i.ws, double %.0.i1335)
  %i.wu = fmul double %i.ws, %i.ws                ; 2 uses
  %i.wv = fmul double %i.ws, %i.wu
  %i.ww = insertelement <2 x double> poison, double %i.wu, i64 0
  %i.wx = insertelement <2 x double> %i.ww, double %i.wv, i64 1
  %i.wy = insertelement <2 x double> poison, double %i.ws, i64 0
  %i.wz = shufflevector <2 x double> %i.wy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wx, <2 x double> %i.wz, <2 x double> %i.wo)
  %i.xb = shl i64 %.045.i1334, 1
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 %i.xb
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 2
  %.val.1 = load i16, ptr %i.xd, align 1
  %i.xe = uitofp i16 %.val.1 to double
  %i.xf = fsub double %i.xe, %i.vj                ; 6 uses
  %i.xg = call double @llvm.fmuladd.f64(double %i.xf, double %i.xf, double %i.wt) ; 3 uses
  %i.xh = fmul double %i.xf, %i.xf                ; 2 uses
  %i.xi = fmul double %i.xf, %i.xh
  %i.xj = insertelement <2 x double> poison, double %i.xh, i64 0
  %i.xk = insertelement <2 x double> %i.xj, double %i.xi, i64 1
  %i.xl = insertelement <2 x double> poison, double %i.xf, i64 0
  %i.xm = shufflevector <2 x double> %i.xl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xk, <2 x double> %i.xm, <2 x double> %i.xa) ; 3 uses
  %i.xo = add nuw i64 %.045.i1334, 2              ; 2 uses
  %niter1864.next.1 = add i64 %niter1864, 2       ; 2 uses
  %niter1864.ncmp.1 = icmp eq i64 %niter1864.next.1, %unroll_iter1863
  br i1 %niter1864.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !30

calcMoments.exit:                                 ; preds = %bb.eh, %calcMean.exit67, %bb.ei
  %.030.i661235 = phi double [ %i.vj, %calcMean.exit67 ], [ %i.vj, %bb.ei ], [ 0.000000e+00, %bb.eh ]
  %.sroa.61184.0 = phi float [ 0.000000e+00, %calcMean.exit67 ], [ %i.wn, %bb.ei ], [ 0.000000e+00, %bb.eh ]
  %.sroa.91185.0 = phi float [ 0.000000e+00, %calcMean.exit67 ], [ %i.wm, %bb.ei ], [ 0.000000e+00, %bb.eh ]
  %.sroa.111186.0 = phi float [ 0.000000e+00, %calcMean.exit67 ], [ %10, %bb.ei ], [ 0.000000e+00, %bb.eh ]
  %.sroa.131187.0 = phi float [ 0.000000e+00, %calcMean.exit67 ], [ %11, %bb.ei ], [ 0.000000e+00, %bb.eh ]
  %i.xp = uitofp i64 %3 to float
  %i.xq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !47
  %i.xs = uitofp i64 %i.xr to float
  %i.xt = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !48
  %i.xv = uitofp i64 %i.xu to float
  %i.xw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !49
  %i.xy = uitofp i64 %i.xx to float
  %i.xz = uitofp i64 %i.sj to float
  %i.ya = fptrunc double %.030.i661235 to float
  %i.yb = load i32, ptr %0, align 8, !tbaa !52    ; 4 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 33 uses
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !53 ; 9 uses
  %.not.i322 = icmp ult i32 %i.yb, %i.yd
  br i1 %.not.i322, label %.critedge.i331, label %bb.ej

bb.ej:                                            ; preds = %calcMoments.exit
  %i.ye = icmp eq i32 %i.yd, 0                    ; 2 uses
  br i1 %i.ye, label %GenericVector_nextCapacity.exit.i323, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.yf = icmp ugt i32 %i.yd, 511
  br i1 %i.yf, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.yg = zext i32 %i.yd to i64                   ; 2 uses
  %i.yh = lshr i64 %i.yg, 2
  %i.yi = add nuw nsw i64 %i.yh, %i.yg
  br label %GenericVector_nextCapacity.exit.i323

bb.em:                                            ; preds = %bb.ek
  %i.yj = shl nuw nsw i32 %i.yd, 1
  %i.yk = zext nneg i32 %i.yj to i64
  br label %GenericVector_nextCapacity.exit.i323

GenericVector_nextCapacity.exit.i323:             ; preds = %bb.em, %bb.el, %bb.ej
  %.0.i.i324 = phi i64 [ %i.yk, %bb.em ], [ %i.yi, %bb.el ], [ 4, %bb.ej ] ; 2 uses
  %i.yl = zext i32 %i.yd to i64                   ; 6 uses
  %i.ym = icmp samesign ult i64 %.0.i.i324, %i.yl
  %.phi.trans.insert.i.i325 = getelementptr i8, ptr %0, i64 8
  %.val.pre.i.i326 = load i32, ptr %.phi.trans.insert.i.i325, align 8, !tbaa !54
  %.pre.i.i327 = zext i32 %.val.pre.i.i326 to i64 ; 4 uses
  %spec.select.i.i328 = call i64 @llvm.umin.i64(i64 %.0.i.i324, i64 %.pre.i.i327)
  %.010.i.i329 = select i1 %i.ym, i64 %.pre.i.i327, i64 %spec.select.i.i328 ; 4 uses
  %i.yn = icmp eq i64 %.010.i.i329, %i.yl
  br i1 %i.yn, label %GenericVector_pushBack.exit344, label %bb.en

bb.en:                                            ; preds = %GenericVector_nextCapacity.exit.i323
  %.not.i.i330 = icmp samesign ugt i64 %.010.i.i329, %i.yl
  br i1 %.not.i.i330, label %bb.eo, label %.critedge.i331

bb.eo:                                            ; preds = %bb.en
  br i1 %i.ye, label %bb.es, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.yo = icmp ugt i32 %i.yd, 511
  br i1 %i.yo, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.yp = lshr i64 %i.yl, 2
  %i.yq = add nuw nsw i64 %i.yp, %i.yl
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  %i.yr = shl nuw nsw i32 %i.yd, 1
  %i.ys = zext nneg i32 %i.yr to i64
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.eo
  %.0.i.i.i333 = phi i64 [ %i.ys, %bb.er ], [ %i.yq, %bb.eq ], [ 4, %bb.eo ] ; 2 uses
  %i.yt = icmp samesign ult i64 %.0.i.i.i333, %i.yl
  %spec.select.i.i.i334 = call i64 @llvm.umin.i64(i64 %.0.i.i.i333, i64 %.pre.i.i327)
  %i.yu = call i64 @llvm.umax.i64(i64 %.010.i.i329, i64 %spec.select.i.i.i334)
  %spec.select.i18.i335 = select i1 %i.yt, i64 %.pre.i.i327, i64 %i.yu ; 2 uses
  %i.yv = shl nuw nsw i64 %spec.select.i18.i335, 4 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i336 = icmp eq ptr %i.yx, null
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !56 ; 2 uses
  br i1 %.not.i.i.i336, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.za = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.yx, ptr noundef %i.yz, i64 noundef %i.yv) #10
  br label %GenericVector_reallocData.exit.i.i337

bb.eu:                                            ; preds = %bb.es
  %i.zb = call ptr @ZL_realloc(ptr noundef %i.yz, i64 noundef %i.yv) #10
  br label %GenericVector_reallocData.exit.i.i337

GenericVector_reallocData.exit.i.i337:            ; preds = %bb.eu, %bb.et
  %.0.i28.i.i338 = phi ptr [ %i.za, %bb.et ], [ %i.zb, %bb.eu ] ; 2 uses
  %.not26.i.i339 = icmp eq ptr %.0.i28.i.i338, null
  br i1 %.not26.i.i339, label %GenericVector_reallocData.exit._crit_edge.i.i341, label %.thread21.i340

GenericVector_reallocData.exit._crit_edge.i.i341: ; preds = %GenericVector_reallocData.exit.i.i337
  %.pre.i19.i342 = load i32, ptr %i.yc, align 4, !tbaa !53 ; 2 uses
  %i.zc = zext i32 %.pre.i19.i342 to i64
  %.not23.i343 = icmp samesign ugt i64 %.010.i.i329, %i.zc
  %.pre1486 = load i32, ptr %0, align 8, !tbaa !52 ; 2 uses
  br i1 %.not23.i343, label %GenericVector_pushBack.exit344, label %.critedge.i331

.thread21.i340:                                   ; preds = %GenericVector_reallocData.exit.i.i337
  store ptr %.0.i28.i.i338, ptr %i.yy, align 8, !tbaa !56
  %i.zd = trunc nuw i64 %spec.select.i18.i335 to i32
  store i32 %i.zd, ptr %i.yc, align 4, !tbaa !53
  %.pre1485 = load i32, ptr %0, align 8, !tbaa !52
  br label %.critedge.i331

.critedge.i331:                                   ; preds = %.thread21.i340, %GenericVector_reallocData.exit._crit_edge.i.i341, %bb.en, %calcMoments.exit
  %i.ze = phi i32 [ %.pre1485, %.thread21.i340 ], [ %.pre1486, %GenericVector_reallocData.exit._crit_edge.i.i341 ], [ %i.yb, %bb.en ], [ %i.yb, %calcMoments.exit ]
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !56
  %i.zh = zext i32 %i.ze to i64
  %i.zi = shl nuw nsw i64 %i.zh, 4
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.zi ; 3 uses
  store ptr @.str.10, ptr %i.zj, align 1
  %.sroa.41181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  store float %i.xp, ptr %.sroa.41181.0..sroa_idx, align 1
  %.sroa.51182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zj, i64 12
  store i32 0, ptr %.sroa.51182.0..sroa_idx, align 1
  %i.zk = load i32, ptr %0, align 8, !tbaa !52
  %i.zl = add i32 %i.zk, 1                        ; 2 uses
  store i32 %i.zl, ptr %0, align 8, !tbaa !52
  %.pr1236.pre = load i32, ptr %i.yc, align 4, !tbaa !53
  br label %GenericVector_pushBack.exit344

GenericVector_pushBack.exit344:                   ; preds = %GenericVector_nextCapacity.exit.i323, %.critedge.i331, %GenericVector_reallocData.exit._crit_edge.i.i341
  %i.zm = phi i32 [ %.pre1486, %GenericVector_reallocData.exit._crit_edge.i.i341 ], [ %i.yb, %GenericVector_nextCapacity.exit.i323 ], [ %i.zl, %.critedge.i331 ] ; 4 uses
  %i.zn = phi i32 [ %.pre.i19.i342, %GenericVector_reallocData.exit._crit_edge.i.i341 ], [ %i.yd, %GenericVector_nextCapacity.exit.i323 ], [ %.pr1236.pre, %.critedge.i331 ] ; 9 uses
  %.1.i332 = phi i1 [ true, %GenericVector_reallocData.exit._crit_edge.i.i341 ], [ true, %GenericVector_nextCapacity.exit.i323 ], [ false, %.critedge.i331 ]
  %.not.i345 = icmp ult i32 %i.zm, %i.zn
  br i1 %.not.i345, label %.critedge.i354, label %bb.ev

bb.ev:                                            ; preds = %GenericVector_pushBack.exit344
  %i.zo = icmp eq i32 %i.zn, 0                    ; 2 uses
  br i1 %i.zo, label %GenericVector_nextCapacity.exit.i346, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.zp = icmp ugt i32 %i.zn, 511
  br i1 %i.zp, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.zq = zext i32 %i.zn to i64                   ; 2 uses
  %i.zr = lshr i64 %i.zq, 2
  %i.zs = add nuw nsw i64 %i.zr, %i.zq
  br label %GenericVector_nextCapacity.exit.i346

bb.ey:                                            ; preds = %bb.ew
  %i.zt = shl nuw nsw i32 %i.zn, 1
  %i.zu = zext nneg i32 %i.zt to i64
  br label %GenericVector_nextCapacity.exit.i346

GenericVector_nextCapacity.exit.i346:             ; preds = %bb.ey, %bb.ex, %bb.ev
  %.0.i.i347 = phi i64 [ %i.zu, %bb.ey ], [ %i.zs, %bb.ex ], [ 4, %bb.ev ] ; 2 uses
  %i.zv = zext i32 %i.zn to i64                   ; 6 uses
  %i.zw = icmp samesign ult i64 %.0.i.i347, %i.zv
  %.phi.trans.insert.i.i348 = getelementptr i8, ptr %0, i64 8
  %.val.pre.i.i349 = load i32, ptr %.phi.trans.insert.i.i348, align 8, !tbaa !54
  %.pre.i.i350 = zext i32 %.val.pre.i.i349 to i64 ; 4 uses
  %spec.select.i.i351 = call i64 @llvm.umin.i64(i64 %.0.i.i347, i64 %.pre.i.i350)
  %.010.i.i352 = select i1 %i.zw, i64 %.pre.i.i350, i64 %spec.select.i.i351 ; 4 uses
  %i.zx = icmp eq i64 %.010.i.i352, %i.zv
  br i1 %i.zx, label %GenericVector_pushBack.exit367, label %bb.ez

bb.ez:                                            ; preds = %GenericVector_nextCapacity.exit.i346
  %.not.i.i353 = icmp samesign ugt i64 %.010.i.i352, %i.zv
  br i1 %.not.i.i353, label %bb.fa, label %.critedge.i354

bb.fa:                                            ; preds = %bb.ez
  br i1 %i.zo, label %bb.fe, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.zy = icmp ugt i32 %i.zn, 511
  br i1 %i.zy, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.zz = lshr i64 %i.zv, 2
  %i.aaa = add nuw nsw i64 %i.zz, %i.zv
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fb
  %i.aab = shl nuw nsw i32 %i.zn, 1
  %i.aac = zext nneg i32 %i.aab to i64
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc, %bb.fa
  %.0.i.i.i356 = phi i64 [ %i.aac, %bb.fd ], [ %i.aaa, %bb.fc ], [ 4, %bb.fa ] ; 2 uses
  %i.aad = icmp samesign ult i64 %.0.i.i.i356, %i.zv
  %spec.select.i.i.i357 = call i64 @llvm.umin.i64(i64 %.0.i.i.i356, i64 %.pre.i.i350)
  %i.aae = call i64 @llvm.umax.i64(i64 %.010.i.i352, i64 %spec.select.i.i.i357)
  %spec.select.i18.i358 = select i1 %i.aad, i64 %.pre.i.i350, i64 %i.aae ; 2 uses
  %i.aaf = shl nuw nsw i64 %spec.select.i18.i358, 4 ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i359 = icmp eq ptr %i.aah, null
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !56 ; 2 uses
end_hunk_0
begin_hunk_1_@calcIntegerFeatures:bb.a
  %i.anp = icmp ugt i64 %3, 2
  br i1 %i.anp, label %.lr.ph1300.preheader, label %._crit_edge1301

.lr.ph1300.preheader:                             ; preds = %.preheader1272
  %i.anq = add i64 %3, -3                         ; 2 uses
  %i.anr = lshr i64 %i.anq, 1
  %i.ans = add nuw i64 %i.anr, 1                  ; 2 uses
  %xtraiter1817 = and i64 %i.ans, 3               ; 3 uses
  %i.ant = icmp ult i64 %i.anq, 6
  br i1 %i.ant, label %.lr.ph1300.epil.preheader, label %.lr.ph1300.preheader.new

.lr.ph1300.preheader.new:                         ; preds = %.lr.ph1300.preheader
  %unroll_iter1826 = and i64 %i.ans, -4
  br label %.lr.ph1300

.lr.ph1300:                                       ; preds = %.lr.ph1300, %.lr.ph1300.preheader.new
  %i.anu = phi i64 [ 2, %.lr.ph1300.preheader.new ], [ %i.aot, %.lr.ph1300 ] ; 5 uses
  %.027.i561299 = phi i64 [ 0, %.lr.ph1300.preheader.new ], [ %i.aom, %.lr.ph1300 ]
  %i.anv = phi <2 x double> [ zeroinitializer, %.lr.ph1300.preheader.new ], [ %i.aos, %.lr.ph1300 ]
  %niter1827 = phi i64 [ 0, %.lr.ph1300.preheader.new ], [ %niter1827.next.3, %.lr.ph1300 ]
  %i.anw = shl i64 %.027.i561299, 2
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 %i.anw
  %i.any = load <2 x i32>, ptr %i.anx, align 1
  %i.anz = uitofp <2 x i32> %i.any to <2 x double>
  %i.aoa = fadd <2 x double> %i.anv, %i.anz
  %i.aob = shl i64 %i.anu, 2
  %i.aoc = getelementptr inbounds nuw i8, ptr %1, i64 %i.aob
  %i.aod = load <2 x i32>, ptr %i.aoc, align 1
  %i.aoe = uitofp <2 x i32> %i.aod to <2 x double>
  %i.aof = fadd <2 x double> %i.aoa, %i.aoe
  %i.aog = shl i64 %i.anu, 2
  %i.aoh = getelementptr i8, ptr %1, i64 %i.aog
  %i.aoi = getelementptr i8, ptr %i.aoh, i64 8
  %i.aoj = load <2 x i32>, ptr %i.aoi, align 1
  %i.aok = uitofp <2 x i32> %i.aoj to <2 x double>
  %i.aol = fadd <2 x double> %i.aof, %i.aok
  %i.aom = add nuw i64 %i.anu, 6                  ; 2 uses
  %i.aon = shl i64 %i.anu, 2
  %i.aoo = getelementptr i8, ptr %1, i64 %i.aon
  %i.aop = getelementptr i8, ptr %i.aoo, i64 16
  %i.aoq = load <2 x i32>, ptr %i.aop, align 1
  %i.aor = uitofp <2 x i32> %i.aoq to <2 x double>
  %i.aos = fadd <2 x double> %i.aol, %i.aor       ; 3 uses
  %i.aot = add nuw i64 %i.anu, 8                  ; 2 uses
  %niter1827.next.3 = add i64 %niter1827, 4       ; 2 uses
  %niter1827.ncmp.3.not = icmp eq i64 %niter1827.next.3, %unroll_iter1826
  br i1 %niter1827.ncmp.3.not, label %._crit_edge1301.loopexit.unr-lcssa, label %.lr.ph1300, !llvm.loop !24

._crit_edge1301.loopexit.unr-lcssa:               ; preds = %.lr.ph1300
  %lcmp.mod1823.not = icmp eq i64 %xtraiter1817, 0
  br i1 %lcmp.mod1823.not, label %._crit_edge1301.loopexit, label %.lr.ph1300.epil.preheader

.lr.ph1300.epil.preheader:                        ; preds = %._crit_edge1301.loopexit.unr-lcssa, %.lr.ph1300.preheader
  %.epil.init1820 = phi i64 [ 2, %.lr.ph1300.preheader ], [ %i.aot, %._crit_edge1301.loopexit.unr-lcssa ]
  %.027.i561299.epil.init = phi i64 [ 0, %.lr.ph1300.preheader ], [ %i.aom, %._crit_edge1301.loopexit.unr-lcssa ]
  %.epil.init1822 = phi <2 x double> [ zeroinitializer, %.lr.ph1300.preheader ], [ %i.aos, %._crit_edge1301.loopexit.unr-lcssa ]
  %lcmp.mod1825 = icmp ne i64 %xtraiter1817, 0
  call void @llvm.assume(i1 %lcmp.mod1825)
  br label %.lr.ph1300.epil

.lr.ph1300.epil:                                  ; preds = %.lr.ph1300.epil, %.lr.ph1300.epil.preheader
  %i.aou = phi i64 [ %i.apb, %.lr.ph1300.epil ], [ %.epil.init1820, %.lr.ph1300.epil.preheader ] ; 2 uses
  %.027.i561299.epil = phi i64 [ %i.aou, %.lr.ph1300.epil ], [ %.027.i561299.epil.init, %.lr.ph1300.epil.preheader ]
  %i.aov = phi <2 x double> [ %i.apa, %.lr.ph1300.epil ], [ %.epil.init1822, %.lr.ph1300.epil.preheader ]
  %epil.iter1818 = phi i64 [ %epil.iter1818.next, %.lr.ph1300.epil ], [ 0, %.lr.ph1300.epil.preheader ]
  %i.aow = shl i64 %.027.i561299.epil, 2
  %i.aox = getelementptr inbounds nuw i8, ptr %1, i64 %i.aow
  %i.aoy = load <2 x i32>, ptr %i.aox, align 1
  %i.aoz = uitofp <2 x i32> %i.aoy to <2 x double>
  %i.apa = fadd <2 x double> %i.aov, %i.aoz       ; 2 uses
  %i.apb = add nuw i64 %i.aou, 2
  %epil.iter1818.next = add i64 %epil.iter1818, 1 ; 2 uses
  %epil.iter1818.cmp.not = icmp eq i64 %epil.iter1818.next, %xtraiter1817
  br i1 %epil.iter1818.cmp.not, label %._crit_edge1301.loopexit, label %.lr.ph1300.epil, !llvm.loop !31

._crit_edge1301.loopexit:                         ; preds = %.lr.ph1300.epil, %._crit_edge1301.loopexit.unr-lcssa
  %.lcssa1796 = phi <2 x double> [ %i.aos, %._crit_edge1301.loopexit.unr-lcssa ], [ %i.apa, %.lr.ph1300.epil ] ; 2 uses
  %i.apc = add i64 %3, -3
  %i.apd = and i64 %i.apc, -2
  %i.ape = add nuw i64 %i.apd, 2
  %shift1781 = shufflevector <2 x double> %.lcssa1796, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1782 = fadd <2 x double> %.lcssa1796, %shift1781
  %i.apf = extractelement <2 x double> %foldExtExtBinop1782, i64 0
  br label %._crit_edge1301

._crit_edge1301:                                  ; preds = %._crit_edge1301.loopexit, %.preheader1272
  %.027.i56.lcssa = phi i64 [ 0, %.preheader1272 ], [ %i.ape, %._crit_edge1301.loopexit ] ; 5 uses
  %i.apg = phi double [ 0.000000e+00, %.preheader1272 ], [ %i.apf, %._crit_edge1301.loopexit ] ; 3 uses
  %i.aph = icmp ult i64 %.027.i56.lcssa, %3
  br i1 %i.aph, label %.lr.ph1308.preheader, label %calcMean.exit60

.lr.ph1308.preheader:                             ; preds = %._crit_edge1301
  %i.api = sub nuw i64 %3, %.027.i56.lcssa
  %xtraiter1828 = and i64 %i.api, 3               ; 2 uses
  %lcmp.mod1829.not = icmp eq i64 %xtraiter1828, 0
  br i1 %lcmp.mod1829.not, label %.lr.ph1308.prol.loopexit, label %.lr.ph1308.prol

.lr.ph1308.prol:                                  ; preds = %.lr.ph1308.preheader, %.lr.ph1308.prol
  %.0.i581306.prol = phi double [ %i.apm, %.lr.ph1308.prol ], [ %i.apg, %.lr.ph1308.preheader ]
  %.1.i571305.prol = phi i64 [ %i.apn, %.lr.ph1308.prol ], [ %.027.i56.lcssa, %.lr.ph1308.preheader ] ; 2 uses
  %prol.iter1830 = phi i64 [ %prol.iter1830.next, %.lr.ph1308.prol ], [ 0, %.lr.ph1308.preheader ]
  %i.apj = shl i64 %.1.i571305.prol, 2
  %i.apk = getelementptr inbounds nuw i8, ptr %1, i64 %i.apj
  %.val84.prol = load i32, ptr %i.apk, align 1
  %i.apl = uitofp i32 %.val84.prol to double
  %i.apm = fadd double %.0.i581306.prol, %i.apl   ; 3 uses
  %i.apn = add nuw i64 %.1.i571305.prol, 1        ; 2 uses
  %prol.iter1830.next = add i64 %prol.iter1830, 1 ; 2 uses
  %prol.iter1830.cmp.not = icmp eq i64 %prol.iter1830.next, %xtraiter1828
  br i1 %prol.iter1830.cmp.not, label %.lr.ph1308.prol.loopexit, label %.lr.ph1308.prol, !llvm.loop !32

.lr.ph1308.prol.loopexit:                         ; preds = %.lr.ph1308.prol, %.lr.ph1308.preheader
  %.lcssa1795.unr = phi double [ poison, %.lr.ph1308.preheader ], [ %i.apm, %.lr.ph1308.prol ]
  %.0.i581306.unr = phi double [ %i.apg, %.lr.ph1308.preheader ], [ %i.apm, %.lr.ph1308.prol ]
  %.1.i571305.unr = phi i64 [ %.027.i56.lcssa, %.lr.ph1308.preheader ], [ %i.apn, %.lr.ph1308.prol ]
  %i.apo = sub i64 %.027.i56.lcssa, %3
  %i.app = icmp ugt i64 %i.apo, -4
  br i1 %i.app, label %calcMean.exit60, label %.lr.ph1308

.lr.ph1308:                                       ; preds = %.lr.ph1308.prol.loopexit, %.lr.ph1308
  %.0.i581306 = phi double [ %i.aqi, %.lr.ph1308 ], [ %.0.i581306.unr, %.lr.ph1308.prol.loopexit ]
  %.1.i571305 = phi i64 [ %i.aqj, %.lr.ph1308 ], [ %.1.i571305.unr, %.lr.ph1308.prol.loopexit ] ; 5 uses
  %i.apq = shl i64 %.1.i571305, 2
  %i.apr = getelementptr inbounds nuw i8, ptr %1, i64 %i.apq
  %.val84 = load i32, ptr %i.apr, align 1
  %i.aps = uitofp i32 %.val84 to double
  %i.apt = fadd double %.0.i581306, %i.aps
  %i.apu = shl i64 %.1.i571305, 2
  %i.apv = getelementptr i8, ptr %1, i64 %i.apu
  %i.apw = getelementptr i8, ptr %i.apv, i64 4
  %.val84.1 = load i32, ptr %i.apw, align 1
  %i.apx = uitofp i32 %.val84.1 to double
  %i.apy = fadd double %i.apt, %i.apx
  %i.apz = shl i64 %.1.i571305, 2
  %i.aqa = getelementptr i8, ptr %1, i64 %i.apz
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 8
  %.val84.2 = load i32, ptr %i.aqb, align 1
  %i.aqc = uitofp i32 %.val84.2 to double
  %i.aqd = fadd double %i.apy, %i.aqc
  %i.aqe = shl i64 %.1.i571305, 2
  %i.aqf = getelementptr i8, ptr %1, i64 %i.aqe
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 12
  %.val84.3 = load i32, ptr %i.aqg, align 1
  %i.aqh = uitofp i32 %.val84.3 to double
  %i.aqi = fadd double %i.aqd, %i.aqh             ; 2 uses
  %i.aqj = add nuw i64 %.1.i571305, 4             ; 2 uses
  %exitcond1361.not.3 = icmp eq i64 %i.aqj, %3
  br i1 %exitcond1361.not.3, label %calcMean.exit60, label %.lr.ph1308, !llvm.loop !27

calcMean.exit60:                                  ; preds = %.lr.ph1308.prol.loopexit, %.lr.ph1308, %._crit_edge1301
  %.0.i58.lcssa = phi double [ %i.apg, %._crit_edge1301 ], [ %.lcssa1795.unr, %.lr.ph1308.prol.loopexit ], [ %i.aqi, %.lr.ph1308 ]
  %i.aqk = uitofp i64 %3 to double                ; 3 uses
  %i.aql = fdiv double %.0.i58.lcssa, %i.aqk      ; 5 uses
  %i.aqm = icmp eq i64 %3, 1
  br i1 %i.aqm, label %calcMoments.exit47, label %.lr.ph1314.preheader

.lr.ph1314.preheader:                             ; preds = %calcMean.exit60
  %xtraiter1831 = and i64 %3, 1
  %unroll_iter1839 = and i64 %3, -2
  br label %.lr.ph1314

._crit_edge1315.unr-lcssa:                        ; preds = %.lr.ph1314
  %lcmp.mod1835.not = icmp eq i64 %xtraiter1831, 0
  br i1 %lcmp.mod1835.not, label %._crit_edge1315, label %.lr.ph1314.epil.preheader

.lr.ph1314.epil.preheader:                        ; preds = %._crit_edge1315.unr-lcssa
  %lcmp.mod1838 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod1838)
  %i.aqn = shl i64 %i.asq, 2
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 %i.aqn
  %.val83.epil = load i32, ptr %i.aqo, align 1
  %i.aqp = uitofp i32 %.val83.epil to double
  %i.aqq = fsub double %i.aqp, %i.aql             ; 6 uses
  %i.aqr = call double @llvm.fmuladd.f64(double %i.aqq, double %i.aqq, double %i.asi)
  %i.aqs = fmul double %i.aqq, %i.aqq             ; 2 uses
  %i.aqt = fmul double %i.aqq, %i.aqs
  %i.aqu = insertelement <2 x double> poison, double %i.aqs, i64 0
  %i.aqv = insertelement <2 x double> %i.aqu, double %i.aqt, i64 1
  %i.aqw = insertelement <2 x double> poison, double %i.aqq, i64 0
  %i.aqx = shufflevector <2 x double> %i.aqw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aqv, <2 x double> %i.aqx, <2 x double> %i.asp)
  br label %._crit_edge1315

._crit_edge1315:                                  ; preds = %._crit_edge1315.unr-lcssa, %.lr.ph1314.epil.preheader
  %.lcssa1794 = phi double [ %i.asi, %._crit_edge1315.unr-lcssa ], [ %i.aqr, %.lr.ph1314.epil.preheader ] ; 2 uses
  %.lcssa1793 = phi <2 x double> [ %i.asp, %._crit_edge1315.unr-lcssa ], [ %i.aqy, %.lr.ph1314.epil.preheader ]
  %i.aqz = fdiv double %.lcssa1794, %i.aqk
  %i.ara = call double @sqrt(double noundef %i.aqz) #10, !noalias !58 ; 4 uses
  %i.arb = add i64 %3, -1
  %i.arc = uitofp i64 %i.arb to double
  %i.ard = fdiv double %.lcssa1794, %i.arc        ; 2 uses
  %i.are = call double @sqrt(double noundef %i.ard) #10, !noalias !58
  %i.arf = fmul double %i.ara, %i.ara
  %i.arg = fmul double %i.ara, %i.arf             ; 2 uses
  %i.arh = fmul double %i.ara, %i.arg
  %i.ari = insertelement <2 x double> poison, double %i.arg, i64 0
  %i.arj = insertelement <2 x double> %i.ari, double %i.arh, i64 1
  %i.ark = fdiv <2 x double> %.lcssa1793, %i.arj
  %i.arl = insertelement <2 x double> poison, double %i.aqk, i64 0
  %i.arm = shufflevector <2 x double> %i.arl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.arn = fdiv <2 x double> %i.ark, %i.arm
  %12 = fadd <2 x double> %i.arn, <double -0.000000e+00, double -3.000000e+00>
  %i.aro = fptrunc double %i.ard to float
  %i.arp = fptrunc double %i.are to float
  %13 = fptrunc <2 x double> %12 to <2 x float>   ; 2 uses
  %14 = extractelement <2 x float> %13, i64 0
  %15 = extractelement <2 x float> %13, i64 1
  br label %calcMoments.exit47

.lr.ph1314:                                       ; preds = %.lr.ph1314, %.lr.ph1314.preheader
  %.0.i461313 = phi double [ 0.000000e+00, %.lr.ph1314.preheader ], [ %i.asi, %.lr.ph1314 ]
  %.045.i451312 = phi i64 [ 0, %.lr.ph1314.preheader ], [ %i.asq, %.lr.ph1314 ] ; 3 uses
  %i.arq = phi <2 x double> [ zeroinitializer, %.lr.ph1314.preheader ], [ %i.asp, %.lr.ph1314 ]
  %niter1840 = phi i64 [ 0, %.lr.ph1314.preheader ], [ %niter1840.next.1, %.lr.ph1314 ]
  %i.arr = shl i64 %.045.i451312, 2
  %i.ars = getelementptr inbounds nuw i8, ptr %1, i64 %i.arr
  %.val83 = load i32, ptr %i.ars, align 1
  %i.art = uitofp i32 %.val83 to double
  %i.aru = fsub double %i.art, %i.aql             ; 6 uses
  %i.arv = call double @llvm.fmuladd.f64(double %i.aru, double %i.aru, double %.0.i461313)
  %i.arw = fmul double %i.aru, %i.aru             ; 2 uses
  %i.arx = fmul double %i.aru, %i.arw
  %i.ary = insertelement <2 x double> poison, double %i.arw, i64 0
  %i.arz = insertelement <2 x double> %i.ary, double %i.arx, i64 1
  %i.asa = insertelement <2 x double> poison, double %i.aru, i64 0
  %i.asb = shufflevector <2 x double> %i.asa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.asc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.arz, <2 x double> %i.asb, <2 x double> %i.arq)
  %i.asd = shl i64 %.045.i451312, 2
  %i.ase = getelementptr inbounds nuw i8, ptr %1, i64 %i.asd
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 4
  %.val83.1 = load i32, ptr %i.asf, align 1
  %i.asg = uitofp i32 %.val83.1 to double
  %i.ash = fsub double %i.asg, %i.aql             ; 6 uses
  %i.asi = call double @llvm.fmuladd.f64(double %i.ash, double %i.ash, double %i.arv) ; 3 uses
  %i.asj = fmul double %i.ash, %i.ash             ; 2 uses
  %i.ask = fmul double %i.ash, %i.asj
  %i.asl = insertelement <2 x double> poison, double %i.asj, i64 0
  %i.asm = insertelement <2 x double> %i.asl, double %i.ask, i64 1
  %i.asn = insertelement <2 x double> poison, double %i.ash, i64 0
  %i.aso = shufflevector <2 x double> %i.asn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.asp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.asm, <2 x double> %i.aso, <2 x double> %i.asc) ; 3 uses
  %i.asq = add nuw i64 %.045.i451312, 2           ; 2 uses
  %niter1840.next.1 = add i64 %niter1840, 2       ; 2 uses
  %niter1840.ncmp.1 = icmp eq i64 %niter1840.next.1, %unroll_iter1839
  br i1 %niter1840.ncmp.1, label %._crit_edge1315.unr-lcssa, label %.lr.ph1314, !llvm.loop !30

calcMoments.exit47:                               ; preds = %bb.jl, %calcMean.exit60, %._crit_edge1315
  %.030.i591247 = phi double [ %i.aql, %calcMean.exit60 ], [ %i.aql, %._crit_edge1315 ], [ 0.000000e+00, %bb.jl ]
  %.sroa.61146.0 = phi float [ 0.000000e+00, %calcMean.exit60 ], [ %i.arp, %._crit_edge1315 ], [ 0.000000e+00, %bb.jl ]
  %.sroa.91147.0 = phi float [ 0.000000e+00, %calcMean.exit60 ], [ %i.aro, %._crit_edge1315 ], [ 0.000000e+00, %bb.jl ]
  %.sroa.111148.0 = phi float [ 0.000000e+00, %calcMean.exit60 ], [ %14, %._crit_edge1315 ], [ 0.000000e+00, %bb.jl ]
  %.sroa.131149.0 = phi float [ 0.000000e+00, %calcMean.exit60 ], [ %15, %._crit_edge1315 ], [ 0.000000e+00, %bb.jl ]
  %i.asr = uitofp i64 %3 to float
  %i.ass = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !47
  %i.asu = uitofp i64 %i.ast to float
  %i.asv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.asw = load i64, ptr %i.asv, align 8, !tbaa !48
  %i.asx = uitofp i64 %i.asw to float
  %i.asy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.asz = load i64, ptr %i.asy, align 8, !tbaa !49
  %i.ata = uitofp i64 %i.asz to float
  %i.atb = uitofp i64 %i.anl to float
  %i.atc = fptrunc double %.030.i591247 to float
  %i.atd = load i32, ptr %0, align 8, !tbaa !52   ; 4 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 33 uses
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !53 ; 9 uses
  %.not.i575 = icmp ult i32 %i.atd, %i.atf
  br i1 %.not.i575, label %.critedge.i584, label %bb.jm

bb.jm:                                            ; preds = %calcMoments.exit47
  %i.atg = icmp eq i32 %i.atf, 0                  ; 2 uses
  br i1 %i.atg, label %GenericVector_nextCapacity.exit.i576, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.ath = icmp ugt i32 %i.atf, 511
  br i1 %i.ath, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.ati = zext i32 %i.atf to i64                 ; 2 uses
  %i.atj = lshr i64 %i.ati, 2
  %i.atk = add nuw nsw i64 %i.atj, %i.ati
  br label %GenericVector_nextCapacity.exit.i576

bb.jp:                                            ; preds = %bb.jn
  %i.atl = shl nuw nsw i32 %i.atf, 1
  %i.atm = zext nneg i32 %i.atl to i64
  br label %GenericVector_nextCapacity.exit.i576

GenericVector_nextCapacity.exit.i576:             ; preds = %bb.jp, %bb.jo, %bb.jm
  %.0.i.i577 = phi i64 [ %i.atm, %bb.jp ], [ %i.atk, %bb.jo ], [ 4, %bb.jm ] ; 2 uses
  %i.atn = zext i32 %i.atf to i64                 ; 6 uses
  %i.ato = icmp samesign ult i64 %.0.i.i577, %i.atn
  %.phi.trans.insert.i.i578 = getelementptr i8, ptr %0, i64 8
  %.val.pre.i.i579 = load i32, ptr %.phi.trans.insert.i.i578, align 8, !tbaa !54
  %.pre.i.i580 = zext i32 %.val.pre.i.i579 to i64 ; 4 uses
  %spec.select.i.i581 = call i64 @llvm.umin.i64(i64 %.0.i.i577, i64 %.pre.i.i580)
  %.010.i.i582 = select i1 %i.ato, i64 %.pre.i.i580, i64 %spec.select.i.i581 ; 4 uses
  %i.atp = icmp eq i64 %.010.i.i582, %i.atn
  br i1 %i.atp, label %GenericVector_pushBack.exit597, label %bb.jq

bb.jq:                                            ; preds = %GenericVector_nextCapacity.exit.i576
  %.not.i.i583 = icmp samesign ugt i64 %.010.i.i582, %i.atn
  br i1 %.not.i.i583, label %bb.jr, label %.critedge.i584

bb.jr:                                            ; preds = %bb.jq
  br i1 %i.atg, label %bb.jv, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.atq = icmp ugt i32 %i.atf, 511
  br i1 %i.atq, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.atr = lshr i64 %i.atn, 2
  %i.ats = add nuw nsw i64 %i.atr, %i.atn
  br label %bb.jv

bb.ju:                                            ; preds = %bb.js
  %i.att = shl nuw nsw i32 %i.atf, 1
  %i.atu = zext nneg i32 %i.att to i64
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.jr
  %.0.i.i.i586 = phi i64 [ %i.atu, %bb.ju ], [ %i.ats, %bb.jt ], [ 4, %bb.jr ] ; 2 uses
  %i.atv = icmp samesign ult i64 %.0.i.i.i586, %i.atn
  %spec.select.i.i.i587 = call i64 @llvm.umin.i64(i64 %.0.i.i.i586, i64 %.pre.i.i580)
  %i.atw = call i64 @llvm.umax.i64(i64 %.010.i.i582, i64 %spec.select.i.i.i587)
  %spec.select.i18.i588 = select i1 %i.atv, i64 %.pre.i.i580, i64 %i.atw ; 2 uses
  %i.atx = shl nuw nsw i64 %spec.select.i18.i588, 4 ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i589 = icmp eq ptr %i.atz, null
  %i.aua = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !56 ; 2 uses
  br i1 %.not.i.i.i589, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.auc = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.atz, ptr noundef %i.aub, i64 noundef %i.atx) #10
  br label %GenericVector_reallocData.exit.i.i590

bb.jx:                                            ; preds = %bb.jv
  %i.aud = call ptr @ZL_realloc(ptr noundef %i.aub, i64 noundef %i.atx) #10
  br label %GenericVector_reallocData.exit.i.i590

GenericVector_reallocData.exit.i.i590:            ; preds = %bb.jx, %bb.jw
  %.0.i28.i.i591 = phi ptr [ %i.auc, %bb.jw ], [ %i.aud, %bb.jx ] ; 2 uses
  %.not26.i.i592 = icmp eq ptr %.0.i28.i.i591, null
  br i1 %.not26.i.i592, label %GenericVector_reallocData.exit._crit_edge.i.i594, label %.thread21.i593

GenericVector_reallocData.exit._crit_edge.i.i594: ; preds = %GenericVector_reallocData.exit.i.i590
  %.pre.i19.i595 = load i32, ptr %i.ate, align 4, !tbaa !53 ; 2 uses
  %i.aue = zext i32 %.pre.i19.i595 to i64
  %.not23.i596 = icmp samesign ugt i64 %.010.i.i582, %i.aue
  %.pre1466 = load i32, ptr %0, align 8, !tbaa !52 ; 2 uses
  br i1 %.not23.i596, label %GenericVector_pushBack.exit597, label %.critedge.i584

.thread21.i593:                                   ; preds = %GenericVector_reallocData.exit.i.i590
  store ptr %.0.i28.i.i591, ptr %i.aua, align 8, !tbaa !56
  %i.auf = trunc nuw i64 %spec.select.i18.i588 to i32
  store i32 %i.auf, ptr %i.ate, align 4, !tbaa !53
  %.pre1465 = load i32, ptr %0, align 8, !tbaa !52
  br label %.critedge.i584

.critedge.i584:                                   ; preds = %.thread21.i593, %GenericVector_reallocData.exit._crit_edge.i.i594, %bb.jq, %calcMoments.exit47
  %i.aug = phi i32 [ %.pre1465, %.thread21.i593 ], [ %.pre1466, %GenericVector_reallocData.exit._crit_edge.i.i594 ], [ %i.atd, %bb.jq ], [ %i.atd, %calcMoments.exit47 ]
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !56
  %i.auj = zext i32 %i.aug to i64
  %i.auk = shl nuw nsw i64 %i.auj, 4
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aui, i64 %i.auk ; 3 uses
  store ptr @.str.10, ptr %i.aul, align 1
  %.sroa.41143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aul, i64 8
  store float %i.asr, ptr %.sroa.41143.0..sroa_idx, align 1
  %.sroa.51144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aul, i64 12
  store i32 0, ptr %.sroa.51144.0..sroa_idx, align 1
  %i.aum = load i32, ptr %0, align 8, !tbaa !52
  %i.aun = add i32 %i.aum, 1                      ; 2 uses
  store i32 %i.aun, ptr %0, align 8, !tbaa !52
  %.pr1248.pre = load i32, ptr %i.ate, align 4, !tbaa !53
  br label %GenericVector_pushBack.exit597

GenericVector_pushBack.exit597:                   ; preds = %GenericVector_nextCapacity.exit.i576, %.critedge.i584, %GenericVector_reallocData.exit._crit_edge.i.i594
  %i.auo = phi i32 [ %.pre1466, %GenericVector_reallocData.exit._crit_edge.i.i594 ], [ %i.atd, %GenericVector_nextCapacity.exit.i576 ], [ %i.aun, %.critedge.i584 ] ; 4 uses
  %i.aup = phi i32 [ %.pre.i19.i595, %GenericVector_reallocData.exit._crit_edge.i.i594 ], [ %i.atf, %GenericVector_nextCapacity.exit.i576 ], [ %.pr1248.pre, %.critedge.i584 ] ; 9 uses
  %.1.i585 = phi i1 [ true, %GenericVector_reallocData.exit._crit_edge.i.i594 ], [ true, %GenericVector_nextCapacity.exit.i576 ], [ false, %.critedge.i584 ]
  %.not.i598 = icmp ult i32 %i.auo, %i.aup
  br i1 %.not.i598, label %.critedge.i607, label %bb.jy

bb.jy:                                            ; preds = %GenericVector_pushBack.exit597
  %i.auq = icmp eq i32 %i.aup, 0                  ; 2 uses
  br i1 %i.auq, label %GenericVector_nextCapacity.exit.i599, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.aur = icmp ugt i32 %i.aup, 511
  br i1 %i.aur, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.aus = zext i32 %i.aup to i64                 ; 2 uses
  %i.aut = lshr i64 %i.aus, 2
  %i.auu = add nuw nsw i64 %i.aut, %i.aus
  br label %GenericVector_nextCapacity.exit.i599

bb.kb:                                            ; preds = %bb.jz
  %i.auv = shl nuw nsw i32 %i.aup, 1
  %i.auw = zext nneg i32 %i.auv to i64
  br label %GenericVector_nextCapacity.exit.i599

GenericVector_nextCapacity.exit.i599:             ; preds = %bb.kb, %bb.ka, %bb.jy
  %.0.i.i600 = phi i64 [ %i.auw, %bb.kb ], [ %i.auu, %bb.ka ], [ 4, %bb.jy ] ; 2 uses
  %i.aux = zext i32 %i.aup to i64                 ; 6 uses
  %i.auy = icmp samesign ult i64 %.0.i.i600, %i.aux
  %.phi.trans.insert.i.i601 = getelementptr i8, ptr %0, i64 8
  %.val.pre.i.i602 = load i32, ptr %.phi.trans.insert.i.i601, align 8, !tbaa !54
  %.pre.i.i603 = zext i32 %.val.pre.i.i602 to i64 ; 4 uses
  %spec.select.i.i604 = call i64 @llvm.umin.i64(i64 %.0.i.i600, i64 %.pre.i.i603)
  %.010.i.i605 = select i1 %i.auy, i64 %.pre.i.i603, i64 %spec.select.i.i604 ; 4 uses
  %i.auz = icmp eq i64 %.010.i.i605, %i.aux
  br i1 %i.auz, label %GenericVector_pushBack.exit620, label %bb.kc

bb.kc:                                            ; preds = %GenericVector_nextCapacity.exit.i599
  %.not.i.i606 = icmp samesign ugt i64 %.010.i.i605, %i.aux
  br i1 %.not.i.i606, label %bb.kd, label %.critedge.i607

bb.kd:                                            ; preds = %bb.kc
  br i1 %i.auq, label %bb.kh, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.ava = icmp ugt i32 %i.aup, 511
  br i1 %i.ava, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %bb.ke
  %i.avb = lshr i64 %i.aux, 2
  %i.avc = add nuw nsw i64 %i.avb, %i.aux
  br label %bb.kh

bb.kg:                                            ; preds = %bb.ke
  %i.avd = shl nuw nsw i32 %i.aup, 1
  %i.ave = zext nneg i32 %i.avd to i64
  br label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %bb.kf, %bb.kd
  %.0.i.i.i609 = phi i64 [ %i.ave, %bb.kg ], [ %i.avc, %bb.kf ], [ 4, %bb.kd ] ; 2 uses
  %i.avf = icmp samesign ult i64 %.0.i.i.i609, %i.aux
  %spec.select.i.i.i610 = call i64 @llvm.umin.i64(i64 %.0.i.i.i609, i64 %.pre.i.i603)
  %i.avg = call i64 @llvm.umax.i64(i64 %.010.i.i605, i64 %spec.select.i.i.i610)
  %spec.select.i18.i611 = select i1 %i.avf, i64 %.pre.i.i603, i64 %i.avg ; 2 uses
  %i.avh = shl nuw nsw i64 %spec.select.i18.i611, 4 ; 2 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.avj = load ptr, ptr %i.avi, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i612 = icmp eq ptr %i.avj, null
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.avl = load ptr, ptr %i.avk, align 8, !tbaa !56 ; 2 uses
end_hunk_1
begin_hunk_2_@calcIntegerFeatures:bb.a
  %i.bir = icmp ugt i64 %3, 2
  br i1 %i.bir, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader1274
  %i.bis = add i64 %3, -3                         ; 2 uses
  %i.bit = lshr i64 %i.bis, 1
  %i.biu = add nuw i64 %i.bit, 1                  ; 2 uses
  %xtraiter = and i64 %i.biu, 3                   ; 3 uses
  %i.biv = icmp ult i64 %i.bis, 6
  br i1 %i.biv, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.biu, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.biw = phi i64 [ 2, %.lr.ph.preheader.new ], [ %i.bjv, %.lr.ph ] ; 5 uses
  %.027.i1280 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bjo, %.lr.ph ]
  %i.bix = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.bju, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.biy = shl i64 %.027.i1280, 3
  %i.biz = getelementptr inbounds nuw i8, ptr %1, i64 %i.biy
  %i.bja = load <2 x i64>, ptr %i.biz, align 1
  %i.bjb = uitofp <2 x i64> %i.bja to <2 x double>
  %i.bjc = fadd <2 x double> %i.bix, %i.bjb
  %i.bjd = shl i64 %i.biw, 3
  %i.bje = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjd
  %i.bjf = load <2 x i64>, ptr %i.bje, align 1
  %i.bjg = uitofp <2 x i64> %i.bjf to <2 x double>
  %i.bjh = fadd <2 x double> %i.bjc, %i.bjg
  %i.bji = shl i64 %i.biw, 3
  %i.bjj = getelementptr i8, ptr %1, i64 %i.bji
  %i.bjk = getelementptr i8, ptr %i.bjj, i64 16
  %i.bjl = load <2 x i64>, ptr %i.bjk, align 1
  %i.bjm = uitofp <2 x i64> %i.bjl to <2 x double>
  %i.bjn = fadd <2 x double> %i.bjh, %i.bjm
  %i.bjo = add nuw i64 %i.biw, 6                  ; 2 uses
  %i.bjp = shl i64 %i.biw, 3
  %i.bjq = getelementptr i8, ptr %1, i64 %i.bjp
  %i.bjr = getelementptr i8, ptr %i.bjq, i64 32
  %i.bjs = load <2 x i64>, ptr %i.bjr, align 1
  %i.bjt = uitofp <2 x i64> %i.bjs to <2 x double>
  %i.bju = fadd <2 x double> %i.bjn, %i.bjt       ; 3 uses
  %i.bjv = add nuw i64 %i.biw, 8                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !24

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i64 [ 2, %.lr.ph.preheader ], [ %i.bjv, %._crit_edge.loopexit.unr-lcssa ]
  %.027.i1280.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bjo, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init1802 = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader ], [ %i.bju, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1804 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1804)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.bjw = phi i64 [ %i.bkd, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.027.i1280.epil = phi i64 [ %i.bjw, %.lr.ph.epil ], [ %.027.i1280.epil.init, %.lr.ph.epil.preheader ]
  %i.bjx = phi <2 x double> [ %i.bkc, %.lr.ph.epil ], [ %.epil.init1802, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bjy = shl i64 %.027.i1280.epil, 3
  %i.bjz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bjy
  %i.bka = load <2 x i64>, ptr %i.bjz, align 1
  %i.bkb = uitofp <2 x i64> %i.bka to <2 x double>
  %i.bkc = fadd <2 x double> %i.bjx, %i.bkb       ; 2 uses
  %i.bkd = add nuw i64 %i.bjw, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit, label %.lr.ph.epil, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %.lr.ph.epil, %._crit_edge.loopexit.unr-lcssa
  %.lcssa1800 = phi <2 x double> [ %i.bju, %._crit_edge.loopexit.unr-lcssa ], [ %i.bkc, %.lr.ph.epil ] ; 2 uses
  %i.bke = add i64 %3, -3
  %i.bkf = and i64 %i.bke, -2
  %i.bkg = add nuw i64 %i.bkf, 2
  %shift1784 = shufflevector <2 x double> %.lcssa1800, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1785 = fadd <2 x double> %.lcssa1800, %shift1784
  %i.bkh = extractelement <2 x double> %foldExtExtBinop1785, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader1274
  %.027.i.lcssa = phi i64 [ 0, %.preheader1274 ], [ %i.bkg, %._crit_edge.loopexit ] ; 5 uses
  %i.bki = phi double [ 0.000000e+00, %.preheader1274 ], [ %i.bkh, %._crit_edge.loopexit ] ; 3 uses
  %i.bkj = icmp ult i64 %.027.i.lcssa, %3
  br i1 %i.bkj, label %.lr.ph1286.preheader, label %calcMean.exit

.lr.ph1286.preheader:                             ; preds = %._crit_edge
  %i.bkk = sub nuw i64 %3, %.027.i.lcssa
  %xtraiter1805 = and i64 %i.bkk, 3               ; 2 uses
  %lcmp.mod1806.not = icmp eq i64 %xtraiter1805, 0
  br i1 %lcmp.mod1806.not, label %.lr.ph1286.prol.loopexit, label %.lr.ph1286.prol

.lr.ph1286.prol:                                  ; preds = %.lr.ph1286.preheader, %.lr.ph1286.prol
  %.0.i531284.prol = phi double [ %i.bko, %.lr.ph1286.prol ], [ %i.bki, %.lr.ph1286.preheader ]
  %.1.i1283.prol = phi i64 [ %i.bkp, %.lr.ph1286.prol ], [ %.027.i.lcssa, %.lr.ph1286.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1286.prol ], [ 0, %.lr.ph1286.preheader ]
  %i.bkl = shl i64 %.1.i1283.prol, 3
  %i.bkm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bkl
  %.val88.prol = load i64, ptr %i.bkm, align 1
  %i.bkn = uitofp i64 %.val88.prol to double
  %i.bko = fadd double %.0.i531284.prol, %i.bkn   ; 3 uses
  %i.bkp = add nuw i64 %.1.i1283.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1805
  br i1 %prol.iter.cmp.not, label %.lr.ph1286.prol.loopexit, label %.lr.ph1286.prol, !llvm.loop !36

.lr.ph1286.prol.loopexit:                         ; preds = %.lr.ph1286.prol, %.lr.ph1286.preheader
  %.lcssa1799.unr = phi double [ poison, %.lr.ph1286.preheader ], [ %i.bko, %.lr.ph1286.prol ]
  %.0.i531284.unr = phi double [ %i.bki, %.lr.ph1286.preheader ], [ %i.bko, %.lr.ph1286.prol ]
  %.1.i1283.unr = phi i64 [ %.027.i.lcssa, %.lr.ph1286.preheader ], [ %i.bkp, %.lr.ph1286.prol ]
  %i.bkq = sub i64 %.027.i.lcssa, %3
  %i.bkr = icmp ugt i64 %i.bkq, -4
  br i1 %i.bkr, label %calcMean.exit, label %.lr.ph1286

.lr.ph1286:                                       ; preds = %.lr.ph1286.prol.loopexit, %.lr.ph1286
  %.0.i531284 = phi double [ %i.blk, %.lr.ph1286 ], [ %.0.i531284.unr, %.lr.ph1286.prol.loopexit ]
  %.1.i1283 = phi i64 [ %i.bll, %.lr.ph1286 ], [ %.1.i1283.unr, %.lr.ph1286.prol.loopexit ] ; 5 uses
  %i.bks = shl i64 %.1.i1283, 3
  %i.bkt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bks
  %.val88 = load i64, ptr %i.bkt, align 1
  %i.bku = uitofp i64 %.val88 to double
  %i.bkv = fadd double %.0.i531284, %i.bku
  %i.bkw = shl i64 %.1.i1283, 3
  %i.bkx = getelementptr i8, ptr %1, i64 %i.bkw
  %i.bky = getelementptr i8, ptr %i.bkx, i64 8
  %.val88.1 = load i64, ptr %i.bky, align 1
  %i.bkz = uitofp i64 %.val88.1 to double
  %i.bla = fadd double %i.bkv, %i.bkz
  %i.blb = shl i64 %.1.i1283, 3
  %i.blc = getelementptr i8, ptr %1, i64 %i.blb
  %i.bld = getelementptr i8, ptr %i.blc, i64 16
  %.val88.2 = load i64, ptr %i.bld, align 1
  %i.ble = uitofp i64 %.val88.2 to double
  %i.blf = fadd double %i.bla, %i.ble
  %i.blg = shl i64 %.1.i1283, 3
  %i.blh = getelementptr i8, ptr %1, i64 %i.blg
  %i.bli = getelementptr i8, ptr %i.blh, i64 24
  %.val88.3 = load i64, ptr %i.bli, align 1
  %i.blj = uitofp i64 %.val88.3 to double
  %i.blk = fadd double %i.blf, %i.blj             ; 2 uses
  %i.bll = add nuw i64 %.1.i1283, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bll, %3
  br i1 %exitcond.not.3, label %calcMean.exit, label %.lr.ph1286, !llvm.loop !27

calcMean.exit:                                    ; preds = %.lr.ph1286.prol.loopexit, %.lr.ph1286, %._crit_edge
  %.0.i53.lcssa = phi double [ %i.bki, %._crit_edge ], [ %.lcssa1799.unr, %.lr.ph1286.prol.loopexit ], [ %i.blk, %.lr.ph1286 ]
  %i.blm = uitofp i64 %3 to double                ; 3 uses
  %i.bln = fdiv double %.0.i53.lcssa, %i.blm      ; 5 uses
  %i.blo = icmp eq i64 %3, 1
  br i1 %i.blo, label %calcMoments.exit52, label %.lr.ph1292.preheader

.lr.ph1292.preheader:                             ; preds = %calcMean.exit
  %xtraiter1807 = and i64 %3, 1
  %unroll_iter1815 = and i64 %3, -2
  br label %.lr.ph1292

._crit_edge1293.unr-lcssa:                        ; preds = %.lr.ph1292
  %lcmp.mod1811.not = icmp eq i64 %xtraiter1807, 0
  br i1 %lcmp.mod1811.not, label %._crit_edge1293, label %.lr.ph1292.epil.preheader

.lr.ph1292.epil.preheader:                        ; preds = %._crit_edge1293.unr-lcssa
  %lcmp.mod1814 = trunc i64 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod1814)
  %i.blp = shl i64 %i.bns, 3
  %i.blq = getelementptr inbounds nuw i8, ptr %1, i64 %i.blp
  %.val87.epil = load i64, ptr %i.blq, align 1
  %i.blr = uitofp i64 %.val87.epil to double
  %i.bls = fsub double %i.blr, %i.bln             ; 6 uses
  %i.blt = call double @llvm.fmuladd.f64(double %i.bls, double %i.bls, double %i.bnk)
  %i.blu = fmul double %i.bls, %i.bls             ; 2 uses
  %i.blv = fmul double %i.bls, %i.blu
  %i.blw = insertelement <2 x double> poison, double %i.blu, i64 0
  %i.blx = insertelement <2 x double> %i.blw, double %i.blv, i64 1
  %i.bly = insertelement <2 x double> poison, double %i.bls, i64 0
  %i.blz = shufflevector <2 x double> %i.bly, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bma = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.blx, <2 x double> %i.blz, <2 x double> %i.bnr)
  br label %._crit_edge1293

._crit_edge1293:                                  ; preds = %._crit_edge1293.unr-lcssa, %.lr.ph1292.epil.preheader
  %.lcssa1798 = phi double [ %i.bnk, %._crit_edge1293.unr-lcssa ], [ %i.blt, %.lr.ph1292.epil.preheader ] ; 2 uses
  %.lcssa1797 = phi <2 x double> [ %i.bnr, %._crit_edge1293.unr-lcssa ], [ %i.bma, %.lr.ph1292.epil.preheader ]
  %i.bmb = fdiv double %.lcssa1798, %i.blm
  %i.bmc = call double @sqrt(double noundef %i.bmb) #10, !noalias !59 ; 4 uses
  %i.bmd = add i64 %3, -1
  %i.bme = uitofp i64 %i.bmd to double
  %i.bmf = fdiv double %.lcssa1798, %i.bme        ; 2 uses
  %i.bmg = call double @sqrt(double noundef %i.bmf) #10, !noalias !59
  %i.bmh = fmul double %i.bmc, %i.bmc
  %i.bmi = fmul double %i.bmc, %i.bmh             ; 2 uses
  %i.bmj = fmul double %i.bmc, %i.bmi
  %i.bmk = insertelement <2 x double> poison, double %i.bmi, i64 0
  %i.bml = insertelement <2 x double> %i.bmk, double %i.bmj, i64 1
  %i.bmm = fdiv <2 x double> %.lcssa1797, %i.bml
  %i.bmn = insertelement <2 x double> poison, double %i.blm, i64 0
  %i.bmo = shufflevector <2 x double> %i.bmn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bmp = fdiv <2 x double> %i.bmm, %i.bmo
  %16 = fadd <2 x double> %i.bmp, <double -0.000000e+00, double -3.000000e+00>
  %i.bmq = fptrunc double %i.bmf to float
  %i.bmr = fptrunc double %i.bmg to float
  %17 = fptrunc <2 x double> %16 to <2 x float>   ; 2 uses
  %18 = extractelement <2 x float> %17, i64 0
  %19 = extractelement <2 x float> %17, i64 1
  br label %calcMoments.exit52

.lr.ph1292:                                       ; preds = %.lr.ph1292, %.lr.ph1292.preheader
  %.0.i511291 = phi double [ 0.000000e+00, %.lr.ph1292.preheader ], [ %i.bnk, %.lr.ph1292 ]
  %.045.i501290 = phi i64 [ 0, %.lr.ph1292.preheader ], [ %i.bns, %.lr.ph1292 ] ; 3 uses
  %i.bms = phi <2 x double> [ zeroinitializer, %.lr.ph1292.preheader ], [ %i.bnr, %.lr.ph1292 ]
  %niter1816 = phi i64 [ 0, %.lr.ph1292.preheader ], [ %niter1816.next.1, %.lr.ph1292 ]
  %i.bmt = shl i64 %.045.i501290, 3
  %i.bmu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bmt
  %.val87 = load i64, ptr %i.bmu, align 1
  %i.bmv = uitofp i64 %.val87 to double
  %i.bmw = fsub double %i.bmv, %i.bln             ; 6 uses
  %i.bmx = call double @llvm.fmuladd.f64(double %i.bmw, double %i.bmw, double %.0.i511291)
  %i.bmy = fmul double %i.bmw, %i.bmw             ; 2 uses
  %i.bmz = fmul double %i.bmw, %i.bmy
  %i.bna = insertelement <2 x double> poison, double %i.bmy, i64 0
  %i.bnb = insertelement <2 x double> %i.bna, double %i.bmz, i64 1
  %i.bnc = insertelement <2 x double> poison, double %i.bmw, i64 0
  %i.bnd = shufflevector <2 x double> %i.bnc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bne = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bnb, <2 x double> %i.bnd, <2 x double> %i.bms)
  %i.bnf = shl i64 %.045.i501290, 3
  %i.bng = getelementptr inbounds nuw i8, ptr %1, i64 %i.bnf
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 8
  %.val87.1 = load i64, ptr %i.bnh, align 1
  %i.bni = uitofp i64 %.val87.1 to double
  %i.bnj = fsub double %i.bni, %i.bln             ; 6 uses
  %i.bnk = call double @llvm.fmuladd.f64(double %i.bnj, double %i.bnj, double %i.bmx) ; 3 uses
  %i.bnl = fmul double %i.bnj, %i.bnj             ; 2 uses
  %i.bnm = fmul double %i.bnj, %i.bnl
  %i.bnn = insertelement <2 x double> poison, double %i.bnl, i64 0
  %i.bno = insertelement <2 x double> %i.bnn, double %i.bnm, i64 1
  %i.bnp = insertelement <2 x double> poison, double %i.bnj, i64 0
  %i.bnq = shufflevector <2 x double> %i.bnp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bnr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bno, <2 x double> %i.bnq, <2 x double> %i.bne) ; 3 uses
  %i.bns = add nuw i64 %.045.i501290, 2           ; 2 uses
  %niter1816.next.1 = add i64 %niter1816, 2       ; 2 uses
  %niter1816.ncmp.1 = icmp eq i64 %niter1816.next.1, %unroll_iter1815
  br i1 %niter1816.ncmp.1, label %._crit_edge1293.unr-lcssa, label %.lr.ph1292, !llvm.loop !30

calcMoments.exit52:                               ; preds = %bb.oo, %calcMean.exit, %._crit_edge1293
  %.030.i1259 = phi double [ %i.bln, %calcMean.exit ], [ %i.bln, %._crit_edge1293 ], [ 0.000000e+00, %bb.oo ]
  %.sroa.6.0 = phi float [ 0.000000e+00, %calcMean.exit ], [ %i.bmr, %._crit_edge1293 ], [ 0.000000e+00, %bb.oo ]
  %.sroa.9.0 = phi float [ 0.000000e+00, %calcMean.exit ], [ %i.bmq, %._crit_edge1293 ], [ 0.000000e+00, %bb.oo ]
  %.sroa.11.0 = phi float [ 0.000000e+00, %calcMean.exit ], [ %18, %._crit_edge1293 ], [ 0.000000e+00, %bb.oo ]
  %.sroa.13.0 = phi float [ 0.000000e+00, %calcMean.exit ], [ %19, %._crit_edge1293 ], [ 0.000000e+00, %bb.oo ]
  %i.bnt = uitofp i64 %3 to float
  %i.bnu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bnv = load i64, ptr %i.bnu, align 8, !tbaa !47
  %i.bnw = uitofp i64 %i.bnv to float
  %i.bnx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bny = load i64, ptr %i.bnx, align 8, !tbaa !48
  %i.bnz = uitofp i64 %i.bny to float
  %i.boa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bob = load i64, ptr %i.boa, align 8, !tbaa !49
  %i.boc = uitofp i64 %i.bob to float
  %i.bod = uitofp i64 %i.bin to float
  %i.boe = fptrunc double %.030.i1259 to float
  %i.bof = load i32, ptr %0, align 8, !tbaa !52   ; 4 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 33 uses
  %i.boh = load i32, ptr %i.bog, align 4, !tbaa !53 ; 9 uses
  %.not.i828 = icmp ult i32 %i.bof, %i.boh
  br i1 %.not.i828, label %.critedge.i837, label %bb.op

bb.op:                                            ; preds = %calcMoments.exit52
  %i.boi = icmp eq i32 %i.boh, 0                  ; 2 uses
  br i1 %i.boi, label %GenericVector_nextCapacity.exit.i829, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.boj = icmp ugt i32 %i.boh, 511
  br i1 %i.boj, label %bb.or, label %bb.os

bb.or:                                            ; preds = %bb.oq
  %i.bok = zext i32 %i.boh to i64                 ; 2 uses
  %i.bol = lshr i64 %i.bok, 2
  %i.bom = add nuw nsw i64 %i.bol, %i.bok
  br label %GenericVector_nextCapacity.exit.i829

bb.os:                                            ; preds = %bb.oq
  %i.bon = shl nuw nsw i32 %i.boh, 1
  %i.boo = zext nneg i32 %i.bon to i64
  br label %GenericVector_nextCapacity.exit.i829

GenericVector_nextCapacity.exit.i829:             ; preds = %bb.os, %bb.or, %bb.op
  %.0.i.i830 = phi i64 [ %i.boo, %bb.os ], [ %i.bom, %bb.or ], [ 4, %bb.op ] ; 2 uses
  %i.bop = zext i32 %i.boh to i64                 ; 6 uses
  %i.boq = icmp samesign ult i64 %.0.i.i830, %i.bop
  %.phi.trans.insert.i.i831 = getelementptr i8, ptr %0, i64 8
  %.val.pre.i.i832 = load i32, ptr %.phi.trans.insert.i.i831, align 8, !tbaa !54
  %.pre.i.i833 = zext i32 %.val.pre.i.i832 to i64 ; 4 uses
  %spec.select.i.i834 = call i64 @llvm.umin.i64(i64 %.0.i.i830, i64 %.pre.i.i833)
  %.010.i.i835 = select i1 %i.boq, i64 %.pre.i.i833, i64 %spec.select.i.i834 ; 4 uses
  %i.bor = icmp eq i64 %.010.i.i835, %i.bop
  br i1 %i.bor, label %GenericVector_pushBack.exit850, label %bb.ot

bb.ot:                                            ; preds = %GenericVector_nextCapacity.exit.i829
  %.not.i.i836 = icmp samesign ugt i64 %.010.i.i835, %i.bop
  br i1 %.not.i.i836, label %bb.ou, label %.critedge.i837

bb.ou:                                            ; preds = %bb.ot
  br i1 %i.boi, label %bb.oy, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.bos = icmp ugt i32 %i.boh, 511
  br i1 %i.bos, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  %i.bot = lshr i64 %i.bop, 2
  %i.bou = add nuw nsw i64 %i.bot, %i.bop
  br label %bb.oy

bb.ox:                                            ; preds = %bb.ov
  %i.bov = shl nuw nsw i32 %i.boh, 1
  %i.bow = zext nneg i32 %i.bov to i64
  br label %bb.oy

bb.oy:                                            ; preds = %bb.ox, %bb.ow, %bb.ou
  %.0.i.i.i839 = phi i64 [ %i.bow, %bb.ox ], [ %i.bou, %bb.ow ], [ 4, %bb.ou ] ; 2 uses
  %i.box = icmp samesign ult i64 %.0.i.i.i839, %i.bop
  %spec.select.i.i.i840 = call i64 @llvm.umin.i64(i64 %.0.i.i.i839, i64 %.pre.i.i833)
  %i.boy = call i64 @llvm.umax.i64(i64 %.010.i.i835, i64 %spec.select.i.i.i840)
  %spec.select.i18.i841 = select i1 %i.box, i64 %.pre.i.i833, i64 %i.boy ; 2 uses
  %i.boz = shl nuw nsw i64 %spec.select.i18.i841, 4 ; 2 uses
  %i.bpa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bpb = load ptr, ptr %i.bpa, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i842 = icmp eq ptr %i.bpb, null
  %i.bpc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !56 ; 2 uses
  br i1 %.not.i.i.i842, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.bpe = call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %i.bpb, ptr noundef %i.bpd, i64 noundef %i.boz) #10
  br label %GenericVector_reallocData.exit.i.i843

bb.pa:                                            ; preds = %bb.oy
  %i.bpf = call ptr @ZL_realloc(ptr noundef %i.bpd, i64 noundef %i.boz) #10
  br label %GenericVector_reallocData.exit.i.i843

GenericVector_reallocData.exit.i.i843:            ; preds = %bb.pa, %bb.oz
  %.0.i28.i.i844 = phi ptr [ %i.bpe, %bb.oz ], [ %i.bpf, %bb.pa ] ; 2 uses
  %.not26.i.i845 = icmp eq ptr %.0.i28.i.i844, null
  br i1 %.not26.i.i845, label %GenericVector_reallocData.exit._crit_edge.i.i847, label %.thread21.i846

GenericVector_reallocData.exit._crit_edge.i.i847: ; preds = %GenericVector_reallocData.exit.i.i843
  %.pre.i19.i848 = load i32, ptr %i.bog, align 4, !tbaa !53 ; 2 uses
  %i.bpg = zext i32 %.pre.i19.i848 to i64
  %.not23.i849 = icmp samesign ugt i64 %.010.i.i835, %i.bpg
  %.pre1447 = load i32, ptr %0, align 8, !tbaa !52 ; 2 uses
  br i1 %.not23.i849, label %GenericVector_pushBack.exit850, label %.critedge.i837

.thread21.i846:                                   ; preds = %GenericVector_reallocData.exit.i.i843
  store ptr %.0.i28.i.i844, ptr %i.bpc, align 8, !tbaa !56
  %i.bph = trunc nuw i64 %spec.select.i18.i841 to i32
  store i32 %i.bph, ptr %i.bog, align 4, !tbaa !53
  %.pre1446 = load i32, ptr %0, align 8, !tbaa !52
  br label %.critedge.i837

.critedge.i837:                                   ; preds = %.thread21.i846, %GenericVector_reallocData.exit._crit_edge.i.i847, %bb.ot, %calcMoments.exit52
  %i.bpi = phi i32 [ %.pre1446, %.thread21.i846 ], [ %.pre1447, %GenericVector_reallocData.exit._crit_edge.i.i847 ], [ %i.bof, %bb.ot ], [ %i.bof, %calcMoments.exit52 ]
  %i.bpj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bpk = load ptr, ptr %i.bpj, align 8, !tbaa !56
  %i.bpl = zext i32 %i.bpi to i64
  %i.bpm = shl nuw nsw i64 %i.bpl, 4
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpk, i64 %i.bpm ; 3 uses
  store ptr @.str.10, ptr %i.bpn, align 1
  %.sroa.41109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bpn, i64 8
  store float %i.bnt, ptr %.sroa.41109.0..sroa_idx, align 1
  %.sroa.51110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bpn, i64 12
  store i32 0, ptr %.sroa.51110.0..sroa_idx, align 1
  %i.bpo = load i32, ptr %0, align 8, !tbaa !52
  %i.bpp = add i32 %i.bpo, 1                      ; 2 uses
  store i32 %i.bpp, ptr %0, align 8, !tbaa !52
  %.pr1260.pre = load i32, ptr %i.bog, align 4, !tbaa !53
  br label %GenericVector_pushBack.exit850

GenericVector_pushBack.exit850:                   ; preds = %GenericVector_nextCapacity.exit.i829, %.critedge.i837, %GenericVector_reallocData.exit._crit_edge.i.i847
  %i.bpq = phi i32 [ %.pre1447, %GenericVector_reallocData.exit._crit_edge.i.i847 ], [ %i.bof, %GenericVector_nextCapacity.exit.i829 ], [ %i.bpp, %.critedge.i837 ] ; 4 uses
  %i.bpr = phi i32 [ %.pre.i19.i848, %GenericVector_reallocData.exit._crit_edge.i.i847 ], [ %i.boh, %GenericVector_nextCapacity.exit.i829 ], [ %.pr1260.pre, %.critedge.i837 ] ; 9 uses
  %.1.i838 = phi i1 [ true, %GenericVector_reallocData.exit._crit_edge.i.i847 ], [ true, %GenericVector_nextCapacity.exit.i829 ], [ false, %.critedge.i837 ]
  %.not.i851 = icmp ult i32 %i.bpq, %i.bpr
  br i1 %.not.i851, label %.critedge.i860, label %bb.pb

bb.pb:                                            ; preds = %GenericVector_pushBack.exit850
  %i.bps = icmp eq i32 %i.bpr, 0                  ; 2 uses
  br i1 %i.bps, label %GenericVector_nextCapacity.exit.i852, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.bpt = icmp ugt i32 %i.bpr, 511
  br i1 %i.bpt, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  %i.bpu = zext i32 %i.bpr to i64                 ; 2 uses
  %i.bpv = lshr i64 %i.bpu, 2
  %i.bpw = add nuw nsw i64 %i.bpv, %i.bpu
  br label %GenericVector_nextCapacity.exit.i852

bb.pe:                                            ; preds = %bb.pc
  %i.bpx = shl nuw nsw i32 %i.bpr, 1
  %i.bpy = zext nneg i32 %i.bpx to i64
  br label %GenericVector_nextCapacity.exit.i852

GenericVector_nextCapacity.exit.i852:             ; preds = %bb.pe, %bb.pd, %bb.pb
  %.0.i.i853 = phi i64 [ %i.bpy, %bb.pe ], [ %i.bpw, %bb.pd ], [ 4, %bb.pb ] ; 2 uses
  %i.bpz = zext i32 %i.bpr to i64                 ; 6 uses
  %i.bqa = icmp samesign ult i64 %.0.i.i853, %i.bpz
  %.phi.trans.insert.i.i854 = getelementptr i8, ptr %0, i64 8
  %.val.pre.i.i855 = load i32, ptr %.phi.trans.insert.i.i854, align 8, !tbaa !54
  %.pre.i.i856 = zext i32 %.val.pre.i.i855 to i64 ; 4 uses
  %spec.select.i.i857 = call i64 @llvm.umin.i64(i64 %.0.i.i853, i64 %.pre.i.i856)
  %.010.i.i858 = select i1 %i.bqa, i64 %.pre.i.i856, i64 %spec.select.i.i857 ; 4 uses
  %i.bqb = icmp eq i64 %.010.i.i858, %i.bpz
  br i1 %i.bqb, label %GenericVector_pushBack.exit873, label %bb.pf

bb.pf:                                            ; preds = %GenericVector_nextCapacity.exit.i852
  %.not.i.i859 = icmp samesign ugt i64 %.010.i.i858, %i.bpz
  br i1 %.not.i.i859, label %bb.pg, label %.critedge.i860

bb.pg:                                            ; preds = %bb.pf
  br i1 %i.bps, label %bb.pk, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.bqc = icmp ugt i32 %i.bpr, 511
  br i1 %i.bqc, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  %i.bqd = lshr i64 %i.bpz, 2
  %i.bqe = add nuw nsw i64 %i.bqd, %i.bpz
  br label %bb.pk

bb.pj:                                            ; preds = %bb.ph
  %i.bqf = shl nuw nsw i32 %i.bpr, 1
  %i.bqg = zext nneg i32 %i.bqf to i64
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.pi, %bb.pg
  %.0.i.i.i862 = phi i64 [ %i.bqg, %bb.pj ], [ %i.bqe, %bb.pi ], [ 4, %bb.pg ] ; 2 uses
  %i.bqh = icmp samesign ult i64 %.0.i.i.i862, %i.bpz
  %spec.select.i.i.i863 = call i64 @llvm.umin.i64(i64 %.0.i.i.i862, i64 %.pre.i.i856)
  %i.bqi = call i64 @llvm.umax.i64(i64 %.010.i.i858, i64 %spec.select.i.i.i863)
  %spec.select.i18.i864 = select i1 %i.bqh, i64 %.pre.i.i856, i64 %i.bqi ; 2 uses
  %i.bqj = shl nuw nsw i64 %spec.select.i18.i864, 4 ; 2 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bql = load ptr, ptr %i.bqk, align 8, !tbaa !55 ; 2 uses
  %.not.i.i.i865 = icmp eq ptr %i.bql, null
  %i.bqm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bqn = load ptr, ptr %i.bqm, align 8, !tbaa !56 ; 2 uses
end_hunk_2
