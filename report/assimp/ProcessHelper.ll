inline.NumInlined: 318
inline.NumDeleted: 153
begin_hunk_0_@__gxx_personality_v0
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE(ptr noundef readonly captures(none) %0, ptr noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %1, ptr noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %2, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3) local_unnamed_addr #3 {
bb.a:
  store <2 x float> splat (float 0x42374876E0000000), ptr %1, align 4
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store float 0x42374876E0000000, ptr %.sroa.539.0..sroa_idx, align 4
  store <2 x float> splat (float 0xC2374876E0000000), ptr %2, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store float 0xC2374876E0000000, ptr %.sroa.5.0..sroa_idx, align 4
end_hunk_0
begin_hunk_1_@_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
end_hunk_1
begin_hunk_2_@_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.j = load float, ptr %i.i, align 4            ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load float, ptr %4, align 4              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  %i.n = load float, ptr %i.d, align 4
  %5 = load float, ptr %i.e, align 4
  %6 = fmul float %i.k, %5
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %i.j, float %6)
  %i.p = load float, ptr %i.f, align 4
  %7 = tail call float @llvm.fmuladd.f32(float %i.p, float %i.m, float %i.o)
  %i.q = load float, ptr %i.g, align 4
  %8 = fadd float %i.q, %7                        ; 4 uses
  %9 = load <8 x float>, ptr %3, align 4          ; 4 uses
  %10 = insertelement <2 x float> poison, float %i.k, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = shufflevector <8 x float> %9, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %13 = fmul <2 x float> %11, %12
  %14 = shufflevector <8 x float> %9, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %15 = insertelement <2 x float> poison, float %i.j, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> %16, <2 x float> %13)
  %18 = shufflevector <8 x float> %9, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %19 = insertelement <2 x float> poison, float %i.m, i64 0
  %20 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %18, <2 x float> %20, <2 x float> %17)
  %22 = shufflevector <8 x float> %9, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %23 = fadd <2 x float> %21, %22                 ; 4 uses
  %24 = load <2 x float>, ptr %1, align 4         ; 2 uses
  %25 = fcmp olt <2 x float> %24, %23
  %26 = select <2 x i1> %25, <2 x float> %24, <2 x float> %23
  %i.r = load float, ptr %.sroa.539.0..sroa_idx, align 4 ; 2 uses
  %i.s = fcmp olt float %i.r, %8
  %i.t = select i1 %i.s, float %i.r, float %8
  store <2 x float> %26, ptr %1, align 4
  store float %i.t, ptr %.sroa.539.0..sroa_idx, align 4
  %27 = load <2 x float>, ptr %2, align 4         ; 2 uses
  %28 = fcmp olt <2 x float> %23, %27
  %29 = select <2 x i1> %28, <2 x float> %27, <2 x float> %23
  %i.u = load float, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.v = fcmp olt float %8, %i.u
  %i.w = select i1 %i.v, float %i.u, float %8
  store <2 x float> %29, ptr %2, align 4
  store float %i.w, ptr %.sroa.5.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.a, align 4
end_hunk_2
