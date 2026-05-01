inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_:bb.a
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %4 = load float, ptr %0, align 4                ; 4 uses
  %5 = load float, ptr %i.c, align 4              ; 4 uses
  %i.k = load float, ptr %i.g, align 4            ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %6 = fmul float %5, %5
  %7 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %6)
  %8 = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.k, float %7)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %8) ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %10 = load <2 x float>, ptr %i.l, align 4       ; 3 uses
  %11 = load <2 x float>, ptr %i.m, align 4       ; 3 uses
  %12 = load <2 x float>, ptr %i.n, align 4       ; 4 uses
  store float %sqrt.i, ptr %1, align 4
  %13 = fmul <2 x float> %11, %11
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %10, <2 x float> %10, <2 x float> %13)
  %15 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %12, <2 x float> %14)
  %16 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %15) ; 3 uses
  store <2 x float> %16, ptr %9, align 4
  %i.r = load float, ptr %0, align 4              ; 3 uses
  %i.s = load float, ptr %i.m, align 4            ; 3 uses
  %i.t = fmul float %i.r, %i.s                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_:bb.a
  br i1 %i.cy, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load float, ptr %1, align 4
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = fneg float %sqrt.i                        ; 2 uses
  %i.cz = fneg <2 x float> %16                    ; 3 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %18, i64 0
  %19 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.cz, <2 x i32> <i32 0, i32 2>
  store <2 x float> %19, ptr %1, align 4
  %20 = extractelement <2 x float> %i.cz, i64 1
  store float %20, ptr %17, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.da = phi float [ %.pre, %._crit_edge ], [ %18, %bb.b ] ; 2 uses
  %21 = phi <2 x float> [ %16, %._crit_edge ], [ %i.cz, %bb.b ] ; 2 uses
  %22 = fcmp une float %i.da, 0.000000e+00        ; 3 uses
  %23 = fdiv float 1.000000e+00, %i.da            ; 3 uses
  %24 = fmul float %i.k, %23
  %.sroa.12.0 = select i1 %22, float %24, float %i.k
  %i.db = extractelement <2 x float> %21, i64 0   ; 2 uses
  %25 = fcmp une float %i.db, 0.000000e+00        ; 3 uses
  %26 = fdiv float 1.000000e+00, %i.db            ; 3 uses
  %i.dc = fneg float %.sroa.12.0
  %i.dd = tail call noundef float @asinf(float noundef %i.dc) #48 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.dd, ptr %i.de, align 4
  %i.df = tail call noundef float @cosf(float noundef %i.dd) #48 ; 5 uses
  %i.dg = tail call noundef float @llvm.fabs.f32(float %i.df)
  %i.dh = fcmp ogt float %i.dg, 0x3E80000000000000
  br i1 %i.dh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %27 = extractelement <2 x float> %21, i64 1     ; 2 uses
  %28 = fcmp une float %27, 0.000000e+00
  %29 = fdiv float 1.000000e+00, %27
  %30 = extractelement <2 x float> %12, i64 1     ; 2 uses
  %31 = fmul float %30, %29
  %.sroa.40.0 = select i1 %28, float %31, float %30
  %32 = extractelement <2 x float> %12, i64 0     ; 2 uses
  %33 = fmul float %32, %26
  %.sroa.27.0 = select i1 %25, float %33, float %32
  %34 = fmul float %4, %23
  %.sroa.0.0 = select i1 %22, float %34, float %4
  %35 = fmul float %5, %23
  %.sroa.7.0 = select i1 %22, float %35, float %5
  %36 = fdiv float %.sroa.40.0, %i.df
  %37 = fdiv float %.sroa.27.0, %i.df
  %i.di = tail call noundef float @atan2f(float noundef %37, float noundef %36) #48
  store float %i.di, ptr %2, align 4
  %38 = fdiv float %.sroa.0.0, %i.df
  %39 = fdiv float %.sroa.7.0, %i.df
  %i.dj = tail call noundef float @atan2f(float noundef %39, float noundef %38) #48
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.dk = extractelement <2 x float> %10, i64 0   ; 2 uses
  %i.dl = fmul float %i.dk, %26
  %.sroa.17.0 = select i1 %25, float %i.dl, float %i.dk
  %i.dm = extractelement <2 x float> %11, i64 0   ; 2 uses
  %i.dn = fmul float %i.dm, %26
  %.sroa.22.0 = select i1 %25, float %i.dn, float %i.dm
  store float 0.000000e+00, ptr %2, align 4
  %i.do = fneg float %.sroa.17.0
  %i.dp = tail call noundef float @atan2f(float noundef %i.do, float noundef %.sroa.22.0) #48
end_hunk_1
