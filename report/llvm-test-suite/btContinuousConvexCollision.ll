inline.NumInlined: 355
inline.NumDeleted: 76
begin_hunk_0_@_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_:bb.a
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !20
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 4, !tbaa !20
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i19 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 4
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i19, ptr %.sroa.460.0..sroa_idx, align 4, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %2, align 4, !tbaa !20   ; 3 uses
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !20 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.q, %i.q
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.r)
  %i.t = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.s)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.u) ; 2 uses
  %i.v = fmul float %3, %sqrt.i
  %i.w = fcmp ogt float %i.v, f0x3F490FDB
  %i.x = fdiv float f0x3F490FDB, %3
  %.0 = select i1 %i.w, float %i.x, float %sqrt.i ; 6 uses
  %i.y = fcmp olt float %.0, 1.000000e-03
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = fmul float %3, %3
  %i.aa = fmul float %3, %i.z
  %i.ab = fmul float %i.aa, f0x3CAAAAAB
  %i.ac = fmul float %i.ab, %.0
  %i.ad = fneg float %.0
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.ae)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ag = fmul float %.0, 5.000000e-01
  %i.ah = fmul float %3, %i.ag
  %i.ai = tail call noundef float @sinf(float noundef %i.ah) #13, !tbaa !4
  %i.aj = fdiv float %i.ai, %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink69 = phi float [ %i.aj, %bb.c ], [ %i.af, %bb.b ] ; 2 uses
  %i.ak = fmul float %i.p, %.sink69               ; 4 uses
  %i.al = insertelement <2 x float> poison, float %.sink69, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.q, %i.am            ; 5 uses
  %i.ao = fmul float %3, %.0
  %i.ap = fmul float %i.ao, 5.000000e-01
  %i.aq = tail call noundef float @cosf(float noundef %i.ap) #13, !tbaa !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 5 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.051.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 2 uses
  %.sroa.5.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 2 uses
  %.sroa.5.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 2 uses
  %.sroa.051.4.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 1 ; 2 uses
  %i.ar = extractelement <2 x float> %i.an, i64 0
  %i.as = fmul float %i.ar, %.sroa.5.12.vec.extract
  %i.at = call float @llvm.fmuladd.f32(float %i.aq, float %.sroa.051.4.vec.extract, float %i.as)
  %i.au = extractelement <2 x float> %i.an, i64 1
  %i.av = call float @llvm.fmuladd.f32(float %i.au, float %.sroa.051.0.vec.extract, float %i.at)
  %i.aw = fneg float %i.ak
  %i.ax = call float @llvm.fmuladd.f32(float %i.aw, float %.sroa.5.8.vec.extract, float %i.av) ; 3 uses
  %i.ay = fneg float %.sroa.051.0.vec.extract
  %i.az = fmul float %i.ak, %i.ay
  %i.ba = call float @llvm.fmuladd.f32(float %i.aq, float %.sroa.5.12.vec.extract, float %i.az)
  %i.bb = fmul float %i.ax, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.be, align 4, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bh = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bi = insertelement <2 x float> %i.bh, float %i.ak, i64 1
  %i.bj = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = fmul <2 x float> %i.bi, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.bo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bn, <2 x float> %i.bk)
  %i.bp = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.br = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bo)
  %i.bt = fneg <2 x float> %i.an                  ; 3 uses
  %i.bu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %.fca.0.load.i, <2 x float> %i.bs) ; 3 uses
  %i.bv = extractelement <2 x float> %i.bt, i64 0
  %i.bw = call float @llvm.fmuladd.f32(float %i.bv, float %.sroa.051.4.vec.extract, float %i.ba)
  %i.bx = extractelement <2 x float> %i.bt, i64 1
  %i.by = call float @llvm.fmuladd.f32(float %i.bx, float %.sroa.5.8.vec.extract, float %i.bw) ; 3 uses
  %i.bz = extractelement <2 x float> %i.bu, i64 1 ; 2 uses
  %i.ca = call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.bb)
  %i.cb = extractelement <2 x float> %i.bu, i64 0 ; 2 uses
  %i.cc = call float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.ca)
  %i.cd = call noundef float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.cc)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.cd)
  %i.ce = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.cf = fmul float %i.ax, %i.ce                 ; 5 uses
  %i.cg = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.bu, %i.ch           ; 4 uses
  %i.cj = fmul float %i.by, %i.ce                 ; 5 uses
  %i.ck = fmul float %i.cf, %i.cf
  %i.cl = extractelement <2 x float> %i.ci, i64 1 ; 4 uses
  %i.cm = call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.ck)
  %i.cn = extractelement <2 x float> %i.ci, i64 0 ; 3 uses
  %i.co = call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cm)
  %i.cp = call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.co)
  %i.cq = fdiv float 2.000000e+00, %i.cp          ; 3 uses
  %i.cr = fmul float %i.cf, %i.cq                 ; 3 uses
  %i.cs = fmul float %i.cn, %i.cq                 ; 4 uses
  %i.ct = fmul float %i.cj, %i.cr                 ; 2 uses
  %i.cu = fmul float %i.cj, %i.cs                 ; 2 uses
  %i.cv = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.cq, i64 1
  %i.cx = fmul <2 x float> %i.ci, %i.cw           ; 4 uses
  %foldExtExtBinop71 = fmul <2 x float> %i.ci, %i.cx
  %i.cy = extractelement <2 x float> %foldExtExtBinop71, i64 1 ; 2 uses
  %i.cz = fmul float %i.cl, %i.cr                 ; 2 uses
  %i.da = fmul float %i.cl, %i.cs                 ; 2 uses
  %i.db = fmul float %i.cf, %i.cr                 ; 2 uses
  %i.dc = fmul float %i.cf, %i.cs                 ; 2 uses
  %i.dd = extractelement <2 x float> %i.cx, i64 0
  %i.de = fadd float %i.db, %i.dd
  %i.df = fsub float 1.000000e+00, %i.de
  %i.dg = fsub float %i.cz, %i.cu
  %i.dh = fadd float %i.da, %i.ct
  %i.di = fadd float %i.cz, %i.cu
  %i.dj = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.cj, i64 1 ; 2 uses
  %i.dl = fadd <2 x float> %i.dk, %i.cx
  %i.dm = fmul <2 x float> %i.dk, %i.cx           ; 2 uses
  %i.dn = shufflevector <2 x float> %i.dl, <2 x float> %i.dm, <2 x i32> <i32 0, i32 3>
  %i.do = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.dc, i64 1
  %i.dp = fsub <2 x float> %i.do, %i.dn
  %i.dq = fsub float %i.da, %i.ct
  %i.dr = extractelement <2 x float> %i.dm, i64 1
  %i.ds = fadd float %i.dc, %i.dr
  %i.dt = fadd float %i.cy, %i.db
  %i.du = fsub float 1.000000e+00, %i.dt
  store float %i.df, ptr %4, align 4, !tbaa !20
  store float %i.dg, ptr %i.bc, align 4, !tbaa !20
  store float %i.dh, ptr %i.bd, align 4, !tbaa !20
  store float %i.di, ptr %i.bf, align 4, !tbaa !20
  store <2 x float> %i.dp, ptr %i.bg, align 4, !tbaa !20
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.dv, align 4, !tbaa !20
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.dq, ptr %i.dw, align 4, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.ds, ptr %i.dx, align 4, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.du, ptr %i.dy, align 4, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.dz, align 4, !tbaa !20
  ret void
}

declare void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN27btContinuousConvexCollisionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  resume { ptr, i32 } %i.a
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %4 = alloca %class.btMatrix3x3, align 16        ; 6 uses
  %5 = alloca %class.btQuaternion, align 4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !20, !noalias !48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !20, !noalias !48
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load float, ptr %i.m, align 4, !tbaa !20, !noalias !48
  %7 = load <2 x float>, ptr %i.c, align 4, !tbaa !20, !noalias !51 ; 3 uses
  %i.o = load <2 x float>, ptr %i.a, align 4, !tbaa !20, !noalias !51 ; 5 uses
  %8 = fneg <2 x float> %7                        ; 3 uses
  %i.p = load <2 x float>, ptr %0, align 4, !tbaa !20, !noalias !51 ; 3 uses
  %9 = extractelement <2 x float> %8, i64 1
  %10 = extractelement <2 x float> %i.p, i64 0    ; 2 uses
  %11 = extractelement <2 x float> %i.o, i64 0
  %12 = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %14 = insertelement <4 x float> %13, float -0.000000e+00, i64 3
  %15 = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %16 = shufflevector <4 x float> %14, <4 x float> %15, <4 x i32> <i32 0, i32 poison, i32 4, i32 3>
  %i.q = load <2 x float>, ptr %i.b, align 4, !tbaa !20, !noalias !51 ; 4 uses
  %i.r = load float, ptr %6, align 4, !tbaa !20, !noalias !51 ; 2 uses
  %17 = fneg float %i.r
  %18 = load <2 x float>, ptr %i.e, align 4, !tbaa !20, !noalias !51 ; 3 uses
  %19 = load float, ptr %i.d, align 4, !tbaa !20, !noalias !51
  %20 = load <2 x float>, ptr %i.f, align 4, !tbaa !20, !noalias !51 ; 5 uses
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %22 = shufflevector <2 x float> %18, <2 x float> %i.q, <2 x i32> <i32 1, i32 2>
  %23 = fneg <2 x float> %22                      ; 2 uses
  %i.s = fmul <2 x float> %20, %23
  %24 = fmul float %i.r, %9
  %25 = fmul float %10, %17
  %i.t = extractelement <2 x float> %20, i64 1
  %foldExtExtBinop = fmul <2 x float> %21, %8
  %26 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = fmul <2 x float> %i.o, %23
  %27 = extractelement <2 x float> %i.u, i64 0
  %28 = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %29 = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %28, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %30 = shufflevector <4 x float> %29, <4 x float> %12, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %31 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %32 = shufflevector <4 x float> %30, <4 x float> %31, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %33 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %34 = shufflevector <4 x float> %16, <4 x float> %33, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %35 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %27, i64 0
  %36 = insertelement <4 x float> %35, float %26, i64 1
  %37 = insertelement <4 x float> %36, float %25, i64 2
  %38 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %32, <4 x float> %34, <4 x float> %37) ; 2 uses
  %39 = extractelement <4 x float> %38, i64 0
  %40 = extractelement <2 x float> %20, i64 0
  %41 = fmul float %40, %39
  %42 = shufflevector <2 x float> %18, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  %43 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %42, <2 x float> %i.s)
  %44 = extractelement <2 x float> %i.q, i64 0
  %45 = tail call noundef float @llvm.fmuladd.f32(float %44, float %19, float %24) ; 2 uses
  %46 = tail call float @llvm.fmuladd.f32(float %10, float %45, float %41)
  %47 = fneg float %11
  %48 = shufflevector <2 x float> %i.o, <2 x float> %i.p, <4 x i32> <i32 1, i32 2, i32 3, i32 poison> ; 2 uses
  %49 = insertelement <4 x float> %48, float 0.000000e+00, i64 3
  %50 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %47, i64 2
  %51 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %52 = shufflevector <4 x float> %51, <4 x float> %50, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %53 = fmul <4 x float> %49, %52
  %54 = shufflevector <4 x float> %34, <4 x float> %48, <4 x i32> <i32 2, i32 6, i32 5, i32 poison>
  %55 = insertelement <4 x float> %54, float 0.000000e+00, i64 3
  %56 = shufflevector <2 x float> %7, <2 x float> %i.o, <4 x i32> <i32 1, i32 0, i32 3, i32 poison>
  %57 = insertelement <4 x float> %56, float -0.000000e+00, i64 3
  %58 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %55, <4 x float> %57, <4 x float> %53) ; 2 uses
  %59 = extractelement <4 x float> %58, i64 0
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %59, float %46)
  %60 = fdiv float 1.000000e+00, %i.v
  %61 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %45, i64 0
  %62 = shufflevector <2 x float> %43, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %63 = shufflevector <4 x float> %61, <4 x float> %62, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %64 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %60, i64 0
  %65 = shufflevector <4 x float> %64, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 3 uses
  %66 = fmul <4 x float> %63, %65                 ; 2 uses
  %67 = fmul <4 x float> %38, %65                 ; 2 uses
  %68 = fmul <4 x float> %58, %65                 ; 2 uses
  %69 = load <2 x float>, ptr %1, align 4, !tbaa !20, !noalias !48 ; 2 uses
  %70 = shufflevector <2 x float> %69, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %71 = fmul <4 x float> %70, %67
  %72 = shufflevector <2 x float> %69, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %73 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %66, <4 x float> %72, <4 x float> %71)
  %74 = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.h, i64 0
  %75 = shufflevector <4 x float> %74, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %76 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %68, <4 x float> %75, <4 x float> %73)
  store <4 x float> %76, ptr %4, align 16, !tbaa !20, !alias.scope !48
  %77 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %78 = load <2 x float>, ptr %i.i, align 4, !tbaa !20, !noalias !48 ; 2 uses
  %79 = shufflevector <2 x float> %78, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %80 = insertelement <4 x float> %67, float 1.000000e+00, i64 3 ; 2 uses
  %81 = fmul <4 x float> %79, %80
  %82 = insertelement <4 x float> %66, float 0.000000e+00, i64 3 ; 2 uses
  %83 = shufflevector <2 x float> %78, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %84 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %82, <4 x float> %83, <4 x float> %81)
  %85 = insertelement <4 x float> %68, float 0.000000e+00, i64 3 ; 2 uses
  %86 = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.k, i64 0
  %87 = shufflevector <4 x float> %86, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %88 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %85, <4 x float> %87, <4 x float> %84)
  store <4 x float> %88, ptr %77, align 16, !tbaa !20, !alias.scope !48
  %89 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %90 = load <2 x float>, ptr %i.l, align 4, !tbaa !20, !noalias !48 ; 2 uses
  %91 = shufflevector <2 x float> %90, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %92 = fmul <4 x float> %91, %80
  %93 = shufflevector <2 x float> %90, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %94 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %82, <4 x float> %93, <4 x float> %92)
  %95 = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.n, i64 0
  %96 = shufflevector <4 x float> %95, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %97 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %85, <4 x float> %96, <4 x float> %94)
  store <4 x float> %97, ptr %89, align 16, !tbaa !20, !alias.scope !48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.w = load float, ptr %5, align 4, !tbaa !20   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !20 ; 3 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !20 ; 3 uses
  %i.ad = call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.aa)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !20 ; 3 uses
  %i.ag = call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ad)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ag)
  %i.ah = fdiv float 1.000000e+00, %sqrt.i.i      ; 4 uses
  %i.ai = fmul float %i.w, %i.ah                  ; 3 uses
  %i.aj = fmul float %i.y, %i.ah                  ; 3 uses
  %i.ak = fmul float %i.ac, %i.ah                 ; 3 uses
  %i.al = fmul float %i.af, %i.ah
  %i.am = call noundef float @acosf(float noundef %i.al) #13, !tbaa !4
  %i.an = fmul float %i.am, 2.000000e+00
  store float %i.an, ptr %3, align 4, !tbaa !20
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.616.0..sroa_idx, align 4, !tbaa !20
  %i.ao = fmul float %i.aj, %i.aj
  %i.ap = call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ao)
  %i.aq = call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.ap) ; 2 uses
  %i.ar = fcmp olt float %i.aq, f0x28800000
  br i1 %i.ar, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt = call float @llvm.sqrt.f32(float %i.aq)
  %i.as = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.at = fmul float %i.ai, %i.as
  %i.au = fmul float %i.aj, %i.as
  %i.av = fmul float %i.ak, %i.as
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink21 = phi float [ %i.at, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.sink20 = phi float [ %i.au, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink = phi float [ %i.av, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink21, ptr %2, align 4
  store float %.sink20, ptr %.sroa.414.0..sroa_idx, align 4
  store float %.sink, ptr %.sroa.515.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !20   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !20 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !20 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
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
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #13, !tbaa !4 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !20
  %i.t = load float, ptr %i.m, align 4, !tbaa !20
  %i.u = load float, ptr %i.j, align 4, !tbaa !20
  %i.v = load float, ptr %i.k, align 4, !tbaa !20
  %i.w = load float, ptr %i.o, align 4, !tbaa !20
  %i.x = load float, ptr %i.p, align 4, !tbaa !20
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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !20
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !20
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #13, !tbaa !4 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !20
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !20
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !20
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !20
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !20
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !20
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !20
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !20
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !20
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !20
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN16btPointCollectorD0Ev(ptr noundef nonnull align 8 dereferenceable(45) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector20setShapeIdentifiersAEii(ptr noundef nonnull align 8 dereferenceable(45) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector20setShapeIdentifiersBEii(ptr noundef nonnull align 8 dereferenceable(45) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector15addContactPointERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !29
  %i.c = fcmp olt float %3, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.d, align 4, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !40
  store float %3, ptr %i.a, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !13, i64 8}
!11 = !{!"_ZTS27btContinuousConvexCollision", !12, i64 0, !13, i64 8, !15, i64 16, !16, i64 24, !16, i64 32}
!12 = !{!"_ZTS12btConvexCast"}
!13 = !{!"p1 _ZTS22btVoronoiSimplexSolver", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS30btConvexPenetrationDepthSolver", !14, i64 0}
!16 = !{!"p1 _ZTS13btConvexShape", !14, i64 0}
!17 = !{!11, !15, i64 16}
!18 = !{!11, !16, i64 24}
!19 = !{!11, !16, i64 32}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !6, i64 0}
!22 = !{!6, !6, i64 0}
!23 = !{!24, !5, i64 8}
!24 = !{!"_ZTS16btCollisionShape", !5, i64 8, !14, i64 16}
!25 = !{!26, !21, i64 56}
!26 = !{!"_ZTS21btConvexInternalShape", !27, i64 0, !28, i64 24, !28, i64 40, !21, i64 56, !21, i64 60}
!27 = !{!"_ZTS13btConvexShape", !24, i64 0}
!28 = !{!"_ZTS9btVector3", !6, i64 0}
!29 = !{!30, !21, i64 40}
!30 = !{!"_ZTS16btPointCollector", !31, i64 0, !28, i64 8, !28, i64 24, !21, i64 40, !32, i64 44}
!31 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!32 = !{!"bool", !6, i64 0}
!33 = !{!30, !32, i64 44}
!34 = !{!35, !21, i64 128}
!35 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface17ClosestPointInputE", !36, i64 0, !36, i64 64, !21, i64 128, !38, i64 136}
!36 = !{!"_ZTS11btTransform", !37, i64 0, !28, i64 48}
!37 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!38 = !{!"p1 _ZTS12btStackAlloc", !14, i64 0}
!39 = !{!35, !38, i64 136}
!40 = !{i64 0, i64 16, !22}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!44, !45, i64 176}
!44 = !{!"_ZTSN12btConvexCast10CastResultE", !36, i64 8, !36, i64 72, !28, i64 136, !28, i64 152, !21, i64 168, !45, i64 176, !21, i64 184}
!45 = !{!"p1 _ZTS12btIDebugDraw", !14, i64 0}
!46 = !{!44, !21, i64 168}
!47 = !{!44, !21, i64 184}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!50 = distinct !{!50, !"_ZmlRK11btMatrix3x3S1_"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!53 = distinct !{!53, !"_ZNK11btMatrix3x37inverseEv"}
end_hunk_0
