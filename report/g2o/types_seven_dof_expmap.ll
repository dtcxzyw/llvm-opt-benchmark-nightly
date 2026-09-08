Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_seven_dof_expmap?download=true
inline.NumInlined: 15398
inline.NumDeleted: 8608
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3g2o4Sim3C2ERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE:bb.a
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32. = load <2 x double>, ptr %.sroa.7.16..sroa_idx, align 16, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cj = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ce, i64 1
  %i.cl = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.bs, i64 1
  %i.cn = fdiv <2 x double> %i.ck, %i.cm          ; 3 uses
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cp = fmul <2 x double> %.sroa.0316.0..sroa.0316.0., %i.co
  %i.cq = fadd <2 x double> %i.cp, <double 1.000000e+00, double 0.000000e+00>
  %i.cr = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.cs = fmul <2 x double> %i.t, %i.cr
  %i.ct = fadd <2 x double> %i.cq, %i.cs          ; 2 uses
  store <2 x double> %i.ct, ptr %2, align 16, !tbaa !20
  %i.cu = fmul <2 x double> %i.co, %.sroa.0316.16..sroa.0316.16.
  %i.cv = fadd <2 x double> %i.cu, zeroinitializer
  %i.cw = fmul <2 x double> %i.cr, %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.
  %i.cx = fadd <2 x double> %i.cv, %i.cw          ; 2 uses
  store <2 x double> %i.cx, ptr %i.cf, align 16, !tbaa !20
  %i.cy = fmul <2 x double> %i.co, %.sroa.0316.32..sroa.0316.32.321
  %i.cz = fadd <2 x double> %i.cy, <double 1.000000e+00, double 0.000000e+00>
  %i.da = fmul <2 x double> %i.cr, %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.
  %i.db = fadd <2 x double> %i.cz, %i.da          ; 2 uses
  store <2 x double> %i.db, ptr %i.cg, align 16, !tbaa !20
  %i.dc = fmul <2 x double> %i.co, %.sroa.0316.48..sroa.0316.48.
  %i.dd = fadd <2 x double> %i.dc, zeroinitializer
  %i.de = fmul <2 x double> %i.as, %i.cr
  %i.df = fadd <2 x double> %i.de, %i.dd          ; 2 uses
  store <2 x double> %i.df, ptr %i.ch, align 16, !tbaa !20
  %i.dg = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aw, i64 1
  %i.dh = fmul <2 x double> %i.dg, %i.cn          ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  %i.dj = fadd double %i.di, 1.000000e+00
  %i.dk = extractelement <2 x double> %i.dh, i64 1
  %i.dl = fadd double %i.dj, %i.dk                ; 2 uses
  store double %i.dl, ptr %i.ci, align 16, !tbaa !36
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.dm = fadd double %i.k, -1.000000e+00
  %i.dn = fdiv double %i.dm, %i.b                 ; 3 uses
  %i.do = fcmp olt double %.scalar.i, 1.000000e-05
  br i1 %i.do, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dp = fmul double %i.b, %i.b                  ; 3 uses
  %i.dq = fneg double %i.b
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dp, double 5.000000e-01, double %i.dq)
  %i.ds = insertelement <2 x double> poison, double %i.b, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dr, i64 1
  %i.du = fadd <2 x double> %i.dt, <double -1.000000e+00, double 1.000000e+00>
  %i.dv = insertelement <2 x double> poison, double %i.k, i64 0
  %i.dw = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dw, <2 x double> <double 1.000000e+00, double -1.000000e+00>)
  %i.dy = fmul double %i.b, %i.dp
  %i.dz = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.dy, i64 1
  %i.eb = fdiv <2 x double> %i.dx, %i.ea
  %i.ec = fadd <2 x double> %.sroa.0316.0..sroa.0316.0., <double 1.000000e+00, double 0.000000e+00>
  %i.ed = fmul <2 x double> %i.t, splat (double 5.000000e-01)
  %i.ee = fadd <2 x double> %i.ed, %i.ec          ; 2 uses
  store <2 x double> %i.ee, ptr %2, align 16, !tbaa !20
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eg = fadd <2 x double> %.sroa.0316.16..sroa.0316.16., zeroinitializer
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.191 = load <2 x double>, ptr %.sroa.7, align 16, !tbaa !20
  %i.eh = fmul <2 x double> %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.191, splat (double 5.000000e-01)
  %i.ei = fadd <2 x double> %i.eg, %i.eh          ; 2 uses
  store <2 x double> %i.ei, ptr %i.ef, align 16, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0316.32..sroa_idx334 = getelementptr inbounds nuw i8, ptr %.sroa.0316, i64 32
  %.sroa.0316.32..sroa.0316.32.323 = load <2 x double>, ptr %.sroa.0316.32..sroa_idx334, align 16, !tbaa !20 ; 2 uses
  %i.ek = fadd <2 x double> %.sroa.0316.32..sroa.0316.32.323, <double 1.000000e+00, double 0.000000e+00>
  %.sroa.7.16..sroa_idx312 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.195 = load <2 x double>, ptr %.sroa.7.16..sroa_idx312, align 16, !tbaa !20
  %i.el = fmul <2 x double> %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.195, splat (double 5.000000e-01)
  %i.em = fadd <2 x double> %i.ek, %i.el          ; 2 uses
  store <2 x double> %i.em, ptr %i.ej, align 16, !tbaa !20
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eo = fadd <2 x double> %.sroa.0316.48..sroa.0316.48., zeroinitializer
  %i.ep = fmul <2 x double> %i.as, splat (double 5.000000e-01)
  %i.eq = fadd <2 x double> %i.ep, %i.eo          ; 2 uses
  store <2 x double> %i.eq, ptr %i.en, align 16, !tbaa !20
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.es = fmul double %i.aw, 5.000000e-01
  %i.et = fadd double %i.es, 1.000000e+00         ; 2 uses
  store double %i.et, ptr %i.er, align 16, !tbaa !36
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.eu = tail call double @sin(double noundef %.scalar.i) #26
  %i.ev = tail call double @cos(double noundef %.scalar.i) #26
  %i.ew = fsub double 1.000000e+00, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.192 = load <2 x double>, ptr %.sroa.7, align 16, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0316.32..sroa_idx335 = getelementptr inbounds nuw i8, ptr %.sroa.0316, i64 32
  %.sroa.0316.32..sroa.0316.32.325 = load <2 x double>, ptr %.sroa.0316.32..sroa_idx335, align 16, !tbaa !20 ; 2 uses
  %.sroa.7.16..sroa_idx313 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.197 = load <2 x double>, ptr %.sroa.7.16..sroa_idx313, align 16, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fb = tail call double @sin(double noundef %.scalar.i) #26
  %i.fc = fmul double %i.k, %i.fb                 ; 2 uses
  %i.fd = tail call double @cos(double noundef %.scalar.i) #26
  %i.fe = fmul double %i.b, %i.b
  %i.ff = fmul double %.scalar.i, %i.fc
  %i.fg = fmul double %.scalar.i, %.scalar.i      ; 3 uses
  %i.fh = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fi = insertelement <2 x double> %i.fh, double %i.ew, i64 1
  %i.fj = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %i.fk = insertelement <2 x double> %i.fj, double %i.fg, i64 1
  %i.fl = fdiv <2 x double> %i.fi, %i.fk          ; 3 uses
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.fn = fmul <2 x double> %.sroa.0316.0..sroa.0316.0., %i.fm
  %i.fo = fadd <2 x double> %i.fn, <double 1.000000e+00, double 0.000000e+00>
  %i.fp = fmul <2 x double> %i.fm, %.sroa.0316.16..sroa.0316.16.
  %i.fq = fadd <2 x double> %i.fp, zeroinitializer
  %i.fr = fmul <2 x double> %i.fm, %.sroa.0316.32..sroa.0316.32.325
  %i.fs = fadd <2 x double> %i.fr, <double 1.000000e+00, double 0.000000e+00>
  %i.ft = fmul <2 x double> %i.fm, %.sroa.0316.48..sroa.0316.48.
  %i.fu = fadd <2 x double> %i.ft, zeroinitializer
  %i.fv = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aw, i64 1
  %i.fw = fmul <2 x double> %i.fv, %i.fl          ; 2 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 0
  %i.fy = fadd double %i.fx, 1.000000e+00
  %i.fz = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ga = fmul <2 x double> %i.t, %i.fz
  %i.gb = fadd <2 x double> %i.fo, %i.ga          ; 2 uses
  store <2 x double> %i.gb, ptr %2, align 16, !tbaa !20
  %i.gc = fmul <2 x double> %i.fz, %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.192
  %i.gd = fadd <2 x double> %i.fq, %i.gc          ; 2 uses
  store <2 x double> %i.gd, ptr %i.ex, align 16, !tbaa !20
  %i.ge = fmul <2 x double> %i.fz, %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.197
  %i.gf = fadd <2 x double> %i.fs, %i.ge          ; 2 uses
  store <2 x double> %i.gf, ptr %i.ey, align 16, !tbaa !20
  %i.gg = fmul <2 x double> %i.as, %i.fz
  %i.gh = fadd <2 x double> %i.gg, %i.fu          ; 2 uses
  store <2 x double> %i.gh, ptr %i.ez, align 16, !tbaa !20
  %i.gi = extractelement <2 x double> %i.fw, i64 1
  %i.gj = fadd double %i.fy, %i.gi                ; 2 uses
  store double %i.gj, ptr %i.fa, align 16, !tbaa !36
  %i.gk = fmul double %i.k, %i.fd                 ; 2 uses
  %i.gl = fadd double %i.fe, %i.fg                ; 2 uses
  %i.gm = fmul double %.scalar.i, %i.gl
  %i.gn = fadd double %i.gk, -1.000000e+00
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gn, double %i.b, double %i.ff)
  %i.gp = fsub double 1.000000e+00, %i.gk
  %i.gq = fdiv double %i.go, %i.gl
  %i.gr = fmul double %.scalar.i, %i.gp
  %i.gs = fsub double %i.dn, %i.gq
  %i.gt = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.b, double %i.gr)
  %i.gu = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.fg, i64 1
  %i.gw = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.gx = insertelement <2 x double> %i.gw, double %i.gs, i64 1
  %i.gy = fdiv <2 x double> %i.gx, %i.gv
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %.sink284 = phi <2 x double> [ %i.ee, %bb.f ], [ %i.gb, %bb.g ], [ %i.bc, %bb.c ], [ %i.ct, %bb.d ] ; 3 uses
  %.sink283 = phi <2 x double> [ %i.em, %bb.f ], [ %i.gf, %bb.g ], [ %i.bk, %bb.c ], [ %i.db, %bb.d ] ; 3 uses
  %.sink281 = phi <2 x double> [ %i.eq, %bb.f ], [ %i.gh, %bb.g ], [ %i.bo, %bb.c ], [ %i.df, %bb.d ] ; 2 uses
  %.sink279 = phi <2 x double> [ %i.ei, %bb.f ], [ %i.gd, %bb.g ], [ %i.bg, %bb.c ], [ %i.cx, %bb.d ] ; 2 uses
  %i.gz = phi <2 x double> [ %.sroa.0316.32..sroa.0316.32.323, %bb.f ], [ %.sroa.0316.32..sroa.0316.32.325, %bb.g ], [ %.sroa.0316.32..sroa.0316.32., %bb.c ], [ %.sroa.0316.32..sroa.0316.32.321, %bb.d ]
  %i.ha = phi double [ %i.et, %bb.f ], [ %i.gj, %bb.g ], [ %i.br, %bb.c ], [ %i.dl, %bb.d ] ; 2 uses
  %.0187 = phi double [ %i.dn, %bb.f ], [ %i.dn, %bb.g ], [ 1.000000e+00, %bb.c ], [ 1.000000e+00, %bb.d ] ; 2 uses
  %i.hb = phi <2 x double> [ %i.eb, %bb.f ], [ %i.gy, %bb.g ], [ <double 5.000000e-01, double f0x3FC5555555555555>, %bb.c ], [ %i.cc, %bb.d ] ; 3 uses
  %i.hc = extractelement <2 x double> %.sink284, i64 0
  %i.hd = extractelement <2 x double> %.sink283, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.he = fadd double %i.hd, %i.ha
  %i.hf = fadd double %i.hc, %i.he                ; 2 uses
  %i.hg = fcmp ogt double %i.hf, 0.000000e+00
  br i1 %i.hg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.hh = fadd double %i.hf, 1.000000e+00
  %i.hi = tail call double @sqrt(double noundef %i.hh) #26 ; 2 uses
  %i.hj = fmul double %i.hi, 5.000000e-01
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.hj, ptr %i.hk, align 8, !tbaa !36
  %i.hl = fdiv double 5.000000e-01, %i.hi         ; 2 uses
  %i.hm = shufflevector <2 x double> %.sink283, <2 x double> %.sink281, <2 x i32> <i32 1, i32 2>
  %i.hn = shufflevector <2 x double> %.sink281, <2 x double> %.sink279, <2 x i32> <i32 1, i32 2>
  %i.ho = fsub <2 x double> %i.hm, %i.hn
  %i.hp = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x double> %i.hq, %i.ho
  store <2 x double> %i.hr, ptr %3, align 16, !tbaa !36
  %foldExtExtBinop290 = fsub <2 x double> %.sink284, %.sink279
  %i.hs = extractelement <2 x double> %foldExtExtBinop290, i64 1
  %i.ht = fmul double %i.hl, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.ht, ptr %i.hu, align 16, !tbaa !36
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

bb.j:                                             ; preds = %bb.h
  %i.hv = fcmp ogt <2 x double> %.sink283, %.sink284
  %i.hw = extractelement <2 x i1> %i.hv, i64 0    ; 3 uses
  %spec.select.i.i.i = zext i1 %i.hw to i64
  %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.hw, i64 8, i64 0
  %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.idx.i.i.i.i = select i1 %i.hw, i64 24, i64 0
  %i.hx = getelementptr i8, ptr %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.idx.i.i.i.i
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !36
  %i.hz = fcmp ogt double %i.ha, %i.hy
  %.1.i.i.i = select i1 %i.hz, i64 2, i64 %spec.select.i.i.i ; 4 uses
  %4 = add nuw nsw i64 %.1.i.i.i, 1               ; 2 uses
  %5 = icmp eq i64 %4, 3
  %i.ia = select i1 %5, i64 0, i64 %4
  %.fr.i.i.i = freeze i64 %i.ia                   ; 5 uses
  %6 = add i64 %.fr.i.i.i, 1                      ; 2 uses
  %.urem.i.i.i = add i64 %.fr.i.i.i, -2
  %.cmp.i.i.i = icmp ult i64 %6, 3
  %7 = select i1 %.cmp.i.i.i, i64 %6, i64 %.urem.i.i.i ; 3 uses
  %i.ib = getelementptr [8 x i8], ptr %2, i64 %.1.i.i.i ; 3 uses
  %.idx.i66.i.i.i = mul nuw nsw i64 %.1.i.i.i, 24 ; 3 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 %.idx.i66.i.i.i
  %i.id = load double, ptr %i.ic, align 8, !tbaa !36
  %i.ie = getelementptr [8 x i8], ptr %2, i64 %.fr.i.i.i ; 3 uses
  %.idx.i67.i.i.i = mul nuw nsw i64 %.fr.i.i.i, 24 ; 3 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 %.idx.i67.i.i.i
  %i.ig = load double, ptr %i.if, align 8, !tbaa !36
  %i.ih = fsub double %i.id, %i.ig
  %i.ii = getelementptr [8 x i8], ptr %2, i64 %7  ; 3 uses
  %.idx.i68.i.i.i = mul i64 %7, 24                ; 3 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 %.idx.i68.i.i.i
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !36
  %i.il = fsub double %i.ih, %i.ik
  %i.im = fadd double %i.il, 1.000000e+00
  %i.in = tail call double @sqrt(double noundef %i.im) #26 ; 2 uses
  %i.io = fmul double %i.in, 5.000000e-01
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1.i.i.i
  store double %i.io, ptr %i.ip, align 8, !tbaa !36
  %i.iq = fdiv double 5.000000e-01, %i.in         ; 3 uses
  %i.ir = getelementptr i8, ptr %i.ii, i64 %.idx.i67.i.i.i
  %i.is = load double, ptr %i.ir, align 8, !tbaa !36
  %i.it = getelementptr i8, ptr %i.ie, i64 %.idx.i68.i.i.i
  %i.iu = load double, ptr %i.it, align 8, !tbaa !36
  %i.iv = fsub double %i.is, %i.iu
  %i.iw = fmul double %i.iq, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.iw, ptr %i.ix, align 8, !tbaa !36
  %i.iy = getelementptr i8, ptr %i.ie, i64 %.idx.i66.i.i.i
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !36
  %i.ja = getelementptr i8, ptr %i.ib, i64 %.idx.i67.i.i.i
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !36
  %i.jc = fadd double %i.iz, %i.jb
  %i.jd = fmul double %i.iq, %i.jc
  %i.je = getelementptr inbounds [8 x i8], ptr %3, i64 %.fr.i.i.i
  store double %i.jd, ptr %i.je, align 8, !tbaa !36
  %i.jf = getelementptr i8, ptr %i.ii, i64 %.idx.i66.i.i.i
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !36
  %i.jh = getelementptr i8, ptr %i.ib, i64 %.idx.i68.i.i.i
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !36
  %i.jj = fadd double %i.jg, %i.ji
  %i.jk = fmul double %i.iq, %i.jj
  %i.jl = getelementptr inbounds [8 x i8], ptr %3, i64 %7
  store double %i.jk, ptr %i.jl, align 8, !tbaa !36
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.i, %bb.j
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !127
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3)
  %.sroa.2739.88.vec.insert.i.i.i.i.i.i = insertelement <2 x double> poison, double %.0187, i64 0
  %i.jn = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jo = fmul <2 x double> %i.jn, %.sroa.0316.0..sroa.0316.0.
  %i.jp = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.jq = fmul <2 x double> %i.t, %i.jp
  %i.jr = fadd <2 x double> %i.jq, %i.jo
  %i.js = shufflevector <2 x double> %.sroa.2739.88.vec.insert.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.jt = fmul <2 x double> %i.js, <double 1.000000e+00, double 0.000000e+00>
  %i.ju = fadd <2 x double> %i.jr, %i.jt
  %i.jv = fmul <2 x double> %i.jn, %.sroa.0316.16..sroa.0316.16.
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.193 = load <2 x double>, ptr %.sroa.7, align 16, !tbaa !20
  %i.jw = fmul <2 x double> %i.jp, %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.16.193
  %i.jx = fadd <2 x double> %i.jv, %i.jw
  %i.jy = fmul <2 x double> %i.js, zeroinitializer ; 2 uses
  %i.jz = fadd <2 x double> %i.jx, %i.jy          ; 2 uses
  store <2 x double> %i.jz, ptr %.sroa.3, align 16, !tbaa !20
  %i.ka = fmul <2 x double> %i.jn, %i.gz
  %.sroa.7.16..sroa_idx314 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.199 = load <2 x double>, ptr %.sroa.7.16..sroa_idx314, align 16, !tbaa !20
  %i.kb = fmul <2 x double> %i.jp, %.sroa.7.16..sroa.7.16..sroa.7.16..sroa.7.32.199
  %i.kc = fadd <2 x double> %i.ka, %i.kb
  %i.kd = fmul <2 x double> %i.js, <double 1.000000e+00, double 0.000000e+00>
  %i.ke = fadd <2 x double> %i.kc, %i.kd          ; 2 uses
  %.sroa.3.16..sroa_idx301 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 16
  store <2 x double> %i.ke, ptr %.sroa.3.16..sroa_idx301, align 16, !tbaa !20
  %i.kf = fmul <2 x double> %i.jn, %.sroa.0316.48..sroa.0316.48.
  %i.kg = fmul <2 x double> %i.as, %i.jp
  %i.kh = fadd <2 x double> %i.kg, %i.kf
  %i.ki = fadd <2 x double> %i.kh, %i.jy
  %i.kj = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aw, i64 1
  %i.kk = fmul <2 x double> %i.kj, %i.hb          ; 2 uses
  %shift292 = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop293 = fadd <2 x double> %shift292, %i.kk
  %i.kl = extractelement <2 x double> %foldExtExtBinop293, i64 0
  %i.km = fadd double %.0187, %i.kl
  %.sroa.0221.0..sroa.0221.0..sroa.0221.0. = load <2 x double>, ptr %.sroa.0221, align 16 ; 2 uses
  %i.kn = shufflevector <2 x double> %.sroa.0221.0..sroa.0221.0..sroa.0221.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.ko = fmul <2 x double> %i.ju, %i.kn
  %.sroa.3.8..sroa_idx300 = getelementptr inbounds nuw i8, ptr %.sroa.3, i64 8
  %.sroa.3.8..sroa.3.8..sroa.3.24. = load <2 x double>, ptr %.sroa.3.8..sroa_idx300, align 8, !tbaa !20
  %.sroa.0221.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0221, i64 8
  %.sroa.0221.8..sroa.0221.8..sroa.0221.8. = load <2 x double>, ptr %.sroa.0221.8..sroa_idx, align 8 ; 4 uses
  %i.kp = shufflevector <2 x double> %.sroa.0221.8..sroa.0221.8..sroa.0221.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.kq = fmul <2 x double> %.sroa.3.8..sroa.3.8..sroa.3.24., %i.kp
  %i.kr = fadd <2 x double> %i.ko, %i.kq
  %i.ks = shufflevector <2 x double> %.sroa.0221.8..sroa.0221.8..sroa.0221.8., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kt = fmul <2 x double> %i.ki, %i.ks
  %i.ku = fadd <2 x double> %i.kt, %i.kr
  %foldExtExtBinop295 = fmul <2 x double> %.sroa.0221.0..sroa.0221.0..sroa.0221.0., %i.jz
  %i.kv = extractelement <2 x double> %foldExtExtBinop295, i64 0
  %shift297 = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop298 = fmul <2 x double> %.sroa.0221.8..sroa.0221.8..sroa.0221.8., %shift297
  %i.kw = extractelement <2 x double> %foldExtExtBinop298, i64 0
  %i.kx = extractelement <2 x double> %.sroa.0221.8..sroa.0221.8..sroa.0221.8., i64 1
  %i.ky = fmul double %i.km, %i.kx
  %i.kz = fadd double %i.ky, %i.kw
  %i.la = fadd double %i.kv, %i.kz
  store <2 x double> %i.ku, ptr %i.jm, align 16, !tbaa !20
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.la, ptr %i.lb, align 16, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0316)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0221)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3g2o16VertexSim3Expmap5writeERSo(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(369) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.g2o::Sim3", align 16       ; 10 uses
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.b = load <2 x i64>, ptr %i.a, align 16, !tbaa !20, !noalias !399
  %i.c = xor <2 x i64> %i.b, splat (i64 -9223372036854775808) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load <2 x i64>, ptr %i.d, align 16, !tbaa !20, !noalias !399
  %i.f = xor <2 x i64> %i.e, <i64 -9223372036854775808, i64 0> ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = load <2 x double>, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load <2 x double>, ptr %i.i, align 16, !tbaa !20, !noalias !400
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = load double, ptr %i.k, align 16, !tbaa !36, !noalias !400
  %bc.i = bitcast <2 x i64> %i.c to <2 x double>  ; 4 uses
  %i.m = extractelement <2 x double> %bc.i, i64 1 ; 4 uses
  %bc6.i = bitcast <2 x i64> %i.f to <2 x double> ; 5 uses
  %i.n = extractelement <2 x double> %bc6.i, i64 0 ; 4 uses
  %i.o = extractelement <2 x double> %bc.i, i64 0 ; 4 uses
  %i.p = extractelement <2 x double> %bc6.i, i64 1 ; 2 uses
  %i.q = shufflevector <2 x double> %bc6.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.r = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fdiv <2 x double> <double -1.000000e+00, double 1.000000e+00>, %i.r ; 3 uses
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x double> %i.j, %i.t             ; 3 uses
  %i.v = extractelement <2 x double> %i.s, i64 0
  %i.w = fmul double %i.v, %i.l                   ; 3 uses
  %.sroa.0.8.vec.extract.i.i.i = extractelement <2 x double> %i.u, i64 1 ; 2 uses
  %i.x = fneg double %.sroa.0.8.vec.extract.i.i.i
  %i.y = fmul double %i.n, %i.x
  %i.z = tail call double @llvm.fmuladd.f64(double %i.m, double %i.w, double %i.y)
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x double> %i.u, i64 0 ; 2 uses
  %i.aa = fneg double %i.w
  %i.ab = fmul double %i.o, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %.sroa.0.0.vec.extract.i.i.i, double %i.ab)
  %i.ad = fneg double %.sroa.0.0.vec.extract.i.i.i
  %i.ae = fmul double %i.m, %i.ad
  %i.af = tail call double @llvm.fmuladd.f64(double %i.o, double %.sroa.0.8.vec.extract.i.i.i, double %i.ae) ; 2 uses
  %.sroa.027.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.z, i64 0
  %.sroa.027.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.027.0.vec.insert.i.i.i.i, double %i.ac, i64 1 ; 2 uses
  %i.ag = fadd <2 x double> %.sroa.027.8.vec.insert.i.i.i.i, %.sroa.027.8.vec.insert.i.i.i.i ; 3 uses
  %i.ah = fadd double %i.af, %i.af                ; 3 uses
  %.sroa.027.8.vec.extract.i.i.i.i = extractelement <2 x double> %i.ag, i64 1 ; 2 uses
  %i.ai = fneg double %.sroa.027.8.vec.extract.i.i.i.i
  %i.aj = fmul double %i.n, %i.ai
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.m, double %i.ah, double %i.aj)
  %.sroa.027.0.vec.extract.i.i.i.i = extractelement <2 x double> %i.ag, i64 0 ; 2 uses
  %i.al = fneg double %i.ah
  %i.am = fmul double %i.o, %i.al
  %i.an = tail call double @llvm.fmuladd.f64(double %i.n, double %.sroa.027.0.vec.extract.i.i.i.i, double %i.am)
  %i.ao = fneg double %.sroa.027.0.vec.extract.i.i.i.i
  %i.ap = fmul double %i.m, %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.o, double %.sroa.027.8.vec.extract.i.i.i.i, double %i.ap)
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x double> poison, double %i.ak, i64 0
  %.sroa.0.8.vec.insert.i.i.i.i = insertelement <2 x double> %.sroa.0.0.vec.insert.i.i.i.i, double %i.an, i64 1
  %i.ar = fmul <2 x double> %i.q, %i.ag
  %i.as = fadd <2 x double> %i.u, %i.ar
  %i.at = fadd <2 x double> %i.as, %.sroa.0.8.vec.insert.i.i.i.i
  %i.au = fmul double %i.p, %i.ah
  %i.av = fadd double %i.w, %i.au
  %i.aw = fadd double %i.av, %i.aq
  store <2 x i64> %i.c, ptr %2, align 16, !alias.scope !398
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store <2 x i64> %i.f, ptr %.sroa.45.0..sroa_idx.i, align 16, !tbaa !20, !alias.scope !398
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x double> %i.at, ptr %i.ax, align 16, !alias.scope !398
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.aw, ptr %.sroa.43.0..sroa_idx.i, align 16, !tbaa !20, !alias.scope !398
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.az = extractelement <2 x double> %i.s, i64 1
  store double %i.az, ptr %i.ay, align 8, !tbaa !47, !alias.scope !398
  %i.ba = fcmp olt double %i.p, 0.000000e+00
  br i1 %i.ba, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.bb = fneg <2 x double> %bc.i                 ; 2 uses
  store <2 x double> %i.bb, ptr %2, align 16, !tbaa !20, !alias.scope !398
  %i.bc = fneg <2 x double> %bc6.i                ; 2 uses
  store <2 x double> %i.bc, ptr %.sroa.45.0..sroa_idx.i, align 16, !tbaa !20, !alias.scope !398
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.bd = phi <2 x double> [ %i.bc, %bb.b ], [ %bc6.i, %bb.a ] ; 3 uses
  %i.be = phi <2 x double> [ %i.bb, %bb.b ], [ %bc.i, %bb.a ] ; 3 uses
  %i.bf = fmul <2 x double> %i.be, %i.be
  %i.bg = fmul <2 x double> %i.bd, %i.bd
  %i.bh = fadd <2 x double> %i.bg, %i.bf          ; 2 uses
  %shift = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.bh, %shift
  %i.bi = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bj = fcmp ogt double %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.c, label %_ZNK3g2o4Sim37inverseEv.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %.scalar.i.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bi)
  %i.bk = insertelement <2 x double> poison, double %.scalar.i.i.i.i.i, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = fdiv <2 x double> %i.be, %i.bl
  store <2 x double> %i.bm, ptr %2, align 16, !tbaa !20, !alias.scope !398
  %i.bn = fdiv <2 x double> %i.bd, %i.bl
  store <2 x double> %i.bn, ptr %.sroa.45.0..sroa_idx.i, align 16, !tbaa !20, !alias.scope !398
  br label %_ZNK3g2o4Sim37inverseEv.exit

_ZNK3g2o4Sim37inverseEv.exit:                     ; preds = %._crit_edge.i.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZNK3g2o4Sim33logEv(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Matrix") align 8 %3, ptr noundef nonnull align 16 dereferenceable(64) %2)
  %i.bo = call noundef zeroext i1 @_ZN3g2o8internal11writeVectorIN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEEEEbRSoRKNS2_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 0 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bq = load double, ptr %i.bp, align 16, !tbaa !36
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bq)
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !36
  %i.bv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.bu)
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.by = load double, ptr %i.bx, align 16, !tbaa !36
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.by)
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.19, i64 noundef 1) ; 0 uses
end_hunk_0
