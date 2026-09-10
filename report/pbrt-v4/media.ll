Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/media?download=true
inline.NumInlined: 3149
inline.NumDeleted: 1021
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumUnrolled: 40
begin_hunk_0_@"_ZZN4pbrt23WavefrontPathIntegrator23SampleMediumInteractionEiENK3$_0clENS_20MediumSampleWorkItemE":_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit
  call void @_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::RayDifferential") align 8 %43, ptr noundef nonnull align 8 dereferenceable(80) %41, <2 x float> %.sroa.05.0.copyload, float %.sroa.26.0.copyload)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %42, ptr noundef nonnull align 8 dereferenceable(40) %43, i64 28, i1 false)
  %i.cch = getelementptr inbounds nuw i8, ptr %42, i64 32
  %i.cci = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.ccj = load i64, ptr %i.cci, align 8, !tbaa !89
  store i64 %i.ccj, ptr %i.cch, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #25
  %i.cck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ccl = load ptr, ptr %i.cck, align 8, !tbaa !62
  %i.ccm = load i32, ptr %i.btz, align 8, !tbaa !165
  %i.ccn = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.cco = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.ccp = load float, ptr %i.cco, align 4, !tbaa !190
  %i.ccq = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ccr = load i32, ptr %i.ccq, align 4, !tbaa !166
  %i.ccs = icmp ne i32 %i.ccr, 0
  %i.cct = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ccu = load i32, ptr %i.cct, align 8, !tbaa !191
  %i.ccv = icmp ne i32 %i.ccu, 0
  %i.ccw = load i32, ptr %i.ar, align 8, !tbaa !163
  %i.ccx = call noundef i32 @_ZN4pbrt8RayQueue15PushIndirectRayERKNS_3RayEiRKNS_18LightSampleContextERKNS_15SampledSpectrumES9_S9_RKNS_18SampledWavelengthsEfbbi(ptr noundef nonnull align 8 dereferenceable(404) %i.ccl, ptr noundef nonnull align 8 dereferenceable(40) %42, i32 noundef %i.ccm, ptr noundef nonnull align 4 dereferenceable(48) %i.ccn, ptr noundef nonnull align 4 dereferenceable(16) %35, ptr noundef nonnull align 4 dereferenceable(16) %36, ptr noundef nonnull align 4 dereferenceable(16) %37, ptr noundef nonnull align 4 dereferenceable(32) %34, float noundef %i.ccp, i1 noundef zeroext %i.ccs, i1 noundef zeroext %i.ccv, i32 noundef %i.ccw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  br label %bb.fl

bb.fh:                                            ; preds = %select.unfold._crit_edge
  %i.ccy = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.ccz = load i64, ptr %i.ccy, align 8, !tbaa !192 ; 2 uses
  %i.cda = and i64 %i.ccz, 144115188075855871
  %.not256 = icmp eq i64 %i.cda, 0
  br i1 %.not256, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.i, i64 568
  %i.cdc = load ptr, ptr %i.cdb, align 8, !tbaa !384 ; 2 uses
  store i64 %i.ccz, ptr %44, align 8, !tbaa !192
  %i.cdd = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.cde = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0106.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 204
  %.sroa.0106.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.0106.sroa.5.0.copyload = load float, ptr %.sroa.0106.sroa.5.0..sroa_idx, align 8
  %.sroa.0106.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.sroa.0106.sroa.6.0.copyload = load float, ptr %.sroa.0106.sroa.6.0..sroa_idx, align 4
  %i.cdf = fadd float %.sroa.0106.sroa.5.0.copyload, %.sroa.0106.sroa.6.0.copyload
  %i.cdg = fmul float %i.cdf, 5.000000e-01
  %i.cdh = load <2 x float>, ptr %.sroa.0106.sroa.2.0..sroa_idx, align 4
  %i.cdi = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %i.cde, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.cdj = shufflevector <4 x float> %i.cdi, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.cdk = fadd <2 x float> %i.cdh, %i.cdj
  %i.cdl = fmul <2 x float> %i.cdk, splat (float 5.000000e-01)
  store <2 x float> %i.cdl, ptr %i.cdd, align 8, !tbaa !122
  %i.cdm = getelementptr inbounds nuw i8, ptr %44, i64 16
  store float %i.cdg, ptr %i.cdm, align 8, !tbaa !139
  %i.cdn = getelementptr inbounds nuw i8, ptr %44, i64 20
  %i.cdo = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cdn, ptr noundef nonnull align 8 dereferenceable(12) %i.cdo, i64 12, i1 false)
  %i.cdp = getelementptr inbounds nuw i8, ptr %44, i64 32
  %i.cdq = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.cdr = load i64, ptr %i.cdq, align 8
  store i64 %i.cdr, ptr %i.cdp, align 8
  %i.cds = getelementptr inbounds nuw i8, ptr %44, i64 40
  %i.cdt = load <2 x float>, ptr %i.z, align 4, !tbaa !122
  %i.cdu = fneg <2 x float> %i.cdt
  %i.cdv = load float, ptr %.sroa.230.0..sroa_idx, align 4, !tbaa !193
  %i.cdw = fneg float %i.cdv
  store <2 x float> %i.cdu, ptr %i.cds, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %44, i64 48
  store float %i.cdw, ptr %.sroa.22.0..sroa_idx, align 8
  %i.cdx = getelementptr inbounds nuw i8, ptr %44, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.cdx, ptr noundef nonnull align 8 dereferenceable(32) %34, i64 32, i1 false), !tbaa.struct !117
  %i.cdy = getelementptr inbounds nuw i8, ptr %44, i64 84
  %i.cdz = load i32, ptr %i.btz, align 8, !tbaa !165
  store i32 %i.cdz, ptr %i.cdy, align 4, !tbaa !195
  %i.cea = getelementptr inbounds nuw i8, ptr %44, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cea, ptr noundef nonnull align 16 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !360
  %i.ceb = getelementptr inbounds nuw i8, ptr %44, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ceb, ptr noundef nonnull align 16 dereferenceable(16) %36, i64 16, i1 false), !tbaa.struct !360
  %i.cec = getelementptr inbounds nuw i8, ptr %44, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cec, ptr noundef nonnull align 16 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !360
  %i.ced = getelementptr inbounds nuw i8, ptr %44, i64 136
  %i.cee = getelementptr inbounds nuw i8, ptr %1, i64 132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ced, ptr noundef nonnull align 4 dereferenceable(48) %i.cee, i64 48, i1 false)
  %i.cef = getelementptr inbounds nuw i8, ptr %44, i64 184
  %i.ceg = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ceh = load i32, ptr %i.ceg, align 4, !tbaa !166
  store i32 %i.ceh, ptr %i.cef, align 8, !tbaa !196
  %i.cei = getelementptr inbounds nuw i8, ptr %44, i64 188
  %i.cej = load i32, ptr %i.ar, align 8, !tbaa !163
  store i32 %i.cej, ptr %i.cei, align 4, !tbaa !197
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cdc, i64 424
  %i.cel = atomicrmw add ptr %i.cek, i32 1 monotonic, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.cdc, ptr %4, align 8
  %i.cem = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.cel, ptr %i.cem, align 8
  call void @_ZN4pbrt3SOAINS_20HitAreaLightWorkItemEE16GetSetIndirectoraSERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(192) %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  call void @_ZNK4pbrt8Material15GetDisplacementEv(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::FloatTexture") align 8 %45, ptr noundef nonnull align 8 dereferenceable(8) %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %2, ptr %3, align 8, !tbaa !386
  %i.cen = load i64, ptr %40, align 8, !tbaa !183 ; 2 uses
  %i.ceo = and i64 %i.cen, 144115188075855871
  %i.cep = inttoptr i64 %i.ceo to ptr
  %i.ceq = lshr i64 %i.cen, 57
  %i.cer = trunc nuw nsw i64 %i.ceq to i32
  %i.ces = add nsw i32 %i.cer, -1
  %i.cet = call noundef zeroext i1 @_ZN4pbrt6detail8DispatchIRZNKS_8Material19CanEvaluateTexturesINS_21BasicTextureEvaluatorEEEbT_EUlS5_E_bNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialEJNS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.cep, i32 noundef %i.ces)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br i1 %i.cet, label %bb.fk, label %_ZNK4pbrt21BasicTextureEvaluator11CanEvaluateESt16initializer_listINS_12FloatTextureEES1_INS_15SpectrumTextureEE.exit.thread

bb.fk:                                            ; preds = %bb.fj
  %i.ceu = load i64, ptr %45, align 8, !tbaa !186 ; 2 uses
  %i.cev = and i64 %i.ceu, 144115188075855871
  %.not257 = icmp eq i64 %i.cev, 0
  br i1 %.not257, label %_ZNK4pbrt21BasicTextureEvaluator11CanEvaluateESt16initializer_listINS_12FloatTextureEES1_INS_15SpectrumTextureEE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.fk
  %i.cew = add i64 %i.ceu, -144115188075855872    ; 2 uses
  %i.cex = icmp ult i64 %i.cew, 1729382256910270464
  br i1 %i.cex, label %switch.lookup, label %_ZNK4pbrt21BasicTextureEvaluator11CanEvaluateESt16initializer_listINS_12FloatTextureEES1_INS_15SpectrumTextureEE.exit.thread

switch.lookup:                                    ; preds = %.lr.ph.i
  %i.cey = lshr i64 %i.cew, 57
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @"switch.table._ZZN4pbrt23WavefrontPathIntegrator23SampleMediumInteractionEiENK3$_0clENS_20MediumSampleWorkItemE", i64 %i.cey
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  br label %_ZNK4pbrt21BasicTextureEvaluator11CanEvaluateESt16initializer_listINS_12FloatTextureEES1_INS_15SpectrumTextureEE.exit.thread

_ZNK4pbrt21BasicTextureEvaluator11CanEvaluateESt16initializer_listINS_12FloatTextureEES1_INS_15SpectrumTextureEE.exit.thread: ; preds = %bb.fj, %.lr.ph.i, %switch.lookup, %bb.fk
  %.sink = phi i64 [ 576, %bb.fk ], [ %switch.ext, %switch.lookup ], [ 584, %.lr.ph.i ], [ 584, %bb.fj ]
  %i.cez = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink
  %i.cfa = load ptr, ptr %i.cez, align 8, !tbaa !387
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  store ptr %i.cfa, ptr %46, align 8, !tbaa !199
  %i.cfb = getelementptr inbounds nuw i8, ptr %46, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.cfb, ptr noundef nonnull align 8 dereferenceable(368) %1, i64 28, i1 false)
  %i.cfc = getelementptr inbounds nuw i8, ptr %46, i64 40
  %i.cfd = load i64, ptr %i.k, align 8, !tbaa !89
  store i64 %i.cfd, ptr %i.cfc, align 8, !tbaa !89
  %i.cfe = getelementptr inbounds nuw i8, ptr %46, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.cfe, ptr noundef nonnull align 8 dereferenceable(152) %i.btz, i64 152, i1 false)
  %i.cff = getelementptr inbounds nuw i8, ptr %46, i64 200
  %i.cfg = load i64, ptr %i.ccy, align 8, !tbaa !192
  store i64 %i.cfg, ptr %i.cff, align 8, !tbaa !192
  %i.cfh = getelementptr inbounds nuw i8, ptr %46, i64 208
  %i.cfi = getelementptr inbounds nuw i8, ptr %1, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cfh, ptr noundef nonnull align 8 dereferenceable(80) %i.cfi, i64 80, i1 false)
  %i.cfj = getelementptr inbounds nuw i8, ptr %46, i64 288
  %i.cfk = load i64, ptr %i.bxp, align 8, !tbaa !183
  store i64 %i.cfk, ptr %i.cfj, align 8, !tbaa !183
  %i.cfl = getelementptr inbounds nuw i8, ptr %46, i64 296
  %i.cfm = getelementptr inbounds nuw i8, ptr %1, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cfl, ptr noundef nonnull align 8 dereferenceable(64) %i.cfm, i64 64, i1 false)
  %i.cfn = getelementptr inbounds nuw i8, ptr %46, i64 360
  %i.cfo = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.cfp = load <2 x i64>, ptr %i.cfo, align 8, !tbaa !89
  store <2 x i64> %i.cfp, ptr %i.cfn, align 8, !tbaa !89
  %i.cfq = getelementptr inbounds nuw i8, ptr %46, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cfq, ptr noundef nonnull align 8 dereferenceable(40) %33, i64 28, i1 false)
  %i.cfr = getelementptr inbounds nuw i8, ptr %46, i64 408
  %i.cfs = load i64, ptr %i.j, align 8, !tbaa !89
  store i64 %i.cfs, ptr %i.cfr, align 8, !tbaa !89
  %i.cft = getelementptr inbounds nuw i8, ptr %46, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cft, ptr noundef nonnull align 8 dereferenceable(32) %34, i64 32, i1 false), !tbaa.struct !117
  %i.cfu = getelementptr inbounds nuw i8, ptr %46, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cfu, ptr noundef nonnull align 16 dereferenceable(16) %35, i64 16, i1 false), !tbaa.struct !360
  %i.cfv = getelementptr inbounds nuw i8, ptr %46, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cfv, ptr noundef nonnull align 16 dereferenceable(16) %36, i64 16, i1 false), !tbaa.struct !360
  %.val = load i64, ptr %40, align 8, !tbaa !183
  call fastcc void @"_ZN4pbrt13TaggedPointerIJNS_21CoatedDiffuseMaterialENS_23CoatedConductorMaterialENS_17ConductorMaterialENS_18DielectricMaterialENS_15DiffuseMaterialENS_27DiffuseTransmissionMaterialENS_12HairMaterialENS_16MeasuredMaterialENS_18SubsurfaceMaterialENS_22ThinDielectricMaterialENS_11MixMaterialEEE8DispatchIRZZNS_23WavefrontPathIntegrator23SampleMediumInteractionEiENK3$_0clENS_20MediumSampleWorkItemEEUlT_E_EEDcOSH_"(i64 %.val, ptr noundef nonnull align 8 dereferenceable(480) %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br label %bb.fl

bb.fl:                                            ; preds = %_ZNK4pbrt21BasicTextureEvaluator11CanEvaluateESt16initializer_listINS_12FloatTextureEES1_INS_15SpectrumTextureEE.exit.thread, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  br label %bb.fm

bb.fm:                                            ; preds = %bb.ey, %bb.ez, %bb.et, %bb.eu, %bb.ev, %bb.ew, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt3SOAINS_20MediumSampleWorkItemEEixEi(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::MediumSampleWorkItem") align 8 %0, ptr noundef nonnull align 8 dereferenceable(848) %1, i32 noundef %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %0, i8 0, i64 28, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(156) %i.d, i8 0, i64 156, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !167, !noalias !400
  %i.h = sext i32 %2 to i64                       ; 71 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load float, ptr %i.i, align 4, !tbaa !122, !noalias !400
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.j, i64 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !168, !noalias !400
  %i.m = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.h
  %i.n = load float, ptr %i.m, align 4, !tbaa !122, !noalias !400
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.n, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !169, !noalias !400
  %i.q = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.h
  %i.r = load float, ptr %i.q, align 4, !tbaa !122, !noalias !400
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !170, !noalias !400
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.h
  %i.v = load float, ptr %i.u, align 4, !tbaa !122, !noalias !400
  %.sroa.0.0.vec.insert.i11.i = insertelement <2 x float> poison, float %i.v, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !171, !noalias !400
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.h
  %i.z = load float, ptr %i.y, align 4, !tbaa !122, !noalias !400
  %.sroa.0.4.vec.insert.i12.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i11.i, float %i.z, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !172, !noalias !400
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.h
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !122, !noalias !400
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202, !noalias !400
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.h
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !122, !noalias !400
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !203, !noalias !400
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.h
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !89, !noalias !400
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %0, align 8
  %.sroa.4149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.r, ptr %.sroa.4149.0..sroa_idx, align 8
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.0.4.vec.insert.i12.i, ptr %.sroa.5150.0..sroa_idx, align 4
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ad, ptr %.sroa.6151.0..sroa_idx, align 4
  %.sroa.7152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ah, ptr %.sroa.7152.0..sroa_idx, align 8
  store i64 %i.al, ptr %i.a, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !403
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.h
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !136
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !165
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !404
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.h
  %i.au = load float, ptr %i.at, align 4, !tbaa !122
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.au, ptr %i.av, align 4, !tbaa !115
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !176, !noalias !405
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !177, !noalias !405
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.ax, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.ba, align 16, !noalias !405
  %.sroa.2.0..0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.2.0.copyload.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !116, !noalias !405
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i16.i = load <2 x float>, ptr %i.bb, align 16, !noalias !405
  %.sroa.2.0..0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.2.0.copyload.i18.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i17.i, align 8, !tbaa !116, !noalias !405
  store <2 x float> %.sroa.0.0.copyload.i.i, ptr %i.b, align 8
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %.sroa.2.0.copyload.i.i, ptr %.sroa.4145.0..sroa_idx, align 8, !tbaa !116
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %.sroa.0.0.copyload.i16.i, ptr %.sroa.5146.0..sroa_idx, align 8
  %.sroa.6147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x float> %.sroa.2.0.copyload.i18.i, ptr %.sroa.6147.0..sroa_idx, align 8, !tbaa !116
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !164
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i84 = load <2 x float>, ptr %i.be, align 16
  %.sroa.2.0..0..sroa_idx.i.i85 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.2.0.copyload.i.i86 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i85, align 8, !tbaa !116
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.0.0.copyload.i.i84, ptr %i.bf, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store <2 x float> %.sroa.2.0.copyload.i.i86, ptr %.sroa.456.0..sroa_idx, align 8, !tbaa !116
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !164
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i87 = load <2 x float>, ptr %i.bi, align 16
  %.sroa.2.0..0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.2.0.copyload.i.i89 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i88, align 8, !tbaa !116
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x float> %.sroa.0.0.copyload.i.i87, ptr %i.bj, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x float> %.sroa.2.0.copyload.i.i89, ptr %.sroa.454.0..sroa_idx, align 8, !tbaa !116
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !164
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.h ; 2 uses
  %.sroa.0.0.copyload.i.i92 = load <2 x float>, ptr %i.bm, align 16
  %.sroa.2.0..0..sroa_idx.i.i93 = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.2.0.copyload.i.i94 = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i.i93, align 8, !tbaa !116
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x float> %.sroa.0.0.copyload.i.i92, ptr %i.bn, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <2 x float> %.sroa.2.0.copyload.i.i94, ptr %.sroa.452.0..sroa_idx, align 8, !tbaa !116
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !406
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.h
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !136
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.br, ptr %i.bs, align 8, !tbaa !163
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !407
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.h
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !192
  store i64 %i.bw, ptr %i.d, align 8, !tbaa !192
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !178, !noalias !408
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.h
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !122, !noalias !408
  %.sroa.0.0.vec.insert.i.i97 = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !179, !noalias !408
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.h
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !122, !noalias !408
  %.sroa.0.4.vec.insert.i.i98 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i97, float %i.ce, i64 1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !178, !noalias !408
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.h
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !122, !noalias !408
  %.sroa.0.0.vec.insert.i5.i = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !179, !noalias !408
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.h
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !122, !noalias !408
  %.sroa.0.4.vec.insert.i6.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i5.i, float %i.cm, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !178, !noalias !408
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.h
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !122, !noalias !408
  %.sroa.0.0.vec.insert.i7.i = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !179, !noalias !408
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.h
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !122, !noalias !408
  %.sroa.0.4.vec.insert.i8.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i7.i, float %i.cu, i64 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 200
  store <2 x float> %.sroa.0.4.vec.insert.i.i98, ptr %i.cv, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x float> %.sroa.0.4.vec.insert.i6.i, ptr %.sroa.4142.0..sroa_idx, align 8
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store <2 x float> %.sroa.0.4.vec.insert.i8.i, ptr %.sroa.5143.0..sroa_idx, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !180
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.h
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !122
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !181
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.h
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !122
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.dd, i64 1
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !182
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.h
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !122
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.di, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store float %i.dh, ptr %.sroa.450.0..sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !170
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.h
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !122
  %.sroa.0.0.vec.insert.i101 = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !171
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.h
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !122
  %.sroa.0.4.vec.insert.i102 = insertelement <2 x float> %.sroa.0.0.vec.insert.i101, float %i.dq, i64 1
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !172
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.h
  %i.du = load float, ptr %i.dt, align 4, !tbaa !122
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 236
  store <2 x float> %.sroa.0.4.vec.insert.i102, ptr %i.dv, align 4
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 244
  store float %i.du, ptr %.sroa.444.0..sroa_idx, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !170
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.h
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !122
  %.sroa.0.0.vec.insert.i105 = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !171
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.h
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !122
end_hunk_0
