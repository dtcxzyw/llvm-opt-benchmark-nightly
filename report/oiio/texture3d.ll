inline.NumInlined: 2854
inline.NumDeleted: 714
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a

scalar.ph800:                                     ; preds = %scalar.ph800.preheader, %scalar.ph800
  %indvars.iv150.i = phi i64 [ %indvars.iv.next151.i, %scalar.ph800 ], [ %indvars.iv150.i.ph, %scalar.ph800.preheader ] ; 12 uses
  %i.abw = getelementptr inbounds nuw [2 x i8], ptr %i.zg, i64 %indvars.iv150.i
  %i.abx = load i16, ptr %i.abw, align 2, !tbaa !243
  %21 = uitofp i16 %i.abx to float
  %22 = fmul nnan float %21, 0x3EF0001000000000   ; 3 uses
  %23 = getelementptr inbounds nuw [2 x i8], ptr %i.zh, i64 %indvars.iv150.i
  %24 = load i16, ptr %23, align 2, !tbaa !243
  %25 = uitofp i16 %24 to float
  %26 = fmul nnan float %25, 0x3EF0001000000000   ; 2 uses
  %i.aby = fsub float %22, %26
  %i.abz = getelementptr inbounds nuw [2 x i8], ptr %i.zi, i64 %indvars.iv150.i
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !243
  %27 = uitofp i16 %i.aca to float
  %28 = fmul nnan float %27, 0x3EF0001000000000   ; 3 uses
  %29 = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %indvars.iv150.i
  %30 = load i16, ptr %29, align 2, !tbaa !243
  %31 = uitofp i16 %30 to float
  %32 = fmul nnan float %31, 0x3EF0001000000000   ; 3 uses
  %i.acb = fsub nnan float %28, %32
  %i.acc = getelementptr inbounds nuw [2 x i8], ptr %i.zk, i64 %indvars.iv150.i
  %i.acd = load i16, ptr %i.acc, align 2, !tbaa !243
  %33 = uitofp i16 %i.acd to float
  %34 = fmul nnan float %33, 0x3EF0001000000000   ; 2 uses
  %35 = getelementptr inbounds nuw [2 x i8], ptr %i.zl, i64 %indvars.iv150.i
  %36 = load i16, ptr %35, align 2, !tbaa !243
  %37 = uitofp i16 %36 to float
  %38 = fmul nnan float %37, 0x3EF0001000000000   ; 3 uses
  %i.ace = fsub nnan float %34, %38
  %i.acf = getelementptr inbounds nuw [2 x i8], ptr %i.zm, i64 %indvars.iv150.i
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !243
  %39 = uitofp i16 %i.acg to float
  %40 = fmul nnan float %39, 0x3EF0001000000000   ; 3 uses
  %41 = getelementptr inbounds nuw [2 x i8], ptr %i.zn, i64 %indvars.iv150.i
  %42 = load i16, ptr %41, align 2, !tbaa !243
  %43 = uitofp i16 %42 to float
  %44 = fmul nnan float %43, 0x3EF0001000000000   ; 3 uses
  %i.ach = fsub nnan float %40, %44
  %i.aci = fmul float %i.bc, %i.acb
  %i.acj = call float @llvm.fmuladd.f32(float %i.aby, float %i.zd, float %i.aci)
  %i.ack = fmul float %i.bc, %i.ach
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl23accum3d_sample_bilinearERKN9Imath_3_14Vec3IfEEiRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiifPfSD_SD_SD_:bb.a
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !156
  %i.acq = call float @llvm.fmuladd.f32(float %i.yn, float %i.acn, float %i.acp)
  store float %i.acq, ptr %i.aco, align 4, !tbaa !156
  %i.acr = fsub float %32, %26
  %i.acs = fsub nnan float %28, %22
  %45 = fsub nnan float %44, %38
  %46 = fsub nnan float %40, %34
  %i.act = fmul float %i.az, %i.acs
  %i.acu = call float @llvm.fmuladd.f32(float %i.acr, float %i.zf, float %i.act)
  %i.acv = fmul float %i.az, %46
  %i.acw = call float @llvm.fmuladd.f32(float %45, float %i.zf, float %i.acv)
  %i.acx = fmul float %i.bf, %i.acw
  %i.acy = call noundef float @llvm.fmuladd.f32(float %i.ze, float %i.acu, float %i.acx)
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv150.i ; 2 uses
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !156
  %i.adb = call float @llvm.fmuladd.f32(float %i.yr, float %i.acy, float %i.ada)
  store float %i.adb, ptr %i.acz, align 4, !tbaa !156
  %i.adc = fsub float %32, %44
  %47 = fsub nnan float %28, %40
  %i.add = fsub nnan float %22, %38
  %i.ade = fmul float %i.az, %47                  ; 2 uses
  %i.adf = call float @llvm.fmuladd.f32(float %i.adc, float %i.zf, float %i.ade)
  %i.adg = call float @llvm.fmuladd.f32(float %i.add, float %i.zf, float %i.ade)
  %i.adh = fmul float %i.bc, %i.adg
end_hunk_1
