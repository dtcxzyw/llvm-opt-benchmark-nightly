Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed_solve?download=true
inline.NumInlined: 8736
inline.NumDeleted: 3468
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 152
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.eq = extractelement <8 x double> %i.dx, i64 3
  %i.er = tail call double @llvm.fmuladd.f64(double %6, double %i.eq, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !64
  %i.es = mul nsw i64 %.pre-phi558, %5
  %i.et = getelementptr inbounds [8 x i8], ptr %4, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !64
  %i.ev = extractelement <8 x double> %i.dx, i64 4
  %i.ew = tail call double @llvm.fmuladd.f64(double %6, double %i.ev, double %i.eu)
  store double %i.ew, ptr %i.et, align 8, !tbaa !64
  %i.ex = mul nsw i64 %.pre-phi560, %5
  %i.ey = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ex ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !64
  %i.fa = extractelement <8 x double> %i.dx, i64 5
  %i.fb = tail call double @llvm.fmuladd.f64(double %6, double %i.fa, double %i.ez)
  store double %i.fb, ptr %i.ey, align 8, !tbaa !64
  %i.fc = mul nsw i64 %.pre-phi562, %5
  %i.fd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !64
  %i.ff = extractelement <8 x double> %i.dx, i64 6
  %i.fg = tail call double @llvm.fmuladd.f64(double %6, double %i.ff, double %i.fe)
  store double %i.fg, ptr %i.fd, align 8, !tbaa !64
  %i.fh = mul nsw i64 %.pre-phi564, %5
  %i.fi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !64
  %i.fk = extractelement <8 x double> %i.dx, i64 7
  %i.fl = tail call double @llvm.fmuladd.f64(double %6, double %i.fk, double %i.fj)
  store double %i.fl, ptr %i.fi, align 8, !tbaa !64
  %i.fm = add nuw nsw i64 %.0226448, 8            ; 3 uses
  %i.fn = icmp sgt i64 %i.c, %i.fm
  br i1 %i.fn, label %.preheader409, label %.preheader408, !llvm.loop !1331

.preheader407:                                    ; preds = %.preheader407.lr.ph, %._crit_edge470
  %.1227475 = phi i64 [ %.0226.lcssa, %.preheader407.lr.ph ], [ %i.je, %._crit_edge470 ] ; 13 uses
  br i1 %.not237450, label %._crit_edge457, label %.lr.ph456

.lr.ph456:                                        ; preds = %.preheader407
  %i.fo = load ptr, ptr %3, align 8, !tbaa !730
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
  %i.gf = load <2 x double>, ptr %i.ge, align 1, !tbaa !91 ; 4 uses
  %i.gg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0214455 ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %i.fp
  %i.gi = load <2 x double>, ptr %i.gh, align 1, !tbaa !91
  %i.gj = fmul <2 x double> %i.gf, %i.gi
  %i.gk = fadd <2 x double> %.0399454, %i.gj      ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gg, i64 %i.fr
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !91
  %i.gn = fmul <2 x double> %i.gf, %i.gm
  %i.go = fadd <2 x double> %.0401453, %i.gn      ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.gg, i64 %i.ft
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !91
  %i.gr = fmul <2 x double> %i.gf, %i.gq
  %i.gs = fadd <2 x double> %.0402452, %i.gr      ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gg, i64 %i.fv
  %i.gu = load <2 x double>, ptr %i.gt, align 1, !tbaa !91
  %i.gv = fmul <2 x double> %i.gf, %i.gu
  %i.gw = fadd <2 x double> %.0403451, %i.gv      ; 2 uses
  %i.gx = add nuw nsw i64 %i.gd, 2                ; 2 uses
  %.not237 = icmp sgt i64 %i.gx, %1
  br i1 %.not237, label %._crit_edge457, label %bb.d, !llvm.loop !1332

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
  %i.hg = load ptr, ptr %3, align 8, !tbaa !730
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
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !64
  %i.hr = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1215463 ; 4 uses
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %i.hh
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !64
  %i.hu = getelementptr [8 x i8], ptr %i.hr, i64 %i.hj
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !64
  %i.hw = getelementptr [8 x i8], ptr %i.hr, i64 %i.hl
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !64
  %i.hy = getelementptr [8 x i8], ptr %i.hr, i64 %i.hn
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !64
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
  br i1 %exitcond549.not, label %._crit_edge470, label %bb.e, !llvm.loop !1333

._crit_edge470:                                   ; preds = %bb.e, %._crit_edge457.._crit_edge470_crit_edge
  %.pre-phi570 = phi i64 [ %.pre569, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hm, %bb.e ]
  %.pre-phi568 = phi i64 [ %.pre567, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hk, %bb.e ]
  %.pre-phi566 = phi i64 [ %.pre565, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hi, %bb.e ]
  %i.ij = phi <4 x double> [ %i.he, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.ih, %bb.e ] ; 4 uses
  %i.ik = mul nsw i64 %.1227475, %5
  %i.il = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ik ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !64
  %i.in = extractelement <4 x double> %i.ij, i64 0
  %i.io = tail call double @llvm.fmuladd.f64(double %6, double %i.in, double %i.im)
  store double %i.io, ptr %i.il, align 8, !tbaa !64
  %i.ip = mul nsw i64 %.pre-phi566, %5
  %i.iq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ip ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !64
  %i.is = extractelement <4 x double> %i.ij, i64 1
  %i.it = tail call double @llvm.fmuladd.f64(double %6, double %i.is, double %i.ir)
  store double %i.it, ptr %i.iq, align 8, !tbaa !64
  %i.iu = mul nsw i64 %.pre-phi568, %5
  %i.iv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iu ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !64
  %i.ix = extractelement <4 x double> %i.ij, i64 2
  %i.iy = tail call double @llvm.fmuladd.f64(double %6, double %i.ix, double %i.iw)
  store double %i.iy, ptr %i.iv, align 8, !tbaa !64
  %i.iz = mul nsw i64 %.pre-phi570, %5
  %i.ja = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iz ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !64
  %i.jc = extractelement <4 x double> %i.ij, i64 3
  %i.jd = tail call double @llvm.fmuladd.f64(double %6, double %i.jc, double %i.jb)
  store double %i.jd, ptr %i.ja, align 8, !tbaa !64
  %i.je = add nuw nsw i64 %.1227475, 4            ; 3 uses
  %i.jf = icmp slt i64 %i.je, %i.d
  br i1 %i.jf, label %.preheader407, label %.preheader406, !llvm.loop !1334

.preheader405:                                    ; preds = %.preheader405.lr.ph, %._crit_edge491
  %.2494 = phi i64 [ %.1227.lcssa, %.preheader405.lr.ph ], [ %i.nh, %._crit_edge491 ] ; 7 uses
  br i1 %.not236477, label %._crit_edge482, label %.lr.ph481

.lr.ph481:                                        ; preds = %.preheader405
  %i.jg = load ptr, ptr %3, align 8, !tbaa !730   ; 3 uses
  %i.jh = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.ji = add nuw nsw i64 %.2494, 1
  %i.jj = mul nsw i64 %i.ji, %.sroa.33.0.copyload ; 3 uses
  br i1 %i.gb, label %.epil.preheader, label %.lr.ph481.new

.preheader404:                                    ; preds = %._crit_edge491, %.preheader406
  %.2.lcssa = phi i64 [ %.1227.lcssa, %.preheader406 ], [ %i.nh, %._crit_edge491 ] ; 4 uses
  %i.jk = icmp slt i64 %.2.lcssa, %0
  br i1 %i.jk, label %.preheader.lr.ph, label %._crit_edge512

.preheader.lr.ph:                                 ; preds = %.preheader404
  %i.jl = and i64 %1, -2                          ; 2 uses
  %.not496 = icmp slt i64 %1, 2
  br i1 %.not496, label %._crit_edge500, label %.lr.ph499

.lr.ph481.new:                                    ; preds = %.lr.ph481, %.lr.ph481.new
  %i.jm = phi i64 [ %i.kk, %.lr.ph481.new ], [ 2, %.lr.ph481 ] ; 4 uses
  %.0208480 = phi i64 [ %i.jy, %.lr.ph481.new ], [ 0, %.lr.ph481 ] ; 2 uses
  %.0398479 = phi <2 x double> [ %i.kj, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %.0400478 = phi <2 x double> [ %i.kf, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph481.new ], [ 0, %.lr.ph481 ]
  %i.jn = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480
  %i.jo = load <2 x double>, ptr %i.jn, align 1, !tbaa !91 ; 2 uses
  %i.jp = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480 ; 2 uses
  %i.jq = getelementptr [8 x i8], ptr %i.jp, i64 %i.jh
  %i.jr = load <2 x double>, ptr %i.jq, align 1, !tbaa !91
  %i.js = fmul <2 x double> %i.jo, %i.jr
  %i.jt = fadd <2 x double> %.0400478, %i.js
  %i.ju = getelementptr [8 x i8], ptr %i.jp, i64 %i.jj
  %i.jv = load <2 x double>, ptr %i.ju, align 1, !tbaa !91
  %i.jw = fmul <2 x double> %i.jo, %i.jv
  %i.jx = fadd <2 x double> %.0398479, %i.jw
  %i.jy = add nuw nsw i64 %i.jm, 2                ; 2 uses
  %i.jz = getelementptr [8 x i8], ptr %i.jg, i64 %i.jm
  %i.ka = load <2 x double>, ptr %i.jz, align 1, !tbaa !91 ; 2 uses
  %i.kb = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.jm ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.kb, i64 %i.jh
  %i.kd = load <2 x double>, ptr %i.kc, align 1, !tbaa !91
  %i.ke = fmul <2 x double> %i.ka, %i.kd
  %i.kf = fadd <2 x double> %i.jt, %i.ke          ; 3 uses
  %i.kg = getelementptr [8 x i8], ptr %i.kb, i64 %i.jj
  %i.kh = load <2 x double>, ptr %i.kg, align 1, !tbaa !91
  %i.ki = fmul <2 x double> %i.ka, %i.kh
  %i.kj = fadd <2 x double> %i.jx, %i.ki          ; 3 uses
  %i.kk = add nuw nsw i64 %i.jm, 4
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !1335

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0208480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %i.jy, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0398479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ]
  %.0400478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kf, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.kl = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480.epil.init
  %i.km = load <2 x double>, ptr %i.kl, align 1, !tbaa !91 ; 2 uses
  %i.kn = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480.epil.init ; 2 uses
  %i.ko = getelementptr [8 x i8], ptr %i.kn, i64 %i.jh
  %i.kp = load <2 x double>, ptr %i.ko, align 1, !tbaa !91
  %i.kq = fmul <2 x double> %i.km, %i.kp
  %i.kr = fadd <2 x double> %.0400478.epil.init, %i.kq
  %i.ks = getelementptr [8 x i8], ptr %i.kn, i64 %i.jj
  %i.kt = load <2 x double>, ptr %i.ks, align 1, !tbaa !91
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
  %i.la = load ptr, ptr %3, align 8, !tbaa !730   ; 3 uses
  %i.lb = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.lc = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.ld = mul nsw i64 %i.lc, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0208.lcssa, 1
  br i1 %lcmp.mod673.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.le = getelementptr [8 x i8], ptr %i.la, i64 %.0208.lcssa
  %i.lf = load double, ptr %i.le, align 8, !tbaa !64
  %i.lg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208.lcssa ; 2 uses
  %i.lh = getelementptr [8 x i8], ptr %i.lg, i64 %i.lb
  %i.li = load double, ptr %i.lh, align 8, !tbaa !64
  %i.lj = getelementptr [8 x i8], ptr %i.lg, i64 %i.ld
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !64
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
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !64
  %i.lw = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209486 ; 2 uses
  %i.lx = getelementptr [8 x i8], ptr %i.lw, i64 %i.lb
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !64
  %i.lz = getelementptr [8 x i8], ptr %i.lw, i64 %i.ld
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !64
  %i.mb = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.mc = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.md = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.me = insertelement <2 x double> %i.md, double %i.ma, i64 1
  %i.mf = fmul <2 x double> %i.mc, %i.me
  %i.mg = fadd <2 x double> %i.lt, %i.mf
  %i.mh = add nuw nsw i64 %.1209486, 1            ; 2 uses
  %i.mi = getelementptr [8 x i8], ptr %i.la, i64 %i.mh
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !64
  %i.mk = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.mh ; 2 uses
  %i.ml = getelementptr [8 x i8], ptr %i.mk, i64 %i.lb
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !64
  %i.mn = getelementptr [8 x i8], ptr %i.mk, i64 %i.ld
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !64
  %i.mp = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mr = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %i.mo, i64 1
  %i.mt = fmul <2 x double> %i.mq, %i.ms
  %i.mu = fadd <2 x double> %i.mg, %i.mt          ; 2 uses
  %i.mv = add nuw nsw i64 %.1209486, 2            ; 2 uses
  %exitcond550.not.1 = icmp eq i64 %i.mv, %1
  br i1 %exitcond550.not.1, label %._crit_edge491, label %.lr.ph490.new, !llvm.loop !1336

._crit_edge491:                                   ; preds = %.prol.loopexit, %.lr.ph490.new, %._crit_edge482.._crit_edge491_crit_edge
  %.pre-phi572 = phi i64 [ %.pre571, %._crit_edge482.._crit_edge491_crit_edge ], [ %i.lc, %.lr.ph490.new ], [ %i.lc, %.prol.loopexit ]
  %i.mw = phi <2 x double> [ %i.ky, %._crit_edge482.._crit_edge491_crit_edge ], [ %.lcssa651.unr, %.prol.loopexit ], [ %i.mu, %.lr.ph490.new ] ; 2 uses
  %i.mx = mul nsw i64 %.2494, %5
  %i.my = getelementptr inbounds [8 x i8], ptr %4, i64 %i.mx ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !64
  %i.na = extractelement <2 x double> %i.mw, i64 0
  %i.nb = tail call double @llvm.fmuladd.f64(double %6, double %i.na, double %i.mz)
  store double %i.nb, ptr %i.my, align 8, !tbaa !64
  %i.nc = mul nsw i64 %.pre-phi572, %5
  %i.nd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nc ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !64
  %i.nf = extractelement <2 x double> %i.mw, i64 1
  %i.ng = tail call double @llvm.fmuladd.f64(double %6, double %i.nf, double %i.ne)
  store double %i.ng, ptr %i.nd, align 8, !tbaa !64
  %i.nh = add nuw nsw i64 %.2494, 2               ; 3 uses
  %i.ni = icmp slt i64 %i.nh, %i.e
  br i1 %i.ni, label %.preheader405, label %.preheader404, !llvm.loop !1337

.lr.ph499:                                        ; preds = %.preheader.lr.ph
  %i.nj = load ptr, ptr %3, align 8, !tbaa !730   ; 5 uses
  %i.nk = mul nsw i64 %.2.lcssa, %.sroa.33.0.copyload
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.nk ; 5 uses
  %7 = add nsw i64 %1, -2                         ; 2 uses
  %8 = lshr i64 %7, 1
  %9 = add nuw i64 %8, 1                          ; 2 uses
  %xtraiter675 = and i64 %9, 3                    ; 3 uses
  %10 = icmp ult i64 %7, 6
  br i1 %10, label %.epil.preheader674, label %.lr.ph499.new

.lr.ph499.new:                                    ; preds = %.lr.ph499
  %unroll_iter680 = and i64 %9, -4
  br label %.lr.ph499.new.a

.lr.ph499.new.a:                                  ; preds = %.lr.ph499.new.a, %.lr.ph499.new
  %i.nl = phi i64 [ 2, %.lr.ph499.new ], [ %i.oj, %.lr.ph499.new.a ] ; 6 uses
  %.0205498 = phi i64 [ 0, %.lr.ph499.new ], [ %i.od, %.lr.ph499.new.a ] ; 2 uses
  %.0392497 = phi <2 x double> [ zeroinitializer, %.lr.ph499.new ], [ %i.oi, %.lr.ph499.new.a ]
  %niter681 = phi i64 [ 0, %.lr.ph499.new ], [ %niter681.next.3, %.lr.ph499.new.a ]
  %i.nm = getelementptr [8 x i8], ptr %i.nj, i64 %.0205498
  %i.nn = load <2 x double>, ptr %i.nm, align 1, !tbaa !91
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498
  %i.no = load <2 x double>, ptr %gep, align 1, !tbaa !91
  %i.np = fmul <2 x double> %i.nn, %i.no
  %i.nq = fadd <2 x double> %.0392497, %i.np
  %i.nr = add nuw nsw i64 %i.nl, 2                ; 2 uses
  %i.ns = getelementptr [8 x i8], ptr %i.nj, i64 %i.nl
  %i.nt = load <2 x double>, ptr %i.ns, align 1, !tbaa !91
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nl
  %i.nu = load <2 x double>, ptr %gep.1, align 1, !tbaa !91
  %i.nv = fmul <2 x double> %i.nt, %i.nu
  %i.nw = fadd <2 x double> %i.nq, %i.nv
  %i.nx = add nuw nsw i64 %i.nl, 4                ; 2 uses
  %i.ny = getelementptr [8 x i8], ptr %i.nj, i64 %i.nr
  %i.nz = load <2 x double>, ptr %i.ny, align 1, !tbaa !91
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nr
  %i.oa = load <2 x double>, ptr %gep.2, align 1, !tbaa !91
  %i.ob = fmul <2 x double> %i.nz, %i.oa
  %i.oc = fadd <2 x double> %i.nw, %i.ob
  %i.od = add nuw nsw i64 %i.nl, 6                ; 2 uses
  %i.oe = getelementptr [8 x i8], ptr %i.nj, i64 %i.nx
  %i.of = load <2 x double>, ptr %i.oe, align 1, !tbaa !91
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nx
  %i.og = load <2 x double>, ptr %gep.3, align 1, !tbaa !91
  %i.oh = fmul <2 x double> %i.of, %i.og
  %i.oi = fadd <2 x double> %i.oc, %i.oh          ; 3 uses
  %i.oj = add nuw nsw i64 %i.nl, 8                ; 2 uses
  %niter681.next.3 = add i64 %niter681, 4         ; 2 uses
  %niter681.ncmp.3 = icmp eq i64 %niter681.next.3, %unroll_iter680
  br i1 %niter681.ncmp.3, label %._crit_edge500.loopexit.unr-lcssa, label %.lr.ph499.new.a, !llvm.loop !1338

._crit_edge500.loopexit.unr-lcssa:                ; preds = %.lr.ph499.new.a
  %lcmp.mod677.not = icmp eq i64 %xtraiter675, 0
  br i1 %lcmp.mod677.not, label %._crit_edge500, label %.epil.preheader674

.epil.preheader674:                               ; preds = %._crit_edge500.loopexit.unr-lcssa, %.lr.ph499
  %.epil.init = phi i64 [ 2, %.lr.ph499 ], [ %i.oj, %._crit_edge500.loopexit.unr-lcssa ]
  %.0205498.epil.init = phi i64 [ 0, %.lr.ph499 ], [ %i.od, %._crit_edge500.loopexit.unr-lcssa ]
  %.0392497.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph499 ], [ %i.oi, %._crit_edge500.loopexit.unr-lcssa ]
  %lcmp.mod679 = icmp ne i64 %xtraiter675, 0
  tail call void @llvm.assume(i1 %lcmp.mod679)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader674
  %i.ok = phi i64 [ %.epil.init, %.epil.preheader674 ], [ %i.oq, %bb.f ] ; 2 uses
  %.0205498.epil = phi i64 [ %.0205498.epil.init, %.epil.preheader674 ], [ %i.ok, %bb.f ] ; 2 uses
  %.0392497.epil = phi <2 x double> [ %.0392497.epil.init, %.epil.preheader674 ], [ %i.op, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader674 ], [ %epil.iter.next, %bb.f ]
  %i.ol = getelementptr [8 x i8], ptr %i.nj, i64 %.0205498.epil
  %i.om = load <2 x double>, ptr %i.ol, align 1, !tbaa !91
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498.epil
  %i.on = load <2 x double>, ptr %gep.epil, align 1, !tbaa !91
  %i.oo = fmul <2 x double> %i.om, %i.on
  %i.op = fadd <2 x double> %.0392497.epil, %i.oo ; 2 uses
  %i.oq = add nuw nsw i64 %i.ok, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter675
  br i1 %epil.iter.cmp.not, label %._crit_edge500, label %bb.f, !llvm.loop !1339

._crit_edge500:                                   ; preds = %._crit_edge500.loopexit.unr-lcssa, %bb.f, %.preheader.lr.ph
  %.0392.lcssa = phi <2 x double> [ zeroinitializer, %.preheader.lr.ph ], [ %i.oi, %._crit_edge500.loopexit.unr-lcssa ], [ %i.op, %bb.f ] ; 2 uses
  %.0205.lcssa = phi i64 [ 0, %.preheader.lr.ph ], [ %i.jl, %bb.f ], [ %i.jl, %._crit_edge500.loopexit.unr-lcssa ] ; 5 uses
  %shift = shufflevector <2 x double> %.0392.lcssa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.0392.lcssa, %shift
  %i.or = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.os = icmp slt i64 %.0205.lcssa, %1
  br i1 %i.os, label %.lr.ph506, label %._crit_edge507

.lr.ph506:                                        ; preds = %._crit_edge500
  %i.ot = mul nsw i64 %.2.lcssa, %.sroa.33.0.copyload
  %invariant.gep509 = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.ot ; 5 uses
  %i.ou = load ptr, ptr %3, align 8, !tbaa !730   ; 5 uses
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
  %i.ox = load double, ptr %gep510.prol, align 8, !tbaa !64
  %i.oy = load double, ptr %i.ow, align 8, !tbaa !64
  %i.oz = fmul double %i.ox, %i.oy
  %i.pa = fadd double %.0504.prol, %i.oz          ; 3 uses
  %i.pb = add nuw nsw i64 %.1503.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter684
  br i1 %prol.iter.cmp.not, label %.prol.loopexit683, label %.prol.preheader682, !llvm.loop !1340

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
  %i.pf = load double, ptr %gep510, align 8, !tbaa !64
  %i.pg = load double, ptr %i.pe, align 8, !tbaa !64
  %i.ph = fmul double %i.pf, %i.pg
  %i.pi = fadd double %.0504, %i.ph
  %i.pj = add nuw nsw i64 %.1503, 1               ; 2 uses
  %gep510.1 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pj
  %i.pk = getelementptr [8 x i8], ptr %i.ou, i64 %i.pj
  %i.pl = load double, ptr %gep510.1, align 8, !tbaa !64
  %i.pm = load double, ptr %i.pk, align 8, !tbaa !64
  %i.pn = fmul double %i.pl, %i.pm
  %i.po = fadd double %i.pi, %i.pn
  %i.pp = add nuw nsw i64 %.1503, 2               ; 2 uses
  %gep510.2 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pp
  %i.pq = getelementptr [8 x i8], ptr %i.ou, i64 %i.pp
  %i.pr = load double, ptr %gep510.2, align 8, !tbaa !64
  %i.ps = load double, ptr %i.pq, align 8, !tbaa !64
  %i.pt = fmul double %i.pr, %i.ps
  %i.pu = fadd double %i.po, %i.pt
  %i.pv = add nuw nsw i64 %.1503, 3               ; 2 uses
  %gep510.3 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pv
  %i.pw = getelementptr [8 x i8], ptr %i.ou, i64 %i.pv
  %i.px = load double, ptr %gep510.3, align 8, !tbaa !64
  %i.py = load double, ptr %i.pw, align 8, !tbaa !64
  %i.pz = fmul double %i.px, %i.py
  %i.qa = fadd double %i.pu, %i.pz                ; 2 uses
  %i.qb = add nuw nsw i64 %.1503, 4               ; 2 uses
  %exitcond551.not.3 = icmp eq i64 %i.qb, %1
  br i1 %exitcond551.not.3, label %._crit_edge507, label %.lr.ph506.new, !llvm.loop !1341

._crit_edge507:                                   ; preds = %.prol.loopexit683, %.lr.ph506.new, %._crit_edge500
  %.0.lcssa = phi double [ %i.or, %._crit_edge500 ], [ %.lcssa648.unr, %.prol.loopexit683 ], [ %i.qa, %.lr.ph506.new ]
  %i.qc = mul nsw i64 %.2.lcssa, %5
  %i.qd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.qc ; 2 uses
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !64
  %i.qf = tail call double @llvm.fmuladd.f64(double %6, double %.0.lcssa, double %i.qe)
  store double %i.qf, ptr %i.qd, align 8, !tbaa !64
  br label %._crit_edge512

._crit_edge512:                                   ; preds = %._crit_edge507, %.preheader404
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, !prof !1059

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #23
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #23
  br label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #23
  resume { ptr, i32 } %i.d

_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load i64, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, align 8, !tbaa !1074 ; 4 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !1060 ; 4 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 16), align 8, !tbaa !1075 ; 3 uses
  %i.h = icmp sgt i64 %3, 1
  br i1 %i.h, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.i = add nsw i64 %i.e, -128
  %i.j = sdiv i64 %i.i, 64
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 8)
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 320) ; 2 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !187    ; 2 uses
  %i.n = icmp slt i64 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = and i64 %i.l, 504                        ; 2 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !187
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.q = sub nsw i64 %i.f, %i.e
  %i.r = shl i64 %i.p, 5
  %i.s = udiv i64 %i.q, %i.r                      ; 2 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !187    ; 2 uses
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
  store i64 %storemerge184, ptr %2, align 8, !tbaa !187
  %i.ab = icmp sgt i64 %i.g, %i.f
  br i1 %i.ab, label %bb.l, label %.critedge116

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i64 %i.g, %i.f
  %i.ad = load i64, ptr %0, align 8, !tbaa !187
  %i.ae = shl i64 %3, 3
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = udiv i64 %i.ac, %i.af                   ; 3 uses
  %i.ah = load i64, ptr %1, align 8, !tbaa !187   ; 2 uses
  %i.ai = add i64 %i.u, %i.ah
  %i.aj = sdiv i64 %i.ai, %3                      ; 2 uses
  %i.ak = icmp slt i64 %i.ag, %i.aj
  %i.al = icmp samesign ugt i64 %i.ag, 3
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = and i64 %i.ag, 2305843009213693948
  store i64 %i.am, ptr %1, align 8, !tbaa !187
  br label %.critedge116

bb.n:                                             ; preds = %bb.l
  %i.an = add nsw i64 %i.aj, 3                    ; 2 uses
  %i.ao = srem i64 %i.an, 4
  %i.ap = sub nsw i64 %i.an, %i.ao
  %.sroa.speculated149 = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ah)
  store i64 %.sroa.speculated149, ptr %1, align 8, !tbaa !187
  br label %.critedge116

bb.o:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.aq = load i64, ptr %1, align 8, !tbaa !187   ; 2 uses
  %i.ar = load i64, ptr %2, align 8, !tbaa !187
  %i.as = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.ar)
  %i.at = load i64, ptr %0, align 8, !tbaa !187   ; 8 uses
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
  store i64 %i.bj, ptr %0, align 8, !tbaa !187
  %.pre = load i64, ptr %1, align 8, !tbaa !187
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
  %i.bx = load i64, ptr %2, align 8, !tbaa !187   ; 4 uses
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
  store i64 %i.ci, ptr %2, align 8, !tbaa !187
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
  store i64 %i.dd, ptr %1, align 8, !tbaa !187
  br label %.critedge116

.critedge116:                                     ; preds = %.critedge, %bb.aa, %bb.z, %bb.ag, %bb.m, %bb.n, %bb.k, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i64 noundef %9, double noundef %10, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %12) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %14 = alloca %"struct.Eigen::internal::gemm_pack_rhs.1170", align 1 ; 4 uses
  %15 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 5 uses
  %16 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 14 uses
  %17 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %18 = alloca %"class.Eigen::internal::blas_data_mapper.994", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1050 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1052 ; 2 uses
  %.sroa.speculated145 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1055 ; 2 uses
  %.sroa.speculated140 = tail call i64 @llvm.smin.i64(i64 %i.f, i64 %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.g = mul nsw i64 %.sroa.speculated145, %i.b   ; 4 uses
  %i.h = mul nsw i64 %.sroa.speculated140, %i.b   ; 4 uses
  %i.i = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.i, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99: ; preds = %bb.a
  %i.k = load ptr, ptr %11, align 8, !tbaa !1057  ; 2 uses
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
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.l) #24 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99, %bb.d
  %i.s = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99 ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit99 ], [ %i.o, %bb.d ], [ %i.p, %bb.e ] ; 5 uses
  %i.u = icmp samesign ugt i64 %i.g, 16384        ; 2 uses
  %i.v = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.v, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc111 unwind label %bb.u

.noexc111:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1058 ; 2 uses
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
  %i.ad = tail call noalias ptr @malloc(i64 noundef %i.z) #24 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
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
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ay = mul nsw i64 %.077182.us.us200.us, %4
  %i.az = getelementptr [8 x i8], ptr %i.at, i64 %i.ay
  store ptr %i.az, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.ax, i64 noundef %i.as, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us202.us unwind label %.split.us188.split.split.us.split.us

.lr.ph.us.us202.us:                               ; preds = %.lr.ph183.split.us.split.us204.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.us.us202.us
  %.0178.us184.us.us = phi i64 [ 0, %.lr.ph.us.us202.us ], [ %i.ba, %bb.n ] ; 3 uses
  %i.ba = add nsw i64 %.0178.us184.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us185.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.ba)
  %i.bb = sub nsw i64 %.sroa.speculated.us185.us.us, %.0178.us184.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.bc = mul nsw i64 %.0178.us184.us.us, %9
  %i.bd = getelementptr [8 x i8], ptr %i.av, i64 %i.bc
  store ptr %i.bd, ptr %18, align 8
  store i64 %9, ptr %i.ap, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ah, i64 noundef %i.as, i64 noundef %i.ax, i64 noundef %i.bb, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split180.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.be = icmp slt i64 %i.ba, %1
  br i1 %i.be, label %bb.m, label %..loopexit_crit_edge.split.us186.us.us, !llvm.loop !1342

..loopexit_crit_edge.split.us186.us.us:           ; preds = %bb.n
  %i.bf = icmp slt i64 %i.aw, %2
  br i1 %i.bf, label %.lr.ph183.split.us.split.us204.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !1343

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us186.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bg = icmp slt i64 %i.ar, %0
  br i1 %i.bg, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !1344

.lr.ph183.split.us.split.us.us.us:                ; preds = %.lr.ph183.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %.077182.us.us.us.us = phi i64 [ %i.bh, %..loopexit_crit_edge.split.us.us.us.us.us ], [ 0, %.lr.ph183.us.us ] ; 4 uses
  %i.bh = add nsw i64 %.077182.us.us.us.us, %i.b  ; 3 uses
  %.sroa.speculated124.us.us.us.us = call i64 @llvm.smin.i64(i64 %2, i64 %i.bh)
  %i.bi = sub nsw i64 %.sroa.speculated124.us.us.us.us, %.077182.us.us.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.bj = mul nsw i64 %.077182.us.us.us.us, %4
  %i.bk = getelementptr [8 x i8], ptr %i.at, i64 %i.bj
  store ptr %i.bk, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bi, i64 noundef %i.as, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us.us.us unwind label %.split.us188.split.us.split.us.split.us

.lr.ph.us.us.us.us:                               ; preds = %.lr.ph183.split.us.split.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.bl = getelementptr [8 x i8], ptr %5, i64 %.077182.us.us.us.us
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bm, %bb.q ] ; 4 uses
  %i.bm = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bm)
  %i.bn = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.bo = mul nsw i64 %.0178.us.us.us.us.us, %6
  %i.bp = getelementptr [8 x i8], ptr %i.bl, i64 %i.bo
  store ptr %i.bp, ptr %17, align 8
  store i64 %6, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.bi, i64 noundef %i.bn, i64 noundef 0, i64 noundef 0)
          to label %bb.p unwind label %.split.us.split.us.split.us.split.us.split.us

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.bq = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.br = getelementptr [8 x i8], ptr %i.av, i64 %i.bq
  store ptr %i.br, ptr %18, align 8
  store i64 %9, ptr %i.ap, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ah, i64 noundef %i.as, i64 noundef %i.bi, i64 noundef %i.bn, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.q unwind label %.split180.us.split.us.split.us.split.us.split.us

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  %i.bs = icmp slt i64 %i.bm, %1
  br i1 %i.bs, label %bb.o, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !1342

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.q
  %i.bt = icmp slt i64 %i.bh, %2
  br i1 %i.bt, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !1343

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
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
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
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ce = mul nsw i64 %.077182.us196, %4
  %i.cf = getelementptr [8 x i8], ptr %i.cb, i64 %i.ce
  store ptr %i.cf, ptr %16, align 8
  store i64 %4, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.cd, i64 noundef %i.ca, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us

.loopexit.us:                                     ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.cg = icmp slt i64 %i.cc, %2
  br i1 %i.cg, label %bb.r, label %..loopexit177_crit_edge.split.us198, !llvm.loop !1343

..loopexit177_crit_edge.split.us198:              ; preds = %.loopexit.us
  %i.ch = icmp slt i64 %i.bz, %0
  br i1 %i.ch, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !1344

.split.split.us:                                  ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.split.us188

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us198, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.l
  br i1 %i.ai, label %bb.s, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.s:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ag) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.s
  br i1 %i.u, label %bb.t, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.t:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
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
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.x

bb.w:                                             ; preds = %.split180.us.split.us.split.us.split.us.split.us, %.split180.split.us.split.us.split.us
  %.us-phi181 = phi { ptr, i32 } [ %i.bv, %.split180.split.us.split.us.split.us ], [ %i.by, %.split180.us.split.us.split.us.split.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.x

bb.x:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %bb.w, %.split.us188
  %.pn.pn = phi { ptr, i32 } [ %.us-phi, %.split.us188 ], [ %.us-phi181, %bb.w ], [ %i.bx, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ai, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.ag) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.x, %bb.y, %bb.v, %bb.u
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cj, %bb.u ], [ %i.ck, %bb.v ], [ %.pn.pn, %bb.y ], [ %.pn.pn, %bb.x ]
  br i1 %i.u, label %bb.z, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.z:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !1084
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !730    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !732  ; 12 uses
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
  %wide.load = load <2 x double>, ptr %i.bt, align 8, !tbaa !64, !alias.scope !1345
  %.idx = shl i64 %index, 5
  %i.bu = getelementptr i8, ptr %i.bs, i64 %.idx
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load109 = load <2 x double>, ptr %i.bv, align 8, !tbaa !64, !alias.scope !1348
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load110 = load <2 x double>, ptr %i.bw, align 8, !tbaa !64, !alias.scope !1350
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load111 = load <2 x double>, ptr %i.bx, align 8, !tbaa !64, !alias.scope !1352
  %i.by = shufflevector <2 x double> %wide.load, <2 x double> %wide.load109, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = shufflevector <2 x double> %wide.load110, <2 x double> %wide.load111, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.by, <4 x double> %i.bz, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bu, align 8, !tbaa !64, !alias.scope !1354, !noalias !1356
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !1357

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.br, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !64
  %i.cd = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.cc, ptr %i.cd, align 8, !tbaa !64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !64
  %i.cg = getelementptr i8, ptr %i.cd, i64 8
  store double %i.cf, ptr %i.cg, align 8, !tbaa !64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us.ph
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !64
  %i.cj = getelementptr i8, ptr %i.cd, i64 16
  store double %i.ci, ptr %i.cj, align 8, !tbaa !64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us.ph
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !64
  %i.cm = getelementptr i8, ptr %i.cd, i64 24
  store double %i.cl, ptr %i.cm, align 8, !tbaa !64
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
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !64
  %i.cs = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cr, ptr %i.cs, align 8, !tbaa !64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !64
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  store double %i.cu, ptr %i.cv, align 8, !tbaa !64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !64
  %i.cy = getelementptr i8, ptr %i.cs, i64 16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us
  %i.da = load double, ptr %i.cz, align 8, !tbaa !64
  %i.db = getelementptr i8, ptr %i.cs, i64 24
  store double %i.da, ptr %i.db, align 8, !tbaa !64
  %i.dc = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !64
  %i.df = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  store double %i.de, ptr %i.dg, align 8, !tbaa !64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dc
  %i.di = load double, ptr %i.dh, align 8, !tbaa !64
  %i.dj = getelementptr i8, ptr %i.df, i64 40
  store double %i.di, ptr %i.dj, align 8, !tbaa !64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !64
  %i.dm = getelementptr i8, ptr %i.df, i64 48
  store double %i.dl, ptr %i.dm, align 8, !tbaa !64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dc
  %i.do = load double, ptr %i.dn, align 8, !tbaa !64
  %i.dp = getelementptr i8, ptr %i.df, i64 56
  store double %i.do, ptr %i.dp, align 8, !tbaa !64
  %i.dq = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dr = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dr, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1358

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.br, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.dq, %scalar.ph ] ; 2 uses
  %i.ds = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.c
  br i1 %i.dt, label %.lr.ph.us, label %.preheader, !llvm.loop !1359

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.du = icmp slt i64 %i.c, %4
  br i1 %i.du, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dv = load ptr, ptr %2, align 8, !tbaa !730   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !732 ; 3 uses
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
  %wide.load120 = load <2 x double>, ptr %i.eo, align 8, !tbaa !64
  %wide.load121 = load <2 x double>, ptr %i.ep, align 8, !tbaa !64
  %i.eq = getelementptr [8 x i8], ptr %i.en, i64 %index119 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x double> %wide.load120, ptr %i.eq, align 8, !tbaa !64
  store <2 x double> %wide.load121, ptr %i.er, align 8, !tbaa !64
  %index.next122 = add nuw i64 %index119, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.es, label %middle.block123, label %vector.body118, !llvm.loop !1360

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
  %i.eu = load double, ptr %i.et, align 8, !tbaa !64
  %i.ev = getelementptr inbounds [8 x i8], ptr %1, i64 %.364.prol
  store double %i.eu, ptr %i.ev, align 8, !tbaa !64
  %i.ew = add nsw i64 %.364.prol, 1               ; 3 uses
  %i.ex = add nuw nsw i64 %.065.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter129
  br i1 %prol.iter.cmp.not, label %scalar.ph114.prol.loopexit, label %scalar.ph114.prol, !llvm.loop !1361

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
  br i1 %exitcond73.not, label %._crit_edge69.split, label %.lr.ph, !llvm.loop !1362

scalar.ph114:                                     ; preds = %scalar.ph114.prol.loopexit, %scalar.ph114
  %.065 = phi i64 [ %i.fu, %scalar.ph114 ], [ %.065.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %.364 = phi i64 [ %i.ft, %scalar.ph114 ], [ %.364.unr, %scalar.ph114.prol.loopexit ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !64
  %i.fd = getelementptr inbounds [8 x i8], ptr %1, i64 %.364
  store double %i.fc, ptr %i.fd, align 8, !tbaa !64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !64
  %i.fh = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  store double %i.fg, ptr %i.fi, align 8, !tbaa !64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !64
  %i.fm = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fn = getelementptr i8, ptr %i.fm, i64 16
  store double %i.fl, ptr %i.fn, align 8, !tbaa !64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.065
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !64
  %i.fr = getelementptr [8 x i8], ptr %1, i64 %.364
  %i.fs = getelementptr i8, ptr %i.fr, i64 24
  store double %i.fq, ptr %i.fs, align 8, !tbaa !64
  %i.ft = add nsw i64 %.364, 4                    ; 2 uses
  %i.fu = add nuw nsw i64 %.065, 4                ; 2 uses
  %exitcond72.not.3 = icmp eq i64 %i.fu, %3
  br i1 %exitcond72.not.3, label %._crit_edge, label %scalar.ph114, !llvm.loop !1363
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS2_IS4_Li0ES7_EELi1ELi2ELi0ELin1EE3runERKS8_RS9_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !138  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i64, ptr %i.d, align 8, !tbaa !138  ; 2 uses
  %i.i = load <2 x i64>, ptr %i.e, align 8, !tbaa !138
  store <2 x i64> %i.i, ptr %i.f, align 8, !tbaa !187
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.j, align 8, !tbaa !1050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.h, ptr %i.a, align 8, !tbaa !187
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.k = load i64, ptr %i.f, align 8, !tbaa !1052
  %i.l = load i64, ptr %i.j, align 8, !tbaa !1050 ; 2 uses
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !1053
  %i.o = load i64, ptr %i.g, align 8, !tbaa !1055
  %i.p = mul nsw i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.p, ptr %i.q, align 8, !tbaa !1056
  %i.r = load ptr, ptr %0, align 8, !tbaa !712
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !138
  %i.u = load ptr, ptr %1, align 8, !tbaa !1027
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !138
  invoke void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %i.c, i64 noundef %i.h, ptr noundef nonnull %i.r, i64 noundef %i.t, ptr noundef nonnull %i.u, i64 noundef 1, i64 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %2, align 8, !tbaa !1057
  call void @free(ptr noundef %i.x) #23
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1058
  call void @free(ptr noundef %i.z) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.c:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !1057
  call void @free(ptr noundef %i.ab) #23
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1058
  call void @free(ptr noundef %i.ad) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.994", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.994", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.994", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1050 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1052
  %.sroa.speculated246 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated246, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !1057   ; 2 uses
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
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.j) #24 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.e, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172, %bb.d
  %i.q = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit172 ], [ %i.m, %bb.d ], [ %i.n, %bb.e ] ; 6 uses
  %i.s = icmp samesign ugt i64 %i.e, 16384        ; 2 uses
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc193 unwind label %bb.af

.noexc193:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1058 ; 2 uses
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
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #24 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc196 unwind label %bb.ag

.noexc196:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !1059

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #23
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #23
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #23
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !1060
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
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %gep.us330 = getelementptr [8 x i8], ptr %invariant.gep.us333, i64 %.0325.us
  store ptr %gep.us330, ptr %14, align 8
  store i64 %3, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %smin, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split.us334

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.cf = getelementptr [8 x i8], ptr %4, i64 %.0325.us
  store ptr %i.cf, ptr %15, align 8
  store i64 %6, ptr %i.bb, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %smin, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split336.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cg = add nsw i64 %.0325.us, %.sroa.speculated246 ; 2 uses
  %i.ch = icmp slt i64 %i.cg, %i.ci
  br i1 %i.ch, label %bb.s, label %.loopexit.us, !llvm.loop !1364

.loopexit.us:                                     ; preds = %bb.w
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph312.us, !llvm.loop !1365

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
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !64
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
  %wide.load397 = load <2 x double>, ptr %i.em, align 8, !tbaa !64
  %wide.load398 = load <2 x double>, ptr %i.en, align 8, !tbaa !64
  %i.eo = fmul <2 x double> %broadcast.splat394, %wide.load397
  %i.ep = fmul <2 x double> %broadcast.splat394, %wide.load398
  store <2 x double> %i.eo, ptr %i.em, align 8, !tbaa !64
  store <2 x double> %i.ep, ptr %i.en, align 8, !tbaa !64
  %index.next399 = add nuw i64 %index396, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.eq, label %middle.block400, label %vector.body395, !llvm.loop !1366

middle.block400:                                  ; preds = %vector.body395
  br i1 %cmp.n401, label %._crit_edge304.us.us, label %.lr.ph303.split.us316.us.preheader403

.lr.ph303.split.us316.us.preheader403:            ; preds = %.lr.ph303.split.us316.us.preheader, %middle.block400
  %.0131301.us314.us.ph = phi i64 [ %.0134310.us.us, %.lr.ph303.split.us316.us.preheader ], [ %i.dh, %middle.block400 ]
  br label %.lr.ph303.split.us316.us

.lr.ph303.split.us316.us:                         ; preds = %.lr.ph303.split.us316.us.preheader403, %.lr.ph303.split.us316.us
  %.0131301.us314.us = phi i64 [ %i.ev, %.lr.ph303.split.us316.us ], [ %.0131301.us314.us.ph, %.lr.ph303.split.us316.us.preheader403 ] ; 2 uses
  %i.er = mul nsw i64 %.0131301.us314.us, %6
  %i.es = getelementptr [8 x i8], ptr %i.ef, i64 %i.er ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !64
  %i.eu = fmul double %i.ee, %i.et
  store double %i.eu, ptr %i.es, align 8, !tbaa !64
  %i.ev = add nuw nsw i64 %.0131301.us314.us, 1   ; 2 uses
  %i.ew = icmp slt i64 %i.ev, %i.cx
  br i1 %i.ew, label %.lr.ph303.split.us316.us, label %._crit_edge304.us.us, !llvm.loop !1367

._crit_edge.split.us.us:                          ; preds = %._crit_edge304.us.us, %bb.x
  %i.ex = sub nsw i64 %i.do, %.sroa.speculated210.us.us ; 5 uses
  %i.ey = add nuw i64 %.0133306.us.us, %.sroa.speculated210.us.us
  %i.ez = sub i64 %.0135326.us, %i.ey             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.ez
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.da, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, i64 noundef %smin, i64 noundef %i.ex)
          to label %bb.y unwind label %.split.us.split.us

bb.y:                                             ; preds = %._crit_edge.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.fa = icmp sgt i64 %i.ex, 0
  br i1 %i.fa, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.fb = mul nsw i64 %i.ez, %3
  %i.fc = getelementptr [8 x i8], ptr %i.bz, i64 %i.fb
  store ptr %i.fc, ptr %12, align 8
  store i64 %3, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated210.us.us, i64 noundef %i.ex, i64 noundef 0, i64 noundef 0)
          to label %bb.aa unwind label %.split320.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr %i.dc, ptr %13, align 8
  store i64 %6, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.da, i64 noundef %i.ex, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated210.us.us, i64 noundef %smin, i64 noundef 0, i64 noundef %i.ex)
          to label %bb.ab unwind label %.split323.us.split.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.fd = add nuw nsw i64 %.0133306.us.us, 4      ; 2 uses
  %i.fe = icmp slt i64 %i.fd, %smin
  %indvars.iv.next = add i64 %indvars.iv, -4
  %indvar.next380 = add i64 %indvar379, 1
  br i1 %i.fe, label %bb.x, label %._crit_edge309.us.us, !llvm.loop !1368

._crit_edge304.us.us:                             ; preds = %.lr.ph303.split.us316.us, %._crit_edge.us.us.us, %middle.block400
  %i.ff = add nuw nsw i64 %.0132305.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.ff, %i.dn
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph303.us.us, !llvm.loop !1369

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131301.us.us.us = phi i64 [ %i.ga, %._crit_edge.us.us.us ], [ %.0134310.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.fg = mul nsw i64 %.0131301.us.us.us, %6      ; 2 uses
  %i.fh = getelementptr [8 x i8], ptr %i.ef, i64 %i.fg ; 2 uses
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !64
  %i.fj = fmul double %i.ee, %i.fi                ; 2 uses
  store double %i.fj, ptr %i.fh, align 8, !tbaa !64
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
  %wide.load = load <2 x double>, ptr %i.fm, align 8, !tbaa !64, !alias.scope !1370
  %wide.load386 = load <2 x double>, ptr %i.fn, align 8, !tbaa !64, !alias.scope !1370
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %index ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load387 = load <2 x double>, ptr %i.fo, align 8, !tbaa !64, !alias.scope !1373, !noalias !1370
  %wide.load388 = load <2 x double>, ptr %i.fp, align 8, !tbaa !64, !alias.scope !1373, !noalias !1370
  %i.fq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %wide.load387)
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load386, <2 x double> %wide.load388)
  store <2 x double> %i.fq, ptr %i.fo, align 8, !tbaa !64, !alias.scope !1373, !noalias !1370
  store <2 x double> %i.fr, ptr %i.fp, align 8, !tbaa !64, !alias.scope !1373, !noalias !1370
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !1375

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us, %middle.block
  %.0130300.us.us.us.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0130300.us.us.us = phi i64 [ %i.fy, %scalar.ph ], [ %.0130300.us.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.0130300.us.us.us
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.0130300.us.us.us ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !64
  %i.fx = call double @llvm.fmuladd.f64(double %i.fl, double %i.fu, double %i.fw)
  store double %i.fx, ptr %i.fv, align 8, !tbaa !64
  %i.fy = add nuw nsw i64 %.0130300.us.us.us, 1   ; 2 uses
  %i.fz = icmp slt i64 %i.fy, %i.dy
  br i1 %i.fz, label %scalar.ph, label %._crit_edge.us.us.us, !llvm.loop !1376

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %i.ga = add nuw nsw i64 %.0131301.us.us.us, 1   ; 2 uses
  %i.gb = icmp slt i64 %i.ga, %i.cx
  br i1 %i.gb, label %.lr.ph.us.us.us, label %._crit_edge304.us.us, !llvm.loop !1377

._crit_edge309.us.us:                             ; preds = %bb.ac
  %i.gc = add nuw nsw i64 %.0134310.us.us, %.     ; 2 uses
  %i.gd = icmp slt i64 %i.gc, %1
  %indvar.next378 = add i64 %indvar377, 1
  br i1 %i.gd, label %.lr.ph308.us.us, label %._crit_edge313.us, !llvm.loop !1378

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
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %.body

.split320.us.split.us:                            ; preds = %bb.z
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body

.split323.us.split.us:                            ; preds = %bb.aa
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.body

.loopexit:                                        ; preds = %bb.an
  %.sroa.speculated221 = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.go)
  %i.gk = sub nsw i64 %i.go, %i.b                 ; 2 uses
  %i.gl = icmp sgt i64 %i.gk, 0
  br i1 %i.gl, label %.lr.ph, label %._crit_edge, !llvm.loop !1365

._crit_edge:                                      ; preds = %.loopexit, %._crit_edge313.us, %.lr.ph328.split.preheader, %bb.r, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.ag, label %bb.ad, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.ad:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ae) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.ad
  br i1 %i.s, label %bb.ae, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit200

bb.ae:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #23
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
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0325
  store ptr %gep, ptr %14, align 8
  store i64 %3, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated221376, i64 noundef %.sroa.speculated, i64 noundef 0, i64 noundef 0)
          to label %bb.aj unwind label %.split

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.gs = getelementptr [8 x i8], ptr %4, i64 %.0325
  store ptr %i.gs, ptr %15, align 8
  store i64 %6, ptr %i.au, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated, i64 noundef %.sroa.speculated221376, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ak unwind label %.split336

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.an

.split:                                           ; preds = %bb.ai
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.split.us334, %.split
  %.us-phi = phi { ptr, i32 } [ %i.gt, %.split ], [ %i.gf, %.split.us334 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.body

.split336:                                        ; preds = %bb.aj
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.split336.us, %.split336
  %.us-phi337 = phi { ptr, i32 } [ %i.gu, %.split336 ], [ %i.gg, %.split336.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %.body

bb.an:                                            ; preds = %bb.ak, %bb.ah
  %i.gv = add nsw i64 %.0325, %.sroa.speculated246 ; 2 uses
  %i.gw = icmp slt i64 %i.gv, %i.go
  br i1 %i.gw, label %bb.ah, label %.loopexit, !llvm.loop !1364

.body:                                            ; preds = %.split.us.split.us, %.split323.us.split.us, %.split320.us.split.us, %bb.am, %bb.al, %bb.p
  %.pn164.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %.us-phi, %bb.al ], [ %i.gi, %.split320.us.split.us ], [ %.us-phi337, %bb.am ], [ %i.gh, %.split.us.split.us ], [ %i.gj, %.split323.us.split.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %i.ag, label %bb.ao, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205

bb.ao:                                            ; preds = %.body
  call void @free(ptr noundef %i.ae) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205: ; preds = %.body, %bb.ao, %bb.ag, %bb.af
  %.pn164.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.af ], [ %i.gn, %bb.ag ], [ %.pn164.pn.pn.pn, %bb.ao ], [ %.pn164.pn.pn.pn, %.body ]
  br i1 %i.s, label %bb.ap, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit206

bb.ap:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205
  call void @free(ptr noundef %i.q) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit206

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit206: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit205, %bb.ap
  resume { ptr, i32 } %.pn164.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS6_EES3_Li0EEEKNS_9ReplicateINS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEELi0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISR_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS6_EES3_Li0EEEKNS_9ReplicateINS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEELi0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSM_RKSO_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateINS0_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEELi0EEEEERKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.bn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.b) #23
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateINS0_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEELi0EEEEERKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.c = load ptr, ptr %5, align 8, !tbaa !9      ; 8 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !75   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !75
  %.not.i.i.i.i = icmp eq i64 %i.j, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not8.i.i.i.i = icmp eq i64 %i.l, %i.h
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not8.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateINS0_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEELi0EEEEERKT_.exit
  %i.m = icmp eq i64 %i.f, 0
  %i.n = icmp eq i64 %i.h, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sdiv i64 9223372036854775807, %i.h
  %i.p = icmp sgt i64 %i.f, %i.o
  br i1 %i.p, label %.noexc.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.q = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.r = mul nsw i64 %i.h, %i.f
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.r, i64 noundef %i.f, i64 noundef %i.h)
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !75
  %.pre20.i.i.i = load i64, ptr %i.k, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %.noexc4, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateINS0_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEELi0EEEEERKT_.exit
  %i.s = phi i64 [ %.pre20.i.i.i, %.noexc4 ], [ %i.h, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateINS0_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEELi0EEEEERKT_.exit ]
  %i.t = phi i64 [ %.pre.i.i.i, %.noexc4 ], [ %i.f, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateINS0_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEELi0EEEEERKT_.exit ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !9      ; 8 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = mul nsw i64 %i.t, %i.s                   ; 7 uses
  %i.x = sdiv i64 %i.w, 2
  %i.y = shl nsw i64 %i.x, 1                      ; 6 uses
  %i.z = icmp sgt i64 %i.w, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.aa = icmp slt i64 %i.y, %i.w
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %i.ab = sub i64 %i.w, %i.y                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  %i.ac = sub i64 %i.d, %i.v
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  %i.ad = add i64 %i.y, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add i64 %i.y, %index                    ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !64
  %wide.load10 = load <2 x double>, ptr %i.ah, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x double> %wide.load, ptr %i.af, align 8, !tbaa !64
  store <2 x double> %wide.load10, ptr %i.ai, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1379

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ] ; 4 uses
  %i.ak = sub i64 %i.w, %.05.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader11 ]
  %i.al = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05.i.i.i.i.i.prol
  %i.am = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.prol
  %i.an = load double, ptr %i.am, align 8, !tbaa !64
  store double %i.an, ptr %i.al, align 8, !tbaa !64
  %i.ao = add nsw i64 %.05.i.i.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1380

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader11
  %.05.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %i.ap = sub i64 %.05.i.i.i.i.i.ph, %i.w
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05.i.i.i.i.i
  %i.as = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i
  %i.at = load double, ptr %i.as, align 8, !tbaa !64
  store double %i.at, ptr %i.ar, align 8, !tbaa !64
  %i.au = add nsw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.au
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !64
  store double %i.ax, ptr %i.av, align 8, !tbaa !64
  %i.ay = add nsw i64 %.05.i.i.i.i.i, 2           ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !64
  store double %i.bb, ptr %i.az, align 8, !tbaa !64
  %i.bc = add nsw i64 %.05.i.i.i.i.i, 3           ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.bc
  %i.be = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bc
  %i.bf = load double, ptr %i.be, align 8, !tbaa !64
  store double %i.bf, ptr %i.bd, align 8, !tbaa !64
  %i.bg = add nsw i64 %.05.i.i.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bg, %i.w
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1381

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.011.i.i.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.011.i.i.i.i
  %i.bj = load <2 x double>, ptr %i.bi, align 16, !tbaa !91
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !91
  %i.bk = add nuw nsw i64 %.011.i.i.i.i, 2        ; 2 uses
  %i.bl = icmp slt i64 %i.bk, %i.y
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !92

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i
  %i.bm = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.bm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, %.noexc.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.bo) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS6_EES3_Li0EEEKNS_9ReplicateINS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEELi0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSM_RKSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1382, !nonnull !71, !align !122 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !128  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i64, ptr %i.e, align 8, !tbaa !138  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !75
  %.not = icmp eq i64 %i.h, %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %.not11 = icmp eq i64 %i.j, %i.f
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.d, 0
  %i.l = icmp eq i64 %i.f, 0
  %or.cond.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i64 9223372036854775807, %i.f
  %i.n = icmp sgt i64 %i.d, %i.m
  br i1 %i.n, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.b, %bb.c
  %i.p = mul nsw i64 %i.f, %i.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p, i64 noundef %i.d, i64 noundef %i.f)
  %.pre = load ptr, ptr %1, align 8, !tbaa !1382
  %.pre13 = load i64, ptr %i.g, align 8, !tbaa !75
  %.pre14 = load i64, ptr %i.i, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.q = phi i64 [ %i.f, %bb.a ], [ %.pre14, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ]
  %i.r = phi i64 [ %i.d, %bb.a ], [ %.pre13, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ]
  %i.s = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = mul nsw i64 %i.q, %i.r                   ; 2 uses
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i: ; preds = %bb.e
  %i.w = load ptr, ptr %0, align 8, !tbaa !9
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.u, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !64
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES3_Li0EEEKNS_9ReplicateINS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(65) %i.t, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS4_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES1_Li0EEEKNS_9ReplicateINS0_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERKT_.exit.i.i.i unwind label %bb.f

common.resume.i.i.i:                              ; preds = %bb.g, %bb.f
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.z, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.f:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %4, align 8, !tbaa !9
  call void @free(ptr noundef %i.y) #23
  br label %common.resume.i.i.i

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS4_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES1_Li0EEEKNS_9ReplicateINS0_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERKT_.exit.i.i.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @_ZN5Eigen8internal30sparse_time_dense_product_implINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dLi0ELb1EE3runERKS3_RKS5_RS5_RKd(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5Eigen8internal25generic_product_impl_baseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS3_EENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_9ReplicateINSD_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEENS0_20generic_product_implIS3_SL_NS_11SparseShapeENS_10DenseShapeELi8EEEE6evalToISE_EEvRT_RSB_RKSL_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS4_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES1_Li0EEEKNS_9ReplicateINS0_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERKT_.exit.i.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %4, align 8, !tbaa !9
  call void @free(ptr noundef %i.aa) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume.i.i.i

_ZN5Eigen8internal25generic_product_impl_baseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS3_EENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_9ReplicateINSD_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEENS0_20generic_product_implIS3_SL_NS_11SparseShapeENS_10DenseShapeELi8EEEE6evalToISE_EEvRT_RSB_RKSL_.exit: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS4_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES1_Li0EEEKNS_9ReplicateINS0_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEERKT_.exit.i.i.i
  %i.ab = load ptr, ptr %4, align 8, !tbaa !9
  call void @free(ptr noundef %i.ab) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES3_Li0EEEKNS_9ReplicateINS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.1178", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELi8ENS_11SparseShapeENS_10DenseShapeEddEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !792, !nonnull !71, !align !122 ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !61
  store ptr %i.g, ptr %i.f, align 8, !tbaa !559
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !138
  %i.m = mul nsw i64 %i.l, %i.j                   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !138  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !75
  %.not.i = icmp eq i64 %i.q, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %.not8.i = icmp eq i64 %i.s, %i.o
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = icmp eq i64 %i.m, 0
  %i.u = icmp eq i64 %i.o, 0
  %or.cond.i.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = sdiv i64 9223372036854775807, %i.o
  %i.w = icmp sgt i64 %i.m, %i.v
  br i1 %i.w, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.d:                                             ; preds = %bb.c
  %i.x = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.y = mul nsw i64 %i.o, %i.m
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.y, i64 noundef %i.m, i64 noundef %i.o)
          to label %thread-pre-split unwind label %bb.f

thread-pre-split:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %.pr = load i64, ptr %i.r, align 8, !tbaa !76
  %.pre = load i64, ptr %i.p, align 8, !tbaa !75
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.a
  %i.z = phi i64 [ %.pre, %thread-pre-split ], [ %i.m, %bb.a ] ; 6 uses
  %i.aa = phi i64 [ %.pr, %thread-pre-split ], [ %i.o, %bb.a ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !9
  %i.ac = icmp sgt i64 %i.aa, 0
  %i.ad = icmp sgt i64 %i.z, 0
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES5_Li0EEEKNS_9ReplicateINS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSS_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !244
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !172
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !138 ; 3 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !241 ; 3 uses
  %xtraiter = and i64 %i.z, 1
  %i.aj = icmp eq i64 %i.z, 1
  %unroll_iter = and i64 %i.z, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod18 = trunc i64 %i.z to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0812.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 3 uses
  %i.ak = mul nuw nsw i64 %.0812.i, %i.z
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.ak ; 3 uses
  %i.al = mul nsw i64 %.0812.i, %i.ag
  %invariant.gep10.i = getelementptr [8 x i8], ptr %i.af, i64 %i.al ; 3 uses
  br i1 %i.aj, label %.epil.preheader, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %.09.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.bd, %._crit_edge.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod18)
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i.epil.init
  %gep11.i.epil = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %.09.i.epil.init
  %i.am = srem i64 %.09.i.epil.init, %i.ah
  %i.an = getelementptr [8 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !64
  %i.ap = load double, ptr %gep11.i.epil, align 8, !tbaa !64
  %i.aq = fadd double %i.ao, %i.ap
  store double %i.aq, ptr %gep.i.epil, align 8, !tbaa !64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.ar = add nuw nsw i64 %.0812.i, 1             ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.ar, %i.aa
  br i1 %exitcond14.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES5_Li0EEEKNS_9ReplicateINS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSS_.exit, label %.preheader.i, !llvm.loop !1386

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.09.i = phi i64 [ %i.bd, %.preheader.i.new ], [ 0, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i
  %gep11.i = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %.09.i
  %i.as = srem i64 %.09.i, %i.ah
  %i.at = getelementptr [8 x i8], ptr %i.ai, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !64
  %i.av = load double, ptr %gep11.i, align 8, !tbaa !64
  %i.aw = fadd double %i.au, %i.av
  store double %i.aw, ptr %gep.i, align 8, !tbaa !64
  %i.ax = or disjoint i64 %.09.i, 1               ; 3 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ax
  %gep11.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.ax
  %i.ay = srem i64 %i.ax, %i.ah
  %i.az = getelementptr [8 x i8], ptr %i.ai, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !64
  %i.bb = load double, ptr %gep11.i.1, align 8, !tbaa !64
  %i.bc = fadd double %i.ba, %i.bb
  store double %i.bc, ptr %gep.i.1, align 8, !tbaa !64
  %i.bd = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !1387

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES5_Li0EEEKNS_9ReplicateINS4_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSS_.exit: ; preds = %._crit_edge.i, %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !9
  call void @free(ptr noundef %i.bf) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.d
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !9
  call void @free(ptr noundef %i.bi) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.bg
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELi8ENS_11SparseShapeENS_10DenseShapeEddEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::CwiseUnaryOp", align 8 ; 5 uses
  %i.a = alloca double, align 8                   ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 -1, ptr %i.b, align 8, !tbaa !172
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !794, !nonnull !71, !align !122
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !128  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1388, !nonnull !71, !align !122
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !76   ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.l = icmp eq i64 %i.g, 0
  %i.m = icmp eq i64 %i.k, 0
  %or.cond.i.i.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = sdiv i64 9223372036854775807, %i.k
  %i.o = icmp sgt i64 %i.g, %i.n
  br i1 %i.o, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.b, %bb.a
  %i.q = mul nsw i64 %i.k, %i.g
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.q, i64 noundef %i.g, i64 noundef %i.k)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !9
  tail call void @free(ptr noundef %i.s) #23
  br label %.body

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !9    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !75   ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !170
  store i64 %i.v, ptr %i.b, align 8, !tbaa !172
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !1388, !nonnull !71, !align !122
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !76
  %i.z = mul nsw i64 %i.y, %i.v                   ; 2 uses
  %i.aa = icmp slt i64 %i.z, 1
  br i1 %i.aa, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i: ; preds = %bb.e
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !64
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ab = load i8, ptr %1, align 8
  store i8 %i.ab, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !794, !nonnull !71, !align !122
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !111
  invoke void @_ZN5Eigen8internal30sparse_time_dense_product_implINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_dLi0ELb1EE3runERKS8_RKSA_RSA_RKd(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !9
  call void @free(ptr noundef %i.af) #23
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !138  ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.b, %bb.a
  %i.i = mul nsw i64 %i.d, %i.b
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.b, i64 noundef %i.d)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.g

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.j = load ptr, ptr %1, align 8, !tbaa !1389, !nonnull !71, !align !122 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !75
  %i.n = load i64, ptr %i.a, align 8, !tbaa !14   ; 6 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !138  ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !75
  %.not.i.i.i.i.i = icmp eq i64 %i.q, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %.not8.i.i.i.i.i = icmp eq i64 %i.s, %i.o
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not8.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.t = icmp eq i64 %i.n, 0
  %i.u = icmp eq i64 %i.o, 0
  %or.cond.i.i.i.i.i.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = sdiv i64 9223372036854775807, %i.o
  %i.w = icmp sgt i64 %i.n, %i.v
  br i1 %i.w, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

.noexc.i.i.i.i.invoke:                            ; preds = %bb.d, %bb.b
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc.i.i.i.i.cont unwind label %bb.g

.noexc.i.i.i.i.cont:                              ; preds = %.noexc.i.i.i.i.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.y = mul nsw i64 %i.o, %i.n
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.y, i64 noundef %i.n, i64 noundef %i.o)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  %.pr.i.i.i.i = load i64, ptr %i.r, align 8, !tbaa !76
  %.pre.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !75
  br label %bb.e

bb.e:                                             ; preds = %.noexc6, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.z = phi i64 [ %.pre.i.i.i.i, %.noexc6 ], [ %i.n, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 5 uses
  %i.aa = phi i64 [ %.pr.i.i.i.i, %.noexc6 ], [ %i.o, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !9
  %i.ac = icmp sgt i64 %i.aa, 0
  %i.ad = icmp sgt i64 %i.z, 0
  %or.cond.i.i.i.i = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i.i, label %.preheader.lr.ph.split.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit

.preheader.lr.ph.split.i.i.i.i.i:                 ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !62 ; 5 uses
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.ag = icmp ult i64 %i.z, 4
  %unroll_iter = and i64 %i.z, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod14 = icmp ne i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i.i, %.preheader.lr.ph.split.i.i.i.i.i
  %.0812.i.i.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i.i.i ], [ %i.ao, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ah = mul nuw nsw i64 %.0812.i.i.i.i.i, %i.z
  %invariant.gep.i.i.i.i.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.ah ; 5 uses
  %i.ai = mul nsw i64 %.0812.i.i.i.i.i, %i.m
  %invariant.gep10.i.i.i.i.i = getelementptr [8 x i8], ptr %i.k, i64 %i.ai ; 5 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader.i.i.i.i.i.new

._crit_edge.i.i.i.i.i.unr-lcssa:                  ; preds = %.preheader.i.i.i.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i
  %.09.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i ], [ %i.bi, %._crit_edge.i.i.i.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod14)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.09.i.i.i.i.i.epil = phi i64 [ %.09.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.an, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %gep.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.09.i.i.i.i.i.epil
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.09.i.i.i.i.i.epil
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !63
  %i.al = sext i32 %i.ak to i64
  %gep11.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.al
  %i.am = load double, ptr %gep11.i.i.i.i.i.epil, align 8, !tbaa !64
  store double %i.am, ptr %gep.i.i.i.i.i.epil, align 8, !tbaa !64
  %i.an = add nuw nsw i64 %.09.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i, label %bb.f, !llvm.loop !1391

._crit_edge.i.i.i.i.i:                            ; preds = %bb.f, %._crit_edge.i.i.i.i.i.unr-lcssa
  %i.ao = add nuw nsw i64 %.0812.i.i.i.i.i, 1     ; 2 uses
  %exitcond14.not.i.i.i.i.i = icmp eq i64 %i.ao, %i.aa
  br i1 %exitcond14.not.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i, !llvm.loop !1392

.preheader.i.i.i.i.i.new:                         ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i.new
  %.09.i.i.i.i.i = phi i64 [ %i.bi, %.preheader.i.i.i.i.i.new ], [ 0, %.preheader.i.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.i.i.i.i.i.new ], [ 0, %.preheader.i.i.i.i.i ]
  %gep.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.09.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.09.i.i.i.i.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !63
  %i.ar = sext i32 %i.aq to i64
  %gep11.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.ar
  %i.as = load double, ptr %gep11.i.i.i.i.i, align 8, !tbaa !64
  store double %i.as, ptr %gep.i.i.i.i.i, align 8, !tbaa !64
  %i.at = or disjoint i64 %.09.i.i.i.i.i, 1       ; 2 uses
  %gep.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.at
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !63
  %i.aw = sext i32 %i.av to i64
  %gep11.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.aw
  %i.ax = load double, ptr %gep11.i.i.i.i.i.1, align 8, !tbaa !64
  store double %i.ax, ptr %gep.i.i.i.i.i.1, align 8, !tbaa !64
  %i.ay = or disjoint i64 %.09.i.i.i.i.i, 2       ; 2 uses
  %gep.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.ay
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !63
  %i.bb = sext i32 %i.ba to i64
  %gep11.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.bb
  %i.bc = load double, ptr %gep11.i.i.i.i.i.2, align 8, !tbaa !64
  store double %i.bc, ptr %gep.i.i.i.i.i.2, align 8, !tbaa !64
  %i.bd = or disjoint i64 %.09.i.i.i.i.i, 3       ; 2 uses
  %gep.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.bd
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !63
  %i.bg = sext i32 %i.bf to i64
  %gep11.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.bg
  %i.bh = load double, ptr %gep11.i.i.i.i.i.3, align 8, !tbaa !64
  store double %i.bh, ptr %gep.i.i.i.i.i.3, align 8, !tbaa !64
  %i.bi = add nuw nsw i64 %.09.i.i.i.i.i, 4       ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.new, !llvm.loop !1393

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_11IndexedViewIKS2_NS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.e
  ret void

bb.g:                                             ; preds = %.noexc.i.i.i.i.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @free(ptr noundef %i.bk) #23
  resume { ptr, i32 } %i.bj
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS3_EEKNS4_INS0_13scalar_sum_opIddEEKNS_9ReplicateIS3_Lin1ELin1EEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.1191", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !129
  store double %i.c, ptr %i.a, align 8, !tbaa !129
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !798, !nonnull !71, !align !122 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !170
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = load <2 x i64>, ptr %i.i, align 8, !tbaa !187
  %i.n = load i64, ptr %i.i, align 8, !tbaa !75
  store i64 %i.n, ptr %i.j, align 8, !tbaa !172
  store <2 x i64> %i.m, ptr %i.k, align 8, !tbaa !138
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELi8ENS_11SparseShapeENS_10DenseShapeEddEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !810, !nonnull !71, !align !122
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !128  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !812, !nonnull !71, !align !122
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !76   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !75
  %.not.i = icmp eq i64 %i.y, %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %.not8.i = icmp eq i64 %i.aa, %i.w
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = icmp eq i64 %i.s, 0
  %i.ac = icmp eq i64 %i.w, 0
  %or.cond.i.i.i = or i1 %i.ab, %i.ac
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = sdiv i64 9223372036854775807, %i.w
  %i.ae = icmp sgt i64 %i.s, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.d:                                             ; preds = %bb.c
  %i.af = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.ag = mul nsw i64 %i.w, %i.s
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ag, i64 noundef %i.s, i64 noundef %i.w)
          to label %thread-pre-split unwind label %bb.f

thread-pre-split:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %.pr = load i64, ptr %i.z, align 8, !tbaa !76
  %.pre = load i64, ptr %i.x, align 8, !tbaa !75
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.a
  %i.ah = phi i64 [ %.pre, %thread-pre-split ], [ %i.s, %bb.a ] ; 6 uses
  %i.ai = phi i64 [ %.pr, %thread-pre-split ], [ %i.w, %bb.a ] ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ak = icmp sgt i64 %i.ai, 0
  %i.al = icmp sgt i64 %i.ah, 0
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS5_EEKNS7_INS0_13scalar_sum_opIddEEKNS_9ReplicateIS5_Lin1ELin1EEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES5_Li0EEEEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSW_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.an = load i64, ptr %i.k, align 8, !tbaa !138 ; 3 uses
  %i.ao = load i64, ptr %i.l, align 8, !tbaa !138
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !244
  %i.aq = load i64, ptr %i.j, align 8, !tbaa !172
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !244
  %i.as = load i64, ptr %i.am, align 8, !tbaa !172
  %xtraiter = and i64 %i.ah, 1
  %i.at = icmp eq i64 %i.ah, 1
  %unroll_iter = and i64 %i.ah, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod18 = trunc i64 %i.ah to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0814.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.be, %._crit_edge.i ] ; 4 uses
  %i.au = mul nuw nsw i64 %.0814.i, %i.ah
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.aj, i64 %i.au ; 3 uses
  %i.av = srem i64 %.0814.i, %i.ao
  %i.aw = mul nsw i64 %i.av, %i.aq
  %invariant.gep10.i = getelementptr [8 x i8], ptr %i.ap, i64 %i.aw ; 3 uses
  %i.ax = mul nsw i64 %.0814.i, %i.as
  %invariant.gep12.i = getelementptr [8 x i8], ptr %i.ar, i64 %i.ax ; 3 uses
  br i1 %i.at, label %.epil.preheader, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %.09.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.bs, %._crit_edge.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod18)
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i.epil.init
  %i.ay = load double, ptr %i.a, align 8, !tbaa !129
  %i.az = srem i64 %.09.i.epil.init, %i.an
  %gep11.i.epil = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.az
  %i.ba = load double, ptr %gep11.i.epil, align 8, !tbaa !64
  %gep13.i.epil = getelementptr [8 x i8], ptr %invariant.gep12.i, i64 %.09.i.epil.init
  %i.bb = load double, ptr %gep13.i.epil, align 8, !tbaa !64
  %i.bc = fadd double %i.ba, %i.bb
  %i.bd = fmul double %i.ay, %i.bc
  store double %i.bd, ptr %gep.i.epil, align 8, !tbaa !64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.be = add nuw nsw i64 %.0814.i, 1             ; 2 uses
  %exitcond16.not.i = icmp eq i64 %i.be, %i.ai
  br i1 %exitcond16.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS5_EEKNS7_INS0_13scalar_sum_opIddEEKNS_9ReplicateIS5_Lin1ELin1EEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES5_Li0EEEEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSW_.exit, label %.preheader.i, !llvm.loop !1394

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.09.i = phi i64 [ %i.bs, %.preheader.i.new ], [ 0, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i
  %i.bf = load double, ptr %i.a, align 8, !tbaa !129
  %i.bg = srem i64 %.09.i, %i.an
  %gep11.i = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.bg
  %i.bh = load double, ptr %gep11.i, align 8, !tbaa !64
  %gep13.i = getelementptr [8 x i8], ptr %invariant.gep12.i, i64 %.09.i
  %i.bi = load double, ptr %gep13.i, align 8, !tbaa !64
  %i.bj = fadd double %i.bh, %i.bi
  %i.bk = fmul double %i.bf, %i.bj
  store double %i.bk, ptr %gep.i, align 8, !tbaa !64
  %i.bl = or disjoint i64 %.09.i, 1               ; 3 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bl
  %i.bm = load double, ptr %i.a, align 8, !tbaa !129
  %i.bn = srem i64 %i.bl, %i.an
  %gep11.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.bn
  %i.bo = load double, ptr %gep11.i.1, align 8, !tbaa !64
  %gep13.i.1 = getelementptr [8 x i8], ptr %invariant.gep12.i, i64 %i.bl
  %i.bp = load double, ptr %gep13.i.1, align 8, !tbaa !64
  %i.bq = fadd double %i.bo, %i.bp
  %i.br = fmul double %i.bm, %i.bq
  store double %i.br, ptr %gep.i.1, align 8, !tbaa !64
  %i.bs = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !1395

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS5_EEKNS7_INS0_13scalar_sum_opIddEEKNS_9ReplicateIS5_Lin1ELin1EEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES5_Li0EEEEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSW_.exit: ; preds = %._crit_edge.i, %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !9
  call void @free(ptr noundef %i.bu) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !9
  call void @free(ptr noundef %i.bx) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.bv
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEEKNS7_INS7_IS9_S9_Li2EEES3_Li0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISK_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN5Eigen8internal30assignment_from_xpr_op_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS4_INS4_IS6_S6_Li2EEES3_Li0EEENS0_9assign_opIddEENS0_13sub_assign_opIddEEE3runINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS7_KS9_EESB_EEvRS3_RKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES1_Li0EEEKNS7_INS7_IS9_S9_Li2EEES1_Li0EEEEEEERKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.bn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.b) #23
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES1_Li0EEEKNS7_INS7_IS9_S9_Li2EEES1_Li0EEEEEEERKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.c = load ptr, ptr %5, align 8, !tbaa !9      ; 8 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !75   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !75
  %.not.i.i.i.i = icmp eq i64 %i.j, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not8.i.i.i.i = icmp eq i64 %i.l, %i.h
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not8.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES1_Li0EEEKNS7_INS7_IS9_S9_Li2EEES1_Li0EEEEEEERKT_.exit
  %i.m = icmp eq i64 %i.f, 0
  %i.n = icmp eq i64 %i.h, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sdiv i64 9223372036854775807, %i.h
  %i.p = icmp sgt i64 %i.f, %i.o
  br i1 %i.p, label %.noexc.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.q = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.r = mul nsw i64 %i.h, %i.f
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.r, i64 noundef %i.f, i64 noundef %i.h)
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !75
  %.pre20.i.i.i = load i64, ptr %i.k, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %.noexc4, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES1_Li0EEEKNS7_INS7_IS9_S9_Li2EEES1_Li0EEEEEEERKT_.exit
  %i.s = phi i64 [ %.pre20.i.i.i, %.noexc4 ], [ %i.h, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES1_Li0EEEKNS7_INS7_IS9_S9_Li2EEES1_Li0EEEEEEERKT_.exit ]
  %i.t = phi i64 [ %.pre.i.i.i, %.noexc4 ], [ %i.f, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS_7ProductINS_12SparseMatrixIdLi0EiEES1_Li0EEEKNS7_INS7_IS9_S9_Li2EEES1_Li0EEEEEEERKT_.exit ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !9      ; 8 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = mul nsw i64 %i.t, %i.s                   ; 7 uses
  %i.x = sdiv i64 %i.w, 2
  %i.y = shl nsw i64 %i.x, 1                      ; 6 uses
  %i.z = icmp sgt i64 %i.w, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.aa = icmp slt i64 %i.y, %i.w
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %i.ab = sub i64 %i.w, %i.y                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  %i.ac = sub i64 %i.d, %i.v
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  %i.ad = add i64 %i.y, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add i64 %i.y, %index                    ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !64
  %wide.load10 = load <2 x double>, ptr %i.ah, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x double> %wide.load, ptr %i.af, align 8, !tbaa !64
  store <2 x double> %wide.load10, ptr %i.ai, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ] ; 4 uses
  %i.ak = sub i64 %i.w, %.05.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader11 ]
  %i.al = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05.i.i.i.i.i.prol
  %i.am = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.prol
  %i.an = load double, ptr %i.am, align 8, !tbaa !64
  store double %i.an, ptr %i.al, align 8, !tbaa !64
  %i.ao = add nsw i64 %.05.i.i.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1397

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader11
  %.05.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %i.ap = sub i64 %.05.i.i.i.i.i.ph, %i.w
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05.i.i.i.i.i
  %i.as = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i
  %i.at = load double, ptr %i.as, align 8, !tbaa !64
  store double %i.at, ptr %i.ar, align 8, !tbaa !64
  %i.au = add nsw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.au
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !64
  store double %i.ax, ptr %i.av, align 8, !tbaa !64
  %i.ay = add nsw i64 %.05.i.i.i.i.i, 2           ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !64
  store double %i.bb, ptr %i.az, align 8, !tbaa !64
  %i.bc = add nsw i64 %.05.i.i.i.i.i, 3           ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.bc
  %i.be = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bc
  %i.bf = load double, ptr %i.be, align 8, !tbaa !64
  store double %i.bf, ptr %i.bd, align 8, !tbaa !64
  %i.bg = add nsw i64 %.05.i.i.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bg, %i.w
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1398

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.011.i.i.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.011.i.i.i.i
  %i.bj = load <2 x double>, ptr %i.bi, align 16, !tbaa !91
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !91
  %i.bk = add nuw nsw i64 %.011.i.i.i.i, 2        ; 2 uses
  %i.bl = icmp slt i64 %i.bk, %i.y
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !92

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i
  %i.bm = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.bm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, %.noexc.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.bo) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal30assignment_from_xpr_op_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS4_INS4_IS6_S6_Li2EEES3_Li0EEENS0_9assign_opIddEENS0_13sub_assign_opIddEEE3runINS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS7_KS9_EESB_EEvRS3_RKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !810, !nonnull !71, !align !122 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !128  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !812, !nonnull !71, !align !122 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !76   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !75
  %.not.i.i = icmp eq i64 %i.k, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %.not11.i.i = icmp eq i64 %i.m, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not11.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i64 %i.e, 0
  %i.o = icmp eq i64 %i.i, 0
  %or.cond.i.i.i.i = or i1 %i.n, %i.o
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sdiv i64 9223372036854775807, %i.i
  %i.q = icmp sgt i64 %i.e, %i.p
  br i1 %i.q, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.c, %bb.b
  %i.s = mul nsw i64 %i.i, %i.e
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %i.e, i64 noundef %i.i)
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !810
  %.pre13.i.i = load ptr, ptr %i.f, align 8, !tbaa !812
  %.pre14.i.i = load i64, ptr %i.j, align 8, !tbaa !75
  %.pre15.i.i = load i64, ptr %i.l, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i, %bb.a
  %i.t = phi i64 [ %i.i, %bb.a ], [ %.pre15.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ]
  %i.u = phi i64 [ %i.e, %bb.a ], [ %.pre14.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ]
  %i.v = phi ptr [ %i.g, %bb.a ], [ %.pre13.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ]
  %i.w = phi ptr [ %i.c, %bb.a ], [ %.pre.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i ]
  %i.x = mul nsw i64 %i.u, %i.t                   ; 2 uses
  %i.y = icmp slt i64 %i.x, 1
  br i1 %i.y, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i: ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !9
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !64
  br label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEES3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit: ; preds = %bb.e, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !64
  call void @_ZN5Eigen8internal30sparse_time_dense_product_implINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dLi0ELb1EE3runERKS3_RKS5_RS5_RKd(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1399, !nonnull !71, !align !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !64
  call void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_11SparseShapeENS_10DenseShapeELi8EE13scaleAndAddToIS7_EEvRT_RKS5_RKS7_RKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal20generic_product_implINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_11SparseShapeENS_10DenseShapeELi8EE13scaleAndAddToIS7_EEvRT_RKS5_RKS7_RKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i8 0, ptr %4, align 8, !tbaa !830
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  invoke void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_7ProductIS3_S3_Li2EEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_7ProductIS1_S1_Li2EEEEERKNS_16SparseMatrixBaseIT_EE.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #23
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_7ProductIS1_S1_Li2EEEEERKNS_16SparseMatrixBaseIT_EE.exit: ; preds = %bb.a
  invoke void @_ZN5Eigen8internal30sparse_time_dense_product_implINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dLi0ELb1EE3runERKS3_RKS5_RS5_RKd(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5Eigen8internal25sparse_time_dense_productINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dEEvRKT_RKT0_RT1_RKT2_.exit unwind label %bb.f

_ZN5Eigen8internal25sparse_time_dense_productINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dEEvRKT_RKT0_RT1_RKT2_.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_7ProductIS1_S1_Li2EEEEERKNS_16SparseMatrixBaseIT_EE.exit
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !152
  call void @free(ptr noundef %i.e) #23
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !153
  call void @free(ptr noundef %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !150  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal25sparse_time_dense_productINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dEEvRKT_RKT0_RT1_RKT2_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.i) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5Eigen8internal25sparse_time_dense_productINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dEEvRKT_RKT0_RT1_RKT2_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !151  ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.l) #26
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.f:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_7ProductIS1_S1_Li2EEEEERKNS_16SparseMatrixBaseIT_EE.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1401, !nonnull !71, !align !122 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !135
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !138  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !138  ; 9 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !71, !align !122 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %0, align 8, !nonnull !71, !align !122 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !173  ; 3 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !138  ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !244  ; 3 uses
  %i.t = load i64, ptr %i.n, align 8, !tbaa !172  ; 3 uses
  %i.u = add nsw i64 %i.g, -1                     ; 2 uses
  %i.v = mul i64 %i.r, %i.u
  %i.w = add i64 %i.v, %i.j
  %i.x = shl i64 %i.w, 3
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.x
  %i.y = mul i64 %i.t, %i.u
  %i.z = add i64 %i.y, %i.j
  %i.aa = shl i64 %i.z, 3
  %scevgep66 = getelementptr i8, ptr %i.s, i64 %i.aa
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.q, %scevgep66
  %bound1 = icmp ult ptr %i.s, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ab = or i64 %i.t, %i.r
  %i.ac = and i64 %i.ab, 1152921504606846976
  %i.ad = icmp ne i64 %i.ac, 0
  %i.ae = or i1 %found.conflict, %i.ad
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.as, %._crit_edge.i ] ; 3 uses
  %i.af = mul nsw i64 %.0810.i, %i.r
  %i.ag = getelementptr [8 x i8], ptr %i.q, i64 %i.af ; 6 uses
  %i.ah = mul nsw i64 %.0810.i, %i.t
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.s, i64 %i.ah ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ae
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %wide.load = load <2 x double>, ptr %i.aj, align 8, !tbaa !64, !alias.scope !1403
  %wide.load68 = load <2 x double>, ptr %i.ak, align 8, !tbaa !64, !alias.scope !1403
  %i.al = getelementptr i8, ptr %i.ai, i64 16
  store <2 x double> %wide.load, ptr %i.ai, align 8, !tbaa !64, !alias.scope !1406, !noalias !1403
  store <2 x double> %wide.load68, ptr %i.al, align 8, !tbaa !64, !alias.scope !1406, !noalias !1403
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1408

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.prol = phi i64 [ %i.ap, %scalar.ph.prol ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.an = getelementptr [8 x i8], ptr %i.ag, i64 %.09.i.prol
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i.prol
  %i.ao = load double, ptr %gep.i.prol, align 8, !tbaa !64
  store double %i.ao, ptr %i.an, align 8, !tbaa !64
  %i.ap = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1409

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = sub nsw i64 %.09.i.ph, %i.j
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.as = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.as, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit, label %.preheader.i, !llvm.loop !1410

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.be, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.at = getelementptr [8 x i8], ptr %i.ag, i64 %.09.i
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i
  %i.au = load double, ptr %gep.i, align 8, !tbaa !64
  store double %i.au, ptr %i.at, align 8, !tbaa !64
  %i.av = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.ag, i64 %i.av
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.av
  %i.ax = load double, ptr %gep.i.1, align 8, !tbaa !64
  store double %i.ax, ptr %i.aw, align 8, !tbaa !64
  %i.ay = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ag, i64 %i.ay
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ay
  %i.ba = load double, ptr %gep.i.2, align 8, !tbaa !64
  store double %i.ba, ptr %i.az, align 8, !tbaa !64
  %i.bb = add nuw nsw i64 %.09.i, 3               ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %i.ag, i64 %i.bb
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bb
  %i.bd = load double, ptr %gep.i.3, align 8, !tbaa !64
  store double %i.bd, ptr %i.bc, align 8, !tbaa !64
  %i.be = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1411

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !138 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !138 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !802, !nonnull !71, !align !122
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !75
  %i.bn = and i64 %i.bm, 1
  %i.bo = icmp sgt i64 %i.bi, 0
  br i1 %i.bo, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bp = lshr exact i64 %i.d, 3
  %i.bq = and i64 %i.bp, 1
  %i.br = tail call i64 @llvm.smin.i64(i64 %i.bq, i64 %i.bg)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.eg, %._crit_edge ] ; 8 uses
  %.03552 = phi i64 [ %i.br, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 6 uses
  %i.bt = shl i64 %.03453, 3                      ; 2 uses
  %i.bu = sub i64 %i.bg, %.03552                  ; 2 uses
  %i.bv = and i64 %i.bu, -2                       ; 2 uses
  %i.bw = add nsw i64 %i.bv, %.03552              ; 6 uses
  %i.bx = icmp sgt i64 %.03552, 0
  br i1 %i.bx, label %.preheader43.loopexit, label %.preheader43

.preheader43.loopexit:                            ; preds = %bb.c
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !1412, !nonnull !71, !align !122 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !244
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !172
  %i.cc = mul nsw i64 %i.cb, %.03453
  %invariant.gep = getelementptr [8 x i8], ptr %i.bz, i64 %i.cc
  %i.cd = load ptr, ptr %0, align 8, !tbaa !1413, !nonnull !71, !align !122 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !173
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !138
  %i.ch = mul nsw i64 %i.cg, %.03453
  %i.ci = getelementptr [8 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = load double, ptr %invariant.gep, align 8, !tbaa !64
  store double %i.cj, ptr %i.ci, align 8, !tbaa !64
  br label %.preheader43

.preheader43:                                     ; preds = %.preheader43.loopexit, %bb.c
  %i.ck = icmp sgt i64 %i.bu, 1
  br i1 %i.ck, label %.lr.ph47, label %.preheader

.preheader:                                       ; preds = %.lr.ph47, %.preheader43
  %i.cl = icmp slt i64 %i.bw, %i.bg
  br i1 %i.cl, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1413, !nonnull !71, !align !122 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !173 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !138 ; 2 uses
  %i.cq = mul nsw i64 %i.cp, %.03453
  %i.cr = getelementptr [8 x i8], ptr %i.cn, i64 %i.cq ; 2 uses
  %i.cs = load ptr, ptr %i.bs, align 8, !tbaa !1412, !nonnull !71, !align !122 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !244 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !172 ; 2 uses
  %i.cw = mul nsw i64 %i.cv, %.03453
  %invariant.gep50 = getelementptr [8 x i8], ptr %i.ct, i64 %i.cw ; 2 uses
  %i.cx = add i64 %.03552, %i.bv
  %i.cy = sub i64 %i.bg, %i.cx                    ; 3 uses
  %min.iters.check71 = icmp ult i64 %i.cy, 10
  br i1 %min.iters.check71, label %scalar.ph70.preheader, label %vector.memcheck69

vector.memcheck69:                                ; preds = %.lr.ph49
  %i.cz = ptrtoaddr ptr %i.ct to i64
  %i.da = ptrtoaddr ptr %i.cn to i64
  %i.db = mul i64 %i.cp, %i.bt
  %i.dc = add i64 %i.db, %i.da
  %i.dd = mul i64 %i.cv, %i.bt
  %i.de = add i64 %i.dd, %i.cz
  %i.df = sub i64 %i.de, %i.dc
  %diff.check = icmp ugt i64 %i.df, -32
  br i1 %diff.check, label %scalar.ph70.preheader, label %vector.ph72

vector.ph72:                                      ; preds = %vector.memcheck69
  %n.vec73 = and i64 %i.cy, -4                    ; 3 uses
  %i.dg = add i64 %i.bw, %n.vec73
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph72
  %index75 = phi i64 [ 0, %vector.ph72 ], [ %index.next78, %vector.body74 ] ; 2 uses
  %i.dh = add i64 %i.bw, %index75                 ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.cr, i64 %i.dh ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %invariant.gep50, i64 %i.dh ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %wide.load76 = load <2 x double>, ptr %i.dj, align 8, !tbaa !64
  %wide.load77 = load <2 x double>, ptr %i.dk, align 8, !tbaa !64
  %i.dl = getelementptr i8, ptr %i.di, i64 16
  store <2 x double> %wide.load76, ptr %i.di, align 8, !tbaa !64
  store <2 x double> %wide.load77, ptr %i.dl, align 8, !tbaa !64
  %index.next78 = add nuw i64 %index75, 4         ; 2 uses
  %i.dm = icmp eq i64 %index.next78, %n.vec73
  br i1 %i.dm, label %middle.block79, label %vector.body74, !llvm.loop !1414

middle.block79:                                   ; preds = %vector.body74
  %cmp.n80 = icmp eq i64 %i.cy, %n.vec73
  br i1 %cmp.n80, label %._crit_edge, label %scalar.ph70.preheader

scalar.ph70.preheader:                            ; preds = %vector.memcheck69, %.lr.ph49, %middle.block79
  %.048.ph = phi i64 [ %i.bw, %vector.memcheck69 ], [ %i.bw, %.lr.ph49 ], [ %i.dg, %middle.block79 ]
  br label %scalar.ph70

.lr.ph47:                                         ; preds = %.preheader43, %.lr.ph47
  %.03246 = phi i64 [ %i.ec, %.lr.ph47 ], [ %.03552, %.preheader43 ] ; 3 uses
  %i.dn = load ptr, ptr %0, align 8, !tbaa !1413, !nonnull !71, !align !122 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !173
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !138
  %i.dr = mul nsw i64 %i.dq, %.03453
  %i.ds = getelementptr [8 x i8], ptr %i.do, i64 %i.dr
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %.03246
  %i.du = load ptr, ptr %i.bs, align 8, !tbaa !1412, !nonnull !71, !align !122 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !244
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %.03246
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !172
  %i.dz = mul nsw i64 %i.dy, %.03453
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dz
  %i.eb = load <2 x double>, ptr %i.ea, align 1, !tbaa !91
  store <2 x double> %i.eb, ptr %i.dt, align 16, !tbaa !91
  %i.ec = add nsw i64 %.03246, 2                  ; 2 uses
  %i.ed = icmp slt i64 %i.ec, %i.bw
  br i1 %i.ed, label %.lr.ph47, label %.preheader, !llvm.loop !1415

._crit_edge:                                      ; preds = %scalar.ph70, %middle.block79, %.preheader
  %i.ee = add nsw i64 %.03552, %i.bn
  %i.ef = srem i64 %i.ee, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bg, i64 %i.ef)
  %i.eg = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond57.not = icmp eq i64 %i.eg, %i.bi
  br i1 %exitcond57.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit, label %bb.c, !llvm.loop !1416

scalar.ph70:                                      ; preds = %scalar.ph70.preheader, %scalar.ph70
  %.048 = phi i64 [ %i.ej, %scalar.ph70 ], [ %.048.ph, %scalar.ph70.preheader ] ; 3 uses
  %i.eh = getelementptr [8 x i8], ptr %i.cr, i64 %.048
  %gep51 = getelementptr [8 x i8], ptr %invariant.gep50, i64 %.048
  %i.ei = load double, ptr %gep51, align 8, !tbaa !64
  store double %i.ei, ptr %i.eh, align 8, !tbaa !64
  %i.ej = add nsw i64 %.048, 1                    ; 2 uses
  %i.ek = icmp slt i64 %i.ej, %i.bg
  br i1 %i.ek, label %scalar.ph70, label %._crit_edge, !llvm.loop !1417

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSC_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal15call_assignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS6_EES3_Li0EEEKNS_9ReplicateIS3_Lin1ELin1EEEEELi0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_NS0_9enable_ifIXsr25evaluator_assume_aliasingISQ_EE5valueEPvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS6_EES3_Li0EEEKNS_9ReplicateIS3_Lin1ELin1EEEEELi0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSL_RKSN_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateIS1_Lin1ELin1EEEEELi0EEEEERKT_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.f, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.bn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.b) #23
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateIS1_Lin1ELin1EEEEELi0EEEEERKT_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.c = load ptr, ptr %5, align 8, !tbaa !9      ; 8 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !75   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !75
  %.not.i.i.i.i = icmp eq i64 %i.j, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not8.i.i.i.i = icmp eq i64 %i.l, %i.h
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not8.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateIS1_Lin1ELin1EEEEELi0EEEEERKT_.exit
  %i.m = icmp eq i64 %i.f, 0
  %i.n = icmp eq i64 %i.h, 0
  %or.cond.i.i.i.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sdiv i64 9223372036854775807, %i.h
  %i.p = icmp sgt i64 %i.f, %i.o
  br i1 %i.p, label %.noexc.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.q = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.r = mul nsw i64 %i.h, %i.f
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.r, i64 noundef %i.f, i64 noundef %i.h)
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i
  %.pre.i.i.i = load i64, ptr %i.i, align 8, !tbaa !75
  %.pre20.i.i.i = load i64, ptr %i.k, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %.noexc4, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateIS1_Lin1ELin1EEEEELi0EEEEERKT_.exit
  %i.s = phi i64 [ %.pre20.i.i.i, %.noexc4 ], [ %i.h, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateIS1_Lin1ELin1EEEEELi0EEEEERKT_.exit ]
  %i.t = phi i64 [ %.pre.i.i.i, %.noexc4 ], [ %i.f, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS3_INS_12CwiseUnaryOpINS7_18scalar_opposite_opIdEEKS5_EES1_Li0EEEKNS_9ReplicateIS1_Lin1ELin1EEEEELi0EEEEERKT_.exit ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !9      ; 8 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = mul nsw i64 %i.t, %i.s                   ; 7 uses
  %i.x = sdiv i64 %i.w, 2
  %i.y = shl nsw i64 %i.x, 1                      ; 6 uses
  %i.z = icmp sgt i64 %i.w, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.aa = icmp slt i64 %i.y, %i.w
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i
  %i.ab = sub i64 %i.w, %i.y                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  %i.ac = sub i64 %i.d, %i.v
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  %i.ad = add i64 %i.y, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add i64 %i.y, %index                    ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <2 x double>, ptr %i.ag, align 8, !tbaa !64
  %wide.load10 = load <2 x double>, ptr %i.ah, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <2 x double> %wide.load, ptr %i.af, align 8, !tbaa !64
  store <2 x double> %wide.load10, ptr %i.ai, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !1418

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.ph = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ad, %middle.block ] ; 4 uses
  %i.ak = sub i64 %i.w, %.05.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ak, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.prol
  %.05.i.i.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader11 ]
  %i.al = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05.i.i.i.i.i.prol
  %i.am = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i.prol
  %i.an = load double, ptr %i.am, align 8, !tbaa !64
  store double %i.an, ptr %i.al, align 8, !tbaa !64
  %i.ao = add nsw i64 %.05.i.i.i.i.i.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1419

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader11
  %.05.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ], [ %i.ao, %.lr.ph.i.i.i.i.i.prol ]
  %i.ap = sub i64 %.05.i.i.i.i.i.ph, %i.w
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.05.i.i.i.i.i
  %i.as = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.05.i.i.i.i.i
  %i.at = load double, ptr %i.as, align 8, !tbaa !64
  store double %i.at, ptr %i.ar, align 8, !tbaa !64
  %i.au = add nsw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.au
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.au
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !64
  store double %i.ax, ptr %i.av, align 8, !tbaa !64
  %i.ay = add nsw i64 %.05.i.i.i.i.i, 2           ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.ay
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ay
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !64
  store double %i.bb, ptr %i.az, align 8, !tbaa !64
  %i.bc = add nsw i64 %.05.i.i.i.i.i, 3           ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.bc
  %i.be = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bc
  %i.bf = load double, ptr %i.be, align 8, !tbaa !64
  store double %i.bf, ptr %i.bd, align 8, !tbaa !64
  %i.bg = add nsw i64 %.05.i.i.i.i.i, 4           ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bg, %i.w
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1420

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.011.i.i.i.i
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.011.i.i.i.i
  %i.bj = load <2 x double>, ptr %i.bi, align 16, !tbaa !91
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !91
  %i.bk = add nuw nsw i64 %.011.i.i.i.i, 2        ; 2 uses
  %i.bl = icmp slt i64 %i.bk, %i.y
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !92

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i
  %i.bm = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.bm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i, %.noexc.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %5, align 8, !tbaa !9
  call void @free(ptr noundef %i.bo) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS4_INS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS6_EES3_Li0EEEKNS_9ReplicateIS3_Lin1ELin1EEEEELi0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSL_RKSN_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1421, !nonnull !71, !align !122 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !128  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !798, !nonnull !71, !align !122
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !138
  %i.k = mul nsw i64 %i.j, %i.h                   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !75
  %.not = icmp eq i64 %i.m, %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %.not11 = icmp eq i64 %i.o, %i.k
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = icmp eq i64 %i.d, 0
  %i.q = icmp eq i64 %i.k, 0
  %or.cond.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = sdiv i64 9223372036854775807, %i.k
  %i.s = icmp sgt i64 %i.d, %i.r
  br i1 %i.s, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.d:                                             ; preds = %bb.c
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !73
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit: ; preds = %bb.b, %bb.c
  %i.u = mul nsw i64 %i.k, %i.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u, i64 noundef %i.d, i64 noundef %i.k)
  %.pre = load ptr, ptr %1, align 8, !tbaa !1421
  %.pre13 = load i64, ptr %i.l, align 8, !tbaa !75
  %.pre14 = load i64, ptr %i.n, align 8, !tbaa !76
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.v = phi i64 [ %i.k, %bb.a ], [ %.pre14, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ]
  %i.w = phi i64 [ %i.d, %bb.a ], [ %.pre13, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ]
  %i.x = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = mul nsw i64 %i.v, %i.w                   ; 2 uses
  %i.aa = icmp slt i64 %i.z, 1
  br i1 %i.aa, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i: ; preds = %bb.e
  %i.ab = load ptr, ptr %0, align 8, !tbaa !9
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !64
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES3_Li0EEEKNS_9ReplicateIS3_Lin1ELin1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(65) %i.y, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS4_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES1_Li0EEEKNS_9ReplicateIS1_Lin1ELin1EEEEEEERKT_.exit.i.i.i unwind label %bb.f

common.resume.i.i.i:                              ; preds = %bb.g, %bb.f
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %i.ae, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.f:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %4, align 8, !tbaa !9
  call void @free(ptr noundef %i.ad) #23
  br label %common.resume.i.i.i

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS4_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES1_Li0EEEKNS_9ReplicateIS1_Lin1ELin1EEEEEEERKT_.exit.i.i.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  invoke void @_ZN5Eigen8internal30sparse_time_dense_product_implINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_dLi0ELb1EE3runERKS3_RKS5_RS5_RKd(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN5Eigen8internal25generic_product_impl_baseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS3_EENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_9ReplicateISE_Lin1ELin1EEEEENS0_20generic_product_implIS3_SK_NS_11SparseShapeENS_10DenseShapeELi8EEEE6evalToISE_EEvRT_RSB_RKSK_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS4_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES1_Li0EEEKNS_9ReplicateIS1_Lin1ELin1EEEEEEERKT_.exit.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %4, align 8, !tbaa !9
  call void @free(ptr noundef %i.af) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume.i.i.i

_ZN5Eigen8internal25generic_product_impl_baseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKS3_EENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_9ReplicateISE_Lin1ELin1EEEEENS0_20generic_product_implIS3_SK_NS_11SparseShapeENS_10DenseShapeELi8EEEE6evalToISE_EEvRT_RSB_RKSK_.exit: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS4_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES1_Li0EEEKNS_9ReplicateIS1_Lin1ELin1EEEEEEERKT_.exit.i.i.i
  %i.ag = load ptr, ptr %4, align 8, !tbaa !9
  call void @free(ptr noundef %i.ag) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES3_Li0EEEKNS_9ReplicateIS3_Lin1ELin1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.1207", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELi8ENS_11SparseShapeENS_10DenseShapeEddEC2ERKSC_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !798, !nonnull !71, !align !122 ; 4 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !75   ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !170
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !172
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store i64 %i.i, ptr %i.k, align 8, !tbaa !138
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !138
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !138
  %i.q = mul nsw i64 %i.p, %i.i                   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !138
  %i.t = mul nsw i64 %i.s, %i.n                   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !75
  %.not.i = icmp eq i64 %i.v, %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %.not8.i = icmp eq i64 %i.x, %i.t
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = icmp eq i64 %i.q, 0
  %i.z = icmp eq i64 %i.t, 0
  %or.cond.i.i.i = or i1 %i.y, %i.z
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = sdiv i64 9223372036854775807, %i.t
  %i.ab = icmp sgt i64 %i.q, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ac = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !73
  invoke void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.ad = mul nsw i64 %i.t, %i.q
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ad, i64 noundef %i.q, i64 noundef %i.t)
          to label %thread-pre-split unwind label %bb.f

thread-pre-split:                                 ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %.pr = load i64, ptr %i.w, align 8, !tbaa !76
  %.pre = load i64, ptr %i.u, align 8, !tbaa !75
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.a
  %i.ae = phi i64 [ %.pre, %thread-pre-split ], [ %i.q, %bb.a ] ; 6 uses
  %i.af = phi i64 [ %.pr, %thread-pre-split ], [ %i.t, %bb.a ] ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !9
  %i.ah = icmp sgt i64 %i.af, 0
  %i.ai = icmp sgt i64 %i.ae, 0
  %or.cond = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES5_Li0EEEKNS_9ReplicateIS5_Lin1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSR_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !244
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !172
  %i.am = load i64, ptr %i.k, align 8, !tbaa !138 ; 3 uses
  %i.an = load i64, ptr %i.l, align 8, !tbaa !138
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !244
  %i.ap = load i64, ptr %i.j, align 8, !tbaa !172
  %xtraiter = and i64 %i.ae, 1
  %i.aq = icmp eq i64 %i.ae, 1
  %unroll_iter = and i64 %i.ae, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod18 = trunc i64 %i.ae to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0814.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.az, %._crit_edge.i ] ; 4 uses
  %i.ar = mul nuw nsw i64 %.0814.i, %i.ae
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ag, i64 %i.ar ; 3 uses
  %i.as = mul nsw i64 %.0814.i, %i.al
  %invariant.gep10.i = getelementptr [8 x i8], ptr %i.ak, i64 %i.as ; 3 uses
  %i.at = srem i64 %.0814.i, %i.an
  %i.au = mul nsw i64 %i.at, %i.ap
  %invariant.gep12.i = getelementptr [8 x i8], ptr %i.ao, i64 %i.au ; 3 uses
  br i1 %i.aq, label %.epil.preheader, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %.09.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.bj, %._crit_edge.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod18)
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i.epil.init
  %gep11.i.epil = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %.09.i.epil.init
  %i.av = srem i64 %.09.i.epil.init, %i.am
  %gep13.i.epil = getelementptr [8 x i8], ptr %invariant.gep12.i, i64 %i.av
  %i.aw = load double, ptr %gep13.i.epil, align 8, !tbaa !64
  %i.ax = load double, ptr %gep11.i.epil, align 8, !tbaa !64
  %i.ay = fadd double %i.aw, %i.ax
  store double %i.ay, ptr %gep.i.epil, align 8, !tbaa !64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.az = add nuw nsw i64 %.0814.i, 1             ; 2 uses
  %exitcond16.not.i = icmp eq i64 %i.az, %i.af
  br i1 %exitcond16.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES5_Li0EEEKNS_9ReplicateIS5_Lin1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSR_.exit, label %.preheader.i, !llvm.loop !1424

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %.09.i = phi i64 [ %i.bj, %.preheader.i.new ], [ 0, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i
  %gep11.i = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %.09.i
  %i.ba = srem i64 %.09.i, %i.am
  %gep13.i = getelementptr [8 x i8], ptr %invariant.gep12.i, i64 %i.ba
  %i.bb = load double, ptr %gep13.i, align 8, !tbaa !64
  %i.bc = load double, ptr %gep11.i, align 8, !tbaa !64
  %i.bd = fadd double %i.bb, %i.bc
  store double %i.bd, ptr %gep.i, align 8, !tbaa !64
  %i.be = or disjoint i64 %.09.i, 1               ; 3 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.be
  %gep11.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.be
  %i.bf = srem i64 %i.be, %i.am
  %gep13.i.1 = getelementptr [8 x i8], ptr %invariant.gep12.i, i64 %i.bf
  %i.bg = load double, ptr %gep13.i.1, align 8, !tbaa !64
  %i.bh = load double, ptr %gep11.i.1, align 8, !tbaa !64
  %i.bi = fadd double %i.bg, %i.bh
  store double %i.bi, ptr %gep.i.1, align 8, !tbaa !64
  %i.bj = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !1425

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS0_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEES5_Li0EEEKNS_9ReplicateIS5_Lin1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSR_.exit: ; preds = %._crit_edge.i, %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !9
  call void @free(ptr noundef %i.bl) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.d
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9
  call void @free(ptr noundef %i.bo) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.bm
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { builtin allocsize(0) }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !11, i64 0, !13, i64 8, !13, i64 16}
!11 = !{!"p1 double", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !13, i64 8}
!15 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !16, i64 0, !13, i64 8}
!16 = !{!"p1 int", !12, i64 0}
!17 = !{!18, !6, i64 0}
!18 = !{!"_ZTSN3igl24min_quad_with_fixed_dataIdEE", !6, i64 0, !19, i64 4, !19, i64 5, !20, i64 8, !20, i64 24, !20, i64 40, !20, i64 56, !22, i64 72, !26, i64 144, !27, i64 152, !36, i64 336, !39, i64 520, !19, i64 1104, !6, i64 1108, !57, i64 1112, !22, i64 1496, !22, i64 1568, !22, i64 1640, !22, i64 1712, !22, i64 1784, !22, i64 1856, !22, i64 1928, !22, i64 2000, !22, i64 2072, !22, i64 2144, !22, i64 2216, !22, i64 2288, !59, i64 2360}
!19 = !{!"bool", !7, i64 0}
!20 = !{!"_ZTSN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEE", !21, i64 0}
!21 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEE", !15, i64 0}
!22 = !{!"_ZTSN5Eigen12SparseMatrixIdLi0EiEE", !23, i64 0, !13, i64 8, !13, i64 16, !16, i64 24, !16, i64 32, !25, i64 40}
!23 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEE", !24, i64 0}
!24 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEE", !19, i64 0}
!25 = !{!"_ZTSN5Eigen8internal17CompressedStorageIdiEE", !11, i64 0, !16, i64 8, !13, i64 16, !13, i64 24}
!26 = !{!"_ZTSN3igl24min_quad_with_fixed_dataIdE10SolverTypeE", !7, i64 0}
!27 = !{!"_ZTSN5Eigen13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEE", !28, i64 0}
!28 = !{!"_ZTSN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !29, i64 0, !30, i64 4, !19, i64 8, !19, i64 9, !22, i64 16, !31, i64 88, !20, i64 104, !20, i64 120, !34, i64 136, !34, i64 152, !35, i64 168, !35, i64 176}
!29 = !{!"_ZTSN5Eigen16SparseSolverBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !19, i64 0}
!30 = !{!"_ZTSN5Eigen15ComputationInfoE", !7, i64 0}
!31 = !{!"_ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !32, i64 0}
!32 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !33, i64 0}
!33 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !11, i64 0, !13, i64 8}
!34 = !{!"_ZTSN5Eigen17PermutationMatrixILin1ELin1EiEE", !20, i64 0}
!35 = !{!"double", !7, i64 0}
!36 = !{!"_ZTSN5Eigen14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEE", !37, i64 0}
!37 = !{!"_ZTSN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !38, i64 0, !30, i64 4, !19, i64 8, !19, i64 9, !22, i64 16, !31, i64 88, !20, i64 104, !20, i64 120, !34, i64 136, !34, i64 152, !35, i64 168, !35, i64 176}
!38 = !{!"_ZTSN5Eigen16SparseSolverBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEEE", !19, i64 0}
!39 = !{!"_ZTSN5Eigen8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEEE", !40, i64 0, !30, i64 4, !19, i64 8, !19, i64 9, !41, i64 16, !22, i64 48, !44, i64 120, !45, i64 192, !34, i64 256, !34, i64 272, !20, i64 288, !55, i64 304, !19, i64 488, !56, i64 496, !35, i64 544, !13, i64 552, !13, i64 560, !13, i64 568, !13, i64 576}
!40 = !{!"_ZTSN5Eigen16SparseSolverBaseINS_8SparseLUINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEEEEE", !19, i64 0}
!41 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !42, i64 0, !13, i64 8, !7, i64 16}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !43, i64 0}
!43 = !{!"p1 omnipotent char", !12, i64 0}
!44 = !{!"_ZTSN5Eigen8internal22MappedSuperNodalMatrixIdiEE", !13, i64 0, !13, i64 8, !13, i64 16, !11, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64}
!45 = !{!"_ZTSN5Eigen18MappedSparseMatrixIdLi0EiEE", !46, i64 0}
!46 = !{!"_ZTSN5Eigen3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEE", !47, i64 0}
!47 = !{!"_ZTSN5Eigen13SparseMapBaseINS_3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEELi1EEE", !48, i64 0}
!48 = !{!"_ZTSN5Eigen13SparseMapBaseINS_3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEELi0EEE", !49, i64 0, !13, i64 8, !13, i64 16, !51, i64 24, !16, i64 32, !16, i64 40, !11, i64 48, !16, i64 56}
!49 = !{!"_ZTSN5Eigen20SparseCompressedBaseINS_3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEEEE", !50, i64 0}
!50 = !{!"_ZTSN5Eigen16SparseMatrixBaseINS_3MapINS_12SparseMatrixIdLi0EiEELi0ENS_6StrideILi0ELi0EEEEEEE", !19, i64 0}
!51 = !{!"_ZTSN5Eigen5ArrayIiLi2ELi1ELi0ELi2ELi1EEE", !52, i64 0}
!52 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_5ArrayIiLi2ELi1ELi0ELi2ELi1EEEEE", !53, i64 0}
!53 = !{!"_ZTSN5Eigen12DenseStorageIiLi2ELi2ELi1ELi0EEE", !54, i64 0}
!54 = !{!"_ZTSN5Eigen8internal11plain_arrayIiLi2ELi0ELi0EEE", !7, i64 0}
!55 = !{!"_ZTSN5Eigen8internal13LU_GlobalLU_tINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEE", !20, i64 0, !20, i64 16, !31, i64 32, !20, i64 48, !20, i64 64, !20, i64 80, !13, i64 96, !13, i64 104, !31, i64 112, !20, i64 128, !20, i64 144, !13, i64 160, !13, i64 168, !13, i64 176}
!56 = !{!"_ZTSN5Eigen8internal10perfvaluesE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!57 = !{!"_ZTSN5Eigen8SparseQRINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEEE", !58, i64 0, !19, i64 1, !19, i64 2, !30, i64 4, !41, i64 8, !22, i64 40, !22, i64 112, !22, i64 184, !31, i64 256, !34, i64 272, !34, i64 288, !34, i64 304, !35, i64 320, !19, i64 328, !13, i64 336, !20, i64 344, !20, i64 360, !19, i64 376, !19, i64 377}
!58 = !{!"_ZTSN5Eigen16SparseSolverBaseINS_8SparseQRINS_12SparseMatrixIdLi0EiEENS_14COLAMDOrderingIiEEEEEE", !19, i64 0}
!59 = !{!"_ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !60, i64 0}
!60 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !10, i64 0}
!61 = !{!33, !11, i64 0}
!62 = !{!15, !16, i64 0}
!63 = !{!6, !6, i64 0}
!64 = !{!35, !35, i64 0}
!65 = distinct !{!65, !66}
!66 = !{!"llvm.loop.mustprogress"}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!18, !19, i64 1104}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = !{!33, !13, i64 8}
!73 = !{!74, !74, i64 0}
!74 = !{!"vtable pointer", !8, i64 0}
!75 = !{!10, !13, i64 8}
!76 = !{!10, !13, i64 16}
!77 = distinct !{!77, !66, !78, !79}
!78 = !{!"llvm.loop.isvectorized", i32 1}
!79 = !{!"llvm.loop.unroll.runtime.disable"}
!80 = distinct !{!80, !68}
!81 = distinct !{!81, !66, !78}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16bottomLeftCornerIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES6_S7_: argument 0"}
!84 = distinct !{!84, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16bottomLeftCornerIliEENS3_13FixedBlockXprIXsr8internal15get_fixed_valueIT_EE5valueEXsr8internal15get_fixed_valueIT0_EE5valueEE4TypeES6_S7_"}
!85 = distinct !{!85, !66, !78, !79}
!86 = distinct !{!86, !68}
!87 = distinct !{!87, !66, !78}
!88 = distinct !{!88, !66, !78, !79}
!89 = distinct !{!89, !68}
!90 = distinct !{!90, !66, !78}
!91 = !{!7, !7, i64 0}
!92 = distinct !{!92, !66}
!93 = !{!94, !94, i64 0}
!94 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !12, i64 0}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0EEEEplINS4_IdLin1ELin1ELi0ELin1ELin1EEEEEKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIdNSB_6traitsIT_E6ScalarEEEKS6_KSE_EERKNS0_ISE_EE: argument 0"}
!97 = distinct !{!97, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_12SparseMatrixIdLi0EiEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0EEEEplINS4_IdLin1ELin1ELi0ELin1ELin1EEEEEKNS_13CwiseBinaryOpINS_8internal13scalar_sum_opIdNSB_6traitsIT_E6ScalarEEEKS6_KSE_EERKNS0_ISE_EE"}
!98 = !{!18, !26, i64 144}
!99 = distinct !{!99, !66, !78, !79}
!100 = distinct !{!100, !66, !79, !78}
!101 = distinct !{!101, !66}
!102 = distinct !{!102, !66, !78, !79}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!107}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !68}
!109 = distinct !{!109, !66}
!110 = distinct !{!110, !66, !78}
!111 = !{!112, !112, i64 0}
!112 = !{!"p1 _ZTSN5Eigen12SparseMatrixIdLi0EiEE", !12, i64 0}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEmlINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS6_18scalar_opposite_opIdEEKS2_EENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0EEEKNS_9ReplicateISG_Lin1ELin1EEEEEEEKNS9_IS2_T_Li0EEERKNS_10MatrixBaseISN_EE: argument 0"}
!115 = distinct !{!115, !"_ZNK5Eigen16SparseMatrixBaseINS_12SparseMatrixIdLi0EiEEEmlINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS6_18scalar_opposite_opIdEEKS2_EENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0EEEKNS_9ReplicateISG_Lin1ELin1EEEEEEEKNS9_IS2_T_Li0EEERKNS_10MatrixBaseISN_EE"}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !12, i64 0}
!118 = !{!119, !117, i64 0}
!119 = !{!"_ZTSN5Eigen11IndexedViewIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILi1EEEEE", !117, i64 0, !20, i64 8, !120, i64 24}
!120 = !{!"_ZTSN5Eigen8internal8AllRangeILi1EEE", !121, i64 0}
!121 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f64
!1145 = !{i64 2155262820}
!1146 = distinct !{!1146, !66}
!1147 = !{i64 2155263641}
!1148 = !{i64 2155263695}
!1149 = !{i64 2155263758}
!1150 = distinct !{!1150, !66}
!1151 = distinct !{!1151, !66}
!1152 = distinct !{!1152, !66}
!1153 = distinct !{!1153, !66}
!1154 = !{i64 2155243641}
!1155 = !{i64 2155244912}
!1156 = !{i64 2155244966}
!1157 = !{i64 2155246180}
!1158 = !{i64 2155246234}
!1159 = !{i64 2155247448}
!1160 = !{i64 2155247502}
!1161 = !{i64 2155248716}
!1162 = !{i64 2155248770}
!1163 = !{i64 2155249984}
!1164 = !{i64 2155250038}
!1165 = !{i64 2155251252}
!1166 = !{i64 2155251306}
!1167 = !{i64 2155252520}
!1168 = !{i64 2155252574}
!1169 = !{i64 2155253788}
!1170 = !{i64 2155253842}
!1171 = !{i64 2155253894}
!1172 = distinct !{!1172, !66}
!1173 = distinct !{!1173, !66}
!1174 = !{i64 2155255100}
!1175 = !{i64 2155255154}
!1176 = distinct !{!1176, !66}
!1177 = distinct !{!1177, !66}
!1178 = distinct !{!1178, !66}
!1179 = distinct !{!1179, !68}
!1180 = distinct !{!1180, !66}
!1181 = !{i64 2155203870}
!1182 = !{i64 2155203633}
!1183 = !{i64 2155203686}
!1184 = !{i64 2155203812}
!1185 = !{i64 2155203928}
!1186 = distinct !{!1186, !66}
!1187 = distinct !{!1187, !66}
!1188 = distinct !{!1188, !66}
!1189 = distinct !{!1189, !66}
!1190 = !{i64 2155203984}
!1191 = !{i64 2155204543}
!1192 = !{i64 2155204609}
!1193 = !{i64 2155204672}
!1194 = !{i64 2155205237}
!1195 = !{i64 2155205303}
!1196 = !{i64 2155205366}
!1197 = !{i64 2155205931}
!1198 = !{i64 2155205997}
!1199 = !{i64 2155206060}
!1200 = !{i64 2155206625}
!1201 = !{i64 2155206691}
!1202 = !{i64 2155206754}
!1203 = !{i64 2155207319}
!1204 = !{i64 2155207385}
!1205 = !{i64 2155207448}
!1206 = !{i64 2155208013}
!1207 = !{i64 2155208079}
!1208 = !{i64 2155208142}
!1209 = !{i64 2155208707}
!1210 = !{i64 2155208773}
!1211 = !{i64 2155208836}
!1212 = !{i64 2155209401}
!1213 = !{i64 2155209467}
!1214 = !{i64 2155209530}
!1215 = !{i64 2155209594}
!1216 = distinct !{!1216, !66}
!1217 = distinct !{!1217, !66}
!1218 = !{i64 2155210151}
!1219 = !{i64 2155210217}
!1220 = !{i64 2155210280}
!1221 = distinct !{!1221, !66}
!1222 = !{!1223}
!1223 = distinct !{!1223, !1224, !"_ZNK5Eigen10MatrixBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE11lazyProductINS1_IS3_Li0ES6_EEEEKNS_7ProductIS7_T_Li1EEERKNS0_ISC_EE: argument 0"}
!1224 = distinct !{!1224, !"_ZNK5Eigen10MatrixBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE11lazyProductINS1_IS3_Li0ES6_EEEEKNS_7ProductIS7_T_Li1EEERKNS0_ISC_EE"}
!1225 = !{!1226, !11, i64 0}
!1226 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES5_EE", !11, i64 0, !121, i64 8, !137, i64 16}
!1227 = !{!1228, !11, i64 0}
!1228 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES4_EE", !11, i64 0, !121, i64 8, !137, i64 16}
!1229 = !{!1230, !13, i64 128}
!1230 = !{!"_ZTSN5Eigen8internal17product_evaluatorINS_7ProductINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS3_IS5_Li0ES8_EELi1EEELi8ENS_10DenseShapeESC_ddEE", !1231, i64 0, !1234, i64 40, !1236, i64 80, !1237, i64 104, !13, i64 128}
!1231 = !{!"_ZTSN5Eigen3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEE", !713, i64 0, !1232, i64 24}
!1232 = !{!"_ZTSN5Eigen11OuterStrideILin1EEE", !1233, i64 0}
!1233 = !{!"_ZTSN5Eigen6StrideILin1ELi0EEE", !137, i64 0, !709, i64 8}
!1234 = !{!"_ZTSN5Eigen3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEE", !1235, i64 0, !1232, i64 24}
!1235 = !{!"_ZTSN5Eigen7MapBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1EEE", !1028, i64 0}
!1236 = !{!"_ZTSN5Eigen8internal9evaluatorINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEE", !1226, i64 0}
!1237 = !{!"_ZTSN5Eigen8internal9evaluatorINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEE", !1228, i64 0}
!1238 = !{!1239, !1239, i64 0}
!1239 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_7ProductINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS3_IS5_Li0ES8_EELi1EEEEE", !12, i64 0}
!1240 = distinct !{!1240, !66}
!1241 = distinct !{!1241, !66}
!1242 = distinct !{!1242, !68}
!1243 = !{!1244}
!1244 = distinct !{!1244, !1245, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl: argument 0"}
!1245 = distinct !{!1245, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3colEl"}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1248, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1248 = distinct !{!1248, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1249 = !{!1250}
!1250 = distinct !{!1250, !1251, !"_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1251 = distinct !{!1251, !"_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1252 = distinct !{!1252, !66}
!1253 = distinct !{!1253, !68}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1256, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!1256 = distinct !{!1256, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEE3rowEl"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1259, !"_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1259 = distinct !{!1259, !"_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1262, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1262 = distinct !{!1262, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1263 = distinct !{!1263, !66}
!1264 = distinct !{!1264, !68}
!1265 = !{!1266}
!1266 = distinct !{!1266, !1267, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE9transposeEv: argument 0"}
!1267 = distinct !{!1267, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE9transposeEv"}
!1268 = !{!1269}
!1269 = distinct !{!1269, !1270, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE9transposeEv: argument 0"}
!1270 = distinct !{!1270, !"_ZNK5Eigen9DenseBaseINS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE9transposeEv"}
!1271 = !{!1272, !13, i64 40}
!1272 = !{!"_ZTSN5Eigen8internal19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEE", !1051, i64 0, !13, i64 40, !13, i64 48}
!1273 = !{!1272, !13, i64 48}
!1274 = !{!1275, !182, i64 24}
!1275 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS2_INS_7ProductINS_3MapIKS5_Li0ENS_11OuterStrideILin1EEEEENS9_IS5_Li0ESC_EELi1EEEEENS0_9assign_opIddEELi1EEE", !176, i64 0, !1239, i64 8, !180, i64 16, !182, i64 24}
!1276 = !{!1277}
!1277 = distinct !{!1277, !1278, !"_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1278 = distinct !{!1278, !"_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1279 = !{!1280}
!1280 = distinct !{!1280, !1281, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1281 = distinct !{!1281, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1282 = distinct !{!1282, !66}
!1283 = distinct !{!1283, !66}
!1284 = distinct !{!1284, !68}
!1285 = distinct !{!1285, !66}
!1286 = !{!1287}
!1287 = distinct !{!1287, !1288}
!1288 = distinct !{!1288, !"LVerDomain"}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1288}
!1291 = !{!1292}
!1292 = distinct !{!1292, !1288}
!1293 = !{!1290, !1287}
!1294 = distinct !{!1294, !66, !78, !79}
!1295 = distinct !{!1295, !68}
!1296 = distinct !{!1296, !66, !78}
!1297 = !{!1275, !176, i64 0}
!1298 = !{!1275, !1239, i64 8}
!1299 = !{!1300}
!1300 = distinct !{!1300, !1301, !"_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1301 = distinct !{!1301, !"_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1302 = !{!1303}
!1303 = distinct !{!1303, !1304, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1304 = distinct !{!1304, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1305 = distinct !{!1305, !68}
!1306 = !{!1307}
!1307 = distinct !{!1307, !1308, !"_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl: argument 0"}
!1308 = distinct !{!1308, !"_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3rowEl"}
!1309 = !{!1310}
!1310 = distinct !{!1310, !1311, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl: argument 0"}
!1311 = distinct !{!1311, !"_ZNK5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEE3colEl"}
!1312 = distinct !{!1312, !66}
!1313 = distinct !{!1313, !66}
!1314 = distinct !{!1314, !66}
!1315 = distinct !{!1315, !68}
!1316 = distinct !{!1316, !66}
!1317 = distinct !{!1317, !68}
!1318 = !{!1319}
!1319 = distinct !{!1319, !1320, !"_ZN5Eigen8internal11blas_traitsINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEEE7extractERKSA_: argument 0"}
!1320 = distinct !{!1320, !"_ZN5Eigen8internal11blas_traitsINS_9TransposeIKNS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEEE7extractERKSA_"}
!1321 = !{!1322}
!1322 = distinct !{!1322, !1323, !"_ZN5Eigen8internal11blas_traitsINS_9TransposeIKNS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEEEE7extractERKSE_: argument 0"}
!1323 = distinct !{!1323, !"_ZN5Eigen8internal11blas_traitsINS_9TransposeIKNS_5BlockIKNS_3MapIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEEEE7extractERKSE_"}
!1324 = distinct !{!1324, !66, !78, !79}
!1325 = distinct !{!1325, !68}
!1326 = distinct !{!1326, !66, !78}
!1327 = !{!1328, !11, i64 0}
!1328 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELi1ELin1ELb0EEELi0EEE", !11, i64 0, !121, i64 8, !137, i64 16}
!1329 = distinct !{!1329, !66}
!1330 = distinct !{!1330, !66}
!1331 = distinct !{!1331, !66}
!1332 = distinct !{!1332, !66}
!1333 = distinct !{!1333, !66}
!1334 = distinct !{!1334, !66}
!1335 = distinct !{!1335, !66}
!1336 = distinct !{!1336, !66}
!1337 = distinct !{!1337, !66}
!1338 = distinct !{!1338, !66}
!1339 = distinct !{!1339, !68}
!1340 = distinct !{!1340, !68}
!1341 = distinct !{!1341, !66}
!1342 = distinct !{!1342, !66}
!1343 = distinct !{!1343, !66}
!1344 = distinct !{!1344, !66}
!1345 = !{!1346}
!1346 = distinct !{!1346, !1347}
!1347 = distinct !{!1347, !"LVerDomain"}
!1348 = !{!1349}
!1349 = distinct !{!1349, !1347}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1347}
!1352 = !{!1353}
!1353 = distinct !{!1353, !1347}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1347}
!1356 = !{!1353, !1351, !1349, !1346}
!1357 = distinct !{!1357, !66, !78, !79}
!1358 = distinct !{!1358, !66, !78}
!1359 = distinct !{!1359, !66}
!1360 = distinct !{!1360, !66, !78, !79}
!1361 = distinct !{!1361, !68}
!1362 = distinct !{!1362, !66}
!1363 = distinct !{!1363, !66, !78}
!1364 = distinct !{!1364, !66}
!1365 = distinct !{!1365, !66}
!1366 = distinct !{!1366, !66, !78, !79}
!1367 = distinct !{!1367, !66, !78}
!1368 = distinct !{!1368, !66}
!1369 = distinct !{!1369, !66}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1372}
!1372 = distinct !{!1372, !"LVerDomain"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1372}
!1375 = distinct !{!1375, !66, !78, !79}
!1376 = distinct !{!1376, !66, !78}
!1377 = distinct !{!1377, !66}
!1378 = distinct !{!1378, !66}
!1379 = distinct !{!1379, !66, !78, !79}
!1380 = distinct !{!1380, !68}
!1381 = distinct !{!1381, !66, !78}
!1382 = !{!1383, !112, i64 0}
!1383 = !{!"_ZTSN5Eigen7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_INS_12CwiseUnaryOpINS4_18scalar_opposite_opIdEEKS2_EENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_9ReplicateINSC_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEELi0EEE", !112, i64 0, !1384, i64 8}
!1384 = !{!"_ZTSN5Eigen13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS1_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_9ReplicateINSC_IdLin1ELi1ELi0ELin1ELi1EEELin1ELin1EEEEE", !1385, i64 8, !787, i64 40, !240, i64 64}
!1385 = !{!"_ZTSN5Eigen7ProductINS_12CwiseUnaryOpINS_8internal18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEE", !783, i64 0, !94, i64 24}
!1386 = distinct !{!1386, !66}
!1387 = distinct !{!1387, !66}
!1388 = !{!1385, !94, i64 24}
!1389 = !{!1390, !94, i64 0}
!1390 = !{!"_ZTSN5Eigen11IndexedViewIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal8AllRangeILin1EEEEE", !94, i64 0, !20, i64 8, !551, i64 24}
!1391 = distinct !{!1391, !68}
!1392 = distinct !{!1392, !66}
!1393 = distinct !{!1393, !66}
!1394 = distinct !{!1394, !66}
!1395 = distinct !{!1395, !66}
!1396 = distinct !{!1396, !66, !78, !79}
!1397 = distinct !{!1397, !68}
!1398 = distinct !{!1398, !66, !78}
!1399 = !{!1400, !94, i64 24}
!1400 = !{!"_ZTSN5Eigen7ProductINS0_INS_12SparseMatrixIdLi0EiEES2_Li2EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEE", !827, i64 0, !94, i64 24}
!1401 = !{!1402, !182, i64 24}
!1402 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS2_IS5_EENS0_9assign_opIddEELi0EEE", !176, i64 0, !178, i64 8, !180, i64 16, !182, i64 24}
!1403 = !{!1404}
!1404 = distinct !{!1404, !1405}
!1405 = distinct !{!1405, !"LVerDomain"}
!1406 = !{!1407}
!1407 = distinct !{!1407, !1405}
!1408 = distinct !{!1408, !66, !78, !79}
!1409 = distinct !{!1409, !68}
!1410 = distinct !{!1410, !66}
!1411 = distinct !{!1411, !66, !78}
!1412 = !{!1402, !178, i64 8}
!1413 = !{!1402, !176, i64 0}
!1414 = distinct !{!1414, !66, !78, !79}
!1415 = distinct !{!1415, !66}
!1416 = distinct !{!1416, !66}
!1417 = distinct !{!1417, !66, !78}
!1418 = distinct !{!1418, !66, !78, !79}
!1419 = distinct !{!1419, !68}
!1420 = distinct !{!1420, !66, !78}
!1421 = !{!1422, !112, i64 0}
!1422 = !{!"_ZTSN5Eigen7ProductINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS0_INS_12CwiseUnaryOpINS4_18scalar_opposite_opIdEEKS2_EENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_9ReplicateISD_Lin1ELin1EEEEELi0EEE", !112, i64 0, !1423, i64 8}
!1423 = !{!"_ZTSN5Eigen13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS_7ProductINS_12CwiseUnaryOpINS1_18scalar_opposite_opIdEEKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEKNS_9ReplicateISD_Lin1ELin1EEEEE", !1385, i64 8, !799, i64 40, !240, i64 64}
!1424 = distinct !{!1424, !66}
!1425 = distinct !{!1425, !66}
end_hunk_2
