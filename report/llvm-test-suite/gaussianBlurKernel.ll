begin_hunk_0_@gaussianBlurKernel:bb.a
.preheader70:                                     ; preds = %bb.a, %.preheader70
  %indvars.iv = phi i64 [ -4, %bb.a ], [ %indvars.iv.next, %.preheader70 ] ; 4 uses
  %.06573 = phi float [ 0.000000e+00, %bb.a ], [ %i.ax, %.preheader70 ]
  %i.b = mul nsw i64 %indvars.iv, %indvars.iv     ; 5 uses
  %i.c = getelementptr [36 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %4 = trunc i64 %i.b to i32
  %5 = sub i32 -16, %4
  %6 = sitofp i32 %5 to float
  %7 = fdiv float %6, 1.620000e+02
  %8 = fpext float %7 to double                   ; 2 uses
  %9 = tail call double @exp(double noundef %8) #4, !tbaa !4
  %i.d = getelementptr i8, ptr %i.c, i64 144
  %i.e = trunc i64 %i.b to i32
  %10 = sub i32 -9, %i.e
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %11, 1.620000e+02
  %13 = fpext float %12 to double                 ; 2 uses
  %14 = tail call double @exp(double noundef %13) #4, !tbaa !4
  %15 = trunc i64 %i.b to i32
  %16 = sub i32 -4, %15
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %17, 1.620000e+02
  %19 = fpext float %18 to double                 ; 2 uses
  %i.f = tail call double @exp(double noundef %19) #4, !tbaa !4
  %20 = trunc i64 %i.b to i32
  %21 = xor i32 %20, -1
  %22 = sitofp i32 %21 to float
  %23 = fdiv float %22, 1.620000e+02
  %24 = fpext float %23 to double                 ; 2 uses
  %i.g = tail call double @exp(double noundef %24) #4, !tbaa !4
  %i.h = insertelement <4 x double> poison, double %9, i64 0
  %i.i = insertelement <4 x double> %i.h, double %14, i64 1
  %i.j = insertelement <4 x double> %i.i, double %i.f, i64 2
  %i.k = insertelement <4 x double> %i.j, double %i.g, i64 3
  %i.l = fdiv <4 x double> %i.k, splat (double 0x407FCF0216A64912)
  %i.m = fptrunc <4 x double> %i.l to <4 x float> ; 5 uses
end_hunk_0
begin_hunk_1_@gaussianBlurKernel:bb.a
  %i.z = fpext float %i.y to double
  %i.aa = tail call double @exp(double noundef %i.z) #4, !tbaa !4
  %i.ab = getelementptr i8, ptr %i.c, i64 160
  %i.ac = tail call double @exp(double noundef %24) #4, !tbaa !4
  %i.ad = tail call double @exp(double noundef %19) #4, !tbaa !4
  %i.ae = tail call double @exp(double noundef %13) #4, !tbaa !4
  %i.af = insertelement <4 x double> poison, double %i.aa, i64 0
  %i.ag = insertelement <4 x double> %i.af, double %i.ac, i64 1
end_hunk_1
begin_hunk_2_@gaussianBlurKernel:bb.a
  store <4 x float> %i.ak, ptr %i.ab, align 4, !tbaa !8
  %i.ar = extractelement <4 x float> %i.ak, i64 3
  %i.as = fadd float %i.aq, %i.ar
  %i.at = tail call double @exp(double noundef %8) #4, !tbaa !4
  %i.au = fdiv double %i.at, 0x407FCF0216A64912
  %i.av = fptrunc double %i.au to float           ; 2 uses
  %i.aw = getelementptr i8, ptr %i.c, i64 176
end_hunk_2
