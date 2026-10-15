Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_lsrkstep?download=true
inline.NumInlined: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@lsrkStep_TakeStepRKC:bb.a
  br i1 %.not334, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = mul nuw nsw i32 %i.an, %i.an
  %i.cf = add nsw i32 %i.ce, -1
  %i.cg = uitofp nneg i32 %i.cf to double
  %i.ch = fmul nnan double %i.cg, f0x3FE5555555555555
  %i.ci = load double, ptr %i.m, align 8, !tbaa !53
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double f0xBFC1111111111111, double 1.000000e+00)
  %i.ck = fmul double %i.ch, %i.cj
  %i.cl = fmul double %i.ck, 5.000000e-01         ; 3 uses
  %i.cm = icmp eq i32 %i.an, 2
  %i.cn = uitofp nneg i32 %i.an to double
  %i.co = fmul nnan double %i.cn, 1.825000e+00
  %i.cp = select i1 %i.cm, double 6.000000e-01, double %i.co
  %i.cq = fdiv double %i.cl, %i.cp                ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !59 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !62
  %i.cv = fmul double %i.cl, -2.000000e+00
  %i.cw = fmul double %i.cv, %i.cq
  %i.cx = fmul double %i.cq, %i.cw
  %i.cy = fmul double %i.ab, %i.cx
  %i.cz = fmul double %i.cu, %i.cy
  %i.da = fmul double %i.ab, %i.cq                ; 2 uses
  %i.db = fmul double %i.ae, %i.cl                ; 2 uses
  %i.dc = fmul double %i.db, %i.db
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.da, double %i.da, double %i.dc)
  %i.de = fdiv double %i.cz, %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 776
  store double %i.de, ptr %i.df, align 8, !tbaa !63
  store i32 11, ptr %2, align 4, !tbaa !49
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cs, i64 144 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !64
  %i.di = add nsw i64 %i.dh, 1
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !64
  br label %.thread388

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -53, i32 noundef 704, ptr noundef nonnull @__func__.lsrkStep_TakeStepRKC, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #12
  br label %.thread388

bb.u:                                             ; preds = %.critedge, %bb.m, %bb.k
  %.3279 = phi i32 [ %i.an, %bb.k ], [ %i.an, %bb.m ], [ %.1277, %.critedge ] ; 3 uses
  store i32 %.3279, ptr %i.t, align 4, !tbaa !55
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !65
  %.3279. = tail call i32 @llvm.smax.i32(i32 %.3279, i32 %i.dk)
  store i32 %.3279., ptr %i.dj, align 8, !tbaa !65
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !44
  %.not335 = icmp eq i32 %i.dm, 0
  br i1 %.not335, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !66
  %.not336 = icmp eq i32 %i.do, 0
  br i1 %.not336, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !67 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !68
  %.not337 = icmp eq i64 %i.dq, %i.ds
  br i1 %.not337, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !45 ; 2 uses
  %.not338 = icmp eq ptr %i.du, null
  br i1 %.not338, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !69
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !70
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !46
  %i.eb = tail call i32 %i.du(double noundef %i.dw, ptr noundef %i.dy, ptr noundef %i.ea) #12
  %.not339 = icmp eq i32 %i.eb, 0
  br i1 %.not339, label %bb.z, label %.thread388

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !69
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !70
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !48
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !46
  %i.el = tail call i32 %i.ec(double noundef %i.ee, ptr noundef %i.eg, ptr noundef %i.ei, ptr noundef %i.ek) #12
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !47
  %i.eo = add nsw i64 %i.en, 1
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !47
  %.not340 = icmp eq i32 %i.el, 0
  br i1 %.not340, label %bb.aa, label %.thread388

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.dl, align 8, !tbaa !44
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 848
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !68
  %.pre423 = load i32, ptr %i.t, align 4, !tbaa !55
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w
  %i.ep = phi i32 [ %.pre423, %bb.aa ], [ %.3279, %bb.w ]
  %i.eq = phi i64 [ %.pre, %bb.aa ], [ %i.dq, %bb.w ]
  %i.er = add nsw i64 %i.eq, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 %i.er, ptr %i.es, align 8, !tbaa !67
  %i.et = load double, ptr %i.m, align 8, !tbaa !53
  %i.eu = sitofp i32 %i.ep to double              ; 4 uses
  %i.ev = fmul nnan double %i.eu, %i.eu
  %i.ew = fdiv double %i.et, %i.ev
  %i.ex = fadd double %i.ew, 1.000000e+00         ; 7 uses
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ex, double -1.000000e+00) ; 3 uses
  %i.ez = fcmp ugt double %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fa = tail call double @sqrt(double noundef %i.ey) #12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fb = phi double [ %i.fa, %bb.ac ], [ 0.000000e+00, %bb.ab ] ; 2 uses
  %i.fc = fadd double %i.ex, %i.fb
  %i.fd = tail call double @log(double noundef %i.fc) #12
  %i.fe = fmul double %i.fd, %i.eu                ; 3 uses
  %i.ff = tail call double @sinh(double noundef %i.fe) #12
  %i.fg = fmul double %i.ey, %i.ff
  %i.fh = tail call double @cosh(double noundef %i.fe) #12
  %i.fi = tail call double @sinh(double noundef %i.fe) #12
  %i.fj = fneg double %i.fi
  %i.fk = fmul double %i.ex, %i.fj
  %i.fl = fmul double %i.fh, %i.eu
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fb, double %i.fk)
  %i.fn = fmul double %i.ex, 2.000000e+00         ; 5 uses
  %i.fo = fmul double %i.fn, %i.fn
  %i.fp = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.fg, i64 1
  %i.fq = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fm, i64 1
  %i.fs = fdiv <2 x double> %i.fp, %i.fr          ; 4 uses
  %i.ft = extractelement <2 x double> %i.fs, i64 0 ; 2 uses
  %shift = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.fs, %shift
  %i.fu = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !69
  %i.fx = load double, ptr %i.x, align 8, !tbaa !56 ; 2 uses
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.fu, double %i.fw)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 9 uses
  store double %i.fy, ptr %i.fz, align 8, !tbaa !71
  store i32 1, ptr %i.q, align 8, !tbaa !54
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 4 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !70
  %i.gc = fmul double %i.fx, %i.fu
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !48
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.gb, double noundef %i.gc, ptr noundef %i.ge, ptr noundef %i.l) #12
  %i.gf = load ptr, ptr %i.ga, align 8, !tbaa !70
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.gf, ptr noundef %i.j) #12
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !72 ; 2 uses
  %.not341 = icmp eq ptr %i.gh, null
  br i1 %.not341, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gi = load double, ptr %i.fz, align 8, !tbaa !71
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !46
  %i.gl = tail call i32 %i.gh(double noundef %i.gi, ptr noundef %i.l, ptr noundef %i.gk) #12
  %.not342 = icmp eq i32 %i.gl, 0
  br i1 %.not342, label %bb.af, label %.thread388

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gm = load i32, ptr %i.t, align 4, !tbaa !55
  %.not343401 = icmp slt i32 %i.gm, 2
  br i1 %.not343401, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ha = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.as
  %.0274414 = phi i32 [ 2, %.lr.ph ], [ %i.ju, %bb.as ] ; 6 uses
  %.0280413 = phi ptr [ %i.l, %.lr.ph ], [ %.0282412, %bb.as ] ; 4 uses
  %.0282412 = phi ptr [ %i.j, %.lr.ph ], [ %.0280413, %bb.as ] ; 3 uses
  %.0286411 = phi double [ 0.000000e+00, %.lr.ph ], [ %.0288410.a, %bb.as ]
  %.0288410.a = phi double [ 0.000000e+00, %.lr.ph ], [ %i.hs, %bb.as ] ; 2 uses
  %.0290409 = phi double [ 0.000000e+00, %.lr.ph ], [ %.0292408, %bb.as ]
  %.0292408 = phi double [ 1.000000e+00, %.lr.ph ], [ %i.hp, %bb.as ] ; 3 uses
  %.0294407 = phi double [ 1.000000e+00, %.lr.ph ], [ %.0296406, %bb.as ]
  %.0296406 = phi double [ %i.ex, %.lr.ph ], [ %10, %bb.as ] ; 4 uses
  %.0298405 = phi double [ 0.000000e+00, %.lr.ph ], [ %.0300404, %bb.as ]
  %.0300404 = phi double [ %i.fu, %.lr.ph ], [ %i.im, %bb.as ] ; 2 uses
  %.0302403 = phi double [ %i.ft, %.lr.ph ], [ %.0304402, %bb.as ]
  %.0304402 = phi double [ %i.ft, %.lr.ph ], [ %i.hu, %bb.as ] ; 3 uses
  %i.hc = load ptr, ptr %i.gn, align 8, !tbaa !45 ; 2 uses
  %.not344 = icmp eq ptr %i.hc, null
  br i1 %.not344, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hd = load double, ptr %i.fz, align 8, !tbaa !71
  %i.he = load ptr, ptr %i.go, align 8, !tbaa !46
  %i.hf = tail call i32 %i.hc(double noundef %i.hd, ptr noundef %.0280413, ptr noundef %i.he) #12
  %.not345 = icmp eq i32 %i.hf, 0
  br i1 %.not345, label %bb.ai, label %.thread388

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hg = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.hh = load double, ptr %i.fz, align 8, !tbaa !71
  %i.hi = load ptr, ptr %i.gp, align 8, !tbaa !73
  %i.hj = load ptr, ptr %i.go, align 8, !tbaa !46
  %i.hk = tail call i32 %i.hg(double noundef %i.hh, ptr noundef %.0280413, ptr noundef %i.hi, ptr noundef %i.hj) #12 ; 2 uses
  %i.hl = load i64, ptr %i.gq, align 8, !tbaa !47
  %i.hm = add nsw i64 %i.hl, 1
  store i64 %i.hm, ptr %i.gq, align 8, !tbaa !47
  %i.hn = icmp slt i32 %i.hk, 0
  br i1 %i.hn, label %.thread388, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not346 = icmp eq i32 %i.hk, 0
  br i1 %.not346, label %bb.ak, label %.thread388

bb.ak:                                            ; preds = %bb.aj
  %3 = fneg double %.0290409
  %4 = fneg double %.0294407
  %5 = insertelement <2 x double> poison, double %.0292408, i64 0
  %6 = insertelement <2 x double> %5, double %.0296406, i64 1
  %7 = insertelement <2 x double> poison, double %3, i64 0
  %8 = insertelement <2 x double> %7, double %4, i64 1
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %6, <2 x double> %8) ; 2 uses
  %i.ho = extractelement <2 x double> %9, i64 0
  %i.hp = tail call double @llvm.fmuladd.f64(double %.0296406, double 2.000000e+00, double %i.ho) ; 3 uses
  %i.hq = fneg double %.0286411
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.fn, double %.0288410.a, double %i.hq)
  %i.hs = tail call double @llvm.fmuladd.f64(double %.0292408, double 4.000000e+00, double %i.hr) ; 2 uses
  %i.ht = fmul double %i.hp, %i.hp
  %i.hu = fdiv double %i.hs, %i.ht                ; 3 uses
  %i.hv = fneg double %.0296406
  %i.hw = tail call double @llvm.fmuladd.f64(double %i.hv, double %.0304402, double 1.000000e+00) ; 2 uses
  %i.hx = fmul double %i.fn, %i.hu
  %i.hy = fneg double %i.hu
  %i.hz = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.ia = insertelement <2 x double> %i.hz, double %i.hx, i64 1
  %i.ib = insertelement <2 x double> poison, double %.0302403, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %.0304402, i64 1
  %i.id = fdiv <2 x double> %i.ia, %i.ic          ; 3 uses
  %i.ie = insertelement <2 x double> %i.fs, double %.0298405, i64 0
  %i.if = fmul <2 x double> %i.ie, %i.id          ; 2 uses
  %i.ig = extractelement <2 x double> %i.if, i64 1
  %i.ih = fdiv double %i.ig, %i.ex                ; 3 uses
  %i.ii = extractelement <2 x double> %i.if, i64 0
  %i.ij = extractelement <2 x double> %i.id, i64 1 ; 3 uses
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.ij, double %.0300404, double %i.ii)
  %i.il = fsub double 1.000000e+00, %i.hw
  %i.im = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.il, double %i.ik) ; 2 uses
  %i.in = load double, ptr %i.fv, align 8, !tbaa !69
  %i.io = load double, ptr %i.x, align 8, !tbaa !56 ; 2 uses
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double %i.im, double %i.in)
  store double %i.ip, ptr %i.fz, align 8, !tbaa !71
  store i32 %.0274414, ptr %i.q, align 8, !tbaa !54
  %i.iq = fmul double %i.ih, %i.io
  store double %i.iq, ptr %i.f, align 8, !tbaa !50
  %i.ir = load ptr, ptr %i.gp, align 8, !tbaa !73
  store ptr %i.ir, ptr %i.h, align 8, !tbaa !74
  %i.is = extractelement <2 x double> %i.id, i64 0 ; 2 uses
  store double %i.is, ptr %i.gr, align 8, !tbaa !50
  store ptr %.0282412, ptr %i.gs, align 8, !tbaa !74
  %i.it = fsub double 1.000000e+00, %i.ij
  %i.iu = fsub double %i.it, %i.is
  store double %i.iu, ptr %i.gt, align 8, !tbaa !50
  %i.iv = load ptr, ptr %i.ga, align 8, !tbaa !70
  store ptr %i.iv, ptr %i.gu, align 8, !tbaa !74
  store double %i.ij, ptr %i.gv, align 8, !tbaa !50
  store ptr %.0280413, ptr %i.gw, align 8, !tbaa !74
  %i.iw = fneg double %i.ih
  %i.ix = fmul double %i.hw, %i.iw
  %i.iy = load double, ptr %i.x, align 8, !tbaa !56
  %i.iz = fmul double %i.ix, %i.iy
  store double %i.iz, ptr %i.gx, align 8, !tbaa !50
  %i.ja = load ptr, ptr %i.gd, align 8, !tbaa !48
  store ptr %i.ja, ptr %i.gy, align 8, !tbaa !74
  %i.jb = load ptr, ptr %i.gp, align 8, !tbaa !73
  %i.jc = tail call i32 @N_VLinearCombination(i32 noundef 5, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef %i.jb) #12
  %.not347 = icmp eq i32 %i.jc, 0
  br i1 %.not347, label %bb.al, label %.thread388

bb.al:                                            ; preds = %bb.ak
  %i.jd = load i32, ptr %i.t, align 4, !tbaa !55  ; 2 uses
  %i.je = icmp slt i32 %.0274414, %i.jd
  br i1 %i.je, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.jf = load ptr, ptr %i.gg, align 8, !tbaa !72 ; 2 uses
  %.not348 = icmp eq ptr %i.jf, null
  br i1 %.not348, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.jg = load double, ptr %i.fz, align 8, !tbaa !71
  %i.jh = load ptr, ptr %i.gp, align 8, !tbaa !73
  %i.ji = load ptr, ptr %i.go, align 8, !tbaa !46
  %i.jj = tail call i32 %i.jf(double noundef %i.jg, ptr noundef %i.jh, ptr noundef %i.ji) #12
  %.not351 = icmp eq i32 %i.jj, 0
  br i1 %.not351, label %bb.ar, label %.thread388

bb.ao:                                            ; preds = %bb.am, %bb.al
  %i.jk = icmp eq i32 %.0274414, %i.jd
  br i1 %i.jk, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.jl = load ptr, ptr %i.gz, align 8, !tbaa !75 ; 2 uses
  %.not349 = icmp eq ptr %i.jl, null
  br i1 %.not349, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jm = load double, ptr %i.fz, align 8, !tbaa !71
  %i.jn = load ptr, ptr %i.gp, align 8, !tbaa !73
  %i.jo = load ptr, ptr %i.go, align 8, !tbaa !46
  %i.jp = tail call i32 %i.jl(double noundef %i.jm, ptr noundef %i.jn, ptr noundef %i.jo) #12
  %.not350 = icmp eq i32 %i.jp, 0
  br i1 %.not350, label %bb.ar, label %.thread388

bb.ar:                                            ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.an
  %i.jq = load i32, ptr %i.t, align 4, !tbaa !55
  %i.jr = icmp slt i32 %.0274414, %i.jq
  br i1 %i.jr, label %bb.as, label %._crit_edge

bb.as:                                            ; preds = %bb.ar
  %i.js = load ptr, ptr %i.gp, align 8, !tbaa !73
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.js, ptr noundef %.0282412) #12
  %.pre424 = load i32, ptr %i.t, align 4, !tbaa !55
  %i.jt = icmp slt i32 %.0274414, %.pre424
  %i.ju = add nuw nsw i32 %.0274414, 1
  %10 = extractelement <2 x double> %9, i64 1
  br i1 %i.jt, label %bb.ag, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ar, %bb.as, %bb.af
  %i.jv = load double, ptr %i.fv, align 8, !tbaa !69
  %i.jw = load double, ptr %i.x, align 8, !tbaa !56
  %i.jx = fadd double %i.jv, %i.jw                ; 3 uses
  store double %i.jx, ptr %i.fz, align 8, !tbaa !71
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !45 ; 2 uses
  %.not352 = icmp eq ptr %i.jz, null
  br i1 %.not352, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !73
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !46
  %i.ke = tail call i32 %i.jz(double noundef %i.jx, ptr noundef %i.kb, ptr noundef %i.kd) #12
  %.not353 = icmp eq i32 %i.ke, 0
  br i1 %.not353, label %._crit_edge425, label %.thread388

._crit_edge425:                                   ; preds = %bb.at
  %.pre426 = load double, ptr %i.fz, align 8, !tbaa !71
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge425, %._crit_edge
  %i.kf = phi double [ %.pre426, %._crit_edge425 ], [ %i.jx, %._crit_edge ]
  %i.kg = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !73
  %i.kj = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !46
  %i.km = tail call i32 %i.kg(double noundef %i.kf, ptr noundef %i.ki, ptr noundef %i.kj, ptr noundef %i.kl) #12 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !47
  %i.kp = add nsw i64 %i.ko, 1
  store i64 %i.kp, ptr %i.kn, align 8, !tbaa !47
  %i.kq = icmp slt i32 %i.km, 0
  br i1 %i.kq, label %.thread388, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not354 = icmp eq i32 %i.km, 0
  br i1 %.not354, label %bb.aw, label %.thread388

bb.aw:                                            ; preds = %bb.av
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !42
  %.not355 = icmp eq i32 %i.ks, 0
  br i1 %.not355, label %bb.ax, label %._crit_edge427

._crit_edge427:                                   ; preds = %bb.aw
  %.pre428 = load double, ptr %1, align 8, !tbaa !50
  br label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.kt = load ptr, ptr %i.ga, align 8, !tbaa !70
  store ptr %i.kt, ptr %i.h, align 8, !tbaa !74
  store <2 x double> <double 8.000000e-01, double -8.000000e-01>, ptr %i.f, align 8, !tbaa !50
  %i.ku = load ptr, ptr %i.kh, align 8, !tbaa !73
  %i.kv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !74
  %i.kw = load double, ptr %i.x, align 8, !tbaa !56
  %i.kx = fmul double %i.kw, 4.000000e-01
  %i.ky = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store double %i.kx, ptr %i.ky, align 8, !tbaa !50
  %i.kz = load ptr, ptr %i.gd, align 8, !tbaa !48
  %i.la = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.kz, ptr %i.la, align 8, !tbaa !74
  %i.lb = load double, ptr %i.x, align 8, !tbaa !56
  %i.lc = fmul double %i.lb, 4.000000e-01
  %i.ld = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store double %i.lc, ptr %i.ld, align 8, !tbaa !50
  %i.le = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.lf = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !74
  %i.lg = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.lh = tail call i32 @N_VLinearCombination(i32 noundef 4, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef %i.lg) #12
  %.not356 = icmp eq i32 %i.lh, 0
  br i1 %.not356, label %bb.ay, label %.thread388

bb.ay:                                            ; preds = %bb.ax
  %i.li = load ptr, ptr %i.i, align 8, !tbaa !51
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !76
  %i.ll = tail call double @N_VWrmsNorm(ptr noundef %i.li, ptr noundef %i.lk) #12 ; 2 uses
  store double %i.ll, ptr %1, align 8, !tbaa !50
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge427, %bb.ay
  %i.lm = phi double [ %.pre428, %._crit_edge427 ], [ %i.ll, %bb.ay ]
  %i.ln = load ptr, ptr %i.k, align 8, !tbaa !52
  tail call void @lsrkStep_DomEigUpdateLogic(ptr noundef nonnull %0, ptr noundef nonnull %i.c, double noundef %i.lm, ptr noundef %i.ln)
  br label %.thread388

.thread388:                                       ; preds = %.lr.ph466, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.an, %bb.aq, %bb.s, %bb.t, %bb.o, %lsrkStep_AccessStepMem.exit, %bb.c, %bb.az, %bb.l, %bb.y, %bb.z, %bb.ae, %bb.at, %bb.au, %bb.av, %bb.ax, %bb.j, %bb.i
  %.6 = phi i32 [ -21, %lsrkStep_AccessStepMem.exit ], [ %i.w, %bb.c ], [ -53, %bb.j ], [ 11, %bb.i ], [ -28, %bb.ax ], [ %i.bk, %bb.l ], [ -41, %bb.y ], [ -8, %bb.z ], [ -38, %bb.ae ], [ -41, %bb.at ], [ -8, %bb.au ], [ 0, %bb.az ], [ 9, %bb.av ], [ -37, %bb.aq ], [ 11, %bb.s ], [ -53, %bb.t ], [ %i.bq, %bb.o ], [ -41, %bb.ah ], [ -8, %bb.ai ], [ 9, %bb.aj ], [ -28, %bb.ak ], [ -38, %bb.an ], [ %i.bz, %.lr.ph466 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.6
}

declare i32 @lsrkStep_PrintAllStats(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @lsrkStep_WriteParameters(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define void @lsrkStep_PrintMem(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 29 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %lsrkStep_AccessStepMem.exit, label %bb.b

lsrkStep_AccessStepMem.exit:                      ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2847, ptr noundef nonnull @__func__.lsrkStep_PrintMem, ptr noundef nonnull @.str, ptr noundef nonnull @.str.47) #12
  br label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load i32, ptr %i.d, align 8, !tbaa !107
  switch i32 %i.e, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %fwrite38 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %1) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %fwrite37 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 38, i64 1, ptr %1) ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %fwrite36 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 43, i64 1, ptr %1) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %fwrite35 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 43, i64 1, ptr %1) ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.19, i64 44, i64 1, ptr %1) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2717, ptr noundef nonnull @__func__.lsrkStep_PrintMem, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #12
  br label %bb.p

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !108
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %i.g) #12 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !109
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %i.j) #12 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %i.m) #12 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !55
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %i.p) #12 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.s = load i32, ptr %i.r, align 8, !tbaa !35
  %.not39 = icmp eq i32 %i.s, 0
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i64 noundef %i.u) #12 ; 0 uses
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !40
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.26, i64 noundef %i.x) #12 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !65
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %i.aa) #12 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %i.ad) #12 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !77
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.29, i64 noundef %i.ag) #12 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !43
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %i.aj) #12 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.am = load i32, ptr %i.al, align 4, !tbaa !78
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, i32 noundef %i.am) #12 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !47
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.32, i64 noundef %i.ap) #12 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38
end_hunk_0
