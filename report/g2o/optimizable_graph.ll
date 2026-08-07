inline.NumInlined: 8546
inline.NumDeleted: 4117
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
._crit_edge.._crit_edge439_crit_edge:             ; preds = %._crit_edge
  %.pre = or disjoint i64 %.0206448, 1
  %.pre553 = or disjoint i64 %.0206448, 2
  %.pre555 = or disjoint i64 %.0206448, 3
  %.pre557 = or disjoint i64 %.0206448, 4
  %.pre559 = or disjoint i64 %.0206448, 5
  %.pre561 = or disjoint i64 %.0206448, 6
  %.pre563 = or disjoint i64 %.0206448, 7
  br label %._crit_edge439

.lr.ph438:                                        ; preds = %._crit_edge
  %i.cb = mul nsw i64 %.0206448, %.sroa.33.0.copyload
  %i.cc = or disjoint i64 %.0206448, 1            ; 2 uses
  %i.cd = mul nsw i64 %i.cc, %.sroa.33.0.copyload
  %i.ce = or disjoint i64 %.0206448, 2            ; 2 uses
  %i.cf = mul nsw i64 %i.ce, %.sroa.33.0.copyload
  %i.cg = or disjoint i64 %.0206448, 3            ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %.sroa.33.0.copyload
  %i.ci = or disjoint i64 %.0206448, 4            ; 2 uses
  %i.cj = mul nsw i64 %i.ci, %.sroa.33.0.copyload
  %i.ck = or disjoint i64 %.0206448, 5            ; 2 uses
  %i.cl = mul nsw i64 %i.ck, %.sroa.33.0.copyload
  %i.cm = or disjoint i64 %.0206448, 6            ; 2 uses
  %i.cn = mul nsw i64 %i.cm, %.sroa.33.0.copyload
  %i.co = or disjoint i64 %.0206448, 7            ; 2 uses
  %i.cp = mul nsw i64 %i.co, %.sroa.33.0.copyload
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph438, %bb.c
  %.1209436 = phi i64 [ %.0208.lcssa, %.lr.ph438 ], [ %i.dw, %bb.c ] ; 3 uses
  %i.cq = phi <8 x double> [ %i.bz, %.lr.ph438 ], [ %i.dv, %bb.c ]
  %i.cr = getelementptr [8 x i8], ptr %i.h, i64 %.1209436
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !242
  %i.ct = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209436 ; 8 uses
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %i.cb
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !242
  %i.cw = getelementptr [8 x i8], ptr %i.ct, i64 %i.cd
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !242
  %i.cy = getelementptr [8 x i8], ptr %i.ct, i64 %i.cf
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !242
  %i.da = getelementptr [8 x i8], ptr %i.ct, i64 %i.ch
  %i.db = load double, ptr %i.da, align 8, !tbaa !242
  %i.dc = getelementptr [8 x i8], ptr %i.ct, i64 %i.cj
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !242
  %i.de = getelementptr [8 x i8], ptr %i.ct, i64 %i.cl
  %i.df = load double, ptr %i.de, align 8, !tbaa !242
  %i.dg = getelementptr [8 x i8], ptr %i.ct, i64 %i.cn
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !242
  %i.di = getelementptr [8 x i8], ptr %i.ct, i64 %i.cp
  %i.dj = load double, ptr %i.di, align 8, !tbaa !242
  %i.dk = insertelement <8 x double> poison, double %i.cs, i64 0
  %i.dl = shufflevector <8 x double> %i.dk, <8 x double> poison, <8 x i32> zeroinitializer
  %i.dm = insertelement <8 x double> poison, double %i.cv, i64 0
  %i.dn = insertelement <8 x double> %i.dm, double %i.cx, i64 1
  %i.do = insertelement <8 x double> %i.dn, double %i.cz, i64 2
  %i.dp = insertelement <8 x double> %i.do, double %i.db, i64 3
  %i.dq = insertelement <8 x double> %i.dp, double %i.dd, i64 4
  %i.dr = insertelement <8 x double> %i.dq, double %i.df, i64 5
  %i.ds = insertelement <8 x double> %i.dr, double %i.dh, i64 6
  %i.dt = insertelement <8 x double> %i.ds, double %i.dj, i64 7
  %i.du = fmul <8 x double> %i.dl, %i.dt
  %i.dv = fadd <8 x double> %i.cq, %i.du          ; 2 uses
  %i.dw = add nuw nsw i64 %.1209436, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %1
  br i1 %exitcond.not, label %._crit_edge439, label %bb.c, !llvm.loop !733

._crit_edge439:                                   ; preds = %bb.c, %._crit_edge.._crit_edge439_crit_edge
  %.pre-phi564 = phi i64 [ %.pre563, %._crit_edge.._crit_edge439_crit_edge ], [ %i.co, %bb.c ]
  %.pre-phi562 = phi i64 [ %.pre561, %._crit_edge.._crit_edge439_crit_edge ], [ %i.cm, %bb.c ]
  %.pre-phi560 = phi i64 [ %.pre559, %._crit_edge.._crit_edge439_crit_edge ], [ %i.ck, %bb.c ]
  %.pre-phi558 = phi i64 [ %.pre557, %._crit_edge.._crit_edge439_crit_edge ], [ %i.ci, %bb.c ]
  %.pre-phi556 = phi i64 [ %.pre555, %._crit_edge.._crit_edge439_crit_edge ], [ %i.cg, %bb.c ]
  %.pre-phi554 = phi i64 [ %.pre553, %._crit_edge.._crit_edge439_crit_edge ], [ %i.ce, %bb.c ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.._crit_edge439_crit_edge ], [ %i.cc, %bb.c ]
  %i.dx = phi <8 x double> [ %i.bz, %._crit_edge.._crit_edge439_crit_edge ], [ %i.dv, %bb.c ] ; 8 uses
  %i.dy = mul nsw i64 %.0206448, %5
  %i.dz = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dy ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !242
  %i.eb = extractelement <8 x double> %i.dx, i64 0
  %i.ec = tail call double @llvm.fmuladd.f64(double %6, double %i.eb, double %i.ea)
  store double %i.ec, ptr %i.dz, align 8, !tbaa !242
  %i.ed = mul nsw i64 %.pre-phi, %5
  %i.ee = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ed ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !242
  %i.eg = extractelement <8 x double> %i.dx, i64 1
  %i.eh = tail call double @llvm.fmuladd.f64(double %6, double %i.eg, double %i.ef)
  store double %i.eh, ptr %i.ee, align 8, !tbaa !242
  %i.ei = mul nsw i64 %.pre-phi554, %5
  %i.ej = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ei ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !242
  %i.el = extractelement <8 x double> %i.dx, i64 2
  %i.em = tail call double @llvm.fmuladd.f64(double %6, double %i.el, double %i.ek)
  store double %i.em, ptr %i.ej, align 8, !tbaa !242
  %i.en = mul nsw i64 %.pre-phi556, %5
  %i.eo = getelementptr inbounds [8 x i8], ptr %4, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !242
  %i.eq = extractelement <8 x double> %i.dx, i64 3
  %i.er = tail call double @llvm.fmuladd.f64(double %6, double %i.eq, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !242
  %i.es = mul nsw i64 %.pre-phi558, %5
  %i.et = getelementptr inbounds [8 x i8], ptr %4, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !242
  %i.ev = extractelement <8 x double> %i.dx, i64 4
  %i.ew = tail call double @llvm.fmuladd.f64(double %6, double %i.ev, double %i.eu)
  store double %i.ew, ptr %i.et, align 8, !tbaa !242
  %i.ex = mul nsw i64 %.pre-phi560, %5
  %i.ey = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ex ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !242
  %i.fa = extractelement <8 x double> %i.dx, i64 5
  %i.fb = tail call double @llvm.fmuladd.f64(double %6, double %i.fa, double %i.ez)
  store double %i.fb, ptr %i.ey, align 8, !tbaa !242
  %i.fc = mul nsw i64 %.pre-phi562, %5
  %i.fd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !242
  %i.ff = extractelement <8 x double> %i.dx, i64 6
  %i.fg = tail call double @llvm.fmuladd.f64(double %6, double %i.ff, double %i.fe)
  store double %i.fg, ptr %i.fd, align 8, !tbaa !242
  %i.fh = mul nsw i64 %.pre-phi564, %5
  %i.fi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !242
  %i.fk = extractelement <8 x double> %i.dx, i64 7
  %i.fl = tail call double @llvm.fmuladd.f64(double %6, double %i.fk, double %i.fj)
  store double %i.fl, ptr %i.fi, align 8, !tbaa !242
  %i.fm = add nuw nsw i64 %.0206448, 8            ; 3 uses
  %i.fn = icmp sgt i64 %i.c, %i.fm
  br i1 %i.fn, label %.preheader409, label %.preheader408, !llvm.loop !734

.preheader407:                                    ; preds = %.preheader407.lr.ph, %._crit_edge470
  %.1207475 = phi i64 [ %.0206.lcssa, %.preheader407.lr.ph ], [ %i.ja, %._crit_edge470 ] ; 13 uses
  br i1 %.not237450, label %._crit_edge457, label %.lr.ph456

.lr.ph456:                                        ; preds = %.preheader407
  %i.fo = load ptr, ptr %3, align 8, !tbaa !703
  %i.fp = mul nsw i64 %.1207475, %.sroa.33.0.copyload
  %i.fq = add nuw nsw i64 %.1207475, 1
  %i.fr = mul nsw i64 %i.fq, %.sroa.33.0.copyload
  %i.fs = add nuw nsw i64 %.1207475, 2
  %i.ft = mul nsw i64 %i.fs, %.sroa.33.0.copyload
  %i.fu = add nuw nsw i64 %.1207475, 3
  %i.fv = mul nsw i64 %i.fu, %.sroa.33.0.copyload
  br label %bb.d

.preheader406:                                    ; preds = %._crit_edge470, %.preheader408
  %.1207.lcssa = phi i64 [ %.0206.lcssa, %.preheader408 ], [ %i.ja, %._crit_edge470 ] ; 3 uses
  %i.fw = icmp slt i64 %.1207.lcssa, %i.e
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
  %.0218455 = phi i64 [ 0, %.lr.ph456 ], [ %i.gd, %bb.d ] ; 2 uses
  %.0398454 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gk, %bb.d ]
  %.0399453 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.go, %bb.d ]
  %.0401452 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gs, %bb.d ]
  %.0403451 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gw, %bb.d ]
  %i.ge = getelementptr [8 x i8], ptr %i.fo, i64 %.0218455
  %i.gf = load <2 x double>, ptr %i.ge, align 1, !tbaa !78 ; 4 uses
  %i.gg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0218455 ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %i.fp
  %i.gi = load <2 x double>, ptr %i.gh, align 1, !tbaa !78
  %i.gj = fmul <2 x double> %i.gf, %i.gi
  %i.gk = fadd <2 x double> %.0398454, %i.gj      ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gg, i64 %i.fr
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !78
  %i.gn = fmul <2 x double> %i.gf, %i.gm
  %i.go = fadd <2 x double> %.0399453, %i.gn      ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.gg, i64 %i.ft
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !78
  %i.gr = fmul <2 x double> %i.gf, %i.gq
  %i.gs = fadd <2 x double> %.0401452, %i.gr      ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gg, i64 %i.fv
  %i.gu = load <2 x double>, ptr %i.gt, align 1, !tbaa !78
  %i.gv = fmul <2 x double> %i.gf, %i.gu
  %i.gw = fadd <2 x double> %.0403451, %i.gv      ; 2 uses
  %i.gx = add nuw nsw i64 %i.gd, 2                ; 2 uses
  %.not237 = icmp sgt i64 %i.gx, %1
  br i1 %.not237, label %._crit_edge457, label %bb.d, !llvm.loop !735

._crit_edge457:                                   ; preds = %bb.d, %.preheader407
  %.0403.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gw, %bb.d ] ; 2 uses
  %.0401.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gs, %bb.d ] ; 2 uses
  %.0399.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.go, %bb.d ] ; 2 uses
  %.0398.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gk, %bb.d ] ; 2 uses
  %.0218.lcssa = phi i64 [ 0, %.preheader407 ], [ %i.z, %bb.d ] ; 2 uses
  %i.gy = shufflevector <2 x double> %.0398.lcssa, <2 x double> %.0399.lcssa, <2 x i32> <i32 0, i32 2>
  %i.gz = shufflevector <2 x double> %.0401.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 0, i32 2>
  %7 = shufflevector <2 x double> %.0398.lcssa, <2 x double> %.0399.lcssa, <2 x i32> <i32 1, i32 3>
  %i.ha = shufflevector <2 x double> %.0401.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 1, i32 3>
  %8 = fadd <2 x double> %i.gy, %7
  %9 = fadd <2 x double> %i.gz, %i.ha
  %10 = shufflevector <2 x double> %8, <2 x double> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.hb = icmp slt i64 %.0218.lcssa, %1
  br i1 %i.hb, label %.lr.ph469, label %._crit_edge457.._crit_edge470_crit_edge

._crit_edge457.._crit_edge470_crit_edge:          ; preds = %._crit_edge457
  %.pre565 = add nuw nsw i64 %.1207475, 1
  %.pre567 = add nuw nsw i64 %.1207475, 2
  %.pre569 = add nuw nsw i64 %.1207475, 3
  br label %._crit_edge470

.lr.ph469:                                        ; preds = %._crit_edge457
  %i.hc = load ptr, ptr %3, align 8, !tbaa !703
  %i.hd = mul nsw i64 %.1207475, %.sroa.33.0.copyload
  %i.he = add nuw nsw i64 %.1207475, 1            ; 2 uses
  %i.hf = mul nsw i64 %i.he, %.sroa.33.0.copyload
  %i.hg = add nuw nsw i64 %.1207475, 2            ; 2 uses
  %i.hh = mul nsw i64 %i.hg, %.sroa.33.0.copyload
  %i.hi = add nuw nsw i64 %.1207475, 3            ; 2 uses
  %i.hj = mul nsw i64 %i.hi, %.sroa.33.0.copyload
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph469, %bb.e
  %.1219463 = phi i64 [ %.0218.lcssa, %.lr.ph469 ], [ %i.ie, %bb.e ] ; 3 uses
  %i.hk = phi <4 x double> [ %10, %.lr.ph469 ], [ %i.id, %bb.e ]
  %i.hl = getelementptr [8 x i8], ptr %i.hc, i64 %.1219463
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !242
  %i.hn = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1219463 ; 4 uses
  %i.ho = getelementptr [8 x i8], ptr %i.hn, i64 %i.hd
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !242
  %i.hq = getelementptr [8 x i8], ptr %i.hn, i64 %i.hf
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !242
  %i.hs = getelementptr [8 x i8], ptr %i.hn, i64 %i.hh
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !242
  %i.hu = getelementptr [8 x i8], ptr %i.hn, i64 %i.hj
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !242
  %i.hw = insertelement <4 x double> poison, double %i.hm, i64 0
  %i.hx = shufflevector <4 x double> %i.hw, <4 x double> poison, <4 x i32> zeroinitializer
  %i.hy = insertelement <4 x double> poison, double %i.hp, i64 0
  %i.hz = insertelement <4 x double> %i.hy, double %i.hr, i64 1
  %i.ia = insertelement <4 x double> %i.hz, double %i.ht, i64 2
  %i.ib = insertelement <4 x double> %i.ia, double %i.hv, i64 3
  %i.ic = fmul <4 x double> %i.hx, %i.ib
  %i.id = fadd <4 x double> %i.hk, %i.ic          ; 2 uses
  %i.ie = add nuw nsw i64 %.1219463, 1            ; 2 uses
  %exitcond549.not = icmp eq i64 %i.ie, %1
  br i1 %exitcond549.not, label %._crit_edge470, label %bb.e, !llvm.loop !736

._crit_edge470:                                   ; preds = %bb.e, %._crit_edge457.._crit_edge470_crit_edge
  %.pre-phi570 = phi i64 [ %.pre569, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hi, %bb.e ]
  %.pre-phi568 = phi i64 [ %.pre567, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hg, %bb.e ]
  %.pre-phi566 = phi i64 [ %.pre565, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.he, %bb.e ]
  %i.if = phi <4 x double> [ %10, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.id, %bb.e ] ; 4 uses
  %i.ig = mul nsw i64 %.1207475, %5
  %i.ih = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ig ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !242
  %i.ij = extractelement <4 x double> %i.if, i64 0
  %i.ik = tail call double @llvm.fmuladd.f64(double %6, double %i.ij, double %i.ii)
  store double %i.ik, ptr %i.ih, align 8, !tbaa !242
  %i.il = mul nsw i64 %.pre-phi566, %5
  %i.im = getelementptr inbounds [8 x i8], ptr %4, i64 %i.il ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !242
  %i.io = extractelement <4 x double> %i.if, i64 1
  %i.ip = tail call double @llvm.fmuladd.f64(double %6, double %i.io, double %i.in)
  store double %i.ip, ptr %i.im, align 8, !tbaa !242
  %i.iq = mul nsw i64 %.pre-phi568, %5
  %i.ir = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iq ; 2 uses
  %i.is = load double, ptr %i.ir, align 8, !tbaa !242
  %i.it = extractelement <4 x double> %i.if, i64 2
  %i.iu = tail call double @llvm.fmuladd.f64(double %6, double %i.it, double %i.is)
  store double %i.iu, ptr %i.ir, align 8, !tbaa !242
  %i.iv = mul nsw i64 %.pre-phi570, %5
  %i.iw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iv ; 2 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !242
  %i.iy = extractelement <4 x double> %i.if, i64 3
  %i.iz = tail call double @llvm.fmuladd.f64(double %6, double %i.iy, double %i.ix)
  store double %i.iz, ptr %i.iw, align 8, !tbaa !242
  %i.ja = add nuw nsw i64 %.1207475, 4            ; 3 uses
  %i.jb = icmp slt i64 %i.ja, %i.d
  br i1 %i.jb, label %.preheader407, label %.preheader406, !llvm.loop !737

.preheader405:                                    ; preds = %.preheader405.lr.ph, %._crit_edge491
  %.2494 = phi i64 [ %.1207.lcssa, %.preheader405.lr.ph ], [ %i.nh, %._crit_edge491 ] ; 7 uses
  br i1 %.not236477, label %._crit_edge482, label %.lr.ph481

.lr.ph481:                                        ; preds = %.preheader405
  %i.jc = load ptr, ptr %3, align 8, !tbaa !703   ; 3 uses
  %i.jd = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.je = add nuw nsw i64 %.2494, 1
  %i.jf = mul nsw i64 %i.je, %.sroa.33.0.copyload ; 3 uses
  br i1 %i.gb, label %.epil.preheader, label %.lr.ph481.new

.preheader404:                                    ; preds = %._crit_edge491, %.preheader406
  %.2.lcssa = phi i64 [ %.1207.lcssa, %.preheader406 ], [ %i.nh, %._crit_edge491 ] ; 2 uses
  %i.jg = icmp slt i64 %.2.lcssa, %0
  br i1 %i.jg, label %.preheader.lr.ph, label %._crit_edge512

.preheader.lr.ph:                                 ; preds = %.preheader404
  %.not496 = icmp slt i64 %1, 2
  %i.jh = and i64 %1, -2                          ; 2 uses
  %i.ji = add i64 %1, -2                          ; 2 uses
  %i.jj = lshr i64 %i.ji, 1
  %i.jk = add nuw i64 %i.jj, 1                    ; 2 uses
  %xtraiter675 = and i64 %i.jk, 3                 ; 3 uses
  %i.jl = icmp ult i64 %i.ji, 6
  %unroll_iter680 = and i64 %i.jk, -4
  %lcmp.mod677.not = icmp eq i64 %xtraiter675, 0
  %lcmp.mod679 = icmp ne i64 %xtraiter675, 0
  br label %.preheader

.lr.ph481.new:                                    ; preds = %.lr.ph481, %.lr.ph481.new
  %i.jm = phi i64 [ %i.kk, %.lr.ph481.new ], [ 2, %.lr.ph481 ] ; 4 uses
  %.0212480 = phi i64 [ %i.jy, %.lr.ph481.new ], [ 0, %.lr.ph481 ] ; 2 uses
  %.0400479 = phi <2 x double> [ %i.kj, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %.0402478 = phi <2 x double> [ %i.kf, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph481.new ], [ 0, %.lr.ph481 ]
  %i.jn = getelementptr [8 x i8], ptr %i.jc, i64 %.0212480
  %i.jo = load <2 x double>, ptr %i.jn, align 1, !tbaa !78 ; 2 uses
  %i.jp = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0212480 ; 2 uses
  %i.jq = getelementptr [8 x i8], ptr %i.jp, i64 %i.jd
  %i.jr = load <2 x double>, ptr %i.jq, align 1, !tbaa !78
  %i.js = fmul <2 x double> %i.jo, %i.jr
  %i.jt = fadd <2 x double> %.0402478, %i.js
  %i.ju = getelementptr [8 x i8], ptr %i.jp, i64 %i.jf
  %i.jv = load <2 x double>, ptr %i.ju, align 1, !tbaa !78
  %i.jw = fmul <2 x double> %i.jo, %i.jv
  %i.jx = fadd <2 x double> %.0400479, %i.jw
  %i.jy = add nuw nsw i64 %i.jm, 2                ; 2 uses
  %i.jz = getelementptr [8 x i8], ptr %i.jc, i64 %i.jm
  %i.ka = load <2 x double>, ptr %i.jz, align 1, !tbaa !78 ; 2 uses
  %i.kb = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.jm ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.kb, i64 %i.jd
  %i.kd = load <2 x double>, ptr %i.kc, align 1, !tbaa !78
  %i.ke = fmul <2 x double> %i.ka, %i.kd
  %i.kf = fadd <2 x double> %i.jt, %i.ke          ; 3 uses
  %i.kg = getelementptr [8 x i8], ptr %i.kb, i64 %i.jf
  %i.kh = load <2 x double>, ptr %i.kg, align 1, !tbaa !78
  %i.ki = fmul <2 x double> %i.ka, %i.kh
  %i.kj = fadd <2 x double> %i.jx, %i.ki          ; 3 uses
  %i.kk = add nuw nsw i64 %i.jm, 4
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !738

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0212480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %i.jy, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0400479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ]
  %.0402478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kf, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.kl = getelementptr [8 x i8], ptr %i.jc, i64 %.0212480.epil.init
  %i.km = load <2 x double>, ptr %i.kl, align 1, !tbaa !78 ; 2 uses
  %i.kn = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0212480.epil.init ; 2 uses
  %i.ko = getelementptr [8 x i8], ptr %i.kn, i64 %i.jd
  %i.kp = load <2 x double>, ptr %i.ko, align 1, !tbaa !78
  %i.kq = fmul <2 x double> %i.km, %i.kp
  %i.kr = fadd <2 x double> %.0402478.epil.init, %i.kq
  %i.ks = getelementptr [8 x i8], ptr %i.kn, i64 %i.jf
  %i.kt = load <2 x double>, ptr %i.ks, align 1, !tbaa !78
  %i.ku = fmul <2 x double> %i.km, %i.kt
  %i.kv = fadd <2 x double> %.0400479.epil.init, %i.ku
  br label %._crit_edge482

._crit_edge482:                                   ; preds = %.epil.preheader, %._crit_edge482.loopexit.unr-lcssa, %.preheader405
  %.0402.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kf, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kr, %.epil.preheader ] ; 2 uses
  %.0400.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kv, %.epil.preheader ] ; 2 uses
  %.0212.lcssa = phi i64 [ 0, %.preheader405 ], [ %i.fx, %._crit_edge482.loopexit.unr-lcssa ], [ %i.fx, %.epil.preheader ] ; 6 uses
  %i.kw = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0400.lcssa, <2 x i32> <i32 0, i32 2>
  %i.kx = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0400.lcssa, <2 x i32> <i32 1, i32 3>
  %i.ky = fadd <2 x double> %i.kw, %i.kx          ; 3 uses
  %i.kz = icmp slt i64 %.0212.lcssa, %1
  br i1 %i.kz, label %.lr.ph490, label %._crit_edge482.._crit_edge491_crit_edge

._crit_edge482.._crit_edge491_crit_edge:          ; preds = %._crit_edge482
  %.pre571 = add nuw nsw i64 %.2494, 1
  br label %._crit_edge491

.lr.ph490:                                        ; preds = %._crit_edge482
  %i.la = load ptr, ptr %3, align 8, !tbaa !703   ; 3 uses
  %i.lb = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.lc = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.ld = mul nsw i64 %i.lc, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0212.lcssa, 1
  br i1 %lcmp.mod673.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.le = getelementptr [8 x i8], ptr %i.la, i64 %.0212.lcssa
  %i.lf = load double, ptr %i.le, align 8, !tbaa !242
  %i.lg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0212.lcssa ; 2 uses
  %i.lh = getelementptr [8 x i8], ptr %i.lg, i64 %i.lb
  %i.li = load double, ptr %i.lh, align 8, !tbaa !242
  %i.lj = getelementptr [8 x i8], ptr %i.lg, i64 %i.ld
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !242
  %i.ll = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = insertelement <2 x double> poison, double %i.li, i64 0
  %i.lo = insertelement <2 x double> %i.ln, double %i.lk, i64 1
  %i.lp = fmul <2 x double> %i.lm, %i.lo
  %i.lq = fadd <2 x double> %i.ky, %i.lp          ; 2 uses
  %i.lr = or disjoint i64 %.0212.lcssa, 1
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdS3_Lb0ELi1EE3runEllRKS3_S6_Pdld:bb.a
  %.pre557 = or disjoint i64 %.0206448, 4
  %.pre559 = or disjoint i64 %.0206448, 5
  %.pre561 = or disjoint i64 %.0206448, 6
  %.pre563 = or disjoint i64 %.0206448, 7
  br label %._crit_edge439

.lr.ph438:                                        ; preds = %._crit_edge
  %i.cf = mul nsw i64 %.0206448, %.sroa.33.0.copyload
  %i.cg = or disjoint i64 %.0206448, 1            ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %.sroa.33.0.copyload
  %i.ci = or disjoint i64 %.0206448, 2            ; 2 uses
  %i.cj = mul nsw i64 %i.ci, %.sroa.33.0.copyload
  %i.ck = or disjoint i64 %.0206448, 3            ; 2 uses
  %i.cl = mul nsw i64 %i.ck, %.sroa.33.0.copyload
  %i.cm = or disjoint i64 %.0206448, 4            ; 2 uses
  %i.cn = mul nsw i64 %i.cm, %.sroa.33.0.copyload
  %i.co = or disjoint i64 %.0206448, 5            ; 2 uses
  %i.cp = mul nsw i64 %i.co, %.sroa.33.0.copyload
  %i.cq = or disjoint i64 %.0206448, 6            ; 2 uses
  %i.cr = mul nsw i64 %i.cq, %.sroa.33.0.copyload
  %i.cs = or disjoint i64 %.0206448, 7            ; 2 uses
  %i.ct = mul nsw i64 %i.cs, %.sroa.33.0.copyload
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph438, %bb.c
  %.1209436 = phi i64 [ %.0208.lcssa, %.lr.ph438 ], [ %i.eb, %bb.c ] ; 3 uses
  %i.cu = phi <8 x double> [ %i.cd, %.lr.ph438 ], [ %i.ea, %bb.c ]
  %i.cv = mul nsw i64 %i.j, %.1209436
  %i.cw = getelementptr [8 x i8], ptr %i.h, i64 %i.cv
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !242
  %i.cy = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209436 ; 8 uses
  %i.cz = getelementptr [8 x i8], ptr %i.cy, i64 %i.cf
  %i.da = load double, ptr %i.cz, align 8, !tbaa !242
  %i.db = getelementptr [8 x i8], ptr %i.cy, i64 %i.ch
  %i.dc = load double, ptr %i.db, align 8, !tbaa !242
  %i.dd = getelementptr [8 x i8], ptr %i.cy, i64 %i.cj
  %i.de = load double, ptr %i.dd, align 8, !tbaa !242
  %i.df = getelementptr [8 x i8], ptr %i.cy, i64 %i.cl
  %i.dg = load double, ptr %i.df, align 8, !tbaa !242
  %i.dh = getelementptr [8 x i8], ptr %i.cy, i64 %i.cn
  %i.di = load double, ptr %i.dh, align 8, !tbaa !242
  %i.dj = getelementptr [8 x i8], ptr %i.cy, i64 %i.cp
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !242
  %i.dl = getelementptr [8 x i8], ptr %i.cy, i64 %i.cr
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !242
  %i.dn = getelementptr [8 x i8], ptr %i.cy, i64 %i.ct
  %i.do = load double, ptr %i.dn, align 8, !tbaa !242
  %i.dp = insertelement <8 x double> poison, double %i.cx, i64 0
  %i.dq = shufflevector <8 x double> %i.dp, <8 x double> poison, <8 x i32> zeroinitializer
  %i.dr = insertelement <8 x double> poison, double %i.da, i64 0
  %i.ds = insertelement <8 x double> %i.dr, double %i.dc, i64 1
  %i.dt = insertelement <8 x double> %i.ds, double %i.de, i64 2
  %i.du = insertelement <8 x double> %i.dt, double %i.dg, i64 3
  %i.dv = insertelement <8 x double> %i.du, double %i.di, i64 4
  %i.dw = insertelement <8 x double> %i.dv, double %i.dk, i64 5
  %i.dx = insertelement <8 x double> %i.dw, double %i.dm, i64 6
  %i.dy = insertelement <8 x double> %i.dx, double %i.do, i64 7
  %i.dz = fmul <8 x double> %i.dq, %i.dy
  %i.ea = fadd <8 x double> %i.cu, %i.dz          ; 2 uses
  %i.eb = add nuw nsw i64 %.1209436, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.eb, %1
  br i1 %exitcond.not, label %._crit_edge439, label %bb.c, !llvm.loop !831

._crit_edge439:                                   ; preds = %bb.c, %._crit_edge.._crit_edge439_crit_edge
  %.pre-phi564 = phi i64 [ %.pre563, %._crit_edge.._crit_edge439_crit_edge ], [ %i.cs, %bb.c ]
  %.pre-phi562 = phi i64 [ %.pre561, %._crit_edge.._crit_edge439_crit_edge ], [ %i.cq, %bb.c ]
  %.pre-phi560 = phi i64 [ %.pre559, %._crit_edge.._crit_edge439_crit_edge ], [ %i.co, %bb.c ]
  %.pre-phi558 = phi i64 [ %.pre557, %._crit_edge.._crit_edge439_crit_edge ], [ %i.cm, %bb.c ]
  %.pre-phi556 = phi i64 [ %.pre555, %._crit_edge.._crit_edge439_crit_edge ], [ %i.ck, %bb.c ]
  %.pre-phi554 = phi i64 [ %.pre553, %._crit_edge.._crit_edge439_crit_edge ], [ %i.ci, %bb.c ]
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.._crit_edge439_crit_edge ], [ %i.cg, %bb.c ]
  %i.ec = phi <8 x double> [ %i.cd, %._crit_edge.._crit_edge439_crit_edge ], [ %i.ea, %bb.c ] ; 8 uses
  %i.ed = mul nsw i64 %.0206448, %5
  %i.ee = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ed ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !242
  %i.eg = extractelement <8 x double> %i.ec, i64 0
  %i.eh = tail call double @llvm.fmuladd.f64(double %6, double %i.eg, double %i.ef)
  store double %i.eh, ptr %i.ee, align 8, !tbaa !242
  %i.ei = mul nsw i64 %.pre-phi, %5
  %i.ej = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ei ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !242
  %i.el = extractelement <8 x double> %i.ec, i64 1
  %i.em = tail call double @llvm.fmuladd.f64(double %6, double %i.el, double %i.ek)
  store double %i.em, ptr %i.ej, align 8, !tbaa !242
  %i.en = mul nsw i64 %.pre-phi554, %5
  %i.eo = getelementptr inbounds [8 x i8], ptr %4, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !242
  %i.eq = extractelement <8 x double> %i.ec, i64 2
  %i.er = tail call double @llvm.fmuladd.f64(double %6, double %i.eq, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !242
  %i.es = mul nsw i64 %.pre-phi556, %5
  %i.et = getelementptr inbounds [8 x i8], ptr %4, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !242
  %i.ev = extractelement <8 x double> %i.ec, i64 3
  %i.ew = tail call double @llvm.fmuladd.f64(double %6, double %i.ev, double %i.eu)
  store double %i.ew, ptr %i.et, align 8, !tbaa !242
  %i.ex = mul nsw i64 %.pre-phi558, %5
  %i.ey = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ex ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !242
  %i.fa = extractelement <8 x double> %i.ec, i64 4
  %i.fb = tail call double @llvm.fmuladd.f64(double %6, double %i.fa, double %i.ez)
  store double %i.fb, ptr %i.ey, align 8, !tbaa !242
  %i.fc = mul nsw i64 %.pre-phi560, %5
  %i.fd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !242
  %i.ff = extractelement <8 x double> %i.ec, i64 5
  %i.fg = tail call double @llvm.fmuladd.f64(double %6, double %i.ff, double %i.fe)
  store double %i.fg, ptr %i.fd, align 8, !tbaa !242
  %i.fh = mul nsw i64 %.pre-phi562, %5
  %i.fi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !242
  %i.fk = extractelement <8 x double> %i.ec, i64 6
  %i.fl = tail call double @llvm.fmuladd.f64(double %6, double %i.fk, double %i.fj)
  store double %i.fl, ptr %i.fi, align 8, !tbaa !242
  %i.fm = mul nsw i64 %.pre-phi564, %5
  %i.fn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fm ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !242
  %i.fp = extractelement <8 x double> %i.ec, i64 7
  %i.fq = tail call double @llvm.fmuladd.f64(double %6, double %i.fp, double %i.fo)
  store double %i.fq, ptr %i.fn, align 8, !tbaa !242
  %i.fr = add nuw nsw i64 %.0206448, 8            ; 3 uses
  %i.fs = icmp sgt i64 %i.c, %i.fr
  br i1 %i.fs, label %.preheader409, label %.preheader408, !llvm.loop !832

.preheader407:                                    ; preds = %.preheader407.lr.ph, %._crit_edge470
  %.1207475 = phi i64 [ %.0206.lcssa, %.preheader407.lr.ph ], [ %i.jk, %._crit_edge470 ] ; 13 uses
  br i1 %.not237450, label %._crit_edge457, label %.lr.ph456

.lr.ph456:                                        ; preds = %.preheader407
  %i.ft = load ptr, ptr %3, align 8, !tbaa !706
  %i.fu = load i64, ptr %i.ab, align 8, !tbaa !708
  %i.fv = mul nsw i64 %.1207475, %.sroa.33.0.copyload
  %i.fw = add nuw nsw i64 %.1207475, 1
  %i.fx = mul nsw i64 %i.fw, %.sroa.33.0.copyload
  %i.fy = add nuw nsw i64 %.1207475, 2
  %i.fz = mul nsw i64 %i.fy, %.sroa.33.0.copyload
  %i.ga = add nuw nsw i64 %.1207475, 3
  %i.gb = mul nsw i64 %i.ga, %.sroa.33.0.copyload
  br label %bb.d

.preheader406:                                    ; preds = %._crit_edge470, %.preheader408
  %.1207.lcssa = phi i64 [ %.0206.lcssa, %.preheader408 ], [ %i.jk, %._crit_edge470 ] ; 3 uses
  %i.gc = icmp slt i64 %.1207.lcssa, %i.e
  br i1 %i.gc, label %.preheader405.lr.ph, label %.preheader404

.preheader405.lr.ph:                              ; preds = %.preheader406
  %.not236477 = icmp slt i64 %1, 2
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ge = and i64 %1, -2                          ; 2 uses
  %i.gf = add i64 %1, -2                          ; 2 uses
  %i.gg = lshr i64 %i.gf, 1                       ; 2 uses
  %i.gh = add nuw i64 %i.gg, 1                    ; 2 uses
  %i.gi = icmp eq i64 %i.gg, 0
  %unroll_iter = and i64 %i.gh, -2
  %i.gj = and i64 %i.gf, 2
  %lcmp.mod.not.not = icmp eq i64 %i.gj, 0
  %lcmp.mod671 = trunc i64 %i.gh to i1
  %xtraiter672 = and i64 %1, 1
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  br label %.preheader405

bb.d:                                             ; preds = %.lr.ph456, %bb.d
  %i.gk = phi i64 [ 2, %.lr.ph456 ], [ %i.hf, %bb.d ] ; 2 uses
  %.0218455 = phi i64 [ 0, %.lr.ph456 ], [ %i.gk, %bb.d ] ; 2 uses
  %.0398454 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gs, %bb.d ]
  %.0399453 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gw, %bb.d ]
  %.0401452 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.ha, %bb.d ]
  %.0403451 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.he, %bb.d ]
  %i.gl = mul nsw i64 %i.fu, %.0218455
  %i.gm = getelementptr [8 x i8], ptr %i.ft, i64 %i.gl
  %i.gn = load <2 x double>, ptr %i.gm, align 1, !tbaa !78 ; 4 uses
  %i.go = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0218455 ; 4 uses
  %i.gp = getelementptr [8 x i8], ptr %i.go, i64 %i.fv
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !78
  %i.gr = fmul <2 x double> %i.gn, %i.gq
  %i.gs = fadd <2 x double> %.0398454, %i.gr      ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.go, i64 %i.fx
  %i.gu = load <2 x double>, ptr %i.gt, align 1, !tbaa !78
  %i.gv = fmul <2 x double> %i.gn, %i.gu
  %i.gw = fadd <2 x double> %.0399453, %i.gv      ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr %i.go, i64 %i.fz
  %i.gy = load <2 x double>, ptr %i.gx, align 1, !tbaa !78
  %i.gz = fmul <2 x double> %i.gn, %i.gy
  %i.ha = fadd <2 x double> %.0401452, %i.gz      ; 2 uses
  %i.hb = getelementptr [8 x i8], ptr %i.go, i64 %i.gb
  %i.hc = load <2 x double>, ptr %i.hb, align 1, !tbaa !78
  %i.hd = fmul <2 x double> %i.gn, %i.hc
  %i.he = fadd <2 x double> %.0403451, %i.hd      ; 2 uses
  %i.hf = add nuw nsw i64 %i.gk, 2                ; 2 uses
  %.not237 = icmp sgt i64 %i.hf, %1
  br i1 %.not237, label %._crit_edge457, label %bb.d, !llvm.loop !833

._crit_edge457:                                   ; preds = %bb.d, %.preheader407
  %.0403.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.he, %bb.d ] ; 2 uses
  %.0401.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.ha, %bb.d ] ; 2 uses
  %.0399.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gw, %bb.d ] ; 2 uses
  %.0398.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gs, %bb.d ] ; 2 uses
  %.0218.lcssa = phi i64 [ 0, %.preheader407 ], [ %i.ac, %bb.d ] ; 2 uses
  %i.hg = shufflevector <2 x double> %.0398.lcssa, <2 x double> %.0399.lcssa, <2 x i32> <i32 0, i32 2>
  %i.hh = shufflevector <2 x double> %.0401.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 0, i32 2>
  %7 = shufflevector <2 x double> %.0398.lcssa, <2 x double> %.0399.lcssa, <2 x i32> <i32 1, i32 3>
  %i.hi = shufflevector <2 x double> %.0401.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 1, i32 3>
  %8 = fadd <2 x double> %i.hg, %7
  %9 = fadd <2 x double> %i.hh, %i.hi
  %10 = shufflevector <2 x double> %8, <2 x double> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.hj = icmp slt i64 %.0218.lcssa, %1
  br i1 %i.hj, label %.lr.ph469, label %._crit_edge457.._crit_edge470_crit_edge

._crit_edge457.._crit_edge470_crit_edge:          ; preds = %._crit_edge457
  %.pre565 = add nuw nsw i64 %.1207475, 1
  %.pre567 = add nuw nsw i64 %.1207475, 2
  %.pre569 = add nuw nsw i64 %.1207475, 3
  br label %._crit_edge470

.lr.ph469:                                        ; preds = %._crit_edge457
  %i.hk = load ptr, ptr %3, align 8, !tbaa !706
  %i.hl = load i64, ptr %i.ab, align 8, !tbaa !708
  %i.hm = mul nsw i64 %.1207475, %.sroa.33.0.copyload
  %i.hn = add nuw nsw i64 %.1207475, 1            ; 2 uses
  %i.ho = mul nsw i64 %i.hn, %.sroa.33.0.copyload
  %i.hp = add nuw nsw i64 %.1207475, 2            ; 2 uses
  %i.hq = mul nsw i64 %i.hp, %.sroa.33.0.copyload
  %i.hr = add nuw nsw i64 %.1207475, 3            ; 2 uses
  %i.hs = mul nsw i64 %i.hr, %.sroa.33.0.copyload
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph469, %bb.e
  %.1219463 = phi i64 [ %.0218.lcssa, %.lr.ph469 ], [ %i.io, %bb.e ] ; 3 uses
  %i.ht = phi <4 x double> [ %10, %.lr.ph469 ], [ %i.in, %bb.e ]
  %i.hu = mul nsw i64 %i.hl, %.1219463
  %i.hv = getelementptr [8 x i8], ptr %i.hk, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !242
  %i.hx = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1219463 ; 4 uses
  %i.hy = getelementptr [8 x i8], ptr %i.hx, i64 %i.hm
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !242
  %i.ia = getelementptr [8 x i8], ptr %i.hx, i64 %i.ho
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !242
  %i.ic = getelementptr [8 x i8], ptr %i.hx, i64 %i.hq
  %i.id = load double, ptr %i.ic, align 8, !tbaa !242
  %i.ie = getelementptr [8 x i8], ptr %i.hx, i64 %i.hs
  %i.if = load double, ptr %i.ie, align 8, !tbaa !242
  %i.ig = insertelement <4 x double> poison, double %i.hw, i64 0
  %i.ih = shufflevector <4 x double> %i.ig, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ii = insertelement <4 x double> poison, double %i.hz, i64 0
  %i.ij = insertelement <4 x double> %i.ii, double %i.ib, i64 1
  %i.ik = insertelement <4 x double> %i.ij, double %i.id, i64 2
  %i.il = insertelement <4 x double> %i.ik, double %i.if, i64 3
  %i.im = fmul <4 x double> %i.ih, %i.il
  %i.in = fadd <4 x double> %i.ht, %i.im          ; 2 uses
  %i.io = add nuw nsw i64 %.1219463, 1            ; 2 uses
  %exitcond549.not = icmp eq i64 %i.io, %1
  br i1 %exitcond549.not, label %._crit_edge470, label %bb.e, !llvm.loop !834

._crit_edge470:                                   ; preds = %bb.e, %._crit_edge457.._crit_edge470_crit_edge
  %.pre-phi570 = phi i64 [ %.pre569, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hr, %bb.e ]
  %.pre-phi568 = phi i64 [ %.pre567, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hp, %bb.e ]
  %.pre-phi566 = phi i64 [ %.pre565, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hn, %bb.e ]
  %i.ip = phi <4 x double> [ %10, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.in, %bb.e ] ; 4 uses
  %i.iq = mul nsw i64 %.1207475, %5
  %i.ir = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iq ; 2 uses
  %i.is = load double, ptr %i.ir, align 8, !tbaa !242
  %i.it = extractelement <4 x double> %i.ip, i64 0
  %i.iu = tail call double @llvm.fmuladd.f64(double %6, double %i.it, double %i.is)
  store double %i.iu, ptr %i.ir, align 8, !tbaa !242
  %i.iv = mul nsw i64 %.pre-phi566, %5
  %i.iw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iv ; 2 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !242
  %i.iy = extractelement <4 x double> %i.ip, i64 1
  %i.iz = tail call double @llvm.fmuladd.f64(double %6, double %i.iy, double %i.ix)
  store double %i.iz, ptr %i.iw, align 8, !tbaa !242
  %i.ja = mul nsw i64 %.pre-phi568, %5
  %i.jb = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ja ; 2 uses
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !242
  %i.jd = extractelement <4 x double> %i.ip, i64 2
  %i.je = tail call double @llvm.fmuladd.f64(double %6, double %i.jd, double %i.jc)
  store double %i.je, ptr %i.jb, align 8, !tbaa !242
  %i.jf = mul nsw i64 %.pre-phi570, %5
  %i.jg = getelementptr inbounds [8 x i8], ptr %4, i64 %i.jf ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !242
  %i.ji = extractelement <4 x double> %i.ip, i64 3
  %i.jj = tail call double @llvm.fmuladd.f64(double %6, double %i.ji, double %i.jh)
  store double %i.jj, ptr %i.jg, align 8, !tbaa !242
  %i.jk = add nuw nsw i64 %.1207475, 4            ; 3 uses
  %i.jl = icmp slt i64 %i.jk, %i.d
  br i1 %i.jl, label %.preheader407, label %.preheader406, !llvm.loop !835

.preheader405:                                    ; preds = %.preheader405.lr.ph, %._crit_edge491
  %.2494 = phi i64 [ %.1207.lcssa, %.preheader405.lr.ph ], [ %i.oa, %._crit_edge491 ] ; 7 uses
  br i1 %.not236477, label %._crit_edge482, label %.lr.ph481

.lr.ph481:                                        ; preds = %.preheader405
  %i.jm = load ptr, ptr %3, align 8, !tbaa !706   ; 3 uses
  %i.jn = load i64, ptr %i.gd, align 8, !tbaa !708 ; 3 uses
  %i.jo = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.jp = add nuw nsw i64 %.2494, 1
  %i.jq = mul nsw i64 %i.jp, %.sroa.33.0.copyload ; 3 uses
  br i1 %i.gi, label %.epil.preheader, label %.lr.ph481.new

.preheader404:                                    ; preds = %._crit_edge491, %.preheader406
  %.2.lcssa = phi i64 [ %.1207.lcssa, %.preheader406 ], [ %i.oa, %._crit_edge491 ] ; 2 uses
  %i.jr = icmp slt i64 %.2.lcssa, %0
  br i1 %i.jr, label %.preheader.lr.ph, label %._crit_edge512

.preheader.lr.ph:                                 ; preds = %.preheader404
  %.not496 = icmp slt i64 %1, 2
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.jt = and i64 %1, -2                          ; 2 uses
  %i.ju = add i64 %1, -2                          ; 2 uses
  %i.jv = lshr i64 %i.ju, 1
  %i.jw = add nuw i64 %i.jv, 1                    ; 2 uses
  %xtraiter675 = and i64 %i.jw, 3                 ; 3 uses
  %i.jx = icmp ult i64 %i.ju, 6
  %unroll_iter680 = and i64 %i.jw, -4
  %lcmp.mod677.not = icmp eq i64 %xtraiter675, 0
  %lcmp.mod679 = icmp ne i64 %xtraiter675, 0
  br label %.preheader

.lr.ph481.new:                                    ; preds = %.lr.ph481, %.lr.ph481.new
  %i.jy = phi i64 [ %i.ky, %.lr.ph481.new ], [ 2, %.lr.ph481 ] ; 4 uses
  %.0212480 = phi i64 [ %i.kl, %.lr.ph481.new ], [ 0, %.lr.ph481 ] ; 2 uses
  %.0400479 = phi <2 x double> [ %i.kx, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %.0402478 = phi <2 x double> [ %i.kt, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph481.new ], [ 0, %.lr.ph481 ]
  %i.jz = mul nsw i64 %i.jn, %.0212480
  %i.ka = getelementptr [8 x i8], ptr %i.jm, i64 %i.jz
  %i.kb = load <2 x double>, ptr %i.ka, align 1, !tbaa !78 ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0212480 ; 2 uses
  %i.kd = getelementptr [8 x i8], ptr %i.kc, i64 %i.jo
  %i.ke = load <2 x double>, ptr %i.kd, align 1, !tbaa !78
  %i.kf = fmul <2 x double> %i.kb, %i.ke
  %i.kg = fadd <2 x double> %.0402478, %i.kf
  %i.kh = getelementptr [8 x i8], ptr %i.kc, i64 %i.jq
  %i.ki = load <2 x double>, ptr %i.kh, align 1, !tbaa !78
  %i.kj = fmul <2 x double> %i.kb, %i.ki
  %i.kk = fadd <2 x double> %.0400479, %i.kj
  %i.kl = add nuw nsw i64 %i.jy, 2                ; 2 uses
  %i.km = mul nsw i64 %i.jn, %i.jy
  %i.kn = getelementptr [8 x i8], ptr %i.jm, i64 %i.km
  %i.ko = load <2 x double>, ptr %i.kn, align 1, !tbaa !78 ; 2 uses
  %i.kp = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.jy ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %i.kp, i64 %i.jo
  %i.kr = load <2 x double>, ptr %i.kq, align 1, !tbaa !78
  %i.ks = fmul <2 x double> %i.ko, %i.kr
  %i.kt = fadd <2 x double> %i.kg, %i.ks          ; 3 uses
  %i.ku = getelementptr [8 x i8], ptr %i.kp, i64 %i.jq
  %i.kv = load <2 x double>, ptr %i.ku, align 1, !tbaa !78
  %i.kw = fmul <2 x double> %i.ko, %i.kv
  %i.kx = fadd <2 x double> %i.kk, %i.kw          ; 3 uses
  %i.ky = add nuw nsw i64 %i.jy, 4
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !836

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0212480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %i.kl, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0400479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kx, %._crit_edge482.loopexit.unr-lcssa ]
  %.0402478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kt, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.kz = mul nsw i64 %i.jn, %.0212480.epil.init
  %i.la = getelementptr [8 x i8], ptr %i.jm, i64 %i.kz
  %i.lb = load <2 x double>, ptr %i.la, align 1, !tbaa !78 ; 2 uses
  %i.lc = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0212480.epil.init ; 2 uses
  %i.ld = getelementptr [8 x i8], ptr %i.lc, i64 %i.jo
  %i.le = load <2 x double>, ptr %i.ld, align 1, !tbaa !78
  %i.lf = fmul <2 x double> %i.lb, %i.le
  %i.lg = fadd <2 x double> %.0402478.epil.init, %i.lf
  %i.lh = getelementptr [8 x i8], ptr %i.lc, i64 %i.jq
  %i.li = load <2 x double>, ptr %i.lh, align 1, !tbaa !78
  %i.lj = fmul <2 x double> %i.lb, %i.li
  %i.lk = fadd <2 x double> %.0400479.epil.init, %i.lj
  br label %._crit_edge482

._crit_edge482:                                   ; preds = %.epil.preheader, %._crit_edge482.loopexit.unr-lcssa, %.preheader405
  %.0402.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kt, %._crit_edge482.loopexit.unr-lcssa ], [ %i.lg, %.epil.preheader ] ; 2 uses
  %.0400.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kx, %._crit_edge482.loopexit.unr-lcssa ], [ %i.lk, %.epil.preheader ] ; 2 uses
  %.0212.lcssa = phi i64 [ 0, %.preheader405 ], [ %i.ge, %._crit_edge482.loopexit.unr-lcssa ], [ %i.ge, %.epil.preheader ] ; 6 uses
  %i.ll = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0400.lcssa, <2 x i32> <i32 0, i32 2>
  %i.lm = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0400.lcssa, <2 x i32> <i32 1, i32 3>
  %i.ln = fadd <2 x double> %i.ll, %i.lm          ; 3 uses
  %i.lo = icmp slt i64 %.0212.lcssa, %1
  br i1 %i.lo, label %.lr.ph490, label %._crit_edge482.._crit_edge491_crit_edge

._crit_edge482.._crit_edge491_crit_edge:          ; preds = %._crit_edge482
  %.pre571 = add nuw nsw i64 %.2494, 1
  br label %._crit_edge491

.lr.ph490:                                        ; preds = %._crit_edge482
  %i.lp = load ptr, ptr %3, align 8, !tbaa !706   ; 3 uses
  %i.lq = load i64, ptr %i.gd, align 8, !tbaa !708 ; 3 uses
  %i.lr = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.ls = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.lt = mul nsw i64 %i.ls, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0212.lcssa, 1
  br i1 %lcmp.mod673.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.lu = mul nsw i64 %i.lq, %.0212.lcssa
  %i.lv = getelementptr [8 x i8], ptr %i.lp, i64 %i.lu
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !242
  %i.lx = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0212.lcssa ; 2 uses
  %i.ly = getelementptr [8 x i8], ptr %i.lx, i64 %i.lr
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !242
end_hunk_1
