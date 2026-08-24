Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btRigidBody?download=true
inline.NumInlined: 392
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11btRigidBody24setCenterOfMassTransformERK11btTransform:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 16, i1 false), !tbaa.struct !41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !41
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !41
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !41
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink3 = phi ptr [ %i.p, %bb.c ], [ %i.j, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %.sink3, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !41
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !41
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !41
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !41
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !41
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !41
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !29, !noalias !58 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.sroa.615.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 292
  store float 0.000000e+00, ptr %.sroa.615.0..sroa_idx.i, align 4, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.sroa.916.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.ao = load <2 x float>, ptr %i.v, align 8, !tbaa !29, !noalias !58 ; 4 uses
  %i.ap = load <2 x float>, ptr %i.ac, align 4, !tbaa !29, !noalias !58 ; 3 uses
  %i.aq = load float, ptr %i.ae, align 8, !tbaa !29, !noalias !58
  %i.ar = extractelement <2 x float> %i.ao, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.ao, %i.ap ; 2 uses
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.at = load <2 x float>, ptr %i.x, align 8, !tbaa !29, !noalias !58 ; 4 uses
  %i.au = load <2 x float>, ptr %i.z, align 8, !tbaa !29, !noalias !58 ; 4 uses
  %i.av = shufflevector <2 x float> %i.ap, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.aw = shufflevector <2 x float> %i.at, <2 x float> %i.au, <4 x i32> <i32 0, i32 0, i32 poison, i32 2> ; 2 uses
  %i.ax = insertelement <4 x float> %i.aw, float 1.000000e+00, i64 2
  %i.ay = fmul <4 x float> %i.av, %i.ax           ; 3 uses
  %i.az = shufflevector <2 x float> %i.ap, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.ba = shufflevector <2 x float> %i.at, <2 x float> %i.au, <4 x i32> <i32 1, i32 1, i32 poison, i32 3> ; 2 uses
  %i.bb = insertelement <4 x float> %i.ba, float 1.000000e+00, i64 2
  %i.bc = fmul <4 x float> %i.az, %i.bb           ; 3 uses
  %i.bd = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ah, i64 0
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.bf = extractelement <2 x float> %i.au, i64 0
  %i.bg = extractelement <4 x float> %i.bc, i64 0
  %i.bh = extractelement <4 x float> %i.ay, i64 0
  %i.bi = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bj = shufflevector <4 x float> %i.ba, <4 x float> %i.bi, <4 x i32> <i32 0, i32 3, i32 poison, i32 5>
  %i.bk = insertelement <4 x float> %i.bj, float 0.000000e+00, i64 2
  %i.bl = fmul <4 x float> %i.bk, %i.bc
  %i.bm = shufflevector <4 x float> %i.aw, <4 x float> %i.bi, <4 x i32> <i32 0, i32 3, i32 poison, i32 4>
  %i.bn = insertelement <4 x float> %i.bm, float 0.000000e+00, i64 2
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %i.ay, <4 x float> %i.bl)
  %i.bp = load <2 x float>, ptr %i.ad, align 4, !tbaa !29, !noalias !58 ; 4 uses
  %i.bq = load float, ptr %i.af, align 8, !tbaa !29, !noalias !58 ; 2 uses
  %i.br = fmul float %i.bq, %i.ah                 ; 2 uses
  %i.bs = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.bt = fmul float %i.bs, %i.aq                 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.ai, align 4, !tbaa !29, !noalias !58 ; 4 uses
  %i.bv = load float, ptr %i.aj, align 8, !tbaa !29, !noalias !58
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bx = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.bw, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.by = shufflevector <2 x float> %i.bp, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.bz = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.by, %i.ca
  %i.cc = shufflevector <2 x float> %i.ao, <2 x float> %i.at, <2 x i32> <i32 0, i32 2>
  %i.cd = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.cd, <2 x float> %i.cb)
  %i.cf = shufflevector <2 x float> %i.bp, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.cg = insertelement <2 x float> poison, float %i.br, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.ch, <2 x float> %i.ce)
  %i.cj = fmul float %i.bs, %i.bg
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.bh, float %i.cj)
  %i.cl = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  store <2 x float> %i.ci, ptr %i.am, align 8
  %.sroa.14.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.cm = load <2 x float>, ptr %i.ak, align 4, !tbaa !29, !noalias !58 ; 4 uses
  %i.cn = load float, ptr %i.al, align 8, !tbaa !29, !noalias !58
  %i.co = shufflevector <2 x float> %i.cm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cp = shufflevector <4 x float> %i.bx, <4 x float> %i.co, <4 x i32> <i32 0, i32 poison, i32 2, i32 5> ; 2 uses
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cr = fmul <4 x float> %i.be, %i.cq           ; 3 uses
  %i.cs = extractelement <2 x float> %i.cm, i64 0
  %i.ct = fmul float %i.bt, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.as, float %i.ct)
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.br, float %i.cu)
  %i.cw = extractelement <4 x float> %i.cr, i64 0
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.cw, float %i.ck)
  %i.cy = shufflevector <4 x float> %i.cp, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 3, i32 6, i32 poison>
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> %i.cr, <4 x float> %i.bo)
  %i.db = shufflevector <2 x float> %i.bu, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.dc = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dd = fmul <2 x float> %i.db, %i.dc
  %i.de = shufflevector <2 x float> %i.at, <2 x float> %i.au, <2 x i32> <i32 0, i32 2>
  %i.df = shufflevector <4 x float> %i.ay, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.df, <2 x float> %i.dd)
  %i.dh = insertelement <2 x float> %i.cm, float %i.bv, i64 0
  %i.di = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.di, <2 x float> %i.dg)
  store float %i.cv, ptr %.sroa.5.0..sroa_idx.i, align 8
  store float %i.cx, ptr %i.an, align 8
  store <4 x float> %i.da, ptr %.sroa.916.16..sroa_idx.i, align 4
  store <2 x float> %i.dj, ptr %.sroa.14.32..sroa_idx.i, align 4
  %.sroa.1619.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 324
  store float 0.000000e+00, ptr %.sroa.1619.32..sroa_idx.i, align 4, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody19integrateVelocitiesEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) %0, float noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load float, ptr %i.e, align 8, !tbaa !47
  %i.g = fmul float %1, %i.f                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.i = load float, ptr %i.h, align 4, !tbaa !29
  %i.j = fmul float %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.l = load <2 x float>, ptr %i.d, align 4, !tbaa !29
  %i.m = insertelement <2 x float> poison, float %i.g, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.l, %i.n
  %i.p = load <2 x float>, ptr %i.k, align 8, !tbaa !29
  %i.q = fadd <2 x float> %i.o, %i.p
  store <2 x float> %i.q, ptr %i.k, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !29
  %i.t = fadd float %i.j, %i.s
  store float %i.t, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.w = load float, ptr %i.v, align 4, !tbaa !29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.y = load float, ptr %i.x, align 8, !tbaa !29 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = load <4 x float>, ptr %i.z, align 8
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !29 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ag = load float, ptr %i.af, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !29
  %i.al = fmul float %i.y, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.w, float %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ao = load float, ptr %i.an, align 8, !tbaa !29
  %i.ap = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.ad, float %i.am)
  %i.aq = fmul float %1, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.as = load <2 x float>, ptr %i.u, align 8, !tbaa !29 ; 2 uses
  %i.at = load <2 x float>, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.au = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.av = insertelement <2 x float> %i.au, float %i.y, i64 1
  %i.aw = insertelement <2 x float> %i.at, float %i.y, i64 0
  %i.ax = fmul <2 x float> %i.av, %i.aw
  %i.ay = shufflevector <2 x float> %i.as, <2 x float> %i.at, <2 x i32> <i32 0, i32 2>
  %i.az = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ay, <2 x float> %i.ba, <2 x float> %i.ax)
  %i.bc = insertelement <2 x float> %i.ab, float %i.ag, i64 1
  %i.bd = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.be, <2 x float> %i.bb)
  %i.bg = insertelement <2 x float> poison, float %1, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.bh, %i.bf
  %i.bj = load <2 x float>, ptr %i.ar, align 8, !tbaa !29
  %i.bk = fadd <2 x float> %i.bi, %i.bj           ; 5 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0 ; 2 uses
  store <2 x float> %i.bk, ptr %i.ar, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !29
  %i.bo = fadd float %i.aq, %i.bn                 ; 4 uses
  store float %i.bo, ptr %i.bm, align 8, !tbaa !29
  %foldExtExtBinop = fmul <2 x float> %i.bk, %i.bk
  %2 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bl, float %2)
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bp)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bq) ; 2 uses
  %i.br = fmul float %1, %sqrt.i
  %i.bs = fcmp ogt float %i.br, f0x3FC90FDB
  br i1 %i.bs, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bt = fdiv float f0x3FC90FDB, %1
  %i.bu = fdiv float %i.bt, %sqrt.i               ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bk, %i.bw
  store <2 x float> %i.bx, ptr %i.ar, align 8, !tbaa !29
  %i.by = fmul float %i.bo, %i.bu
  store float %i.by, ptr %i.bm, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK11btRigidBody14getOrientationEv(ptr noundef nonnull align 8 dereferenceable(564) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.btQuaternion, align 8        ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %.fca.0.load = load <2 x float>, ptr %1, align 8
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load = load <2 x float>, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.fca.1.load, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !29 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !29 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #19, !tbaa !4 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !29
  %i.t = load float, ptr %i.m, align 4, !tbaa !29
  %i.u = load float, ptr %i.j, align 4, !tbaa !29
  %i.v = load float, ptr %i.k, align 4, !tbaa !29
  %i.w = load float, ptr %i.o, align 4, !tbaa !29
  %i.x = load float, ptr %i.p, align 4, !tbaa !29
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 1
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !29
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !29
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !29
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #19, !tbaa !4 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !29
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !29
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !29
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !29
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !29
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !29
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !29
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !29
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !29
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !29
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11btRigidBody24checkCollideWithOverrideEP17btCollisionObject(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(564) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %i.c = icmp ne i32 %i.b, 2
  %.not23 = icmp eq ptr %1, null
  %.not = or i1 %i.c, %.not23
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.e = load i32, ptr %i.d, align 4, !tbaa !18   ; 2 uses
  %.not1718 = icmp slt i32 %i.e, 1
  br i1 %.not1718, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.c

bb.b:                                             ; preds = %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !63, !nonnull !39, !align !67
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68, !nonnull !39, !align !67
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.critedge, %bb.c, %bb.b, %.preheader, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ true, %.preheader ], [ false, %bb.c ], [ false, %.critedge ], [ true, %bb.b ]
  ret i1 %.3
}

; Function Attrs: uwtable
define dso_local void @_ZN11btRigidBody16addConstraintRefEP17btTypedConstraint(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 9 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIP17btTypedConstraintE16findLinearSearchERKS1_.exit.thread

end_hunk_0
