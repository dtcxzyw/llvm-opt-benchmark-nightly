inline.NumInlined: 392
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@llvm.lifetime.end.p0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody12setMassPropsEfRK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) initializes((360, 364), (428, 444)) %0, float noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = fcmp oeq float %1, 0.000000e+00
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = or i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !46
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, -2
  store i32 %i.e, ptr %i.b, align 8, !tbaa !46
  %i.f = fdiv float 1.000000e+00, %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi float [ 0.000000e+00, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  store float %.sink, ptr %i.g, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !29 ; 2 uses
  %i.j = fcmp une float %i.i, 0.000000e+00
  %i.k = fdiv float 1.000000e+00, %i.i
  %i.l = select i1 %i.j, float %i.k, float 0.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.n = load <2 x float>, ptr %2, align 4, !tbaa !29 ; 2 uses
  %i.o = fcmp une <2 x float> %i.n, zeroinitializer
  %i.p = fdiv <2 x float> splat (float 1.000000e+00), %i.n
  %i.q = select <2 x i1> %i.o, <2 x float> %i.p, <2 x float> zeroinitializer
  store <2 x float> %i.q, ptr %i.m, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 436
  store float %i.l, ptr %i.r, align 4, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 440
  store float 0.000000e+00, ptr %i.s, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11btRigidBody10setDampingEff(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(564) initializes((476, 484)) %0, float noundef %1, float noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = fcmp olt float %1, 0.000000e+00
  %i.b = fcmp ogt float %1, 1.000000e+00
  %.sroa.speculate.load.false4.sroa.speculated = select i1 %i.b, float 1.000000e+00, float %1
  %.sroa.speculated5 = select i1 %i.a, float 0.000000e+00, float %.sroa.speculate.load.false4.sroa.speculated
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 476
  store float %.sroa.speculated5, ptr %i.c, align 4, !tbaa !51
  %i.d = fcmp olt float %2, 0.000000e+00
  %i.e = fcmp ogt float %2, 1.000000e+00
  %.sroa.speculate.load.false.sroa.speculated = select i1 %i.e, float 1.000000e+00, float %2
  %.sroa.speculated = select i1 %i.d, float 0.000000e+00, float %.sroa.speculate.load.false.sroa.speculated
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 480
  store float %.sroa.speculated, ptr %i.f, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody19updateInertiaTensorEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) initializes((280, 328)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.g = load float, ptr %i.f, align 4, !tbaa !29, !noalias !52 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 292
  store float 0.000000e+00, ptr %.sroa.615.0..sroa_idx, align 4, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.sroa.916.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.p = load <2 x float>, ptr %i.a, align 8, !tbaa !29, !noalias !52 ; 4 uses
  %i.q = load <2 x float>, ptr %i.b, align 4, !tbaa !29, !noalias !52 ; 3 uses
  %i.r = load float, ptr %i.d, align 8, !tbaa !29, !noalias !52
  %i.s = extractelement <2 x float> %i.p, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.p, %i.q  ; 2 uses
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = load <2 x float>, ptr %i.h, align 8, !tbaa !29, !noalias !52 ; 4 uses
  %i.v = load <2 x float>, ptr %i.k, align 8, !tbaa !29, !noalias !52 ; 4 uses
  %i.w = shufflevector <2 x float> %i.q, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 3, i32 0>
  %i.x = shufflevector <2 x float> %i.u, <2 x float> %i.v, <4 x i32> <i32 0, i32 0, i32 poison, i32 2> ; 2 uses
  %i.y = insertelement <4 x float> %i.x, float 1.000000e+00, i64 2
  %i.z = fmul <4 x float> %i.w, %i.y              ; 3 uses
  %i.aa = shufflevector <2 x float> %i.q, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 3, i32 1>
  %i.ab = shufflevector <2 x float> %i.u, <2 x float> %i.v, <4 x i32> <i32 1, i32 1, i32 poison, i32 3> ; 2 uses
  %i.ac = insertelement <4 x float> %i.ab, float 1.000000e+00, i64 2
  %i.ad = fmul <4 x float> %i.aa, %i.ac           ; 3 uses
  %i.ae = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.g, i64 0
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ag = extractelement <2 x float> %i.v, i64 0
  %i.ah = extractelement <4 x float> %i.ad, i64 0
  %i.ai = extractelement <4 x float> %i.z, i64 0
  %i.aj = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ak = shufflevector <4 x float> %i.ab, <4 x float> %i.aj, <4 x i32> <i32 0, i32 3, i32 poison, i32 5>
  %i.al = insertelement <4 x float> %i.ak, float 0.000000e+00, i64 2
  %i.am = fmul <4 x float> %i.al, %i.ad
  %i.an = shufflevector <4 x float> %i.x, <4 x float> %i.aj, <4 x i32> <i32 0, i32 3, i32 poison, i32 4>
  %i.ao = insertelement <4 x float> %i.an, float 0.000000e+00, i64 2
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> %i.z, <4 x float> %i.am)
  %i.aq = load <2 x float>, ptr %i.c, align 4, !tbaa !29, !noalias !52 ; 4 uses
  %i.ar = load float, ptr %i.e, align 8, !tbaa !29, !noalias !52 ; 2 uses
  %i.as = fmul float %i.ar, %i.g                  ; 2 uses
  %i.at = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.au = fmul float %i.at, %i.r                  ; 2 uses
  %i.av = load <2 x float>, ptr %i.i, align 4, !tbaa !29, !noalias !52 ; 4 uses
  %i.aw = load float, ptr %i.j, align 8, !tbaa !29, !noalias !52
  %i.ax = shufflevector <2 x float> %i.av, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.ax, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.az = shufflevector <2 x float> %i.aq, <2 x float> %i.av, <2 x i32> <i32 0, i32 2>
  %i.ba = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.az, %i.bb
  %i.bd = shufflevector <2 x float> %i.p, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.be = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = shufflevector <2 x float> %i.aq, <2 x float> %i.av, <2 x i32> <i32 1, i32 3>
  %i.bh = insertelement <2 x float> poison, float %i.as, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bi, <2 x float> %i.bf)
  %i.bk = fmul float %i.at, %i.ah
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.s, float %i.ai, float %i.bk)
  %i.bm = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  store <2 x float> %i.bj, ptr %i.n, align 8
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.bn = load <2 x float>, ptr %i.l, align 4, !tbaa !29, !noalias !52 ; 4 uses
  %i.bo = load float, ptr %i.m, align 8, !tbaa !29, !noalias !52
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x float> %i.ay, <4 x float> %i.bp, <4 x i32> <i32 0, i32 poison, i32 2, i32 5> ; 2 uses
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.bs = fmul <4 x float> %i.af, %i.br           ; 3 uses
  %i.bt = extractelement <2 x float> %i.bn, i64 0
  %i.bu = fmul float %i.au, %i.bt
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.t, float %i.bu)
  %i.bw = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.as, float %i.bv)
  %i.bx = extractelement <4 x float> %i.bs, i64 0
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.bx, float %i.bl)
  %i.bz = shufflevector <4 x float> %i.bq, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 3, i32 6, i32 poison>
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.bs, <4 x float> %i.ap)
  %i.cc = shufflevector <2 x float> %i.av, <2 x float> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.cd = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ce = fmul <2 x float> %i.cc, %i.cd
  %i.cf = shufflevector <2 x float> %i.u, <2 x float> %i.v, <2 x i32> <i32 0, i32 2>
  %i.cg = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.cg, <2 x float> %i.ce)
  %i.ci = insertelement <2 x float> %i.bn, float %i.aw, i64 0
  %i.cj = shufflevector <4 x float> %i.bs, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cj, <2 x float> %i.ch)
  store float %i.bw, ptr %.sroa.5.0..sroa_idx, align 8
  store float %i.by, ptr %i.o, align 8
  store <4 x float> %i.cb, ptr %.sroa.916.16..sroa_idx, align 4
  store <2 x float> %i.ck, ptr %.sroa.14.32..sroa_idx, align 4
  %.sroa.1619.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 324
  store float 0.000000e+00, ptr %.sroa.1619.32..sroa_idx, align 4, !tbaa !42
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN11btRigidBody26predictIntegratedTransformEfR11btTransform(ptr noundef nonnull align 8 dereferenceable(564) %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, float noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !29
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !29
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 4, !tbaa !29
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i19 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 4
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i19, ptr %.sroa.460.0..sroa_idx, align 4, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %2, align 4, !tbaa !29   ; 3 uses
  %6 = load <2 x float>, ptr %i.o, align 4, !tbaa !29 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %6, %6
  %7 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %8 = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %7)
  %9 = extractelement <2 x float> %6, i64 1       ; 2 uses
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %9, float %9, float %8)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.q) ; 2 uses
  %i.r = fmul float %3, %sqrt.i
  %i.s = fcmp ogt float %i.r, f0x3F490FDB
  %i.t = fdiv float f0x3F490FDB, %3
  %.0 = select i1 %i.s, float %i.t, float %sqrt.i ; 6 uses
  %i.u = fcmp olt float %.0, 1.000000e-03
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = fmul float %3, %3
  %i.w = fmul float %3, %i.v
  %i.x = fmul float %i.w, f0x3CAAAAAB
  %i.y = fmul float %i.x, %.0
  %i.z = fneg float %.0
  %i.aa = fmul float %i.y, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.aa)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ac = fmul float %.0, 5.000000e-01
  %i.ad = fmul float %3, %i.ac
  %i.ae = tail call noundef float @sinf(float noundef %i.ad) #19, !tbaa !4
  %i.af = fdiv float %i.ae, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink69 = phi float [ %i.af, %bb.c ], [ %i.ab, %bb.b ] ; 2 uses
  %i.ag = fmul float %i.p, %.sink69               ; 4 uses
  %10 = insertelement <2 x float> poison, float %.sink69, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fmul <2 x float> %6, %11                  ; 5 uses
  %i.ah = fmul float %3, %.0
  %i.ai = fmul float %i.ah, 5.000000e-01
  %i.aj = tail call noundef float @cosf(float noundef %i.ai) #19, !tbaa !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 5 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.051.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 2 uses
  %.sroa.5.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 2 uses
  %.sroa.5.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 2 uses
  %.sroa.051.4.vec.extract.a = extractelement <2 x float> %.fca.0.load.i, i64 1 ; 2 uses
  %i.ak = extractelement <2 x float> %12, i64 0
  %i.al = fmul float %i.ak, %.sroa.5.12.vec.extract
  %i.am = call float @llvm.fmuladd.f32(float %i.aj, float %.sroa.051.4.vec.extract.a, float %i.al)
  %i.an = extractelement <2 x float> %12, i64 1
  %i.ao = call float @llvm.fmuladd.f32(float %i.an, float %.sroa.051.0.vec.extract, float %i.am)
  %13 = fneg float %i.ag
  %14 = call float @llvm.fmuladd.f32(float %13, float %.sroa.5.8.vec.extract, float %i.ao) ; 3 uses
  %i.ap = fneg float %.sroa.051.0.vec.extract
  %15 = fmul float %i.ag, %i.ap
  %i.aq = call float @llvm.fmuladd.f32(float %i.aj, float %.sroa.5.12.vec.extract, float %15)
  %i.ar = fmul float %14, %14
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %17 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %18, align 4, !tbaa !29
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %21 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %22 = insertelement <2 x float> %21, float %i.ag, i64 1
  %23 = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %24 = fmul <2 x float> %22, %23
  %25 = insertelement <2 x float> poison, float %i.aj, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %28 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %26, <2 x float> %27, <2 x float> %24)
  %29 = insertelement <2 x float> poison, float %i.ag, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> %12, <2 x i32> <i32 0, i32 2>
  %31 = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %32 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %31, <2 x float> %28)
  %33 = fneg <2 x float> %12                      ; 3 uses
  %34 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %33, <2 x float> %.fca.0.load.i, <2 x float> %32) ; 3 uses
  %35 = extractelement <2 x float> %33, i64 0
  %i.as = call float @llvm.fmuladd.f32(float %35, float %.sroa.051.4.vec.extract.a, float %i.aq)
  %36 = extractelement <2 x float> %33, i64 1
  %i.at = call float @llvm.fmuladd.f32(float %36, float %.sroa.5.8.vec.extract, float %i.as) ; 3 uses
  %37 = extractelement <2 x float> %34, i64 1     ; 2 uses
  %i.au = call float @llvm.fmuladd.f32(float %37, float %37, float %i.ar)
  %38 = extractelement <2 x float> %34, i64 0     ; 2 uses
  %i.av = call float @llvm.fmuladd.f32(float %38, float %38, float %i.au)
  %i.aw = call noundef float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.av)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.aw)
  %i.ax = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ay = fmul float %14, %i.ax                   ; 5 uses
  %39 = insertelement <2 x float> poison, float %i.ax, i64 0
  %40 = shufflevector <2 x float> %39, <2 x float> poison, <2 x i32> zeroinitializer
  %41 = fmul <2 x float> %34, %40                 ; 4 uses
  %i.az = fmul float %i.at, %i.ax                 ; 5 uses
  %i.ba = fmul float %i.ay, %i.ay
  %42 = extractelement <2 x float> %41, i64 1     ; 4 uses
  %i.bb = call float @llvm.fmuladd.f32(float %42, float %42, float %i.ba)
  %43 = extractelement <2 x float> %41, i64 0     ; 3 uses
  %i.bc = call float @llvm.fmuladd.f32(float %43, float %43, float %i.bb)
  %i.bd = call noundef float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bc)
  %i.be = fdiv float 2.000000e+00, %i.bd          ; 3 uses
  %i.bf = fmul float %i.ay, %i.be                 ; 3 uses
  %i.bg = fmul float %43, %i.be                   ; 4 uses
  %i.bh = fmul float %i.az, %i.bf                 ; 2 uses
  %i.bi = fmul float %i.az, %i.bg                 ; 2 uses
  %44 = insertelement <2 x float> poison, float %i.bg, i64 0
  %45 = insertelement <2 x float> %44, float %i.be, i64 1
  %46 = fmul <2 x float> %41, %45                 ; 4 uses
  %foldExtExtBinop71 = fmul <2 x float> %41, %46
  %47 = extractelement <2 x float> %foldExtExtBinop71, i64 1 ; 2 uses
  %i.bj = fmul float %42, %i.bf                   ; 2 uses
  %i.bk = fmul float %42, %i.bg                   ; 2 uses
  %i.bl = fmul float %i.ay, %i.bf                 ; 2 uses
  %i.bm = fmul float %i.ay, %i.bg                 ; 2 uses
  %48 = extractelement <2 x float> %46, i64 0
  %49 = fadd float %i.bl, %48
  %i.bn = fsub float 1.000000e+00, %49
  %50 = fsub float %i.bj, %i.bi
  %i.bo = fadd float %i.bk, %i.bh
  %i.bp = fadd float %i.bj, %i.bi
  %51 = insertelement <2 x float> poison, float %47, i64 0
  %52 = insertelement <2 x float> %51, float %i.az, i64 1 ; 2 uses
  %53 = fadd <2 x float> %52, %46
  %54 = fmul <2 x float> %52, %46                 ; 2 uses
  %55 = shufflevector <2 x float> %53, <2 x float> %54, <2 x i32> <i32 0, i32 3>
  %56 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.bm, i64 1
  %57 = fsub <2 x float> %56, %55
  %58 = fsub float %i.bk, %i.bh
  %59 = extractelement <2 x float> %54, i64 1
  %60 = fadd float %i.bm, %59
  %61 = fadd float %47, %i.bl
  %62 = fsub float 1.000000e+00, %61
  store float %i.bn, ptr %4, align 4, !tbaa !29
  store float %50, ptr %16, align 4, !tbaa !29
  store float %i.bo, ptr %17, align 4, !tbaa !29
  store float %i.bp, ptr %19, align 4, !tbaa !29
  store <2 x float> %57, ptr %20, align 4, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %58, ptr %i.br, align 4, !tbaa !29
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %60, ptr %i.bs, align 4, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %62, ptr %i.bt, align 4, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.bu, align 4, !tbaa !29
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN11btRigidBody18saveKinematicStateEf(ptr noundef nonnull align 8 dereferenceable(564) %0, float noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = fcmp une float %1, 0.000000e+00
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load float, ptr %i.o, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load float, ptr %i.q, align 8, !tbaa !29
  %i.s = fsub float %i.p, %i.r
  %i.t = fdiv float 1.000000e+00, %1              ; 3 uses
  %i.u = load <2 x float>, ptr %i.m, align 8, !tbaa !29
  %i.v = load <2 x float>, ptr %i.n, align 8, !tbaa !29
  %i.w = fsub <2 x float> %i.u, %i.v
  %i.x = insertelement <2 x float> poison, float %i.t, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fmul <2 x float> %i.y, %i.w
  %i.aa = fmul float %i.t, %i.s
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aa, i64 0
  store <2 x float> %i.z, ptr %i.k, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %i.i, ptr noundef nonnull align 4 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ab = load float, ptr %i.a, align 4, !tbaa !29 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !29
  %i.ae = fmul float %i.ab, %i.ad
  %i.af = load <2 x float>, ptr %2, align 8, !tbaa !29
  %i.ag = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.ah, %i.af
  %i.aj = fmul <2 x float> %i.y, %i.ai
  %i.ak = fmul float %i.t, %i.ae
  %.sroa.3.12.vec.insert.i.i15.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  store <2 x float> %i.aj, ptr %i.l, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <2 x float> %.sroa.3.12.vec.insert.i.i15.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !41
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 16, i1 false), !tbaa.struct !41
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !41
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !41
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: uwtable
define dso_local void @_ZNK11btRigidBody7getAabbER9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(564) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11btRigidBody10setGravityERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) initializes((412, 428)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load float, ptr %i.a, align 8, !tbaa !47 ; 2 uses
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fdiv float 1.000000e+00, %i.b            ; 2 uses
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.f = insertelement <2 x float> poison, float %i.d, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !29
  %i.k = fmul float %i.d, %i.j
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 396
  store <2 x float> %i.h, ptr %i.l, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 404
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 412
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @_ZN11btRigidBody12applyDampingEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(564) %0, float noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.b = load float, ptr %i.a, align 4, !tbaa !51 ; 2 uses
  %i.c = fsub float 1.000000e+00, %i.b
  %i.d = tail call noundef float @powf(float noundef %i.c, float noundef %1) #19, !tbaa !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !29
  %i.g = fmul float %i.d, %i.f                    ; 6 uses
  store float %i.g, ptr %i.e, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 4 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !29
  %i.j = fmul float %i.d, %i.i                    ; 6 uses
  store float %i.j, ptr %i.h, align 4, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !29
  %i.m = fmul float %i.d, %i.l                    ; 6 uses
  store float %i.m, ptr %i.k, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.o = load float, ptr %i.n, align 8, !tbaa !30 ; 2 uses
  %i.p = fsub float 1.000000e+00, %i.o
  %i.q = tail call noundef float @powf(float noundef %i.p, float noundef %1) #19, !tbaa !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 5 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !29
  %i.t = fmul float %i.q, %i.s                    ; 6 uses
  store float %i.t, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 4 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !29
  %i.w = fmul float %i.q, %i.v                    ; 6 uses
  store float %i.w, ptr %i.u, align 4, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.y = load float, ptr %i.x, align 8, !tbaa !29
  %i.z = fmul float %i.q, %i.y                    ; 6 uses
  store float %i.z, ptr %i.x, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !40, !range !20, !noundef !39
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.ad = fmul float %i.w, %i.w
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !56
  %i.ai = fcmp olt float %i.af, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aj = fmul float %i.j, %i.j
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.aj)
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.an = load float, ptr %i.am, align 4, !tbaa !57
  %i.ao = fcmp olt float %i.al, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !29 ; 6 uses
  %i.ar = fmul float %i.t, %i.aq                  ; 2 uses
  store float %i.ar, ptr %i.r, align 8, !tbaa !29
  %i.as = fmul float %i.w, %i.aq                  ; 2 uses
  store float %i.as, ptr %i.u, align 4, !tbaa !29
  %i.at = fmul float %i.z, %i.aq                  ; 2 uses
end_hunk_0
