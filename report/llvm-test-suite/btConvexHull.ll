inline.NumInlined: 627
inline.NumDeleted: 141
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btAlignedObjectArray.6 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.PHullResult = type { i32, i32, i32, ptr, %class.btAlignedObjectArray.8 }
%class.btAlignedObjectArray.8 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>

$__clang_call_terminate = comdat any

$_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE = comdat any

@_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif = internal global i64 0, align 8
@_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp = internal unnamed_addr global %class.btVector3 zeroinitializer, align 8
@_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp = internal global i64 0, align 8
@planetestepsilon = dso_local local_unnamed_addr global float 1.000000e-03, align 4
@_ZZN14btHullTriangle4neibEiiE2er = internal global i32 -1, align 4

@_ZN7ConvexHC1Eiii = dso_local unnamed_addr alias void (ptr, i32, i32, i32), ptr @_ZN7ConvexHC2Eiii

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_Z22ThreePlaneIntersectionRK7btPlaneS1_S1_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.080.0.copyload = load float, ptr %0, align 4 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4 ; 5 uses
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.985.0.copyload = load float, ptr %.sroa.985.0..sroa_idx, align 4 ; 5 uses
  %.sroa.073.0.copyload = load float, ptr %1, align 4 ; 4 uses
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.575.0.copyload = load float, ptr %.sroa.575.0..sroa_idx, align 4 ; 4 uses
  %.sroa.777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.777.0.copyload = load float, ptr %.sroa.777.0..sroa_idx, align 4 ; 4 uses
  %.sroa.068.0.copyload = load float, ptr %2, align 4 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 4 uses
  %i.a = fneg float %.sroa.5.0.copyload
  %i.b = fmul float %.sroa.777.0.copyload, %i.a
  %i.c = tail call float @llvm.fmuladd.f32(float %.sroa.575.0.copyload, float %.sroa.7.0.copyload, float %i.b) ; 2 uses
  %i.d = fneg float %.sroa.7.0.copyload
  %i.e = fmul float %.sroa.073.0.copyload, %i.d
  %i.f = tail call float @llvm.fmuladd.f32(float %.sroa.777.0.copyload, float %.sroa.068.0.copyload, float %i.e) ; 2 uses
  %i.g = fneg float %.sroa.068.0.copyload
  %i.h = fmul float %.sroa.575.0.copyload, %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %.sroa.073.0.copyload, float %.sroa.5.0.copyload, float %i.h) ; 2 uses
  %i.j = fneg float %.sroa.6.0.copyload
  %i.k = fmul float %.sroa.7.0.copyload, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %.sroa.5.0.copyload, float %.sroa.985.0.copyload, float %i.k)
  %i.m = fneg float %.sroa.985.0.copyload
  %i.n = fmul float %.sroa.068.0.copyload, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %.sroa.080.0.copyload, float %i.n)
  %i.p = fneg float %.sroa.080.0.copyload
  %i.q = fmul float %.sroa.5.0.copyload, %i.p
  %i.r = tail call float @llvm.fmuladd.f32(float %.sroa.068.0.copyload, float %.sroa.6.0.copyload, float %i.q)
  %i.s = fneg float %.sroa.575.0.copyload
  %i.t = fmul float %.sroa.985.0.copyload, %i.s
  %i.u = tail call float @llvm.fmuladd.f32(float %.sroa.6.0.copyload, float %.sroa.777.0.copyload, float %i.t)
  %i.v = fneg float %.sroa.777.0.copyload
  %i.w = fmul float %.sroa.080.0.copyload, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %.sroa.985.0.copyload, float %.sroa.073.0.copyload, float %i.w)
  %i.y = fneg float %.sroa.073.0.copyload
  %i.z = fmul float %.sroa.6.0.copyload, %i.y
  %i.aa = tail call float @llvm.fmuladd.f32(float %.sroa.080.0.copyload, float %.sroa.575.0.copyload, float %i.z)
  %i.ab = fmul float %.sroa.6.0.copyload, %i.f
  %i.ac = tail call float @llvm.fmuladd.f32(float %.sroa.080.0.copyload, float %i.c, float %i.ab)
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %.sroa.985.0.copyload, float %i.i, float %i.ac)
  %i.ae = fdiv float -1.000000e+00, %i.ad         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !8 ; 3 uses
  %i.ah = fmul float %i.ag, %i.c
  %i.ai = fmul float %i.ag, %i.f
  %i.aj = fmul float %i.i, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !8 ; 3 uses
  %i.am = fmul float %i.al, %i.l
  %i.an = fmul float %i.o, %i.al
  %i.ao = fmul float %i.r, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !8 ; 3 uses
  %i.ar = fmul float %i.u, %i.aq
  %i.as = fmul float %i.x, %i.aq
  %i.at = fmul float %i.aa, %i.aq
  %i.au = fadd float %i.ah, %i.am
  %i.av = fadd float %i.an, %i.ai
  %i.aw = fadd float %i.aj, %i.ao
  %i.ax = fadd float %i.ar, %i.au
  %i.ay = fadd float %i.as, %i.av
  %i.az = fadd float %i.at, %i.aw
  %i.ba = fmul float %i.ax, %i.ae
  %i.bb = fmul float %i.ay, %i.ae
  %i.bc = fmul float %i.az, %i.ae
  %.sroa.088.0.vec.insert = insertelement <2 x float> poison, float %i.ba, i64 0
  %.sroa.088.4.vec.insert = insertelement <2 x float> %.sroa.088.0.vec.insert, float %i.bb, i64 1
  %.sroa.3.12.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.088.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local { <2 x float>, <2 x float> } @_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = load float, ptr %2, align 4, !tbaa !8
  %i.e = load float, ptr %1, align 4, !tbaa !8
  %i.f = fsub float %i.d, %i.e                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = load float, ptr %0, align 4, !tbaa !8    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !8  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !11
  %i.p = load float, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.q = load <2 x float>, ptr %i.g, align 4, !tbaa !8
  %i.r = load <2 x float>, ptr %i.h, align 4, !tbaa !8
  %i.s = fsub <2 x float> %i.q, %i.r              ; 3 uses
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = fmul float %i.k, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.i, float %i.f, float %i.u)
  %i.w = extractelement <2 x float> %i.s, i64 1
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.w, float %i.v)
  %i.y = load <2 x float>, ptr %i.h, align 4, !tbaa !8 ; 3 uses
  %i.z = extractelement <2 x float> %i.y, i64 0
  %i.aa = fmul float %i.k, %i.z
  %i.ab = tail call float @llvm.fmuladd.f32(float %i.i, float %i.p, float %i.aa)
  %i.ac = extractelement <2 x float> %i.y, i64 1
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.ac, float %i.ab)
  %i.ae = fadd float %i.o, %i.ad
  %i.af = fneg float %i.ae
  %i.ag = fdiv float %i.af, %i.x                  ; 2 uses
  %i.ah = fmul float %i.f, %i.ag
  %i.ai = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %i.s, %i.aj
  %i.al = fadd float %i.p, %i.ah
  %i.am = fadd <2 x float> %i.y, %i.ak            ; 2 uses
  %.sroa.0.0.vec.insert.i14 = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = shufflevector <2 x float> %.sroa.0.0.vec.insert.i14, <2 x float> %i.am, <2 x i32> <i32 0, i32 2>
  %i.ao = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.am, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i17 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.an, 0
  %.fca.1.insert.i18 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i17, <2 x float> %i.ao, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i18
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_Z12PlaneProjectRK7btPlaneRK9btVector3(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.b = load float, ptr %0, align 4, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !8  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !8  ; 2 uses
  %i.g = fmul float %i.d, %i.f
  %i.h = tail call float @llvm.fmuladd.f32(float %i.a, float %i.b, float %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !8  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !8  ; 2 uses
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !11
  %i.p = fadd float %i.m, %i.o                    ; 3 uses
  %i.q = fmul float %i.b, %i.p
  %i.r = fmul float %i.f, %i.p
  %i.s = fmul float %i.l, %i.p
  %i.t = fsub float %i.a, %i.q
  %i.u = fsub float %i.d, %i.r
  %i.v = fsub float %i.j, %i.s
  %.sroa.0.0.vec.insert.i5 = insertelement <2 x float> poison, float %i.t, i64 0
  %.sroa.0.4.vec.insert.i6 = insertelement <2 x float> %.sroa.0.0.vec.insert.i5, float %i.u, i64 1
  %.sroa.3.12.vec.insert.i7 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.v, i64 0
  %.fca.0.insert.i8 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert.i6, 0
  %.fca.1.insert.i9 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i8, <2 x float> %.sroa.3.12.vec.insert.i7, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_Z9TriNormalRK9btVector3S1_S1_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.b = load float, ptr %0, align 4, !tbaa !8
  %i.c = fsub float %i.a, %i.b                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !8  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !8
  %i.h = fsub float %i.e, %i.g                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !8  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !8
  %i.m = fsub float %i.j, %i.l                    ; 2 uses
  %i.n = load float, ptr %2, align 4, !tbaa !8
  %i.o = fsub float %i.n, %i.a                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !8
  %i.r = fsub float %i.q, %i.e                    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !8
  %i.u = fsub float %i.t, %i.j                    ; 2 uses
  %i.v = fneg float %i.r
  %i.w = fmul float %i.m, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.h, float %i.u, float %i.w) ; 3 uses
  %i.y = fneg float %i.u
  %i.z = fmul float %i.c, %i.y
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.m, float %i.o, float %i.z) ; 3 uses
  %i.ab = fneg float %i.o
  %i.ac = fmul float %i.h, %i.ab
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.c, float %i.r, float %i.ac) ; 3 uses
  %i.ae = fmul float %i.aa, %i.aa
  %i.af = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.ae)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.af) ; 2 uses
  %i.ah = fcmp oeq float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ag)
  %i.ai = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.aj = fmul float %i.x, %i.ai
  %i.ak = fmul float %i.aa, %i.ai
  %i.al = fmul float %i.ad, %i.ai
  %.sroa.0.0.vec.insert.i11 = insertelement <2 x float> poison, float %i.aj, i64 0
  %.sroa.0.4.vec.insert.i12 = insertelement <2 x float> %.sroa.0.0.vec.insert.i11, float %i.ak, i64 1
  %.sroa.3.12.vec.insert.i13 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.028.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i12, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ]
  %.sroa.4.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i13, %bb.b ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.028.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local noundef float @_Z20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef writeonly captures(address_is_null) %4, ptr noundef writeonly captures(address_is_null) %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !8  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !8  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !8  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !8  ; 2 uses
  %i.l = fneg float %i.k
  %i.m = fmul float %i.i, %i.l
  %i.n = tail call float @llvm.fmuladd.f32(float %i.e, float %i.g, float %i.m) ; 3 uses
  %i.o = load float, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.p = load float, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.q = fneg float %i.g
  %i.r = fmul float %i.p, %i.q
  %i.s = tail call float @llvm.fmuladd.f32(float %i.i, float %i.o, float %i.r) ; 3 uses
  %i.t = fneg float %i.o
  %i.u = fmul float %i.e, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.p, float %i.k, float %i.u) ; 3 uses
  %i.w = fmul float %i.s, %i.s
  %i.x = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.w)
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.x)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.y)
  %i.z = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %i.aa = fmul float %i.n, %i.z                   ; 5 uses
  %i.ab = fmul float %i.s, %i.z                   ; 5 uses
  %i.ac = fmul float %i.v, %i.z                   ; 5 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.aa, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.ab, i64 1
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ac, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr @_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp, i64 8), align 8, !tbaa !14
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load <2 x float>, ptr %0, align 4, !tbaa !8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !8 ; 2 uses
  %i.ah = load float, ptr %2, align 4, !tbaa !8   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %.not30 = icmp eq ptr %4, null
  br i1 %.not30, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load float, ptr %i.j, align 4, !tbaa !8 ; 2 uses
  %i.an = load float, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.ao = fneg float %i.ab
  %i.ap = fmul float %i.an, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ac, float %i.ap) ; 3 uses
  %i.ar = load float, ptr %3, align 4, !tbaa !8   ; 2 uses
  %i.as = fneg float %i.ac
  %i.at = fmul float %i.ar, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.an, float %i.aa, float %i.at) ; 3 uses
  %i.av = fneg float %i.aa
  %i.aw = fmul float %i.am, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ab, float %i.aw) ; 3 uses
  %i.ay = fmul float %i.au, %i.au
  %i.az = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.ay)
  %i.ba = tail call noundef float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.az)
  %sqrt.i.i37 = tail call noundef float @llvm.sqrt.f32(float %i.ba)
  %i.bb = fdiv float 1.000000e+00, %sqrt.i.i37    ; 3 uses
  %i.bc = fmul float %i.aq, %i.bb                 ; 3 uses
  %i.bd = fmul float %i.au, %i.bb                 ; 3 uses
  %i.be = fmul float %i.ax, %i.bb                 ; 3 uses
  %i.bf = fmul float %i.aj, %i.bd
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.ah, float %i.bf)
  %i.bh = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.al, float %i.bg)
  %i.bi = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.bj = fadd <2 x float> %i.ae, %i.bi
  %i.bk = load float, ptr %i.h, align 4, !tbaa !8
  %i.bl = fadd float %i.ag, %i.bk
  %i.bm = load atomic i8, ptr @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.f, label %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.bo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif) #19
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif) #19
  br label %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit

_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.bp = load float, ptr %i.af, align 4, !tbaa !8 ; 3 uses
  %i.bq = fsub float %i.bl, %i.bp                 ; 2 uses
  %i.br = load <2 x float>, ptr %0, align 4, !tbaa !8
  %i.bs = fsub <2 x float> %i.bj, %i.br           ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 1
  %i.bu = fmul float %i.bd, %i.bt
  %i.bv = extractelement <2 x float> %i.bs, i64 0
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bv, float %i.bu)
  %i.bx = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.bq, float %i.bw)
  %i.by = load <2 x float>, ptr %0, align 4, !tbaa !8 ; 3 uses
  %i.bz = extractelement <2 x float> %i.by, i64 1
  %i.ca = fmul float %i.bd, %i.bz
  %i.cb = extractelement <2 x float> %i.by, i64 0
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.cb, float %i.ca)
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.be, float %i.bp, float %i.cc)
  %i.ce = fsub float %i.cd, %i.bh
  %i.cf = fneg float %i.ce
  %i.cg = fdiv float %i.cf, %i.bx                 ; 2 uses
  %i.ch = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x float> %i.bs, %i.ci
  %i.ck = fmul float %i.bq, %i.cg
  %i.cl = fadd <2 x float> %i.by, %i.cj
  %i.cm = fadd float %i.bp, %i.ck
  %.sroa.3.12.vec.insert.i16.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cm, i64 0
  store <2 x float> %i.cl, ptr %4, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i16.i, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit, %bb.d
  %.not31 = icmp eq ptr %5, null
  br i1 %.not31, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = load float, ptr %i.d, align 4, !tbaa !8 ; 2 uses
  %i.co = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp, i64 8), align 8, !tbaa !8 ; 2 uses
  %i.cp = load float, ptr %i.h, align 4, !tbaa !8 ; 2 uses
  %i.cq = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp, i64 4), align 4, !tbaa !8 ; 2 uses
  %i.cr = fneg float %i.cq
  %i.cs = fmul float %i.cp, %i.cr
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.cs) ; 3 uses
  %i.cu = load float, ptr @_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp, align 8, !tbaa !8 ; 2 uses
  %i.cv = load float, ptr %1, align 4, !tbaa !8   ; 2 uses
  %i.cw = fneg float %i.co
  %i.cx = fmul float %i.cv, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cu, float %i.cx) ; 3 uses
  %i.cz = fneg float %i.cu
  %i.da = fmul float %i.cn, %i.cz
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cq, float %i.da) ; 3 uses
  %i.dc = fmul float %i.cy, %i.cy
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.dc)
  %i.de = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.dd)
  %sqrt.i.i51 = tail call noundef float @llvm.sqrt.f32(float %i.de)
  %i.df = fdiv float 1.000000e+00, %sqrt.i.i51    ; 3 uses
  %i.dg = fmul float %i.ct, %i.df                 ; 3 uses
  %i.dh = fmul float %i.cy, %i.df                 ; 3 uses
  %i.di = fmul float %i.db, %i.df                 ; 3 uses
  %i.dj = load float, ptr %0, align 4, !tbaa !8
  %i.dk = load float, ptr %i.ad, align 4, !tbaa !8
  %i.dl = fmul float %i.dk, %i.dh
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dj, float %i.dl)
  %i.dn = load float, ptr %i.af, align 4, !tbaa !8
  %i.do = tail call noundef float @llvm.fmuladd.f32(float %i.di, float %i.dn, float %i.dm)
  %i.dp = load <2 x float>, ptr %2, align 4, !tbaa !8
  %i.dq = load <2 x float>, ptr %3, align 4, !tbaa !8
  %i.dr = fadd <2 x float> %i.dp, %i.dq
  %i.ds = load float, ptr %i.ak, align 4, !tbaa !8
  %i.dt = load float, ptr %i.f, align 4, !tbaa !8
  %i.du = fadd float %i.ds, %i.dt
  %i.dv = load atomic i8, ptr @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif acquire, align 8
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.j, label %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit71, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.dx = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif) #19
  %.not.i70 = icmp eq i32 %i.dx, 0
  br i1 %.not.i70, label %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit71, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif) #19
  br label %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit71

_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit71: ; preds = %bb.i, %bb.j, %bb.k
  %i.dy = load float, ptr %i.ak, align 4, !tbaa !8 ; 3 uses
  %i.dz = fsub float %i.du, %i.dy                 ; 2 uses
  %i.ea = load <2 x float>, ptr %2, align 4, !tbaa !8
  %i.eb = fsub <2 x float> %i.dr, %i.ea           ; 3 uses
  %i.ec = extractelement <2 x float> %i.eb, i64 1
  %i.ed = fmul float %i.dh, %i.ec
  %i.ee = extractelement <2 x float> %i.eb, i64 0
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.ee, float %i.ed)
  %i.eg = tail call noundef float @llvm.fmuladd.f32(float %i.di, float %i.dz, float %i.ef)
  %i.eh = load <2 x float>, ptr %2, align 4, !tbaa !8 ; 3 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 1
  %i.ej = fmul float %i.dh, %i.ei
  %i.ek = extractelement <2 x float> %i.eh, i64 0
  %i.el = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.ek, float %i.ej)
end_hunk_0
begin_hunk_1_@_ZN11HullLibrary16BringOutYourDeadEPK9btVector3jPS0_RjPjj:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store float %i.ap, ptr %i.aq, align 4, !tbaa !8
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !77  ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph117, label %._crit_edge118

.lr.ph117:                                        ; preds = %bb.g
  %i.at = load ptr, ptr %i.w, align 8
  br label %bb.h

._crit_edge118:                                   ; preds = %bb.j, %bb.g
  %i.au = add i32 %i.af, 1                        ; 2 uses
  store i32 %i.au, ptr %4, align 4, !tbaa !4
  store i32 %i.au, ptr %i.aa, align 4, !tbaa !4
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph117, %bb.j
  %i.av = phi i32 [ %i.ar, %.lr.ph117 ], [ %i.ba, %bb.j ]
  %indvars.iv123 = phi i64 [ 0, %.lr.ph117 ], [ %indvars.iv.next124, %bb.j ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10101.2139, i64 %indvars.iv123
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = icmp eq i32 %i.ax, %i.y
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv123
  store i32 %i.af, ptr %i.az, align 4, !tbaa !4
  %.pre129 = load i32, ptr %i.a, align 4, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ba = phi i32 [ %i.av, %bb.h ], [ %.pre129, %bb.i ] ; 2 uses
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next124, %i.bb
  br i1 %i.bc, label %bb.h, label %._crit_edge118

bb.k:                                             ; preds = %._crit_edge118, %bb.e
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge121.thread, label %bb.d

._crit_edge121:                                   ; preds = %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit
  %.not.i.i.i73.not = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i73.not, label %_ZN20btAlignedObjectArrayIjED2Ev.exit76, label %._crit_edge121.thread

._crit_edge121.thread:                            ; preds = %bb.k, %._crit_edge121
  %.sroa.1084.1145 = phi ptr [ %i.s, %._crit_edge121 ], [ %.sroa.1084.1143, %bb.k ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.1084.1145)
          to label %_ZN20btAlignedObjectArrayIjED2Ev.exit76 unwind label %bb.f

_ZN20btAlignedObjectArrayIjED2Ev.exit76:          ; preds = %_ZN20btAlignedObjectArrayIjE6resizeEiRKj.exit.thread, %._crit_edge121, %._crit_edge121.thread
  %.not.i.i.i77.not = icmp eq ptr %.sroa.10101.2139, null
  br i1 %.not.i.i.i77.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit76
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10101.2139)
  br label %_ZN20btAlignedObjectArrayIiED2Ev.exit

_ZN20btAlignedObjectArrayIiED2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayIjED2Ev.exit76, %bb.l
  ret void

bb.m:                                             ; preds = %bb.f, %_ZN20btAlignedObjectArrayIjED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %_ZN20btAlignedObjectArrayIjED2Ev.exit ], [ %i.ad, %bb.f ]
  %.not.i.i.i79.not = icmp eq ptr %.sroa.10101.2139, null
  br i1 %.not.i.i.i79.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit82, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10101.2139)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit82 unwind label %bb.o

_ZN20btAlignedObjectArrayIiED2Ev.exit82:          ; preds = %bb.m, %bb.n
  resume { ptr, i32 } %.pn.pn

bb.o:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #20
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZN11HullLibrary13ReleaseResultER10HullResult(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !123
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not.i.i = icmp ne ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !39
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.e)
  br label %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit

_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit: ; preds = %bb.b, %bb.c
  store i8 1, ptr %i.f, align 8, !tbaa !15
  store ptr null, ptr %i.d, align 8, !tbaa !21
  store i32 0, ptr %i.a, align 4, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.i, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3E5clearEv.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  %.not6 = icmp eq i32 %i.k, 0
  br i1 %.not6, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 0, ptr %i.l, align 4, !tbaa !125
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101  ; 2 uses
  %.not.i.i7 = icmp ne ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !range !39
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i8 = select i1 %.not.i.i7, i1 %i.q, i1 false
  br i1 %or.cond.i8, label %bb.f, label %_ZN20btAlignedObjectArrayIjE5clearEv.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.n)
  br label %_ZN20btAlignedObjectArrayIjE5clearEv.exit

_ZN20btAlignedObjectArrayIjE5clearEv.exit:        ; preds = %bb.e, %bb.f
  store i8 1, ptr %i.o, align 8, !tbaa !105
  store ptr null, ptr %i.m, align 8, !tbaa !101
  store i32 0, ptr %i.j, align 4, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 0, ptr %i.r, align 8, !tbaa !100
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIjE5clearEv.exit, %bb.d
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z7GetDistfffPKf(float noundef %0, float noundef %1, float noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = load float, ptr %3, align 4, !tbaa !8
  %i.b = fsub float %0, %i.a                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !8
  %i.e = fsub float %1, %i.d                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !8
  %i.h = fsub float %2, %i.g                      ; 2 uses
  %i.i = fmul float %i.e, %i.e
  %i.j = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.i)
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.j)
  ret float %i.k
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }

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
!9 = !{!"float", !6, i64 0}
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!12, !9, i64 16}
!12 = !{!"_ZTS7btPlane", !13, i64 0, !9, i64 16}
!13 = !{!"_ZTS9btVector3", !6, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !20, i64 24}
!16 = !{!"_ZTS20btAlignedObjectArrayI9btVector3E", !17, i64 0, !5, i64 4, !5, i64 8, !18, i64 16, !20, i64 24}
!17 = !{!"_ZTS18btAlignedAllocatorI9btVector3Lj16EE"}
!18 = !{!"p1 _ZTS9btVector3", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"bool", !6, i64 0}
!21 = !{!16, !18, i64 16}
!22 = !{!16, !5, i64 4}
!23 = !{!16, !5, i64 8}
!24 = !{!25, !20, i64 24}
!25 = !{!"_ZTS20btAlignedObjectArrayIN7ConvexH8HalfEdgeEE", !26, i64 0, !5, i64 4, !5, i64 8, !27, i64 16, !20, i64 24}
!26 = !{!"_ZTS18btAlignedAllocatorIN7ConvexH8HalfEdgeELj16EE"}
!27 = !{!"p1 _ZTSN7ConvexH8HalfEdgeE", !19, i64 0}
!28 = !{!25, !27, i64 16}
!29 = !{!25, !5, i64 4}
!30 = !{!25, !5, i64 8}
!31 = !{!32, !20, i64 24}
!32 = !{!"_ZTS20btAlignedObjectArrayI7btPlaneE", !33, i64 0, !5, i64 4, !5, i64 8, !34, i64 16, !20, i64 24}
!33 = !{!"_ZTS18btAlignedAllocatorI7btPlaneLj16EE"}
!34 = !{!"p1 _ZTS7btPlane", !19, i64 0}
!35 = !{!32, !34, i64 16}
!36 = !{!32, !5, i64 4}
!37 = !{!32, !5, i64 8}
!38 = !{i64 0, i64 16, !14}
!39 = !{i8 0, i8 2}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{i64 0, i64 16, !14, i64 16, i64 4, !8}
!43 = distinct !{!43, !41}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !46, !45}
!48 = !{!49, !51, i64 16}
!49 = !{!"_ZTS20btAlignedObjectArrayIP14btHullTriangleE", !50, i64 0, !5, i64 4, !5, i64 8, !51, i64 16, !20, i64 24}
!50 = !{!"_ZTS18btAlignedAllocatorIP14btHullTriangleLj16EE"}
!51 = !{!"p2 _ZTS14btHullTriangle", !52, i64 0}
!52 = !{!"any p2 pointer", !19, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTS14btHullTriangle", !19, i64 0}
!55 = !{!56, !5, i64 24}
!56 = !{!"_ZTS14btHullTriangle", !57, i64 0, !57, i64 12, !5, i64 24, !5, i64 28, !9, i64 32}
!57 = !{!"_ZTS4int3", !5, i64 0, !5, i64 4, !5, i64 8}
!58 = !{!57, !5, i64 0}
!59 = !{!57, !5, i64 4}
!60 = !{!57, !5, i64 8}
!61 = !{!56, !5, i64 28}
!62 = !{!56, !9, i64 32}
!63 = !{!49, !5, i64 4}
!64 = !{!49, !5, i64 8}
!65 = distinct !{!65, !45, !46}
!66 = distinct !{!66, !41}
!67 = distinct !{!67, !45}
!68 = !{!49, !20, i64 24}
!69 = !{}
!70 = !{!71, !73, i64 16}
!71 = !{!"_ZTS20btAlignedObjectArrayIiE", !72, i64 0, !5, i64 4, !5, i64 8, !73, i64 16, !20, i64 24}
!72 = !{!"_ZTS18btAlignedAllocatorIiLj16EE"}
!73 = !{!"p1 int", !19, i64 0}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.peeled.count", i32 1}
!76 = !{!71, !20, i64 24}
!77 = !{!71, !5, i64 4}
!78 = !{!71, !5, i64 8}
!79 = distinct !{!79, !45, !46}
!80 = distinct !{!80, !41}
!81 = distinct !{!81, !45}
!82 = distinct !{!82, !45, !46}
!83 = distinct !{!83, !41}
!84 = distinct !{!84, !45}
!85 = distinct !{!85, !45, !46}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !45}
!88 = distinct !{!88, !45, !46}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !45}
!91 = distinct !{!91, !45, !46}
!92 = distinct !{!92, !41}
!93 = distinct !{!93, !45}
!94 = distinct !{!94, !45, !46}
!95 = distinct !{!95, !41}
!96 = distinct !{!96, !45}
!97 = !{!98, !5, i64 4}
!98 = !{!"_ZTS20btAlignedObjectArrayIjE", !99, i64 0, !5, i64 4, !5, i64 8, !73, i64 16, !20, i64 24}
!99 = !{!"_ZTS18btAlignedAllocatorIjLj16EE"}
!100 = !{!98, !5, i64 8}
!101 = !{!98, !73, i64 16}
!102 = distinct !{!102, !45, !46}
!103 = distinct !{!103, !41}
!104 = distinct !{!104, !45}
!105 = !{!98, !20, i64 24}
!106 = distinct !{!106, !45, !46}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !45}
!109 = !{!110, !5, i64 4}
!110 = !{!"_ZTS11PHullResult", !5, i64 0, !5, i64 4, !5, i64 8, !18, i64 16, !98, i64 24}
!111 = !{!110, !5, i64 8}
!112 = !{!110, !18, i64 16}
!113 = !{!110, !5, i64 0}
!114 = !{!115, !5, i64 4}
!115 = !{!"_ZTS8HullDesc", !5, i64 0, !5, i64 4, !18, i64 8, !5, i64 16, !9, i64 20, !5, i64 24, !5, i64 28}
!116 = !{!115, !18, i64 8}
!117 = !{!115, !5, i64 16}
!118 = !{!115, !9, i64 20}
!119 = !{!115, !5, i64 24}
!120 = !{!115, !5, i64 0}
!121 = !{!122, !20, i64 0}
!122 = !{!"_ZTS10HullResult", !20, i64 0, !5, i64 4, !16, i64 8, !5, i64 40, !5, i64 44, !98, i64 48}
!123 = !{!122, !5, i64 4}
!124 = !{!122, !5, i64 40}
!125 = !{!122, !5, i64 44}
!126 = distinct !{!126, !45, !46}
!127 = distinct !{!127, !41}
!128 = distinct !{!128, !45}
!129 = distinct !{!129, !45, !46}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !45}
!132 = distinct !{!132, !45, !46}
!133 = distinct !{!133, !41}
!134 = distinct !{!134, !45}
end_hunk_1
