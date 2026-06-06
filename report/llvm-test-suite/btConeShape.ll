inline.NumInlined: 71
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }

$__clang_call_terminate = comdat any

$_ZN11btConeShapeD0Ev = comdat any

$_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_ = comdat any

$_ZNK21btConvexInternalShape15getLocalScalingEv = comdat any

$_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3 = comdat any

$_ZNK11btConeShape7getNameEv = comdat any

$_ZN21btConvexInternalShape9setMarginEf = comdat any

$_ZNK21btConvexInternalShape9getMarginEv = comdat any

$_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv = comdat any

$_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3 = comdat any

$_ZN12btConeShapeZD0Ev = comdat any

$_ZN12btConeShapeXD0Ev = comdat any

$_ZTV12btConeShapeZ = comdat any

$_ZTV12btConeShapeX = comdat any

$_ZTI12btConeShapeZ = comdat any

$_ZTS12btConeShapeZ = comdat any

$_ZTI12btConeShapeX = comdat any

$_ZTS12btConeShapeX = comdat any

@_ZTV11btConeShape = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTI11btConeShape, ptr @_ZN13btConvexShapeD2Ev, ptr @_ZN11btConeShapeD0Ev, ptr @_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEv, ptr @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3, ptr @_ZNK21btConvexInternalShape15getLocalScalingEv, ptr @_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK11btConeShape7getNameEv, ptr @_ZN21btConvexInternalShape9setMarginEf, ptr @_ZNK21btConvexInternalShape9getMarginEv, ptr @_ZNK11btConeShape24localGetSupportingVertexERK9btVector3, ptr @_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3, ptr @_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, ptr @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_, ptr @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, ptr @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3] }, align 8
@_ZTV12btConeShapeZ = linkonce_odr dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTI12btConeShapeZ, ptr @_ZN13btConvexShapeD2Ev, ptr @_ZN12btConeShapeZD0Ev, ptr @_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEv, ptr @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3, ptr @_ZNK21btConvexInternalShape15getLocalScalingEv, ptr @_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK11btConeShape7getNameEv, ptr @_ZN21btConvexInternalShape9setMarginEf, ptr @_ZNK21btConvexInternalShape9getMarginEv, ptr @_ZNK11btConeShape24localGetSupportingVertexERK9btVector3, ptr @_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3, ptr @_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, ptr @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_, ptr @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, ptr @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3] }, comdat, align 8
@_ZTV12btConeShapeX = linkonce_odr dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTI12btConeShapeX, ptr @_ZN13btConvexShapeD2Ev, ptr @_ZN12btConeShapeXD0Ev, ptr @_ZNK21btConvexInternalShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEv, ptr @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3, ptr @_ZNK21btConvexInternalShape15getLocalScalingEv, ptr @_ZNK11btConeShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK11btConeShape7getNameEv, ptr @_ZN21btConvexInternalShape9setMarginEf, ptr @_ZNK21btConvexInternalShape9getMarginEv, ptr @_ZNK11btConeShape24localGetSupportingVertexERK9btVector3, ptr @_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3, ptr @_ZNK11btConeShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, ptr @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_, ptr @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv, ptr @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3] }, comdat, align 8
@_ZTI11btConeShape = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11btConeShape, ptr @_ZTI21btConvexInternalShape }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS11btConeShape = dso_local constant [14 x i8] c"11btConeShape\00", align 1
@_ZTI21btConvexInternalShape = external constant ptr
@_ZTI12btConeShapeZ = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12btConeShapeZ, ptr @_ZTI11btConeShape }, comdat, align 8
@_ZTS12btConeShapeZ = linkonce_odr dso_local constant [15 x i8] c"12btConeShapeZ\00", comdat, align 1
@_ZTI12btConeShapeX = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12btConeShapeX, ptr @_ZTI11btConeShape }, comdat, align 8
@_ZTS12btConeShapeX = linkonce_odr dso_local constant [15 x i8] c"12btConeShapeX\00", comdat, align 1
@.str = private unnamed_addr constant [5 x i8] c"Cone\00", align 1
@switch.table._ZN11btConeShape14setConeUpIndexEi = private unnamed_addr constant [3 x i8] c"\01\00\00", align 4
@switch.table._ZN11btConeShape14setConeUpIndexEi.1 = private unnamed_addr constant [3 x i8] c"\02\02\01", align 4

@_ZN11btConeShapeC1Eff = dso_local unnamed_addr alias void (ptr, float, float), ptr @_ZN11btConeShapeC2Eff
@_ZN12btConeShapeZC1Eff = dso_local unnamed_addr alias void (ptr, float, float), ptr @_ZN12btConeShapeZC2Eff
@_ZN12btConeShapeXC1Eff = dso_local unnamed_addr alias void (ptr, float, float), ptr @_ZN12btConeShapeXC2Eff

; Function Attrs: uwtable
define dso_local void @_ZN11btConeShapeC2Eff(ptr noundef nonnull align 8 dereferenceable(88) %0, float noundef %1, float noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV11btConeShape, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %1, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %2, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 11, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.e, align 8, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 2, ptr %i.f, align 4, !tbaa !4
  %i.g = fmul float %2, %2
  %i.h = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.g)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.h)
  %i.i = fdiv float %1, %sqrt
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.i, ptr %i.j, align 8, !tbaa !20
  ret void
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11btConeShape14setConeUpIndexEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN11btConeShape14setConeUpIndexEi, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.c = zext nneg i32 %1 to i64
  %switch.gep6 = getelementptr inbounds nuw i8, ptr @switch.table._ZN11btConeShape14setConeUpIndexEi.1, i64 %i.c
  %switch.load7 = load i8, ptr %switch.gep6, align 1
  %switch.ext8 = zext i8 %switch.load7 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %switch.ext, ptr %i.d, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %1, ptr %i.e, align 8, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %switch.ext8, ptr %i.f, align 4, !tbaa !4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZN12btConeShapeZC2Eff(ptr noundef nonnull align 8 dereferenceable(88) %0, float noundef %1, float noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %1, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %2, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 11, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = fmul float %2, %2
  %i.h = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.g)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.h)
  %i.i = fdiv float %1, %sqrt.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.i, ptr %i.j, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV12btConeShapeZ, i64 16), ptr %0, align 8, !tbaa !8
  store i32 0, ptr %i.d, align 4, !tbaa !4
  store i32 2, ptr %i.e, align 8, !tbaa !4
  store i32 1, ptr %i.f, align 4, !tbaa !4
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN12btConeShapeXC2Eff(ptr noundef nonnull align 8 dereferenceable(88) %0, float noundef %1, float noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %1, ptr %i.a, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %2, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 11, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = fmul float %2, %2
  %i.h = tail call float @llvm.fmuladd.f32(float %1, float %1, float %i.g)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.h)
  %i.i = fdiv float %1, %sqrt.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.i, ptr %i.j, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV12btConeShapeX, i64 16), ptr %0, align 8, !tbaa !8
  store i32 1, ptr %i.d, align 4, !tbaa !4
  store i32 0, ptr %i.e, align 8, !tbaa !4
  store i32 2, ptr %i.f, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK11btConeShape16coneLocalSupportERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load float, ptr %i.a, align 8, !tbaa !18
  %i.c = fmul float %i.b, 5.000000e-01            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !21
  %i.j = load float, ptr %1, align 4, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !21 ; 2 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !21 ; 2 uses
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.n)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load float, ptr %i.r, align 8, !tbaa !20
  %i.t = fmul float %i.s, %sqrt.i
  %i.u = fcmp ogt float %i.i, %i.t
  %i.v = load i32, ptr %i.d, align 4, !tbaa !4
  %i.w = sext i32 %i.v to i64                     ; 4 uses
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w
  store float 0.000000e+00, ptr %i.x, align 4, !tbaa !21
  %i.y = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g
  store float %i.c, ptr %i.y, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = sext i32 %i.aa to i64
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds [4 x i8], ptr %1, i64 %i.w
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !21 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !21 ; 3 uses
  %i.aj = fmul float %i.ai, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.aj)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ak) ; 2 uses
  %i.al = fcmp ogt float %sqrt, f0x34000000
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.an = load float, ptr %i.am, align 4, !tbaa !10
  %i.ao = fdiv float %i.an, %sqrt                 ; 2 uses
  %i.ap = fmul float %i.ao, %i.ad
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w
  store float %i.ap, ptr %i.aq, align 4, !tbaa !21
  %i.ar = fneg float %i.c
  %i.as = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g
  store float %i.ar, ptr %i.as, align 4, !tbaa !21
  %i.at = fmul float %i.ao, %i.ai
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.w
  store float 0.000000e+00, ptr %i.au, align 4, !tbaa !21
  %i.av = fneg float %i.c
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.g
  store float %i.av, ptr %i.aw, align 4, !tbaa !21
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.sink17 = phi i64 [ %i.ag, %bb.d ], [ %i.ag, %bb.e ], [ %i.ab, %bb.b ]
  %.sink = phi float [ %i.at, %bb.d ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.b ]
  %i.ax = getelementptr inbounds [4 x i8], ptr %2, i64 %.sink17
  store float %.sink, ptr %i.ax, align 4, !tbaa !21
  %.fca.0.load = load <2 x float>, ptr %2, align 8
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.fca.1.load = load <2 x float>, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.fca.1.load, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK11btConeShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load float, ptr %i.a, align 8, !tbaa !18
  %i.c = fmul float %i.b, 5.000000e-01            ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i32, ptr %i.e, align 8, !tbaa !4
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !21
  %i.j = load float, ptr %1, align 4, !tbaa !21   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load float, ptr %i.k, align 4, !tbaa !21 ; 2 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !21 ; 2 uses
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.n)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load float, ptr %i.r, align 8, !tbaa !20
  %i.t = fmul float %i.s, %sqrt.i.i
  %i.u = fcmp ogt float %i.i, %i.t
  %i.v = load i32, ptr %i.d, align 4, !tbaa !4
  %i.w = sext i32 %i.v to i64                     ; 4 uses
  br i1 %i.u, label %bb.b, label %bb.c
end_hunk_0
