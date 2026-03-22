begin_hunk_0
7:                                                ; preds = %2
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; [#uses=2 type=ptr]
  %9 = load <4 x double>, ptr %8, align 8         ; [#uses=1 type=<4 x double>]
  %10 = fcmp olt <4 x double> %9, splat (double 0x3F847A5B0FF10ECC) ; [#uses=1 type=<4 x i1>]
  %11 = bitcast <4 x i1> %10 to i4                ; [#uses=1 type=i4]
  %.not = icmp eq i4 %11, 0                       ; [#uses=1 type=i1]
  br i1 %.not, label %63, label %12
end_hunk_0
begin_hunk_1
35:                                               ; preds = %2
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; [#uses=2 type=ptr]
  %37 = load <4 x double>, ptr %36, align 8       ; [#uses=1 type=<4 x double>]
  %38 = fcmp olt <4 x double> %37, splat (double 0x3F847A5B0FF10ECC) ; [#uses=1 type=<4 x i1>]
  %39 = bitcast <4 x i1> %38 to i4                ; [#uses=1 type=i4]
  %.not57 = icmp eq i4 %39, 0                     ; [#uses=1 type=i1]
  br i1 %.not57, label %63, label %40

40:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
end_hunk_1
begin_hunk_2
  store double %131, ptr %132, align 8, !tbaa !35
  %133 = load <9 x float>, ptr %0, align 8        ; [#uses=1 type=<9 x float>]
  %134 = shufflevector <9 x float> %133, <9 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 8> ; [#uses=1 type=<4 x float>]
  %135 = fcmp oeq <4 x float> %134, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; [#uses=2 type=<4 x i1>]
  %136 = extractelement <4 x i1> %135, i64 3      ; [#uses=1 type=i1]
  %137 = zext i1 %136 to i8                       ; [#uses=1 type=i8]
  store i8 %137, ptr %128, align 8, !tbaa !34
end_hunk_2
