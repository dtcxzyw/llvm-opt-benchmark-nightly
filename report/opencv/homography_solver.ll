Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_solver?download=true
inline.NumInlined: 1025
inline.NumDeleted: 487
loop-unroll.NumCompletelyUnrolled: 130
loop-unroll.NumUnrolled: 130
begin_hunk_0_@_ZNK2cv4usac30HomographyNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE:bb.a
  %.promoted1164 = load double, ptr %i.by, align 8, !tbaa !61
  %.promoted1166 = load double, ptr %i.bz, align 8, !tbaa !61
  %i.ct = load <2 x double>, ptr %i.ca, align 8, !tbaa !61
  %i.cu = load <2 x double>, ptr %i.cb, align 8, !tbaa !61
  %.promoted1176 = load double, ptr %i.cc, align 8, !tbaa !61
  %i.cv = load <2 x double>, ptr %i.cd, align 8, !tbaa !61
  %i.cw = insertelement <2 x double> poison, double %.promoted1158, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %.promoted1166, i64 1
  %i.cy = insertelement <4 x double> poison, double %.promoted1176, i64 0
  %i.cz = insertelement <4 x double> %i.cy, double %.promoted1164, i64 1
  %i.da = insertelement <4 x double> %i.cz, double %.promoted1140, i64 2
  %i.db = insertelement <4 x double> %i.da, double %.promoted1134, i64 3
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit384

bb.j:                                             ; preds = %.lr.ph459, %.preheader427
  %i.dd = phi double [ %.promoted1112, %.lr.ph459 ], [ %i.fz, %.preheader427 ]
  %indvars.iv519 = phi i64 [ 0, %.lr.ph459 ], [ %indvars.iv.next520, %.preheader427 ] ; 3 uses
  %i.de = phi <2 x double> [ %i.cx, %.lr.ph459 ], [ %i.hj, %.preheader427 ]
  %i.df = phi <2 x double> [ %i.ce, %.lr.ph459 ], [ %i.em, %.preheader427 ]
  %i.dg = phi <2 x double> [ %i.cf, %.lr.ph459 ], [ %i.fk, %.preheader427 ]
  %i.dh = phi <2 x double> [ %i.cg, %.lr.ph459 ], [ %i.fp, %.preheader427 ]
  %i.di = phi <2 x double> [ %i.ch, %.lr.ph459 ], [ %i.fg, %.preheader427 ]
  %i.dj = phi <2 x double> [ %i.ci, %.lr.ph459 ], [ %i.ey, %.preheader427 ]
  %i.dk = phi <2 x double> [ %i.cj, %.lr.ph459 ], [ %i.fs, %.preheader427 ]
  %i.dl = phi <2 x double> [ %i.ck, %.lr.ph459 ], [ %i.fu, %.preheader427 ]
  %i.dm = phi <2 x double> [ %i.cl, %.lr.ph459 ], [ %i.gc, %.preheader427 ]
  %i.dn = phi <2 x double> [ %i.cm, %.lr.ph459 ], [ %i.ge, %.preheader427 ]
  %i.do = phi <2 x double> [ %i.cn, %.lr.ph459 ], [ %i.gg, %.preheader427 ]
  %i.dp = phi <2 x double> [ %i.co, %.lr.ph459 ], [ %i.gk, %.preheader427 ]
  %i.dq = phi <2 x double> [ %i.cp, %.lr.ph459 ], [ %i.hb, %.preheader427 ]
  %i.dr = phi <2 x double> [ %i.cq, %.lr.ph459 ], [ %i.gq, %.preheader427 ]
  %i.ds = phi <2 x double> [ %i.cr, %.lr.ph459 ], [ %i.gv, %.preheader427 ]
  %i.dt = phi <2 x double> [ %i.cs, %.lr.ph459 ], [ %i.he, %.preheader427 ]
  %i.du = phi <2 x double> [ %i.ct, %.lr.ph459 ], [ %i.hm, %.preheader427 ]
  %i.dv = phi <2 x double> [ %i.cu, %.lr.ph459 ], [ %i.hp, %.preheader427 ]
  %i.dw = phi <2 x double> [ %i.cv, %.lr.ph459 ], [ %i.ib, %.preheader427 ]
  %i.dx = phi <4 x double> [ %i.db, %.lr.ph459 ], [ %i.hw, %.preheader427 ]
  %i.dy = trunc nuw nsw i64 %indvars.iv519 to i32
  br i1 %i.bf, label %.preheader427, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dz = load ptr, ptr %1, align 8, !tbaa !65
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv519
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !52
  br label %.preheader427

.preheader427:                                    ; preds = %bb.j, %bb.k
  %.in377 = phi i32 [ %i.eb, %bb.k ], [ %i.dy, %bb.j ]
  %i.ec = shl nsw i32 %.in377, 2
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ed ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = load <2 x float>, ptr %i.ee, align 4, !tbaa !67
  %i.eh = fpext <2 x float> %i.eg to <2 x double> ; 11 uses
  %i.ei = extractelement <2 x double> %i.eh, i64 0
  %i.ej = extractelement <2 x double> %i.eh, i64 1 ; 5 uses
  %i.ek = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.eh, <2 x double> zeroinitializer)
  %i.em = fadd <2 x double> %i.df, %i.el          ; 2 uses
  %i.en = load <2 x float>, ptr %i.ef, align 4, !tbaa !67
  %i.eo = fpext <2 x float> %i.en to <2 x double> ; 7 uses
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x double> %i.ep, %i.eh          ; 8 uses
  %i.er = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.es = fmul <2 x double> %i.er, %i.eh          ; 7 uses
  %i.et = fmul <2 x double> %i.es, zeroinitializer ; 4 uses
  %i.eu = extractelement <2 x double> %i.eo, i64 0 ; 3 uses
  %i.ev = call double @llvm.fmuladd.f64(double %i.ej, double %i.ej, double 0.000000e+00)
  %i.ew = fadd <2 x double> %i.eh, zeroinitializer ; 2 uses
  %i.ex = insertelement <2 x double> %i.ew, double %i.ev, i64 0
  %i.ey = fadd <2 x double> %i.dj, %i.ex          ; 2 uses
  %i.ez = fmul <2 x double> %i.eh, splat (double -0.000000e+00) ; 5 uses
  %i.fa = extractelement <2 x double> %i.ez, i64 0
  %i.fb = fmul <2 x double> %i.eh, splat (double -0.000000e+00) ; 2 uses
  %i.fc = extractelement <2 x double> %i.eq, i64 0 ; 2 uses
  %i.fd = fneg <2 x double> %i.eh                 ; 5 uses
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.eq, <2 x double> %i.et)
  %i.fg = fadd <2 x double> %i.di, %i.ff          ; 2 uses
  %i.fh = extractelement <2 x double> %i.fd, i64 0 ; 2 uses
  %i.fi = call double @llvm.fmuladd.f64(double %i.fh, double 0.000000e+00, double %i.fa)
  %i.fj = insertelement <2 x double> %i.ew, double %i.fi, i64 1
  %i.fk = fadd <2 x double> %i.dg, %i.fj          ; 2 uses
  %i.fl = shufflevector <2 x double> %i.eq, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.fm = shufflevector <2 x double> %i.ez, <2 x double> %i.et, <2 x i32> <i32 1, i32 2>
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.fl, <2 x double> %i.fm) ; 2 uses
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.fp = fadd <2 x double> %i.dh, %i.fo          ; 2 uses
  %i.fq = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> zeroinitializer, <2 x double> %i.ez)
  %i.fs = fadd <2 x double> %i.dk, %i.fr          ; 2 uses
  %i.ft = shufflevector <2 x double> %i.fb, <2 x double> %i.fn, <2 x i32> <i32 1, i32 3>
  %i.fu = fadd <2 x double> %i.dl, %i.ft          ; 2 uses
  %i.fv = shufflevector <2 x double> %i.et, <2 x double> %i.eo, <2 x i32> <i32 1, i32 3>
  %i.fw = fmul <2 x double> %i.fv, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 1 ; 2 uses
  %i.fy = call double @llvm.fmuladd.f64(double %i.fh, double %i.eu, double %i.fx)
  %i.fz = fadd double %i.dd, %i.fy                ; 2 uses
  %i.ga = shufflevector <2 x double> %i.eq, <2 x double> %i.eo, <2 x i32> <i32 1, i32 2> ; 5 uses
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.ga, <2 x double> %i.fw)
  %i.gc = fadd <2 x double> %i.dm, %i.gb          ; 2 uses
  %i.gd = shufflevector <2 x double> %i.ez, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ge = fadd <2 x double> %i.dn, %i.gd          ; 2 uses
  %i.gf = fsub <2 x double> %i.et, %i.eq
  %i.gg = fadd <2 x double> %i.do, %i.gf          ; 2 uses
  %i.gh = fsub double %i.fx, %i.eu
  %i.gi = fmul <2 x double> %i.ek, %i.eh
  %i.gj = fadd <2 x double> %i.gi, <double -0.000000e+00, double 0.000000e+00>
  %i.gk = fadd <2 x double> %i.dp, %i.gj          ; 2 uses
  %i.gl = fadd double %i.ei, 0.000000e+00
  %i.gm = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gn = shufflevector <2 x double> %i.es, <2 x double> %i.eo, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.go = fmul <2 x double> %i.gn, %i.fe
  %i.gp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> zeroinitializer, <2 x double> %i.go)
  %i.gq = fadd <2 x double> %i.dr, %i.gp          ; 3 uses
  %i.gr = fmul double %i.ej, %i.ej
  %i.gs = fadd double %i.ej, 0.000000e+00
  %i.gt = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.gs, i64 1
  %i.gv = fadd <2 x double> %i.ds, %i.gu          ; 3 uses
  %i.gw = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gx = fmul <2 x double> %i.gw, %i.fd          ; 2 uses
  %i.gy = extractelement <2 x double> %i.gx, i64 0
  %i.gz = call double @llvm.fmuladd.f64(double %i.fc, double 0.000000e+00, double %i.gy)
  %i.ha = insertelement <2 x double> %i.gm, double %i.gz, i64 1
  %i.hb = fadd <2 x double> %i.dq, %i.ha          ; 2 uses
  %i.hc = fmul <2 x double> %i.gn, %i.fq
  %i.hd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> zeroinitializer, <2 x double> %i.hc)
  %i.he = fadd <2 x double> %i.dt, %i.hd          ; 2 uses
  %i.hf = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hg = fneg <2 x double> %i.es
  %i.hh = shufflevector <2 x double> %i.gx, <2 x double> %i.hg, <2 x i32> <i32 1, i32 2>
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> zeroinitializer, <2 x double> %i.hh)
  %i.hj = fadd <2 x double> %i.de, %i.hi          ; 4 uses
  %i.hk = fneg <2 x double> %i.gn
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> zeroinitializer, <2 x double> %i.hk)
  %i.hm = fadd <2 x double> %i.du, %i.hl          ; 2 uses
  %i.hn = fmul <2 x double> %i.gw, %i.es
  %i.ho = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.eq, <2 x double> %i.hn)
  %i.hp = fadd <2 x double> %i.dv, %i.ho          ; 2 uses
  %shift = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.es, %shift
  %i.hq = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.hr = call double @llvm.fmuladd.f64(double %i.fc, double %i.eu, double %i.hq)
  %i.hs = shufflevector <2 x double> %i.ez, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ht = shufflevector <4 x double> %i.hs, <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, <4 x i32> <i32 poison, i32 5, i32 poison, i32 1>
  %i.hu = insertelement <4 x double> %i.ht, double %i.hr, i64 0
  %i.hv = insertelement <4 x double> %i.hu, double %i.gh, i64 2
  %i.hw = fadd <4 x double> %i.dx, %i.hv          ; 5 uses
  %i.hx = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = fmul <2 x double> %i.hx, %i.gn
  %i.hz = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.ga, <2 x double> %i.hy)
  %i.ib = fadd <2 x double> %i.dw, %i.ia          ; 2 uses
  %indvars.iv.next520 = add nuw nsw i64 %indvars.iv519, 1 ; 2 uses
  %exitcond523.not = icmp eq i64 %indvars.iv.next520, %wide.trip.count522
  br i1 %exitcond523.not, label %.loopexit.loopexit, label %bb.j, !llvm.loop !202

bb.l:                                             ; preds = %.lr.ph455, %.loopexit430
  %i.ic = phi double [ 0.000000e+00, %.lr.ph455 ], [ %i.od, %.loopexit430 ]
  %i.id = phi double [ 0.000000e+00, %.lr.ph455 ], [ %i.oe, %.loopexit430 ]
  %indvars.iv506 = phi i64 [ 0, %.lr.ph455 ], [ %indvars.iv.next507, %.loopexit430 ] ; 4 uses
  %i.ie = phi <2 x double> [ zeroinitializer, %.lr.ph455 ], [ %i.of, %.loopexit430 ]
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv506
  %i.ig = load double, ptr %i.if, align 8, !tbaa !61 ; 8 uses
  %i.ih = fcmp olt double %i.ig, f0x3E80000000000000
  br i1 %i.ih, label %.loopexit430, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ii = load i8, ptr %i.f, align 8, !tbaa !42, !range !68, !noundef !69
  %i.ij = trunc nuw i8 %i.ii to i1
  %i.ik = trunc nuw nsw i64 %indvars.iv506 to i32
  br i1 %i.ij, label %.preheader429, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.il = load ptr, ptr %1, align 8, !tbaa !65
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv506
  %i.in = load i32, ptr %i.im, align 4, !tbaa !52
  br label %.preheader429

.preheader429:                                    ; preds = %bb.m, %bb.n
  %.in368 = phi i32 [ %i.in, %bb.n ], [ %i.ik, %bb.m ]
  %i.io = shl nsw i32 %.in368, 2
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ip ; 2 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 8
  %i.is = load double, ptr %i.aj, align 8, !tbaa !61
  %i.it = load double, ptr %i.ar, align 8, !tbaa !61
  %i.iu = load double, ptr %i.aw, align 8, !tbaa !61
  %i.iv = load double, ptr %i.ay, align 8, !tbaa !61
  %i.iw = load double, ptr %i.az, align 8, !tbaa !61
  %i.ix = load <2 x float>, ptr %i.ir, align 4, !tbaa !67
  %i.iy = fpext <2 x float> %i.ix to <2 x double>
  %i.iz = insertelement <2 x double> poison, double %i.ig, i64 0 ; 2 uses
  %i.ja = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x double> %i.ja, %i.iy          ; 10 uses
  %24 = extractelement <2 x double> %i.jb, i64 0
  %i.jc = load <2 x float>, ptr %i.iq, align 4, !tbaa !67
  %i.jd = fpext <2 x float> %i.jc to <2 x double> ; 3 uses
  %i.je = fneg double %i.ig                       ; 8 uses
  %i.jf = extractelement <2 x double> %i.jd, i64 1 ; 2 uses
  %i.jg = fmul double %i.jf, %i.je                ; 5 uses
  %i.jh = insertelement <2 x double> %i.jb, double %i.je, i64 0
  %i.ji = fmul <2 x double> %i.jh, %i.jd          ; 11 uses
  %i.jj = extractelement <2 x double> %i.ji, i64 0
  %i.jk = load <2 x double>, ptr %i.x, align 8, !tbaa !61
  %i.jl = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.jm = insertelement <2 x double> %i.ji, double %i.jg, i64 1 ; 2 uses
  %i.jn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jm, <2 x double> zeroinitializer)
  %i.jo = fadd <2 x double> %i.jk, %i.jn
  store <2 x double> %i.jo, ptr %i.x, align 8, !tbaa !61
  %i.jp = load <2 x double>, ptr %i.ag, align 8, !tbaa !61
  %i.jq = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.je, i64 0
  %i.jr = load <2 x double>, ptr %i.ah, align 8, !tbaa !61
  %i.js = insertelement <2 x double> poison, double %i.jg, i64 0 ; 3 uses
  %i.jt = insertelement <2 x double> %i.js, double %i.ig, i64 1
  %i.ju = fmul <2 x double> %i.jt, <double 0.000000e+00, double -0.000000e+00> ; 4 uses
  %i.jv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> zeroinitializer, <2 x double> %i.ju)
  %i.jw = fadd <2 x double> %i.jr, %i.jv
  store <2 x double> %i.jw, ptr %i.ah, align 8, !tbaa !61
  %i.jx = load <2 x double>, ptr %i.ak, align 8, !tbaa !61
  %i.jy = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.jz = insertelement <2 x double> %i.jy, double %i.je, i64 1
  %i.ka = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> %i.jz, <2 x double> zeroinitializer)
  %i.kb = fadd <2 x double> %i.jx, %i.ka
  store <2 x double> %i.kb, ptr %i.ak, align 8, !tbaa !61
  %i.kc = load <2 x double>, ptr %i.al, align 8, !tbaa !61
  %i.kd = shufflevector <2 x double> %i.ji, <2 x double> %i.ju, <2 x i32> <i32 0, i32 2>
  %i.ke = fmul <2 x double> %i.kd, <double 0.000000e+00, double 1.000000e+00> ; 3 uses
  %i.kf = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.ke, <2 x i32> <i32 0, i32 2>
  %i.kg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jq, <2 x double> %i.kf)
  %i.kh = fadd <2 x double> %i.jp, %i.kg
  store <2 x double> %i.kh, ptr %i.ag, align 8, !tbaa !61
  %i.ki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> zeroinitializer, <2 x double> %i.ke)
  %i.kj = fadd <2 x double> %i.kc, %i.ki
  store <2 x double> %i.kj, ptr %i.al, align 8, !tbaa !61
  %i.kk = load <2 x double>, ptr %i.ao, align 8, !tbaa !61
  %i.kl = insertelement <2 x double> %i.iz, double %i.je, i64 1 ; 2 uses
  %i.km = insertelement <2 x double> %i.kl, double 0.000000e+00, i64 1
  %i.kn = shufflevector <2 x double> %i.ke, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ko = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> %i.km, <2 x double> %i.kn)
  %i.kp = fadd <2 x double> %i.kk, %i.ko
  store <2 x double> %i.kp, ptr %i.ao, align 8, !tbaa !61
  %i.kq = load <2 x double>, ptr %i.ap, align 8, !tbaa !61
  %i.kr = insertelement <2 x double> poison, double %i.je, i64 0
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.kt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> zeroinitializer, <2 x double> %i.ju)
  %i.ku = fadd <2 x double> %i.kq, %i.kt
  store <2 x double> %i.ku, ptr %i.ap, align 8, !tbaa !61
  %i.kv = load <2 x double>, ptr %i.as, align 8, !tbaa !61
  %i.kw = fmul <2 x double> %i.jl, %i.jm
  %i.kx = fadd <2 x double> %i.kw, <double -0.000000e+00, double 0.000000e+00>
  %i.ky = fadd <2 x double> %i.kv, %i.kx
  store <2 x double> %i.ky, ptr %i.as, align 8, !tbaa !61
  %i.kz = fmul double %i.ig, %i.jj
  %i.la = fmul double %i.ig, %i.jg
  %i.lb = load <2 x double>, ptr %i.av, align 8, !tbaa !61
  %i.lc = fmul double %i.jg, %i.jg
  %i.ld = fsub double 0.000000e+00, %i.la
  %i.le = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.lf = insertelement <2 x double> %i.le, double %i.ld, i64 1
  %i.lg = fadd <2 x double> %i.lb, %i.lf          ; 2 uses
  store <2 x double> %i.lg, ptr %i.av, align 8, !tbaa !61
  %i.lh = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = fmul <2 x double> %i.jb, %i.lh          ; 5 uses
  %i.lj = load <2 x double>, ptr %i.ai, align 8, !tbaa !61
  %i.lk = shufflevector <2 x double> %i.li, <2 x double> %i.ji, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ll = fmul <2 x double> %i.lk, zeroinitializer ; 4 uses
  %i.lm = load <2 x double>, ptr %i.am, align 8, !tbaa !61
  %i.ln = shufflevector <2 x double> %i.li, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.lo = shufflevector <2 x double> %i.ju, <2 x double> %i.ll, <2 x i32> <i32 1, i32 2>
  %i.lp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> %i.ln, <2 x double> %i.lo)
  %i.lq = fadd <2 x double> %i.lm, %i.lp
  store <2 x double> %i.lq, ptr %i.am, align 8, !tbaa !61
  %i.lr = load <2 x double>, ptr %i.an, align 8, !tbaa !61
  %i.ls = shufflevector <2 x double> %i.ll, <2 x double> %i.jb, <2 x i32> <i32 1, i32 3>
  %i.lt = fmul <2 x double> %i.ls, <double 1.000000e+00, double 0.000000e+00> ; 2 uses
  %i.lu = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lv = load <2 x double>, ptr %i.aq, align 8, !tbaa !61
  %25 = insertelement <2 x double> %i.ji, double %i.je, i64 1
  %26 = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %27 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %i.lu, <2 x double> %26)
  %28 = insertelement <2 x double> poison, double %i.is, i64 0
  %29 = insertelement <2 x double> %28, double %i.it, i64 1
  %30 = fadd <2 x double> %29, %27                ; 2 uses
  %i.lw = extractelement <2 x double> %30, i64 0
  store double %i.lw, ptr %i.aj, align 8, !tbaa !61
  %31 = extractelement <2 x double> %30, i64 1
  store double %31, ptr %i.ar, align 8, !tbaa !61
  %32 = load <2 x double>, ptr %i.at, align 8, !tbaa !61
  %33 = fsub double 0.000000e+00, %i.kz
  %34 = insertelement <2 x double> poison, double %33, i64 0
  %i.lx = load <2 x double>, ptr %i.au, align 8, !tbaa !61
  %i.ly = shufflevector <2 x double> %i.jb, <2 x double> %i.ji, <2 x i32> <i32 1, i32 2>
  %i.lz = fmul <2 x double> %i.ly, %i.ji
  %i.ma = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.mb = insertelement <2 x double> %i.js, double %i.je, i64 1
  %i.mc = fmul <2 x double> %i.ma, %i.mb
  %i.md = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.me = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> zeroinitializer, <2 x double> %i.mc)
  %i.mf = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.mg = insertelement <2 x double> %i.mf, double %i.iw, i64 1
  %i.mh = fadd <2 x double> %i.mg, %i.me          ; 3 uses
  %i.mi = extractelement <2 x double> %i.mh, i64 0
  store double %i.mi, ptr %i.aw, align 8, !tbaa !61
  %i.mj = load <2 x double>, ptr %i.ax, align 8, !tbaa !61
  %i.mk = shufflevector <2 x double> %i.ji, <2 x double> %i.jb, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ml = fmul <2 x double> %i.jy, %i.mk
  %i.mm = fmul double %i.ig, %i.ig
  %i.mn = fmul double %24, %i.jf                  ; 4 uses
  %i.mo = insertelement <2 x double> %i.li, double %i.mn, i64 1 ; 3 uses
  %i.mp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.mo, <2 x double> %i.ll)
  %i.mq = fadd <2 x double> %i.lj, %i.mp
  store <2 x double> %i.mq, ptr %i.ai, align 8, !tbaa !61
  %i.mr = insertelement <2 x double> %i.lu, double %i.mn, i64 0 ; 4 uses
  %i.ms = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jy, <2 x double> %i.mr, <2 x double> %i.lt)
  %i.mt = fadd <2 x double> %i.lr, %i.ms
  store <2 x double> %i.mt, ptr %i.an, align 8, !tbaa !61
  %i.mu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> %i.mo, <2 x double> %i.ll)
  %i.mv = fadd <2 x double> %i.lv, %i.mu
  store <2 x double> %i.mv, ptr %i.aq, align 8, !tbaa !61
  %i.mw = insertelement <2 x double> %i.jb, double %i.mn, i64 1
  %i.mx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> zeroinitializer, <2 x double> %i.lz)
  %i.my = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mz = fadd <2 x double> %i.lx, %i.my          ; 2 uses
  store <2 x double> %i.mz, ptr %i.au, align 8, !tbaa !61
  %i.na = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> zeroinitializer, <2 x double> %i.ml)
  %i.nb = fadd <2 x double> %i.mj, %i.na
  store <2 x double> %i.nb, ptr %i.ax, align 8, !tbaa !61
  %i.nc = fmul <2 x double> %i.mk, %i.ks
  %i.nd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> zeroinitializer, <2 x double> %i.nc)
  %i.ne = load <2 x double>, ptr %i.ba, align 8, !tbaa !61
  %i.nf = shufflevector <2 x double> %i.mh, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ng = insertelement <4 x double> %i.nf, double %i.iv, i64 0
  %i.nh = shufflevector <2 x double> %i.ne, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ni = shufflevector <4 x double> %i.ng, <4 x double> %i.nh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nj = insertelement <4 x double> <double poison, double -0.000000e+00, double poison, double poison>, double %i.mm, i64 0
  %i.nk = shufflevector <2 x double> %i.nd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nl = shufflevector <4 x double> %i.nj, <4 x double> %i.nk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nm = fadd <4 x double> %i.ni, %i.nl
  store <4 x double> %i.nm, ptr %i.ay, align 8, !tbaa !61
  %i.nn = fmul <2 x double> %i.ma, %i.lk
  %i.no = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.mo, <2 x double> %i.nn)
  %i.np = load <2 x double>, ptr %i.bb, align 8, !tbaa !61
  %i.nq = fadd <2 x double> %i.np, %i.no
  store <2 x double> %i.nq, ptr %i.bb, align 8, !tbaa !61
  %35 = shufflevector <2 x double> %i.ji, <2 x double> %i.jb, <2 x i32> <i32 0, i32 3>
  %i.nr = fmul <2 x double> %35, %i.ma
  %36 = shufflevector <2 x double> %i.jb, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %37 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %36, <2 x double> %i.nr) ; 2 uses
  %38 = shufflevector <2 x double> %34, <2 x double> %37, <2 x i32> <i32 0, i32 2>
  %39 = fadd <2 x double> %32, %38
  store <2 x double> %39, ptr %i.at, align 8, !tbaa !61
  %i.ns = load double, ptr %i.bc, align 8, !tbaa !61
  %40 = extractelement <2 x double> %37, i64 1
  %i.nt = fadd double %i.ns, %40
  store double %i.nt, ptr %i.bc, align 8, !tbaa !61
  %i.nu = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nv = fmul <2 x double> %i.mk, %i.nu
  %i.nw = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nx, <2 x double> %i.mr, <2 x double> %i.nv)
  %i.nz = load <2 x double>, ptr %i.bd, align 8, !tbaa !61
  %i.oa = fadd <2 x double> %i.nz, %i.ny
  store <2 x double> %i.oa, ptr %i.bd, align 8, !tbaa !61
  %i.ob = extractelement <2 x double> %i.mz, i64 0
  %i.oc = extractelement <2 x double> %i.lg, i64 1
  br label %.loopexit430

.loopexit430:                                     ; preds = %.preheader429, %bb.l
  %i.od = phi double [ %i.ob, %.preheader429 ], [ %i.ic, %bb.l ] ; 2 uses
  %i.oe = phi double [ %i.oc, %.preheader429 ], [ %i.id, %bb.l ] ; 2 uses
  %i.of = phi <2 x double> [ %i.mh, %.preheader429 ], [ %i.ie, %bb.l ] ; 2 uses
  %indvars.iv.next507 = add nuw nsw i64 %indvars.iv506, 1 ; 2 uses
  %exitcond510.not = icmp eq i64 %indvars.iv.next507, %wide.trip.count509
  br i1 %exitcond510.not, label %.loopexit, label %bb.l, !llvm.loop !203

.loopexit.loopexit:                               ; preds = %.preheader427
  store <2 x double> %i.em, ptr %i.x, align 8, !tbaa !61
  store <2 x double> %i.fk, ptr %i.bg, align 8, !tbaa !61
  store <2 x double> %i.fp, ptr %i.bh, align 8, !tbaa !61
  store <2 x double> %i.fg, ptr %i.bi, align 8, !tbaa !61
  store double %i.fz, ptr %i.bj, align 8, !tbaa !61
  store <2 x double> %i.ey, ptr %i.bk, align 8, !tbaa !61
  store <2 x double> %i.fs, ptr %i.bl, align 8, !tbaa !61
  store <2 x double> %i.fu, ptr %i.bm, align 8, !tbaa !61
  store <2 x double> %i.gc, ptr %i.bn, align 8, !tbaa !61
  store <2 x double> %i.ge, ptr %i.bo, align 8, !tbaa !61
  %i.og = extractelement <4 x double> %i.hw, i64 3
  store double %i.og, ptr %i.bp, align 8, !tbaa !61
  store <2 x double> %i.gg, ptr %i.bq, align 8, !tbaa !61
  %i.oh = extractelement <4 x double> %i.hw, i64 2
  store double %i.oh, ptr %i.br, align 8, !tbaa !61
  store <2 x double> %i.gk, ptr %i.bs, align 8, !tbaa !61
  store <2 x double> %i.hb, ptr %i.bt, align 8, !tbaa !61
  store <2 x double> %i.gq, ptr %i.bu, align 8, !tbaa !61
  store <2 x double> %i.gv, ptr %i.bv, align 8, !tbaa !61
  %i.oi = extractelement <2 x double> %i.hj, i64 0
  store double %i.oi, ptr %i.bw, align 8, !tbaa !61
  store <2 x double> %i.he, ptr %i.bx, align 8, !tbaa !61
  %i.oj = extractelement <4 x double> %i.hw, i64 1
  store double %i.oj, ptr %i.by, align 8, !tbaa !61
  %i.ok = extractelement <2 x double> %i.hj, i64 1
  store double %i.ok, ptr %i.bz, align 8, !tbaa !61
  store <2 x double> %i.hm, ptr %i.ca, align 8, !tbaa !61
  store <2 x double> %i.hp, ptr %i.cb, align 8, !tbaa !61
  %i.ol = extractelement <4 x double> %i.hw, i64 0
  store double %i.ol, ptr %i.cc, align 8, !tbaa !61
  store <2 x double> %i.ib, ptr %i.cd, align 8, !tbaa !61
  %i.om = extractelement <2 x double> %i.gq, i64 0
  %i.on = extractelement <2 x double> %i.gv, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit430, %.loopexit.loopexit, %.preheader431, %.preheader428
  %i.oo = phi double [ %i.om, %.loopexit.loopexit ], [ 0.000000e+00, %.preheader428 ], [ 0.000000e+00, %.preheader431 ], [ %i.od, %.loopexit430 ]
  %i.op = phi double [ %i.on, %.loopexit.loopexit ], [ 0.000000e+00, %.preheader428 ], [ 0.000000e+00, %.preheader431 ], [ %i.oe, %.loopexit430 ]
  %i.oq = phi <2 x double> [ %i.hj, %.loopexit.loopexit ], [ zeroinitializer, %.preheader428 ], [ zeroinitializer, %.preheader431 ], [ %i.of, %.loopexit430 ]
  %i.or = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.os = load double, ptr %i.or, align 8, !tbaa !61
  %i.ot = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store double %i.os, ptr %i.ot, align 8, !tbaa !61
  %i.ou = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !61
  %i.ow = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  store double %i.ov, ptr %i.ow, align 8, !tbaa !61
  %i.ox = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !61
  %i.oz = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  store double %i.oy, ptr %i.oz, align 8, !tbaa !61
  %i.pa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !61
  %i.pc = getelementptr inbounds nuw i8, ptr %i.x, i64 216
  store double %i.pb, ptr %i.pc, align 8, !tbaa !61
  %i.pd = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !61
  %i.pf = getelementptr inbounds nuw i8, ptr %i.x, i64 224
  store double %i.pe, ptr %i.pf, align 8, !tbaa !61
  %i.pg = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !61
  %i.pi = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  store double %i.ph, ptr %i.pi, align 8, !tbaa !61
  %i.pj = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !61
  %i.pl = getelementptr inbounds nuw i8, ptr %i.x, i64 288
  store double %i.pk, ptr %i.pl, align 8, !tbaa !61
  %i.pm = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !61
  %i.po = getelementptr inbounds nuw i8, ptr %i.x, i64 296
  store double %i.pn, ptr %i.po, align 8, !tbaa !61
  %i.pp = getelementptr inbounds nuw i8, ptr %i.x, i64 176
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !61
  %i.pr = getelementptr inbounds nuw i8, ptr %i.x, i64 304
  store double %i.pq, ptr %i.pr, align 8, !tbaa !61
  %i.ps = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !61
  %i.pu = getelementptr inbounds nuw i8, ptr %i.x, i64 312
  store double %i.pt, ptr %i.pu, align 8, !tbaa !61
  %i.pv = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !61
  %i.px = getelementptr inbounds nuw i8, ptr %i.x, i64 360
  store double %i.pw, ptr %i.px, align 8, !tbaa !61
  %i.py = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.pz = load double, ptr %i.py, align 8, !tbaa !61
  %i.qa = getelementptr inbounds nuw i8, ptr %i.x, i64 368
  store double %i.pz, ptr %i.qa, align 8, !tbaa !61
  %i.qb = getelementptr inbounds nuw i8, ptr %i.x, i64 184
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !61
  %i.qd = getelementptr inbounds nuw i8, ptr %i.x, i64 376
  store double %i.qc, ptr %i.qd, align 8, !tbaa !61
  %i.qe = getelementptr inbounds nuw i8, ptr %i.x, i64 256
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !61
  %i.qg = getelementptr inbounds nuw i8, ptr %i.x, i64 384
  store double %i.qf, ptr %i.qg, align 8, !tbaa !61
  %i.qh = getelementptr inbounds nuw i8, ptr %i.x, i64 392
  store double %i.op, ptr %i.qh, align 8, !tbaa !61
  %i.qi = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !61
  %i.qk = getelementptr inbounds nuw i8, ptr %i.x, i64 432
  store double %i.qj, ptr %i.qk, align 8, !tbaa !61
  %i.ql = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !61
  %i.qn = getelementptr inbounds nuw i8, ptr %i.x, i64 440
  store double %i.qm, ptr %i.qn, align 8, !tbaa !61
  %i.qo = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !61
  %i.qq = getelementptr inbounds nuw i8, ptr %i.x, i64 448
  store double %i.qp, ptr %i.qq, align 8, !tbaa !61
  %i.qr = getelementptr inbounds nuw i8, ptr %i.x, i64 264
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !61
  %i.qt = getelementptr inbounds nuw i8, ptr %i.x, i64 456
  store double %i.qs, ptr %i.qt, align 8, !tbaa !61
  %i.qu = getelementptr inbounds nuw i8, ptr %i.x, i64 464
  store <2 x double> %i.oq, ptr %i.qu, align 8, !tbaa !61
  %i.qv = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !61
  %i.qx = getelementptr inbounds nuw i8, ptr %i.x, i64 504
  store double %i.qw, ptr %i.qx, align 8, !tbaa !61
  %i.qy = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !61
  %i.ra = getelementptr inbounds nuw i8, ptr %i.x, i64 512
  store double %i.qz, ptr %i.ra, align 8, !tbaa !61
  %i.rb = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !61
  %i.rd = getelementptr inbounds nuw i8, ptr %i.x, i64 520
  store double %i.rc, ptr %i.rd, align 8, !tbaa !61
  %i.re = getelementptr inbounds nuw i8, ptr %i.x, i64 528
  store double %i.oo, ptr %i.re, align 8, !tbaa !61
  %i.rf = getelementptr inbounds nuw i8, ptr %i.x, i64 344
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !61
  %i.rh = getelementptr inbounds nuw i8, ptr %i.x, i64 536
  store double %i.rg, ptr %i.rh, align 8, !tbaa !61
  %i.ri = getelementptr inbounds nuw i8, ptr %i.x, i64 416
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !61
  %i.rk = getelementptr inbounds nuw i8, ptr %i.x, i64 544
  store double %i.rj, ptr %i.rk, align 8, !tbaa !61
  %i.rl = getelementptr inbounds nuw i8, ptr %i.x, i64 488
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !61
  %i.rn = getelementptr inbounds nuw i8, ptr %i.x, i64 552
  store double %i.rm, ptr %i.rn, align 8, !tbaa !61
  %i.ro = invoke noundef zeroext i1 @_ZN2cv4usac4Math24eliminateUpperTriangularERSt6vectorIdSaIdEEii(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 8, i32 noundef 9)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.loopexit
  br i1 %i.ro, label %bb.q, label %.critedge

bb.p:                                             ; preds = %.loopexit
  %i.rp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 3, i32 noundef 3, i32 noundef 6)
          to label %_ZN2cv4Mat_IdEC2Eii.exit unwind label %bb.r

_ZN2cv4Mat_IdEC2Eii.exit:                         ; preds = %bb.q
  %i.rq = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %11, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %._crit_edge unwind label %bb.s ; 0 uses

._crit_edge.1:                                    ; preds = %._crit_edge
  %i.rr = getelementptr inbounds nuw i8, ptr %i.xu, i64 488
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !61
  %i.rt = fneg double %i.rs
  %i.ru = call double @llvm.fmuladd.f64(double %i.rt, double %i.ya, double 0.000000e+00)
  %i.rv = getelementptr inbounds nuw i8, ptr %i.xu, i64 496
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !61
  %i.rx = fsub double %i.ru, %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %i.xu, i64 480
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !61
  %i.sa = fdiv double %i.rx, %i.rz                ; 8 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.xs, i64 48
  store double %i.sa, ptr %i.sb, align 8, !tbaa !61
  %i.sc = fcmp uno double %i.sa, 0.000000e+00
  br i1 %i.sc, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.1
end_hunk_0
