Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/exploded_view?download=true
inline.NumInlined: 1150
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.eq = extractelement <8 x double> %i.dx, i64 3
  %i.er = tail call double @llvm.fmuladd.f64(double %6, double %i.eq, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !28
  %i.es = mul nsw i64 %.pre-phi558, %5
  %i.et = getelementptr inbounds [8 x i8], ptr %4, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !28
  %i.ev = extractelement <8 x double> %i.dx, i64 4
  %i.ew = tail call double @llvm.fmuladd.f64(double %6, double %i.ev, double %i.eu)
  store double %i.ew, ptr %i.et, align 8, !tbaa !28
  %i.ex = mul nsw i64 %.pre-phi560, %5
  %i.ey = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ex ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !28
  %i.fa = extractelement <8 x double> %i.dx, i64 5
  %i.fb = tail call double @llvm.fmuladd.f64(double %6, double %i.fa, double %i.ez)
  store double %i.fb, ptr %i.ey, align 8, !tbaa !28
  %i.fc = mul nsw i64 %.pre-phi562, %5
  %i.fd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !28
  %i.ff = extractelement <8 x double> %i.dx, i64 6
  %i.fg = tail call double @llvm.fmuladd.f64(double %6, double %i.ff, double %i.fe)
  store double %i.fg, ptr %i.fd, align 8, !tbaa !28
  %i.fh = mul nsw i64 %.pre-phi564, %5
  %i.fi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !28
  %i.fk = extractelement <8 x double> %i.dx, i64 7
  %i.fl = tail call double @llvm.fmuladd.f64(double %6, double %i.fk, double %i.fj)
  store double %i.fl, ptr %i.fi, align 8, !tbaa !28
  %i.fm = add nuw nsw i64 %.0226448, 8            ; 3 uses
  %i.fn = icmp sgt i64 %i.c, %i.fm
  br i1 %i.fn, label %.preheader409, label %.preheader408, !llvm.loop !122

.preheader407:                                    ; preds = %.preheader407.lr.ph, %._crit_edge470
  %.1227475 = phi i64 [ %.0226.lcssa, %.preheader407.lr.ph ], [ %i.je, %._crit_edge470 ] ; 13 uses
  br i1 %.not237450, label %._crit_edge457, label %.lr.ph456

.lr.ph456:                                        ; preds = %.preheader407
  %i.fo = load ptr, ptr %3, align 8, !tbaa !115
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
  %i.gf = load <2 x double>, ptr %i.ge, align 1, !tbaa !25 ; 4 uses
  %i.gg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0214455 ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %i.fp
  %i.gi = load <2 x double>, ptr %i.gh, align 1, !tbaa !25
  %i.gj = fmul <2 x double> %i.gf, %i.gi
  %i.gk = fadd <2 x double> %.0399454, %i.gj      ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gg, i64 %i.fr
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !25
  %i.gn = fmul <2 x double> %i.gf, %i.gm
  %i.go = fadd <2 x double> %.0401453, %i.gn      ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.gg, i64 %i.ft
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !25
  %i.gr = fmul <2 x double> %i.gf, %i.gq
  %i.gs = fadd <2 x double> %.0402452, %i.gr      ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gg, i64 %i.fv
  %i.gu = load <2 x double>, ptr %i.gt, align 1, !tbaa !25
  %i.gv = fmul <2 x double> %i.gf, %i.gu
  %i.gw = fadd <2 x double> %.0403451, %i.gv      ; 2 uses
  %i.gx = add nuw nsw i64 %i.gd, 2                ; 2 uses
  %.not237 = icmp sgt i64 %i.gx, %1
  br i1 %.not237, label %._crit_edge457, label %bb.d, !llvm.loop !123

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
  %i.hg = load ptr, ptr %3, align 8, !tbaa !115
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
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !28
  %i.hr = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1215463 ; 4 uses
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %i.hh
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !28
  %i.hu = getelementptr [8 x i8], ptr %i.hr, i64 %i.hj
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !28
  %i.hw = getelementptr [8 x i8], ptr %i.hr, i64 %i.hl
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !28
  %i.hy = getelementptr [8 x i8], ptr %i.hr, i64 %i.hn
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !28
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
  br i1 %exitcond549.not, label %._crit_edge470, label %bb.e, !llvm.loop !124

._crit_edge470:                                   ; preds = %bb.e, %._crit_edge457.._crit_edge470_crit_edge
  %.pre-phi570 = phi i64 [ %.pre569, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hm, %bb.e ]
  %.pre-phi568 = phi i64 [ %.pre567, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hk, %bb.e ]
  %.pre-phi566 = phi i64 [ %.pre565, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hi, %bb.e ]
  %i.ij = phi <4 x double> [ %i.he, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.ih, %bb.e ] ; 4 uses
  %i.ik = mul nsw i64 %.1227475, %5
  %i.il = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ik ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !28
  %i.in = extractelement <4 x double> %i.ij, i64 0
  %i.io = tail call double @llvm.fmuladd.f64(double %6, double %i.in, double %i.im)
  store double %i.io, ptr %i.il, align 8, !tbaa !28
  %i.ip = mul nsw i64 %.pre-phi566, %5
  %i.iq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ip ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !28
  %i.is = extractelement <4 x double> %i.ij, i64 1
  %i.it = tail call double @llvm.fmuladd.f64(double %6, double %i.is, double %i.ir)
  store double %i.it, ptr %i.iq, align 8, !tbaa !28
  %i.iu = mul nsw i64 %.pre-phi568, %5
  %i.iv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iu ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !28
  %i.ix = extractelement <4 x double> %i.ij, i64 2
  %i.iy = tail call double @llvm.fmuladd.f64(double %6, double %i.ix, double %i.iw)
  store double %i.iy, ptr %i.iv, align 8, !tbaa !28
  %i.iz = mul nsw i64 %.pre-phi570, %5
  %i.ja = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iz ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !28
  %i.jc = extractelement <4 x double> %i.ij, i64 3
  %i.jd = tail call double @llvm.fmuladd.f64(double %6, double %i.jc, double %i.jb)
  store double %i.jd, ptr %i.ja, align 8, !tbaa !28
  %i.je = add nuw nsw i64 %.1227475, 4            ; 3 uses
  %i.jf = icmp slt i64 %i.je, %i.d
  br i1 %i.jf, label %.preheader407, label %.preheader406, !llvm.loop !125

.preheader405:                                    ; preds = %.preheader405.lr.ph, %._crit_edge491
  %.2494 = phi i64 [ %.1227.lcssa, %.preheader405.lr.ph ], [ %i.nh, %._crit_edge491 ] ; 7 uses
  br i1 %.not236477, label %._crit_edge482, label %.lr.ph481

.lr.ph481:                                        ; preds = %.preheader405
  %i.jg = load ptr, ptr %3, align 8, !tbaa !115   ; 3 uses
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
  %i.jo = load <2 x double>, ptr %i.jn, align 1, !tbaa !25 ; 2 uses
  %i.jp = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480 ; 2 uses
  %i.jq = getelementptr [8 x i8], ptr %i.jp, i64 %i.jh
  %i.jr = load <2 x double>, ptr %i.jq, align 1, !tbaa !25
  %i.js = fmul <2 x double> %i.jo, %i.jr
  %i.jt = fadd <2 x double> %.0400478, %i.js
  %i.ju = getelementptr [8 x i8], ptr %i.jp, i64 %i.jj
  %i.jv = load <2 x double>, ptr %i.ju, align 1, !tbaa !25
  %i.jw = fmul <2 x double> %i.jo, %i.jv
  %i.jx = fadd <2 x double> %.0398479, %i.jw
  %i.jy = add nuw nsw i64 %i.jm, 2                ; 2 uses
  %i.jz = getelementptr [8 x i8], ptr %i.jg, i64 %i.jm
  %i.ka = load <2 x double>, ptr %i.jz, align 1, !tbaa !25 ; 2 uses
  %i.kb = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.jm ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.kb, i64 %i.jh
  %i.kd = load <2 x double>, ptr %i.kc, align 1, !tbaa !25
  %i.ke = fmul <2 x double> %i.ka, %i.kd
  %i.kf = fadd <2 x double> %i.jt, %i.ke          ; 3 uses
  %i.kg = getelementptr [8 x i8], ptr %i.kb, i64 %i.jj
  %i.kh = load <2 x double>, ptr %i.kg, align 1, !tbaa !25
  %i.ki = fmul <2 x double> %i.ka, %i.kh
  %i.kj = fadd <2 x double> %i.jx, %i.ki          ; 3 uses
  %i.kk = add nuw nsw i64 %i.jm, 4
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !126

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0208480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %i.jy, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0398479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ]
  %.0400478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kf, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.kl = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480.epil.init
  %i.km = load <2 x double>, ptr %i.kl, align 1, !tbaa !25 ; 2 uses
  %i.kn = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480.epil.init ; 2 uses
  %i.ko = getelementptr [8 x i8], ptr %i.kn, i64 %i.jh
  %i.kp = load <2 x double>, ptr %i.ko, align 1, !tbaa !25
  %i.kq = fmul <2 x double> %i.km, %i.kp
  %i.kr = fadd <2 x double> %.0400478.epil.init, %i.kq
  %i.ks = getelementptr [8 x i8], ptr %i.kn, i64 %i.jj
  %i.kt = load <2 x double>, ptr %i.ks, align 1, !tbaa !25
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
  %i.la = load ptr, ptr %3, align 8, !tbaa !115   ; 3 uses
  %i.lb = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.lc = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.ld = mul nsw i64 %i.lc, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0208.lcssa, 1
  br i1 %lcmp.mod673.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.le = getelementptr [8 x i8], ptr %i.la, i64 %.0208.lcssa
  %i.lf = load double, ptr %i.le, align 8, !tbaa !28
  %i.lg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208.lcssa ; 2 uses
  %i.lh = getelementptr [8 x i8], ptr %i.lg, i64 %i.lb
  %i.li = load double, ptr %i.lh, align 8, !tbaa !28
  %i.lj = getelementptr [8 x i8], ptr %i.lg, i64 %i.ld
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !28
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
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !28
  %i.lw = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209486 ; 2 uses
  %i.lx = getelementptr [8 x i8], ptr %i.lw, i64 %i.lb
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !28
  %i.lz = getelementptr [8 x i8], ptr %i.lw, i64 %i.ld
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !28
  %i.mb = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.mc = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.md = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.me = insertelement <2 x double> %i.md, double %i.ma, i64 1
  %i.mf = fmul <2 x double> %i.mc, %i.me
  %i.mg = fadd <2 x double> %i.lt, %i.mf
  %i.mh = add nuw nsw i64 %.1209486, 1            ; 2 uses
  %i.mi = getelementptr [8 x i8], ptr %i.la, i64 %i.mh
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !28
  %i.mk = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.mh ; 2 uses
  %i.ml = getelementptr [8 x i8], ptr %i.mk, i64 %i.lb
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !28
  %i.mn = getelementptr [8 x i8], ptr %i.mk, i64 %i.ld
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !28
  %i.mp = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.mq = shufflevector <2 x double> %i.mp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mr = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %i.mo, i64 1
  %i.mt = fmul <2 x double> %i.mq, %i.ms
  %i.mu = fadd <2 x double> %i.mg, %i.mt          ; 2 uses
  %i.mv = add nuw nsw i64 %.1209486, 2            ; 2 uses
  %exitcond550.not.1 = icmp eq i64 %i.mv, %1
  br i1 %exitcond550.not.1, label %._crit_edge491, label %.lr.ph490.new, !llvm.loop !127

._crit_edge491:                                   ; preds = %.prol.loopexit, %.lr.ph490.new, %._crit_edge482.._crit_edge491_crit_edge
  %.pre-phi572 = phi i64 [ %.pre571, %._crit_edge482.._crit_edge491_crit_edge ], [ %i.lc, %.lr.ph490.new ], [ %i.lc, %.prol.loopexit ]
  %i.mw = phi <2 x double> [ %i.ky, %._crit_edge482.._crit_edge491_crit_edge ], [ %.lcssa651.unr, %.prol.loopexit ], [ %i.mu, %.lr.ph490.new ] ; 2 uses
  %i.mx = mul nsw i64 %.2494, %5
  %i.my = getelementptr inbounds [8 x i8], ptr %4, i64 %i.mx ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !28
  %i.na = extractelement <2 x double> %i.mw, i64 0
  %i.nb = tail call double @llvm.fmuladd.f64(double %6, double %i.na, double %i.mz)
  store double %i.nb, ptr %i.my, align 8, !tbaa !28
  %i.nc = mul nsw i64 %.pre-phi572, %5
  %i.nd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nc ; 2 uses
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !28
  %i.nf = extractelement <2 x double> %i.mw, i64 1
  %i.ng = tail call double @llvm.fmuladd.f64(double %6, double %i.nf, double %i.ne)
  store double %i.ng, ptr %i.nd, align 8, !tbaa !28
  %i.nh = add nuw nsw i64 %.2494, 2               ; 3 uses
  %i.ni = icmp slt i64 %i.nh, %i.e
  br i1 %i.ni, label %.preheader405, label %.preheader404, !llvm.loop !128

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge507
  %.3511 = phi i64 [ %.2.lcssa, %.preheader.lr.ph ], [ %11, %._crit_edge507 ] ; 4 uses
  br i1 %.not496, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %.preheader
  %i.nj = load ptr, ptr %3, align 8, !tbaa !115   ; 5 uses
  %i.nk = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.nk ; 5 uses
  br i1 %10, label %.epil.preheader674, label %.lr.ph499.new.a

.lr.ph499.new.a:                                  ; preds = %.lr.ph499, %.lr.ph499.new.a
  %i.nl = phi i64 [ %i.oj, %.lr.ph499.new.a ], [ 2, %.lr.ph499 ] ; 6 uses
  %.0205498 = phi i64 [ %i.od, %.lr.ph499.new.a ], [ 0, %.lr.ph499 ] ; 2 uses
  %.0392497 = phi <2 x double> [ %i.oi, %.lr.ph499.new.a ], [ zeroinitializer, %.lr.ph499 ]
  %niter681 = phi i64 [ %niter681.next.3, %.lr.ph499.new.a ], [ 0, %.lr.ph499 ]
  %i.nm = getelementptr [8 x i8], ptr %i.nj, i64 %.0205498
  %i.nn = load <2 x double>, ptr %i.nm, align 1, !tbaa !25
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498
  %i.no = load <2 x double>, ptr %gep, align 1, !tbaa !25
  %i.np = fmul <2 x double> %i.nn, %i.no
  %i.nq = fadd <2 x double> %.0392497, %i.np
  %i.nr = add nuw nsw i64 %i.nl, 2                ; 2 uses
  %i.ns = getelementptr [8 x i8], ptr %i.nj, i64 %i.nl
  %i.nt = load <2 x double>, ptr %i.ns, align 1, !tbaa !25
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nl
  %i.nu = load <2 x double>, ptr %gep.1, align 1, !tbaa !25
  %i.nv = fmul <2 x double> %i.nt, %i.nu
  %i.nw = fadd <2 x double> %i.nq, %i.nv
  %i.nx = add nuw nsw i64 %i.nl, 4                ; 2 uses
  %i.ny = getelementptr [8 x i8], ptr %i.nj, i64 %i.nr
  %i.nz = load <2 x double>, ptr %i.ny, align 1, !tbaa !25
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nr
  %i.oa = load <2 x double>, ptr %gep.2, align 1, !tbaa !25
  %i.ob = fmul <2 x double> %i.nz, %i.oa
  %i.oc = fadd <2 x double> %i.nw, %i.ob
  %i.od = add nuw nsw i64 %i.nl, 6                ; 2 uses
  %i.oe = getelementptr [8 x i8], ptr %i.nj, i64 %i.nx
  %i.of = load <2 x double>, ptr %i.oe, align 1, !tbaa !25
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nx
  %i.og = load <2 x double>, ptr %gep.3, align 1, !tbaa !25
  %i.oh = fmul <2 x double> %i.of, %i.og
  %i.oi = fadd <2 x double> %i.oc, %i.oh          ; 3 uses
  %i.oj = add nuw nsw i64 %i.nl, 8                ; 2 uses
  %niter681.next.3 = add i64 %niter681, 4         ; 2 uses
  %niter681.ncmp.3 = icmp eq i64 %niter681.next.3, %unroll_iter680
  br i1 %niter681.ncmp.3, label %._crit_edge500.loopexit.unr-lcssa, label %.lr.ph499.new.a, !llvm.loop !129

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
  %i.om = load <2 x double>, ptr %i.ol, align 1, !tbaa !25
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498.epil
  %i.on = load <2 x double>, ptr %gep.epil, align 1, !tbaa !25
  %i.oo = fmul <2 x double> %i.om, %i.on
  %i.op = fadd <2 x double> %.0392497.epil, %i.oo ; 2 uses
  %i.oq = add nuw nsw i64 %i.ok, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter675
  br i1 %epil.iter.cmp.not, label %._crit_edge500, label %bb.f, !llvm.loop !130

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
  %i.ou = load ptr, ptr %3, align 8, !tbaa !115   ; 5 uses
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
  %i.ox = load double, ptr %gep510.prol, align 8, !tbaa !28
  %i.oy = load double, ptr %i.ow, align 8, !tbaa !28
  %i.oz = fmul double %i.ox, %i.oy
  %i.pa = fadd double %.0504.prol, %i.oz          ; 3 uses
  %i.pb = add nuw nsw i64 %.1503.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter684
  br i1 %prol.iter.cmp.not, label %.prol.loopexit683, label %.prol.preheader682, !llvm.loop !131

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
  %i.pf = load double, ptr %gep510, align 8, !tbaa !28
  %i.pg = load double, ptr %i.pe, align 8, !tbaa !28
  %i.ph = fmul double %i.pf, %i.pg
  %i.pi = fadd double %.0504, %i.ph
  %i.pj = add nuw nsw i64 %.1503, 1               ; 2 uses
  %gep510.1 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pj
  %i.pk = getelementptr [8 x i8], ptr %i.ou, i64 %i.pj
  %i.pl = load double, ptr %gep510.1, align 8, !tbaa !28
  %i.pm = load double, ptr %i.pk, align 8, !tbaa !28
  %i.pn = fmul double %i.pl, %i.pm
  %i.po = fadd double %i.pi, %i.pn
  %i.pp = add nuw nsw i64 %.1503, 2               ; 2 uses
  %gep510.2 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pp
  %i.pq = getelementptr [8 x i8], ptr %i.ou, i64 %i.pp
  %i.pr = load double, ptr %gep510.2, align 8, !tbaa !28
  %i.ps = load double, ptr %i.pq, align 8, !tbaa !28
  %i.pt = fmul double %i.pr, %i.ps
  %i.pu = fadd double %i.po, %i.pt
  %i.pv = add nuw nsw i64 %.1503, 3               ; 2 uses
  %gep510.3 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pv
  %i.pw = getelementptr [8 x i8], ptr %i.ou, i64 %i.pv
  %i.px = load double, ptr %gep510.3, align 8, !tbaa !28
  %i.py = load double, ptr %i.pw, align 8, !tbaa !28
  %i.pz = fmul double %i.px, %i.py
  %i.qa = fadd double %i.pu, %i.pz                ; 2 uses
  %i.qb = add nuw nsw i64 %.1503, 4               ; 2 uses
  %exitcond551.not.3 = icmp eq i64 %i.qb, %1
  br i1 %exitcond551.not.3, label %._crit_edge507, label %.lr.ph506.new, !llvm.loop !132

._crit_edge507:                                   ; preds = %.prol.loopexit683, %.lr.ph506.new, %._crit_edge500
  %.0.lcssa = phi double [ %i.or, %._crit_edge500 ], [ %.lcssa648.unr, %.prol.loopexit683 ], [ %i.qa, %.lr.ph506.new ]
  %i.qc = mul nsw i64 %.3511, %5
  %i.qd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.qc ; 2 uses
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !28
  %i.qf = tail call double @llvm.fmuladd.f64(double %6, double %.0.lcssa, double %i.qe)
  store double %i.qf, ptr %i.qd, align 8, !tbaa !28
  %11 = add nuw nsw i64 %.3511, 1                 ; 2 uses
  %exitcond552.not = icmp eq i64 %11, %0
  br i1 %exitcond552.not, label %._crit_edge512, label %.preheader, !llvm.loop !133

._crit_edge512:                                   ; preds = %._crit_edge507, %.preheader404
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind allocsize(0) }

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
!9 = !{!10, !13, i64 8}
!10 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EEE", !11, i64 0, !13, i64 8, !13, i64 16}
!11 = !{!"p1 int", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !13, i64 8}
!17 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEE", !18, i64 0, !13, i64 8, !13, i64 16}
!18 = !{!"p1 double", !12, i64 0}
!19 = !{!20, !13, i64 8}
!20 = !{!"_ZTSN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EEE", !11, i64 0, !13, i64 8}
!21 = !{!20, !11, i64 0}
!22 = !{!23, !13, i64 8}
!23 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EEE", !18, i64 0, !13, i64 8}
!24 = !{!23, !18, i64 0}
!25 = !{!7, !7, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !29, i64 0}
!29 = !{!"double", !7, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !27}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEdvIdEEKNS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIdNSB_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIdSE_NSC_IdSE_EEEEEE5valueEE4typeEEEKS7_KNSB_19plain_constant_typeIS7_SJ_E4typeEEERKSE_: argument 0"}
!35 = distinct !{!35, !"_ZNK5Eigen10MatrixBaseINS_7ProductINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS3_IdLin1ELin1ELi0ELin1ELin1EEELi0EEEEdvIdEEKNS_13CwiseBinaryOpINS_8internal18scalar_quotient_opIdNSB_18promote_scalar_argIdT_Xsr5Eigen8internal14has_ReturnTypeINS_20ScalarBinaryOpTraitsIdSE_NSC_IdSE_EEEEEE5valueEE4typeEEEKS7_KNSB_19plain_constant_typeIS7_SJ_E4typeEEERKSE_"}
!36 = !{!17, !13, i64 16}
!37 = !{!38, !29, i64 0}
!38 = !{!"_ZTSN5Eigen8internal18scalar_constant_opIdEE", !29, i64 0}
!39 = !{!40, !18, i64 0}
!40 = !{!"_ZTSN5Eigen12DenseStorageIdLin1ELi1ELin1ELi1EEE", !18, i64 0, !13, i64 8}
!41 = !{!17, !18, i64 0}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!44 = distinct !{!44, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv: argument 0"}
!47 = distinct !{!47, !"_ZNK5Eigen9DenseBaseINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS1_INS2_17scalar_product_opIddEEKNS1_INS2_20scalar_difference_opIddEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEKNSA_IdLi1ELin1ELi1ELi1ELin1EEEEEKNS_14CwiseNullaryOpINS2_18scalar_constant_opIdEESF_EEEESF_EEE4evalEv"}
!48 = !{!40, !13, i64 8}
!49 = distinct !{!49, !27, !50, !51}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = distinct !{!52, !27, !50}
!53 = !{!10, !11, i64 0}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!56 = distinct !{!56, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!59 = distinct !{!59, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl: argument 0"}
!62 = distinct !{!62, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3rowEl"}
!63 = !{!6, !6, i64 0}
!64 = distinct !{!64, !27, !50, !51}
!65 = distinct !{!65, !27, !50}
!66 = distinct !{!66, !27, !50, !51}
!67 = distinct !{!67, !27, !50}
!68 = distinct !{!68, !27, !50, !51}
!69 = distinct !{!69, !27, !50}
!70 = distinct !{!70, !27, !50, !51}
!71 = distinct !{!71, !27, !50}
!72 = distinct !{!72, !27}
!73 = !{!10, !13, i64 16}
!74 = !{!75, !13, i64 0}
!75 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !13, i64 0}
!76 = !{!77, !18, i64 0}
!77 = !{!"_ZTSN5Eigen8internal9evaluatorINS_15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEEEE", !78, i64 0}
!78 = !{!"_ZTSN5Eigen8internal30plainobjectbase_evaluator_dataIdLi0EEE", !18, i64 0}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = !{!85, !80}
!85 = distinct !{!85, !81}
!86 = distinct !{!86, !27, !50, !51}
!87 = distinct !{!87, !31}
!88 = distinct !{!88, !27, !50}
!89 = distinct !{!89, !27}
!90 = !{!78, !18, i64 0}
!91 = !{!92, !95, i64 8}
!92 = !{!"_ZTSN5Eigen7ProductINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS2_IdLin1ELin1ELi0ELin1ELin1EEELi0EEE", !93, i64 0, !95, i64 8}
!93 = !{!"_ZTSN5Eigen9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEE", !94, i64 0}
!94 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEE", !12, i64 0}
!95 = !{!"p1 _ZTSN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE", !12, i64 0}
!96 = !{}
!97 = !{i64 8}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEE3rowEl: argument 0"}
!100 = distinct !{!100, !"_ZNK5Eigen9DenseBaseINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEE3rowEl"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl: argument 0"}
!103 = distinct !{!103, !"_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE3colEl"}
!104 = distinct !{!104, !27}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !27}
!107 = !{!108, !108, i64 0}
!108 = !{!"p1 _ZTSN5Eigen6MatrixIdLi1ELin1ELi1ELi1ELin1EEE", !12, i64 0}
!109 = !{!110, !95, i64 0}
!110 = !{!"_ZTSN5Eigen9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEE", !95, i64 0}
!111 = !{!93, !94, i64 0}
!112 = !{!113, !18, i64 0}
!113 = !{!"_ZTSN5Eigen8internal16blas_data_mapperIKdlLi1ELi0ELi1EEE", !18, i64 0, !13, i64 8}
!114 = !{!113, !13, i64 8}
!115 = !{!116, !18, i64 0}
!116 = !{!"_ZTSN5Eigen8internal16blas_data_mapperIKdlLi0ELi0ELi1EEE", !18, i64 0, !13, i64 8}
!117 = !{!116, !13, i64 8}
!118 = !{!119, !108, i64 0}
!119 = !{!"_ZTSN5Eigen9TransposeINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEEE", !108, i64 0}
!120 = distinct !{!120, !27}
!121 = distinct !{!121, !27}
!122 = distinct !{!122, !27}
!123 = distinct !{!123, !27}
!124 = distinct !{!124, !27}
!125 = distinct !{!125, !27}
!126 = distinct !{!126, !27}
!127 = distinct !{!127, !27}
!128 = distinct !{!128, !27}
!129 = distinct !{!129, !27}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !31}
!132 = distinct !{!132, !27}
!133 = distinct !{!133, !27}
end_hunk_0
