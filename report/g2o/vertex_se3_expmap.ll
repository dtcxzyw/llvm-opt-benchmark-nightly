Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_se3_expmap?download=true
inline.NumInlined: 7536
inline.NumDeleted: 4191
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN3g2o7SE3Quat3expERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE:bb.a
  %i.ao = fadd <2 x double> %i.an, %i.am          ; 7 uses
  %i.ap = fmul double %i.r, %.sroa.0257.8.vec.extract
  %foldExtExtBinop277 = fmul <2 x double> %.sroa.0257.0.copyload, %.sroa.0257.0.copyload
  %i.aq = extractelement <2 x double> %foldExtExtBinop277, i64 0
  %i.ar = fsub double 0.000000e+00, %i.aq
  %i.as = fadd double %i.ar, %i.ap                ; 4 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = shufflevector <2 x double> %.sroa.0166.0..sroa.0166.0..sroa.0166.0.167, <2 x double> %.sroa.0166.8..sroa.0166.8..sroa.0166.8., <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.au = fadd <2 x double> %i.at, <double 1.000000e+00, double 0.000000e+00>
  %i.av = fmul <2 x double> %i.q, splat (double 5.000000e-01)
  %i.aw = fadd <2 x double> %i.av, %i.au          ; 3 uses
  store <2 x double> %i.aw, ptr %2, align 16, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = fadd double %i.r, 0.000000e+00
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ba = shufflevector <2 x double> %.sroa.0166.16..sroa.0166.16..sroa.0166.16., <2 x double> %.sroa.0166.24..sroa.0166.24..sroa.0166.24.191, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bb = fadd <2 x double> %i.ba, <double 0.000000e+00, double 1.000000e+00>
  %i.bc = fmul <2 x double> %i.z, splat (double 5.000000e-01)
  %i.bd = fadd <2 x double> %i.bc, %i.bb          ; 3 uses
  store <2 x double> %i.bd, ptr %i.az, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bf = fadd <2 x double> %.sroa.0257.0.copyload, zeroinitializer
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bh = fsub double 0.000000e+00, %.sroa.0257.0.vec.extract
  %i.bi = shufflevector <2 x double> %i.ao, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.bj = fmul <2 x double> %i.bi, splat (double 5.000000e-01)
  %i.bk = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.ay, i64 1
  %i.bm = fadd <2 x double> %i.bl, %i.bj          ; 3 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 1
  store double %i.bn, ptr %i.ax, align 16, !tbaa !15
  %i.bo = shufflevector <2 x double> %i.ah, <2 x double> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.bp = fmul <2 x double> %i.bo, splat (double 5.000000e-01)
  %i.bq = fadd <2 x double> %i.bf, %i.bp          ; 2 uses
  store <2 x double> %i.bq, ptr %i.be, align 8, !tbaa !15
  %i.br = extractelement <2 x double> %i.bm, i64 0
  store double %i.br, ptr %i.bg, align 8, !tbaa !15
  %i.bs = fmul double %i.as, 5.000000e-01
  %i.bt = fadd double %i.bs, 1.000000e+00
  %i.bu = fmul <2 x double> %i.at, splat (double 5.000000e-01)
  %i.bv = fadd <2 x double> %i.bu, <double 1.000000e+00, double 0.000000e+00>
  %i.bw = fmul <2 x double> %i.q, splat (double f0x3FC5555555555555)
  %i.bx = fadd <2 x double> %i.bw, %i.bv
  %i.by = fmul <2 x double> %i.ae, splat (double 5.000000e-01)
  %i.bz = fmul <2 x double> %i.ah, splat (double f0x3FC5555555555555)
  %i.ca = fmul <2 x double> %i.ba, splat (double 5.000000e-01)
  %i.cb = fadd <2 x double> %i.ca, <double 0.000000e+00, double 1.000000e+00>
  %i.cc = fmul <2 x double> %i.z, splat (double f0x3FC5555555555555)
  %i.cd = fadd <2 x double> %i.cc, %i.cb
  %i.ce = fmul double %.sroa.0257.0.vec.extract, 5.000000e-01
  %i.cf = fadd <2 x double> %i.by, zeroinitializer
  %i.cg = fadd <2 x double> %i.cf, %i.bz
  %i.ch = insertelement <2 x double> %i.ao, double %i.ce, i64 1 ; 2 uses
  %i.ci = fmul <2 x double> %i.ch, <double f0x3FC5555555555555, double poison>
  %i.cj = fsub <2 x double> <double poison, double 0.000000e+00>, %i.ch
  %i.ck = shufflevector <2 x double> %i.ci, <2 x double> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.cl = shufflevector <2 x double> %.sroa.0257.0.copyload, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.cm = fmul <2 x double> %i.cl, <double 5.000000e-01, double f0x3FC5555555555555>
  %i.cn = fadd <2 x double> %i.cm, <double 0.000000e+00, double -0.000000e+00>
  %i.co = fadd <2 x double> %i.cn, %i.ck
  %i.cp = fmul double %i.as, f0x3FC5555555555555
  %i.cq = fadd double %i.cp, 1.000000e+00
  %i.cr = extractelement <2 x double> %i.aw, i64 0
  %i.cs = extractelement <2 x double> %i.aw, i64 1
  %i.ct = extractelement <2 x double> %i.bd, i64 0
  %i.cu = extractelement <2 x double> %i.bd, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.cv = tail call double @sin(double noundef %.scalar.i) #21
  %i.cw = fdiv double %i.cv, %.scalar.i           ; 3 uses
  %i.cx = tail call double @cos(double noundef %.scalar.i) #21
  %i.cy = fmul double %.scalar.i, %.scalar.i
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dd = fmul double %i.cw, 0.000000e+00
  %i.de = fadd double %i.dd, 1.000000e+00
  %i.df = tail call double @sin(double noundef %.scalar.i) #21
  %i.dg = tail call noundef double @pow(double noundef %.scalar.i, double noundef 3.000000e+00) #21
  %i.dh = insertelement <2 x double> <double 1.000000e+00, double poison>, double %.scalar.i, i64 1
  %i.di = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.df, i64 1
  %i.dk = fsub <2 x double> %i.dh, %i.dj
  %i.dl = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dg, i64 1
  %i.dn = fdiv <2 x double> %i.dk, %i.dm          ; 7 uses
  %i.do = extractelement <2 x double> %i.dn, i64 0 ; 3 uses
  %i.dp = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dr = shufflevector <2 x double> %.sroa.0166.0..sroa.0166.0..sroa.0166.0.167, <2 x double> %.sroa.0166.8..sroa.0166.8..sroa.0166.8., <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ds = fmul <2 x double> %i.dq, %i.dr
  %i.dt = fadd <2 x double> %i.ds, <double 1.000000e+00, double 0.000000e+00>
  %i.du = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.dv = fmul <2 x double> %i.q, %i.du
  %i.dw = fadd <2 x double> %i.dt, %i.dv          ; 3 uses
  store <2 x double> %i.dw, ptr %2, align 16, !tbaa !15
  %i.dx = shufflevector <2 x double> %.sroa.0166.16..sroa.0166.16..sroa.0166.16., <2 x double> %.sroa.0166.24..sroa.0166.24..sroa.0166.24.191, <2 x i32> <i32 1, i32 3>
  %i.dy = fmul <2 x double> %i.dq, %i.dx
  %i.dz = fadd <2 x double> %i.dy, <double 0.000000e+00, double 1.000000e+00>
  %i.ea = fmul <2 x double> %i.z, %i.du
  %i.eb = fadd <2 x double> %i.ea, %i.dz          ; 3 uses
  store <2 x double> %i.eb, ptr %i.da, align 8, !tbaa !15
  %i.ec = fmul <2 x double> %.sroa.0257.0.copyload, %i.dq ; 2 uses
  %i.ed = fadd <2 x double> %i.ec, zeroinitializer
  %i.ee = fmul double %i.r, %i.cw
  %i.ef = extractelement <2 x double> %i.ec, i64 0
  %i.eg = fsub double 0.000000e+00, %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ee, i64 1
  %i.ej = fadd <2 x double> %i.ei, <double -0.000000e+00, double 0.000000e+00>
  %i.ek = shufflevector <2 x double> %i.ao, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.el = fmul <2 x double> %i.ek, %i.du
  %i.em = fadd <2 x double> %i.ej, %i.el          ; 3 uses
  %i.en = extractelement <2 x double> %i.em, i64 1
  store double %i.en, ptr %i.cz, align 16, !tbaa !15
  %i.eo = shufflevector <2 x double> %i.ah, <2 x double> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.ep = fmul <2 x double> %i.eo, %i.du
  %i.eq = fadd <2 x double> %i.ed, %i.ep          ; 2 uses
  store <2 x double> %i.eq, ptr %i.db, align 8, !tbaa !15
  %i.er = extractelement <2 x double> %i.em, i64 0
  store double %i.er, ptr %i.dc, align 8, !tbaa !15
  %i.es = fmul double %i.as, %i.do
  %i.et = fadd double %i.de, %i.es
  %i.eu = extractelement <2 x double> %i.dn, i64 1
  %i.ev = fmul <2 x double> %i.dr, %i.du
  %i.ew = fadd <2 x double> %i.ev, <double 1.000000e+00, double 0.000000e+00>
  %i.ex = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ey = fmul <2 x double> %i.q, %i.ex
  %i.ez = fadd <2 x double> %i.ew, %i.ey
  %foldExtExtBinop279 = fmul <2 x double> %.sroa.0257.0.copyload, %i.dn
  %i.fa = fmul <2 x double> %i.ae, %i.du
  %i.fb = fadd <2 x double> %i.fa, zeroinitializer
  %i.fc = fmul <2 x double> %i.ah, %i.ex
  %i.fd = shufflevector <2 x double> %i.dn, <2 x double> %.sroa.0166.24..sroa.0166.24..sroa.0166.24.191, <2 x i32> <i32 0, i32 3>
  %i.fe = shufflevector <2 x double> %.sroa.0166.16..sroa.0166.16..sroa.0166.16., <2 x double> %i.dn, <2 x i32> <i32 1, i32 2>
  %i.ff = fmul <2 x double> %i.fd, %i.fe
  %i.fg = fadd <2 x double> %i.ff, <double 0.000000e+00, double 1.000000e+00>
  %i.fh = fmul <2 x double> %i.z, %i.ex
  %i.fi = fadd <2 x double> %i.fg, %i.fh
  %i.fj = fadd <2 x double> %i.fb, %i.fc
  %i.fk = fmul double %.sroa.0257.8.vec.extract, %i.do
  %i.fl = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.fk, i64 0
  %i.fm = shufflevector <2 x double> <double -0.000000e+00, double poison>, <2 x double> %foldExtExtBinop279, <2 x i32> <i32 0, i32 2>
  %i.fn = fsub <2 x double> %i.fl, %i.fm
  %i.fo = fmul <2 x double> %i.ao, %i.ex
  %i.fp = fadd <2 x double> %i.fn, %i.fo
  %i.fq = fmul double %i.do, 0.000000e+00
  %i.fr = fadd double %i.fq, 1.000000e+00
  %i.fs = fmul double %i.as, %i.eu
  %i.ft = fadd double %i.fr, %i.fs
  %i.fu = extractelement <2 x double> %i.dw, i64 0
  %i.fv = extractelement <2 x double> %i.dw, i64 1
  %i.fw = extractelement <2 x double> %i.eb, i64 0
  %i.fx = extractelement <2 x double> %i.eb, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.fy = phi double [ %i.ct, %bb.b ], [ %i.fw, %bb.c ]
  %i.fz = phi double [ %i.cs, %bb.b ], [ %i.fv, %bb.c ]
  %i.ga = phi double [ %i.cu, %bb.b ], [ %i.fx, %bb.c ] ; 2 uses
  %i.gb = phi double [ %i.cr, %bb.b ], [ %i.fu, %bb.c ] ; 2 uses
  %.sink = phi double [ %i.bt, %bb.b ], [ %i.et, %bb.c ] ; 3 uses
  %.sroa.23.0 = phi double [ %i.cq, %bb.b ], [ %i.ft, %bb.c ]
  %.sroa.18.0 = phi <2 x double> [ %i.co, %bb.b ], [ %i.fp, %bb.c ]
  %.sroa.10.0 = phi <2 x double> [ %i.cd, %bb.b ], [ %i.fi, %bb.c ]
  %.sroa.0.0 = phi <2 x double> [ %i.bx, %bb.b ], [ %i.ez, %bb.c ]
  %i.gc = phi <2 x double> [ %i.cg, %bb.b ], [ %i.fj, %bb.c ]
  %i.gd = phi <2 x double> [ %i.bq, %bb.b ], [ %i.eq, %bb.c ]
  %i.ge = phi <2 x double> [ %i.bm, %bb.b ], [ %i.em, %bb.c ]
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double %.sink, ptr %i.gf, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.gg = fadd double %i.ga, %.sink
  %i.gh = fadd double %i.gb, %i.gg                ; 2 uses
  %i.gi = fcmp ogt double %i.gh, 0.000000e+00
  br i1 %i.gi, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.gj = fadd double %i.gh, 1.000000e+00
  %i.gk = tail call double @sqrt(double noundef %i.gj) #21 ; 2 uses
  %i.gl = fmul double %i.gk, 5.000000e-01
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.gl, ptr %i.gm, align 8, !tbaa !15
  %i.gn = fdiv double 5.000000e-01, %i.gk         ; 2 uses
  %i.go = fsub <2 x double> %i.gd, %i.ge
  %i.gp = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x double> %i.gq, %i.go
  store <2 x double> %i.gr, ptr %3, align 16, !tbaa !15
  %i.gs = fsub double %i.fz, %i.fy
  %i.gt = fmul double %i.gn, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.gt, ptr %i.gu, align 16, !tbaa !15
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.gv = fcmp ogt double %i.ga, %i.gb            ; 4 uses
  %spec.select.i.i.i = zext i1 %i.gv to i64
  %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.gv, i64 8, i64 0
  %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %.idx.i.i.i.i = select i1 %i.gv, i64 24, i64 0
  %i.gw = getelementptr i8, ptr %spec.select.i.i.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.idx.i.i.i.i
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !15
  %i.gy = fcmp ogt double %.sink, %i.gx           ; 2 uses
  %.1.i.i.i = select i1 %i.gy, i64 2, i64 %spec.select.i.i.i ; 3 uses
  %4 = select i1 %i.gv, i64 2, i64 1
  %i.gz = select i1 %i.gy, i64 0, i64 %4
  %.fr.i.i.i = freeze i64 %i.gz                   ; 5 uses
  %.cmp.inv.i.i.i = icmp samesign ugt i64 %.fr.i.i.i, 1
  %.v.i.i.i = select i1 %.cmp.inv.i.i.i, i64 -2, i64 1
  %5 = add nsw i64 %.v.i.i.i, %.fr.i.i.i          ; 3 uses
  %i.ha = getelementptr [8 x i8], ptr %2, i64 %.1.i.i.i ; 3 uses
  %.idx.i66.i.i.i = mul nuw nsw i64 %.1.i.i.i, 24 ; 3 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 %.idx.i66.i.i.i
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !15
  %i.hd = getelementptr [8 x i8], ptr %2, i64 %.fr.i.i.i ; 3 uses
  %.idx.i67.i.i.i = mul nuw nsw i64 %.fr.i.i.i, 24 ; 3 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 %.idx.i67.i.i.i
  %i.hf = load double, ptr %i.he, align 8, !tbaa !15
  %i.hg = fsub double %i.hc, %i.hf
  %i.hh = getelementptr [8 x i8], ptr %2, i64 %5  ; 3 uses
  %.idx.i68.i.i.i = mul nsw i64 %5, 24            ; 3 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 %.idx.i68.i.i.i
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !15
  %i.hk = fsub double %i.hg, %i.hj
  %i.hl = fadd double %i.hk, 1.000000e+00
  %i.hm = tail call double @sqrt(double noundef %i.hl) #21 ; 2 uses
  %i.hn = fmul double %i.hm, 5.000000e-01
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.1.i.i.i
  store double %i.hn, ptr %i.ho, align 8, !tbaa !15
  %i.hp = fdiv double 5.000000e-01, %i.hm         ; 3 uses
  %i.hq = getelementptr i8, ptr %i.hh, i64 %.idx.i67.i.i.i
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !15
  %i.hs = getelementptr i8, ptr %i.hd, i64 %.idx.i68.i.i.i
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !15
  %i.hu = fsub double %i.hr, %i.ht
  %i.hv = fmul double %i.hp, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.hv, ptr %i.hw, align 8, !tbaa !15
  %i.hx = getelementptr i8, ptr %i.hd, i64 %.idx.i66.i.i.i
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !15
  %i.hz = getelementptr i8, ptr %i.ha, i64 %.idx.i67.i.i.i
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !15
  %i.ib = fadd double %i.hy, %i.ia
  %i.ic = fmul double %i.hp, %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.fr.i.i.i
  store double %i.ic, ptr %i.id, align 8, !tbaa !15
  %i.ie = getelementptr i8, ptr %i.hh, i64 %.idx.i66.i.i.i
  %i.if = load double, ptr %i.ie, align 8, !tbaa !15
  %i.ig = getelementptr i8, ptr %i.ha, i64 %.idx.i68.i.i.i
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !15
  %i.ii = fadd double %i.if, %i.ih
  %i.ij = fmul double %i.hp, %i.ii
  %i.ik = getelementptr inbounds [8 x i8], ptr %3, i64 %5
  store double %i.ij, ptr %i.ik, align 8, !tbaa !15
  br label %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit

_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.e, %bb.f
  %.sroa.0250.0..sroa.0250.0..sroa.0250.0. = load <2 x double>, ptr %.sroa.0250, align 16 ; 2 uses
  %i.il = shufflevector <2 x double> %.sroa.0250.0..sroa.0250.0..sroa.0250.0., <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x double> %.sroa.0.0, %i.il
  %.sroa.0250.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0250, i64 8
  %.sroa.0250.8..sroa.0250.8..sroa.0250.8. = load <2 x double>, ptr %.sroa.0250.8..sroa_idx, align 8 ; 4 uses
  %i.in = shufflevector <2 x double> %.sroa.0250.8..sroa.0250.8..sroa.0250.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x double> %.sroa.10.0, %i.in
  %i.ip = fadd <2 x double> %i.im, %i.io
  %i.iq = shufflevector <2 x double> %.sroa.0250.8..sroa.0250.8..sroa.0250.8., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ir = fmul <2 x double> %.sroa.18.0, %i.iq
  %i.is = fadd <2 x double> %i.ir, %i.ip
  %i.it = shufflevector <2 x double> %.sroa.0250.0..sroa.0250.0..sroa.0250.0., <2 x double> %.sroa.0250.8..sroa.0250.8..sroa.0250.8., <2 x i32> <i32 0, i32 2>
  %i.iu = fmul <2 x double> %i.gc, %i.it          ; 2 uses
  %i.iv = extractelement <2 x double> %.sroa.0250.8..sroa.0250.8..sroa.0250.8., i64 1
  %i.iw = fmul double %.sroa.23.0, %i.iv
  %i.ix = extractelement <2 x double> %i.iu, i64 1
  %i.iy = fadd double %i.ix, %i.iw
  %i.iz = extractelement <2 x double> %i.iu, i64 0
  %i.ja = fadd double %i.iz, %i.iy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %0, ptr noundef nonnull align 16 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !41
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.is, ptr %i.jb, align 16
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.ja, ptr %.sroa.428.0..sroa_idx, align 16, !tbaa !31
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !15
  %i.je = fcmp olt double %i.jd, 0.000000e+00
  %.pre.i.i = load <2 x double>, ptr %0, align 16, !tbaa !31 ; 2 uses
  br i1 %i.je, label %bb.g, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre1.i.i = load <2 x double>, ptr %.phi.trans.insert.i.i, align 16, !tbaa !31
  br label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen10QuaternionIdLi0EEC2INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEERKNS_10MatrixBaseIT_EE.exit
  %i.jf = fneg <2 x double> %.pre.i.i             ; 2 uses
  store <2 x double> %i.jf, ptr %0, align 16, !tbaa !31
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jh = load <2 x double>, ptr %i.jg, align 16, !tbaa !31
  %i.ji = fneg <2 x double> %i.jh                 ; 2 uses
  store <2 x double> %i.ji, ptr %i.jg, align 16, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i
  %i.jj = phi <2 x double> [ %i.ji, %bb.g ], [ %.pre1.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.jk = phi <2 x double> [ %i.jf, %bb.g ], [ %.pre.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.jl = fmul <2 x double> %i.jk, %i.jk
  %i.jm = fmul <2 x double> %i.jj, %i.jj
  %i.jn = fadd <2 x double> %i.jm, %i.jl          ; 2 uses
  %shift281 = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop282 = fadd <2 x double> %i.jn, %shift281
  %i.jo = extractelement <2 x double> %foldExtExtBinop282, i64 0 ; 2 uses
  %i.jp = fcmp ogt double %i.jo, 0.000000e+00
  br i1 %i.jp, label %bb.i, label %_ZN3g2o7SE3QuatC2ERKN5Eigen10QuaternionIdLi0EEERKNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEE.exit

bb.i:                                             ; preds = %bb.h
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.scalar.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.jo)
  %i.jr = insertelement <2 x double> poison, double %.scalar.i.i.i.i, i64 0
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jt = fdiv <2 x double> %i.jk, %i.js
  store <2 x double> %i.jt, ptr %0, align 16, !tbaa !31
  %i.ju = fdiv <2 x double> %i.jj, %i.js
  store <2 x double> %i.ju, ptr %i.jq, align 16, !tbaa !31
  br label %_ZN3g2o7SE3QuatC2ERKN5Eigen10QuaternionIdLi0EEERKNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEE.exit

_ZN3g2o7SE3QuatC2ERKN5Eigen10QuaternionIdLi0EEERKNS1_6MatrixIdLi3ELi1ELi0ELi3ELi1EEE.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0166)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0250)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o15VertexSE3ExpmapD0Ev(ptr noundef nonnull align 16 dereferenceable(280) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_7SE3QuatEEE, i64 16), ptr %0, align 16, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_7SE3QuatEEE, i64 288), ptr %i.a, align 16, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !44  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi6ENS_7SE3QuatEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !45
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #22, !inline_history !46
  br label %_ZN3g2o10BaseVertexILi6ENS_7SE3QuatEED2Ev.exit

_ZN3g2o10BaseVertexILi6ENS_7SE3QuatEED2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(280) %0) #21, !inline_history !46
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph6Vertex11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o16OptimizableGraph6Vertex5setIdEi(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3g2o10BaseVertexILi6ENS_7SE3QuatEE7hessianEii(ptr noundef nonnull align 16 dereferenceable(280) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !13
  %.idx.i.i.i = mul nsw i64 %i.c, 48
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN3g2o10BaseVertexILi6ENS_7SE3QuatEE7hessianEii(ptr noundef nonnull align 16 dereferenceable(280) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = sext i32 %1 to i64
  %i.c = sext i32 %2 to i64
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !13
  %.idx.i.i.i = mul nsw i64 %i.c, 48
  %i.e = getelementptr i8, ptr %i.d, i64 %.idx.i.i.i
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %i.b
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o10BaseVertexILi6ENS_7SE3QuatEE18hessianDeterminantEv(ptr noundef nonnull align 16 dereferenceable(280) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::PartialPivLU", align 16 ; 28 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !13, !noalias !190 ; 18 uses
  %i.c = load <2 x double>, ptr %i.b, align 1, !tbaa !31, !noalias !190
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 1, !tbaa !31, !noalias !190
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !31, !noalias !190
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load <2 x double>, ptr %i.h, align 1, !tbaa !31, !noalias !190
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = load <2 x double>, ptr %i.j, align 1, !tbaa !31, !noalias !190
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.m = load <2 x double>, ptr %i.l, align 1, !tbaa !31, !noalias !190
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.o = load <2 x double>, ptr %i.n, align 1, !tbaa !31, !noalias !190
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.q = load <2 x double>, ptr %i.p, align 1, !tbaa !31, !noalias !190
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.s = load <2 x double>, ptr %i.r, align 1, !tbaa !31, !noalias !190
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !31, !noalias !190
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.w = load <2 x double>, ptr %i.v, align 1, !tbaa !31, !noalias !190
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.y = load <2 x double>, ptr %i.x, align 1, !tbaa !31, !noalias !190
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.aa = load <2 x double>, ptr %i.z, align 1, !tbaa !31, !noalias !190
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !31, !noalias !190
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.ae = load <2 x double>, ptr %i.ad, align 1, !tbaa !31, !noalias !190
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.ag = load <2 x double>, ptr %i.af, align 1, !tbaa !31, !noalias !190
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ai = load <2 x double>, ptr %i.ah, align 1, !tbaa !31, !noalias !190
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.ak = load <2 x double>, ptr %i.aj, align 1, !tbaa !31, !noalias !190
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 336
  store double 0.000000e+00, ptr %i.al, align 16, !tbaa !58, !alias.scope !189
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  store i8 0, ptr %i.am, align 8, !tbaa !59, !alias.scope !189
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 345
  store i8 0, ptr %i.an, align 1, !tbaa !60, !alias.scope !189
  store <2 x double> %i.c, ptr %1, align 16, !tbaa !31, !alias.scope !189
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x double> %i.e, ptr %i.ao, align 16, !tbaa !31, !alias.scope !189
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  store <2 x double> %i.g, ptr %i.ap, align 16, !tbaa !31, !alias.scope !189
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
end_hunk_0
