inline.NumInlined: 6074
inline.NumDeleted: 3139
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 43
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
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !8
  %i.ct = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209436 ; 8 uses
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %i.cb
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !8
  %i.cw = getelementptr [8 x i8], ptr %i.ct, i64 %i.cd
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !8
  %i.cy = getelementptr [8 x i8], ptr %i.ct, i64 %i.cf
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !8
  %i.da = getelementptr [8 x i8], ptr %i.ct, i64 %i.ch
  %i.db = load double, ptr %i.da, align 8, !tbaa !8
  %i.dc = getelementptr [8 x i8], ptr %i.ct, i64 %i.cj
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !8
  %i.de = getelementptr [8 x i8], ptr %i.ct, i64 %i.cl
  %i.df = load double, ptr %i.de, align 8, !tbaa !8
  %i.dg = getelementptr [8 x i8], ptr %i.ct, i64 %i.cn
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !8
  %i.di = getelementptr [8 x i8], ptr %i.ct, i64 %i.cp
  %i.dj = load double, ptr %i.di, align 8, !tbaa !8
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
  br i1 %exitcond.not, label %._crit_edge439, label %bb.c, !llvm.loop !350

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
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !8
  %i.eb = extractelement <8 x double> %i.dx, i64 0
  %i.ec = tail call double @llvm.fmuladd.f64(double %6, double %i.eb, double %i.ea)
  store double %i.ec, ptr %i.dz, align 8, !tbaa !8
  %i.ed = mul nsw i64 %.pre-phi, %5
  %i.ee = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ed ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !8
  %i.eg = extractelement <8 x double> %i.dx, i64 1
  %i.eh = tail call double @llvm.fmuladd.f64(double %6, double %i.eg, double %i.ef)
  store double %i.eh, ptr %i.ee, align 8, !tbaa !8
  %i.ei = mul nsw i64 %.pre-phi554, %5
  %i.ej = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ei ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !8
  %i.el = extractelement <8 x double> %i.dx, i64 2
  %i.em = tail call double @llvm.fmuladd.f64(double %6, double %i.el, double %i.ek)
  store double %i.em, ptr %i.ej, align 8, !tbaa !8
  %i.en = mul nsw i64 %.pre-phi556, %5
  %i.eo = getelementptr inbounds [8 x i8], ptr %4, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !8
  %i.eq = extractelement <8 x double> %i.dx, i64 3
  %i.er = tail call double @llvm.fmuladd.f64(double %6, double %i.eq, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !8
  %i.es = mul nsw i64 %.pre-phi558, %5
  %i.et = getelementptr inbounds [8 x i8], ptr %4, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !8
  %i.ev = extractelement <8 x double> %i.dx, i64 4
  %i.ew = tail call double @llvm.fmuladd.f64(double %6, double %i.ev, double %i.eu)
  store double %i.ew, ptr %i.et, align 8, !tbaa !8
  %i.ex = mul nsw i64 %.pre-phi560, %5
  %i.ey = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ex ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !8
  %i.fa = extractelement <8 x double> %i.dx, i64 5
  %i.fb = tail call double @llvm.fmuladd.f64(double %6, double %i.fa, double %i.ez)
  store double %i.fb, ptr %i.ey, align 8, !tbaa !8
  %i.fc = mul nsw i64 %.pre-phi562, %5
  %i.fd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !8
  %i.ff = extractelement <8 x double> %i.dx, i64 6
  %i.fg = tail call double @llvm.fmuladd.f64(double %6, double %i.ff, double %i.fe)
  store double %i.fg, ptr %i.fd, align 8, !tbaa !8
  %i.fh = mul nsw i64 %.pre-phi564, %5
  %i.fi = getelementptr inbounds [8 x i8], ptr %4, i64 %i.fh ; 2 uses
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !8
  %i.fk = extractelement <8 x double> %i.dx, i64 7
  %i.fl = tail call double @llvm.fmuladd.f64(double %6, double %i.fk, double %i.fj)
  store double %i.fl, ptr %i.fi, align 8, !tbaa !8
  %i.fm = add nuw nsw i64 %.0206448, 8            ; 3 uses
  %i.fn = icmp sgt i64 %i.c, %i.fm
  br i1 %i.fn, label %.preheader409, label %.preheader408, !llvm.loop !351

.preheader407:                                    ; preds = %.preheader407.lr.ph, %._crit_edge470
  %.1207475 = phi i64 [ %.0206.lcssa, %.preheader407.lr.ph ], [ %i.ja, %._crit_edge470 ] ; 13 uses
  br i1 %.not237450, label %._crit_edge457, label %.lr.ph456

.lr.ph456:                                        ; preds = %.preheader407
  %i.fo = load ptr, ptr %3, align 8, !tbaa !260
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
  %i.gf = load <2 x double>, ptr %i.ge, align 1, !tbaa !60 ; 4 uses
  %i.gg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0218455 ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %i.fp
  %i.gi = load <2 x double>, ptr %i.gh, align 1, !tbaa !60
  %i.gj = fmul <2 x double> %i.gf, %i.gi
  %i.gk = fadd <2 x double> %.0398454, %i.gj      ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gg, i64 %i.fr
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !60
  %i.gn = fmul <2 x double> %i.gf, %i.gm
  %i.go = fadd <2 x double> %.0399453, %i.gn      ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.gg, i64 %i.ft
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !60
  %i.gr = fmul <2 x double> %i.gf, %i.gq
  %i.gs = fadd <2 x double> %.0401452, %i.gr      ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gg, i64 %i.fv
  %i.gu = load <2 x double>, ptr %i.gt, align 1, !tbaa !60
  %i.gv = fmul <2 x double> %i.gf, %i.gu
  %i.gw = fadd <2 x double> %.0403451, %i.gv      ; 2 uses
  %i.gx = add nuw nsw i64 %i.gd, 2                ; 2 uses
  %.not237 = icmp sgt i64 %i.gx, %1
  br i1 %.not237, label %._crit_edge457, label %bb.d, !llvm.loop !352

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
  %i.hc = load ptr, ptr %3, align 8, !tbaa !260
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
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !8
  %i.hn = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1219463 ; 4 uses
  %i.ho = getelementptr [8 x i8], ptr %i.hn, i64 %i.hd
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !8
  %i.hq = getelementptr [8 x i8], ptr %i.hn, i64 %i.hf
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !8
  %i.hs = getelementptr [8 x i8], ptr %i.hn, i64 %i.hh
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !8
  %i.hu = getelementptr [8 x i8], ptr %i.hn, i64 %i.hj
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !8
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
  br i1 %exitcond549.not, label %._crit_edge470, label %bb.e, !llvm.loop !353

._crit_edge470:                                   ; preds = %bb.e, %._crit_edge457.._crit_edge470_crit_edge
  %.pre-phi570 = phi i64 [ %.pre569, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hi, %bb.e ]
  %.pre-phi568 = phi i64 [ %.pre567, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hg, %bb.e ]
  %.pre-phi566 = phi i64 [ %.pre565, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.he, %bb.e ]
  %i.if = phi <4 x double> [ %10, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.id, %bb.e ] ; 4 uses
  %i.ig = mul nsw i64 %.1207475, %5
  %i.ih = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ig ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !8
  %i.ij = extractelement <4 x double> %i.if, i64 0
  %i.ik = tail call double @llvm.fmuladd.f64(double %6, double %i.ij, double %i.ii)
  store double %i.ik, ptr %i.ih, align 8, !tbaa !8
  %i.il = mul nsw i64 %.pre-phi566, %5
  %i.im = getelementptr inbounds [8 x i8], ptr %4, i64 %i.il ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !8
  %i.io = extractelement <4 x double> %i.if, i64 1
  %i.ip = tail call double @llvm.fmuladd.f64(double %6, double %i.io, double %i.in)
  store double %i.ip, ptr %i.im, align 8, !tbaa !8
  %i.iq = mul nsw i64 %.pre-phi568, %5
  %i.ir = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iq ; 2 uses
  %i.is = load double, ptr %i.ir, align 8, !tbaa !8
  %i.it = extractelement <4 x double> %i.if, i64 2
  %i.iu = tail call double @llvm.fmuladd.f64(double %6, double %i.it, double %i.is)
  store double %i.iu, ptr %i.ir, align 8, !tbaa !8
  %i.iv = mul nsw i64 %.pre-phi570, %5
  %i.iw = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iv ; 2 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !8
  %i.iy = extractelement <4 x double> %i.if, i64 3
  %i.iz = tail call double @llvm.fmuladd.f64(double %6, double %i.iy, double %i.ix)
  store double %i.iz, ptr %i.iw, align 8, !tbaa !8
  %i.ja = add nuw nsw i64 %.1207475, 4            ; 3 uses
  %i.jb = icmp slt i64 %i.ja, %i.d
  br i1 %i.jb, label %.preheader407, label %.preheader406, !llvm.loop !354

.preheader405:                                    ; preds = %.preheader405.lr.ph, %._crit_edge491
  %.2494 = phi i64 [ %.1207.lcssa, %.preheader405.lr.ph ], [ %i.nh, %._crit_edge491 ] ; 7 uses
  br i1 %.not236477, label %._crit_edge482, label %.lr.ph481

.lr.ph481:                                        ; preds = %.preheader405
  %i.jc = load ptr, ptr %3, align 8, !tbaa !260   ; 3 uses
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
  %i.jo = load <2 x double>, ptr %i.jn, align 1, !tbaa !60 ; 2 uses
  %i.jp = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0212480 ; 2 uses
  %i.jq = getelementptr [8 x i8], ptr %i.jp, i64 %i.jd
  %i.jr = load <2 x double>, ptr %i.jq, align 1, !tbaa !60
  %i.js = fmul <2 x double> %i.jo, %i.jr
  %i.jt = fadd <2 x double> %.0402478, %i.js
  %i.ju = getelementptr [8 x i8], ptr %i.jp, i64 %i.jf
  %i.jv = load <2 x double>, ptr %i.ju, align 1, !tbaa !60
  %i.jw = fmul <2 x double> %i.jo, %i.jv
  %i.jx = fadd <2 x double> %.0400479, %i.jw
  %i.jy = add nuw nsw i64 %i.jm, 2                ; 2 uses
  %i.jz = getelementptr [8 x i8], ptr %i.jc, i64 %i.jm
  %i.ka = load <2 x double>, ptr %i.jz, align 1, !tbaa !60 ; 2 uses
  %i.kb = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.jm ; 2 uses
  %i.kc = getelementptr [8 x i8], ptr %i.kb, i64 %i.jd
  %i.kd = load <2 x double>, ptr %i.kc, align 1, !tbaa !60
  %i.ke = fmul <2 x double> %i.ka, %i.kd
  %i.kf = fadd <2 x double> %i.jt, %i.ke          ; 3 uses
  %i.kg = getelementptr [8 x i8], ptr %i.kb, i64 %i.jf
  %i.kh = load <2 x double>, ptr %i.kg, align 1, !tbaa !60
  %i.ki = fmul <2 x double> %i.ka, %i.kh
  %i.kj = fadd <2 x double> %i.jx, %i.ki          ; 3 uses
  %i.kk = add nuw nsw i64 %i.jm, 4
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !355

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0212480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %i.jy, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0400479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ]
  %.0402478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kf, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.kl = getelementptr [8 x i8], ptr %i.jc, i64 %.0212480.epil.init
  %i.km = load <2 x double>, ptr %i.kl, align 1, !tbaa !60 ; 2 uses
  %i.kn = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0212480.epil.init ; 2 uses
  %i.ko = getelementptr [8 x i8], ptr %i.kn, i64 %i.jd
  %i.kp = load <2 x double>, ptr %i.ko, align 1, !tbaa !60
  %i.kq = fmul <2 x double> %i.km, %i.kp
  %i.kr = fadd <2 x double> %.0402478.epil.init, %i.kq
  %i.ks = getelementptr [8 x i8], ptr %i.kn, i64 %i.jf
  %i.kt = load <2 x double>, ptr %i.ks, align 1, !tbaa !60
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
  %i.la = load ptr, ptr %3, align 8, !tbaa !260   ; 3 uses
  %i.lb = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.lc = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.ld = mul nsw i64 %i.lc, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0212.lcssa, 1
  br i1 %lcmp.mod673.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.le = getelementptr [8 x i8], ptr %i.la, i64 %.0212.lcssa
  %i.lf = load double, ptr %i.le, align 8, !tbaa !8
  %i.lg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0212.lcssa ; 2 uses
  %i.lh = getelementptr [8 x i8], ptr %i.lg, i64 %i.lb
  %i.li = load double, ptr %i.lh, align 8, !tbaa !8
  %i.lj = getelementptr [8 x i8], ptr %i.lg, i64 %i.ld
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !8
  %i.ll = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = insertelement <2 x double> poison, double %i.li, i64 0
  %i.lo = insertelement <2 x double> %i.ln, double %i.lk, i64 1
  %i.lp = fmul <2 x double> %i.lm, %i.lo
  %i.lq = fadd <2 x double> %i.ky, %i.lp          ; 2 uses
  %i.lr = or disjoint i64 %.0212.lcssa, 1
end_hunk_0
