Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSliderConstraint?download=true
inline.NumInlined: 416
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.459, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.459, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %.459, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.459, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %.459, i64 40
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !9, !noalias !26 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.468
  %i.ag = load float, ptr %i.af, align 4, !tbaa !9, !noalias !26 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.469
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !9, !noalias !26 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.470
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !9, !noalias !26 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.459, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %.459, i64 56
  %i.an = load float, ptr %i.am, align 4, !tbaa !9, !noalias !26
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ap = load <2 x float>, ptr %.459, align 4, !tbaa !9, !noalias !26 ; 3 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ar = insertelement <4 x float> %i.aq, float 0.000000e+00, i64 3
  %i.as = insertelement <4 x float> %i.ar, float %i.j, i64 0
  %i.at = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aq, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.au = insertelement <4 x float> %i.at, float %i.q, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.w, i64 2
  %i.aw = fmul <4 x float> %i.as, %i.av
  %i.ax = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.o, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.u, i64 2 ; 3 uses
  %i.ba = shufflevector <2 x float> %i.ap, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.ba, <4 x float> %i.aw)
  %i.bc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.s, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.y, i64 2 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bg = load <2 x float>, ptr %i.z, align 4, !tbaa !9, !noalias !26 ; 3 uses
  %i.bh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.j, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.q, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.w, i64 2 ; 2 uses
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bl = fmul <4 x float> %i.bj, %i.bk
  %i.bm = shufflevector <2 x float> %i.bg, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.bm, <4 x float> %i.bl)
  %i.bo = load <2 x float>, ptr %i.al, align 4, !tbaa !9, !noalias !26
  %i.bp = load <2 x float>, ptr %i.k, align 4, !tbaa !9, !noalias !26 ; 3 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.br, <4 x float> %i.bb)
  %i.bt = load <2 x float>, ptr %i.aa, align 4, !tbaa !9, !noalias !26 ; 3 uses
  %i.bu = shufflevector <2 x float> %i.bp, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.bv = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bu, %i.bw
  %i.by = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = shufflevector <2 x float> %i.ap, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.ca, <2 x float> %i.bx)
  %i.cc = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = shufflevector <2 x float> %i.bp, <2 x float> %i.bt, <2 x i32> <i32 1, i32 3>
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.ce, <2 x float> %i.cb)
  %i.cg = fadd <2 x float> %i.bo, %i.cf
  %i.ch = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.ci, <4 x float> %i.bn)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.cl = load <2 x float>, ptr %i.ab, align 4, !tbaa !9, !noalias !26 ; 3 uses
  %i.cm = load float, ptr %i.ac, align 4, !tbaa !9, !noalias !26
  %i.cn = shufflevector <2 x float> %i.cl, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.co = fmul <4 x float> %i.bj, %i.cn
  %i.cp = shufflevector <2 x float> %i.cl, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.cp, <4 x float> %i.co)
  %i.cr = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ae, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.cs, <4 x float> %i.cq)
  %i.cu = fmul float %i.cm, %i.ai
  %i.cv = extractelement <2 x float> %i.cl, i64 0
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.cv, float %i.cu)
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.ae, float %i.cw)
  %i.cy = fadd float %i.cx, %i.an
  %.sroa.3.12.vec.insert.i4.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cy, i64 0
  store <4 x float> %i.bs, ptr %i.ao, align 8
  store <4 x float> %i.cj, ptr %i.bf, align 8
  store <4 x float> %i.ct, ptr %i.ck, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 896
  store <2 x float> %i.cg, ptr %i.cz, align 8
  %.sroa.1994.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 904
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i33, ptr %.sroa.1994.48..sroa_idx, align 8, !tbaa !31
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %.471
  %i.db = load float, ptr %i.da, align 4, !tbaa !9, !noalias !26
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %.473
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !9, !noalias !26 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.472, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.474
  %i.dg = load float, ptr %i.df, align 4, !tbaa !9, !noalias !26
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %.475
  %i.di = load float, ptr %i.dh, align 8, !tbaa !9, !noalias !26
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %.476
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !9, !noalias !26 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %.477
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !9, !noalias !26
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %.478
  %i.do = load float, ptr %i.dn, align 4, !tbaa !9, !noalias !26
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %.479
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !9, !noalias !26 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.480
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !9, !noalias !26
  %i.dt = getelementptr inbounds nuw i8, ptr %.472, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %.472, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %.472, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %.472, i64 36
  %i.dx = getelementptr inbounds nuw i8, ptr %.472, i64 40
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !9, !noalias !26 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %.481
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !9, !noalias !26 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %.482
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !9, !noalias !26 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %.483
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !9, !noalias !26 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.472, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %.472, i64 56
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !9, !noalias !26
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ej = load <2 x float>, ptr %.472, align 4, !tbaa !9, !noalias !26 ; 3 uses
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.el = insertelement <4 x float> %i.ek, float 0.000000e+00, i64 3
  %i.em = insertelement <4 x float> %i.el, float %i.dd, i64 0
  %i.en = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ek, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.eo = insertelement <4 x float> %i.en, float %i.dk, i64 1
  %i.ep = insertelement <4 x float> %i.eo, float %i.dq, i64 2
  %i.eq = fmul <4 x float> %i.em, %i.ep
  %i.er = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.db, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.di, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.do, i64 2 ; 3 uses
  %i.eu = shufflevector <2 x float> %i.ej, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.eu, <4 x float> %i.eq)
  %i.ew = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dg, i64 0
  %i.ex = insertelement <4 x float> %i.ew, float %i.dm, i64 1
  %i.ey = insertelement <4 x float> %i.ex, float %i.ds, i64 2 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.fa = load <2 x float>, ptr %i.dt, align 4, !tbaa !9, !noalias !26 ; 3 uses
  %i.fb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dd, i64 0
  %i.fc = insertelement <4 x float> %i.fb, float %i.dk, i64 1
  %i.fd = insertelement <4 x float> %i.fc, float %i.dq, i64 2 ; 2 uses
  %i.fe = shufflevector <2 x float> %i.fa, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ff = fmul <4 x float> %i.fd, %i.fe
  %i.fg = shufflevector <2 x float> %i.fa, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.fg, <4 x float> %i.ff)
  %i.fi = load <2 x float>, ptr %i.ef, align 4, !tbaa !9, !noalias !26
  %i.fj = load <2 x float>, ptr %i.de, align 4, !tbaa !9, !noalias !26 ; 3 uses
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.fl, <4 x float> %i.ev)
  %i.fn = load <2 x float>, ptr %i.du, align 4, !tbaa !9, !noalias !26 ; 3 uses
  %i.fo = shufflevector <2 x float> %i.fj, <2 x float> %i.fn, <2 x i32> <i32 0, i32 2>
  %i.fp = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x float> %i.fo, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = shufflevector <2 x float> %i.ej, <2 x float> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ft, <2 x float> %i.fu, <2 x float> %i.fr)
  %i.fw = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = shufflevector <2 x float> %i.fj, <2 x float> %i.fn, <2 x i32> <i32 1, i32 3>
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fy, <2 x float> %i.fv)
  %i.ga = fadd <2 x float> %i.fi, %i.fz
  %i.gb = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.gc, <4 x float> %i.fh)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.gf = load <2 x float>, ptr %i.dv, align 4, !tbaa !9, !noalias !26 ; 3 uses
  %i.gg = load float, ptr %i.dw, align 4, !tbaa !9, !noalias !26
  %i.gh = shufflevector <2 x float> %i.gf, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.gi = fmul <4 x float> %i.fd, %i.gh
  %i.gj = shufflevector <2 x float> %i.gf, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.gj, <4 x float> %i.gi)
  %i.gl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.dy, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.gm, <4 x float> %i.gk)
  %i.go = fmul float %i.gg, %i.ec
  %i.gp = extractelement <2 x float> %i.gf, i64 0
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.gp, float %i.go)
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.ee, float %i.dy, float %i.gq)
  %i.gs = fadd float %i.gr, %i.eh
  %.sroa.3.12.vec.insert.i4.i.i46 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gs, i64 0
  store <4 x float> %i.fm, ptr %i.ei, align 8
  store <4 x float> %i.gd, ptr %i.ez, align 8
  store <4 x float> %i.gn, ptr %i.ge, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 960
  store <2 x float> %i.ga, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 968
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i46, ptr %i.gu, align 8, !tbaa !31
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !tbaa.struct !32
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gz, ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !tbaa.struct !32
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 880
  %3 = load <4 x float>, ptr %i.gv, align 8       ; 3 uses
  %.sroa.0.0.vec.insert.i = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.hc = load float, ptr %i.ha, align 8, !tbaa !9 ; 4 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.hc, i64 1
  %i.hd = load float, ptr %i.hb, align 8, !tbaa !9 ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hd, i64 0
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 976
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.he, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 984
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.411.0..sroa_idx, align 8, !tbaa !31
  %brmerge = select i1 %i.c, i1 true, i1 %i.f
  br i1 %brmerge, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.hf = load float, ptr %i.gz, align 8, !tbaa !9
  %i.hg = load float, ptr %i.gx, align 8, !tbaa !9 ; 2 uses
  %i.hh = fsub float %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 1012
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.hk = load <2 x float>, ptr %i.hi, align 4, !tbaa !9
  %i.hl = load <2 x float>, ptr %i.hj, align 4, !tbaa !9 ; 2 uses
  %i.hm = fsub <2 x float> %i.hk, %i.hl
  %i.hn = extractelement <2 x float> %i.hl, i64 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ho = load float, ptr %i.gx, align 8, !tbaa !9 ; 2 uses
  %i.hp = load float, ptr %i.gz, align 8, !tbaa !9
  %i.hq = fsub float %i.ho, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 1012
  %i.ht = load <2 x float>, ptr %i.hr, align 4, !tbaa !9 ; 2 uses
  %i.hu = load <2 x float>, ptr %i.hs, align 4, !tbaa !9
  %i.hv = fsub <2 x float> %i.ht, %i.hu
  %i.hw = extractelement <2 x float> %i.ht, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink458 = phi float [ %i.hq, %bb.c ], [ %i.hh, %bb.b ] ; 3 uses
  %i.hx = phi float [ %i.hw, %bb.c ], [ %i.hn, %bb.b ]
  %i.hy = phi float [ %i.ho, %bb.c ], [ %i.hg, %bb.b ]
  %i.hz = phi <2 x float> [ %i.hv, %bb.c ], [ %i.hm, %bb.b ] ; 6 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.ia = load float, ptr %.in, align 8, !tbaa !9
  %.sroa.0.0.vec.insert.i62 = insertelement <2 x float> poison, float %.sink458, i64 0 ; 2 uses
  %i.ib = shufflevector <2 x float> %.sroa.0.0.vec.insert.i62, <2 x float> %i.hz, <2 x i32> <i32 0, i32 2>
  %i.ic = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.hz, <2 x i32> <i32 3, i32 1>
  %4 = extractelement <4 x float> %3, i64 2
  %5 = extractelement <4 x float> %3, i64 0       ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store <2 x float> %i.ib, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store <2 x float> %i.ic, ptr %i.ie, align 8, !tbaa !31
  %i.if = extractelement <2 x float> %i.hz, i64 0 ; 2 uses
  %i.ig = fmul float %i.hc, %i.if
  %i.ih = tail call float @llvm.fmuladd.f32(float %5, float %.sink458, float %i.ig)
  %i.ii = extractelement <2 x float> %i.hz, i64 1 ; 2 uses
  %i.ij = tail call noundef float @llvm.fmuladd.f32(float %i.hd, float %i.ii, float %i.ih) ; 3 uses
  %i.ik = fmul float %5, %i.ij
  %i.il = fmul float %i.hc, %i.ij
  %i.im = fmul float %i.hd, %i.ij
  %i.in = fadd float %i.hy, %i.ik
  %i.io = fadd float %i.hx, %i.il
  %i.ip = fadd float %i.im, %i.ia
  %.sroa.0.0.vec.insert.i67 = insertelement <2 x float> poison, float %i.in, i64 0
  %.sroa.0.4.vec.insert.i68 = insertelement <2 x float> %.sroa.0.0.vec.insert.i67, float %i.io, i64 1
  %.sroa.3.12.vec.insert.i69 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ip, i64 0
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store <2 x float> %.sroa.0.4.vec.insert.i68, ptr %i.iq, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store <2 x float> %.sroa.3.12.vec.insert.i69, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !31
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.iu = load float, ptr %i.is, align 4, !tbaa !9
  %i.iv = load float, ptr %i.it, align 4, !tbaa !9
  %i.iw = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %i.iu, i64 1
  %i.iy = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.ix, %i.iy
  %i.ja = shufflevector <2 x float> %.sroa.0.0.vec.insert.i62, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ja, <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.iz)
  %i.jc = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jd = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.je = insertelement <2 x float> %i.jd, float %i.iv, i64 1
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> %i.je, <2 x float> %i.jb)
  store <2 x float> %i.jf, ptr %i.ir, align 8, !tbaa !9
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ji = load float, ptr %i.jg, align 8, !tbaa !9
  %i.jj = load float, ptr %i.jh, align 8, !tbaa !9
  %i.jk = fmul float %i.ji, %i.if
  %i.jl = tail call float @llvm.fmuladd.f32(float %.sink458, float %4, float %i.jk)
  %i.jm = tail call noundef float @llvm.fmuladd.f32(float %i.ii, float %i.jj, float %i.jl)
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store float %i.jm, ptr %i.jn, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, i1 noundef zeroext %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  %i.a = zext i1 %5 to i8
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr noundef nonnull align 8 dereferenceable(744) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV18btSliderConstraint, i64 16), ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 156
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 172
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i8 %i.a, ptr %i.q, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <4 x float> <float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.r, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 0.000000e+00, float 0.000000e+00>, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 0.000000e+00, float 0.000000e+00>, ptr %i.t, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.u, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.v, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 256
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.w, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 0.000000e+00>, ptr %i.x, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i8 0, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store <2 x float> zeroinitializer, ptr %i.aa, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1148
  store float 0.000000e+00, ptr %i.ab, align 4, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 324
  store i32 0, ptr %i.ac, align 4, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.z, i8 0, i64 13, i1 false)
  store i8 1, ptr %i.ad, align 1, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25, !nonnull !26, !align !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28, !nonnull !26, !align !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  tail call void @_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 4 dereferenceable(64) %i.ag, ptr noundef nonnull align 4 dereferenceable(64) %i.aj)
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(744), ptr noundef nonnull align 8 dereferenceable(744)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraintC2ER11btRigidBodyRK11btTransformb(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef nonnull align 8 dereferenceable(744) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  %i.a = zext i1 %3 to i8
  %i.b = tail call noundef nonnull align 8 dereferenceable(744) ptr @_ZN17btTypedConstraint12getFixedBodyEv()
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(744) %i.b, ptr noundef nonnull align 8 dereferenceable(744) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTV18btSliderConstraint, i64 16), ptr %0, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i8 %i.a, ptr %i.k, align 4, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load float, ptr %i.y, align 8, !tbaa !9, !noalias !36 ; 2 uses
  %i.aa = load float, ptr %i.i, align 4, !tbaa !9, !noalias !41 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !9, !noalias !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !9, !noalias !41 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !9, !noalias !41
  %i.ai = load <2 x float>, ptr %i.m, align 8, !tbaa !9, !noalias !36 ; 4 uses
  %i.aj = load <2 x float>, ptr %i.d, align 4, !tbaa !9, !noalias !36 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.f, align 4, !tbaa !9, !noalias !36 ; 3 uses
  %i.al = load <2 x float>, ptr %i.h, align 4, !tbaa !9, !noalias !36 ; 2 uses
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %i.ai, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.an = insertelement <4 x float> %i.am, float 0.000000e+00, i64 3
  %i.ao = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ap = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ao, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.aq = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.as = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = insertelement <4 x float> %i.as, float 0.000000e+00, i64 3
  %i.au = shufflevector <2 x float> %i.ai, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.av = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aw = insertelement <4 x float> %i.av, float 0.000000e+00, i64 3
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ay = load <2 x float>, ptr %i.u, align 8, !tbaa !9, !noalias !36 ; 3 uses
  %i.az = load <2 x float>, ptr %i.p, align 8, !tbaa !9, !noalias !36 ; 2 uses
  %i.ba = load float, ptr %i.s, align 4, !tbaa !9, !noalias !36
  %i.bb = load <2 x float>, ptr %i.o, align 8, !tbaa !9, !noalias !36 ; 2 uses
  %i.bc = load float, ptr %i.r, align 4, !tbaa !9, !noalias !36
  %i.bd = load <2 x float>, ptr %i.q, align 8, !tbaa !9, !noalias !36 ; 2 uses
  %i.be = load float, ptr %i.t, align 4, !tbaa !9, !noalias !36
  %i.bf = load <2 x float>, ptr %i.af, align 8, !tbaa !9, !noalias !41
  %i.bg = load <2 x float>, ptr %i.n, align 4, !tbaa !9, !noalias !36 ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bj = load <2 x float>, ptr %i.v, align 4, !tbaa !9, !noalias !36 ; 3 uses
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> %i.bj, <2 x i32> <i32 0, i32 2>
  %i.bl = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bk, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = shufflevector <2 x float> %i.ai, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bq, <2 x float> %i.bn)
  %i.bs = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = shufflevector <2 x float> %i.bg, <2 x float> %i.bj, <2 x i32> <i32 1, i32 3>
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bu, <2 x float> %i.br)
  %i.bw = fadd <2 x float> %i.bf, %i.bv
  %i.bx = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.ar, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bz = fmul <4 x float> %i.an, %i.by
  %i.ca = shufflevector <2 x float> %i.bb, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.at, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.au, <4 x float> %i.bz)
  %i.cd = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.aw, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.bi, <4 x float> %i.cc)
  %i.cg = shufflevector <2 x float> %i.ay, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ch = shufflevector <2 x float> %i.ak, <2 x float> %i.az, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float 1.000000e+00, i64 3 ; 2 uses
  %i.cj = fmul <4 x float> %i.cg, %i.ci
  %i.ck = shufflevector <2 x float> %i.aj, <2 x float> %i.bb, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cl = insertelement <4 x float> %i.ck, float 0.000000e+00, i64 3 ; 2 uses
  %i.cm = shufflevector <2 x float> %i.ay, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.cm, <4 x float> %i.cj)
  %i.co = shufflevector <2 x float> %i.al, <2 x float> %i.bd, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float 0.000000e+00, i64 3 ; 2 uses
  %i.cq = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cr, <4 x float> %i.cn)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cu = load <2 x float>, ptr %i.w, align 8, !tbaa !9, !noalias !36 ; 4 uses
  %i.cv = load float, ptr %i.x, align 4, !tbaa !9, !noalias !36
  %i.cw = fmul float %i.cv, %i.ac
  %i.cx = extractelement <2 x float> %i.cu, i64 0
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.cx, float %i.cw)
  %i.cz = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.z, float %i.cy)
  %i.da = fadd float %i.cz, %i.ah
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.da, i64 0
  %i.db = shufflevector <2 x float> %i.cu, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.dc = insertelement <4 x float> %i.db, float 0.000000e+00, i64 3
  %i.dd = insertelement <4 x float> %i.dc, float %i.ba, i64 2
  %i.de = shufflevector <2 x float> %i.cu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.df = shufflevector <4 x float> %i.ci, <4 x float> %i.de, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
end_hunk_0
begin_hunk_1_@_ZN18btSliderConstraint13testAngLimitsEv:bb.a
bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN18btSliderConstraint13testLinLimitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1152) initializes((320, 321), (1104, 1108)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 5 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !9  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store float %i.c, ptr %i.d, align 8, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load float, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.h = load float, ptr %i.g, align 4, !tbaa !53 ; 3 uses
  %i.i = fcmp ugt float %i.f, %i.h
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp ogt float %i.c, %i.h
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = fsub float %i.c, %i.h
  store float %i.k, ptr %i.b, align 8, !tbaa !9
  store i8 1, ptr %i.a, align 8, !tbaa !50
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = fcmp olt float %i.c, %i.f
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = fsub float %i.c, %i.f
  store float %i.m, ptr %i.b, align 8, !tbaa !9
  store i8 1, ptr %i.a, align 8, !tbaa !50
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !9
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1152) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  store i32 6, ptr %1, align 4, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25, !nonnull !26, !align !27 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28, !nonnull !26, !align !27 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 420
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 452
  %i.j = load float, ptr %i.i, align 4, !tbaa !56
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 452
  %i.l = load float, ptr %i.k, align 4, !tbaa !56
  tail call void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, float noundef %i.j, float noundef %i.l)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, float noundef %6, float noundef %7) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !69   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.f = load i8, ptr %i.e, align 4, !tbaa !29, !range !30, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, float 1.000000e+00, float -1.000000e+00 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.k = load float, ptr %i.i, align 8, !tbaa !9
  %i.l = load float, ptr %i.j, align 8, !tbaa !9
  %i.m = fsub float %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 964 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 900 ; 2 uses
  %i.p = load <2 x float>, ptr %i.n, align 4, !tbaa !9
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !9
  %i.r = fsub <2 x float> %i.p, %i.q              ; 2 uses
  %i.s = fcmp olt float %6, f0x34000000
  %i.t = fcmp olt float %7, f0x34000000
  %i.u = or i1 %i.s, %i.t                         ; 2 uses
  %i.v = fadd float %6, %7                        ; 2 uses
  %i.w = fcmp ogt float %i.v, 0.000000e+00
  %i.x = fdiv float %7, %i.v
  %storemerge = select i1 %i.w, float %i.x, float 5.000000e-01 ; 15 uses
  %i.y = fsub float 1.000000e+00, %storemerge     ; 15 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ab = load float, ptr %i.a, align 8, !tbaa !9 ; 4 uses
  %i.ac = load float, ptr %i.z, align 8, !tbaa !9 ; 4 uses
  %i.ad = load float, ptr %i.aa, align 8, !tbaa !9 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ag = load float, ptr %i.b, align 8, !tbaa !9 ; 3 uses
  %i.ah = load float, ptr %i.ae, align 8, !tbaa !9 ; 3 uses
  %i.ai = load float, ptr %i.af, align 8, !tbaa !9 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !24, !range !30, !noundef !26
  %i.al = trunc nuw i8 %i.ak to i1                ; 3 uses
  br i1 %i.al, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.am = fmul float %storemerge, %i.ab
  %i.an = fmul float %storemerge, %i.ac
  %i.ao = fmul float %storemerge, %i.ad
  %i.ap = fmul float %i.y, %i.ag
  %i.aq = fmul float %i.y, %i.ah
  %i.ar = fmul float %i.y, %i.ai
  %i.as = fadd float %i.am, %i.ap                 ; 3 uses
  %i.at = fadd float %i.an, %i.aq                 ; 3 uses
  %i.au = fadd float %i.ao, %i.ar                 ; 3 uses
  %i.av = fmul float %i.at, %i.at
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.as, float %i.as, float %i.av)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.au, float %i.aw)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ax)
  %i.ay = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.az = fmul float %i.as, %i.ay                 ; 6 uses
  %i.ba = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bb = fmul float %i.at, %i.ay                 ; 7 uses
  %.sroa.0822.4.vec.insert = insertelement <2 x float> %i.ba, float %i.bb, i64 1
  %i.bc = fmul float %i.au, %i.ay                 ; 7 uses
  %.sroa.49.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  %i.bd = tail call noundef float @llvm.fabs.f32(float %i.bc)
  %i.be = fcmp ogt float %i.bd, f0x3F3504F3
  br i1 %i.be, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bf = fmul nnan float %i.bc, %i.bc
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.bf) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bg)
  %i.bh = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.bi = fneg float %i.bc
  %i.bj = fmul float %i.bh, %i.bi                 ; 2 uses
  %.sroa.01139.4.vec.insert1157 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bj, i64 1
  %i.bk = fmul float %i.bb, %i.bh                 ; 2 uses
  %.sroa.25.8.vec.insert1174 = insertelement <2 x float> <float poison, float undef>, float %i.bk, i64 0
  %i.bl = fmul float %i.bg, %i.bh
  %.sroa.01104.0.vec.insert1106 = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bm = fneg float %i.az
  %i.bn = fmul float %i.bk, %i.bm
  %.sroa.01104.4.vec.insert1118 = insertelement <2 x float> %.sroa.01104.0.vec.insert1106, float %i.bn, i64 1
  %i.bo = fmul float %i.az, %i.bj
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

bb.d:                                             ; preds = %bb.b
  %i.bp = fmul float %i.bb, %i.bb
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bp) ; 2 uses
  %sqrt43.i = tail call float @llvm.sqrt.f32(float %i.bq)
  %i.br = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.bs = fneg float %i.bb
  %i.bt = fmul float %i.br, %i.bs                 ; 2 uses
  %.sroa.01139.0.vec.insert = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bu = fmul float %i.az, %i.br                 ; 2 uses
  %.sroa.01139.4.vec.insert = insertelement <2 x float> %.sroa.01139.0.vec.insert, float %i.bu, i64 1
  %i.bv = fneg float %i.bc
  %i.bw = fmul float %i.bu, %i.bv
  %.sroa.01104.0.vec.insert = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.bx = fmul float %i.bc, %i.bt
  %.sroa.01104.4.vec.insert = insertelement <2 x float> %.sroa.01104.0.vec.insert, float %i.bx, i64 1
  %i.by = fmul float %i.bq, %i.br
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit:   ; preds = %bb.c, %bb.d
  %.sroa.25.0 = phi <2 x float> [ %.sroa.25.8.vec.insert1174, %bb.c ], [ <float 0.000000e+00, float undef>, %bb.d ]
  %.sroa.01139.0 = phi <2 x float> [ %.sroa.01139.4.vec.insert1157, %bb.c ], [ %.sroa.01139.4.vec.insert, %bb.d ]
  %.sroa.01104.0 = phi <2 x float> [ %.sroa.01104.4.vec.insert1118, %bb.c ], [ %.sroa.01104.4.vec.insert, %bb.d ]
  %.sink.i = phi float [ %i.bo, %bb.c ], [ %i.by, %bb.d ]
  %.sroa.20.8.vec.insert = insertelement <2 x float> <float poison, float undef>, float %.sink.i, i64 0
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.sroa.3.12.vec.insert.i450 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  %.sroa.0.0.vec.insert.i448 = insertelement <2 x float> poison, float %i.ab, i64 0
  %.sroa.0.4.vec.insert.i449 = insertelement <2 x float> %.sroa.0.0.vec.insert.i448, float %i.ac, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.vec.insert.i478 = load <2 x float>, ptr %i.bz, align 4
  %i.cc = load float, ptr %i.ca, align 4, !tbaa !9
  %.sroa.0.4.vec.insert.i479 = insertelement <2 x float> %.sroa.0.0.vec.insert.i478, float %i.cc, i64 1
  %i.cd = load float, ptr %i.cb, align 4, !tbaa !9
  %.sroa.3.12.vec.insert.i480 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cd, i64 0
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 888
  %.sroa.0.0.vec.insert.i483 = load <2 x float>, ptr %i.ce, align 8
  %i.ch = load float, ptr %i.cf, align 8, !tbaa !9
  %.sroa.0.4.vec.insert.i484 = insertelement <2 x float> %.sroa.0.0.vec.insert.i483, float %i.ch, i64 1
  %i.ci = load float, ptr %i.cg, align 8, !tbaa !9
  %.sroa.3.12.vec.insert.i485 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ci, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  %.sroa.25.1 = phi <2 x float> [ %.sroa.25.0, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.3.12.vec.insert.i480, %bb.e ] ; 4 uses
  %.sroa.01139.1 = phi <2 x float> [ %.sroa.01139.0, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.0.4.vec.insert.i479, %bb.e ] ; 8 uses
  %.sroa.20.0 = phi <2 x float> [ %.sroa.20.8.vec.insert, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.3.12.vec.insert.i485, %bb.e ] ; 5 uses
  %.sroa.01104.1 = phi <2 x float> [ %.sroa.01104.0, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.0.4.vec.insert.i484, %bb.e ] ; 8 uses
  %.sroa.0822.0 = phi <2 x float> [ %.sroa.0822.4.vec.insert, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.0.4.vec.insert.i449, %bb.e ] ; 13 uses
  %.sroa.49.0 = phi <2 x float> [ %.sroa.49.8.vec.insert, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.3.12.vec.insert.i450, %bb.e ] ; 6 uses
  %.sroa.01139.0.vec.extract = extractelement <2 x float> %.sroa.01139.1, i64 0
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !72 ; 15 uses
  %.sroa.01139.4.vec.extract = extractelement <2 x float> %.sroa.01139.1, i64 1 ; 2 uses
  store <2 x float> %.sroa.01139.1, ptr %i.ck, align 4, !tbaa !9
  %.sroa.25.8.vec.extract = extractelement <2 x float> %.sroa.25.1, i64 0 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %.sroa.25.8.vec.extract, ptr %i.cl, align 4, !tbaa !9
  %.sroa.01104.0.vec.extract = extractelement <2 x float> %.sroa.01104.1, i64 0 ; 2 uses
  %i.cm = sext i32 %i.d to i64                    ; 4 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cm
  store float %.sroa.01104.0.vec.extract, ptr %i.cn, align 4, !tbaa !9
  %.sroa.01104.4.vec.extract = extractelement <2 x float> %.sroa.01104.1, i64 1 ; 2 uses
  %i.co = add nsw i32 %i.d, 1
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cp
  store float %.sroa.01104.4.vec.extract, ptr %i.cq, align 4, !tbaa !9
  %.sroa.20.8.vec.extract = extractelement <2 x float> %.sroa.20.0, i64 0 ; 2 uses
  %i.cr = add nsw i32 %i.d, 2
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cs
  store float %.sroa.20.8.vec.extract, ptr %i.ct, align 4, !tbaa !9
  %i.cu = fneg float %.sroa.01139.0.vec.extract   ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !73 ; 18 uses
  store float %i.cu, ptr %i.cw, align 4, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = fneg float %.sroa.25.8.vec.extract      ; 3 uses
  %i.cz = fneg float %.sroa.01139.4.vec.extract   ; 3 uses
  store float %i.cz, ptr %i.cx, align 4, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store float %i.cy, ptr %i.da, align 4, !tbaa !9
  %i.db = fneg float %.sroa.01104.0.vec.extract   ; 3 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cm
  store float %i.db, ptr %i.dc, align 4, !tbaa !9
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cp
  %i.de = shufflevector <2 x float> %.sroa.01104.1, <2 x float> %.sroa.20.0, <2 x i32> <i32 1, i32 2>
  %i.df = fneg <2 x float> %i.de                  ; 4 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0
  store float %i.dg, ptr %i.dd, align 4, !tbaa !9
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cs
  %i.di = extractelement <2 x float> %i.df, i64 1
  store float %i.di, ptr %i.dh, align 4, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 4 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !23 ; 6 uses
  %i.dl = and i32 %i.dk, 128
  %.not = icmp eq i32 %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !74 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !75
  %i.dq = fmul float %i.dn, %i.dp
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.dr = phi float [ %i.dq, %bb.g ], [ %i.dn, %bb.f ]
  %i.ds = load float, ptr %1, align 8, !tbaa !76
  %i.dt = fmul float %i.dr, %i.ds
  %i.du = fneg float %i.ah
  %i.dv = fmul float %i.ad, %i.du
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ai, float %i.dv)
  %i.dx = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.ag, i64 1
  %i.dz = fneg <2 x float> %i.dy
  %i.ea = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.ac, i64 1
  %i.ec = fmul <2 x float> %i.eb, %i.dz
  %i.ed = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.ab, i64 1
  %i.ef = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.ah, i64 1
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.eg, <2 x float> %i.ec) ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !77 ; 7 uses
  %i.ek = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <2 x float> %.sroa.01139.1, <2 x float> %.sroa.01104.1, <2 x i32> <i32 1, i32 3>
  %i.em = fmul <2 x float> %i.ek, %i.el
  %i.en = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = shufflevector <2 x float> %.sroa.01139.1, <2 x float> %.sroa.01104.1, <2 x i32> <i32 0, i32 2>
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eo, <2 x float> %i.ep, <2 x float> %i.em)
  %i.er = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.es = shufflevector <2 x float> %.sroa.25.1, <2 x float> %.sroa.20.0, <2 x i32> <i32 0, i32 2>
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.es, <2 x float> %i.eq)
  %i.eu = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.et, %i.ev           ; 2 uses
  %i.ex = extractelement <2 x float> %i.ew, i64 0
  store float %i.ex, ptr %i.ej, align 4, !tbaa !9
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.cm
  %i.ez = extractelement <2 x float> %i.ew, i64 1
  store float %i.ez, ptr %i.ey, align 4, !tbaa !9
  %i.fa = and i32 %i.dk, 64
  %.not435 = icmp eq i32 %i.fa, 0
  br i1 %.not435, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !78 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !79 ; 2 uses
  store float %i.fc, ptr %i.fe, align 4, !tbaa !9
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.cm
  store float %i.fc, ptr %i.ff, align 4, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.5787.48.copyload = load float, ptr %i.fg, align 4 ; 2 uses
  %.sroa.8789.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.fh = load <2 x float>, ptr %.sroa.8789.48..sroa_idx, align 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.5782.48.copyload = load float, ptr %i.fi, align 4 ; 2 uses
  %.sroa.8.48..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.fj = load <2 x float>, ptr %.sroa.8.48..sroa_idx, align 4 ; 2 uses
  %i.fk = shl i32 %i.d, 1                         ; 3 uses
  %i.fl = mul i32 %i.d, 3                         ; 3 uses
  br i1 %i.al, label %bb.k, label %.preheader1001.preheader

bb.k:                                             ; preds = %bb.j
  %i.fm = load float, ptr %i.i, align 8, !tbaa !9
  %.sroa.0822.0.vec.extract833 = extractelement <2 x float> %.sroa.0822.0, i64 0 ; 2 uses
  %.sroa.49.8.vec.extract917 = extractelement <2 x float> %.sroa.49.0, i64 0
  %8 = load <4 x float>, ptr %i.j, align 8
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.fo = load float, ptr %i.fn, align 8, !tbaa !51
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.fq = load float, ptr %i.fp, align 8, !tbaa !9
  %i.fr = fsub float %i.fo, %i.fq                 ; 2 uses
  %i.fs = shufflevector <2 x float> %.sroa.0822.0, <2 x float> %.sroa.49.0, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.ft = load <2 x float>, ptr %i.o, align 4, !tbaa !9
  %i.fu = fsub <2 x float> %i.ft, %i.fh           ; 3 uses
  %i.fv = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fs, %i.fw
  %i.fy = fmul float %.sroa.0822.0.vec.extract833, %i.fr
  %i.fz = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gb = load <2 x float>, ptr %i.n, align 4, !tbaa !9
  %i.gc = fsub <2 x float> %i.gb, %i.fj           ; 3 uses
  %i.gd = insertelement <2 x float> %9, float %i.fm, i64 1
  %i.ge = insertelement <2 x float> poison, float %.sroa.5787.48.copyload, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %.sroa.5782.48.copyload, i64 1
  %i.gg = fsub <2 x float> %i.gd, %i.gf           ; 3 uses
  %i.gh = shufflevector <2 x float> %.sroa.0822.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gi = shufflevector <2 x float> %i.fu, <2 x float> %i.gc, <2 x i32> <i32 0, i32 2>
  %i.gj = fmul <2 x float> %i.gh, %i.gi
  %i.gk = shufflevector <2 x float> %.sroa.0822.0, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.gk, <2 x float> %i.gj)
  %i.gm = shufflevector <2 x float> %i.fu, <2 x float> %i.gc, <2 x i32> <i32 1, i32 3>
  %i.gn = shufflevector <2 x float> %.sroa.49.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.gn, <2 x float> %i.gl) ; 3 uses
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fmul <2 x float> %i.fs, %i.gp           ; 2 uses
  %i.gr = fsub <2 x float> %i.fu, %i.gq           ; 3 uses
  %i.gs = fmul <2 x float> %i.gk, %i.go           ; 4 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 0
  %foldExtExtBinop = fsub <2 x float> %i.gg, %i.gs
  %i.gu = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.gv = fadd <2 x float> %i.gq, %i.fx
  %i.gw = fadd float %i.gt, %i.fy
  %i.gx = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gy = fmul <2 x float> %i.fs, %i.gx           ; 2 uses
  %i.gz = fsub <2 x float> %i.gc, %i.gy           ; 3 uses
  %i.ha = extractelement <2 x float> %i.gs, i64 1
  %foldExtExtBinop1211 = fsub <2 x float> %i.gg, %i.gs
  %i.hb = extractelement <2 x float> %foldExtExtBinop1211, i64 1 ; 2 uses
  %i.hc = fsub <2 x float> %i.gv, %i.gy           ; 2 uses
  %i.hd = fsub float %i.gw, %i.ha                 ; 2 uses
  %i.he = fmul <2 x float> %i.ga, %i.hc
  %i.hf = fmul float %storemerge, %i.hd
  %i.hg = fadd <2 x float> %i.gr, %i.he           ; 7 uses
  %i.hh = fadd float %i.gu, %i.hf                 ; 5 uses
  %.sroa.0.0.vec.insert.i543 = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hi = shufflevector <2 x float> %.sroa.0.0.vec.insert.i543, <2 x float> %i.hg, <2 x i32> <i32 0, i32 2>
  %i.hj = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.hg, <2 x i32> <i32 3, i32 1>
  %i.hk = insertelement <2 x float> poison, float %i.y, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hm = fmul <2 x float> %i.hl, %i.hc
  %i.hn = fmul float %i.y, %i.hd
  %i.ho = fsub <2 x float> %i.gz, %i.hm           ; 8 uses
  %i.hp = fsub float %i.hb, %i.hn                 ; 5 uses
  %.sroa.0.0.vec.insert.i553 = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.hq = shufflevector <2 x float> %.sroa.0.0.vec.insert.i553, <2 x float> %i.ho, <2 x i32> <i32 0, i32 2>
  %i.hr = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ho, <2 x i32> <i32 3, i32 1>
  %i.hs = fmul float %storemerge, %i.hb
  %i.ht = extractelement <2 x float> %i.gz, i64 0
  %i.hu = fmul float %storemerge, %i.ht
  %i.hv = extractelement <2 x float> %i.gz, i64 1
  %i.hw = fmul float %storemerge, %i.hv
  %i.hx = fmul float %i.y, %i.gu
  %i.hy = extractelement <2 x float> %i.gr, i64 0
  %i.hz = fmul float %i.y, %i.hy
  %i.ia = extractelement <2 x float> %i.gr, i64 1
  %i.ib = fmul float %i.y, %i.ia
  %i.ic = fadd float %i.hs, %i.hx                 ; 3 uses
  %i.id = fadd float %i.hu, %i.hz                 ; 3 uses
  %i.ie = fadd float %i.hw, %i.ib                 ; 3 uses
  %i.if = fmul float %i.id, %i.id
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.ic, float %i.if)
  %i.ih = tail call noundef float @llvm.fmuladd.f32(float %i.ie, float %i.ie, float %i.ig) ; 2 uses
  %i.ii = fcmp ogt float %i.ih, f0x34000000
  br i1 %i.ii, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ih)
  %i.ij = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ik = fmul float %i.ic, %i.ij
  %i.il = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.im = fmul float %i.id, %i.ij
  %.sroa.01139.4.vec.insert1162 = insertelement <2 x float> %i.il, float %i.im, i64 1
  %i.in = fmul float %i.ie, %i.ij
  br label %.preheader995.preheader

bb.m:                                             ; preds = %bb.k
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 884
  %.sroa.0.0.vec.insert.i573 = load <2 x float>, ptr %i.io, align 4
  %i.ir = load float, ptr %i.ip, align 4, !tbaa !9
  %.sroa.0.4.vec.insert.i574 = insertelement <2 x float> %.sroa.0.0.vec.insert.i573, float %i.ir, i64 1
  %i.is = load float, ptr %i.iq, align 4, !tbaa !9
  br label %.preheader995.preheader

.preheader995.preheader:                          ; preds = %bb.m, %bb.l
  %.sink = phi float [ %i.is, %bb.m ], [ %i.in, %bb.l ] ; 5 uses
  %.sroa.01139.2 = phi <2 x float> [ %.sroa.0.4.vec.insert.i574, %bb.m ], [ %.sroa.01139.4.vec.insert1162, %bb.l ] ; 6 uses
  %.sroa.3.12.vec.insert.i575 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink, i64 0
  %.sroa.01139.4.vec.extract1164 = extractelement <2 x float> %.sroa.01139.2, i64 1 ; 2 uses
  %.sroa.01139.0.vec.extract1148 = extractelement <2 x float> %.sroa.01139.2, i64 0
  %i.it = sext i32 %i.fk to i64                   ; 5 uses
  %i.iu = shl nsw i64 %i.it, 2                    ; 2 uses
  %scevgep1027 = getelementptr i8, ptr %i.ck, i64 %i.iu ; 2 uses
  %.sroa.15.0.scevgep1027.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep1027, i64 8
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.it
  %i.iw = add nsw i64 %i.it, 2                    ; 2 uses
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.iw
  %i.iy = fneg <2 x float> %.sroa.01139.2         ; 6 uses
  %i.iz = fneg float %.sink                       ; 4 uses
  %i.ja = fmul <2 x float> %i.fs, %i.iy
  %i.jb = fmul float %.sroa.0822.0.vec.extract833, %i.iz
  %i.jc = shufflevector <2 x float> %.sroa.01139.2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jd = insertelement <2 x float> %i.jc, float %.sink, i64 1
  %i.je = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.0822.0, <2 x float> %i.jd, <2 x float> %i.ja) ; 6 uses
  %i.jf = tail call float @llvm.fmuladd.f32(float %.sroa.49.8.vec.extract917, float %.sroa.01139.0.vec.extract1148, float %i.jb) ; 4 uses
  %i.jg = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i579 = insertelement <2 x float> %i.jg, float %i.jf, i64 1 ; 2 uses
  %i.jh = insertelement <2 x float> %i.je, float 0.000000e+00, i64 1
  %i.ji = extractelement <2 x float> %i.hg, i64 1 ; 2 uses
  %i.jj = extractelement <2 x float> %i.iy, i64 1 ; 2 uses
  %i.jk = extractelement <2 x float> %i.hg, i64 0
  %i.jl = fmul float %i.hh, %i.iz
  %i.jm = fmul float %i.ji, %i.jj
  %i.jn = insertelement <2 x float> %i.jc, float %.sink, i64 0 ; 2 uses
  %i.jo = insertelement <2 x float> poison, float %i.jm, i64 0
  %i.jp = insertelement <2 x float> %i.jo, float %i.jl, i64 1
  %i.jq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.jn, <2 x float> %i.jp)
  %i.jr = extractelement <2 x float> %i.iy, i64 0
  %foldExtExtBinop1213 = fmul <2 x float> %i.hg, %i.iy
  %i.js = extractelement <2 x float> %foldExtExtBinop1213, i64 0
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.hh, float %.sroa.01139.4.vec.extract1164, float %i.js)
  %i.ju = extractelement <2 x float> %i.ho, i64 0
  %foldExtExtBinop1215 = fmul <2 x float> %i.ho, %i.iy
  %i.jv = extractelement <2 x float> %foldExtExtBinop1215, i64 0
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.hp, float %.sroa.01139.4.vec.extract1164, float %i.jv)
  store <2 x float> %i.jq, ptr %scevgep1027, align 4, !tbaa !9
  store float %i.jt, ptr %.sroa.15.0.scevgep1027.sroa_idx, align 4, !tbaa !9
  %i.jx = fmul float %i.hp, %i.iz
  %foldExtExtBinop1217 = fmul <2 x float> %i.ho, %i.iy
  %i.jy = shufflevector <2 x float> %foldExtExtBinop1217, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jz = insertelement <2 x float> %i.jy, float %i.jx, i64 1
  %i.ka = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.jn, <2 x float> %i.jz)
  %i.kb = fneg <2 x float> %i.ka
  store <2 x float> %i.kb, ptr %i.iv, align 4, !tbaa !9
  %i.kc = fneg float %i.jw
  store float %i.kc, ptr %i.ix, align 4, !tbaa !9
  %i.kd = extractelement <2 x float> %i.je, i64 0 ; 2 uses
  %i.ke = extractelement <2 x float> %i.je, i64 1
  %i.kf = fneg float %i.ke                        ; 3 uses
  %i.kg = fmul float %i.jk, %i.kf
  %i.kh = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.jf, float %i.kg) ; 2 uses
  %.sroa.3.12.vec.insert.i595 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kh, i64 0 ; 3 uses
  %i.ki = fneg float %i.kd                        ; 3 uses
  %i.kj = fneg float %i.jf                        ; 3 uses
  %i.kk = fmul float %i.hh, %i.ki
  %i.kl = fmul float %i.ji, %i.kj
  %i.km = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.kn = insertelement <2 x float> %i.km, float %i.kk, i64 1
  %i.ko = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.je, <2 x float> %i.kn) ; 3 uses
  %i.kp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kq = insertelement <2 x float> %i.kp, float %i.hp, i64 1
  %i.kr = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.ks = insertelement <2 x float> %i.kr, float %i.ki, i64 1
  %i.kt = fmul <2 x float> %i.kq, %i.ks
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.je, <2 x float> %i.kt) ; 3 uses
  %i.kv = fmul float %i.ju, %i.kf
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.hp, float %i.jf, float %i.kv) ; 2 uses
  %.sroa.3.12.vec.insert.i600 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kw, i64 0 ; 3 uses
  br i1 %i.u, label %bb.n, label %.preheader994.preheader

bb.n:                                             ; preds = %.preheader995.preheader
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !46, !range !30, !noundef !26
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.o, label %.preheader994.preheader

bb.o:                                             ; preds = %bb.n
  %i.la = fmul <2 x float> %i.hl, %i.ku
  %i.lb = fmul float %i.y, %i.kw
  %.sroa.17.8.vec.insert1077 = insertelement <2 x float> %.sroa.3.12.vec.insert.i600, float %i.lb, i64 0
  %i.lc = fmul <2 x float> %i.ga, %i.ko
  %i.ld = fmul float %storemerge, %i.kh
  %.sroa.15.8.vec.insert1100 = insertelement <2 x float> %.sroa.3.12.vec.insert.i595, float %i.ld, i64 0
  br label %.preheader994.preheader

.preheader994.preheader:                          ; preds = %bb.o, %bb.n, %.preheader995.preheader
  %.sroa.15.0 = phi <2 x float> [ %.sroa.15.8.vec.insert1100, %bb.o ], [ %.sroa.3.12.vec.insert.i595, %bb.n ], [ %.sroa.3.12.vec.insert.i595, %.preheader995.preheader ]
  %.sroa.01085.0 = phi <2 x float> [ %i.lc, %bb.o ], [ %i.ko, %bb.n ], [ %i.ko, %.preheader995.preheader ]
  %.sroa.17.0 = phi <2 x float> [ %.sroa.17.8.vec.insert1077, %bb.o ], [ %.sroa.3.12.vec.insert.i600, %bb.n ], [ %.sroa.3.12.vec.insert.i600, %.preheader995.preheader ]
  %.sroa.01057.0 = phi <2 x float> [ %i.la, %bb.o ], [ %i.ku, %bb.n ], [ %i.ku, %.preheader995.preheader ]
  %i.le = sext i32 %i.fl to i64                   ; 5 uses
  %i.lf = shl nsw i64 %i.le, 2                    ; 2 uses
  %scevgep1030 = getelementptr i8, ptr %i.ck, i64 %i.lf ; 2 uses
  store <2 x float> %.sroa.01085.0, ptr %scevgep1030, align 4, !tbaa !9
  %.sroa.15.0.scevgep1030.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep1030, i64 8
  %.sroa.15.0.vec.extract1098 = extractelement <2 x float> %.sroa.15.0, i64 0
  store float %.sroa.15.0.vec.extract1098, ptr %.sroa.15.0.scevgep1030.sroa_idx, align 4, !tbaa !9
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.le
  %i.lh = fneg <2 x float> %.sroa.01057.0
  store <2 x float> %i.lh, ptr %i.lg, align 4, !tbaa !9
  %.sroa.17.8.vec.extract1084 = extractelement <2 x float> %.sroa.17.0, i64 0
  %i.li = fneg float %.sroa.17.8.vec.extract1084
  %i.lj = add nsw i64 %i.le, 2                    ; 2 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.lj
  store float %i.li, ptr %i.lk, align 4, !tbaa !9
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !80 ; 3 uses
  %scevgep1033 = getelementptr i8, ptr %i.lm, i64 %i.iu ; 2 uses
  store <2 x float> %.sroa.01139.2, ptr %scevgep1033, align 4, !tbaa !9
  %.sroa.25.0.scevgep1033.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep1033, i64 8
  store float %.sink, ptr %.sroa.25.0.scevgep1033.sroa_idx, align 4, !tbaa !9
  %scevgep1035 = getelementptr i8, ptr %i.lm, i64 %i.lf ; 2 uses
  store <2 x float> %.sroa.0.4.vec.insert.i579, ptr %scevgep1035, align 4, !tbaa !9
  %.sroa.20.0.scevgep1035.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep1035, i64 8
  store float %i.kd, ptr %.sroa.20.0.scevgep1035.sroa_idx, align 4, !tbaa !9
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !81 ; 7 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.it
  store float %i.jr, ptr %i.lp, align 4, !tbaa !9
  %i.lq = getelementptr [4 x i8], ptr %i.lo, i64 %i.it
  %i.lr = getelementptr i8, ptr %i.lq, i64 4
  store float %i.jj, ptr %i.lr, align 4, !tbaa !9
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.iw
  store float %i.iz, ptr %i.ls, align 4, !tbaa !9
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.le
  store float %i.kf, ptr %i.lt, align 4, !tbaa !9
  %i.lu = getelementptr [4 x i8], ptr %i.lo, i64 %i.le
  %i.lv = getelementptr i8, ptr %i.lu, i64 4
  store float %i.kj, ptr %i.lv, align 4, !tbaa !9
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lo, i64 %i.lj
  store float %i.ki, ptr %i.lw, align 4, !tbaa !9
  br label %.loopexit

.preheader1001.preheader:                         ; preds = %bb.j
  %i.lx = sext i32 %i.fk to i64                   ; 6 uses
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.lx
  %i.lz = add nsw i64 %i.lx, 2                    ; 3 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.lz
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.lx
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.lz
  %i.md = sext i32 %i.fl to i64                   ; 6 uses
  %i.me = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.md
  %i.mf = fsub <2 x float> %i.fj, %i.fh           ; 7 uses
  %i.mg = fsub float %.sroa.5782.48.copyload, %.sroa.5787.48.copyload ; 5 uses
  %i.mh = extractelement <2 x float> %i.mf, i64 1
  %i.mi = extractelement <2 x float> %i.mf, i64 0 ; 2 uses
  %i.mj = fmul float %i.mi, %i.cu
  %i.mk = tail call float @llvm.fmuladd.f32(float %i.mg, float %.sroa.01139.4.vec.extract, float %i.mj) ; 2 uses
  %i.ml = fmul float %i.mg, %i.cy
  %i.mm = fmul float %i.mh, %i.cz
  %i.mn = shufflevector <2 x float> %.sroa.25.1, <2 x float> %.sroa.01139.1, <2 x i32> <i32 0, i32 2>
  %i.mo = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.mp = insertelement <2 x float> %i.mo, float %i.ml, i64 1
  %i.mq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.mn, <2 x float> %i.mp) ; 2 uses
  %i.mr = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mt = fmul <2 x float> %i.ms, %i.mq
  store <2 x float> %i.mt, ptr %i.ly, align 4, !tbaa !9
  %i.mu = fmul float %storemerge, %i.mk
  store float %i.mu, ptr %i.ma, align 4, !tbaa !9
  %i.mv = insertelement <2 x float> poison, float %i.y, i64 0
  %i.mw = shufflevector <2 x float> %i.mv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mx = fmul <2 x float> %i.mw, %i.mq
  store <2 x float> %i.mx, ptr %i.mb, align 4, !tbaa !9
  %i.my = fmul float %i.y, %i.mk
  store float %i.my, ptr %i.mc, align 4, !tbaa !9
  %i.mz = shufflevector <2 x float> %i.mf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.na = insertelement <2 x float> %i.mz, float %i.mg, i64 1
  %i.nb = fmul <2 x float> %i.na, %i.df
  %i.nc = shufflevector <2 x float> %.sroa.20.0, <2 x float> %.sroa.01104.1, <2 x i32> <i32 0, i32 2>
  %i.nd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.nc, <2 x float> %i.nb) ; 2 uses
  %i.ne = fmul float %i.mi, %i.db
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.mg, float %.sroa.01104.4.vec.extract, float %i.ne) ; 2 uses
  %i.ng = fmul <2 x float> %i.ms, %i.nd
  store <2 x float> %i.ng, ptr %i.me, align 4, !tbaa !9
  %i.nh = fmul float %storemerge, %i.nf
  %i.ni = add nsw i64 %i.md, 2                    ; 2 uses
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.ni
  store float %i.nh, ptr %i.nj, align 4, !tbaa !9
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.md
  %i.nl = fmul <2 x float> %i.mw, %i.nd
  store <2 x float> %i.nl, ptr %i.nk, align 4, !tbaa !9
  %i.nm = fmul float %i.y, %i.nf
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.ni
  store float %i.nm, ptr %i.nn, align 4, !tbaa !9
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !80 ; 3 uses
  %i.nq = shl nsw i64 %i.lx, 2
  %scevgep = getelementptr i8, ptr %i.np, i64 %i.nq ; 2 uses
end_hunk_1
