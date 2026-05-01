begin_hunk_0_@gaussianBlurKernel:bb.a
.preheader70:                                     ; preds = %bb.a, %.preheader70
  %indvars.iv = phi i64 [ -4, %bb.a ], [ %indvars.iv.next, %.preheader70 ] ; 4 uses
  %.06573 = phi float [ 0.000000e+00, %bb.a ], [ %i.ax, %.preheader70 ]
  %i.b = mul nsw i64 %indvars.iv, %indvars.iv     ; 2 uses
  %i.c = getelementptr [36 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 144
  %i.e = trunc i64 %i.b to i32
  %4 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %5 = shufflevector <4 x i32> %4, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %6 = sub <4 x i32> <i32 -16, i32 -9, i32 -4, i32 poison>, %5
  %7 = xor <4 x i32> %5, <i32 poison, i32 poison, i32 poison, i32 -1>
  %8 = shufflevector <4 x i32> %6, <4 x i32> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %9 = sitofp <4 x i32> %8 to <4 x float>
  %10 = fdiv <4 x float> %9, splat (float 1.620000e+02)
  %11 = fpext <4 x float> %10 to <4 x double>     ; 4 uses
  %12 = extractelement <4 x double> %11, i64 0    ; 2 uses
  %i.f = tail call double @exp(double noundef %12) #4, !tbaa !4
  %13 = extractelement <4 x double> %11, i64 1    ; 2 uses
  %14 = tail call double @exp(double noundef %13) #4, !tbaa !4
  %15 = extractelement <4 x double> %11, i64 2    ; 2 uses
  %16 = tail call double @exp(double noundef %15) #4, !tbaa !4
  %17 = extractelement <4 x double> %11, i64 3    ; 2 uses
  %i.g = tail call double @exp(double noundef %17) #4, !tbaa !4
  %i.h = insertelement <4 x double> poison, double %i.f, i64 0
  %i.i = insertelement <4 x double> %i.h, double %14, i64 1
  %i.j = insertelement <4 x double> %i.i, double %16, i64 2
  %i.k = insertelement <4 x double> %i.j, double %i.g, i64 3
  %i.l = fdiv <4 x double> %i.k, splat (double 0x407FCF0216A64912)
  %i.m = fptrunc <4 x double> %i.l to <4 x float> ; 5 uses
end_hunk_0
begin_hunk_1_@gaussianBlurKernel:bb.a
  %i.z = fpext float %i.y to double
  %i.aa = tail call double @exp(double noundef %i.z) #4, !tbaa !4
  %i.ab = getelementptr i8, ptr %i.c, i64 160
  %i.ac = tail call double @exp(double noundef %17) #4, !tbaa !4
  %i.ad = tail call double @exp(double noundef %15) #4, !tbaa !4
  %i.ae = tail call double @exp(double noundef %13) #4, !tbaa !4
  %i.af = insertelement <4 x double> poison, double %i.aa, i64 0
  %i.ag = insertelement <4 x double> %i.af, double %i.ac, i64 1
end_hunk_1
begin_hunk_2_@gaussianBlurKernel:bb.a
  store <4 x float> %i.ak, ptr %i.ab, align 4, !tbaa !8
  %i.ar = extractelement <4 x float> %i.ak, i64 3
  %i.as = fadd float %i.aq, %i.ar
  %i.at = tail call double @exp(double noundef %12) #4, !tbaa !4
  %i.au = fdiv double %i.at, 0x407FCF0216A64912
  %i.av = fptrunc double %i.au to float           ; 2 uses
  %i.aw = getelementptr i8, ptr %i.c, i64 176
end_hunk_2
