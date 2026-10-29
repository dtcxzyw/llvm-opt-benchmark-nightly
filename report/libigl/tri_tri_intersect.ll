Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tri_tri_intersect?download=true
inline.NumInlined: 3274
inline.NumDeleted: 656
begin_hunk_0_@_ZN3igl28tri_tri_intersection_test_3dIN5Eigen5BlockIKNS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS2_IS4_Li1ELin1ELb0EEES6_S6_NS3_IdLi1ELi3ELi1ELi1ELi3EEES8_EEbRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EERbRNS9_IT5_EERNS9_IT6_EE:bb.a
  %i.ag = insertelement <2 x double> %i.af, double %i.n, i64 1
  %i.ah = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fsub <2 x double> %i.ag, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.u, i64 1
  %i.al = insertelement <2 x double> %i.ac, double %i.m, i64 1
  %i.am = fsub <2 x double> %i.ak, %i.al          ; 2 uses
  %i.an = fneg <2 x double> %i.am
  %i.ao = fmul <2 x double> %i.z, %i.an
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ae, <2 x double> %i.ao)
  %i.aq = extractelement <2 x double> %i.ae, i64 1
  %i.ar = fneg double %i.aq
  %i.as = extractelement <2 x double> %i.ae, i64 0
  %i.at = fmul double %i.as, %i.ar
  %i.au = extractelement <2 x double> %i.z, i64 1
  %i.av = extractelement <2 x double> %i.am, i64 0
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.av, double %i.at) ; 3 uses
  store <2 x double> %i.ap, ptr %10, align 16
  %.sroa.5301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %i.aw, ptr %.sroa.5301.0..sroa_idx, align 16, !tbaa !16
  %.sroa.0291.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4293.0.copyload = load ptr, ptr %.sroa.4293.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4293.0.copyload, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %i.az = load double, ptr %.sroa.0291.0.copyload, align 8, !tbaa !15
  %i.ba = fsub double %i.az, %i.e
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = getelementptr inbounds [8 x i8], ptr %.sroa.0291.0.copyload, i64 %i.ay
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !15
  %i.be = fsub double %i.bd, %i.i
  %.sroa.0324.8.vec.insert350 = insertelement <2 x double> %i.bb, double %i.be, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i221 = shl nsw i64 %i.ay, 4
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0291.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i221
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !15
  %i.bh = load <2 x double>, ptr %10, align 16, !tbaa !16 ; 3 uses
  %i.bi = fmul <2 x double> %.sroa.0324.8.vec.insert350, %i.bh ; 2 uses
  %.sroa.0283.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.4285.0.copyload = load ptr, ptr %.sroa.4285.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.4285.0.copyload, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %i.bl = load double, ptr %.sroa.0283.0.copyload, align 8, !tbaa !15
  %i.bm = fsub double %i.bl, %i.e
  %.sroa.0324.0.vec.insert335 = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bn = getelementptr inbounds [8 x i8], ptr %.sroa.0283.0.copyload, i64 %i.bk
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !15
  %i.bp = fsub double %i.bo, %i.i
  %.sroa.0324.8.vec.insert352 = insertelement <2 x double> %.sroa.0324.0.vec.insert335, double %i.bp, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i223 = shl nsw i64 %i.bk, 4
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0283.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i223
  %i.br = load double, ptr %i.bq, align 8, !tbaa !15
  %i.bs = fmul <2 x double> %i.bh, %.sroa.0324.8.vec.insert352 ; 2 uses
  %i.bt = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.br, i64 1
  %i.bv = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fsub <2 x double> %i.bu, %i.bv
  %i.bx = shufflevector <2 x double> %i.bi, <2 x double> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.by = shufflevector <2 x double> %i.bi, <2 x double> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.bz = fadd <2 x double> %i.bx, %i.by
  %i.ca = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x double> %i.cb, %i.bw
  %i.cd = fadd <2 x double> %i.cc, %i.bz          ; 3 uses
  %.sroa.0275.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.4277.0.copyload = load ptr, ptr %.sroa.4277.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.4277.0.copyload, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !13 ; 2 uses
  %i.cg = load double, ptr %.sroa.0275.0.copyload, align 8, !tbaa !15
  %i.ch = fsub double %i.cg, %i.e
  %.sroa.0324.0.vec.insert337 = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ci = getelementptr inbounds [8 x i8], ptr %.sroa.0275.0.copyload, i64 %i.cf
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !15
  %i.ck = fsub double %i.cj, %i.i
  %.sroa.0324.8.vec.insert354 = insertelement <2 x double> %.sroa.0324.0.vec.insert337, double %i.ck, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i225 = shl nsw i64 %i.cf, 4
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0275.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i225
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !15
  %i.cn = fsub double %i.cm, %i.m
  %i.co = fmul <2 x double> %i.bh, %.sroa.0324.8.vec.insert354 ; 2 uses
  %shift = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.co, %shift
  %i.cp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cq = fmul double %i.aw, %i.cn
  %i.cr = fadd double %i.cq, %i.cp                ; 7 uses
  store i8 0, ptr %6, align 1, !tbaa !18
  %i.cs = extractelement <2 x double> %i.cd, i64 0 ; 4 uses
  %i.ct = extractelement <2 x double> %i.cd, i64 1 ; 4 uses
  %i.cu = fmul double %i.cs, %i.ct
  %i.cv = fcmp ogt double %i.cu, 0.000000e+00
  %i.cw = fmul double %i.cs, %i.cr
  %i.cx = fcmp ogt double %i.cw, 0.000000e+00
  %or.cond = and i1 %i.cv, %i.cx
  br i1 %or.cond, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0267.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.4269.0.copyload = load ptr, ptr %.sroa.4285.0..sroa_idx, align 8
  %.sroa.5271.56.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.7273.56.copyload = load ptr, ptr %.sroa.4293.0..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.4269.0.copyload, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !13 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.7273.56.copyload, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !13 ; 2 uses
  %i.dc = load double, ptr %.sroa.0267.0.copyload, align 8, !tbaa !15
  %i.dd = load double, ptr %.sroa.5271.56.copyload, align 8, !tbaa !15 ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %.sroa.0267.0.copyload, i64 %i.cz
  %i.df = load double, ptr %i.de, align 8, !tbaa !15
  %i.dg = getelementptr inbounds [8 x i8], ptr %.sroa.5271.56.copyload, i64 %i.db
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !15
  %.idx.i.i.i.i.i.i.i.i.i.i.i227 = shl nsw i64 %i.cz, 4
  %i.di = getelementptr inbounds i8, ptr %.sroa.0267.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i227
  %i.dj = load double, ptr %i.di, align 8, !tbaa !15 ; 2 uses
  %.idx2.i.i.i.i.i.i.i.i.i.i.i228 = shl nsw i64 %i.db, 4
  %i.dk = getelementptr inbounds i8, ptr %.sroa.5271.56.copyload, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i228
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !15 ; 2 uses
  %.sroa.0259.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.4261.0.copyload = load ptr, ptr %.sroa.4277.0..sroa_idx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.4261.0.copyload, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !13 ; 2 uses
  %i.do = load double, ptr %.sroa.0259.0.copyload, align 8, !tbaa !15 ; 4 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %.sroa.0259.0.copyload, i64 %i.dn
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !15 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i229 = shl nsw i64 %i.dn, 4
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0259.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i229
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !15 ; 5 uses
  %i.dt = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.dc, i64 1
  %i.dv = insertelement <2 x double> poison, double %i.dl, i64 0 ; 2 uses
  %i.dw = insertelement <2 x double> %i.dv, double %i.dd, i64 1
  %i.dx = fsub <2 x double> %i.du, %i.dw          ; 2 uses
  %i.dy = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.do, i64 1
  %i.ea = insertelement <2 x double> poison, double %i.dh, i64 0 ; 2 uses
  %i.eb = insertelement <2 x double> %i.ea, double %i.dd, i64 1
  %i.ec = fsub <2 x double> %i.dz, %i.eb          ; 3 uses
  %i.ed = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %i.dj, i64 1
  %i.ef = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fsub <2 x double> %i.ee, %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ds, i64 1
  %i.ej = insertelement <2 x double> %i.ea, double %i.dl, i64 1
  %i.ek = fsub <2 x double> %i.ei, %i.ej          ; 2 uses
  %i.el = fneg <2 x double> %i.ek
  %i.em = fmul <2 x double> %i.dx, %i.el
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.ec, <2 x double> %i.em)
  %i.eo = extractelement <2 x double> %i.ec, i64 1
  %i.ep = fneg double %i.eo
  %i.eq = extractelement <2 x double> %i.ec, i64 0
  %i.er = fmul double %i.eq, %i.ep
  %i.es = extractelement <2 x double> %i.dx, i64 1
  %i.et = extractelement <2 x double> %i.ek, i64 0
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.es, double %i.et, double %i.er) ; 4 uses
  store <2 x double> %i.en, ptr %9, align 16
  %.sroa.5258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.eu, ptr %.sroa.5258.0..sroa_idx, align 16, !tbaa !16
  %.sroa.0248.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.4250.0.copyload = load ptr, ptr %.sroa.4312.0..sroa_idx, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.4250.0.copyload, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !13 ; 2 uses
  %i.ex = load double, ptr %.sroa.0248.0.copyload, align 8, !tbaa !15
  %i.ey = fsub double %i.ex, %i.do
  %i.ez = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fa = getelementptr inbounds [8 x i8], ptr %.sroa.0248.0.copyload, i64 %i.ew
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !15
  %i.fc = fsub double %i.fb, %i.dq
  %.sroa.0324.8.vec.insert360 = insertelement <2 x double> %i.ez, double %i.fc, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i231 = shl nsw i64 %i.ew, 4
  %i.fd = getelementptr inbounds i8, ptr %.sroa.0248.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i231
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !15
  %i.ff = fsub double %i.fe, %i.ds
  %i.fg = load <2 x double>, ptr %9, align 16, !tbaa !16 ; 3 uses
  %i.fh = fmul <2 x double> %.sroa.0324.8.vec.insert360, %i.fg ; 2 uses
  %shift386 = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop387 = fadd <2 x double> %i.fh, %shift386
  %i.fi = extractelement <2 x double> %foldExtExtBinop387, i64 0
  %i.fj = fmul double %i.eu, %i.ff
  %i.fk = fadd double %i.fj, %i.fi                ; 15 uses
  %.sroa.0240.0.copyload = load ptr, ptr %4, align 8 ; 3 uses
  %.sroa.4242.0.copyload = load ptr, ptr %.sroa.4304.0..sroa_idx, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.4242.0.copyload, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !13 ; 2 uses
  %i.fn = load double, ptr %.sroa.0240.0.copyload, align 8, !tbaa !15
  %i.fo = fsub double %i.fn, %i.do
  %.sroa.0324.0.vec.insert345 = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fp = getelementptr inbounds [8 x i8], ptr %.sroa.0240.0.copyload, i64 %i.fm
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !15
  %i.fr = fsub double %i.fq, %i.dq
  %.sroa.0324.8.vec.insert362 = insertelement <2 x double> %.sroa.0324.0.vec.insert345, double %i.fr, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i233 = shl nsw i64 %i.fm, 4
  %i.fs = getelementptr inbounds i8, ptr %.sroa.0240.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i233
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !15
  %i.fu = fsub double %i.ft, %i.ds
  %i.fv = fmul <2 x double> %i.fg, %.sroa.0324.8.vec.insert362 ; 2 uses
  %shift389 = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop390 = fadd <2 x double> %i.fv, %shift389
  %i.fw = extractelement <2 x double> %foldExtExtBinop390, i64 0
  %i.fx = fmul double %i.eu, %i.fu
  %i.fy = fadd double %i.fx, %i.fw
  %.fr = freeze double %i.fy                      ; 14 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8 ; 3 uses
  %.sroa.4237.0.copyload = load ptr, ptr %.sroa.7316.56..sroa_idx, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.4237.0.copyload, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !13 ; 2 uses
  %i.gb = load double, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.gc = fsub double %i.gb, %i.do
  %.sroa.0324.0.vec.insert347 = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gd = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.ga
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !15
  %i.gf = fsub double %i.ge, %i.dq
  %.sroa.0324.8.vec.insert364 = insertelement <2 x double> %.sroa.0324.0.vec.insert347, double %i.gf, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i235 = shl nsw i64 %i.ga, 4
  %i.gg = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i235
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !15
  %i.gi = fsub double %i.gh, %i.ds
  %i.gj = fmul <2 x double> %i.fg, %.sroa.0324.8.vec.insert364 ; 2 uses
  %shift392 = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop393 = fadd <2 x double> %i.gj, %shift392
  %i.gk = extractelement <2 x double> %foldExtExtBinop393, i64 0
  %i.gl = fmul double %i.eu, %i.gi
  %i.gm = fadd double %i.gl, %i.gk                ; 14 uses
  %i.gn = fmul double %i.fk, %.fr
  %i.go = fcmp ogt double %i.gn, 0.000000e+00
  %i.gp = fmul double %i.fk, %i.gm
  %i.gq = fcmp ogt double %i.gp, 0.000000e+00
  %or.cond218 = and i1 %i.go, %i.gq
  br i1 %or.cond218, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.gr = tail call noundef double @_ZN3igl3EPSIdEET_v() ; 3 uses
  %i.gs = shufflevector <2 x double> %i.cd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gt = insertelement <4 x double> %i.gs, double %i.cr, i64 2
  %i.gu = insertelement <4 x double> %i.gt, double %i.fk, i64 3
  %.fr395 = freeze <4 x double> %i.gu
  %i.gv = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %.fr395)
  %i.gw = insertelement <4 x double> poison, double %i.gr, i64 0
  %i.gx = shufflevector <4 x double> %i.gw, <4 x double> poison, <4 x i32> zeroinitializer
  %i.gy = tail call double @llvm.fabs.f64(double %.fr)
  %i.gz = fcmp olt double %i.gy, %i.gr
  %i.ha = tail call double @llvm.fabs.f64(double %i.gm)
  %i.hb = fcmp olt double %i.ha, %i.gr
  %i.hc = fcmp uge <4 x double> %i.gv, %i.gx
  %i.hd = bitcast <4 x i1> %i.hc to i4
  %i.he = icmp eq i4 %i.hd, 0
  %op.rdx = and i1 %i.he, %i.gz
  %op.rdx384 = and i1 %op.rdx, %i.hb
  br i1 %op.rdx384, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %6, align 1, !tbaa !18
  %i.hf = call noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_NS4_IdLi1ELi3ELi1ELi1ELi3EEEEEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EERKNSA_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %9)
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.hg = fcmp ogt double %i.cs, 0.000000e+00
  br i1 %i.hg, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.hh = fcmp ogt double %i.ct, 0.000000e+00
  br i1 %i.hh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.hi = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.h:                                             ; preds = %bb.f
  %i.hj = fcmp ogt double %i.cr, 0.000000e+00
  br i1 %i.hj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.hk = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.j:                                             ; preds = %bb.h
  %i.hl = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.k:                                             ; preds = %bb.e
  %i.hm = fcmp olt double %i.cs, 0.000000e+00
  %i.hn = fcmp olt double %i.ct, 0.000000e+00     ; 2 uses
  br i1 %i.hm, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %i.hn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ho = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.n:                                             ; preds = %bb.l
  %i.hp = fcmp olt double %i.cr, 0.000000e+00
  br i1 %i.hp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hq = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.p:                                             ; preds = %bb.n
  %i.hr = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.q:                                             ; preds = %bb.k
  br i1 %i.hn, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.hs = fcmp ult double %i.cr, 0.000000e+00
  br i1 %i.hs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ht = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.t:                                             ; preds = %bb.r
  %i.hu = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.u:                                             ; preds = %bb.q
  %i.hv = fcmp ogt double %i.ct, 0.000000e+00
  %i.hw = fcmp ogt double %i.cr, 0.000000e+00     ; 2 uses
  br i1 %i.hv, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %i.hw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hx = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.hy = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  br i1 %i.hw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hz = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ia = fcmp olt double %i.cr, 0.000000e+00
  br i1 %i.ia, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ib = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i8 1, ptr %6, align 1, !tbaa !18
  %i.ic = call noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_NS4_IdLi1ELi3ELi1ELi1ELi3EEEEEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EERKNSA_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %9)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.d, %bb.g, %bb.i, %bb.j, %bb.m, %bb.o, %bb.p, %bb.s, %bb.t, %bb.w, %bb.x, %bb.z, %bb.ab, %bb.ac, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.hf, %bb.d ], [ %i.hi, %bb.g ], [ %i.hk, %bb.i ], [ %i.hl, %bb.j ], [ %i.ho, %bb.m ], [ %i.hq, %bb.o ], [ %i.hr, %bb.p ], [ %i.ht, %bb.s ], [ %i.hu, %bb.t ], [ %i.hx, %bb.w ], [ %i.hy, %bb.x ], [ %i.hz, %bb.z ], [ %i.ib, %bb.ab ], [ %i.ic, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i1 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef double @_ZN3igl3EPSIdEET_v() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS3_IS5_Li1ELin1ELb0EEES7_S7_NS4_IdLi1ELi3ELi1ELi1ELi3EEEEEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EERKNSA_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %8 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %9 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %10 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %11 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %12 = alloca %"class.Eigen::Matrix.111", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.a = load <2 x double>, ptr %6, align 8, !tbaa !15 ; 3 uses
  %i.b = fcmp olt <2 x double> %i.a, zeroinitializer
  %i.c = fneg <2 x double> %i.a
  %i.d = select <2 x i1> %i.b, <2 x double> %i.c, <2 x double> %i.a ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !15 ; 3 uses
  %i.g = fcmp olt double %i.f, 0.000000e+00
  %i.h = fneg double %i.f
  %i.i = select i1 %i.g, double %i.h, double %i.f ; 2 uses
  %i.j = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  %i.k = fcmp ule double %i.j, %i.i
  %i.l = extractelement <2 x double> %i.d, i64 1  ; 3 uses
  %i.m = fcmp ult double %i.j, %i.l
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %.idx = shl nsw i64 %i.r, 4
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %.idx
  %i.t = load double, ptr %i.s, align 8, !tbaa !15
  store double %i.t, ptr %7, align 16, !tbaa !15
  %i.u = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.r
  %i.v = load double, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.v, ptr %i.w, align 8, !tbaa !15
  %i.x = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %.idx55 = shl nsw i64 %i.ab, 4
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %.idx55
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !15
  store double %i.ad, ptr %8, align 16, !tbaa !15
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ab
  %i.af = load double, ptr %i.ae, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.af, ptr %i.ag, align 8, !tbaa !15
  %i.ah = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %.idx56 = shl nsw i64 %i.al, 4
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %.idx56
  %i.an = load double, ptr %i.am, align 8, !tbaa !15
  store double %i.an, ptr %9, align 16, !tbaa !15
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.al
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.ap, ptr %i.aq, align 8, !tbaa !15
  %i.ar = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13 ; 2 uses
  %.idx57 = shl nsw i64 %i.av, 4
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %.idx57
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !15
  store double %i.ax, ptr %10, align 16, !tbaa !15
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  %i.az = load double, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.az, ptr %i.ba, align 8, !tbaa !15
  %i.bb = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !13 ; 2 uses
  %.idx58 = shl nsw i64 %i.bf, 4
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 %.idx58
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !15
  store double %i.bh, ptr %11, align 16, !tbaa !15
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bf
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.bj, ptr %i.bk, align 8, !tbaa !15
  %i.bl = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  %.idx59 = shl nsw i64 %i.bp, 4
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %.idx59
  %i.br = load double, ptr %i.bq, align 8, !tbaa !15
  store double %i.br, ptr %12, align 16, !tbaa !15
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bp
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.bt = fcmp ule double %i.l, %i.i
  %i.bu = fcmp ult double %i.l, %i.j
  %or.cond54 = or i1 %i.bu, %i.bt
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bv = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load double, ptr %i.bv, align 8, !tbaa !15
  store double %i.bz, ptr %7, align 16, !tbaa !15
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !13
  %.idx60 = shl nsw i64 %i.ca, 4
  %i.cb = getelementptr inbounds i8, ptr %i.bv, i64 %.idx60
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.cc, ptr %i.cd, align 8, !tbaa !15
  %i.ce = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !15
  store double %i.ci, ptr %8, align 16, !tbaa !15
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !13
  %.idx61 = shl nsw i64 %i.cj, 4
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %.idx61
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.cl, ptr %i.cm, align 8, !tbaa !15
  %i.cn = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load double, ptr %i.cn, align 8, !tbaa !15
  store double %i.cr, ptr %9, align 16, !tbaa !15
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !13
  %.idx62 = shl nsw i64 %i.cs, 4
  %i.ct = getelementptr inbounds i8, ptr %i.cn, i64 %.idx62
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.cu, ptr %i.cv, align 8, !tbaa !15
  %i.cw = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load double, ptr %i.cw, align 8, !tbaa !15
  store double %i.da, ptr %10, align 16, !tbaa !15
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !13
  %.idx63 = shl nsw i64 %i.db, 4
  %i.dc = getelementptr inbounds i8, ptr %i.cw, i64 %.idx63
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !15
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.dd, ptr %i.de, align 8, !tbaa !15
  %i.df = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load double, ptr %i.df, align 8, !tbaa !15
  store double %i.dj, ptr %11, align 16, !tbaa !15
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !13
  %.idx64 = shl nsw i64 %i.dk, 4
  %i.dl = getelementptr inbounds i8, ptr %i.df, i64 %.idx64
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.dm, ptr %i.dn, align 8, !tbaa !15
  %i.do = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 24
end_hunk_0
begin_hunk_1_@_ZN3igl28tri_tri_intersection_test_3dIN5Eigen5BlockIKNS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS3_IdLi1ELin1ELi1ELi1ELin1EEES6_S6_NS3_IdLi1ELi3ELi1ELi1ELi3EEES8_EEbRKNS1_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EERbRNS9_IT5_EERNS9_IT6_EE:bb.a
  %i.r = load <2 x double>, ptr %i.f, align 8, !tbaa !15 ; 2 uses
  %i.s = insertelement <2 x double> poison, double %i.h, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.j, i64 1 ; 2 uses
  %i.u = fsub <2 x double> %i.r, %i.t             ; 2 uses
  %i.v = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.w = insertelement <2 x double> %i.v, double %i.e, i64 1
  %i.x = insertelement <2 x double> poison, double %i.j, i64 0 ; 2 uses
  %i.y = insertelement <2 x double> %i.x, double %i.d, i64 1 ; 2 uses
  %i.z = fsub <2 x double> %i.w, %i.y             ; 2 uses
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.m, i64 1
  %i.ac = fsub <2 x double> %i.ab, %i.y           ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.q, i64 1
  %i.af = fsub <2 x double> %i.ae, %i.t           ; 2 uses
  %i.ag = fneg <2 x double> %i.af
  %i.ah = fmul <2 x double> %i.z, %i.ag
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.ac, <2 x double> %i.ah)
  %i.aj = extractelement <2 x double> %i.ac, i64 1
  %i.ak = fneg double %i.aj
  %i.al = extractelement <2 x double> %i.u, i64 0
  %i.am = fmul double %i.al, %i.ak
  %i.an = extractelement <2 x double> %i.z, i64 1
  %i.ao = extractelement <2 x double> %i.af, i64 0
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ao, double %i.am) ; 3 uses
  store <2 x double> %i.ai, ptr %10, align 16
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %i.ap, ptr %.sroa.5295.0..sroa_idx, align 16, !tbaa !16
  %.sroa.0285.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4287.0.copyload = load ptr, ptr %.sroa.4287.0..sroa_idx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.4287.0.copyload, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !13 ; 2 uses
  %i.as = load double, ptr %.sroa.0285.0.copyload, align 8, !tbaa !15
  %i.at = fsub double %i.as, %i.d
  %i.au = insertelement <2 x double> poison, double %i.at, i64 0
  %i.av = getelementptr inbounds [8 x i8], ptr %.sroa.0285.0.copyload, i64 %i.ar
  %i.aw = load double, ptr %i.av, align 8, !tbaa !15
  %i.ax = fsub double %i.aw, %i.h
  %.sroa.0316.8.vec.insert342 = insertelement <2 x double> %i.au, double %i.ax, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i220 = shl nsw i64 %i.ar, 4
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0285.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i220
  %i.az = load double, ptr %i.ay, align 8, !tbaa !15
  %i.ba = load <2 x double>, ptr %10, align 16, !tbaa !16 ; 3 uses
  %i.bb = fmul <2 x double> %.sroa.0316.8.vec.insert342, %i.ba ; 2 uses
  %.sroa.0277.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.4279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.4279.0.copyload = load ptr, ptr %.sroa.4279.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.4279.0.copyload, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !13 ; 2 uses
  %i.be = load double, ptr %.sroa.0277.0.copyload, align 8, !tbaa !15
  %i.bf = fsub double %i.be, %i.d
  %.sroa.0316.0.vec.insert327 = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bg = getelementptr inbounds [8 x i8], ptr %.sroa.0277.0.copyload, i64 %i.bd
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !15
  %i.bi = fsub double %i.bh, %i.h
  %.sroa.0316.8.vec.insert344 = insertelement <2 x double> %.sroa.0316.0.vec.insert327, double %i.bi, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i222 = shl nsw i64 %i.bd, 4
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0277.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i222
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !15
  %i.bl = fmul <2 x double> %i.ba, %.sroa.0316.8.vec.insert344 ; 2 uses
  %i.bm = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bk, i64 1
  %i.bo = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fsub <2 x double> %i.bn, %i.bo
  %i.bq = shufflevector <2 x double> %i.bb, <2 x double> %i.bl, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x double> %i.bb, <2 x double> %i.bl, <2 x i32> <i32 1, i32 3>
  %i.bs = fadd <2 x double> %i.bq, %i.br
  %i.bt = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.bu, %i.bp
  %i.bw = fadd <2 x double> %i.bv, %i.bs          ; 3 uses
  %.sroa.0269.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.4271.0.copyload = load ptr, ptr %.sroa.4271.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.4271.0.copyload, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !13 ; 2 uses
  %i.bz = load double, ptr %.sroa.0269.0.copyload, align 8, !tbaa !15
  %i.ca = fsub double %i.bz, %i.d
  %.sroa.0316.0.vec.insert329 = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cb = getelementptr inbounds [8 x i8], ptr %.sroa.0269.0.copyload, i64 %i.by
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !15
  %i.cd = fsub double %i.cc, %i.h
  %.sroa.0316.8.vec.insert346 = insertelement <2 x double> %.sroa.0316.0.vec.insert329, double %i.cd, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i224 = shl nsw i64 %i.by, 4
  %i.ce = getelementptr inbounds i8, ptr %.sroa.0269.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i224
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !15
  %i.cg = fsub double %i.cf, %i.j
  %i.ch = fmul <2 x double> %i.ba, %.sroa.0316.8.vec.insert346 ; 2 uses
  %shift = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ch, %shift
  %i.ci = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cj = fmul double %i.ap, %i.cg
  %i.ck = fadd double %i.cj, %i.ci                ; 7 uses
  store i8 0, ptr %6, align 1, !tbaa !18
  %i.cl = extractelement <2 x double> %i.bw, i64 0 ; 4 uses
  %i.cm = extractelement <2 x double> %i.bw, i64 1 ; 4 uses
  %i.cn = fmul double %i.cl, %i.cm
  %i.co = fcmp ogt double %i.cn, 0.000000e+00
  %i.cp = fmul double %i.cl, %i.ck
  %i.cq = fcmp ogt double %i.cp, 0.000000e+00
  %or.cond = and i1 %i.co, %i.cq
  br i1 %or.cond, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0261.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.4263.0.copyload = load ptr, ptr %.sroa.4279.0..sroa_idx, align 8
  %.sroa.5265.56.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.7267.56.copyload = load ptr, ptr %.sroa.4287.0..sroa_idx, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.4263.0.copyload, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !13 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.7267.56.copyload, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !13 ; 2 uses
  %i.cw = load double, ptr %.sroa.0261.0.copyload, align 8, !tbaa !15
  %i.cx = load double, ptr %.sroa.5265.56.copyload, align 8, !tbaa !15 ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %.sroa.0261.0.copyload, i64 %i.ct
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !15
  %i.da = getelementptr inbounds [8 x i8], ptr %.sroa.5265.56.copyload, i64 %i.cv
  %i.db = load double, ptr %i.da, align 8, !tbaa !15
  %.idx.i.i.i.i.i.i.i.i.i.i.i226 = shl nsw i64 %i.ct, 4
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0261.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i226
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !15 ; 2 uses
  %.idx2.i.i.i.i.i.i.i.i.i.i.i227 = shl nsw i64 %i.cv, 4
  %i.de = getelementptr inbounds i8, ptr %.sroa.5265.56.copyload, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i227
  %i.df = load double, ptr %i.de, align 8, !tbaa !15 ; 2 uses
  %.sroa.0253.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.4255.0.copyload = load ptr, ptr %.sroa.4271.0..sroa_idx, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.4255.0.copyload, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !13 ; 2 uses
  %i.di = load double, ptr %.sroa.0253.0.copyload, align 8, !tbaa !15 ; 4 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %.sroa.0253.0.copyload, i64 %i.dh
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !15 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i228 = shl nsw i64 %i.dh, 4
  %i.dl = getelementptr inbounds i8, ptr %.sroa.0253.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i228
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !15 ; 5 uses
  %i.dn = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.cw, i64 1
  %i.dp = insertelement <2 x double> poison, double %i.df, i64 0 ; 2 uses
  %i.dq = insertelement <2 x double> %i.dp, double %i.cx, i64 1
  %i.dr = fsub <2 x double> %i.do, %i.dq          ; 2 uses
  %i.ds = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.di, i64 1
  %i.du = insertelement <2 x double> poison, double %i.db, i64 0 ; 2 uses
  %i.dv = insertelement <2 x double> %i.du, double %i.cx, i64 1
  %i.dw = fsub <2 x double> %i.dt, %i.dv          ; 3 uses
  %i.dx = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dy = insertelement <2 x double> %i.dx, double %i.dd, i64 1
  %i.dz = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fsub <2 x double> %i.dy, %i.dz
  %i.eb = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.ec = insertelement <2 x double> %i.eb, double %i.dm, i64 1
  %i.ed = insertelement <2 x double> %i.du, double %i.df, i64 1
  %i.ee = fsub <2 x double> %i.ec, %i.ed          ; 2 uses
  %i.ef = fneg <2 x double> %i.ee
  %i.eg = fmul <2 x double> %i.dr, %i.ef
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.dw, <2 x double> %i.eg)
  %i.ei = extractelement <2 x double> %i.dw, i64 1
  %i.ej = fneg double %i.ei
  %i.ek = extractelement <2 x double> %i.dw, i64 0
  %i.el = fmul double %i.ek, %i.ej
  %i.em = extractelement <2 x double> %i.dr, i64 1
  %i.en = extractelement <2 x double> %i.ee, i64 0
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.em, double %i.en, double %i.el) ; 4 uses
  store <2 x double> %i.eh, ptr %9, align 16
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.eo, ptr %.sroa.5252.0..sroa_idx, align 16, !tbaa !16
  %i.ep = load <2 x double>, ptr %i.a, align 8, !tbaa !15
  %i.eq = insertelement <2 x double> poison, double %i.di, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.dk, i64 1
  %i.es = fsub <2 x double> %i.ep, %i.er
  %i.et = load double, ptr %i.cr, align 8, !tbaa !15
  %i.eu = fsub double %i.et, %i.dm
  %i.ev = load <2 x double>, ptr %9, align 16, !tbaa !16 ; 3 uses
  %i.ew = fmul <2 x double> %i.es, %i.ev          ; 2 uses
  %shift378 = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop379 = fadd <2 x double> %i.ew, %shift378
  %i.ex = extractelement <2 x double> %foldExtExtBinop379, i64 0
  %i.ey = fmul double %i.eo, %i.eu
  %i.ez = fadd double %i.ey, %i.ex                ; 15 uses
  %.sroa.0238.0.copyload = load ptr, ptr %4, align 8 ; 3 uses
  %.sroa.4240.0.copyload = load ptr, ptr %.sroa.4298.0..sroa_idx, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.4240.0.copyload, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !13 ; 2 uses
  %i.fc = load double, ptr %.sroa.0238.0.copyload, align 8, !tbaa !15
  %i.fd = fsub double %i.fc, %i.di
  %.sroa.0316.0.vec.insert337 = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fe = getelementptr inbounds [8 x i8], ptr %.sroa.0238.0.copyload, i64 %i.fb
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !15
  %i.fg = fsub double %i.ff, %i.dk
  %.sroa.0316.8.vec.insert354 = insertelement <2 x double> %.sroa.0316.0.vec.insert337, double %i.fg, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i231 = shl nsw i64 %i.fb, 4
  %i.fh = getelementptr inbounds i8, ptr %.sroa.0238.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i231
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !15
  %i.fj = fsub double %i.fi, %i.dm
  %i.fk = fmul <2 x double> %i.ev, %.sroa.0316.8.vec.insert354 ; 2 uses
  %shift381 = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop382 = fadd <2 x double> %i.fk, %shift381
  %i.fl = extractelement <2 x double> %foldExtExtBinop382, i64 0
  %i.fm = fmul double %i.eo, %i.fj
  %i.fn = fadd double %i.fm, %i.fl
  %.fr = freeze double %i.fn                      ; 14 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8 ; 3 uses
  %.sroa.4235.0.copyload = load ptr, ptr %.sroa.6307.8..sroa_idx, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.4235.0.copyload, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !13 ; 2 uses
  %i.fq = load double, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.fr = fsub double %i.fq, %i.di
  %.sroa.0316.0.vec.insert339 = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.fp
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !15
  %i.fu = fsub double %i.ft, %i.dk
  %.sroa.0316.8.vec.insert356 = insertelement <2 x double> %.sroa.0316.0.vec.insert339, double %i.fu, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i233 = shl nsw i64 %i.fp, 4
  %i.fv = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i233
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !15
  %i.fx = fsub double %i.fw, %i.dm
  %i.fy = fmul <2 x double> %i.ev, %.sroa.0316.8.vec.insert356 ; 2 uses
  %shift384 = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop385 = fadd <2 x double> %i.fy, %shift384
  %i.fz = extractelement <2 x double> %foldExtExtBinop385, i64 0
  %i.ga = fmul double %i.eo, %i.fx
  %i.gb = fadd double %i.ga, %i.fz                ; 14 uses
  %i.gc = fmul double %i.ez, %.fr
  %i.gd = fcmp ogt double %i.gc, 0.000000e+00
  %i.ge = fmul double %i.ez, %i.gb
  %i.gf = fcmp ogt double %i.ge, 0.000000e+00
  %or.cond218 = and i1 %i.gd, %i.gf
  br i1 %or.cond218, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.gg = tail call noundef double @_ZN3igl3EPSIdEET_v() ; 3 uses
  %i.gh = shufflevector <2 x double> %i.bw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gi = insertelement <4 x double> %i.gh, double %i.ck, i64 2
  %i.gj = insertelement <4 x double> %i.gi, double %i.ez, i64 3
  %.fr387 = freeze <4 x double> %i.gj
  %i.gk = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %.fr387)
  %i.gl = insertelement <4 x double> poison, double %i.gg, i64 0
  %i.gm = shufflevector <4 x double> %i.gl, <4 x double> poison, <4 x i32> zeroinitializer
  %i.gn = tail call double @llvm.fabs.f64(double %.fr)
  %i.go = fcmp olt double %i.gn, %i.gg
  %i.gp = tail call double @llvm.fabs.f64(double %i.gb)
  %i.gq = fcmp olt double %i.gp, %i.gg
  %i.gr = fcmp uge <4 x double> %i.gk, %i.gm
  %i.gs = bitcast <4 x i1> %i.gr to i4
  %i.gt = icmp eq i4 %i.gs, 0
  %op.rdx = and i1 %i.gt, %i.go
  %op.rdx376 = and i1 %op.rdx, %i.gq
  br i1 %op.rdx376, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %6, align 1, !tbaa !18
  %i.gu = call noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_NS4_IdLi1ELi3ELi1ELi1ELi3EEEEEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EERKNSA_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %9)
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.gv = fcmp ogt double %i.cl, 0.000000e+00
  br i1 %i.gv, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.gw = fcmp ogt double %i.cm, 0.000000e+00
  br i1 %i.gw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gx = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ez, double noundef %i.gb, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.h:                                             ; preds = %bb.f
  %i.gy = fcmp ogt double %i.ck, 0.000000e+00
  br i1 %i.gy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gz = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ez, double noundef %i.gb, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.j:                                             ; preds = %bb.h
  %i.ha = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ez, double noundef %.fr, double noundef %i.gb, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.k:                                             ; preds = %bb.e
  %i.hb = fcmp olt double %i.cl, 0.000000e+00
  %i.hc = fcmp olt double %i.cm, 0.000000e+00     ; 2 uses
  br i1 %i.hb, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %i.hc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hd = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ez, double noundef %.fr, double noundef %i.gb, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.n:                                             ; preds = %bb.l
  %i.he = fcmp olt double %i.ck, 0.000000e+00
  br i1 %i.he, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hf = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ez, double noundef %.fr, double noundef %i.gb, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.p:                                             ; preds = %bb.n
  %i.hg = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ez, double noundef %i.gb, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.q:                                             ; preds = %bb.k
  br i1 %i.hc, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.hh = fcmp ult double %i.ck, 0.000000e+00
  br i1 %i.hh, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hi = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ez, double noundef %i.gb, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.t:                                             ; preds = %bb.r
  %i.hj = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ez, double noundef %.fr, double noundef %i.gb, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.u:                                             ; preds = %bb.q
  %i.hk = fcmp ogt double %i.cm, 0.000000e+00
  %i.hl = fcmp ogt double %i.ck, 0.000000e+00     ; 2 uses
  br i1 %i.hk, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %i.hl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hm = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ez, double noundef %i.gb, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.hn = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ez, double noundef %.fr, double noundef %i.gb, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  br i1 %i.hl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ho = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ez, double noundef %.fr, double noundef %i.gb, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.hp = fcmp olt double %i.ck, 0.000000e+00
  br i1 %i.hp, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hq = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES9_S9_S9_EEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EET5_T6_T7_RbRNSA_IT8_EERNSA_IT9_EERKNSA_IT10_EERKNSA_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ez, double noundef %i.gb, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i8 1, ptr %6, align 1, !tbaa !18
  %i.hr = call noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_NS4_IdLi1ELi3ELi1ELi1ELi3EEEEEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EERKNSA_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %9)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.d, %bb.g, %bb.i, %bb.j, %bb.m, %bb.o, %bb.p, %bb.s, %bb.t, %bb.w, %bb.x, %bb.z, %bb.ab, %bb.ac, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.gu, %bb.d ], [ %i.gx, %bb.g ], [ %i.gz, %bb.i ], [ %i.ha, %bb.j ], [ %i.hd, %bb.m ], [ %i.hf, %bb.o ], [ %i.hg, %bb.p ], [ %i.hi, %bb.s ], [ %i.hj, %bb.t ], [ %i.hm, %bb.w ], [ %i.hn, %bb.x ], [ %i.ho, %bb.z ], [ %i.hq, %bb.ab ], [ %i.hr, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_NS4_IdLi1ELin1ELi1ELi1ELin1EEES7_S7_NS4_IdLi1ELi3ELi1ELi1ELi3EEEEEbRKNS2_10MatrixBaseIT_EERKNSA_IT0_EERKNSA_IT1_EERKNSA_IT2_EERKNSA_IT3_EERKNSA_IT4_EERKNSA_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %8 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %9 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %10 = alloca %"class.Eigen::Matrix.111", align 16 ; 8 uses
  %11 = alloca %"class.Eigen::Matrix.111", align 16 ; 8 uses
  %12 = alloca %"class.Eigen::Matrix.111", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.a = load <2 x double>, ptr %6, align 8, !tbaa !15 ; 3 uses
  %i.b = fcmp olt <2 x double> %i.a, zeroinitializer
  %i.c = fneg <2 x double> %i.a
  %i.d = select <2 x i1> %i.b, <2 x double> %i.c, <2 x double> %i.a ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !15 ; 3 uses
  %i.g = fcmp olt double %i.f, 0.000000e+00
  %i.h = fneg double %i.f
  %i.i = select i1 %i.g, double %i.h, double %i.f ; 2 uses
  %i.j = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  %i.k = fcmp ule double %i.j, %i.i
  %i.l = extractelement <2 x double> %i.d, i64 1  ; 3 uses
  %i.m = fcmp ult double %i.j, %i.l
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %.idx = shl nsw i64 %i.r, 4
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %.idx
  %i.t = load double, ptr %i.s, align 8, !tbaa !15
  store double %i.t, ptr %7, align 16, !tbaa !15
  %i.u = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.r
  %i.v = load double, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.v, ptr %i.w, align 8, !tbaa !15
  %i.x = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %.idx55 = shl nsw i64 %i.ab, 4
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %.idx55
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !15
  store double %i.ad, ptr %8, align 16, !tbaa !15
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ab
  %i.af = load double, ptr %i.ae, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.af, ptr %i.ag, align 8, !tbaa !15
  %i.ah = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %.idx56 = shl nsw i64 %i.al, 4
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %.idx56
  %i.an = load double, ptr %i.am, align 8, !tbaa !15
  store double %i.an, ptr %9, align 16, !tbaa !15
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.al
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.ap, ptr %i.aq, align 8, !tbaa !15
  %i.ar = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13 ; 2 uses
  %.idx57 = shl nsw i64 %i.av, 4
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %.idx57
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !15
  store double %i.ax, ptr %10, align 16, !tbaa !15
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  %i.az = load double, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.az, ptr %i.ba, align 8, !tbaa !15
  %i.bb = load ptr, ptr %3, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load <2 x double>, ptr %i.bc, align 8, !tbaa !15
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.be, ptr %11, align 16, !tbaa !15
  %i.bf = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !13 ; 2 uses
  %.idx58 = shl nsw i64 %i.bj, 4
  %i.bk = getelementptr inbounds i8, ptr %i.bf, i64 %.idx58
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !15
  store double %i.bl, ptr %12, align 16, !tbaa !15
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bj
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.bn = fcmp ule double %i.l, %i.i
  %i.bo = fcmp ult double %i.l, %i.j
  %or.cond54 = or i1 %i.bo, %i.bn
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load double, ptr %i.bp, align 8, !tbaa !15
  store double %i.bt, ptr %7, align 16, !tbaa !15
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !13
  %.idx59 = shl nsw i64 %i.bu, 4
  %i.bv = getelementptr inbounds i8, ptr %i.bp, i64 %.idx59
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.bw, ptr %i.bx, align 8, !tbaa !15
  %i.by = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load double, ptr %i.by, align 8, !tbaa !15
  store double %i.cc, ptr %8, align 16, !tbaa !15
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !13
  %.idx60 = shl nsw i64 %i.cd, 4
  %i.ce = getelementptr inbounds i8, ptr %i.by, i64 %.idx60
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.cf, ptr %i.cg, align 8, !tbaa !15
  %i.ch = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load double, ptr %i.ch, align 8, !tbaa !15
  store double %i.cl, ptr %9, align 16, !tbaa !15
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !13
  %.idx61 = shl nsw i64 %i.cm, 4
  %i.cn = getelementptr inbounds i8, ptr %i.ch, i64 %.idx61
  %i.co = load double, ptr %i.cn, align 8, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.co, ptr %i.cp, align 8, !tbaa !15
  %i.cq = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load double, ptr %i.cq, align 8, !tbaa !15
  store double %i.cu, ptr %10, align 16, !tbaa !15
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !13
  %.idx62 = shl nsw i64 %i.cv, 4
  %i.cw = getelementptr inbounds i8, ptr %i.cq, i64 %.idx62
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.cx, ptr %i.cy, align 8, !tbaa !15
  %i.cz = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !15
  store double %i.da, ptr %11, align 16, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.dc, ptr %i.dd, align 8, !tbaa !15
  %i.de = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load double, ptr %i.de, align 8, !tbaa !15
  store double %i.di, ptr %12, align 16, !tbaa !15
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !13
  %.idx63 = shl nsw i64 %i.dj, 4
  %i.dk = getelementptr inbounds i8, ptr %i.de, i64 %.idx63
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.dl = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load double, ptr %i.dl, align 8, !tbaa !15
  store double %i.dp, ptr %7, align 16, !tbaa !15
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !13
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !15
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.ds, ptr %i.dt, align 8, !tbaa !15
end_hunk_1
begin_hunk_2_@_ZN3igl28tri_tri_intersection_test_3dIN5Eigen5BlockINS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES5_S5_NS3_IdLi1ELi3ELi1ELi1ELi3EEES5_S5_S6_S6_EEbRKNS1_10MatrixBaseIT_EERKNS7_IT0_EERKNS7_IT1_EERKNS7_IT2_EERKNS7_IT3_EERKNS7_IT4_EERbRNS7_IT5_EERNS7_IT6_EE:bb.a
  %i.q = load double, ptr %i.p, align 8, !tbaa !15 ; 2 uses
  %i.r = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.s = insertelement <2 x double> %i.r, double %i.i, i64 0
  %i.t = insertelement <2 x double> poison, double %i.j, i64 0 ; 3 uses
  %i.u = insertelement <2 x double> %i.t, double %i.c, i64 1
  %i.v = fsub <2 x double> %i.s, %i.u             ; 2 uses
  %i.w = insertelement <2 x double> %i.r, double %i.m, i64 1
  %i.x = insertelement <2 x double> poison, double %i.f, i64 0 ; 2 uses
  %i.y = insertelement <2 x double> %i.x, double %i.c, i64 1
  %i.z = fsub <2 x double> %i.w, %i.y             ; 3 uses
  %i.aa = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.i, i64 1
  %i.ac = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fsub <2 x double> %i.ab, %i.ac
  %i.ae = insertelement <2 x double> poison, double %i.o, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.q, i64 1
  %i.ag = insertelement <2 x double> %i.x, double %i.j, i64 1
  %i.ah = fsub <2 x double> %i.af, %i.ag          ; 2 uses
  %i.ai = fneg <2 x double> %i.ah
  %i.aj = fmul <2 x double> %i.v, %i.ai
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> %i.z, <2 x double> %i.aj)
  %i.al = extractelement <2 x double> %i.z, i64 1
  %i.am = fneg double %i.al
  %i.an = extractelement <2 x double> %i.z, i64 0
  %i.ao = fmul double %i.an, %i.am
  %i.ap = extractelement <2 x double> %i.v, i64 1
  %i.aq = extractelement <2 x double> %i.ah, i64 0
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.aq, double %i.ao) ; 3 uses
  store <2 x double> %i.ak, ptr %10, align 16
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %i.ar, ptr %.sroa.5295.0..sroa_idx, align 16, !tbaa !16
  %.sroa.0285.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.4287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4287.0.copyload = load ptr, ptr %.sroa.4287.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4287.0.copyload, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13 ; 2 uses
  %i.au = load double, ptr %.sroa.0285.0.copyload, align 8, !tbaa !15
  %i.av = fsub double %i.au, %i.c
  %i.aw = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ax = getelementptr inbounds [8 x i8], ptr %.sroa.0285.0.copyload, i64 %i.at
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !15
  %i.az = fsub double %i.ay, %i.f
  %.sroa.0316.8.vec.insert342 = insertelement <2 x double> %i.aw, double %i.az, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i220 = shl nsw i64 %i.at, 4
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0285.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i220
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !15
  %i.bc = load <2 x double>, ptr %10, align 16, !tbaa !16 ; 3 uses
  %i.bd = fmul <2 x double> %.sroa.0316.8.vec.insert342, %i.bc ; 2 uses
  %.sroa.0277.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.4279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.4279.0.copyload = load ptr, ptr %.sroa.4279.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.4279.0.copyload, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !13 ; 2 uses
  %i.bg = load double, ptr %.sroa.0277.0.copyload, align 8, !tbaa !15
  %i.bh = fsub double %i.bg, %i.c
  %.sroa.0316.0.vec.insert327 = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bi = getelementptr inbounds [8 x i8], ptr %.sroa.0277.0.copyload, i64 %i.bf
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !15
  %i.bk = fsub double %i.bj, %i.f
  %.sroa.0316.8.vec.insert344 = insertelement <2 x double> %.sroa.0316.0.vec.insert327, double %i.bk, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i222 = shl nsw i64 %i.bf, 4
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0277.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i222
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !15
  %i.bn = fmul <2 x double> %i.bc, %.sroa.0316.8.vec.insert344 ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bm, i64 1
  %i.bq = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fsub <2 x double> %i.bp, %i.bq
  %i.bs = shufflevector <2 x double> %i.bd, <2 x double> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.bt = shufflevector <2 x double> %i.bd, <2 x double> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.bu = fadd <2 x double> %i.bs, %i.bt
  %i.bv = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x double> %i.bw, %i.br
  %i.by = fadd <2 x double> %i.bx, %i.bu          ; 3 uses
  %.sroa.0269.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.4271.0.copyload = load ptr, ptr %.sroa.4271.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.4271.0.copyload, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !13 ; 2 uses
  %i.cb = load double, ptr %.sroa.0269.0.copyload, align 8, !tbaa !15
  %i.cc = fsub double %i.cb, %i.c
  %.sroa.0316.0.vec.insert329 = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cd = getelementptr inbounds [8 x i8], ptr %.sroa.0269.0.copyload, i64 %i.ca
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !15
  %i.cf = fsub double %i.ce, %i.f
  %.sroa.0316.8.vec.insert346 = insertelement <2 x double> %.sroa.0316.0.vec.insert329, double %i.cf, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i224 = shl nsw i64 %i.ca, 4
  %i.cg = getelementptr inbounds i8, ptr %.sroa.0269.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i224
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !15
  %i.ci = fsub double %i.ch, %i.j
  %i.cj = fmul <2 x double> %i.bc, %.sroa.0316.8.vec.insert346 ; 2 uses
  %shift = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.cj, %shift
  %i.ck = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cl = fmul double %i.ar, %i.ci
  %i.cm = fadd double %i.cl, %i.ck                ; 7 uses
  store i8 0, ptr %6, align 1, !tbaa !18
  %i.cn = extractelement <2 x double> %i.by, i64 0 ; 4 uses
  %i.co = extractelement <2 x double> %i.by, i64 1 ; 4 uses
  %i.cp = fmul double %i.cn, %i.co
  %i.cq = fcmp ogt double %i.cp, 0.000000e+00
  %i.cr = fmul double %i.cn, %i.cm
  %i.cs = fcmp ogt double %i.cr, 0.000000e+00
  %or.cond = and i1 %i.cq, %i.cs
  br i1 %or.cond, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0261.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.4263.0.copyload = load ptr, ptr %.sroa.4279.0..sroa_idx, align 8
  %.sroa.5265.56.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.7267.56.copyload = load ptr, ptr %.sroa.4287.0..sroa_idx, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.4263.0.copyload, i64 8
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !13 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.7267.56.copyload, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !13 ; 2 uses
  %i.cx = load double, ptr %.sroa.0261.0.copyload, align 8, !tbaa !15
  %i.cy = load double, ptr %.sroa.5265.56.copyload, align 8, !tbaa !15 ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %.sroa.0261.0.copyload, i64 %i.cu
  %i.da = getelementptr inbounds [8 x i8], ptr %.sroa.5265.56.copyload, i64 %i.cw
  %i.db = load double, ptr %i.cz, align 8, !tbaa !15
  %i.dc = load double, ptr %i.da, align 8, !tbaa !15
  %.idx.i.i.i.i.i.i.i.i.i.i.i226 = shl nsw i64 %i.cu, 4
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0261.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i226
  %.idx2.i.i.i.i.i.i.i.i.i.i.i227 = shl nsw i64 %i.cw, 4
  %i.de = getelementptr inbounds i8, ptr %.sroa.5265.56.copyload, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i227
  %i.df = load double, ptr %i.dd, align 8, !tbaa !15 ; 2 uses
  %i.dg = load double, ptr %i.de, align 8, !tbaa !15 ; 2 uses
  %.sroa.0253.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.4255.0.copyload = load ptr, ptr %.sroa.4271.0..sroa_idx, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.4255.0.copyload, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !13 ; 2 uses
  %i.dj = load double, ptr %.sroa.0253.0.copyload, align 8, !tbaa !15 ; 4 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %.sroa.0253.0.copyload, i64 %i.di
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !15 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i228 = shl nsw i64 %i.di, 4
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0253.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i228
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !15 ; 5 uses
  %i.do = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.cx, i64 1
  %i.dq = insertelement <2 x double> poison, double %i.dg, i64 0 ; 2 uses
  %i.dr = insertelement <2 x double> %i.dq, double %i.cy, i64 1
  %i.ds = fsub <2 x double> %i.dp, %i.dr          ; 2 uses
  %i.dt = insertelement <2 x double> poison, double %i.db, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.dj, i64 1
  %i.dv = insertelement <2 x double> poison, double %i.dc, i64 0 ; 2 uses
  %i.dw = insertelement <2 x double> %i.dv, double %i.cy, i64 1
  %i.dx = fsub <2 x double> %i.du, %i.dw          ; 3 uses
  %i.dy = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.df, i64 1
  %i.ea = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fsub <2 x double> %i.dz, %i.ea
  %i.ec = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %i.dn, i64 1
  %i.ee = insertelement <2 x double> %i.dv, double %i.dg, i64 1
  %i.ef = fsub <2 x double> %i.ed, %i.ee          ; 2 uses
  %i.eg = fneg <2 x double> %i.ef
  %i.eh = fmul <2 x double> %i.ds, %i.eg
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.dx, <2 x double> %i.eh)
  %i.ej = extractelement <2 x double> %i.dx, i64 1
  %i.ek = fneg double %i.ej
  %i.el = extractelement <2 x double> %i.dx, i64 0
  %i.em = fmul double %i.el, %i.ek
  %i.en = extractelement <2 x double> %i.ds, i64 1
  %i.eo = extractelement <2 x double> %i.ef, i64 0
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.en, double %i.eo, double %i.em) ; 4 uses
  store <2 x double> %i.ei, ptr %9, align 16
  %.sroa.5252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.ep, ptr %.sroa.5252.0..sroa_idx, align 16, !tbaa !16
  %i.eq = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.dl, i64 1
  %i.es = fsub <2 x double> %i.e, %i.er
  %i.et = fsub double %i.i, %i.dn
  %i.eu = load <2 x double>, ptr %9, align 16, !tbaa !16 ; 3 uses
  %i.ev = fmul <2 x double> %i.es, %i.eu          ; 2 uses
  %shift378 = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop379 = fadd <2 x double> %i.ev, %shift378
  %i.ew = extractelement <2 x double> %foldExtExtBinop379, i64 0
  %i.ex = fmul double %i.ep, %i.et
  %i.ey = fadd double %i.ex, %i.ew                ; 15 uses
  %.sroa.0238.0.copyload = load ptr, ptr %4, align 8 ; 3 uses
  %.sroa.4240.0.copyload = load ptr, ptr %.sroa.4298.0..sroa_idx, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.4240.0.copyload, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !13 ; 2 uses
  %i.fb = load double, ptr %.sroa.0238.0.copyload, align 8, !tbaa !15
  %i.fc = fsub double %i.fb, %i.dj
  %.sroa.0316.0.vec.insert337 = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fd = getelementptr inbounds [8 x i8], ptr %.sroa.0238.0.copyload, i64 %i.fa
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !15
  %i.ff = fsub double %i.fe, %i.dl
  %.sroa.0316.8.vec.insert354 = insertelement <2 x double> %.sroa.0316.0.vec.insert337, double %i.ff, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i231 = shl nsw i64 %i.fa, 4
  %i.fg = getelementptr inbounds i8, ptr %.sroa.0238.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i231
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !15
  %i.fi = fsub double %i.fh, %i.dn
  %i.fj = fmul <2 x double> %i.eu, %.sroa.0316.8.vec.insert354 ; 2 uses
  %shift381 = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop382 = fadd <2 x double> %i.fj, %shift381
  %i.fk = extractelement <2 x double> %foldExtExtBinop382, i64 0
  %i.fl = fmul double %i.ep, %i.fi
  %i.fm = fadd double %i.fl, %i.fk
  %.fr = freeze double %i.fm                      ; 14 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8 ; 3 uses
  %.sroa.4235.0.copyload = load ptr, ptr %.sroa.6307.8..sroa_idx, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.4235.0.copyload, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !13 ; 2 uses
  %i.fp = load double, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.fq = fsub double %i.fp, %i.dj
  %.sroa.0316.0.vec.insert339 = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fr = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.fo
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !15
  %i.ft = fsub double %i.fs, %i.dl
  %.sroa.0316.8.vec.insert356 = insertelement <2 x double> %.sroa.0316.0.vec.insert339, double %i.ft, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i233 = shl nsw i64 %i.fo, 4
  %i.fu = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i233
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !15
  %i.fw = fsub double %i.fv, %i.dn
  %i.fx = fmul <2 x double> %i.eu, %.sroa.0316.8.vec.insert356 ; 2 uses
  %shift384 = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop385 = fadd <2 x double> %i.fx, %shift384
  %i.fy = extractelement <2 x double> %foldExtExtBinop385, i64 0
  %i.fz = fmul double %i.ep, %i.fw
  %i.ga = fadd double %i.fz, %i.fy                ; 14 uses
  %i.gb = fmul double %i.ey, %.fr
  %i.gc = fcmp ogt double %i.gb, 0.000000e+00
  %i.gd = fmul double %i.ey, %i.ga
  %i.ge = fcmp ogt double %i.gd, 0.000000e+00
  %or.cond218 = and i1 %i.gc, %i.ge
  br i1 %or.cond218, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.gf = tail call noundef double @_ZN3igl3EPSIdEET_v() ; 3 uses
  %i.gg = shufflevector <2 x double> %i.by, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gh = insertelement <4 x double> %i.gg, double %i.cm, i64 2
  %i.gi = insertelement <4 x double> %i.gh, double %i.ey, i64 3
  %.fr387 = freeze <4 x double> %i.gi
  %i.gj = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %.fr387)
  %i.gk = insertelement <4 x double> poison, double %i.gf, i64 0
  %i.gl = shufflevector <4 x double> %i.gk, <4 x double> poison, <4 x i32> zeroinitializer
  %i.gm = tail call double @llvm.fabs.f64(double %.fr)
  %i.gn = fcmp olt double %i.gm, %i.gf
  %i.go = tail call double @llvm.fabs.f64(double %i.ga)
  %i.gp = fcmp olt double %i.go, %i.gf
  %i.gq = fcmp uge <4 x double> %i.gj, %i.gl
  %i.gr = bitcast <4 x i1> %i.gq to i4
  %i.gs = icmp eq i4 %i.gr, 0
  %op.rdx = and i1 %i.gs, %i.gn
  %op.rdx376 = and i1 %op.rdx, %i.gp
  br i1 %op.rdx376, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %6, align 1, !tbaa !18
  %i.gt = call noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERKNS8_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %9)
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.gu = fcmp ogt double %i.cn, 0.000000e+00
  br i1 %i.gu, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.gv = fcmp ogt double %i.co, 0.000000e+00
  br i1 %i.gv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gw = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ey, double noundef %i.ga, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.h:                                             ; preds = %bb.f
  %i.gx = fcmp ogt double %i.cm, 0.000000e+00
  br i1 %i.gx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gy = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ey, double noundef %i.ga, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.j:                                             ; preds = %bb.h
  %i.gz = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ey, double noundef %.fr, double noundef %i.ga, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.k:                                             ; preds = %bb.e
  %i.ha = fcmp olt double %i.cn, 0.000000e+00
  %i.hb = fcmp olt double %i.co, 0.000000e+00     ; 2 uses
  br i1 %i.ha, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %i.hb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.hc = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ey, double noundef %.fr, double noundef %i.ga, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.n:                                             ; preds = %bb.l
  %i.hd = fcmp olt double %i.cm, 0.000000e+00
  br i1 %i.hd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.he = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ey, double noundef %.fr, double noundef %i.ga, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.p:                                             ; preds = %bb.n
  %i.hf = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ey, double noundef %i.ga, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.q:                                             ; preds = %bb.k
  br i1 %i.hb, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.hg = fcmp ult double %i.cm, 0.000000e+00
  br i1 %i.hg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hh = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ey, double noundef %i.ga, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.t:                                             ; preds = %bb.r
  %i.hi = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ey, double noundef %.fr, double noundef %i.ga, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.u:                                             ; preds = %bb.q
  %i.hj = fcmp ogt double %i.co, 0.000000e+00
  %i.hk = fcmp ogt double %i.cm, 0.000000e+00     ; 2 uses
  br i1 %i.hj, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %i.hk, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hl = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ey, double noundef %i.ga, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.hm = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ey, double noundef %.fr, double noundef %i.ga, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  br i1 %i.hk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hn = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.ey, double noundef %.fr, double noundef %i.ga, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ho = fcmp olt double %i.cm, 0.000000e+00
  br i1 %i.ho, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hp = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_dddS7_S7_S7_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EET5_T6_T7_RbRNS8_IT8_EERNS8_IT9_EERKNS8_IT10_EERKNS8_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.ey, double noundef %i.ga, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i8 1, ptr %6, align 1, !tbaa !18
  %i.hq = call noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERKNS8_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %9)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.d, %bb.g, %bb.i, %bb.j, %bb.m, %bb.o, %bb.p, %bb.s, %bb.t, %bb.w, %bb.x, %bb.z, %bb.ab, %bb.ac, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.gt, %bb.d ], [ %i.gw, %bb.g ], [ %i.gy, %bb.i ], [ %i.gz, %bb.j ], [ %i.hc, %bb.m ], [ %i.he, %bb.o ], [ %i.hf, %bb.p ], [ %i.hh, %bb.s ], [ %i.hi, %bb.t ], [ %i.hl, %bb.w ], [ %i.hm, %bb.x ], [ %i.hn, %bb.z ], [ %i.hp, %bb.ab ], [ %i.hq, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockINS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_NS4_IdLi1ELi3ELi1ELi1ELi3EEES6_S6_S7_EEbRKNS2_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERKNS8_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %8 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %9 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %10 = alloca %"class.Eigen::Matrix.111", align 16 ; 8 uses
  %11 = alloca %"class.Eigen::Matrix.111", align 16 ; 8 uses
  %12 = alloca %"class.Eigen::Matrix.111", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.a = load <2 x double>, ptr %6, align 8, !tbaa !15 ; 3 uses
  %i.b = fcmp olt <2 x double> %i.a, zeroinitializer
  %i.c = fneg <2 x double> %i.a
  %i.d = select <2 x i1> %i.b, <2 x double> %i.c, <2 x double> %i.a ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !15 ; 3 uses
  %i.g = fcmp olt double %i.f, 0.000000e+00
  %i.h = fneg double %i.f
  %i.i = select i1 %i.g, double %i.h, double %i.f ; 2 uses
  %i.j = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  %i.k = fcmp ule double %i.j, %i.i
  %i.l = extractelement <2 x double> %i.d, i64 1  ; 3 uses
  %i.m = fcmp ult double %i.j, %i.l
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %.idx = shl nsw i64 %i.r, 4
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %.idx
  %i.t = load double, ptr %i.s, align 8, !tbaa !15
  store double %i.t, ptr %7, align 16, !tbaa !15
  %i.u = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.r
  %i.v = load double, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.v, ptr %i.w, align 8, !tbaa !15
  %i.x = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %.idx55 = shl nsw i64 %i.ab, 4
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %.idx55
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !15
  store double %i.ad, ptr %8, align 16, !tbaa !15
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ab
  %i.af = load double, ptr %i.ae, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.af, ptr %i.ag, align 8, !tbaa !15
  %i.ah = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %.idx56 = shl nsw i64 %i.al, 4
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %.idx56
  %i.an = load double, ptr %i.am, align 8, !tbaa !15
  store double %i.an, ptr %9, align 16, !tbaa !15
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.al
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.ap, ptr %i.aq, align 8, !tbaa !15
  %i.ar = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13 ; 2 uses
  %.idx57 = shl nsw i64 %i.av, 4
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %.idx57
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !15
  store double %i.ax, ptr %10, align 16, !tbaa !15
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  %i.az = load double, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.az, ptr %i.ba, align 8, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load <2 x double>, ptr %i.bb, align 8, !tbaa !15
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.bd, ptr %11, align 16, !tbaa !15
  %i.be = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %.idx58 = shl nsw i64 %i.bi, 4
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 %.idx58
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !15
  store double %i.bk, ptr %12, align 16, !tbaa !15
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bi
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.bm = fcmp ule double %i.l, %i.i
  %i.bn = fcmp ult double %i.l, %i.j
  %or.cond54 = or i1 %i.bn, %i.bm
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load double, ptr %i.bo, align 8, !tbaa !15
  store double %i.bs, ptr %7, align 16, !tbaa !15
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !13
  %.idx59 = shl nsw i64 %i.bt, 4
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 %.idx59
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.bv, ptr %i.bw, align 8, !tbaa !15
  %i.bx = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load double, ptr %i.bx, align 8, !tbaa !15
  store double %i.cb, ptr %8, align 16, !tbaa !15
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !13
  %.idx60 = shl nsw i64 %i.cc, 4
  %i.cd = getelementptr inbounds i8, ptr %i.bx, i64 %.idx60
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.ce, ptr %i.cf, align 8, !tbaa !15
  %i.cg = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load double, ptr %i.cg, align 8, !tbaa !15
  store double %i.ck, ptr %9, align 16, !tbaa !15
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !13
  %.idx61 = shl nsw i64 %i.cl, 4
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 %.idx61
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.cn, ptr %i.co, align 8, !tbaa !15
  %i.cp = load ptr, ptr %4, align 8, !tbaa !29    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load double, ptr %i.cp, align 8, !tbaa !15
  store double %i.ct, ptr %10, align 16, !tbaa !15
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !13
  %.idx62 = shl nsw i64 %i.cu, 4
  %i.cv = getelementptr inbounds i8, ptr %i.cp, i64 %.idx62
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.cw, ptr %i.cx, align 8, !tbaa !15
  %i.cy = load double, ptr %3, align 8, !tbaa !15
  store double %i.cy, ptr %11, align 16, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load double, ptr %i.cz, align 8, !tbaa !15
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.da, ptr %i.db, align 8, !tbaa !15
  %i.dc = load ptr, ptr %5, align 8, !tbaa !29    ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load double, ptr %i.dc, align 8, !tbaa !15
  store double %i.dg, ptr %12, align 16, !tbaa !15
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !13
  %.idx63 = shl nsw i64 %i.dh, 4
  %i.di = getelementptr inbounds i8, ptr %i.dc, i64 %.idx63
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.dj = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !32, !nonnull !26, !align !27
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load double, ptr %i.dj, align 8, !tbaa !15
  store double %i.dn, ptr %7, align 16, !tbaa !15
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !13
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.dq, ptr %i.dr, align 8, !tbaa !15
  %i.ds = load ptr, ptr %1, align 8, !tbaa !29    ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_2
begin_hunk_3_@_ZN3igl28tri_tri_intersection_test_3dIN5Eigen5BlockIKNS1_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES6_S6_S6_S6_S6_NS3_IdLi1ELi3ELi1ELi1ELi3EEES7_EEbRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EERKNS8_IT2_EERKNS8_IT3_EERKNS8_IT4_EERbRNS8_IT5_EERNS8_IT6_EE:bb.a
  %i.ag = insertelement <2 x double> %i.af, double %i.l, i64 1
  %i.ah = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fsub <2 x double> %i.ag, %i.ah
  %i.aj = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.u, i64 1
  %i.al = insertelement <2 x double> %i.ac, double %i.n, i64 1
  %i.am = fsub <2 x double> %i.ak, %i.al          ; 2 uses
  %i.an = fneg <2 x double> %i.am
  %i.ao = fmul <2 x double> %i.z, %i.an
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ae, <2 x double> %i.ao)
  %i.aq = extractelement <2 x double> %i.ae, i64 1
  %i.ar = fneg double %i.aq
  %i.as = extractelement <2 x double> %i.ae, i64 0
  %i.at = fmul double %i.as, %i.ar
  %i.au = extractelement <2 x double> %i.z, i64 1
  %i.av = extractelement <2 x double> %i.am, i64 0
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.av, double %i.at) ; 3 uses
  store <2 x double> %i.ap, ptr %10, align 16
  %.sroa.5301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double %i.aw, ptr %.sroa.5301.0..sroa_idx, align 16, !tbaa !16
  %.sroa.0291.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.4293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.4293.0.copyload = load ptr, ptr %.sroa.4293.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.4293.0.copyload, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %i.az = load double, ptr %.sroa.0291.0.copyload, align 8, !tbaa !15
  %i.ba = fsub double %i.az, %i.f
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = getelementptr inbounds [8 x i8], ptr %.sroa.0291.0.copyload, i64 %i.ay
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !15
  %i.be = fsub double %i.bd, %i.j
  %.sroa.0324.8.vec.insert350 = insertelement <2 x double> %i.bb, double %i.be, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i221 = shl nsw i64 %i.ay, 4
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0291.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i221
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !15
  %i.bh = load <2 x double>, ptr %10, align 16, !tbaa !16 ; 3 uses
  %i.bi = fmul <2 x double> %.sroa.0324.8.vec.insert350, %i.bh ; 2 uses
  %.sroa.0283.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.4285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.4285.0.copyload = load ptr, ptr %.sroa.4285.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.4285.0.copyload, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %i.bl = load double, ptr %.sroa.0283.0.copyload, align 8, !tbaa !15
  %i.bm = fsub double %i.bl, %i.f
  %.sroa.0324.0.vec.insert335 = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bn = getelementptr inbounds [8 x i8], ptr %.sroa.0283.0.copyload, i64 %i.bk
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !15
  %i.bp = fsub double %i.bo, %i.j
  %.sroa.0324.8.vec.insert352 = insertelement <2 x double> %.sroa.0324.0.vec.insert335, double %i.bp, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i223 = shl nsw i64 %i.bk, 4
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0283.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i223
  %i.br = load double, ptr %i.bq, align 8, !tbaa !15
  %i.bs = fmul <2 x double> %i.bh, %.sroa.0324.8.vec.insert352 ; 2 uses
  %i.bt = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.br, i64 1
  %i.bv = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fsub <2 x double> %i.bu, %i.bv
  %i.bx = shufflevector <2 x double> %i.bi, <2 x double> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.by = shufflevector <2 x double> %i.bi, <2 x double> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.bz = fadd <2 x double> %i.bx, %i.by
  %i.ca = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fmul <2 x double> %i.cb, %i.bw
  %i.cd = fadd <2 x double> %i.cc, %i.bz          ; 3 uses
  %.sroa.0275.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.4277.0.copyload = load ptr, ptr %.sroa.4277.0..sroa_idx, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.4277.0.copyload, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !13 ; 2 uses
  %i.cg = load double, ptr %.sroa.0275.0.copyload, align 8, !tbaa !15
  %i.ch = fsub double %i.cg, %i.f
  %.sroa.0324.0.vec.insert337 = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ci = getelementptr inbounds [8 x i8], ptr %.sroa.0275.0.copyload, i64 %i.cf
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !15
  %i.ck = fsub double %i.cj, %i.j
  %.sroa.0324.8.vec.insert354 = insertelement <2 x double> %.sroa.0324.0.vec.insert337, double %i.ck, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i225 = shl nsw i64 %i.cf, 4
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0275.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i225
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !15
  %i.cn = fsub double %i.cm, %i.n
  %i.co = fmul <2 x double> %i.bh, %.sroa.0324.8.vec.insert354 ; 2 uses
  %shift = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.co, %shift
  %i.cp = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cq = fmul double %i.aw, %i.cn
  %i.cr = fadd double %i.cq, %i.cp                ; 7 uses
  store i8 0, ptr %6, align 1, !tbaa !18
  %i.cs = extractelement <2 x double> %i.cd, i64 0 ; 4 uses
  %i.ct = extractelement <2 x double> %i.cd, i64 1 ; 4 uses
  %i.cu = fmul double %i.cs, %i.ct
  %i.cv = fcmp ogt double %i.cu, 0.000000e+00
  %i.cw = fmul double %i.cs, %i.cr
  %i.cx = fcmp ogt double %i.cw, 0.000000e+00
  %or.cond = and i1 %i.cv, %i.cx
  br i1 %or.cond, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0267.0.copyload = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.4269.0.copyload = load ptr, ptr %.sroa.4285.0..sroa_idx, align 8
  %.sroa.5271.56.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.7273.56.copyload = load ptr, ptr %.sroa.4293.0..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.4269.0.copyload, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !13 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.7273.56.copyload, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !13 ; 2 uses
  %i.dc = load double, ptr %.sroa.0267.0.copyload, align 8, !tbaa !15
  %i.dd = load double, ptr %.sroa.5271.56.copyload, align 8, !tbaa !15 ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %.sroa.0267.0.copyload, i64 %i.cz
  %i.df = load double, ptr %i.de, align 8, !tbaa !15
  %i.dg = getelementptr inbounds [8 x i8], ptr %.sroa.5271.56.copyload, i64 %i.db
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !15
  %.idx.i.i.i.i.i.i.i.i.i.i.i227 = shl nsw i64 %i.cz, 4
  %i.di = getelementptr inbounds i8, ptr %.sroa.0267.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i227
  %i.dj = load double, ptr %i.di, align 8, !tbaa !15 ; 2 uses
  %.idx2.i.i.i.i.i.i.i.i.i.i.i228 = shl nsw i64 %i.db, 4
  %i.dk = getelementptr inbounds i8, ptr %.sroa.5271.56.copyload, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i228
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !15 ; 2 uses
  %.sroa.0259.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.4261.0.copyload = load ptr, ptr %.sroa.4277.0..sroa_idx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.4261.0.copyload, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !13 ; 2 uses
  %i.do = load double, ptr %.sroa.0259.0.copyload, align 8, !tbaa !15 ; 4 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %.sroa.0259.0.copyload, i64 %i.dn
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !15 ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i229 = shl nsw i64 %i.dn, 4
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0259.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i229
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !15 ; 5 uses
  %i.dt = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.dc, i64 1
  %i.dv = insertelement <2 x double> poison, double %i.dl, i64 0 ; 2 uses
  %i.dw = insertelement <2 x double> %i.dv, double %i.dd, i64 1
  %i.dx = fsub <2 x double> %i.du, %i.dw          ; 2 uses
  %i.dy = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.do, i64 1
  %i.ea = insertelement <2 x double> poison, double %i.dh, i64 0 ; 2 uses
  %i.eb = insertelement <2 x double> %i.ea, double %i.dd, i64 1
  %i.ec = fsub <2 x double> %i.dz, %i.eb          ; 3 uses
  %i.ed = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %i.dj, i64 1
  %i.ef = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fsub <2 x double> %i.ee, %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.ds, i64 1
  %i.ej = insertelement <2 x double> %i.ea, double %i.dl, i64 1
  %i.ek = fsub <2 x double> %i.ei, %i.ej          ; 2 uses
  %i.el = fneg <2 x double> %i.ek
  %i.em = fmul <2 x double> %i.dx, %i.el
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.ec, <2 x double> %i.em)
  %i.eo = extractelement <2 x double> %i.ec, i64 1
  %i.ep = fneg double %i.eo
  %i.eq = extractelement <2 x double> %i.ec, i64 0
  %i.er = fmul double %i.eq, %i.ep
  %i.es = extractelement <2 x double> %i.dx, i64 1
  %i.et = extractelement <2 x double> %i.ek, i64 0
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.es, double %i.et, double %i.er) ; 4 uses
  store <2 x double> %i.en, ptr %9, align 16
  %.sroa.5258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.eu, ptr %.sroa.5258.0..sroa_idx, align 16, !tbaa !16
  %.sroa.0248.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.4250.0.copyload = load ptr, ptr %.sroa.4312.0..sroa_idx, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.4250.0.copyload, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !13 ; 2 uses
  %i.ex = load double, ptr %.sroa.0248.0.copyload, align 8, !tbaa !15
  %i.ey = fsub double %i.ex, %i.do
  %i.ez = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fa = getelementptr inbounds [8 x i8], ptr %.sroa.0248.0.copyload, i64 %i.ew
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !15
  %i.fc = fsub double %i.fb, %i.dq
  %.sroa.0324.8.vec.insert360 = insertelement <2 x double> %i.ez, double %i.fc, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i231 = shl nsw i64 %i.ew, 4
  %i.fd = getelementptr inbounds i8, ptr %.sroa.0248.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i231
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !15
  %i.ff = fsub double %i.fe, %i.ds
  %i.fg = load <2 x double>, ptr %9, align 16, !tbaa !16 ; 3 uses
  %i.fh = fmul <2 x double> %.sroa.0324.8.vec.insert360, %i.fg ; 2 uses
  %shift386 = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop387 = fadd <2 x double> %i.fh, %shift386
  %i.fi = extractelement <2 x double> %foldExtExtBinop387, i64 0
  %i.fj = fmul double %i.eu, %i.ff
  %i.fk = fadd double %i.fj, %i.fi                ; 15 uses
  %.sroa.0240.0.copyload = load ptr, ptr %4, align 8 ; 3 uses
  %.sroa.4242.0.copyload = load ptr, ptr %.sroa.4304.0..sroa_idx, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.4242.0.copyload, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !13 ; 2 uses
  %i.fn = load double, ptr %.sroa.0240.0.copyload, align 8, !tbaa !15
  %i.fo = fsub double %i.fn, %i.do
  %.sroa.0324.0.vec.insert345 = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fp = getelementptr inbounds [8 x i8], ptr %.sroa.0240.0.copyload, i64 %i.fm
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !15
  %i.fr = fsub double %i.fq, %i.dq
  %.sroa.0324.8.vec.insert362 = insertelement <2 x double> %.sroa.0324.0.vec.insert345, double %i.fr, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i233 = shl nsw i64 %i.fm, 4
  %i.fs = getelementptr inbounds i8, ptr %.sroa.0240.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i233
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !15
  %i.fu = fsub double %i.ft, %i.ds
  %i.fv = fmul <2 x double> %i.fg, %.sroa.0324.8.vec.insert362 ; 2 uses
  %shift389 = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop390 = fadd <2 x double> %i.fv, %shift389
  %i.fw = extractelement <2 x double> %foldExtExtBinop390, i64 0
  %i.fx = fmul double %i.eu, %i.fu
  %i.fy = fadd double %i.fx, %i.fw
  %.fr = freeze double %i.fy                      ; 14 uses
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8 ; 3 uses
  %.sroa.4237.0.copyload = load ptr, ptr %.sroa.7316.56..sroa_idx, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.4237.0.copyload, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !13 ; 2 uses
  %i.gb = load double, ptr %.sroa.0.0.copyload, align 8, !tbaa !15
  %i.gc = fsub double %i.gb, %i.do
  %.sroa.0324.0.vec.insert347 = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gd = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.ga
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !15
  %i.gf = fsub double %i.ge, %i.dq
  %.sroa.0324.8.vec.insert364 = insertelement <2 x double> %.sroa.0324.0.vec.insert347, double %i.gf, i64 1
  %.idx.i.i.i.i.i.i.i.i.i.i.i235 = shl nsw i64 %i.ga, 4
  %i.gg = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i235
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !15
  %i.gi = fsub double %i.gh, %i.ds
  %i.gj = fmul <2 x double> %i.fg, %.sroa.0324.8.vec.insert364 ; 2 uses
  %shift392 = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop393 = fadd <2 x double> %i.gj, %shift392
  %i.gk = extractelement <2 x double> %foldExtExtBinop393, i64 0
  %i.gl = fmul double %i.eu, %i.gi
  %i.gm = fadd double %i.gl, %i.gk                ; 14 uses
  %i.gn = fmul double %i.fk, %.fr
  %i.go = fcmp ogt double %i.gn, 0.000000e+00
  %i.gp = fmul double %i.fk, %i.gm
  %i.gq = fcmp ogt double %i.gp, 0.000000e+00
  %or.cond218 = and i1 %i.go, %i.gq
  br i1 %or.cond218, label %bb.ad, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.gr = tail call noundef double @_ZN3igl3EPSIdEET_v() ; 3 uses
  %i.gs = shufflevector <2 x double> %i.cd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gt = insertelement <4 x double> %i.gs, double %i.cr, i64 2
  %i.gu = insertelement <4 x double> %i.gt, double %i.fk, i64 3
  %.fr395 = freeze <4 x double> %i.gu
  %i.gv = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %.fr395)
  %i.gw = insertelement <4 x double> poison, double %i.gr, i64 0
  %i.gx = shufflevector <4 x double> %i.gw, <4 x double> poison, <4 x i32> zeroinitializer
  %i.gy = tail call double @llvm.fabs.f64(double %.fr)
  %i.gz = fcmp olt double %i.gy, %i.gr
  %i.ha = tail call double @llvm.fabs.f64(double %i.gm)
  %i.hb = fcmp olt double %i.ha, %i.gr
  %i.hc = fcmp uge <4 x double> %i.gv, %i.gx
  %i.hd = bitcast <4 x i1> %i.hc to i4
  %i.he = icmp eq i4 %i.hd, 0
  %op.rdx = and i1 %i.he, %i.gz
  %op.rdx384 = and i1 %op.rdx, %i.hb
  br i1 %op.rdx384, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %6, align 1, !tbaa !18
  %i.hf = call noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_NS4_IdLi1ELi3ELi1ELi1ELi3EEEEEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EERKNS9_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %9)
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.hg = fcmp ogt double %i.cs, 0.000000e+00
  br i1 %i.hg, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.hh = fcmp ogt double %i.ct, 0.000000e+00
  br i1 %i.hh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.hi = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.h:                                             ; preds = %bb.f
  %i.hj = fcmp ogt double %i.cr, 0.000000e+00
  br i1 %i.hj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.hk = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.j:                                             ; preds = %bb.h
  %i.hl = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.k:                                             ; preds = %bb.e
  %i.hm = fcmp olt double %i.cs, 0.000000e+00
  %i.hn = fcmp olt double %i.ct, 0.000000e+00     ; 2 uses
  br i1 %i.hm, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  br i1 %i.hn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ho = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.n:                                             ; preds = %bb.l
  %i.hp = fcmp olt double %i.cr, 0.000000e+00
  br i1 %i.hp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hq = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.p:                                             ; preds = %bb.n
  %i.hr = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.q:                                             ; preds = %bb.k
  br i1 %i.hn, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.hs = fcmp ult double %i.cr, 0.000000e+00
  br i1 %i.hs, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ht = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.t:                                             ; preds = %bb.r
  %i.hu = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.u:                                             ; preds = %bb.q
  %i.hv = fcmp ogt double %i.ct, 0.000000e+00
  %i.hw = fcmp ogt double %i.cr, 0.000000e+00     ; 2 uses
  br i1 %i.hv, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %i.hw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hx = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.x:                                             ; preds = %bb.v
  %i.hy = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.y:                                             ; preds = %bb.u
  br i1 %i.hw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hz = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, double noundef %i.fk, double noundef %.fr, double noundef %i.gm, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.ia = fcmp olt double %i.cr, 0.000000e+00
  br i1 %i.ia, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ib = call noundef zeroext i1 @_ZN3igl8internal21_IGL_TRI_TRI_INTER_3DIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_dddNS4_IdLi1ELi3ELi1ELi1ELi3EEES8_S8_S8_EEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EET5_T6_T7_RbRNS9_IT8_EERNS9_IT9_EERKNS9_IT10_EERKNS9_IT11_EE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %4, double noundef %i.fk, double noundef %i.gm, double noundef %.fr, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  store i8 1, ptr %6, align 1, !tbaa !18
  %i.ic = call noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_NS4_IdLi1ELi3ELi1ELi1ELi3EEEEEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EERKNS9_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %9)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.d, %bb.g, %bb.i, %bb.j, %bb.m, %bb.o, %bb.p, %bb.s, %bb.t, %bb.w, %bb.x, %bb.z, %bb.ab, %bb.ac, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.hf, %bb.d ], [ %i.hi, %bb.g ], [ %i.hk, %bb.i ], [ %i.hl, %bb.j ], [ %i.ho, %bb.m ], [ %i.hq, %bb.o ], [ %i.hr, %bb.p ], [ %i.ht, %bb.s ], [ %i.hu, %bb.t ], [ %i.hx, %bb.w ], [ %i.hy, %bb.x ], [ %i.hz, %bb.z ], [ %i.ib, %bb.ab ], [ %i.ic, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #7
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3igl8internal18coplanar_tri_tri3dIN5Eigen5BlockIKNS2_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEES7_S7_S7_S7_S7_NS4_IdLi1ELi3ELi1ELi1ELi3EEEEEbRKNS2_10MatrixBaseIT_EERKNS9_IT0_EERKNS9_IT1_EERKNS9_IT2_EERKNS9_IT3_EERKNS9_IT4_EERKNS9_IT5_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %8 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %9 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %10 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %11 = alloca %"class.Eigen::Matrix.111", align 16 ; 9 uses
  %12 = alloca %"class.Eigen::Matrix.111", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #7
  %i.a = load <2 x double>, ptr %6, align 8, !tbaa !15 ; 3 uses
  %i.b = fcmp olt <2 x double> %i.a, zeroinitializer
  %i.c = fneg <2 x double> %i.a
  %i.d = select <2 x i1> %i.b, <2 x double> %i.c, <2 x double> %i.a ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !15 ; 3 uses
  %i.g = fcmp olt double %i.f, 0.000000e+00
  %i.h = fneg double %i.f
  %i.i = select i1 %i.g, double %i.h, double %i.f ; 2 uses
  %i.j = extractelement <2 x double> %i.d, i64 0  ; 3 uses
  %i.k = fcmp ule double %i.j, %i.i
  %i.l = extractelement <2 x double> %i.d, i64 1  ; 3 uses
  %i.m = fcmp ult double %i.j, %i.l
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %.idx = shl nsw i64 %i.r, 4
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %.idx
  %i.t = load double, ptr %i.s, align 8, !tbaa !15
  store double %i.t, ptr %7, align 16, !tbaa !15
  %i.u = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.r
  %i.v = load double, ptr %i.u, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.v, ptr %i.w, align 8, !tbaa !15
  %i.x = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %.idx55 = shl nsw i64 %i.ab, 4
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 %.idx55
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !15
  store double %i.ad, ptr %8, align 16, !tbaa !15
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ab
  %i.af = load double, ptr %i.ae, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.af, ptr %i.ag, align 8, !tbaa !15
  %i.ah = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %.idx56 = shl nsw i64 %i.al, 4
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %.idx56
  %i.an = load double, ptr %i.am, align 8, !tbaa !15
  store double %i.an, ptr %9, align 16, !tbaa !15
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.al
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.ap, ptr %i.aq, align 8, !tbaa !15
  %i.ar = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !13 ; 2 uses
  %.idx57 = shl nsw i64 %i.av, 4
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %.idx57
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !15
  store double %i.ax, ptr %10, align 16, !tbaa !15
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.av
  %i.az = load double, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.az, ptr %i.ba, align 8, !tbaa !15
  %i.bb = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !13 ; 2 uses
  %.idx58 = shl nsw i64 %i.bf, 4
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 %.idx58
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !15
  store double %i.bh, ptr %11, align 16, !tbaa !15
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bf
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.bj, ptr %i.bk, align 8, !tbaa !15
  %i.bl = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  %.idx59 = shl nsw i64 %i.bp, 4
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %.idx59
  %i.br = load double, ptr %i.bq, align 8, !tbaa !15
  store double %i.br, ptr %12, align 16, !tbaa !15
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bp
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.bt = fcmp ule double %i.l, %i.i
  %i.bu = fcmp ult double %i.l, %i.j
  %or.cond54 = or i1 %i.bu, %i.bt
  br i1 %or.cond54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bv = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load double, ptr %i.bv, align 8, !tbaa !15
  store double %i.bz, ptr %7, align 16, !tbaa !15
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !13
  %.idx60 = shl nsw i64 %i.ca, 4
  %i.cb = getelementptr inbounds i8, ptr %i.bv, i64 %.idx60
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.cc, ptr %i.cd, align 8, !tbaa !15
  %i.ce = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !15
  store double %i.ci, ptr %8, align 16, !tbaa !15
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !13
  %.idx61 = shl nsw i64 %i.cj, 4
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 %.idx61
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %i.cl, ptr %i.cm, align 8, !tbaa !15
  %i.cn = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load double, ptr %i.cn, align 8, !tbaa !15
  store double %i.cr, ptr %9, align 16, !tbaa !15
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !13
  %.idx62 = shl nsw i64 %i.cs, 4
  %i.ct = getelementptr inbounds i8, ptr %i.cn, i64 %.idx62
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store double %i.cu, ptr %i.cv, align 8, !tbaa !15
  %i.cw = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load double, ptr %i.cw, align 8, !tbaa !15
  store double %i.da, ptr %10, align 16, !tbaa !15
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !13
  %.idx63 = shl nsw i64 %i.db, 4
  %i.dc = getelementptr inbounds i8, ptr %i.cw, i64 %.idx63
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !15
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %i.dd, ptr %i.de, align 8, !tbaa !15
  %i.df = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load double, ptr %i.df, align 8, !tbaa !15
  store double %i.dj, ptr %11, align 16, !tbaa !15
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !13
  %.idx64 = shl nsw i64 %i.dk, 4
  %i.dl = getelementptr inbounds i8, ptr %i.df, i64 %.idx64
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %i.dm, ptr %i.dn, align 8, !tbaa !15
  %i.do = load ptr, ptr %5, align 8, !tbaa !22    ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load double, ptr %i.do, align 8, !tbaa !15
  store double %i.ds, ptr %12, align 16, !tbaa !15
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !13
  %.idx65 = shl nsw i64 %i.dt, 4
  %i.du = getelementptr inbounds i8, ptr %i.do, i64 %.idx65
  br label %bb.f
end_hunk_3
