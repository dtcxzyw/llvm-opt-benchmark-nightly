inline.NumInlined: 355
inline.NumDeleted: 76
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btSphereShape = type { %class.btConvexInternalShape }
%class.btConvexInternalShape = type { %class.btConvexShape, %class.btVector3, %class.btVector3, float, float }
%class.btConvexShape = type { %class.btCollisionShape }
%class.btCollisionShape = type { ptr, i32, ptr }
%struct.btPointCollector = type <{ %"struct.btDiscreteCollisionDetectorInterface::Result", %class.btVector3, %class.btVector3, float, i8, [3 x i8] }>
%"struct.btDiscreteCollisionDetectorInterface::Result" = type { ptr }
%class.btGjkPairDetector = type { %struct.btDiscreteCollisionDetectorInterface, %class.btVector3, ptr, ptr, ptr, ptr, i32, i32, float, float, i8, float, i32, i32, i32, i32 }
%struct.btDiscreteCollisionDetectorInterface = type { ptr }
%"struct.btDiscreteCollisionDetectorInterface::ClosestPointInput" = type { %class.btTransform, %class.btTransform, float, ptr }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }
%class.btQuaternion = type { %class.btQuadWord }
%class.btQuadWord = type { [4 x float] }

$__clang_call_terminate = comdat any

$_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_ = comdat any

$_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev = comdat any

$_ZN27btContinuousConvexCollisionD0Ev = comdat any

$_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf = comdat any

$_ZNK11btMatrix3x311getRotationER12btQuaternion = comdat any

$_ZN16btPointCollectorD0Ev = comdat any

$_ZN16btPointCollector20setShapeIdentifiersAEii = comdat any

$_ZN16btPointCollector20setShapeIdentifiersBEii = comdat any

$_ZN16btPointCollector15addContactPointERK9btVector3S2_f = comdat any

$_ZTV16btPointCollector = comdat any

$_ZTI16btPointCollector = comdat any

$_ZTS16btPointCollector = comdat any

$_ZTIN36btDiscreteCollisionDetectorInterface6ResultE = comdat any

$_ZTSN36btDiscreteCollisionDetectorInterface6ResultE = comdat any

@_ZTV27btContinuousConvexCollision = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI27btContinuousConvexCollision, ptr @_ZN12btConvexCastD2Ev, ptr @_ZN27btContinuousConvexCollisionD0Ev, ptr @_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE] }, align 8
@_ZTI27btContinuousConvexCollision = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS27btContinuousConvexCollision, ptr @_ZTI12btConvexCast }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS27btContinuousConvexCollision = dso_local constant [30 x i8] c"27btContinuousConvexCollision\00", align 1
@_ZTI12btConvexCast = external constant ptr
@_ZTV13btSphereShape = external unnamed_addr constant { [20 x ptr] }, align 8
@_ZTV16btPointCollector = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI16btPointCollector, ptr @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev, ptr @_ZN16btPointCollectorD0Ev, ptr @_ZN16btPointCollector20setShapeIdentifiersAEii, ptr @_ZN16btPointCollector20setShapeIdentifiersBEii, ptr @_ZN16btPointCollector15addContactPointERK9btVector3S2_f] }, comdat, align 8
@_ZTI16btPointCollector = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16btPointCollector, ptr @_ZTIN36btDiscreteCollisionDetectorInterface6ResultE }, comdat, align 8
@_ZTS16btPointCollector = linkonce_odr dso_local constant [19 x i8] c"16btPointCollector\00", comdat, align 1
@_ZTIN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN36btDiscreteCollisionDetectorInterface6ResultE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant [48 x i8] c"N36btDiscreteCollisionDetectorInterface6ResultE\00", comdat, align 1

@_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN27btContinuousConvexCollisionC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN27btContinuousConvexCollisionC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV27btContinuousConvexCollision, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !19
  ret void
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(188) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.btVector3, align 4           ; 6 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %7 = alloca %class.btVector3, align 4           ; 6 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %8 = alloca %class.btVector3, align 8           ; 8 uses
  %9 = alloca %class.btVector3, align 8           ; 6 uses
  %10 = alloca %class.btVector3, align 8          ; 6 uses
  %11 = alloca %class.btVector3, align 8          ; 6 uses
  %12 = alloca %class.btVector3, align 4          ; 7 uses
  %13 = alloca %class.btSphereShape, align 8      ; 10 uses
  %14 = alloca %struct.btPointCollector, align 8  ; 11 uses
  %15 = alloca %class.btGjkPairDetector, align 8  ; 5 uses
  %16 = alloca %"struct.btDiscreteCollisionDetectorInterface::ClosestPointInput", align 8 ; 14 uses
  %17 = alloca %class.btVector3, align 16         ; 5 uses
  %18 = alloca %class.btTransform, align 4        ; 9 uses
  %19 = alloca %class.btTransform, align 4        ; 9 uses
  %20 = alloca %class.btVector3, align 16         ; 5 uses
  %21 = alloca %struct.btPointCollector, align 8  ; 12 uses
  %22 = alloca %class.btGjkPairDetector, align 8  ; 6 uses
  %23 = alloca %"struct.btDiscreteCollisionDetectorInterface::ClosestPointInput", align 8 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  tail call void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(353) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !20
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !20
  %i.i = fsub <2 x float> %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.k = load float, ptr %i.j, align 4, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load float, ptr %i.l, align 4, !tbaa !20
  %i.n = fsub float %i.k, %i.m
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  store <2 x float> %i.i, ptr %8, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %24 = load float, ptr %7, align 4, !tbaa !20
  %i.o = load float, ptr %i.b, align 4, !tbaa !20 ; 3 uses
  %25 = fmul float %24, %i.o                      ; 3 uses
  %26 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %27 = load float, ptr %26, align 4, !tbaa !20
  %28 = fmul float %i.o, %27                      ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !20
  %i.r = fmul float %i.o, %i.q                    ; 3 uses
  %.sroa.0.0.vec.insert.i.i13.i = insertelement <2 x float> poison, float %25, i64 0
  %.sroa.0.4.vec.insert.i.i14.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i13.i, float %28, i64 1
  %.sroa.3.12.vec.insert.i.i15.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.r, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i14.i, ptr %9, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i15.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.u = load <2 x float>, ptr %i.s, align 4, !tbaa !20
  %i.v = load <2 x float>, ptr %i.t, align 4, !tbaa !20
  %i.w = fsub <2 x float> %i.u, %i.v              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.y = load float, ptr %i.x, align 4, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20
  %i.ab = fsub float %i.y, %i.aa                  ; 2 uses
  %.sroa.3.12.vec.insert.i.i.i102 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ab, i64 0
  store <2 x float> %i.w, ptr %10, align 8
  %.sroa.42.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i102, ptr %.sroa.42.0..sroa_idx.i103, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ac = load float, ptr %6, align 4, !tbaa !20
  %29 = load float, ptr %i.a, align 4, !tbaa !20  ; 3 uses
  %30 = getelementptr inbounds nuw i8, ptr %6, i64 4
  %31 = load float, ptr %30, align 4, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20
  %.sroa.4.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18 ; 2 uses
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %33 = fmul float %28, %28
  %34 = call float @llvm.fmuladd.f32(float %25, float %25, float %33)
  %35 = call noundef float @llvm.fmuladd.f32(float %i.r, float %i.r, float %34)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %35)
  %i.ah = extractelement <2 x float> %i.w, i64 0
  %36 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ai = extractelement <2 x float> %i.w, i64 1
  %37 = fmul float %i.ac, %29
  %38 = fmul float %29, %31                       ; 2 uses
  %39 = fmul float %29, %i.ae                     ; 2 uses
  %.sroa.0.0.vec.insert.i.i13.i104 = insertelement <2 x float> poison, float %37, i64 0 ; 2 uses
  %.sroa.0.4.vec.insert.i.i14.i105 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i13.i104, float %38, i64 1
  %.sroa.3.12.vec.insert.i.i15.i106 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %39, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i14.i105, ptr %11, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i15.i106, ptr %.sroa.4.0..sroa_idx.i107, align 8, !tbaa !22
  %40 = load ptr, ptr %i.ag, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 32
  %42 = load ptr, ptr %41, align 8
  %i.aj = call noundef float %42(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  %i.ak = load ptr, ptr %32, align 8, !tbaa !19   ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef float %i.an(ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
  %i.ap = load float, ptr %8, align 8, !tbaa !20
  %i.aq = fsub float %i.ah, %i.ap                 ; 3 uses
  %i.ar = load float, ptr %36, align 4, !tbaa !20
  %i.as = fsub float %i.ai, %i.ar                 ; 3 uses
  %i.at = load float, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !20
  %i.au = fsub float %i.ab, %i.at                 ; 3 uses
  %43 = insertelement <2 x float> poison, float %38, i64 0
  %i.av = insertelement <2 x float> %43, float %i.as, i64 1 ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.av
  %i.ax = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i13.i104, float %i.aq, i64 1 ; 2 uses
  %i.ay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ax, <2 x float> %i.aw)
  %i.az = insertelement <2 x float> poison, float %39, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.au, i64 1 ; 2 uses
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.ba, <2 x float> %i.ay)
  %i.bc = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bb) ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0
  %i.be = fmul float %i.ao, %i.bd
  %i.bf = call float @llvm.fmuladd.f32(float %sqrt.i, float %i.aj, float %i.be) ; 3 uses
  %i.bg = extractelement <2 x float> %i.bc, i64 1
  %i.bh = fadd float %i.bf, %i.bg
  %i.bi = fcmp oeq float %i.bh, 0.000000e+00
  br i1 %i.bi, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %13)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %13, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 8, ptr %i.bj, align 8, !tbaa !23
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 40
  store float 0.000000e+00, ptr %i.bk, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 56
  store float 0.000000e+00, ptr %i.bl, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16btPointCollector, i64 16), ptr %14, align 8, !tbaa !8
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  store float f0x5D5E0B6B, ptr %i.bm, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  store i8 0, ptr %i.bn, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.bo = load ptr, ptr %i.af, align 8, !tbaa !18 ; 4 uses
  %i.bp = load ptr, ptr %32, align 8, !tbaa !19   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !23
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef float %i.bw(ptr noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.by = load ptr, ptr %32, align 8, !tbaa !19   ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke noundef float %i.cb(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !17
  invoke void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(96) %15, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bp, i32 noundef %i.br, i32 noundef %i.bt, float noundef %i.bx, float noundef %i.cc, ptr noundef %i.cd, ptr noundef %i.cf)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 128
  store float f0x5D5E0B6B, ptr %i.cg, align 8, !tbaa !34
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 136
  store ptr null, ptr %i.ch, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !40
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 4 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !40
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 4 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !40
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !40
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !40
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 4 dereferenceable(16) %i.co, i64 16, i1 false), !tbaa.struct !40
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %16, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 4 dereferenceable(16) %i.cq, i64 16, i1 false), !tbaa.struct !40
  %i.cs = getelementptr inbounds nuw i8, ptr %16, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !40
  invoke void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96) %15, ptr noundef nonnull align 8 dereferenceable(144) %16, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef null, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.ct = load i8, ptr %i.bn, align 4, !tbaa !33, !range !41, !noundef !42
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br i1 %i.cu, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.cw = load float, ptr %i.bm, align 8, !tbaa !29 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.cy = load <2 x float>, ptr %i.cx, align 8    ; 5 uses
  %.sroa.14157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.14157.0.copyload = load float, ptr %.sroa.14157.0..sroa_idx, align 8 ; 3 uses
  %i.cz = fcmp ogt float %i.cw, 1.000000e-03
  br i1 %i.cz, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.g
  %i.da = extractelement <2 x float> %i.cy, i64 1
  %i.db = fmul float %i.as, %i.da
  %i.dc = extractelement <2 x float> %i.cy, i64 0
  %i.dd = call float @llvm.fmuladd.f32(float %i.aq, float %i.dc, float %i.db)
  %i.de = call noundef float @llvm.fmuladd.f32(float %i.au, float %.sroa.14157.0.copyload, float %i.dd)
  %.sroa.17167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 20
  %.sroa.17167.0.copyload = load float, ptr %.sroa.17167.0..sroa_idx, align 4, !tbaa !22
  %.pre = fadd float %i.bf, %i.de
  %i.df = insertelement <2 x float> poison, float %.sroa.14157.0.copyload, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %.sroa.17167.0.copyload, i64 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %21, i64 44 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %23, i64 128
  %i.dr = getelementptr inbounds nuw i8, ptr %23, i64 136
  %i.ds = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.dv = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.dw = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.dx = getelementptr inbounds nuw i8, ptr %23, i64 96
  %i.dy = getelementptr inbounds nuw i8, ptr %23, i64 112
  %i.dz = getelementptr inbounds nuw i8, ptr %21, i64 24 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %.sroa.11147.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %21, i64 12
  %.sroa.14157.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.eb = extractelement <2 x float> %i.cy, i64 0
  %i.ec = extractelement <2 x float> %i.cy, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.ag
  %.054273 = phi float [ %i.cw, %.lr.ph ], [ %i.fj, %bb.ag ]
  %.068272 = phi i32 [ 0, %.lr.ph ], [ %i.ek, %bb.ag ] ; 2 uses
  %.077271 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.er, %bb.ag ] ; 2 uses
  %.sroa.14157.0270 = phi float [ %.sroa.14157.0.copyload, %.lr.ph ], [ %i.fv, %bb.ag ]
  %.sroa.11147.0269 = phi float [ %i.ec, %.lr.ph ], [ %.sroa.11147.0.copyload153, %bb.ag ]
  %.sroa.0141.0268 = phi float [ %i.eb, %.lr.ph ], [ %i.fu, %bb.ag ]
  %i.ed = load ptr, ptr %i.dh, align 8, !tbaa !43 ; 3 uses
  %.not = icmp eq ptr %i.ed, null
  br i1 %.not, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %17, align 16, !tbaa !20
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull align 4 dereferenceable(16) %12, float noundef 2.000000e-01, ptr noundef nonnull align 4 dereferenceable(16) %17)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.o

bb.k:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ei, %bb.l ], [ %i.eh, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.ak

bb.n:                                             ; preds = %bb.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.ak

bb.o:                                             ; preds = %bb.j, %bb.h
  %i.ek = add nuw nsw i32 %.068272, 1
  %exitcond = icmp eq i32 %.068272, 64
  br i1 %exitcond, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.el = fmul float %i.as, %.sroa.11147.0269
  %i.em = call float @llvm.fmuladd.f32(float %i.aq, float %.sroa.0141.0268, float %i.el)
  %i.en = call noundef float @llvm.fmuladd.f32(float %i.au, float %.sroa.14157.0270, float %i.em)
  %i.eo = fadd float %i.bf, %i.en                 ; 3 uses
  %i.ep = fcmp ugt float %i.eo, f0x34000000
  br i1 %i.ep, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.eq = fdiv float %.054273, %i.eo
  %i.er = fadd float %.077271, %i.eq              ; 9 uses
  %i.es = fcmp ule float %i.er, 1.000000e+00
  %i.et = fcmp uge float %i.er, 0.000000e+00
  %or.cond.not212 = and i1 %i.es, %i.et
  %i.eu = fcmp ugt float %i.er, %.077271
  %or.cond99 = and i1 %i.eu, %or.cond.not212
  br i1 %or.cond99, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  invoke void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %i.er, ptr noundef nonnull align 4 dereferenceable(64) %18)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, float noundef %i.er, ptr noundef nonnull align 4 dereferenceable(64) %19)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ev = load ptr, ptr %i.dh, align 8, !tbaa !43 ; 3 uses
  %.not88 = icmp eq ptr %i.ev, null
  br i1 %.not88, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %20, align 16, !tbaa !20
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8
  invoke void %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 4 dereferenceable(16) %i.di, float noundef 2.000000e-01, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  br label %bb.y

bb.w:                                             ; preds = %bb.y, %bb.s, %bb.r
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %bb.u
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  br label %bb.ai

bb.y:                                             ; preds = %bb.v, %bb.t
  %i.fb = load ptr, ptr %5, align 8, !tbaa !8
  %i.fc = load ptr, ptr %i.fb, align 8
  invoke void %i.fc(ptr noundef nonnull align 8 dereferenceable(188) %5, float noundef %i.er)
          to label %bb.z unwind label %bb.w

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16btPointCollector, i64 16), ptr %21, align 8, !tbaa !8
  store float f0x5D5E0B6B, ptr %i.do, align 8, !tbaa !29
  store i8 0, ptr %i.dp, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  %i.fd = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.fe = load ptr, ptr %32, align 8, !tbaa !19
  %i.ff = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.fg = load ptr, ptr %i.ce, align 8, !tbaa !17
  invoke void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(96) %22, ptr noundef %i.fd, ptr noundef %i.fe, ptr noundef %i.ff, ptr noundef %i.fg)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  store float f0x5D5E0B6B, ptr %i.dq, align 8, !tbaa !34
  store ptr null, ptr %i.dr, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull align 4 dereferenceable(64) %18, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull align 4 dereferenceable(16) %i.dl, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 4 dereferenceable(16) %i.dn, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 4 dereferenceable(16) %i.di, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dv, ptr noundef nonnull align 4 dereferenceable(64) %19, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, ptr noundef nonnull align 4 dereferenceable(16) %i.dk, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef nonnull align 4 dereferenceable(16) %i.dm, i64 16, i1 false), !tbaa.struct !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 4 dereferenceable(16) %i.dj, i64 16, i1 false), !tbaa.struct !40
  invoke void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96) %22, ptr noundef nonnull align 8 dereferenceable(144) %23, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef null, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.fh = load i8, ptr %i.dp, align 4, !tbaa !33, !range !41, !noundef !42
  %i.fi = trunc nuw i8 %i.fh to i1                ; 2 uses
  br i1 %i.fi, label %bb.ac, label %.thread203

bb.ac:                                            ; preds = %bb.ab
  %i.fj = load float, ptr %i.do, align 8, !tbaa !29 ; 3 uses
  %i.fk = fcmp olt float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fl = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %i.er, ptr %i.fl, align 8, !tbaa !46
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.fn = load <4 x float>, ptr %i.ea, align 8
  store <4 x float> %i.fn, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !40
  br label %.thread203

bb.ae:                                            ; preds = %bb.z
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.af:                                            ; preds = %bb.aa
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  br label %bb.ah

.thread203:                                       ; preds = %bb.ab, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %.thread

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !40
  %.sroa.11147.0.copyload153 = load float, ptr %.sroa.11147.0..sroa_idx152, align 4
  %i.fr = load <2 x float>, ptr %i.ea, align 8    ; 2 uses
  %i.fs = load <2 x float>, ptr %.sroa.14157.0..sroa_idx162, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  %i.ft = fcmp ogt float %i.fj, 1.000000e-03
  %i.fu = extractelement <2 x float> %i.fr, i64 0
  %i.fv = extractelement <2 x float> %i.fs, i64 0
  br i1 %i.ft, label %bb.h, label %._crit_edge

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.pn89 = phi { ptr, i32 } [ %i.fq, %bb.af ], [ %i.fp, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.w, %bb.x, %bb.ah
  %.pn89.pn.pn.pn = phi { ptr, i32 } [ %i.fa, %bb.x ], [ %.pn89, %bb.ah ], [ %i.ez, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  br label %bb.ak

._crit_edge:                                      ; preds = %bb.ag, %.._crit_edge_crit_edge
  %.pre-phi = phi float [ %.pre, %.._crit_edge_crit_edge ], [ %i.eo, %bb.ag ]
  %.077.lcssa = phi float [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %i.er, %bb.ag ]
  %i.fw = phi <2 x float> [ %i.cy, %.._crit_edge_crit_edge ], [ %i.fr, %bb.ag ]
  %i.fx = phi <2 x float> [ %i.dg, %.._crit_edge_crit_edge ], [ %i.fs, %bb.ag ]
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !47
  %i.ga = fcmp ugt float %.pre-phi, %i.fz
  br i1 %i.ga, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %._crit_edge
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.077.lcssa, ptr %i.gb, align 8, !tbaa !46
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 136
  store <2 x float> %i.fw, ptr %i.gc, align 8
  %.sroa.14157.0..sroa_idx164 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <2 x float> %i.fx, ptr %.sroa.14157.0..sroa_idx164, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !40
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.p, %bb.o, %.thread203, %bb.f, %bb.aj, %._crit_edge
  %.475 = phi i1 [ false, %._crit_edge ], [ true, %bb.aj ], [ %i.fi, %.thread203 ], [ false, %bb.f ], [ false, %bb.o ], [ false, %bb.p ], [ false, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.am

bb.ak:                                            ; preds = %bb.m, %bb.ai, %bb.n
  %.pn89.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.n ], [ %.pn, %bb.m ], [ %.pn89.pn.pn.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  resume { ptr, i32 } %.pn89.pn.pn.pn.pn.pn.pn.pn

bb.am:                                            ; preds = %bb.a, %.thread
  %.576 = phi i1 [ %.475, %.thread ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret i1 %.576

bb.an:                                            ; preds = %bb.ak
  %i.ge = landingpad { ptr, i32 }
          catch ptr null
  %i.gf = extractvalue { ptr, i32 } %i.ge, 0
  call void @__clang_call_terminate(ptr %i.gf) #14
  unreachable
}

declare void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(353)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !20
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !20
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
end_hunk_0
