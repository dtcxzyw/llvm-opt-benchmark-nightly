begin_hunk_0
7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %9 = load <4 x double>, ptr %8, align 8
  %.fr = freeze <4 x double> %9
  %10 = fcmp olt <4 x double> %.fr, splat (double 0x3F847A5B0FF10ECC)
  %11 = bitcast <4 x i1> %10 to i4
  %.not = icmp eq i4 %11, 0
  br i1 %.not, label %63, label %12
end_hunk_0
begin_hunk_1
35:                                               ; preds = %2
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %37 = load <4 x double>, ptr %36, align 8
  %.fr57 = freeze <4 x double> %37
  %38 = fcmp olt <4 x double> %.fr57, splat (double 0x3F847A5B0FF10ECC)
  %39 = bitcast <4 x i1> %38 to i4
  %.not58 = icmp eq i4 %39, 0
  br i1 %.not58, label %63, label %40

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
end_hunk_1
begin_hunk_2
  store double %131, ptr %132, align 8, !tbaa !35
  %133 = load <9 x float>, ptr %0, align 8
  %134 = shufflevector <9 x float> %133, <9 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 8>
  %.fr = freeze <4 x float> %134
  %135 = fcmp oeq <4 x float> %.fr, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %136 = extractelement <4 x i1> %135, i64 3
  %137 = zext i1 %136 to i8
  store i8 %137, ptr %128, align 8, !tbaa !34
end_hunk_2
