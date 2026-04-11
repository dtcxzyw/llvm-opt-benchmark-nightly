inline.NumInlined: 18
inline.NumDeleted: 10
begin_hunk_0_@llvm.memcpy.p0.p0.i64
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6Assimp13GeometryUtils14PlaneIntersectERK5aiRayRK10aiVector3tIfES7_RS5_(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(12) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %4 = load float, ptr %0, align 4                ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load float, ptr %5, align 4                ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4            ; 2 uses
  %i.c = load float, ptr %2, align 4              ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp13GeometryUtils14PlaneIntersectERK5aiRayRK10aiVector3tIfES7_RS5_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load float, ptr %i.f, align 4            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %7 = load float, ptr %i.h, align 4              ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %9 = load float, ptr %8, align 4                ; 2 uses
  %i.i = fmul float %i.e, %9
  %i.j = tail call float @llvm.fmuladd.f32(float %7, float %i.c, float %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load float, ptr %i.k, align 4            ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp13GeometryUtils14PlaneIntersectERK5aiRayRK10aiVector3tIfES7_RS5_:bb.a
  %i.q = load float, ptr %i.p, align 4
  %i.r = fsub float %i.q, %i.b
  %i.s = load float, ptr %1, align 4
  %i.t = fsub float %i.s, %4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.u, align 4
  %i.w = fsub float %i.v, %6
  %i.x = fmul float %i.e, %i.w
  %i.y = tail call float @llvm.fmuladd.f32(float %i.c, float %i.t, float %i.x)
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.r, float %i.y)
  %i.aa = fdiv float %i.z, %i.m                   ; 4 uses
  %i.ab = fcmp olt float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %10 = fmul float %7, %i.aa
  %11 = fmul float %9, %i.aa
  %12 = fmul float %i.l, %i.aa
  %13 = fadd float %4, %10
  %14 = fadd float %6, %11
  %i.ac = fadd float %i.b, %12
  %.sroa.0.0.vec.insert.i29 = insertelement <2 x float> poison, float %13, i64 0
  %.sroa.0.4.vec.insert.i30 = insertelement <2 x float> %.sroa.0.0.vec.insert.i29, float %14, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i30, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.ac, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.d
end_hunk_2
begin_hunk_3_@_ZN6Assimp13GeometryUtils20normalizeVectorArrayEP10aiVector3tIfES3_m:bb.a

.lr.ph:                                           ; preds = %bb.a, %_ZN10aiVector3tIfE9NormalizeEv.exit
  %.011 = phi i64 [ %i.m, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ 0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.011 ; 5 uses
  %3 = load float, ptr %i.d, align 4              ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %5 = load float, ptr %4, align 4                ; 3 uses
  %6 = fmul float %5, %5
  %i.e = tail call float @llvm.fmuladd.f32(float %3, float %3, float %6)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load float, ptr %i.f, align 4            ; 3 uses
  %i.h = tail call noundef float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.e) ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6Assimp13GeometryUtils20normalizeVectorArrayEP10aiVector3tIfES3_m:bb.a

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %.lr.ph
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.h)
  %i.j = fdiv float 1.000000e+00, %sqrt.i.i       ; 3 uses
  %7 = fmul float %3, %i.j
  store float %7, ptr %i.d, align 4
  %8 = fmul float %5, %i.j
  store float %8, ptr %4, align 4
  %i.k = fmul float %i.g, %i.j
  store float %i.k, ptr %i.f, align 4
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit
end_hunk_4
