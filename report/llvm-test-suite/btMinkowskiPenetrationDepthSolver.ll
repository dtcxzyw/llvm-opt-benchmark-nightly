Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btMinkowskiPenetrationDepthSolver?download=true
inline.NumInlined: 170
inline.NumDeleted: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btGjkPairDetector = type { %struct.btDiscreteCollisionDetectorInterface, %class.btVector3, ptr, ptr, ptr, ptr, i32, i32, float, float, i8, float, i32, i32, i32, i32 }
%struct.btDiscreteCollisionDetectorInterface = type { ptr }
%"struct.btDiscreteCollisionDetectorInterface::ClosestPointInput" = type { %class.btTransform, %class.btTransform, float, ptr }
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

@_ZL22sPenetrationDirections = internal unnamed_addr global [62 x %class.btVector3] [%class.btVector3 { [4 x float] [float 0.000000e+00, float -0.000000e+00, float -1.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 7.236080e-01, float -5.257250e-01, float -4.472190e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -2.763880e-01, float f0xBF59C422, float -4.472190e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0xBF64F91A, float -0.000000e+00, float -4.472160e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -2.763880e-01, float f0x3F59C422, float -4.472200e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 7.236080e-01, float 5.257250e-01, float -4.472190e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 2.763880e-01, float f0xBF59C422, float 4.472200e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -7.236080e-01, float -5.257250e-01, float 4.472190e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -7.236080e-01, float 5.257250e-01, float 4.472190e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 2.763880e-01, float f0x3F59C422, float 4.472190e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0x3F64F91A, float 0.000000e+00, float 4.472160e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 4.253230e-01, float -3.090110e-01, float -8.506540e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -1.624560e-01, float -4.999950e-01, float -8.506540e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 2.628690e-01, float f0xBF4F1B69, float -5.257380e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 4.253230e-01, float 3.090110e-01, float -8.506540e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0x3F59C411, float -0.000000e+00, float -5.257360e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -5.257300e-01, float -0.000000e+00, float -8.506520e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0xBF302D38, float -4.999970e-01, float -5.257360e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -1.624560e-01, float 4.999950e-01, float -8.506540e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0xBF302D38, float 4.999970e-01, float -5.257360e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 2.628690e-01, float f0x3F4F1B69, float -5.257380e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0x3F737889, float 3.090130e-01, float 0.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0x3F737889, float -3.090130e-01, float 0.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 5.877860e-01, float -8.090170e-01, float 0.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -5.877860e-01, float -8.090170e-01, float 0.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0xBF737889, float -3.090130e-01, float -0.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0xBF737889, float 3.090130e-01, float -0.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -5.877860e-01, float 8.090170e-01, float -0.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -0.000000e+00, float 1.000000e+00, float -0.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 5.877860e-01, float 8.090170e-01, float -0.000000e+00, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0x3F302D38, float -4.999970e-01, float 5.257360e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -2.628690e-01, float f0xBF4F1B69, float 5.257380e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0xBF59C411, float 0.000000e+00, float 5.257360e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -2.628690e-01, float f0x3F4F1B69, float 5.257380e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float f0x3F302D38, float 4.999970e-01, float 5.257360e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 5.257300e-01, float 0.000000e+00, float 8.506520e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 1.624560e-01, float -4.999950e-01, float 8.506540e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -4.253230e-01, float -3.090110e-01, float 8.506540e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float -4.253230e-01, float 3.090110e-01, float 8.506540e-01, float 0.000000e+00] }, %class.btVector3 { [4 x float] [float 1.624560e-01, float 4.999950e-01, float 8.506540e-01, float 0.000000e+00] }, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer, %class.btVector3 zeroinitializer], align 16
@_ZTV33btMinkowskiPenetrationDepthSolver = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI33btMinkowskiPenetrationDepthSolver, ptr @_ZN30btConvexPenetrationDepthSolverD2Ev, ptr @_ZN33btMinkowskiPenetrationDepthSolverD0Ev, ptr @_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc] }, align 8
@_ZTI33btMinkowskiPenetrationDepthSolver = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS33btMinkowskiPenetrationDepthSolver, ptr @_ZTI30btConvexPenetrationDepthSolver }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS33btMinkowskiPenetrationDepthSolver = dso_local constant [36 x i8] c"33btMinkowskiPenetrationDepthSolver\00", align 1
@_ZTI30btConvexPenetrationDepthSolver = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS30btConvexPenetrationDepthSolver }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS30btConvexPenetrationDepthSolver = linkonce_odr dso_local constant [33 x i8] c"30btConvexPenetrationDepthSolver\00", comdat, align 1
@_ZTVZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult, ptr @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev, ptr @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResultD0Ev, ptr @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersAEii, ptr @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult20setShapeIdentifiersBEii, ptr @_ZZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocEN20btIntermediateResult15addContactPointERKS8_SG_f] }, align 8
@_ZTIZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult, ptr @_ZTIN36btDiscreteCollisionDetectorInterface6ResultE }, align 8
@_ZTSZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult = internal constant [186 x i8] c"ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAllocE20btIntermediateResult\00", align 1
@_ZTIN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN36btDiscreteCollisionDetectorInterface6ResultE }, comdat, align 8
@_ZTSN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant [48 x i8] c"N36btDiscreteCollisionDetectorInterface6ResultE\00", comdat, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN33btMinkowskiPenetrationDepthSolver12calcPenDepthER22btVoronoiSimplexSolverPK13btConvexShapeS4_RK11btTransformS7_R9btVector3S9_S9_P12btIDebugDrawP12btStackAlloc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(353) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %8, ptr noundef %9, ptr nofree readnone captures(none) %10) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca [62 x %class.btVector3], align 16  ; 4 uses
  %12 = alloca [62 x %class.btVector3], align 16  ; 4 uses
  %13 = alloca [62 x %class.btVector3], align 16  ; 6 uses
  %14 = alloca [62 x %class.btVector3], align 16  ; 6 uses
  %15 = alloca %class.btVector3, align 8          ; 8 uses
  %16 = alloca %class.btVector3, align 8          ; 8 uses
  %17 = alloca %class.btGjkPairDetector, align 8  ; 6 uses
  %18 = alloca %"struct.btDiscreteCollisionDetectorInterface::ClosestPointInput", align 8 ; 14 uses
  %19 = alloca %struct.btIntermediateResult, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19
  %i.c = add i32 %i.b, -17
  %i.d = icmp ult i32 %i.c, 2
  br i1 %i.d, label %bb.b, label %.preheader335

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  %i.g = add i32 %i.f, -17
  %i.h = icmp ult i32 %i.g, 2
  br label %.preheader335

.preheader335:                                    ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.m = load <2 x float>, ptr %4, align 4, !tbaa !20
  %i.n = load <2 x float>, ptr %i.j, align 4, !tbaa !20
  %i.o = load <2 x float>, ptr %i.k, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.y = load <2 x float>, ptr %5, align 4, !tbaa !20
  %i.z = load <2 x float>, ptr %i.v, align 4, !tbaa !20
  %i.aa = load <2 x float>, ptr %i.w, align 4, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %.preheader335, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader335 ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr @_ZL22sPenetrationDirections, i64 %indvars.iv ; 2 uses
  %.sroa.5282.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.sroa.5282.0.copyload.a = load float, ptr %.sroa.5282.0..sroa_idx.a, align 4 ; 2 uses
  %20 = load <3 x float>, ptr %i.ah, align 16     ; 5 uses
  %21 = extractelement <3 x float> %20, i64 0     ; 2 uses
  %22 = fneg <3 x float> %20                      ; 5 uses
  %i.ai = fneg float %21
  %23 = shufflevector <3 x float> %22, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = fmul <2 x float> %i.n, %23
  %i.ak = shufflevector <3 x float> %22, <3 x float> poison, <2 x i32> zeroinitializer
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.m, <2 x float> %i.ak, <2 x float> %i.aj)
  %24 = shufflevector <3 x float> %22, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %25 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %24, <2 x float> %i.al)
  %26 = extractelement <3 x float> %22, i64 1
  %i.am = fmul float %i.s, %26
  %i.an = tail call float @llvm.fmuladd.f32(float %i.q, float %i.ai, float %i.am)
  %27 = extractelement <3 x float> %22, i64 2
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.u, float %27, float %i.an)
  %.sroa.3.12.vec.insert.i142 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ao, i64 0
  %28 = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %indvars.iv ; 2 uses
  store <2 x float> %25, ptr %28, align 16
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i142, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !9
  %29 = extractelement <3 x float> %20, i64 2
  %i.ap = insertelement <2 x float> poison, float %.sroa.5282.0.copyload.a, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = fmul <2 x float> %i.aq, %i.z
  %31 = shufflevector <3 x float> %20, <3 x float> poison, <2 x i32> zeroinitializer
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %31, <2 x float> %30)
  %33 = shufflevector <3 x float> %20, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ar = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %33, <2 x float> %32)
  %i.as = fmul float %.sroa.5282.0.copyload.a, %i.ae
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ac, float %21, float %i.as)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %29, float %i.at)
  %.sroa.3.12.vec.insert.i147 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %indvars.iv ; 2 uses
  store <2 x float> %i.ar, ptr %i.av, align 16
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i147, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 42
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr %2, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(24) %2) ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %.loopexit334

.lr.ph:                                           ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv358 = phi i64 [ 42, %.lr.ph ], [ %indvars.iv.next359, %bb.e ] ; 4 uses
  %.0115337 = phi i32 [ 0, %.lr.ph ], [ %i.dw, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  %i.bd = load ptr, ptr %2, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 136
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %.0115337, ptr noundef nonnull align 4 dereferenceable(16) %15)
  %i.bg = load float, ptr %i.p, align 4, !tbaa !20
  %i.bh = load float, ptr %i.r, align 4, !tbaa !20
  %i.bi = load <2 x float>, ptr %4, align 4, !tbaa !20 ; 2 uses
  %i.bj = load float, ptr %i.bb, align 4, !tbaa !20 ; 2 uses
  %i.bk = load float, ptr %15, align 8, !tbaa !20 ; 2 uses
  %i.bl = load float, ptr %i.bc, align 8, !tbaa !20 ; 2 uses
  %i.bm = load <2 x float>, ptr %i.j, align 4, !tbaa !20 ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = shufflevector <2 x float> %i.bi, <2 x float> %i.bm, <2 x i32> <i32 1, i32 3>
  %i.bq = fmul <2 x float> %i.bo, %i.bp
  %i.br = shufflevector <2 x float> %i.bi, <2 x float> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.bs = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bt, <2 x float> %i.bq)
  %i.bv = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bh, i64 1
  %i.bx = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.by, <2 x float> %i.bu) ; 5 uses
  %i.ca = load float, ptr %i.k, align 4, !tbaa !20
  %i.cb = load float, ptr %i.l, align 4, !tbaa !20
  %i.cc = fmul float %i.bj, %i.cb
  %i.cd = call float @llvm.fmuladd.f32(float %i.ca, float %i.bk, float %i.cc)
  %i.ce = load float, ptr %i.t, align 4, !tbaa !20
  %i.cf = call noundef float @llvm.fmuladd.f32(float %i.ce, float %i.bl, float %i.cd) ; 4 uses
  %.sroa.3.12.vec.insert.i152 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cf, i64 0
  store <2 x float> %i.bz, ptr %15, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i152, ptr %i.bc, align 8, !tbaa !9
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr @_ZL22sPenetrationDirections, i64 %indvars.iv358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !10
  %i.ch = extractelement <2 x float> %i.bz, i64 0 ; 2 uses
  %i.ci = extractelement <2 x float> %i.bz, i64 1 ; 2 uses
  %i.cj = fneg float %i.ci                        ; 2 uses
  %i.ck = fneg float %i.ch                        ; 2 uses
  %i.cl = fneg float %i.cf                        ; 2 uses
  %i.cm = load <2 x float>, ptr %4, align 4, !tbaa !20
  %i.cn = load <2 x float>, ptr %i.j, align 4, !tbaa !20
  %i.co = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x float> %i.cn, %i.cp
  %i.cr = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cs, <2 x float> %i.cq)
  %i.cu = load <2 x float>, ptr %i.k, align 4, !tbaa !20
  %i.cv = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.cw, <2 x float> %i.ct)
  %i.cy = load float, ptr %i.p, align 4, !tbaa !20
  %i.cz = load float, ptr %i.r, align 4, !tbaa !20
  %i.da = fmul float %i.cz, %i.cj
  %i.db = call float @llvm.fmuladd.f32(float %i.cy, float %i.ck, float %i.da)
  %i.dc = load float, ptr %i.t, align 4, !tbaa !20
  %i.dd = call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.cl, float %i.db)
  %.sroa.3.12.vec.insert.i162 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dd, i64 0
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %indvars.iv358 ; 2 uses
  store <2 x float> %i.cx, ptr %i.de, align 16
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i162, ptr %.sroa.423.0..sroa_idx, align 8, !tbaa !9
  %i.df = load <2 x float>, ptr %5, align 4, !tbaa !20
  %i.dg = load <2 x float>, ptr %i.v, align 4, !tbaa !20
  %i.dh = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fmul <2 x float> %i.dh, %i.dg
  %i.dj = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.dj, <2 x float> %i.di)
  %i.dl = load <2 x float>, ptr %i.w, align 4, !tbaa !20
  %i.dm = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dn, <2 x float> %i.dk)
  %i.dp = load float, ptr %i.ab, align 4, !tbaa !20
  %i.dq = load float, ptr %i.ad, align 4, !tbaa !20
  %i.dr = fmul float %i.ci, %i.dq
  %i.ds = call float @llvm.fmuladd.f32(float %i.dp, float %i.ch, float %i.dr)
  %i.dt = load float, ptr %i.af, align 4, !tbaa !20
  %i.du = call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.cf, float %i.ds)
  %.sroa.3.12.vec.insert.i167 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.du, i64 0
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %14, i64 %indvars.iv358 ; 2 uses
  store <2 x float> %i.do, ptr %i.dv, align 16
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i167, ptr %.sroa.421.0..sroa_idx, align 8, !tbaa !9
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  %i.dw = add nuw nsw i32 %.0115337, 1            ; 2 uses
  %exitcond361.not = icmp eq i32 %i.dw, %i.az
  br i1 %exitcond361.not, label %.loopexit334.loopexit, label %bb.e

.loopexit334.loopexit:                            ; preds = %bb.e
  %i.dx = trunc nuw i64 %indvars.iv.next359 to i32
  br label %.loopexit334

.loopexit334:                                     ; preds = %.loopexit334.loopexit, %bb.d
  %.1112 = phi i32 [ 42, %bb.d ], [ %i.dx, %.loopexit334.loopexit ] ; 2 uses
  %i.dy = load ptr, ptr %3, align 8, !tbaa !22
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call noundef i32 %i.ea(ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph341, label %.loopexit

.lr.ph341:                                        ; preds = %.loopexit334
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ef = zext i32 %.1112 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph341, %bb.f
  %indvars.iv362 = phi i64 [ %i.ef, %.lr.ph341 ], [ %indvars.iv.next363, %bb.f ] ; 4 uses
  %.0116339 = phi i32 [ 0, %.lr.ph341 ], [ %i.gz, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.eg = load ptr, ptr %3, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 136
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %.0116339, ptr noundef nonnull align 4 dereferenceable(16) %16)
  %i.ej = load float, ptr %i.ab, align 4, !tbaa !20
  %i.ek = load float, ptr %i.ad, align 4, !tbaa !20
  %i.el = load <2 x float>, ptr %5, align 4, !tbaa !20 ; 2 uses
  %i.em = load float, ptr %i.ed, align 4, !tbaa !20 ; 2 uses
  %i.en = load float, ptr %16, align 8, !tbaa !20 ; 2 uses
  %i.eo = load float, ptr %i.ee, align 8, !tbaa !20 ; 2 uses
  %i.ep = load <2 x float>, ptr %i.v, align 4, !tbaa !20 ; 2 uses
  %i.eq = insertelement <2 x float> poison, float %i.em, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = shufflevector <2 x float> %i.el, <2 x float> %i.ep, <2 x i32> <i32 1, i32 3>
  %i.et = fmul <2 x float> %i.er, %i.es
  %i.eu = shufflevector <2 x float> %i.el, <2 x float> %i.ep, <2 x i32> <i32 0, i32 2>
  %i.ev = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ew, <2 x float> %i.et)
  %i.ey = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.ek, i64 1
  %i.fa = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ez, <2 x float> %i.fb, <2 x float> %i.ex) ; 5 uses
  %i.fd = load float, ptr %i.w, align 4, !tbaa !20
  %i.fe = load float, ptr %i.x, align 4, !tbaa !20
  %i.ff = fmul float %i.em, %i.fe
  %i.fg = call float @llvm.fmuladd.f32(float %i.fd, float %i.en, float %i.ff)
  %i.fh = load float, ptr %i.af, align 4, !tbaa !20
  %i.fi = call noundef float @llvm.fmuladd.f32(float %i.fh, float %i.eo, float %i.fg) ; 4 uses
  %.sroa.3.12.vec.insert.i172 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fi, i64 0
  store <2 x float> %i.fc, ptr %16, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i172, ptr %i.ee, align 8, !tbaa !9
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr @_ZL22sPenetrationDirections, i64 %indvars.iv362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !10
  %i.fk = extractelement <2 x float> %i.fc, i64 0 ; 2 uses
  %i.fl = extractelement <2 x float> %i.fc, i64 1 ; 2 uses
  %i.fm = fneg float %i.fl                        ; 2 uses
  %i.fn = fneg float %i.fk                        ; 2 uses
  %i.fo = fneg float %i.fi                        ; 2 uses
  %i.fp = load <2 x float>, ptr %4, align 4, !tbaa !20
  %i.fq = load <2 x float>, ptr %i.j, align 4, !tbaa !20
  %i.fr = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x float> %i.fq, %i.fs
  %i.fu = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fv, <2 x float> %i.ft)
  %i.fx = load <2 x float>, ptr %i.k, align 4, !tbaa !20
  %i.fy = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.fz = shufflevector <2 x float> %i.fy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fz, <2 x float> %i.fw)
  %i.gb = load float, ptr %i.p, align 4, !tbaa !20
  %i.gc = load float, ptr %i.r, align 4, !tbaa !20
  %i.gd = fmul float %i.gc, %i.fm
  %i.ge = call float @llvm.fmuladd.f32(float %i.gb, float %i.fn, float %i.gd)
  %i.gf = load float, ptr %i.t, align 4, !tbaa !20
  %i.gg = call noundef float @llvm.fmuladd.f32(float %i.gf, float %i.fo, float %i.ge)
  %.sroa.3.12.vec.insert.i182 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gg, i64 0
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %indvars.iv362 ; 2 uses
  store <2 x float> %i.ga, ptr %i.gh, align 16
end_hunk_0
