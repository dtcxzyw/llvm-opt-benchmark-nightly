inline.NumInlined: 627
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
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
define dso_local { <2 x float>, <2 x float> } @_Z22ThreePlaneIntersectionRK7btPlaneS1_S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.985.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.985.0.copyload = load float, ptr %.sroa.985.0..sroa_idx, align 4 ; 4 uses
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.777.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.777.0.copyload = load float, ptr %.sroa.777.0..sroa_idx, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !8  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !8  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !8  ; 2 uses
  %i.g = load <2 x float>, ptr %0, align 4        ; 5 uses
  %.sroa.575.0.copyload = load float, ptr %.sroa.575.0..sroa_idx, align 4 ; 2 uses
  %i.h = load <2 x float>, ptr %1, align 4        ; 3 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.i = load <2 x float>, ptr %2, align 4        ; 3 uses
  %i.j = fneg float %.sroa.5.0.copyload
  %i.k = fmul float %.sroa.777.0.copyload, %i.j
  %i.l = tail call float @llvm.fmuladd.f32(float %.sroa.575.0.copyload, float %.sroa.7.0.copyload, float %i.k) ; 2 uses
  %i.m = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.n = insertelement <2 x float> %i.m, float %.sroa.7.0.copyload, i64 0 ; 2 uses
  %i.o = fneg <2 x float> %i.n
  %i.p = fmul <2 x float> %i.h, %i.o
  %i.q = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.r = insertelement <2 x float> %i.q, float %.sroa.777.0.copyload, i64 0 ; 2 uses
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.i, <2 x float> %i.p) ; 3 uses
  %i.t = extractelement <2 x float> %i.g, i64 1   ; 3 uses
  %i.u = fneg float %i.t
  %i.v = fmul float %.sroa.7.0.copyload, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %.sroa.5.0.copyload, float %.sroa.985.0.copyload, float %i.v)
  %i.x = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.y = insertelement <2 x float> %i.x, float %.sroa.985.0.copyload, i64 0 ; 2 uses
  %i.z = fneg <2 x float> %i.y
  %i.aa = fmul <2 x float> %i.i, %i.z
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.n, <2 x float> %i.g, <2 x float> %i.aa)
  %i.ac = fneg float %.sroa.575.0.copyload
  %i.ad = fmul float %.sroa.985.0.copyload, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.t, float %.sroa.777.0.copyload, float %i.ad)
  %i.af = fneg <2 x float> %i.r
  %i.ag = fmul <2 x float> %i.g, %i.af
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.h, <2 x float> %i.ag)
  %i.ai = extractelement <2 x float> %i.s, i64 0
  %i.aj = fmul float %i.t, %i.ai
  %i.ak = extractelement <2 x float> %i.g, i64 0
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.l, float %i.aj)
  %i.am = extractelement <2 x float> %i.s, i64 1
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %.sroa.985.0.copyload, float %i.am, float %i.al)
  %i.ao = fdiv float -1.000000e+00, %i.an         ; 2 uses
  %i.ap = fmul float %i.b, %i.l
  %i.aq = insertelement <2 x float> poison, float %i.b, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fmul <2 x float> %i.ar, %i.s
  %i.at = fmul float %i.d, %i.w
  %i.au = insertelement <2 x float> poison, float %i.d, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.ab, %i.av
  %i.ax = fmul float %i.ae, %i.f
  %i.ay = insertelement <2 x float> poison, float %i.f, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fmul <2 x float> %i.ah, %i.az
  %i.bb = fadd float %i.ap, %i.at
  %i.bc = fadd <2 x float> %i.as, %i.aw
  %i.bd = fadd float %i.ax, %i.bb
  %i.be = fadd <2 x float> %i.ba, %i.bc
  %i.bf = fmul float %i.bd, %i.ao
  %i.bg = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.be, %i.bh           ; 2 uses
  %.sroa.088.0.vec.insert = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bj = shufflevector <2 x float> %.sroa.088.0.vec.insert, <2 x float> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.bk = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.bi, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.bj, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.bk, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local { <2 x float>, <2 x float> } @_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
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
define dso_local { <2 x float>, <2 x float> } @_Z12PlaneProjectRK7btPlaneRK9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.a = load float, ptr %2, align 4, !tbaa !8    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !8  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load float, ptr %i.d, align 4, !tbaa !11
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 3 uses
  %4 = load <2 x float>, ptr %0, align 4, !tbaa !8 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %3, %4
  %5 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %6 = extractelement <2 x float> %3, i64 0
  %7 = extractelement <2 x float> %4, i64 0
  %i.f = tail call float @llvm.fmuladd.f32(float %6, float %7, float %5)
  %8 = tail call noundef float @llvm.fmuladd.f32(float %i.a, float %i.c, float %i.f)
  %i.g = fadd float %8, %i.e                      ; 2 uses
  %9 = insertelement <2 x float> poison, float %i.g, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x float> %4, %10
  %12 = fmul float %i.c, %i.g
  %13 = fsub <2 x float> %3, %11
  %i.h = fsub float %i.a, %12
  %.sroa.3.12.vec.insert.i7 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.h, i64 0
  %.fca.0.insert.i8 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %13, 0
  %.fca.1.insert.i9 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i8, <2 x float> %.sroa.3.12.vec.insert.i7, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_Z9TriNormalRK9btVector3S1_S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !8
  %i.b = load float, ptr %0, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %2, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load <2 x float>, ptr %i.c, align 4, !tbaa !8 ; 3 uses
  %i.h = load <2 x float>, ptr %i.d, align 4, !tbaa !8 ; 2 uses
  %i.i = fsub <2 x float> %i.g, %i.h              ; 2 uses
  %i.j = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.k = insertelement <2 x float> %i.j, float %i.a, i64 1 ; 2 uses
  %i.l = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.m = insertelement <2 x float> %i.l, float %i.b, i64 1
  %i.n = fsub <2 x float> %i.k, %i.m              ; 2 uses
  %i.o = load <2 x float>, ptr %i.f, align 4, !tbaa !8 ; 2 uses
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.q = insertelement <2 x float> %i.p, float %i.e, i64 1
  %i.r = fsub <2 x float> %i.q, %i.k              ; 2 uses
  %i.s = fsub <2 x float> %i.o, %i.g              ; 2 uses
  %i.t = fneg <2 x float> %i.s
  %i.u = fmul <2 x float> %i.n, %i.t
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.i, <2 x float> %i.r, <2 x float> %i.u) ; 4 uses
  %i.w = extractelement <2 x float> %i.r, i64 1
  %i.x = fneg float %i.w
  %i.y = extractelement <2 x float> %i.i, i64 0
  %i.z = fmul float %i.y, %i.x
  %i.aa = extractelement <2 x float> %i.n, i64 1
  %i.ab = extractelement <2 x float> %i.s, i64 0
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.ab, float %i.z) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.v, %i.v
  %i.ad = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ae = extractelement <2 x float> %i.v, i64 0  ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ad)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.af) ; 2 uses
  %i.ah = fcmp oeq float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ag)
  %i.ai = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x float> %i.v, %i.ak
  %i.am = fmul float %i.ac, %i.ai
  %.sroa.3.12.vec.insert.i13 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.am, i64 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.028.0 = phi <2 x float> [ %i.al, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ]
  %.sroa.4.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i13, %bb.b ], [ zeroinitializer, %bb.a ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.028.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.4.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define dso_local noundef float @_Z20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
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
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.h = load float, ptr %3, align 4, !tbaa !8    ; 2 uses
  %i.i = load float, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.j = fneg float %i.h
  %i.k = load <2 x float>, ptr %i.d, align 4, !tbaa !8 ; 3 uses
  %i.l = load <2 x float>, ptr %i.g, align 4, !tbaa !8 ; 3 uses
  %i.m = fneg <2 x float> %i.l
  %i.n = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.o = insertelement <2 x float> %i.n, float %i.i, i64 1
  %i.p = fmul <2 x float> %i.o, %i.m
  %i.q = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.r = insertelement <2 x float> %i.q, float %i.h, i64 1
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.r, <2 x float> %i.p) ; 4 uses
  %i.t = extractelement <2 x float> %i.k, i64 0
  %i.u = fmul float %i.t, %i.j
  %i.v = extractelement <2 x float> %i.l, i64 0
  %i.w = tail call float @llvm.fmuladd.f32(float %i.i, float %i.v, float %i.u) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.s, %i.s
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.y = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.x)
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.z)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aa)
  %i.ab = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.s, %i.ad            ; 5 uses
  %i.af = fmul float %i.w, %i.ab                  ; 4 uses
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %i.ae, ptr @_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZZ20DistanceBetweenLinesRK9btVector3S1_S1_S1_PS_S2_E2cp, i64 8), align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !8 ; 2 uses
  %i.aj = load <2 x float>, ptr %0, align 4, !tbaa !8 ; 3 uses
  %i.ak = load <2 x float>, ptr %2, align 4, !tbaa !8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !8 ; 2 uses
  %.not30 = icmp eq ptr %4, null
  br i1 %.not30, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !8
  %i.ap = load float, ptr %i.ag, align 4, !tbaa !8
  %i.aq = load float, ptr %i.g, align 4, !tbaa !8 ; 2 uses
  %i.ar = load float, ptr %i.e, align 4, !tbaa !8 ; 2 uses
  %i.as = extractelement <2 x float> %i.ae, i64 1 ; 2 uses
  %i.at = fneg float %i.as
  %i.au = fmul float %i.ar, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.af, float %i.au) ; 3 uses
  %i.aw = load float, ptr %3, align 4, !tbaa !8   ; 2 uses
  %i.ax = fneg float %i.af
  %i.ay = fmul float %i.aw, %i.ax
  %i.az = extractelement <2 x float> %i.ae, i64 0 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.az, float %i.ay) ; 3 uses
  %i.bb = fneg float %i.az
  %i.bc = fmul float %i.aq, %i.bb
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.as, float %i.bc) ; 3 uses
  %i.be = fmul float %i.ba, %i.ba
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.be)
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.bf)
  %sqrt.i.i37 = tail call noundef float @llvm.sqrt.f32(float %i.bg)
  %i.bh = fdiv float 1.000000e+00, %sqrt.i.i37    ; 3 uses
  %i.bi = fmul float %i.av, %i.bh                 ; 3 uses
  %i.bj = fmul float %i.ba, %i.bh                 ; 3 uses
  %i.bk = fmul float %i.bd, %i.bh                 ; 3 uses
  %i.bl = fmul float %i.ao, %i.bj
  %i.bm = extractelement <2 x float> %i.ak, i64 0
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bm, float %i.bl)
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.bk, float %i.am, float %i.bn)
  %i.bp = load <2 x float>, ptr %1, align 4, !tbaa !8
  %i.bq = insertelement <2 x float> %i.aj, float %i.ap, i64 1
  %i.br = fadd <2 x float> %i.bq, %i.bp
  %i.bs = load float, ptr %i.f, align 4, !tbaa !8
  %i.bt = fadd float %i.ai, %i.bs
  %i.bu = load atomic i8, ptr @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif acquire, align 8
  %i.bv = icmp eq i8 %i.bu, 0
  br i1 %i.bv, label %bb.f, label %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.bw = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif) #19
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_E3dif) #19
  br label %_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit

_Z21PlaneLineIntersectionRK7btPlaneRK9btVector3S4_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.bx = load float, ptr %i.ah, align 4, !tbaa !8 ; 3 uses
  %i.by = fsub float %i.bt, %i.bx                 ; 2 uses
  %i.bz = load <2 x float>, ptr %0, align 4, !tbaa !8
  %i.ca = fsub <2 x float> %i.br, %i.bz           ; 3 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 1
  %i.cc = fmul float %i.bj, %i.cb
  %i.cd = extractelement <2 x float> %i.ca, i64 0
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.cd, float %i.cc)
  %i.cf = tail call noundef float @llvm.fmuladd.f32(float %i.bk, float %i.by, float %i.ce)
  %i.cg = load <2 x float>, ptr %0, align 4, !tbaa !8 ; 3 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 1
  %i.ci = fmul float %i.bj, %i.ch
  %i.cj = extractelement <2 x float> %i.cg, i64 0
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.cj, float %i.ci)
  %i.cl = tail call noundef float @llvm.fmuladd.f32(float %i.bk, float %i.bx, float %i.ck)
  %i.cm = fsub float %i.cl, %i.bo
  %i.cn = fneg float %i.cm
  %i.co = fdiv float %i.cn, %i.cf                 ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.ca, %i.cq
  %i.cs = fmul float %i.by, %i.co
  %i.ct = fadd <2 x float> %i.cg, %i.cr
  %i.cu = fadd float %i.bx, %i.cs
  %.sroa.3.12.vec.insert.i16.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cu, i64 0
  store <2 x float> %i.ct, ptr %4, align 4
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i16.i, ptr %.sroa.44.0..sroa_idx, align 4, !tbaa !14
end_hunk_0
