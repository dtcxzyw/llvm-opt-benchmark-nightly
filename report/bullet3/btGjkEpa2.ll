Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGjkEpa2?download=true
inline.NumInlined: 453
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12gjkepa2_implL10InitializeEPK13btConvexShapeRK11btTransformS2_S5_RN15btGjkEpaSolver28sResultsERNS_13MinkowskiDiffEb:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cp = load float, ptr %i.l, align 4, !tbaa !28, !noalias !70 ; 2 uses
  %i.cq = load float, ptr %i.m, align 4, !tbaa !28, !noalias !70 ; 3 uses
  %i.cr = load float, ptr %i.n, align 4, !tbaa !28, !noalias !70 ; 2 uses
  %i.cs = load float, ptr %i.cl, align 4, !tbaa !28, !noalias !71
  %i.ct = load float, ptr %i.cj, align 4, !tbaa !28, !noalias !71
  %i.cu = load float, ptr %i.cn, align 4, !tbaa !28, !noalias !71
  %i.cv = load float, ptr %i.cm, align 4, !tbaa !28, !noalias !71
  %i.cw = load float, ptr %i.ck, align 4, !tbaa !28, !noalias !71
  %i.cx = load float, ptr %i.co, align 4, !tbaa !28, !noalias !71
  %i.cy = fsub float %i.cs, %i.cv                 ; 2 uses
  %i.cz = fsub float %i.ct, %i.cw                 ; 2 uses
  %i.da = fsub float %i.cu, %i.cx                 ; 2 uses
  %i.db = load <2 x float>, ptr %1, align 4, !tbaa !28, !noalias !70 ; 2 uses
  %i.dc = load <2 x float>, ptr %i.e, align 4, !tbaa !28, !noalias !70 ; 2 uses
  %i.dd = load <2 x float>, ptr %i.h, align 4, !tbaa !28, !noalias !70 ; 2 uses
  %i.de = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.df, %i.dc
  %i.dh = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.di, <2 x float> %i.dg)
  %i.dk = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.dl, <2 x float> %i.dj)
  %i.dn = fmul float %i.cy, %i.cq
  %i.do = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cz, float %i.dn)
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.da, float %i.do)
  %.sroa.3.12.vec.insert.i5.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dp, i64 0
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dr = load <2 x float>, ptr %3, align 4, !tbaa !28, !noalias !70 ; 2 uses
  %i.ds = load <2 x float>, ptr %i.c, align 4, !tbaa !28, !noalias !70 ; 2 uses
  %i.dt = load <2 x float>, ptr %i.f, align 4, !tbaa !28, !noalias !70 ; 2 uses
  %i.du = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.dw = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dx = insertelement <4 x float> %i.dw, float 1.000000e+00, i64 3
  %i.dy = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ea = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eb = insertelement <4 x float> %i.ea, float -0.000000e+00, i64 3
  %i.ec = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.ee = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ef = insertelement <4 x float> %i.ee, float -0.000000e+00, i64 3
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.eh = load <2 x float>, ptr %i.q, align 4, !tbaa !28, !noalias !70 ; 2 uses
  %i.ei = load float, ptr %i.w, align 4, !tbaa !28, !noalias !70
  %i.ej = load <2 x float>, ptr %i.o, align 4, !tbaa !28, !noalias !70 ; 2 uses
  %i.ek = load float, ptr %i.u, align 4, !tbaa !28, !noalias !70
  %i.el = load <2 x float>, ptr %i.s, align 4, !tbaa !28, !noalias !70 ; 2 uses
  %i.em = load float, ptr %i.y, align 4, !tbaa !28, !noalias !70
  %i.en = shufflevector <2 x float> %i.eh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eo = shufflevector <4 x float> %i.dx, <4 x float> %i.en, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ep = fmul <4 x float> %i.dv, %i.eo
  %i.eq = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.er = shufflevector <4 x float> %i.eb, <4 x float> %i.eq, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.er, <4 x float> %i.ep)
  %i.et = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x float> %i.ef, <4 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ed, <4 x float> %i.eu, <4 x float> %i.es)
  %i.ew = shufflevector <4 x float> %i.du, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ex = shufflevector <2 x float> %i.ds, <2 x float> %i.eh, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ey = insertelement <4 x float> %i.ex, float 1.000000e+00, i64 3 ; 2 uses
  %i.ez = fmul <4 x float> %i.ew, %i.ey
  %i.fa = shufflevector <4 x float> %i.dy, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fb = shufflevector <2 x float> %i.dr, <2 x float> %i.ej, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fc = insertelement <4 x float> %i.fb, float -0.000000e+00, i64 3 ; 2 uses
  %i.fd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.fc, <4 x float> %i.ez)
  %i.fe = shufflevector <4 x float> %i.ec, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ff = shufflevector <2 x float> %i.dt, <2 x float> %i.el, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fg = insertelement <4 x float> %i.ff, float -0.000000e+00, i64 3 ; 2 uses
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fe, <4 x float> %i.fg, <4 x float> %i.fd)
  store <4 x float> %i.ev, ptr %i.dq, align 8
  store <4 x float> %i.fh, ptr %i.eg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.fj = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cq, i64 0
  %i.fk = insertelement <4 x float> %i.fj, float %i.ei, i64 2
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.fm = insertelement <4 x float> %i.ey, float %i.cq, i64 2
  %i.fn = fmul <4 x float> %i.fl, %i.fm
  %i.fo = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cp, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fq = insertelement <4 x float> %i.fc, float %i.ek, i64 2
  %i.fr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.fq, <4 x float> %i.fn)
  %i.fs = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.cr, i64 0
  %i.ft = shufflevector <4 x float> %i.fs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.fu = insertelement <4 x float> %i.fg, float %i.em, i64 2
  %i.fv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ft, <4 x float> %i.fu, <4 x float> %i.fr)
  store <4 x float> %i.fv, ptr %i.fi, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 112
  store <2 x float> %i.dm, ptr %i.fw, align 8
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i5.i, ptr %.sroa.19.48..sroa_idx, align 8, !tbaa !29
  %spec.select.i = select i1 %6, i64 ptrtoint (ptr @_ZNK13btConvexShape31localGetSupportVertexNonVirtualERK9btVector3 to i64), i64 ptrtoint (ptr @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3 to i64)
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 128
  store i64 %spec.select.i, ptr %i.fx, align 8, !tbaa !37
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i64 0, ptr %i.fy, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12gjkepa2_impl3GJK8EvaluateERKNS_13MinkowskiDiffERK9btVector3(ptr noundef nonnull align 8 dereferenceable(460) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 8           ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca [4 x %class.btVector3], align 16    ; 16 uses
  %i.a = alloca [4 x float], align 16             ; 11 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 6 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.e, ptr %i.f, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %i.g, ptr %i.h, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %i.i, ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 12 uses
  store i32 4, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 6 uses
  store i32 0, ptr %i.l, align 4, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 6 uses
  store i32 0, ptr %i.m, align 8, !tbaa !22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 16, i1 false), !tbaa.struct !43
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !43
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !43
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 16, i1 false), !tbaa.struct !43
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !43
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !43
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !43
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.unpack.i = load i64, ptr %i.ab, align 8, !tbaa !37 ; 4 uses
  %.elt5.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.unpack6.i = load i64, ptr %.elt5.i, align 8, !tbaa !37 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store i64 %.unpack.i, ptr %i.ac, align 8, !tbaa !37
  %.repack7.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  store i64 %.unpack6.i, ptr %.repack7.i, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store float 0.000000e+00, ptr %i.ad, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i32 0, ptr %i.af, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !43
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.ag, align 8, !tbaa !28 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.ai, %i.ai
  %i.aj = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ak = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.aj)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.an = load float, ptr %i.am, align 8, !tbaa !28 ; 3 uses
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.al) ; 2 uses
  %i.ap = fcmp ogt float %i.ao, 0.000000e+00      ; 2 uses
  %i.aq = fneg <2 x float> %i.ai
  %i.ar = fneg float %i.an
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ar, i64 0
  %.sroa.0124.0 = select i1 %i.ap, <2 x float> %i.aq, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 4 uses
  %.sroa.7.0 = select i1 %i.ap, <2 x float> %.sroa.3.12.vec.insert.i, <2 x float> zeroinitializer
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store float 0.000000e+00, ptr %i.as, align 8, !tbaa !28
  store i32 3, ptr %i.k, align 8, !tbaa !21
  store ptr %i.i, ptr %i.ae, align 8, !tbaa !34
  store i32 1, ptr %i.af, align 8, !tbaa !27
  %.sroa.0124.0.vec.extract = extractelement <2 x float> %.sroa.0124.0, i64 0 ; 2 uses
  %foldExtExtBinop204 = fmul <2 x float> %.sroa.0124.0, %.sroa.0124.0
  %i.at = extractelement <2 x float> %foldExtExtBinop204, i64 1
  %i.au = tail call float @llvm.fmuladd.f32(float %.sroa.0124.0.vec.extract, float %.sroa.0124.0.vec.extract, float %i.at)
  %.sroa.7.8.vec.extract = extractelement <2 x float> %.sroa.7.0, i64 0 ; 3 uses
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %.sroa.7.8.vec.extract, float %.sroa.7.8.vec.extract, float %i.au)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.av)
  %i.aw = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %.sroa.0124.0, %i.ay
  %i.ba = fmul float %.sroa.7.8.vec.extract, %i.aw
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ba, i64 0
  store <2 x float> %i.az, ptr %i.i, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 384
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !29
  %i.bb = load ptr, ptr %0, align 8, !tbaa !36
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.unpack6.i ; 2 uses
  %i.bd = and i64 %.unpack.i, 1
  %.not.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.bf = getelementptr i8, ptr %i.be, i64 %.unpack.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1
  %i.bh = load ptr, ptr %i.bg, align 8, !nosanitize !40
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.bi = inttoptr i64 %.unpack.i to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i: ; preds = %bb.c, %bb.b
  %i.bj = phi ptr [ %i.bh, %bb.b ], [ %i.bi, %bb.c ]
  %i.bk = tail call { <2 x float>, <2 x float> } %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 4 dereferenceable(32) %i.i), !inline_history !1 ; 2 uses
  %6 = load <3 x float>, ptr %i.i, align 8, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36
  %.unpack.i3.i.i = load i64, ptr %i.ac, align 8, !tbaa !37 ; 3 uses
  %.unpack3.i5.i.i = load i64, ptr %.repack7.i, align 8, !tbaa !37
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %.unpack3.i5.i.i ; 2 uses
  %i.bo = and i64 %.unpack.i3.i.i, 1
  %.not.i6.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.unpack.i3.i.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -1
  %i.bs = load ptr, ptr %i.br, align 8, !nosanitize !40
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit

bb.e:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i
  %i.bt = inttoptr i64 %.unpack.i3.i.i to ptr
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit

_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit: ; preds = %bb.d, %bb.e
  %i.bu = phi ptr [ %i.bs, %bb.d ], [ %i.bt, %bb.e ]
  %7 = fneg <3 x float> %6                        ; 6 uses
  %i.bv = extractvalue { <2 x float>, <2 x float> } %i.bk, 1
  %i.bw = extractvalue { <2 x float>, <2 x float> } %i.bk, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.by = load float, ptr %i.bx, align 8, !tbaa !28
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !28
  %i.cb = load <2 x float>, ptr %i.n, align 8, !tbaa !28 ; 2 uses
  %i.cc = load <2 x float>, ptr %i.q, align 8, !tbaa !28 ; 2 uses
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3>
  %8 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ce = fmul <2 x float> %i.cd, %8
  %i.cf = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.cg = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.cg, <2 x float> %i.ce)
  %i.ci = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.ca, i64 1
  %9 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %9, <2 x float> %i.ch)
  %i.cl = load float, ptr %i.s, align 8, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !28
  %10 = extractelement <3 x float> %7, i64 1
  %i.co = fmul float %i.cn, %10
  %11 = extractelement <3 x float> %7, i64 0
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cl, float %11, float %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !28
  %12 = extractelement <3 x float> %7, i64 2
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %i.cr, float %12, float %i.cp)
  %.sroa.3.12.vec.insert.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cs, i64 0
  store <2 x float> %i.ck, ptr %4, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i, ptr %i.ct, align 8
  %i.cu = call { <2 x float>, <2 x float> } %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 4 dereferenceable(16) %4), !inline_history !2 ; 2 uses
  %i.cv = extractvalue { <2 x float>, <2 x float> } %i.cu, 0 ; 4 uses
  %i.cw = extractvalue { <2 x float>, <2 x float> } %i.cu, 1 ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i = extractelement <2 x float> %i.cv, i64 0
  %.sroa.0.4.vec.extract.i.i.i = extractelement <2 x float> %i.cv, i64 1
  %.sroa.5.8.vec.extract.i.i.i = extractelement <2 x float> %i.cw, i64 0
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !28
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.da = load float, ptr %i.cz, align 8, !tbaa !28
  %i.db = load float, ptr %i.y, align 8, !tbaa !28
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !28
  %i.de = fmul float %.sroa.0.4.vec.extract.i.i.i, %i.dd
  %i.df = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i.i, float %i.db, float %i.de)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !28
  %i.di = call noundef float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract.i.i.i, float %i.dh, float %i.df)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !28
  %i.dl = fadd float %i.di, %i.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.dm = load <2 x float>, ptr %i.t, align 8, !tbaa !28 ; 2 uses
  %i.dn = load <2 x float>, ptr %i.w, align 8, !tbaa !28 ; 2 uses
  %i.do = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.dq = fmul <2 x float> %i.do, %i.dp
  %i.dr = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.ds, <2 x float> %i.dq)
  %i.du = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.da, i64 1
  %i.dx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dw, <2 x float> %i.dt)
  %i.dy = load <2 x float>, ptr %i.aa, align 8, !tbaa !28
  %i.dz = fadd <2 x float> %i.dx, %i.dy
  %i.ea = fsub <2 x float> %i.bw, %i.dz
  %.sroa.515.8.vec.extract.i.i = extractelement <2 x float> %i.bv, i64 0
  %i.eb = fsub float %.sroa.515.8.vec.extract.i.i, %i.dl
  %.sroa.3.12.vec.insert.i9.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eb, i64 0
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 392
  store <2 x float> %i.ea, ptr %i.ec, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 400
  store <2 x float> %.sroa.3.12.vec.insert.i9.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !29
  store float 1.000000e+00, ptr %i.as, align 8, !tbaa !28
  %i.ed = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.ee, i64 16, i1 false), !tbaa.struct !43
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ef, ptr noundef nonnull align 4 dereferenceable(16) %i.ee, i64 16, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.eg, ptr noundef nonnull align 4 dereferenceable(16) %i.ee, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.eh, ptr noundef nonnull align 4 dereferenceable(16) %i.ee, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.ee, i64 16, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre = load i32, ptr %i.l, align 4, !tbaa !23
  %i.ek = load <2 x float>, ptr %i.ag, align 8, !tbaa !28
  %.pre155 = load float, ptr %i.am, align 8, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.f

bb.f:                                             ; preds = %bb.ah, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit
  %i.et = phi float [ %.pre155, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %i.pi, %bb.ah ] ; 3 uses
  %i.eu = phi i32 [ %.pre, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %i.ew, %bb.ah ] ; 2 uses
  %.0129 = phi float [ 0.000000e+00, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %.sroa.speculated, %bb.ah ] ; 2 uses
  %.062 = phi i32 [ 0, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %i.re, %bb.ah ] ; 2 uses
  %.058 = phi float [ %i.ao, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %.159, %bb.ah ]
  %.055 = phi i32 [ 0, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %i.lc, %bb.ah ]
  %i.ev = phi <2 x float> [ %i.ek, %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit ], [ %i.pj, %bb.ah ] ; 4 uses
  %i.ew = sub i32 1, %i.eu                        ; 3 uses
  %i.ex = zext i32 %i.eu to i64                   ; 2 uses
  %i.ey = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.ex ; 14 uses
  %i.ez = zext i32 %i.ew to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [56 x i8], ptr %i.ae, i64 %i.ez ; 4 uses
  %foldExtExtBinop206 = fmul <2 x float> %i.ev, %i.ev
  %i.fb = extractelement <2 x float> %foldExtExtBinop206, i64 1
  %i.fc = extractelement <2 x float> %i.ev, i64 0 ; 2 uses
  %i.fd = call float @llvm.fmuladd.f32(float %i.fc, float %i.fc, float %i.fb)
  %i.fe = call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.fd)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.fe) ; 5 uses
  %i.ff = fcmp olt float %sqrt.i, f0x38D1B717
  br i1 %i.ff, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.m, align 8, !tbaa !22
  br label %thread-pre-split

bb.h:                                             ; preds = %bb.f
  %i.fg = fneg <2 x float> %i.ev
  %i.fh = fneg float %i.et
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 48 ; 4 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !27 ; 2 uses
  %i.fl = zext i32 %i.fk to i64                   ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fl
  store float 0.000000e+00, ptr %i.fm, align 4, !tbaa !28
  %i.fn = load i32, ptr %i.k, align 8, !tbaa !21
  %i.fo = add i32 %i.fn, -1                       ; 2 uses
  store i32 %i.fo, ptr %i.k, align 8, !tbaa !21
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !34 ; 8 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fl
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !34
  %i.ft = add i32 %i.fk, 1
  store i32 %i.ft, ptr %i.fj, align 8, !tbaa !27
  %i.fu = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.fv = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fw, %i.fg
  %i.fy = fmul float %i.fu, %i.fh
  %.sroa.3.12.vec.insert.i.i.i88 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fy, i64 0
  store <2 x float> %i.fx, ptr %i.fr, align 4
  %.sroa.42.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i88, ptr %.sroa.42.0..sroa_idx.i89, align 4, !tbaa !29
  %i.fz = load ptr, ptr %0, align 8, !tbaa !36
  %.unpack.i.i.i90 = load i64, ptr %i.ac, align 8, !tbaa !37 ; 3 uses
  %.unpack3.i.i.i92 = load i64, ptr %.repack7.i, align 8, !tbaa !37
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 %.unpack3.i.i.i92 ; 2 uses
  %i.gb = and i64 %.unpack.i.i.i90, 1
  %.not.i.i.i93 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i93, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gc = load ptr, ptr %i.ga, align 8, !tbaa !39
  %i.gd = getelementptr i8, ptr %i.gc, i64 %.unpack.i.i.i90
  %i.ge = getelementptr i8, ptr %i.gd, i64 -1
  %i.gf = load ptr, ptr %i.ge, align 8, !nosanitize !40
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i94

bb.j:                                             ; preds = %bb.h
  %i.gg = inttoptr i64 %.unpack.i.i.i90 to ptr
  br label %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i94

_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i94: ; preds = %bb.j, %bb.i
  %i.gh = phi ptr [ %i.gf, %bb.i ], [ %i.gg, %bb.j ]
  %i.gi = call { <2 x float>, <2 x float> } %i.gh(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 4 dereferenceable(32) %i.fr), !inline_history !1 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !28
  %i.gl = load float, ptr %i.fr, align 4, !tbaa !28
  %i.gm = load float, ptr %.sroa.42.0..sroa_idx.i89, align 4, !tbaa !28
  %i.gn = load ptr, ptr %i.bl, align 8, !tbaa !36
  %.unpack.i3.i.i95 = load i64, ptr %i.ac, align 8, !tbaa !37 ; 3 uses
  %.unpack3.i5.i.i96 = load i64, ptr %.repack7.i, align 8, !tbaa !37
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %.unpack3.i5.i.i96 ; 2 uses
  %i.gp = and i64 %.unpack.i3.i.i95, 1
  %.not.i6.i.i97 = icmp eq i64 %i.gp, 0
  br i1 %.not.i6.i.i97, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i94
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !39
  %i.gr = getelementptr i8, ptr %i.gq, i64 %.unpack.i3.i.i95
  %i.gs = getelementptr i8, ptr %i.gr, i64 -1
  %i.gt = load ptr, ptr %i.gs, align 8, !nosanitize !40
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit111

bb.l:                                             ; preds = %_ZNK12gjkepa2_impl13MinkowskiDiff8Support0ERK9btVector3.exit.i.i94
  %i.gu = inttoptr i64 %.unpack.i3.i.i95 to ptr
  br label %_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit111

_ZNK12gjkepa2_impl3GJK10getsupportERK9btVector3RNS0_3sSVE.exit111: ; preds = %bb.k, %bb.l
  %i.gv = phi ptr [ %i.gt, %bb.k ], [ %i.gu, %bb.l ]
  %i.gw = fneg float %i.gm                        ; 2 uses
  %i.gx = fneg float %i.gk                        ; 2 uses
  %i.gy = fneg float %i.gl                        ; 2 uses
  %i.gz = extractvalue { <2 x float>, <2 x float> } %i.gi, 1
  %i.ha = extractvalue { <2 x float>, <2 x float> } %i.gi, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.hb = load float, ptr %i.bx, align 8, !tbaa !28
  %i.hc = load float, ptr %i.bz, align 8, !tbaa !28
  %i.hd = load <2 x float>, ptr %i.n, align 8, !tbaa !28 ; 2 uses
  %i.he = load <2 x float>, ptr %i.q, align 8, !tbaa !28 ; 2 uses
  %i.hf = shufflevector <2 x float> %i.hd, <2 x float> %i.he, <2 x i32> <i32 1, i32 3>
  %i.hg = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = fmul <2 x float> %i.hf, %i.hh
  %i.hj = shufflevector <2 x float> %i.hd, <2 x float> %i.he, <2 x i32> <i32 0, i32 2>
  %i.hk = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.hl, <2 x float> %i.hi)
  %i.hn = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %i.hc, i64 1
  %i.hp = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.hq, <2 x float> %i.hm)
  %i.hs = load float, ptr %i.s, align 8, !tbaa !28
  %i.ht = load float, ptr %i.cm, align 4, !tbaa !28
end_hunk_0
