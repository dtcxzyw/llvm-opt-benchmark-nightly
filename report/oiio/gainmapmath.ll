inline.NumInlined: 483
inline.NumDeleted: 171
begin_hunk_0_@_ZN8ultrahdr9applyGainENS_5ColorES0_PNS_25uhdr_gainmap_metadata_extE:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.9.0 = phi float [ %i.x, %bb.f ], [ %3, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !11
  %i.aa = fpext contract float %i.z to double
end_hunk_0
begin_hunk_1_@_ZN8ultrahdr9applyGainENS_5ColorES0_PNS_25uhdr_gainmap_metadata_extE:bb.a
  %i.an = load float, ptr %i.am, align 8, !tbaa !11
  %i.ao = fpext contract float %i.an to double
  %i.ap = tail call contract double @log2(double noundef %i.ao) #36, !tbaa !3
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %6 = load float, ptr %5, align 4, !tbaa !11
  %i.aq = fpext contract float %6 to double
  %7 = tail call contract double @log2(double noundef %i.aq) #36, !tbaa !3
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.as = load float, ptr %i.ar, align 4, !tbaa !11
  %i.at = fpext contract float %i.as to double
  %i.au = tail call contract double @log2(double noundef %i.at) #36, !tbaa !3
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %9 = load float, ptr %8, align 8, !tbaa !11
  %10 = fpext contract float %9 to double
  %11 = tail call contract double @log2(double noundef %10) #36, !tbaa !3
  %12 = fpext contract float %i.al to double
  %13 = tail call contract double @exp2(double noundef %12) #36, !tbaa !3
  %14 = shufflevector <2 x float> %.sroa.026.1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x float> %14, float %.sroa.9.0, i64 1 ; 2 uses
  %16 = fsub contract <2 x float> splat (float 1.000000e+00), %15
  %17 = fpext <2 x float> %16 to <2 x double>
  %18 = insertelement <2 x double> poison, double %i.ap, i64 0
  %19 = insertelement <2 x double> %18, double %i.au, i64 1
  %20 = fmul contract <2 x double> %19, %17
  %21 = fpext <2 x float> %15 to <2 x double>
  %22 = insertelement <2 x double> poison, double %7, i64 0
  %23 = insertelement <2 x double> %22, double %11, i64 1
  %24 = fmul contract <2 x double> %23, %21
  %25 = fadd contract <2 x double> %20, %24
  %26 = fptrunc <2 x double> %25 to <2 x float>
  %27 = fpext <2 x float> %26 to <2 x double>     ; 2 uses
  %28 = extractelement <2 x double> %27, i64 0
  %i.av = tail call contract double @exp2(double noundef %28) #36, !tbaa !3
  %29 = extractelement <2 x double> %27, i64 1
  %i.aw = tail call contract double @exp2(double noundef %29) #36, !tbaa !3
  %i.ax = fptrunc contract double %i.aw to float
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ba = insertelement <2 x double> poison, double %13, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.av, i64 1
  %i.bc = fptrunc <2 x double> %i.bb to <2 x float>
  %i.bd = load <2 x float>, ptr %i.ay, align 4, !tbaa !11
end_hunk_1
begin_hunk_2_@_ZN8ultrahdr26convert_raw_input_to_ycbcrEP14uhdr_raw_imageb:bb.a
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.pre739, i64 %i.hi
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %.0331530
  store i16 %i.hf, ptr %i.hk, align 2, !tbaa !29
  %5 = load i32, ptr %i.fy, align 4, !tbaa !3
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %.0330533, %6
  %8 = getelementptr inbounds nuw [2 x i8], ptr %.pre741, i64 %7
  %9 = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %.0331530
  %10 = shufflevector <2 x float> %.fca.0.extract134, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %11 = insertelement <2 x float> %10, float %.fca.1.extract135, i64 1
  %12 = fmul contract <2 x float> %11, splat (float 1.023000e+03)
  %13 = fadd contract <2 x float> %12, splat (float 5.120000e+02)
  %14 = fadd contract <2 x float> %13, splat (float 5.000000e-01) ; 3 uses
  %15 = fcmp contract olt <2 x float> %14, zeroinitializer
  %16 = fcmp contract ogt <2 x float> %14, splat (float 1.023000e+03)
  %17 = select <2 x i1> %16, <2 x float> splat (float 1.023000e+03), <2 x float> %14
  %18 = select <2 x i1> %15, <2 x float> zeroinitializer, <2 x float> %17
  %19 = fptoui <2 x float> %18 to <2 x i16>       ; 2 uses
  %20 = extractelement <2 x i16> %19, i64 0
  store i16 %20, ptr %9, align 2, !tbaa !29
  %i.hl = load i32, ptr %i.fz, align 8, !tbaa !3
  %i.hm = zext i32 %i.hl to i64
  %i.hn = mul nuw i64 %.0330533, %i.hm
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.pre743, i64 %i.hn
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %.0331530
  %21 = extractelement <2 x i16> %19, i64 1
  store i16 %21, ptr %i.hp, align 2, !tbaa !29
  %i.hq = add nuw nsw i64 %.0331530, 1            ; 2 uses
  %i.hr = load i32, ptr %.phi.trans.insert760, align 8, !tbaa !42 ; 2 uses
  %i.hs = zext i32 %i.hr to i64
end_hunk_2
