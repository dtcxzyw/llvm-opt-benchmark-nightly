Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMinkowskiPenetrationDepthSolver?download=true
inline.NumInlined: 168
inline.NumDeleted: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btGjkPairDetector = type <{ %struct.btDiscreteCollisionDetectorInterface, %class.btVector3, ptr, ptr, ptr, ptr, i32, i32, float, float, i8, [3 x i8], float, i32, i32, i32, i32, i32, [4 x i8] }>
%struct.btDiscreteCollisionDetectorInterface = type { ptr }
%"struct.btDiscreteCollisionDetectorInterface::ClosestPointInput" = type { %class.btTransform, %class.btTransform, float }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }
%struct.btIntermediateResult = type <{ %"struct.btDiscreteCollisionDetectorInterface::Result", %class.btVector3, %class.btVector3, float, i8, [3 x i8] }>
%"struct.btDiscreteCollisionDetectorInterface::Result" = type { ptr }

$_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev = comdat any

$_ZN30btConvexPenetrationDepthSolverD2Ev = comdat any

$_ZN33btMinkowskiPenetrationDepthSolverD0Ev = comdat any

$_ZTI30btConvexPenetrationDepthSolver = comdat any

$_ZTS30btConvexPenetrationDepthSolver = comdat any

$_ZTIN36btDiscreteCollisionDetectorInterface6ResultE = comdat any

$_ZTSN36btDiscreteCollisionDetectorInterface6ResultE = comdat any

@_ZZN33btMinkowskiPenetrationDepthSolver24getPenetrationDirectionsEvE22sPenetrationDirections = internal global [62 x %class.btVector3] zeroinitializer, align 16
@_ZGVZN33btMinkowskiPenetrationDepthSolver24getPenetrationDirectionsEvE22sPenetrationDirections = internal global i64 0, align 8
@_ZTV33btMinkowskiPenetrationDepthSolver = dso_local local_unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI33btMinkowskiPenetrationDepthSolver, ptr @_ZN30btConvexPenetrationDepthSolverD2Ev, ptr @_ZN33btMinkowskiPenetrationDepthSolverD0Ev, ptr @_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDraw] }, align 8
@_ZTI33btMinkowskiPenetrationDepthSolver = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS33btMinkowskiPenetrationDepthSolver, ptr @_ZTI30btConvexPenetrationDepthSolver }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS33btMinkowskiPenetrationDepthSolver = dso_local constant [36 x i8] c"33btMinkowskiPenetrationDepthSolver\00", align 1
@_ZTI30btConvexPenetrationDepthSolver = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS30btConvexPenetrationDepthSolver }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS30btConvexPenetrationDepthSolver = linkonce_odr dso_local constant [33 x i8] c"30btConvexPenetrationDepthSolver\00", comdat, align 1
@_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawE20btIntermediateResult = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawE20btIntermediateResult, ptr @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev, ptr @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawEN20btIntermediateResultD0Ev, ptr @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawEN20btIntermediateResult20setShapeIdentifiersAEii, ptr @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawEN20btIntermediateResult20setShapeIdentifiersBEii, ptr @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawEN20btIntermediateResult15addContactPointERKS8_SE_f] }, align 8
@_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawE20btIntermediateResult = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawE20btIntermediateResult, ptr @_ZTIN36btDiscreteCollisionDetectorInterface6ResultE }, align 8
@_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawE20btIntermediateResult = internal constant [171 x i8] c"ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawE20btIntermediateResult\00", align 1
@_ZTIN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN36btDiscreteCollisionDetectorInterface6ResultE }, comdat, align 8
@_ZTSN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant [48 x i8] c"N36btDiscreteCollisionDetectorInterface6ResultE\00", comdat, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDraw(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(357) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %8, ptr noundef %9) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca [62 x %class.btVector3], align 16  ; 4 uses
  %11 = alloca [62 x %class.btVector3], align 16  ; 4 uses
  %12 = alloca [62 x %class.btVector3], align 16  ; 6 uses
  %13 = alloca [62 x %class.btVector3], align 16  ; 6 uses
  %14 = alloca %class.btVector3, align 8          ; 9 uses
  %15 = alloca %class.btVector3, align 8          ; 9 uses
  %16 = alloca %class.btGjkPairDetector, align 8  ; 6 uses
  %17 = alloca %"struct.btDiscreteCollisionDetectorInterface::ClosestPointInput", align 4 ; 13 uses
  %18 = alloca %struct.btIntermediateResult, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25
  %i.c = add i32 %i.b, -17
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %.preheader330

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = add i32 %i.f, -17
  %i.h = icmp ult i32 %i.g, 2
  br label %.preheader330

.preheader330:                                    ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader330, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader330 ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.v = tail call noundef ptr @_ZN33btMinkowskiPenetrationDepthSolver24getPenetrationDirectionsEv() ; 0 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr @_ZZN33btMinkowskiPenetrationDepthSolver24getPenetrationDirectionsEvE22sPenetrationDirections, i64 %indvars.iv ; 3 uses
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.5277.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %19 = load <2 x float>, ptr %4, align 4, !tbaa !10
  %20 = load <2 x float>, ptr %i.j, align 4, !tbaa !10
  %21 = load <2 x float>, ptr %i.k, align 4, !tbaa !10
  %22 = load float, ptr %i.m, align 4, !tbaa !10
  %23 = load float, ptr %i.n, align 4, !tbaa !10
  %24 = load float, ptr %i.o, align 4, !tbaa !10
  %25 = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %indvars.iv ; 2 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.5277.0.copyload = load float, ptr %.sroa.5277.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0275.0.copyload = load float, ptr %i.w, align 16 ; 3 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.5277.0..sroa_idx.a, align 8 ; 3 uses
  %26 = fneg float %.sroa.5277.0.copyload         ; 2 uses
  %27 = fneg float %.sroa.0275.0.copyload         ; 2 uses
  %28 = fneg float %.sroa.7.0.copyload            ; 2 uses
  %29 = insertelement <2 x float> poison, float %26, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = fmul <2 x float> %20, %30
  %32 = insertelement <2 x float> poison, float %27, i64 0
  %33 = shufflevector <2 x float> %32, <2 x float> poison, <2 x i32> zeroinitializer
  %34 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %33, <2 x float> %31)
  %35 = insertelement <2 x float> poison, float %28, i64 0
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <2 x i32> zeroinitializer
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %36, <2 x float> %34)
  %38 = fmul float %23, %26
  %39 = tail call float @llvm.fmuladd.f32(float %22, float %27, float %38)
  %40 = tail call noundef float @llvm.fmuladd.f32(float %24, float %28, float %39)
  %.sroa.3.12.vec.insert.i142 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %40, i64 0
  store <2 x float> %37, ptr %25, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i142, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !11
  %i.x = load <2 x float>, ptr %5, align 4, !tbaa !10
  %i.y = load <2 x float>, ptr %i.p, align 4, !tbaa !10
  %i.z = insertelement <2 x float> poison, float %.sroa.5277.0.copyload, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x float> %i.aa, %i.y
  %41 = insertelement <2 x float> poison, float %.sroa.0275.0.copyload, i64 0
  %i.ac = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.ac, <2 x float> %i.ab)
  %i.ae = load <2 x float>, ptr %i.q, align 4, !tbaa !10
  %42 = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %43 = shufflevector <2 x float> %42, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %43, <2 x float> %i.ad)
  %i.ag = load float, ptr %i.s, align 4, !tbaa !10
  %i.ah = load float, ptr %i.t, align 4, !tbaa !10
  %i.ai = fmul float %.sroa.5277.0.copyload, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ag, float %.sroa.0275.0.copyload, float %i.ai)
  %i.ak = load float, ptr %i.u, align 4, !tbaa !10
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %.sroa.7.0.copyload, float %i.aj)
  %.sroa.3.12.vec.insert.i147 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.af, ptr %i.am, align 16
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i147, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 42
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !19

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %2, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 168
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %.loopexit329

.lr.ph:                                           ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv353 = phi i64 [ 42, %.lr.ph ], [ %indvars.iv.next354, %bb.e ] ; 4 uses
  %.0115332 = phi i32 [ 0, %.lr.ph ], [ %i.dr, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  %i.au = load ptr, ptr %2, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 176
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %.0115332, ptr noundef nonnull align 4 dereferenceable(16) %14)
  %i.ax = load float, ptr %i.m, align 4, !tbaa !10
  %i.ay = load float, ptr %i.n, align 4, !tbaa !10
  %i.az = load <2 x float>, ptr %4, align 4, !tbaa !10 ; 2 uses
  %i.ba = load float, ptr %i.as, align 4, !tbaa !10 ; 2 uses
  %i.bb = load float, ptr %14, align 8, !tbaa !10 ; 2 uses
  %i.bc = load float, ptr %i.at, align 8, !tbaa !10 ; 2 uses
  %i.bd = load <2 x float>, ptr %i.j, align 4, !tbaa !10 ; 2 uses
  %i.be = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = shufflevector <2 x float> %i.az, <2 x float> %i.bd, <2 x i32> <i32 1, i32 3>
  %i.bh = fmul <2 x float> %i.bf, %i.bg
  %i.bi = shufflevector <2 x float> %i.az, <2 x float> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.bj = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.bk, <2 x float> %i.bh)
  %i.bm = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.ay, i64 1
  %i.bo = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.bp, <2 x float> %i.bl)
  %i.br = load float, ptr %i.k, align 4, !tbaa !10
  %i.bs = load float, ptr %i.l, align 4, !tbaa !10
  %i.bt = fmul float %i.ba, %i.bs
  %i.bu = call float @llvm.fmuladd.f32(float %i.br, float %i.bb, float %i.bt)
  %i.bv = load float, ptr %i.o, align 4, !tbaa !10
  %i.bw = call noundef float @llvm.fmuladd.f32(float %i.bv, float %i.bc, float %i.bu)
  %.sroa.3.12.vec.insert.i152 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bw, i64 0
  store <2 x float> %i.bq, ptr %14, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i152, ptr %i.at, align 8, !tbaa !11
  %i.bx = call noundef ptr @_ZN33btMinkowskiPenetrationDepthSolver24getPenetrationDirectionsEv() ; 0 uses
  %i.by = getelementptr inbounds nuw [16 x i8], ptr @_ZZN33btMinkowskiPenetrationDepthSolver24getPenetrationDirectionsEvE22sPenetrationDirections, i64 %indvars.iv353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.by, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !12
  %i.bz = load <2 x float>, ptr %4, align 4, !tbaa !10
  %i.ca = load <2 x float>, ptr %i.j, align 4, !tbaa !10
  %i.cb = load <2 x float>, ptr %i.k, align 4, !tbaa !10
  %i.cc = load float, ptr %i.m, align 4, !tbaa !10
  %i.cd = load float, ptr %i.n, align 4, !tbaa !10
  %i.ce = load float, ptr %i.o, align 4, !tbaa !10
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %indvars.iv353 ; 2 uses
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cg = load float, ptr %i.as, align 4, !tbaa !10 ; 3 uses
  %i.ch = load float, ptr %14, align 8, !tbaa !10 ; 3 uses
  %i.ci = load float, ptr %i.at, align 8, !tbaa !10 ; 3 uses
  %i.cj = fneg float %i.cg                        ; 2 uses
  %i.ck = fneg float %i.ch                        ; 2 uses
  %i.cl = fneg float %i.ci                        ; 2 uses
  %i.cm = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cn = shufflevector <2 x float> %i.cm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x float> %i.ca, %i.cn
  %i.cp = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bz, <2 x float> %i.cq, <2 x float> %i.co)
  %i.cs = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ct, <2 x float> %i.cr)
  %i.cv = fmul float %i.cd, %i.cj
  %i.cw = call float @llvm.fmuladd.f32(float %i.cc, float %i.ck, float %i.cv)
  %i.cx = call noundef float @llvm.fmuladd.f32(float %i.ce, float %i.cl, float %i.cw)
  %.sroa.3.12.vec.insert.i162 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cx, i64 0
  store <2 x float> %i.cu, ptr %i.cf, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i162, ptr %.sroa.423.0..sroa_idx, align 8, !tbaa !11
  %i.cy = load <2 x float>, ptr %5, align 4, !tbaa !10
  %i.cz = load <2 x float>, ptr %i.p, align 4, !tbaa !10
  %i.da = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x float> %i.db, %i.cz
  %i.dd = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.de, <2 x float> %i.dc)
  %i.dg = load <2 x float>, ptr %i.q, align 4, !tbaa !10
  %i.dh = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.di, <2 x float> %i.df)
  %i.dk = load float, ptr %i.s, align 4, !tbaa !10
  %i.dl = load float, ptr %i.t, align 4, !tbaa !10
  %i.dm = fmul float %i.cg, %i.dl
  %i.dn = call float @llvm.fmuladd.f32(float %i.dk, float %i.ch, float %i.dm)
  %i.do = load float, ptr %i.u, align 4, !tbaa !10
  %i.dp = call noundef float @llvm.fmuladd.f32(float %i.do, float %i.ci, float %i.dn)
  %.sroa.3.12.vec.insert.i167 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dp, i64 0
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %indvars.iv353 ; 2 uses
  store <2 x float> %i.dj, ptr %i.dq, align 16
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i167, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !11
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  %i.dr = add nuw nsw i32 %.0115332, 1            ; 2 uses
  %exitcond356.not = icmp eq i32 %i.dr, %i.aq
  br i1 %exitcond356.not, label %.loopexit329.loopexit, label %bb.e, !llvm.loop !20

.loopexit329.loopexit:                            ; preds = %bb.e
  %i.ds = trunc nuw i64 %indvars.iv.next354 to i32
  br label %.loopexit329

.loopexit329:                                     ; preds = %.loopexit329.loopexit, %bb.d
  %.1112 = phi i32 [ 42, %bb.d ], [ %i.ds, %.loopexit329.loopexit ] ; 2 uses
  %i.dt = load ptr, ptr %3, align 8, !tbaa !28
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 168
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call noundef i32 %i.dv(ptr noundef nonnull align 8 dereferenceable(32) %3) ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph336, label %.loopexit

.lr.ph336:                                        ; preds = %.loopexit329
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.ea = zext i32 %.1112 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph336, %bb.f
  %indvars.iv357 = phi i64 [ %i.ea, %.lr.ph336 ], [ %indvars.iv.next358, %bb.f ] ; 4 uses
  %.0116334 = phi i32 [ 0, %.lr.ph336 ], [ %i.gy, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  %i.eb = load ptr, ptr %3, align 8, !tbaa !28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 176
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %.0116334, ptr noundef nonnull align 4 dereferenceable(16) %15)
  %i.ee = load float, ptr %i.s, align 4, !tbaa !10
  %i.ef = load float, ptr %i.t, align 4, !tbaa !10
  %i.eg = load <2 x float>, ptr %5, align 4, !tbaa !10 ; 2 uses
  %i.eh = load float, ptr %i.dy, align 4, !tbaa !10 ; 2 uses
  %i.ei = load float, ptr %15, align 8, !tbaa !10 ; 2 uses
  %i.ej = load float, ptr %i.dz, align 8, !tbaa !10 ; 2 uses
  %i.ek = load <2 x float>, ptr %i.p, align 4, !tbaa !10 ; 2 uses
  %i.el = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = shufflevector <2 x float> %i.eg, <2 x float> %i.ek, <2 x i32> <i32 1, i32 3>
  %i.eo = fmul <2 x float> %i.em, %i.en
  %i.ep = shufflevector <2 x float> %i.eg, <2 x float> %i.ek, <2 x i32> <i32 0, i32 2>
  %i.eq = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.er, <2 x float> %i.eo)
  %i.et = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.ef, i64 1
  %i.ev = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ew, <2 x float> %i.es)
  %i.ey = load float, ptr %i.q, align 4, !tbaa !10
  %i.ez = load float, ptr %i.r, align 4, !tbaa !10
  %i.fa = fmul float %i.eh, %i.ez
  %i.fb = call float @llvm.fmuladd.f32(float %i.ey, float %i.ei, float %i.fa)
  %i.fc = load float, ptr %i.u, align 4, !tbaa !10
  %i.fd = call noundef float @llvm.fmuladd.f32(float %i.fc, float %i.ej, float %i.fb)
  %.sroa.3.12.vec.insert.i172 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fd, i64 0
  store <2 x float> %i.ex, ptr %15, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i172, ptr %i.dz, align 8, !tbaa !11
  %i.fe = call noundef ptr @_ZN33btMinkowskiPenetrationDepthSolver24getPenetrationDirectionsEv() ; 0 uses
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr @_ZZN33btMinkowskiPenetrationDepthSolver24getPenetrationDirectionsEvE22sPenetrationDirections, i64 %indvars.iv357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !12
  %i.fg = load <2 x float>, ptr %4, align 4, !tbaa !10
  %i.fh = load <2 x float>, ptr %i.j, align 4, !tbaa !10
  %i.fi = load <2 x float>, ptr %i.k, align 4, !tbaa !10
  %i.fj = load float, ptr %i.m, align 4, !tbaa !10
  %i.fk = load float, ptr %i.n, align 4, !tbaa !10
  %i.fl = load float, ptr %i.o, align 4, !tbaa !10
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %indvars.iv357 ; 2 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fn = load float, ptr %i.dy, align 4, !tbaa !10 ; 3 uses
  %i.fo = load float, ptr %15, align 8, !tbaa !10 ; 3 uses
  %i.fp = load float, ptr %i.dz, align 8, !tbaa !10 ; 3 uses
  %i.fq = fneg float %i.fn                        ; 2 uses
  %i.fr = fneg float %i.fo                        ; 2 uses
  %i.fs = fneg float %i.fp                        ; 2 uses
  %i.ft = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x float> %i.fh, %i.fu
  %i.fw = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fx, <2 x float> %i.fv)
  %i.fz = insertelement <2 x float> poison, float %i.fs, i64 0
end_hunk_0
