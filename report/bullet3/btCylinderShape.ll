Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btCylinderShape?download=true
inline.NumInlined: 173
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0

$_ZN15btCylinderShapeD0Ev = comdat any

$_ZN15btCylinderShape15setLocalScalingERK9btVector3 = comdat any

$_ZNK21btConvexInternalShape15getLocalScalingEv = comdat any

$_ZNK15btCylinderShape7getNameEv = comdat any

$_ZNK15btCylinderShape38getAnisotropicRollingFrictionDirectionEv = comdat any

$_ZN15btCylinderShape9setMarginEf = comdat any

$_ZNK21btConvexInternalShape9getMarginEv = comdat any

$_ZNK15btCylinderShape28calculateSerializeBufferSizeEv = comdat any

$_ZNK15btCylinderShape9serializeEPvP12btSerializer = comdat any

$_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3 = comdat any

$_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv = comdat any

$_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 = comdat any

$_ZNK15btCylinderShape9getRadiusEv = comdat any

$_ZN16btCylinderShapeXD0Ev = comdat any

$_ZNK16btCylinderShapeX7getNameEv = comdat any

$_ZNK16btCylinderShapeX9getRadiusEv = comdat any

$_ZN16btCylinderShapeZD0Ev = comdat any

$_ZNK16btCylinderShapeZ7getNameEv = comdat any

$_ZNK16btCylinderShapeZ9getRadiusEv = comdat any

$__clang_call_terminate = comdat any

@_ZTV15btCylinderShape = dso_local constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTI15btCylinderShape, ptr @_ZN13btConvexShapeD2Ev, ptr @_ZN15btCylinderShapeD0Ev, ptr @_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEf, ptr @_ZN15btCylinderShape15setLocalScalingERK9btVector3, ptr @_ZNK21btConvexInternalShape15getLocalScalingEv, ptr @_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK15btCylinderShape7getNameEv, ptr @_ZNK15btCylinderShape38getAnisotropicRollingFrictionDirectionEv, ptr @_ZN15btCylinderShape9setMarginEf, ptr @_ZNK21btConvexInternalShape9getMarginEv, ptr @_ZNK15btCylinderShape28calculateSerializeBufferSizeEv, ptr @_ZNK15btCylinderShape9serializeEPvP12btSerializer, ptr @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer, ptr @_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3, ptr @_ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3, ptr @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_, ptr @_ZNK15btCylinderShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, ptr @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_, ptr @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, ptr @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, ptr @_ZNK15btCylinderShape9getRadiusEv] }, align 8
@_ZTV16btCylinderShapeX = dso_local constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTI16btCylinderShapeX, ptr @_ZN13btConvexShapeD2Ev, ptr @_ZN16btCylinderShapeXD0Ev, ptr @_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEf, ptr @_ZN15btCylinderShape15setLocalScalingERK9btVector3, ptr @_ZNK21btConvexInternalShape15getLocalScalingEv, ptr @_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK16btCylinderShapeX7getNameEv, ptr @_ZNK15btCylinderShape38getAnisotropicRollingFrictionDirectionEv, ptr @_ZN15btCylinderShape9setMarginEf, ptr @_ZNK21btConvexInternalShape9getMarginEv, ptr @_ZNK15btCylinderShape28calculateSerializeBufferSizeEv, ptr @_ZNK15btCylinderShape9serializeEPvP12btSerializer, ptr @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer, ptr @_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3, ptr @_ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3, ptr @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_, ptr @_ZNK16btCylinderShapeX49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, ptr @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_, ptr @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, ptr @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, ptr @_ZNK16btCylinderShapeX9getRadiusEv] }, align 8
@_ZTV16btCylinderShapeZ = dso_local constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTI16btCylinderShapeZ, ptr @_ZN13btConvexShapeD2Ev, ptr @_ZN16btCylinderShapeZD0Ev, ptr @_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEf, ptr @_ZN15btCylinderShape15setLocalScalingERK9btVector3, ptr @_ZNK21btConvexInternalShape15getLocalScalingEv, ptr @_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK16btCylinderShapeZ7getNameEv, ptr @_ZNK15btCylinderShape38getAnisotropicRollingFrictionDirectionEv, ptr @_ZN15btCylinderShape9setMarginEf, ptr @_ZNK21btConvexInternalShape9getMarginEv, ptr @_ZNK15btCylinderShape28calculateSerializeBufferSizeEv, ptr @_ZNK15btCylinderShape9serializeEPvP12btSerializer, ptr @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer, ptr @_ZNK15btCylinderShape24localGetSupportingVertexERK9btVector3, ptr @_ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3, ptr @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_, ptr @_ZNK16btCylinderShapeZ49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, ptr @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_, ptr @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, ptr @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3, ptr @_ZNK16btCylinderShapeZ9getRadiusEv] }, align 8
@_ZTI15btCylinderShape = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15btCylinderShape, ptr @_ZTI21btConvexInternalShape }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS15btCylinderShape = dso_local constant [18 x i8] c"15btCylinderShape\00", align 1
@_ZTI21btConvexInternalShape = external constant ptr
@_ZTI16btCylinderShapeX = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16btCylinderShapeX, ptr @_ZTI15btCylinderShape }, align 8
@_ZTS16btCylinderShapeX = dso_local constant [19 x i8] c"16btCylinderShapeX\00", align 1
@_ZTI16btCylinderShapeZ = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16btCylinderShapeZ, ptr @_ZTI15btCylinderShape }, align 8
@_ZTS16btCylinderShapeZ = dso_local constant [19 x i8] c"16btCylinderShapeZ\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"CylinderY\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"btCylinderShapeData\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"CylinderX\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"CylinderZ\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN15btCylinderShapeC1ERK9btVector3 = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN15btCylinderShapeC2ERK9btVector3
@_ZN16btCylinderShapeXC1ERK9btVector3 = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN16btCylinderShapeXC2ERK9btVector3
@_ZN16btCylinderShapeZC1ERK9btVector3 = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN16btCylinderShapeZC2ERK9btVector3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15btCylinderShapeC2ERK9btVector3(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  tail call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTV15btCylinderShape, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !19 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load float, ptr %i.h, align 8, !tbaa !20
  %i.j = fmul float %i.g, %i.i
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !20
  %i.l = load <2 x float>, ptr %i.d, align 8, !tbaa !20
  %i.m = fmul <2 x float> %i.k, %i.l
  %i.n = insertelement <2 x float> poison, float %i.c, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fsub <2 x float> %i.m, %i.o
  %i.q = fsub float %i.j, %i.c
  %.sroa.3.12.vec.insert.i13 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.q, i64 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store <2 x float> %i.p, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i13, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21
  %i.s = load float, ptr %1, align 4, !tbaa !20   ; 2 uses
  %i.t = load float, ptr %i.e, align 4, !tbaa !20 ; 2 uses
  %i.u = fcmp uge float %i.s, %i.t                ; 2 uses
  %i.v = load float, ptr %i.f, align 4, !tbaa !20
  %..i.i = select i1 %i.u, float %i.t, float %i.s
  %i.w = fcmp olt float %..i.i, %i.v
  %i.x = zext i1 %i.u to i64
  %i.y = select i1 %i.w, i64 %i.x, i64 2
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4, !tbaa !20
  %i.ab = fmul float %i.aa, 1.000000e-01          ; 2 uses
  %i.ac = fcmp olt float %i.ab, %i.c
  br i1 %i.ac, label %.noexc20, label %_ZN21btConvexInternalShape13setSafeMarginERK9btVector3f.exit

.noexc20:                                         ; preds = %.noexc
  %i.ad = tail call noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(72) %0), !inline_history !22
  %i.ae = load ptr, ptr %0, align 8, !tbaa !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = invoke noundef float %i.ag(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %.noexc21 unwind label %bb.a, !inline_history !22

.noexc21:                                         ; preds = %.noexc20
  %i.ai = load ptr, ptr %0, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef float %i.ak(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %.noexc22 unwind label %bb.a, !inline_history !22

.noexc22:                                         ; preds = %.noexc21
  %i.am = load <2 x float>, ptr %i.r, align 8, !tbaa !20
  %i.an = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.ah, i64 1
  %i.ap = fadd <2 x float> %i.ao, %i.am
  %i.aq = load float, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !20
  %i.ar = fadd float %i.al, %i.aq
  store float %i.ab, ptr %i.b, align 8, !tbaa !19
  %i.as = load ptr, ptr %0, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef float %i.au(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %.noexc23 unwind label %bb.a, !inline_history !22

.noexc23:                                         ; preds = %.noexc22
  %i.aw = load ptr, ptr %0, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef float %i.ay(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %.noexc24 unwind label %bb.a, !inline_history !22

.noexc24:                                         ; preds = %.noexc23
  %i.ba = load ptr, ptr %0, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef float %i.bc(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %_ZN15btCylinderShape9setMarginEf.exit unwind label %bb.a, !inline_history !22

_ZN15btCylinderShape9setMarginEf.exit:            ; preds = %.noexc24
  %i.be = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.az, i64 1
  %i.bg = fsub <2 x float> %i.ap, %i.bf
  %i.bh = fsub float %i.ar, %i.bd
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bh, i64 0
  store <2 x float> %i.bg, ptr %i.r, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !21
  br label %_ZN21btConvexInternalShape13setSafeMarginERK9btVector3f.exit

_ZN21btConvexInternalShape13setSafeMarginERK9btVector3f.exit: ; preds = %_ZN15btCylinderShape9setMarginEf.exit, %.noexc
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 13, ptr %i.bi, align 8, !tbaa !23
  ret void

bb.a:                                             ; preds = %.noexc24, %.noexc23, %.noexc22, %.noexc21, %.noexc20
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #13
  resume { ptr, i32 } %i.bj
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btCylinderShapeXC2ERK9btVector3(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN15btCylinderShapeC2ERK9btVector3(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTV16btCylinderShapeX, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btCylinderShapeZC2ERK9btVector3(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN15btCylinderShapeC2ERK9btVector3(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTV16btCylinderShapeZ, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 2, ptr %i.a, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK15btCylinderShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !20, !noalias !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load float, ptr %i.i, align 4, !tbaa !20, !noalias !24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load float, ptr %i.k, align 4, !tbaa !20, !noalias !24
  %i.m = tail call noundef float @llvm.fabs.f32(float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !20, !noalias !24
  %i.p = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.o) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.731.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.731.0.copyload.i = load float, ptr %.sroa.731.0..sroa_idx.i, align 4 ; 2 uses
  %4 = load <3 x float>, ptr %i.a, align 8, !tbaa !20
  %5 = insertelement <3 x float> poison, float %i.e, i64 0
  %6 = shufflevector <3 x float> %5, <3 x float> poison, <3 x i32> zeroinitializer
  %7 = fadd <3 x float> %6, %4                    ; 6 uses
  %i.r = load <2 x float>, ptr %1, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.s = load <2 x float>, ptr %i.h, align 4, !tbaa !20, !noalias !24 ; 2 uses
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 2>
  %i.u = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.t)
  %i.v = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 1, i32 3>
  %i.w = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.v)
  %i.x = insertelement <2 x float> poison, float %i.g, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.j, i64 1
  %i.z = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.y)
  %i.aa = load <2 x float>, ptr %i.q, align 4     ; 2 uses
  %8 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %9 = fmul <2 x float> %8, %i.w
  %i.ab = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> zeroinitializer
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.u, <2 x float> %9)
  %11 = shufflevector <3 x float> %7, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %i.z, <2 x float> %10) ; 2 uses
  %13 = extractelement <3 x float> %7, i64 1
  %14 = extractelement <2 x float> %i.p, i64 0
  %15 = fmul float %13, %14
  %16 = extractelement <3 x float> %7, i64 0
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %i.m, float %15)
  %18 = extractelement <3 x float> %7, i64 2
  %19 = extractelement <2 x float> %i.p, i64 1
  %20 = tail call noundef float @llvm.fmuladd.f32(float %18, float %19, float %17) ; 2 uses
  %i.ac = fsub <2 x float> %i.aa, %12
  %i.ad = fsub float %.sroa.731.0.copyload.i, %20
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  store <2 x float> %i.ac, ptr %2, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !21
  %i.ae = fadd <2 x float> %12, %i.aa
  %i.af = fadd float %.sroa.731.0.copyload.i, %20
  %.sroa.3.12.vec.insert.i19.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %i.ae, ptr %3, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i19.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(76) %0, float noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 8 ; 2 uses
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.67.0.copyload.i = load <2 x float>, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !21
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !27
  %i.f = load ptr, ptr %0, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !27
  %i.j = load ptr, ptr %0, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !27
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %i.n = fadd float %.sroa.03.0.vec.extract.i, %i.e ; 6 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %i.o = fadd float %.sroa.03.4.vec.extract.i, %i.i ; 4 uses
  %i.p = fdiv float %1, 1.200000e+01              ; 3 uses
  %i.q = fmul float %1, 2.500000e-01              ; 3 uses
  %i.r = fmul float %1, 5.000000e-01              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load i32, ptr %i.s, align 8, !tbaa !11
  switch i32 %i.t, label %bb.b [
    i32 0, label %.thread
    i32 2, label %.thread67
  ]

.thread:                                          ; preds = %bb.a
  %i.u = fmul float %i.o, %i.o                    ; 2 uses
  %i.v = fmul float %i.n, 4.000000e+00
  %i.w = fmul float %i.n, %i.v
  %i.x = fmul float %i.q, %i.u
  %i.y = tail call float @llvm.fmuladd.f32(float %i.p, float %i.w, float %i.x) ; 2 uses
  %i.z = fmul float %i.r, %i.u
  br label %bb.c

.thread67:                                        ; preds = %bb.a
  %.sroa.67.8.vec.extract.i = extractelement <2 x float> %.sroa.67.0.copyload.i, i64 0
  %i.aa = fadd float %.sroa.67.8.vec.extract.i, %i.m ; 2 uses
  %i.ab = fmul float %i.n, %i.n                   ; 2 uses
  %i.ac = fmul float %i.aa, 4.000000e+00
  %i.ad = fmul float %i.aa, %i.ac
  %i.ae = fmul float %i.q, %i.ab
  %i.af = tail call float @llvm.fmuladd.f32(float %i.p, float %i.ad, float %i.ae) ; 2 uses
  %i.ag = fmul float %i.r, %i.ab
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ah = fmul float %i.n, %i.n                   ; 2 uses
  %i.ai = fmul float %i.o, 4.000000e+00
  %i.aj = fmul float %i.o, %i.ai
  %i.ak = fmul float %i.q, %i.ah
  %i.al = tail call float @llvm.fmuladd.f32(float %i.p, float %i.aj, float %i.ak) ; 2 uses
  %i.am = fmul float %i.r, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread67, %.thread
  %.sink75 = phi float [ %i.al, %bb.b ], [ %i.af, %.thread67 ], [ %i.z, %.thread ]
  %.sink73 = phi float [ %i.am, %bb.b ], [ %i.af, %.thread67 ], [ %i.y, %.thread ]
  %.sink = phi float [ %i.al, %bb.b ], [ %i.ag, %.thread67 ], [ %i.y, %.thread ]
  store float %.sink75, ptr %2, align 4, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink73, ptr %i.an, align 4, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink, ptr %i.ao, align 4, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK16btCylinderShapeX37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load float, ptr %i.b, align 4, !tbaa !20 ; 2 uses
  %i.d = load float, ptr %i.a, align 8, !tbaa !20 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !20 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !20 ; 3 uses
  %i.i = fmul float %i.h, %i.h
  %i.j = tail call float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.i) ; 2 uses
  %i.k = fcmp une float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.j)
  %i.l = fdiv float %i.c, %sqrt.i                 ; 2 uses
  %i.m = fmul float %i.f, %i.l
  %i.n = load float, ptr %1, align 4, !tbaa !20
  %i.o = fcmp olt float %i.n, 0.000000e+00
  %i.p = fneg float %i.d
  %i.q = select i1 %i.o, float %i.p, float %i.d
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %i.r, float %i.m, i64 1
  %i.s = fmul float %i.h, %i.l
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.s, i64 0
  br label %_Z21CylinderLocalSupportXRK9btVector3S1_.exit

bb.c:                                             ; preds = %bb.a
  %i.t = load float, ptr %1, align 4, !tbaa !20
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %i.v = fneg float %i.d
  %i.w = select i1 %i.u, float %i.v, float %i.d
  %i.x = insertelement <2 x float> poison, float %i.w, i64 0
  %.sroa.0.0.vec.insert22.i = insertelement <2 x float> %i.x, float %i.c, i64 1
  br label %_Z21CylinderLocalSupportXRK9btVector3S1_.exit

_Z21CylinderLocalSupportXRK9btVector3S1_.exit:    ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.b ], [ <float 0.000000e+00, float undef>, %bb.c ]
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.vec.insert.i, %bb.b ], [ %.sroa.0.0.vec.insert22.i, %bb.c ]
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.5.0.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK16btCylinderShapeZ37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load float, ptr %i.c, align 8, !tbaa !20 ; 4 uses
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !20 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.g = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.h = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.f) ; 2 uses
  %i.i = fcmp une float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.h)
  %i.j = fdiv float %i.b, %sqrt.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !20
  %i.m = fcmp olt float %i.l, 0.000000e+00
  %i.n = fneg float %i.d
  %i.o = select i1 %i.m, float %i.n, float %i.d
  %.sroa.5.8.vec.insert.i = insertelement <2 x float> <float poison, float undef>, float %i.o, i64 0
  %i.p = insertelement <2 x float> poison, float %i.j, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.e, %i.q
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !20
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %i.v = fneg float %i.d
  %i.w = select i1 %i.u, float %i.v, float %i.d
  %.sroa.5.8.vec.insert27.i = insertelement <2 x float> <float poison, float undef>, float %i.w, i64 0
  %.sroa.0.4.vec.insert24.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.b, i64 0
  br label %_Z21CylinderLocalSupportZRK9btVector3S1_.exit

_Z21CylinderLocalSupportZRK9btVector3S1_.exit:    ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi <2 x float> [ %.sroa.5.8.vec.insert.i, %bb.b ], [ %.sroa.5.8.vec.insert27.i, %bb.c ]
  %.sroa.0.0.i = phi <2 x float> [ %i.r, %bb.b ], [ %.sroa.0.4.vec.insert24.i, %bb.c ]
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %.sroa.5.0.i, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK15btCylinderShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 8, !tbaa !20 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load float, ptr %i.c, align 4, !tbaa !20 ; 4 uses
  %i.e = load float, ptr %1, align 4, !tbaa !20   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !20 ; 3 uses
  %i.h = fmul float %i.g, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.h) ; 2 uses
  %i.j = fcmp une float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.i)
  %i.k = fdiv float %i.b, %sqrt.i                 ; 2 uses
  %i.l = fmul float %i.e, %i.k
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.l, i64 0
end_hunk_0
