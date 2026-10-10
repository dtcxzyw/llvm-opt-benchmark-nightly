Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pnp_solver?download=true
inline.NumInlined: 753
inline.NumDeleted: 345
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK2cv4usac23PnPNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE:bb.a
  %i.cb = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = fmul <2 x double> %i.cb, %i.bd          ; 9 uses
  %i.cd = fmul <2 x double> %i.cc, zeroinitializer ; 5 uses
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.ca, <2 x double> %i.cd)
  %i.cf = fadd <2 x double> %i.m, %i.ce           ; 2 uses
  %i.cg = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ch = insertelement <2 x double> %i.cg, double %i.ba, i64 1 ; 2 uses
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.ch, <2 x double> zeroinitializer)
  %i.cj = fadd <2 x double> %i.o, %i.ci           ; 2 uses
  %i.ck = fadd <2 x double> %i.bd, zeroinitializer ; 2 uses
  %i.cl = shufflevector <2 x double> %i.bu, <2 x double> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.cm = fadd <2 x double> %i.j, %i.cl           ; 2 uses
  %i.cn = extractelement <2 x double> %i.bl, i64 0
  %i.co = tail call double @llvm.fmuladd.f64(double %i.bh, double 0.000000e+00, double %i.cn)
  %i.cp = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cq = insertelement <2 x double> %i.cp, double %i.co, i64 1
  %i.cr = fadd <2 x double> %i.p, %i.cq           ; 2 uses
  %i.cs = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cu = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cv = insertelement <2 x double> %i.cu, double %i.bq, i64 1 ; 2 uses
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> zeroinitializer, <2 x double> %i.cv)
  %i.cx = fadd <2 x double> %i.q, %i.cw           ; 2 uses
  %i.cy = fmul <2 x double> %i.bd, splat (double -0.000000e+00) ; 2 uses
  %i.cz = shufflevector <2 x double> %i.bu, <2 x double> %i.cy, <2 x i32> <i32 1, i32 2>
  %i.da = fadd <2 x double> %i.l, %i.cz           ; 2 uses
  %i.db = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  %i.dc = extractelement <2 x double> %i.cd, i64 0
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.db, double %i.dc)
  %i.de = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.df = insertelement <2 x double> %i.de, double %i.dd, i64 1
  %i.dg = fadd <2 x double> %i.r, %i.df           ; 2 uses
  %i.dh = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.di = fadd double %i.ba, 0.000000e+00
  %i.dj = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> zeroinitializer, <2 x double> %i.bl)
  %i.dm = fadd <2 x double> %i.u, %i.dl           ; 2 uses
  %i.dn = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.bb, i64 1 ; 2 uses
  %i.dp = insertelement <2 x double> %i.do, double 0.000000e+00, i64 1
  %i.dq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.dp, <2 x double> %i.bt) ; 2 uses
  %i.dr = insertelement <2 x double> %i.dq, double %i.di, i64 1
  %i.ds = fadd <2 x double> %i.t, %i.dr           ; 2 uses
  %i.dt = fmul double %i.ba, -0.000000e+00
  %i.du = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dv = insertelement <2 x double> %i.du, double %i.dt, i64 1
  %i.dw = fadd <2 x double> %i.v, %i.dv           ; 2 uses
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.ca, <2 x double> %i.cd)
  %i.dy = fadd <2 x double> %i.w, %i.dx           ; 2 uses
  %i.dz = shufflevector <2 x double> %i.bl, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.ea = fadd <2 x double> %i.y, %i.dz           ; 2 uses
  %i.eb = fadd <2 x double> %i.z, %i.cv           ; 2 uses
  %i.ec = fmul <2 x double> %i.bi, %i.bd
  %i.ed = fadd <2 x double> %i.ec, <double -0.000000e+00, double 0.000000e+00>
  %i.ee = fadd <2 x double> %i.ab, %i.ed          ; 2 uses
  %i.ef = fmul double %i.be, %i.ba
  %i.eg = insertelement <2 x double> %i.bi, double %i.ef, i64 0
  %i.eh = fadd <2 x double> %i.eg, zeroinitializer
  %i.ei = fadd <2 x double> %i.ac, %i.eh          ; 2 uses
  %i.ej = extractelement <2 x double> %i.cc, i64 0
  %i.ek = fmul <2 x double> %i.cc, %i.bn
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> zeroinitializer, <2 x double> %i.ek)
  %i.em = fadd <2 x double> %i.ad, %i.el          ; 2 uses
  %i.en = fmul <2 x double> %i.cg, %i.ch
  %i.eo = fadd <2 x double> %i.en, <double -0.000000e+00, double 0.000000e+00>
  %i.ep = fadd <2 x double> %i.af, %i.eo          ; 2 uses
  %i.eq = fadd double %i.bg, 0.000000e+00
  %i.er = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.es = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.et = shufflevector <2 x double> %i.cc, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.eu = fmul <2 x double> %i.et, %i.ct
  %i.ev = shufflevector <2 x double> %i.ca, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> zeroinitializer, <2 x double> %i.eu) ; 2 uses
  %i.ex = shufflevector <2 x double> %i.er, <2 x double> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.ey = fadd <2 x double> %i.ag, %i.ex          ; 2 uses
  %i.ez = fmul double %i.ba, %i.ba
  %i.fa = fadd double %i.ba, 0.000000e+00
  %i.fb = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.fa, i64 1
  %i.fd = fadd <2 x double> %i.ai, %i.fc          ; 2 uses
  %i.fe = fmul <2 x double> %i.cc, %i.dk
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> zeroinitializer, <2 x double> %i.fe)
  %i.fg = fadd <2 x double> %i.aj, %i.ff          ; 2 uses
  %i.fh = fneg double %i.ej
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.db, double 0.000000e+00, double %i.fh)
  %i.fj = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.fi, i64 1
  %i.fk = fadd <2 x double> %i.al, %i.fj          ; 2 uses
  %i.fl = fneg double %i.by
  %i.fm = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fn = fmul <2 x double> %i.fm, %i.cc
  %i.fo = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.ca, <2 x double> %i.fn)
  %i.fq = fadd <2 x double> %i.an, %i.fp          ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.cc, %i.bw
  %i.fr = fmul double %i.bx, %i.ba                ; 3 uses
  %i.fs = fmul double %i.by, %i.ba                ; 3 uses
  %i.ft = insertelement <2 x double> %i.bw, double %i.fs, i64 0 ; 5 uses
  %i.fu = fmul <2 x double> %i.ft, zeroinitializer ; 5 uses
  %i.fv = insertelement <2 x double> %i.bz, double %i.fr, i64 0 ; 6 uses
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.fv, <2 x double> %i.fu)
  %i.fx = fadd <2 x double> %i.n, %i.fw           ; 2 uses
  %i.fy = insertelement <2 x double> %i.dh, double %i.fr, i64 1 ; 5 uses
  %i.fz = shufflevector <2 x double> %i.cd, <2 x double> %i.fu, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.fy, <2 x double> %i.fz)
  %i.gb = fadd <2 x double> %i.s, %i.ga           ; 2 uses
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.fv, <2 x double> %i.fu)
  %i.gd = fadd <2 x double> %i.x, %i.gc           ; 2 uses
  %i.ge = fsub <2 x double> %i.fz, %i.fy
  %i.gf = fadd <2 x double> %i.aa, %i.ge          ; 2 uses
  %i.gg = fmul <2 x double> %i.ft, %i.bn
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> zeroinitializer, <2 x double> %i.gg)
  %i.gi = fadd <2 x double> %i.ae, %i.gh          ; 2 uses
  %i.gj = insertelement <2 x double> %i.es, double %i.fs, i64 1 ; 3 uses
  %i.gk = fmul <2 x double> %i.gj, %i.ct
  %i.gl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> zeroinitializer, <2 x double> %i.gk)
  %i.gm = fadd <2 x double> %i.ah, %i.gl          ; 2 uses
  %i.gn = fmul <2 x double> %i.ft, %i.dk
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> zeroinitializer, <2 x double> %i.gn)
  %i.gp = fadd <2 x double> %i.ak, %i.go          ; 2 uses
  %i.gq = fneg <2 x double> %i.gj
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> zeroinitializer, <2 x double> %i.gq)
  %i.gs = fadd <2 x double> %i.am, %i.gr          ; 2 uses
  %i.gt = fmul <2 x double> %i.fm, %i.ft
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.fv, <2 x double> %i.gt)
  %i.gv = fadd <2 x double> %i.ao, %i.gu          ; 2 uses
  %i.gw = fmul <2 x double> %i.es, %i.gj
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.fy, <2 x double> %i.gw)
  %i.gy = fadd <2 x double> %i.ap, %i.gx          ; 2 uses
  %i.gz = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x double> %i.ha, %i.ft
  %i.hc = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.hd = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.he = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.fv, <2 x double> %i.hb)
  %i.hf = fadd <2 x double> %i.aq, %i.he          ; 2 uses
  %i.hg = fmul double %i.by, %i.by
  %i.hh = insertelement <2 x double> %i.ca, double 0.000000e+00, i64 0
  %i.hi = insertelement <2 x double> %foldExtExtBinop, double %i.fl, i64 0
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.hh, <2 x double> %i.hi)
  %i.hk = insertelement <2 x double> %i.bw, double %i.bh, i64 1
  %i.hl = insertelement <2 x double> %i.fu, double %i.hg, i64 0
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.bz, <2 x double> %i.hl)
  %i.hn = shufflevector <2 x double> %i.cd, <2 x double> %i.fu, <2 x i32> <i32 0, i32 3>
  %i.ho = fsub <2 x double> %i.hn, %i.ev          ; 2 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 0
  %i.hq = fadd double %.sroa.197.0, %i.hp         ; 2 uses
  %i.hr = shufflevector <2 x double> %i.ho, <2 x double> %i.ew, <6 x i32> <i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison>
  %i.hs = shufflevector <2 x double> %i.hj, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ht = shufflevector <6 x double> %i.hr, <6 x double> %i.hs, <6 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 6, i32 7>
  %i.hu = shufflevector <2 x double> %i.hm, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hv = shufflevector <6 x double> %i.hu, <6 x double> %i.ht, <6 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11>
  %i.hw = fadd <6 x double> %i.ar, %i.hv          ; 2 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %.loopexit.loopexit, label %.preheader164, !llvm.loop !103

.preheader166:                                    ; preds = %bb.b, %.preheader166
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader166 ], [ 0, %bb.b ] ; 3 uses
  %i.hx = phi <2 x double> [ %i.kf, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hy = phi <2 x double> [ %i.kj, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hz = phi <2 x double> [ %i.ko, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ia = phi <2 x double> [ %i.kr, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ib = phi <2 x double> [ %i.la, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ic = phi <2 x double> [ %i.lf, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.id = phi <2 x double> [ %i.lj, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ie = phi <2 x double> [ %i.nm, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.if = phi <2 x double> [ %i.np, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ig = phi <2 x double> [ %i.nr, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ih = phi <2 x double> [ %i.nt, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ii = phi <2 x double> [ %i.lu, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ij = phi <2 x double> [ %i.ly, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ik = phi <2 x double> [ %i.ma, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.il = phi <2 x double> [ %i.mc, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.im = phi <2 x double> [ %i.me, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.in = phi <2 x double> [ %i.nx, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.io = phi <2 x double> [ %i.oa, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ip = phi <2 x double> [ %i.oc, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.iq = phi <2 x double> [ %i.oe, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ir = phi <2 x double> [ %i.mh, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.is = phi <2 x double> [ %i.mk, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.it = phi <2 x double> [ %i.mn, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.iu = phi <2 x double> [ %i.mq, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.iv = phi <2 x double> [ %i.mt, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.iw = phi <2 x double> [ %i.ok, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ix = phi <2 x double> [ %i.on, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.iy = phi <2 x double> [ %i.my, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.iz = phi <2 x double> [ %i.nb, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ja = phi <2 x double> [ %i.ne, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.jb = phi <2 x double> [ %i.op, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.jc = phi <2 x double> [ %i.os, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.jd = phi <2 x double> [ %i.ov, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.je = phi <2 x double> [ %i.oy, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.jf = phi <2 x double> [ %i.pd, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.jg = phi <2 x double> [ %i.pi, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.jh = phi <6 x double> [ %i.pw, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !24
  %i.jk = mul nsw i32 %i.jj, 5
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !33 ; 9 uses
  %i.jn = sext i32 %i.jk to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.jn ; 3 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 8
  %i.jq = getelementptr i8, ptr %i.jo, i64 16
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !45
  %i.js = fpext float %i.jr to double
  %i.jt = fmul double %i.jm, %i.js                ; 3 uses
  %i.ju = fneg double %i.jt
  %i.jv = load <2 x float>, ptr %i.jp, align 4, !tbaa !45
  %i.jw = fpext <2 x float> %i.jv to <2 x double>
  %i.jx = insertelement <2 x double> poison, double %i.jm, i64 0 ; 3 uses
  %i.jy = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jz = fmul <2 x double> %i.jy, %i.jw          ; 10 uses
  %i.ka = extractelement <2 x double> %i.jz, i64 0
  %i.kb = fneg double %i.ka
  %i.kc = extractelement <2 x double> %i.jz, i64 1
  %i.kd = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ke = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> %i.jz, <2 x double> zeroinitializer)
  %i.kf = fadd <2 x double> %i.hx, %i.ke          ; 2 uses
  %i.kg = insertelement <2 x double> poison, double %i.jt, i64 0 ; 2 uses
  %i.kh = insertelement <2 x double> %i.kg, double %i.jm, i64 1 ; 5 uses
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> %i.kh, <2 x double> zeroinitializer)
  %i.kj = fadd <2 x double> %i.hy, %i.ki          ; 2 uses
  %i.kk = fmul <2 x double> %i.jz, splat (double -0.000000e+00) ; 4 uses
  %i.kl = insertelement <2 x double> poison, double %i.kb, i64 0
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> zeroinitializer, <2 x double> %i.kk)
  %i.ko = fadd <2 x double> %i.hz, %i.kn          ; 2 uses
  %i.kp = fmul <2 x double> %i.kh, splat (double -0.000000e+00) ; 4 uses
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> zeroinitializer, <2 x double> %i.kp)
  %i.kr = fadd <2 x double> %i.ia, %i.kq          ; 2 uses
  %i.ks = load <2 x float>, ptr %i.jo, align 4, !tbaa !45
  %i.kt = fpext <2 x float> %i.ks to <2 x double> ; 2 uses
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kv = fmul <2 x double> %i.jz, %i.ku          ; 10 uses
  %i.kw = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kx = fmul <2 x double> %i.jz, %i.kw          ; 8 uses
  %i.ky = fmul <2 x double> %i.kx, zeroinitializer ; 4 uses
  %i.kz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.kv, <2 x double> %i.ky)
  %i.la = fadd <2 x double> %i.ib, %i.kz          ; 2 uses
  %i.lb = fmul <2 x double> %i.kh, %i.ku          ; 10 uses
  %i.lc = fmul <2 x double> %i.kh, %i.kw          ; 9 uses
  %i.ld = fmul <2 x double> %i.lc, zeroinitializer ; 4 uses
  %i.le = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> %i.lb, <2 x double> %i.ld)
  %i.lf = fadd <2 x double> %i.ic, %i.le          ; 2 uses
  %i.lg = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.lh = insertelement <2 x double> %i.lg, double %i.jt, i64 1 ; 2 uses
  %i.li = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lg, <2 x double> %i.lh, <2 x double> zeroinitializer)
  %i.lj = fadd <2 x double> %i.id, %i.li          ; 2 uses
  %i.lk = shufflevector <2 x double> %i.jz, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ll = shufflevector <2 x double> %i.kk, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.lm = shufflevector <2 x double> %i.kk, <2 x double> %i.kp, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ln = shufflevector <2 x double> %i.kv, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.lo = shufflevector <2 x double> %i.kp, <2 x double> %i.ky, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.lp = shufflevector <2 x double> %i.kv, <2 x double> %i.lb, <2 x i32> <i32 1, i32 2> ; 5 uses
  %i.lq = shufflevector <2 x double> %i.ky, <2 x double> %i.ld, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.lr = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ls = insertelement <2 x double> %i.lr, double %i.jm, i64 1 ; 2 uses
  %i.lt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.ls, <2 x double> zeroinitializer)
  %i.lu = fadd <2 x double> %i.ii, %i.lt          ; 2 uses
  %i.lv = insertelement <2 x double> poison, double %i.ju, i64 0
  %i.lw = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.lx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> zeroinitializer, <2 x double> %i.kk)
  %i.ly = fadd <2 x double> %i.ij, %i.lx          ; 2 uses
  %i.lz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> zeroinitializer, <2 x double> %i.kp)
  %i.ma = fadd <2 x double> %i.ik, %i.lz          ; 2 uses
  %i.mb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.kv, <2 x double> %i.ky)
  %i.mc = fadd <2 x double> %i.il, %i.mb          ; 2 uses
  %i.md = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.lb, <2 x double> %i.ld)
  %i.me = fadd <2 x double> %i.im, %i.md          ; 2 uses
  %i.mf = fmul <2 x double> %i.kd, %i.jz
  %i.mg = fadd <2 x double> %i.mf, <double -0.000000e+00, double 0.000000e+00>
  %i.mh = fadd <2 x double> %i.ir, %i.mg          ; 2 uses
  %i.mi = fmul <2 x double> %i.kd, %i.kh
  %i.mj = fadd <2 x double> %i.mi, zeroinitializer
  %i.mk = fadd <2 x double> %i.is, %i.mj          ; 2 uses
  %i.ml = fmul <2 x double> %i.kx, %i.km
  %i.mm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> zeroinitializer, <2 x double> %i.ml)
  %i.mn = fadd <2 x double> %i.it, %i.mm          ; 2 uses
  %i.mo = fmul <2 x double> %i.lc, %i.km
  %i.mp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> zeroinitializer, <2 x double> %i.mo)
  %i.mq = fadd <2 x double> %i.iu, %i.mp          ; 2 uses
  %i.mr = fmul <2 x double> %i.lg, %i.lh
  %i.ms = fadd <2 x double> %i.mr, <double -0.000000e+00, double 0.000000e+00>
  %i.mt = fadd <2 x double> %i.iv, %i.ms          ; 2 uses
  %i.mu = fmul double %i.kc, %i.jm
  %i.mv = fadd double %i.mu, 0.000000e+00
  %i.mw = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.mx = shufflevector <2 x double> %i.kx, <2 x double> %i.lc, <2 x i32> <i32 1, i32 2> ; 3 uses
  %15 = fmul <2 x double> %i.lr, %i.ls
  %16 = fadd <2 x double> %15, <double -0.000000e+00, double 0.000000e+00>
  %i.my = fadd <2 x double> %i.iy, %16            ; 2 uses
  %i.mz = fmul <2 x double> %i.kx, %i.lw
  %i.na = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> zeroinitializer, <2 x double> %i.mz)
  %i.nb = fadd <2 x double> %i.iz, %i.na          ; 2 uses
  %i.nc = fmul <2 x double> %i.lc, %i.lw
  %i.nd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lb, <2 x double> zeroinitializer, <2 x double> %i.nc)
  %i.ne = fadd <2 x double> %i.ja, %i.nd          ; 2 uses
  %i.nf = fmul double %i.jm, %i.jm
  %i.ng = insertelement <2 x double> %i.lg, double %i.jm, i64 1
  %i.nh = fneg <2 x double> %i.ng                 ; 7 uses
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nj = shufflevector <2 x double> %i.nh, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nk = shufflevector <2 x double> %i.jx, <2 x double> %i.nh, <2 x i32> <i32 0, i32 2>
  %i.nl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.nk, <2 x double> %i.ll)
  %i.nm = fadd <2 x double> %i.ie, %i.nl          ; 2 uses
  %i.nn = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.no = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> zeroinitializer, <2 x double> %i.lm)
  %i.np = fadd <2 x double> %i.if, %i.no          ; 2 uses
  %i.nq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.ln, <2 x double> %i.lo)
  %i.nr = fadd <2 x double> %i.ig, %i.nq          ; 2 uses
  %i.ns = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.lp, <2 x double> %i.lq)
  %i.nt = fadd <2 x double> %i.ih, %i.ns          ; 2 uses
  %i.nu = insertelement <2 x double> %i.nh, double %i.jm, i64 0
  %i.nv = insertelement <2 x double> %i.jx, double 0.000000e+00, i64 1
  %i.nw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nu, <2 x double> %i.nv, <2 x double> %i.ll)
  %i.nx = fadd <2 x double> %i.in, %i.nw          ; 2 uses
  %i.ny = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.nz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> zeroinitializer, <2 x double> %i.lm)
  %i.oa = fadd <2 x double> %i.io, %i.nz          ; 2 uses
  %i.ob = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> %i.ln, <2 x double> %i.lo)
  %i.oc = fadd <2 x double> %i.ip, %i.ob          ; 2 uses
  %i.od = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> %i.lp, <2 x double> %i.lq)
  %i.oe = fadd <2 x double> %i.iq, %i.od          ; 2 uses
  %i.of = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.og = fmul <2 x double> %i.of, %i.nh
  %i.oh = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.oi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> zeroinitializer, <2 x double> %i.og) ; 2 uses
  %i.oj = shufflevector <2 x double> %i.mw, <2 x double> %i.oi, <2 x i32> <i32 0, i32 2>
  %i.ok = fadd <2 x double> %i.iw, %i.oj          ; 2 uses
  %i.ol = fmul <2 x double> %i.mx, %i.nn
  %i.om = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lp, <2 x double> zeroinitializer, <2 x double> %i.ol)
  %i.on = fadd <2 x double> %i.ix, %i.om          ; 2 uses
  %i.oo = insertelement <2 x double> %i.oi, double %i.nf, i64 0
  %i.op = fadd <2 x double> %i.jb, %i.oo          ; 2 uses
  %i.oq = fmul <2 x double> %i.mx, %i.ny
  %i.or = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lp, <2 x double> zeroinitializer, <2 x double> %i.oq)
  %i.os = fadd <2 x double> %i.jc, %i.or          ; 2 uses
  %i.ot = fmul <2 x double> %i.of, %i.kx
  %i.ou = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.kv, <2 x double> %i.ot)
  %i.ov = fadd <2 x double> %i.jd, %i.ou          ; 2 uses
  %i.ow = fmul <2 x double> %i.of, %i.lc
  %i.ox = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.lb, <2 x double> %i.ow)
  %i.oy = fadd <2 x double> %i.je, %i.ox          ; 2 uses
  %i.oz = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pa = fmul <2 x double> %i.oz, %i.mx
  %i.pb = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> %i.lp, <2 x double> %i.pa)
  %i.pd = fadd <2 x double> %i.jf, %i.pc          ; 2 uses
  %i.pe = shufflevector <2 x double> %i.lc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pf = fmul <2 x double> %i.pe, %i.lc
  %i.pg = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ph = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pg, <2 x double> %i.lb, <2 x double> %i.pf)
  %i.pi = fadd <2 x double> %i.jg, %i.ph          ; 2 uses
  %i.pj = shufflevector <2 x double> %i.lc, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.pk = shufflevector <3 x double> %i.pj, <3 x double> <double 1.000000e+00, double 1.000000e+00, double poison>, <6 x i32> <i32 1, i32 3, i32 4, i32 1, i32 1, i32 1>
  %i.pl = shufflevector <2 x double> %i.lc, <2 x double> %i.ld, <6 x i32> <i32 1, i32 3, i32 3, i32 poison, i32 poison, i32 poison>
  %i.pm = shufflevector <2 x double> %i.kx, <2 x double> poison, <6 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.pn = shufflevector <6 x double> %i.pl, <6 x double> %i.pm, <6 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 7>
  %i.po = shufflevector <6 x double> %i.pn, <6 x double> %i.nj, <6 x i32> <i32 0, i32 1, i32 2, i32 6, i32 7, i32 5> ; 2 uses
  %i.pp = fmul <6 x double> %i.pk, %i.po
  %i.pq = shufflevector <2 x double> %i.lb, <2 x double> %i.kv, <6 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 3>
  %i.pr = shufflevector <6 x double> %i.pq, <6 x double> %i.po, <6 x i32> <i32 0, i32 poison, i32 10, i32 poison, i32 poison, i32 5>
  %i.ps = shufflevector <6 x double> %i.pr, <6 x double> <double poison, double poison, double poison, double 0.000000e+00, double 0.000000e+00, double poison>, <6 x i32> <i32 0, i32 poison, i32 2, i32 9, i32 10, i32 5>
  %i.pt = shufflevector <6 x double> %i.ps, <6 x double> %i.ni, <6 x i32> <i32 0, i32 6, i32 2, i32 3, i32 4, i32 5>
  %i.pu = shufflevector <2 x double> %i.lb, <2 x double> poison, <6 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.pv = tail call <6 x double> @llvm.fmuladd.v6f64(<6 x double> %i.pt, <6 x double> %i.pu, <6 x double> %i.pp)
  %i.pw = fadd <6 x double> %i.jh, %i.pv          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count198
  br i1 %exitcond.not, label %.loopexit, label %.preheader166, !llvm.loop !104

.loopexit.loopexit:                               ; preds = %.preheader164
  %i.px = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.hq, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader166, %.loopexit.loopexit
  %i.py = phi <2 x double> [ %i.bk, %.loopexit.loopexit ], [ %i.kf, %.preheader166 ] ; 2 uses
  %i.pz = phi <2 x double> [ %i.cm, %.loopexit.loopexit ], [ %i.kj, %.preheader166 ] ; 3 uses
  %i.qa = phi <2 x double> [ %i.bp, %.loopexit.loopexit ], [ %i.ko, %.preheader166 ] ; 3 uses
  %i.qb = phi <2 x double> [ %i.da, %.loopexit.loopexit ], [ %i.kr, %.preheader166 ] ; 3 uses
  %i.qc = phi <2 x double> [ %i.cf, %.loopexit.loopexit ], [ %i.la, %.preheader166 ] ; 3 uses
  %i.qd = phi <2 x double> [ %i.fx, %.loopexit.loopexit ], [ %i.lf, %.preheader166 ] ; 3 uses
  %i.qe = phi <2 x double> [ %i.cj, %.loopexit.loopexit ], [ %i.lj, %.preheader166 ] ; 2 uses
  %i.qf = phi <2 x double> [ %i.cr, %.loopexit.loopexit ], [ %i.nm, %.preheader166 ] ; 3 uses
  %i.qg = phi <2 x double> [ %i.cx, %.loopexit.loopexit ], [ %i.np, %.preheader166 ] ; 3 uses
  %i.qh = phi <2 x double> [ %i.dg, %.loopexit.loopexit ], [ %i.nr, %.preheader166 ] ; 3 uses
  %i.qi = phi <2 x double> [ %i.gb, %.loopexit.loopexit ], [ %i.nt, %.preheader166 ] ; 3 uses
  %i.qj = phi <2 x double> [ %i.ds, %.loopexit.loopexit ], [ %i.lu, %.preheader166 ] ; 2 uses
  %i.qk = phi <2 x double> [ %i.dm, %.loopexit.loopexit ], [ %i.ly, %.preheader166 ] ; 3 uses
  %i.ql = phi <2 x double> [ %i.dw, %.loopexit.loopexit ], [ %i.ma, %.preheader166 ] ; 3 uses
  %i.qm = phi <2 x double> [ %i.dy, %.loopexit.loopexit ], [ %i.mc, %.preheader166 ] ; 3 uses
  %i.qn = phi <2 x double> [ %i.gd, %.loopexit.loopexit ], [ %i.me, %.preheader166 ] ; 3 uses
  %i.qo = phi <2 x double> [ %i.ea, %.loopexit.loopexit ], [ %i.nx, %.preheader166 ] ; 2 uses
  %i.qp = phi <2 x double> [ %i.eb, %.loopexit.loopexit ], [ %i.oa, %.preheader166 ] ; 3 uses
  %i.qq = phi <2 x double> [ %i.px, %.loopexit.loopexit ], [ %i.oc, %.preheader166 ] ; 3 uses
  %i.qr = phi <2 x double> [ %i.gf, %.loopexit.loopexit ], [ %i.oe, %.preheader166 ] ; 3 uses
  %i.qs = phi <2 x double> [ %i.ee, %.loopexit.loopexit ], [ %i.mh, %.preheader166 ] ; 2 uses
  %i.qt = phi <2 x double> [ %i.ei, %.loopexit.loopexit ], [ %i.mk, %.preheader166 ] ; 3 uses
  %i.qu = phi <2 x double> [ %i.em, %.loopexit.loopexit ], [ %i.mn, %.preheader166 ] ; 3 uses
  %i.qv = phi <2 x double> [ %i.gi, %.loopexit.loopexit ], [ %i.mq, %.preheader166 ] ; 3 uses
  %i.qw = phi <2 x double> [ %i.ep, %.loopexit.loopexit ], [ %i.mt, %.preheader166 ] ; 2 uses
  %i.qx = phi <2 x double> [ %i.ey, %.loopexit.loopexit ], [ %i.ok, %.preheader166 ] ; 3 uses
  %i.qy = phi <2 x double> [ %i.gm, %.loopexit.loopexit ], [ %i.on, %.preheader166 ] ; 3 uses
  %i.qz = phi <2 x double> [ %i.fd, %.loopexit.loopexit ], [ %i.my, %.preheader166 ] ; 2 uses
  %i.ra = phi <2 x double> [ %i.fg, %.loopexit.loopexit ], [ %i.nb, %.preheader166 ] ; 3 uses
  %i.rb = phi <2 x double> [ %i.gp, %.loopexit.loopexit ], [ %i.ne, %.preheader166 ] ; 3 uses
  %i.rc = phi <2 x double> [ %i.fk, %.loopexit.loopexit ], [ %i.op, %.preheader166 ] ; 2 uses
  %i.rd = phi <2 x double> [ %i.gs, %.loopexit.loopexit ], [ %i.os, %.preheader166 ] ; 3 uses
  %i.re = phi <2 x double> [ %i.fq, %.loopexit.loopexit ], [ %i.ov, %.preheader166 ] ; 2 uses
  %i.rf = phi <2 x double> [ %i.gv, %.loopexit.loopexit ], [ %i.oy, %.preheader166 ] ; 3 uses
  %i.rg = phi <2 x double> [ %i.gy, %.loopexit.loopexit ], [ %i.pd, %.preheader166 ] ; 2 uses
  %i.rh = phi <2 x double> [ %i.hf, %.loopexit.loopexit ], [ %i.pi, %.preheader166 ] ; 2 uses
  %i.ri = phi <6 x double> [ %i.hw, %.loopexit.loopexit ], [ %i.pw, %.preheader166 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %7, i8 0, i64 1152, i1 false), !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i64 96, i1 false), !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store <2 x double> %i.py, ptr %10, align 16, !tbaa !33
  %.sroa.14555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x double> %i.pz, ptr %.sroa.14555.0..sroa_idx, align 16, !tbaa !33
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store <2 x double> %i.qa, ptr %.sroa.24.0..sroa_idx, align 16, !tbaa !33
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 48
  store <2 x double> %i.qb, ptr %.sroa.34.0..sroa_idx, align 16, !tbaa !33
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 64
  store <2 x double> %i.qc, ptr %.sroa.44.0..sroa_idx, align 16, !tbaa !33
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 80
  store <2 x double> %i.qd, ptr %.sroa.54.0..sroa_idx, align 16, !tbaa !33
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.rj = extractelement <2 x double> %i.py, i64 1
  store double %i.rj, ptr %.sroa.64.0..sroa_idx, align 16, !tbaa !33
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 104
  store <2 x double> %i.qe, ptr %.sroa.65.0..sroa_idx, align 8, !tbaa !33
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 120
  store <2 x double> %i.qf, ptr %.sroa.74.0..sroa_idx, align 8, !tbaa !33
  %.sroa.84.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 136
  store <2 x double> %i.qg, ptr %.sroa.84.0..sroa_idx, align 8, !tbaa !33
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 152
  store <2 x double> %i.qh, ptr %.sroa.94.0..sroa_idx, align 8, !tbaa !33
  %.sroa.104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 168
  store <2 x double> %i.qi, ptr %.sroa.104.0..sroa_idx, align 8, !tbaa !33
  %.sroa.114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 184
  %i.rk = extractelement <6 x double> %i.ri, i64 1 ; 2 uses
  store double %i.rk, ptr %.sroa.114.0..sroa_idx, align 8, !tbaa !33
  %.sroa.119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.rl = shufflevector <2 x double> %i.pz, <2 x double> %i.qe, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.rl, ptr %.sroa.119.0..sroa_idx, align 16, !tbaa !33
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 208
  store <2 x double> %i.qj, ptr %.sroa.121.0..sroa_idx, align 16, !tbaa !33
  %.sroa.130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 224
  store <2 x double> %i.qk, ptr %.sroa.130.0..sroa_idx, align 16, !tbaa !33
  %.sroa.140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 240
  store <2 x double> %i.ql, ptr %.sroa.140.0..sroa_idx, align 16, !tbaa !33
  %.sroa.150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 256
  store <2 x double> %i.qm, ptr %.sroa.150.0..sroa_idx, align 16, !tbaa !33
  %.sroa.160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 272
  store <2 x double> %i.qn, ptr %.sroa.160.0..sroa_idx, align 16, !tbaa !33
  %.sroa.170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 288
  %i.rm = shufflevector <2 x double> %i.pz, <2 x double> %i.qf, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.rm, ptr %.sroa.170.0..sroa_idx, align 16, !tbaa !33
  %.sroa.172616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 304
  %i.rn = extractelement <2 x double> %i.qj, i64 1
  store double %i.rn, ptr %.sroa.172616.0..sroa_idx, align 16, !tbaa !33
  %.sroa.173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 312
  store <2 x double> %i.qo, ptr %.sroa.173.0..sroa_idx, align 8, !tbaa !33
  %.sroa.182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 328
  store <2 x double> %i.qp, ptr %.sroa.182.0..sroa_idx, align 8, !tbaa !33
  %.sroa.192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 344
  store <2 x double> %i.qq, ptr %.sroa.192.0..sroa_idx, align 8, !tbaa !33
  %.sroa.202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 360
  store <2 x double> %i.qr, ptr %.sroa.202.0..sroa_idx, align 8, !tbaa !33
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 376
  %i.ro = extractelement <6 x double> %i.ri, i64 2 ; 2 uses
  store double %i.ro, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !33
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 384
  %i.rp = shufflevector <2 x double> %i.qa, <2 x double> %i.qf, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.rp, ptr %.sroa.217.0..sroa_idx, align 16, !tbaa !33
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 400
  %i.rq = shufflevector <2 x double> %i.qk, <2 x double> %i.qo, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.rq, ptr %.sroa.219.0..sroa_idx, align 16, !tbaa !33
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 416
  store <2 x double> %i.qs, ptr %.sroa.221.0..sroa_idx, align 16, !tbaa !33
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 432
  store <2 x double> %i.qt, ptr %.sroa.230.0..sroa_idx, align 16, !tbaa !33
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 448
  store <2 x double> %i.qu, ptr %.sroa.240.0..sroa_idx, align 16, !tbaa !33
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 464
  store <2 x double> %i.qv, ptr %.sroa.250.0..sroa_idx, align 16, !tbaa !33
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 480
end_hunk_0
