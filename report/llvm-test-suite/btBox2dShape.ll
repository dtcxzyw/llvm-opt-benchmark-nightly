inline.NumInlined: 156
inline.NumDeleted: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector4 = type { %class.btVector3 }
%class.btVector3 = type { [4 x float] }

$_ZN12btBox2dShapeD0Ev = comdat any

$_ZN12btBox2dShape15setLocalScalingERK9btVector3 = comdat any

$_ZNK21btConvexInternalShape15getLocalScalingEv = comdat any

$_ZNK12btBox2dShape7getNameEv = comdat any

$_ZN12btBox2dShape9setMarginEf = comdat any

$_ZNK21btConvexInternalShape9getMarginEv = comdat any

$_ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3 = comdat any

$_ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3 = comdat any

$_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i = comdat any

$_ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv = comdat any

$_ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3 = comdat any

$_ZNK12btBox2dShape14getNumVerticesEv = comdat any

$_ZNK12btBox2dShape11getNumEdgesEv = comdat any

$_ZNK12btBox2dShape7getEdgeEiR9btVector3S1_ = comdat any

$_ZNK12btBox2dShape9getVertexEiR9btVector3 = comdat any

$_ZNK12btBox2dShape12getNumPlanesEv = comdat any

$_ZNK12btBox2dShape8getPlaneER9btVector3S1_i = comdat any

$_ZNK12btBox2dShape8isInsideERK9btVector3f = comdat any

$_ZNK12btBox2dShape16getPlaneEquationER9btVector4i = comdat any

$__clang_call_terminate = comdat any

@_ZTV12btBox2dShape = dso_local unnamed_addr constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr @_ZTI12btBox2dShape, ptr @_ZN13btConvexShapeD2Ev, ptr @_ZN12btBox2dShapeD0Ev, ptr @_ZNK12btBox2dShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEv, ptr @_ZN12btBox2dShape15setLocalScalingERK9btVector3, ptr @_ZNK21btConvexInternalShape15getLocalScalingEv, ptr @_ZNK12btBox2dShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK12btBox2dShape7getNameEv, ptr @_ZN12btBox2dShape9setMarginEf, ptr @_ZNK21btConvexInternalShape9getMarginEv, ptr @_ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3, ptr @_ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3, ptr @_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, ptr @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_, ptr @_ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv, ptr @_ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3, ptr @_ZNK12btBox2dShape14getNumVerticesEv, ptr @_ZNK12btBox2dShape11getNumEdgesEv, ptr @_ZNK12btBox2dShape7getEdgeEiR9btVector3S1_, ptr @_ZNK12btBox2dShape9getVertexEiR9btVector3, ptr @_ZNK12btBox2dShape12getNumPlanesEv, ptr @_ZNK12btBox2dShape8getPlaneER9btVector3S1_i, ptr @_ZNK12btBox2dShape8isInsideERK9btVector3f, ptr @_ZNK12btBox2dShape16getPlaneEquationER9btVector4i] }, align 8
@_ZTI12btBox2dShape = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12btBox2dShape, ptr @_ZTI23btPolyhedralConvexShape }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12btBox2dShape = dso_local constant [15 x i8] c"12btBox2dShape\00", align 1
@_ZTI23btPolyhedralConvexShape = external constant ptr
@.str = private unnamed_addr constant [6 x i8] c"Box2d\00", align 1
@switch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3 = private unnamed_addr constant [6 x float] [float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@switch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.1 = private unnamed_addr constant [6 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@switch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.2 = private unnamed_addr constant [6 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float -1.000000e+00], align 4
@switch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_ = private unnamed_addr constant [12 x i8] c"\00\00\01\02\00\01\02\03\04\04\05\06", align 4
@switch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_.3 = private unnamed_addr constant [12 x i8] c"\01\02\03\03\04\05\06\07\05\06\07\07", align 4

; Function Attrs: uwtable
define dso_local void @_ZNK12btBox2dShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 3 uses
  %i.f = load float, ptr %i.a, align 8, !tbaa !10
  %i.g = fadd float %i.e, %i.f                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load float, ptr %i.h, align 4, !tbaa !10
  %i.j = fadd float %i.e, %i.i                    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load float, ptr %i.k, align 8, !tbaa !10
  %i.m = fadd float %i.e, %i.l                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !10, !noalias !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load float, ptr %i.q, align 4, !tbaa !10, !noalias !12
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load float, ptr %i.s, align 4, !tbaa !10, !noalias !12
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.w = load float, ptr %i.v, align 4, !tbaa !10, !noalias !12
  %i.x = tail call noundef float @llvm.fabs.f32(float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load float, ptr %i.y, align 4, !tbaa !10, !noalias !12
  %i.aa = tail call noundef float @llvm.fabs.f32(float %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.7.0.copyload.i = load float, ptr %.sroa.7.0..sroa_idx.i, align 4 ; 2 uses
  %i.ac = fmul float %i.j, %i.x
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.u, float %i.g, float %i.ac)
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.aa, float %i.m, float %i.ad) ; 2 uses
  %i.af = load <2 x float>, ptr %1, align 4, !tbaa !10, !noalias !12 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.p, align 4, !tbaa !10, !noalias !12 ; 2 uses
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.ai = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ah)
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> %i.ag, <2 x i32> <i32 1, i32 3>
  %i.ak = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aj)
  %i.al = insertelement <2 x float> poison, float %i.o, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.r, i64 1
  %i.an = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.am)
  %i.ao = load <2 x float>, ptr %i.ab, align 4    ; 2 uses
  %i.ap = insertelement <2 x float> poison, float %i.j, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.aq, %i.ak
  %i.as = insertelement <2 x float> poison, float %i.g, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.at, <2 x float> %i.ar)
  %i.av = insertelement <2 x float> poison, float %i.m, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.aw, <2 x float> %i.au) ; 2 uses
  %i.ay = fsub <2 x float> %i.ao, %i.ax
  %i.az = fsub float %.sroa.7.0.copyload.i, %i.ae
  %.sroa.3.12.vec.insert.i9.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  store <2 x float> %i.ay, ptr %2, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i9.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !15
  %i.ba = fadd <2 x float> %i.ax, %i.ao
  %i.bb = fadd float %.sroa.7.0.copyload.i, %i.ae
  %.sroa.3.12.vec.insert.i14.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bb, i64 0
  store <2 x float> %i.ba, ptr %3, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i14.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !15
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK12btBox2dShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(208) %0, float noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.03.0.copyload.i = load <2 x float>, ptr %i.a, align 8
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.67.0.copyload.i = load <2 x float>, ptr %.sroa.67.0..sroa_idx.i, align 8, !tbaa !15
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(208) %0), !inline_history !16
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(208) %0), !inline_history !16
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(208) %0), !inline_history !16
  %.sroa.67.8.vec.extract.i = extractelement <2 x float> %.sroa.67.0.copyload.i, i64 0
  %3 = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 poison>
  %4 = insertelement <4 x float> %3, float 1.000000e+00, i64 3
  %5 = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.i, i64 0
  %6 = insertelement <4 x float> %5, float %i.e, i64 1
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %8 = fadd <4 x float> %4, %7                    ; 3 uses
  %9 = fadd float %.sroa.67.8.vec.extract.i, %i.m
  %10 = fmul <4 x float> %8, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 0.000000e+00>
  %11 = fmul <4 x float> %8, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %12 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %9, i64 0
  %13 = shufflevector <4 x float> %12, <4 x float> %8, <4 x i32> <i32 0, i32 0, i32 4, i32 3>
  %14 = fmul <4 x float> %13, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %15 = fdiv float %1, 1.200000e+01
  %16 = fmul <4 x float> %14, %14
  %17 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %11, <4 x float> %16)
  %i.n = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %15, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.p = fmul <4 x float> %i.o, %17
  store <4 x float> %i.p, ptr %2, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN12btBox2dShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #9
  unreachable
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btBox2dShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef float %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !10
  %i.p = fadd float %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load float, ptr %i.r, align 8, !tbaa !10
  %i.t = fdiv float %i.p, %i.s
  %i.u = load <2 x float>, ptr %i.m, align 8, !tbaa !10
  %i.v = insertelement <2 x float> poison, float %i.d, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.h, i64 1 ; 2 uses
  %i.x = fadd <2 x float> %i.w, %i.u
  %i.y = load <2 x float>, ptr %i.q, align 8, !tbaa !10
  %i.z = fdiv <2 x float> %i.x, %i.y
  tail call void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  %i.aa = load <2 x float>, ptr %i.q, align 8, !tbaa !10
  %i.ab = fmul <2 x float> %i.z, %i.aa
  %i.ac = load float, ptr %i.r, align 8, !tbaa !10
  %i.ad = fmul float %i.t, %i.ac
  %i.ae = fsub <2 x float> %i.ab, %i.w
  %i.af = fsub float %i.ad, %i.l
  %.sroa.3.12.vec.insert.i14 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %i.ae, ptr %i.m, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i14, ptr %i.n, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12btBox2dShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btBox2dShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(208) %0, float noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef float %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.e = load ptr, ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef float %i.g(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load float, ptr %i.n, align 8, !tbaa !10
  %i.p = fadd float %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.q, align 8, !tbaa !17
  %i.r = load ptr, ptr %0, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load <2 x float>, ptr %i.m, align 8, !tbaa !10
  %i.v = insertelement <2 x float> poison, float %i.d, i64 0
  %i.w = insertelement <2 x float> %i.v, float %i.h, i64 1
  %i.x = fadd <2 x float> %i.w, %i.u
  %i.y = tail call noundef float %i.t(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef float %i.ab(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.ad = load ptr, ptr %0, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef float %i.af(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.ah = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.ac, i64 1
  %i.aj = fsub <2 x float> %i.x, %i.ai
  %i.ak = fsub float %i.p, %i.ag
  %.sroa.3.12.vec.insert.i4 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  store <2 x float> %i.aj, ptr %i.m, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i4, ptr %i.n, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load float, ptr %i.a, align 8, !tbaa !17
  ret float %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.09.0.copyload = load float, ptr %i.a, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load <2 x float>, ptr %.sroa.7.0..sroa_idx, align 4
  %i.g = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.h = load ptr, ptr %0, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef float %i.j(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.l = load ptr, ptr %0, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef float %i.n(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.p = fadd float %.sroa.09.0.copyload, %i.g    ; 2 uses
  %i.q = insertelement <2 x float> poison, float %i.k, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.o, i64 1
  %i.s = fadd <2 x float> %i.f, %i.r              ; 2 uses
  %i.t = load float, ptr %1, align 4, !tbaa !10
  %i.u = fneg float %i.p
  %i.v = fcmp oge float %i.t, 0.000000e+00
  %i.w = select i1 %i.v, float %i.p, float %i.u
  %i.x = load <2 x float>, ptr %i.e, align 4, !tbaa !10
  %i.y = fneg <2 x float> %i.s
  %i.z = fcmp oge <2 x float> %i.x, zeroinitializer
  %i.aa = select <2 x i1> %i.z, <2 x float> %i.s, <2 x float> %i.y ; 2 uses
  %.sroa.016.0.vec.insert = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ab = shufflevector <2 x float> %.sroa.016.0.vec.insert, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.ac = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.aa, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ab, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.ac, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
end_hunk_0
begin_hunk_1_@_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i:bb.a

vector.memcheck:                                  ; preds = %.lr.ph
  %i.e = shl nuw nsw i64 %wide.trip.count, 4      ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.e   ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %scevgep20 = getelementptr i8, ptr %i.f, i64 -4
  %scevgep21 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %bound0 = icmp ult ptr %2, %scevgep20
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound022 = icmp ult ptr %2, %scevgep21
  %bound123 = icmp ult ptr %i.a, %scevgep
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx = or i1 %found.conflict, %found.conflict24
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %wide.trip.count, 3         ; 2 uses
  %i.g = icmp eq i64 %n.mod.vf, 0
  %i.h = select i1 %i.g, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %i.h     ; 2 uses
  %i.i = load <4 x float>, ptr %i.a, align 8
  %broadcast.splat = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.j = fneg <4 x float> %broadcast.splat
  %i.k = load <4 x float>, ptr %i.c, align 4
  %broadcast.splat26 = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.l = fneg <4 x float> %broadcast.splat26
  %i.m = load <4 x float>, ptr %i.d, align 8
  %broadcast.splat28 = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.n = fneg <4 x float> %broadcast.splat28
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %index
  %i.w = load float, ptr %i.o, align 4, !tbaa !10, !alias.scope !23
  %i.x = load float, ptr %i.q, align 4, !tbaa !10, !alias.scope !23
  %i.y = load float, ptr %i.s, align 4, !tbaa !10, !alias.scope !23
  %i.z = load float, ptr %i.u, align 4, !tbaa !10, !alias.scope !23
  %i.aa = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 2
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 3
  %i.ae = fcmp oge <4 x float> %i.ad, zeroinitializer
  %i.af = select <4 x i1> %i.ae, <4 x float> %broadcast.splat, <4 x float> %i.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !10, !alias.scope !23
  %i.al = load float, ptr %i.ah, align 4, !tbaa !10, !alias.scope !23
  %i.am = load float, ptr %i.ai, align 4, !tbaa !10, !alias.scope !23
  %i.an = load float, ptr %i.aj, align 4, !tbaa !10, !alias.scope !23
  %i.ao = insertelement <4 x float> poison, float %i.ak, i64 0
  %i.ap = insertelement <4 x float> %i.ao, float %i.al, i64 1
  %i.aq = insertelement <4 x float> %i.ap, float %i.am, i64 2
  %i.ar = insertelement <4 x float> %i.aq, float %i.an, i64 3
  %i.as = fcmp oge <4 x float> %i.ar, zeroinitializer
  %i.at = select <4 x i1> %i.as, <4 x float> %broadcast.splat26, <4 x float> %i.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.ay = load float, ptr %i.au, align 4, !tbaa !10, !alias.scope !23
  %i.az = load float, ptr %i.av, align 4, !tbaa !10, !alias.scope !23
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !10, !alias.scope !23
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !10, !alias.scope !23
  %i.bc = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.az, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.ba, i64 2
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 3
  %i.bg = fcmp oge <4 x float> %i.bf, zeroinitializer
  %i.bh = select <4 x i1> %i.bg, <4 x float> %broadcast.splat28, <4 x float> %i.n
  %i.bi = shufflevector <4 x float> %i.af, <4 x float> %i.at, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bj = shufflevector <4 x float> %i.bh, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bi, <8 x float> %i.bj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.v, align 4, !tbaa !10, !alias.scope !26, !noalias !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %scalar.ph.preheader, label %vector.body, !llvm.loop !30

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !10
  %i.bp = load float, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %i.bq = fneg float %i.bp
  %i.br = fcmp oge float %i.bo, 0.000000e+00
  %i.bs = select i1 %i.br, float %i.bp, float %i.bq
  %i.bt = load <2 x float>, ptr %i.bl, align 4, !tbaa !10
  %i.bu = load <2 x float>, ptr %i.a, align 8, !tbaa !10 ; 2 uses
  %i.bv = fneg <2 x float> %i.bu
  %i.bw = fcmp oge <2 x float> %i.bt, zeroinitializer
  %i.bx = select <2 x i1> %i.bw, <2 x float> %i.bu, <2 x float> %i.bv
  store <2 x float> %i.bx, ptr %i.bm, align 4, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store float %i.bs, ptr %i.by, align 4, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store float 0.000000e+00, ptr %i.bz, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !33
}

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3, i64 %i.b
  %switch.load = load float, ptr %switch.gep, align 4
  %i.c = zext nneg i32 %1 to i64
  %switch.gep27 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.1, i64 %i.c
  %switch.load28 = load float, ptr %switch.gep27, align 4
  %i.d = zext nneg i32 %1 to i64
  %switch.gep29 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.2, i64 %i.d
  %switch.load30 = load float, ptr %switch.gep29, align 4
  store float %switch.load, ptr %2, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %switch.load28, ptr %i.e, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = insertelement <2 x float> <float poison, float 0.000000e+00>, float %switch.load30, i64 0
  store <2 x float> %i.g, ptr %i.f, align 4, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12btBox2dShape14getNumVerticesEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12btBox2dShape11getNumEdgesEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 12
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK12btBox2dShape7getEdgeEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 12
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.c = zext nneg i32 %1 to i64
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @switch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_.3, i64 %i.c
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %switch.ext8 = zext i8 %switch.load7 to i32
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %.05 = phi i32 [ 0, %bb.a ], [ %switch.ext, %switch.lookup ]
  %.0 = phi i32 [ 0, %bb.a ], [ %switch.ext8, %switch.lookup ]
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %.05, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %.0, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK12btBox2dShape9getVertexEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8
  %i.b = lshr i32 %1, 1
  %i.c = lshr i32 %1, 2
  %i.d = and i32 %i.c, 1                          ; 2 uses
  %i.e = xor i32 %i.d, 1
  %i.f = uitofp nneg i32 %i.e to float
  %i.g = uitofp nneg i32 %i.d to float
  %i.h = fneg float %i.g
  %3 = load <4 x float>, ptr %i.a, align 8
  %4 = insertelement <2 x i32> poison, i32 %1, i64 0
  %5 = insertelement <2 x i32> %4, i32 %i.b, i64 1
  %6 = and <2 x i32> %5, splat (i32 1)            ; 2 uses
  %7 = xor <2 x i32> %6, splat (i32 1)
  %8 = uitofp nneg <2 x i32> %6 to <2 x float>
  %9 = fneg <2 x float> %8
  %10 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.sroa.7.0.copyload, i64 2
  %11 = shufflevector <4 x float> %3, <4 x float> %10, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %12 = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.h, i64 2
  %13 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %14 = shufflevector <4 x float> %13, <4 x float> %12, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %15 = fmul <4 x float> %11, %14
  %16 = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.f, i64 2
  %17 = shufflevector <2 x i32> %7, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = uitofp <4 x i32> %17 to <4 x float>
  %19 = shufflevector <4 x float> %18, <4 x float> %16, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %19, <4 x float> %15)
  store <4 x float> %20, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK12btBox2dShape12getNumPlanesEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK12btBox2dShape8getPlaneER9btVector3S1_i(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.btVector4, align 8           ; 5 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load float, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %i.f = load <2 x float>, ptr %4, align 8, !tbaa !10 ; 2 uses
  store <2 x float> %i.f, ptr %1, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.e, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.g = fneg <2 x float> %i.f
  %i.h = fneg float %i.e
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.h, i64 0
  store <2 x float> %i.g, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.i, align 8
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call { <2 x float>, <2 x float> } %i.l(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %5) ; 2 uses
  %i.n = extractvalue { <2 x float>, <2 x float> } %i.m, 0
  %i.o = extractvalue { <2 x float>, <2 x float> } %i.m, 1
  store <2 x float> %i.n, ptr %2, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %i.o, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12btBox2dShape8isInsideERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, float noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load float, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !10   ; 2 uses
  %i.c = fadd float %2, %.sroa.0.0.copyload
  %i.d = fcmp ugt float %i.b, %i.c
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fneg float %.sroa.0.0.copyload
  %i.f = fsub float %i.e, %2
  %i.g = fcmp ult float %i.b, %i.f
  br i1 %i.g, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.j = fadd float %2, %.sroa.5.0.copyload
  %i.k = fcmp ugt float %i.i, %i.j
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fneg float %.sroa.5.0.copyload
  %i.m = fsub float %i.l, %2
  %i.n = fcmp ult float %i.i, %i.m
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !10 ; 2 uses
  %i.q = fadd float %2, %.sroa.7.0.copyload
  %i.r = fcmp ugt float %i.p, %i.q
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = fneg float %.sroa.7.0.copyload
  %i.t = fsub float %i.s, %2
  %i.u = fcmp oge float %i.p, %i.t
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.v = phi i1 [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ %i.u, %bb.f ]
  ret i1 %i.v
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK12btBox2dShape16getPlaneEquationER9btVector4i(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload = load float, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  switch i32 %2, label %bb.g [
    i32 0, label %.sink.split
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.7.0.copyload.sink = phi float [ %.sroa.7.0.copyload, %bb.f ], [ %.sroa.7.0.copyload, %bb.e ], [ %.sroa.5.0.copyload, %bb.d ], [ %.sroa.5.0.copyload, %bb.c ], [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.0.0.copyload, %bb.a ]
  %.sink34 = phi float [ -1.000000e+00, %bb.f ], [ 1.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.b = phi <2 x float> [ zeroinitializer, %bb.f ], [ zeroinitializer, %bb.e ], [ <float 0.000000e+00, float -1.000000e+00>, %bb.d ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.c ], [ <float -1.000000e+00, float 0.000000e+00>, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ]
  %i.c = fneg float %.sroa.7.0.copyload.sink
  store <2 x float> %i.b, ptr %1, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.sink34, ptr %i.d, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.c, ptr %i.e, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #3

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

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
!10 = !{!11, !11, i64 0}
!11 = !{!"float", !6, i64 0}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNK11btMatrix3x38absoluteEv: argument 0"}
!14 = distinct !{!14, !"_ZNK11btMatrix3x38absoluteEv"}
!15 = !{!6, !6, i64 0}
!16 = distinct !{null}
!17 = !{!18, !11, i64 56}
!18 = !{!"_ZTS21btConvexInternalShape", !19, i64 0, !22, i64 24, !22, i64 40, !11, i64 56, !11, i64 60}
!19 = !{!"_ZTS13btConvexShape", !20, i64 0}
!20 = !{!"_ZTS16btCollisionShape", !5, i64 8, !21, i64 16}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!"_ZTS9btVector3", !6, i64 0}
!23 = !{!24}
!24 = distinct !{!24, !25}
!25 = distinct !{!25, !"LVerDomain"}
!26 = !{!27}
!27 = distinct !{!27, !25}
!28 = !{!24, !29}
!29 = distinct !{!29, !25}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !31}
end_hunk_1
