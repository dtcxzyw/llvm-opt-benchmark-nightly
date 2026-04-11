inline.NumInlined: 2854
inline.NumDeleted: 714
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a

scalar.ph800:                                     ; preds = %scalar.ph800.preheader, %scalar.ph800
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %scalar.ph800 ], [ %indvars.iv150.i.ph, %scalar.ph800.preheader ] ; 12 uses
  %21 = getelementptr inbounds nuw [2 x i8], ptr %i.zg, i64 %indvars.iv150.i
  %22 = load i16, ptr %21, align 2, !tbaa !243
  %i.abw = getelementptr inbounds nuw [2 x i8], ptr %i.zh, i64 %indvars.iv150.i
  %i.abx = load i16, ptr %i.abw, align 2, !tbaa !243
  %23 = insertelement <2 x i16> poison, i16 %22, i64 0
  %24 = insertelement <2 x i16> %23, i16 %i.abx, i64 1
  %25 = uitofp <2 x i16> %24 to <2 x float>
  %26 = fmul nnan <2 x float> %25, splat (float 0x3EF0001000000000) ; 3 uses
  %27 = extractelement <2 x float> %26, i64 0     ; 2 uses
  %28 = extractelement <2 x float> %26, i64 1     ; 2 uses
  %i.aby = fsub float %27, %28
  %29 = getelementptr inbounds nuw [2 x i8], ptr %i.zi, i64 %indvars.iv150.i
  %30 = load i16, ptr %29, align 2, !tbaa !243
  %i.abz = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %indvars.iv150.i
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !243
  %31 = insertelement <2 x i16> poison, i16 %30, i64 0
  %32 = insertelement <2 x i16> %31, i16 %i.aca, i64 1
  %33 = uitofp <2 x i16> %32 to <2 x float>
  %34 = fmul nnan <2 x float> %33, splat (float 0x3EF0001000000000) ; 4 uses
  %35 = extractelement <2 x float> %34, i64 0
  %36 = extractelement <2 x float> %34, i64 1     ; 3 uses
  %i.acb = fsub nnan float %35, %36
  %37 = getelementptr inbounds nuw [2 x i8], ptr %i.zk, i64 %indvars.iv150.i
  %38 = load i16, ptr %37, align 2, !tbaa !243
  %i.acc = getelementptr inbounds nuw [2 x i8], ptr %i.zl, i64 %indvars.iv150.i
  %i.acd = load i16, ptr %i.acc, align 2, !tbaa !243
  %39 = insertelement <2 x i16> poison, i16 %38, i64 0
  %40 = insertelement <2 x i16> %39, i16 %i.acd, i64 1
  %41 = uitofp <2 x i16> %40 to <2 x float>
  %42 = fmul nnan <2 x float> %41, splat (float 0x3EF0001000000000) ; 3 uses
  %43 = extractelement <2 x float> %42, i64 0
  %44 = extractelement <2 x float> %42, i64 1     ; 3 uses
  %i.ace = fsub nnan float %43, %44
  %45 = getelementptr inbounds nuw [2 x i8], ptr %i.zm, i64 %indvars.iv150.i
  %46 = load i16, ptr %45, align 2, !tbaa !243
  %i.acf = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %indvars.iv150.i
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !243
  %47 = insertelement <2 x i16> poison, i16 %46, i64 0
  %48 = insertelement <2 x i16> %47, i16 %i.acg, i64 1
  %49 = uitofp <2 x i16> %48 to <2 x float>
  %50 = fmul nnan <2 x float> %49, splat (float 0x3EF0001000000000) ; 4 uses
  %51 = extractelement <2 x float> %50, i64 0
  %52 = extractelement <2 x float> %50, i64 1     ; 3 uses
  %i.ach = fsub nnan float %51, %52
  %i.aci = fmul float %i.bc, %i.acb
  %i.acj = call float @llvm.fmuladd.f32(float %i.aby, float %i.zd, float %i.aci)
  %i.ack = fmul float %i.bc, %i.ach
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !156
  %i.acq = call float @llvm.fmuladd.f32(float %i.yn, float %i.acn, float %i.acp)
  store float %i.acq, ptr %i.aco, align 4, !tbaa !156
  %i.acr = fsub float %36, %28
  %foldExtExtBinop = fsub nnan <2 x float> %34, %26
  %53 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.acs = fsub nnan float %52, %44
  %foldExtExtBinop1092 = fsub nnan <2 x float> %50, %42
  %54 = extractelement <2 x float> %foldExtExtBinop1092, i64 0
  %i.act = fmul float %i.az, %53
  %i.acu = call float @llvm.fmuladd.f32(float %i.acr, float %i.zf, float %i.act)
  %i.acv = fmul float %i.az, %54
  %i.acw = call float @llvm.fmuladd.f32(float %i.acs, float %i.zf, float %i.acv)
  %i.acx = fmul float %i.bf, %i.acw
  %i.acy = call noundef float @llvm.fmuladd.f32(float %i.ze, float %i.acu, float %i.acx)
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv150.i ; 2 uses
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !156
  %i.adb = call float @llvm.fmuladd.f32(float %i.yr, float %i.acy, float %i.ada)
  store float %i.adb, ptr %i.acz, align 4, !tbaa !156
  %i.adc = fsub float %36, %52
  %foldExtExtBinop1094 = fsub nnan <2 x float> %34, %50
  %55 = extractelement <2 x float> %foldExtExtBinop1094, i64 0
  %i.add = fsub nnan float %27, %44
  %i.ade = fmul float %i.az, %55                  ; 2 uses
  %i.adf = call float @llvm.fmuladd.f32(float %i.adc, float %i.zf, float %i.ade)
  %i.adg = call float @llvm.fmuladd.f32(float %i.add, float %i.zf, float %i.ade)
  %i.adh = fmul float %i.bc, %i.adg
end_hunk_1
