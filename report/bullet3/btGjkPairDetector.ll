Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btGjkPairDetector?download=true
inline.NumInlined: 372
inline.NumDeleted: 65
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }
%struct.btSimplex = type { [4 x %struct.btSupportVector], i32 }
%struct.btSupportVector = type { %class.btVector3, %class.btVector3, %class.btVector3 }

$_Z23btVec3PointSegmentDist2PK9btVector3S1_S1_PS_ = comdat any

$_ZN36btDiscreteCollisionDetectorInterfaceD2Ev = comdat any

$_ZN17btGjkPairDetectorD0Ev = comdat any

$_Z13btTripleCrossPK9btVector3S1_S1_PS_ = comdat any

$_ZTI36btDiscreteCollisionDetectorInterface = comdat any

$_ZTS36btDiscreteCollisionDetectorInterface = comdat any

@gGjkEpaPenetrationTolerance = dso_local local_unnamed_addr global float 1.000000e-03, align 4
@_ZTV17btGjkPairDetector = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17btGjkPairDetector, ptr @_ZN36btDiscreteCollisionDetectorInterfaceD2Ev, ptr @_ZN17btGjkPairDetectorD0Ev, ptr @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb] }, align 8
@_ZL15ccd_vec3_origin = internal global %class.btVector3 zeroinitializer, align 4
@_ZTI17btGjkPairDetector = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17btGjkPairDetector, ptr @_ZTI36btDiscreteCollisionDetectorInterface }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17btGjkPairDetector = dso_local constant [20 x i8] c"17btGjkPairDetector\00", align 1
@_ZTI36btDiscreteCollisionDetectorInterface = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS36btDiscreteCollisionDetectorInterface }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS36btDiscreteCollisionDetectorInterface = linkonce_odr dso_local constant [39 x i8] c"36btDiscreteCollisionDetectorInterface\00", comdat, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver
@_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, float, float, ptr, ptr), ptr @_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(100) initializes((0, 73), (80, 84), (92, 100)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17btGjkPairDetector, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %3, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26
  store i32 %i.h, ptr %i.f, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26
  store i32 %i.k, ptr %i.i, align 4, !tbaa !28
  %i.l = load ptr, ptr %1, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef float %i.n(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.o, ptr %i.p, align 8, !tbaa !29
  %i.q = load ptr, ptr %2, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef float %i.s(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.t, ptr %i.u, align 4, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.x, align 4, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.y, align 8, !tbaa !34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(100) initializes((0, 73), (80, 84), (92, 100)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17btGjkPairDetector, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %8, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %7, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %3, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %4, ptr %i.g, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %5, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %6, ptr %i.i, align 4, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.j, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.k, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.l, align 4, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.m, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(100) initializes((8, 24), (76, 92)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i1 zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 4 dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(100) initializes((8, 24), (76, 92)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(132) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 16          ; 20 uses
  %9 = alloca %class.btVector3, align 8           ; 11 uses
  %10 = alloca %class.btVector3, align 8          ; 13 uses
  %11 = alloca %class.btTransform, align 8        ; 22 uses
  %12 = alloca %class.btTransform, align 8        ; 22 uses
  %13 = alloca %struct.btSimplex, align 8         ; 28 uses
  %14 = alloca %class.btVector3, align 16         ; 14 uses
  %15 = alloca %class.btVector3, align 8          ; 7 uses
  %16 = alloca %class.btVector3, align 8          ; 7 uses
  %17 = alloca %class.btVector3, align 8          ; 7 uses
  %18 = alloca %class.btVector3, align 8          ; 7 uses
  %19 = alloca %class.btVector3, align 8          ; 8 uses
  %20 = alloca %class.btVector3, align 4          ; 10 uses
  %21 = alloca %class.btVector3, align 4          ; 13 uses
  %22 = alloca %class.btVector3, align 4          ; 13 uses
  %23 = alloca %class.btVector3, align 8          ; 5 uses
  %24 = alloca %class.btVector3, align 8          ; 5 uses
  %25 = alloca %class.btVector3, align 8          ; 5 uses
  %26 = alloca %class.btVector3, align 8          ; 5 uses
  %27 = alloca %class.btVector3, align 8          ; 5 uses
  %28 = alloca %class.btVector3, align 8          ; 5 uses
  %29 = alloca %class.btVector3, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !36
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !36
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !36
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 4 dereferenceable(64) %i.k, i64 16, i1 false), !tbaa.struct !36
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !36
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !36
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !36
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 52 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 8 uses
  %i.u = load float, ptr %i.t, align 8, !tbaa !12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 7 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !12 ; 2 uses
  %i.x = fadd float %i.u, %i.w
  %i.y = load <2 x float>, ptr %i.i, align 8, !tbaa !12 ; 2 uses
  %i.z = load <2 x float>, ptr %i.p, align 8, !tbaa !12 ; 2 uses
  %i.aa = fadd <2 x float> %i.y, %i.z
  %i.ab = fmul <2 x float> %i.aa, splat (float 5.000000e-01) ; 3 uses
  %i.ac = fmul float %i.x, 5.000000e-01           ; 3 uses
  %i.ad = fsub <2 x float> %i.y, %i.ab
  store <2 x float> %i.ad, ptr %i.i, align 8, !tbaa !12
  %i.ae = fsub float %i.u, %i.ac
  store float %i.ae, ptr %i.t, align 8, !tbaa !12
  %i.af = fsub <2 x float> %i.z, %i.ab
  store <2 x float> %i.af, ptr %i.p, align 8, !tbaa !12
  %i.ag = fsub float %i.w, %i.ac
  store float %i.ag, ptr %i.v, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !26
  %i.al = add i32 %i.ak, -17
  %i.am = icmp ult i32 %i.al, 2
  %.sink.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %14, i64 12
  %.sink.i.i.sroa.gep465 = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  br i1 %i.am, label %bb.b, label %_ZL16btComputeSupportPK13btConvexShapeRK11btTransformS1_S4_RK9btVector3bRS5_S8_S8_.exit

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !26
  %.fr657 = freeze i32 %i.aq
  %i.ar = add i32 %.fr657, -17
  %i.as = icmp ult i32 %i.ar, 2
  br label %_ZL16btComputeSupportPK13btConvexShapeRK11btTransformS1_S4_RK9btVector3bRS5_S8_S8_.exit

_ZL16btComputeSupportPK13btConvexShapeRK11btTransformS1_S4_RK9btVector3bRS5_S8_S8_.exit: ; preds = %bb.a, %bb.b
  %cond.fr632 = phi i1 [ %i.as, %bb.b ], [ false, %bb.a ] ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load i8, ptr %i.au, align 8, !tbaa !31, !range !42, !noundef !43
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load <2 x float>, ptr %i.at, align 8, !tbaa !12
  %i.ay = insertelement <2 x i1> poison, i1 %i.aw, i64 0
  %i.az = shufflevector <2 x i1> %i.ay, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ba = select <2 x i1> %i.az, <2 x float> zeroinitializer, <2 x float> %i.ax ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  store i32 0, ptr %i.bb, align 4, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bc, align 8, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  store i32 -1, ptr %i.bg, align 8, !tbaa !32
  %i.bh = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.bi = extractelement <2 x float> %i.ba, i64 1 ; 2 uses
  %i.bj = fadd float %i.bh, %i.bi                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 192 ; 8 uses
  store i32 -1, ptr %i.bk, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 4
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %14, align 16, !tbaa !12
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  %i.br = load float, ptr %i.bq, align 8, !tbaa !12 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 7 uses
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !12 ; 2 uses
  %i.bu = fmul float %i.bt, 0.000000e+00
  %i.bv = fadd float %i.br, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 7 uses
  %i.bx = load float, ptr %i.bw, align 8, !tbaa !12 ; 2 uses
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float 0.000000e+00, float %i.bv)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.by, i64 0
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.bz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 7 uses
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !12 ; 2 uses
  %i.ch = fmul float %i.cg, -0.000000e+00
  %i.ci = fsub float %i.ch, %i.ce
  %i.cj = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 7 uses
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !12 ; 2 uses
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float -0.000000e+00, float %i.ci)
  %.sroa.3.12.vec.insert.i30.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i30.i, ptr %i.cm, align 8
  %i.cn = load <2 x float>, ptr %i.f, align 8, !tbaa !12 ; 3 uses
  %i.co = load float, ptr %i.bo, align 4, !tbaa !12
  %i.cp = load <2 x float>, ptr %11, align 8, !tbaa !12 ; 3 uses
  %i.cq = load float, ptr %i.bn, align 4, !tbaa !12
  %i.cr = load <2 x float>, ptr %i.h, align 8, !tbaa !12 ; 3 uses
  %i.cs = insertelement <2 x float> %i.cn, float %i.co, i64 1
  %i.ct = fmul <2 x float> %i.cs, zeroinitializer
  %i.cu = insertelement <2 x float> %i.cp, float %i.cq, i64 1
  %i.cv = fadd <2 x float> %i.cu, %i.ct
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> zeroinitializer, <2 x float> %i.cv)
  store <2 x float> %i.cw, ptr %6, align 8
  %i.cx = load <2 x float>, ptr %i.m, align 8, !tbaa !12 ; 3 uses
  %i.cy = load float, ptr %i.cb, align 4, !tbaa !12
  %i.cz = load <2 x float>, ptr %12, align 8, !tbaa !12 ; 3 uses
  %i.da = load float, ptr %i.ca, align 4, !tbaa !12
  %i.db = load <2 x float>, ptr %i.o, align 8, !tbaa !12 ; 3 uses
  %i.dc = insertelement <2 x float> %i.cx, float %i.cy, i64 1
  %i.dd = fmul <2 x float> %i.dc, splat (float -0.000000e+00)
  %i.de = insertelement <2 x float> %i.cz, float %i.da, i64 1
  %i.df = fsub <2 x float> %i.dd, %i.de
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> splat (float -0.000000e+00), <2 x float> %i.df)
  store <2 x float> %i.dg, ptr %7, align 8
  %i.dh = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %6) ; 2 uses
  %i.di = extractvalue { <2 x float>, <2 x float> } %i.dh, 0 ; 4 uses
  %i.dj = extractvalue { <2 x float>, <2 x float> } %i.dh, 1 ; 2 uses
  %i.dk = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 4 dereferenceable(16) %7) ; 2 uses
  %i.dl = extractvalue { <2 x float>, <2 x float> } %i.dk, 0 ; 4 uses
  %i.dm = extractvalue { <2 x float>, <2 x float> } %i.dk, 1 ; 2 uses
  %.sroa.043.0.vec.extract.i = extractelement <2 x float> %i.di, i64 0
  %.sroa.544.8.vec.extract.i = extractelement <2 x float> %i.dj, i64 0
  %i.dn = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.do = shufflevector <2 x float> %i.cp, <2 x float> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.dp = fmul <2 x float> %i.dn, %i.do
  %i.dq = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = shufflevector <2 x float> %i.cp, <2 x float> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.dr, <2 x float> %i.dp)
  %i.dt = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x float> poison, float %i.br, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.bt, i64 1
  %i.dw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.dv, <2 x float> %i.ds)
  %foldExtExtBinop = fmul <2 x float> %i.di, %i.cr
  %i.dx = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dy = extractelement <2 x float> %i.cr, i64 0
  %i.dz = call float @llvm.fmuladd.f32(float %.sroa.043.0.vec.extract.i, float %i.dy, float %i.dx)
  %i.ea = call noundef float @llvm.fmuladd.f32(float %.sroa.544.8.vec.extract.i, float %i.bx, float %i.dz)
  %i.eb = load <2 x float>, ptr %i.i, align 8, !tbaa !12
  %i.ec = fadd <2 x float> %i.dw, %i.eb           ; 2 uses
  %i.ed = load float, ptr %i.t, align 8, !tbaa !12
  %i.ee = fadd float %i.ea, %i.ed
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ee, i64 0 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.dl, i64 0
  %.sroa.5.8.vec.extract.i = extractelement <2 x float> %i.dm, i64 0
  %i.ef = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = shufflevector <2 x float> %i.cz, <2 x float> %i.cx, <2 x i32> <i32 1, i32 3>
  %i.eh = fmul <2 x float> %i.ef, %i.eg
  %i.ei = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = shufflevector <2 x float> %i.cz, <2 x float> %i.cx, <2 x i32> <i32 0, i32 2>
  %i.ek = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ei, <2 x float> %i.ej, <2 x float> %i.eh)
  %i.el = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
end_hunk_0
begin_hunk_1_@_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw:bb.a
  %i.ux = fsub <2 x float> %i.uf, %i.um           ; 3 uses
  %shift = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop685 = fsub <2 x float> %i.uw, %shift ; 2 uses
  %i.uy = extractelement <2 x float> %foldExtExtBinop685, i64 0
  %.sroa.3.12.vec.insert.i199694 = insertelement <2 x float> %foldExtExtBinop685, float 0.000000e+00, i64 1
  store <2 x float> %i.ux, ptr %19, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i199694, ptr %i.rf, align 8
  %i.uz = load float, ptr %i.bc, align 8, !tbaa !12
  %i.va = load float, ptr %i.bd, align 4, !tbaa !12
  %i.vb = extractelement <2 x float> %i.ux, i64 1
  %i.vc = fmul float %i.va, %i.vb
  %i.vd = extractelement <2 x float> %i.ux, i64 0
  %i.ve = call float @llvm.fmuladd.f32(float %i.uz, float %i.vd, float %i.vc)
  %i.vf = load float, ptr %i.be, align 8, !tbaa !12
  %i.vg = call noundef float @llvm.fmuladd.f32(float %i.vf, float %i.uy, float %i.ve) ; 4 uses
  %i.vh = fcmp ogt float %i.vg, 0.000000e+00
  br i1 %i.vh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.vi = fmul float %i.vg, %i.vg
  %i.vj = load float, ptr %i.rg, align 4, !tbaa !50
  %i.vk = fmul float %.099, %i.vj
  %i.vl = fcmp ogt float %i.vi, %i.vk
  br i1 %i.vl, label %.thread536, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.vm = load ptr, ptr %i.qz, align 8, !tbaa !22
  %i.vn = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3(ptr noundef nonnull align 4 dereferenceable(357) %i.vm, ptr noundef nonnull align 4 dereferenceable(16) %19)
  br i1 %i.vn, label %.thread536, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.vo = fsub float %.099, %i.vg                 ; 2 uses
  %i.vp = fmul float %.099, f0x358637BD
  %i.vq = fcmp ugt float %i.vo, %i.vp
  br i1 %i.vq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.vr = fcmp ugt float %i.vo, 0.000000e+00
  %.131 = select i1 %i.vr, i32 11, i32 2
  br label %.thread536

bb.aa:                                            ; preds = %bb.y
  %i.vs = load ptr, ptr %i.qz, align 8, !tbaa !22
  call void @_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_(ptr noundef nonnull align 4 dereferenceable(357) %i.vs, ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %17, ptr noundef nonnull align 4 dereferenceable(16) %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  %i.vt = load ptr, ptr %i.qz, align 8, !tbaa !22
  %i.vu = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver7closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(357) %i.vt, ptr noundef nonnull align 4 dereferenceable(16) %20)
  br i1 %i.vu, label %bb.ab, label %.thread541

bb.ab:                                            ; preds = %bb.aa
  %i.vv = load float, ptr %20, align 4, !tbaa !12 ; 2 uses
  %i.vw = load float, ptr %i.rh, align 4, !tbaa !12 ; 2 uses
  %i.vx = fmul float %i.vw, %i.vw
  %i.vy = call float @llvm.fmuladd.f32(float %i.vv, float %i.vv, float %i.vx)
  %i.vz = load float, ptr %i.ri, align 4, !tbaa !12 ; 2 uses
  %i.wa = call noundef float @llvm.fmuladd.f32(float %i.vz, float %i.vz, float %i.vy) ; 4 uses
  %i.wb = fcmp olt float %i.wa, f0x358637BD
  br i1 %i.wb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !36
  br label %.thread541

bb.ad:                                            ; preds = %bb.ab
  %i.wc = fsub float %.099, %i.wa
  %i.wd = fmul float %.099, f0x34000000
  %i.we = fcmp ugt float %i.wc, %i.wd
  br i1 %i.we, label %bb.ae, label %.thread541

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !36
  %i.wf = load i32, ptr %i.bb, align 4, !tbaa !44 ; 2 uses
  %i.wg = add nsw i32 %i.wf, 1
  store i32 %i.wg, ptr %i.bb, align 4, !tbaa !44
  %i.wh = icmp sgt i32 %i.wf, 1000
  br i1 %i.wh, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.wi = load ptr, ptr %i.qz, align 8, !tbaa !22
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !55
  %i.wk = icmp eq i32 %i.wj, 4
  br i1 %i.wk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 13, ptr %i.bf, align 8, !tbaa !45
  br label %.loopexit

.thread536:                                       ; preds = %bb.x, %bb.w, %bb.z
  %.131.sink = phi i32 [ %.131, %bb.z ], [ 10, %bb.w ], [ 1, %bb.x ]
  store i32 %.131.sink, ptr %i.bf, align 8, !tbaa !45
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.t

.thread541:                                       ; preds = %bb.ad, %bb.aa, %bb.ac
  %.sink = phi i32 [ 6, %bb.ac ], [ 3, %bb.aa ], [ 12, %bb.ad ]
  %.1100.ph.ph = phi float [ %.099, %bb.ac ], [ %.099, %bb.aa ], [ %i.wa, %bb.ad ]
  store i32 %.sink, ptr %i.bf, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  br label %bb.ai

.loopexit:                                        ; preds = %bb.ae, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.an

bb.ai:                                            ; preds = %.thread541, %.thread536
  %.3102530539 = phi float [ %.099, %.thread536 ], [ %.1100.ph.ph, %.thread541 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.wl = load ptr, ptr %i.qz, align 8, !tbaa !22
  call void @_ZN22btVoronoiSimplexSolver14compute_pointsER9btVector3S1_(ptr noundef nonnull align 4 dereferenceable(357) %i.wl, ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !36
  %i.wm = load <2 x float>, ptr %i.bc, align 8, !tbaa !12 ; 5 uses
  %foldExtExtBinop687 = fmul <2 x float> %i.wm, %i.wm
  %i.wn = extractelement <2 x float> %foldExtExtBinop687, i64 1
  %i.wo = extractelement <2 x float> %i.wm, i64 0 ; 2 uses
  %i.wp = call float @llvm.fmuladd.f32(float %i.wo, float %i.wo, float %i.wn)
  %i.wq = load float, ptr %i.be, align 8, !tbaa !12 ; 3 uses
  %i.wr = call noundef float @llvm.fmuladd.f32(float %i.wq, float %i.wq, float %i.wp) ; 3 uses
  %i.ws = fcmp olt float %i.wr, f0x358637BD
  br i1 %i.ws, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 5, ptr %i.bf, align 8, !tbaa !45
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.wt = fcmp ogt float %i.wr, f0x28800000
  br i1 %i.wt, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.wu = call noundef float @sqrtf(float noundef %i.wr) #13
  %i.wv = fdiv float 1.000000e+00, %i.wu          ; 2 uses
  %i.ww = load <3 x float>, ptr %8, align 16, !tbaa !12
  %i.wx = insertelement <3 x float> poison, float %i.wv, i64 0
  %i.wy = shufflevector <3 x float> %i.wx, <3 x float> poison, <3 x i32> zeroinitializer
  %i.wz = fmul <3 x float> %i.wy, %i.ww           ; 5 uses
  %i.xa = extractelement <3 x float> %i.wz, i64 2 ; 2 uses
  %i.xb = extractelement <3 x float> %i.wz, i64 1
  %i.xc = extractelement <3 x float> %i.wz, i64 0
  %i.xd = shufflevector <3 x float> %i.wz, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.xd, ptr %8, align 16, !tbaa !12
  store float %i.xa, ptr %i.c, align 8, !tbaa !12
  %i.xe = call noundef float @sqrtf(float noundef %.3102530539) #13
  %i.xf = load <2 x float>, ptr %9, align 8, !tbaa !12
  %i.xg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.xh = load float, ptr %i.xg, align 8, !tbaa !12
  %i.xi = insertelement <2 x float> poison, float %i.xe, i64 0
  %i.xj = shufflevector <2 x float> %i.xi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xk = fdiv <2 x float> %i.ba, %i.xj           ; 3 uses
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xm = fmul <2 x float> %i.wm, %i.xl
  %i.xn = fsub <2 x float> %i.xf, %i.xm
  store <2 x float> %i.xn, ptr %9, align 8, !tbaa !12
  %i.xo = insertelement <2 x float> poison, float %i.wq, i64 0
  %i.xp = shufflevector <2 x float> %i.xo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xq = fmul <2 x float> %i.xp, %i.xk           ; 2 uses
  %i.xr = extractelement <2 x float> %i.xq, i64 0
  %i.xs = fsub float %i.xh, %i.xr
  store float %i.xs, ptr %i.xg, align 8, !tbaa !12
  %i.xt = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xu = fmul <2 x float> %i.wm, %i.xt
  %i.xv = load <2 x float>, ptr %10, align 8, !tbaa !12
  %i.xw = fadd <2 x float> %i.xu, %i.xv
  store <2 x float> %i.xw, ptr %10, align 8, !tbaa !12
  %i.xx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.xy = load float, ptr %i.xx, align 8, !tbaa !12
  %i.xz = extractelement <2 x float> %i.xq, i64 1
  %i.ya = fadd float %i.xz, %i.xy
  store float %i.ya, ptr %i.xx, align 8, !tbaa !12
  %i.yb = fdiv float 1.000000e+00, %i.wv
  %i.yc = fsub float %i.yb, %i.bj
  %.sroa.19.0.copyload = load float, ptr %i.d, align 4, !tbaa !35
  store i32 1, ptr %i.bg, align 8, !tbaa !32
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  store i32 2, ptr %i.bg, align 8, !tbaa !32
  br label %bb.an

bb.an:                                            ; preds = %.loopexit, %bb.al, %bb.am
  %.sroa.0469.0 = phi float [ %i.xc, %bb.al ], [ 0.000000e+00, %bb.am ], [ 0.000000e+00, %.loopexit ] ; 7 uses
  %.sroa.9.0 = phi float [ %i.xb, %bb.al ], [ 0.000000e+00, %bb.am ], [ 0.000000e+00, %.loopexit ] ; 6 uses
  %.sroa.14.0 = phi float [ %i.xa, %bb.al ], [ 0.000000e+00, %bb.am ], [ 0.000000e+00, %.loopexit ] ; 6 uses
  %.sroa.19.0 = phi float [ %.sroa.19.0.copyload, %bb.al ], [ 0.000000e+00, %bb.am ], [ 0.000000e+00, %.loopexit ]
  %.not = phi i1 [ false, %bb.al ], [ true, %bb.am ], [ true, %.loopexit ] ; 3 uses
  %.1114 = phi i1 [ true, %bb.al ], [ false, %bb.am ], [ false, %.loopexit ] ; 3 uses
  %.1 = phi float [ %i.yc, %bb.al ], [ 0.000000e+00, %bb.am ], [ 0.000000e+00, %.loopexit ] ; 9 uses
  %i.yd = phi <3 x float> [ %i.wz, %bb.al ], [ zeroinitializer, %bb.am ], [ zeroinitializer, %.loopexit ]
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !33
  %.not126 = icmp eq i32 %i.yf, 0
  br i1 %.not126, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !21
  %.not127 = icmp eq ptr %i.yh, null
  br i1 %.not127, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.yi = load i32, ptr %i.bf, align 8, !tbaa !45
  %.not128 = icmp eq i32 %i.yi, 0
  br i1 %.not128, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.yj = fadd float %i.bj, %.1
  %i.yk = load float, ptr @gGjkEpaPenetrationTolerance, align 4, !tbaa !12
  %i.yl = fcmp olt float %i.yj, %i.yk
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq
  %i.ym = phi i1 [ false, %bb.ap ], [ false, %bb.ao ], [ false, %bb.an ], [ %i.yl, %bb.aq ]
  %or.cond = select i1 %.not, i1 true, i1 %i.ym
  %or.cond3 = or i1 %.4107, %or.cond
  br i1 %or.cond3, label %bb.as, label %.sink.split

bb.as:                                            ; preds = %bb.ar
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !21 ; 3 uses
  %.not129 = icmp eq ptr %i.yo, null
  br i1 %.not129, label %bb.bg, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.yp = load ptr, ptr %i.qz, align 8, !tbaa !22
  %i.yq = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.yr = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.ys = load ptr, ptr %i.yo, align 8, !tbaa !10
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8
  %i.yv = call noundef zeroext i1 %i.yu(ptr noundef nonnull align 8 dereferenceable(8) %i.yo, ptr noundef nonnull align 4 dereferenceable(357) %i.yp, ptr noundef %i.yq, ptr noundef %i.yr, ptr noundef nonnull align 4 dereferenceable(64) %11, ptr noundef nonnull align 4 dereferenceable(64) %12, ptr noundef nonnull align 4 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %22, ptr noundef %3)
  %i.yw = load <2 x float>, ptr %i.bc, align 8, !tbaa !12 ; 5 uses
  %foldExtExtBinop689.a = fmul <2 x float> %i.yw, %i.yw
  %i.yx = extractelement <2 x float> %foldExtExtBinop689.a, i64 1 ; 2 uses
  %i.yy = extractelement <2 x float> %i.yw, i64 0 ; 2 uses
  %i.yz = call float @llvm.fmuladd.f32(float %i.yy, float %i.yy, float %i.yx)
  %i.za = load float, ptr %i.be, align 8, !tbaa !12 ; 4 uses
  %i.zb = call noundef float @llvm.fmuladd.f32(float %i.za, float %i.za, float %i.yz) ; 2 uses
  %i.zc = fcmp une float %i.zb, 0.000000e+00
  br i1 %i.zc, label %bb.au, label %.split

bb.au:                                            ; preds = %bb.at
  br i1 %i.yv, label %bb.av, label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.zd = load float, ptr %22, align 4, !tbaa !12 ; 2 uses
  %i.ze = load float, ptr %21, align 4, !tbaa !12 ; 2 uses
  %i.zf = fsub float %i.zd, %i.ze                 ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !12 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !12 ; 2 uses
  %i.zk = fsub float %i.zh, %i.zj                 ; 3 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !12 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !12 ; 2 uses
  %i.zp = fsub float %i.zm, %i.zo                 ; 3 uses
  %.sroa.0.0.vec.insert.i212 = insertelement <2 x float> poison, float %i.zf, i64 0
  %.sroa.0.4.vec.insert.i213 = insertelement <2 x float> %.sroa.0.0.vec.insert.i212, float %i.zk, i64 1
  %.sroa.3.12.vec.insert.i214 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.zp, i64 0
  %i.zq = fmul float %i.zk, %i.zk
  %i.zr = call float @llvm.fmuladd.f32(float %i.zf, float %i.zf, float %i.zq)
  %i.zs = call noundef float @llvm.fmuladd.f32(float %i.zp, float %i.zp, float %i.zr) ; 2 uses
  %i.zt = fcmp ugt float %i.zs, f0x28800000
  br i1 %i.zt, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.0384.0.copyload = load <2 x float>, ptr %i.bc, align 8 ; 2 uses
  %.sroa.11.0.copyload = load <2 x float>, ptr %i.be, align 8 ; 2 uses
  %i.zu = extractelement <2 x float> %.sroa.0384.0.copyload, i64 0 ; 2 uses
  %i.zv = call float @llvm.fmuladd.f32(float %i.zu, float %i.zu, float %i.yx)
  %i.zw = extractelement <2 x float> %.sroa.11.0.copyload, i64 0 ; 2 uses
  %i.zx = call noundef float @llvm.fmuladd.f32(float %i.zw, float %i.zw, float %i.zv)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sroa.0384.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i213, %bb.av ], [ %.sroa.0384.0.copyload, %bb.aw ]
  %.sroa.11.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i214, %bb.av ], [ %.sroa.11.0.copyload, %bb.aw ] ; 2 uses
  %.0 = phi float [ %i.zs, %bb.av ], [ %i.zx, %bb.aw ] ; 2 uses
  %i.zy = fcmp ogt float %.0, f0x28800000
  br i1 %i.zy, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.zz = call noundef float @sqrtf(float noundef %.0) #13
  %i.aaa = fsub float %i.ze, %i.zd                ; 2 uses
  %i.aab = fsub float %i.zj, %i.zh                ; 2 uses
  %i.aac = fsub float %i.zo, %i.zm                ; 2 uses
  %i.aad = fmul float %i.aab, %i.aab
  %i.aae = call float @llvm.fmuladd.f32(float %i.aaa, float %i.aaa, float %i.aad)
  %i.aaf = call noundef float @llvm.fmuladd.f32(float %i.aac, float %i.aac, float %i.aae)
  %i.aag = call noundef float @sqrtf(float noundef %i.aaf) #13
  %i.aah = fneg float %i.aag                      ; 2 uses
  store i32 3, ptr %i.bg, align 8, !tbaa !32
  %30 = fcmp ogt float %.1, %i.aah
  %or.cond133.not = select i1 %.not, i1 true, i1 %30
  br i1 %or.cond133.not, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.aai = fdiv float 1.000000e+00, %i.zz         ; 2 uses
  %.sroa.11.8.vec.extract395 = extractelement <2 x float> %.sroa.11.0, i64 0
  %i.aaj = fmul float %.sroa.11.8.vec.extract395, %i.aai
  %.sroa.11.8.vec.insert = insertelement <2 x float> %.sroa.11.0, float %i.aaj, i64 0
  %i.aak = insertelement <2 x float> poison, float %i.aai, i64 0
  %i.aal = shufflevector <2 x float> %i.aak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aam = fmul <2 x float> %.sroa.0384.0, %i.aal
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !36
  store <2 x float> %i.aam, ptr %8, align 16
  store <2 x float> %.sroa.11.8.vec.insert, ptr %i.c, align 8, !tbaa !35
  br label %.split.thread

bb.ba:                                            ; preds = %bb.ay
  store i32 8, ptr %i.bg, align 8, !tbaa !32
  br label %.split.thread

bb.bb:                                            ; preds = %bb.ax
  store i32 9, ptr %i.bg, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br i1 %.1114, label %bb.bh, label %bb.bo

bb.bc:                                            ; preds = %bb.au
  %i.aan = fcmp ogt float %i.zb, 0.000000e+00
  br i1 %i.aan, label %bb.bd, label %.split

bb.bd:                                            ; preds = %bb.bc
  %i.aao = load float, ptr %21, align 4, !tbaa !12
  %i.aap = load float, ptr %22, align 4, !tbaa !12
  %i.aaq = fsub float %i.aao, %i.aap              ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !12
  %i.aat = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !12
  %i.aav = fsub float %i.aas, %i.aau              ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aax = load float, ptr %i.aaw, align 4, !tbaa !12
  %i.aay = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !12
  %i.aba = fsub float %i.aax, %i.aaz              ; 2 uses
  %i.abb = fmul float %i.aav, %i.aav
  %i.abc = call float @llvm.fmuladd.f32(float %i.aaq, float %i.aaq, float %i.abb)
  %i.abd = call noundef float @llvm.fmuladd.f32(float %i.aba, float %i.aba, float %i.abc)
  %i.abe = call noundef float @sqrtf(float noundef %i.abd) #13
  %i.abf = fsub float %i.abe, %i.bj               ; 2 uses
  %31 = fcmp olt float %i.abf, %.1
  %or.cond135.not = select i1 %.not, i1 true, i1 %31
  br i1 %or.cond135.not, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 4 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !36
  %i.abg = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abh = fmul <2 x float> %i.abg, %i.yw
  %i.abi = fmul float %i.bh, %i.za
  %i.abj = load <2 x float>, ptr %9, align 8, !tbaa !12
  %i.abk = fsub <2 x float> %i.abj, %i.abh
  store <2 x float> %i.abk, ptr %9, align 8, !tbaa !12
  %i.abl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.abm = load float, ptr %i.abl, align 8, !tbaa !12
  %i.abn = fsub float %i.abm, %i.abi
  store float %i.abn, ptr %i.abl, align 8, !tbaa !12
  %i.abo = fmul float %i.bi, %i.za
  %i.abp = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abq = fmul <2 x float> %i.abp, %i.yw
  %i.abr = load <2 x float>, ptr %10, align 8, !tbaa !12
  %i.abs = fadd <2 x float> %i.abq, %i.abr
  store <2 x float> %i.abs, ptr %10, align 8, !tbaa !12
  %i.abt = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.abu = load float, ptr %i.abt, align 8, !tbaa !12
  %i.abv = fadd float %i.abo, %i.abu
  store float %i.abv, ptr %i.abt, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !36
  %i.abw = load float, ptr %8, align 16, !tbaa !12 ; 3 uses
  %i.abx = load float, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.aby = fmul float %i.abx, %i.abx
  %i.abz = call float @llvm.fmuladd.f32(float %i.abw, float %i.abw, float %i.aby)
  %i.aca = load float, ptr %i.c, align 8, !tbaa !12 ; 3 uses
  %i.acb = call noundef float @llvm.fmuladd.f32(float %i.aca, float %i.aca, float %i.abz)
  %i.acc = call noundef float @sqrtf(float noundef %i.acb) #13
  %i.acd = fdiv float 1.000000e+00, %i.acc        ; 3 uses
  %i.ace = fmul float %i.abw, %i.acd
  store float %i.ace, ptr %8, align 16, !tbaa !12
  %i.acf = fmul float %i.abx, %i.acd
  store float %i.acf, ptr %i.b, align 4, !tbaa !12
  %i.acg = fmul float %i.aca, %i.acd
  store float %i.acg, ptr %i.c, align 8, !tbaa !12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %storemerge130 = phi i32 [ 6, %bb.be ], [ 5, %bb.bd ]
  %.4 = phi float [ %i.abf, %bb.be ], [ %.1, %bb.bd ]
  store i32 %storemerge130, ptr %i.bg, align 8, !tbaa !32
  br label %.split.thread

.split.thread:                                    ; preds = %bb.bf, %bb.az, %bb.ba
  %.5.ph = phi float [ %.1, %bb.ba ], [ %i.aah, %bb.az ], [ %.4, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  br label %.sink.split

.split:                                           ; preds = %bb.at, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br i1 %.1114, label %bb.bh, label %bb.bo

bb.bg:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br i1 %.1114, label %bb.bh, label %bb.bo

.sink.split:                                      ; preds = %bb.ar, %.split.thread
  %.6547.ph = phi float [ %.5.ph, %.split.thread ], [ %.1, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %bb.bb, %.split, %bb.bg
  %.6547 = phi float [ %.1, %bb.bb ], [ %.1, %bb.bg ], [ %.1, %.split ], [ %.6547.ph, %.sink.split ] ; 6 uses
  %i.ach = fcmp olt float %.6547, 0.000000e+00
  br i1 %i.ach, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.aci = fmul float %.6547, %.6547
  %i.acj = load float, ptr %i.rg, align 4, !tbaa !50
  %i.ack = fcmp olt float %i.aci, %i.acj
  br i1 %i.ack, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !36
  store float %.6547, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  %i.acl = fneg <3 x float> %i.yd                 ; 5 uses
  %i.acm = fneg float %.sroa.0469.0
  %i.acn = load <2 x float>, ptr %11, align 8, !tbaa !12
  %i.aco = load <2 x float>, ptr %i.f, align 8, !tbaa !12
  %i.acp = shufflevector <3 x float> %i.acl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.acq = fmul <2 x float> %i.aco, %i.acp
  %i.acr = shufflevector <3 x float> %i.acl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.acs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acn, <2 x float> %i.acr, <2 x float> %i.acq)
  %i.act = load <2 x float>, ptr %i.h, align 8, !tbaa !12
  %i.acu = shufflevector <3 x float> %i.acl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.acv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.act, <2 x float> %i.acu, <2 x float> %i.acs)
  %i.acw = load float, ptr %i.bq, align 8, !tbaa !12
  %i.acx = load float, ptr %i.bs, align 8, !tbaa !12
  %i.acy = extractelement <3 x float> %i.acl, i64 1
  %i.acz = fmul float %i.acx, %i.acy
  %i.ada = call float @llvm.fmuladd.f32(float %i.acw, float %i.acm, float %i.acz)
  %i.adb = load float, ptr %i.bw, align 8, !tbaa !12
  %i.adc = extractelement <3 x float> %i.acl, i64 2
  %i.add = call noundef float @llvm.fmuladd.f32(float %i.adb, float %i.adc, float %i.ada)
  %.sroa.3.12.vec.insert.i244 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.add, i64 0
  store <2 x float> %i.acv, ptr %23, align 8
  %i.ade = getelementptr inbounds nuw i8, ptr %23, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i244, ptr %i.ade, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  %i.adf = load <2 x float>, ptr %12, align 8, !tbaa !12
  %i.adg = load <2 x float>, ptr %i.m, align 8, !tbaa !12
  %i.adh = insertelement <2 x float> poison, float %.sroa.9.0, i64 0
  %i.adi = shufflevector <2 x float> %i.adh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adj = fmul <2 x float> %i.adi, %i.adg
  %i.adk = insertelement <2 x float> poison, float %.sroa.0469.0, i64 0
  %i.adl = shufflevector <2 x float> %i.adk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adf, <2 x float> %i.adl, <2 x float> %i.adj)
  %i.adn = load <2 x float>, ptr %i.o, align 8, !tbaa !12
  %i.ado = insertelement <2 x float> poison, float %.sroa.14.0, i64 0
  %i.adp = shufflevector <2 x float> %i.ado, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adn, <2 x float> %i.adp, <2 x float> %i.adm)
  %i.adr = load float, ptr %i.cd, align 8, !tbaa !12
  %i.ads = load float, ptr %i.cf, align 8, !tbaa !12
  %i.adt = fmul float %.sroa.9.0, %i.ads
  %i.adu = call float @llvm.fmuladd.f32(float %i.adr, float %.sroa.0469.0, float %i.adt)
  %i.adv = load float, ptr %i.cj, align 8, !tbaa !12
  %i.adw = call noundef float @llvm.fmuladd.f32(float %i.adv, float %.sroa.14.0, float %i.adu)
  %.sroa.3.12.vec.insert.i249 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.adw, i64 0
  store <2 x float> %i.adq, ptr %24, align 8
  %i.adx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i249, ptr %i.adx, align 8
  %i.ady = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.adz = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.ady, ptr noundef nonnull align 4 dereferenceable(16) %23) ; 2 uses
  %i.aea = extractvalue { <2 x float>, <2 x float> } %i.adz, 0 ; 2 uses
  %i.aeb = extractvalue { <2 x float>, <2 x float> } %i.adz, 1
  %i.aec = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.aed = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.aec, ptr noundef nonnull align 4 dereferenceable(16) %24) ; 2 uses
  %i.aee = extractvalue { <2 x float>, <2 x float> } %i.aed, 0 ; 4 uses
  %i.aef = extractvalue { <2 x float>, <2 x float> } %i.aed, 1 ; 2 uses
  %i.aeg = load float, ptr %i.bq, align 8, !tbaa !12 ; 2 uses
  %i.aeh = load float, ptr %i.bs, align 8, !tbaa !12 ; 2 uses
  %i.aei = load float, ptr %i.bw, align 8, !tbaa !12 ; 2 uses
  %i.aej = load float, ptr %i.t, align 8, !tbaa !12
  %i.aek = load float, ptr %i.cd, align 8, !tbaa !12 ; 2 uses
  %i.ael = load float, ptr %i.cf, align 8, !tbaa !12 ; 2 uses
  %i.aem = load float, ptr %i.cj, align 8, !tbaa !12 ; 2 uses
  %i.aen = load float, ptr %i.p, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  %i.aeo = load <2 x float>, ptr %11, align 8, !tbaa !12 ; 3 uses
  %i.aep = load <2 x float>, ptr %i.f, align 8, !tbaa !12 ; 3 uses
  %i.aeq = load <2 x float>, ptr %i.h, align 8, !tbaa !12 ; 3 uses
  %i.aer = shufflevector <2 x float> %i.aeq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aes = getelementptr inbounds nuw i8, ptr %25, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #13
  %i.aet = load <2 x float>, ptr %12, align 8, !tbaa !12 ; 3 uses
  %i.aeu = shufflevector <2 x float> %i.aet, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.aev = shufflevector <2 x float> %i.aea, <2 x float> %i.aee, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.aew = shufflevector <2 x float> %i.aeo, <2 x float> %i.aep, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.aex = shufflevector <2 x float> %i.aeq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aey = shufflevector <4 x float> %i.aew, <4 x float> %i.aex, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aez = shufflevector <2 x float> %i.aet, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.afa = shufflevector <4 x float> %i.aey, <4 x float> %i.aez, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.afb = fmul <4 x float> %i.aev, %i.afa
  %i.afc = shufflevector <2 x float> %i.aea, <2 x float> %i.aee, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.afd = shufflevector <2 x float> %i.aeo, <2 x float> %i.aep, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.afe = shufflevector <4 x float> %i.afd, <4 x float> %i.aer, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.aff = shufflevector <4 x float> %i.afe, <4 x float> %i.aeu, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.afg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afc, <4 x float> %i.aff, <4 x float> %i.afb)
  %i.afh = shufflevector <2 x float> %i.aeb, <2 x float> %i.aef, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.afi = insertelement <4 x float> poison, float %i.aeg, i64 0
  %i.afj = insertelement <4 x float> %i.afi, float %i.aeh, i64 1
  %i.afk = insertelement <4 x float> %i.afj, float %i.aei, i64 2
  %i.afl = insertelement <4 x float> %i.afk, float %i.aek, i64 3
  %i.afm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.afh, <4 x float> %i.afl, <4 x float> %i.afg)
  %i.afn = load <2 x float>, ptr %i.m, align 8, !tbaa !12 ; 3 uses
  %i.afo = load <2 x float>, ptr %i.o, align 8, !tbaa !12 ; 3 uses
  %i.afp = load <4 x float>, ptr %i.i, align 8
  %i.afq = insertelement <4 x float> poison, float %i.aej, i64 2
  %i.afr = insertelement <4 x float> %i.afq, float %i.aen, i64 3
  %i.afs = shufflevector <4 x float> %i.afp, <4 x float> %i.afr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aft = fadd <4 x float> %i.afm, %i.afs        ; 3 uses
  %i.afu = load <2 x float>, ptr %i.s, align 4, !tbaa !12
  %i.afv = shufflevector <2 x float> %i.aee, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.afw = shufflevector <2 x float> %i.afn, <2 x float> %i.afo, <2 x i32> <i32 1, i32 3>
  %i.afx = fmul <2 x float> %i.afv, %i.afw
  %i.afy = shufflevector <2 x float> %i.aee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afz = shufflevector <2 x float> %i.afn, <2 x float> %i.afo, <2 x i32> <i32 0, i32 2>
  %i.aga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afy, <2 x float> %i.afz, <2 x float> %i.afx)
  %i.agb = shufflevector <2 x float> %i.aef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agc = insertelement <2 x float> poison, float %i.ael, i64 0
  %i.agd = insertelement <2 x float> %i.agc, float %i.aem, i64 1
  %i.age = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agb, <2 x float> %i.agd, <2 x float> %i.aga)
  %i.agf = fadd <2 x float> %i.age, %i.afu
  %shift691 = shufflevector <4 x float> %i.aft, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop692 = fsub <4 x float> %i.aft, %shift691
  %i.agg = extractelement <4 x float> %foldExtExtBinop692, i64 0
  %i.agh = shufflevector <4 x float> %i.aft, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.agi = fsub <2 x float> %i.agh, %i.agf        ; 2 uses
  %i.agj = extractelement <2 x float> %i.agi, i64 0
  %i.agk = fmul float %.sroa.9.0, %i.agj
  %i.agl = call float @llvm.fmuladd.f32(float %.sroa.0469.0, float %i.agg, float %i.agk)
  %i.agm = extractelement <2 x float> %i.agi, i64 1
  %i.agn = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0, float %i.agm, float %i.agl)
  %i.ago = fsub float %i.agn, %i.bj               ; 3 uses
  %i.agp = load float, ptr %8, align 16, !tbaa !12 ; 3 uses
  %i.agq = load float, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.agr = load float, ptr %i.c, align 8, !tbaa !12 ; 3 uses
  %i.ags = insertelement <2 x float> poison, float %i.agq, i64 0
  %i.agt = shufflevector <2 x float> %i.ags, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agu = fmul <2 x float> %i.aep, %i.agt
  %i.agv = insertelement <2 x float> poison, float %i.agp, i64 0
  %i.agw = shufflevector <2 x float> %i.agv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aeo, <2 x float> %i.agw, <2 x float> %i.agu)
  %i.agy = insertelement <2 x float> poison, float %i.agr, i64 0
  %i.agz = shufflevector <2 x float> %i.agy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aha = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aeq, <2 x float> %i.agz, <2 x float> %i.agx)
  %i.ahb = fmul float %i.aeh, %i.agq
  %i.ahc = call float @llvm.fmuladd.f32(float %i.aeg, float %i.agp, float %i.ahb)
  %i.ahd = call noundef float @llvm.fmuladd.f32(float %i.aei, float %i.agr, float %i.ahc)
  %.sroa.3.12.vec.insert.i269 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ahd, i64 0
  store <2 x float> %i.aha, ptr %25, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i269, ptr %i.aes, align 8
  %i.ahe = fneg float %i.agp                      ; 2 uses
  %i.ahf = fneg float %i.agq                      ; 2 uses
  %i.ahg = fneg float %i.agr                      ; 2 uses
  %i.ahh = insertelement <2 x float> poison, float %i.ahf, i64 0
  %i.ahi = shufflevector <2 x float> %i.ahh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahj = fmul <2 x float> %i.afn, %i.ahi
  %i.ahk = insertelement <2 x float> poison, float %i.ahe, i64 0
  %i.ahl = shufflevector <2 x float> %i.ahk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aet, <2 x float> %i.ahl, <2 x float> %i.ahj)
  %i.ahn = insertelement <2 x float> poison, float %i.ahg, i64 0
  %i.aho = shufflevector <2 x float> %i.ahn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afo, <2 x float> %i.aho, <2 x float> %i.ahm)
  %i.ahq = fmul float %i.ael, %i.ahf
  %i.ahr = call float @llvm.fmuladd.f32(float %i.aek, float %i.ahe, float %i.ahq)
  %i.ahs = call noundef float @llvm.fmuladd.f32(float %i.aem, float %i.ahg, float %i.ahr)
  %.sroa.3.12.vec.insert.i279 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ahs, i64 0
  store <2 x float> %i.ahp, ptr %26, align 8
  %i.aht = getelementptr inbounds nuw i8, ptr %26, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i279, ptr %i.aht, align 8
  %i.ahu = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.ahv = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.ahu, ptr noundef nonnull align 4 dereferenceable(16) %25) ; 2 uses
  %i.ahw = extractvalue { <2 x float>, <2 x float> } %i.ahv, 0 ; 2 uses
  %i.ahx = extractvalue { <2 x float>, <2 x float> } %i.ahv, 1
  %i.ahy = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.ahz = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.ahy, ptr noundef nonnull align 4 dereferenceable(16) %26) ; 2 uses
  %i.aia = extractvalue { <2 x float>, <2 x float> } %i.ahz, 0 ; 2 uses
  %i.aib = extractvalue { <2 x float>, <2 x float> } %i.ahz, 1
  %i.aic = load <2 x float>, ptr %i.bq, align 8
  %i.aid = load <2 x float>, ptr %i.bs, align 8
  %i.aie = load <2 x float>, ptr %i.bw, align 8
  %i.aif = load float, ptr %i.t, align 8, !tbaa !12
  %i.aig = load <2 x float>, ptr %i.cd, align 8
  %i.aih = load <2 x float>, ptr %i.cf, align 8
  %i.aii = load <2 x float>, ptr %i.cj, align 8
  %i.aij = load float, ptr %i.v, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #13
  %i.aik = load <2 x float>, ptr %1, align 4, !tbaa !12
  %i.ail = load <2 x float>, ptr %i.e, align 4, !tbaa !12
  %i.aim = load <2 x float>, ptr %i.g, align 4, !tbaa !12
  %i.ain = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !12
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !12
  %i.air = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ais = load float, ptr %i.air, align 4, !tbaa !12
  %i.ait = getelementptr inbounds nuw i8, ptr %27, i64 8
end_hunk_1
begin_hunk_2_@_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw:bb.a
  %i.ajn = load <2 x float>, ptr %i.l, align 4, !tbaa !12
  %i.ajo = insertelement <2 x float> poison, float %i.aiw, i64 0
  %i.ajp = shufflevector <2 x float> %i.ajo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajq = fmul <2 x float> %i.ajp, %i.ajn
  %i.ajr = insertelement <2 x float> poison, float %i.aiu, i64 0
  %i.ajs = shufflevector <2 x float> %i.ajr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ajm, <2 x float> %i.ajs, <2 x float> %i.ajq)
  %i.aju = load <2 x float>, ptr %i.n, align 4, !tbaa !12
  %i.ajv = insertelement <2 x float> poison, float %i.aiy, i64 0
  %i.ajw = shufflevector <2 x float> %i.ajv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ajx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aju, <2 x float> %i.ajw, <2 x float> %i.ajt)
  %i.ajy = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ajz = load float, ptr %i.ajy, align 4, !tbaa !12
  %i.aka = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.akb = load float, ptr %i.aka, align 4, !tbaa !12
  %i.akc = fmul float %i.aiw, %i.akb
  %i.akd = call float @llvm.fmuladd.f32(float %i.ajz, float %i.aiu, float %i.akc)
  %i.ake = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.akf = load float, ptr %i.ake, align 4, !tbaa !12
  %i.akg = call noundef float @llvm.fmuladd.f32(float %i.akf, float %i.aiy, float %i.akd)
  %.sroa.3.12.vec.insert.i314 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.akg, i64 0
  store <2 x float> %i.ajx, ptr %28, align 8
  %i.akh = getelementptr inbounds nuw i8, ptr %28, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i314, ptr %i.akh, align 8
  %i.aki = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.akj = load <2 x float>, ptr %11, align 8, !tbaa !12 ; 2 uses
  %i.akk = load <2 x float>, ptr %i.f, align 8, !tbaa !12 ; 2 uses
  %i.akl = load <2 x float>, ptr %i.h, align 8, !tbaa !12 ; 2 uses
  %i.akm = load <2 x float>, ptr %i.i, align 8, !tbaa !12 ; 2 uses
  %i.akn = load <2 x float>, ptr %12, align 8, !tbaa !12 ; 2 uses
  %i.ako = load <2 x float>, ptr %i.m, align 8, !tbaa !12 ; 2 uses
  %i.akp = load <2 x float>, ptr %i.o, align 8, !tbaa !12 ; 2 uses
  %i.akq = load <2 x float>, ptr %i.p, align 8, !tbaa !12 ; 2 uses
  %i.akr = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.aki, ptr noundef nonnull align 4 dereferenceable(16) %27) ; 2 uses
  %i.aks = extractvalue { <2 x float>, <2 x float> } %i.akr, 0 ; 2 uses
  %i.akt = extractvalue { <2 x float>, <2 x float> } %i.akr, 1
  %i.aku = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.akv = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(32) %i.aku, ptr noundef nonnull align 4 dereferenceable(16) %28) ; 2 uses
  %i.akw = extractvalue { <2 x float>, <2 x float> } %i.akv, 0 ; 2 uses
  %i.akx = extractvalue { <2 x float>, <2 x float> } %i.akv, 1
  %i.aky = load float, ptr %11, align 8, !tbaa !12
  %i.akz = load float, ptr %i.bn, align 4, !tbaa !12
  %i.ala = shufflevector <2 x float> %i.ahw, <2 x float> %i.aks, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.alb = shufflevector <2 x float> %i.akj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.alc = insertelement <2 x float> %i.alb, float %i.akz, i64 1
  %i.ald = fmul <2 x float> %i.ala, %i.alc
  %i.ale = shufflevector <2 x float> %i.ahw, <2 x float> %i.aks, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.alf = insertelement <2 x float> %i.akj, float %i.aky, i64 1
  %i.alg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ale, <2 x float> %i.alf, <2 x float> %i.ald)
  %i.alh = load float, ptr %i.bq, align 8, !tbaa !12
  %i.ali = shufflevector <2 x float> %i.ahx, <2 x float> %i.akt, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.alj = insertelement <2 x float> %i.aic, float %i.alh, i64 1
  %i.alk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ali, <2 x float> %i.alj, <2 x float> %i.alg)
  %i.all = load float, ptr %i.f, align 8, !tbaa !12
  %i.alm = load float, ptr %i.bo, align 4, !tbaa !12
  %i.aln = shufflevector <2 x float> %i.akk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.alo = insertelement <2 x float> %i.aln, float %i.alm, i64 1
  %i.alp = fmul <2 x float> %i.ala, %i.alo
  %i.alq = insertelement <2 x float> %i.akk, float %i.all, i64 1
  %i.alr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ale, <2 x float> %i.alq, <2 x float> %i.alp)
  %i.als = load float, ptr %i.bs, align 8, !tbaa !12
  %i.alt = insertelement <2 x float> %i.aid, float %i.als, i64 1
  %i.alu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ali, <2 x float> %i.alt, <2 x float> %i.alr)
  %i.alv = load float, ptr %i.h, align 8, !tbaa !12
  %i.alw = load float, ptr %i.bp, align 4, !tbaa !12
  %i.alx = shufflevector <2 x float> %i.akl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aly = insertelement <2 x float> %i.alx, float %i.alw, i64 1
  %i.alz = fmul <2 x float> %i.ala, %i.aly
  %i.ama = insertelement <2 x float> %i.akl, float %i.alv, i64 1
  %i.amb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ale, <2 x float> %i.ama, <2 x float> %i.alz)
  %i.amc = load float, ptr %i.bw, align 8, !tbaa !12
  %i.amd = insertelement <2 x float> %i.aie, float %i.amc, i64 1
  %i.ame = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ali, <2 x float> %i.amd, <2 x float> %i.amb)
  %i.amf = load float, ptr %i.i, align 8, !tbaa !12
  %i.amg = insertelement <2 x float> %i.akm, float %i.amf, i64 1
  %i.amh = fadd <2 x float> %i.alk, %i.amg
  %i.ami = load float, ptr %i.r, align 4, !tbaa !12
  %i.amj = shufflevector <2 x float> %i.akm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.amk = insertelement <2 x float> %i.amj, float %i.ami, i64 1
  %i.aml = fadd <2 x float> %i.alu, %i.amk
  %i.amm = load float, ptr %i.t, align 8, !tbaa !12
  %i.amn = insertelement <2 x float> poison, float %i.aif, i64 0
  %i.amo = insertelement <2 x float> %i.amn, float %i.amm, i64 1
  %i.amp = fadd <2 x float> %i.ame, %i.amo
  %i.amq = load float, ptr %12, align 8, !tbaa !12
  %i.amr = load float, ptr %i.ca, align 4, !tbaa !12
  %i.ams = shufflevector <2 x float> %i.aia, <2 x float> %i.akw, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.amt = shufflevector <2 x float> %i.akn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.amu = insertelement <2 x float> %i.amt, float %i.amr, i64 1
  %i.amv = fmul <2 x float> %i.ams, %i.amu
  %i.amw = shufflevector <2 x float> %i.aia, <2 x float> %i.akw, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.amx = insertelement <2 x float> %i.akn, float %i.amq, i64 1
  %i.amy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amw, <2 x float> %i.amx, <2 x float> %i.amv)
  %i.amz = load float, ptr %i.cd, align 8, !tbaa !12
  %i.ana = shufflevector <2 x float> %i.aib, <2 x float> %i.akx, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.anb = insertelement <2 x float> %i.aig, float %i.amz, i64 1
  %i.anc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ana, <2 x float> %i.anb, <2 x float> %i.amy)
  %i.and = load float, ptr %i.m, align 8, !tbaa !12
  %i.ane = load float, ptr %i.cb, align 4, !tbaa !12
  %i.anf = shufflevector <2 x float> %i.ako, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ang = insertelement <2 x float> %i.anf, float %i.ane, i64 1
  %i.anh = fmul <2 x float> %i.ams, %i.ang
  %i.ani = insertelement <2 x float> %i.ako, float %i.and, i64 1
  %i.anj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amw, <2 x float> %i.ani, <2 x float> %i.anh)
  %i.ank = load float, ptr %i.cf, align 8, !tbaa !12
  %i.anl = insertelement <2 x float> %i.aih, float %i.ank, i64 1
  %i.anm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ana, <2 x float> %i.anl, <2 x float> %i.anj)
  %i.ann = load float, ptr %i.o, align 8, !tbaa !12
  %i.ano = load float, ptr %i.cc, align 4, !tbaa !12
  %i.anp = shufflevector <2 x float> %i.akp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.anq = insertelement <2 x float> %i.anp, float %i.ano, i64 1
  %i.anr = fmul <2 x float> %i.ams, %i.anq
  %i.ans = insertelement <2 x float> %i.akp, float %i.ann, i64 1
  %i.ant = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amw, <2 x float> %i.ans, <2 x float> %i.anr)
  %i.anu = load float, ptr %i.cj, align 8, !tbaa !12
  %i.anv = insertelement <2 x float> %i.aii, float %i.anu, i64 1
  %i.anw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ana, <2 x float> %i.anv, <2 x float> %i.ant)
  %i.anx = load float, ptr %i.p, align 8, !tbaa !12
  %i.any = insertelement <2 x float> %i.akq, float %i.anx, i64 1
  %i.anz = fadd <2 x float> %i.anc, %i.any
  %i.aoa = load float, ptr %i.s, align 4, !tbaa !12
  %i.aob = shufflevector <2 x float> %i.akq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aoc = insertelement <2 x float> %i.aob, float %i.aoa, i64 1
  %i.aod = fadd <2 x float> %i.anm, %i.aoc
  %i.aoe = load float, ptr %i.v, align 8, !tbaa !12
  %i.aof = insertelement <2 x float> poison, float %i.aij, i64 0
  %i.aog = insertelement <2 x float> %i.aof, float %i.aoe, i64 1
  %i.aoh = fadd <2 x float> %i.anw, %i.aog
  %i.aoi = fsub <2 x float> %i.amh, %i.anz
  %i.aoj = fsub <2 x float> %i.aml, %i.aod
  %i.aok = fsub <2 x float> %i.amp, %i.aoh
  %i.aol = load <2 x float>, ptr %8, align 16, !tbaa !12 ; 3 uses
  %i.aom = insertelement <2 x float> %i.aol, float %i.aix, i64 0
  %i.aon = fmul <2 x float> %i.aoj, %i.aom
  %i.aoo = shufflevector <2 x float> %i.aol, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aop = insertelement <2 x float> %i.aoo, float %i.aiv, i64 0
  %i.aoq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aop, <2 x float> %i.aoi, <2 x float> %i.aon)
  %i.aor = load <2 x float>, ptr %i.b, align 4, !tbaa !12 ; 2 uses
  %i.aos = insertelement <2 x float> %i.aor, float %i.aiz, i64 0
  %i.aot = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aos, <2 x float> %i.aok, <2 x float> %i.aoq)
  %i.aou = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.aov = shufflevector <2 x float> %i.aou, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aow = fsub <2 x float> %i.aot, %i.aov        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  %i.aox = extractelement <2 x float> %i.aow, i64 0
  %i.aoy = extractelement <2 x float> %i.aow, i64 1
  %i.aoz = fcmp ogt float %i.aox, %i.aoy
  br i1 %i.aoz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 10, ptr %i.bg, align 8, !tbaa !32
  %i.apa = extractelement <2 x float> %i.aol, i64 0
  %i.apb = fneg float %i.apa
  store float %i.apb, ptr %8, align 16, !tbaa !12
  %i.apc = fneg <2 x float> %i.aor
  store <2 x float> %i.apc, ptr %i.b, align 4, !tbaa !12
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.apd = fmul float %.sroa.9.0, %.sroa.9.0
  %i.ape = call float @llvm.fmuladd.f32(float %.sroa.0469.0, float %.sroa.0469.0, float %i.apd)
  %i.apf = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0, float %.sroa.14.0, float %i.ape)
  %i.apg = fcmp une float %i.apf, 0.000000e+00
  %i.aph = insertelement <2 x float> poison, float %i.ago, i64 0
  %i.api = shufflevector <2 x float> %i.aph, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apj = fcmp ule <2 x float> %i.api, %i.aow
  %i.apk = bitcast <2 x i1> %i.apj to i2
  %i.apl = icmp eq i2 %i.apk, 0
  %i.apm = fcmp ogt float %i.ago, %.6547
  %i.apn = and i1 %i.apm, %i.apl
  %or.cond138 = select i1 %i.apg, i1 %i.apn, i1 false
  br i1 %or.cond138, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store float %.sroa.0469.0, ptr %8, align 16
  store float %.sroa.9.0, ptr %i.b, align 4
  store float %.sroa.14.0, ptr %i.c, align 8
  store float %.sroa.19.0, ptr %i.d, align 4, !tbaa !35
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.7 = phi float [ %i.ago, %bb.bm ], [ %.6547, %bb.bl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #13
  %i.apo = load <2 x float>, ptr %10, align 8, !tbaa !12
  %i.app = fadd <2 x float> %i.ab, %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.apr = load float, ptr %i.apq, align 8, !tbaa !12
  %i.aps = fadd float %i.ac, %i.apr
  %.sroa.3.12.vec.insert.i334 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aps, i64 0
  store <2 x float> %i.app, ptr %29, align 8
  %i.apt = getelementptr inbounds nuw i8, ptr %29, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i334, ptr %i.apt, align 8
  %i.apu = load ptr, ptr %2, align 8, !tbaa !10
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 32
  %i.apw = load ptr, ptr %i.apv, align 8
  call void %i.apw(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %29, float noundef %.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #13
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bb, %.split, %bb.bg, %bb.bi, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z8ccdVec3XPK9btVector3(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !12
  ret float %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z8ccdVec3YPK9btVector3(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !12
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z8ccdVec3ZPK9btVector3(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !12
  ret float %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_Z19btVec3PointTriDist2PK9btVector3S1_S1_S1_PS_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !12
  %i.l = load float, ptr %1, align 4, !tbaa !12   ; 2 uses
  %i.m = load <2 x float>, ptr %2, align 4, !tbaa !12 ; 2 uses
  %i.n = load float, ptr %i.b, align 4, !tbaa !12 ; 3 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !12 ; 3 uses
  %i.p = fsub float %i.d, %i.o                    ; 3 uses
  %i.q = load <2 x float>, ptr %3, align 4, !tbaa !12 ; 4 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> %i.m, <2 x i32> <i32 0, i32 2>
  %i.s = insertelement <2 x float> poison, float %i.l, i64 0 ; 2 uses
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fsub <2 x float> %i.r, %i.t              ; 3 uses
  %i.v = shufflevector <2 x float> %i.q, <2 x float> %i.m, <2 x i32> <i32 1, i32 3>
  %i.w = insertelement <2 x float> poison, float %i.n, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fsub <2 x float> %i.v, %i.x              ; 3 uses
  %i.z = load <2 x float>, ptr %0, align 4, !tbaa !12 ; 2 uses
  %i.aa = shufflevector <2 x float> %i.s, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %i.ab = insertelement <2 x float> %i.z, float %i.l, i64 1
  %i.ac = fsub <2 x float> %i.aa, %i.ab           ; 5 uses
  %i.ad = insertelement <2 x float> %i.q, float %i.n, i64 0
  %i.ae = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.af = insertelement <2 x float> %i.ae, float %i.n, i64 1
  %i.ag = fsub <2 x float> %i.ad, %i.af           ; 6 uses
  %i.ah = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.h, i64 1
  %i.aj = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.o, i64 1
  %i.al = fsub <2 x float> %i.ai, %i.ak           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.ag, %i.ag
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = extractelement <2 x float> %i.ac, i64 0 ; 2 uses
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.am)
  %i.ap = extractelement <2 x float> %i.al, i64 0 ; 2 uses
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao)
  %i.ar = fpext float %i.aq to double
  %i.as = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = fmul <2 x float> %i.as, %i.ag
  %i.au = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.ac, <2 x float> %i.at)
  %i.aw = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.al, <2 x float> %i.av)
  %i.ay = fpext <2 x float> %i.ax to <2 x double> ; 4 uses
  %i.az = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ba = fmul <2 x float> %i.az, %i.y
  %i.bb = fmul <2 x float> %i.az, %i.ag
  %i.bc = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.u, <2 x float> %i.ba)
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.ac, <2 x float> %i.bb)
  %i.bf = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bh = insertelement <2 x float> %i.aw, float %i.p, i64 1
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.bh, <2 x float> %i.bd)
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.al, <2 x float> %i.be)
  %i.bk = fpext <2 x float> %i.bi to <2 x double> ; 4 uses
  %i.bl = fpext <2 x float> %i.bj to <2 x double> ; 2 uses
  %i.bm = fneg <2 x double> %i.bl
  %i.bn = shufflevector <2 x double> %i.ay, <2 x double> %i.bk, <2 x i32> <i32 1, i32 2>
  %i.bo = fmul <2 x double> %i.bn, %i.bm
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.bk, <2 x double> %i.bo) ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = extractelement <2 x double> %i.bp, i64 1
  %i.bs = fdiv double %i.bq, %i.br                ; 8 uses
  %i.bt = fneg double %i.bs
  %i.bu = extractelement <2 x double> %i.ay, i64 0 ; 2 uses
  %i.bv = fneg double %i.bu
  %i.bw = extractelement <2 x double> %i.bk, i64 0 ; 2 uses
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bw, double %i.bv)
  %i.by = extractelement <2 x double> %i.ay, i64 1 ; 2 uses
  %i.bz = fdiv double %i.bx, %i.by                ; 8 uses
  %i.ca = fptrunc double %i.bs to float           ; 5 uses
  %i.cb = tail call noundef float @llvm.fabs.f32(float %i.ca) ; 3 uses
  %i.cc = fcmp olt float %i.cb, f0x34000000
  %i.cd = fcmp ogt double %i.bs, 0.000000e+00
  %or.cond = or i1 %i.cd, %i.cc
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ce = fadd float %i.ca, -1.000000e+00
  %i.cf = tail call noundef float @llvm.fabs.f32(float %i.ce) ; 2 uses
  %i.cg = fcmp olt float %i.cf, f0x34000000
  br i1 %i.cg, label %_Z5ccdEqff.exit.thread, label %_Z5ccdEqff.exit

_Z5ccdEqff.exit:                                  ; preds = %bb.b
  %i.ch = fcmp uge float %i.cb, 1.000000e+00
  %i.ci = fmul float %i.cb, f0x34000000
  %i.cj = fcmp olt float %i.cf, %i.ci
  %.0.shrunk.i = and i1 %i.ch, %i.cj
  %i.ck = fcmp olt double %i.bs, 1.000000e+00
  %or.cond3 = or i1 %i.ck, %.0.shrunk.i
  br i1 %or.cond3, label %_Z5ccdEqff.exit.thread, label %bb.f

_Z5ccdEqff.exit.thread:                           ; preds = %bb.b, %_Z5ccdEqff.exit
  %i.cl = fptrunc double %i.bz to float           ; 5 uses
  %i.cm = tail call noundef float @llvm.fabs.f32(float %i.cl) ; 3 uses
  %i.cn = fcmp olt float %i.cm, f0x34000000
  %i.co = fcmp ogt double %i.bz, 0.000000e+00
  %or.cond5 = or i1 %i.co, %i.cn
  br i1 %or.cond5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_Z5ccdEqff.exit.thread
  %i.cp = fadd float %i.cl, -1.000000e+00
  %i.cq = tail call noundef float @llvm.fabs.f32(float %i.cp) ; 2 uses
  %i.cr = fcmp olt float %i.cq, f0x34000000
  br i1 %i.cr, label %_Z5ccdEqff.exit105.thread, label %_Z5ccdEqff.exit105

_Z5ccdEqff.exit105:                               ; preds = %bb.c
  %i.cs = fcmp uge float %i.cm, 1.000000e+00
  %i.ct = fmul float %i.cm, f0x34000000
  %i.cu = fcmp olt float %i.cq, %i.ct
  %.0.shrunk.i103 = and i1 %i.cs, %i.cu
  %i.cv = fcmp olt double %i.bz, 1.000000e+00
  %or.cond7 = or i1 %i.cv, %.0.shrunk.i103
  br i1 %or.cond7, label %_Z5ccdEqff.exit105.thread, label %bb.f

_Z5ccdEqff.exit105.thread:                        ; preds = %bb.c, %_Z5ccdEqff.exit105
  %i.cw = fadd double %i.bs, %i.bz                ; 2 uses
  %i.cx = fptrunc double %i.cw to float           ; 2 uses
  %i.cy = fadd float %i.cx, -1.000000e+00
  %i.cz = tail call noundef float @llvm.fabs.f32(float %i.cy) ; 2 uses
  %i.da = fcmp olt float %i.cz, f0x34000000
  br i1 %i.da, label %_Z5ccdEqff.exit108.thread, label %_Z5ccdEqff.exit108

_Z5ccdEqff.exit108:                               ; preds = %_Z5ccdEqff.exit105.thread
  %i.db = tail call noundef float @llvm.fabs.f32(float %i.cx) ; 2 uses
  %i.dc = fcmp uge float %i.db, 1.000000e+00
  %i.dd = fmul float %i.db, f0x34000000
  %i.de = fcmp olt float %i.cz, %i.dd
  %.0.shrunk.i106 = and i1 %i.dc, %i.de
  %i.df = fcmp olt double %i.cw, 1.000000e+00
  %or.cond94 = or i1 %i.df, %.0.shrunk.i106
  br i1 %or.cond94, label %_Z5ccdEqff.exit108.thread, label %bb.f

_Z5ccdEqff.exit108.thread:                        ; preds = %_Z5ccdEqff.exit105.thread, %_Z5ccdEqff.exit108
  %.not93 = icmp eq ptr %4, null
  br i1 %.not93, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_Z5ccdEqff.exit108.thread
  %i.dg = extractelement <2 x float> %i.u, i64 1
  %i.dh = fmul float %i.dg, %i.ca
  %i.di = extractelement <2 x float> %i.y, i64 1
  %i.dj = fmul float %i.di, %i.ca
  %i.dk = fmul float %i.p, %i.ca
  %i.dl = extractelement <2 x float> %i.ac, i64 1
  %i.dm = fmul float %i.dl, %i.cl
  %i.dn = extractelement <2 x float> %i.ag, i64 1
  %i.do = fmul float %i.dn, %i.cl
  %i.dp = extractelement <2 x float> %i.al, i64 1
  %i.dq = fmul float %i.dp, %i.cl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !36
  %i.dr = load float, ptr %4, align 4, !tbaa !12
  %i.ds = fadd float %i.dh, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !12
  %i.dv = fadd float %i.dj, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !12
end_hunk_2
