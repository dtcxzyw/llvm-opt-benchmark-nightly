Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btKinematicCharacterController?download=true
inline.NumInlined: 552
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
$_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE = comdat any

$_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE = comdat any

$_ZTIN16btCollisionWorld20ConvexResultCallbackE = comdat any

$_ZTSN16btCollisionWorld20ConvexResultCallbackE = comdat any

@_ZTV30btKinematicCharacterController = dso_local constant { [21 x ptr] } { [21 x ptr] [ptr null, ptr @_ZTI30btKinematicCharacterController, ptr @_ZN30btKinematicCharacterControllerD2Ev, ptr @_ZN30btKinematicCharacterControllerD0Ev, ptr @_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf, ptr @_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw, ptr @_ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3, ptr @_ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f, ptr @_ZN30btKinematicCharacterController5resetEP16btCollisionWorld, ptr @_ZN30btKinematicCharacterController4warpERK9btVector3, ptr @_ZN30btKinematicCharacterController7preStepEP16btCollisionWorld, ptr @_ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf, ptr @_ZNK30btKinematicCharacterController7canJumpEv, ptr @_ZN30btKinematicCharacterController4jumpERK9btVector3, ptr @_ZNK30btKinematicCharacterController8onGroundEv, ptr @_ZN30btKinematicCharacterController16setUpInterpolateEb, ptr @_ZN30btKinematicCharacterController14needsCollisionEPK17btCollisionObjectS2_, ptr @_ZN30btKinematicCharacterController18setAngularVelocityERK9btVector3, ptr @_ZNK30btKinematicCharacterController18getAngularVelocityEv, ptr @_ZN30btKinematicCharacterController17setLinearVelocityERK9btVector3, ptr @_ZNK30btKinematicCharacterController17getLinearVelocityEv] }, align 8
@_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection = internal global [3 x %class.btVector3] zeroinitializer, align 16
@_ZGVZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection = internal global i64 0, align 8
@_ZTI30btKinematicCharacterController = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS30btKinematicCharacterController, ptr @_ZTI30btCharacterControllerInterface }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS30btKinematicCharacterController = dso_local constant [33 x i8] c"30btKinematicCharacterController\00", align 1
@_ZTI30btCharacterControllerInterface = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS30btCharacterControllerInterface, ptr @_ZTI17btActionInterface }, comdat, align 8
@_ZTS30btCharacterControllerInterface = linkonce_odr dso_local constant [33 x i8] c"30btCharacterControllerInterface\00", comdat, align 1
@_ZTI17btActionInterface = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS17btActionInterface }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS17btActionInterface = linkonce_odr dso_local constant [20 x i8] c"17btActionInterface\00", comdat, align 1
@_ZTV43btKinematicClosestNotMeConvexResultCallback = linkonce_odr dso_local constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI43btKinematicClosestNotMeConvexResultCallback, ptr @_ZN16btCollisionWorld20ConvexResultCallbackD2Ev, ptr @_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev, ptr @_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy, ptr @_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb] }, comdat, align 8
@_ZTI43btKinematicClosestNotMeConvexResultCallback = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS43btKinematicClosestNotMeConvexResultCallback, ptr @_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE }, comdat, align 8
@_ZTS43btKinematicClosestNotMeConvexResultCallback = linkonce_odr dso_local constant [46 x i8] c"43btKinematicClosestNotMeConvexResultCallback\00", comdat, align 1
@_ZTIN16btCollisionWorld27ClosestConvexResultCallbackE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE, ptr @_ZTIN16btCollisionWorld20ConvexResultCallbackE }, comdat, align 8
@_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE = linkonce_odr dso_local constant [50 x i8] c"N16btCollisionWorld27ClosestConvexResultCallbackE\00", comdat, align 1
@_ZTIN16btCollisionWorld20ConvexResultCallbackE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN16btCollisionWorld20ConvexResultCallbackE }, comdat, align 8
@_ZTSN16btCollisionWorld20ConvexResultCallbackE = linkonce_odr dso_local constant [43 x i8] c"N16btCollisionWorld20ConvexResultCallbackE\00", comdat, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN30btKinematicCharacterControllerC1EP24btPairCachingGhostObjectP13btConvexShapefRK9btVector3 = dso_local unnamed_addr alias void (ptr, ptr, ptr, float, ptr), ptr @_ZN30btKinematicCharacterControllerC2EP24btPairCachingGhostObjectP13btConvexShapefRK9btVector3
@_ZN30btKinematicCharacterControllerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN30btKinematicCharacterControllerD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN30btKinematicCharacterController26computeReflectionDirectionERK9btVector3S2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(319) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !10 ; 2 uses
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 3 uses
  %i.f = load <2 x float>, ptr %2, align 4, !tbaa !10 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.f
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.h = extractelement <2 x float> %i.e, i64 0
  %i.i = extractelement <2 x float> %i.f, i64 0
  %i.j = tail call float @llvm.fmuladd.f32(float %i.h, float %i.i, float %i.g)
  %i.k = tail call noundef float @llvm.fmuladd.f32(float %i.b, float %i.d, float %i.j)
  %i.l = fmul float %i.k, 2.000000e+00            ; 2 uses
  %i.m = insertelement <2 x float> poison, float %i.l, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x float> %i.f, %i.n
  %i.p = fmul float %i.d, %i.l
  %i.q = fsub <2 x float> %i.e, %i.o
  %i.r = fsub float %i.b, %i.p
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.r, i64 0
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.q, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN30btKinematicCharacterController17parallelComponentERK9btVector3S2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(319) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = load <2 x float>, ptr %2, align 4, !tbaa !10 ; 3 uses
  %i.i = extractelement <2 x float> %i.h, i64 1
  %i.j = fmul float %i.c, %i.i
  %i.k = extractelement <2 x float> %i.h, i64 0
  %i.l = tail call float @llvm.fmuladd.f32(float %i.a, float %i.k, float %i.j)
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.e, float %i.g, float %i.l) ; 2 uses
  %i.n = insertelement <2 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.h, %i.o
  %i.q = fmul float %i.g, %i.m
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.q, i64 0
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.p, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN30btKinematicCharacterController22perpindicularComponentERK9btVector3S2_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(319) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !10 ; 2 uses
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 3 uses
  %i.f = load <2 x float>, ptr %2, align 4, !tbaa !10 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.f
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.h = extractelement <2 x float> %i.e, i64 0
  %i.i = extractelement <2 x float> %i.f, i64 0
  %i.j = tail call float @llvm.fmuladd.f32(float %i.h, float %i.i, float %i.g)
  %i.k = tail call noundef float @llvm.fmuladd.f32(float %i.b, float %i.d, float %i.j) ; 2 uses
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fmul <2 x float> %i.f, %i.m
  %i.o = fmul float %i.d, %i.k
  %i.p = fsub <2 x float> %i.e, %i.n
  %i.q = fsub float %i.b, %i.o
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.q, i64 0
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.p, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.3.12.vec.insert.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterControllerC2EP24btPairCachingGhostObjectP13btConvexShapefRK9btVector3(ptr noundef nonnull align 8 dereferenceable(319) initializes((0, 8), (16, 56), (68, 76), (80, 100), (116, 132), (164, 168), (220, 228), (232, 241), (268, 319)) %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV30btKinematicCharacterController, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 0, ptr %i.e, align 4, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.f, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  store float 0.000000e+00, ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 2.000000e-02, ptr %i.j, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store <2 x float> <float 2.940000e+01, float 0.000000e+00>, ptr %i.m, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> splat (float 1.000000e+01), ptr %i.n, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 276
  store <4 x i8> <i8 0, i8 0, i8 1, i8 1>, ptr %i.o, align 4, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i8 1, ptr %i.p, align 4, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float 0.000000e+00, ptr %i.q, align 4, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> <float 2.000000e-01, float 0.000000e+00, float 0.000000e+00, float 5.500000e+01>, ptr %i.r, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 317
  store i8 0, ptr %i.s, align 1, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 318
  store i8 0, ptr %i.t, align 2, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 268
  store <2 x float> zeroinitializer, ptr %i.u, align 4, !tbaa !10
  %i.v = load float, ptr %4, align 4, !tbaa !10   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.x = load float, ptr %i.w, align 4, !tbaa !10 ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %i.z = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !10 ; 5 uses
  %i.ac = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.z)
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload3.i.i = load <2 x float>, ptr %4, align 4 ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.copyload3.i.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload3.i.i, %.sroa.0.0.copyload3.i.i
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.af = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i, float %.sroa.0.0.vec.extract.i.i, float %i.ae)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.af)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ag)
  %i.ah = fdiv float 1.000000e+00, %sqrt.i.i.i.i  ; 2 uses
  %i.ai = fmul float %i.ab, %i.ah
  %i.aj = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %.sroa.0.0.copyload3.i.i, %i.ak
  %i.am = fmul <2 x float> %i.al, splat (float -2.940000e+01) ; 4 uses
  %i.an = fmul float %i.ai, -2.940000e+01         ; 3 uses
  %foldExtExtBinop21 = fmul <2 x float> %i.am, %i.am
  %i.ao = extractelement <2 x float> %foldExtExtBinop21, i64 1
  %i.ap = extractelement <2 x float> %i.am, i64 0 ; 2 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.aq) ; 2 uses
  %i.as = fcmp ogt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.c, label %_ZN30btKinematicCharacterController10setGravityERK9btVector3.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.at = fneg <2 x float> %i.am
  %i.au = fneg float %i.an
  %.sroa.3.12.vec.insert.i.i6.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.au, i64 0
  store <2 x float> %i.at, ptr %5, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i6.i, ptr %i.av, align 8
  invoke void @_ZN30btKinematicCharacterController11setUpVectorERK9btVector3(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN30btKinematicCharacterController10setGravityERK9btVector3.exit.i

_ZN30btKinematicCharacterController10setGravityERK9btVector3.exit.i: ; preds = %.noexc, %bb.b
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ar)
  store float %sqrt.i.i.i, ptr %i.m, align 4, !tbaa !38
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  invoke void @_ZN30btKinematicCharacterController11setUpVectorERK9btVector3(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull readonly align 4 dereferenceable(16) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %_ZN30btKinematicCharacterController10setGravityERK9btVector3.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %3, ptr %i.aw, align 4, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <2 x float> <float f0x3F490FDB, float f0x3F3504F3>, ptr %i.ax, align 4, !tbaa !10
  ret void

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.az) #24
  resume { ptr, i32 } %i.ay
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterController5setUpERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !38 ; 2 uses
  %i.l = fcmp ogt float %i.k, 0.000000e+00
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = fneg float %i.k                          ; 3 uses
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %1, align 4 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 1 ; 3 uses
  %i.n = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.o = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.n)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.o)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.p)
  %i.q = fdiv float 1.000000e+00, %sqrt.i.i.i     ; 3 uses
  %i.r = fmul float %.sroa.0.0.vec.extract.i, %i.q
  %i.s = fmul float %.sroa.0.4.vec.extract.i, %i.q
  %i.t = fmul float %i.g, %i.q
  %i.u = fmul float %i.r, %i.m                    ; 3 uses
  %i.v = fmul float %i.s, %i.m                    ; 3 uses
  %i.w = fmul float %i.t, %i.m                    ; 3 uses
  %i.x = fmul float %i.v, %i.v
  %i.y = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.x)
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.y) ; 2 uses
  %i.aa = fcmp ogt float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.d, label %_ZN30btKinematicCharacterController10setGravityERK9btVector3.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ab = fneg float %i.u
  %i.ac = fneg float %i.v
  %i.ad = fneg float %i.w
  %.sroa.0.0.vec.insert.i.i4 = insertelement <2 x float> poison, float %i.ab, i64 0
  %.sroa.0.4.vec.insert.i.i5 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i4, float %i.ac, i64 1
  %.sroa.3.12.vec.insert.i.i6 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i5, ptr %2, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i6, ptr %i.ae, align 8
  call void @_ZN30btKinematicCharacterController11setUpVectorERK9btVector3(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZN30btKinematicCharacterController10setGravityERK9btVector3.exit

_ZN30btKinematicCharacterController10setGravityERK9btVector3.exit: ; preds = %bb.c, %bb.d
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.z)
  store float %sqrt.i.i, ptr %i.j, align 4, !tbaa !38
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN30btKinematicCharacterController11setUpVectorERK9btVector3(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN30btKinematicCharacterController10setGravityERK9btVector3.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController13setStepHeightEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((76, 80)) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float %1, ptr %i.a, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController11setMaxSlopeEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((60, 68)) %0, float noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %1, ptr %i.a, align 4, !tbaa !40
  %i.b = tail call noundef float @cosf(float noundef %1) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.b, ptr %i.c, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !42
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN30btKinematicCharacterControllerD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(319) dereferenceable(319) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV30btKinematicCharacterController, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i8, ptr %i.c, align 8, !range !42
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable

_ZN20btAlignedObjectArrayIP20btPersistentManifoldED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN30btKinematicCharacterControllerD0Ev(ptr noundef nonnull align 8 dereferenceable(319) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTV30btKinematicCharacterController, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i8, ptr %i.c, align 8, !range !42
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN30btKinematicCharacterControllerD2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN30btKinematicCharacterControllerD2Ev.exit unwind label %bb.c, !inline_history !103

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #25, !inline_history !103
  unreachable

_ZN30btKinematicCharacterControllerD2Ev.exit:     ; preds = %bb.a, %bb.b
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN30btKinematicCharacterControllerdlEPv.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN30btKinematicCharacterControllerD2Ev.exit
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #25
  unreachable

_ZN30btKinematicCharacterControllerdlEPv.exit:    ; preds = %_ZN30btKinematicCharacterControllerD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN30btKinematicCharacterController14getGhostObjectEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) initializes((148, 164)) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 4           ; 4 uses
  %3 = alloca %class.btVector3, align 4           ; 4 uses
  %4 = alloca %class.btTransform, align 4         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 4 dereferenceable(64) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107  ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.m, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %i.o)
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !59   ; 3 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 408
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(49) %i.w, ptr noundef nonnull %i.s)
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ac, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !65
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 408
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !63 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(120) %i.ae)
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  br label %bb.b

._crit_edge65:                                    ; preds = %.loopexit, %bb.a
  %.032.lcssa = phi i1 [ false, %bb.a ], [ %.4, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !31  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.as, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !65
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 352 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !66
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %.032.lcssa

bb.b:                                             ; preds = %.lr.ph64, %.loopexit
  %indvars.iv71 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next72, %.loopexit ] ; 2 uses
  %.03261 = phi i1 [ false, %.lr.ph64 ], [ %.4, %.loopexit ] ; 5 uses
  %i.ax = load i32, ptr %i.al, align 4, !tbaa !21 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE6resizeEiRKS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.az = load i32, ptr %i.am, align 8, !tbaa !22
  %i.ba = icmp slt i32 %i.az, 0
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !20 ; 3 uses
  br i1 %i.ba, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i, label %.lr.ph.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %bb.c
  %.not.i5.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.bb = load i8, ptr %i.ao, align 8, !tbaa !19, !range !42, !noundef !67
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.pre)
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.d, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  store i8 1, ptr %i.ao, align 8, !tbaa !19
  store ptr null, ptr %i.an, align 8, !tbaa !20
  store i32 0, ptr %i.am, align 8, !tbaa !22
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, %bb.c
  %i.bd = phi ptr [ null, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %.pre, %bb.c ]
  %i.be = sext i32 %i.ax to i64                   ; 2 uses
  %i.bf = shl nsw i64 %i.be, 3
  %scevgep = getelementptr i8, ptr %i.bd, i64 %i.bf
  %i.bg = mul nsw i64 %i.be, -8
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.bg, i1 false), !tbaa !109
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE6resizeEiRKS1_.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE6resizeEiRKS1_.exit: ; preds = %.lr.ph.i, %bb.b
  store i32 0, ptr %i.al, align 4, !tbaa !21
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 408
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !63 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !12
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef nonnull align 8 dereferenceable(25) ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(120) %i.bj)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !71
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %indvars.iv71 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !110 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !76
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !110 ; 3 uses
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE6resizeEiRKS1_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !77
  %i.by = and i32 %i.bx, 4
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE6resizeEiRKS1_.exit
  %.not36 = icmp eq ptr %i.bv, null
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 224
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !77
  %i.cc = and i32 %i.cb, 4
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ce = load ptr, ptr %0, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 112
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %i.bs, ptr noundef %i.bv)
  br i1 %i.ch, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !111 ; 3 uses
  %.not37 = icmp eq ptr %i.cj, null
  br i1 %.not37, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(25) %i.ak)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cn = load i32, ptr %i.al, align 4, !tbaa !21 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph59, label %.loopexit

.lr.ph59:                                         ; preds = %bb.k
  %i.cp = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !31
  %wide.trip.count69 = zext nneg i32 %i.cn to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph59, %._crit_edge
  %indvars.iv67 = phi i64 [ 0, %.lr.ph59 ], [ %indvars.iv.next68, %._crit_edge ] ; 2 uses
  %.156 = phi i1 [ %.03261, %.lr.ph59 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv67
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !109 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 840
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !114
  %i.cv = icmp eq ptr %i.cu, %i.cq
  %i.cw = select i1 %i.cv, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 856
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !115 ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.db = load float, ptr %i.ap, align 8, !tbaa !79
  %i.dc = fneg float %i.db
  %wide.trip.count = zext nneg i32 %i.cy to i64
  %i.dd = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

._crit_edge:                                      ; preds = %bb.o, %bb.l
  %.2.lcssa = phi i1 [ %.156, %bb.l ], [ %.3, %bb.o ] ; 2 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count69
  br i1 %exitcond70.not, label %.loopexit, label %bb.l, !llvm.loop !104

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %.254 = phi i1 [ %.156, %.lr.ph ], [ %.3, %bb.o ]
  %i.df = getelementptr inbounds nuw [208 x i8], ptr %i.da, i64 %indvars.iv ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !117 ; 3 uses
  %i.di = fcmp olt float %i.dh, %i.dc
  br i1 %i.di, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !10
  %i.dm = fmul float %i.cw, %i.dl
  %i.dn = fmul float %i.dh, %i.dm
  %i.do = fmul float %i.dn, 2.000000e-01
  %i.dp = load <2 x float>, ptr %i.dj, align 8, !tbaa !10
  %i.dq = fmul <2 x float> %i.de, %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %i.ds, %i.dq
  %i.du = fmul <2 x float> %i.dt, splat (float 2.000000e-01)
  %i.dv = load <2 x float>, ptr %i.ac, align 4, !tbaa !10
  %i.dw = fadd <2 x float> %i.du, %i.dv
  store <2 x float> %i.dw, ptr %i.ac, align 4, !tbaa !10
  %i.dx = load float, ptr %i.aq, align 4, !tbaa !10
  %i.dy = fadd float %i.do, %i.dx
  store float %i.dy, ptr %i.aq, align 4, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.3 = phi i1 [ true, %bb.n ], [ %.254, %bb.m ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !105

.loopexit:                                        ; preds = %._crit_edge, %bb.k, %bb.h, %bb.e, %bb.g
  %.4 = phi i1 [ %.03261, %bb.h ], [ %.03261, %bb.e ], [ %.03261, %bb.g ], [ %.03261, %bb.k ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.dz = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 408
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !63 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 72
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = call noundef i32 %i.ee(ptr noundef nonnull align 8 dereferenceable(120) %i.eb)
  %i.eg = sext i32 %i.ef to i64
  %i.eh = icmp slt i64 %indvars.iv.next72, %i.eg
  br i1 %i.eh, label %bb.b, label %._crit_edge65, !llvm.loop !106
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) initializes((168, 184)) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.btTransform, align 4         ; 17 uses
  %3 = alloca %class.btTransform, align 4         ; 17 uses
  %4 = alloca %class.btKinematicClosestNotMeConvexResultCallback, align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.c = load float, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !65
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.y = load float, ptr %i.x, align 4, !tbaa !10
  %i.z = load float, ptr %i.a, align 4, !tbaa !81
  %i.aa = fcmp olt float %i.z, 0.000000e+00
  %.046 = select i1 %i.aa, float %i.c, float 0.000000e+00 ; 4 uses
  %i.ab = load <2 x float>, ptr %i.p, align 4, !tbaa !10 ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %.046, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.ad, %i.ab
  %i.af = fmul float %.046, %i.s
  %i.ag = load <2 x float>, ptr %i.n, align 4, !tbaa !10
  %i.ah = fadd <2 x float> %i.ae, %i.ag
  %i.ai = fadd float %i.af, %i.u
  %i.aj = load float, ptr %i.w, align 8, !tbaa !82 ; 2 uses
  %i.ak = fcmp ogt float %i.aj, 0.000000e+00
  %i.al = select i1 %i.ak, float %i.aj, float 0.000000e+00 ; 2 uses
  %i.am = load <2 x float>, ptr %i.v, align 4, !tbaa !10
  %i.an = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.am, %i.ao
  %i.aq = fmul float %i.al, %i.y
  %i.ar = fadd <2 x float> %i.ah, %i.ap
  %i.as = fadd float %i.ai, %i.aq
  %.sroa.3.12.vec.insert.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 7 uses
  store <2 x float> %i.ar, ptr %i.at, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !65
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !65
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 28
  store float 0.000000e+00, ptr %i.bc, align 4, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 36
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bi = load <8 x float>, ptr %i.av, align 8, !tbaa !10 ; 6 uses
  %i.bj = load float, ptr %i.bh, align 4, !tbaa !10 ; 3 uses
  %i.bk = load float, ptr %i.bg, align 8, !tbaa !10 ; 2 uses
  %i.bl = load float, ptr %i.bf, align 4, !tbaa !10 ; 3 uses
  %i.bm = load float, ptr %i.ay, align 4, !tbaa !10 ; 3 uses
  %i.bn = load float, ptr %i.ax, align 8, !tbaa !10 ; 2 uses
  %i.bo = load float, ptr %i.aw, align 4, !tbaa !10 ; 3 uses
  %i.bp = shufflevector <8 x float> %i.bi, <8 x float> poison, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.bq = fmul <2 x float> %i.bp, %i.bp
  %i.br = shufflevector <8 x float> %i.bi, <8 x float> poison, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.br, <2 x float> %i.bq)
  %i.bt = shufflevector <8 x float> %i.bi, <8 x float> poison, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bt, <2 x float> %i.bs)
  %i.bv = shufflevector <8 x float> %i.bi, <8 x float> poison, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.bw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bv, <2 x float> %i.bu)
  %i.bx = fdiv <2 x float> splat (float 2.000000e+00), %i.bw ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0 ; 3 uses
  %i.bz = extractelement <8 x float> %i.bi, i64 0 ; 4 uses
  %i.ca = fmul float %i.bz, %i.by                 ; 2 uses
  %i.cb = fmul float %i.bo, %i.by                 ; 3 uses
  %i.cc = fmul float %i.bn, %i.by                 ; 4 uses
  %i.cd = fmul float %i.bm, %i.ca                 ; 2 uses
  %i.ce = fmul float %i.bm, %i.cb                 ; 2 uses
  %i.cf = fmul float %i.bm, %i.cc                 ; 2 uses
  %i.cg = fmul float %i.bz, %i.ca                 ; 2 uses
  %i.ch = fmul float %i.bz, %i.cb                 ; 2 uses
  %i.ci = fmul float %i.bz, %i.cc                 ; 2 uses
  %i.cj = fmul float %i.bo, %i.cb                 ; 2 uses
  %i.ck = fmul float %i.bo, %i.cc                 ; 2 uses
  %i.cl = fmul float %i.bn, %i.cc                 ; 2 uses
  %i.cm = fadd float %i.cj, %i.cl
  %i.cn = fsub float 1.000000e+00, %i.cm
  %i.co = fsub float %i.ch, %i.cf
  %i.cp = fadd float %i.ci, %i.ce
  %i.cq = fadd float %i.ch, %i.cf
  %i.cr = fadd float %i.cg, %i.cl
  %i.cs = fsub float 1.000000e+00, %i.cr
  %i.ct = fsub float %i.ck, %i.cd
  %i.cu = fsub float %i.ci, %i.ce
  %i.cv = fadd float %i.ck, %i.cd
  %i.cw = fadd float %i.cg, %i.cj
  %i.cx = fsub float 1.000000e+00, %i.cw
  store float %i.cn, ptr %2, align 4, !tbaa !10
  store float %i.co, ptr %i.d, align 4, !tbaa !10
  store float %i.cp, ptr %i.az, align 4, !tbaa !10
  store float %i.cq, ptr %i.bb, align 4, !tbaa !10
  store float %i.cs, ptr %i.e, align 4, !tbaa !10
  store float %i.ct, ptr %i.f, align 4, !tbaa !10
  store float %i.cu, ptr %i.bd, align 4, !tbaa !10
  store float %i.cv, ptr %i.be, align 4, !tbaa !10
  store float %i.cx, ptr %i.g, align 4, !tbaa !10
  %i.cy = extractelement <2 x float> %i.bx, i64 1 ; 3 uses
  %i.cz = extractelement <8 x float> %i.bi, i64 4 ; 4 uses
  %i.da = fmul float %i.cz, %i.cy                 ; 2 uses
  %i.db = fmul float %i.bl, %i.cy                 ; 3 uses
  %i.dc = fmul float %i.bk, %i.cy                 ; 4 uses
  %i.dd = fmul float %i.bj, %i.da                 ; 2 uses
  %i.de = fmul float %i.bj, %i.db                 ; 2 uses
  %i.df = fmul float %i.bj, %i.dc                 ; 2 uses
  %i.dg = fmul float %i.cz, %i.da                 ; 2 uses
  %i.dh = fmul float %i.cz, %i.db                 ; 2 uses
  %i.di = fmul float %i.cz, %i.dc                 ; 2 uses
  %i.dj = fmul float %i.bl, %i.db                 ; 2 uses
  %i.dk = fmul float %i.bl, %i.dc                 ; 2 uses
  %i.dl = fmul float %i.bk, %i.dc                 ; 2 uses
  %i.dm = fadd float %i.dj, %i.dl
  %i.dn = fsub float 1.000000e+00, %i.dm
  %i.do = fsub float %i.dh, %i.df
  %i.dp = fadd float %i.di, %i.de
  %i.dq = fadd float %i.dh, %i.df
  %i.dr = fadd float %i.dg, %i.dl
  %i.ds = fsub float 1.000000e+00, %i.dr
  %i.dt = fsub float %i.dk, %i.dd
  %i.du = fsub float %i.di, %i.de
  %i.dv = fadd float %i.dk, %i.dd
  %i.dw = fadd float %i.dg, %i.dj
  %i.dx = fsub float 1.000000e+00, %i.dw
  store float %i.dn, ptr %3, align 4, !tbaa !10
  store float %i.do, ptr %i.i, align 4, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.dp, ptr %i.dy, align 4, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %i.dz, align 4, !tbaa !10
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.dq, ptr %i.ea, align 4, !tbaa !10
  store float %i.ds, ptr %i.j, align 4, !tbaa !10
  store float %i.dt, ptr %i.k, align 4, !tbaa !10
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float 0.000000e+00, ptr %i.eb, align 4, !tbaa !10
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 32
  store float %i.du, ptr %i.ec, align 4, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 36
  store float %i.dv, ptr %i.ed, align 4, !tbaa !10
  store float %i.dx, ptr %i.l, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !31 ; 3 uses
  %i.eg = fneg <2 x float> %i.ab
  %i.eh = fneg float %i.s
  %.sroa.3.12.vec.insert.i34 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eh, i64 0
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !41
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store float 1.000000e+00, ptr %i.ek, align 8, !tbaa !84
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.en = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  store ptr null, ptr %i.en, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.em, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV43btKinematicClosestNotMeConvexResultCallback, i64 16), ptr %4, align 8, !tbaa !12
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %i.ef, ptr %i.eo, align 8, !tbaa !88
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 104
  store <2 x float> %i.eg, ptr %i.ep, align 8
  %.sroa.4.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <2 x float> %.sroa.3.12.vec.insert.i34, ptr %.sroa.4.0..sroa_idx37, align 8, !tbaa !64
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 120
  store float %i.ej, ptr %i.eq, align 8, !tbaa !89
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 192
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !58
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load <2 x i32>, ptr %i.et, align 8, !tbaa !90
  store <2 x i32> %i.eu, ptr %i.el, align 4, !tbaa !90
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 278
  %i.ew = load i8, ptr %i.ev, align 2, !tbaa !91, !range !42, !noundef !67
  %i.ex = trunc nuw i8 %i.ew to i1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !33 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !92 ; 2 uses
  br i1 %i.ex, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(408) %i.ef, ptr noundef %i.ez, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %4, float noundef %i.fb)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(121) %1, ptr noundef %i.ez, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %4, float noundef %i.fb)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.fc = load float, ptr %i.ek, align 8, !tbaa !84
  %i.fd = fcmp olt float %i.fc, 1.000000e+00
  br i1 %i.fd, label %bb.e, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.fe = load ptr, ptr %i.ee, align 8, !tbaa !31 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 224
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !77
  %i.fh = and i32 %i.fg, 4
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.fj = load ptr, ptr %i.en, align 8, !tbaa !86
  %i.fk = load ptr, ptr %0, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 112
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = call noundef zeroext i1 %i.fm(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %i.fe, ptr noundef %i.fj)
  br i1 %i.fn, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !10
  %i.fq = load float, ptr %i.p, align 4, !tbaa !10
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fs = load float, ptr %i.fr, align 8, !tbaa !10
  %i.ft = load float, ptr %i.q, align 8, !tbaa !10
  %i.fu = fmul float %i.fs, %i.ft
  %i.fv = call float @llvm.fmuladd.f32(float %i.fp, float %i.fq, float %i.fu)
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !10
  %i.fy = load float, ptr %i.r, align 4, !tbaa !10
  %i.fz = call noundef float @llvm.fmuladd.f32(float %i.fx, float %i.fy, float %i.fv)
  %i.ga = fcmp ogt float %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.gb = load float, ptr %i.ek, align 8, !tbaa !84 ; 4 uses
  %i.gc = fmul float %.046, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.gc, ptr %i.gd, align 4, !tbaa !35
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.gf = load i8, ptr %i.ge, align 4, !tbaa !34, !range !42, !noundef !67
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.gh = fsub float 1.000000e+00, %i.gb          ; 2 uses
  %i.gi = load <2 x float>, ptr %i.n, align 4, !tbaa !10
  %i.gj = load <2 x float>, ptr %i.at, align 8, !tbaa !10
  %i.gk = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = fmul <2 x float> %i.gl, %i.gj
  %i.gn = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gi, <2 x float> %i.gm)
  store <2 x float> %i.gp, ptr %i.n, align 4, !tbaa !10
  %i.gq = load float, ptr %i.t, align 4, !tbaa !10
  %i.gr = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  %i.gs = fmul float %i.gb, %i.gr
  %i.gt = call float @llvm.fmuladd.f32(float %i.gh, float %i.gq, float %i.gs)
  store float %i.gt, ptr %i.t, align 4, !tbaa !10
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !65
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i
  %i.gu = load ptr, ptr %i.ee, align 8, !tbaa !31 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gw, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !65
  %i.gx = load ptr, ptr %i.ee, align 8, !tbaa !31 ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 352 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !66
  %i.ha = add nsw i32 %i.gz, 1
  store i32 %i.ha, ptr %i.gy, align 8, !tbaa !66
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hb, ptr noundef nonnull align 4 dereferenceable(64) %i.gv, i64 16, i1 false), !tbaa.struct !65
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hd, ptr noundef nonnull align 4 dereferenceable(16) %i.hc, i64 16, i1 false), !tbaa.struct !65
  %i.he = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 4 dereferenceable(16) %i.he, i64 16, i1 false), !tbaa.struct !65
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, ptr noundef nonnull align 4 dereferenceable(16) %i.gw, i64 16, i1 false), !tbaa.struct !65
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  store i8 0, ptr %i.hh, align 8, !tbaa !93
  %i.hi = call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %1)
  br i1 %i.hi, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.hh, align 8, !tbaa !93
  %i.hj = call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %1)
  br i1 %i.hj, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.hh, align 8, !tbaa !93
  %i.hk = call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %1)
  br i1 %i.hk, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.hh, align 8, !tbaa !93
  %i.hl = call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %1)
  br i1 %i.hl, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.hh, align 8, !tbaa !93
  %i.hm = call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %1)
  br i1 %i.hm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.hh, align 8, !tbaa !93
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %i.hn = load ptr, ptr %i.ee, align 8, !tbaa !31
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(16) %i.ho, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.ho, i64 16, i1 false)
  %i.hp = load float, ptr %i.w, align 8, !tbaa !82
  %i.hq = fcmp ogt float %i.hp, 0.000000e+00
  br i1 %i.hq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  store <2 x float> zeroinitializer, ptr %i.a, align 4, !tbaa !10
  %i.hr = load float, ptr %i.b, align 4, !tbaa !39
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.hr, ptr %i.hs, align 4, !tbaa !35
  br label %bb.t

bb.s:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %.046, ptr %i.ht, align 4, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !65
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

declare void @_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(20), float noundef) local_unnamed_addr #7

declare void @_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(121), ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(20), float noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld20ConvexResultCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN30btKinematicCharacterController14needsCollisionEPK17btCollisionObjectS2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !95
  %i.i = and i32 %i.h, %i.d
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !94
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = and i32 %i.m, %i.k
  %i.o = icmp ne i32 %i.n, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi i1 [ false, %bb.a ], [ %i.o, %bb.b ]
  ret i1 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN30btKinematicCharacterController36updateTargetPositionBasedOnCollisionERK9btVector3ff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2, float noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.c = load float, ptr %i.a, align 8, !tbaa !10
  %i.d = load float, ptr %i.b, align 4, !tbaa !10
  %i.e = fsub float %i.c, %i.d                    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 3 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load float, ptr %i.h, align 8, !tbaa !10
  %i.j = fsub float %i.g, %i.i                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.l = load float, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.n = load float, ptr %i.m, align 4, !tbaa !10
  %i.o = fsub float %i.l, %i.n                    ; 3 uses
  %i.p = fmul float %i.j, %i.j
  %i.q = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.p)
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.q)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.r) ; 3 uses
  %i.s = fcmp ogt float %sqrt.i, f0x34000000
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.t = load float, ptr %1, align 4, !tbaa !10   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !10 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !10 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !65
  %i.y = fcmp une float %3, 0.000000e+00
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = fdiv float 1.000000e+00, %sqrt.i         ; 3 uses
  %i.aa = fmul float %i.o, %i.z                   ; 2 uses
  %i.ab = fmul float %i.e, %i.z                   ; 2 uses
  %i.ac = fmul float %i.j, %i.z                   ; 2 uses
  %i.ad = fmul float %i.ac, %i.v
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.t, float %i.ad)
  %i.af = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.x, float %i.ae)
  %i.ag = fmul float %i.af, 2.000000e+00          ; 3 uses
  %i.ah = fmul float %i.x, %i.ag
  %i.ai = fsub float %i.aa, %i.ah                 ; 3 uses
  %i.aj = fmul float %i.t, %i.ag
  %i.ak = fsub float %i.ab, %i.aj                 ; 3 uses
  %i.al = fmul float %i.v, %i.ag
  %i.am = fsub float %i.ac, %i.al                 ; 3 uses
  %i.an = fmul float %i.am, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.an)
  %i.ap = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ao)
  %sqrt.i.i10 = tail call noundef float @llvm.sqrt.f32(float %i.ap)
  %i.aq = fdiv float 1.000000e+00, %sqrt.i.i10    ; 3 uses
  %i.ar = fmul float %i.ai, %i.aq                 ; 2 uses
  %i.as = fmul float %i.ak, %i.aq                 ; 2 uses
  %i.at = fmul float %i.am, %i.aq                 ; 2 uses
  %i.au = fmul float %i.v, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.as, float %i.t, float %i.au)
  %i.aw = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.x, float %i.av) ; 3 uses
  %i.ax = fmul float %i.x, %i.aw
  %i.ay = fsub float %i.ar, %i.ax
  %i.az = fmul float %i.v, %i.aw
  %i.ba = fsub float %i.at, %i.az
  %i.bb = fmul float %i.t, %i.aw
  %i.bc = fsub float %i.as, %i.bb
  %i.bd = fmul float %3, %sqrt.i                  ; 3 uses
  %i.be = fmul float %i.bd, %i.bc
  %i.bf = fmul float %i.bd, %i.ba
  %i.bg = fmul float %i.bd, %i.ay
  %i.bh = load float, ptr %i.a, align 8, !tbaa !10
  %i.bi = fadd float %i.be, %i.bh
  store float %i.bi, ptr %i.a, align 8, !tbaa !10
  %i.bj = load float, ptr %i.f, align 4, !tbaa !10
  %i.bk = fadd float %i.bf, %i.bj
  store float %i.bk, ptr %i.f, align 4, !tbaa !10
  %i.bl = load float, ptr %i.k, align 8, !tbaa !10
  %i.bm = fadd float %i.bg, %i.bl
  store float %i.bm, ptr %i.k, align 8, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3(ptr noundef nonnull align 8 dereferenceable(319) initializes((168, 184)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 21 uses
  %4 = alloca %class.btTransform, align 4         ; 21 uses
  %5 = alloca %class.btKinematicClosestNotMeConvexResultCallback, align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 6 uses
  %i.b = load <2 x float>, ptr %i.a, align 4, !tbaa !10
  %i.c = load <2 x float>, ptr %2, align 4, !tbaa !10
  %i.d = fadd <2 x float> %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !10
  %i.i = fadd float %i.f, %i.h
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.i, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 8 uses
  store <2 x float> %i.d, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 104
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 120
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 278
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 108
  br label %bb.b

bb.b:                                             ; preds = %.critedge59, %bb.a
  %i.bm = phi i32 [ 9, %bb.a ], [ %i.kh, %.critedge59 ] ; 2 uses
  %.0176072 = phi float [ 1.000000e+00, %bb.a ], [ %i.gy, %.critedge59 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !65
  %i.bn = load <2 x float>, ptr %i.a, align 4, !tbaa !10
  %i.bo = load <2 x float>, ptr %i.j, align 8, !tbaa !10
  %i.bp = fsub <2 x float> %i.bn, %i.bo
  %i.bq = load float, ptr %i.e, align 4, !tbaa !10
  %i.br = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  %i.bs = fsub float %i.bq, %i.br
  %.sroa.3.12.vec.insert.i27 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bs, i64 0
  store float 0.000000e+00, ptr %i.ab, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !10
  %i.bt = load <8 x float>, ptr %i.w, align 8, !tbaa !10 ; 6 uses
  %i.bu = load float, ptr %i.ai, align 4, !tbaa !10 ; 3 uses
  %i.bv = load float, ptr %i.ah, align 8, !tbaa !10 ; 2 uses
  %i.bw = load float, ptr %i.ag, align 4, !tbaa !10 ; 3 uses
  %i.bx = load float, ptr %i.z, align 4, !tbaa !10 ; 3 uses
  %i.by = load float, ptr %i.y, align 8, !tbaa !10 ; 2 uses
  %i.bz = load float, ptr %i.x, align 4, !tbaa !10 ; 3 uses
  %i.ca = shufflevector <8 x float> %i.bt, <8 x float> poison, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.cb = fmul <2 x float> %i.ca, %i.ca
  %i.cc = shufflevector <8 x float> %i.bt, <8 x float> poison, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.cd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.cc, <2 x float> %i.cb)
  %i.ce = shufflevector <8 x float> %i.bt, <8 x float> poison, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.cf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.ce, <2 x float> %i.cd)
  %i.cg = shufflevector <8 x float> %i.bt, <8 x float> poison, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.ch = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.cg, <2 x float> %i.cf)
  %i.ci = fdiv <2 x float> splat (float 2.000000e+00), %i.ch ; 2 uses
  %i.cj = extractelement <2 x float> %i.ci, i64 0 ; 3 uses
  %i.ck = extractelement <8 x float> %i.bt, i64 0 ; 4 uses
  %i.cl = fmul float %i.ck, %i.cj                 ; 2 uses
  %i.cm = fmul float %i.bz, %i.cj                 ; 3 uses
  %i.cn = fmul float %i.by, %i.cj                 ; 4 uses
  %i.co = fmul float %i.bx, %i.cl                 ; 2 uses
  %i.cp = fmul float %i.bx, %i.cm                 ; 2 uses
  %i.cq = fmul float %i.bx, %i.cn                 ; 2 uses
  %i.cr = fmul float %i.ck, %i.cl                 ; 2 uses
  %i.cs = fmul float %i.ck, %i.cm                 ; 2 uses
  %i.ct = fmul float %i.ck, %i.cn                 ; 2 uses
  %i.cu = fmul float %i.bz, %i.cm                 ; 2 uses
  %i.cv = fmul float %i.bz, %i.cn                 ; 2 uses
  %i.cw = fmul float %i.by, %i.cn                 ; 2 uses
  %i.cx = fadd float %i.cu, %i.cw
  %i.cy = fsub float 1.000000e+00, %i.cx
  %i.cz = fsub float %i.cs, %i.cq
  %i.da = fadd float %i.ct, %i.cp
  %i.db = fadd float %i.cs, %i.cq
  %i.dc = fadd float %i.cr, %i.cw
  %i.dd = fsub float 1.000000e+00, %i.dc
  %i.de = fsub float %i.cv, %i.co
  %i.df = fsub float %i.ct, %i.cp
  %i.dg = fadd float %i.cv, %i.co
  %i.dh = fadd float %i.cr, %i.cu
  %i.di = fsub float 1.000000e+00, %i.dh
  store float %i.cy, ptr %3, align 4, !tbaa !10
  store float %i.cz, ptr %i.k, align 4, !tbaa !10
  store float %i.da, ptr %i.aa, align 4, !tbaa !10
  store float %i.db, ptr %i.ac, align 4, !tbaa !10
  store float %i.dd, ptr %i.l, align 4, !tbaa !10
  store float %i.de, ptr %i.m, align 4, !tbaa !10
  store float %i.df, ptr %i.ae, align 4, !tbaa !10
  store float %i.dg, ptr %i.af, align 4, !tbaa !10
  store float %i.di, ptr %i.n, align 4, !tbaa !10
  %i.dj = extractelement <2 x float> %i.ci, i64 1 ; 3 uses
  %i.dk = extractelement <8 x float> %i.bt, i64 4 ; 4 uses
  %i.dl = fmul float %i.dk, %i.dj                 ; 2 uses
  %i.dm = fmul float %i.bw, %i.dj                 ; 3 uses
  %i.dn = fmul float %i.bv, %i.dj                 ; 4 uses
  %i.do = fmul float %i.bu, %i.dl                 ; 2 uses
  %i.dp = fmul float %i.bu, %i.dm                 ; 2 uses
  %i.dq = fmul float %i.bu, %i.dn                 ; 2 uses
  %i.dr = fmul float %i.dk, %i.dl                 ; 2 uses
  %i.ds = fmul float %i.dk, %i.dm                 ; 2 uses
  %i.dt = fmul float %i.dk, %i.dn                 ; 2 uses
  %i.du = fmul float %i.bw, %i.dm                 ; 2 uses
  %i.dv = fmul float %i.bw, %i.dn                 ; 2 uses
  %i.dw = fmul float %i.bv, %i.dn                 ; 2 uses
  %i.dx = fadd float %i.du, %i.dw
  %i.dy = fsub float 1.000000e+00, %i.dx
  %i.dz = fsub float %i.ds, %i.dq
  %i.ea = fadd float %i.dt, %i.dp
  %i.eb = fadd float %i.ds, %i.dq
  %i.ec = fadd float %i.dr, %i.dw
  %i.ed = fsub float 1.000000e+00, %i.ec
  %i.ee = fsub float %i.dv, %i.do
  %i.ef = fsub float %i.dt, %i.dp
  %i.eg = fadd float %i.dv, %i.do
  %i.eh = fadd float %i.dr, %i.du
  %i.ei = fsub float 1.000000e+00, %i.eh
  store float %i.dy, ptr %4, align 4, !tbaa !10
  store float %i.dz, ptr %i.p, align 4, !tbaa !10
  store float %i.ea, ptr %i.aj, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.ak, align 4, !tbaa !10
  store float %i.eb, ptr %i.al, align 4, !tbaa !10
  store float %i.ed, ptr %i.q, align 4, !tbaa !10
  store float %i.ee, ptr %i.r, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.am, align 4, !tbaa !10
  store float %i.ef, ptr %i.an, align 4, !tbaa !10
  store float %i.eg, ptr %i.ao, align 4, !tbaa !10
  store float %i.ei, ptr %i.s, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.t, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ej = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  store float 1.000000e+00, ptr %i.aq, align 8, !tbaa !84
  store ptr null, ptr %i.at, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV43btKinematicClosestNotMeConvexResultCallback, i64 16), ptr %5, align 8, !tbaa !12
  store ptr %i.ej, ptr %i.au, align 8, !tbaa !88
  store <2 x float> %i.bp, ptr %i.av, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i27, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !64
  store float 0.000000e+00, ptr %i.aw, align 8, !tbaa !89
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 192
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !58
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load <2 x i32>, ptr %i.em, align 8, !tbaa !90
  store <2 x i32> %i.en, ptr %i.ar, align 4, !tbaa !90
  %i.eo = load ptr, ptr %i.ax, align 8, !tbaa !33 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !12
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = call noundef float %i.er(ptr noundef nonnull align 8 dereferenceable(32) %i.eo) ; 2 uses
  %i.et = load ptr, ptr %i.ax, align 8, !tbaa !33 ; 2 uses
  %i.eu = load float, ptr %i.ay, align 8, !tbaa !32
  %i.ev = fadd float %i.es, %i.eu
  %i.ew = load ptr, ptr %i.et, align 8, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(32) %i.et, float noundef %i.ev)
  %i.ez = load float, ptr %3, align 4, !tbaa !10
  %i.fa = load float, ptr %4, align 4, !tbaa !10
  %i.fb = fcmp oeq float %i.ez, %i.fa
  br i1 %i.fb, label %bb.c, label %_ZeqRK11btTransformS1_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.fc = load float, ptr %i.ac, align 4, !tbaa !10
  %i.fd = load float, ptr %i.al, align 4, !tbaa !10
  %i.fe = fcmp oeq float %i.fc, %i.fd
  br i1 %i.fe, label %bb.d, label %_ZeqRK11btTransformS1_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ff = load float, ptr %i.ae, align 4, !tbaa !10
  %i.fg = load float, ptr %i.an, align 4, !tbaa !10
  %i.fh = fcmp oeq float %i.ff, %i.fg
  br i1 %i.fh, label %bb.e, label %_ZeqRK11btTransformS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.fi = load float, ptr %i.k, align 4, !tbaa !10
  %i.fj = load float, ptr %i.p, align 4, !tbaa !10
  %i.fk = fcmp oeq float %i.fi, %i.fj
  br i1 %i.fk, label %bb.f, label %_ZeqRK11btTransformS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.fl = load float, ptr %i.l, align 4, !tbaa !10
  %i.fm = load float, ptr %i.q, align 4, !tbaa !10
  %i.fn = fcmp oeq float %i.fl, %i.fm
  br i1 %i.fn, label %bb.g, label %_ZeqRK11btTransformS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.fo = load float, ptr %i.af, align 4, !tbaa !10
  %i.fp = load float, ptr %i.ao, align 4, !tbaa !10
  %i.fq = fcmp oeq float %i.fo, %i.fp
  br i1 %i.fq, label %bb.h, label %_ZeqRK11btTransformS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.fr = load float, ptr %i.aa, align 4, !tbaa !10
  %i.fs = load float, ptr %i.aj, align 4, !tbaa !10
  %i.ft = fcmp oeq float %i.fr, %i.fs
  br i1 %i.ft, label %bb.i, label %_ZeqRK11btTransformS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.fu = load float, ptr %i.m, align 4, !tbaa !10
  %i.fv = load float, ptr %i.r, align 4, !tbaa !10
  %i.fw = fcmp oeq float %i.fu, %i.fv
  br i1 %i.fw, label %_ZeqRK11btMatrix3x3S1_.exit.i, label %_ZeqRK11btTransformS1_.exit.thread

_ZeqRK11btMatrix3x3S1_.exit.i:                    ; preds = %bb.i
  %i.fx = load float, ptr %i.n, align 4, !tbaa !10
  %i.fy = load float, ptr %i.s, align 4, !tbaa !10
  %i.fz = fcmp oeq float %i.fx, %i.fy
  br i1 %i.fz, label %bb.j, label %_ZeqRK11btTransformS1_.exit.thread

bb.j:                                             ; preds = %_ZeqRK11btMatrix3x3S1_.exit.i
  %i.ga = load float, ptr %i.az, align 4, !tbaa !10
  %i.gb = load float, ptr %i.ba, align 4, !tbaa !10
  %i.gc = fcmp oeq float %i.ga, %i.gb
  br i1 %i.gc, label %bb.k, label %_ZeqRK11btTransformS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.gd = load float, ptr %i.bb, align 4, !tbaa !10
  %i.ge = load float, ptr %i.bc, align 4, !tbaa !10
  %i.gf = fcmp oeq float %i.gd, %i.ge
  br i1 %i.gf, label %bb.l, label %_ZeqRK11btTransformS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.gg = load float, ptr %i.bd, align 4, !tbaa !10
  %i.gh = load float, ptr %i.be, align 4, !tbaa !10
  %i.gi = fcmp oeq float %i.gg, %i.gh
  br i1 %i.gi, label %_ZeqRK11btTransformS1_.exit, label %_ZeqRK11btTransformS1_.exit.thread

_ZeqRK11btTransformS1_.exit:                      ; preds = %bb.l
  %i.gj = load float, ptr %i.u, align 4, !tbaa !10
  %i.gk = load float, ptr %i.v, align 4, !tbaa !10
  %i.gl = fcmp oeq float %i.gj, %i.gk
  br i1 %i.gl, label %bb.o, label %_ZeqRK11btTransformS1_.exit.thread

_ZeqRK11btTransformS1_.exit.thread:               ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZeqRK11btMatrix3x3S1_.exit.i, %_ZeqRK11btTransformS1_.exit
  %i.gm = load i8, ptr %i.bf, align 2, !tbaa !91, !range !42, !noundef !67
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZeqRK11btTransformS1_.exit.thread
  %i.go = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.gp = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.gq = load float, ptr %i.bg, align 4, !tbaa !92
  call void @_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(408) %i.go, ptr noundef %i.gp, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(20) %5, float noundef %i.gq)
  br label %bb.o

bb.n:                                             ; preds = %_ZeqRK11btTransformS1_.exit.thread
  %i.gr = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.gs = load float, ptr %i.bg, align 4, !tbaa !92
  call void @_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(121) %1, ptr noundef %i.gr, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(20) %5, float noundef %i.gs)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %_ZeqRK11btTransformS1_.exit
  %i.gt = load ptr, ptr %i.ax, align 8, !tbaa !33 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !12
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 88
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, float noundef %i.es)
  %i.gx = load float, ptr %i.aq, align 8, !tbaa !84 ; 2 uses
  %i.gy = fsub float %.0176072, %i.gx             ; 2 uses
  %i.gz = fcmp olt float %i.gx, 1.000000e+00
  br i1 %i.gz, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ha = load ptr, ptr %i.ap, align 8, !tbaa !31 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 224
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !77
  %i.hd = and i32 %i.hc, 4
  %i.he = icmp eq i32 %i.hd, 0
  br i1 %i.he, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.hf = load ptr, ptr %i.at, align 8, !tbaa !86
  %i.hg = load ptr, ptr %0, align 8, !tbaa !12
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 112
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = call noundef zeroext i1 %i.hi(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %i.ha, ptr noundef %i.hf)
  br i1 %i.hj, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.hk = load <2 x float>, ptr %i.j, align 8, !tbaa !10
  %i.hl = load <2 x float>, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %i.hm = fsub <2 x float> %i.hk, %i.hl           ; 5 uses
  %i.hn = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  %i.ho = load float, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %i.hp = fsub float %i.hn, %i.ho                 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.hm, %i.hm
  %i.hq = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.hr = extractelement <2 x float> %i.hm, i64 0 ; 2 uses
  %i.hs = call float @llvm.fmuladd.f32(float %i.hr, float %i.hr, float %i.hq)
  %i.ht = call noundef float @llvm.fmuladd.f32(float %i.hp, float %i.hp, float %i.hs) ; 2 uses
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ht) ; 4 uses
  %i.hu = fcmp ogt float %sqrt.i.i, f0x34000000
  br i1 %i.hu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hv = load float, ptr %i.bi, align 4, !tbaa !10 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !65
  %i.hw = load float, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  %i.hx = load <2 x float>, ptr %i.bh, align 4, !tbaa !10 ; 5 uses
  %i.hy = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.hz = fmul float %i.hp, %i.hy                 ; 2 uses
  %i.ia = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x float> %i.hm, %i.ib           ; 3 uses
  %foldExtExtBinop74 = fmul <2 x float> %i.ic, %i.hx
  %i.id = extractelement <2 x float> %foldExtExtBinop74, i64 1
  %i.ie = extractelement <2 x float> %i.ic, i64 0
  %i.if = extractelement <2 x float> %i.hx, i64 0 ; 2 uses
  %i.ig = call float @llvm.fmuladd.f32(float %i.ie, float %i.if, float %i.id)
  %i.ih = call noundef float @llvm.fmuladd.f32(float %i.hz, float %i.hv, float %i.ig)
  %i.ii = fmul float %i.ih, 2.000000e+00          ; 2 uses
  %i.ij = fmul float %i.hv, %i.ii
  %i.ik = fsub float %i.hz, %i.ij                 ; 3 uses
  %i.il = insertelement <2 x float> poison, float %i.ii, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = fmul <2 x float> %i.hx, %i.im
  %i.io = fsub <2 x float> %i.ic, %i.in           ; 4 uses
  %foldExtExtBinop76 = fmul <2 x float> %i.io, %i.io
  %i.ip = extractelement <2 x float> %foldExtExtBinop76, i64 1
  %i.iq = extractelement <2 x float> %i.io, i64 0 ; 2 uses
  %i.ir = call float @llvm.fmuladd.f32(float %i.iq, float %i.iq, float %i.ip)
  %i.is = call noundef float @llvm.fmuladd.f32(float %i.ik, float %i.ik, float %i.ir)
  %sqrt.i.i10.i = call noundef float @llvm.sqrt.f32(float %i.is)
  %i.it = fdiv float 1.000000e+00, %sqrt.i.i10.i  ; 2 uses
  %i.iu = fmul float %i.ik, %i.it                 ; 2 uses
  %i.iv = insertelement <2 x float> poison, float %i.it, i64 0
  %i.iw = shufflevector <2 x float> %i.iv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ix = fmul <2 x float> %i.io, %i.iw           ; 3 uses
  %foldExtExtBinop78 = fmul <2 x float> %i.hx, %i.ix
  %i.iy = extractelement <2 x float> %foldExtExtBinop78, i64 1
  %i.iz = extractelement <2 x float> %i.ix, i64 0
  %i.ja = call float @llvm.fmuladd.f32(float %i.iz, float %i.if, float %i.iy)
  %i.jb = call noundef float @llvm.fmuladd.f32(float %i.iu, float %i.hv, float %i.ja) ; 2 uses
  %i.jc = fmul float %i.hv, %i.jb
  %i.jd = fsub float %i.iu, %i.jc
  %i.je = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jg = fmul <2 x float> %i.hx, %i.jf
  %i.jh = fsub <2 x float> %i.ix, %i.jg
  %i.ji = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jk = fmul <2 x float> %i.jj, %i.jh
  %i.jl = fmul float %sqrt.i.i, %i.jd
  %i.jm = load <2 x float>, ptr %i.j, align 8, !tbaa !10
  %i.jn = fadd <2 x float> %i.jm, %i.jk           ; 2 uses
  store <2 x float> %i.jn, ptr %i.j, align 8, !tbaa !10
  %i.jo = fadd float %i.hw, %i.jl                 ; 2 uses
  store float %i.jo, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  %i.jp = fsub <2 x float> %i.jn, %i.hl           ; 4 uses
  %.pre64 = fsub float %i.jo, %i.ho               ; 3 uses
  %foldExtExtBinop80 = fmul <2 x float> %i.jp, %i.jp
  %.pre66 = extractelement <2 x float> %foldExtExtBinop80, i64 1
  %i.jq = extractelement <2 x float> %i.jp, i64 0 ; 2 uses
  %.pre68 = call float @llvm.fmuladd.f32(float %i.jq, float %i.jq, float %.pre66)
  %.pre70 = call noundef float @llvm.fmuladd.f32(float %.pre64, float %.pre64, float %.pre68)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.pre-phi71 = phi float [ %i.ht, %bb.r ], [ %.pre70, %bb.s ] ; 2 uses
  %.pre-phi65 = phi float [ %i.hp, %bb.r ], [ %.pre64, %bb.s ]
  %i.jr = phi <2 x float> [ %i.hm, %bb.r ], [ %i.jp, %bb.s ] ; 2 uses
  %i.js = fcmp ogt float %.pre-phi71, f0x34000000
  br i1 %i.js, label %bb.u, label %.critedge.sink.split

bb.u:                                             ; preds = %bb.t
  %sqrt.i.i35 = call noundef float @llvm.sqrt.f32(float %.pre-phi71)
  %i.jt = fdiv float 1.000000e+00, %sqrt.i.i35    ; 3 uses
  %i.ju = extractelement <2 x float> %i.jr, i64 0
  %i.jv = fmul float %i.ju, %i.jt
  %i.jw = extractelement <2 x float> %i.jr, i64 1
  %i.jx = fmul float %i.jw, %i.jt
  %i.jy = fmul float %.pre-phi65, %i.jt
  %i.jz = load float, ptr %i.bj, align 4, !tbaa !10
  %i.ka = load float, ptr %i.bk, align 8, !tbaa !10
  %i.kb = fmul float %i.jx, %i.ka
  %i.kc = call float @llvm.fmuladd.f32(float %i.jv, float %i.jz, float %i.kb)
  %i.kd = load float, ptr %i.bl, align 4, !tbaa !10
  %i.ke = call noundef float @llvm.fmuladd.f32(float %i.jy, float %i.kd, float %i.kc)
  %i.kf = fcmp ugt float %i.ke, 0.000000e+00
  br i1 %i.kf, label %.critedge59, label %.critedge.sink.split

bb.v:                                             ; preds = %bb.q, %bb.p, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !65
  br label %.critedge59

.critedge59:                                      ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.kg = fcmp ule float %i.gy, f0x3C23D70A
  %i.kh = add nsw i32 %i.bm, -1
  %.not = icmp eq i32 %i.bm, 0
  %or.cond = select i1 %i.kg, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %bb.b

.critedge.sink.split:                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.critedge

.critedge:                                        ; preds = %.critedge59, %.critedge.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1, float noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 19 uses
  %4 = alloca %class.btTransform, align 4         ; 17 uses
  %5 = alloca %class.btTransform, align 4         ; 12 uses
  %.sroa.016 = alloca [4 x float], align 4        ; 4 uses
  %6 = alloca %class.btKinematicClosestNotMeConvexResultCallback, align 8 ; 13 uses
  %7 = alloca %class.btKinematicClosestNotMeConvexResultCallback, align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.016, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !81 ; 3 uses
  %i.d = fcmp olt float %i.c, 0.000000e+00
  %i.e = fneg float %i.c
  %i.f = select i1 %i.d, float %i.e, float 0.000000e+00
  %i.g = fmul float %2, %i.f                      ; 5 uses
  %i.h = fcmp ogt float %i.c, 0.000000e+00
  br i1 %i.h, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fcmp ogt float %i.g, 0.000000e+00
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = load float, ptr %i.j, align 4, !tbaa !96 ; 2 uses
  %i.l = fcmp ogt float %i.g, %i.k
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.n = load i8, ptr %i.m, align 4, !tbaa !97, !range !42, !noundef !67
  %i.o = trunc nuw i8 %i.n to i1
  %.not = xor i1 %i.o, true
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 277
  %i.q = load i8, ptr %i.p, align 1, !range !42
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond101 = select i1 %.not, i1 %i.r, i1 false
  br i1 %or.cond101, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.c, %bb.e
  %.035 = phi float [ %i.k, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !35
  %i.v = fadd float %.035, %i.u                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 3 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !10
  %i.y = fmul float %i.v, %i.x                    ; 2 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.y, i64 0
  %i.z = load <2 x float>, ptr %i.s, align 4, !tbaa !10
  %i.aa = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = fmul <2 x float> %i.z, %i.ab            ; 2 uses
  %i.ad = load <2 x float>, ptr %i.a, align 8, !tbaa !10
  %i.ae = fsub <2 x float> %i.ad, %i.ac
  store <2 x float> %i.ae, ptr %i.a, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.ag = load float, ptr %i.af, align 8, !tbaa !10
  %i.ah = fsub float %i.ag, %i.y
  store float %i.ah, ptr %i.af, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load float, ptr %i.ak, align 8, !tbaa !41 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store float 1.000000e+00, ptr %i.am, align 8, !tbaa !84
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 3 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV43btKinematicClosestNotMeConvexResultCallback, i64 16), ptr %6, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 96
  store ptr %i.aj, ptr %i.aq, align 8, !tbaa !88
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !65
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 120
  store float %i.al, ptr %i.as, align 8, !tbaa !89
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 192
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.aw = load <2 x i32>, ptr %i.av, align 8, !tbaa !90
  store <2 x i32> %i.aw, ptr %i.an, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store float 1.000000e+00, ptr %i.ax, align 8, !tbaa !84
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 2 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.az, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV43btKinematicClosestNotMeConvexResultCallback, i64 16), ptr %7, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 96
  store ptr %i.aj, ptr %i.bb, align 8, !tbaa !88
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !65
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 120
  store float %i.al, ptr %i.bd, align 8, !tbaa !89
  %i.be = load <2 x i32>, ptr %i.av, align 8, !tbaa !90
  store <2 x i32> %i.be, ptr %i.ay, align 4, !tbaa !90
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 278
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 318 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 277 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.z, %bb.f
  %.sroa.066.0 = phi <2 x float> [ %i.ac, %bb.f ], [ %i.ip, %bb.z ] ; 2 uses
  %.sroa.16.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i, %bb.f ], [ %.sroa.3.12.vec.insert.i56, %bb.z ]
  %i.cy = phi i1 [ true, %bb.f ], [ false, %bb.z ]
  %.036 = phi i1 [ false, %bb.f ], [ true, %bb.z ] ; 2 uses
  store float 1.000000e+00, ptr %5, align 4, !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bq, align 4, !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bs, align 4, !tbaa !10
  store i32 0, ptr %i.bt, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bv, ptr noundef nonnull align 4 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !65
  store float 0.000000e+00, ptr %i.cc, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.ce, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !10
  %i.cz = load <8 x float>, ptr %i.bx, align 8, !tbaa !10 ; 6 uses
  %i.da = load float, ptr %i.cj, align 4, !tbaa !10 ; 3 uses
  %i.db = load float, ptr %i.ci, align 8, !tbaa !10 ; 2 uses
  %i.dc = load float, ptr %i.ch, align 4, !tbaa !10 ; 3 uses
  %i.dd = load float, ptr %i.ca, align 4, !tbaa !10 ; 3 uses
  %i.de = load float, ptr %i.bz, align 8, !tbaa !10 ; 2 uses
  %i.df = load float, ptr %i.by, align 4, !tbaa !10 ; 3 uses
  %i.dg = shufflevector <8 x float> %i.cz, <8 x float> poison, <2 x i32> <i32 1, i32 5> ; 2 uses
  %i.dh = fmul <2 x float> %i.dg, %i.dg
  %i.di = shufflevector <8 x float> %i.cz, <8 x float> poison, <2 x i32> <i32 0, i32 4> ; 2 uses
  %i.dj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.di, <2 x float> %i.di, <2 x float> %i.dh)
  %i.dk = shufflevector <8 x float> %i.cz, <8 x float> poison, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dk, <2 x float> %i.dj)
  %i.dm = shufflevector <8 x float> %i.cz, <8 x float> poison, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.dn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.dm, <2 x float> %i.dl)
  %i.do = fdiv <2 x float> splat (float 2.000000e+00), %i.dn ; 2 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0 ; 3 uses
  %i.dq = extractelement <8 x float> %i.cz, i64 0 ; 4 uses
  %i.dr = fmul float %i.dq, %i.dp                 ; 2 uses
  %i.ds = fmul float %i.df, %i.dp                 ; 3 uses
  %i.dt = fmul float %i.de, %i.dp                 ; 4 uses
  %i.du = fmul float %i.dd, %i.dr                 ; 2 uses
  %i.dv = fmul float %i.dd, %i.ds                 ; 2 uses
  %i.dw = fmul float %i.dd, %i.dt                 ; 2 uses
  %i.dx = fmul float %i.dq, %i.dr                 ; 2 uses
  %i.dy = fmul float %i.dq, %i.ds                 ; 2 uses
  %i.dz = fmul float %i.dq, %i.dt                 ; 2 uses
  %i.ea = fmul float %i.df, %i.ds                 ; 2 uses
  %i.eb = fmul float %i.df, %i.dt                 ; 2 uses
  %i.ec = fmul float %i.de, %i.dt                 ; 2 uses
  %i.ed = fadd float %i.ea, %i.ec
  %i.ee = fsub float 1.000000e+00, %i.ed
  %i.ef = fsub float %i.dy, %i.dw
  %i.eg = fadd float %i.dz, %i.dv
  %i.eh = fadd float %i.dy, %i.dw
  %i.ei = fadd float %i.dx, %i.ec
  %i.ej = fsub float 1.000000e+00, %i.ei
  %i.ek = fsub float %i.eb, %i.du
  %i.el = fsub float %i.dz, %i.dv
  %i.em = fadd float %i.eb, %i.du
  %i.en = fadd float %i.dx, %i.ea
  %i.eo = fsub float 1.000000e+00, %i.en
  store float %i.ee, ptr %3, align 4, !tbaa !10
  store float %i.ef, ptr %i.bf, align 4, !tbaa !10
  store float %i.eg, ptr %i.cb, align 4, !tbaa !10
  store float %i.eh, ptr %i.cd, align 4, !tbaa !10
  store float %i.ej, ptr %i.bg, align 4, !tbaa !10
  store float %i.ek, ptr %i.bh, align 4, !tbaa !10
  store float %i.el, ptr %i.cf, align 4, !tbaa !10
  store float %i.em, ptr %i.cg, align 4, !tbaa !10
  store float %i.eo, ptr %i.bi, align 4, !tbaa !10
  %i.ep = extractelement <2 x float> %i.do, i64 1 ; 3 uses
  %i.eq = extractelement <8 x float> %i.cz, i64 4 ; 4 uses
  %i.er = fmul float %i.eq, %i.ep                 ; 2 uses
  %i.es = fmul float %i.dc, %i.ep                 ; 3 uses
  %i.et = fmul float %i.db, %i.ep                 ; 4 uses
  %i.eu = fmul float %i.da, %i.er                 ; 2 uses
  %i.ev = fmul float %i.da, %i.es                 ; 2 uses
  %i.ew = fmul float %i.da, %i.et                 ; 2 uses
  %i.ex = fmul float %i.eq, %i.er                 ; 2 uses
  %i.ey = fmul float %i.eq, %i.es                 ; 2 uses
  %i.ez = fmul float %i.eq, %i.et                 ; 2 uses
  %i.fa = fmul float %i.dc, %i.es                 ; 2 uses
  %i.fb = fmul float %i.dc, %i.et                 ; 2 uses
  %i.fc = fmul float %i.db, %i.et                 ; 2 uses
  %i.fd = fadd float %i.fa, %i.fc
  %i.fe = fsub float 1.000000e+00, %i.fd
  %i.ff = fsub float %i.ey, %i.ew
  %i.fg = fadd float %i.ez, %i.ev
  %i.fh = fadd float %i.ey, %i.ew
  %i.fi = fadd float %i.ex, %i.fc
  %i.fj = fsub float 1.000000e+00, %i.fi
  %i.fk = fsub float %i.fb, %i.eu
  %i.fl = fsub float %i.ez, %i.ev
  %i.fm = fadd float %i.fb, %i.eu
  %i.fn = fadd float %i.ex, %i.fa
  %i.fo = fsub float 1.000000e+00, %i.fn
  store float %i.fe, ptr %4, align 4, !tbaa !10
  store float %i.ff, ptr %i.bk, align 4, !tbaa !10
  store float %i.fg, ptr %i.ck, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !10
  store float %i.fh, ptr %i.cm, align 4, !tbaa !10
  store float %i.fj, ptr %i.bl, align 4, !tbaa !10
  store float %i.fk, ptr %i.bm, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.cn, align 4, !tbaa !10
  store float %i.fl, ptr %i.co, align 4, !tbaa !10
  store float %i.fm, ptr %i.cp, align 4, !tbaa !10
  store float %i.fo, ptr %i.bn, align 4, !tbaa !10
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !10
  %i.fp = load <2 x float>, ptr %i.a, align 8, !tbaa !10
  %i.fq = fsub <2 x float> %i.fp, %.sroa.066.0
  %i.fr = load float, ptr %i.af, align 8, !tbaa !10
  %.sroa.16.8.vec.extract84 = extractelement <2 x float> %.sroa.16.0, i64 0 ; 2 uses
  %i.fs = fsub float %i.fr, %.sroa.16.8.vec.extract84
  %.sroa.3.12.vec.insert.i51 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fs, i64 0
  store <2 x float> %i.fq, ptr %i.cq, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i51, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !64
  %i.ft = load i8, ptr %i.cr, align 2, !tbaa !91, !range !42, !noundef !67
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.fv = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.fw = load ptr, ptr %i.cs, align 8, !tbaa !33
  %i.fx = load float, ptr %i.ct, align 4, !tbaa !92
  call void @_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(408) %i.fv, ptr noundef %i.fw, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(20) %6, float noundef %i.fx)
  %i.fy = load float, ptr %i.am, align 8, !tbaa !84
  %i.fz = fcmp olt float %i.fy, 1.000000e+00
  br i1 %i.fz, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ga = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 224
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !77
  %i.gd = and i32 %i.gc, 4
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.gf = load ptr, ptr %i.cs, align 8, !tbaa !33
end_hunk_0
begin_hunk_1_@_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf:bb.a
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 112
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = call noundef zeroext i1 %i.hl(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %i.hd, ptr noundef %i.hi)
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.hn = load float, ptr %i.ax, align 8, !tbaa !84
  %i.ho = fcmp olt float %i.hn, 1.000000e+00
  br i1 %i.ho, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.hp = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 224
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !77
  %i.hs = and i32 %i.hr, 4
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hu = load ptr, ptr %i.ba, align 8, !tbaa !86
  %i.hv = load ptr, ptr %0, align 8, !tbaa !12
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 112
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = call noundef zeroext i1 %i.hx(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %i.hp, ptr noundef %i.hu)
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t, %bb.o, %bb.r, %bb.s, %bb.p
  %.029.in = phi i1 [ %i.hm, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.s ], [ false, %bb.r ], [ %i.hy, %bb.t ]
  %i.hz = load float, ptr %i.b, align 4, !tbaa !81
  %i.ia = fcmp olt float %i.hz, 0.000000e+00
  br i1 %i.ia, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ib = load float, ptr %i.cv, align 4, !tbaa !39
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0 = phi float [ %i.ib, %bb.v ], [ 0.000000e+00, %bb.u ] ; 2 uses
  %i.ic = fcmp ogt float %i.gw, 0.000000e+00
  %i.id = fcmp olt float %i.gw, %.0
  %or.cond.not110.not114 = select i1 %i.ic, i1 %i.id, i1 false
  %brmerge.not111 = and i1 %.029.in, %or.cond.not110.not114
  %or.cond47 = and i1 %i.cy, %brmerge.not111
  br i1 %or.cond47, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ie = load i8, ptr %i.cw, align 4, !tbaa !97, !range !42, !noundef !67
  %i.if = trunc nuw i8 %i.ie to i1
  br i1 %i.if, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ig = load i8, ptr %i.cx, align 1, !tbaa !98, !range !42, !noundef !67
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.016, i64 16, i1 false), !tbaa.struct !65
  %i.ii = load float, ptr %i.t, align 4, !tbaa !35
  %i.ij = fadd float %.0, %i.ii                   ; 2 uses
  %i.ik = load float, ptr %i.w, align 4, !tbaa !10
  %i.il = fmul float %i.ij, %i.ik                 ; 2 uses
  %.sroa.3.12.vec.insert.i56 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.il, i64 0
  %i.im = load <2 x float>, ptr %i.s, align 4, !tbaa !10
  %i.in = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x float> %i.im, %i.io           ; 2 uses
  %i.iq = load <2 x float>, ptr %i.a, align 8, !tbaa !10
  %i.ir = fsub <2 x float> %i.iq, %i.ip
  store <2 x float> %i.ir, ptr %i.a, align 8, !tbaa !10
  %i.is = load float, ptr %i.af, align 8, !tbaa !10
  %i.it = fsub float %i.is, %i.il
  store float %i.it, ptr %i.af, align 8, !tbaa !10
  br label %bb.g

bb.aa:                                            ; preds = %bb.w, %bb.y
  %i.iu = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 224
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !77
  %i.ix = and i32 %i.iw, 4
  %i.iy = icmp eq i32 %i.ix, 0
  %i.iz = load float, ptr %i.am, align 8
  %i.ja = fcmp olt float %i.iz, 1.000000e+00
  %or.cond107 = select i1 %i.iy, i1 %i.ja, i1 false
  br i1 %or.cond107, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.jb = load ptr, ptr %i.ap, align 8, !tbaa !86
  %i.jc = load ptr, ptr %0, align 8, !tbaa !12
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 112
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = call noundef zeroext i1 %i.je(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull %i.iu, ptr noundef %i.jb)
  %or.cond48 = or i1 %.036, %i.jf
  br i1 %or.cond48, label %bb.ad, label %bb.ai

bb.ac:                                            ; preds = %bb.aa
  br i1 %.036, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.jh = load float, ptr %i.jg, align 8, !tbaa !10 ; 2 uses
  %i.ji = load i8, ptr %i.cu, align 2, !tbaa !37, !range !42, !noundef !67
  %i.jj = trunc nuw i8 %i.ji to i1
  br i1 %i.jj, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.jl = load float, ptr %i.jk, align 8, !tbaa !10
  %i.jm = fsub float %i.jh, %i.jl
  %i.jn = fmul float %i.jm, 5.000000e-01
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 317
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !36, !range !42, !noundef !67
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.jr = load float, ptr %i.am, align 8, !tbaa !84
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.js = load float, ptr %i.am, align 8, !tbaa !84
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.af, %bb.ag
  %.sink136 = phi float [ %i.jr, %bb.af ], [ %i.js, %bb.ag ], [ %i.jn, %bb.ae ] ; 3 uses
  %i.jt = fsub float 1.000000e+00, %.sink136      ; 2 uses
  %i.ju = load float, ptr %i.bu, align 4, !tbaa !10
  %i.jv = load <2 x float>, ptr %i.a, align 8, !tbaa !10
  %i.jw = insertelement <2 x float> poison, float %.sink136, i64 0
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x float> %i.jx, %i.jv
  %i.jz = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kc = insertelement <2 x float> %i.kb, float %i.jh, i64 1
  %i.kd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %i.kc, <2 x float> %i.jy)
  store <2 x float> %i.kd, ptr %i.bu, align 4, !tbaa !10
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !10
  %i.kg = load float, ptr %i.af, align 8, !tbaa !10
  %i.kh = fmul float %.sink136, %i.kg
  %i.ki = call float @llvm.fmuladd.f32(float %i.jt, float %i.kf, float %i.kh)
  store float %i.ki, ptr %i.ke, align 4, !tbaa !10
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 317
  store i8 0, ptr %i.kj, align 1, !tbaa !36
  store <2 x float> zeroinitializer, ptr %i.b, align 4, !tbaa !10
  store i8 0, ptr %i.cx, align 1, !tbaa !98
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ab, %bb.ac
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 317
  store i8 1, ptr %i.kk, align 1, !tbaa !36
  %i.kl = load i8, ptr %i.cu, align 2, !tbaa !37, !range !42, !noundef !67
  %i.km = trunc nuw i8 %i.kl to i1
  br i1 %i.km, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.kn = load float, ptr %i.b, align 4, !tbaa !81 ; 2 uses
  %i.ko = fcmp olt float %i.kn, 0.000000e+00
  %i.kp = fneg float %i.kn
  %i.kq = select i1 %i.ko, float %i.kp, float 0.000000e+00
  %i.kr = fmul float %2, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !96 ; 2 uses
  %i.ku = fcmp ogt float %i.kr, %i.kt
  br i1 %i.ku, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.kv = load i8, ptr %i.cw, align 4, !tbaa !97, !range !42, !noundef !67
  %i.kw = trunc nuw i8 %i.kv to i1
  br i1 %i.kw, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.kx = load i8, ptr %i.cx, align 1, !tbaa !98, !range !42, !noundef !67
  %i.ky = trunc nuw i8 %i.kx to i1
  br i1 %i.ky, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.kz = load float, ptr %i.af, align 8, !tbaa !10
  %i.la = fadd float %.sroa.16.8.vec.extract84, %i.kz
  %i.lb = load float, ptr %i.t, align 4, !tbaa !35
  %i.lc = fadd float %i.kt, %i.lb                 ; 2 uses
  %i.ld = load float, ptr %i.w, align 4, !tbaa !10
  %i.le = fmul float %i.lc, %i.ld
  %i.lf = load <2 x float>, ptr %i.a, align 8, !tbaa !10
  %i.lg = fadd <2 x float> %.sroa.066.0, %i.lf
  %i.lh = load <2 x float>, ptr %i.s, align 4, !tbaa !10
  %i.li = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lj = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = fmul <2 x float> %i.lh, %i.lj
  %i.ll = fsub <2 x float> %i.lg, %i.lk
  store <2 x float> %i.ll, ptr %i.a, align 8, !tbaa !10
  %i.lm = fsub float %i.la, %i.le
  store float %i.lm, ptr %i.af, align 8, !tbaa !10
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.al, %bb.am, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !65
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.a, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.016)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) initializes((84, 116), (279, 280)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 279
  store i8 1, ptr %i.a, align 1, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !65
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load float, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.j)
  %i.k = fcmp ogt float %sqrt.i.i, f0x34000000
  br i1 %i.k, label %bb.b, label %_ZL19getNormalizedVectorRK9btVector3.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload3.i.i = load <2 x float>, ptr %i.b, align 4 ; 4 uses
  %.sroa.8.0.copyload.i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !64 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.copyload3.i.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload3.i.i, %.sroa.0.0.copyload3.i.i
  %i.l = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.m = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i, float %.sroa.0.0.vec.extract.i.i, float %i.l)
  %.sroa.8.8.vec.extract.i.i = extractelement <2 x float> %.sroa.8.0.copyload.i.i, i64 0 ; 3 uses
  %i.n = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i.i, float %.sroa.8.8.vec.extract.i.i, float %i.m)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.n)
  %i.o = fdiv float 1.000000e+00, %sqrt.i.i.i.i   ; 2 uses
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %.sroa.0.0.copyload3.i.i, %i.q
  %i.s = fmul float %.sroa.8.8.vec.extract.i.i, %i.o
  %.sroa.8.8.vec.insert.i.i = insertelement <2 x float> %.sroa.8.0.copyload.i.i, float %i.s, i64 0
  br label %_ZL19getNormalizedVectorRK9btVector3.exit

_ZL19getNormalizedVectorRK9btVector3.exit:        ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi <2 x float> [ %i.r, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.8.8.vec.insert.i.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 100
  store <2 x float> %.sroa.0.0.i, ptr %i.t, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store <2 x float> %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) initializes((84, 116), (279, 280)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 279
  store i8 0, ptr %i.a, align 1, !tbaa !99
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !65
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load float, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.j)
  %i.k = fcmp ogt float %sqrt.i.i, f0x34000000
  br i1 %i.k, label %bb.b, label %_ZL19getNormalizedVectorRK9btVector3.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload3.i.i = load <2 x float>, ptr %i.b, align 4 ; 4 uses
  %.sroa.8.0.copyload.i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !64 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0.0.copyload3.i.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload3.i.i, %.sroa.0.0.copyload3.i.i
  %i.l = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.m = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i.i, float %.sroa.0.0.vec.extract.i.i, float %i.l)
  %.sroa.8.8.vec.extract.i.i = extractelement <2 x float> %.sroa.8.0.copyload.i.i, i64 0 ; 3 uses
  %i.n = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i.i, float %.sroa.8.8.vec.extract.i.i, float %i.m)
  %sqrt.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.n)
  %i.o = fdiv float 1.000000e+00, %sqrt.i.i.i.i   ; 2 uses
  %i.p = insertelement <2 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %.sroa.0.0.copyload3.i.i, %i.q
  %i.s = fmul float %.sroa.8.8.vec.extract.i.i, %i.o
  %.sroa.8.8.vec.insert.i.i = insertelement <2 x float> %.sroa.8.0.copyload.i.i, float %i.s, i64 0
  br label %_ZL19getNormalizedVectorRK9btVector3.exit

_ZL19getNormalizedVectorRK9btVector3.exit:        ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi <2 x float> [ %i.r, %bb.b ], [ zeroinitializer, %bb.a ]
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.8.8.vec.insert.i.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 100
  store <2 x float> %.sroa.0.0.i, ptr %i.t, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store <2 x float> %.sroa.4.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !100
  %i.w = fadd float %2, %i.v
  store float %i.w, ptr %i.u, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN30btKinematicCharacterController18setAngularVelocityERK9btVector3(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((116, 132)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !65
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK30btKinematicCharacterController18getAngularVelocityEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(319) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN30btKinematicCharacterController17setLinearVelocityERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) initializes((84, 100)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !65
  %i.b = load float, ptr %i.a, align 4, !tbaa !10 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !10 ; 3 uses
  %i.e = fmul float %i.d, %i.d
  %i.f = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 3 uses
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.f) ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %1, align 4 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 1 ; 3 uses
  %i.k = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.l = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.k)
  %.sroa.8.8.vec.extract.i = load float, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !64 ; 3 uses
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i, float %.sroa.8.8.vec.extract.i, float %i.l)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.m)
  %i.n = fdiv float 1.000000e+00, %sqrt.i.i.i     ; 3 uses
  %i.o = fmul float %.sroa.0.0.vec.extract.i, %i.n
  %i.p = fmul float %.sroa.0.4.vec.extract.i, %i.n
  %i.q = fmul float %.sroa.8.8.vec.extract.i, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.s = load float, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.u = load float, ptr %i.t, align 8, !tbaa !10 ; 2 uses
  %i.v = fmul float %i.u, %i.p
  %i.w = tail call float @llvm.fmuladd.f32(float %i.o, float %i.s, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.y = load float, ptr %i.x, align 4, !tbaa !10 ; 2 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.y, float %i.w) ; 5 uses
  %i.aa = fcmp une float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ab = fcmp olt float %i.z, -1.000000e+00
  %spec.store.select.i = select i1 %i.ab, float -1.000000e+00, float %i.z ; 2 uses
  %i.ac = fcmp ogt float %spec.store.select.i, 1.000000e+00
  %spec.store.select1.i = select i1 %i.ac, float 1.000000e+00, float %spec.store.select.i
  %i.ad = tail call noundef float @acosf(float noundef %spec.store.select1.i) #24
  %i.ae = fsub float f0x3FC90FDB, %i.ad
  %i.af = tail call noundef float @sinf(float noundef %i.ae) #24
  %sqrt.i = tail call nnan float @llvm.sqrt.f32(float %i.i)
  %i.ag = fmul float %sqrt.i, %i.af               ; 3 uses
  %i.ah = fmul float %i.s, %i.ag                  ; 3 uses
  %i.ai = fmul float %i.u, %i.ag                  ; 3 uses
  %i.aj = fmul float %i.y, %i.ag                  ; 3 uses
  %i.ak = fsub float %i.b, %i.ah
  store float %i.ak, ptr %i.a, align 4, !tbaa !10
  %i.al = fsub float %i.d, %i.ai
  store float %i.al, ptr %i.c, align 8, !tbaa !10
  %i.am = fsub float %i.h, %i.aj
  store float %i.am, ptr %i.g, align 4, !tbaa !10
  %i.an = fcmp olt float %i.z, 0.000000e+00
  %i.ao = fmul float %i.ai, %i.ai
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ao)
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ap)
  %sqrt.i11 = tail call noundef float @llvm.sqrt.f32(float %i.aq) ; 2 uses
  %i.ar = fneg float %sqrt.i11
  %i.as = select i1 %i.an, float %i.ar, float %sqrt.i11
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.as, ptr %i.at, align 4, !tbaa !81
  %i.au = fcmp ogt float %i.z, 0.000000e+00
  br i1 %i.au, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 277
  store i8 1, ptr %i.av, align 1, !tbaa !98
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.az, ptr noundef nonnull align 4 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !65
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !81
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK30btKinematicCharacterController17getLinearVelocityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.d = load float, ptr %i.c, align 4, !tbaa !10
  %i.e = load float, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.f = fmul float %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = load float, ptr %i.a, align 4, !tbaa !10
  %i.i = fadd float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load <2 x float>, ptr %i.g, align 8, !tbaa !10 ; 2 uses
  %i.l = insertelement <2 x float> %i.k, float %i.e, i64 1
  %i.m = insertelement <2 x float> %i.k, float %i.e, i64 0
  %i.n = fmul <2 x float> %i.l, %i.m
  %i.o = load <2 x float>, ptr %i.j, align 8, !tbaa !10
  %i.p = fadd <2 x float> %i.n, %i.o              ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.i, i64 0
  %i.q = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.p, <2 x i32> <i32 0, i32 2>
  %i.r = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.p, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.q, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.r, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterController5resetEP16btCollisionWorld(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) initializes((36, 44), (84, 100), (276, 278), (280, 284)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> zeroinitializer, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i8 0, ptr %i.b, align 4, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 277
  store i8 0, ptr %i.c, align 1, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !100
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63   ; 10 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(25) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(120) %i.i)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !119
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef nonnull align 8 dereferenceable(25) ptr %i.t(ptr noundef nonnull align 8 dereferenceable(120) %i.i)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !71
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef nonnull align 8 dereferenceable(25) ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(120) %i.i)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !71
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !59
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef %i.x, ptr noundef %i.af, ptr noundef %i.ag) ; 0 uses
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef nonnull align 8 dereferenceable(25) ptr %i.an(ptr noundef nonnull align 8 dereferenceable(120) %i.i)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !119
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !118

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN30btKinematicCharacterController4warpERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #14 align 2 {
bb.a:
  %.sroa.10.sroa.4 = alloca [16 x i8], align 4    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.sroa.4, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !65
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !66
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float 1.000000e+00, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.6.16..sroa_idx, align 4
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.32..sroa_idx, align 8
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 0, ptr %.sroa.10.32..sroa_idx, align 4, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.sroa.4, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterController7preStepEP16btCollisionWorld(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) initializes((148, 164), (168, 200)) %0, ptr nofree readnone captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 148
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %.fca.0.load.i = load <2 x float>, ptr %2, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store <2 x float> %.fca.0.load.i, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.fca.1.load.i, ptr %.sroa.4.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1, float noundef %2) unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %class.btQuaternion, align 8        ; 5 uses
  %4 = alloca %class.btQuaternion, align 8        ; 5 uses
  %5 = alloca %class.btTransform, align 4         ; 17 uses
  %6 = alloca %class.btTransform, align 4         ; 7 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !10 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !10 ; 3 uses
  %i.e = fmul float %i.d, %i.d                    ; 2 uses
  %i.f = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !10 ; 4 uses
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.f) ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load float, ptr %i.k, align 8, !tbaa !120
  %i.m = fsub float 1.000000e+00, %i.l
  %i.n = tail call noundef float @powf(float noundef %i.m, float noundef %2) #24 ; 3 uses
  %i.o = fmul float %i.b, %i.n                    ; 3 uses
  store float %i.o, ptr %i.a, align 4, !tbaa !10
  %i.p = fmul float %i.d, %i.n                    ; 3 uses
  store float %i.p, ptr %i.c, align 8, !tbaa !10
  %i.q = fmul float %i.h, %i.n                    ; 4 uses
  store float %i.q, ptr %i.g, align 4, !tbaa !10
  %.pre50 = fmul float %i.p, %i.p                 ; 2 uses
  %.pre51 = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %.pre50)
  %.pre53 = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.q, float %.pre51)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi54 = phi float [ %.pre53, %bb.b ], [ %i.i, %bb.a ]
  %.pre-phi = phi float [ %.pre50, %bb.b ], [ %i.e, %bb.a ]
  %i.r = phi float [ %i.q, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.s = fcmp ogt float %.pre-phi54, 0.000000e+00
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %i.v, i64 16, i1 false), !tbaa.struct !65
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !65
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.z, ptr noundef nonnull align 4 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !65
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !65
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %i.a, align 4 ; 5 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload3.i, %.sroa.0.0.copyload3.i
  %i.ac = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ad = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.ac)
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.ad)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ae)
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ag = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x float> %.sroa.0.0.copyload3.i, %i.ai ; 4 uses
  %i.ak = fmul float %i.r, %i.ag                  ; 2 uses
  %foldExtExtBinop64 = fmul <2 x float> %i.aj, %i.aj
  %i.al = shufflevector <2 x float> %.sroa.0.0.copyload3.i, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.am = insertelement <2 x float> %foldExtExtBinop64, float %.pre-phi, i64 0
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.al, <2 x float> %i.am)
  %i.ao = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.ak, i64 1 ; 2 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ap, <2 x float> %i.an)
  %i.ar = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.aq) ; 2 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = fmul float %2, %i.as
  %i.au = fmul float %i.at, 5.000000e-01          ; 2 uses
  %8 = tail call noundef float @sinf(float noundef %i.au) #24
  %9 = tail call noundef float @cosf(float noundef %i.au) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.fca.0.load.i = load <2 x float>, ptr %4, align 8 ; 6 uses
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.av = extractelement <2 x float> %i.ar, i64 1
  %i.aw = fdiv float %8, %i.av                    ; 2 uses
  %i.ax = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %i.aj, %i.ay           ; 5 uses
  %i.ba = fmul float %i.ak, %i.aw                 ; 3 uses
  %i.bb = fneg float %i.ba
  %10 = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %11 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %12 = insertelement <2 x float> %11, float %i.ba, i64 1
  %i.bc = fmul <2 x float> %10, %12
  %i.bd = insertelement <2 x float> poison, float %9, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bf = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bf, <2 x float> %i.bc)
  %i.bh = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.bj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %.fca.0.load.i, <2 x float> %i.bg)
  %i.bk = fneg <2 x float> %i.az                  ; 2 uses
  %i.bl = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.bm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bk, <2 x float> %i.bl, <2 x float> %i.bj) ; 6 uses
  %13 = fneg <2 x float> %.fca.0.load.i
  %14 = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %13, <2 x i32> <i32 1, i32 2>
  %15 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %14, %15
  %i.bo = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 3>
  %i.bp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.bo, <2 x float> %i.bn)
  %i.bq = shufflevector <2 x float> %i.az, <2 x float> %i.bk, <2 x i32> <i32 1, i32 3>
  %i.br = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 3>
  %i.bs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bp)
  %i.bt = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bf, <2 x float> %i.bs) ; 4 uses
  %i.bw = extractelement <2 x float> %i.bm, i64 0
  %foldExtExtBinop66 = fmul <2 x float> %i.bm, %i.bm
  %i.bx = extractelement <2 x float> %foldExtExtBinop66, i64 0
  %i.by = extractelement <2 x float> %i.bv, i64 0 ; 4 uses
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.by, float %i.bx)
  %i.ca = extractelement <2 x float> %i.bm, i64 1 ; 3 uses
  %i.cb = call float @llvm.fmuladd.f32(float %i.ca, float %i.ca, float %i.bz)
  %i.cc = extractelement <2 x float> %i.bv, i64 1 ; 3 uses
  %i.cd = call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.cc, float %i.cb)
  %i.ce = fdiv float 2.000000e+00, %i.cd          ; 2 uses
  %i.cf = fmul float %i.by, %i.ce                 ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.bm, %i.ch           ; 4 uses
  %i.cj = fmul float %i.cc, %i.cf                 ; 2 uses
  %i.ck = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cm = fmul <2 x float> %i.ck, %i.cl           ; 4 uses
  %i.cn = fmul float %i.by, %i.cf                 ; 2 uses
  %i.co = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x float> %i.co, %i.ci           ; 4 uses
  %foldExtExtBinop68 = fmul <2 x float> %i.bm, %i.ci
  %i.cq = extractelement <2 x float> %foldExtExtBinop68, i64 0 ; 2 uses
  %i.cr = extractelement <2 x float> %i.ci, i64 1 ; 2 uses
  %i.cs = fmul float %i.bw, %i.cr                 ; 2 uses
  %i.ct = fmul float %i.ca, %i.cr                 ; 2 uses
  %i.cu = fadd float %i.cq, %i.ct
  %i.cv = fsub float 1.000000e+00, %i.cu
  %i.cw = fsub <2 x float> %i.cp, %i.cm
  %i.cx = fadd <2 x float> %i.cp, %i.cm
  %i.cy = shufflevector <2 x float> %i.cw, <2 x float> %i.cx, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop70 = fadd <2 x float> %i.cp, %i.cm
  %i.cz = extractelement <2 x float> %foldExtExtBinop70, i64 0
  %i.da = fadd float %i.cn, %i.ct
  %i.db = fsub float 1.000000e+00, %i.da
  %i.dc = fsub float %i.cs, %i.cj
  %foldExtExtBinop72 = fsub <2 x float> %i.cp, %i.cm
  %i.dd = extractelement <2 x float> %foldExtExtBinop72, i64 1
  %i.de = fadd float %i.cs, %i.cj
  %i.df = fadd float %i.cn, %i.cq
  %i.dg = fsub float 1.000000e+00, %i.df
  store float %i.cv, ptr %5, align 4, !tbaa !10
  store <2 x float> %i.cy, ptr %i.af, align 4, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float 0.000000e+00, ptr %i.dh, align 4, !tbaa !10
  store float %i.cz, ptr %i.x, align 4, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %i.db, ptr %i.di, align 4, !tbaa !10
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store float %i.dc, ptr %i.dj, align 4, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 28
  store float 0.000000e+00, ptr %i.dk, align 4, !tbaa !10
  store float %i.dd, ptr %i.z, align 4, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 36
  store float %i.de, ptr %i.dl, align 4, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %i.dg, ptr %i.dm, align 4, !tbaa !10
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 44
  store float 0.000000e+00, ptr %i.dn, align 4, !tbaa !10
  %i.do = load ptr, ptr %i.t, align 8, !tbaa !31  ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 352 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !66
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 8, !tbaa !66
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ds, ptr noundef nonnull align 4 dereferenceable(64) %5, i64 16, i1 false), !tbaa.struct !65
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 4 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !65
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 4 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !65
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !65
  %i.dw = load ptr, ptr %i.t, align 8, !tbaa !31  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 56 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dz, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 16, i1 false), !tbaa.struct !65
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 4 dereferenceable(16) %i.dy, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.dx, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %.fca.0.load.i28 = load <2 x float>, ptr %3, align 8
  %.fca.1.gep.i30 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i31 = load <2 x float>, ptr %.fca.1.gep.i30, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store <2 x float> %.fca.0.load.i28, ptr %i.eb, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x float> %.fca.1.load.i31, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 279 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !99, !range !42, !noundef !67
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.eh = load float, ptr %i.eg, align 8, !tbaa !100
  %i.ei = fcmp ugt float %i.eh, 0.000000e+00
  br i1 %i.ei, label %bb.g, label %bb.x

bb.g:                                             ; preds = %bb.f
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !10 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.em = load float, ptr %i.el, align 8, !tbaa !10 ; 2 uses
  %i.en = fmul float %i.em, %i.em
  %i.eo = call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.en)
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !10 ; 2 uses
  %i.er = call noundef float @llvm.fmuladd.f32(float %i.eq, float %i.eq, float %i.eo)
  %i.es = fcmp olt float %i.er, f0x28800000
  br i1 %i.es, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.et = load ptr, ptr %0, align 8, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(319) %0)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ey = zext i1 %i.ew to i8
  store i8 %i.ey, ptr %i.ex, align 4, !tbaa !97
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !10 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.fc = load float, ptr %i.fb, align 8, !tbaa !10 ; 3 uses
  %i.fd = fmul float %i.fc, %i.fc
  %i.fe = call float @llvm.fmuladd.f32(float %i.fa, float %i.fa, float %i.fd)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !10 ; 3 uses
  %i.fh = call noundef float @llvm.fmuladd.f32(float %i.fg, float %i.fg, float %i.fe)
  %i.fi = fcmp ogt float %i.fh, 0.000000e+00
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !121
  %i.fl = fsub float 1.000000e+00, %i.fk          ; 2 uses
  br i1 %i.fi, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.fm = call noundef float @powf(float noundef %i.fl, float noundef %2) #24 ; 3 uses
  %i.fn = fmul float %i.fa, %i.fm
  store float %i.fn, ptr %i.ez, align 4, !tbaa !10
  %i.fo = fmul float %i.fc, %i.fm
  store float %i.fo, ptr %i.fb, align 8, !tbaa !10
  %i.fp = fmul float %i.fg, %i.fm
  store float %i.fp, ptr %i.ff, align 4, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.i
  %i.fq = call noundef float @powf(float noundef %i.fl, float noundef %2) #24
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !81
  %i.ft = fmul float %i.fq, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !38
  %i.fw = fneg float %i.fv
  %i.fx = call float @llvm.fmuladd.f32(float %i.fw, float %2, float %i.ft) ; 5 uses
  store float %i.fx, ptr %i.fr, align 4, !tbaa !81
  %i.fy = fcmp ogt float %i.fx, 0.000000e+00
  br i1 %i.fy, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %._crit_edge
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !101 ; 3 uses
  %i.gb = fcmp ogt float %i.fx, %i.ga
  br i1 %i.gb, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %bb.j
  store float %i.ga, ptr %i.fr, align 4, !tbaa !81
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.j, %bb.k, %._crit_edge
  %i.gc = phi float [ %i.fx, %._crit_edge ], [ %i.ga, %bb.k ], [ %i.fx, %bb.j ] ; 4 uses
  %i.gd = fcmp olt float %i.gc, 0.000000e+00
  br i1 %i.gd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %thread-pre-split
  %i.ge = call noundef float @llvm.fabs.f32(float %i.gc)
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !96
  %i.gh = call noundef float @llvm.fabs.f32(float %i.gg) ; 2 uses
  %i.gi = fcmp ogt float %i.ge, %i.gh
  br i1 %i.gi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gj = fneg float %i.gh                        ; 2 uses
  store float %i.gj, ptr %i.fr, align 4, !tbaa !81
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %thread-pre-split
  %i.gk = phi float [ %i.gj, %bb.m ], [ %i.gc, %bb.l ], [ %i.gc, %thread-pre-split ]
  %i.gl = fmul float %2, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.gl, ptr %i.gm, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !31 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %i.gp, i64 16, i1 false), !tbaa.struct !65
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gr, ptr noundef nonnull align 4 dereferenceable(16) %i.gq, i64 16, i1 false), !tbaa.struct !65
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  %i.gt = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gt, ptr noundef nonnull align 4 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !65
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  call void @_ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1)
  %i.gv = load i8, ptr %i.ed, align 1, !tbaa !99, !range !42, !noundef !67
  %i.gw = trunc nuw i8 %i.gv to i1
  br i1 %i.gw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ez)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.gy = load float, ptr %i.gx, align 8, !tbaa !100 ; 3 uses
  %i.gz = fcmp olt float %2, %i.gy
  %. = select i1 %i.gz, float %2, float %i.gy     ; 2 uses
  %i.ha = fsub float %i.gy, %2
  store float %i.ha, ptr %i.gx, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.hb = load <2 x float>, ptr %i.ez, align 4, !tbaa !10
  %i.hc = insertelement <2 x float> poison, float %., i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x float> %i.hd, %i.hb
  %i.hf = load float, ptr %i.ff, align 4, !tbaa !10
  %i.hg = fmul float %., %i.hf
  %.sroa.3.12.vec.insert.i35 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hg, i64 0
  store <2 x float> %i.he, ptr %7, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i35, ptr %i.hh, align 8
  call void @_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1, float noundef %2)
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gu, ptr noundef nonnull align 4 dereferenceable(16) %i.hi, i64 16, i1 false), !tbaa.struct !65
  %i.hj = load ptr, ptr %i.gn, align 8, !tbaa !31 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 352 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !66
  %i.hm = add nsw i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 8, !tbaa !66
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hn, ptr noundef nonnull align 4 dereferenceable(64) %6, i64 16, i1 false), !tbaa.struct !65
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 4 dereferenceable(16) %i.gr, i64 16, i1 false), !tbaa.struct !65
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hp, ptr noundef nonnull align 4 dereferenceable(16) %i.gt, i64 16, i1 false), !tbaa.struct !65
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, ptr noundef nonnull align 4 dereferenceable(16) %i.gu, i64 16, i1 false), !tbaa.struct !65
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  store i8 0, ptr %i.hr, align 8, !tbaa !93
  %i.hs = call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1)
  br i1 %i.hs, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.hr, align 8, !tbaa !93
  %i.ht = call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1)
  br i1 %i.ht, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.hr, align 8, !tbaa !93
  %i.hu = call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1)
  br i1 %i.hu, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.hr, align 8, !tbaa !93
  %i.hv = call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1)
  br i1 %i.hv, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.hr, align 8, !tbaa !93
  %i.hw = call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1)
  br i1 %i.hw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.hr, align 8, !tbaa !93
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.x

bb.x:                                             ; preds = %bb.f, %bb.g, %bb.w
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController12setFallSpeedEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((44, 48)) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %1, ptr %i.a, align 4, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController12setJumpSpeedEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((48, 56)) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %1, ptr %i.a, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %1, ptr %i.b, align 4, !tbaa !122
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController16setMaxJumpHeightEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((56, 60)) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.a, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK30btKinematicCharacterController7canJumpEv(ptr noundef nonnull align 8 dereferenceable(319) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(319) %0)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN30btKinematicCharacterController4jumpERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) initializes((36, 40), (48, 52), (132, 148), (277, 278), (300, 316)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e) ; 2 uses
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load float, ptr %i.j, align 4
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.h)
  %i.l = select i1 %i.i, float %i.k, float %sqrt.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.l, ptr %i.m, align 8, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.l, ptr %i.n, align 4, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 277
  store i8 1, ptr %i.o, align 1, !tbaa !98
  %i.p = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.q = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.r = fmul float %i.q, %i.q
  %i.s = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.r)
  %i.t = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.s)
  %i.v = fcmp oeq float %i.u, 0.000000e+00
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 284
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.w, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 292
  %.sroa.5.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %1, align 4 ; 4 uses
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %i.f, align 4, !tbaa !64 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.copyload3.i, %.sroa.0.0.copyload3.i
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.y = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.x)
  %.sroa.8.8.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload.i, i64 0 ; 3 uses
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i, float %.sroa.8.8.vec.extract.i, float %i.y)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.z)
  %i.aa = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.ab = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %.sroa.0.0.copyload3.i, %i.ac
  %i.ae = fmul float %.sroa.8.8.vec.extract.i, %i.aa
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> %.sroa.8.0.copyload.i, float %i.ae, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.0 = phi <2 x float> [ %.sroa.5.0.copyload, %bb.b ], [ %.sroa.8.8.vec.insert.i, %bb.c ]
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload, %bb.b ], [ %i.ad, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 300
  store <2 x float> %.sroa.0.0, ptr %i.af, align 4
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 308
  store <2 x float> %.sroa.5.0, ptr %.sroa.5.0..sroa_idx2, align 4, !tbaa !64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, ptr noundef nonnull align 4 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !65
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterController10setGravityERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !10 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.a, %i.a
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.c = extractelement <2 x float> %i.a, i64 0   ; 2 uses
  %i.d = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !10 ; 3 uses
  %i.g = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.d) ; 2 uses
  %i.h = fcmp ogt float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.j = fneg <2 x float> %i.a
  %i.k = fneg float %i.f
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  store <2 x float> %i.j, ptr %2, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.l, align 8
  call void @_ZN30btKinematicCharacterController11setUpVectorERK9btVector3(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load float, ptr %1, align 4, !tbaa !10  ; 2 uses
  %.pre4 = load float, ptr %i.i, align 4, !tbaa !10 ; 2 uses
  %.pre5 = load float, ptr %i.e, align 4, !tbaa !10 ; 2 uses
  %.pre6 = fmul float %.pre4, %.pre4
  %.pre7 = tail call float @llvm.fmuladd.f32(float %.pre, float %.pre, float %.pre6)
  %.pre9 = tail call noundef float @llvm.fmuladd.f32(float %.pre5, float %.pre5, float %.pre7)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pre-phi10 = phi float [ %.pre9, %bb.b ], [ %i.g, %bb.a ]
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.pre-phi10)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %sqrt.i, ptr %i.m, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN30btKinematicCharacterController11setUpVectorERK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(319) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %class.btQuaternion, align 8        ; 5 uses
  %3 = alloca %class.btTransform, align 4         ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.c = load float, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load float, ptr %i.d, align 4, !tbaa !10
  %i.f = fcmp oeq float %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.h = load float, ptr %i.g, align 4            ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.k = fcmp oeq float %i.h, %i.j
  %or.cond = select i1 %i.f, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %_ZNK9btVector3eqERKS_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.m = load float, ptr %i.l, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !10
  %i.p = fcmp oeq float %i.m, %i.o
  br i1 %i.p, label %_ZNK9btVector3eqERKS_.exit, label %_ZNK9btVector3eqERKS_.exit.thread

_ZNK9btVector3eqERKS_.exit:                       ; preds = %bb.b
  %i.q = load float, ptr %i.a, align 4, !tbaa !10
  %i.r = load float, ptr %1, align 4, !tbaa !10
  %i.s = fcmp oeq float %i.q, %i.r
  br i1 %i.s, label %bb.m, label %_ZNK9btVector3eqERKS_.exit.thread

_ZNK9btVector3eqERKS_.exit.thread:                ; preds = %bb.a, %bb.b, %_ZNK9btVector3eqERKS_.exit
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.sroa.030.0.copyload = load float, ptr %i.a, align 4 ; 3 uses
  %.sroa.632.0.copyload = load float, ptr %.sroa.632.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.t = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !10 ; 2 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.w)
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.x)
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload3.i = load <2 x float>, ptr %1, align 4 ; 2 uses
  %.sroa.8.0.copyload.i = load <2 x float>, ptr %i.aa, align 4, !tbaa !64 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 0 ; 3 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload3.i, i64 1 ; 3 uses
  %i.ab = fmul float %.sroa.0.4.vec.extract.i, %.sroa.0.4.vec.extract.i
  %i.ac = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract.i, float %.sroa.0.0.vec.extract.i, float %i.ab)
  %.sroa.8.8.vec.extract.i = extractelement <2 x float> %.sroa.8.0.copyload.i, i64 0 ; 3 uses
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %.sroa.8.8.vec.extract.i, float %.sroa.8.8.vec.extract.i, float %i.ac)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ad)
  %i.ae = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 3 uses
  %i.af = fmul float %.sroa.0.0.vec.extract.i, %i.ae ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ag = fmul float %.sroa.0.4.vec.extract.i, %i.ae ; 2 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.ag, i64 1
  %i.ah = fmul float %.sroa.8.8.vec.extract.i, %i.ae ; 2 uses
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> %.sroa.8.0.copyload.i, float %i.ah, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.a, align 4
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !64
  br label %bb.e

bb.d:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = phi float [ 0.000000e+00, %bb.d ], [ %i.ah, %bb.c ] ; 3 uses
  %i.aj = phi float [ 0.000000e+00, %bb.d ], [ %i.ag, %bb.c ] ; 3 uses
  %i.ak = phi float [ 0.000000e+00, %bb.d ], [ %i.af, %bb.c ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = fmul float %i.aj, %i.aj
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.an)
  %i.ap = tail call noundef float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ao) ; 2 uses
  %i.aq = fcmp oeq float %i.ap, 0.000000e+00
  br i1 %i.aq, label %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = fmul float %.sroa.632.0.copyload, %.sroa.632.0.copyload
  %i.as = tail call float @llvm.fmuladd.f32(float %.sroa.030.0.copyload, float %.sroa.030.0.copyload, float %i.ar)
  %i.at = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.as) ; 2 uses
  %i.au = fcmp oeq float %i.at, 0.000000e+00
  br i1 %i.au, label %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = insertelement <2 x float> poison, float %i.at, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.ap, i64 1
  %i.ax = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.aw)
  %i.ay = fdiv <2 x float> splat (float 1.000000e+00), %i.ax ; 3 uses
  %i.az = extractelement <2 x float> %i.ay, i64 1 ; 2 uses
  %i.ba = fmul float %i.ak, %i.az                 ; 7 uses
  store float %i.ba, ptr %i.a, align 4, !tbaa !10
  %i.bb = insertelement <2 x float> poison, float %.sroa.632.0.copyload, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.aj, i64 1
  %i.bd = fmul <2 x float> %i.bc, %i.ay           ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 1 ; 10 uses
  store float %i.be, ptr %.sroa.632.0..sroa_idx, align 8, !tbaa !10
  %i.bf = fmul float %i.ai, %i.az                 ; 8 uses
  store float %i.bf, ptr %.sroa.9.0..sroa_idx, align 4, !tbaa !10
  %i.bg = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bh = fmul float %.sroa.030.0.copyload, %i.bg ; 3 uses
  %i.bi = fmul float %i.h, %i.bg                  ; 3 uses
  %i.bj = extractelement <2 x float> %i.bd, i64 0 ; 3 uses
  %i.bk = fmul float %i.bj, %i.be
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bh, float %i.bk)
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bi, float %i.bl) ; 2 uses
  %i.bn = fcmp olt float %i.bm, f0xBF7FFFFE
  br i1 %i.bn, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bo = tail call noundef float @llvm.fabs.f32(float %i.bf)
  %i.bp = fcmp ogt float %i.bo, f0x3F3504F3
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = fmul nnan float %i.bf, %i.bf
  %i.br = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bq)
  %sqrt.i.i5.i = tail call float @llvm.sqrt.f32(float %i.br)
  %i.bs = fdiv float 1.000000e+00, %sqrt.i.i5.i   ; 2 uses
  %i.bt = fneg float %i.bf
  %i.bu = fmul float %i.bs, %i.bt
  %i.bv = fmul float %i.be, %i.bs
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.bw = fmul float %i.be, %i.be
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.bw)
  %sqrt43.i.i.i = tail call float @llvm.sqrt.f32(float %i.bx)
  %i.by = fdiv float 1.000000e+00, %sqrt43.i.i.i  ; 2 uses
  %i.bz = fneg float %i.be
  %i.ca = fmul float %i.by, %i.bz
  %i.cb = fmul float %i.ba, %i.by
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.016.0.i.i = phi float [ 0.000000e+00, %bb.j ], [ %i.ca, %bb.k ]
  %.sroa.618.0.i.i = phi float [ %i.bu, %bb.j ], [ %i.cb, %bb.k ]
  %.sroa.10.0.i.i = phi float [ %i.bv, %bb.j ], [ 0.000000e+00, %bb.k ]
  %.sroa.022.0.vec.insert.i.i = insertelement <2 x float> poison, float %.sroa.016.0.i.i, i64 0
  %.sroa.022.4.vec.insert.i.i = insertelement <2 x float> %.sroa.022.0.vec.insert.i.i, float %.sroa.618.0.i.i, i64 1
  %.sroa.528.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.10.0.i.i, i64 0
  br label %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit

bb.l:                                             ; preds = %bb.h
  %i.cc = fneg float %i.bh
  %i.cd = fmul float %i.be, %i.cc
  %i.ce = fneg float %i.bi
  %i.cf = fmul float %i.ba, %i.ce
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bh, float %i.cf)
  %i.ch = fneg float %i.bj
  %i.ci = fmul float %i.bf, %i.ch
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bi, float %i.ci)
  %i.ck = fadd float %i.bm, 1.000000e+00
  %i.cl = fmul float %i.ck, 2.000000e+00
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.bj, float %i.cd)
  %i.cn = tail call noundef float @sqrtf(float noundef %i.cl) #24 ; 2 uses
  %i.co = fdiv float 1.000000e+00, %i.cn          ; 3 uses
  %i.cp = fmul float %i.cj, %i.co
  %i.cq = fmul float %i.cg, %i.co
  %i.cr = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cn, i64 1
  %i.ct = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.co, i64 0
  %i.cu = fmul <2 x float> %i.cs, %i.ct
  %.sroa.022.0.vec.insert25.i.i = insertelement <2 x float> poison, float %i.cp, i64 0
  %.sroa.022.4.vec.insert27.i.i = insertelement <2 x float> %.sroa.022.0.vec.insert25.i.i, float %i.cq, i64 1
  br label %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit

_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit: ; preds = %bb.l, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i, %bb.f, %bb.g
  %.sroa.2.0.i = phi <2 x float> [ undef, %bb.f ], [ undef, %bb.g ], [ %.sroa.528.12.vec.insert.i.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i ], [ %i.cu, %bb.l ] ; 4 uses
  %.sroa.0.0.i = phi <2 x float> [ undef, %bb.f ], [ undef, %bb.g ], [ %.sroa.022.4.vec.insert.i.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i.i ], [ %.sroa.022.4.vec.insert27.i.i, %bb.l ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.cv, i64 16, i1 false), !tbaa.struct !65
  %i.cw = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cx, ptr noundef nonnull align 4 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !65
  %i.cy = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cz, ptr noundef nonnull align 4 dereferenceable(16) %i.cy, i64 16, i1 false), !tbaa.struct !65
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.db, ptr noundef nonnull align 4 dereferenceable(16) %i.da, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %.fca.0.load.i = load <2 x float>, ptr %2, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dd = shufflevector <2 x float> %.sroa.2.0.i, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 0, i32 2>
  %i.de = fneg <2 x float> %i.dd                  ; 2 uses
  %i.df = shufflevector <2 x float> %.sroa.0.0.i, <2 x float> %.sroa.2.0.i, <2 x i32> <i32 1, i32 2>
  %i.dg = fneg <2 x float> %i.df                  ; 2 uses
  %i.dh = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.di = fmul <2 x float> %i.dh, %i.dg
  %i.dj = shufflevector <2 x float> %.sroa.2.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dk = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.dk, <2 x float> %i.di)
  %i.dm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %.fca.0.load.i, <2 x float> %i.dl)
  %i.dn = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.do = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.0.0.i, <2 x float> %i.dn, <2 x float> %i.dm) ; 6 uses
  %i.dp = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 1, i32 2>
  %i.dq = shufflevector <2 x float> %i.de, <2 x float> %.fca.0.load.i, <2 x i32> <i32 1, i32 2>
  %i.dr = fmul <2 x float> %i.dp, %i.dq
  %i.ds = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 3>
  %i.dt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.ds, <2 x float> %i.dr)
  %i.du = shufflevector <2 x float> %i.dg, <2 x float> %.sroa.0.0.i, <2 x i32> <i32 0, i32 3>
  %i.dv = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 3>
  %i.dw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dv, <2 x float> %i.dt)
  %i.dx = shufflevector <2 x float> %.sroa.2.0.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.dk, <2 x float> %i.dw) ; 4 uses
  %i.dz = extractelement <2 x float> %i.do, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.do, %i.do
  %i.ea = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.eb = extractelement <2 x float> %i.dy, i64 0 ; 4 uses
  %i.ec = call float @llvm.fmuladd.f32(float %i.eb, float %i.eb, float %i.ea)
  %i.ed = extractelement <2 x float> %i.do, i64 1 ; 3 uses
  %i.ee = call float @llvm.fmuladd.f32(float %i.ed, float %i.ed, float %i.ec)
  %i.ef = extractelement <2 x float> %i.dy, i64 1 ; 3 uses
  %i.eg = call noundef float @llvm.fmuladd.f32(float %i.ef, float %i.ef, float %i.ee)
  %i.eh = fdiv float 2.000000e+00, %i.eg          ; 2 uses
  %i.ei = fmul float %i.eb, %i.eh                 ; 2 uses
  %i.ej = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x float> %i.do, %i.ek           ; 4 uses
  %i.em = fmul float %i.ef, %i.ei                 ; 2 uses
  %i.en = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ep = fmul <2 x float> %i.en, %i.eo           ; 4 uses
  %i.eq = fmul float %i.eb, %i.ei                 ; 2 uses
  %i.er = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = fmul <2 x float> %i.er, %i.el           ; 4 uses
  %foldExtExtBinop44 = fmul <2 x float> %i.do, %i.el
  %i.et = extractelement <2 x float> %foldExtExtBinop44, i64 0 ; 2 uses
  %i.eu = extractelement <2 x float> %i.el, i64 1 ; 2 uses
  %i.ev = fmul float %i.dz, %i.eu                 ; 2 uses
  %i.ew = fmul float %i.ed, %i.eu                 ; 2 uses
  %i.ex = fadd float %i.et, %i.ew
  %i.ey = fsub float 1.000000e+00, %i.ex
  %i.ez = fsub <2 x float> %i.es, %i.ep
  %i.fa = fadd <2 x float> %i.es, %i.ep
  %i.fb = shufflevector <2 x float> %i.ez, <2 x float> %i.fa, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop46 = fadd <2 x float> %i.es, %i.ep
  %i.fc = extractelement <2 x float> %foldExtExtBinop46, i64 0
  %i.fd = fadd float %i.eq, %i.ew
  %i.fe = fsub float 1.000000e+00, %i.fd
  %i.ff = fsub float %i.ev, %i.em
  %foldExtExtBinop48 = fsub <2 x float> %i.es, %i.ep
  %i.fg = extractelement <2 x float> %foldExtExtBinop48, i64 1
  %i.fh = fadd float %i.ev, %i.em
  %i.fi = fadd float %i.eq, %i.et
  %i.fj = fsub float 1.000000e+00, %i.fi
  store float %i.ey, ptr %3, align 4, !tbaa !10
  store <2 x float> %i.fb, ptr %i.dc, align 4, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %i.fk, align 4, !tbaa !10
  store float %i.fc, ptr %i.cx, align 4, !tbaa !10
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %i.fe, ptr %i.fl, align 4, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 24
  store float %i.ff, ptr %i.fm, align 4, !tbaa !10
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 28
  store float 0.000000e+00, ptr %i.fn, align 4, !tbaa !10
  store float %i.fg, ptr %i.cz, align 4, !tbaa !10
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 36
  store float %i.fh, ptr %i.fo, align 4, !tbaa !10
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 40
  store float %i.fj, ptr %i.fp, align 4, !tbaa !10
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 44
  store float 0.000000e+00, ptr %i.fq, align 4, !tbaa !10
  %i.fr = load ptr, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 352 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !66
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 8, !tbaa !66
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fv, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !65
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, ptr noundef nonnull align 4 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !65
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 4 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !65
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull align 4 dereferenceable(16) %i.db, i64 16, i1 false), !tbaa.struct !65
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.m

bb.m:                                             ; preds = %_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_.exit, %bb.e, %_ZNK9btVector3eqERKS_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK30btKinematicCharacterController10getGravityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load float, ptr %i.a, align 4, !tbaa !38
  %i.c = fneg float %i.b                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !10
  %i.f = insertelement <2 x float> poison, float %i.c, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.j = load float, ptr %i.i, align 4, !tbaa !10
  %i.k = fmul float %i.j, %i.c
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  %.fca.0.insert.i.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.h, 0
  %.fca.1.insert.i.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i, <2 x float> %.sroa.3.12.vec.insert.i.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK30btKinematicCharacterController11getMaxSlopeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load float, ptr %i.a, align 4, !tbaa !40
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController22setMaxPenetrationDepthEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((32, 36)) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %1, ptr %i.a, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZNK30btKinematicCharacterController22getMaxPenetrationDepthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load float, ptr %i.a, align 8, !tbaa !79
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK30btKinematicCharacterController8onGroundEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(319) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load <2 x float>, ptr %i.a, align 4
  %i.c = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.b)
  %i.d = fcmp olt <2 x float> %i.c, splat (float f0x34000000) ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull ptr @_ZN30btKinematicCharacterController19getUpAxisDirectionsEv() local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection) #24
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 1.000000e+00, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, align 16, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 4), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 20), align 4, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection, i64 40), align 8, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN30btKinematicCharacterController19getUpAxisDirectionsEvE16sUpAxisDirection
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController16setUpInterpolateEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(319) initializes((316, 317)) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i8 %i.a, ptr %i.b, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK30btKinematicCharacterController11getRotationER9btVector3S1_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(319) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 2 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %i.i = fcmp oeq float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load float, ptr %2, align 4, !tbaa !10   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !10 ; 2 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !10 ; 2 uses
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.n)
  %i.r = fcmp oeq float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call { <2 x float>, <2 x float> } @_Z25shortestArcQuatNormalize2R9btVector3S0_(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2) ; 2 uses
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0
  %i.u = extractvalue { <2 x float>, <2 x float> } %i.s, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.2.0 = phi <2 x float> [ %i.u, %bb.c ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi <2 x float> [ %i.t, %bb.c ], [ undef, %bb.b ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_Z25shortestArcQuatNormalize2R9btVector3S0_(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.a, float %i.a, float %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.h)
  %i.i = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.j = fmul float %i.a, %i.i
  store float %i.j, ptr %0, align 4, !tbaa !10
  %i.k = fmul float %i.c, %i.i
  store float %i.k, ptr %i.b, align 4, !tbaa !10
  %i.l = fmul float %i.g, %i.i
  store float %i.l, ptr %i.f, align 4, !tbaa !10
  %i.m = load float, ptr %1, align 4, !tbaa !10   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load <2 x float>, ptr %i.n, align 4, !tbaa !10 ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.p, %i.p
  %i.q = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.r = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.q)
  %i.s = extractelement <2 x float> %i.p, i64 1   ; 2 uses
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.r)
  %sqrt.i.i4 = tail call noundef float @llvm.sqrt.f32(float %i.t)
  %i.u = fdiv float 1.000000e+00, %sqrt.i.i4
  %i.v = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.w = insertelement <2 x float> %i.v, float %i.m, i64 1
  %i.x = insertelement <2 x float> poison, float %i.u, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fmul <2 x float> %i.w, %i.y              ; 3 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1  ; 3 uses
  store float %i.aa, ptr %1, align 4, !tbaa !10
  %i.ab = fmul <2 x float> %i.p, %i.y             ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  store float %i.ac, ptr %i.n, align 4, !tbaa !10
  %i.ad = extractelement <2 x float> %i.z, i64 0  ; 2 uses
  store float %i.ad, ptr %i.o, align 4, !tbaa !10
  %i.ae = load <2 x float>, ptr %i.b, align 4, !tbaa !10 ; 7 uses
  %i.af = load float, ptr %0, align 4, !tbaa !10  ; 6 uses
  %i.ag = extractelement <2 x float> %i.ae, i64 0 ; 5 uses
  %foldExtExtBinop7 = fmul <2 x float> %i.ae, %i.ab
  %i.ah = extractelement <2 x float> %foldExtExtBinop7, i64 0
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.af, float %i.aa, float %i.ah)
  %i.aj = extractelement <2 x float> %i.ae, i64 1 ; 5 uses
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.ad, float %i.ai) ; 2 uses
  %i.al = fcmp olt float %i.ak, f0xBF7FFFFE
  br i1 %i.al, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.am = tail call noundef float @llvm.fabs.f32(float %i.aj)
  %i.an = fcmp ogt float %i.am, f0x3F3504F3
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = fmul nnan float %i.aj, %i.aj
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.ao)
  %sqrt.i.i5 = tail call float @llvm.sqrt.f32(float %i.ap)
  %i.aq = fdiv float 1.000000e+00, %sqrt.i.i5     ; 2 uses
  %i.ar = fneg float %i.aj
  %i.as = fmul float %i.aq, %i.ar
  %i.at = fmul float %i.ag, %i.aq
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

bb.d:                                             ; preds = %bb.b
  %foldExtExtBinop9 = fmul <2 x float> %i.ae, %i.ae
  %i.au = extractelement <2 x float> %foldExtExtBinop9, i64 0
  %i.av = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.au)
  %sqrt43.i.i = tail call float @llvm.sqrt.f32(float %i.av)
  %i.aw = fdiv float 1.000000e+00, %sqrt43.i.i    ; 2 uses
  %i.ax = fneg float %i.ag
  %i.ay = fmul float %i.aw, %i.ax
  %i.az = fmul float %i.af, %i.aw
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.016.0.i = phi float [ 0.000000e+00, %bb.c ], [ %i.ay, %bb.d ]
  %.sroa.618.0.i = phi float [ %i.as, %bb.c ], [ %i.az, %bb.d ]
  %.sroa.10.0.i = phi float [ %i.at, %bb.c ], [ 0.000000e+00, %bb.d ]
  %.sroa.022.0.vec.insert.i = insertelement <2 x float> poison, float %.sroa.016.0.i, i64 0
  %.sroa.022.4.vec.insert.i = insertelement <2 x float> %.sroa.022.0.vec.insert.i, float %.sroa.618.0.i, i64 1
  %.sroa.528.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.10.0.i, i64 0
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

bb.e:                                             ; preds = %bb.a
  %i.ba = fneg float %i.aa
  %i.bb = fmul float %i.ag, %i.ba
  %i.bc = fneg <2 x float> %i.ab
  %i.bd = fadd float %i.ak, 1.000000e+00
  %i.be = fmul float %i.bd, 2.000000e+00
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ac, float %i.bb)
  %i.bg = tail call noundef float @sqrtf(float noundef %i.be) #24 ; 2 uses
  %i.bh = fdiv float 1.000000e+00, %i.bg          ; 2 uses
  %i.bi = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bj = insertelement <2 x float> %i.bi, float %i.af, i64 1
  %i.bk = fmul <2 x float> %i.bj, %i.bc
  %i.bl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ae, <2 x float> %i.z, <2 x float> %i.bk)
  %i.bm = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bl, %i.bn
  %i.bp = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bg, i64 1
  %i.br = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.bh, i64 0
  %i.bs = fmul <2 x float> %i.bq, %i.br
  br label %_Z15shortestArcQuatRK9btVector3S1_.exit

_Z15shortestArcQuatRK9btVector3S1_.exit:          ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i, %bb.e
  %.sroa.022.0.i = phi <2 x float> [ %.sroa.022.4.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %i.bo, %bb.e ]
  %.sroa.528.0.i = phi <2 x float> [ %.sroa.528.12.vec.insert.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit.i ], [ %i.bs, %bb.e ]
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.022.0.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.528.0.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1, float noundef %2) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1)
  %i.d = load ptr, ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(319) %0, ptr noundef %1, float noundef %2)
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #19

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #20 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !125
  %i.e = and i32 %i.d, %i.b
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !126
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !95
  %i.j = and i32 %i.i, %i.g
  %i.k = icmp ne i32 %i.j, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !129    ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.f = load i32, ptr %i.e, align 8, !tbaa !77
  %i.g = and i32 %i.f, 4
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.i, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load float, ptr %i.m, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = load float, ptr %i.q, align 8, !tbaa !10
  %i.s = load float, ptr %i.k, align 8, !tbaa !10 ; 2 uses
  %i.t = load <2 x float>, ptr %i.j, align 8, !tbaa !10 ; 2 uses
  %i.u = load float, ptr %i.l, align 4, !tbaa !10 ; 2 uses
  %i.v = load float, ptr %i.o, align 8, !tbaa !10 ; 2 uses
  %i.w = load <2 x float>, ptr %i.p, align 8, !tbaa !10 ; 2 uses
  %i.x = insertelement <2 x float> poison, float %i.u, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = shufflevector <2 x float> %i.t, <2 x float> %i.w, <2 x i32> <i32 1, i32 3>
  %i.aa = fmul <2 x float> %i.y, %i.z
  %i.ab = shufflevector <2 x float> %i.t, <2 x float> %i.w, <2 x i32> <i32 0, i32 2>
  %i.ac = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> %i.aa)
  %i.af = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.r, i64 1
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ai, <2 x float> %i.ae)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.al = load float, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.an = load float, ptr %i.am, align 4, !tbaa !10
  %i.ao = fmul float %i.u, %i.an
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.al, float %i.s, float %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !10
  %i.as = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.v, float %i.ap)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.6.0 = phi <2 x float> [ %.sroa.6.0.copyload, %bb.d ], [ %.sroa.3.12.vec.insert.i, %bb.e ]
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload, %bb.d ], [ %i.aj, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load float, ptr %i.at, align 8, !tbaa !10
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.ax = fmul float %.sroa.0.4.vec.extract, %i.aw
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.au, float %.sroa.0.0.vec.extract, float %i.ax)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ba = load float, ptr %i.az, align 8, !tbaa !10
  %.sroa.6.8.vec.extract = extractelement <2 x float> %.sroa.6.0, i64 0
  %i.bb = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %.sroa.6.8.vec.extract, float %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !89
  %i.be = fcmp olt float %i.bb, %i.bd
  br i1 %i.be, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !130
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.bg, ptr %i.bh, align 8, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.bi, align 8, !tbaa !86
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !65
  br label %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit

bb.i:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !10
  %i.bu = load float, ptr %i.bm, align 8, !tbaa !10 ; 2 uses
  %i.bv = load <2 x float>, ptr %i.bl, align 8, !tbaa !10 ; 2 uses
  %i.bw = load float, ptr %i.bn, align 4, !tbaa !10 ; 2 uses
  %i.bx = load float, ptr %i.bq, align 8, !tbaa !10 ; 2 uses
  %i.by = load <2 x float>, ptr %i.br, align 8, !tbaa !10 ; 2 uses
  %i.bz = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = shufflevector <2 x float> %i.bv, <2 x float> %i.by, <2 x i32> <i32 1, i32 3>
  %i.cc = fmul <2 x float> %i.ca, %i.cb
  %i.cd = shufflevector <2 x float> %i.bv, <2 x float> %i.by, <2 x i32> <i32 0, i32 2>
  %i.ce = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cf, <2 x float> %i.cc)
  %i.ch = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.bt, i64 1
  %i.cj = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.ck, <2 x float> %i.cg)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.cp = load float, ptr %i.co, align 4, !tbaa !10
  %i.cq = fmul float %i.bw, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.bu, float %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !10
  %i.cu = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.bx, float %i.cr)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cu, i64 0
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 52
  store <2 x float> %i.cl, ptr %i.cv, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !64
  br label %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit

_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit: ; preds = %bb.h, %bb.i
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !65
  %i.cy = load float, ptr %i.bf, align 8, !tbaa !130
  br label %bb.j

bb.j:                                             ; preds = %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit, %bb.f, %bb.b, %bb.a
  %.1 = phi float [ 1.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %i.cy, %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit ], [ 1.000000e+00, %bb.f ]
  ret float %.1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
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
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #24 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.m, align 4, !tbaa !10
  %i.t = load float, ptr %i.n, align 4, !tbaa !10
  %i.u = fsub float %i.s, %i.t
  %i.v = load float, ptr %i.o, align 4, !tbaa !10
  %i.w = load float, ptr %i.j, align 4, !tbaa !10
  %i.x = fsub float %i.v, %i.w
  %i.y = load float, ptr %i.k, align 4, !tbaa !10
  %i.z = load float, ptr %i.p, align 4, !tbaa !10
  %i.aa = fsub float %i.y, %i.z
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.u, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.x, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.aa, i64 2
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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !10
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !10
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #24 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !10
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !10
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !10
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !10
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !10
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !10
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !10
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !10
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !10
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !10
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree noreturn }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"vtable pointer", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"any p2 pointer", !14, i64 0}
!16 = !{!"p2 _ZTS20btPersistentManifold", !15, i64 0}
!17 = !{!"bool", !5, i64 0}
!18 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !13, i64 0, !6, i64 4, !6, i64 8, !16, i64 16, !17, i64 24}
!19 = !{!18, !17, i64 24}
!20 = !{!18, !16, i64 16}
!21 = !{!18, !6, i64 4}
!22 = !{!18, !6, i64 8}
!23 = !{!"_ZTS17btActionInterface"}
!24 = !{!"_ZTS30btCharacterControllerInterface", !23, i64 0}
!25 = !{!"p1 _ZTS24btPairCachingGhostObject", !14, i64 0}
!26 = !{!"p1 _ZTS13btConvexShape", !14, i64 0}
!27 = !{!"_ZTS9btVector3", !5, i64 0}
!28 = !{!"_ZTS10btQuadWord", !5, i64 0}
!29 = !{!"_ZTS12btQuaternion", !28, i64 0}
!30 = !{!"_ZTS30btKinematicCharacterController", !24, i64 0, !9, i64 8, !25, i64 16, !26, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !27, i64 84, !27, i64 100, !27, i64 116, !27, i64 132, !27, i64 148, !9, i64 164, !27, i64 168, !29, i64 184, !29, i64 200, !18, i64 216, !17, i64 248, !27, i64 252, !9, i64 268, !9, i64 272, !17, i64 276, !17, i64 277, !17, i64 278, !17, i64 279, !9, i64 280, !27, i64 284, !27, i64 300, !17, i64 316, !17, i64 317, !17, i64 318}
!31 = !{!30, !25, i64 16}
!32 = !{!30, !9, i64 80}
!33 = !{!30, !26, i64 24}
!34 = !{!30, !17, i64 316}
!35 = !{!30, !9, i64 164}
!36 = !{!30, !17, i64 317}
!37 = !{!30, !17, i64 318}
!38 = !{!30, !9, i64 68}
!39 = !{!30, !9, i64 76}
!40 = !{!30, !9, i64 60}
!41 = !{!30, !9, i64 64}
!42 = !{i8 0, i8 2}
!43 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!44 = !{!"p2 _ZTS17btCollisionObject", !15, i64 0}
!45 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !43, i64 0, !6, i64 4, !6, i64 8, !44, i64 16, !17, i64 24}
!46 = !{!"p1 _ZTS12btDispatcher", !14, i64 0}
!47 = !{!"p1 _ZTS12btIDebugDraw", !14, i64 0}
!48 = !{!"_ZTS16btDispatcherInfo", !9, i64 0, !6, i64 4, !6, i64 8, !9, i64 12, !17, i64 16, !47, i64 24, !17, i64 32, !17, i64 33, !17, i64 34, !9, i64 36, !17, i64 40, !9, i64 44, !17, i64 48}
!49 = !{!"p1 _ZTS21btBroadphaseInterface", !14, i64 0}
!50 = !{!"_ZTS16btCollisionWorld", !45, i64 8, !46, i64 40, !48, i64 48, !49, i64 104, !47, i64 112, !17, i64 120}
!51 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!52 = !{!"_ZTS11btTransform", !51, i64 0, !27, i64 48}
!53 = !{!"p1 _ZTS17btBroadphaseProxy", !14, i64 0}
!54 = !{!"p1 _ZTS16btCollisionShape", !14, i64 0}
!55 = !{!"_ZTS18btAlignedAllocatorIPK17btCollisionObjectLj16EE"}
!56 = !{!"_ZTS20btAlignedObjectArrayIPK17btCollisionObjectE", !55, i64 0, !6, i64 4, !6, i64 8, !44, i64 16, !17, i64 24}
!57 = !{!"_ZTS17btCollisionObject", !52, i64 8, !52, i64 72, !27, i64 136, !27, i64 152, !27, i64 168, !6, i64 184, !9, i64 188, !53, i64 192, !54, i64 200, !14, i64 208, !54, i64 216, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !6, i64 272, !14, i64 280, !6, i64 288, !6, i64 292, !6, i64 296, !9, i64 300, !9, i64 304, !9, i64 308, !6, i64 312, !56, i64 320, !6, i64 352, !27, i64 356}
!58 = !{!57, !53, i64 192}
!59 = !{!50, !46, i64 40}
!60 = !{!"_ZTS13btGhostObject", !57, i64 0, !45, i64 376}
!61 = !{!"p1 _ZTS28btHashedOverlappingPairCache", !14, i64 0}
!62 = !{!"_ZTS24btPairCachingGhostObject", !60, i64 0, !61, i64 408}
!63 = !{!62, !61, i64 408}
!64 = !{!5, !5, i64 0}
!65 = !{i64 0, i64 16, !64}
!66 = !{!57, !6, i64 352}
!67 = !{}
!68 = !{!"_ZTS18btAlignedAllocatorI16btBroadphasePairLj16EE"}
!69 = !{!"p1 _ZTS16btBroadphasePair", !14, i64 0}
!70 = !{!"_ZTS20btAlignedObjectArrayI16btBroadphasePairE", !68, i64 0, !6, i64 4, !6, i64 8, !69, i64 16, !17, i64 24}
!71 = !{!70, !69, i64 16}
!72 = !{!"p1 _ZTS20btCollisionAlgorithm", !14, i64 0}
!73 = !{!"_ZTS16btBroadphasePair", !53, i64 0, !53, i64 8, !72, i64 16, !5, i64 24}
!74 = !{!73, !53, i64 0}
!75 = !{!"_ZTS17btBroadphaseProxy", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !27, i64 20, !27, i64 36}
!76 = !{!73, !53, i64 8}
!77 = !{!57, !6, i64 224}
!78 = !{!"p1 _ZTS17btCollisionObject", !14, i64 0}
!79 = !{!30, !9, i64 32}
!80 = !{!"llvm.loop.mustprogress"}
!81 = !{!30, !9, i64 36}
!82 = !{!30, !9, i64 40}
!83 = !{!"_ZTSN16btCollisionWorld20ConvexResultCallbackE", !9, i64 8, !6, i64 12, !6, i64 16}
!84 = !{!83, !9, i64 8}
!85 = !{!"_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE", !83, i64 0, !27, i64 20, !27, i64 36, !27, i64 52, !27, i64 68, !78, i64 88}
!86 = !{!85, !78, i64 88}
!87 = !{!"_ZTS43btKinematicClosestNotMeConvexResultCallback", !85, i64 0, !78, i64 96, !27, i64 104, !9, i64 120}
!88 = !{!87, !78, i64 96}
!89 = !{!87, !9, i64 120}
!90 = !{!6, !6, i64 0}
!91 = !{!30, !17, i64 278}
!92 = !{!48, !9, i64 36}
!93 = !{!30, !17, i64 248}
!94 = !{!75, !6, i64 8}
!95 = !{!75, !6, i64 12}
!96 = !{!30, !9, i64 44}
!97 = !{!30, !17, i64 276}
!98 = !{!30, !17, i64 277}
!99 = !{!30, !17, i64 279}
!100 = !{!30, !9, i64 280}
!101 = !{!30, !9, i64 48}
!102 = !{!17, !17, i64 0}
!103 = !{ptr @_ZN30btKinematicCharacterControllerD2Ev}
!104 = distinct !{!104, !80}
!105 = distinct !{!105, !80}
!106 = distinct !{!106, !80}
!107 = !{!50, !49, i64 104}
!108 = !{!"p1 _ZTS20btPersistentManifold", !14, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!75, !14, i64 0}
!111 = !{!73, !72, i64 16}
!112 = !{!"_ZTS13btTypedObject", !6, i64 0}
!113 = !{!"_ZTS20btPersistentManifold", !112, i64 0, !5, i64 8, !78, i64 840, !78, i64 848, !6, i64 856, !9, i64 860, !9, i64 864, !6, i64 868, !6, i64 872, !6, i64 876}
!114 = !{!113, !78, i64 840}
!115 = !{!113, !6, i64 856}
!116 = !{!"_ZTS15btManifoldPoint", !27, i64 0, !27, i64 16, !27, i64 32, !27, i64 48, !27, i64 64, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !14, i64 120, !6, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !5, i64 156, !5, i64 160, !9, i64 164, !6, i64 168, !27, i64 172, !27, i64 188}
!117 = !{!116, !9, i64 80}
!118 = distinct !{!118, !80}
!119 = !{!70, !6, i64 4}
!120 = !{!30, !9, i64 272}
!121 = !{!30, !9, i64 268}
!122 = !{!30, !9, i64 52}
!123 = !{!30, !9, i64 56}
!124 = !{!"branch_weights", i32 1, i32 1048575}
!125 = !{!83, !6, i64 16}
!126 = !{!83, !6, i64 12}
!127 = !{!"p1 _ZTSN16btCollisionWorld14LocalShapeInfoE", !14, i64 0}
!128 = !{!"_ZTSN16btCollisionWorld17LocalConvexResultE", !78, i64 0, !127, i64 8, !27, i64 16, !27, i64 32, !9, i64 48}
!129 = !{!128, !78, i64 0}
!130 = !{!128, !9, i64 48}
end_hunk_1
