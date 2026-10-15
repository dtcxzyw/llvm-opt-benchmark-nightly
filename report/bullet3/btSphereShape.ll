Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSphereShape?download=true
inline.NumInlined: 31
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN13btSphereShapeD0Ev = comdat any

$_ZNK21btConvexInternalShape15getLocalScalingEv = comdat any

$_ZNK13btSphereShape7getNameEv = comdat any

$_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv = comdat any

$_ZN13btSphereShape9setMarginEf = comdat any

$_ZNK13btSphereShape9getMarginEv = comdat any

$_ZNK21btConvexInternalShape28calculateSerializeBufferSizeEv = comdat any

$_ZNK21btConvexInternalShape9serializeEPvP12btSerializer = comdat any

$_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv = comdat any

$_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 = comdat any

$__clang_call_terminate = comdat any

@_ZTV13btSphereShape = dso_local local_unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTI13btSphereShape, ptr @_ZN13btConvexShapeD2Ev, ptr @_ZN13btSphereShapeD0Ev, ptr @_ZNK13btSphereShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEf, ptr @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3, ptr @_ZNK21btConvexInternalShape15getLocalScalingEv, ptr @_ZNK13btSphereShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK13btSphereShape7getNameEv, ptr @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv, ptr @_ZN13btSphereShape9setMarginEf, ptr @_ZNK13btSphereShape9getMarginEv, ptr @_ZNK21btConvexInternalShape28calculateSerializeBufferSizeEv, ptr @_ZNK21btConvexInternalShape9serializeEPvP12btSerializer, ptr @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer, ptr @_ZNK13btSphereShape24localGetSupportingVertexERK9btVector3, ptr @_ZNK13btSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3, ptr @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_, ptr @_ZNK13btSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, ptr @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_, ptr @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, ptr @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3] }, align 8
@_ZTI13btSphereShape = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13btSphereShape, ptr @_ZTI21btConvexInternalShape }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13btSphereShape = dso_local constant [16 x i8] c"13btSphereShape\00", align 1
@_ZTI21btConvexInternalShape = external constant ptr
@.str = private unnamed_addr constant [7 x i8] c"SPHERE\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"btConvexInternalShapeData\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef { <2 x float>, <2 x float> } @_ZNK13btSphereShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } zeroinitializer
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK13btSphereShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %3 to i64
  %i.c = shl nuw nsw i64 %i.b, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %i.c, i1 false), !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK13btSphereShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { <2 x float>, <2 x float> } %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) ; 2 uses
  %i.e = extractvalue { <2 x float>, <2 x float> } %i.d, 0 ; 2 uses
  %i.f = extractvalue { <2 x float>, <2 x float> } %i.d, 1 ; 2 uses
  %.sroa.06.0.copyload = load float, ptr %1, align 4 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4 ; 3 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 4 ; 3 uses
  %i.g = fmul float %.sroa.8.0.copyload, %.sroa.8.0.copyload
  %i.h = tail call float @llvm.fmuladd.f32(float %.sroa.06.0.copyload, float %.sroa.06.0.copyload, float %i.g)
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.0.copyload, float %.sroa.13.0.copyload, float %i.h)
  %i.j = fcmp olt float %i.i, f0x28800000         ; 3 uses
  %.sroa.06.0 = select i1 %i.j, float -1.000000e+00, float %.sroa.06.0.copyload ; 3 uses
  %.sroa.8.0 = select i1 %i.j, float -1.000000e+00, float %.sroa.8.0.copyload ; 3 uses
  %.sroa.13.0 = select i1 %i.j, float -1.000000e+00, float %.sroa.13.0.copyload ; 3 uses
  %i.k = fmul float %.sroa.8.0, %.sroa.8.0
  %i.l = tail call float @llvm.fmuladd.f32(float %.sroa.06.0, float %.sroa.06.0, float %i.k)
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %.sroa.13.0, float %.sroa.13.0, float %i.l)
  %sqrt.i.i = tail call noundef float @sqrtf(float noundef %i.m) #14
  %i.n = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.o = fmul float %i.n, %.sroa.06.0
  %i.p = fmul float %i.n, %.sroa.8.0
  %i.q = fmul float %i.n, %.sroa.13.0
  %i.r = load ptr, ptr %0, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef float %i.t(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 3 uses
  %i.v = fmul float %i.u, %i.o
  %i.w = fmul float %i.u, %i.p
  %i.x = fmul float %i.u, %i.q
  %.sroa.013.0.vec.extract = extractelement <2 x float> %i.e, i64 0
  %i.y = fadd float %.sroa.013.0.vec.extract, %i.v
  %.sroa.013.0.vec.insert = insertelement <2 x float> poison, float %i.y, i64 0
  %.sroa.013.4.vec.extract = extractelement <2 x float> %i.e, i64 1
  %i.z = fadd float %.sroa.013.4.vec.extract, %i.w
  %.sroa.013.4.vec.insert = insertelement <2 x float> %.sroa.013.0.vec.insert, float %i.z, i64 1
  %.sroa.6.8.vec.extract = extractelement <2 x float> %i.f, i64 0
  %i.aa = fadd float %.sroa.6.8.vec.extract, %i.x
  %.sroa.6.8.vec.insert = insertelement <2 x float> %i.f, float %i.aa, i64 0
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.013.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.8.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK13btSphereShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.j = load ptr, ptr %0, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.n = load <2 x float>, ptr %i.a, align 4, !tbaa !10
  %i.o = insertelement <2 x float> poison, float %i.e, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.i, i64 1 ; 2 uses
  %i.q = fsub <2 x float> %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !10
  %i.t = fsub float %i.s, %i.m
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
  store <2 x float> %i.q, ptr %2, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !19
  %i.u = load <2 x float>, ptr %i.a, align 4, !tbaa !10
  %i.v = fadd <2 x float> %i.p, %i.u
  %i.w = load float, ptr %i.r, align 4, !tbaa !10
  %i.x = fadd float %i.m, %i.w
  %.sroa.3.12.vec.insert.i10 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.x, i64 0
  store <2 x float> %i.v, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i10, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK13btSphereShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = fmul float %1, 4.000000e-01
  %i.b = load ptr, ptr %0, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.f = fmul float %i.a, %i.e
  %i.g = load ptr, ptr %0, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef float %i.i(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %.scalar = fmul float %i.f, %i.j
  %i.k = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0
  %i.l = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.l, ptr %2, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind
declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13btSphereShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) #14
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btSphereShapedlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #15
  unreachable

_ZN13btSphereShapedlEPv.exit:                     ; preds = %bb.a
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #6

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) unnamed_addr #6

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13btSphereShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float 1.000000e+00), <2 x float> <float 1.000000e+00, float 0.000000e+00> }
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13btSphereShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(72) %0, float noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %1, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK13btSphereShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load float, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load float, ptr %i.c, align 8, !tbaa !10
  %i.e = fmul float %i.b, %i.d
  ret float %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 56
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK21btConvexInternalShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load float, ptr %i.b, align 8, !tbaa !10
  store float %i.d, ptr %i.c, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load float, ptr %i.e, align 4, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.f, ptr %i.g, align 4, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load float, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float %i.i, ptr %i.j, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = load float, ptr %i.k, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  store float %i.l, ptr %i.m, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load float, ptr %i.n, align 8, !tbaa !10
  store float %i.p, ptr %i.o, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.r = load float, ptr %i.q, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.r, ptr %i.s, align 4, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load float, ptr %i.t, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.u, ptr %i.v, align 4, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.x = load float, ptr %i.w, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.x, ptr %i.y, align 4, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load float, ptr %i.z, align 8, !tbaa !18
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.aa, ptr %i.ab, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 52
  store i32 0, ptr %i.ac, align 4, !tbaa !25
  ret ptr @.str.1
}

declare void @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #6

declare void @_ZNK13btConvexShape7projectERK11btTransformRK9btVector3RfS6_RS3_S7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #6

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

declare noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }

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
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"_ZTS16btCollisionShape", !6, i64 8, !13, i64 16, !6, i64 24, !6, i64 28}
!15 = !{!"_ZTS13btConvexShape", !14, i64 0}
!16 = !{!"_ZTS9btVector3", !5, i64 0}
!17 = !{!"_ZTS21btConvexInternalShape", !15, i64 0, !16, i64 32, !16, i64 48, !9, i64 64, !9, i64 68}
!18 = !{!17, !9, i64 64}
!19 = !{!5, !5, i64 0}
!20 = !{!"p1 omnipotent char", !13, i64 0}
!21 = !{!"_ZTS20btCollisionShapeData", !20, i64 0, !6, i64 8, !5, i64 12}
!22 = !{!"_ZTS18btVector3FloatData", !5, i64 0}
!23 = !{!"_ZTS25btConvexInternalShapeData", !21, i64 0, !22, i64 16, !22, i64 32, !9, i64 48, !6, i64 52}
!24 = !{!23, !9, i64 48}
!25 = !{!23, !6, i64 52}
end_hunk_0
