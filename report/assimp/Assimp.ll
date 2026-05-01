inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_:bb.a
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = load float, ptr %i.g, align 4            ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %4 = load float, ptr %i.o, align 4              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %5 = load float, ptr %i.p, align 4              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %6 = load <2 x float>, ptr %i.n, align 4        ; 2 uses
  %7 = load float, ptr %i.q, align 4              ; 2 uses
  %8 = load <2 x float>, ptr %0, align 4          ; 4 uses
  %9 = load <2 x float>, ptr %i.c, align 4        ; 4 uses
  %10 = fmul <2 x float> %9, %9
  %11 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %8, <2 x float> %10)
  %12 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %13 = insertelement <2 x float> %12, float %i.k, i64 0 ; 2 uses
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %13, <2 x float> %11)
  %15 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %14) ; 4 uses
  store <2 x float> %15, ptr %1, align 4
  %16 = fmul float %5, %5
  %17 = tail call float @llvm.fmuladd.f32(float %4, float %4, float %16)
  %18 = tail call noundef float @llvm.fmuladd.f32(float %7, float %7, float %17)
  %sqrt.i49 = tail call noundef float @llvm.sqrt.f32(float %18) ; 3 uses
  %19 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float %sqrt.i49, ptr %19, align 4
  %i.r = load float, ptr %0, align 4              ; 3 uses
  %i.s = load float, ptr %i.m, align 4            ; 3 uses
  %i.t = fmul float %i.r, %i.s                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfES3_S3_:bb.a
  br i1 %i.cy, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %20 = extractelement <2 x float> %15, i64 1
  %.pre = load float, ptr %1, align 4             ; 2 uses
  %21 = insertelement <2 x float> %15, float %.pre, i64 0
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cz = fneg <2 x float> %15                    ; 4 uses
  %22 = extractelement <2 x float> %i.cz, i64 1
  %23 = extractelement <2 x float> %i.cz, i64 0
  %24 = fneg float %sqrt.i49                      ; 2 uses
  store <2 x float> %i.cz, ptr %1, align 4
  store float %24, ptr %19, align 4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %25 = phi float [ %sqrt.i49, %._crit_edge ], [ %24, %bb.b ] ; 2 uses
  %i.da = phi float [ %20, %._crit_edge ], [ %22, %bb.b ]
  %26 = phi float [ %.pre, %._crit_edge ], [ %23, %bb.b ]
  %27 = phi <2 x float> [ %21, %._crit_edge ], [ %i.cz, %bb.b ]
  %28 = fcmp une float %26, 0.000000e+00          ; 2 uses
  %29 = fcmp une float %i.da, 0.000000e+00        ; 3 uses
  %30 = fdiv <2 x float> splat (float 1.000000e+00), %27 ; 3 uses
  %i.db = extractelement <2 x float> %30, i64 0
  %31 = fmul float %i.k, %i.db
  %.sroa.12.0 = select i1 %28, float %31, float %i.k
  %i.dc = fneg float %.sroa.12.0
  %i.dd = tail call noundef float @asinf(float noundef %i.dc) #48 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.dd, ptr %i.de, align 4
  %i.df = tail call noundef float @cosf(float noundef %i.dd) #48 ; 2 uses
  %i.dg = tail call noundef float @llvm.fabs.f32(float %i.df)
  %i.dh = fcmp ogt float %i.dg, 0x3E80000000000000
  br i1 %i.dh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %32 = fcmp une float %25, 0.000000e+00
  %33 = fdiv float 1.000000e+00, %25
  %34 = shufflevector <2 x float> %6, <2 x float> %8, <4 x i32> <i32 0, i32 poison, i32 1, i32 2>
  %35 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %36 = shufflevector <4 x float> %34, <4 x float> %35, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %37 = shufflevector <2 x float> %30, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %38 = insertelement <4 x float> %37, float %33, i64 2
  %39 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %40 = fmul <4 x float> %36, %39
  %41 = insertelement <4 x i1> poison, i1 %29, i64 0
  %42 = insertelement <4 x i1> %41, i1 %28, i64 1
  %43 = insertelement <4 x i1> %42, i1 %32, i64 2
  %44 = shufflevector <4 x i1> %43, <4 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %45 = select <4 x i1> %44, <4 x float> %40, <4 x float> %36
  %46 = insertelement <4 x float> poison, float %i.df, i64 0
  %47 = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> zeroinitializer
  %48 = fdiv <4 x float> %45, %47                 ; 4 uses
  %49 = extractelement <4 x float> %48, i64 0
  %50 = extractelement <4 x float> %48, i64 2
  %i.di = tail call noundef float @atan2f(float noundef %49, float noundef %50) #48
  store float %i.di, ptr %2, align 4
  %51 = extractelement <4 x float> %48, i64 1
  %52 = extractelement <4 x float> %48, i64 3
  %i.dj = tail call noundef float @atan2f(float noundef %51, float noundef %52) #48
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %53 = extractelement <2 x float> %30, i64 1     ; 2 uses
  %i.dk = extractelement <2 x float> %8, i64 1    ; 2 uses
  %i.dl = fmul float %i.dk, %53
  %.sroa.17.0 = select i1 %29, float %i.dl, float %i.dk
  %i.dm = extractelement <2 x float> %9, i64 1    ; 2 uses
  %i.dn = fmul float %i.dm, %53
  %.sroa.22.0 = select i1 %29, float %i.dn, float %i.dm
  store float 0.000000e+00, ptr %2, align 4
  %i.do = fneg float %.sroa.17.0
  %i.dp = tail call noundef float @atan2f(float noundef %i.do, float noundef %.sroa.22.0) #48
end_hunk_1
