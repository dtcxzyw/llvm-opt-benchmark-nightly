Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/aggregate?download=true
inline.NumInlined: 2847
inline.NumDeleted: 905
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@"_ZN4pbrt6detail8DispatchIRZNS_11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS4_17IntersectShadowTrEiS8_SC_ENKSD_clEiEUlNS_6Point3IfEEE_EEvS6_SC_T_T0_EUlSH_NS_16MediumPropertiesENS_15SampledSpectrumESM_E_EESM_SE_ffRNS_3RNGERKNS_18SampledWavelengthsESJ_EUlSJ_E_SM_NS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEESK_OSJ_Pvi":bb.a
  %i.ake = fcmp olt float %.sroa.speculated.i129.i.i.i132, %i.ajz
  %.sroa.speculated.1.i130.i.i.i133 = select i1 %i.ake, float %i.ajz, float %.sroa.speculated.i129.i.i.i132 ; 2 uses
  %i.akf = fcmp olt float %.sroa.speculated.1.i130.i.i.i133, %i.aka
  %.sroa.speculated.2.i131.i.i.i134 = select i1 %i.akf, float %i.aka, float %.sroa.speculated.1.i130.i.i.i133
  %i.akg = fcmp olt float %.sroa.speculated.2.i131.i.i.i134, 5.000000e-02
  %i.akh = shufflevector <2 x float> %.sroa.0.0.copyload4.i116.i.i.i126, <2 x float> %.sroa.8.0.copyload.i118.i.i.i127, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br i1 %i.akg, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit125.i.i
  %i.aki = load i64, ptr %.sroa.420.0.copyload.i76, align 8, !tbaa !211 ; 4 uses
  %i.akj = mul i64 %i.aki, 6364136223846793005
  %i.akk = load i64, ptr %i.aao, align 8, !tbaa !210
  %i.akl = add i64 %i.akj, %i.akk
  store i64 %i.akl, ptr %.sroa.420.0.copyload.i76, align 8, !tbaa !211
  %i.akm = lshr i64 %i.aki, 45
  %i.akn = lshr i64 %i.aki, 27
  %i.ako = xor i64 %i.akm, %i.akn
  %i.akp = trunc i64 %i.ako to i32                ; 2 uses
  %i.akq = lshr i64 %i.aki, 59
  %i.akr = trunc nuw nsw i64 %i.akq to i32
  %i.aks = call noundef i32 @llvm.fshr.i32(i32 %i.akp, i32 %i.akp, i32 %i.akr)
  %i.akt = uitofp i32 %i.aks to float
  %i.aku = fmul nnan float %i.akt, f0x2F800000    ; 2 uses
  %i.akv = fcmp olt float %i.aku, f0x3F7FFFFF
  %.sroa.speculated.i132.i.i.i138 = select i1 %i.akv, float %i.aku, float f0x3F7FFFFF
  %i.akw = fcmp olt float %.sroa.speculated.i132.i.i.i138, 7.500000e-01
  br i1 %i.akw, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.018.0.copyload.i70, i8 0, i64 16, i1 false)
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.akx = fmul <4 x float> %i.akh, splat (float 4.000000e+00) ; 2 uses
  store <4 x float> %i.akx, ptr %.sroa.018.0.copyload.i70, align 4, !tbaa !53
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit125.i.i
  %i.aky = phi <4 x float> [ %i.akx, %bb.cg ], [ zeroinitializer, %bb.cf ], [ %i.akh, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit125.i.i ]
  %i.akz = fcmp une <4 x float> %i.aky, zeroinitializer
  %i.ala = bitcast <4 x i1> %i.akz to i4
  %.not424 = icmp eq i4 %i.ala, 0
  br i1 %.not424, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_13RGBGridMediumEEEDaSH_.exit", label %bb.bo

bb.ci:                                            ; preds = %bb.bp
  %i.alb = fsub float %i.acf, %.073.i.i91         ; 2 uses
  %i.alc = call float @llvm.fabs.f32(float %i.alb)
  %i.ald = fcmp oeq float %i.alc, +inf
  %.neg.i.i95 = fneg float %i.alb
  %i.ale = select i1 %i.ald, float f0xFF7FFFFF, float %.neg.i.i95 ; 4 uses
  %.sroa.0.0.copyload.i.i132.i.i = load <2 x float>, ptr %i.zq, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i134.i.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i87, align 4, !tbaa !99 ; 2 uses
  %.sroa.0.0.vec.extract.i.i135.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i132.i.i, i64 0
  %i.alf = fmul float %i.ale, %.sroa.0.0.vec.extract.i.i135.i.i
  %.sroa.0.4.vec.extract.i.i137.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i.i132.i.i, i64 1
  %i.alg = fmul float %i.ale, %.sroa.0.4.vec.extract.i.i137.i.i
  %.sroa.6.8.vec.extract.i.i139.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i134.i.i, i64 0
  %i.alh = fmul float %i.ale, %.sroa.6.8.vec.extract.i.i139.i.i
  %.sroa.6.12.vec.extract.i.i141.i.i = extractelement <2 x float> %.sroa.6.0.copyload.i.i134.i.i, i64 1
  %i.ali = fmul float %i.ale, %.sroa.6.12.vec.extract.i.i141.i.i
  %i.alj = fmul float %i.alf, f0x3FB8AA3B         ; 2 uses
  %i.alk = call noundef float @llvm.floor.f32(float %i.alj) ; 2 uses
  %i.all = fsub float %i.alj, %i.alk              ; 3 uses
  %i.alm = fptosi float %i.alk to i32
  %i.aln = call noundef float @llvm.fma.f32(float %i.all, float f0x3DA00AC9, float f0x3E679A0B)
  %i.alo = call noundef float @llvm.fma.f32(float %i.all, float %i.aln, float f0x3F321004)
  %i.alp = call noundef float @llvm.fma.f32(float %i.all, float %i.alo, float 1.000000e+00)
  %i.alq = bitcast float %i.alp to i32            ; 2 uses
  %i.alr = lshr i32 %i.alq, 23
  %i.als = add i32 %i.alm, -127
  %i.alt = add i32 %i.als, %i.alr                 ; 3 uses
  %i.alu = icmp slt i32 %i.alt, -126
  br i1 %i.alu, label %_ZN4pbrt7FastExpEf.exit.i145.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.alv = icmp sgt i32 %i.alt, 127
  br i1 %i.alv, label %_ZN4pbrt7FastExpEf.exit.i145.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.alw = and i32 %i.alq, -2139095041
  %i.alx = shl nsw i32 %i.alt, 23
  %i.aly = add nsw i32 %i.alx, 1065353216
  %i.alz = or i32 %i.aly, %i.alw
  %i.ama = bitcast i32 %i.alz to float
  br label %_ZN4pbrt7FastExpEf.exit.i145.i.i

_ZN4pbrt7FastExpEf.exit.i145.i.i:                 ; preds = %bb.ck, %bb.cj, %bb.ci
  %.0.i.i146.i.i = phi float [ %i.ama, %bb.ck ], [ 0.000000e+00, %bb.ci ], [ +inf, %bb.cj ]
  %i.amb = fmul float %i.alg, f0x3FB8AA3B         ; 2 uses
  %i.amc = call noundef float @llvm.floor.f32(float %i.amb) ; 2 uses
  %i.amd = fsub float %i.amb, %i.amc              ; 3 uses
  %i.ame = fptosi float %i.amc to i32
  %i.amf = call noundef float @llvm.fma.f32(float %i.amd, float f0x3DA00AC9, float f0x3E679A0B)
  %i.amg = call noundef float @llvm.fma.f32(float %i.amd, float %i.amf, float f0x3F321004)
  %i.amh = call noundef float @llvm.fma.f32(float %i.amd, float %i.amg, float 1.000000e+00)
  %i.ami = bitcast float %i.amh to i32            ; 2 uses
  %i.amj = lshr i32 %i.ami, 23
  %i.amk = add i32 %i.ame, -127
  %i.aml = add i32 %i.amk, %i.amj                 ; 3 uses
  %i.amm = icmp slt i32 %i.aml, -126
  br i1 %i.amm, label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i, label %bb.cl

bb.cl:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i145.i.i
  %i.amn = icmp sgt i32 %i.aml, 127
  br i1 %i.amn, label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.amo = and i32 %i.ami, -2139095041
  %i.amp = shl nsw i32 %i.aml, 23
  %i.amq = add nsw i32 %i.amp, 1065353216
  %i.amr = or i32 %i.amq, %i.amo
  %i.ams = bitcast i32 %i.amr to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i

_ZN4pbrt7FastExpEf.exit.1.i147.i.i:               ; preds = %bb.cm, %bb.cl, %_ZN4pbrt7FastExpEf.exit.i145.i.i
  %.0.i.1.i148.i.i = phi float [ %i.ams, %bb.cm ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i145.i.i ], [ +inf, %bb.cl ]
  %i.amt = fmul float %i.alh, f0x3FB8AA3B         ; 2 uses
  %i.amu = call noundef float @llvm.floor.f32(float %i.amt) ; 2 uses
  %i.amv = fsub float %i.amt, %i.amu              ; 3 uses
  %i.amw = fptosi float %i.amu to i32
  %i.amx = call noundef float @llvm.fma.f32(float %i.amv, float f0x3DA00AC9, float f0x3E679A0B)
  %i.amy = call noundef float @llvm.fma.f32(float %i.amv, float %i.amx, float f0x3F321004)
  %i.amz = call noundef float @llvm.fma.f32(float %i.amv, float %i.amy, float 1.000000e+00)
  %i.ana = bitcast float %i.amz to i32            ; 2 uses
  %i.anb = lshr i32 %i.ana, 23
  %i.anc = add i32 %i.amw, -127
  %i.and = add i32 %i.anc, %i.anb                 ; 3 uses
  %i.ane = icmp slt i32 %i.and, -126
  br i1 %i.ane, label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i, label %bb.cn

bb.cn:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i147.i.i
  %i.anf = icmp sgt i32 %i.and, 127
  br i1 %i.anf, label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ang = and i32 %i.ana, -2139095041
  %i.anh = shl nsw i32 %i.and, 23
  %i.ani = add nsw i32 %i.anh, 1065353216
  %i.anj = or i32 %i.ani, %i.ang
  %i.ank = bitcast i32 %i.anj to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i

_ZN4pbrt7FastExpEf.exit.2.i149.i.i:               ; preds = %bb.co, %bb.cn, %_ZN4pbrt7FastExpEf.exit.1.i147.i.i
  %.0.i.2.i150.i.i = phi float [ %i.ank, %bb.co ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i147.i.i ], [ +inf, %bb.cn ]
  %i.anl = fmul float %i.ali, f0x3FB8AA3B         ; 2 uses
  %i.anm = call noundef float @llvm.floor.f32(float %i.anl) ; 2 uses
  %i.ann = fsub float %i.anl, %i.anm              ; 3 uses
  %i.ano = fptosi float %i.anm to i32
  %i.anp = call noundef float @llvm.fma.f32(float %i.ann, float f0x3DA00AC9, float f0x3E679A0B)
  %i.anq = call noundef float @llvm.fma.f32(float %i.ann, float %i.anp, float f0x3F321004)
  %i.anr = call noundef float @llvm.fma.f32(float %i.ann, float %i.anq, float 1.000000e+00)
  %i.ans = bitcast float %i.anr to i32            ; 2 uses
  %i.ant = lshr i32 %i.ans, 23
  %i.anu = add i32 %i.ano, -127
  %i.anv = add i32 %i.anu, %i.ant                 ; 3 uses
  %i.anw = icmp slt i32 %i.anv, -126
  br i1 %i.anw, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i149.i.i
  %i.anx = icmp sgt i32 %i.anv, 127
  br i1 %i.anx, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.any = and i32 %i.ans, -2139095041
  %i.anz = shl nsw i32 %i.anv, 23
  %i.aoa = add nsw i32 %i.anz, 1065353216
  %i.aob = or i32 %i.aoa, %i.any
  %i.aoc = bitcast i32 %i.aob to float
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %_ZN4pbrt7FastExpEf.exit.2.i149.i.i
  %.0.i.3.i151.i.i = phi float [ %i.aoc, %bb.cq ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i149.i.i ], [ +inf, %bb.cp ]
  %i.aod = insertelement <2 x float> poison, float %.0.i.i146.i.i, i64 0
  %i.aoe = insertelement <2 x float> %i.aod, float %.0.i.1.i148.i.i, i64 1
  %i.aof = fmul <2 x float> %.sroa.0176.1.i.i, %i.aoe
  %i.aog = insertelement <2 x float> poison, float %.0.i.2.i150.i.i, i64 0
  %i.aoh = insertelement <2 x float> %i.aog, float %.0.i.3.i151.i.i, i64 1
  %i.aoi = fmul <2 x float> %.sroa.21.1.i.i, %i.aoh
  br label %.thread.i.i96

.thread.i.i96:                                    ; preds = %bb.cr, %bb.bn
  %.sroa.0176.4.i.i = phi <2 x float> [ %i.abh, %bb.bn ], [ %i.aof, %bb.cr ] ; 2 uses
  %.sroa.21.4.i.i97 = phi <2 x float> [ %i.abi, %bb.bn ], [ %i.aoi, %bb.cr ] ; 2 uses
  %.2.i.i98 = phi float [ %.054286.i48.i, %bb.bn ], [ %.sroa.speculated.i.i.i94, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @_ZN4pbrt19DDAMajorantIterator4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.221") align 4 %14, ptr noundef nonnull align 8 dereferenceable(92) %12)
  %i.aoj = load i8, ptr %i.zp, align 4, !tbaa !220, !range !115, !noundef !44
  %i.aok = trunc nuw i8 %i.aoj to i1
  br i1 %i.aok, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i90, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_13RGBGridMediumEEEDaSH_.exit"

"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_13RGBGridMediumEEEDaSH_.exit": ; preds = %.thread.i.i96, %bb.ch, %bb.bm
  %.sroa.0231.2.i.i = phi <2 x float> [ splat (float 1.000000e+00), %bb.ch ], [ splat (float 1.000000e+00), %bb.bm ], [ %.sroa.0176.4.i.i, %.thread.i.i96 ]
  %.sroa.4233.2.i.i = phi <2 x float> [ splat (float 1.000000e+00), %bb.ch ], [ splat (float 1.000000e+00), %bb.bm ], [ %.sroa.21.4.i.i97, %.thread.i.i96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_17HomogeneousMediumEEEDaSH_.exit"

bb.cs:                                            ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i156 = load float, ptr %.sroa.4.0..sroa_idx.i155, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.5.0.copyload.i158 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i157, align 4 ; 3 uses
  %.sroa.9.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.9.0.copyload.i160 = load float, ptr %.sroa.9.0..sroa_idx.i159, align 4 ; 3 uses
  %.sroa.12.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.12.sroa.0.0.copyload.i162 = load float, ptr %.sroa.12.0..sroa_idx.i161, align 8
  %i.aol = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !65 ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !787, !nonnull !44, !align !182
  %i.aop = load float, ptr %i.aoo, align 4, !tbaa !53
  %i.aoq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !788, !nonnull !44, !align !182
  %i.aos = load float, ptr %i.aor, align 4, !tbaa !53
  %i.aot = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !789, !nonnull !44, !align !45 ; 3 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !790, !nonnull !44, !align !182 ; 3 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aoy = load ptr, ptr %i.aox, align 8, !tbaa !791, !nonnull !44, !align !45 ; 4 uses
  %.sroa.018.0.copyload.i163 = load ptr, ptr %i.aoy, align 8, !tbaa !793 ; 6 uses
  %.sroa.2.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8
  %.sroa.2.0.copyload.i165 = load ptr, ptr %.sroa.2.0..sroa_idx.i164, align 8, !tbaa !793 ; 4 uses
  %.sroa.319.0..sroa_idx.i166 = getelementptr inbounds nuw i8, ptr %i.aoy, i64 16
  %.sroa.319.0.copyload.i167 = load ptr, ptr %.sroa.319.0..sroa_idx.i166, align 8, !tbaa !793 ; 2 uses
  %.sroa.420.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.aoy, i64 24
  %.sroa.420.0.copyload.i169 = load ptr, ptr %.sroa.420.0..sroa_idx.i168, align 8, !tbaa !214 ; 3 uses
  %i.aoz = fmul <2 x float> %.sroa.5.0.copyload.i158, %.sroa.5.0.copyload.i158 ; 2 uses
  %shift383 = shufflevector <2 x float> %i.aoz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop384 = fadd <2 x float> %i.aoz, %shift383
  %i.apa = extractelement <2 x float> %foldExtExtBinop384, i64 0
  %i.apb = fmul float %.sroa.9.0.copyload.i160, %.sroa.9.0.copyload.i160
  %i.apc = fadd float %i.apb, %i.apa
  %sqrt.i.i.i172 = tail call noundef float @llvm.sqrt.f32(float %i.apc) ; 3 uses
  %i.apd = fmul float %i.aop, %sqrt.i.i.i172
  %i.ape = load <2 x float>, ptr %i.g, align 8    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.apf = insertelement <2 x float> poison, float %sqrt.i.i.i172, i64 0
  %i.apg = shufflevector <2 x float> %i.apf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aph = fdiv <2 x float> %.sroa.5.0.copyload.i158, %i.apg ; 2 uses
  %22 = fdiv float %.sroa.9.0.copyload.i160, %sqrt.i.i.i172 ; 2 uses
  %i.api = and i64 %i.aom, 144115188075855871
  %i.apj = inttoptr i64 %i.api to ptr             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store <2 x float> %i.ape, ptr %8, align 8
  %.sroa.4.0..sroa_idx4.i176 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %.sroa.4.0.copyload.i156, ptr %.sroa.4.0..sroa_idx4.i176, align 8
  %.sroa.5.0..sroa_idx6.i177 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store <2 x float> %i.aph, ptr %.sroa.5.0..sroa_idx6.i177, align 4
  %.sroa.9.0..sroa_idx9.i178 = getelementptr inbounds nuw i8, ptr %8, i64 20
  store float %22, ptr %.sroa.9.0..sroa_idx9.i178, align 4
  %.sroa.12.0..sroa_idx11.i179 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store float %.sroa.12.sroa.0.0.copyload.i162, ptr %.sroa.12.0..sroa_idx11.i179, align 8
  %i.apk = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.aom, ptr %i.apk, align 8, !tbaa !65
  call void @_ZNK4pbrt11CloudMedium9SampleRayENS_3RayEfRKNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::HomogeneousMajorantIterator") align 4 %7, ptr noundef nonnull align 8 dereferenceable(252) %i.apj, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(40) %8, float noundef %i.apd, ptr noundef nonnull align 4 dereferenceable(32) %i.aow)
  %i.apl = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %.sroa.7191.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.10.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.apm = getelementptr inbounds nuw i8, ptr %i.aou, i64 8
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apj, i64 88
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apj, i64 96
  %i.app = getelementptr inbounds nuw i8, ptr %i.apj, i64 104
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apj, i64 120
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apj, i64 128
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apj, i64 132
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apj, i64 136
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apj, i64 144
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apj, i64 148
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apj, i64 248
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apj, i64 244
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apj, i64 240
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apj, i64 160
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apj, i64 200
  %i.aqb = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload.i163, i64 8
  %i.aqc = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i165, i64 8
  %i.aqd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aqe = load i8, ptr %i.apl, align 4, !tbaa !232, !range !115, !noalias !803, !noundef !44
  %i.aqf = trunc nuw i8 %i.aqe to i1
  br i1 %i.aqf, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_11CloudMediumEEEDaSH_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cs
  %i.aqg = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload.i169, i64 8
  br label %bb.ct

bb.ct:                                            ; preds = %.thread298.i.i, %.lr.ph.i
  %.sroa.0225.0327.i36.i = phi <2 x float> [ splat (float 1.000000e+00), %.lr.ph.i ], [ %.sroa.0225.4.i.i, %.thread298.i.i ] ; 2 uses
  %.sroa.21.0328.i35.i = phi <2 x float> [ splat (float 1.000000e+00), %.lr.ph.i ], [ %.sroa.21.4.i.i197, %.thread298.i.i ] ; 2 uses
  %.054329.i34.i = phi float [ %i.aos, %.lr.ph.i ], [ %.2.i.i198, %.thread298.i.i ] ; 2 uses
  store i8 1, ptr %i.apl, align 4, !tbaa !232, !noalias !803
  %.sroa.0189.0.copyload.i.i = load float, ptr %7, align 4, !tbaa !53 ; 2 uses
  %.sroa.7191.0.copyload.i.i = load float, ptr %.sroa.7191.0..sroa_idx.i.i.a, align 4, !tbaa !53 ; 3 uses
  %.sroa.10.0.copyload.i.i = load <2 x float>, ptr %.sroa.10.0..sroa_idx.i.i.a, align 4 ; 4 uses
  %.sroa.16.0.copyload.i.i = load <2 x float>, ptr %.sroa.16.0..sroa_idx.i.i, align 4, !tbaa !99 ; 4 uses
  %.sroa.10.8.vec.extract.i.i = extractelement <2 x float> %.sroa.10.0.copyload.i.i, i64 0 ; 4 uses
  %i.aqh = fcmp oeq float %.sroa.10.8.vec.extract.i.i, 0.000000e+00
  br i1 %i.aqh, label %bb.cu, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.preheader.i.i

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.preheader.i.i: ; preds = %bb.ct
  %.sroa.0.4.vec.extract.i.i108.i.i180 = extractelement <2 x float> %.sroa.10.0.copyload.i.i, i64 1 ; 2 uses
  %.sroa.6.8.vec.extract.i.i110.i.i181 = extractelement <2 x float> %.sroa.16.0.copyload.i.i, i64 0 ; 2 uses
  %.sroa.6.12.vec.extract.i.i112.i.i182 = extractelement <2 x float> %.sroa.16.0.copyload.i.i, i64 1 ; 2 uses
  %i.aqi = shufflevector <2 x float> %.sroa.10.0.copyload.i.i, <2 x float> %.sroa.16.0.copyload.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i183

bb.cu:                                            ; preds = %bb.ct
  %i.aqj = fsub float %.sroa.7191.0.copyload.i.i, %.sroa.0189.0.copyload.i.i ; 2 uses
  %i.aqk = call float @llvm.fabs.f32(float %i.aqj)
  %i.aql = fcmp oeq float %i.aqk, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %.neg313.i.i = fneg float %i.aqj
  %i.aqm = select i1 %i.aql, float f0xFF7FFFFF, float %.neg313.i.i
  %i.aqn = insertelement <2 x float> poison, float %i.aqm, i64 0
  %i.aqo = shufflevector <2 x float> %i.aqn, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aqp = fmul <2 x float> %.sroa.10.0.copyload.i.i, %i.aqo
  %i.aqq = fmul <2 x float> %.sroa.16.0.copyload.i.i, %i.aqo
  store <2 x float> %i.aqp, ptr %9, align 8
  store <2 x float> %i.aqq, ptr %i.aqd, align 8
  %i.aqr = call { <2 x float>, <2 x float> } @_ZN4pbrt7FastExpERKNS_15SampledSpectrumE(ptr noundef nonnull align 4 dereferenceable(16) %9) ; 2 uses
  %i.aqs = extractvalue { <2 x float>, <2 x float> } %i.aqr, 0
  %i.aqt = extractvalue { <2 x float>, <2 x float> } %i.aqr, 1
  %i.aqu = fmul <2 x float> %.sroa.0225.0327.i36.i, %i.aqs
  %i.aqv = fmul <2 x float> %.sroa.21.0328.i35.i, %i.aqt
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.thread298.i.i

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i183: ; preds = %bb.di, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.preheader.i.i
  %.sroa.0225.1.i.i = phi <2 x float> [ splat (float 1.000000e+00), %bb.di ], [ %.sroa.0225.0327.i36.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.preheader.i.i ] ; 2 uses
  %.sroa.21.1.i.i184 = phi <2 x float> [ splat (float 1.000000e+00), %bb.di ], [ %.sroa.21.0328.i35.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.preheader.i.i ] ; 2 uses
  %.073.i.i185 = phi float [ %i.aqz, %bb.di ], [ %.sroa.0189.0.copyload.i.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.preheader.i.i ] ; 3 uses
  %.1.i.i186 = phi float [ %.sroa.speculated.i.i.i187, %bb.di ], [ %.054329.i34.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.preheader.i.i ]
  %i.aqw = fsub float 1.000000e+00, %.1.i.i186
  %i.aqx = call noundef float @logf(float noundef %i.aqw) #25
  %i.aqy = fdiv float %i.aqx, %.sroa.10.8.vec.extract.i.i
  %i.aqz = fsub float %.073.i.i185, %i.aqy        ; 5 uses
  %i.ara = load i64, ptr %i.aou, align 8, !tbaa !211 ; 4 uses
  %i.arb = mul i64 %i.ara, 6364136223846793005
  %i.arc = load i64, ptr %i.apm, align 8, !tbaa !210
  %i.ard = add i64 %i.arb, %i.arc
  store i64 %i.ard, ptr %i.aou, align 8, !tbaa !211
  %i.are = lshr i64 %i.ara, 45
  %i.arf = lshr i64 %i.ara, 27
  %i.arg = xor i64 %i.are, %i.arf
  %i.arh = trunc i64 %i.arg to i32                ; 2 uses
  %i.ari = lshr i64 %i.ara, 59
  %i.arj = trunc nuw nsw i64 %i.ari to i32
  %i.ark = call noundef i32 @llvm.fshr.i32(i32 %i.arh, i32 %i.arh, i32 %i.arj)
  %i.arl = uitofp i32 %i.ark to float
  %i.arm = fmul nnan float %i.arl, f0x2F800000    ; 2 uses
  %i.arn = fcmp olt float %i.arm, f0x3F7FFFFF
  %.sroa.speculated.i.i.i187 = select i1 %i.arn, float %i.arm, float f0x3F7FFFFF ; 2 uses
  %i.aro = fcmp olt float %i.aqz, %.sroa.7191.0.copyload.i.i
  br i1 %i.aro, label %bb.cv, label %bb.dj

bb.cv:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i183
  %i.arp = fsub float %i.aqz, %.073.i.i185
  %i.arq = fneg float %i.arp                      ; 4 uses
  %i.arr = fmul float %.sroa.10.8.vec.extract.i.i, %i.arq
  %i.ars = fmul float %.sroa.0.4.vec.extract.i.i108.i.i180, %i.arq
  %i.art = fmul float %.sroa.6.8.vec.extract.i.i110.i.i181, %i.arq
  %i.aru = fmul float %.sroa.6.12.vec.extract.i.i112.i.i182, %i.arq
  %i.arv = fmul float %i.arr, f0x3FB8AA3B         ; 2 uses
  %i.arw = call noundef float @llvm.floor.f32(float %i.arv) ; 2 uses
  %i.arx = fsub float %i.arv, %i.arw              ; 3 uses
  %i.ary = fptosi float %i.arw to i32
  %i.arz = call noundef float @llvm.fma.f32(float %i.arx, float f0x3DA00AC9, float f0x3E679A0B)
  %i.asa = call noundef float @llvm.fma.f32(float %i.arx, float %i.arz, float f0x3F321004)
  %i.asb = call noundef float @llvm.fma.f32(float %i.arx, float %i.asa, float 1.000000e+00)
  %i.asc = bitcast float %i.asb to i32            ; 2 uses
  %i.asd = lshr i32 %i.asc, 23
  %i.ase = add i32 %i.ary, -127
  %i.asf = add i32 %i.ase, %i.asd                 ; 3 uses
  %i.asg = icmp slt i32 %i.asf, -126
  br i1 %i.asg, label %_ZN4pbrt7FastExpEf.exit.i.i.i201, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ash = icmp sgt i32 %i.asf, 127
  br i1 %i.ash, label %_ZN4pbrt7FastExpEf.exit.i.i.i201, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.asi = and i32 %i.asc, -2139095041
  %i.asj = shl nsw i32 %i.asf, 23
  %i.ask = add nsw i32 %i.asj, 1065353216
  %i.asl = or i32 %i.ask, %i.asi
  %i.asm = bitcast i32 %i.asl to float
  br label %_ZN4pbrt7FastExpEf.exit.i.i.i201

_ZN4pbrt7FastExpEf.exit.i.i.i201:                 ; preds = %bb.cx, %bb.cw, %bb.cv
  %.0.i.i.i.i202 = phi float [ %i.asm, %bb.cx ], [ 0.000000e+00, %bb.cv ], [ +inf, %bb.cw ]
  %i.asn = fmul float %i.ars, f0x3FB8AA3B         ; 2 uses
  %i.aso = call noundef float @llvm.floor.f32(float %i.asn) ; 2 uses
  %i.asp = fsub float %i.asn, %i.aso              ; 3 uses
  %i.asq = fptosi float %i.aso to i32
  %i.asr = call noundef float @llvm.fma.f32(float %i.asp, float f0x3DA00AC9, float f0x3E679A0B)
  %i.ass = call noundef float @llvm.fma.f32(float %i.asp, float %i.asr, float f0x3F321004)
  %i.ast = call noundef float @llvm.fma.f32(float %i.asp, float %i.ass, float 1.000000e+00)
  %i.asu = bitcast float %i.ast to i32            ; 2 uses
  %i.asv = lshr i32 %i.asu, 23
  %i.asw = add i32 %i.asq, -127
  %i.asx = add i32 %i.asw, %i.asv                 ; 3 uses
  %i.asy = icmp slt i32 %i.asx, -126
  br i1 %i.asy, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i203, label %bb.cy

bb.cy:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i.i.i201
  %i.asz = icmp sgt i32 %i.asx, 127
  br i1 %i.asz, label %_ZN4pbrt7FastExpEf.exit.1.i.i.i203, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ata = and i32 %i.asu, -2139095041
  %i.atb = shl nsw i32 %i.asx, 23
  %i.atc = add nsw i32 %i.atb, 1065353216
  %i.atd = or i32 %i.atc, %i.ata
  %i.ate = bitcast i32 %i.atd to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i.i.i203

_ZN4pbrt7FastExpEf.exit.1.i.i.i203:               ; preds = %bb.cz, %bb.cy, %_ZN4pbrt7FastExpEf.exit.i.i.i201
  %.0.i.1.i.i.i204 = phi float [ %i.ate, %bb.cz ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i.i.i201 ], [ +inf, %bb.cy ]
  %i.atf = fmul float %i.art, f0x3FB8AA3B         ; 2 uses
  %i.atg = call noundef float @llvm.floor.f32(float %i.atf) ; 2 uses
  %i.ath = fsub float %i.atf, %i.atg              ; 3 uses
  %i.ati = fptosi float %i.atg to i32
  %i.atj = call noundef float @llvm.fma.f32(float %i.ath, float f0x3DA00AC9, float f0x3E679A0B)
  %i.atk = call noundef float @llvm.fma.f32(float %i.ath, float %i.atj, float f0x3F321004)
  %i.atl = call noundef float @llvm.fma.f32(float %i.ath, float %i.atk, float 1.000000e+00)
  %i.atm = bitcast float %i.atl to i32            ; 2 uses
  %i.atn = lshr i32 %i.atm, 23
  %i.ato = add i32 %i.ati, -127
  %i.atp = add i32 %i.ato, %i.atn                 ; 3 uses
  %i.atq = icmp slt i32 %i.atp, -126
  br i1 %i.atq, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i205, label %bb.da

bb.da:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i.i.i203
  %i.atr = icmp sgt i32 %i.atp, 127
  br i1 %i.atr, label %_ZN4pbrt7FastExpEf.exit.2.i.i.i205, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ats = and i32 %i.atm, -2139095041
  %i.att = shl nsw i32 %i.atp, 23
  %i.atu = add nsw i32 %i.att, 1065353216
  %i.atv = or i32 %i.atu, %i.ats
  %i.atw = bitcast i32 %i.atv to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i.i.i205

_ZN4pbrt7FastExpEf.exit.2.i.i.i205:               ; preds = %bb.db, %bb.da, %_ZN4pbrt7FastExpEf.exit.1.i.i.i203
  %.0.i.2.i.i.i206 = phi float [ %i.atw, %bb.db ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i.i.i203 ], [ +inf, %bb.da ]
  %i.atx = fmul float %i.aru, f0x3FB8AA3B         ; 2 uses
  %i.aty = call noundef float @llvm.floor.f32(float %i.atx) ; 2 uses
  %i.atz = fsub float %i.atx, %i.aty              ; 3 uses
  %i.aua = fptosi float %i.aty to i32
  %i.aub = call noundef float @llvm.fma.f32(float %i.atz, float f0x3DA00AC9, float f0x3E679A0B)
  %i.auc = call noundef float @llvm.fma.f32(float %i.atz, float %i.aub, float f0x3F321004)
  %i.aud = call noundef float @llvm.fma.f32(float %i.atz, float %i.auc, float 1.000000e+00)
  %i.aue = bitcast float %i.aud to i32            ; 2 uses
  %i.auf = lshr i32 %i.aue, 23
  %i.aug = add i32 %i.aua, -127
  %i.auh = add i32 %i.aug, %i.auf                 ; 3 uses
  %i.aui = icmp slt i32 %i.auh, -126
  br i1 %i.aui, label %bb.de, label %bb.dc

bb.dc:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i.i.i205
  %i.auj = icmp sgt i32 %i.auh, 127
  br i1 %i.auj, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.auk = and i32 %i.aue, -2139095041
  %i.aul = shl nsw i32 %i.auh, 23
  %i.aum = add nsw i32 %i.aul, 1065353216
  %i.aun = or i32 %i.aum, %i.auk
  %i.auo = bitcast i32 %i.aun to float
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc, %_ZN4pbrt7FastExpEf.exit.2.i.i.i205
  %.0.i.3.i.i.i207 = phi float [ %i.auo, %bb.dd ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i.i.i205 ], [ +inf, %bb.dc ]
  %i.aup = shufflevector <2 x float> %.sroa.0225.1.i.i, <2 x float> %.sroa.21.1.i.i184, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.auq = insertelement <4 x float> poison, float %.0.i.i.i.i202, i64 0
  %i.aur = insertelement <4 x float> %i.auq, float %.0.i.1.i.i.i204, i64 1
  %i.aus = insertelement <4 x float> %i.aur, float %.0.i.2.i.i.i206, i64 2
  %i.aut = insertelement <4 x float> %i.aus, float %.0.i.3.i.i.i207, i64 3
  %i.auu = fmul <4 x float> %i.aup, %i.aut        ; 2 uses
  %i.auv = insertelement <2 x float> poison, float %i.aqz, i64 0
  %i.auw = shufflevector <2 x float> %i.auv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aux = fmul <2 x float> %i.aph, %i.auw
  %23 = fmul float %22, %i.aqz
  %i.auy = load <2 x float>, ptr %i.apn, align 4, !tbaa !53, !noalias !804
  %24 = fadd <2 x float> %i.ape, %i.aux           ; 4 uses
  %25 = load <2 x float>, ptr %i.app, align 4, !tbaa !53, !noalias !804
  %i.auz = load <2 x float>, ptr %i.apq, align 4, !tbaa !53, !noalias !804
  %i.ava = load float, ptr %i.apr, align 4, !tbaa !53, !noalias !804
  %i.avb = load float, ptr %i.aps, align 4, !tbaa !53, !noalias !804
  %i.avc = load <2 x float>, ptr %i.apt, align 4, !tbaa !53, !noalias !804
  %26 = fmul <2 x float> %24, %i.avc              ; 2 uses
  %shift386 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop387 = fadd <2 x float> %26, %shift386
  %27 = extractelement <2 x float> %foldExtExtBinop387, i64 0
  %28 = load float, ptr %i.apu, align 4, !tbaa !53, !noalias !804
  %29 = load float, ptr %i.apv, align 4, !tbaa !53, !noalias !804
  %30 = fadd float %.sroa.4.0.copyload.i156, %23  ; 3 uses
  %31 = call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %i.apo, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison), !tbaa !53, !noalias !804 ; 2 uses
  %32 = fmul float %30, %28
  %33 = fadd float %32, %29
  %34 = fadd float %27, %33                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !804
  store float %34, ptr %i.c, align 4, !tbaa !53, !noalias !804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25, !noalias !804
  store i32 0, ptr %i.d, align 4, !tbaa !76, !noalias !804
  %i.avd = fcmp une float %34, 0.000000e+00
  br i1 %i.avd, label %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i209, label %.noexc116.i.i208

.noexc116.i.i208:                                 ; preds = %bb.de
  call void @_ZN4pbrt8LogFatalIJRA3_KcRA2_S1_S3_RfS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef 393, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, ptr noundef nonnull align 1 dereferenceable(2) @.str.26, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.26, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #29
  unreachable

_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i209: ; preds = %bb.de
  %i.ave = fmul <2 x float> %24, %i.auz           ; 2 uses
  %shift389 = shufflevector <2 x float> %i.ave, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop390.a = fadd <2 x float> %i.ave, %shift389
  %35 = extractelement <2 x float> %foldExtExtBinop390.a, i64 0
  %36 = fmul float %30, %i.ava
  %37 = fadd float %36, %i.avb
  %38 = fadd float %35, %37                       ; 2 uses
  %i.avf = fmul <2 x float> %24, %25              ; 2 uses
  %i.avg = insertelement <2 x float> poison, float %30, i64 0
  %39 = shufflevector <2 x float> %i.avg, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = shufflevector <6 x float> %31, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %41 = fmul <2 x float> %39, %40
  %42 = fmul <2 x float> %24, %i.auy              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25, !noalias !804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !804
  %i.avh = fcmp oeq float %34, 1.000000e+00       ; 2 uses
  %43 = fdiv float %38, %34
  %.sroa.493.0.i.i.i.i212 = select i1 %i.avh, float %38, float %43
  %i.avi = load float, ptr %i.apw, align 8, !tbaa !806 ; 2 uses
  %44 = shufflevector <2 x float> %42, <2 x float> %i.avf, <2 x i32> <i32 0, i32 2>
  %45 = shufflevector <2 x float> %i.avf, <2 x float> %42, <2 x i32> <i32 3, i32 1>
  %i.avj = fadd <2 x float> %44, %45
  %46 = shufflevector <6 x float> %31, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.avk = fadd <2 x float> %41, %46
  %47 = fadd <2 x float> %i.avj, %i.avk           ; 2 uses
  %48 = insertelement <2 x float> poison, float %34, i64 0
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <2 x i32> zeroinitializer
  %50 = fdiv <2 x float> %47, %49
  %51 = insertelement <2 x i1> poison, i1 %i.avh, i64 0
  %52 = shufflevector <2 x i1> %51, <2 x i1> poison, <2 x i32> zeroinitializer
  %53 = select <2 x i1> %52, <2 x float> %47, <2 x float> %50 ; 2 uses
  %54 = insertelement <2 x float> poison, float %i.avi, i64 0
  %55 = shufflevector <2 x float> %54, <2 x float> poison, <2 x i32> zeroinitializer
  %56 = fmul <2 x float> %53, %55                 ; 3 uses
  %i.avl = fmul float %.sroa.493.0.i.i.i.i212, %i.avi ; 3 uses
  %i.avm = load float, ptr %i.apx, align 4, !tbaa !807 ; 2 uses
  %i.avn = fcmp ogt float %i.avm, 0.000000e+00
  br i1 %i.avn, label %.loopexit.loopexit.i.i.i, label %.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i209
  %i.avo = fmul nnan float %i.avm, 5.000000e-02   ; 3 uses
  %57 = fmul <2 x float> %56, splat (float 1.000000e+01)
  %i.avp = fmul float %i.avl, 1.000000e+01
  %i.avq = call { <2 x float>, float } @_ZN4pbrt6DNoiseENS_6Point3IfEE(<2 x float> %57, float %i.avp) ; 2 uses
  %.fca.0.extract25.i.i.i = extractvalue { <2 x float>, float } %i.avq, 0
  %.fca.1.extract26.i.i.i = extractvalue { <2 x float>, float } %i.avq, 1
  %i.avr = fmul float %i.avo, %.fca.1.extract26.i.i.i
  %i.avs = fadd float %i.avl, %i.avr              ; 2 uses
  %i.avt = fmul nnan float %i.avo, 5.000000e-01   ; 2 uses
  %i.avu = fmul float %i.avs, 1.990000e+01
  %i.avv = insertelement <2 x float> poison, float %i.avo, i64 0
  %i.avw = shufflevector <2 x float> %i.avv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.avx = fmul <2 x float> %i.avw, %.fca.0.extract25.i.i.i
  %i.avy = fadd <2 x float> %56, %i.avx           ; 2 uses
  %i.avz = fmul <2 x float> %i.avy, splat (float 1.990000e+01)
  %i.awa = call { <2 x float>, float } @_ZN4pbrt6DNoiseENS_6Point3IfEE(<2 x float> %i.avz, float %i.avu) ; 2 uses
  %.fca.0.extract25.1.i.i.i = extractvalue { <2 x float>, float } %i.awa, 0
  %.fca.1.extract26.1.i.i.i = extractvalue { <2 x float>, float } %i.awa, 1
  %i.awb = insertelement <2 x float> poison, float %i.avt, i64 0
  %i.awc = shufflevector <2 x float> %i.awb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awd = fmul <2 x float> %i.awc, %.fca.0.extract25.1.i.i.i
  %i.awe = fmul float %i.avt, %.fca.1.extract26.1.i.i.i
  %i.awf = fadd <2 x float> %i.avy, %i.awd
  %i.awg = fadd float %i.avs, %i.awe
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i209
  %.sroa.0.1.i.i.i = phi <2 x float> [ %56, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i209 ], [ %i.awf, %.loopexit.loopexit.i.i.i ] ; 5 uses
  %.sroa.9.1.i.i.i = phi float [ %i.avl, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit.i.i.i209 ], [ %i.awg, %.loopexit.loopexit.i.i.i ] ; 5 uses
  %i.awh = call noundef float @_ZN4pbrt5NoiseENS_6Point3IfEE(<2 x float> %.sroa.0.1.i.i.i, float %.sroa.9.1.i.i.i)
  %i.awi = fmul float %i.awh, 5.000000e-01
  %i.awj = fadd float %i.awi, 0.000000e+00
  %i.awk = fmul <2 x float> %.sroa.0.1.i.i.i, splat (float 1.990000e+00)
  %i.awl = fmul float %.sroa.9.1.i.i.i, 1.990000e+00
  %i.awm = call noundef float @_ZN4pbrt5NoiseENS_6Point3IfEE(<2 x float> %i.awk, float %i.awl)
  %i.awn = fmul float %i.awm, 2.500000e-01
  %i.awo = fadd float %i.awj, %i.awn
  %i.awp = fmul <2 x float> %.sroa.0.1.i.i.i, splat (float 3.960100e+00)
  %i.awq = fmul float %.sroa.9.1.i.i.i, 3.960100e+00
  %i.awr = call noundef float @_ZN4pbrt5NoiseENS_6Point3IfEE(<2 x float> %i.awp, float %i.awq)
  %i.aws = fmul float %i.awr, 1.250000e-01
  %i.awt = fadd float %i.awo, %i.aws
  %i.awu = fmul <2 x float> %.sroa.0.1.i.i.i, splat (float f0x40FC2DDE)
  %i.awv = fmul float %.sroa.9.1.i.i.i, f0x40FC2DDE
  %i.aww = call noundef float @_ZN4pbrt5NoiseENS_6Point3IfEE(<2 x float> %i.awu, float %i.awv)
  %i.awx = fmul float %i.aww, 6.250000e-02
  %i.awy = fadd float %i.awt, %i.awx
  %i.awz = fmul <2 x float> %.sroa.0.1.i.i.i, splat (float f0x417AEB14)
  %i.axa = fmul float %.sroa.9.1.i.i.i, f0x417AEB14
  %i.axb = call noundef float @_ZN4pbrt5NoiseENS_6Point3IfEE(<2 x float> %i.awz, float %i.axa)
  %i.axc = fmul float %i.axb, 3.125000e-02
  %i.axd = fadd float %i.awy, %i.axc
  %58 = extractelement <2 x float> %53, i64 1     ; 2 uses
  %i.axe = fsub float 1.000000e+00, %58
  %i.axf = fmul float %i.axe, 4.500000e+00
  %i.axg = load float, ptr %i.apy, align 8, !tbaa !808
  %i.axh = fmul float %i.axf, %i.axg
  %i.axi = fmul float %i.axd, %i.axh              ; 3 uses
  %i.axj = fcmp olt float %i.axi, 0.000000e+00
  %i.axk = fcmp ogt float %i.axi, 1.000000e+00
  %..i.i.i.i = select i1 %i.axk, float 1.000000e+00, float %i.axi
  %.0.i.i163.i.i = select i1 %i.axj, float 0.000000e+00, float %..i.i.i.i
  %i.axl = fsub float 5.000000e-01, %58           ; 2 uses
  %i.axm = fcmp ogt float %i.axl, 0.000000e+00
  %.sroa.speculated.i164.i.i = select i1 %i.axm, float %i.axl, float 0.000000e+00
  %i.axn = fmul float %.sroa.speculated.i164.i.i, 2.000000e+00
  %i.axo = fadd float %i.axn, %.0.i.i163.i.i      ; 3 uses
  %i.axp = fcmp olt float %i.axo, 0.000000e+00
  %i.axq = fcmp ogt float %i.axo, 1.000000e+00
  %..i87.i.i.i = select i1 %i.axq, float 1.000000e+00, float %i.axo
  %.0.i88.i.i.i = select i1 %i.axp, float 0.000000e+00, float %..i87.i.i.i
  %i.axr = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.apz, ptr noundef nonnull align 4 dereferenceable(32) %i.aow) ; 2 uses
  %i.axs = extractvalue { <2 x float>, <2 x float> } %i.axr, 0
  %i.axt = extractvalue { <2 x float>, <2 x float> } %i.axr, 1
  %i.axu = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.aqa, ptr noundef nonnull align 4 dereferenceable(32) %i.aow) ; 2 uses
  %i.axv = extractvalue { <2 x float>, <2 x float> } %i.axu, 0
  %i.axw = extractvalue { <2 x float>, <2 x float> } %i.axu, 1
  %i.axx = shufflevector <2 x float> %i.axs, <2 x float> %i.axt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.axy = insertelement <4 x float> poison, float %.0.i88.i.i.i, i64 0
  %i.axz = shufflevector <4 x float> %i.axy, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aya = fmul <4 x float> %i.axx, %i.axz
  %i.ayb = shufflevector <2 x float> %i.axv, <2 x float> %i.axw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ayc = fmul <4 x float> %i.ayb, %i.axz
  %i.ayd = fsub <4 x float> %i.aqi, %i.aya
  %i.aye = fsub <4 x float> %i.ayd, %i.ayc        ; 2 uses
  %i.ayf = fcmp ogt <4 x float> %i.aye, zeroinitializer
  %i.ayg = select <4 x i1> %i.ayf, <4 x float> %i.aye, <4 x float> zeroinitializer
  %i.ayh = fmul <4 x float> %i.auu, %i.ayg
  %i.ayi = load <4 x float>, ptr %.sroa.018.0.copyload.i163, align 4, !tbaa !53
  %i.ayj = fmul <4 x float> %i.aqi, %i.auu        ; 2 uses
  %i.ayk = shufflevector <4 x float> %i.ayj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ayl = fdiv <4 x float> %i.ayh, %i.ayk        ; 2 uses
  %i.aym = fmul <4 x float> %i.ayi, %i.ayl
  store <4 x float> %i.aym, ptr %.sroa.018.0.copyload.i163, align 4, !tbaa !53
  %i.ayn = fdiv <4 x float> %i.ayj, %i.ayk
  %i.ayo = load <4 x float>, ptr %.sroa.2.0.copyload.i165, align 4, !tbaa !53
  %i.ayp = fmul <4 x float> %i.ayn, %i.ayo
  store <4 x float> %i.ayp, ptr %.sroa.2.0.copyload.i165, align 4, !tbaa !53
  %i.ayq = load <4 x float>, ptr %.sroa.319.0.copyload.i167, align 4, !tbaa !53
  %i.ayr = fmul <4 x float> %i.ayl, %i.ayq        ; 3 uses
  store <4 x float> %i.ayr, ptr %.sroa.319.0.copyload.i167, align 4, !tbaa !53
  %.sroa.0.0.copyload4.i103.i.i.i221 = load <2 x float>, ptr %.sroa.2.0.copyload.i165, align 4
  %.sroa.8.0.copyload.i105.i.i.i222 = load <2 x float>, ptr %i.aqc, align 4, !tbaa !99
  %i.ays = shufflevector <4 x float> %i.ayr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ayt = fadd <2 x float> %i.ays, %.sroa.0.0.copyload4.i103.i.i.i221 ; 2 uses
  %i.ayu = shufflevector <4 x float> %i.ayr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ayv = fadd <2 x float> %i.ayu, %.sroa.8.0.copyload.i105.i.i.i222 ; 2 uses
  %shift392 = shufflevector <2 x float> %i.ayt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop393 = fadd <2 x float> %i.ayt, %shift392
  %foldExtExtBinop395 = fadd <2 x float> %foldExtExtBinop393, %i.ayv
  %shift397 = shufflevector <2 x float> %i.ayv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop398 = fadd <2 x float> %shift397, %foldExtExtBinop395
  %i.ayw = extractelement <2 x float> %foldExtExtBinop398, i64 0
  %i.ayx = fmul float %i.ayw, 2.500000e-01        ; 3 uses
  %.sroa.0.0.copyload4.i116.i.i.i227 = load <2 x float>, ptr %.sroa.018.0.copyload.i163, align 4 ; 2 uses
  %.sroa.8.0.copyload.i118.i.i.i228 = load <2 x float>, ptr %i.aqb, align 4 ; 3 uses
  %i.ayy = insertelement <2 x float> poison, float %i.ayx, i64 0
  %i.ayz = shufflevector <2 x float> %i.ayy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aza = fdiv <2 x float> %.sroa.0.0.copyload4.i116.i.i.i227, %i.ayz ; 2 uses
  %.sroa.8.8.vec.extract.i123.i.i.i231 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i228, i64 0
  %i.azb = fdiv float %.sroa.8.8.vec.extract.i123.i.i.i231, %i.ayx ; 2 uses
  %.sroa.8.12.vec.extract.i125.i.i.i232 = extractelement <2 x float> %.sroa.8.0.copyload.i118.i.i.i228, i64 1
  %i.azc = fdiv float %.sroa.8.12.vec.extract.i125.i.i.i232, %i.ayx ; 2 uses
  %i.azd = extractelement <2 x float> %i.aza, i64 0 ; 2 uses
  %i.aze = extractelement <2 x float> %i.aza, i64 1 ; 2 uses
  %i.azf = fcmp olt float %i.azd, %i.aze
  %.sroa.speculated.i129.i.i.i233 = select i1 %i.azf, float %i.aze, float %i.azd ; 2 uses
  %i.azg = fcmp olt float %.sroa.speculated.i129.i.i.i233, %i.azb
  %.sroa.speculated.1.i130.i.i.i234 = select i1 %i.azg, float %i.azb, float %.sroa.speculated.i129.i.i.i233 ; 2 uses
  %i.azh = fcmp olt float %.sroa.speculated.1.i130.i.i.i234, %i.azc
  %.sroa.speculated.2.i131.i.i.i235 = select i1 %i.azh, float %i.azc, float %.sroa.speculated.1.i130.i.i.i234
  %i.azi = fcmp olt float %.sroa.speculated.2.i131.i.i.i235, 5.000000e-02
  %i.azj = shufflevector <2 x float> %.sroa.0.0.copyload4.i116.i.i.i227, <2 x float> %.sroa.8.0.copyload.i118.i.i.i228, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  br i1 %i.azi, label %bb.df, label %bb.di

bb.df:                                            ; preds = %.loopexit.i.i.i
  %i.azk = load i64, ptr %.sroa.420.0.copyload.i169, align 8, !tbaa !211 ; 4 uses
  %i.azl = mul i64 %i.azk, 6364136223846793005
  %i.azm = load i64, ptr %i.aqg, align 8, !tbaa !210
  %i.azn = add i64 %i.azl, %i.azm
  store i64 %i.azn, ptr %.sroa.420.0.copyload.i169, align 8, !tbaa !211
  %i.azo = lshr i64 %i.azk, 45
  %i.azp = lshr i64 %i.azk, 27
  %i.azq = xor i64 %i.azo, %i.azp
  %i.azr = trunc i64 %i.azq to i32                ; 2 uses
  %i.azs = lshr i64 %i.azk, 59
  %i.azt = trunc nuw nsw i64 %i.azs to i32
  %i.azu = call noundef i32 @llvm.fshr.i32(i32 %i.azr, i32 %i.azr, i32 %i.azt)
  %i.azv = uitofp i32 %i.azu to float
  %i.azw = fmul nnan float %i.azv, f0x2F800000    ; 2 uses
  %i.azx = fcmp olt float %i.azw, f0x3F7FFFFF
  %.sroa.speculated.i132.i.i.i239 = select i1 %i.azx, float %i.azw, float f0x3F7FFFFF
  %i.azy = fcmp olt float %.sroa.speculated.i132.i.i.i239, 7.500000e-01
  br i1 %i.azy, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.018.0.copyload.i163, i8 0, i64 16, i1 false)
  br label %bb.di

bb.dh:                                            ; preds = %bb.df
  %i.azz = fmul <4 x float> %i.azj, splat (float 4.000000e+00) ; 2 uses
  store <4 x float> %i.azz, ptr %.sroa.018.0.copyload.i163, align 4, !tbaa !53
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %.loopexit.i.i.i
  %i.baa = phi <4 x float> [ %i.azz, %bb.dh ], [ zeroinitializer, %bb.dg ], [ %i.azj, %.loopexit.i.i.i ]
  %i.bab = fcmp une <4 x float> %i.baa, zeroinitializer
  %i.bac = bitcast <4 x i1> %i.bab to i4
  %.not = icmp eq i4 %i.bac, 0
  br i1 %.not, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_11CloudMediumEEEDaSH_.exit", label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i183

bb.dj:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i183
  %i.bad = fsub float %.sroa.7191.0.copyload.i.i, %.073.i.i185 ; 2 uses
  %i.bae = call float @llvm.fabs.f32(float %i.bad)
  %i.baf = fcmp oeq float %i.bae, +inf
  %.neg.i.i188 = fneg float %i.bad
  %i.bag = select i1 %i.baf, float f0xFF7FFFFF, float %.neg.i.i188 ; 4 uses
  %i.bah = fmul float %.sroa.10.8.vec.extract.i.i, %i.bag
  %i.bai = fmul float %.sroa.0.4.vec.extract.i.i108.i.i180, %i.bag
  %i.baj = fmul float %.sroa.6.8.vec.extract.i.i110.i.i181, %i.bag
  %i.bak = fmul float %.sroa.6.12.vec.extract.i.i112.i.i182, %i.bag
  %i.bal = fmul float %i.bah, f0x3FB8AA3B         ; 2 uses
  %i.bam = call noundef float @llvm.floor.f32(float %i.bal) ; 2 uses
  %i.ban = fsub float %i.bal, %i.bam              ; 3 uses
  %i.bao = fptosi float %i.bam to i32
  %i.bap = call noundef float @llvm.fma.f32(float %i.ban, float f0x3DA00AC9, float f0x3E679A0B)
  %i.baq = call noundef float @llvm.fma.f32(float %i.ban, float %i.bap, float f0x3F321004)
  %i.bar = call noundef float @llvm.fma.f32(float %i.ban, float %i.baq, float 1.000000e+00)
  %i.bas = bitcast float %i.bar to i32            ; 2 uses
  %i.bat = lshr i32 %i.bas, 23
  %i.bau = add i32 %i.bao, -127
  %i.bav = add i32 %i.bau, %i.bat                 ; 3 uses
  %i.baw = icmp slt i32 %i.bav, -126
  br i1 %i.baw, label %_ZN4pbrt7FastExpEf.exit.i145.i.i189, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.bax = icmp sgt i32 %i.bav, 127
  br i1 %i.bax, label %_ZN4pbrt7FastExpEf.exit.i145.i.i189, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.bay = and i32 %i.bas, -2139095041
  %i.baz = shl nsw i32 %i.bav, 23
  %i.bba = add nsw i32 %i.baz, 1065353216
  %i.bbb = or i32 %i.bba, %i.bay
  %i.bbc = bitcast i32 %i.bbb to float
  br label %_ZN4pbrt7FastExpEf.exit.i145.i.i189

_ZN4pbrt7FastExpEf.exit.i145.i.i189:              ; preds = %bb.dl, %bb.dk, %bb.dj
  %.0.i.i146.i.i190 = phi float [ %i.bbc, %bb.dl ], [ 0.000000e+00, %bb.dj ], [ +inf, %bb.dk ]
  %i.bbd = fmul float %i.bai, f0x3FB8AA3B         ; 2 uses
  %i.bbe = call noundef float @llvm.floor.f32(float %i.bbd) ; 2 uses
  %i.bbf = fsub float %i.bbd, %i.bbe              ; 3 uses
  %i.bbg = fptosi float %i.bbe to i32
  %i.bbh = call noundef float @llvm.fma.f32(float %i.bbf, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bbi = call noundef float @llvm.fma.f32(float %i.bbf, float %i.bbh, float f0x3F321004)
  %i.bbj = call noundef float @llvm.fma.f32(float %i.bbf, float %i.bbi, float 1.000000e+00)
  %i.bbk = bitcast float %i.bbj to i32            ; 2 uses
  %i.bbl = lshr i32 %i.bbk, 23
  %i.bbm = add i32 %i.bbg, -127
  %i.bbn = add i32 %i.bbm, %i.bbl                 ; 3 uses
  %i.bbo = icmp slt i32 %i.bbn, -126
  br i1 %i.bbo, label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191, label %bb.dm

bb.dm:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.i145.i.i189
  %i.bbp = icmp sgt i32 %i.bbn, 127
  br i1 %i.bbp, label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.bbq = and i32 %i.bbk, -2139095041
  %i.bbr = shl nsw i32 %i.bbn, 23
  %i.bbs = add nsw i32 %i.bbr, 1065353216
  %i.bbt = or i32 %i.bbs, %i.bbq
  %i.bbu = bitcast i32 %i.bbt to float
  br label %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191

_ZN4pbrt7FastExpEf.exit.1.i147.i.i191:            ; preds = %bb.dn, %bb.dm, %_ZN4pbrt7FastExpEf.exit.i145.i.i189
  %.0.i.1.i148.i.i192 = phi float [ %i.bbu, %bb.dn ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.i145.i.i189 ], [ +inf, %bb.dm ]
  %i.bbv = fmul float %i.baj, f0x3FB8AA3B         ; 2 uses
  %i.bbw = call noundef float @llvm.floor.f32(float %i.bbv) ; 2 uses
  %i.bbx = fsub float %i.bbv, %i.bbw              ; 3 uses
  %i.bby = fptosi float %i.bbw to i32
  %i.bbz = call noundef float @llvm.fma.f32(float %i.bbx, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bca = call noundef float @llvm.fma.f32(float %i.bbx, float %i.bbz, float f0x3F321004)
  %i.bcb = call noundef float @llvm.fma.f32(float %i.bbx, float %i.bca, float 1.000000e+00)
  %i.bcc = bitcast float %i.bcb to i32            ; 2 uses
  %i.bcd = lshr i32 %i.bcc, 23
  %i.bce = add i32 %i.bby, -127
  %i.bcf = add i32 %i.bce, %i.bcd                 ; 3 uses
  %i.bcg = icmp slt i32 %i.bcf, -126
  br i1 %i.bcg, label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193, label %bb.do

bb.do:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191
  %i.bch = icmp sgt i32 %i.bcf, 127
  br i1 %i.bch, label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bci = and i32 %i.bcc, -2139095041
  %i.bcj = shl nsw i32 %i.bcf, 23
  %i.bck = add nsw i32 %i.bcj, 1065353216
  %i.bcl = or i32 %i.bck, %i.bci
  %i.bcm = bitcast i32 %i.bcl to float
  br label %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193

_ZN4pbrt7FastExpEf.exit.2.i149.i.i193:            ; preds = %bb.dp, %bb.do, %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191
  %.0.i.2.i150.i.i194 = phi float [ %i.bcm, %bb.dp ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.1.i147.i.i191 ], [ +inf, %bb.do ]
  %i.bcn = fmul float %i.bak, f0x3FB8AA3B         ; 2 uses
  %i.bco = call noundef float @llvm.floor.f32(float %i.bcn) ; 2 uses
  %i.bcp = fsub float %i.bcn, %i.bco              ; 3 uses
  %i.bcq = fptosi float %i.bco to i32
  %i.bcr = call noundef float @llvm.fma.f32(float %i.bcp, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bcs = call noundef float @llvm.fma.f32(float %i.bcp, float %i.bcr, float f0x3F321004)
  %i.bct = call noundef float @llvm.fma.f32(float %i.bcp, float %i.bcs, float 1.000000e+00)
  %i.bcu = bitcast float %i.bct to i32            ; 2 uses
  %i.bcv = lshr i32 %i.bcu, 23
  %i.bcw = add i32 %i.bcq, -127
  %i.bcx = add i32 %i.bcw, %i.bcv                 ; 3 uses
  %i.bcy = icmp slt i32 %i.bcx, -126
  br i1 %i.bcy, label %.thread.i.i195, label %bb.dq

bb.dq:                                            ; preds = %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193
  %i.bcz = icmp sgt i32 %i.bcx, 127
  br i1 %i.bcz, label %.thread.i.i195, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.bda = and i32 %i.bcu, -2139095041
  %i.bdb = shl nsw i32 %i.bcx, 23
  %i.bdc = add nsw i32 %i.bdb, 1065353216
  %i.bdd = or i32 %i.bdc, %i.bda
  %i.bde = bitcast i32 %i.bdd to float
  br label %.thread.i.i195

.thread.i.i195:                                   ; preds = %bb.dr, %bb.dq, %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193
  %.0.i.3.i151.i.i196 = phi float [ %i.bde, %bb.dr ], [ 0.000000e+00, %_ZN4pbrt7FastExpEf.exit.2.i149.i.i193 ], [ +inf, %bb.dq ]
  %i.bdf = insertelement <2 x float> poison, float %.0.i.i146.i.i190, i64 0
  %i.bdg = insertelement <2 x float> %i.bdf, float %.0.i.1.i148.i.i192, i64 1
  %i.bdh = fmul <2 x float> %.sroa.0225.1.i.i, %i.bdg
  %i.bdi = insertelement <2 x float> poison, float %.0.i.2.i150.i.i194, i64 0
  %i.bdj = insertelement <2 x float> %i.bdi, float %.0.i.3.i151.i.i196, i64 1
  %i.bdk = fmul <2 x float> %.sroa.21.1.i.i184, %i.bdj
  br label %.thread298.i.i

.thread298.i.i:                                   ; preds = %.thread.i.i195, %bb.cu
  %.sroa.0225.4.i.i = phi <2 x float> [ %i.aqu, %bb.cu ], [ %i.bdh, %.thread.i.i195 ] ; 2 uses
  %.sroa.21.4.i.i197 = phi <2 x float> [ %i.aqv, %bb.cu ], [ %i.bdk, %.thread.i.i195 ] ; 2 uses
  %.2.i.i198 = phi float [ %.054329.i34.i, %bb.cu ], [ %.sroa.speculated.i.i.i187, %.thread.i.i195 ]
  %i.bdl = load i8, ptr %i.apl, align 4, !tbaa !232, !range !115, !noalias !803, !noundef !44
  %i.bdm = trunc nuw i8 %i.bdl to i1
  br i1 %i.bdm, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_11CloudMediumEEEDaSH_.exit", label %bb.ct

"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_11CloudMediumEEEDaSH_.exit": ; preds = %.thread298.i.i, %bb.di, %bb.cs
  %.sroa.0280.2.i.i = phi <2 x float> [ splat (float 1.000000e+00), %bb.di ], [ splat (float 1.000000e+00), %bb.cs ], [ %.sroa.0225.4.i.i, %.thread298.i.i ]
  %.sroa.4282.2.i.i = phi <2 x float> [ splat (float 1.000000e+00), %bb.di ], [ splat (float 1.000000e+00), %bb.cs ], [ %.sroa.21.4.i.i197, %.thread298.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_17HomogeneousMediumEEEDaSH_.exit"

bb.ds:                                            ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i252 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i253 = load float, ptr %.sroa.4.0..sroa_idx.i252, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i254 = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.5.0.copyload.i255 = load <2 x float>, ptr %.sroa.5.0..sroa_idx.i254, align 4 ; 3 uses
  %.sroa.9.0..sroa_idx.i256 = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.9.0.copyload.i257 = load float, ptr %.sroa.9.0..sroa_idx.i256, align 4 ; 3 uses
  %.sroa.12.0..sroa_idx.i258 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.12.sroa.0.0.copyload.i259 = load float, ptr %.sroa.12.0..sroa_idx.i258, align 8
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.bdo = load i64, ptr %i.bdn, align 8, !tbaa !65 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bdq = load ptr, ptr %i.bdp, align 8, !tbaa !787, !nonnull !44, !align !182
  %i.bdr = load float, ptr %i.bdq, align 4, !tbaa !53
  %i.bds = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !788, !nonnull !44, !align !182
  %i.bdu = load float, ptr %i.bdt, align 4, !tbaa !53
  %i.bdv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !789, !nonnull !44, !align !45 ; 3 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !790, !nonnull !44, !align !182 ; 7 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bea = load ptr, ptr %i.bdz, align 8, !tbaa !791, !nonnull !44, !align !45 ; 4 uses
  %.sroa.018.0.copyload.i260 = load ptr, ptr %i.bea, align 8, !tbaa !793 ; 6 uses
  %.sroa.2.0..sroa_idx.i261 = getelementptr inbounds nuw i8, ptr %i.bea, i64 8
  %.sroa.2.0.copyload.i262 = load ptr, ptr %.sroa.2.0..sroa_idx.i261, align 8, !tbaa !793 ; 4 uses
  %.sroa.319.0..sroa_idx.i263 = getelementptr inbounds nuw i8, ptr %i.bea, i64 16
  %.sroa.319.0.copyload.i264 = load ptr, ptr %.sroa.319.0..sroa_idx.i263, align 8, !tbaa !793 ; 2 uses
  %.sroa.420.0..sroa_idx.i265 = getelementptr inbounds nuw i8, ptr %i.bea, i64 24
  %.sroa.420.0.copyload.i266 = load ptr, ptr %.sroa.420.0..sroa_idx.i265, align 8, !tbaa !214 ; 3 uses
  %i.beb = fmul <2 x float> %.sroa.5.0.copyload.i255, %.sroa.5.0.copyload.i255 ; 2 uses
  %shift400 = shufflevector <2 x float> %i.beb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop401 = fadd <2 x float> %i.beb, %shift400
  %i.bec = extractelement <2 x float> %foldExtExtBinop401, i64 0
  %i.bed = fmul float %.sroa.9.0.copyload.i257, %.sroa.9.0.copyload.i257
  %i.bee = fadd float %i.bed, %i.bec
  %sqrt.i.i.i269 = tail call noundef float @llvm.sqrt.f32(float %i.bee) ; 3 uses
  %i.bef = fmul float %i.bdr, %sqrt.i.i.i269
  %i.beg = load <2 x float>, ptr %i.g, align 8    ; 2 uses
  %i.beh = shufflevector <2 x float> %i.beg, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bei = shufflevector <2 x float> %.sroa.5.0.copyload.i255, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.bej = insertelement <3 x float> poison, float %sqrt.i.i.i269, i64 0
  %i.bek = shufflevector <3 x float> %i.bej, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bel = fdiv <3 x float> %i.bei, %i.bek        ; 2 uses
  %i.bem = fdiv float %.sroa.9.0.copyload.i257, %sqrt.i.i.i269 ; 2 uses
  %i.ben = shufflevector <3 x float> %i.bel, <3 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.beo = and i64 %i.bdo, 144115188075855871
  %i.bep = inttoptr i64 %i.beo to ptr             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store <2 x float> %i.beg, ptr %4, align 8
  %.sroa.4.0..sroa_idx4.i273 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.sroa.4.0.copyload.i253, ptr %.sroa.4.0..sroa_idx4.i273, align 8
  %.sroa.5.0..sroa_idx6.i274 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <2 x float> %i.ben, ptr %.sroa.5.0..sroa_idx6.i274, align 4
  %.sroa.9.0..sroa_idx9.i275 = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.bem, ptr %.sroa.9.0..sroa_idx9.i275, align 4
  %.sroa.12.0..sroa_idx11.i276 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %.sroa.12.sroa.0.0.copyload.i259, ptr %.sroa.12.0..sroa_idx11.i276, align 8
  %i.beq = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.bdo, ptr %i.beq, align 8, !tbaa !65
  call void @_ZNK4pbrt13NanoVDBMedium9SampleRayENS_3RayEfRKNS_18SampledWavelengthsE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::DDAMajorantIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(404) %i.bep, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(40) %4, float noundef %i.bef, ptr noundef nonnull align 4 dereferenceable(32) %i.bdy)
  %i.ber = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bdw, i64 8
  %i.beu = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i104.i.i277 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.bep, i64 152 ; 4 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bep, i64 184 ; 4 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bep, i64 168 ; 4 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bdy, i64 4
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bdy, i64 8
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bdy, i64 12
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bep, i64 192
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bep, i64 88
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bep, i64 92
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bep, i64 128
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bep, i64 136
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bep, i64 144
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bep, i64 148
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bep, i64 376
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.bfk = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN4pbrt19DDAMajorantIterator4NextEv(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.221") align 4 %5, ptr noundef nonnull align 8 dereferenceable(92) %3)
  %i.bfl = load i8, ptr %i.ber, align 4, !tbaa !220, !range !115, !noundef !44
  %i.bfm = trunc nuw i8 %i.bfl to i1
  br i1 %i.bfm, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i, label %"_ZZN4pbrt11SampleT_majIZNS_18TraceTransmittanceIZZNKS_12CPUAggregate17IntersectShadowTrEiPNS_9WorkQueueINS_17ShadowRayWorkItemEEEPNS_3SOAINS_16PixelSampleStateEEEENK3$_0clEiEUlNS_3RayEfE_ZZNKS2_17IntersectShadowTrEiS6_SA_ENKSB_clEiEUlNS_6Point3IfEEE_EEvS4_SA_T_T0_EUlSF_NS_16MediumPropertiesENS_15SampledSpectrumESK_E_EESK_SC_ffRNS_3RNGERKNS_18SampledWavelengthsESH_ENKUlSH_E_clIPNS_13NanoVDBMediumEEEDaSH_.exit"

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i: ; preds = %bb.ds
  %i.bfn = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload.i260, i64 8
  %i.bfo = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i262, i64 8
  %i.bfp = getelementptr inbounds nuw i8, ptr %.sroa.420.0.copyload.i266, i64 8
  br label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i280

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i280: ; preds = %.thread.i.i288, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i
  %.sroa.0197.0315.i52.i = phi <2 x float> [ splat (float 1.000000e+00), %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i ], [ %.sroa.0197.4.i.i, %.thread.i.i288 ] ; 2 uses
  %.sroa.21.0316.i51.i = phi <2 x float> [ splat (float 1.000000e+00), %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i ], [ %.sroa.21.4.i.i289, %.thread.i.i288 ] ; 2 uses
  %.054317.i50.i = phi float [ %i.bdu, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.lr.ph.i ], [ %.2.i.i290, %.thread.i.i288 ] ; 2 uses
  %i.bfq = load float, ptr %i.bes, align 4, !tbaa !53
  %i.bfr = fcmp oeq float %i.bfq, 0.000000e+00
  br i1 %i.bfr, label %bb.dt, label %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281

bb.dt:                                            ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i280
  %i.bfs = load float, ptr %i.beu, align 4, !tbaa !222
  %i.bft = load float, ptr %5, align 4, !tbaa !223
  %i.bfu = fsub float %i.bfs, %i.bft              ; 2 uses
  %i.bfv = call float @llvm.fabs.f32(float %i.bfu)
  %i.bfw = fcmp oeq float %i.bfv, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.neg278.i.i = fneg float %i.bfu
  %i.bfx = select i1 %i.bfw, float f0xFF7FFFFF, float %.neg278.i.i
  %.sroa.0.0.copyload.i.i.i.i346 = load <2 x float>, ptr %i.bes, align 4
  %.sroa.6.0.copyload.i.i.i.i347 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i277, align 4, !tbaa !99
  %i.bfy = insertelement <2 x float> poison, float %i.bfx, i64 0
  %i.bfz = shufflevector <2 x float> %i.bfy, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bga = fmul <2 x float> %.sroa.0.0.copyload.i.i.i.i346, %i.bfz
  %i.bgb = fmul <2 x float> %i.bfz, %.sroa.6.0.copyload.i.i.i.i347
  store <2 x float> %i.bga, ptr %6, align 8
  store <2 x float> %i.bgb, ptr %i.bfk, align 8
  %i.bgc = call { <2 x float>, <2 x float> } @_ZN4pbrt7FastExpERKNS_15SampledSpectrumE(ptr noundef nonnull align 4 dereferenceable(16) %6) ; 2 uses
  %i.bgd = extractvalue { <2 x float>, <2 x float> } %i.bgc, 0
  %i.bge = extractvalue { <2 x float>, <2 x float> } %i.bgc, 1
  %i.bgf = fmul <2 x float> %.sroa.0197.0315.i52.i, %i.bgd
  %i.bgg = fmul <2 x float> %.sroa.21.0316.i51.i, %i.bge
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.thread.i.i288

_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281: ; preds = %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit.i.i280
  %i.bgh = load float, ptr %5, align 4, !tbaa !223
  br label %bb.du

bb.du:                                            ; preds = %bb.ez, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281
  %.sroa.0197.1.i.i = phi <2 x float> [ %.sroa.0197.0315.i52.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ splat (float 1.000000e+00), %bb.ez ] ; 2 uses
  %.sroa.21.1.i.i282 = phi <2 x float> [ %.sroa.21.0316.i51.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ splat (float 1.000000e+00), %bb.ez ] ; 2 uses
  %.073.i.i283 = phi float [ %i.bgh, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ %i.bgo, %bb.ez ] ; 3 uses
  %.1.i.i284 = phi float [ %.054317.i50.i, %_ZN4pstd8optionalIN4pbrt18RayMajorantSegmentEEptEv.exit96.i.i281 ], [ %.sroa.speculated.i.i.i286, %bb.ez ]
  %i.bgi = load i8, ptr %i.ber, align 4, !tbaa !220, !range !115, !noundef !44
  %i.bgj = trunc nuw i8 %i.bgi to i1
  br i1 %i.bgj, label %bb.dv, label %.noexc97.i.i285

.noexc97.i.i285:                                  ; preds = %bb.du
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef 235, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(4) @.str.22) #29
  unreachable

bb.dv:                                            ; preds = %bb.du
  %i.bgk = load float, ptr %i.bes, align 4, !tbaa !53
  %i.bgl = fsub float 1.000000e+00, %.1.i.i284
  %i.bgm = call noundef float @logf(float noundef %i.bgl) #25
  %i.bgn = fdiv float %i.bgm, %i.bgk
  %i.bgo = fsub float %.073.i.i283, %i.bgn        ; 5 uses
  %i.bgp = load i64, ptr %i.bdw, align 8, !tbaa !211 ; 4 uses
  %i.bgq = mul i64 %i.bgp, 6364136223846793005
  %i.bgr = load i64, ptr %i.bet, align 8, !tbaa !210
  %i.bgs = add i64 %i.bgq, %i.bgr
  store i64 %i.bgs, ptr %i.bdw, align 8, !tbaa !211
  %i.bgt = lshr i64 %i.bgp, 45
  %i.bgu = lshr i64 %i.bgp, 27
  %i.bgv = xor i64 %i.bgt, %i.bgu
  %i.bgw = trunc i64 %i.bgv to i32                ; 2 uses
  %i.bgx = lshr i64 %i.bgp, 59
  %i.bgy = trunc nuw nsw i64 %i.bgx to i32
  %i.bgz = call noundef i32 @llvm.fshr.i32(i32 %i.bgw, i32 %i.bgw, i32 %i.bgy)
  %i.bha = uitofp i32 %i.bgz to float
  %i.bhb = fmul nnan float %i.bha, f0x2F800000    ; 2 uses
  %i.bhc = fcmp olt float %i.bhb, f0x3F7FFFFF
  %.sroa.speculated.i.i.i286 = select i1 %i.bhc, float %i.bhb, float f0x3F7FFFFF ; 2 uses
  %i.bhd = load float, ptr %i.beu, align 4, !tbaa !222 ; 2 uses
  %i.bhe = fcmp olt float %i.bgo, %i.bhd
  br i1 %i.bhe, label %bb.dw, label %bb.fa

bb.dw:                                            ; preds = %bb.dv
  %i.bhf = fsub float %i.bgo, %.073.i.i283
  %i.bhg = fneg float %i.bhf                      ; 4 uses
  %.sroa.0.0.copyload.i.i103.i.i291 = load <2 x float>, ptr %i.bes, align 4 ; 2 uses
  %.sroa.6.0.copyload.i.i105.i.i292 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i.i104.i.i277, align 4, !tbaa !99 ; 2 uses
  %.sroa.0.0.vec.extract.i.i106.i.i293 = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i291, i64 0
  %i.bhh = fmul float %.sroa.0.0.vec.extract.i.i106.i.i293, %i.bhg
  %.sroa.0.4.vec.extract.i.i108.i.i294 = extractelement <2 x float> %.sroa.0.0.copyload.i.i103.i.i291, i64 1
  %i.bhi = fmul float %.sroa.0.4.vec.extract.i.i108.i.i294, %i.bhg
  %.sroa.6.8.vec.extract.i.i110.i.i295 = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i292, i64 0
  %i.bhj = fmul float %.sroa.6.8.vec.extract.i.i110.i.i295, %i.bhg
  %.sroa.6.12.vec.extract.i.i112.i.i296 = extractelement <2 x float> %.sroa.6.0.copyload.i.i105.i.i292, i64 1
  %i.bhk = fmul float %.sroa.6.12.vec.extract.i.i112.i.i296, %i.bhg
  %i.bhl = fmul float %i.bhh, f0x3FB8AA3B         ; 2 uses
  %i.bhm = call noundef float @llvm.floor.f32(float %i.bhl) ; 2 uses
  %i.bhn = fsub float %i.bhl, %i.bhm              ; 3 uses
  %i.bho = fptosi float %i.bhm to i32
  %i.bhp = call noundef float @llvm.fma.f32(float %i.bhn, float f0x3DA00AC9, float f0x3E679A0B)
end_hunk_0
begin_hunk_1_@_ZNK4pbrt3SOAINS_25SubsurfaceScatterWorkItemEE16GetSetIndirectorcvS1_Ev:bb.a
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !53
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %i.ea, ptr %i.eb, align 8, !tbaa !1012
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !1013
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.j
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !53
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 188
  store float %i.ef, ptr %i.eg, align 4, !tbaa !1014
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 424
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !101, !noalias !1015
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.j
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !53, !noalias !1015
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.el = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !102, !noalias !1015
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.j
  %i.eo = load float, ptr %i.en, align 4, !tbaa !53, !noalias !1015
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.eo, i64 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !101, !noalias !1015
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.j
  %i.es = load float, ptr %i.er, align 4, !tbaa !53, !noalias !1015
  %.sroa.0.0.vec.insert.i5.i.i = insertelement <2 x float> poison, float %i.es, i64 0
  %i.et = getelementptr inbounds nuw i8, ptr %i.e, i64 456
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !102, !noalias !1015
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.j
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !53, !noalias !1015
  %.sroa.0.4.vec.insert.i6.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i5.i.i, float %i.ew, i64 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !101, !noalias !1015
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.j
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !53, !noalias !1015
  %.sroa.0.0.vec.insert.i9.i.i = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !102, !noalias !1015
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.j
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !53, !noalias !1015
  %.sroa.0.4.vec.insert.i10.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i9.i.i, float %i.fe, i64 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !103, !noalias !1016
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.j
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.0.vec.insert.i.i40 = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !104, !noalias !1016
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %i.j
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.4.vec.insert.i.i41 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i40, float %i.fm, i64 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !105, !noalias !1016
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.j
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !53, !noalias !1016
  %i.fr = getelementptr inbounds nuw i8, ptr %i.e, i64 528
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !57, !noalias !1016
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %i.j
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.0.vec.insert.i38.i = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 536
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !58, !noalias !1016
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.j
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.4.vec.insert.i39.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i38.i, float %i.fy, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 544
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !59, !noalias !1016
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.j
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !53, !noalias !1016
  %i.gd = getelementptr inbounds nuw i8, ptr %i.e, i64 560
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !57, !noalias !1016
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.j
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.0.vec.insert.i44.i = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gh = getelementptr inbounds nuw i8, ptr %i.e, i64 568
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !58, !noalias !1016
  %i.gj = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.j
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.4.vec.insert.i45.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i44.i, float %i.gk, i64 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !59, !noalias !1016
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.j
  %i.go = load float, ptr %i.gn, align 4, !tbaa !53, !noalias !1016
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !103, !noalias !1016
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.j
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.0.vec.insert.i50.i = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gt = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !104, !noalias !1016
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.j
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.4.vec.insert.i51.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i50.i, float %i.gw, i64 1
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 608
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !105, !noalias !1016
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.j
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !53, !noalias !1016
  %i.hb = getelementptr inbounds nuw i8, ptr %i.e, i64 624
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !57, !noalias !1016
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.j
  %i.he = load float, ptr %i.hd, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.0.vec.insert.i56.i = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hf = getelementptr inbounds nuw i8, ptr %i.e, i64 632
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !58, !noalias !1016
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.j
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.4.vec.insert.i57.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i56.i, float %i.hi, i64 1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !59, !noalias !1016
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.j
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !53, !noalias !1016
  %i.hn = getelementptr inbounds nuw i8, ptr %i.e, i64 656
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !57, !noalias !1016
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.ho, i64 %i.j
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.0.vec.insert.i62.i = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.hr = getelementptr inbounds nuw i8, ptr %i.e, i64 664
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !58, !noalias !1016
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hs, i64 %i.j
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !53, !noalias !1016
  %.sroa.0.4.vec.insert.i63.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i62.i, float %i.hu, i64 1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.e, i64 672
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !59, !noalias !1016
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.j
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !53, !noalias !1016
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %i.d, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store <2 x float> %.sroa.0.4.vec.insert.i6.i.i, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x float> %.sroa.0.4.vec.insert.i10.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <2 x float> %.sroa.0.4.vec.insert.i.i41, ptr %.sroa.645.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store float %i.fq, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 228
  store <2 x float> %.sroa.0.4.vec.insert.i51.i, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 236
  store float %i.ha, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store <2 x float> %.sroa.0.4.vec.insert.i39.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float %i.gc, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 252
  store <2 x float> %.sroa.0.4.vec.insert.i45.i, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %i.go, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store <2 x float> %.sroa.0.4.vec.insert.i57.i, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store float %i.hm, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 276
  store <2 x float> %.sroa.0.4.vec.insert.i63.i, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 284
  store float %i.hy, ptr %.sroa.17.0..sroa_idx, align 4
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_aggregate.cpp() #22 section ".text.startup" {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !53
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !53
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !53
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !53
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL24STATS_REGprimitiveMemoryE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_28__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <10 x float> @llvm.masked.load.v10f32.p0(ptr captures(none), <10 x i1>, <10 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x float> @llvm.masked.load.v6f32.p0(ptr captures(none), <6 x i1>, <6 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v2i32(<2 x i32>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !46}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"vtable pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_15SimplePrimitiveENS_18GeometricPrimitiveENS_20TransformedPrimitiveENS_17AnimatedPrimitiveENS_12BVHAggregateENS_15KdTreeAggregateEEEE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTSN4pbrt8RayQueueE", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTSN4pbrt12CPUAggregateE", !15, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 _ZTSN4pbrt17MediumSampleQueueE", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTSN4pbrt15EscapedRayQueueE", !15, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_20HitAreaLightWorkItemEEE", !15, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"p1 _ZTSN4pbrt14MultiWorkQueueINS_8TypePackIJNS_20MaterialEvalWorkItemINS_21CoatedDiffuseMaterialEEENS2_INS_23CoatedConductorMaterialEEENS2_INS_17ConductorMaterialEEENS2_INS_18DielectricMaterialEEENS2_INS_15DiffuseMaterialEEENS2_INS_27DiffuseTransmissionMaterialEEENS2_INS_12HairMaterialEEENS2_INS_16MeasuredMaterialEEENS2_INS_18SubsurfaceMaterialEEENS2_INS_22ThinDielectricMaterialEEENS2_INS_11MixMaterialEEEEEEEE", !15, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!15, !15, i64 0}
!29 = !{!"_ZTSSt14_Function_base", !6, i64 0, !15, i64 16}
!30 = !{!"_ZTSSt8functionIFvlEE", !29, i64 0, !15, i64 24}
!31 = !{!30, !15, i64 24}
!32 = !{!29, !15, i64 16}
!33 = !{!"p1 _ZTSSt8functionIFvlEE", !15, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"_ZTSSt8functionIFvllEE", !29, i64 0, !15, i64 24}
!36 = !{!35, !15, i64 24}
!37 = !{!"p1 _ZTSN4pbrt9WorkQueueINS_17ShadowRayWorkItemEEE", !15, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"p1 _ZTSN4pbrt3SOAINS_16PixelSampleStateEEE", !15, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"p1 _ZTSN4pbrt22SubsurfaceScatterQueueE", !15, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!12, !12, i64 0}
!44 = !{}
!45 = !{i64 8}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"p1 _ZTSSt9type_info", !15, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 float", !15, i64 0}
!50 = !{!"_ZTSN4pbrt3SOAINS_6Point3IfEEEE", !7, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!51 = !{!50, !49, i64 8}
!52 = !{!"float", !6, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!50, !49, i64 16}
!55 = !{!50, !49, i64 24}
!56 = !{!"_ZTSN4pbrt3SOAINS_7Vector3IfEEEE", !7, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!57 = !{!56, !49, i64 8}
!58 = !{!56, !49, i64 16}
!59 = !{!56, !49, i64 24}
!60 = !{!"p1 _ZTSN4pbrt6MediumE", !15, i64 0}
!61 = !{!"_ZTSN4pbrt3SOAINS_3RayEEE", !7, i64 0, !50, i64 8, !56, i64 40, !49, i64 72, !60, i64 80}
!62 = !{!61, !49, i64 72}
!63 = !{!61, !60, i64 80}
!64 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !12, i64 0}
!65 = !{!64, !12, i64 0}
!66 = !{!"p1 int", !15, i64 0}
!67 = !{!"p1 _ZTSN4pbrt6Float4E", !15, i64 0}
!68 = !{!"_ZTSN4pbrt3SOAINS_18SampledWavelengthsEEE", !7, i64 0, !67, i64 8, !67, i64 16, !49, i64 24, !49, i64 32}
!69 = !{!"_ZTSN4pbrt3SOAINS_15SampledSpectrumEEE", !7, i64 0, !67, i64 8, !49, i64 16}
!70 = !{!"_ZTSN4pbrt3SOAINS_8IntervalEEE", !7, i64 0, !49, i64 8, !49, i64 16}
!71 = !{!"_ZTSN4pbrt3SOAINS_8Point3fiEEE", !7, i64 0, !70, i64 8, !70, i64 32, !70, i64 56}
!72 = !{!"_ZTSN4pbrt3SOAINS_7Normal3IfEEEE", !7, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!73 = !{!"_ZTSN4pbrt3SOAINS_18LightSampleContextEEE", !7, i64 0, !71, i64 8, !72, i64 88, !72, i64 120}
!74 = !{!"_ZTSN4pbrt3SOAINS_11RayWorkItemEEE", !7, i64 0, !61, i64 8, !66, i64 96, !66, i64 104, !68, i64 112, !69, i64 152, !69, i64 176, !69, i64 200, !73, i64 224, !49, i64 376, !66, i64 384, !66, i64 392}
!75 = !{!74, !66, i64 96}
!76 = !{!7, !7, i64 0}
!77 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !52, i64 0, !52, i64 4, !52, i64 8}
!78 = !{!"_ZTSN4pbrt6Point3IfEE", !77, i64 0}
!79 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !52, i64 0, !52, i64 4, !52, i64 8}
!80 = !{!"_ZTSN4pbrt7Vector3IfEE", !79, i64 0}
!81 = !{!"_ZTSN4pbrt6MediumE", !64, i64 0}
!82 = !{!"_ZTSN4pbrt3RayE", !78, i64 0, !80, i64 12, !52, i64 24, !81, i64 32}
!83 = !{!"_ZTSN4pstd5arrayIfLi4EEE", !6, i64 0}
!84 = !{!"_ZTSN4pbrt18SampledWavelengthsE", !83, i64 0, !83, i64 16}
!85 = !{!"_ZTSN4pbrt15SampledSpectrumE", !83, i64 0}
!86 = !{!"_ZTSN4pbrt8IntervalE", !52, i64 0, !52, i64 4}
!87 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3ENS_8IntervalEEE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!"_ZTSN4pbrt6Point3INS_8IntervalEEE", !87, i64 0}
!89 = !{!"_ZTSN4pbrt8Point3fiE", !88, i64 0}
!90 = !{!"_ZTSN4pbrt6Tuple3INS_7Normal3EfEE", !52, i64 0, !52, i64 4, !52, i64 8}
!91 = !{!"_ZTSN4pbrt7Normal3IfEE", !90, i64 0}
!92 = !{!"_ZTSN4pbrt18LightSampleContextE", !89, i64 0, !91, i64 24, !91, i64 36}
!93 = !{!"_ZTSN4pbrt11RayWorkItemE", !82, i64 0, !7, i64 40, !84, i64 44, !7, i64 76, !85, i64 80, !85, i64 96, !85, i64 112, !92, i64 128, !52, i64 176, !7, i64 180, !7, i64 184}
!94 = !{!93, !7, i64 40}
!95 = !{!74, !66, i64 104}
!96 = !{!93, !7, i64 76}
!97 = !{!68, !67, i64 8}
!98 = !{!68, !67, i64 16}
!99 = !{!6, !6, i64 0}
!100 = !{!69, !67, i64 8}
!101 = !{!70, !49, i64 8}
!102 = !{!70, !49, i64 16}
!103 = !{!72, !49, i64 8}
!104 = !{!72, !49, i64 16}
!105 = !{!72, !49, i64 24}
!106 = !{!74, !49, i64 376}
!107 = !{!93, !52, i64 176}
!108 = !{!74, !66, i64 384}
!109 = !{!93, !7, i64 180}
!110 = !{!74, !66, i64 392}
!111 = !{!93, !7, i64 184}
!112 = !{!"bool", !6, i64 0}
!113 = !{!"_ZTSN4pstd8optionalIN4pbrt17ShapeIntersectionEEE", !6, i64 0, !112, i64 256}
!114 = !{!113, !112, i64 256}
!115 = !{i8 0, i8 2}
!116 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EfEE", !52, i64 0, !52, i64 4}
!117 = !{!"_ZTSN4pbrt6Point2IfEE", !116, i64 0}
!118 = !{!"p1 _ZTSN4pbrt15MediumInterfaceE", !15, i64 0}
!119 = !{!"_ZTSN4pbrt11InteractionE", !89, i64 0, !52, i64 24, !80, i64 28, !91, i64 40, !117, i64 52, !118, i64 64, !81, i64 72}
!120 = !{!"_ZTSN4pbrt18SurfaceInteractionUt_E", !91, i64 0, !80, i64 12, !80, i64 24, !91, i64 36, !91, i64 48}
!121 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEEE", !12, i64 0}
!122 = !{!"_ZTSN4pbrt8MaterialE", !121, i64 0}
!123 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_10PointLightENS_12DistantLightENS_15ProjectionLightENS_16GoniometricLightENS_9SpotLightENS_16DiffuseAreaLightENS_20UniformInfiniteLightENS_18ImageInfiniteLightENS_24PortalImageInfiniteLightEEEE", !12, i64 0}
!124 = !{!"_ZTSN4pbrt5LightE", !123, i64 0}
!125 = !{!"_ZTSN4pbrt18SurfaceInteractionE", !119, i64 0, !80, i64 80, !80, i64 92, !91, i64 104, !91, i64 116, !120, i64 128, !7, i64 188, !122, i64 192, !124, i64 200, !80, i64 208, !80, i64 220, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244}
!126 = !{!"_ZTSN4pbrt17ShapeIntersectionE", !125, i64 0, !52, i64 248}
!127 = !{!126, !52, i64 248}
!128 = !{!"p1 _ZTSN4pbrt5LightE", !15, i64 0}
!129 = !{!"_ZTSN4pbrt3SOAINS_6Point2IfEEEE", !7, i64 0, !49, i64 8, !49, i64 16}
!130 = !{!"p1 _ZTSN4pbrt8MaterialE", !15, i64 0}
!131 = !{!"_ZTSN4pbrt3SOAINS_15MediumInterfaceEEE", !7, i64 0, !60, i64 8, !60, i64 16}
!132 = !{!"_ZTSN4pbrt3SOAINS_20MediumSampleWorkItemEEE", !7, i64 0, !61, i64 8, !66, i64 96, !49, i64 104, !68, i64 112, !69, i64 152, !69, i64 176, !69, i64 200, !66, i64 224, !128, i64 232, !71, i64 240, !72, i64 320, !56, i64 352, !56, i64 384, !56, i64 416, !129, i64 448, !73, i64 472, !66, i64 624, !130, i64 632, !72, i64 640, !56, i64 672, !56, i64 704, !72, i64 736, !72, i64 768, !66, i64 800, !66, i64 808, !49, i64 816, !131, i64 824}
!133 = !{!132, !49, i64 104}
!134 = !{!132, !66, i64 224}
!135 = !{!132, !66, i64 624}
!136 = !{!132, !66, i64 808}
!137 = !{!132, !49, i64 816}
!138 = !{!119, !118, i64 64}
!139 = !{!"_ZTSN4pbrt15MediumInterfaceE", !81, i64 0, !81, i64 8}
!140 = !{!"_ZTSN4pbrt20MediumSampleWorkItemE", !82, i64 0, !7, i64 40, !52, i64 44, !84, i64 48, !85, i64 80, !85, i64 96, !85, i64 112, !7, i64 128, !92, i64 132, !7, i64 180, !7, i64 184, !52, i64 188, !124, i64 192, !89, i64 200, !91, i64 224, !80, i64 236, !80, i64 248, !80, i64 260, !117, i64 272, !122, i64 280, !91, i64 288, !80, i64 300, !80, i64 312, !91, i64 324, !91, i64 336, !7, i64 348, !139, i64 352}
!141 = !{!140, !7, i64 40}
!142 = !{!140, !52, i64 44}
!143 = !{!140, !7, i64 128}
end_hunk_1
