inline.NumInlined: 318
inline.NumDeleted: 153
begin_hunk_0_@__gxx_personality_v0
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %1, ptr noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3) local_unnamed_addr #3 {
bb.a:
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store <2 x float> splat (float 0x42374876E0000000), ptr %1, align 4
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store float 0x42374876E0000000, ptr %.sroa.539.0..sroa_idx, align 4
  %.sroa.4.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> splat (float 0xC2374876E0000000), ptr %2, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store float 0xC2374876E0000000, ptr %.sroa.5.0..sroa_idx, align 4
end_hunk_0
begin_hunk_1_@_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
end_hunk_1
begin_hunk_2_@_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.j = load float, ptr %3, align 4
  %11 = load float, ptr %i.i, align 4             ; 3 uses
  %i.k = load float, ptr %4, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load float, ptr %i.l, align 4            ; 3 uses
  %12 = fmul float %i.k, %i.m
  %13 = tail call float @llvm.fmuladd.f32(float %i.j, float %11, float %12)
  %i.n = load float, ptr %5, align 4
  %14 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %15 = load float, ptr %14, align 4              ; 3 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %15, float %13)
  %i.p = load float, ptr %6, align 4
  %16 = fadd float %i.o, %i.p                     ; 4 uses
  %17 = load float, ptr %7, align 4
  %i.q = load float, ptr %8, align 4
  %18 = fmul float %i.m, %i.q
  %19 = tail call float @llvm.fmuladd.f32(float %17, float %11, float %18)
  %20 = load float, ptr %9, align 4
  %21 = tail call float @llvm.fmuladd.f32(float %20, float %15, float %19)
  %22 = load float, ptr %10, align 4
  %23 = fadd float %22, %21                       ; 4 uses
  %24 = load float, ptr %i.d, align 4
  %25 = load float, ptr %i.e, align 4
  %26 = fmul float %i.m, %25
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %11, float %26)
  %28 = load float, ptr %i.f, align 4
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %15, float %27)
  %30 = load float, ptr %i.g, align 4
  %31 = fadd float %30, %29                       ; 4 uses
  %32 = load float, ptr %1, align 4               ; 2 uses
  %33 = fcmp olt float %32, %16
  %34 = select i1 %33, float %32, float %16
  %35 = load float, ptr %.sroa.438.0..sroa_idx, align 4 ; 2 uses
  %36 = fcmp olt float %35, %23
  %37 = select i1 %36, float %35, float %23
  %i.r = load float, ptr %.sroa.539.0..sroa_idx, align 4 ; 2 uses
  %i.s = fcmp olt float %i.r, %31
  %i.t = select i1 %i.s, float %i.r, float %31
  %.sroa.0.0.vec.insert.i22 = insertelement <2 x float> poison, float %34, i64 0
  %.sroa.0.4.vec.insert.i23 = insertelement <2 x float> %.sroa.0.0.vec.insert.i22, float %37, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i23, ptr %1, align 4
  store float %i.t, ptr %.sroa.539.0..sroa_idx, align 4
  %38 = load float, ptr %2, align 4               ; 2 uses
  %39 = fcmp olt float %16, %38
  %40 = select i1 %39, float %38, float %16
  %41 = load float, ptr %.sroa.4.0..sroa_idx36, align 4 ; 2 uses
  %42 = fcmp olt float %23, %41
  %43 = select i1 %42, float %41, float %23
  %i.u = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.v = fcmp olt float %31, %i.u
  %i.w = select i1 %i.v, float %i.u, float %31
  %.sroa.0.0.vec.insert.i26 = insertelement <2 x float> poison, float %40, i64 0
  %.sroa.0.4.vec.insert.i27 = insertelement <2 x float> %.sroa.0.0.vec.insert.i26, float %43, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i27, ptr %2, align 4
  store float %i.w, ptr %.sroa.5.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.a, align 4
end_hunk_2
