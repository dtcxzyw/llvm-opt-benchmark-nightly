inline.NumInlined: 483
inline.NumDeleted: 171
begin_hunk_0_@_ZN8ultrahdr9applyGainENS_5ColorES0_PNS_25uhdr_gainmap_metadata_extE:bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.9.0 = phi float [ %i.x, %bb.f ], [ %3, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !11
  %i.aa = fpext contract float %i.z to double
end_hunk_0
begin_hunk_1_@_ZN8ultrahdr9applyGainENS_5ColorES0_PNS_25uhdr_gainmap_metadata_extE:bb.a
  %i.an = load float, ptr %i.am, align 8, !tbaa !11
  %i.ao = fpext contract float %i.an to double
  %i.ap = tail call contract double @log2(double noundef %i.ao) #36, !tbaa !3
  %.sroa.026.4.vec.extract34 = extractelement <2 x float> %.sroa.026.1, i64 1 ; 2 uses
  %5 = fsub contract float 1.000000e+00, %.sroa.026.4.vec.extract34
  %i.aq = fpext contract float %5 to double
  %6 = fmul contract double %i.ap, %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !11
  %i.at = fpext contract float %i.as to double
  %i.au = tail call contract double @log2(double noundef %i.at) #36, !tbaa !3
  %7 = fpext contract float %.sroa.026.4.vec.extract34 to double
  %8 = fmul contract double %i.au, %7
  %9 = fadd contract double %6, %8
  %10 = fptrunc contract double %9 to float
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 20
  %12 = load float, ptr %11, align 4, !tbaa !11
  %13 = fpext contract float %12 to double
  %14 = tail call contract double @log2(double noundef %13) #36, !tbaa !3
  %15 = fsub contract float 1.000000e+00, %.sroa.9.0
  %16 = fpext contract float %15 to double
  %17 = fmul contract double %14, %16
  %18 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %19 = load float, ptr %18, align 8, !tbaa !11
  %20 = fpext contract float %19 to double
  %21 = tail call contract double @log2(double noundef %20) #36, !tbaa !3
  %22 = fpext contract float %.sroa.9.0 to double
  %23 = fmul contract double %21, %22
  %24 = fadd contract double %17, %23
  %25 = fptrunc contract double %24 to float
  %26 = fpext contract float %i.al to double
  %27 = tail call contract double @exp2(double noundef %26) #36, !tbaa !3
  %28 = fpext contract float %10 to double
  %i.av = tail call contract double @exp2(double noundef %28) #36, !tbaa !3
  %29 = fpext contract float %25 to double
  %i.aw = tail call contract double @exp2(double noundef %29) #36, !tbaa !3
  %i.ax = fptrunc contract double %i.aw to float
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ba = insertelement <2 x double> poison, double %27, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.av, i64 1
  %i.bc = fptrunc <2 x double> %i.bb to <2 x float>
  %i.bd = load <2 x float>, ptr %i.ay, align 4, !tbaa !11
end_hunk_1
begin_hunk_2_@_ZN8ultrahdr26convert_raw_input_to_ycbcrEP14uhdr_raw_imageb:bb.a
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.pre739, i64 %i.hi
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %.0331530
  store i16 %i.hf, ptr %i.hk, align 2, !tbaa !29
  %.sroa.0479.4.vec.extract495 = extractelement <2 x float> %.fca.0.extract134, i64 1
  %5 = fmul contract float %.sroa.0479.4.vec.extract495, 1.023000e+03
  %6 = fadd contract float %5, 5.120000e+02
  %7 = fadd contract float %6, 5.000000e-01       ; 3 uses
  %8 = fmul contract float %.fca.1.extract135, 1.023000e+03
  %9 = fadd contract float %8, 5.120000e+02
  %10 = fadd contract float %9, 5.000000e-01      ; 3 uses
  %11 = fcmp contract olt float %7, 0.000000e+00
  %12 = fcmp contract ogt float %7, 1.023000e+03
  %13 = select contract i1 %12, float 1.023000e+03, float %7
  %14 = select contract i1 %11, float 0.000000e+00, float %13
  %15 = fcmp contract olt float %10, 0.000000e+00
  %16 = fcmp contract ogt float %10, 1.023000e+03
  %17 = select contract i1 %16, float 1.023000e+03, float %10
  %18 = select contract i1 %15, float 0.000000e+00, float %17
  %19 = fptoui float %14 to i16
  %20 = load i32, ptr %i.fy, align 4, !tbaa !3
  %21 = zext i32 %20 to i64
  %22 = mul nuw i64 %.0330533, %21
  %23 = getelementptr inbounds nuw [2 x i8], ptr %.pre741, i64 %22
  %24 = getelementptr inbounds nuw [2 x i8], ptr %23, i64 %.0331530
  store i16 %19, ptr %24, align 2, !tbaa !29
  %25 = fptoui float %18 to i16
  %i.hl = load i32, ptr %i.fz, align 8, !tbaa !3
  %i.hm = zext i32 %i.hl to i64
  %i.hn = mul nuw i64 %.0330533, %i.hm
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.pre743, i64 %i.hn
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.ho, i64 %.0331530
  store i16 %25, ptr %i.hp, align 2, !tbaa !29
  %i.hq = add nuw nsw i64 %.0331530, 1            ; 2 uses
  %i.hr = load i32, ptr %.phi.trans.insert760, align 8, !tbaa !42 ; 2 uses
  %i.hs = zext i32 %i.hr to i64
end_hunk_2
