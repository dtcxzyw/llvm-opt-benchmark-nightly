Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/qslim_optimal_collapse_edge_callbacks?download=true
inline.NumInlined: 4045
inline.NumDeleted: 1981
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.eq = extractelement <8 x double> %i.dx, i64 3
  %i.er = tail call double @llvm.fmuladd.f64(double %6, double %i.eq, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !30
  %i.es = mul nsw i64 %.pre-phi558, %5
  %i.et = getelementptr inbounds [8 x i8], ptr %4, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !30
  %i.ev = extractelement <8 x double> %i.dx, i64 4
  %i.ew = tail call double @llvm.fmuladd.f64(double %6, double %i.ev, double %i.eu)
  store double %i.ew, ptr %i.et, align 8, !tbaa !30
  %i.ex = mul nsw i64 %.pre-phi560, %5
  %i.ey = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ex ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !30
  %i.fa = extractelement <8 x double> %i.dx, i64 5
  %i.fb = tail call double @llvm.fmuladd.f64(double %6, double %i.fa, double %i.ez)
  store double %i.fb, ptr %i.ey, align 8, !tbaa !30
  %i.fc = mul nsw i64 %.pre-phi562, %5
  %i.fd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !30
  %i.ff = extractelement <8 x double> %i.dx, i64 6
  %i.fg = tail call double @llvm.fmuladd.f64(double %6, double %i.ff, double %i.fe)
  store double %i.fg, ptr %i.fd, align 8, !tbaa !30
  %i.fh = mul nsw i64 %.pre-phi564, %5
  %i.fi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !30
  %i.fk = extractelement <8 x double> %i.dx, i64 7
  %i.fl = tail call double @llvm.fmuladd.f64(double %6, double %i.fk, double %i.fj)
  store double %i.fl, ptr %i.fi, align 8, !tbaa !30
  %i.fm = add nuw nsw i64 %.0226448, 8            ; 3 uses
  %i.fn = icmp sgt i64 %i.c, %i.fm
  br i1 %i.fn, label %.preheader409, label %.preheader408, !llvm.loop !480

.preheader407:                                    ; preds = %.preheader407.lr.ph, %._crit_edge470
  %.1227475 = phi i64 [ %.0226.lcssa, %.preheader407.lr.ph ], [ %i.je, %._crit_edge470 ] ; 13 uses
  br i1 %.not237450, label %._crit_edge457, label %.lr.ph456

.lr.ph456:                                        ; preds = %.preheader407
  %i.fo = load ptr, ptr %3, align 8, !tbaa !273
  %i.fp = mul nsw i64 %.1227475, %.sroa.33.0.copyload
  %i.fq = add nuw nsw i64 %.1227475, 1
  %i.fr = mul nsw i64 %i.fq, %.sroa.33.0.copyload
  %i.fs = add nuw nsw i64 %.1227475, 2
  %i.ft = mul nsw i64 %i.fs, %.sroa.33.0.copyload
  %i.fu = add nuw nsw i64 %.1227475, 3
  %i.fv = mul nsw i64 %i.fu, %.sroa.33.0.copyload
  br label %bb.d

.preheader406:                                    ; preds = %._crit_edge470, %.preheader408
  %.1227.lcssa = phi i64 [ %.0226.lcssa, %.preheader408 ], [ %i.je, %._crit_edge470 ] ; 3 uses
  %i.fw = icmp slt i64 %.1227.lcssa, %i.e
  br i1 %i.fw, label %.preheader405.lr.ph, label %.preheader404

.preheader405.lr.ph:                              ; preds = %.preheader406
  %.not236477 = icmp slt i64 %1, 2
  %i.fx = and i64 %1, -2                          ; 2 uses
  %i.fy = add i64 %1, -2                          ; 2 uses
  %i.fz = lshr i64 %i.fy, 1                       ; 2 uses
  %i.ga = add nuw i64 %i.fz, 1                    ; 2 uses
  %i.gb = icmp eq i64 %i.fz, 0
  %unroll_iter = and i64 %i.ga, -2
  %i.gc = and i64 %i.fy, 2
  %lcmp.mod.not.not = icmp eq i64 %i.gc, 0
  %lcmp.mod671 = trunc i64 %i.ga to i1
  %xtraiter672 = and i64 %1, 1
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  br label %.preheader405

bb.d:                                             ; preds = %.lr.ph456, %bb.d
  %i.gd = phi i64 [ 2, %.lr.ph456 ], [ %i.gx, %bb.d ] ; 2 uses
  %.0214455 = phi i64 [ 0, %.lr.ph456 ], [ %i.gd, %bb.d ] ; 2 uses
  %.0399454 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gk, %bb.d ]
  %.0401453 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.go, %bb.d ]
  %.0402452 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gs, %bb.d ]
  %.0403451 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gw, %bb.d ]
  %i.ge = getelementptr [8 x i8], ptr %i.fo, i64 %.0214455
  %i.gf = load <2 x double>, ptr %i.ge, align 1, !tbaa !12 ; 4 uses
  %i.gg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0214455 ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %i.fp
  %i.gi = load <2 x double>, ptr %i.gh, align 1, !tbaa !12
  %i.gj = fmul <2 x double> %i.gf, %i.gi
  %i.gk = fadd <2 x double> %.0399454, %i.gj      ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gg, i64 %i.fr
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !12
  %i.gn = fmul <2 x double> %i.gf, %i.gm
  %i.go = fadd <2 x double> %.0401453, %i.gn      ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.gg, i64 %i.ft
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !12
  %i.gr = fmul <2 x double> %i.gf, %i.gq
  %i.gs = fadd <2 x double> %.0402452, %i.gr      ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gg, i64 %i.fv
  %i.gu = load <2 x double>, ptr %i.gt, align 1, !tbaa !12
  %i.gv = fmul <2 x double> %i.gf, %i.gu
  %i.gw = fadd <2 x double> %.0403451, %i.gv      ; 2 uses
  %i.gx = add nuw nsw i64 %i.gd, 2                ; 2 uses
  %.not237 = icmp sgt i64 %i.gx, %1
  br i1 %.not237, label %._crit_edge457, label %bb.d, !llvm.loop !481

._crit_edge457:                                   ; preds = %bb.d, %.preheader407
  %.0403.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gw, %bb.d ] ; 2 uses
  %.0402.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gs, %bb.d ] ; 2 uses
  %.0401.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.go, %bb.d ] ; 2 uses
  %.0399.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gk, %bb.d ] ; 2 uses
  %.0214.lcssa = phi i64 [ 0, %.preheader407 ], [ %i.z, %bb.d ] ; 2 uses
  %i.gy = shufflevector <2 x double> %.0399.lcssa, <2 x double> %.0401.lcssa, <2 x i32> <i32 0, i32 2>
  %i.gz = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 0, i32 2>
  %i.ha = shufflevector <2 x double> %i.gy, <2 x double> %i.gz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hb = shufflevector <2 x double> %.0399.lcssa, <2 x double> %.0401.lcssa, <2 x i32> <i32 1, i32 3>
  %i.hc = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 1, i32 3>
  %i.hd = shufflevector <2 x double> %i.hb, <2 x double> %i.hc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.he = fadd <4 x double> %i.ha, %i.hd          ; 2 uses
  %i.hf = icmp slt i64 %.0214.lcssa, %1
  br i1 %i.hf, label %.lr.ph469, label %._crit_edge457.._crit_edge470_crit_edge

._crit_edge457.._crit_edge470_crit_edge:          ; preds = %._crit_edge457
  %.pre565 = add nuw nsw i64 %.1227475, 1
  %.pre567 = add nuw nsw i64 %.1227475, 2
  %.pre569 = add nuw nsw i64 %.1227475, 3
  br label %._crit_edge470

.lr.ph469:                                        ; preds = %._crit_edge457
  %i.hg = load ptr, ptr %3, align 8, !tbaa !273
  %i.hh = mul nsw i64 %.1227475, %.sroa.33.0.copyload
  %i.hi = add nuw nsw i64 %.1227475, 1            ; 2 uses
  %i.hj = mul nsw i64 %i.hi, %.sroa.33.0.copyload
  %i.hk = add nuw nsw i64 %.1227475, 2            ; 2 uses
  %i.hl = mul nsw i64 %i.hk, %.sroa.33.0.copyload
  %i.hm = add nuw nsw i64 %.1227475, 3            ; 2 uses
  %i.hn = mul nsw i64 %i.hm, %.sroa.33.0.copyload
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph469, %bb.e
  %.1215463 = phi i64 [ %.0214.lcssa, %.lr.ph469 ], [ %i.ii, %bb.e ] ; 3 uses
  %i.ho = phi <4 x double> [ %i.he, %.lr.ph469 ], [ %i.ih, %bb.e ]
  %i.hp = getelementptr [8 x i8], ptr %i.hg, i64 %.1215463
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !30
  %i.hr = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1215463 ; 4 uses
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %i.hh
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !30
  %i.hu = getelementptr [8 x i8], ptr %i.hr, i64 %i.hj
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !30
  %i.hw = getelementptr [8 x i8], ptr %i.hr, i64 %i.hl
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !30
  %i.hy = getelementptr [8 x i8], ptr %i.hr, i64 %i.hn
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !30
  %i.ia = insertelement <4 x double> poison, double %i.hq, i64 0
  %i.ib = shufflevector <4 x double> %i.ia, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ic = insertelement <4 x double> poison, double %i.ht, i64 0
  %i.id = insertelement <4 x double> %i.ic, double %i.hv, i64 1
  %i.ie = insertelement <4 x double> %i.id, double %i.hx, i64 2
  %i.if = insertelement <4 x double> %i.ie, double %i.hz, i64 3
  %i.ig = fmul <4 x double> %i.ib, %i.if
  %i.ih = fadd <4 x double> %i.ho, %i.ig          ; 2 uses
  %i.ii = add nuw nsw i64 %.1215463, 1            ; 2 uses
  %exitcond549.not = icmp eq i64 %i.ii, %1
  br i1 %exitcond549.not, label %._crit_edge470, label %bb.e, !llvm.loop !482

._crit_edge470:                                   ; preds = %bb.e, %._crit_edge457.._crit_edge470_crit_edge
  %.pre-phi570 = phi i64 [ %.pre569, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hm, %bb.e ]
  %.pre-phi568 = phi i64 [ %.pre567, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hk, %bb.e ]
  %.pre-phi566 = phi i64 [ %.pre565, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hi, %bb.e ]
  %i.ij = phi <4 x double> [ %i.he, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.ih, %bb.e ] ; 4 uses
  %i.ik = mul nsw i64 %.1227475, %5
  %i.il = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ik ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !30
  %i.in = extractelement <4 x double> %i.ij, i64 0
  %i.io = tail call double @llvm.fmuladd.f64(double %6, double %i.in, double %i.im)
  store double %i.io, ptr %i.il, align 8, !tbaa !30
  %i.ip = mul nsw i64 %.pre-phi566, %5
  %i.iq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ip ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !30
  %i.is = extractelement <4 x double> %i.ij, i64 1
  %i.it = tail call double @llvm.fmuladd.f64(double %6, double %i.is, double %i.ir)
  store double %i.it, ptr %i.iq, align 8, !tbaa !30
  %i.iu = mul nsw i64 %.pre-phi568, %5
  %i.iv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iu ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !30
  %i.ix = extractelement <4 x double> %i.ij, i64 2
  %i.iy = tail call double @llvm.fmuladd.f64(double %6, double %i.ix, double %i.iw)
  store double %i.iy, ptr %i.iv, align 8, !tbaa !30
  %i.iz = mul nsw i64 %.pre-phi570, %5
  %i.ja = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iz ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !30
  %i.jc = extractelement <4 x double> %i.ij, i64 3
  %i.jd = tail call double @llvm.fmuladd.f64(double %6, double %i.jc, double %i.jb)
  store double %i.jd, ptr %i.ja, align 8, !tbaa !30
  %i.je = add nuw nsw i64 %.1227475, 4            ; 3 uses
  %i.jf = icmp slt i64 %i.je, %i.d
  br i1 %i.jf, label %.preheader407, label %.preheader406, !llvm.loop !483

.preheader405:                                    ; preds = %.preheader405.lr.ph, %._crit_edge491
  %.2494 = phi i64 [ %.1227.lcssa, %.preheader405.lr.ph ], [ %i.nh, %._crit_edge491 ] ; 7 uses
  br i1 %.not236477, label %._crit_edge482, label %.lr.ph481

.lr.ph481:                                        ; preds = %.preheader405
  %i.jg = load ptr, ptr %3, align 8, !tbaa !273   ; 3 uses
  %i.jh = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.ji = add nuw nsw i64 %.2494, 1
  %i.jj = mul nsw i64 %i.ji, %.sroa.33.0.copyload ; 3 uses
  br i1 %i.gb, label %.epil.preheader, label %.lr.ph481.new

.preheader404:                                    ; preds = %._crit_edge491, %.preheader406
  %.2.lcssa = phi i64 [ %.1227.lcssa, %.preheader406 ], [ %i.nh, %._crit_edge491 ] ; 2 uses
  %i.jk = icmp slt i64 %.2.lcssa, %0
  br i1 %i.jk, label %.preheader.lr.ph, label %._crit_edge512

.preheader.lr.ph:                                 ; preds = %.preheader404
  %.not496 = icmp slt i64 %1, 2
  %i.jl = and i64 %1, -2                          ; 2 uses
  %7 = add i64 %1, -2                             ; 2 uses
  %8 = lshr i64 %7, 1
  %9 = add nuw i64 %8, 1                          ; 2 uses
  %xtraiter675 = and i64 %9, 3                    ; 3 uses
  %10 = icmp ult i64 %7, 6
  %unroll_iter680 = and i64 %9, -4
  %lcmp.mod677.not = icmp eq i64 %xtraiter675, 0
  %lcmp.mod679 = icmp ne i64 %xtraiter675, 0
  br label %.preheader

.lr.ph481.new:                                    ; preds = %.lr.ph481, %.lr.ph481.new
  %i.jm = phi i64 [ %i.kk, %.lr.ph481.new ], [ 2, %.lr.ph481 ] ; 4 uses
  %.0208480 = phi i64 [ %i.jy, %.lr.ph481.new ], [ 0, %.lr.ph481 ] ; 2 uses
  %.0398479 = phi <2 x double> [ %i.kj, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %.0400478 = phi <2 x double> [ %i.kf, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph481.new ], [ 0, %.lr.ph481 ]
  %i.jn = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480
  %i.jo = load <2 x double>, ptr %i.jn, align 1, !tbaa !12 ; 2 uses
  %i.jp = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480 ; 2 uses
  %i.jq = getelementptr [8 x i8], ptr %i.jp, i64 %i.jh
  %i.jr = load <2 x double>, ptr %i.jq, align 1, !tbaa !12
  %i.js = fmul <2 x double> %i.jo, %i.jr
  %i.jt = fadd <2 x double> %.0400478, %i.js
  %i.ju = getelementptr [8 x i8], ptr %i.jp, i64 %i.jj
  %i.jv = load <2 x double>, ptr %i.ju, align 1, !tbaa !12
  %i.jw = fmul <2 x double> %i.jo, %i.jv
  %i.jx = fadd <2 x double> %.0398479, %i.jw
  %i.jy = add nuw nsw i64 %i.jm, 2                ; 2 uses
  %i.jz = getelementptr [8 x i8], ptr %i.jg, i64 %i.jm
  %i.ka = load <2 x double>, ptr %i.jz, align 1, !tbaa !12 ; 2 uses
  %i.kb = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.jm ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.kb, i64 %i.jh
  %i.kd = load <2 x double>, ptr %i.kc, align 1, !tbaa !12
  %i.ke = fmul <2 x double> %i.ka, %i.kd
  %i.kf = fadd <2 x double> %i.jt, %i.ke          ; 3 uses
  %i.kg = getelementptr [8 x i8], ptr %i.kb, i64 %i.jj
  %i.kh = load <2 x double>, ptr %i.kg, align 1, !tbaa !12
  %i.ki = fmul <2 x double> %i.ka, %i.kh
  %i.kj = fadd <2 x double> %i.jx, %i.ki          ; 3 uses
  %i.kk = add nuw nsw i64 %i.jm, 4
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !484

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0208480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %i.jy, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0398479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ]
  %.0400478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kf, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.kl = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480.epil.init
  %i.km = load <2 x double>, ptr %i.kl, align 1, !tbaa !12 ; 2 uses
  %i.kn = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480.epil.init ; 2 uses
  %i.ko = getelementptr [8 x i8], ptr %i.kn, i64 %i.jh
  %i.kp = load <2 x double>, ptr %i.ko, align 1, !tbaa !12
  %i.kq = fmul <2 x double> %i.km, %i.kp
  %i.kr = fadd <2 x double> %.0400478.epil.init, %i.kq
  %i.ks = getelementptr [8 x i8], ptr %i.kn, i64 %i.jj
  %i.kt = load <2 x double>, ptr %i.ks, align 1, !tbaa !12
  %i.ku = fmul <2 x double> %i.km, %i.kt
  %i.kv = fadd <2 x double> %.0398479.epil.init, %i.ku
  br label %._crit_edge482

._crit_edge482:                                   ; preds = %.epil.preheader, %._crit_edge482.loopexit.unr-lcssa, %.preheader405
  %.0400.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kf, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kr, %.epil.preheader ] ; 2 uses
  %.0398.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kv, %.epil.preheader ] ; 2 uses
  %.0208.lcssa = phi i64 [ 0, %.preheader405 ], [ %i.fx, %._crit_edge482.loopexit.unr-lcssa ], [ %i.fx, %.epil.preheader ] ; 6 uses
  %i.kw = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 0, i32 2>
  %i.kx = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 1, i32 3>
  %i.ky = fadd <2 x double> %i.kw, %i.kx          ; 3 uses
  %i.kz = icmp slt i64 %.0208.lcssa, %1
  br i1 %i.kz, label %.lr.ph490, label %._crit_edge482.._crit_edge491_crit_edge

._crit_edge482.._crit_edge491_crit_edge:          ; preds = %._crit_edge482
  %.pre571 = add nuw nsw i64 %.2494, 1
  br label %._crit_edge491

.lr.ph490:                                        ; preds = %._crit_edge482
  %i.la = load ptr, ptr %3, align 8, !tbaa !273   ; 3 uses
  %i.lb = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.lc = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.ld = mul nsw i64 %i.lc, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0208.lcssa, 1
  br i1 %lcmp.mod673.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.le = getelementptr [8 x i8], ptr %i.la, i64 %.0208.lcssa
  %i.lf = load double, ptr %i.le, align 8, !tbaa !30
  %i.lg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208.lcssa ; 2 uses
  %i.lh = getelementptr [8 x i8], ptr %i.lg, i64 %i.lb
  %i.li = load double, ptr %i.lh, align 8, !tbaa !30
  %i.lj = getelementptr [8 x i8], ptr %i.lg, i64 %i.ld
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !30
  %i.ll = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = insertelement <2 x double> poison, double %i.li, i64 0
  %i.lo = insertelement <2 x double> %i.ln, double %i.lk, i64 1
  %i.lp = fmul <2 x double> %i.lm, %i.lo
  %i.lq = fadd <2 x double> %i.ky, %i.lp          ; 2 uses
  %i.lr = or disjoint i64 %.0208.lcssa, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph490
  %.lcssa651.unr = phi <2 x double> [ poison, %.lr.ph490 ], [ %i.lq, %.prol.loopexit.unr-lcssa ]
  %.1209486.unr = phi i64 [ %.0208.lcssa, %.lr.ph490 ], [ %i.lr, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ %i.ky, %.lr.ph490 ], [ %i.lq, %.prol.loopexit.unr-lcssa ]
  %i.ls = icmp eq i64 %1, %.neg
  br i1 %i.ls, label %._crit_edge491, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.prol.loopexit, %.lr.ph490.new
  %.1209486 = phi i64 [ %i.mv, %.lr.ph490.new ], [ %.1209486.unr, %.prol.loopexit ] ; 4 uses
  %i.lt = phi <2 x double> [ %i.mu, %.lr.ph490.new ], [ %.unr, %.prol.loopexit ]
  %i.lu = getelementptr [8 x i8], ptr %i.la, i64 %.1209486
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !30
  %i.lw = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209486 ; 2 uses
  %i.lx = getelementptr [8 x i8], ptr %i.lw, i64 %i.lb
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !30
  %i.lz = getelementptr [8 x i8], ptr %i.lw, i64 %i.ld
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !30
  %i.mb = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.mc = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.md = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.me = insertelement <2 x double> %i.md, double %i.ma, i64 1
  %i.mf = fmul <2 x double> %i.mc, %i.me
  %i.mg = fadd <2 x double> %i.lt, %i.mf
  %i.mh = add nuw nsw i64 %.1209486, 1            ; 2 uses
  %i.mi = getelementptr [8 x i8], ptr %i.la, i64 %i.mh
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !30
  %i.mk = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.mh ; 2 uses
  %i.ml = getelementptr [8 x i8], ptr %i.mk, i64 %i.lb
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !30
  %i.mn = getelementptr [8 x i8], ptr %i.mk, i64 %i.ld
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !30
  %i.mp = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mr = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %i.mo, i64 1
  %i.mt = fmul <2 x double> %i.mq, %i.ms
  %i.mu = fadd <2 x double> %i.mg, %i.mt          ; 2 uses
  %i.mv = add nuw nsw i64 %.1209486, 2            ; 2 uses
  %exitcond550.not.1 = icmp eq i64 %i.mv, %1
  br i1 %exitcond550.not.1, label %._crit_edge491, label %.lr.ph490.new, !llvm.loop !485

._crit_edge491:                                   ; preds = %.prol.loopexit, %.lr.ph490.new, %._crit_edge482.._crit_edge491_crit_edge
  %.pre-phi572 = phi i64 [ %.pre571, %._crit_edge482.._crit_edge491_crit_edge ], [ %i.lc, %.lr.ph490.new ], [ %i.lc, %.prol.loopexit ]
  %i.mw = phi <2 x double> [ %i.ky, %._crit_edge482.._crit_edge491_crit_edge ], [ %.lcssa651.unr, %.prol.loopexit ], [ %i.mu, %.lr.ph490.new ] ; 2 uses
  %i.mx = mul nsw i64 %.2494, %5
  %i.my = getelementptr inbounds [8 x i8], ptr %4, i64 %i.mx ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !30
  %i.na = extractelement <2 x double> %i.mw, i64 0
  %i.nb = tail call double @llvm.fmuladd.f64(double %6, double %i.na, double %i.mz)
  store double %i.nb, ptr %i.my, align 8, !tbaa !30
  %i.nc = mul nsw i64 %.pre-phi572, %5
  %i.nd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nc ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !30
  %i.nf = extractelement <2 x double> %i.mw, i64 1
  %i.ng = tail call double @llvm.fmuladd.f64(double %6, double %i.nf, double %i.ne)
  store double %i.ng, ptr %i.nd, align 8, !tbaa !30
  %i.nh = add nuw nsw i64 %.2494, 2               ; 3 uses
  %i.ni = icmp slt i64 %i.nh, %i.e
  br i1 %i.ni, label %.preheader405, label %.preheader404, !llvm.loop !486

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge507
  %.3511 = phi i64 [ %.2.lcssa, %.preheader.lr.ph ], [ %11, %._crit_edge507 ] ; 4 uses
  br i1 %.not496, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %.preheader
  %i.nj = load ptr, ptr %3, align 8, !tbaa !273   ; 5 uses
  %i.nk = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.nk ; 5 uses
  br i1 %10, label %.epil.preheader674, label %.lr.ph499.new.a

.lr.ph499.new.a:                                  ; preds = %.lr.ph499, %.lr.ph499.new.a
  %i.nl = phi i64 [ %i.oj, %.lr.ph499.new.a ], [ 2, %.lr.ph499 ] ; 6 uses
  %.0205498 = phi i64 [ %i.od, %.lr.ph499.new.a ], [ 0, %.lr.ph499 ] ; 2 uses
  %.0392497 = phi <2 x double> [ %i.oi, %.lr.ph499.new.a ], [ zeroinitializer, %.lr.ph499 ]
  %niter681 = phi i64 [ %niter681.next.3, %.lr.ph499.new.a ], [ 0, %.lr.ph499 ]
  %i.nm = getelementptr [8 x i8], ptr %i.nj, i64 %.0205498
  %i.nn = load <2 x double>, ptr %i.nm, align 1, !tbaa !12
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498
  %i.no = load <2 x double>, ptr %gep, align 1, !tbaa !12
  %i.np = fmul <2 x double> %i.nn, %i.no
  %i.nq = fadd <2 x double> %.0392497, %i.np
  %i.nr = add nuw nsw i64 %i.nl, 2                ; 2 uses
  %i.ns = getelementptr [8 x i8], ptr %i.nj, i64 %i.nl
  %i.nt = load <2 x double>, ptr %i.ns, align 1, !tbaa !12
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nl
  %i.nu = load <2 x double>, ptr %gep.1, align 1, !tbaa !12
  %i.nv = fmul <2 x double> %i.nt, %i.nu
  %i.nw = fadd <2 x double> %i.nq, %i.nv
  %i.nx = add nuw nsw i64 %i.nl, 4                ; 2 uses
  %i.ny = getelementptr [8 x i8], ptr %i.nj, i64 %i.nr
  %i.nz = load <2 x double>, ptr %i.ny, align 1, !tbaa !12
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nr
  %i.oa = load <2 x double>, ptr %gep.2, align 1, !tbaa !12
  %i.ob = fmul <2 x double> %i.nz, %i.oa
  %i.oc = fadd <2 x double> %i.nw, %i.ob
  %i.od = add nuw nsw i64 %i.nl, 6                ; 2 uses
  %i.oe = getelementptr [8 x i8], ptr %i.nj, i64 %i.nx
  %i.of = load <2 x double>, ptr %i.oe, align 1, !tbaa !12
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nx
  %i.og = load <2 x double>, ptr %gep.3, align 1, !tbaa !12
  %i.oh = fmul <2 x double> %i.of, %i.og
  %i.oi = fadd <2 x double> %i.oc, %i.oh          ; 3 uses
  %i.oj = add nuw nsw i64 %i.nl, 8                ; 2 uses
  %niter681.next.3 = add i64 %niter681, 4         ; 2 uses
  %niter681.ncmp.3 = icmp eq i64 %niter681.next.3, %unroll_iter680
  br i1 %niter681.ncmp.3, label %._crit_edge500.loopexit.unr-lcssa, label %.lr.ph499.new.a, !llvm.loop !487

._crit_edge500.loopexit.unr-lcssa:                ; preds = %.lr.ph499.new.a
  br i1 %lcmp.mod677.not, label %._crit_edge500, label %.epil.preheader674

.epil.preheader674:                               ; preds = %._crit_edge500.loopexit.unr-lcssa, %.lr.ph499
  %.epil.init = phi i64 [ 2, %.lr.ph499 ], [ %i.oj, %._crit_edge500.loopexit.unr-lcssa ]
  %.0205498.epil.init = phi i64 [ 0, %.lr.ph499 ], [ %i.od, %._crit_edge500.loopexit.unr-lcssa ]
  %.0392497.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph499 ], [ %i.oi, %._crit_edge500.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod679)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader674
  %i.ok = phi i64 [ %.epil.init, %.epil.preheader674 ], [ %i.oq, %bb.f ] ; 2 uses
  %.0205498.epil = phi i64 [ %.0205498.epil.init, %.epil.preheader674 ], [ %i.ok, %bb.f ] ; 2 uses
  %.0392497.epil = phi <2 x double> [ %.0392497.epil.init, %.epil.preheader674 ], [ %i.op, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader674 ], [ %epil.iter.next, %bb.f ]
  %i.ol = getelementptr [8 x i8], ptr %i.nj, i64 %.0205498.epil
  %i.om = load <2 x double>, ptr %i.ol, align 1, !tbaa !12
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498.epil
  %i.on = load <2 x double>, ptr %gep.epil, align 1, !tbaa !12
  %i.oo = fmul <2 x double> %i.om, %i.on
  %i.op = fadd <2 x double> %.0392497.epil, %i.oo ; 2 uses
  %i.oq = add nuw nsw i64 %i.ok, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter675
  br i1 %epil.iter.cmp.not, label %._crit_edge500, label %bb.f, !llvm.loop !488

._crit_edge500:                                   ; preds = %._crit_edge500.loopexit.unr-lcssa, %bb.f, %.preheader
  %.0392.lcssa = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.oi, %._crit_edge500.loopexit.unr-lcssa ], [ %i.op, %bb.f ] ; 2 uses
  %.0205.lcssa = phi i64 [ 0, %.preheader ], [ %i.jl, %bb.f ], [ %i.jl, %._crit_edge500.loopexit.unr-lcssa ] ; 5 uses
  %shift = shufflevector <2 x double> %.0392.lcssa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.0392.lcssa, %shift
  %i.or = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.os = icmp slt i64 %.0205.lcssa, %1
  br i1 %i.os, label %.lr.ph506, label %._crit_edge507

.lr.ph506:                                        ; preds = %._crit_edge500
  %i.ot = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep509 = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.ot ; 5 uses
  %i.ou = load ptr, ptr %3, align 8, !tbaa !273   ; 5 uses
  %i.ov = sub i64 %1, %.0205.lcssa
  %xtraiter684 = and i64 %i.ov, 3                 ; 2 uses
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.prol.loopexit683, label %.prol.preheader682

.prol.preheader682:                               ; preds = %.lr.ph506, %.prol.preheader682
  %.0504.prol = phi double [ %i.pa, %.prol.preheader682 ], [ %i.or, %.lr.ph506 ]
  %.1503.prol = phi i64 [ %i.pb, %.prol.preheader682 ], [ %.0205.lcssa, %.lr.ph506 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader682 ], [ 0, %.lr.ph506 ]
  %gep510.prol = getelementptr [8 x i8], ptr %invariant.gep509, i64 %.1503.prol
  %i.ow = getelementptr [8 x i8], ptr %i.ou, i64 %.1503.prol
  %i.ox = load double, ptr %gep510.prol, align 8, !tbaa !30
  %i.oy = load double, ptr %i.ow, align 8, !tbaa !30
  %i.oz = fmul double %i.ox, %i.oy
  %i.pa = fadd double %.0504.prol, %i.oz          ; 3 uses
  %i.pb = add nuw nsw i64 %.1503.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter684
  br i1 %prol.iter.cmp.not, label %.prol.loopexit683, label %.prol.preheader682, !llvm.loop !489

.prol.loopexit683:                                ; preds = %.prol.preheader682, %.lr.ph506
  %.lcssa648.unr = phi double [ poison, %.lr.ph506 ], [ %i.pa, %.prol.preheader682 ]
  %.0504.unr = phi double [ %i.or, %.lr.ph506 ], [ %i.pa, %.prol.preheader682 ]
  %.1503.unr = phi i64 [ %.0205.lcssa, %.lr.ph506 ], [ %i.pb, %.prol.preheader682 ]
  %i.pc = sub i64 %.0205.lcssa, %1
  %i.pd = icmp ugt i64 %i.pc, -4
  br i1 %i.pd, label %._crit_edge507, label %.lr.ph506.new

.lr.ph506.new:                                    ; preds = %.prol.loopexit683, %.lr.ph506.new
  %.0504 = phi double [ %i.qa, %.lr.ph506.new ], [ %.0504.unr, %.prol.loopexit683 ]
  %.1503 = phi i64 [ %i.qb, %.lr.ph506.new ], [ %.1503.unr, %.prol.loopexit683 ] ; 6 uses
  %gep510 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %.1503
  %i.pe = getelementptr [8 x i8], ptr %i.ou, i64 %.1503
  %i.pf = load double, ptr %gep510, align 8, !tbaa !30
  %i.pg = load double, ptr %i.pe, align 8, !tbaa !30
  %i.ph = fmul double %i.pf, %i.pg
  %i.pi = fadd double %.0504, %i.ph
  %i.pj = add nuw nsw i64 %.1503, 1               ; 2 uses
  %gep510.1 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pj
  %i.pk = getelementptr [8 x i8], ptr %i.ou, i64 %i.pj
  %i.pl = load double, ptr %gep510.1, align 8, !tbaa !30
  %i.pm = load double, ptr %i.pk, align 8, !tbaa !30
  %i.pn = fmul double %i.pl, %i.pm
  %i.po = fadd double %i.pi, %i.pn
  %i.pp = add nuw nsw i64 %.1503, 2               ; 2 uses
  %gep510.2 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pp
  %i.pq = getelementptr [8 x i8], ptr %i.ou, i64 %i.pp
  %i.pr = load double, ptr %gep510.2, align 8, !tbaa !30
  %i.ps = load double, ptr %i.pq, align 8, !tbaa !30
  %i.pt = fmul double %i.pr, %i.ps
  %i.pu = fadd double %i.po, %i.pt
  %i.pv = add nuw nsw i64 %.1503, 3               ; 2 uses
  %gep510.3 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pv
  %i.pw = getelementptr [8 x i8], ptr %i.ou, i64 %i.pv
  %i.px = load double, ptr %gep510.3, align 8, !tbaa !30
  %i.py = load double, ptr %i.pw, align 8, !tbaa !30
  %i.pz = fmul double %i.px, %i.py
  %i.qa = fadd double %i.pu, %i.pz                ; 2 uses
  %i.qb = add nuw nsw i64 %.1503, 4               ; 2 uses
  %exitcond551.not.3 = icmp eq i64 %i.qb, %1
  br i1 %exitcond551.not.3, label %._crit_edge507, label %.lr.ph506.new, !llvm.loop !490

._crit_edge507:                                   ; preds = %.prol.loopexit683, %.lr.ph506.new, %._crit_edge500
  %.0.lcssa = phi double [ %i.or, %._crit_edge500 ], [ %.lcssa648.unr, %.prol.loopexit683 ], [ %i.qa, %.lr.ph506.new ]
  %i.qc = mul nsw i64 %.3511, %5
  %i.qd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.qc ; 2 uses
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !30
  %i.qf = tail call double @llvm.fmuladd.f64(double %6, double %.0.lcssa, double %i.qe)
  store double %i.qf, ptr %i.qd, align 8, !tbaa !30
  %11 = add nuw nsw i64 %.3511, 1                 ; 2 uses
  %exitcond552.not = icmp eq i64 %11, %0
  br i1 %exitcond552.not, label %._crit_edge512, label %.preheader, !llvm.loop !491

._crit_edge512:                                   ; preds = %._crit_edge507, %.preheader404
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, !prof !224

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #24
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #24
  br label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #24
  resume { ptr, i32 } %i.d

_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load i64, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, align 8, !tbaa !239 ; 4 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !225 ; 4 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 16), align 8, !tbaa !240 ; 3 uses
  %i.h = icmp sgt i64 %3, 1
  br i1 %i.h, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.i = add nsw i64 %i.e, -128
  %i.j = sdiv i64 %i.i, 64
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 8)
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 320) ; 2 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.n = icmp slt i64 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = and i64 %i.l, 504                        ; 2 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.q = sub nsw i64 %i.f, %i.e
  %i.r = shl i64 %i.p, 5
  %i.s = udiv i64 %i.q, %i.r                      ; 2 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.u = add nsw i64 %3, -1                       ; 2 uses
  %i.v = add i64 %i.u, %i.t
  %i.w = sdiv i64 %i.v, %3                        ; 2 uses
  %.not114 = icmp sgt i64 %i.s, %i.w
  br i1 %.not114, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i64 %i.s, 576460752303423484
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = add nsw i64 %i.w, 3                      ; 2 uses
  %i.z = srem i64 %i.y, 4
  %i.aa = sub nsw i64 %i.y, %i.z
  %.sroa.speculated153 = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge184 = phi i64 [ %i.x, %bb.i ], [ %.sroa.speculated153, %bb.j ]
  store i64 %storemerge184, ptr %2, align 8, !tbaa !29
  %i.ab = icmp sgt i64 %i.g, %i.f
  br i1 %i.ab, label %bb.l, label %.critedge116

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i64 %i.g, %i.f
  %i.ad = load i64, ptr %0, align 8, !tbaa !29
  %i.ae = shl i64 %3, 3
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = udiv i64 %i.ac, %i.af                   ; 3 uses
  %i.ah = load i64, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.ai = add i64 %i.u, %i.ah
  %i.aj = sdiv i64 %i.ai, %3                      ; 2 uses
  %i.ak = icmp slt i64 %i.ag, %i.aj
  %i.al = icmp samesign ugt i64 %i.ag, 3
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = and i64 %i.ag, 2305843009213693948
  store i64 %i.am, ptr %1, align 8, !tbaa !29
  br label %.critedge116

bb.n:                                             ; preds = %bb.l
  %i.an = add nsw i64 %i.aj, 3                    ; 2 uses
  %i.ao = srem i64 %i.an, 4
  %i.ap = sub nsw i64 %i.an, %i.ao
  %.sroa.speculated149 = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ah)
  store i64 %.sroa.speculated149, ptr %1, align 8, !tbaa !29
  br label %.critedge116

bb.o:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.aq = load i64, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.ar = load i64, ptr %2, align 8, !tbaa !29
  %i.as = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.ar)
  %i.at = load i64, ptr %0, align 8, !tbaa !29    ; 8 uses
  %.sroa.speculated145 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 %i.as)
  %i.au = icmp slt i64 %.sroa.speculated145, 48
  br i1 %i.au, label %.critedge116, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = add nsw i64 %i.e, -128                  ; 2 uses
  %i.aw = sdiv i64 %i.av, 64
  %i.ax = and i64 %i.aw, -8
  %.sroa.speculated140 = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 1) ; 7 uses
  %i.ay = icmp sgt i64 %i.at, %.sroa.speculated140
  br i1 %i.ay, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.az = urem i64 %i.at, %.sroa.speculated140    ; 2 uses
  %i.ba = udiv i64 %i.at, %.sroa.speculated140
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = xor i64 %i.az, -1
  %i.bd = add nsw i64 %.sroa.speculated140, %i.bc
  %i.be = shl i64 %i.ba, 3
  %i.bf = add i64 %i.be, 8
  %i.bg = sdiv i64 %i.bd, %i.bf
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = sub nsw i64 %.sroa.speculated140, %i.bh
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bj = phi i64 [ %i.bi, %bb.r ], [ %.sroa.speculated140, %bb.q ] ; 2 uses
  store i64 %i.bj, ptr %0, align 8, !tbaa !29
  %.pre = load i64, ptr %1, align 8, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.bk = phi i64 [ %i.bj, %bb.s ], [ %i.at, %bb.p ] ; 5 uses
  %i.bl = phi i64 [ %.pre, %bb.s ], [ %i.aq, %bb.p ] ; 6 uses
  %i.bm = shl i64 %i.bl, 3
  %i.bn = mul i64 %i.bm, %i.bk
  %i.bo = sub nsw i64 %i.av, %i.bn                ; 2 uses
  %i.bp = shl nsw i64 %i.bk, 5
  %.not = icmp slt i64 %i.bo, %i.bp
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = shl i64 %i.bk, 3
  %i.br = udiv i64 %i.bo, %i.bq
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bs = shl i64 %.sroa.speculated140, 5
  %i.bt = udiv i64 4718592, %i.bs
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge = phi i64 [ %i.bt, %bb.v ], [ %i.br, %bb.u ]
  %i.bu = shl i64 %i.bk, 4
  %i.bv = udiv i64 1572864, %i.bu
  %.sroa.speculated135 = tail call i64 @llvm.smin.i64(i64 %storemerge, i64 %i.bv)
  %i.bw = and i64 %.sroa.speculated135, -4        ; 6 uses
  %i.bx = load i64, ptr %2, align 8, !tbaa !29    ; 4 uses
  %i.by = icmp sgt i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bz = srem i64 %i.bx, %i.bw                   ; 2 uses
  %i.ca = sdiv i64 %i.bx, %i.bw
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = sub nsw i64 %i.bw, %i.bz
  %i.cd = shl i64 %i.ca, 2
  %i.ce = add i64 %i.cd, 4
  %i.cf = sdiv i64 %i.cc, %i.ce
  %i.cg = shl nsw i64 %i.cf, 2
  %i.ch = sub nsw i64 %i.bw, %i.cg
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ci = phi i64 [ %i.ch, %bb.y ], [ %i.bw, %bb.x ]
  store i64 %i.ci, ptr %2, align 8, !tbaa !29
  br label %.critedge116

bb.aa:                                            ; preds = %bb.w
  %i.cj = icmp eq i64 %i.at, %i.bk
  br i1 %i.cj, label %bb.ab, label %.critedge116
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_:bb.a
bb.ag:                                            ; preds = %bb.ae
  %i.ct = icmp eq i64 %.sroa.speculated, 0
  br i1 %i.ct, label %.critedge116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0 = phi i64 [ %i.cs, %bb.af ], [ %.sroa.speculated, %bb.ag ] ; 5 uses
  %i.cu = srem i64 %i.bl, %.0                     ; 2 uses
  %i.cv = sdiv i64 %i.bl, %.0
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = sub nsw i64 %.0, %i.cu
  %i.cy = shl i64 %i.cv, 2
  %i.cz = add i64 %i.cy, 4
  %i.da = sdiv i64 %i.cx, %i.cz
  %i.db = shl nsw i64 %i.da, 2
  %i.dc = sub nsw i64 %.0, %i.db
  br label %.critedge

.critedge:                                        ; preds = %bb.ah, %bb.ai
  %i.dd = phi i64 [ %i.dc, %bb.ai ], [ %.0, %bb.ah ]
  store i64 %i.dd, ptr %1, align 8, !tbaa !29
  br label %.critedge116

.critedge116:                                     ; preds = %.critedge, %bb.aa, %bb.z, %bb.ag, %bb.m, %bb.n, %bb.k, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, double noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %12) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %14 = alloca %"struct.Eigen::internal::gemm_pack_rhs.565", align 1 ; 4 uses
  %15 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 5 uses
  %16 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 14 uses
  %17 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %18 = alloca %"class.Eigen::internal::blas_data_mapper.369", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !215  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !217  ; 2 uses
  %.sroa.speculated145 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !220  ; 2 uses
  %.sroa.speculated140 = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.g = mul nsw i64 %.sroa.speculated145, %i.b   ; 4 uses
  %i.h = mul nsw i64 %.sroa.speculated140, %i.b   ; 4 uses
  %i.i = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.i, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99: ; preds = %bb.a
  %i.k = load ptr, ptr %11, align 8, !tbaa !222   ; 2 uses
  %.not89 = icmp eq ptr %i.k, null
  br i1 %.not89, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99
  %i.l = shl nuw i64 %i.g, 3                      ; 2 uses
  %i.m = icmp samesign ult i64 %i.g, 16385
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i64 %i.l, 15
  %i.o = alloca i8, i64 %i.n, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.l) #28 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99, %bb.d
  %i.s = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99 ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99 ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 5 uses
  %i.u = icmp samesign ugt i64 %i.g, 16384        ; 2 uses
  %i.v = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.v, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc111 unwind label %bb.u

.noexc111:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !223  ; 2 uses
  %.not90 = icmp eq ptr %i.y, null
  br i1 %.not90, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.z = shl nuw i64 %i.h, 3                      ; 2 uses
  %i.aa = icmp samesign ult i64 %i.h, 16385
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = add nuw nsw i64 %i.z, 15
  %i.ac = alloca i8, i64 %i.ab, align 16          ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.z) #28 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc114 unwind label %bb.v

.noexc114:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ag = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ah = phi ptr [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.ac, %bb.i ], [ %i.ad, %bb.j ] ; 3 uses
  %i.ai = icmp samesign ugt i64 %i.h, 16384       ; 2 uses
  %.not91 = icmp sle i64 %0, %i.d
  %i.aj = icmp ne i64 %i.b, %2
  %or.cond98.not = or i1 %i.aj, %.not91
  %i.ak = icmp sgt i64 %1, %i.f
  %spec.select = select i1 %or.cond98.not, i1 true, i1 %i.ak
  %i.al = icmp sgt i64 %0, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.am = icmp sgt i64 %2, 0
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  br i1 %i.am, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.aq = icmp sgt i64 %1, 0
  br i1 %i.aq, label %.lr.ph183.us.us, label %.lr.ph183.us

.lr.ph183.us.us:                                  ; preds = %.lr.ph.split.us, %..loopexit177_crit_edge.split.us.us.us
  %.078195.us.us = phi i64 [ %i.ar, %..loopexit177_crit_edge.split.us.us.us ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %i.ar = add nsw i64 %.078195.us.us, %.sroa.speculated145 ; 3 uses
  %.sroa.speculated128.us.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.ar)
  %i.as = sub nsw i64 %.sroa.speculated128.us.us, %.078195.us.us ; 4 uses
  %i.at = getelementptr [8 x i8], ptr %3, i64 %.078195.us.us ; 2 uses
  %i.au = icmp eq i64 %.078195.us.us, 0
  %or.cond.us.us = or i1 %spec.select, %i.au
  %i.av = getelementptr [8 x i8], ptr %7, i64 %.078195.us.us ; 2 uses
  %or.cond.fr.us.us = freeze i1 %or.cond.us.us
  br i1 %or.cond.fr.us.us, label %.lr.ph183.split.us.split.us.us.us, label %.lr.ph183.split.us.split.us204.us

.lr.ph183.split.us.split.us204.us:                ; preds = %.lr.ph183.us.us, %..loopexit_crit_edge.split.us186.us.us
  %.077182.us.us200.us = phi i64 [ %i.aw, %..loopexit_crit_edge.split.us186.us.us ], [ 0, %.lr.ph183.us.us ] ; 3 uses
  %i.aw = add nsw i64 %.077182.us.us200.us, %i.b  ; 3 uses
  %.sroa.speculated124.us.us201.us = call i64 @llvm.smin.i64(i64 %2, i64 %i.aw)
  %i.ax = sub nsw i64 %.sroa.speculated124.us.us201.us, %.077182.us.us200.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.ay = mul nsw i64 %.077182.us.us200.us, %4
  %i.az = getelementptr [8 x i8], ptr %i.at, i64 %i.ay
  store ptr %i.az, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.ax, i64 noundef %i.as, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us202.us unwind label %.split.us188.split.split.us.split.us

.lr.ph.us.us202.us:                               ; preds = %.lr.ph183.split.us.split.us204.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.us.us202.us
  %.0178.us184.us.us = phi i64 [ 0, %.lr.ph.us.us202.us ], [ %i.ba, %bb.n ] ; 3 uses
  %i.ba = add nsw i64 %.0178.us184.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us185.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.ba)
  %i.bb = sub nsw i64 %.sroa.speculated.us185.us.us, %.0178.us184.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.bc = mul nsw i64 %.0178.us184.us.us, %9
  %i.bd = getelementptr [8 x i8], ptr %i.av, i64 %i.bc
  store ptr %i.bd, ptr %18, align 8
  store i64 %9, ptr %i.ap, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ah, i64 noundef %i.as, i64 noundef %i.ax, i64 noundef %i.bb, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split180.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.be = icmp slt i64 %i.ba, %1
  br i1 %i.be, label %bb.m, label %..loopexit_crit_edge.split.us186.us.us, !llvm.loop !492

..loopexit_crit_edge.split.us186.us.us:           ; preds = %bb.n
  %i.bf = icmp slt i64 %i.aw, %2
  br i1 %i.bf, label %.lr.ph183.split.us.split.us204.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !493

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us186.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bg = icmp slt i64 %i.ar, %0
  br i1 %i.bg, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !494

.lr.ph183.split.us.split.us.us.us:                ; preds = %.lr.ph183.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %.077182.us.us.us.us = phi i64 [ %i.bh, %..loopexit_crit_edge.split.us.us.us.us.us ], [ 0, %.lr.ph183.us.us ] ; 4 uses
  %i.bh = add nsw i64 %.077182.us.us.us.us, %i.b  ; 3 uses
  %.sroa.speculated124.us.us.us.us = call i64 @llvm.smin.i64(i64 %2, i64 %i.bh)
  %i.bi = sub nsw i64 %.sroa.speculated124.us.us.us.us, %.077182.us.us.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.bj = mul nsw i64 %.077182.us.us.us.us, %4
  %i.bk = getelementptr [8 x i8], ptr %i.at, i64 %i.bj
  store ptr %i.bk, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bi, i64 noundef %i.as, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us.us.us unwind label %.split.us188.split.us.split.us.split.us

.lr.ph.us.us.us.us:                               ; preds = %.lr.ph183.split.us.split.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.bl = getelementptr [8 x i8], ptr %5, i64 %.077182.us.us.us.us
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bm, %bb.q ] ; 4 uses
  %i.bm = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bm)
  %i.bn = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.bo = mul nsw i64 %.0178.us.us.us.us.us, %6
  %i.bp = getelementptr [8 x i8], ptr %i.bl, i64 %i.bo
  store ptr %i.bp, ptr %17, align 8
  store i64 %6, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.bi, i64 noundef %i.bn, i64 noundef 0, i64 noundef 0)
          to label %bb.p unwind label %.split.us.split.us.split.us.split.us.split.us

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.bq = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.br = getelementptr [8 x i8], ptr %i.av, i64 %i.bq
  store ptr %i.br, ptr %18, align 8
  store i64 %9, ptr %i.ap, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ah, i64 noundef %i.as, i64 noundef %i.bi, i64 noundef %i.bn, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.q unwind label %.split180.us.split.us.split.us.split.us.split.us

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.bs = icmp slt i64 %i.bm, %1
  br i1 %i.bs, label %bb.o, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !492

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.q
  %i.bt = icmp slt i64 %i.bh, %2
  br i1 %i.bt, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !493

.split.us188.split.split.us.split.us:             ; preds = %.lr.ph183.split.us.split.us204.us
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.split.us188

.split180.split.us.split.us.split.us:             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.split.us188.split.us.split.us.split.us:          ; preds = %.lr.ph183.split.us.split.us.us.us
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.split.us188

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.x

.split180.us.split.us.split.us.split.us.split.us: ; preds = %bb.p
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.lr.ph183.us:                                     ; preds = %.lr.ph.split.us, %..loopexit177_crit_edge.split.us198
  %.078195.us = phi i64 [ %i.bz, %..loopexit177_crit_edge.split.us198 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bz = add nsw i64 %.078195.us, %.sroa.speculated145 ; 3 uses
  %.sroa.speculated128.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.bz)
  %i.ca = sub nsw i64 %.sroa.speculated128.us, %.078195.us
  %i.cb = getelementptr [8 x i8], ptr %3, i64 %.078195.us
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph183.us, %.loopexit.us
  %.077182.us196 = phi i64 [ 0, %.lr.ph183.us ], [ %i.cc, %.loopexit.us ] ; 3 uses
  %i.cc = add nsw i64 %.077182.us196, %i.b        ; 3 uses
  %.sroa.speculated124.us197 = call i64 @llvm.smin.i64(i64 %2, i64 %i.cc)
  %i.cd = sub nsw i64 %.sroa.speculated124.us197, %.077182.us196
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.ce = mul nsw i64 %.077182.us196, %4
  %i.cf = getelementptr [8 x i8], ptr %i.cb, i64 %i.ce
  store ptr %i.cf, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.cd, i64 noundef %i.ca, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us

.loopexit.us:                                     ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  %i.cg = icmp slt i64 %i.cc, %2
  br i1 %i.cg, label %bb.r, label %..loopexit177_crit_edge.split.us198, !llvm.loop !493

..loopexit177_crit_edge.split.us198:              ; preds = %.loopexit.us
  %i.ch = icmp slt i64 %i.bz, %0
  br i1 %i.ch, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !494

.split.split.us:                                  ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.split.us188

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us198, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.l
  br i1 %i.ai, label %bb.s, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.s:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ag) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.s
  br i1 %i.u, label %bb.t, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.t:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  ret void

bb.u:                                             ; preds = %bb.g
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.v:                                             ; preds = %bb.k
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

.split.us188:                                     ; preds = %.split.us188.split.split.us.split.us, %.split.us188.split.us.split.us.split.us, %.split.split.us
  %.us-phi = phi { ptr, i32 } [ %i.ci, %.split.split.us ], [ %i.bu, %.split.us188.split.split.us.split.us ], [ %i.bw, %.split.us188.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.x

bb.w:                                             ; preds = %.split180.us.split.us.split.us.split.us.split.us, %.split180.split.us.split.us.split.us
  %.us-phi181 = phi { ptr, i32 } [ %i.bv, %.split180.split.us.split.us.split.us ], [ %i.by, %.split180.us.split.us.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.x

bb.x:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %bb.w, %.split.us188
  %.pn.pn = phi { ptr, i32 } [ %.us-phi, %.split.us188 ], [ %.us-phi181, %bb.w ], [ %i.bx, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ai, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.ag) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.x, %bb.y, %bb.v, %bb.u
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %i.ck, %bb.v ], [ %.pn.pn, %bb.y ], [ %.pn.pn, %bb.x ]
  br i1 %i.u, label %bb.z, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.z:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !249
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !273    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !275  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %i.j = shl i64 %3, 5
  %scevgep86 = getelementptr i8, ptr %1, i64 %i.j
  %i.k = mul i64 %i.g, 24
  %scevgep88 = getelementptr i8, ptr %i.e, i64 %i.k
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.l = add nsw i64 %smax, -4                    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = shl i64 %i.l, 3                          ; 3 uses
  %i.o = or disjoint i64 %i.n, 24
  %i.p = mul i64 %i.g, %i.o
  %i.q = shl i64 %3, 3                            ; 4 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %i.p
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.q
  %i.s = shl i64 %i.g, 4
  %scevgep90 = getelementptr i8, ptr %i.e, i64 %i.s
  %i.t = or disjoint i64 %i.n, 16
  %i.u = mul i64 %i.g, %i.t
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep91 = getelementptr i8, ptr %i.v, i64 %i.q
  %i.w = shl i64 %i.g, 3
  %scevgep92 = getelementptr i8, ptr %i.e, i64 %i.w
  %i.x = or disjoint i64 %i.n, 8
  %i.y = mul i64 %i.g, %i.x
  %i.z = getelementptr i8, ptr %i.e, i64 %i.y
  %scevgep93 = getelementptr i8, ptr %i.z, i64 %i.q
  %i.aa = mul i64 %i.g, %i.m
  %i.ab = shl i64 %i.aa, 5
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %scevgep94 = getelementptr i8, ptr %i.ac, i64 %i.q
  %i.ad = insertelement <4 x ptr> poison, ptr %scevgep91, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep89, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %scevgep93, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %scevgep94, i64 3
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep90, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep88, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep92, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.e, i64 3
  %min.iters.check = icmp ult i64 %3, 60
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check98 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.ds, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.am = mul nsw i64 %i.g, %.04460.us
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.04460.us, 1
  %i.ap = mul nsw i64 %i.g, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.04460.us, 2
  %i.as = mul nsw i64 %i.g, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.e, i64 %i.as ; 4 uses
  %i.au = or disjoint i64 %.04460.us, 3
  %i.av = mul nsw i64 %i.g, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.e, i64 %i.av ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ax = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.az = icmp ult ptr %i.ay, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ax ; 2 uses
  %i.ba = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.bb = icmp ult ptr %i.ba, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ax ; 2 uses
  %i.bc = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.bd = icmp ult ptr %i.bc, %scevgep84
  %i.be = or i1 %i.bd, %mul.overflow
  %i.bf = or i1 %i.bb, %i.az
  %i.bg = or i1 %i.bf, %i.be
  br i1 %i.bg, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bh = shl i64 %.04559.us, 3                   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %1, i64 %i.bh
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.bh
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep85, i64 0
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bk = icmp ult <4 x ptr> %i.bj, %i.ag
  %i.bl = insertelement <4 x ptr> poison, ptr %scevgep87, i64 0
  %i.bm = shufflevector <4 x ptr> %i.bl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bn = icmp ult <4 x ptr> %i.ak, %i.bm
  %i.bo = and <4 x i1> %i.bk, %i.bn
  %i.bp = bitcast <4 x i1> %i.bo to i4
  %i.bq = icmp ne i4 %i.bp, 0
  %op.rdx = or i1 %i.bq, %stride.check98
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = add i64 %.04559.us, %i.al               ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load = load <2 x double>, ptr %i.bt, align 8, !tbaa !30, !alias.scope !495
  %.idx = shl i64 %index, 5
  %i.bu = getelementptr i8, ptr %i.bs, i64 %.idx
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load109 = load <2 x double>, ptr %i.bv, align 8, !tbaa !30, !alias.scope !498
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load110 = load <2 x double>, ptr %i.bw, align 8, !tbaa !30, !alias.scope !500
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load111 = load <2 x double>, ptr %i.bx, align 8, !tbaa !30, !alias.scope !502
  %i.by = shufflevector <2 x double> %wide.load, <2 x double> %wide.load109, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = shufflevector <2 x double> %wide.load110, <2 x double> %wide.load111, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.by, <4 x double> %i.bz, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bu, align 8, !tbaa !30, !alias.scope !504, !noalias !506
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !507

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.br, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !30
  %i.cd = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.cc, ptr %i.cd, align 8, !tbaa !30
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cg = getelementptr i8, ptr %i.cd, i64 8
  store double %i.cf, ptr %i.cg, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us.ph
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !30
  %i.cj = getelementptr i8, ptr %i.cd, i64 16
  store double %i.ci, ptr %i.cj, align 8, !tbaa !30
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us.ph
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !30
  %i.cm = getelementptr i8, ptr %i.cd, i64 24
  store double %i.cl, ptr %i.cm, align 8, !tbaa !30
  %i.cn = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.co = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa128.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.co, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %i.cp = icmp eq i64 %3, %.neg
  br i1 %i.cp, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.dr, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.dq, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !30
  %i.cs = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cr, ptr %i.cs, align 8, !tbaa !30
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !30
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  store double %i.cu, ptr %i.cv, align 8, !tbaa !30
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !30
  %i.cy = getelementptr i8, ptr %i.cs, i64 16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us
  %i.da = load double, ptr %i.cz, align 8, !tbaa !30
  %i.db = getelementptr i8, ptr %i.cs, i64 24
  store double %i.da, ptr %i.db, align 8, !tbaa !30
  %i.dc = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !30
  %i.df = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  store double %i.de, ptr %i.dg, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dc
  %i.di = load double, ptr %i.dh, align 8, !tbaa !30
  %i.dj = getelementptr i8, ptr %i.df, i64 40
  store double %i.di, ptr %i.dj, align 8, !tbaa !30
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !30
  %i.dm = getelementptr i8, ptr %i.df, i64 48
  store double %i.dl, ptr %i.dm, align 8, !tbaa !30
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dc
  %i.do = load double, ptr %i.dn, align 8, !tbaa !30
  %i.dp = getelementptr i8, ptr %i.df, i64 56
  store double %i.do, ptr %i.dp, align 8, !tbaa !30
  %i.dq = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dr = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dr, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !508

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.br, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.dq, %scalar.ph ] ; 2 uses
  %i.ds = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.c
  br i1 %i.dt, label %.lr.ph.us, label %.preheader, !llvm.loop !509

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.du = icmp slt i64 %i.c, %4
  br i1 %i.du, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dv = load ptr, ptr %2, align 8, !tbaa !273   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !275 ; 3 uses
  %i.dy = icmp sgt i64 %3, 0
  br i1 %i.dy, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.dz = ptrtoaddr ptr %i.dv to i64
  %i.ea = mul i64 %i.dx, %i.b
  %i.eb = shl i64 %i.ea, 5
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = sub i64 %i.a, %i.ec
  %i.ee = mul i64 %i.dx, -8
  %min.iters.check115 = icmp ult i64 %3, 4
  %n.vec117 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n124 = icmp eq i64 %3, %n.vec117
  %xtraiter129 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04267 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fa, %._crit_edge ] ; 2 uses
  %.266 = phi i64 [ %.045.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.ef = mul nsw i64 %i.dx, %.04267
  %i.eg = getelementptr [8 x i8], ptr %i.dv, i64 %i.ef ; 6 uses
  br i1 %min.iters.check115, label %scalar.ph114.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph
  %i.eh = mul i64 %i.ee, %indvar
  %i.ei = add i64 %i.ed, %i.eh
  %i.ej = shl i64 %.266, 3
  %i.ek = add i64 %i.ei, %i.ej
  %i.el = add i64 %i.ek, -1
  %diff.check = icmp ult i64 %i.el, 31
  br i1 %diff.check, label %scalar.ph114.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %vector.memcheck113
  %i.em = add i64 %.266, %n.vec117                ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %1, i64 %.266
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next122, %vector.body118 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index119 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load120 = load <2 x double>, ptr %i.eo, align 8, !tbaa !30
  %wide.load121 = load <2 x double>, ptr %i.ep, align 8, !tbaa !30
  %i.eq = getelementptr [8 x i8], ptr %i.en, i64 %index119 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x double> %wide.load120, ptr %i.eq, align 8, !tbaa !30
  store <2 x double> %wide.load121, ptr %i.er, align 8, !tbaa !30
  %index.next122 = add nuw i64 %index119, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.es, label %middle.block123, label %vector.body118, !llvm.loop !510

middle.block123:                                  ; preds = %vector.body118
  br i1 %cmp.n124, label %._crit_edge, label %scalar.ph114.preheader

scalar.ph114.preheader:                           ; preds = %vector.memcheck113, %.lr.ph, %middle.block123
  %.065.ph = phi i64 [ 0, %vector.memcheck113 ], [ 0, %.lr.ph ], [ %n.vec117, %middle.block123 ] ; 3 uses
  %.364.ph = phi i64 [ %.266, %vector.memcheck113 ], [ %.266, %.lr.ph ], [ %i.em, %middle.block123 ] ; 2 uses
  br i1 %lcmp.mod130.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol

scalar.ph114.prol:                                ; preds = %scalar.ph114.preheader, %scalar.ph114.prol
  %.065.prol = phi i64 [ %i.ex, %scalar.ph114.prol ], [ %.065.ph, %scalar.ph114.preheader ] ; 2 uses
  %.364.prol = phi i64 [ %i.ew, %scalar.ph114.prol ], [ %.364.ph, %scalar.ph114.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph114.prol ], [ 0, %scalar.ph114.preheader ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !30
  %i.ev = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.eu, ptr %i.ev, align 8, !tbaa !30
  %i.ew = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.ex = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol, !llvm.loop !511

scalar.ph114.prol.loopexit:                       ; preds = %scalar.ph114.prol, %scalar.ph114.preheader
  %.lcssa127.unr = phi i64 [ poison, %scalar.ph114.preheader ], [ %i.ew, %scalar.ph114.prol ]
  %.065.unr = phi i64 [ %.065.ph, %scalar.ph114.preheader ], [ %i.ex, %scalar.ph114.prol ]
  %.364.unr = phi i64 [ %.364.ph, %scalar.ph114.preheader ], [ %i.ew, %scalar.ph114.prol ]
  %i.ey = sub nsw i64 %.065.ph, %3
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge, label %scalar.ph114

._crit_edge:                                      ; preds = %scalar.ph114.prol.loopexit, %scalar.ph114, %middle.block123
  %.lcssa = phi i64 [ %i.em, %middle.block123 ], [ %.lcssa127.unr, %scalar.ph114.prol.loopexit ], [ %i.ft, %scalar.ph114 ]
  %i.fa = add nsw i64 %.04267, 1                  ; 2 uses
  %exitcond73.not = icmp eq i64 %i.fa, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond73.not, label %._crit_edge69.split, label %.lr.ph, !llvm.loop !512

scalar.ph114:                                     ; preds = %scalar.ph114.prol.loopexit, %scalar.ph114
  %.065 = phi i64 [ %i.fu, %scalar.ph114 ], [ %.065.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %.364 = phi i64 [ %i.ft, %scalar.ph114 ], [ %.364.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !30
  %i.fd = getelementptr inbounds [8 x i8], ptr %1, i64 %.364
  store double %i.fc, ptr %i.fd, align 8, !tbaa !30
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !30
  %i.fh = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  store double %i.fg, ptr %i.fi, align 8, !tbaa !30
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !30
  %i.fm = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  store double %i.fl, ptr %i.fn, align 8, !tbaa !30
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !30
  %i.fr = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fs = getelementptr i8, ptr %i.fr, i64 24
  store double %i.fq, ptr %i.fs, align 8, !tbaa !30
  %i.ft = add nsw i64 %.364, 4                    ; 2 uses
  %i.fu = add nuw nsw i64 %.065, 4                ; 2 uses
  %exitcond72.not.3 = icmp eq i64 %i.fu, %3
  br i1 %exitcond72.not.3, label %._crit_edge, label %scalar.ph114, !llvm.loop !513
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !103
  %.not.i.i.i = icmp eq i64 %1, %i.b
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !101
  tail call void @free(ptr noundef %i.c) #24
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %.sink.split.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.e, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %1, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #28 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !101
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i.i
  store i64 %1, ptr %i.a, align 8, !tbaa !103
  %i.k = trunc i64 %1 to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !101    ; 2 uses
  %wide.trip.count.i = and i64 %1, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %1, 2147483640                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %vec.ind, ptr %i.n, align 4, !tbaa !19
  store <4 x i32> %step.add, ptr %i.o, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !514

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.r, ptr %i.q, align 4, !tbaa !19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph, !llvm.loop !515

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit: ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(66) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit:
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !103  ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i, label %bb.a

bb.a:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.a
  %i.g = shl nuw i64 %i.d, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #28 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.invoke, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %.0.i.i.i.i.i = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit ], [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i ] ; 2 uses
  store ptr %.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.k, align 8, !tbaa !103
  %i.l = load i64, ptr %i.c, align 8, !tbaa !103  ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i
  %.idx.i.i.i.i = shl nsw i64 %i.l, 2
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %i.n, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit

_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit: ; preds = %bb.b, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !103  ; 4 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i12, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit
  %i.t = icmp ugt i64 %i.r, 4611686018427387903
  br i1 %i.t, label %.invoke22, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i11

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i11: ; preds = %bb.c
  %i.u = shl nuw i64 %i.r, 2
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #28 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.invoke22, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i12

.invoke22:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i11, %bb.c
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.cont23 unwind label %bb.f

.cont23:                                          ; preds = %.invoke22
  unreachable

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i12: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i11, %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit
  %.0.i.i.i.i.i13 = phi ptr [ null, %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit ], [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i11 ] ; 2 uses
  store ptr %.0.i.i.i.i.i13, ptr %i.o, align 8, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.r, ptr %i.y, align 8, !tbaa !103
  %i.z = load i64, ptr %i.q, align 8, !tbaa !103  ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5Eigen14TranspositionsILin1ELin1EiEC2ERKS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i12
  %.idx.i.i.i.i14 = shl nsw i64 %i.z, 2
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i13, ptr align 4 %i.ab, i64 %.idx.i.i.i.i14, i1 false)
  br label %_ZN5Eigen14TranspositionsILin1ELin1EiEC2ERKS1_.exit

_ZN5Eigen14TranspositionsILin1ELin1EiEC2ERKS1_.exit: ; preds = %bb.d, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ac, ptr noundef nonnull align 8 dereferenceable(10) %i.ad, i64 10, i1 false)
  ret void

bb.e:                                             ; preds = %.invoke
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %.invoke22
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !101
  tail call void @free(ptr noundef %i.ag) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.af, %bb.f ], [ %i.ae, %bb.e ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.ah) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.e = mul nsw i64 %i.d, %i.b                   ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.b
  %i.i = shl nuw i64 %i.e, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #28 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit: ; preds = %bb.a, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.0.i = phi ptr [ null, %bb.a ], [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ] ; 2 uses
  store ptr %.0.i, ptr %0, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.m, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.n, align 8, !tbaa !72
  %i.o = load i64, ptr %i.a, align 8, !tbaa !61
  %i.p = load i64, ptr %i.c, align 8, !tbaa !72
  %i.q = mul nsw i64 %i.p, %i.o                   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit
  %.idx = shl nsw i64 %i.q, 3
  %i.s = load ptr, ptr %1, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.0.i, ptr align 8 %i.s, i64 %.idx, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit: ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11_solve_implINS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES2_EES2_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(17) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.8.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.8.copyload = load i64, ptr %.sroa.7.8..sroa_idx, align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !103  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i64 %i.e, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %.not11.i.i.i.i.i.i = icmp eq i64 %i.g, %.sroa.7.8.copyload
  %or.cond.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.not11.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.c, 0
  %i.i = icmp eq i64 %.sroa.7.8.copyload, 0
  %or.cond.i.i.i.i.i.i.i.i = or i1 %i.i, %i.h
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sdiv i64 9223372036854775807, %.sroa.7.8.copyload
  %i.k = icmp sgt i64 %i.c, %i.j
  br i1 %i.k, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.m = mul nsw i64 %i.c, %.sroa.7.8.copyload
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.m, i64 noundef %i.c, i64 noundef %.sroa.7.8.copyload)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i, %bb.a
  %i.n = icmp sgt i64 %.sroa.5.8.copyload, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES1_EELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !101
  %i.p = load ptr, ptr %2, align 8, !tbaa !50
  %i.q = load i64, ptr %i.f, align 8, !tbaa !72   ; 7 uses
  %i.r = load i64, ptr %i.d, align 8, !tbaa !61   ; 4 uses
  %i.s = icmp sgt i64 %i.q, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES1_EELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ugt i64 %i.q, 3
  %ident.check.not = icmp eq i64 %i.r, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.q, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  %xtraiter = and i64 %i.q, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKNS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES2_EELi1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.i.i.i.i.i.i.i.i
  %.077.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKNS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES2_EELi1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.077.i.i.i.i.i.i.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.v ; 4 uses
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.077.i.i.i.i.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %index ; 2 uses
  %i.y = icmp eq <2 x i64> %broadcast.splat, %vec.ind
  %i.z = icmp eq <2 x i64> %broadcast.splat, %step.add
  %i.aa = select <2 x i1> %i.y, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.ab = select <2 x i1> %i.z, <2 x double> splat (double 1.000000e+00), <2 x double> zeroinitializer
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> %i.aa, ptr %i.x, align 8, !tbaa !30
  store <2 x double> %i.ab, ptr %i.ac, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !516

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKNS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES2_EELi1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ae = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %i.r
  %i.af = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ae
  %i.ag = icmp eq i64 %.077.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.ah = select i1 %i.ag, double 1.000000e+00, double 0.000000e+00
  store double %i.ah, ptr %i.af, align 8, !tbaa !30
  %i.ai = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.aj = icmp eq i64 %i.q, %.neg
  br i1 %i.aj, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKNS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES2_EELi1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ak = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.r
  %i.al = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ak
  %i.am = icmp eq i64 %.077.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.an = select i1 %i.am, double 1.000000e+00, double 0.000000e+00
  store double %i.an, ptr %i.al, align 8, !tbaa !30
  %i.ao = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ap = mul nsw i64 %i.ao, %i.r
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.ap
  %i.ar = icmp eq i64 %.077.i.i.i.i.i.i.i.i, %i.ao
  %i.as = select i1 %i.ar, double 1.000000e+00, double 0.000000e+00
  store double %i.as, ptr %i.aq, align 8, !tbaa !30
  %i.at = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.at, %i.q
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKNS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES2_EELi1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !517

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKNS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES2_EELi1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.au = add nuw nsw i64 %.077.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.au, %.sroa.5.8.copyload
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES1_EELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i, !llvm.loop !518

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES1_EELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit: ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKNS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES2_EELi1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit.i.i.i.i.i.i.i.i, %bb.e, %.lr.ph.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !72
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj2ENS_5DenseEE12solveInPlaceIS2_EEvRKNS_10MatrixBaseIT_EE.exit, label %_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj5ENS_5DenseEE12solveInPlaceIS2_EEvRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj5ENS_5DenseEE12solveInPlaceIS2_EEvRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES1_EELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit
  tail call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li1ELi5ELi0ELin1EE3runERS4_RS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.pr = load i64, ptr %i.av, align 8, !tbaa !72
  %i.ay = icmp eq i64 %.pr, 0
  br i1 %i.ay, label %_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj2ENS_5DenseEE12solveInPlaceIS2_EEvRKNS_10MatrixBaseIT_EE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj5ENS_5DenseEE12solveInPlaceIS2_EEvRKNS_10MatrixBaseIT_EE.exit
  tail call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li1ELi2ELi0ELin1EE3runERS4_RS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj2ENS_5DenseEE12solveInPlaceIS2_EEvRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj2ENS_5DenseEE12solveInPlaceIS2_EEvRKNS_10MatrixBaseIT_EE.exit: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEENS_14CwiseNullaryOpINS_8internal18scalar_identity_opIdEES1_EELi2EEEEERS1_RKNS_9DenseBaseIT_EE.exit, %_ZNK5Eigen18TriangularViewImplIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELj5ENS_5DenseEE12solveInPlaceIS2_EEvRKNS_10MatrixBaseIT_EE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li1ELi5ELi0ELin1EE3runERS4_RS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i64, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %i.i = load <2 x i64>, ptr %i.e, align 8, !tbaa !29
  store <2 x i64> %i.i, ptr %i.f, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.j, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.h, ptr %i.a, align 8, !tbaa !29
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.k = load i64, ptr %i.f, align 8, !tbaa !217
  %i.l = load i64, ptr %i.j, align 8, !tbaa !215  ; 2 uses
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !218
  %i.o = load i64, ptr %i.g, align 8, !tbaa !220
  %i.p = mul nsw i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.p, ptr %i.q, align 8, !tbaa !221
  %i.r = load ptr, ptr %0, align 8, !tbaa !50
  %i.s = load i64, ptr %i.b, align 8, !tbaa !61
  %i.t = load ptr, ptr %1, align 8, !tbaa !50
  %i.u = load i64, ptr %i.e, align 8, !tbaa !61
  invoke void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %i.c, i64 noundef %i.h, ptr noundef nonnull %i.r, i64 noundef %i.s, ptr noundef nonnull %i.t, i64 noundef 1, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %2, align 8, !tbaa !222
  call void @free(ptr noundef %i.v) #24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !223
  call void @free(ptr noundef %i.x) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !222
  call void @free(ptr noundef %i.z) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !223
  call void @free(ptr noundef %i.ab) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_Li1ELi2ELi0ELin1EE3runERS4_RS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i64, ptr %i.d, align 8, !tbaa !72   ; 2 uses
  %i.i = load <2 x i64>, ptr %i.e, align 8, !tbaa !29
  store <2 x i64> %i.i, ptr %i.f, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.j, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.h, ptr %i.a, align 8, !tbaa !29
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.k = load i64, ptr %i.f, align 8, !tbaa !217
  %i.l = load i64, ptr %i.j, align 8, !tbaa !215  ; 2 uses
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !218
  %i.o = load i64, ptr %i.g, align 8, !tbaa !220
  %i.p = mul nsw i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.p, ptr %i.q, align 8, !tbaa !221
  %i.r = load ptr, ptr %0, align 8, !tbaa !50
  %i.s = load i64, ptr %i.b, align 8, !tbaa !61
  %i.t = load ptr, ptr %1, align 8, !tbaa !50
  %i.u = load i64, ptr %i.e, align 8, !tbaa !61
  invoke void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %i.c, i64 noundef %i.h, ptr noundef nonnull %i.r, i64 noundef %i.s, ptr noundef nonnull %i.t, i64 noundef 1, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %2, align 8, !tbaa !222
  call void @free(ptr noundef %i.v) #24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !223
  call void @free(ptr noundef %i.x) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %2, align 8, !tbaa !222
  call void @free(ptr noundef %i.z) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !223
  call void @free(ptr noundef %i.ab) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.369", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.369", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.369", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !215  ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !217
  %.sroa.speculated246 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated246, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !222    ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172
  %i.j = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.e, 16385
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.j, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #28 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc193 unwind label %bb.af

.noexc193:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !223  ; 2 uses
  %.not159 = icmp eq ptr %i.w, null
  br i1 %.not159, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #28 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc196 unwind label %bb.ag

.noexc196:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !224

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #24
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #24
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #24
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !225
  %.sroa.speculated280 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated280, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 6 uses
  br i1 %i.ar, label %.lr.ph312.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.q
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph328.split.preheader, label %._crit_edge

.lr.ph328.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = sub nsw i64 %0, %i.b                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %.lr.ph328.split.preheader
  %.sroa.speculated221375 = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %0)
  br label %.lr.ph

.lr.ph312.us.preheader:                           ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bc = icmp sgt i64 %i.b, 0
  %i.bd = shl i64 %0, 3                           ; 2 uses
  %i.be = mul i64 %i.b, -8
  %i.bf = mul i64 %., %6
  %i.bg = shl i64 %i.bf, 3
  %i.bh = add i64 %i.bd, -8
  %i.bi = shl i64 %6, 3                           ; 2 uses
  %i.bj = add nuw i64 %0, 2305843009213693951
  %i.bk = mul i64 %3, %i.bj
  %i.bl = add i64 %i.bk, %0
  %i.bm = shl i64 %i.bl, 3
  %i.bn = shl i64 %3, 3
  %i.bo = sub nuw nsw i64 -8, %i.bn               ; 2 uses
  %i.bp = mul i64 %i.b, %i.bo
  %i.bq = shl i64 %3, 5
  %i.br = sub nuw nsw i64 -32, %i.bq
  %i.bs = getelementptr i8, ptr %4, i64 %i.bd
  %i.bt = getelementptr i8, ptr %2, i64 %i.bm
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %ident.check.not = icmp eq i64 %6, 1
  %stride.check = icmp slt i64 %i.bi, 0
  br label %.lr.ph312.us

.lr.ph312.us:                                     ; preds = %.loopexit.us, %.lr.ph312.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph312.us.preheader ] ; 3 uses
  %.0135326.us = phi i64 [ %i.ci, %.loopexit.us ], [ %0, %.lr.ph312.us.preheader ] ; 5 uses
  %i.bv = mul i64 %i.be, %indvar                  ; 2 uses
  %i.bw = add i64 %i.bh, %i.bv
  %i.bx = mul i64 %i.bp, %indvar
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0135326.us) ; 9 uses
  %i.by = sub nsw i64 %.0135326.us, %smin         ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %2, i64 %i.by
  %i.ca = getelementptr [8 x i8], ptr %4, i64 %i.by
  br i1 %i.bc, label %.lr.ph308.us.us.preheader, label %._crit_edge313.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph312.us
  %i.cb = getelementptr i8, ptr %i.bs, i64 %i.bv
  %i.cc = getelementptr i8, ptr %i.bu, i64 %i.bx
  br label %.lr.ph308.us.us

bb.s:                                             ; preds = %.lr.ph.us, %bb.w
  %.0325.us = phi i64 [ 0, %.lr.ph.us ], [ %i.cg, %bb.w ] ; 4 uses
  %i.cd = sub nsw i64 %i.ci, %.0325.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.cd, i64 %.sroa.speculated246) ; 3 uses
  %i.ce = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.ce, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %gep.us330 = getelementptr [8 x i8], ptr %invariant.gep.us333, i64 %.0325.us
  store ptr %gep.us330, ptr %14, align 8
  store i64 %3, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %smin, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split.us334

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.cf = getelementptr [8 x i8], ptr %4, i64 %.0325.us
  store ptr %i.cf, ptr %15, align 8
  store i64 %6, ptr %i.bb, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %smin, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split336.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cg = add nsw i64 %.0325.us, %.sroa.speculated246 ; 2 uses
  %i.ch = icmp slt i64 %i.cg, %i.ci
  br i1 %i.ch, label %bb.s, label %.loopexit.us, !llvm.loop !519

.loopexit.us:                                     ; preds = %bb.w
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph312.us, !llvm.loop !520

._crit_edge313.us:                                ; preds = %._crit_edge309.us.us, %.lr.ph312.us
  %i.ci = sub nsw i64 %.0135326.us, %i.b          ; 5 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.us, label %._crit_edge

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar377 = phi i64 [ %indvar.next378, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 4 uses
  %.0134310.us.us = phi i64 [ %i.gc, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 12 uses
  %i.ck = mul i64 %., %indvar377
  %i.cl = or disjoint i64 %.0134310.us.us, 1
  %i.cm = mul i64 %i.bg, %indvar377               ; 2 uses
  %i.cn = add i64 %i.bw, %i.cm
  %i.co = or disjoint i64 %.0134310.us.us, 1
  %i.cp = mul i64 %., %indvar377                  ; 2 uses
  %i.cq = sub i64 %1, %i.cp
  %smin383 = call i64 @llvm.smin.i64(i64 %., i64 %i.cq)
  %i.cr = add i64 %smin383, %.0134310.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.co, i64 %i.cr)
  %i.cs = xor i64 %i.cp, -1
  %i.ct = add i64 %smax, %i.cs
  %i.cu = mul i64 %i.bi, %i.ct
  %i.cv = add i64 %i.cn, %i.cu
  %i.cw = sub nsw i64 %1, %.0134310.us.us         ; 2 uses
  %.sroa.speculated216.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cw) ; 3 uses
  %i.cx = add i64 %.sroa.speculated216.us.us, %.0134310.us.us ; 3 uses
  %i.cy = icmp slt i64 %i.cw, 1
  %i.cz = mul nuw nsw i64 %.0134310.us.us, %smin
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cz ; 2 uses
  %i.db = mul nsw i64 %.0134310.us.us, %6         ; 2 uses
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.db
  %i.dc = getelementptr [8 x i8], ptr %i.ca, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.cb, i64 %i.cm
  %i.de = call i64 @llvm.smax.i64(i64 %i.cl, i64 %i.cx) ; 2 uses
  %i.df = sub i64 %i.de, %i.ck                    ; 2 uses
  %min.iters.check390 = icmp ugt i64 %i.df, 3
  %or.cond = and i1 %min.iters.check390, %ident.check.not
  %i.dg = and i64 %i.de, 3                        ; 2 uses
  %n.vec392 = sub nuw i64 %i.df, %i.dg            ; 2 uses
  %i.dh = add i64 %.0134310.us.us, %n.vec392
  %cmp.n401 = icmp eq i64 %i.dg, 0
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph308.us.us
  %indvar379 = phi i64 [ %indvar.next380, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ %smin, %.lr.ph308.us.us ] ; 3 uses
  %.0133306.us.us = phi i64 [ %i.fd, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 4 uses
  %i.di = mul i64 %indvar379, -32                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dd, i64 %i.di
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 4)
  %i.dj = mul i64 %smin381, -8
  %scevgep382 = getelementptr i8, ptr %scevgep, i64 %i.dj
  %i.dk = add i64 %i.cv, %i.di
  %i.dl = mul i64 %i.br, %indvar379
  %i.dm = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.dn = call i64 @llvm.umin.i64(i64 %i.dm, i64 4)
  %i.do = sub nuw nsw i64 %smin, %.0133306.us.us  ; 3 uses
  %.sroa.speculated210.us.us = call i64 @llvm.smin.i64(i64 %i.do, i64 4) ; 7 uses
  %i.dp = icmp slt i64 %i.do, 1
  %brmerge = select i1 %i.dp, i1 true, i1 %i.cy
  br i1 %brmerge, label %._crit_edge.split.us.us, label %.lr.ph303.us.us.preheader

.lr.ph303.us.us.preheader:                        ; preds = %bb.x
  %i.dq = getelementptr i8, ptr %i.cc, i64 %i.dl
  br label %.lr.ph303.us.us

.lr.ph303.us.us:                                  ; preds = %.lr.ph303.us.us.preheader, %._crit_edge304.us.us
  %.0132305.us.us = phi i64 [ %i.ff, %._crit_edge304.us.us ], [ 0, %.lr.ph303.us.us.preheader ] ; 5 uses
  %i.dr = shl i64 %.0132305.us.us, 3
  %i.ds = sub i64 %i.dk, %i.dr
  %scevgep384 = getelementptr i8, ptr %4, i64 %i.ds
  %i.dt = mul i64 %i.bo, %.0132305.us.us
  %scevgep385 = getelementptr i8, ptr %i.dq, i64 %i.dt
  %i.du = add nuw nsw i64 %.0132305.us.us, %.0133306.us.us
  %i.dv = xor i64 %i.du, -1
  %i.dw = add nsw i64 %.0135326.us, %i.dv         ; 4 uses
  %i.dx = xor i64 %.0132305.us.us, -1
  %i.dy = add nsw i64 %.sroa.speculated210.us.us, %i.dx ; 6 uses
  %i.dz = sub i64 %i.dw, %i.dy                    ; 2 uses
  %i.ea = mul nsw i64 %i.dw, %3                   ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %2, i64 %i.dw
  %i.ec = getelementptr [8 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !30
  %i.ee = fdiv double 1.000000e+00, %i.ed         ; 3 uses
  %i.ef = getelementptr [8 x i8], ptr %4, i64 %i.dw ; 3 uses
  %i.eg = getelementptr [8 x i8], ptr %4, i64 %i.dz
  %i.eh = getelementptr [8 x i8], ptr %2, i64 %i.dz
  %i.ei = getelementptr [8 x i8], ptr %i.eh, i64 %i.ea ; 3 uses
  %i.ej = icmp sgt i64 %i.dy, 0
  br i1 %i.ej, label %.lr.ph.us.us.us.preheader, label %.lr.ph303.split.us316.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph303.us.us
  %min.iters.check = icmp ult i64 %i.dy, 4
  %bound0 = icmp ult ptr %scevgep382, %scevgep385
  %bound1 = icmp ult ptr %i.ei, %scevgep384
  %found.conflict = and i1 %bound0, %bound1
  %i.ek = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.dy, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.dy, %n.vec
  br label %.lr.ph.us.us.us

.lr.ph303.split.us316.us.preheader:               ; preds = %.lr.ph303.us.us
  br i1 %or.cond, label %vector.ph391, label %.lr.ph303.split.us316.us.preheader403

vector.ph391:                                     ; preds = %.lr.ph303.split.us316.us.preheader
  %broadcast.splatinsert393 = insertelement <2 x double> poison, double %i.ee, i64 0
  %broadcast.splat394 = shufflevector <2 x double> %broadcast.splatinsert393, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %i.ef, i64 %.0134310.us.us
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph391
  %index396 = phi i64 [ 0, %vector.ph391 ], [ %index.next399, %vector.body395 ] ; 2 uses
  %i.em = getelementptr [8 x i8], ptr %i.el, i64 %index396 ; 3 uses
  %i.en = getelementptr i8, ptr %i.em, i64 16     ; 2 uses
  %wide.load397 = load <2 x double>, ptr %i.em, align 8, !tbaa !30
  %wide.load398 = load <2 x double>, ptr %i.en, align 8, !tbaa !30
  %i.eo = fmul <2 x double> %broadcast.splat394, %wide.load397
  %i.ep = fmul <2 x double> %broadcast.splat394, %wide.load398
  store <2 x double> %i.eo, ptr %i.em, align 8, !tbaa !30
  store <2 x double> %i.ep, ptr %i.en, align 8, !tbaa !30
  %index.next399 = add nuw i64 %index396, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.eq, label %middle.block400, label %vector.body395, !llvm.loop !521

middle.block400:                                  ; preds = %vector.body395
  br i1 %cmp.n401, label %._crit_edge304.us.us, label %.lr.ph303.split.us316.us.preheader403

.lr.ph303.split.us316.us.preheader403:            ; preds = %.lr.ph303.split.us316.us.preheader, %middle.block400
  %.0131301.us314.us.ph = phi i64 [ %.0134310.us.us, %.lr.ph303.split.us316.us.preheader ], [ %i.dh, %middle.block400 ]
  br label %.lr.ph303.split.us316.us

.lr.ph303.split.us316.us:                         ; preds = %.lr.ph303.split.us316.us.preheader403, %.lr.ph303.split.us316.us
  %.0131301.us314.us = phi i64 [ %i.ev, %.lr.ph303.split.us316.us ], [ %.0131301.us314.us.ph, %.lr.ph303.split.us316.us.preheader403 ] ; 2 uses
  %i.er = mul nsw i64 %.0131301.us314.us, %6
  %i.es = getelementptr [8 x i8], ptr %i.ef, i64 %i.er ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !30
  %i.eu = fmul double %i.ee, %i.et
  store double %i.eu, ptr %i.es, align 8, !tbaa !30
  %i.ev = add nuw nsw i64 %.0131301.us314.us, 1   ; 2 uses
  %i.ew = icmp slt i64 %i.ev, %i.cx
  br i1 %i.ew, label %.lr.ph303.split.us316.us, label %._crit_edge304.us.us, !llvm.loop !522

._crit_edge.split.us.us:                          ; preds = %._crit_edge304.us.us, %bb.x
  %i.ex = sub nsw i64 %i.do, %.sroa.speculated210.us.us ; 5 uses
  %i.ey = add nuw i64 %.0133306.us.us, %.sroa.speculated210.us.us
  %i.ez = sub i64 %.0135326.us, %i.ey             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.ez
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.da, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, i64 noundef %smin, i64 noundef %i.ex)
          to label %bb.y unwind label %.split.us.split.us

bb.y:                                             ; preds = %._crit_edge.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.fa = icmp sgt i64 %i.ex, 0
  br i1 %i.fa, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.fb = mul nsw i64 %i.ez, %3
  %i.fc = getelementptr [8 x i8], ptr %i.bz, i64 %i.fb
  store ptr %i.fc, ptr %12, align 8
  store i64 %3, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated210.us.us, i64 noundef %i.ex, i64 noundef 0, i64 noundef 0)
          to label %bb.aa unwind label %.split320.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store ptr %i.dc, ptr %13, align 8
  store i64 %6, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.da, i64 noundef %i.ex, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated210.us.us, i64 noundef %smin, i64 noundef 0, i64 noundef %i.ex)
          to label %bb.ab unwind label %.split323.us.split.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.fd = add nuw nsw i64 %.0133306.us.us, 4      ; 2 uses
  %i.fe = icmp slt i64 %i.fd, %smin
  %indvars.iv.next = add i64 %indvars.iv, -4
  %indvar.next380 = add i64 %indvar379, 1
  br i1 %i.fe, label %bb.x, label %._crit_edge309.us.us, !llvm.loop !523

._crit_edge304.us.us:                             ; preds = %.lr.ph303.split.us316.us, %._crit_edge.us.us.us, %middle.block400
  %i.ff = add nuw nsw i64 %.0132305.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ff, %i.dn
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph303.us.us, !llvm.loop !524

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131301.us.us.us = phi i64 [ %i.ga, %._crit_edge.us.us.us ], [ %.0134310.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.fg = mul nsw i64 %.0131301.us.us.us, %6      ; 2 uses
  %i.fh = getelementptr [8 x i8], ptr %i.ef, i64 %i.fg ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !30
  %i.fj = fmul double %i.ee, %i.fi                ; 2 uses
  store double %i.fj, ptr %i.fh, align 8, !tbaa !30
  %i.fk = getelementptr [8 x i8], ptr %i.eg, i64 %i.fg ; 2 uses
  %i.fl = fneg double %i.fj                       ; 2 uses
  %brmerge406 = select i1 %min.iters.check, i1 true, i1 %i.ek
  br i1 %brmerge406, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fl, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load = load <2 x double>, ptr %i.fm, align 8, !tbaa !30, !alias.scope !525
  %wide.load386 = load <2 x double>, ptr %i.fn, align 8, !tbaa !30, !alias.scope !525
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %index ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.fo, align 8, !tbaa !30, !alias.scope !528, !noalias !525
  %wide.load388 = load <2 x double>, ptr %i.fp, align 8, !tbaa !30, !alias.scope !528, !noalias !525
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load387)
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load386, <2 x double> %wide.load388)
  store <2 x double> %i.fq, ptr %i.fo, align 8, !tbaa !30, !alias.scope !528, !noalias !525
  store <2 x double> %i.fr, ptr %i.fp, align 8, !tbaa !30, !alias.scope !528, !noalias !525
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !530

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us, %middle.block
  %.0130300.us.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0130300.us.us.us = phi i64 [ %i.fy, %scalar.ph ], [ %.0130300.us.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.0130300.us.us.us
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !30
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.0130300.us.us.us ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !30
  %i.fx = call double @llvm.fmuladd.f64(double %i.fl, double %i.fu, double %i.fw)
  store double %i.fx, ptr %i.fv, align 8, !tbaa !30
  %i.fy = add nuw nsw i64 %.0130300.us.us.us, 1   ; 2 uses
  %i.fz = icmp slt i64 %i.fy, %i.dy
  br i1 %i.fz, label %scalar.ph, label %._crit_edge.us.us.us, !llvm.loop !531

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %i.ga = add nuw nsw i64 %.0131301.us.us.us, 1   ; 2 uses
  %i.gb = icmp slt i64 %i.ga, %i.cx
  br i1 %i.gb, label %.lr.ph.us.us.us, label %._crit_edge304.us.us, !llvm.loop !532

._crit_edge309.us.us:                             ; preds = %bb.ac
  %i.gc = add nuw nsw i64 %.0134310.us.us, %.     ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %1
  %indvar.next378 = add i64 %indvar377, 1
  br i1 %i.gd, label %.lr.ph308.us.us, label %._crit_edge313.us, !llvm.loop !533

.lr.ph.us:                                        ; preds = %._crit_edge313.us
  %i.ge = mul nsw i64 %i.ci, %3
  %invariant.gep.us333 = getelementptr [8 x i8], ptr %2, i64 %i.ge
  br label %bb.s

.split.us334:                                     ; preds = %bb.t
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.split336.us:                                     ; preds = %bb.u
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.split.us.split.us:                               ; preds = %._crit_edge.split.us.us
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.body

.split320.us.split.us:                            ; preds = %bb.z
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %.body

.split323.us.split.us:                            ; preds = %bb.aa
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body

.loopexit:                                        ; preds = %bb.an
  %.sroa.speculated221 = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.go)
  %i.gk = sub nsw i64 %i.go, %i.b                 ; 2 uses
  %i.gl = icmp sgt i64 %i.gk, 0
  br i1 %i.gl, label %.lr.ph, label %._crit_edge, !llvm.loop !520

._crit_edge:                                      ; preds = %.loopexit, %._crit_edge313.us, %.lr.ph328.split.preheader, %bb.r, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %i.ag, label %bb.ad, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.ad:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ae) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.ad
  br i1 %i.s, label %bb.ae, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit200

bb.ae:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit200

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit200: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.ae
  ret void

bb.af:                                            ; preds = %bb.g
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205

bb.ag:                                            ; preds = %bb.k
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.loopexit
  %i.go = phi i64 [ %i.av, %.lr.ph.lr.ph ], [ %i.gk, %.loopexit ] ; 5 uses
  %.sroa.speculated221376 = phi i64 [ %.sroa.speculated221375, %.lr.ph.lr.ph ], [ %.sroa.speculated221, %.loopexit ] ; 2 uses
  %i.gp = mul nsw i64 %i.go, %3
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.gp
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph, %bb.an
  %.0325 = phi i64 [ 0, %.lr.ph ], [ %i.gv, %bb.an ] ; 4 uses
  %i.gq = sub nsw i64 %i.go, %.0325
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.gq, i64 %.sroa.speculated246) ; 3 uses
  %i.gr = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.gr, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0325
  store ptr %gep, ptr %14, align 8
  store i64 %3, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated221376, i64 noundef %.sroa.speculated, i64 noundef 0, i64 noundef 0)
          to label %bb.aj unwind label %.split

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.gs = getelementptr [8 x i8], ptr %4, i64 %.0325
  store ptr %i.gs, ptr %15, align 8
  store i64 %6, ptr %i.au, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated, i64 noundef %.sroa.speculated221376, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ak unwind label %.split336

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.an

.split:                                           ; preds = %bb.ai
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.split.us334, %.split
  %.us-phi = phi { ptr, i32 } [ %i.gt, %.split ], [ %i.gf, %.split.us334 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %.body

.split336:                                        ; preds = %bb.aj
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.split336.us, %.split336
  %.us-phi337 = phi { ptr, i32 } [ %i.gu, %.split336 ], [ %i.gg, %.split336.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.body

bb.an:                                            ; preds = %bb.ak, %bb.ah
  %i.gv = add nsw i64 %.0325, %.sroa.speculated246 ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.go
  br i1 %i.gw, label %bb.ah, label %.loopexit, !llvm.loop !519

.body:                                            ; preds = %.split.us.split.us, %.split323.us.split.us, %.split320.us.split.us, %bb.am, %bb.al, %bb.p
  %.pn164.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %.us-phi, %bb.al ], [ %i.gi, %.split320.us.split.us ], [ %.us-phi337, %bb.am ], [ %i.gh, %.split.us.split.us ], [ %i.gj, %.split323.us.split.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %i.ag, label %bb.ao, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205

bb.ao:                                            ; preds = %.body
  call void @free(ptr noundef %i.ae) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205: ; preds = %.body, %bb.ao, %bb.ag, %bb.af
  %.pn164.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.af ], [ %i.gn, %bb.ag ], [ %.pn164.pn.pn.pn, %bb.ao ], [ %.pn164.pn.pn.pn, %.body ]
  br i1 %i.s, label %bb.ap, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit206

bb.ap:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205
  call void @free(ptr noundef %i.q) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit206

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit206: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205, %bb.ap
  resume { ptr, i32 } %.pn164.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS5_IdLi1ELin1ELi1ELi1ELin1EEEEEEENS4_ISC_EEEEvRKT_RKT0_RT1_RKNSO_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.475", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !534, !nonnull !59, !align !60 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !66, !nonnull !59, !align !60 ; 2 uses
  %i.c = load double, ptr %3, align 8, !tbaa !30
  %i.d = fneg double %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34   ; 4 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.j = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.f, 16385
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i64 %i.j, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #28 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.e
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.m, %bb.d ], [ %i.n, %bb.e ]
  %i.s = icmp samesign ugt i64 %i.f, 16384        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !61   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !50
  store ptr %i.x, ptr %4, align 8, !tbaa !401
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.w, ptr %i.y, align 8, !tbaa !403
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.r, ptr %5, align 8, !tbaa !273
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !275
  %i.aa = load ptr, ptr %2, align 8, !tbaa !536
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.u, i64 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.ab, i64 noundef 1, double noundef %i.d)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.s, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.q) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.s, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit15

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.q) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit15

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit15: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.ac
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZN5Eigen8internal11dot_nocheckINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEENS_7ProductIS3_NS2_IdLin1ELin1ELi0ELin1ELin1EEELi0EEELb0EE3runERKNS_10MatrixBaseIS3_EERKNS8_IS6_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Transpose.655", align 8 ; 4 uses
  %3 = alloca %"class.Eigen::Transpose.663", align 8 ; 4 uses
  %4 = alloca %"class.Eigen::Transpose.676", align 8 ; 4 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %5 = alloca %"class.Eigen::internal::redux_evaluator.705", align 8 ; 6 uses
  %.sroa.4.8.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.8.copyload = load ptr, ptr %.sroa.6.8..sroa_idx, align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.6.8.copyload, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEE3sumEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !36
  store ptr %i.f, ptr %i.e, align 8, !tbaa !79
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef 1, i64 noundef %i.c)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !36   ; 4 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !79
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %i.m = icmp slt i64 %i.l, 1
  br i1 %i.m, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEv.exit.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i: ; preds = %bb.d
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !30
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEv.exit.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEv.exit.i.i.i.i.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !30
  %i.n = load i64, ptr %i.b, align 8, !tbaa !72
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEv.exit.i.i.i.i.i
  %i.p = load ptr, ptr %.sroa.4.8.copyload, align 8, !tbaa !36, !noalias !538 ; 11 uses
  %i.q = load ptr, ptr %.sroa.6.8.copyload, align 8, !tbaa !50, !noalias !541 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.6.8.copyload, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !61, !noalias !541 ; 10 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = sdiv i64 %i.s, 4
  %i.v = shl nsw i64 %i.u, 2                      ; 4 uses
  %i.w = sdiv i64 %i.s, 2
  %i.x = shl nsw i64 %i.w, 1                      ; 6 uses
  %.off.i.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.s, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load <2 x double>, ptr %i.p, align 1, !tbaa !12
  %i.z = load <2 x double>, ptr %i.q, align 1, !tbaa !12
  %i.aa = fmul <2 x double> %i.y, %i.z            ; 3 uses
  %i.ab = icmp sgt i64 %i.s, 3
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ad = load <2 x double>, ptr %i.ac, align 1, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.af = load <2 x double>, ptr %i.ae, align 1, !tbaa !12
  %i.ag = fmul <2 x double> %i.ad, %i.af          ; 2 uses
  %i.ah = icmp samesign ugt i64 %i.s, 7
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h
  %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ag, %bb.h ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aa, %bb.h ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ai = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aj = icmp sgt i64 %i.x, %i.v
  br i1 %i.aj, label %bb.i, label %bb.j

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.h ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.h ]
  %.07278.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aa, %bb.h ]
  %.07577.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ag, %bb.h ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.05480.i.i.i.i.i.i.i.i.i.i.i.i
  %i.al = load <2 x double>, ptr %i.ak, align 1, !tbaa !12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.05480.i.i.i.i.i.i.i.i.i.i.i.i
  %i.an = load <2 x double>, ptr %i.am, align 1, !tbaa !12
  %i.ao = fmul <2 x double> %i.al, %i.an
  %i.ap = fadd <2 x double> %.07278.i.i.i.i.i.i.i.i.i.i.i.i, %i.ao ; 2 uses
  %i.aq = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.i.i.i.i.i, 6 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aq
  %i.as = load <2 x double>, ptr %i.ar, align 1, !tbaa !12
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aq
  %i.au = load <2 x double>, ptr %i.at, align 1, !tbaa !12
  %i.av = fmul <2 x double> %i.as, %i.au
  %i.aw = fadd <2 x double> %.07577.i.i.i.i.i.i.i.i.i.i.i.i, %i.av ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ax = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i.i, %i.v
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !544

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.v
  %i.az = load <2 x double>, ptr %i.ay, align 1, !tbaa !12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.bb = load <2 x double>, ptr %i.ba, align 1, !tbaa !12
  %i.bc = fmul <2 x double> %i.az, %i.bb
  %i.bd = fadd <2 x double> %i.ai, %i.bc
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.g
  %.274.i.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.aa, %bb.g ], [ %i.bd, %bb.i ], [ %i.ai, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i.i.i.i.i.i.i.i, %shift
  %i.be = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.bf = icmp slt i64 %i.x, %i.s
  br i1 %i.bf, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.j
  %i.bg = sub i64 %i.s, %i.x
  %xtraiter = and i64 %i.bg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bn, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.x, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi double [ %i.bm, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.be, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !30
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.q, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !30
  %i.bl = fmul double %i.bi, %i.bk
  %i.bm = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.bl ; 3 uses
  %i.bn = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !545

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa39.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.x, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bn, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi double [ %i.be, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.bo = sub i64 %i.x, %i.s
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.i
  %i.br = load double, ptr %i.bq, align 8, !tbaa !30
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.q, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !30
  %i.bu = fmul double %i.br, %i.bt
  %i.bv = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i.i, %i.bu
  %i.bw = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !30
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bw
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !30
  %i.cb = fmul double %i.by, %i.ca
  %i.cc = fadd double %i.bv, %i.cb
  %i.cd = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.cd
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !30
  %i.ci = fmul double %i.cf, %i.ch
  %i.cj = fadd double %i.cc, %i.ci
  %i.ck = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !30
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ck
  %i.co = load double, ptr %i.cn, align 8, !tbaa !30
  %i.cp = fmul double %i.cm, %i.co
  %i.cq = fadd double %i.cj, %i.cp                ; 2 uses
  %i.cr = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cr, %i.s
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !546

bb.k:                                             ; preds = %bb.f
  %i.cs = load double, ptr %i.p, align 8, !tbaa !30
  %i.ct = load double, ptr %i.q, align 8, !tbaa !30
  %i.cu = fmul double %i.cs, %i.ct
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.j, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.e ], [ %i.be, %bb.j ], [ %i.cu, %bb.k ], [ %.lcssa39.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cv = load double, ptr %i.j, align 8, !tbaa !30
  %i.cw = fadd double %.0.i.i.i.i.i.i.i.i.i.i, %i.cv
  store double %i.cw, ptr %i.j, align 8, !tbaa !30
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEENS0_10IndexBasedESD_ddE4DataC2ERKSC_.exit

bb.l:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE7setZeroEv.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.h, ptr %2, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %.sroa.6.8.copyload, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %.sroa.4.8.copyload, ptr %4, align 8
  invoke void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS5_IdLi1ELin1ELi1ELi1ELin1EEEEENS4_IS9_EEEEvRKT_RKT0_RT1_RKNSJ_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc.i.i.i.i unwind label %bb.m

.noexc.i.i.i.i:                                   ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load i64, ptr %i.b, align 8, !tbaa !72
  br label %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEENS0_10IndexBasedESD_ddE4DataC2ERKSC_.exit

bb.m:                                             ; preds = %bb.l
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.cx, %bb.m ]
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !36
  call void @free(ptr noundef %i.cy) #24
  resume { ptr, i32 } %eh.lpad-body.i

_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEENS0_10IndexBasedESD_ddE4DataC2ERKSC_.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i
  %i.cz = phi i64 [ 1, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEELi1ELin1ELb1EEEE3dotINS1_IKNS2_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i ], [ %.pre, %.noexc.i.i.i.i ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.da = sdiv i64 %i.cz, 4
  %i.db = shl nsw i64 %i.da, 2                    ; 4 uses
  %i.dc = sdiv i64 %i.cz, 2
  %i.dd = shl nsw i64 %i.dc, 1                    ; 6 uses
  %.off.i.i.i = add i64 %i.cz, 1
  %.not.i.i.i = icmp ult i64 %.off.i.i.i, 3
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !83  ; 11 uses
  br i1 %.not.i.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEENS0_10IndexBasedESD_ddE4DataC2ERKSC_.exit
  %i.df = load <2 x double>, ptr %i.de, align 16, !tbaa !12
  %i.dg = load ptr, ptr %i.g, align 8, !tbaa !83  ; 10 uses
  %i.dh = load <2 x double>, ptr %i.dg, align 16, !tbaa !12
  %i.di = fmul <2 x double> %i.df, %i.dh          ; 3 uses
  %i.dj = icmp sgt i64 %i.cz, 3
  br i1 %i.dj, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dl = load <2 x double>, ptr %i.dk, align 16, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dn = load <2 x double>, ptr %i.dm, align 16, !tbaa !12
  %i.do = fmul <2 x double> %i.dl, %i.dn          ; 2 uses
  %i.dp = icmp samesign ugt i64 %i.cz, 7
  br i1 %i.dp, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.o
  %.075.lcssa.i.i.i = phi <2 x double> [ %i.do, %bb.o ], [ %i.ee, %.lr.ph.i.i.i ]
  %.072.lcssa.i.i.i = phi <2 x double> [ %i.di, %bb.o ], [ %i.dx, %.lr.ph.i.i.i ]
  %i.dq = fadd <2 x double> %.075.lcssa.i.i.i, %.072.lcssa.i.i.i ; 2 uses
  %i.dr = icmp sgt i64 %i.dd, %i.db
  br i1 %i.dr, label %bb.p, label %bb.q

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.i.i
  %.05480.i.i.i = phi i64 [ %.054.i.i.i, %.lr.ph.i.i.i ], [ 4, %bb.o ] ; 4 uses
  %.054.in79.i.i.i = phi i64 [ %.05480.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.o ]
  %.07278.i.i.i = phi <2 x double> [ %i.dx, %.lr.ph.i.i.i ], [ %i.di, %bb.o ]
  %.07577.i.i.i = phi <2 x double> [ %i.ee, %.lr.ph.i.i.i ], [ %i.do, %bb.o ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.05480.i.i.i
  %i.dt = load <2 x double>, ptr %i.ds, align 16, !tbaa !12
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.05480.i.i.i
  %i.dv = load <2 x double>, ptr %i.du, align 16, !tbaa !12
  %i.dw = fmul <2 x double> %i.dt, %i.dv
  %i.dx = fadd <2 x double> %.07278.i.i.i, %i.dw  ; 2 uses
  %i.dy = add nuw nsw i64 %.054.in79.i.i.i, 6     ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dy
  %i.ea = load <2 x double>, ptr %i.dz, align 16, !tbaa !12
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dy
  %i.ec = load <2 x double>, ptr %i.eb, align 16, !tbaa !12
  %i.ed = fmul <2 x double> %i.ea, %i.ec
  %i.ee = fadd <2 x double> %.07577.i.i.i, %i.ed  ; 2 uses
  %.054.i.i.i = add nuw nsw i64 %.05480.i.i.i, 4  ; 2 uses
  %i.ef = icmp slt i64 %.054.i.i.i, %i.db
  br i1 %i.ef, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !547

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.db
  %i.eh = load <2 x double>, ptr %i.eg, align 16, !tbaa !12
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.db
  %i.ej = load <2 x double>, ptr %i.ei, align 16, !tbaa !12
  %i.ek = fmul <2 x double> %i.eh, %i.ej
  %i.el = fadd <2 x double> %i.dq, %i.ek
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i, %bb.n
  %.274.i.i.i = phi <2 x double> [ %i.di, %bb.n ], [ %i.el, %bb.p ], [ %i.dq, %._crit_edge.i.i.i ] ; 2 uses
  %shift34 = shufflevector <2 x double> %.274.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop35 = fadd <2 x double> %.274.i.i.i, %shift34
  %i.em = extractelement <2 x double> %foldExtExtBinop35, i64 0 ; 3 uses
  %i.en = icmp slt i64 %i.dd, %i.cz
  br i1 %i.en, label %.lr.ph85.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i

.lr.ph85.i.i.i.preheader:                         ; preds = %bb.q
  %i.eo = sub i64 %i.cz, %i.dd
  %xtraiter42 = and i64 %i.eo, 3                  ; 2 uses
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %.lr.ph85.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.prol

.lr.ph85.i.i.i.prol:                              ; preds = %.lr.ph85.i.i.i.preheader, %.lr.ph85.i.i.i.prol
  %.05283.i.i.i.prol = phi i64 [ %i.ev, %.lr.ph85.i.i.i.prol ], [ %i.dd, %.lr.ph85.i.i.i.preheader ] ; 3 uses
  %.182.i.i.i.prol = phi double [ %i.eu, %.lr.ph85.i.i.i.prol ], [ %i.em, %.lr.ph85.i.i.i.preheader ]
  %prol.iter44 = phi i64 [ %prol.iter44.next, %.lr.ph85.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.preheader ]
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.05283.i.i.i.prol
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %.05283.i.i.i.prol
  %i.er = load double, ptr %i.ep, align 8, !tbaa !30
  %i.es = load double, ptr %i.eq, align 8, !tbaa !30
  %i.et = fmul double %i.er, %i.es
  %i.eu = fadd double %.182.i.i.i.prol, %i.et     ; 3 uses
  %i.ev = add nsw i64 %.05283.i.i.i.prol, 1       ; 2 uses
  %prol.iter44.next = add i64 %prol.iter44, 1     ; 2 uses
  %prol.iter44.cmp.not = icmp eq i64 %prol.iter44.next, %xtraiter42
  br i1 %prol.iter44.cmp.not, label %.lr.ph85.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.prol, !llvm.loop !548

.lr.ph85.i.i.i.prol.loopexit:                     ; preds = %.lr.ph85.i.i.i.prol, %.lr.ph85.i.i.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph85.i.i.i.preheader ], [ %i.eu, %.lr.ph85.i.i.i.prol ]
  %.05283.i.i.i.unr = phi i64 [ %i.dd, %.lr.ph85.i.i.i.preheader ], [ %i.ev, %.lr.ph85.i.i.i.prol ]
  %.182.i.i.i.unr = phi double [ %i.em, %.lr.ph85.i.i.i.preheader ], [ %i.eu, %.lr.ph85.i.i.i.prol ]
  %i.ew = sub i64 %i.dd, %i.cz
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i, label %.lr.ph85.i.i.i

.lr.ph85.i.i.i:                                   ; preds = %.lr.ph85.i.i.i.prol.loopexit, %.lr.ph85.i.i.i
  %.05283.i.i.i = phi i64 [ %i.fz, %.lr.ph85.i.i.i ], [ %.05283.i.i.i.unr, %.lr.ph85.i.i.i.prol.loopexit ] ; 6 uses
  %.182.i.i.i = phi double [ %i.fy, %.lr.ph85.i.i.i ], [ %.182.i.i.i.unr, %.lr.ph85.i.i.i.prol.loopexit ]
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.de, i64 %.05283.i.i.i
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %.05283.i.i.i
  %i.fa = load double, ptr %i.ey, align 8, !tbaa !30
  %i.fb = load double, ptr %i.ez, align 8, !tbaa !30
  %i.fc = fmul double %i.fa, %i.fb
  %i.fd = fadd double %.182.i.i.i, %i.fc
  %i.fe = add nsw i64 %.05283.i.i.i, 1            ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.fe
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.fe
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !30
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !30
  %i.fj = fmul double %i.fh, %i.fi
  %i.fk = fadd double %i.fd, %i.fj
  %i.fl = add nsw i64 %.05283.i.i.i, 2            ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.fl
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.fl
  %i.fo = load double, ptr %i.fm, align 8, !tbaa !30
  %i.fp = load double, ptr %i.fn, align 8, !tbaa !30
  %i.fq = fmul double %i.fo, %i.fp
  %i.fr = fadd double %i.fk, %i.fq
  %i.fs = add nsw i64 %.05283.i.i.i, 3            ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.fs
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.fs
  %i.fv = load double, ptr %i.ft, align 8, !tbaa !30
  %i.fw = load double, ptr %i.fu, align 8, !tbaa !30
  %i.fx = fmul double %i.fv, %i.fw
  %i.fy = fadd double %i.fr, %i.fx                ; 2 uses
  %i.fz = add nsw i64 %.05283.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fz, %i.cz
  br i1 %exitcond.not.i.i.i.3, label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i, label %.lr.ph85.i.i.i, !llvm.loop !549

bb.r:                                             ; preds = %_ZN5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEENS0_10IndexBasedESD_ddE4DataC2ERKSC_.exit
  %i.ga = load ptr, ptr %i.g, align 8, !tbaa !83
  %i.gb = load double, ptr %i.de, align 8, !tbaa !30
  %i.gc = load double, ptr %i.ga, align 8, !tbaa !30
  %i.gd = fmul double %i.gb, %i.gc
  br label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i: ; preds = %.lr.ph85.i.i.i.prol.loopexit, %.lr.ph85.i.i.i, %bb.r, %bb.q
  %.3.i.i.i = phi double [ %i.em, %bb.q ], [ %i.gd, %bb.r ], [ %.lcssa.unr, %.lr.ph85.i.i.i.prol.loopexit ], [ %i.fy, %.lr.ph85.i.i.i ]
  %i.ge = load ptr, ptr %i.h, align 8, !tbaa !36
  call void @free(ptr noundef %i.ge) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEE3sumEv.exit

_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEE3sumEv.exit: ; preds = %bb.a, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i
  %.0.i = phi double [ %.3.i.i.i, %_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal22scalar_conj_product_opIddEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEKNS_7ProductIS6_NS5_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEE5reduxINS2_13scalar_sum_opIddEEEEdRKT_.exit.i ], [ 0.000000e+00, %bb.a ]
  ret double %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS5_IdLi1ELin1ELi1ELi1ELin1EEEEENS4_IS9_EEEEvRKT_RKT0_RT1_RKNSJ_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.475", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !534, !nonnull !59, !align !60 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !550, !nonnull !59, !align !60 ; 2 uses
  %i.c = load double, ptr %3, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 4 uses
  %i.f = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.f, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.i = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.j = icmp samesign ult i64 %i.e, 16385
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i64 %i.i, 15
  %i.l = alloca i8, i64 %i.k, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.i) #28 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.e
  %i.p = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.r = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !61   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !50
  store ptr %i.w, ptr %4, align 8, !tbaa !401
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.v, ptr %i.x, align 8, !tbaa !403
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %i.q, ptr %5, align 8, !tbaa !273
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.y, align 8, !tbaa !275
  %i.z = load ptr, ptr %2, align 8, !tbaa !536
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.aa, i64 noundef 1, double noundef %i.c)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.r, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.p) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.r, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit15

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.p) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit15

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit15: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iEZN3igl37qslim_optimal_collapse_edge_callbacksERS5_RSE_ISC_IJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISQ_EERiSU_RSt8functionIFviS4_S7_S7_SA_S7_S7_RdRSP_EERSV_ISM_ERSV_IFvS4_S7_S7_SA_S7_S7_SL_SA_S4_iiiiibEEE3$_1E9_M_invokeERKSt9_Any_dataS4_S7_S7_SA_S7_S7_SL_SA_S4_Oi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5, ptr nofree nonnull readnone align 8 captures(none) %6, ptr nofree nonnull readnone align 8 captures(none) %7, ptr nofree nonnull readnone align 8 captures(none) %8, ptr nofree nonnull readnone align 8 captures(none) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10) #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !552
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val11 = load ptr, ptr %i.a, align 8, !tbaa !554
  %.val12 = load ptr, ptr %3, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val13 = load i64, ptr %i.b, align 8, !tbaa !23
  %.val14 = load i32, ptr %10, align 4, !tbaa !19
  %i.c = sext i32 %.val14 to i64
  %i.d = getelementptr [4 x i8], ptr %.val12, i64 %i.c ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  store i32 %i.e, ptr %.val, align 4, !tbaa !19
  %i.f = getelementptr [4 x i8], ptr %i.d, i64 %.val13
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19
  store i32 %i.g, ptr %.val11, align 4, !tbaa !19
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iEZN3igl37qslim_optimal_collapse_edge_callbacksERS5_RSE_ISC_IJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISQ_EERiSU_RSt8functionIFviS4_S7_S7_SA_S7_S7_RdRSP_EERSV_ISM_ERSV_IFvS4_S7_S7_SA_S7_S7_SL_SA_S4_iiiiibEEE3$_1E10_M_managerERSt9_Any_dataRKS18_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_1E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS1_IdLin1ELin1ELi0ELin1ELin1EEENS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaIS8_EERiSC_RSt8functionIFviRKS6_RKS2_SH_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEESH_SH_RdRS7_EERSD_IFbSF_SH_SH_SK_SH_SH_RKSt14priority_queueIS5_IJdiiEES4_ISR_SaISR_EESt7greaterISR_EESK_SF_iEERSD_IFvSF_SH_SH_SK_SH_SH_SY_SK_SF_iiiiibEEE3$_1", ptr %0, align 8, !tbaa !52
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_1E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !14
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_1E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !555
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_1E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_1E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iiiiibEZN3igl37qslim_optimal_collapse_edge_callbacksERS5_RSE_ISC_IJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISQ_EERiSU_RSt8functionIFviS4_S7_S7_SA_S7_S7_RdRSP_EERSV_IFbS4_S7_S7_SA_S7_S7_SL_SA_S4_iEERSV_ISM_EE3$_2E9_M_invokeERKSt9_Any_dataS4_S7_S7_SA_S7_S7_SL_SA_S4_OiS1B_S1B_S1B_S1B_Ob"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr nofree nonnull readnone align 8 captures(none) %5, ptr nofree nonnull readnone align 8 captures(none) %6, ptr nofree nonnull readnone align 8 captures(none) %7, ptr nofree nonnull readnone align 8 captures(none) %8, ptr nofree nonnull readnone align 8 captures(none) %9, ptr nofree nonnull readonly align 4 captures(none) %10, ptr nofree nonnull readonly align 4 captures(none) %11, ptr nofree nonnull readonly align 4 captures(none) %12, ptr nofree nonnull readonly align 4 captures(none) %13, ptr nofree nonnull readonly align 4 captures(none) %14, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %15) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %16 = alloca %"class.std::tuple", align 8       ; 9 uses
  %.val21 = load i8, ptr %15, align 1, !tbaa !556, !range !557, !noundef !59
  %i.a = trunc nuw i8 %.val21 to i1
  br i1 %i.a, label %bb.b, label %"_ZSt10__invoke_rIvRZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEESaIS9_EERiSD_RSt8functionIFviRKS7_RKS3_SI_RKNS2_IiLin1ELi1ELi0ELin1ELi1EEESI_SI_RdRS8_EERSE_IFbSG_SI_SI_SL_SI_SI_RKSt14priority_queueIS6_IJdiiEES5_ISS_SaISS_EESt7greaterISS_EESL_SG_iEERSE_IFvSG_SI_SI_SL_SI_SI_SZ_SL_SG_iiiiibEEE3$_2JSG_SI_SI_SL_SI_SI_SZ_SL_SG_iiiiibEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES19_E4typeEOS1A_DpOS1B_.exit"

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !14    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !558, !nonnull !59, !align !60
  %i.d = load ptr, ptr %.val, align 8, !tbaa !560, !nonnull !59, !align !561
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = sext i32 %i.e to i64
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !562, !nonnull !59, !align !561
  %i.k = load i32, ptr %i.j, align 4, !tbaa !19
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %i.l
  call void @_ZN3iglplERKSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !558, !nonnull !59, !align !60
  %i.o = load ptr, ptr %.val, align 8, !tbaa !560, !nonnull !59, !align !561
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !562, !nonnull !59, !align !561
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19
  %..i.i.i = call i32 @llvm.smin.i32(i32 %i.p, i32 %i.r)
  %i.s = sext i32 %..i.i.i to i64
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %i.s ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !27
  store ptr %i.y, ptr %i.w, align 8, !tbaa !27
  store ptr %i.x, ptr %i.v, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !29
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !29
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !29
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !29
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !29
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !27
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !27
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !27
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8, !tbaa !29
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !29
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !29
  store i64 %i.an, ptr %i.am, align 8, !tbaa !29
  %i.ap = load double, ptr %16, align 8, !tbaa !30
  store double %i.ap, ptr %i.u, align 8, !tbaa !30
  %i.aq = load ptr, ptr %i.v, align 8, !tbaa !50
  call void @free(ptr noundef %i.aq) #24
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !36
  call void @free(ptr noundef %i.ar) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %"_ZSt10__invoke_rIvRZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEESaIS9_EERiSD_RSt8functionIFviRKS7_RKS3_SI_RKNS2_IiLin1ELi1ELi0ELin1ELi1EEESI_SI_RdRS8_EERSE_IFbSG_SI_SI_SL_SI_SI_RKSt14priority_queueIS6_IJdiiEES5_ISS_SaISS_EESt7greaterISS_EESL_SG_iEERSE_IFvSG_SI_SI_SL_SI_SI_SZ_SL_SG_iiiiibEEE3$_2JSG_SI_SI_SL_SI_SI_SZ_SL_SG_iiiiibEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES19_E4typeEOS1A_DpOS1B_.exit"

"_ZSt10__invoke_rIvRZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEESaIS9_EERiSD_RSt8functionIFviRKS7_RKS3_SI_RKNS2_IiLin1ELi1ELi0ELin1ELi1EEESI_SI_RdRS8_EERSE_IFbSG_SI_SI_SL_SI_SI_RKSt14priority_queueIS6_IJdiiEES5_ISS_SaISS_EESt7greaterISS_EESL_SG_iEERSE_IFvSG_SI_SI_SL_SI_SI_SZ_SL_SG_iiiiibEEE3$_2JSG_SI_SI_SL_SI_SI_SZ_SL_SG_iiiiibEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES19_E4typeEOS1A_DpOS1B_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS1_IiLin1ELin1ELi0ELin1ELin1EEES7_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEES7_S7_RKSt14priority_queueISt5tupleIJdiiEESt6vectorISD_SaISD_EESt7greaterISD_EESA_S4_iiiiibEZN3igl37qslim_optimal_collapse_edge_callbacksERS5_RSE_ISC_IJS2_NS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISQ_EERiSU_RSt8functionIFviS4_S7_S7_SA_S7_S7_RdRSP_EERSV_IFbS4_S7_S7_SA_S7_S7_SL_SA_S4_iEERSV_ISM_EE3$_2E10_M_managerERSt9_Any_dataRKS18_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_2E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS1_IdLin1ELin1ELi0ELin1ELin1EEENS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaIS8_EERiSC_RSt8functionIFviRKS6_RKS2_SH_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEESH_SH_RdRS7_EERSD_IFbSF_SH_SH_SK_SH_SH_RKSt14priority_queueIS5_IJdiiEES4_ISR_SaISR_EESt7greaterISR_EESK_SF_iEERSD_IFvSF_SH_SH_SK_SH_SH_SY_SK_SF_iiiiibEEE3$_2", ptr %0, align 8, !tbaa !52
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_2E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !14
  store ptr %.val, ptr %0, align 8, !tbaa !14
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_2E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !563
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_2E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !14 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_2E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #29
  br label %"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_2E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS3_IdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi1ELin1ELi1ELi1ELin1EEEdEESaISA_EERiSE_RSt8functionIFviRKS8_RKS4_SJ_RKNS3_IiLin1ELi1ELi0ELin1ELi1EEESJ_SJ_RdRS9_EERSF_IFbSH_SJ_SJ_SM_SJ_SJ_RKSt14priority_queueIS7_IJdiiEES6_IST_SaIST_EESt7greaterIST_EESM_SH_iEERSF_IFvSH_SJ_SJ_SM_SJ_SJ_S10_SM_SH_iiiiibEEE3$_2E10_M_managerERSt9_Any_dataRKS19_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #21

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSSt6vectorISt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEESaIS5_EE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{i64 0, i64 16, !12}
!14 = !{!11, !11, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!18, !10, i64 0}
!18 = !{!"_ZTSZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS1_IdLin1ELin1ELi0ELin1ELin1EEENS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaIS8_EERiSC_RSt8functionIFviRKS6_RKS2_SH_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEESH_SH_RdRS7_EERSD_IFbSF_SH_SH_SK_SH_SH_RKSt14priority_queueIS5_IJdiiEES4_ISR_SaISR_EESt7greaterISR_EESK_SF_iEERSD_IFvSF_SH_SH_SK_SH_SH_SY_SK_SF_iiiiibEEE3$_0", !10, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!21, !16, i64 0}
!21 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !16, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"long", !7, i64 0}
!23 = !{!21, !22, i64 8}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseISt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELin1ELi1ELi1ELin1EEEdEESaIS5_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!26 = !{!"p1 _ZTSSt5tupleIJN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IdLi1ELin1ELi1ELi1ELin1EEEdEE", !11, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 double", !11, i64 0}
!29 = !{!22, !22, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"double", !7, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !22, i64 8}
!35 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EEE", !28, i64 0, !22, i64 8}
!36 = !{!35, !28, i64 0}
!37 = distinct !{!37, !33, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !33, !39, !38}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTSN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEE", !11, i64 0}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNK5Eigen10MatrixBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEmlINS_7InverseINS5_IdLin1ELin1ELi0ELin1ELin1EEEEEEEKNS_7ProductIS8_T_Li0EEERKNS0_ISF_EE: argument 0"}
!45 = distinct !{!45, !"_ZNK5Eigen10MatrixBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEmlINS_7InverseINS5_IdLin1ELin1ELi0ELin1ELin1EEEEEEEKNS_7ProductIS8_T_Li0EEERKNS0_ISF_EE"}
!46 = distinct !{!46, !33}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !{!49, !33}
!50 = !{!51, !28, i64 0}
!51 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !28, i64 0, !22, i64 8, !22, i64 16}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTSSt9type_info", !11, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"vtable pointer", !8, i64 0}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSN5Eigen7InverseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !58, i64 0}
!58 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !11, i64 0}
!59 = !{}
!60 = !{i64 8}
!61 = !{!51, !22, i64 8}
!62 = distinct !{!62, !33, !38, !39}
!63 = distinct !{!63, !48}
!64 = distinct !{!64, !33, !38}
!65 = distinct !{!65, !33}
!66 = !{!67, !42, i64 0}
!67 = !{!"_ZTSN5Eigen12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEE", !42, i64 0, !68, i64 8}
!68 = !{!"_ZTSN5Eigen8internal18scalar_opposite_opIdEE"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEE3rowEl: argument 0"}
!71 = distinct !{!71, !"_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEE3rowEl"}
!72 = !{!51, !22, i64 16}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK5Eigen9DenseBaseINS_7InverseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl: argument 0"}
!75 = distinct !{!75, !"_ZNK5Eigen9DenseBaseINS_7InverseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEE3colEl"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_5BlockIKNS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEELi1ELin1ELb1EEEEEE10binaryExprINS4_22scalar_conj_product_opIddEENS2_IKNS_7InverseINS7_IdLin1ELin1ELi0ELin1ELin1EEEEELin1ELi1ELb1EEEEEKNS_13CwiseBinaryOpIT_KSE_KT0_EERKNS0_ISR_EERKSP_: argument 0"}
!78 = distinct !{!78, !"_ZNK5Eigen10MatrixBaseINS_9TransposeIKNS_5BlockIKNS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEELi1ELin1ELb1EEEEEE10binaryExprINS4_22scalar_conj_product_opIddEENS2_IKNS_7InverseINS7_IdLin1ELin1ELi0ELin1ELin1EEEEELin1ELi1ELb1EEEEEKNS_13CwiseBinaryOpIT_KSE_KT0_EERKNS0_ISR_EERKSP_"}
!79 = !{!80, !28, i64 0}
!80 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIdLi0EEE", !28, i64 0}
!81 = !{!82, !22, i64 0}
!82 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !22, i64 0}
!83 = !{!84, !28, i64 0}
!84 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEE", !80, i64 0}
!85 = !{!86, !28, i64 0}
!86 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEEE", !87, i64 0}
!87 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIdLin1EEE", !28, i64 0, !22, i64 8}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !48}
!90 = distinct !{!90, !33}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEE9transposeEv: argument 0"}
!93 = distinct !{!93, !"_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEE9transposeEv"}
!94 = !{!87, !28, i64 0}
!95 = !{!87, !22, i64 8}
!96 = !{!97, !99}
!97 = distinct !{!97, !98, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal18scalar_identity_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_: argument 0"}
!98 = distinct !{!98, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11NullaryExprINS_8internal18scalar_identity_opIdEEEEKNS_14CwiseNullaryOpIT_S2_EEllRKS9_"}
!99 = distinct !{!99, !100, !"_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8IdentityEll: argument 0"}
!100 = distinct !{!100, !"_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8IdentityEll"}
!101 = !{!102, !16, i64 0}
!102 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !16, i64 0, !22, i64 8}
!103 = !{!102, !22, i64 8}
!104 = !{!105, !31, i64 56}
!105 = !{!"_ZTSN5Eigen12PartialPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !106, i64 0, !108, i64 24, !111, i64 40, !31, i64 56, !7, i64 64, !112, i64 65}
!106 = !{!"_ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !107, i64 0}
!107 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !51, i64 0}
!108 = !{!"_ZTSN5Eigen17PermutationMatrixILin1ELin1EiEE", !109, i64 0}
!109 = !{!"_ZTSN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEE", !110, i64 0}
!110 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEE", !102, i64 0}
!111 = !{!"_ZTSN5Eigen14TranspositionsILin1ELin1EiEE", !109, i64 0}
!112 = !{!"bool", !7, i64 0}
!113 = !{!105, !7, i64 64}
!114 = !{!105, !112, i64 65}
!115 = distinct !{!115, !33, !38, !39}
!116 = distinct !{!116, !48}
!117 = distinct !{!117, !33, !38}
!118 = distinct !{!118, !33}
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f64
!294 = !{i64 2155229052}
!295 = !{i64 2155229881}
!296 = !{i64 2155229935}
!297 = !{i64 2155229998}
!298 = !{i64 2155230827}
!299 = !{i64 2155230881}
!300 = !{i64 2155230944}
!301 = !{i64 2155231773}
!302 = !{i64 2155231827}
!303 = !{i64 2155231890}
!304 = !{i64 2155232719}
!305 = !{i64 2155232773}
!306 = !{i64 2155232836}
!307 = !{i64 2155233665}
!308 = !{i64 2155233719}
!309 = !{i64 2155233782}
!310 = !{i64 2155234611}
!311 = !{i64 2155234665}
!312 = !{i64 2155234728}
!313 = !{i64 2155234780}
!314 = distinct !{!314, !33}
!315 = !{i64 2155235601}
!316 = !{i64 2155235655}
!317 = !{i64 2155235718}
!318 = distinct !{!318, !33}
!319 = distinct !{!319, !33}
!320 = distinct !{!320, !33}
!321 = distinct !{!321, !33}
!322 = !{i64 2155215601}
!323 = !{i64 2155216872}
!324 = !{i64 2155216926}
!325 = !{i64 2155218140}
!326 = !{i64 2155218194}
!327 = !{i64 2155219408}
!328 = !{i64 2155219462}
!329 = !{i64 2155220676}
!330 = !{i64 2155220730}
!331 = !{i64 2155221944}
!332 = !{i64 2155221998}
!333 = !{i64 2155223212}
!334 = !{i64 2155223266}
!335 = !{i64 2155224480}
!336 = !{i64 2155224534}
!337 = !{i64 2155225748}
!338 = !{i64 2155225802}
!339 = !{i64 2155225854}
!340 = distinct !{!340, !33}
!341 = distinct !{!341, !33}
!342 = !{i64 2155227060}
!343 = !{i64 2155227114}
!344 = distinct !{!344, !33}
!345 = distinct !{!345, !33}
!346 = distinct !{!346, !33}
!347 = distinct !{!347, !48}
!348 = distinct !{!348, !33}
!349 = !{i64 2155175830}
!350 = !{i64 2155175593}
!351 = !{i64 2155175646}
!352 = !{i64 2155175772}
!353 = !{i64 2155175888}
!354 = distinct !{!354, !33}
!355 = distinct !{!355, !33}
!356 = distinct !{!356, !33}
!357 = distinct !{!357, !33}
!358 = !{i64 2155175944}
!359 = !{i64 2155176503}
!360 = !{i64 2155176569}
!361 = !{i64 2155176632}
!362 = !{i64 2155177197}
!363 = !{i64 2155177263}
!364 = !{i64 2155177326}
!365 = !{i64 2155177891}
!366 = !{i64 2155177957}
!367 = !{i64 2155178020}
!368 = !{i64 2155178585}
!369 = !{i64 2155178651}
!370 = !{i64 2155178714}
!371 = !{i64 2155179279}
!372 = !{i64 2155179345}
!373 = !{i64 2155179408}
!374 = !{i64 2155179973}
!375 = !{i64 2155180039}
!376 = !{i64 2155180102}
!377 = !{i64 2155180667}
!378 = !{i64 2155180733}
!379 = !{i64 2155180796}
!380 = !{i64 2155181361}
!381 = !{i64 2155181427}
!382 = !{i64 2155181490}
!383 = !{i64 2155181554}
!384 = distinct !{!384, !33}
!385 = distinct !{!385, !33}
!386 = !{i64 2155182111}
!387 = !{i64 2155182177}
!388 = !{i64 2155182240}
!389 = distinct !{!389, !33}
!390 = !{!391}
!391 = distinct !{!391, !392, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!392 = distinct !{!392, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!393 = !{!394}
!394 = distinct !{!394, !395, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!395 = distinct !{!395, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!396 = !{!397}
!397 = distinct !{!397, !398, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!398 = distinct !{!398, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!399 = distinct !{!399, !33}
!400 = distinct !{!400, !48}
!401 = !{!402, !28, i64 0}
!402 = !{!"_ZTSN5Eigen8internal16blas_data_mapperIKdlLi1ELi0ELi1EEE", !28, i64 0, !22, i64 8}
!403 = !{!402, !22, i64 8}
!404 = !{!405}
!405 = distinct !{!405, !406, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!406 = distinct !{!406, !"_ZN5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!407 = !{!408}
!408 = distinct !{!408, !409, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!409 = distinct !{!409, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!410 = !{!411}
!411 = distinct !{!411, !412, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!412 = distinct !{!412, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!413 = distinct !{!413, !33}
!414 = distinct !{!414, !48}
!415 = !{!416, !22, i64 40}
!416 = !{!"_ZTSN5Eigen8internal19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEE", !216, i64 0, !22, i64 40, !22, i64 48}
!417 = !{!416, !22, i64 48}
!418 = !{!419, !142, i64 24}
!419 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS2_INS_7ProductIS8_S8_Li1EEEEENS0_13sub_assign_opIddEELi1EEE", !150, i64 0, !152, i64 8, !154, i64 16, !142, i64 24}
!420 = !{!147, !142, i64 0}
!421 = !{!422}
!422 = distinct !{!422, !423, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!423 = distinct !{!423, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!424 = !{!147, !142, i64 8}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!427 = distinct !{!427, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!428 = distinct !{!428, !33}
!429 = distinct !{!429, !48}
!430 = distinct !{!430, !33}
!431 = distinct !{!431, !33}
!432 = !{!433}
!433 = distinct !{!433, !434}
!434 = distinct !{!434, !"LVerDomain"}
!435 = !{!436}
!436 = distinct !{!436, !434}
!437 = !{!438}
!438 = distinct !{!438, !434}
!439 = !{!436, !433}
!440 = distinct !{!440, !33, !38, !39}
!441 = distinct !{!441, !33, !38}
!442 = !{!419, !150, i64 0}
!443 = !{!419, !152, i64 8}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!446 = distinct !{!446, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!449 = distinct !{!449, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!450 = distinct !{!450, !48}
!451 = !{!452}
!452 = distinct !{!452, !453, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!453 = distinct !{!453, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!454 = !{!455}
!455 = distinct !{!455, !456, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!456 = distinct !{!456, !"_ZNK5Eigen9DenseBaseINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!457 = distinct !{!457, !33}
!458 = distinct !{!458, !33}
!459 = distinct !{!459, !33}
!460 = distinct !{!460, !48}
!461 = distinct !{!461, !33}
!462 = distinct !{!462, !33}
!463 = distinct !{!463, !33}
!464 = distinct !{!464, !33}
!465 = distinct !{!465, !33}
!466 = distinct !{!466, !33}
!467 = distinct !{!467, !33}
!468 = distinct !{!468, !33}
!469 = distinct !{!469, !33}
!470 = distinct !{!470, !33}
!471 = !{!472, !142, i64 0}
!472 = !{!"_ZTSN5Eigen9TransposeIKNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEE", !142, i64 0}
!473 = distinct !{!473, !33, !38, !39}
!474 = distinct !{!474, !48}
!475 = distinct !{!475, !33, !38}
!476 = !{!477, !28, i64 0}
!477 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEELi0EEE", !28, i64 0, !145, i64 8, !82, i64 16}
!478 = distinct !{!478, !33}
!479 = distinct !{!479, !33}
!480 = distinct !{!480, !33}
!481 = distinct !{!481, !33}
!482 = distinct !{!482, !33}
!483 = distinct !{!483, !33}
!484 = distinct !{!484, !33}
!485 = distinct !{!485, !33}
!486 = distinct !{!486, !33}
!487 = distinct !{!487, !33}
!488 = distinct !{!488, !48}
!489 = distinct !{!489, !48}
!490 = distinct !{!490, !33}
!491 = distinct !{!491, !33}
!492 = distinct !{!492, !33}
!493 = distinct !{!493, !33}
!494 = distinct !{!494, !33}
!495 = !{!496}
!496 = distinct !{!496, !497}
!497 = distinct !{!497, !"LVerDomain"}
!498 = !{!499}
!499 = distinct !{!499, !497}
!500 = !{!501}
!501 = distinct !{!501, !497}
!502 = !{!503}
!503 = distinct !{!503, !497}
!504 = !{!505}
!505 = distinct !{!505, !497}
!506 = !{!503, !501, !499, !496}
!507 = distinct !{!507, !33, !38, !39}
!508 = distinct !{!508, !33, !38}
!509 = distinct !{!509, !33}
!510 = distinct !{!510, !33, !38, !39}
!511 = distinct !{!511, !48}
!512 = distinct !{!512, !33}
!513 = distinct !{!513, !33, !38}
!514 = distinct !{!514, !33, !38, !39}
!515 = distinct !{!515, !33, !39, !38}
!516 = distinct !{!516, !33, !38, !39}
!517 = distinct !{!517, !33, !38}
!518 = distinct !{!518, !33}
!519 = distinct !{!519, !33}
!520 = distinct !{!520, !33}
!521 = distinct !{!521, !33, !38, !39}
!522 = distinct !{!522, !33, !38}
!523 = distinct !{!523, !33}
!524 = distinct !{!524, !33}
!525 = !{!526}
!526 = distinct !{!526, !527}
!527 = distinct !{!527, !"LVerDomain"}
!528 = !{!529}
!529 = distinct !{!529, !527}
!530 = distinct !{!530, !33, !38, !39}
!531 = distinct !{!531, !33, !38}
!532 = distinct !{!532, !33}
!533 = distinct !{!533, !33}
!534 = !{!535, !58, i64 0}
!535 = !{!"_ZTSN5Eigen9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !58, i64 0}
!536 = !{!537, !42, i64 0}
!537 = !{!"_ZTSN5Eigen9TransposeINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEE", !42, i64 0}
!538 = !{!539}
!539 = distinct !{!539, !540, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3rowEl: argument 0"}
!540 = distinct !{!540, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE3rowEl"}
!541 = !{!542}
!542 = distinct !{!542, !543, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!543 = distinct !{!543, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!544 = distinct !{!544, !33}
!545 = distinct !{!545, !48}
!546 = distinct !{!546, !33}
!547 = distinct !{!547, !33}
!548 = distinct !{!548, !48}
!549 = distinct !{!549, !33}
!550 = !{!551, !42, i64 0}
!551 = !{!"_ZTSN5Eigen9TransposeIKNS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEE", !42, i64 0}
!552 = !{!553, !16, i64 0}
!553 = !{!"_ZTSZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS1_IdLin1ELin1ELi0ELin1ELin1EEENS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaIS8_EERiSC_RSt8functionIFviRKS6_RKS2_SH_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEESH_SH_RdRS7_EERSD_IFbSF_SH_SH_SK_SH_SH_RKSt14priority_queueIS5_IJdiiEES4_ISR_SaISR_EESt7greaterISR_EESK_SF_iEERSD_IFvSF_SH_SH_SK_SH_SH_SY_SK_SF_iiiiibEEE3$_1", !16, i64 0, !16, i64 8}
!554 = !{!553, !16, i64 8}
!555 = !{i64 0, i64 8, !15, i64 8, i64 8, !15}
!556 = !{!112, !112, i64 0}
!557 = !{i8 0, i8 2}
!558 = !{!559, !10, i64 16}
!559 = !{!"_ZTSZN3igl37qslim_optimal_collapse_edge_callbacksERN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEERSt6vectorISt5tupleIJNS1_IdLin1ELin1ELi0ELin1ELin1EEENS1_IdLi1ELin1ELi1ELi1ELin1EEEdEESaIS8_EERiSC_RSt8functionIFviRKS6_RKS2_SH_RKNS1_IiLin1ELi1ELi0ELin1ELi1EEESH_SH_RdRS7_EERSD_IFbSF_SH_SH_SK_SH_SH_RKSt14priority_queueIS5_IJdiiEES4_ISR_SaISR_EESt7greaterISR_EESK_SF_iEERSD_IFvSF_SH_SH_SK_SH_SH_SY_SK_SF_iiiiibEEE3$_2", !16, i64 0, !16, i64 8, !10, i64 16}
!560 = !{!559, !16, i64 0}
!561 = !{i64 4}
!562 = !{!559, !16, i64 8}
!563 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !9}
end_hunk_2
