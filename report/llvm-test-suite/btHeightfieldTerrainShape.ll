inline.NumInlined: 120
inline.NumDeleted: 32
begin_hunk_0_@_ZNK25btHeightfieldTerrainShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_:bb.a
bb.a:
  %4 = alloca [3 x %class.btVector3], align 16    ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !31
  %i.f = load float, ptr %3, align 4, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %5 = load <3 x float>, ptr %i.a, align 4, !tbaa !31
  %6 = shufflevector <3 x float> %5, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2>
  %7 = fdiv <4 x float> splat (float 1.000000e+00), %6 ; 2 uses
  %i.m = load <2 x float>, ptr %i.g, align 4, !tbaa !31
  %i.n = insertelement <4 x float> poison, float %i.f, i64 2
  %8 = insertelement <4 x float> %i.n, float %i.e, i64 3
  %9 = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.o = shufflevector <4 x float> %9, <4 x float> %8, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %10 = fmul <4 x float> %7, %i.o
  %11 = load <3 x float>, ptr %i.h, align 4, !tbaa !31 ; 2 uses
  %12 = shufflevector <3 x float> %11, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2>
  %13 = fadd <4 x float> %10, %12                 ; 2 uses
  %14 = load <3 x float>, ptr %i.k, align 4, !tbaa !31 ; 2 uses
  %15 = shufflevector <3 x float> %14, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %16 = load <3 x float>, ptr %i.l, align 4, !tbaa !31 ; 4 uses
  %17 = shufflevector <3 x float> %16, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2> ; 2 uses
  %18 = extractelement <3 x float> %16, i64 0
  %19 = extractelement <3 x float> %16, i64 1
  %i.p = load <2 x float>, ptr %2, align 4, !tbaa !31
  %20 = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %21 = shufflevector <4 x float> %7, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %22 = fmul <2 x float> %21, %20
  %23 = shufflevector <3 x float> %11, <3 x float> poison, <2 x i32> <i32 1, i32 0>
  %24 = fadd <2 x float> %22, %23                 ; 2 uses
  %25 = shufflevector <3 x float> %14, <3 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %26 = fcmp olt <2 x float> %24, %25
  %27 = select <2 x i1> %26, <2 x float> %25, <2 x float> %24 ; 3 uses
  %28 = shufflevector <3 x float> %16, <3 x float> poison, <2 x i32> <i32 1, i32 0>
  %29 = fcmp olt <2 x float> %28, %27             ; 2 uses
  %30 = extractelement <2 x i1> %29, i64 1
  %31 = extractelement <2 x float> %27, i64 1
  %.sroa.8.0.i = select i1 %30, float %18, float %31 ; 2 uses
  %32 = extractelement <2 x i1> %29, i64 0
  %i.q = extractelement <2 x float> %27, i64 0
  %.sroa.8.1.i = select i1 %32, float %19, float %i.q ; 2 uses
  %i.r = fpext float %.sroa.8.0.i to double
  %i.s = fcmp olt float %.sroa.8.0.i, 0.000000e+00
  %.0.in.v.i.i = select i1 %i.s, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i = fadd double %.0.in.v.i.i, %i.r
  %.0.i.i = fptosi double %.0.in.i.i to i32
end_hunk_0
begin_hunk_1_@_ZNK25btHeightfieldTerrainShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_:bb.a
  %.0.in.v.i5.i = select i1 %i.u, double -5.000000e-01, double 5.000000e-01
  %.0.in.i6.i = fadd double %.0.in.v.i5.i, %i.t
  %.0.i7.i = fptosi double %.0.in.i6.i to i32
  %i.v = fcmp olt <4 x float> %13, %15
  %i.w = select <4 x i1> %i.v, <4 x float> %15, <4 x float> %13 ; 2 uses
  %i.x = fcmp olt <4 x float> %17, %i.w
  %i.y = select <4 x i1> %i.x, <4 x float> %17, <4 x float> %i.w ; 5 uses
  %i.z = extractelement <4 x float> %i.y, i64 3
  %i.aa = fpext float %i.z to double
  %i.ab = fcmp olt <4 x float> %i.y, zeroinitializer ; 4 uses
end_hunk_1
