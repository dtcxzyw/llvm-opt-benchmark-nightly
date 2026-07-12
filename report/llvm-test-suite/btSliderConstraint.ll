inline.NumInlined: 530
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_:bb.a
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bn, <2 x float> %i.bk)
  %i.bp = insertelement <2 x float> poison, float %i.o, i64 0 ; 2 uses
  %i.bq = insertelement <2 x float> %i.bp, float %i.ae, i64 1
  %i.br = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.bs, <2 x float> %i.bo)
  %i.bu = load <2 x float>, ptr %i.au, align 4, !tbaa !8, !noalias !33
  %i.bv = fadd <2 x float> %i.bu, %i.bt
  %i.bw = fmul float %i.ai, %i.ar
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ap, float %i.bw)
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.at, float %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %.462, i64 56
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !8, !noalias !33
  %i.cb = fadd float %i.by, %i.ca
  %.sroa.3.12.vec.insert.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.cd = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = insertelement <2 x float> poison, float %i.j, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.s, i64 1 ; 3 uses
  %i.cg = fmul <2 x float> %i.cd, %i.cf
  %i.ch = insertelement <2 x float> poison, float %i.h, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.q, i64 1 ; 3 uses
  %i.cj = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cj, <2 x float> %i.cg)
  %i.cl = insertelement <2 x float> poison, float %i.m, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.u, i64 1 ; 3 uses
  %i.cn = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cn, <2 x float> %i.ck)
  store <2 x float> %i.co, ptr %i.cc, align 4
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 852
  store float %i.ba, ptr %.sroa.586.0..sroa_idx, align 4
  %.sroa.687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 856
  store float 0.000000e+00, ptr %.sroa.687.0..sroa_idx, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.cq = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = fmul <2 x float> %i.cf, %i.cq
  %i.cs = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cs, <2 x float> %i.cr)
  %i.cu = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cv, <2 x float> %i.ct)
  store <2 x float> %i.cw, ptr %i.cp, align 4
  %.sroa.1090.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 868
  store float %i.bg, ptr %.sroa.1090.16..sroa_idx, align 4
  %.sroa.1191.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 872
  store float 0.000000e+00, ptr %.sroa.1191.16..sroa_idx, align 8, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.cy = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.da = fmul <2 x float> %i.cf, %i.cz
  %i.db = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.dc, <2 x float> %i.da)
  %i.de = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.df, <2 x float> %i.dd)
  store <2 x float> %i.dg, ptr %i.cx, align 4
  %.sroa.1594.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 884
  store float %i.an, ptr %.sroa.1594.32..sroa_idx, align 4
  %.sroa.1695.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 888
  store float 0.000000e+00, ptr %.sroa.1695.32..sroa_idx, align 8, !tbaa !26
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 892
  store <2 x float> %i.bv, ptr %i.dh, align 4
  %.sroa.1997.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 900
  store <2 x float> %.sroa.3.12.vec.insert.i.i33, ptr %.sroa.1997.48..sroa_idx, align 4, !tbaa !26
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 %.474
  %i.dj = load float, ptr %i.di, align 4, !tbaa !8, !noalias !33
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %.476
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !8, !noalias !33
  %i.dm = getelementptr inbounds nuw i8, ptr %.475, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %.477
  %i.do = load float, ptr %i.dn, align 4, !tbaa !8, !noalias !33
  %i.dp = getelementptr inbounds nuw i8, ptr %.475, i64 8
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !8, !noalias !33 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.478
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !8, !noalias !33
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %.479
  %i.du = load float, ptr %i.dt, align 8, !tbaa !8, !noalias !33
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.480
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !8, !noalias !33
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 %.481
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %.482
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %.483
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.475, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %.475, i64 20
  %i.ef = getelementptr inbounds nuw i8, ptr %.475, i64 24
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.475, i64 32
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.475, i64 36
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.475, i64 40
  %i.em = load float, ptr %i.el, align 4, !tbaa !8, !noalias !33 ; 3 uses
  %i.en = fmul float %i.ea, %i.ek
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.ei, float %i.en)
  %i.ep = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.em, float %i.eo)
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 %.484
  %i.er = load float, ptr %i.eq, align 4, !tbaa !8, !noalias !33 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 %.485
  %i.et = load float, ptr %i.es, align 8, !tbaa !8, !noalias !33 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 %.486
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !8, !noalias !33 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.475, i64 48
  %i.ex = load <2 x float>, ptr %.475, align 4, !tbaa !8, !noalias !33 ; 5 uses
  %i.ey = load float, ptr %i.dm, align 4, !tbaa !8, !noalias !33
  %i.ez = fmul float %i.ey, %i.ea
  %i.fa = extractelement <2 x float> %i.ex, i64 0
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.fa, float %i.ez)
  %i.fc = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.dq, float %i.fb)
  %i.fd = load <2 x float>, ptr %i.ed, align 4, !tbaa !8, !noalias !33 ; 5 uses
  %i.fe = load float, ptr %i.ee, align 4, !tbaa !8, !noalias !33
  %i.ff = fmul float %i.ea, %i.fe
  %i.fg = extractelement <2 x float> %i.fd, i64 0
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.dy, float %i.fg, float %i.ff)
  %i.fi = tail call noundef float @llvm.fmuladd.f32(float %i.ec, float %i.eg, float %i.fh)
  %i.fj = shufflevector <2 x float> %i.ex, <2 x float> %i.fd, <2 x i32> <i32 1, i32 3>
  %i.fk = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fj, %i.fl
  %i.fn = shufflevector <2 x float> %i.ex, <2 x float> %i.fd, <2 x i32> <i32 0, i32 2>
  %i.fo = insertelement <2 x float> poison, float %i.er, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.fp, <2 x float> %i.fm)
  %i.fr = insertelement <2 x float> poison, float %i.dq, i64 0 ; 2 uses
  %i.fs = insertelement <2 x float> %i.fr, float %i.eg, i64 1
  %i.ft = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.fu, <2 x float> %i.fq)
  %i.fw = load <2 x float>, ptr %i.ew, align 4, !tbaa !8, !noalias !33
  %i.fx = fadd <2 x float> %i.fw, %i.fv
  %i.fy = fmul float %i.ek, %i.et
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.er, float %i.fy)
  %i.ga = tail call noundef float @llvm.fmuladd.f32(float %i.em, float %i.ev, float %i.fz)
  %i.gb = getelementptr inbounds nuw i8, ptr %.475, i64 56
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !8, !noalias !33
  %i.gd = fadd float %i.ga, %i.gc
  %.sroa.3.12.vec.insert.i.i46 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gd, i64 0
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 908
  %i.gf = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gg = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.du, i64 1 ; 3 uses
  %i.gi = fmul <2 x float> %i.gf, %i.gh
  %i.gj = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.ds, i64 1 ; 3 uses
  %i.gl = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.gl, <2 x float> %i.gi)
  %i.gn = insertelement <2 x float> poison, float %i.do, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.dw, i64 1 ; 3 uses
  %i.gp = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gp, <2 x float> %i.gm)
  store <2 x float> %i.gq, ptr %i.ge, align 4
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 916
  store float %i.fc, ptr %.sroa.583.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 920
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !26
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.gs = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gt = fmul <2 x float> %i.gh, %i.gs
  %i.gu = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.gu, <2 x float> %i.gt)
  %i.gw = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gx, <2 x float> %i.gv)
  store <2 x float> %i.gy, ptr %i.gr, align 4
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 932
  store float %i.fi, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 936
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 8, !tbaa !26
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 940
  %i.ha = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul <2 x float> %i.gh, %i.hb
  %i.hd = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.he = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.he, <2 x float> %i.hc)
  %i.hg = insertelement <2 x float> poison, float %i.em, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.hh, <2 x float> %i.hf)
  store <2 x float> %i.hi, ptr %i.gz, align 4
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 948
  store float %i.ep, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 952
  store float 0.000000e+00, ptr %.sroa.16.32..sroa_idx, align 8, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 956
  store <2 x float> %i.fx, ptr %i.hj, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 964
  store <2 x float> %.sroa.3.12.vec.insert.i.i46, ptr %i.hk, align 4, !tbaa !26
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 988 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hn, ptr noundef nonnull align 4 dereferenceable(16) %i.hm, i64 16, i1 false), !tbaa.struct !25
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hp, ptr noundef nonnull align 4 dereferenceable(16) %i.ho, i64 16, i1 false), !tbaa.struct !25
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.hs = load float, ptr %i.hl, align 4, !tbaa !8 ; 4 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ht = load float, ptr %i.hq, align 4, !tbaa !8 ; 4 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ht, i64 1
  %i.hu = load float, ptr %i.hr, align 4, !tbaa !8 ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hu, i64 0
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 972
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.hv, align 4
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 980
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.411.0..sroa_idx, align 4, !tbaa !26
  %brmerge = select i1 %i.c, i1 true, i1 %i.f
  br i1 %brmerge, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.hw = load float, ptr %i.hp, align 4, !tbaa !8
  %i.hx = load float, ptr %i.hn, align 4, !tbaa !8 ; 2 uses
  %i.hy = fsub float %i.hw, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ib = load <2 x float>, ptr %i.hz, align 8, !tbaa !8
  %i.ic = load <2 x float>, ptr %i.ia, align 8, !tbaa !8 ; 2 uses
  %i.id = fsub <2 x float> %i.ib, %i.ic
  %i.ie = extractelement <2 x float> %i.ic, i64 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.if = load float, ptr %i.hn, align 4, !tbaa !8 ; 2 uses
  %i.ig = load float, ptr %i.hp, align 4, !tbaa !8
  %i.ih = fsub float %i.if, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ik = load <2 x float>, ptr %i.ii, align 8, !tbaa !8 ; 2 uses
  %i.il = load <2 x float>, ptr %i.ij, align 8, !tbaa !8
  %i.im = fsub <2 x float> %i.ik, %i.il
  %i.in = extractelement <2 x float> %i.ik, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink461 = phi float [ %i.ih, %bb.c ], [ %i.hy, %bb.b ] ; 4 uses
  %i.io = phi float [ %i.in, %bb.c ], [ %i.ie, %bb.b ]
  %i.ip = phi float [ %i.if, %bb.c ], [ %i.hx, %bb.b ]
  %i.iq = phi <2 x float> [ %i.im, %bb.c ], [ %i.id, %bb.b ] ; 6 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.ir = load float, ptr %.in, align 4, !tbaa !8
  %.sroa.0.0.vec.insert.i62 = insertelement <2 x float> poison, float %.sink461, i64 0
  %i.is = shufflevector <2 x float> %.sroa.0.0.vec.insert.i62, <2 x float> %i.iq, <2 x i32> <i32 0, i32 2>
  %i.it = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.iq, <2 x i32> <i32 3, i32 1>
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 1036
  store <2 x float> %i.is, ptr %i.iu, align 4
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 1044
  store <2 x float> %i.it, ptr %i.iv, align 4, !tbaa !26
  %i.iw = extractelement <2 x float> %i.iq, i64 0 ; 2 uses
  %i.ix = fmul float %i.ht, %i.iw
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.hs, float %.sink461, float %i.ix)
  %i.iz = extractelement <2 x float> %i.iq, i64 1 ; 2 uses
  %i.ja = tail call noundef float @llvm.fmuladd.f32(float %i.hu, float %i.iz, float %i.iy) ; 3 uses
  %i.jb = fmul float %i.hs, %i.ja
  %i.jc = fmul float %i.ht, %i.ja
  %i.jd = fmul float %i.hu, %i.ja
  %i.je = fadd float %i.ip, %i.jb
  %i.jf = fadd float %i.io, %i.jc
  %i.jg = fadd float %i.jd, %i.ir
  %.sroa.0.0.vec.insert.i70 = insertelement <2 x float> poison, float %i.je, i64 0
  %.sroa.0.4.vec.insert.i71 = insertelement <2 x float> %.sroa.0.0.vec.insert.i70, float %i.jf, i64 1
  %.sroa.3.12.vec.insert.i72 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jg, i64 0
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store <2 x float> %.sroa.0.4.vec.insert.i71, ptr %i.jh, align 4
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store <2 x float> %.sroa.3.12.vec.insert.i72, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !26
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.jm = load float, ptr %i.jj, align 8, !tbaa !8
  %i.jn = load float, ptr %i.jk, align 8, !tbaa !8
  %i.jo = load float, ptr %i.jl, align 8, !tbaa !8
  %i.jp = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.jq = insertelement <2 x float> %i.jp, float %i.jn, i64 1
  %i.jr = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = fmul <2 x float> %i.jq, %i.jr
  %3 = insertelement <2 x float> poison, float %.sink461, i64 0
  %i.jt = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ju = insertelement <2 x float> %4, float %i.jm, i64 1
  %i.jv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> %i.ju, <2 x float> %i.js)
  %i.jw = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jx = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.jy = insertelement <2 x float> %i.jx, float %i.jo, i64 1
  %i.jz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jw, <2 x float> %i.jy, <2 x float> %i.jv)
  store <2 x float> %i.jz, ptr %i.ji, align 4, !tbaa !8
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.kd = load float, ptr %i.ka, align 4, !tbaa !8
  %i.ke = load float, ptr %i.kb, align 4, !tbaa !8
  %i.kf = load float, ptr %i.kc, align 4, !tbaa !8
  %i.kg = fmul float %i.ke, %i.iw
  %i.kh = tail call float @llvm.fmuladd.f32(float %.sink461, float %i.kd, float %i.kg)
  %i.ki = tail call noundef float @llvm.fmuladd.f32(float %i.iz, float %i.kf, float %i.kh)
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 1060
  store float %i.ki, ptr %i.kj, align 4, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1148) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store i32 6, ptr %1, align 4, !tbaa !79
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !81
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82, !nonnull !33, !align !35 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83, !nonnull !33, !align !35 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.j = load float, ptr %i.i, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.l = load float, ptr %i.k, align 8, !tbaa !54
  tail call void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, float noundef %i.j, float noundef %i.l)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, float noundef %6, float noundef %7) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 6 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !8  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 2 uses
  store float %i.c, ptr %i.d, align 4, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 3 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !65 ; 3 uses
  %i.i = fcmp ugt float %i.f, %i.h
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp ogt float %i.c, %i.h
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = fsub float %i.c, %i.h
  store float %i.k, ptr %i.b, align 4, !tbaa !8
  store i8 1, ptr %i.a, align 8, !tbaa !62
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.l = fcmp olt float %i.c, %i.f
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = fsub float %i.c, %i.f
  store float %i.m, ptr %i.b, align 4, !tbaa !8
  store i8 1, ptr %i.a, align 8, !tbaa !62
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

bb.f:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !8
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

bb.g:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !8
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

_ZN18btSliderConstraint13testLinLimitsEv.exit:    ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 3 uses
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 3 uses
  store i8 0, ptr %i.o, align 1, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !74 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 4 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !75 ; 2 uses
  %i.t = fcmp ugt float %i.q, %i.s
  br i1 %i.t, label %_ZN18btSliderConstraint13testAngLimitsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.x = load float, ptr %i.u, align 8, !tbaa !8
  %i.y = load float, ptr %i.v, align 8, !tbaa !8
  %i.z = load float, ptr %i.w, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !8
  %i.ae = load float, ptr %i.ab, align 4, !tbaa !8
  %i.af = load float, ptr %i.ac, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.aj = load float, ptr %i.ag, align 8, !tbaa !8 ; 2 uses
  %i.ak = load float, ptr %i.ah, align 8, !tbaa !8 ; 2 uses
  %i.al = load float, ptr %i.ai, align 8, !tbaa !8 ; 2 uses
  %i.am = fmul float %i.ae, %i.ak
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ad, float %i.am)
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.af, float %i.an) ; 2 uses
  %i.ap = fmul float %i.y, %i.ak
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.x, float %i.ap)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.z, float %i.aq) ; 5 uses
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.ao) ; 4 uses
  %i.at = fcmp ult float %i.ar, 0.000000e+00
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = fsub float %i.ar, %i.as
  %i.av = fadd float %i.ar, %i.as
  %i.aw = fdiv float %i.au, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float f0xBF490FDB, float f0x3F490FDB)
  br label %_Z11btAtan2Fastff.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ay = fadd float %i.ar, %i.as
  %i.az = fsub float %i.as, %i.ar
  %i.ba = fdiv float %i.ay, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float f0xBF490FDB, float f0x4016CBE4)
  br label %_Z11btAtan2Fastff.exit.i

_Z11btAtan2Fastff.exit.i:                         ; preds = %bb.j, %bb.i
  %.0.i.i = phi float [ %i.ax, %bb.i ], [ %i.bb, %bb.j ] ; 2 uses
  %i.bc = fcmp olt float %i.ao, 0.000000e+00
  %i.bd = fneg float %.0.i.i
  %i.be = select i1 %i.bc, float %i.bd, float %.0.i.i
  %i.bf = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.be, float noundef %i.q, float noundef %i.s) ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store float %i.bf, ptr %i.bg, align 8, !tbaa !76
  %i.bh = load float, ptr %i.p, align 8, !tbaa !74 ; 2 uses
  %i.bi = fcmp olt float %i.bf, %i.bh
  br i1 %i.bi, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %_Z11btAtan2Fastff.exit.i
  %i.bj = load float, ptr %i.r, align 4, !tbaa !75 ; 2 uses
  %i.bk = fcmp ogt float %i.bf, %i.bj
  br i1 %i.bk, label %.sink.split.i, label %_ZN18btSliderConstraint13testAngLimitsEv.exit

.sink.split.i:                                    ; preds = %bb.k, %_Z11btAtan2Fastff.exit.i
  %.sink34.i = phi float [ %i.bh, %_Z11btAtan2Fastff.exit.i ], [ %i.bj, %bb.k ]
  %i.bl = fsub float %i.bf, %.sink34.i
  store float %i.bl, ptr %i.n, align 4, !tbaa !72
  store i8 1, ptr %i.o, align 1, !tbaa !73
  br label %_ZN18btSliderConstraint13testAngLimitsEv.exit

_ZN18btSliderConstraint13testAngLimitsEv.exit:    ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit, %bb.k, %.sink.split.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 908
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !85 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !24, !range !32, !noundef !33
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.bu = load float, ptr %i.bm, align 4, !tbaa !8 ; 11 uses
  %i.bv = load float, ptr %i.bs, align 4, !tbaa !8 ; 11 uses
  %i.bw = load float, ptr %i.bt, align 4, !tbaa !8 ; 11 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ca = load float, ptr %i.bx, align 8, !tbaa !8 ; 6 uses
  %.sroa.0.0.vec.insert.i321 = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cb = load float, ptr %i.by, align 8, !tbaa !8 ; 6 uses
  %.sroa.0.4.vec.insert.i322 = insertelement <2 x float> %.sroa.0.0.vec.insert.i321, float %i.cb, i64 1
  %i.cc = load float, ptr %i.bz, align 8, !tbaa !8 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.cg = load float, ptr %i.cd, align 4, !tbaa !8 ; 6 uses
  %.sroa.0.0.vec.insert.i326 = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !8 ; 6 uses
  %.sroa.0.4.vec.insert.i327 = insertelement <2 x float> %.sroa.0.0.vec.insert.i326, float %i.ch, i64 1
  %i.ci = load float, ptr %i.cf, align 4, !tbaa !8 ; 6 uses
end_hunk_0
