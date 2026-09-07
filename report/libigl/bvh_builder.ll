Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder?download=true
inline.NumInlined: 1431
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_10AABBNode_tISC_Li4EE7Create2ENSH_4Set3EZNS0_18BVHNBuilderVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_b:bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %27, i64 72
  store i64 %i.kb, ptr %i.kf, align 8
  store <4 x float> %.sroa.0184.1.lcssa, ptr %28, align 16
  %i.kg = getelementptr inbounds nuw i8, ptr %28, i64 16
  store <4 x float> %.sroa.8187.1.lcssa, ptr %i.kg, align 16
  store <4 x float> %.sroa.14.1.lcssa, ptr %i.dz, align 16
  %i.kh = getelementptr inbounds nuw i8, ptr %28, i64 48
  store <4 x float> %.sroa.20.1.lcssa, ptr %i.kh, align 16
  %i.ki = getelementptr inbounds nuw i8, ptr %28, i64 64
  store i64 %i.kb, ptr %i.ki, align 16
  %i.kj = getelementptr inbounds nuw i8, ptr %28, i64 72
  store i64 %i.cs, ptr %i.kj, align 8
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76

bb.ad:                                            ; preds = %bb.u
  br i1 %.not275, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 16 dereferenceable(80) %i.cd)
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 16 dereferenceable(80) %i.cd, ptr noundef nonnull align 16 dereferenceable(80) %27, ptr noundef nonnull align 16 dereferenceable(80) %28)
  %.pre505.a = load <4 x float>, ptr %27, align 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %27, i64 16
  %.pre506.a = load <4 x float>, ptr %.phi.trans.insert, align 16
  %.pre507.a = load <4 x float>, ptr %i.dy, align 16
  %.phi.trans.insert508 = getelementptr inbounds nuw i8, ptr %27, i64 48
  %.pre509.a = load <4 x float>, ptr %.phi.trans.insert508, align 16
  %.phi.trans.insert510 = getelementptr inbounds nuw i8, ptr %27, i64 64
  %.pre511.a = load i64, ptr %.phi.trans.insert510, align 16
  %.phi.trans.insert512 = getelementptr inbounds nuw i8, ptr %27, i64 72
  %.pre513.a = load i64, ptr %.phi.trans.insert512, align 8
  %.pre514.a = load <4 x float>, ptr %28, align 16
  %.phi.trans.insert515.a = getelementptr inbounds nuw i8, ptr %28, i64 16
  %.pre516.a = load <4 x float>, ptr %.phi.trans.insert515.a, align 16
  %.pre517 = load <4 x float>, ptr %i.dz, align 16
  %.phi.trans.insert518 = getelementptr inbounds nuw i8, ptr %28, i64 48
  %.pre519 = load <4 x float>, ptr %.phi.trans.insert518, align 16
  %.phi.trans.insert520 = getelementptr inbounds nuw i8, ptr %28, i64 64
  %.pre521 = load i64, ptr %.phi.trans.insert520, align 16
  %.phi.trans.insert522 = getelementptr inbounds nuw i8, ptr %28, i64 72
  %.pre523 = load i64, ptr %.phi.trans.insert522, align 8
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  store <4 x float> splat (float +inf), ptr %16, align 16
  %i.kk = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.kk, align 16
  %i.kl = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.kl, align 16
  %i.km = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.km, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #5
  store <4 x float> splat (float +inf), ptr %17, align 16
  %i.kn = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.kn, align 16
  %i.ko = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.ko, align 16
  %i.kp = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.kp, align 16
  %i.kq = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.kr = load <1 x i32>, ptr %i.kq, align 8
  %i.ks = shl nuw i32 1, %i.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #5
  %i.kt = shufflevector <1 x i32> %i.kr, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.kt, ptr %18, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #5
  %i.ku = zext i32 %i.ks to i64
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.ku
  %i.kw = load <4 x float>, ptr %i.kv, align 16
  store <4 x float> %i.kw, ptr %19, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #5
  store ptr %26, ptr %20, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %18, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr %19, ptr %i.ky, align 8
  %i.kz = load ptr, ptr %i.ea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #5
  %i.la = call noundef i64 @_ZN6embree21parallel_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb1EEEvRKNS8_8BinSplitILm32EEERKNS8_13PrimInfoRangeERSG_SJ_EUlRKS1_E_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlRS6_SL_E0_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlSN_RKS6_E_EEmPT_mmRKT1_RT0_SY_RKT2_RKT3_RKT4_m(ptr noundef %i.kz, i64 noundef %i.ct, i64 noundef %i.cs, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 16 dereferenceable(64) %16, ptr noundef nonnull align 16 dereferenceable(64) %17, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 1 dereferenceable(1) %23, i64 noundef 128) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #5
  %i.lb = load <4 x float>, ptr %16, align 16     ; 2 uses
  store <4 x float> %i.lb, ptr %27, align 16
  %i.lc = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ld = load <4 x float>, ptr %i.kk, align 16   ; 2 uses
  store <4 x float> %i.ld, ptr %i.lc, align 16
  %i.le = load <4 x float>, ptr %i.kl, align 16   ; 2 uses
  store <4 x float> %i.le, ptr %i.dy, align 16
  %i.lf = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.lg = load <4 x float>, ptr %i.km, align 16   ; 2 uses
  store <4 x float> %i.lg, ptr %i.lf, align 16
  %i.lh = getelementptr inbounds nuw i8, ptr %27, i64 64
  store i64 %i.ct, ptr %i.lh, align 16
  %i.li = getelementptr inbounds nuw i8, ptr %27, i64 72
  store i64 %i.la, ptr %i.li, align 8
  %i.lj = load <4 x float>, ptr %17, align 16     ; 2 uses
  store <4 x float> %i.lj, ptr %28, align 16
  %i.lk = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ll = load <4 x float>, ptr %i.kn, align 16   ; 2 uses
  store <4 x float> %i.ll, ptr %i.lk, align 16
  %i.lm = load <4 x float>, ptr %i.ko, align 16   ; 2 uses
  store <4 x float> %i.lm, ptr %i.dz, align 16
  %i.ln = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.lo = load <4 x float>, ptr %i.kp, align 16   ; 2 uses
  store <4 x float> %i.lo, ptr %i.ln, align 16
  %i.lp = getelementptr inbounds nuw i8, ptr %28, i64 64
  store i64 %i.la, ptr %i.lp, align 16
  %i.lq = getelementptr inbounds nuw i8, ptr %28, i64 72
  store i64 %i.cs, ptr %i.lq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76

_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76: ; preds = %bb.af, %bb.ae, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit
  %i.lr = phi i64 [ %i.cs, %bb.af ], [ %.pre523, %bb.ae ], [ %i.cs, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %i.el, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.ls = phi i64 [ %i.la, %bb.af ], [ %.pre521, %bb.ae ], [ %i.kb, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %i.ep, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lt = phi <4 x float> [ %i.lo, %bb.af ], [ %.pre519, %bb.ae ], [ %.sroa.20.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %.sroa.14.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lu = phi <4 x float> [ %i.lm, %bb.af ], [ %.pre517, %bb.ae ], [ %.sroa.14.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %.sroa.10.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lv = phi <4 x float> [ %i.ll, %bb.af ], [ %.pre516.a, %bb.ae ], [ %.sroa.8187.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %.sroa.6.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lw = phi <4 x float> [ %i.lj, %bb.af ], [ %.pre514.a, %bb.ae ], [ %.sroa.0184.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %.sroa.0.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lx = phi i64 [ %i.la, %bb.af ], [ %.pre513.a, %bb.ae ], [ %i.kb, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %i.ep, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.ly = phi i64 [ %i.ct, %bb.af ], [ %.pre511.a, %bb.ae ], [ %i.ct, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %i.em, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lz = phi <4 x float> [ %i.lg, %bb.af ], [ %.pre509.a, %bb.ae ], [ %.sroa.20203.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %.sroa.1434.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.ma = phi <4 x float> [ %i.le, %bb.af ], [ %.pre507.a, %bb.ae ], [ %.sroa.14200.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %.sroa.1032.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.mb = phi <4 x float> [ %i.ld, %bb.af ], [ %.pre506.a, %bb.ae ], [ %.sroa.8197.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %.sroa.630.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.mc = phi <4 x float> [ %i.lb, %bb.af ], [ %.pre505.a, %bb.ae ], [ %.sroa.0194.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit94 ], [ %.sroa.028.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #5
  %i.md = load i64, ptr %1, align 16
  %i.me = add i64 %i.md, 1                        ; 2 uses
  store i64 %i.me, ptr %30, align 16
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i8 0, ptr %.sroa.4158.0..sroa_idx, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %30, i64 16
  store <4 x float> %i.mc, ptr %i.mf, align 16
  %i.mg = getelementptr inbounds nuw i8, ptr %30, i64 32
  store <4 x float> %i.mb, ptr %i.mg, align 16
  %i.mh = getelementptr inbounds nuw i8, ptr %30, i64 48
  store <4 x float> %i.ma, ptr %i.mh, align 16
  %i.mi = getelementptr inbounds nuw i8, ptr %30, i64 64
  store <4 x float> %i.lz, ptr %i.mi, align 16
  %i.mj = getelementptr inbounds nuw i8, ptr %30, i64 80
  store i64 %i.ly, ptr %i.mj, align 16
  %.sroa.15165.80..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 88
  store i64 %i.lx, ptr %.sroa.15165.80..sroa_idx, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %30, i64 96
  store i64 %i.me, ptr %i.mk, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 104
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %30, i64 112
  store <4 x float> %i.lw, ptr %i.ml, align 16
  %i.mm = getelementptr inbounds nuw i8, ptr %30, i64 128
  store <4 x float> %i.lv, ptr %i.mm, align 16
  %i.mn = getelementptr inbounds nuw i8, ptr %30, i64 144
  store <4 x float> %i.lu, ptr %i.mn, align 16
  %i.mo = getelementptr inbounds nuw i8, ptr %30, i64 160
  store <4 x float> %i.lt, ptr %i.mo, align 16
  %i.mp = getelementptr inbounds nuw i8, ptr %30, i64 176
  store i64 %i.ls, ptr %i.mp, align 16
  %.sroa.15.80..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 184
  store i64 %i.lr, ptr %.sroa.15.80..sroa_idx, align 8
  %i.mq = load i64, ptr %0, align 8
  %i.mr = icmp ugt i64 %i.mq, 2
  br i1 %i.mr, label %.preheader291.lr.ph, label %.thread

.preheader291.lr.ph:                              ; preds = %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76
  %i.ms = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 6 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %31, i64 32 ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %31, i64 64 ; 5 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %31, i64 80 ; 5 uses
  %i.my = getelementptr inbounds nuw i8, ptr %31, i64 88 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %32, i64 64 ; 5 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %32, i64 80 ; 5 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %32, i64 88 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %33, i64 4
  %i.nh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 2 uses
  br label %.lr.ph362

.lr.ph362:                                        ; preds = %bb.aw, %.preheader291.lr.ph
  %.065408 = phi i64 [ 2, %.preheader291.lr.ph ], [ %i.vs, %bb.aw ] ; 4 uses
  %i.ns = load i64, ptr %i.dg, align 8
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.aj
  %i.nt = icmp eq i64 %.1, -1
  br i1 %i.nt, label %.thread, label %bb.ak

bb.ag:                                            ; preds = %.lr.ph362, %bb.aj
  %.061361 = phi i64 [ 0, %.lr.ph362 ], [ %i.oj, %bb.aj ] ; 3 uses
  %.062360 = phi i64 [ -1, %.lr.ph362 ], [ %.1, %bb.aj ] ; 2 uses
  %.063359 = phi float [ -inf, %.lr.ph362 ], [ %.164, %bb.aj ] ; 3 uses
  %i.nu = getelementptr inbounds nuw [96 x i8], ptr %30, i64 %.061361 ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 80
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 88
  %i.nx = load i64, ptr %i.nw, align 8
  %i.ny = load i64, ptr %i.nv, align 16
  %i.nz = sub i64 %i.nx, %i.ny
  %.not75 = icmp ugt i64 %i.nz, %i.ns
  br i1 %.not75, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.oc = load <4 x float>, ptr %i.ob, align 16, !noalias !174
  %i.od = load <4 x float>, ptr %i.oa, align 16, !noalias !174
  %i.oe = fsub <4 x float> %i.oc, %i.od           ; 3 uses
  %.sroa.0170.0.vec.extract = extractelement <4 x float> %i.oe, i64 0
  %.sroa.0170.4.vec.extract = extractelement <4 x float> %i.oe, i64 1 ; 2 uses
  %.sroa.0170.8.vec.extract = extractelement <4 x float> %i.oe, i64 2 ; 2 uses
  %i.of = fadd float %.sroa.0170.4.vec.extract, %.sroa.0170.8.vec.extract
  %i.og = fmul float %.sroa.0170.4.vec.extract, %.sroa.0170.8.vec.extract
  %i.oh = call noundef float @llvm.fmuladd.f32(float %.sroa.0170.0.vec.extract, float %i.of, float %i.og) ; 2 uses
  %i.oi = fcmp ogt float %i.oh, %.063359
  br i1 %i.oi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %.164 = phi float [ %.063359, %bb.ag ], [ %i.oh, %bb.ai ], [ %.063359, %bb.ah ]
  %.1 = phi i64 [ %.062360, %bb.ag ], [ %.061361, %bb.ai ], [ %.062360, %bb.ah ] ; 3 uses
  %i.oj = add nuw i64 %.061361, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.oj, %.065408
  br i1 %exitcond.not, label %._crit_edge, label %bb.ag, !llvm.loop !98

bb.ak:                                            ; preds = %._crit_edge
  %i.ok = getelementptr inbounds [96 x i8], ptr %30, i64 %.1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #5
  %i.ol = load i64, ptr %1, align 16
  %i.om = add i64 %i.ol, 1                        ; 2 uses
  store i64 %i.om, ptr %31, align 16
  store i8 0, ptr %i.ms, align 8
  store <4 x float> splat (float +inf), ptr %i.mt, align 16
  store <4 x float> splat (float -inf), ptr %i.mu, align 16
  store <4 x float> splat (float +inf), ptr %i.mv, align 16
  store <4 x float> splat (float -inf), ptr %i.mw, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.mx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #5
  store i64 %i.om, ptr %32, align 16
  store i8 0, ptr %i.mz, align 8
  store <4 x float> splat (float +inf), ptr %i.na, align 16
  store <4 x float> splat (float -inf), ptr %i.nb, align 16
  store <4 x float> splat (float +inf), ptr %i.nc, align 16
  store <4 x float> splat (float -inf), ptr %i.nd, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ne, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #5
  %i.on = load ptr, ptr %i.cb, align 8, !nonnull !21, !align !22
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 16 ; 4 uses
  %i.op = load i64, ptr %i.ce, align 8
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE4findERKNS0_13PrimInfoRangeEm(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %33, ptr noundef nonnull align 8 dereferenceable(8) %i.on, ptr noundef nonnull align 16 dereferenceable(80) %i.oo, i64 noundef %i.op)
  %i.oq = load ptr, ptr %i.cb, align 8, !nonnull !21, !align !22 ; 6 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.ok, i64 80 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 88 ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8            ; 9 uses
  %i.ou = load i64, ptr %i.or, align 16           ; 7 uses
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = icmp ult i64 %i.ov, 3072
  %i.ox = load i32, ptr %i.ng, align 4            ; 3 uses
  %.not279 = icmp eq i32 %i.ox, -1                ; 2 uses
  br i1 %i.ow, label %bb.al, label %bb.at, !prof !27

bb.al:                                            ; preds = %bb.ak
  br i1 %.not279, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i109 = icmp samesign eq i64 %i.ou, %i.ot
  br i1 %.not.i.i.i109, label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit113, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.oy = load ptr, ptr %i.oq, align 8            ; 2 uses
  %.idx.i110 = shl nuw nsw i64 %i.ot, 5           ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.idx.i110 ; 2 uses
  %.idx3.i111 = shl nuw nsw i64 %i.ou, 5          ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.idx3.i111 ; 2 uses
  %gepdiff.i112 = sub nsw i64 %.idx.i110, %.idx3.i111
  %i.pb = ashr exact i64 %gepdiff.i112, 5
  %i.pc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.pb, i1 true)
  %i.pd = shl nuw nsw i64 %i.pc, 1
  %i.pe = xor i64 %i.pd, 126
  call void @_ZSt16__introsort_loopIPN6embree7PrimRefElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.pa, ptr noundef %i.oz, i64 noundef %i.pe)
  call void @_ZSt22__final_insertion_sortIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %i.pa, ptr noundef %i.oz)
  %.pre524 = load i64, ptr %i.or, align 16
  %.pre525 = load i64, ptr %i.os, align 8
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit113

_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit113: ; preds = %bb.am, %bb.an
  %i.pf = phi i64 [ %i.ot, %bb.am ], [ %.pre525, %bb.an ] ; 6 uses
  %i.pg = phi i64 [ %i.ot, %bb.am ], [ %.pre524, %bb.an ] ; 8 uses
  %i.ph = load ptr, ptr %i.oq, align 8            ; 6 uses
  %i.pi = add i64 %i.pf, %i.pg
  %i.pj = lshr i64 %i.pi, 1                       ; 12 uses
  %i.pk = icmp ult i64 %i.pg, %i.pj
  br i1 %i.pk, label %.lr.ph.i.i130.preheader, label %._crit_edge.i.i114

.lr.ph.i.i130.preheader:                          ; preds = %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit113
  %i.pl = sub nuw i64 %i.pj, %i.pg
  %.neg872 = add i64 %i.pg, 1
  %xtraiter859 = and i64 %i.pl, 1
  %lcmp.mod860.not = icmp eq i64 %xtraiter859, 0
  br i1 %lcmp.mod860.not, label %.lr.ph.i.i130.prol.loopexit, label %.lr.ph.i.i130.prol

.lr.ph.i.i130.prol:                               ; preds = %.lr.ph.i.i130.preheader
  %i.pm = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %i.pg ; 2 uses
  %i.pn = load <4 x float>, ptr %i.pm, align 16, !noalias !175 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.pp = load <4 x float>, ptr %i.po, align 16, !noalias !176 ; 2 uses
  %i.pq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.pn) ; 2 uses
  %i.pr = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.pp) ; 2 uses
  %i.ps = fadd <4 x float> %i.pn, %i.pp           ; 2 uses
  %i.pt = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ps) ; 2 uses
  %i.pu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ps) ; 2 uses
  %i.pv = add nuw nsw i64 %i.pg, 1
  br label %.lr.ph.i.i130.prol.loopexit

.lr.ph.i.i130.prol.loopexit:                      ; preds = %.lr.ph.i.i130.prol, %.lr.ph.i.i130.preheader
  %.lcssa812.unr = phi <4 x float> [ poison, %.lr.ph.i.i130.preheader ], [ %i.pq, %.lr.ph.i.i130.prol ]
  %.lcssa811.unr = phi <4 x float> [ poison, %.lr.ph.i.i130.preheader ], [ %i.pr, %.lr.ph.i.i130.prol ]
  %.lcssa810.unr = phi <4 x float> [ poison, %.lr.ph.i.i130.preheader ], [ %i.pt, %.lr.ph.i.i130.prol ]
  %.lcssa809.unr = phi <4 x float> [ poison, %.lr.ph.i.i130.preheader ], [ %i.pu, %.lr.ph.i.i130.prol ]
  %.02166.i.i131.unr = phi i64 [ %i.pg, %.lr.ph.i.i130.preheader ], [ %i.pv, %.lr.ph.i.i130.prol ]
  %.sroa.028.065.i.i132.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i130.preheader ], [ %i.pq, %.lr.ph.i.i130.prol ]
  %.sroa.630.064.i.i133.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i130.preheader ], [ %i.pr, %.lr.ph.i.i130.prol ]
  %.sroa.1032.063.i.i134.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i130.preheader ], [ %i.pt, %.lr.ph.i.i130.prol ]
  %.sroa.1434.062.i.i135.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i130.preheader ], [ %i.pu, %.lr.ph.i.i130.prol ]
  %i.pw = icmp eq i64 %i.pj, %.neg872
  br i1 %i.pw, label %._crit_edge.i.i114, label %.lr.ph.i.i130

._crit_edge.i.i114:                               ; preds = %.lr.ph.i.i130.prol.loopexit, %.lr.ph.i.i130, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit113
  %.sroa.1434.0.lcssa.i.i115 = phi <4 x float> [ splat (float -inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit113 ], [ %.lcssa809.unr, %.lr.ph.i.i130.prol.loopexit ], [ %i.rc, %.lr.ph.i.i130 ] ; 2 uses
  %.sroa.1032.0.lcssa.i.i116 = phi <4 x float> [ splat (float +inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit113 ], [ %.lcssa810.unr, %.lr.ph.i.i130.prol.loopexit ], [ %i.rb, %.lr.ph.i.i130 ] ; 2 uses
  %.sroa.630.0.lcssa.i.i117 = phi <4 x float> [ splat (float -inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit113 ], [ %.lcssa811.unr, %.lr.ph.i.i130.prol.loopexit ], [ %i.qz, %.lr.ph.i.i130 ] ; 2 uses
  %.sroa.028.0.lcssa.i.i118 = phi <4 x float> [ splat (float +inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit113 ], [ %.lcssa812.unr, %.lr.ph.i.i130.prol.loopexit ], [ %i.qy, %.lr.ph.i.i130 ] ; 2 uses
  store <4 x float> %.sroa.028.0.lcssa.i.i118, ptr %i.mt, align 16
  store <4 x float> %.sroa.630.0.lcssa.i.i117, ptr %i.mu, align 16
  store <4 x float> %.sroa.1032.0.lcssa.i.i116, ptr %i.mv, align 16
  store <4 x float> %.sroa.1434.0.lcssa.i.i115, ptr %i.mw, align 16
  store i64 %i.pg, ptr %i.mx, align 16
  store i64 %i.pj, ptr %i.my, align 8
  %i.px = icmp ult i64 %i.pj, %i.pf
  br i1 %i.px, label %.lr.ph76.i.i123.preheader, label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit137

.lr.ph76.i.i123.preheader:                        ; preds = %._crit_edge.i.i114
  %i.py = sub nuw i64 %i.pf, %i.pj
  %.neg873 = add nuw i64 %i.pj, 1
  %xtraiter861 = and i64 %i.py, 1
  %lcmp.mod862.not = icmp eq i64 %xtraiter861, 0
  br i1 %lcmp.mod862.not, label %.lr.ph76.i.i123.prol.loopexit, label %.lr.ph76.i.i123.prol

.lr.ph76.i.i123.prol:                             ; preds = %.lr.ph76.i.i123.preheader
  %i.pz = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %i.pj ; 2 uses
  %i.qa = load <4 x float>, ptr %i.pz, align 16, !noalias !177 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qc = load <4 x float>, ptr %i.qb, align 16, !noalias !178 ; 2 uses
  %i.qd = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.qa) ; 2 uses
  %i.qe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.qc) ; 2 uses
  %i.qf = fadd <4 x float> %i.qa, %i.qc           ; 2 uses
  %i.qg = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.qf) ; 2 uses
  %i.qh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.qf) ; 2 uses
  %i.qi = add nuw i64 %i.pj, 1
  br label %.lr.ph76.i.i123.prol.loopexit

.lr.ph76.i.i123.prol.loopexit:                    ; preds = %.lr.ph76.i.i123.prol, %.lr.ph76.i.i123.preheader
  %.lcssa816.unr = phi <4 x float> [ poison, %.lr.ph76.i.i123.preheader ], [ %i.qd, %.lr.ph76.i.i123.prol ]
  %.lcssa815.unr = phi <4 x float> [ poison, %.lr.ph76.i.i123.preheader ], [ %i.qe, %.lr.ph76.i.i123.prol ]
  %.lcssa814.unr = phi <4 x float> [ poison, %.lr.ph76.i.i123.preheader ], [ %i.qg, %.lr.ph76.i.i123.prol ]
  %.lcssa813.unr = phi <4 x float> [ poison, %.lr.ph76.i.i123.preheader ], [ %i.qh, %.lr.ph76.i.i123.prol ]
  %.074.i.i124.unr = phi i64 [ %i.pj, %.lr.ph76.i.i123.preheader ], [ %i.qi, %.lr.ph76.i.i123.prol ]
  %.sroa.0.073.i.i125.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i123.preheader ], [ %i.qd, %.lr.ph76.i.i123.prol ]
  %.sroa.6.072.i.i126.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i123.preheader ], [ %i.qe, %.lr.ph76.i.i123.prol ]
  %.sroa.10.071.i.i127.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i123.preheader ], [ %i.qg, %.lr.ph76.i.i123.prol ]
  %.sroa.14.070.i.i128.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i123.preheader ], [ %i.qh, %.lr.ph76.i.i123.prol ]
  %i.qj = icmp eq i64 %i.pf, %.neg873
  br i1 %i.qj, label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit137, label %.lr.ph76.i.i123

.lr.ph.i.i130:                                    ; preds = %.lr.ph.i.i130.prol.loopexit, %.lr.ph.i.i130
  %.02166.i.i131 = phi i64 [ %i.rd, %.lr.ph.i.i130 ], [ %.02166.i.i131.unr, %.lr.ph.i.i130.prol.loopexit ] ; 3 uses
  %.sroa.028.065.i.i132 = phi <4 x float> [ %i.qy, %.lr.ph.i.i130 ], [ %.sroa.028.065.i.i132.unr, %.lr.ph.i.i130.prol.loopexit ]
  %.sroa.630.064.i.i133 = phi <4 x float> [ %i.qz, %.lr.ph.i.i130 ], [ %.sroa.630.064.i.i133.unr, %.lr.ph.i.i130.prol.loopexit ]
  %.sroa.1032.063.i.i134 = phi <4 x float> [ %i.rb, %.lr.ph.i.i130 ], [ %.sroa.1032.063.i.i134.unr, %.lr.ph.i.i130.prol.loopexit ]
  %.sroa.1434.062.i.i135 = phi <4 x float> [ %i.rc, %.lr.ph.i.i130 ], [ %.sroa.1434.062.i.i135.unr, %.lr.ph.i.i130.prol.loopexit ]
  %i.qk = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %.02166.i.i131 ; 2 uses
  %i.ql = load <4 x float>, ptr %i.qk, align 16, !noalias !175 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qn = load <4 x float>, ptr %i.qm, align 16, !noalias !176 ; 2 uses
  %i.qo = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.028.065.i.i132, <4 x float> %i.ql)
  %i.qp = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.630.064.i.i133, <4 x float> %i.qn)
  %i.qq = fadd <4 x float> %i.ql, %i.qn           ; 2 uses
  %i.qr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1032.063.i.i134, <4 x float> %i.qq)
  %i.qs = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1434.062.i.i135, <4 x float> %i.qq)
  %i.qt = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %.02166.i.i131 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 32
  %i.qv = load <4 x float>, ptr %i.qu, align 16, !noalias !175 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 48
  %i.qx = load <4 x float>, ptr %i.qw, align 16, !noalias !176 ; 2 uses
  %i.qy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qo, <4 x float> %i.qv) ; 2 uses
  %i.qz = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qp, <4 x float> %i.qx) ; 2 uses
  %i.ra = fadd <4 x float> %i.qv, %i.qx           ; 2 uses
  %i.rb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qr, <4 x float> %i.ra) ; 2 uses
  %i.rc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qs, <4 x float> %i.ra) ; 2 uses
  %i.rd = add nuw nsw i64 %.02166.i.i131, 2       ; 2 uses
  %exitcond.not.i.i136.1 = icmp eq i64 %i.rd, %i.pj
  br i1 %exitcond.not.i.i136.1, label %._crit_edge.i.i114, label %.lr.ph.i.i130, !llvm.loop !0

.lr.ph76.i.i123:                                  ; preds = %.lr.ph76.i.i123.prol.loopexit, %.lr.ph76.i.i123
  %.074.i.i124 = phi i64 [ %i.rx, %.lr.ph76.i.i123 ], [ %.074.i.i124.unr, %.lr.ph76.i.i123.prol.loopexit ] ; 3 uses
  %.sroa.0.073.i.i125 = phi <4 x float> [ %i.rs, %.lr.ph76.i.i123 ], [ %.sroa.0.073.i.i125.unr, %.lr.ph76.i.i123.prol.loopexit ]
  %.sroa.6.072.i.i126 = phi <4 x float> [ %i.rt, %.lr.ph76.i.i123 ], [ %.sroa.6.072.i.i126.unr, %.lr.ph76.i.i123.prol.loopexit ]
  %.sroa.10.071.i.i127 = phi <4 x float> [ %i.rv, %.lr.ph76.i.i123 ], [ %.sroa.10.071.i.i127.unr, %.lr.ph76.i.i123.prol.loopexit ]
  %.sroa.14.070.i.i128 = phi <4 x float> [ %i.rw, %.lr.ph76.i.i123 ], [ %.sroa.14.070.i.i128.unr, %.lr.ph76.i.i123.prol.loopexit ]
  %i.re = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %.074.i.i124 ; 2 uses
  %i.rf = load <4 x float>, ptr %i.re, align 16, !noalias !177 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rh = load <4 x float>, ptr %i.rg, align 16, !noalias !178 ; 2 uses
  %i.ri = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.073.i.i125, <4 x float> %i.rf)
  %i.rj = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.072.i.i126, <4 x float> %i.rh)
  %i.rk = fadd <4 x float> %i.rf, %i.rh           ; 2 uses
  %i.rl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.071.i.i127, <4 x float> %i.rk)
  %i.rm = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.070.i.i128, <4 x float> %i.rk)
  %i.rn = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %.074.i.i124 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.rp = load <4 x float>, ptr %i.ro, align 16, !noalias !177 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 48
end_hunk_0
begin_hunk_1_@_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_10AABBNode_tISC_Li4EE7Create2ENSH_4Set3EZNS0_18BVHNBuilderVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_b:bb.a
  %.sroa.14234.1.lcssa = phi <4 x float> [ %.sroa.14234.0, %bb.ap ], [ %i.sz, %bb.ar ], [ %.sroa.14234.1367, %bb.aq ] ; 3 uses
  %.sroa.20237.1.lcssa = phi <4 x float> [ %.sroa.20237.0, %bb.ap ], [ %i.ta, %bb.ar ], [ %.sroa.20237.1368, %bb.aq ] ; 3 uses
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.ap ], [ %i.tb, %bb.ar ], [ %.134.i369, %bb.aq ] ; 7 uses
  %.not35.i383 = icmp ugt ptr %.134.i.lcssa, %.0.i84
  br i1 %.not35.i383, label %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit, label %.lr.ph389, !prof !28

.lr.ph389:                                        ; preds = %.critedge.i.preheader
  %i.sv = load <4 x float>, ptr %i.nq, align 16, !noalias !183
  %i.sw = load <4 x float>, ptr %i.nr, align 16, !noalias !184
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.sx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0228.1365, <4 x float> %i.sk) ; 2 uses
  %i.sy = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8231.1366, <4 x float> %i.sm) ; 2 uses
  %i.sz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14234.1367, <4 x float> %i.sn) ; 2 uses
  %i.ta = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20237.1368, <4 x float> %i.sn) ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.134.i369, i64 32 ; 3 uses
  %.not.i = icmp ugt ptr %i.tb, %.0.i84
  br i1 %.not.i, label %.critedge.i.preheader, label %bb.aq, !prof !30, !llvm.loop !2

bb.as:                                            ; preds = %.lr.ph389, %.critedge.i
  %.1.i388 = phi ptr [ %.0.i84, %.lr.ph389 ], [ %i.tr, %.critedge.i ] ; 6 uses
  %.sroa.20225.1387 = phi <4 x float> [ %.sroa.20225.0, %.lr.ph389 ], [ %i.tq, %.critedge.i ] ; 2 uses
  %.sroa.14222.1386 = phi <4 x float> [ %.sroa.14222.0, %.lr.ph389 ], [ %i.tp, %.critedge.i ] ; 2 uses
  %.sroa.8219.1385 = phi <4 x float> [ %.sroa.8219.0, %.lr.ph389 ], [ %i.to, %.critedge.i ] ; 2 uses
  %.sroa.0216.1384 = phi <4 x float> [ %.sroa.0216.0, %.lr.ph389 ], [ %i.tn, %.critedge.i ] ; 2 uses
  %i.tc = load <4 x float>, ptr %.1.i388, align 16, !noalias !185 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.1.i388, i64 16
  %i.te = load <4 x float>, ptr %i.td, align 16, !noalias !186 ; 3 uses
  %i.tf = fadd <4 x float> %i.tc, %i.te           ; 5 uses
  %i.tg = fsub <4 x float> %i.tf, %i.sv
  %i.th = fmul <4 x float> %i.tg, %i.sw
  %i.ti = fadd <4 x float> %i.th, splat (float -5.000000e-01)
  %i.tj = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ti)
  %i.tk = icmp sgt <4 x i32> %i.sa, %i.tj
  %i.tl = select <4 x i1> %i.tk, <4 x i1> %i.sh, <4 x i1> zeroinitializer
  %i.tm = bitcast <4 x i1> %i.tl to i4
  %.not281 = icmp eq i4 %i.tm, 0
  br i1 %.not281, label %.critedge.i, label %.critedge37.i, !prof !27

.critedge.i:                                      ; preds = %bb.as
  %i.tn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0216.1384, <4 x float> %i.tc) ; 2 uses
  %i.to = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8219.1385, <4 x float> %i.te) ; 2 uses
  %i.tp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14222.1386, <4 x float> %i.tf) ; 2 uses
  %i.tq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20225.1387, <4 x float> %i.tf) ; 2 uses
  %i.tr = getelementptr inbounds i8, ptr %.1.i388, i64 -32 ; 2 uses
  %.not35.i = icmp ugt ptr %.134.i.lcssa, %i.tr
  br i1 %.not35.i, label %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit, label %bb.as, !prof !30, !llvm.loop !3

.critedge37.i:                                    ; preds = %bb.as
  %i.ts = getelementptr inbounds nuw i8, ptr %.1.i388, i64 16 ; 2 uses
  %i.tt = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0228.1.lcssa, <4 x float> %i.tc)
  %i.tu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8231.1.lcssa, <4 x float> %i.te)
  %i.tv = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14234.1.lcssa, <4 x float> %i.tf)
  %i.tw = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20237.1.lcssa, <4 x float> %i.tf)
  %i.tx = load <4 x float>, ptr %.134.i.lcssa, align 16, !noalias !187 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 16 ; 2 uses
  %i.tz = load <4 x float>, ptr %i.ty, align 16, !noalias !188 ; 3 uses
  %i.ua = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0216.1384, <4 x float> %i.tx)
  %i.ub = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8219.1385, <4 x float> %i.tz)
  %i.uc = fadd <4 x float> %i.tx, %i.tz           ; 2 uses
  %i.ud = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14222.1386, <4 x float> %i.uc)
  %i.ue = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20225.1387, <4 x float> %i.uc)
  store <4 x float> %i.tc, ptr %.134.i.lcssa, align 16
  %i.uf = load <4 x float>, ptr %i.ts, align 16
  store <4 x float> %i.uf, ptr %i.ty, align 16
  store <4 x float> %i.tx, ptr %.1.i388, align 16
  store <4 x float> %i.tz, ptr %i.ts, align 16
  %i.ug = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 32
  br label %bb.ap, !llvm.loop !4

_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit: ; preds = %.critedge.i.preheader, %.critedge.i
  %.sroa.0216.1.lcssa = phi <4 x float> [ %i.tn, %.critedge.i ], [ %.sroa.0216.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.8219.1.lcssa = phi <4 x float> [ %i.to, %.critedge.i ], [ %.sroa.8219.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.14222.1.lcssa = phi <4 x float> [ %i.tp, %.critedge.i ], [ %.sroa.14222.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.20225.1.lcssa = phi <4 x float> [ %i.tq, %.critedge.i ], [ %.sroa.20225.0, %.critedge.i.preheader ] ; 2 uses
  %i.uh = ptrtoint ptr %.134.i.lcssa to i64
  %i.ui = ptrtoint ptr %i.se to i64
  %i.uj = sub i64 %i.uh, %i.ui
  %i.uk = ashr exact i64 %i.uj, 5                 ; 2 uses
  store <4 x float> %.sroa.0228.1.lcssa, ptr %i.mt, align 16
  store <4 x float> %.sroa.8231.1.lcssa, ptr %i.mu, align 16
  store <4 x float> %.sroa.14234.1.lcssa, ptr %i.mv, align 16
  store <4 x float> %.sroa.20237.1.lcssa, ptr %i.mw, align 16
  store i64 %i.ou, ptr %i.mx, align 16
  store i64 %i.uk, ptr %i.my, align 8
  store <4 x float> %.sroa.0216.1.lcssa, ptr %i.na, align 16
  store <4 x float> %.sroa.8219.1.lcssa, ptr %i.nb, align 16
  store <4 x float> %.sroa.14222.1.lcssa, ptr %i.nc, align 16
  store <4 x float> %.sroa.20225.1.lcssa, ptr %i.nd, align 16
  store i64 %i.uk, ptr %i.ne, align 16
  store i64 %i.ot, ptr %i.nf, align 8
  br label %bb.aw

bb.at:                                            ; preds = %bb.ak
  br i1 %.not279, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef nonnull align 16 dereferenceable(80) %i.oo)
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef nonnull align 16 dereferenceable(80) %i.oo, ptr noundef nonnull align 16 dereferenceable(80) %i.mt, ptr noundef nonnull align 16 dereferenceable(80) %i.na)
  %.pre526 = load <4 x float>, ptr %i.mt, align 16
  %.pre527 = load <4 x float>, ptr %i.mu, align 16
  %.pre528 = load <4 x float>, ptr %i.mv, align 16
  %.pre529 = load <4 x float>, ptr %i.mw, align 16
  %.pre530 = load <4 x float>, ptr %i.na, align 16
  %.pre531 = load <4 x float>, ptr %i.nb, align 16
  %.pre532 = load <4 x float>, ptr %i.nc, align 16
  %.pre533 = load <4 x float>, ptr %i.nd, align 16
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store <4 x float> splat (float +inf), ptr %8, align 16
  store <4 x float> splat (float -inf), ptr %i.nh, align 16
  store <4 x float> splat (float +inf), ptr %i.ni, align 16
  store <4 x float> splat (float -inf), ptr %i.nj, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  store <4 x float> splat (float +inf), ptr %9, align 16
  store <4 x float> splat (float -inf), ptr %i.nk, align 16
  store <4 x float> splat (float +inf), ptr %i.nl, align 16
  store <4 x float> splat (float -inf), ptr %i.nm, align 16
  %i.ul = load <1 x i32>, ptr %i.nn, align 8
  %i.um = shl nuw i32 1, %i.ox
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.un = shufflevector <1 x i32> %i.ul, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.un, ptr %10, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  %i.uo = zext i32 %i.um to i64
  %i.up = getelementptr inbounds nuw [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.uo
  %i.uq = load <4 x float>, ptr %i.up, align 16
  store <4 x float> %i.uq, ptr %11, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  store ptr %33, ptr %12, align 8
  store ptr %10, ptr %i.no, align 8
  store ptr %11, ptr %i.np, align 8
  %i.ur = load ptr, ptr %i.oq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  %i.us = call noundef i64 @_ZN6embree21parallel_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb1EEEvRKNS8_8BinSplitILm32EEERKNS8_13PrimInfoRangeERSG_SJ_EUlRKS1_E_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlRS6_SL_E0_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlSN_RKS6_E_EEmPT_mmRKT1_RT0_SY_RKT2_RKT3_RKT4_m(ptr noundef %i.ur, i64 noundef %i.ou, i64 noundef %i.ot, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 16 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, i64 noundef 128) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  %i.ut = load <4 x float>, ptr %8, align 16      ; 2 uses
  store <4 x float> %i.ut, ptr %i.mt, align 16
  %i.uu = load <4 x float>, ptr %i.nh, align 16   ; 2 uses
  store <4 x float> %i.uu, ptr %i.mu, align 16
  %i.uv = load <4 x float>, ptr %i.ni, align 16   ; 2 uses
  store <4 x float> %i.uv, ptr %i.mv, align 16
  %i.uw = load <4 x float>, ptr %i.nj, align 16   ; 2 uses
  store <4 x float> %i.uw, ptr %i.mw, align 16
  store i64 %i.ou, ptr %i.mx, align 16
  store i64 %i.us, ptr %i.my, align 8
  %i.ux = load <4 x float>, ptr %9, align 16      ; 2 uses
  store <4 x float> %i.ux, ptr %i.na, align 16
  %i.uy = load <4 x float>, ptr %i.nk, align 16   ; 2 uses
  store <4 x float> %i.uy, ptr %i.nb, align 16
  %i.uz = load <4 x float>, ptr %i.nl, align 16   ; 2 uses
  store <4 x float> %i.uz, ptr %i.nc, align 16
  %i.va = load <4 x float>, ptr %i.nm, align 16   ; 2 uses
  store <4 x float> %i.va, ptr %i.nd, align 16
  store i64 %i.us, ptr %i.ne, align 16
  store i64 %i.ot, ptr %i.nf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit137, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit, %bb.au, %bb.av
  %i.vb = phi <4 x float> [ %.sroa.14.0.lcssa.i.i119, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit137 ], [ %.sroa.20225.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre533, %bb.au ], [ %i.va, %bb.av ]
  %i.vc = phi <4 x float> [ %.sroa.10.0.lcssa.i.i120, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit137 ], [ %.sroa.14222.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre532, %bb.au ], [ %i.uz, %bb.av ]
  %i.vd = phi <4 x float> [ %.sroa.6.0.lcssa.i.i121, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit137 ], [ %.sroa.8219.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre531, %bb.au ], [ %i.uy, %bb.av ]
  %i.ve = phi <4 x float> [ %.sroa.0.0.lcssa.i.i122, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit137 ], [ %.sroa.0216.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre530, %bb.au ], [ %i.ux, %bb.av ]
  %i.vf = phi <4 x float> [ %.sroa.1434.0.lcssa.i.i115, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit137 ], [ %.sroa.20237.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre529, %bb.au ], [ %i.uw, %bb.av ]
  %i.vg = phi <4 x float> [ %.sroa.1032.0.lcssa.i.i116, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit137 ], [ %.sroa.14234.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre528, %bb.au ], [ %i.uv, %bb.av ]
  %i.vh = phi <4 x float> [ %.sroa.630.0.lcssa.i.i117, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit137 ], [ %.sroa.8231.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre527, %bb.au ], [ %i.uu, %bb.av ]
  %i.vi = phi <4 x float> [ %.sroa.028.0.lcssa.i.i118, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit137 ], [ %.sroa.0228.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre526, %bb.au ], [ %i.ut, %bb.av ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ok, ptr noundef nonnull align 16 dereferenceable(96) %31, i64 9, i1 false)
  store <4 x float> %i.vi, ptr %i.oo, align 16
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  store <4 x float> %i.vh, ptr %i.vj, align 16
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ok, i64 48
  store <4 x float> %i.vg, ptr %i.vk, align 16
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ok, i64 64
  store <4 x float> %i.vf, ptr %i.vl, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.or, ptr noundef nonnull align 16 dereferenceable(16) %i.mx, i64 16, i1 false)
  %i.vm = getelementptr inbounds nuw [96 x i8], ptr %30, i64 %.065408 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.vm, ptr noundef nonnull align 16 dereferenceable(96) %32, i64 9, i1 false)
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  store <4 x float> %i.ve, ptr %i.vn, align 16
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 32
  store <4 x float> %i.vd, ptr %i.vo, align 16
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 48
  store <4 x float> %i.vc, ptr %i.vp, align 16
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 64
  store <4 x float> %i.vb, ptr %i.vq, align 16
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vm, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vr, ptr noundef nonnull align 16 dereferenceable(16) %i.ne, i64 16, i1 false)
  %i.vs = add nuw i64 %.065408, 1                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #5
  %i.vt = load i64, ptr %0, align 8
  %i.vu = icmp ult i64 %i.vs, %i.vt
  br i1 %i.vu, label %.lr.ph362, label %.thread

.thread:                                          ; preds = %bb.aw, %._crit_edge, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76
  %.065.lcssa = phi i64 [ 2, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76 ], [ %.065408, %._crit_edge ], [ %i.vs, %bb.aw ] ; 20 uses
  %i.vv = load i64, ptr %i.cr, align 8
  %i.vw = load i64, ptr %i.cq, align 16
  %i.vx = sub i64 %i.vv, %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vz = load i64, ptr %i.vy, align 8            ; 4 uses
  %i.wa = icmp ugt i64 %i.vx, %i.vz
  br i1 %i.wa, label %.lr.ph413.preheader, label %.loopexit, !prof !29

.lr.ph413.preheader:                              ; preds = %.thread
  %xtraiter863 = and i64 %.065.lcssa, 1
  %unroll_iter = and i64 %.065.lcssa, -2
  br label %.lr.ph413

.lr.ph413:                                        ; preds = %.lr.ph413, %.lr.ph413.preheader
  %.059412 = phi i64 [ 0, %.lr.ph413.preheader ], [ %i.wt, %.lr.ph413 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph413.preheader ], [ %niter.next.1, %.lr.ph413 ]
  %i.wb = getelementptr inbounds nuw [96 x i8], ptr %30, i64 %.059412 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 80
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 88
  %i.we = load i64, ptr %i.wd, align 8
  %i.wf = load i64, ptr %i.wc, align 16
  %i.wg = sub i64 %i.we, %i.wf
  %i.wh = icmp ule i64 %i.wg, %i.vz
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wj = zext i1 %i.wh to i8
  store i8 %i.wj, ptr %i.wi, align 8
  %i.wk = getelementptr inbounds nuw [96 x i8], ptr %30, i64 %.059412 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 176
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 184
  %i.wn = load i64, ptr %i.wm, align 8
  %i.wo = load i64, ptr %i.wl, align 16
  %i.wp = sub i64 %i.wn, %i.wo
  %i.wq = icmp ule i64 %i.wp, %i.vz
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wk, i64 104
  %i.ws = zext i1 %i.wq to i8
  store i8 %i.ws, ptr %i.wr, align 8
  %i.wt = add nuw i64 %.059412, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph413, !llvm.loop !141

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph413
  %lcmp.mod864.not = icmp eq i64 %xtraiter863, 0
  br i1 %lcmp.mod864.not, label %.loopexit, label %.lr.ph413.epil.preheader

.lr.ph413.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod865 = trunc i64 %.065.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod865)
  %i.wu = getelementptr inbounds nuw [96 x i8], ptr %30, i64 %i.wt ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 80
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 88
  %i.wx = load i64, ptr %i.ww, align 8
  %i.wy = load i64, ptr %i.wv, align 16
  %i.wz = sub i64 %i.wx, %i.wy
  %i.xa = icmp ule i64 %i.wz, %i.vz
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.xc = zext i1 %i.xa to i8
  store i8 %i.xc, ptr %i.xb, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph413.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.thread
  %.idx282 = mul nuw nsw i64 %.065.lcssa, 96
  %i.xd = getelementptr inbounds nuw i8, ptr %30, i64 %.idx282 ; 2 uses
  %i.xe = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.065.lcssa, i1 true)
  %i.xf = shl nuw nsw i64 %i.xe, 1
  %i.xg = xor i64 %i.xf, 126
  call void @_ZSt16__introsort_loopIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_T1_(ptr noundef nonnull %30, ptr noundef nonnull %i.xd, i64 noundef %i.xg)
  call void @_ZSt22__final_insertion_sortIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_(ptr noundef nonnull %30, ptr noundef nonnull %i.xd)
  %i.xh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8            ; 9 uses
  %i.xj = load ptr, ptr %2, align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 128, ptr %i.a, align 8
  %i.xk = load ptr, ptr %i.xi, align 64           ; 18 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8 ; 6 uses
  %i.xm = load atomic ptr, ptr %i.xl seq_cst, align 8
  %i.xn = icmp eq ptr %i.xm, %i.xj
  br i1 %i.xn, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store ptr %i.xk, ptr %7, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i8 1, ptr %i.xo, align 8
  call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.xk)
  %i.xp = load atomic ptr, ptr %i.xl seq_cst, align 8
  %.not.i98 = icmp eq ptr %i.xp, null
  br i1 %.not.i98, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xk, i64 104
  %i.xr = load i64, ptr %i.xq, align 8
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xk, i64 168
  %i.xt = load i64, ptr %i.xs, align 8
  %i.xu = add i64 %i.xt, %i.xr
  %i.xv = load atomic ptr, ptr %i.xl seq_cst, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 280
  %i.xx = atomicrmw add ptr %i.xw, i64 %i.xu seq_cst, align 8 ; 0 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xk, i64 88
  %i.xz = load i64, ptr %i.xy, align 8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xk, i64 80
  %i.yb = load i64, ptr %i.ya, align 16
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xk, i64 152
  %i.yd = load i64, ptr %i.yc, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xk, i64 144
  %i.yf = load i64, ptr %i.ye, align 16
  %i.yg = add i64 %i.xz, %i.yd
  %i.yh = add i64 %i.yb, %i.yf
  %i.yi = sub i64 %i.yg, %i.yh
  %i.yj = load atomic ptr, ptr %i.xl seq_cst, align 8
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 288
  %i.yl = atomicrmw add ptr %i.yk, i64 %i.yi seq_cst, align 8 ; 0 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xk, i64 112
  %i.yn = load i64, ptr %i.ym, align 16
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xk, i64 176
  %i.yp = load i64, ptr %i.yo, align 16
  %i.yq = add i64 %i.yp, %i.yn
  %i.yr = load atomic ptr, ptr %i.xl seq_cst, align 8
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 296
  %i.yt = atomicrmw add ptr %i.ys, i64 %i.yq seq_cst, align 8 ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit141
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bh, %bb.az
  %eh.lpad-body = phi { ptr, i32 } [ %i.yu, %bb.az ], [ %i.aab, %bb.bh ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %common.resume

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xk, i64 72
  %.not.i139 = icmp eq ptr %i.xj, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yv, i8 0, i64 48, i1 false)
  br i1 %.not.i139, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.bb

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.ba
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yw, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit141

bb.bb:                                            ; preds = %bb.ba
  %i.yx = getelementptr inbounds nuw i8, ptr %i.xk, i64 96
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xj, i64 16 ; 2 uses
  %i.yz = load i64, ptr %i.yy, align 8
  store i64 %i.yz, ptr %i.yx, align 32
  %i.za = getelementptr inbounds nuw i8, ptr %i.xk, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.za, i8 0, i64 48, i1 false)
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xk, i64 160
  %i.zc = load i64, ptr %i.yy, align 8
  store i64 %i.zc, ptr %i.zb, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit141

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit141: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.bb
  store atomic ptr %i.xj, ptr %i.xl seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %6, align 8
  %i.zd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 1, ptr %i.zd, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc unwind label %bb.az

.noexc:                                           ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit141
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xj, i64 304 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xj, i64 312 ; 4 uses
  %i.zg = load ptr, ptr %i.zf, align 8            ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xj, i64 320 ; 2 uses
  %i.zi = load ptr, ptr %i.zh, align 8
  %.not.i143 = icmp eq ptr %i.zg, %i.zi
  br i1 %.not.i143, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.noexc
  store ptr %i.xk, ptr %i.zg, align 8
  %i.zj = load ptr, ptr %i.zf, align 8
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  store ptr %i.zk, ptr %i.zf, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit

bb.bd:                                            ; preds = %.noexc
  %i.zl = load ptr, ptr %i.ze, align 8            ; 4 uses
  %i.zm = ptrtoint ptr %i.zg to i64
  %i.zn = ptrtoint ptr %i.zl to i64
  %i.zo = sub i64 %i.zm, %i.zn                    ; 5 uses
  %i.zp = icmp eq i64 %i.zo, 9223372036854775800
  br i1 %i.zp, label %bb.be, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc145 unwind label %bb.bh

.noexc145:                                        ; preds = %bb.be
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bd
  %i.zq = ashr exact i64 %i.zo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.zq, i64 1)
  %i.zr = add nsw i64 %.sroa.speculated.i.i.i, %i.zq ; 2 uses
  %i.zs = icmp ult i64 %i.zr, %i.zq
  %i.zt = call i64 @llvm.umin.i64(i64 %i.zr, i64 1152921504606846975)
  %i.zu = select i1 %i.zs, i64 1152921504606846975, i64 %i.zt ; 3 uses
  %.not.i.i.i144 = icmp ne i64 %i.zu, 0
  call void @llvm.assume(i1 %.not.i.i.i144)
  %i.zv = shl nuw nsw i64 %i.zu, 3
  %i.zw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zv) #27
          to label %.noexc146 unwind label %bb.bh ; 4 uses

.noexc146:                                        ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.zx = getelementptr inbounds i8, ptr %i.zw, i64 %i.zo ; 2 uses
  store ptr %i.xk, ptr %i.zx, align 8
  %i.zy = icmp sgt i64 %i.zo, 0
  br i1 %i.zy, label %bb.bf, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.bf:                                            ; preds = %.noexc146
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zw, ptr align 8 %i.zl, i64 %i.zo, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.bf, %.noexc146
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %.not.i17.i.i = icmp eq ptr %i.zl, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.zl) #26
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bg, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.zw, ptr %i.ze, align 8
  store ptr %i.zz, ptr %i.zf, align 8
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zw, i64 %i.zu
  store ptr %i.aaa, ptr %i.zh, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit

bb.bh:                                            ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.be
  %i.aab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %.body

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit: ; preds = %bb.bc, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %bb.bj unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  %i.aac = landingpad { ptr, i32 }
          catch ptr null
  %i.aad = extractvalue { ptr, i32 } %i.aac, 0
  call void @__clang_call_terminate(ptr %i.aad) #28
  unreachable

bb.bj:                                            ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %i.aae = load i8, ptr %i.xo, align 8, !range !26, !noundef !21
  %i.aaf = trunc nuw i8 %i.aae to i1
  br i1 %i.aaf, label %bb.bk, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit148

bb.bk:                                            ; preds = %bb.bj
  %i.aag = load ptr, ptr %7, align 8, !nonnull !21, !align !22
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aag)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit148 unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.aah = landingpad { ptr, i32 }
          catch ptr null
  %i.aai = extractvalue { ptr, i32 } %i.aah, 0
  call void @__clang_call_terminate(ptr %i.aai) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit148:       ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit: ; preds = %.loopexit, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit148
  %i.aaj = load i64, ptr %i.a, align 8            ; 4 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.xi, i64 40 ; 2 uses
  %i.aal = load i64, ptr %i.aak, align 8
  %i.aam = add i64 %i.aal, %i.aaj
  store i64 %i.aam, ptr %i.aak, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.xi, i64 16 ; 9 uses
  %i.aao = load i64, ptr %i.aan, align 16         ; 3 uses
  %i.aap = sub i64 0, %i.aao
  %i.aaq = and i64 %i.aap, 15                     ; 2 uses
  %i.aar = add i64 %i.aao, %i.aaj
  %i.aas = add i64 %i.aar, %i.aaq                 ; 3 uses
  store i64 %i.aas, ptr %i.aan, align 16
  %i.aat = getelementptr inbounds nuw i8, ptr %i.xi, i64 24 ; 5 uses
  %i.aau = load i64, ptr %i.aat, align 8
  %.not.i95 = icmp ugt i64 %i.aas, %i.aau
  br i1 %.not.i95, label %bb.bn, label %bb.bm, !prof !29

bb.bm:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit
  %i.aav = getelementptr inbounds nuw i8, ptr %i.xi, i64 48 ; 2 uses
  %i.aaw = load i64, ptr %i.aav, align 16
  %i.aax = add i64 %i.aaw, %i.aaq
  store i64 %i.aax, ptr %i.aav, align 16
  %i.aay = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.aaz = load ptr, ptr %i.aay, align 8
  %i.aba = sub i64 %i.aas, %i.aaj
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.aba
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader433

bb.bn:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit
  store i64 %i.aao, ptr %i.aan, align 16
  %i.abc = shl i64 %i.aaj, 2
  %i.abd = getelementptr inbounds nuw i8, ptr %i.xi, i64 32 ; 2 uses
  %i.abe = load i64, ptr %i.abd, align 32         ; 2 uses
  %i.abf = icmp ugt i64 %i.abc, %i.abe
  br i1 %i.abf, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.abg = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.xj, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader433

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.abe, ptr %i.b, align 8
  %i.abh = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.xj, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.xi, i64 8 ; 2 uses
  store ptr %i.abh, ptr %i.abi, align 8
  %i.abj = load i64, ptr %i.aat, align 8
  %i.abk = load i64, ptr %i.aan, align 16
  %i.abl = sub i64 %i.abj, %i.abk
  %i.abm = getelementptr inbounds nuw i8, ptr %i.xi, i64 48 ; 6 uses
  %i.abn = load i64, ptr %i.abm, align 16
  %i.abo = add i64 %i.abn, %i.abl                 ; 2 uses
  store i64 %i.abo, ptr %i.abm, align 16
  %i.abp = load i64, ptr %i.b, align 8            ; 2 uses
  store i64 %i.abp, ptr %i.aat, align 8
  %i.abq = load i64, ptr %i.a, align 8            ; 2 uses
  store i64 %i.abq, ptr %i.aan, align 16
  %.not23.i = icmp ugt i64 %i.abq, %i.abp
  br i1 %.not23.i, label %bb.br, label %bb.bq, !prof !29

bb.bq:                                            ; preds = %bb.bp
  store i64 %i.abo, ptr %i.abm, align 16
  br label %bb.bu

bb.br:                                            ; preds = %bb.bp
  store i64 0, ptr %i.aan, align 16
  %i.abr = load i64, ptr %i.abd, align 32
  store i64 %i.abr, ptr %i.b, align 8
  %i.abs = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.xj, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.abs, ptr %i.abi, align 8
  %i.abt = load i64, ptr %i.aat, align 8
  %i.abu = load i64, ptr %i.aan, align 16
  %i.abv = sub i64 %i.abt, %i.abu
  %i.abw = load i64, ptr %i.abm, align 16
  %i.abx = add i64 %i.abw, %i.abv                 ; 2 uses
  store i64 %i.abx, ptr %i.abm, align 16
  %i.aby = load i64, ptr %i.b, align 8            ; 2 uses
  store i64 %i.aby, ptr %i.aat, align 8
  %i.abz = load i64, ptr %i.a, align 8            ; 2 uses
  store i64 %i.abz, ptr %i.aan, align 16
  %.not24.i = icmp ugt i64 %i.abz, %i.aby
  br i1 %.not24.i, label %bb.bt, label %bb.bs, !prof !29

bb.bs:                                            ; preds = %bb.br
  store i64 %i.abx, ptr %i.abm, align 16
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  store i64 0, ptr %i.aan, align 16
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.bq
  %.0.i97 = phi ptr [ %i.abh, %bb.bq ], [ %i.abs, %bb.bs ], [ null, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader433

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader433: ; preds = %bb.bu, %bb.bo, %bb.bm
  %.1.i96 = phi ptr [ %i.abb, %bb.bm ], [ %i.abg, %bb.bo ], [ %.0.i97, %bb.bu ] ; 20 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aca = getelementptr inbounds nuw i8, ptr %.1.i96, i64 96 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.aca, align 16
  %i.acb = getelementptr inbounds nuw i8, ptr %.1.i96, i64 64 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.acb, align 16
  %i.acc = getelementptr inbounds nuw i8, ptr %.1.i96, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.acc, align 16
  %i.acd = getelementptr inbounds nuw i8, ptr %.1.i96, i64 112 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.acd, align 16
  %i.ace = getelementptr inbounds nuw i8, ptr %.1.i96, i64 80 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.ace, align 16
  %i.acf = getelementptr inbounds nuw i8, ptr %.1.i96, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.acf, align 16
  store <4 x i64> splat (i64 8), ptr %.1.i96, align 16
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit: ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader433, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit
  %.0.i415 = phi i64 [ %i.acr, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit ], [ 0, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader433 ] ; 8 uses
  %i.acg = getelementptr inbounds nuw [96 x i8], ptr %30, i64 %.0.i415 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.aci = load <4 x float>, ptr %i.ach, align 16 ; 3 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 32
  %i.ack = load <4 x float>, ptr %i.acj, align 16 ; 3 uses
  %.sroa.0172.0.vec.extract = extractelement <4 x float> %i.aci, i64 0
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %.0.i415
  store float %.sroa.0172.0.vec.extract, ptr %i.acl, align 4
  %.sroa.0172.4.vec.extract = extractelement <4 x float> %i.aci, i64 1
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %.0.i415
  store float %.sroa.0172.4.vec.extract, ptr %i.acm, align 4
  %.sroa.0172.8.vec.extract = extractelement <4 x float> %i.aci, i64 2
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %.0.i415
  store float %.sroa.0172.8.vec.extract, ptr %i.acn, align 4
  %.sroa.6.16.vec.extract = extractelement <4 x float> %i.ack, i64 0
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %.0.i415
  store float %.sroa.6.16.vec.extract, ptr %i.aco, align 4
  %.sroa.6.20.vec.extract = extractelement <4 x float> %i.ack, i64 1
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %.0.i415
  store float %.sroa.6.20.vec.extract, ptr %i.acp, align 4
  %.sroa.6.24.vec.extract = extractelement <4 x float> %i.ack, i64 2
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %.0.i415
  store float %.sroa.6.24.vec.extract, ptr %i.acq, align 4
  %i.acr = add nuw i64 %.0.i415, 1                ; 2 uses
  %exitcond500.not = icmp eq i64 %i.acr, %.065.lcssa
  br i1 %exitcond500.not, label %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit, !llvm.loop !5

_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit: ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit
  %i.acs = ptrtoint ptr %.1.i96 to i64            ; 3 uses
  %i.act = load i64, ptr %i.cr, align 8
  %i.acu = load i64, ptr %i.cq, align 16
  %i.acv = sub i64 %i.act, %i.acu
  %i.acw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.acx = load i64, ptr %i.acw, align 8
  %i.acy = icmp ugt i64 %i.acv, %i.acx
  br i1 %i.acy, label %bb.bv, label %.lr.ph418

bb.bv:                                            ; preds = %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #5
  store ptr %29, ptr %34, align 8
  %i.acz = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr %0, ptr %i.acz, align 8
  %i.ada = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %30, ptr %i.ada, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  store ptr null, ptr %4, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS3_12BuildRecordTINS2_13PrimInfoRangeENS2_8BinSplitILm32EEEEENS2_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES6_SB_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_10AABBNode_tISE_Li4EE7Create2ENSJ_4Set3EZNS2_18BVHNBuilderVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPSB_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS3_8SettingsEEUlPKSB_RKNS_5rangeImEERKSG_E_NS3_24DefaultCanCreateLeafFuncISB_S6_EENS3_29DefaultCanCreateLeafSplitFuncISB_S6_EESQ_E7recurseERS9_SG_bEUlS16_E_EEvT_S1H_S1H_RKT0_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %.065.lcssa, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull %4)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.by

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.bw
  %i.adb = load ptr, ptr %4, align 8              ; 2 uses
  %.not285 = icmp eq ptr %i.adb, null
  br i1 %.not285, label %.lr.ph425.preheader, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.adb, ptr %5, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %5) #25
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.by:                                            ; preds = %bb.bw, %bb.bv
  %i.adc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit152

bb.bz:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.add = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ade = load ptr, ptr %5, align 8
  %.not.i151 = icmp eq ptr %i.ade, null
  br i1 %.not.i151, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit152, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit152

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit152: ; preds = %bb.ca, %bb.bz, %bb.by
  %.pn.i100 = phi { ptr, i32 } [ %i.adc, %bb.by ], [ %i.add, %bb.bz ], [ %i.add, %bb.ca ]
  %i.adf = load ptr, ptr %4, align 8
  %.not.i.i153 = icmp eq ptr %i.adf, null
  br i1 %.not.i.i153, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit152
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit152, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %common.resume

.lr.ph425.preheader:                              ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.phi.trans.insert534 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre535 = load ptr, ptr %.phi.trans.insert534, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #5
  %min.iters.check765 = icmp ult i64 %.065.lcssa, 8
  %i.adg = sub i64 %i.c, %i.acs
  %diff.check763 = icmp ugt i64 %i.adg, -32
  %or.cond776 = or i1 %min.iters.check765, %diff.check763
  br i1 %or.cond776, label %.lr.ph425.preheader778, label %vector.ph766

vector.ph766:                                     ; preds = %.lr.ph425.preheader
  %n.vec767 = and i64 %.065.lcssa, -4             ; 3 uses
  br label %vector.body768

vector.body768:                                   ; preds = %vector.body768, %vector.ph766
  %index769 = phi i64 [ 0, %vector.ph766 ], [ %index.next772, %vector.body768 ] ; 3 uses
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %index769 ; 2 uses
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %index769 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %wide.load770 = load <2 x i64>, ptr %i.adh, align 16
  %wide.load771 = load <2 x i64>, ptr %i.adj, align 16
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  store <2 x i64> %wide.load770, ptr %i.adi, align 8
  store <2 x i64> %wide.load771, ptr %i.adk, align 8
  %index.next772 = add nuw i64 %index769, 4       ; 2 uses
  %i.adl = icmp eq i64 %index.next772, %n.vec767
  br i1 %i.adl, label %middle.block773, label %vector.body768, !llvm.loop !142

middle.block773:                                  ; preds = %vector.body768
  %cmp.n774 = icmp eq i64 %.065.lcssa, %n.vec767
  br i1 %cmp.n774, label %._crit_edge426, label %.lr.ph425.preheader778

.lr.ph425.preheader778:                           ; preds = %.lr.ph425.preheader, %middle.block773
  %.0.i78424.ph = phi i64 [ 0, %.lr.ph425.preheader ], [ %n.vec767, %middle.block773 ] ; 3 uses
  %xtraiter868 = and i64 %.065.lcssa, 3           ; 2 uses
  %lcmp.mod869.not = icmp eq i64 %xtraiter868, 0
  br i1 %lcmp.mod869.not, label %.lr.ph425.prol.loopexit, label %.lr.ph425.prol

.lr.ph425.prol:                                   ; preds = %.lr.ph425.preheader778, %.lr.ph425.prol
  %.0.i78424.prol = phi i64 [ %i.adp, %.lr.ph425.prol ], [ %.0.i78424.ph, %.lr.ph425.preheader778 ] ; 3 uses
  %prol.iter870 = phi i64 [ %prol.iter870.next, %.lr.ph425.prol ], [ 0, %.lr.ph425.preheader778 ]
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %.0.i78424.prol
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %.0.i78424.prol
  %i.ado = load i64, ptr %i.adm, align 8
  store i64 %i.ado, ptr %i.adn, align 8
  %i.adp = add nuw i64 %.0.i78424.prol, 1         ; 2 uses
  %prol.iter870.next = add i64 %prol.iter870, 1   ; 2 uses
  %prol.iter870.cmp.not = icmp eq i64 %prol.iter870.next, %xtraiter868
  br i1 %prol.iter870.cmp.not, label %.lr.ph425.prol.loopexit, label %.lr.ph425.prol, !llvm.loop !143

.lr.ph425.prol.loopexit:                          ; preds = %.lr.ph425.prol, %.lr.ph425.preheader778
  %.0.i78424.unr = phi i64 [ %.0.i78424.ph, %.lr.ph425.preheader778 ], [ %i.adp, %.lr.ph425.prol ]
  %i.adq = sub i64 %.0.i78424.ph, %.065.lcssa
  %i.adr = icmp ugt i64 %i.adq, -4
  br i1 %i.adr, label %._crit_edge426, label %.lr.ph425

._crit_edge426:                                   ; preds = %.lr.ph425.prol.loopexit, %.lr.ph425, %middle.block773
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.adt = load i8, ptr %i.ads, align 8, !range !26, !noundef !21
  %i.adu = trunc nuw i8 %i.adt to i1
  br i1 %i.adu, label %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80.sink.split, label %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80, !prof !29

.lr.ph425:                                        ; preds = %.lr.ph425.prol.loopexit, %.lr.ph425
  %.0.i78424 = phi i64 [ %i.aek, %.lr.ph425 ], [ %.0.i78424.unr, %.lr.ph425.prol.loopexit ] ; 6 uses
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %.0.i78424
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %.0.i78424
  %i.adx = load i64, ptr %i.adv, align 8
  store i64 %i.adx, ptr %i.adw, align 8
  %i.ady = add nuw i64 %.0.i78424, 1              ; 2 uses
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %i.ady
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %i.ady
  %i.aeb = load i64, ptr %i.adz, align 8
  store i64 %i.aeb, ptr %i.aea, align 8
  %i.aec = add nuw i64 %.0.i78424, 2              ; 2 uses
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %i.aec
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %i.aec
  %i.aef = load i64, ptr %i.aed, align 8
  store i64 %i.aef, ptr %i.aee, align 8
  %i.aeg = add nuw i64 %.0.i78424, 3              ; 2 uses
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %i.aeg
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %i.aeg
  %i.aej = load i64, ptr %i.aeh, align 8
  store i64 %i.aej, ptr %i.aei, align 8
  %i.aek = add nuw i64 %.0.i78424, 4              ; 2 uses
  %exitcond503.not.3 = icmp eq i64 %i.aek, %.065.lcssa
  br i1 %exitcond503.not.3, label %._crit_edge426, label %.lr.ph425, !llvm.loop !144

.lr.ph422.preheader:                              ; preds = %.lr.ph418
  %i.ael = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aem = load ptr, ptr %i.ael, align 8, !nonnull !21, !align !22
  %min.iters.check751 = icmp ult i64 %.065.lcssa, 8
  %i.aen = sub i64 %i.c, %i.acs
  %diff.check = icmp ugt i64 %i.aen, -32
  %or.cond777 = or i1 %min.iters.check751, %diff.check
  br i1 %or.cond777, label %.lr.ph422.preheader779, label %vector.ph752

vector.ph752:                                     ; preds = %.lr.ph422.preheader
  %n.vec753 = and i64 %.065.lcssa, -4             ; 3 uses
  br label %vector.body754

vector.body754:                                   ; preds = %vector.body754, %vector.ph752
  %index755 = phi i64 [ 0, %vector.ph752 ], [ %index.next758, %vector.body754 ] ; 3 uses
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %index755 ; 2 uses
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %index755 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aeo, i64 16
  %wide.load756 = load <2 x i64>, ptr %i.aeo, align 16
  %wide.load757 = load <2 x i64>, ptr %i.aeq, align 16
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aep, i64 16
  store <2 x i64> %wide.load756, ptr %i.aep, align 8
  store <2 x i64> %wide.load757, ptr %i.aer, align 8
  %index.next758 = add nuw i64 %index755, 4       ; 2 uses
  %i.aes = icmp eq i64 %index.next758, %n.vec753
  br i1 %i.aes, label %middle.block759, label %vector.body754, !llvm.loop !145

middle.block759:                                  ; preds = %vector.body754
  %cmp.n760 = icmp eq i64 %.065.lcssa, %n.vec753
  br i1 %cmp.n760, label %._crit_edge423, label %.lr.ph422.preheader779

.lr.ph422.preheader779:                           ; preds = %.lr.ph422.preheader, %middle.block759
  %.0.i77420.ph = phi i64 [ 0, %.lr.ph422.preheader ], [ %n.vec753, %middle.block759 ] ; 3 uses
  %xtraiter866 = and i64 %.065.lcssa, 3           ; 2 uses
  %lcmp.mod867.not = icmp eq i64 %xtraiter866, 0
  br i1 %lcmp.mod867.not, label %.lr.ph422.prol.loopexit, label %.lr.ph422.prol

.lr.ph422.prol:                                   ; preds = %.lr.ph422.preheader779, %.lr.ph422.prol
  %.0.i77420.prol = phi i64 [ %i.aew, %.lr.ph422.prol ], [ %.0.i77420.ph, %.lr.ph422.preheader779 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph422.prol ], [ 0, %.lr.ph422.preheader779 ]
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %.0.i77420.prol
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %.0.i77420.prol
  %i.aev = load i64, ptr %i.aet, align 8
  store i64 %i.aev, ptr %i.aeu, align 8
  %i.aew = add nuw i64 %.0.i77420.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter866
  br i1 %prol.iter.cmp.not, label %.lr.ph422.prol.loopexit, label %.lr.ph422.prol, !llvm.loop !146

.lr.ph422.prol.loopexit:                          ; preds = %.lr.ph422.prol, %.lr.ph422.preheader779
  %.0.i77420.unr = phi i64 [ %.0.i77420.ph, %.lr.ph422.preheader779 ], [ %i.aew, %.lr.ph422.prol ]
  %i.aex = sub i64 %.0.i77420.ph, %.065.lcssa
  %i.aey = icmp ugt i64 %i.aex, -4
  br i1 %i.aey, label %._crit_edge423, label %.lr.ph422

._crit_edge423:                                   ; preds = %.lr.ph422.prol.loopexit, %.lr.ph422, %middle.block759
  %i.aez = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.afa = load i8, ptr %i.aez, align 8, !range !26, !noundef !21
  %i.afb = trunc nuw i8 %i.afa to i1
  br i1 %i.afb, label %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80.sink.split, label %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80, !prof !29

.lr.ph422:                                        ; preds = %.lr.ph422.prol.loopexit, %.lr.ph422
  %.0.i77420 = phi i64 [ %i.afr, %.lr.ph422 ], [ %.0.i77420.unr, %.lr.ph422.prol.loopexit ] ; 6 uses
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %.0.i77420
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %.0.i77420
  %i.afe = load i64, ptr %i.afc, align 8
  store i64 %i.afe, ptr %i.afd, align 8
  %i.aff = add nuw i64 %.0.i77420, 1              ; 2 uses
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %i.aff
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %i.aff
  %i.afi = load i64, ptr %i.afg, align 8
  store i64 %i.afi, ptr %i.afh, align 8
  %i.afj = add nuw i64 %.0.i77420, 2              ; 2 uses
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %i.afj
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %i.afj
  %i.afm = load i64, ptr %i.afk, align 8
  store i64 %i.afm, ptr %i.afl, align 8
  %i.afn = add nuw i64 %.0.i77420, 3              ; 2 uses
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %i.afn
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %.1.i96, i64 %i.afn
  %i.afq = load i64, ptr %i.afo, align 8
  store i64 %i.afq, ptr %i.afp, align 8
  %i.afr = add nuw i64 %.0.i77420, 4              ; 2 uses
  %exitcond502.not.3 = icmp eq i64 %i.afr, %.065.lcssa
  br i1 %exitcond502.not.3, label %._crit_edge423, label %.lr.ph422, !llvm.loop !147

.lr.ph418:                                        ; preds = %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit, %.lr.ph418
  %.0417 = phi i64 [ %i.afv, %.lr.ph418 ], [ 0, %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit ] ; 3 uses
  %i.afs = getelementptr inbounds nuw [96 x i8], ptr %30, i64 %.0417
  %i.aft = call i64 @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_10AABBNode_tISC_Li4EE7Create2ENSH_4Set3EZNS0_18BVHNBuilderVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_b(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.afs, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %2, i1 noundef zeroext false)
  %i.afu = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %.0417
  store i64 %i.aft, ptr %i.afu, align 8
  %i.afv = add nuw i64 %.0417, 1                  ; 2 uses
  %exitcond501.not = icmp eq i64 %i.afv, %.065.lcssa
  br i1 %exitcond501.not, label %.lr.ph422.preheader, label %.lr.ph418, !llvm.loop !148

_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80.sink.split: ; preds = %._crit_edge423, %._crit_edge426
  %.sink = phi ptr [ %.pre535, %._crit_edge426 ], [ %i.aem, %._crit_edge423 ] ; 2 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.afx = load ptr, ptr %i.afw, align 8
  %i.afy = load i64, ptr %i.cq, align 16          ; 2 uses
  %.idx284 = shl nuw nsw i64 %i.afy, 5
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afx, i64 %.idx284
  %i.aga = load i64, ptr %i.cr, align 8
  %i.agb = sub nsw i64 %i.aga, %i.afy
  %gepdiff = shl nsw i64 %i.agb, 5
  %i.agc = load ptr, ptr %.sink, align 8
  call void @_ZN6embree13FastAllocator8addBlockEPvl(ptr noundef nonnull align 8 dereferenceable(376) %i.agc, ptr noundef %i.afz, i64 noundef %gepdiff)
  br label %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80

_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80: ; preds = %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80.sink.split, %._crit_edge423, %._crit_edge426
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #5
  br label %bb.cc

bb.cc:                                            ; preds = %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit
  %.sroa.058.1 = phi i64 [ %i.dx, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit ], [ %i.acs, %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #5
  ret i64 %.sroa.058.1
}

; Function Attrs: nounwind
declare void @llvm.x86.sse2.mfence() #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree12rtcore_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #5
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #5 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree12rtcore_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6embree12rtcore_errorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #26, !inline_history !189
  br label %_ZN6embree12rtcore_errorD2Ev.exit

_ZN6embree12rtcore_errorD2Ev.exit:                ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #5, !inline_history !189
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6embree12rtcore_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE4findERKNS0_13PrimInfoRangeEm(ptr dead_on_unwind noalias writable sret(%"struct.embree::sse2::BinSplit") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 16 dereferenceable(80) %2, i64 noundef %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %4 = alloca %"struct.embree::range", align 8    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"struct.embree::sse2::BinInfoT", align 64 ; 5 uses
  %6 = alloca %class.anon.30, align 8             ; 6 uses
  %7 = alloca %class.anon.31, align 8             ; 4 uses
  %8 = alloca [32 x %"struct.embree::vfloat_impl"], align 16 ; 4 uses
  %9 = alloca [32 x %"struct.embree::vuint_impl"], align 16 ; 4 uses
  %10 = alloca [32 x %"struct.embree::vfloat_impl"], align 16 ; 4 uses
  %11 = alloca [32 x %"struct.embree::vuint_impl"], align 16 ; 4 uses
  %12 = alloca %"struct.embree::sse2::BinInfoT", align 64 ; 9 uses
  %13 = alloca %"struct.embree::sse2::BinMapping", align 16 ; 10 uses
  %14 = alloca %"struct.embree::sse2::BinInfoT", align 64 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = load i64, ptr %i.b, align 16             ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = icmp ult i64 %i.f, 3072
  br i1 %i.g, label %.preheader362.preheader, label %.preheader364.preheader, !prof !27

.preheader362.preheader:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5, !noalias !320
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 3072 ; 13 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11

_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11, %.preheader362.preheader
  %.0.i35392 = phi i64 [ 0, %.preheader362.preheader ], [ %i.x, %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11 ] ; 4 uses
  %i.i = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %.0.i35392 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store <4 x float> splat (float +inf), ptr %i.j, align 64, !noalias !320
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  store <4 x float> splat (float -inf), ptr %i.k, align 16, !noalias !320
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store <4 x float> splat (float +inf), ptr %i.l, align 32, !noalias !320
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store <4 x float> splat (float -inf), ptr %i.m, align 16, !noalias !320
  store <4 x float> splat (float +inf), ptr %i.i, align 64, !noalias !320
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x float> splat (float -inf), ptr %i.n, align 16, !noalias !320
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.0.i35392
  store <2 x i64> zeroinitializer, ptr %i.o, align 32, !noalias !320
  %i.p = or disjoint i64 %.0.i35392, 1            ; 2 uses
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %14, i64 %i.p ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store <4 x float> splat (float +inf), ptr %i.r, align 32, !noalias !320
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store <4 x float> splat (float -inf), ptr %i.s, align 16, !noalias !320
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store <4 x float> splat (float +inf), ptr %i.t, align 64, !noalias !320
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store <4 x float> splat (float -inf), ptr %i.u, align 16, !noalias !320
  store <4 x float> splat (float +inf), ptr %i.q, align 32, !noalias !320
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x float> splat (float -inf), ptr %i.v, align 16, !noalias !320
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.p
  store <2 x i64> zeroinitializer, ptr %i.w, align 16, !noalias !320
  %i.x = add nuw nsw i64 %.0.i35392, 2            ; 2 uses
  %exitcond434.not.1 = icmp eq i64 %i.x, 32
  br i1 %exitcond434.not.1, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11, !llvm.loop !6

_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit11
  %i.y = uitofp nneg i64 %i.f to float
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float 5.000000e-02, float 4.000000e+00)
  %i.aa = fptoui float %i.z to i64                ; 2 uses
  %i.ab = tail call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 32) ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ae = load <4 x float>, ptr %i.ad, align 16, !noalias !321
  %i.af = load <4 x float>, ptr %i.ac, align 16, !noalias !321 ; 5 uses
  %i.ag = fsub <4 x float> %i.ae, %i.af
  %i.ah = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float 1.000000e-34), <4 x float> %i.ag) ; 2 uses
  %i.ai = fcmp ugt <4 x float> %i.ah, splat (float 1.000000e-34)
  %i.aj = uitofp nneg i64 %i.ab to float
end_hunk_1
begin_hunk_2_@_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE4findERKNS0_13PrimInfoRangeEm:bb.a
  store i64 %i.ab, ptr %i.kz, align 16
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %i.af, ptr %i.la, align 16
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %i.ao, ptr %i.lb, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5, !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5, !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5, !noalias !320
  br label %bb.ab

.preheader364.preheader:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5, !noalias !362
  %i.lc = getelementptr inbounds nuw i8, ptr %12, i64 3072 ; 4 uses
  br label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit

_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, %.preheader364.preheader
  %.0.i36365 = phi i64 [ 0, %.preheader364.preheader ], [ %i.ls, %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit ] ; 4 uses
  %i.ld = getelementptr inbounds nuw [96 x i8], ptr %12, i64 %.0.i36365 ; 6 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 64
  store <4 x float> splat (float +inf), ptr %i.le, align 64, !noalias !362
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 80
  store <4 x float> splat (float -inf), ptr %i.lf, align 16, !noalias !362
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  store <4 x float> splat (float +inf), ptr %i.lg, align 32, !noalias !362
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 48
  store <4 x float> splat (float -inf), ptr %i.lh, align 16, !noalias !362
  store <4 x float> splat (float +inf), ptr %i.ld, align 64, !noalias !362
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store <4 x float> splat (float -inf), ptr %i.li, align 16, !noalias !362
  %i.lj = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %.0.i36365
  store <2 x i64> zeroinitializer, ptr %i.lj, align 32, !noalias !362
  %i.lk = or disjoint i64 %.0.i36365, 1           ; 2 uses
  %i.ll = getelementptr inbounds nuw [96 x i8], ptr %12, i64 %i.lk ; 6 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 64
  store <4 x float> splat (float +inf), ptr %i.lm, align 32, !noalias !362
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 80
  store <4 x float> splat (float -inf), ptr %i.ln, align 16, !noalias !362
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  store <4 x float> splat (float +inf), ptr %i.lo, align 64, !noalias !362
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 48
  store <4 x float> splat (float -inf), ptr %i.lp, align 16, !noalias !362
  store <4 x float> splat (float +inf), ptr %i.ll, align 32, !noalias !362
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store <4 x float> splat (float -inf), ptr %i.lq, align 16, !noalias !362
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %i.lk
  store <2 x i64> zeroinitializer, ptr %i.lr, align 16, !noalias !362
  %i.ls = add nuw nsw i64 %.0.i36365, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ls, 32
  br i1 %exitcond.not.1, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit37, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit, !llvm.loop !6

_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit37: ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ENS_7EmptyTyE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5, !noalias !362
  %i.lt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 3 uses
  %i.lv = uitofp i64 %i.f to float
  %i.lw = tail call float @llvm.fmuladd.f32(float %i.lv, float 5.000000e-02, float 4.000000e+00)
  %i.lx = fptoui float %i.lw to i64
  %i.ly = tail call noundef i64 @llvm.umin.i64(i64 %i.lx, i64 32) ; 2 uses
  store i64 %i.ly, ptr %13, align 16, !noalias !362
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.mb = load <4 x float>, ptr %i.ma, align 16, !noalias !363
  %i.mc = load <4 x float>, ptr %i.lz, align 16, !noalias !363 ; 2 uses
  %i.md = fsub <4 x float> %i.mb, %i.mc
  %i.me = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float 1.000000e-34), <4 x float> %i.md) ; 2 uses
  %i.mf = fcmp ugt <4 x float> %i.me, splat (float 1.000000e-34)
  %i.mg = uitofp nneg i64 %i.ly to float
  %i.mh = fmul nnan float %i.mg, 9.900000e-01
  %i.mi = insertelement <4 x float> poison, float %i.mh, i64 0
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mk = fdiv <4 x float> %i.mj, %i.me
  %i.ml = select <4 x i1> %i.mf, <4 x float> %i.mk, <4 x float> zeroinitializer
  store <4 x float> %i.ml, ptr %i.lu, align 16, !noalias !362
  store <4 x float> %i.mc, ptr %i.lt, align 16, !noalias !362
  %i.mm = load ptr, ptr %1, align 8, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.mm, ptr %i.a, align 8, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5, !noalias !362
  store ptr %i.a, ptr %6, align 8, !noalias !362
  %i.mn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %13, ptr %i.mn, align 8, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5, !noalias !362
  store ptr %13, ptr %7, align 8, !noalias !362
  %i.mo = add i64 %i.f, 1023
  %i.mp = lshr i64 %i.mo, 10                      ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 1
  br i1 %i.mq, label %bb.o, label %bb.p, !prof !27

bb.o:                                             ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5, !noalias !364
  store i64 %i.e, ptr %4, align 8, !noalias !364
  %i.mr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.d, ptr %i.mr, align 8, !noalias !364
  call void @_ZZN6embree22bin_serial_or_parallelILb1ENS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_ENKUlRKNS_5rangeImEEE_clESL_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinInfoT") align 64 %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5, !noalias !364
  br label %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit

bb.p:                                             ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE5clearEv.exit37
  call void @_ZN6embree24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_SR_RKSB_SI_RSE_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinInfoT") align 64 %5, i64 noundef %i.mp, i64 noundef %i.e, i64 noundef %i.d, i64 noundef 1024, ptr noundef nonnull align 64 dereferenceable(3584) %12, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %7), !noalias !362
  br label %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit

_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit: ; preds = %bb.o, %bb.p
  %i.ms = call noundef nonnull align 64 dereferenceable(3584) ptr @_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEaSEOS6_(ptr noundef nonnull align 64 dereferenceable(3584) %12, ptr noundef nonnull align 64 dereferenceable(3584) %5), !noalias !362 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5, !noalias !365
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5, !noalias !365
  %i.mt = load i64, ptr %13, align 16, !noalias !365 ; 4 uses
  %.047.i366 = add i64 %i.mt, -1                  ; 2 uses
  %.not.i367 = icmp eq i64 %.047.i366, 0
  br i1 %.not.i367, label %.preheader363, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.mu = trunc i64 %3 to i32                     ; 3 uses
  %notmask.i = shl nsw i32 -1, %i.mu
  %i.mv = xor i32 %notmask.i, -1
  %i.mw = insertelement <4 x i32> poison, i32 %i.mv, i64 0
  %i.mx = shufflevector <4 x i32> %i.mw, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.my = icmp ugt i64 %i.mt, 1
  br i1 %i.my, label %.lr.ph386, label %.preheader363

.lr.ph:                                           ; preds = %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit, %.lr.ph
  %.047.i374 = phi i64 [ %.047.i, %.lr.ph ], [ %.047.i366, %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit ] ; 5 uses
  %i.mz = phi <4 x i32> [ %i.nc, %.lr.ph ], [ zeroinitializer, %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit ]
  %.sroa.10115.0373 = phi <4 x float> [ %i.nj, %.lr.ph ], [ splat (float -inf), %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit ]
  %.sroa.0111.0372 = phi <4 x float> [ %i.ng, %.lr.ph ], [ splat (float +inf), %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit ]
  %.sroa.10107.0371 = phi <4 x float> [ %i.nr, %.lr.ph ], [ splat (float -inf), %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit ]
  %.sroa.0103.0370 = phi <4 x float> [ %i.no, %.lr.ph ], [ splat (float +inf), %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit ]
  %.sroa.10.0369 = phi <4 x float> [ %i.ny, %.lr.ph ], [ splat (float -inf), %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit ]
  %.sroa.096.0368 = phi <4 x float> [ %i.nv, %.lr.ph ], [ splat (float +inf), %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit ]
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %.047.i374
  %i.nb = load <4 x i32>, ptr %i.na, align 16, !noalias !366
  %i.nc = add <4 x i32> %i.nb, %i.mz              ; 2 uses
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.047.i374
  store <4 x i32> %i.nc, ptr %i.nd, align 16, !noalias !365
  %i.ne = getelementptr inbounds nuw [96 x i8], ptr %12, i64 %.047.i374 ; 6 uses
  %i.nf = load <4 x float>, ptr %i.ne, align 32, !noalias !367
  %i.ng = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0111.0372, <4 x float> %i.nf) ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %i.ni = load <4 x float>, ptr %i.nh, align 16, !noalias !368
  %i.nj = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10115.0373, <4 x float> %i.ni) ; 2 uses
  %i.nk = fsub <4 x float> %i.nj, %i.ng           ; 3 uses
  %i.nl = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.047.i374
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.nn = load <4 x float>, ptr %i.nm, align 32, !noalias !369
  %i.no = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0103.0370, <4 x float> %i.nn) ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.ne, i64 48
  %i.nq = load <4 x float>, ptr %i.np, align 16, !noalias !370
  %i.nr = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10107.0371, <4 x float> %i.nq) ; 2 uses
  %i.ns = fsub <4 x float> %i.nr, %i.no           ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ne, i64 64
  %i.nu = load <4 x float>, ptr %i.nt, align 32, !noalias !371
  %i.nv = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.096.0368, <4 x float> %i.nu) ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ne, i64 80
  %i.nx = load <4 x float>, ptr %i.nw, align 16, !noalias !372
  %i.ny = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.0369, <4 x float> %i.nx) ; 2 uses
  %i.nz = fsub <4 x float> %i.ny, %i.nv           ; 5 uses
  %i.oa = shufflevector <4 x float> %i.nk, <4 x float> %i.ns, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.ob = insertelement <4 x float> %i.oa, float -0.000000e+00, i64 3
  %i.oc = shufflevector <4 x float> %i.ob, <4 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.od = shufflevector <4 x float> %i.nk, <4 x float> %i.ns, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison> ; 2 uses
  %i.oe = insertelement <4 x float> %i.od, float -0.000000e+00, i64 3
  %i.of = shufflevector <4 x float> %i.oe, <4 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.og = fadd <4 x float> %i.oc, %i.of
  %i.oh = insertelement <4 x float> %i.oa, float 0.000000e+00, i64 3
  %i.oi = shufflevector <4 x float> %i.oh, <4 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.oj = insertelement <4 x float> %i.od, float 1.000000e+00, i64 3
  %i.ok = shufflevector <4 x float> %i.oj, <4 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ol = fmul <4 x float> %i.oi, %i.ok
  %i.om = shufflevector <4 x float> %i.nk, <4 x float> %i.ns, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.on = insertelement <4 x float> %i.om, float 0.000000e+00, i64 3
  %i.oo = shufflevector <4 x float> %i.on, <4 x float> %i.nz, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.op = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oo, <4 x float> %i.og, <4 x float> %i.ol)
  store <4 x float> %i.op, ptr %i.nl, align 16, !noalias !365
  %.047.i = add i64 %.047.i374, -1                ; 2 uses
  %.not.i = icmp eq i64 %.047.i, 0
  br i1 %.not.i, label %._crit_edge, label %.lr.ph, !llvm.loop !264

.preheader363:                                    ; preds = %.lr.ph386, %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit, %._crit_edge
  %.v376.lcssa = phi <4 x float> [ splat (float +inf), %._crit_edge ], [ splat (float +inf), %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit ], [ %.v, %.lr.ph386 ] ; 3 uses
  %.lcssa = phi <4 x i32> [ zeroinitializer, %._crit_edge ], [ zeroinitializer, %_ZN6embree15parallel_reduceImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_RKSB_SI_RSE_.exit ], [ %i.qx, %.lr.ph386 ] ; 3 uses
  %i.oq = load float, ptr %i.lu, align 16, !noalias !365
  %i.or = fcmp oeq float %i.oq, 0.000000e+00
  br i1 %i.or, label %bb.t, label %bb.q, !prof !29

.lr.ph386:                                        ; preds = %._crit_edge, %.lr.ph386
  %.048.i384 = phi i64 [ %i.qy, %.lr.ph386 ], [ 1, %._crit_edge ] ; 4 uses
  %i.os = phi <4 x i32> [ %i.qx, %.lr.ph386 ], [ zeroinitializer, %._crit_edge ]
  %.sroa.066.0.load91383 = phi <4 x float> [ %.v, %.lr.ph386 ], [ splat (float +inf), %._crit_edge ] ; 2 uses
  %i.ot = phi <4 x i32> [ %i.oy, %.lr.ph386 ], [ zeroinitializer, %._crit_edge ]
  %.sroa.10115.1382 = phi <4 x float> [ %i.pe, %.lr.ph386 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.0111.1381 = phi <4 x float> [ %i.pb, %.lr.ph386 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.10107.1380 = phi <4 x float> [ %i.pl, %.lr.ph386 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.0103.1379 = phi <4 x float> [ %i.pi, %.lr.ph386 ], [ splat (float +inf), %._crit_edge ]
  %.sroa.10.1378 = phi <4 x float> [ %i.ps, %.lr.ph386 ], [ splat (float -inf), %._crit_edge ]
  %.sroa.096.1377 = phi <4 x float> [ %i.pp, %.lr.ph386 ], [ splat (float +inf), %._crit_edge ]
  %i.ou = phi <4 x i32> [ %i.qz, %.lr.ph386 ], [ splat (i32 1), %._crit_edge ] ; 2 uses
  %i.ov = add i64 %.048.i384, -1                  ; 2 uses
  %i.ow = getelementptr inbounds nuw [16 x i8], ptr %i.lc, i64 %i.ov
  %i.ox = load <4 x i32>, ptr %i.ow, align 16, !noalias !373
  %i.oy = add <4 x i32> %i.ox, %i.ot              ; 2 uses
  %i.oz = getelementptr inbounds nuw [96 x i8], ptr %12, i64 %i.ov ; 6 uses
  %i.pa = load <4 x float>, ptr %i.oz, align 32, !noalias !374
  %i.pb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0111.1381, <4 x float> %i.pa) ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pd = load <4 x float>, ptr %i.pc, align 16, !noalias !375
  %i.pe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10115.1382, <4 x float> %i.pd) ; 2 uses
  %i.pf = fsub <4 x float> %i.pe, %i.pb           ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oz, i64 32
  %i.ph = load <4 x float>, ptr %i.pg, align 32, !noalias !376
  %i.pi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0103.1379, <4 x float> %i.ph) ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oz, i64 48
  %i.pk = load <4 x float>, ptr %i.pj, align 16, !noalias !377
  %i.pl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10107.1380, <4 x float> %i.pk) ; 2 uses
  %i.pm = fsub <4 x float> %i.pl, %i.pi           ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oz, i64 64
  %i.po = load <4 x float>, ptr %i.pn, align 32, !noalias !378
  %i.pp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.096.1377, <4 x float> %i.po) ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.oz, i64 80
  %i.pr = load <4 x float>, ptr %i.pq, align 16, !noalias !379
  %i.ps = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.10.1378, <4 x float> %i.pr) ; 2 uses
  %i.pt = fsub <4 x float> %i.ps, %i.pp           ; 3 uses
  %i.pu = shufflevector <4 x float> %i.pf, <4 x float> %i.pt, <4 x i32> <i32 1, i32 poison, i32 6, i32 5>
  %i.pv = shufflevector <4 x float> %i.pu, <4 x float> %i.pm, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.pw = shufflevector <4 x float> %i.pf, <4 x float> %i.pt, <4 x i32> <i32 2, i32 poison, i32 5, i32 6>
  %i.px = shufflevector <4 x float> %i.pw, <4 x float> %i.pm, <4 x i32> <i32 0, i32 6, i32 2, i32 3> ; 2 uses
  %i.py = fadd <4 x float> %i.pv, %i.px
  %i.pz = fmul <4 x float> %i.pv, %i.px
  %i.qa = shufflevector <4 x float> %i.pf, <4 x float> %i.pt, <4 x i32> <i32 0, i32 poison, i32 4, i32 4>
  %i.qb = shufflevector <4 x float> %i.qa, <4 x float> %i.pm, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.qc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qb, <4 x float> %i.py, <4 x float> %i.pz)
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %.048.i384
  %i.qe = load <4 x float>, ptr %i.qd, align 16, !noalias !365
  %i.qf = add <4 x i32> %i.oy, %i.mx
  %i.qg = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.qf, i32 %i.mu) ; 2 uses
  %i.qh = getelementptr inbounds nuw [16 x i8], ptr %11, i64 %.048.i384
  %i.qi = load <4 x i32>, ptr %i.qh, align 16, !noalias !380
  %i.qj = add <4 x i32> %i.qi, %i.mx
  %i.qk = call <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32> %i.qj, i32 %i.mu) ; 2 uses
  %isneg = icmp slt <4 x i32> %i.qg, zeroinitializer
  %i.ql = and <4 x i32> %i.qg, splat (i32 2147483647)
  %i.qm = uitofp nneg <4 x i32> %i.ql to <4 x float>
  %i.qn = select <4 x i1> %isneg, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.qo = fadd nnan <4 x float> %i.qn, %i.qm
  %isneg461 = icmp slt <4 x i32> %i.qk, zeroinitializer
  %i.qp = and <4 x i32> %i.qk, splat (i32 2147483647)
  %i.qq = uitofp nneg <4 x i32> %i.qp to <4 x float>
  %i.qr = select <4 x i1> %isneg461, <4 x float> splat (float f0x4F000000), <4 x float> zeroinitializer
  %i.qs = fadd nnan <4 x float> %i.qr, %i.qq
  %i.qt = fmul <4 x float> %i.qe, %i.qs
  %i.qu = fmul <4 x float> %i.qc, %i.qo
  %i.qv = fadd <4 x float> %i.qu, %i.qt           ; 2 uses
  %i.qw = fcmp uge <4 x float> %i.qv, %.sroa.066.0.load91383 ; 2 uses
  %i.qx = select <4 x i1> %i.qw, <4 x i32> %i.os, <4 x i32> %i.ou ; 2 uses
  %.v = select <4 x i1> %i.qw, <4 x float> %.sroa.066.0.load91383, <4 x float> %i.qv ; 2 uses
  %i.qy = add nuw i64 %.048.i384, 1               ; 2 uses
  %i.qz = add <4 x i32> %i.ou, splat (i32 1)
  %exitcond431.not = icmp eq i64 %i.qy, %i.mt
  br i1 %exitcond431.not, label %.preheader363, label %.lr.ph386, !llvm.loop !281

bb.q:                                             ; preds = %.preheader363
  %.sroa.0441.0.vec.extract = extractelement <4 x float> %.v376.lcssa, i64 0 ; 2 uses
  %i.ra = fcmp ueq float %.sroa.0441.0.vec.extract, +inf
  br i1 %i.ra, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0439.0.vec.extract = extractelement <4 x i32> %.lcssa, i64 0 ; 2 uses
  %.not54.i = icmp eq i32 %.sroa.0439.0.vec.extract, 0
  br i1 %.not54.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %.preheader363
  %.146.i = phi float [ +inf, %.preheader363 ], [ %.sroa.0441.0.vec.extract, %bb.s ], [ +inf, %bb.r ], [ +inf, %bb.q ] ; 4 uses
  %.144.i = phi i32 [ -1, %.preheader363 ], [ 0, %bb.s ], [ -1, %bb.r ], [ -1, %bb.q ] ; 3 uses
  %.1.i = phi i32 [ 0, %.preheader363 ], [ %.sroa.0439.0.vec.extract, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.rc = load float, ptr %i.rb, align 4, !noalias !365
  %i.rd = fcmp oeq float %i.rc, 0.000000e+00
  br i1 %i.rd, label %bb.x, label %bb.u, !prof !29

bb.u:                                             ; preds = %bb.t
  %.sroa.0441.4.vec.extract = extractelement <4 x float> %.v376.lcssa, i64 1 ; 2 uses
  %i.re = fcmp olt float %.sroa.0441.4.vec.extract, %.146.i
  br i1 %i.re, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.sroa.0439.4.vec.extract = extractelement <4 x i32> %.lcssa, i64 1 ; 2 uses
  %.not54.i.1 = icmp eq i32 %.sroa.0439.4.vec.extract, 0
  br i1 %.not54.i.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.146.i.1 = phi float [ %.146.i, %bb.t ], [ %.sroa.0441.4.vec.extract, %bb.w ], [ %.146.i, %bb.v ], [ %.146.i, %bb.u ] ; 4 uses
  %.144.i.1 = phi i32 [ %.144.i, %bb.t ], [ 1, %bb.w ], [ %.144.i, %bb.v ], [ %.144.i, %bb.u ] ; 3 uses
  %.1.i.1 = phi i32 [ %.1.i, %bb.t ], [ %.sroa.0439.4.vec.extract, %bb.w ], [ %.1.i, %bb.v ], [ %.1.i, %bb.u ] ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.rg = load float, ptr %i.rf, align 8, !noalias !365
  %i.rh = fcmp oeq float %i.rg, 0.000000e+00
  br i1 %i.rh, label %_ZNK6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.y, !prof !29

bb.y:                                             ; preds = %bb.x
  %.sroa.0441.8.vec.extract = extractelement <4 x float> %.v376.lcssa, i64 2 ; 2 uses
  %i.ri = fcmp olt float %.sroa.0441.8.vec.extract, %.146.i.1
  br i1 %i.ri, label %bb.z, label %_ZNK6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

bb.z:                                             ; preds = %bb.y
  %.sroa.0439.8.vec.extract = extractelement <4 x i32> %.lcssa, i64 2 ; 2 uses
  %.not54.i.2 = icmp eq i32 %.sroa.0439.8.vec.extract, 0
  br i1 %.not54.i.2, label %_ZNK6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br label %_ZNK6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit

_ZNK6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %.146.i.2 = phi float [ %.146.i.1, %bb.x ], [ %.sroa.0441.8.vec.extract, %bb.aa ], [ %.146.i.1, %bb.z ], [ %.146.i.1, %bb.y ]
  %.144.i.2 = phi i32 [ %.144.i.1, %bb.x ], [ 2, %bb.aa ], [ %.144.i.1, %bb.z ], [ %.144.i.1, %bb.y ]
  %.1.i.2 = phi i32 [ %.1.i.1, %bb.x ], [ %.sroa.0439.8.vec.extract, %bb.aa ], [ %.1.i.1, %bb.z ], [ %.1.i.1, %bb.y ]
  store float %.146.i.2, ptr %0, align 16
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.144.i.2, ptr %i.rj, align 4
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.1.i.2, ptr %i.rk, align 8
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.rl, align 4
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.mt, ptr %i.rm, align 16
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ro = load <4 x float>, ptr %i.lt, align 16
  store <4 x float> %i.ro, ptr %i.rn, align 16
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rq = load <4 x float>, ptr %i.lu, align 16
  store <4 x float> %i.rq, ptr %i.rp, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5, !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5, !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5, !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5, !noalias !362
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit, %_ZNK6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEE4bestERKNS0_10BinMappingILm32EEEm.exit34
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(80) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load i64, ptr %i.a, align 16             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not.i.i = icmp samesign eq i64 %i.b, %i.d
  br i1 %.not.i.i, label %_ZSt4sortIPN6embree7PrimRefEEvT_S3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8                ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx ; 2 uses
  %.idx3 = shl nuw nsw i64 %i.b, 5                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx3 ; 2 uses
  %gepdiff = sub nsw i64 %.idx, %.idx3
  %i.h = ashr exact i64 %gepdiff, 5
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = shl nuw nsw i64 %i.i, 1
  %i.k = xor i64 %i.j, 126
  tail call void @_ZSt16__introsort_loopIPN6embree7PrimRefElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.g, ptr noundef %i.f, i64 noundef %i.k)
  tail call void @_ZSt22__final_insertion_sortIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %i.g, ptr noundef %i.f)
  br label %_ZSt4sortIPN6embree7PrimRefEEvT_S3_.exit

_ZSt4sortIPN6embree7PrimRefEEvT_S3_.exit:         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_10AABBNode_tISC_Li4EE7Create2ENSH_4Set3EZNS0_18BVHNBuilderVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E15createLargeLeafERKS7_SE_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.embree::Lock", align 8      ; 6 uses
  %4 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca [16 x %"struct.embree::NodeRefPtr"], align 16 ; 10 uses
  %i.c = ptrtoaddr ptr %7 to i64
  %8 = alloca [16 x %"struct.embree::sse2::GeneralBVHBuilder::BuildRecordT"], align 16 ; 18 uses
  %i.d = load i64, ptr %1, align 16               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 48) #5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #25
          to label %bb.al unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.h) #5
  %i.m = load ptr, ptr %5, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %5, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread111: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.q) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn104 = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.l, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @__cxa_free_exception(ptr %i.h) #5
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = load i64, ptr %i.t, align 16
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i64, ptr %i.y, align 8              ; 4 uses
  %.not = icmp ugt i64 %i.x, %i.z
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !21, !align !22
  %i.ad = load ptr, ptr %i.aa, align 8
  %i.ae = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !381
  br label %bb.ak

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %8, ptr noundef nonnull align 16 dereferenceable(96) %1, i64 9, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load <4 x float>, ptr %i.aj, align 16
  store <4 x float> %i.ak, ptr %i.ai, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.an = load <4 x float>, ptr %i.al, align 16
  store <4 x float> %i.an, ptr %i.am, align 16
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load <4 x float>, ptr %i.ap, align 16
  store <4 x float> %i.aq, ptr %i.ao, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.at = load <4 x float>, ptr %i.ar, align 16
  store <4 x float> %i.at, ptr %i.as, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.au, ptr noundef nonnull align 16 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.av = add i64 %i.d, 1                         ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f, %.loopexit124
  %indvar = phi i64 [ 0, %bb.f ], [ %indvar.next, %.loopexit124 ] ; 2 uses
  %.054 = phi i64 [ 1, %bb.f ], [ %i.fn, %.loopexit124 ] ; 6 uses
  %xtraiter = and i64 %.054, 1
  %i.ax = icmp eq i64 %indvar, 0
  br i1 %i.ax, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.054, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.050134.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bv, %._crit_edge.unr-lcssa ] ; 2 uses
  %.051133.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ]
  %.052132.epil.init = phi i64 [ -1, %.lr.ph.preheader ], [ %.153.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod210 = trunc i64 %.054 to i1
  call void @llvm.assume(i1 %lcmp.mod210)
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %.050134.epil.init ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = load i64, ptr %i.az, align 16
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %.not64.epil = icmp ugt i64 %i.bd, %i.z
  %i.be = icmp ugt i64 %i.bd, %.051133.epil.init
  %spec.select.epil = select i1 %i.be, i64 %.050134.epil.init, i64 %.052132.epil.init
  %.153.epil = select i1 %.not64.epil, i64 %spec.select.epil, i64 %.052132.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.153.lcssa = phi i64 [ %.153.1, %._crit_edge.unr-lcssa ], [ %.153.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.bf = icmp eq i64 %.153.lcssa, -1
  br i1 %i.bf, label %bb.k, label %bb.j

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.050134 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bv, %bb.i ] ; 4 uses
  %.051133 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %bb.i ] ; 3 uses
  %.052132 = phi i64 [ -1, %.lr.ph.preheader.new ], [ %.153.1, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.bg = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %.050134 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 88
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = load i64, ptr %i.bh, align 16
  %i.bl = sub i64 %i.bj, %i.bk                    ; 3 uses
  %.not64 = icmp ugt i64 %i.bl, %i.z
  br i1 %.not64, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.bm = icmp ugt i64 %i.bl, %.051133
  %spec.select = select i1 %i.bm, i64 %.050134, i64 %.052132
  %spec.select120 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 %.051133)
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.g
  %.153 = phi i64 [ %spec.select, %bb.g ], [ %.052132, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %spec.select120, %bb.g ], [ %.051133, %.lr.ph ] ; 3 uses
  %i.bn = or disjoint i64 %.050134, 1             ; 2 uses
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %i.br = load i64, ptr %i.bq, align 8
  %i.bs = load i64, ptr %i.bp, align 16
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %.not64.1 = icmp ugt i64 %i.bt, %i.z
  br i1 %.not64.1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bu = icmp ugt i64 %i.bt, %.1
  %spec.select.1 = select i1 %i.bu, i64 %i.bn, i64 %.153
  %spec.select120.1 = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %.1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %.153.1 = phi i64 [ %spec.select.1, %bb.h ], [ %.153, %.lr.ph.1 ] ; 3 uses
  %.1.1 = phi i64 [ %spec.select120.1, %bb.h ], [ %.1, %.lr.ph.1 ] ; 2 uses
  %i.bv = add nuw i64 %.050134, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !382

bb.j:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %.153.lcssa ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.aw, align 8, !nonnull !21, !align !22
  %i.bz = load ptr, ptr %i.by, align 8            ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 80 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 16           ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  %i.cd = load i64, ptr %i.cc, align 8            ; 6 uses
  %i.ce = add i64 %i.cd, %i.cb
  %i.cf = lshr i64 %i.ce, 1                       ; 12 uses
  %i.cg = icmp ult i64 %i.cb, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.ch = sub nuw i64 %i.cf, %i.cb
  %.neg = add i64 %i.cb, 1
  %xtraiter211 = and i64 %i.ch, 1
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %i.cb ; 2 uses
  %i.cj = load <4 x float>, ptr %i.ci, align 16, !noalias !401 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cl = load <4 x float>, ptr %i.ck, align 16, !noalias !402 ; 2 uses
  %i.cm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.cj) ; 2 uses
  %i.cn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.cl) ; 2 uses
  %i.co = fadd <4 x float> %i.cj, %i.cl           ; 2 uses
  %i.cp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.co) ; 2 uses
  %i.cq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.co) ; 2 uses
  %i.cr = add nuw nsw i64 %i.cb, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa204.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.prol ]
  %.lcssa203.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.prol ]
  %.lcssa202.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.prol ]
  %.lcssa.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.cq, %.lr.ph.i.i.prol ]
  %.02166.i.i.unr = phi i64 [ %i.cb, %.lr.ph.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.prol ]
  %.sroa.028.065.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.prol ]
  %.sroa.630.064.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.prol ]
  %.sroa.1032.063.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.prol ]
  %.sroa.1434.062.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.preheader ], [ %i.cq, %.lr.ph.i.i.prol ]
  %i.cs = icmp eq i64 %i.cf, %.neg
  br i1 %i.cs, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.j
  %.sroa.1434.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %bb.j ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.dy, %.lr.ph.i.i ]
  %.sroa.1032.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %bb.j ], [ %.lcssa202.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.dx, %.lr.ph.i.i ]
  %.sroa.630.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %bb.j ], [ %.lcssa203.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.dv, %.lr.ph.i.i ]
  %.sroa.028.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %bb.j ], [ %.lcssa204.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.du, %.lr.ph.i.i ]
  %i.ct = icmp ult i64 %i.cf, %i.cd
  br i1 %i.ct, label %.lr.ph76.i.i.preheader, label %.loopexit124

.lr.ph76.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.cu = sub nuw i64 %i.cd, %i.cf
  %.neg222 = add nuw i64 %i.cf, 1
  %xtraiter213 = and i64 %i.cu, 1
  %lcmp.mod214.not = icmp eq i64 %xtraiter213, 0
  br i1 %lcmp.mod214.not, label %.lr.ph76.i.i.prol.loopexit, label %.lr.ph76.i.i.prol

.lr.ph76.i.i.prol:                                ; preds = %.lr.ph76.i.i.preheader
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %i.cf ; 2 uses
  %i.cw = load <4 x float>, ptr %i.cv, align 16, !noalias !403 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load <4 x float>, ptr %i.cx, align 16, !noalias !404 ; 2 uses
  %i.cz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.cw) ; 2 uses
  %i.da = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.cy) ; 2 uses
  %i.db = fadd <4 x float> %i.cw, %i.cy           ; 2 uses
  %i.dc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.db) ; 2 uses
  %i.dd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.db) ; 2 uses
  %i.de = add nuw i64 %i.cf, 1
  br label %.lr.ph76.i.i.prol.loopexit

.lr.ph76.i.i.prol.loopexit:                       ; preds = %.lr.ph76.i.i.prol, %.lr.ph76.i.i.preheader
  %.lcssa208.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.cz, %.lr.ph76.i.i.prol ]
  %.lcssa207.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.da, %.lr.ph76.i.i.prol ]
  %.lcssa206.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.dc, %.lr.ph76.i.i.prol ]
  %.lcssa205.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.dd, %.lr.ph76.i.i.prol ]
  %.074.i.i.unr = phi i64 [ %i.cf, %.lr.ph76.i.i.preheader ], [ %i.de, %.lr.ph76.i.i.prol ]
  %.sroa.0.073.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i.preheader ], [ %i.cz, %.lr.ph76.i.i.prol ]
  %.sroa.6.072.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i.preheader ], [ %i.da, %.lr.ph76.i.i.prol ]
  %.sroa.10.071.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i.preheader ], [ %i.dc, %.lr.ph76.i.i.prol ]
  %.sroa.14.070.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i.preheader ], [ %i.dd, %.lr.ph76.i.i.prol ]
  %i.df = icmp eq i64 %i.cd, %.neg222
  br i1 %i.df, label %.loopexit124, label %.lr.ph76.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02166.i.i = phi i64 [ %i.dz, %.lr.ph.i.i ], [ %.02166.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.sroa.028.065.i.i = phi <4 x float> [ %i.du, %.lr.ph.i.i ], [ %.sroa.028.065.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.630.064.i.i = phi <4 x float> [ %i.dv, %.lr.ph.i.i ], [ %.sroa.630.064.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.1032.063.i.i = phi <4 x float> [ %i.dx, %.lr.ph.i.i ], [ %.sroa.1032.063.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.1434.062.i.i = phi <4 x float> [ %i.dy, %.lr.ph.i.i ], [ %.sroa.1434.062.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %.02166.i.i ; 2 uses
  %i.dh = load <4 x float>, ptr %i.dg, align 16, !noalias !401 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load <4 x float>, ptr %i.di, align 16, !noalias !402 ; 2 uses
  %i.dk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.028.065.i.i, <4 x float> %i.dh)
  %i.dl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.630.064.i.i, <4 x float> %i.dj)
  %i.dm = fadd <4 x float> %i.dh, %i.dj           ; 2 uses
  %i.dn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1032.063.i.i, <4 x float> %i.dm)
  %i.do = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1434.062.i.i, <4 x float> %i.dm)
  %i.dp = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %.02166.i.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load <4 x float>, ptr %i.dq, align 16, !noalias !401 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dt = load <4 x float>, ptr %i.ds, align 16, !noalias !402 ; 2 uses
  %i.du = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dk, <4 x float> %i.dr) ; 2 uses
  %i.dv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dl, <4 x float> %i.dt) ; 2 uses
  %i.dw = fadd <4 x float> %i.dr, %i.dt           ; 2 uses
  %i.dx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dn, <4 x float> %i.dw) ; 2 uses
  %i.dy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.do, <4 x float> %i.dw) ; 2 uses
  %i.dz = add nuw nsw i64 %.02166.i.i, 2          ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.dz, %i.cf
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph76.i.i:                                     ; preds = %.lr.ph76.i.i.prol.loopexit, %.lr.ph76.i.i
  %.074.i.i = phi i64 [ %i.et, %.lr.ph76.i.i ], [ %.074.i.i.unr, %.lr.ph76.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.073.i.i = phi <4 x float> [ %i.eo, %.lr.ph76.i.i ], [ %.sroa.0.073.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %.sroa.6.072.i.i = phi <4 x float> [ %i.ep, %.lr.ph76.i.i ], [ %.sroa.6.072.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %.sroa.10.071.i.i = phi <4 x float> [ %i.er, %.lr.ph76.i.i ], [ %.sroa.10.071.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %.sroa.14.070.i.i = phi <4 x float> [ %i.es, %.lr.ph76.i.i ], [ %.sroa.14.070.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %.074.i.i ; 2 uses
  %i.eb = load <4 x float>, ptr %i.ea, align 16, !noalias !403 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ed = load <4 x float>, ptr %i.ec, align 16, !noalias !404 ; 2 uses
  %i.ee = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.073.i.i, <4 x float> %i.eb)
  %i.ef = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.072.i.i, <4 x float> %i.ed)
  %i.eg = fadd <4 x float> %i.eb, %i.ed           ; 2 uses
  %i.eh = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.071.i.i, <4 x float> %i.eg)
  %i.ei = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.070.i.i, <4 x float> %i.eg)
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %.074.i.i ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load <4 x float>, ptr %i.ek, align 16, !noalias !403 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  %i.en = load <4 x float>, ptr %i.em, align 16, !noalias !404 ; 2 uses
  %i.eo = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ee, <4 x float> %i.el) ; 2 uses
  %i.ep = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ef, <4 x float> %i.en) ; 2 uses
  %i.eq = fadd <4 x float> %i.el, %i.en           ; 2 uses
  %i.er = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eh, <4 x float> %i.eq) ; 2 uses
  %i.es = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ei, <4 x float> %i.eq) ; 2 uses
  %i.et = add nuw i64 %.074.i.i, 2                ; 2 uses
  %exitcond89.not.i.i.1 = icmp eq i64 %i.et, %i.cd
  br i1 %exitcond89.not.i.i.1, label %.loopexit124, label %.lr.ph76.i.i, !llvm.loop !1

.loopexit124:                                     ; preds = %.lr.ph76.i.i.prol.loopexit, %.lr.ph76.i.i, %._crit_edge.i.i
  %.sroa.14.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %._crit_edge.i.i ], [ %.lcssa205.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.es, %.lr.ph76.i.i ]
  %.sroa.10.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %._crit_edge.i.i ], [ %.lcssa206.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.er, %.lr.ph76.i.i ]
  %.sroa.6.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %._crit_edge.i.i ], [ %.lcssa207.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.ep, %.lr.ph76.i.i ]
  %.sroa.0.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %._crit_edge.i.i ], [ %.lcssa208.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.eo, %.lr.ph76.i.i ]
  %i.eu = getelementptr [96 x i8], ptr %8, i64 %.054 ; 16 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 -96    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bw, ptr noundef nonnull align 16 dereferenceable(96) %i.ev, i64 9, i1 false)
  %i.ew = getelementptr i8, ptr %i.eu, i64 -80    ; 2 uses
  %i.ex = load <4 x float>, ptr %i.ew, align 16
  store <4 x float> %i.ex, ptr %i.bx, align 16
  %i.ey = getelementptr i8, ptr %i.eu, i64 -64    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.fa = load <4 x float>, ptr %i.ey, align 16
  store <4 x float> %i.fa, ptr %i.ez, align 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.fc = getelementptr i8, ptr %i.eu, i64 -48    ; 2 uses
  %i.fd = load <4 x float>, ptr %i.fc, align 16
  store <4 x float> %i.fd, ptr %i.fb, align 16
  %i.fe = getelementptr i8, ptr %i.eu, i64 -32    ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.fg = load <4 x float>, ptr %i.fe, align 16
  store <4 x float> %i.fg, ptr %i.ff, align 16
  %i.fh = getelementptr i8, ptr %i.eu, i64 -16    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ca, ptr noundef nonnull align 16 dereferenceable(16) %i.fh, i64 16, i1 false)
  store i64 %i.av, ptr %i.ev, align 16
  %.sroa.482.0..sroa_idx = getelementptr i8, ptr %i.eu, i64 -88
  store i8 0, ptr %.sroa.482.0..sroa_idx, align 8
  store <4 x float> %.sroa.028.0.lcssa.i.i, ptr %i.ew, align 16
  store <4 x float> %.sroa.630.0.lcssa.i.i, ptr %i.ey, align 16
  store <4 x float> %.sroa.1032.0.lcssa.i.i, ptr %i.fc, align 16
  store <4 x float> %.sroa.1434.0.lcssa.i.i, ptr %i.fe, align 16
  store i64 %i.cb, ptr %i.fh, align 16
  %.sroa.2089.80..sroa_idx = getelementptr i8, ptr %i.eu, i64 -8
  store i64 %i.cf, ptr %.sroa.2089.80..sroa_idx, align 8
  store i64 %i.av, ptr %i.eu, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <4 x float> %.sroa.0.0.lcssa.i.i, ptr %i.fi, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store <4 x float> %.sroa.6.0.lcssa.i.i, ptr %i.fj, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  store <4 x float> %.sroa.10.0.lcssa.i.i, ptr %i.fk, align 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  store <4 x float> %.sroa.14.0.lcssa.i.i, ptr %i.fl, align 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 80
  store i64 %i.cf, ptr %i.fm, align 16
  %.sroa.20.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 88
  store i64 %i.cd, ptr %.sroa.20.80..sroa_idx, align 8
  %i.fn = add nuw i64 %.054, 1                    ; 3 uses
  %i.fo = load i64, ptr %0, align 8
  %i.fp = icmp ult i64 %i.fn, %i.fo
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fp, label %.lr.ph.preheader, label %bb.k, !llvm.loop !395

bb.k:                                             ; preds = %._crit_edge, %.loopexit124
  %.155117 = phi i64 [ %i.fn, %.loopexit124 ], [ %.054, %._crit_edge ] ; 12 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fr = load i64, ptr %i.fq, align 8            ; 4 uses
  %i.fs = icmp ugt i64 %i.x, %i.fr
  br i1 %i.fs, label %.lr.ph136.preheader, label %.loopexit, !prof !29

.lr.ph136.preheader:                              ; preds = %bb.k
  %xtraiter215 = and i64 %.155117, 1
  %i.ft = icmp eq i64 %.155117, 1
  br i1 %i.ft, label %.lr.ph136.epil.preheader, label %.lr.ph136.preheader.new

.lr.ph136.preheader.new:                          ; preds = %.lr.ph136.preheader
  %unroll_iter218 = and i64 %.155117, -2
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136, %.lr.ph136.preheader.new
  %.048135 = phi i64 [ 0, %.lr.ph136.preheader.new ], [ %i.gm, %.lr.ph136 ] ; 3 uses
  %niter219 = phi i64 [ 0, %.lr.ph136.preheader.new ], [ %niter219.next.1, %.lr.ph136 ]
  %i.fu = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %.048135 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 88
  %i.fx = load i64, ptr %i.fw, align 8
  %i.fy = load i64, ptr %i.fv, align 16
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = icmp ule i64 %i.fz, %i.fr
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gc = zext i1 %i.ga to i8
  store i8 %i.gc, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %.048135 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 176
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 184
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = load i64, ptr %i.ge, align 16
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = icmp ule i64 %i.gi, %i.fr
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 104
  %i.gl = zext i1 %i.gj to i8
  store i8 %i.gl, ptr %i.gk, align 8
  %i.gm = add nuw i64 %.048135, 2                 ; 2 uses
  %niter219.next.1 = add nuw i64 %niter219, 2     ; 2 uses
  %niter219.ncmp.1 = icmp eq i64 %niter219.next.1, %unroll_iter218
  br i1 %niter219.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph136, !llvm.loop !396

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph136
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.loopexit, label %.lr.ph136.epil.preheader

.lr.ph136.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph136.preheader
  %.048135.epil.init = phi i64 [ 0, %.lr.ph136.preheader ], [ %i.gm, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod217 = trunc i64 %.155117 to i1
  call void @llvm.assume(i1 %lcmp.mod217)
  %i.gn = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %.048135.epil.init ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = load i64, ptr %i.go, align 16
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = icmp ule i64 %i.gs, %i.fr
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gv = zext i1 %i.gt to i8
  store i8 %i.gv, ptr %i.gu, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph136.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.k
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8            ; 9 uses
  %i.gy = load ptr, ptr %2, align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 128, ptr %i.a, align 8
  %i.gz = load ptr, ptr %i.gx, align 64           ; 18 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 6 uses
  %i.hb = load atomic ptr, ptr %i.ha seq_cst, align 8
  %i.hc = icmp eq ptr %i.hb, %i.gy
  br i1 %i.hc, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  store ptr %i.gz, ptr %4, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 1, ptr %i.hd, align 8
  tail call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.gz)
  %i.he = load atomic ptr, ptr %i.ha seq_cst, align 8
  %.not.i68 = icmp eq ptr %i.he, null
  br i1 %.not.i68, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 104
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 168
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = add i64 %i.hi, %i.hg
  %i.hk = load atomic ptr, ptr %i.ha seq_cst, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 280
  %i.hm = atomicrmw add ptr %i.hl, i64 %i.hj seq_cst, align 8 ; 0 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gz, i64 88
  %i.ho = load i64, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 80
  %i.hq = load i64, ptr %i.hp, align 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gz, i64 152
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gz, i64 144
  %i.hu = load i64, ptr %i.ht, align 16
  %i.hv = add i64 %i.ho, %i.hs
  %i.hw = add i64 %i.hq, %i.hu
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = load atomic ptr, ptr %i.ha seq_cst, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 288
  %i.ia = atomicrmw add ptr %i.hz, i64 %i.hx seq_cst, align 8 ; 0 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gz, i64 112
  %i.ic = load i64, ptr %i.ib, align 16
  %i.id = getelementptr inbounds nuw i8, ptr %i.gz, i64 176
  %i.ie = load i64, ptr %i.id, align 16
  %i.if = add i64 %i.ie, %i.ic
  %i.ig = load atomic ptr, ptr %i.ha seq_cst, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 296
  %i.ii = atomicrmw add ptr %i.ih, i64 %i.if seq_cst, align 8 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit74
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body69

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body69
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body70, %.body69 ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread111 ], [ %.pn104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

.body69:                                          ; preds = %bb.v, %bb.n
  %eh.lpad-body70 = phi { ptr, i32 } [ %i.ij, %bb.n ], [ %i.jq, %bb.v ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %common.resume

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gz, i64 72
  %.not.i72 = icmp eq ptr %i.gy, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ik, i8 0, i64 48, i1 false)
  br i1 %.not.i72, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.p

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.o
  %i.il = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.il, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit74

bb.p:                                             ; preds = %bb.o
  %i.im = getelementptr inbounds nuw i8, ptr %i.gz, i64 96
  %i.in = getelementptr inbounds nuw i8, ptr %i.gy, i64 16 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8
  store i64 %i.io, ptr %i.im, align 32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gz, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ip, i8 0, i64 48, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gz, i64 160
  %i.ir = load i64, ptr %i.in, align 8
  store i64 %i.ir, ptr %i.iq, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit74

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit74: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.p
  store atomic ptr %i.gy, ptr %i.ha seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %3, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 1, ptr %i.is, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit74
  %i.it = getelementptr inbounds nuw i8, ptr %i.gy, i64 304 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gy, i64 312 ; 4 uses
  %i.iv = load ptr, ptr %i.iu, align 8            ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gy, i64 320 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8
  %.not.i76 = icmp eq ptr %i.iv, %i.ix
  br i1 %.not.i76, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc
  store ptr %i.gz, ptr %i.iv, align 8
  %i.iy = load ptr, ptr %i.iu, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store ptr %i.iz, ptr %i.iu, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit

bb.r:                                             ; preds = %.noexc
  %i.ja = load ptr, ptr %i.it, align 8            ; 4 uses
  %i.jb = ptrtoint ptr %i.iv to i64
  %i.jc = ptrtoint ptr %i.ja to i64
  %i.jd = sub i64 %i.jb, %i.jc                    ; 5 uses
  %i.je = icmp eq i64 %i.jd, 9223372036854775800
  br i1 %i.je, label %bb.s, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc77 unwind label %bb.v

.noexc77:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.jf = ashr exact i64 %i.jd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jf, i64 1)
  %i.jg = add nsw i64 %.sroa.speculated.i.i.i, %i.jf ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.jf
  %i.ji = tail call i64 @llvm.umin.i64(i64 %i.jg, i64 1152921504606846975)
  %i.jj = select i1 %i.jh, i64 1152921504606846975, i64 %i.ji ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.jk = shl nuw nsw i64 %i.jj, 3
  %i.jl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #27
          to label %.noexc78 unwind label %bb.v   ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 %i.jd ; 2 uses
  store ptr %i.gz, ptr %i.jm, align 8
  %i.jn = icmp sgt i64 %i.jd, 0
  br i1 %i.jn, label %bb.t, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.t:                                             ; preds = %.noexc78
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jl, ptr align 8 %i.ja, i64 %i.jd, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.t, %.noexc78
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ja) #26
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.jl, ptr %i.it, align 8
  store ptr %i.jo, ptr %i.iu, align 8
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jj
  store ptr %i.jp, ptr %i.iw, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit

bb.v:                                             ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.s
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %.body69

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit: ; preds = %bb.q, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  tail call void @__clang_call_terminate(ptr %i.js) #28
  unreachable

bb.x:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.jt = load i8, ptr %i.hd, align 8, !range !26, !noundef !21
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.y, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit79

bb.y:                                             ; preds = %bb.x
  %i.jv = load ptr, ptr %4, align 8, !nonnull !21, !align !22
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jv)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit79 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  tail call void @__clang_call_terminate(ptr %i.jx) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit79:        ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit: ; preds = %.loopexit, %_ZN6embree4LockINS_8MutexSysEED2Ev.exit79
  %i.jy = load i64, ptr %i.a, align 8             ; 8 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gx, i64 40 ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8
  %i.kb = add i64 %i.ka, %i.jy
  store i64 %i.kb, ptr %i.jz, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 9 uses
  %i.kd = load i64, ptr %i.kc, align 16           ; 3 uses
  %i.ke = sub i64 0, %i.kd
  %i.kf = and i64 %i.ke, 15                       ; 2 uses
  %i.kg = add i64 %i.kd, %i.jy
  %i.kh = add i64 %i.kg, %i.kf                    ; 3 uses
  store i64 %i.kh, ptr %i.kc, align 16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gx, i64 24 ; 5 uses
  %i.kj = load i64, ptr %i.ki, align 8
  %.not.i = icmp ugt i64 %i.kh, %i.kj
  br i1 %.not.i, label %bb.ab, label %bb.aa, !prof !29

bb.aa:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gx, i64 48 ; 2 uses
  %i.kl = load i64, ptr %i.kk, align 16
  %i.km = add i64 %i.kl, %i.kf
  store i64 %i.km, ptr %i.kk, align 16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8
  %i.kp = sub i64 %i.kh, %i.jy
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kp
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader152

bb.ab:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit
  store i64 %i.kd, ptr %i.kc, align 16
  %i.kr = shl i64 %i.jy, 2
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gx, i64 32 ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 32           ; 2 uses
  %i.ku = icmp ugt i64 %i.kr, %i.kt
  br i1 %i.ku, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.kv = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.gy, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader152

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.kt, ptr %i.b, align 8
  %i.kw = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.gy, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  store ptr %i.kw, ptr %i.kx, align 8
  %i.ky = load i64, ptr %i.ki, align 8
  %i.kz = load i64, ptr %i.kc, align 16
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.gx, i64 48 ; 6 uses
  %i.lc = load i64, ptr %i.lb, align 16
  %i.ld = add i64 %i.lc, %i.la                    ; 2 uses
  store i64 %i.ld, ptr %i.lb, align 16
  %i.le = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.le, ptr %i.ki, align 8
  store i64 %i.jy, ptr %i.kc, align 16
  %.not23.i = icmp ugt i64 %i.jy, %i.le
  br i1 %.not23.i, label %bb.af, label %bb.ae, !prof !29

bb.ae:                                            ; preds = %bb.ad
  store i64 %i.ld, ptr %i.lb, align 16
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  store i64 0, ptr %i.kc, align 16
  %i.lf = load i64, ptr %i.ks, align 32
  store i64 %i.lf, ptr %i.b, align 8
  %i.lg = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.gy, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.lg, ptr %i.kx, align 8
  %i.lh = load i64, ptr %i.ki, align 8
  %i.li = load i64, ptr %i.kc, align 16
  %i.lj = sub i64 %i.lh, %i.li
  %i.lk = load i64, ptr %i.lb, align 16
  %i.ll = add i64 %i.lk, %i.lj                    ; 2 uses
  store i64 %i.ll, ptr %i.lb, align 16
  %i.lm = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.lm, ptr %i.ki, align 8
  store i64 %i.jy, ptr %i.kc, align 16
  %.not24.i = icmp ugt i64 %i.jy, %i.lm
  br i1 %.not24.i, label %bb.ah, label %bb.ag, !prof !29

bb.ag:                                            ; preds = %bb.af
  store i64 %i.ll, ptr %i.lb, align 16
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  store i64 0, ptr %i.kc, align 16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i67 = phi ptr [ %i.kw, %bb.ae ], [ %i.lg, %bb.ag ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader152

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader152: ; preds = %bb.ai, %bb.ac, %bb.aa
  %.1.i = phi ptr [ %i.kq, %bb.aa ], [ %i.kv, %bb.ac ], [ %.0.i67, %bb.ai ] ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ln = getelementptr inbounds nuw i8, ptr %.1.i, i64 96 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.ln, align 16
  %i.lo = getelementptr inbounds nuw i8, ptr %.1.i, i64 64 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.lo, align 16
  %i.lp = getelementptr inbounds nuw i8, ptr %.1.i, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.lp, align 16
  %i.lq = getelementptr inbounds nuw i8, ptr %.1.i, i64 112 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.lq, align 16
  %i.lr = getelementptr inbounds nuw i8, ptr %.1.i, i64 80 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.lr, align 16
  %i.ls = getelementptr inbounds nuw i8, ptr %.1.i, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.ls, align 16
  store <4 x i64> splat (i64 8), ptr %.1.i, align 16
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit: ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader152, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit
  %.0.i138 = phi i64 [ %i.me, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit ], [ 0, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.preheader152 ] ; 8 uses
  %i.lt = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %.0.i138 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load <4 x float>, ptr %i.lu, align 16   ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lx = load <4 x float>, ptr %i.lw, align 16   ; 3 uses
  %.sroa.090.0.vec.extract = extractelement <4 x float> %i.lv, i64 0
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %.0.i138
  store float %.sroa.090.0.vec.extract, ptr %i.ly, align 4
  %.sroa.090.4.vec.extract = extractelement <4 x float> %i.lv, i64 1
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.0.i138
  store float %.sroa.090.4.vec.extract, ptr %i.lz, align 4
  %.sroa.090.8.vec.extract = extractelement <4 x float> %i.lv, i64 2
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %.0.i138
  store float %.sroa.090.8.vec.extract, ptr %i.ma, align 4
  %.sroa.6.16.vec.extract = extractelement <4 x float> %i.lx, i64 0
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %.0.i138
  store float %.sroa.6.16.vec.extract, ptr %i.mb, align 4
  %.sroa.6.20.vec.extract = extractelement <4 x float> %i.lx, i64 1
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %.0.i138
  store float %.sroa.6.20.vec.extract, ptr %i.mc, align 4
  %.sroa.6.24.vec.extract = extractelement <4 x float> %i.lx, i64 2
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %.0.i138
  store float %.sroa.6.24.vec.extract, ptr %i.md, align 4
  %i.me = add nuw i64 %.0.i138, 1                 ; 2 uses
  %exitcond162.not = icmp eq i64 %i.me, %.155117
  br i1 %exitcond162.not, label %.lr.ph141.preheader, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit, !llvm.loop !5

.lr.ph141.preheader:                              ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit
  %i.mf = ptrtoint ptr %.1.i to i64               ; 2 uses
  br label %.lr.ph141

.lr.ph145.preheader:                              ; preds = %.lr.ph141
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.mh = load ptr, ptr %i.mg, align 8, !nonnull !21, !align !22 ; 2 uses
  %min.iters.check = icmp ult i64 %.155117, 8
  %i.mi = sub i64 %i.c, %i.mf
  %diff.check = icmp ugt i64 %i.mi, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph145.preheader201, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph145.preheader
  %n.vec = and i64 %.155117, -4                   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %index ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %index ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %wide.load = load <2 x i64>, ptr %i.mj, align 16
  %wide.load200 = load <2 x i64>, ptr %i.ml, align 16
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  store <2 x i64> %wide.load, ptr %i.mk, align 8
  store <2 x i64> %wide.load200, ptr %i.mm, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mn = icmp eq i64 %index.next, %n.vec
  br i1 %i.mn, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.155117, %n.vec
  br i1 %cmp.n, label %._crit_edge146, label %.lr.ph145.preheader201

.lr.ph145.preheader201:                           ; preds = %.lr.ph145.preheader, %middle.block
  %.0.i66143.ph = phi i64 [ 0, %.lr.ph145.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter220 = and i64 %.155117, 3              ; 2 uses
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %.lr.ph145.prol.loopexit, label %.lr.ph145.prol

.lr.ph145.prol:                                   ; preds = %.lr.ph145.preheader201, %.lr.ph145.prol
  %.0.i66143.prol = phi i64 [ %i.mr, %.lr.ph145.prol ], [ %.0.i66143.ph, %.lr.ph145.preheader201 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph145.prol ], [ 0, %.lr.ph145.preheader201 ]
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0.i66143.prol
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.0.i66143.prol
  %i.mq = load i64, ptr %i.mo, align 8
  store i64 %i.mq, ptr %i.mp, align 8
  %i.mr = add nuw i64 %.0.i66143.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter220
  br i1 %prol.iter.cmp.not, label %.lr.ph145.prol.loopexit, label %.lr.ph145.prol, !llvm.loop !398

.lr.ph145.prol.loopexit:                          ; preds = %.lr.ph145.prol, %.lr.ph145.preheader201
  %.0.i66143.unr = phi i64 [ %.0.i66143.ph, %.lr.ph145.preheader201 ], [ %i.mr, %.lr.ph145.prol ]
  %i.ms = sub i64 %.0.i66143.ph, %.155117
  %i.mt = icmp ugt i64 %i.ms, -4
  br i1 %i.mt, label %._crit_edge146, label %.lr.ph145

._crit_edge146:                                   ; preds = %.lr.ph145.prol.loopexit, %.lr.ph145, %middle.block
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mv = load i8, ptr %i.mu, align 8, !range !26, !noundef !21
  %i.mw = trunc nuw i8 %i.mv to i1
  br i1 %i.mw, label %bb.aj, label %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit, !prof !29

.lr.ph145:                                        ; preds = %.lr.ph145.prol.loopexit, %.lr.ph145
  %.0.i66143 = phi i64 [ %i.nm, %.lr.ph145 ], [ %.0.i66143.unr, %.lr.ph145.prol.loopexit ] ; 6 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0.i66143
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %.0.i66143
  %i.mz = load i64, ptr %i.mx, align 8
  store i64 %i.mz, ptr %i.my, align 8
  %i.na = add nuw i64 %.0.i66143, 1               ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.na
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %i.na
  %i.nd = load i64, ptr %i.nb, align 8
  store i64 %i.nd, ptr %i.nc, align 8
  %i.ne = add nuw i64 %.0.i66143, 2               ; 2 uses
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ne
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %i.ne
  %i.nh = load i64, ptr %i.nf, align 8
  store i64 %i.nh, ptr %i.ng, align 8
  %i.ni = add nuw i64 %.0.i66143, 3               ; 2 uses
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ni
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %i.ni
  %i.nl = load i64, ptr %i.nj, align 8
  store i64 %i.nl, ptr %i.nk, align 8
  %i.nm = add nuw i64 %.0.i66143, 4               ; 2 uses
  %exitcond164.not.3 = icmp eq i64 %i.nm, %.155117
  br i1 %exitcond164.not.3, label %._crit_edge146, label %.lr.ph145, !llvm.loop !399

bb.aj:                                            ; preds = %._crit_edge146
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.no = load ptr, ptr %i.nn, align 8
  %i.np = load i64, ptr %i.t, align 16            ; 2 uses
  %.idx122 = shl nuw nsw i64 %i.np, 5
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 %.idx122
  %i.nr = load i64, ptr %i.u, align 8
  %i.ns = sub nsw i64 %i.nr, %i.np
  %gepdiff = shl nsw i64 %i.ns, 5
  %i.nt = load ptr, ptr %i.mh, align 8
  call void @_ZN6embree13FastAllocator8addBlockEPvl(ptr noundef nonnull align 8 dereferenceable(376) %i.nt, ptr noundef %i.nq, i64 noundef %gepdiff)
  br label %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit

_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit: ; preds = %._crit_edge146, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.ak

.lr.ph141:                                        ; preds = %.lr.ph141.preheader, %.lr.ph141
  %.047140 = phi i64 [ %i.nx, %.lr.ph141 ], [ 0, %.lr.ph141.preheader ] ; 3 uses
  %i.nu = getelementptr inbounds nuw [96 x i8], ptr %8, i64 %.047140
  %i.nv = call i64 @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_10AABBNode_tISC_Li4EE7Create2ENSH_4Set3EZNS0_18BVHNBuilderVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E15createLargeLeafERKS7_SE_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.nu, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %2)
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.047140
  store i64 %i.nv, ptr %i.nw, align 8
  %i.nx = add nuw i64 %.047140, 1                 ; 2 uses
  %exitcond163.not = icmp eq i64 %i.nx, %.155117
  br i1 %exitcond163.not, label %.lr.ph145.preheader, label %.lr.ph141, !llvm.loop !400

bb.ak:                                            ; preds = %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit, %bb.e
  %.sroa.046.0 = phi i64 [ %i.ah, %bb.e ], [ %i.mf, %_ZNK6embree10AABBNode_tINS_10NodeRefPtrILi4EEELi4EE4Set3clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit ]
  ret i64 %.sroa.046.0

bb.al:                                            ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNKSt14default_deleteIN6embree13FastAllocator12ThreadLocal2EEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree8MutexSysD1Ev(ptr noundef nonnull align 64 dead_on_return(8) dereferenceable(192) %i.a) #5
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.a)
          to label %_ZNKSt14default_deleteIN6embree13FastAllocator12ThreadLocal2EEclEPS2_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #28
  unreachable

_ZNKSt14default_deleteIN6embree13FastAllocator12ThreadLocal2EEclEPS2_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !26, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !21, !align !22
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #28
  unreachable
}

declare noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef, i64 noundef) local_unnamed_addr #15

declare void @_ZN6embree8MutexSysC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZN6embree8MutexSysD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare void @_ZN6embree11alignedFreeEPv(ptr noundef) local_unnamed_addr #15

declare void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

declare void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrli.d(<4 x i32>, i32) #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 64 dereferenceable(3584) ptr @_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEaSEOS6_(ptr noundef nonnull align 64 dereferenceable(3584) %0, ptr noundef nonnull align 64 dereferenceable(3584) %1) local_unnamed_addr #19 comdat align 2 {
bb.a:
  br label %.preheader18

.preheader18:                                     ; preds = %bb.a, %.preheader18
  %.01520 = phi i64 [ 0, %bb.a ], [ %i.s, %.preheader18 ] ; 3 uses
  %i.a = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.01520 ; 6 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %.01520 ; 6 uses
  %i.c = load <4 x float>, ptr %i.b, align 32
  store <4 x float> %i.c, ptr %i.a, align 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load <4 x float>, ptr %i.d, align 16
  store <4 x float> %i.f, ptr %i.e, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load <4 x float>, ptr %i.h, align 32
  store <4 x float> %i.i, ptr %i.g, align 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = load <4 x float>, ptr %i.j, align 16
  store <4 x float> %i.l, ptr %i.k, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load <4 x float>, ptr %i.n, align 32
  store <4 x float> %i.o, ptr %i.m, align 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.r = load <4 x float>, ptr %i.p, align 16
  store <4 x float> %i.r, ptr %i.q, align 16
  %i.s = add nuw nsw i64 %.01520, 1               ; 2 uses
  %.not = icmp eq i64 %i.s, 32
  br i1 %.not, label %.preheader, label %.preheader18, !llvm.loop !8

.preheader:                                       ; preds = %.preheader18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.v = load <2 x i64>, ptr %i.u, align 64
  store <2 x i64> %i.v, ptr %i.t, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.y = load <2 x i64>, ptr %i.x, align 16
  store <2 x i64> %i.y, ptr %i.w, align 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 3104
  %i.ab = load <2 x i64>, ptr %i.aa, align 32
  store <2 x i64> %i.ab, ptr %i.z, align 32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3120
  %i.ae = load <2 x i64>, ptr %i.ad, align 16
  store <2 x i64> %i.ae, ptr %i.ac, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 3136
  %i.ah = load <2 x i64>, ptr %i.ag, align 64
  store <2 x i64> %i.ah, ptr %i.af, align 64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3152
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3152
  %i.ak = load <2 x i64>, ptr %i.aj, align 16
  store <2 x i64> %i.ak, ptr %i.ai, align 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 3168
  %i.an = load <2 x i64>, ptr %i.am, align 32
  store <2 x i64> %i.an, ptr %i.al, align 32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %i.aq = load <2 x i64>, ptr %i.ap, align 16
  store <2 x i64> %i.aq, ptr %i.ao, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 3200
  %i.at = load <2 x i64>, ptr %i.as, align 64
  store <2 x i64> %i.at, ptr %i.ar, align 64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3216
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 3216
  %i.aw = load <2 x i64>, ptr %i.av, align 16
  store <2 x i64> %i.aw, ptr %i.au, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 3232
  %i.az = load <2 x i64>, ptr %i.ay, align 32
  store <2 x i64> %i.az, ptr %i.ax, align 32
end_hunk_2
begin_hunk_3_@_ZN6embree24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ES7_NS1_10BinMappingILm32EEES3_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNS8_ILb1ES7_SA_S3_EEvSC_SF_mmmSI_EUlRKS7_SP_E_EESB_T_SR_SR_SR_RKSB_SI_RSE_:bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %13, i64 3200 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %13, i64 3216 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %13, i64 3232 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 3248 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %13, i64 3264 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 3280 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 3296 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 3312 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 3328 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 3344 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 3360 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 3376 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 3392 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 3408 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %13, i64 3424 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %13, i64 3440 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 3456 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %13, i64 3472 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %13, i64 3488 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %13, i64 3504 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %13, i64 3520 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 3536 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 3552 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 3568 ; 2 uses
  br label %bb.o

._crit_edge:                                      ; preds = %bb.r, %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ERKS6_.exit
  %.not.i11 = icmp eq ptr %.pre, %11
  br i1 %.not.i11, label %_ZN6embree10StackArrayINS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEELm8192EED2Ev.exit12, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef %.pre)
          to label %_ZN6embree10StackArrayINS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEELm8192EED2Ev.exit12 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #28
  unreachable

_ZN6embree10StackArrayINS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEELm8192EED2Ev.exit12: ; preds = %._crit_edge, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.r
  %i.fs = phi <2 x i64> [ %i.ei, %.lr.ph ], [ %i.lf, %bb.r ]
  %i.ft = phi <2 x i64> [ %i.ef, %.lr.ph ], [ %i.le, %bb.r ]
  %i.fu = phi <2 x i64> [ %i.ec, %.lr.ph ], [ %i.ld, %bb.r ]
  %i.fv = phi <2 x i64> [ %i.dz, %.lr.ph ], [ %i.lc, %bb.r ]
  %i.fw = phi <2 x i64> [ %i.dw, %.lr.ph ], [ %i.lb, %bb.r ]
  %i.fx = phi <2 x i64> [ %i.dt, %.lr.ph ], [ %i.la, %bb.r ]
  %i.fy = phi <2 x i64> [ %i.dq, %.lr.ph ], [ %i.kz, %bb.r ]
  %i.fz = phi <2 x i64> [ %i.dn, %.lr.ph ], [ %i.ky, %bb.r ]
  %i.ga = phi <2 x i64> [ %i.dk, %.lr.ph ], [ %i.kx, %bb.r ]
  %i.gb = phi <2 x i64> [ %i.dh, %.lr.ph ], [ %i.kw, %bb.r ]
  %i.gc = phi <2 x i64> [ %i.de, %.lr.ph ], [ %i.kv, %bb.r ]
  %i.gd = phi <2 x i64> [ %i.db, %.lr.ph ], [ %i.ku, %bb.r ]
  %i.ge = phi <2 x i64> [ %i.cy, %.lr.ph ], [ %i.kt, %bb.r ]
  %i.gf = phi <2 x i64> [ %i.cv, %.lr.ph ], [ %i.ks, %bb.r ]
  %i.gg = phi <2 x i64> [ %i.cs, %.lr.ph ], [ %i.kr, %bb.r ]
  %i.gh = phi <2 x i64> [ %i.cp, %.lr.ph ], [ %i.kq, %bb.r ]
  %i.gi = phi <2 x i64> [ %i.cm, %.lr.ph ], [ %i.kp, %bb.r ]
  %i.gj = phi <2 x i64> [ %i.cj, %.lr.ph ], [ %i.ko, %bb.r ]
  %i.gk = phi <2 x i64> [ %i.cg, %.lr.ph ], [ %i.kn, %bb.r ]
  %i.gl = phi <2 x i64> [ %i.cd, %.lr.ph ], [ %i.km, %bb.r ]
  %i.gm = phi <2 x i64> [ %i.ca, %.lr.ph ], [ %i.kl, %bb.r ]
  %i.gn = phi <2 x i64> [ %i.bx, %.lr.ph ], [ %i.kk, %bb.r ]
  %i.go = phi <2 x i64> [ %i.bu, %.lr.ph ], [ %i.kj, %bb.r ]
  %i.gp = phi <2 x i64> [ %i.br, %.lr.ph ], [ %i.ki, %bb.r ]
  %.025 = phi i64 [ 0, %.lr.ph ], [ %i.lg, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %i.gq = phi i64 [ 0, %bb.o ], [ %i.hj, %bb.p ]  ; 3 uses
  %i.gr = getelementptr inbounds nuw [96 x i8], ptr %13, i64 %i.gq ; 6 uses
  %i.gs = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.gq ; 6 uses
  %i.gt = load <4 x float>, ptr %i.gs, align 32, !noalias !519
  store <4 x float> %i.gt, ptr %i.gr, align 32, !alias.scope !519
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gw = load <4 x float>, ptr %i.gv, align 16, !noalias !519
  store <4 x float> %i.gw, ptr %i.gu, align 16, !alias.scope !519
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gz = load <4 x float>, ptr %i.gy, align 32, !noalias !519
  store <4 x float> %i.gz, ptr %i.gx, align 32, !alias.scope !519
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 48
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  %i.hc = load <4 x float>, ptr %i.hb, align 16, !noalias !519
  store <4 x float> %i.hc, ptr %i.ha, align 16, !alias.scope !519
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %i.gs, i64 64
  %i.hf = load <4 x float>, ptr %i.he, align 32, !noalias !519
  store <4 x float> %i.hf, ptr %i.hd, align 32, !alias.scope !519
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gr, i64 80
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gs, i64 80
  %i.hi = load <4 x float>, ptr %i.hh, align 16, !noalias !519
  store <4 x float> %i.hi, ptr %i.hg, align 16, !alias.scope !519
  %i.hj = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 32
  br i1 %i.hk, label %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ERKS6_.exit.i, label %bb.p

_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ERKS6_.exit.i: ; preds = %bb.p
  %i.hl = getelementptr inbounds nuw [3584 x i8], ptr %.pre, i64 %.025 ; 2 uses
  %i.hm = load <2 x i64>, ptr %i.ar, align 64, !noalias !519
  store <2 x i64> %i.hm, ptr %i.ek, align 64, !alias.scope !519
  %i.hn = load <2 x i64>, ptr %i.au, align 16, !noalias !519
  store <2 x i64> %i.hn, ptr %i.el, align 16, !alias.scope !519
  %i.ho = load <2 x i64>, ptr %i.ax, align 32, !noalias !519
  store <2 x i64> %i.ho, ptr %i.em, align 32, !alias.scope !519
  %i.hp = load <2 x i64>, ptr %i.ba, align 16, !noalias !519
  store <2 x i64> %i.hp, ptr %i.en, align 16, !alias.scope !519
  %i.hq = load <2 x i64>, ptr %i.bd, align 64, !noalias !519
  store <2 x i64> %i.hq, ptr %i.eo, align 64, !alias.scope !519
  %i.hr = load <2 x i64>, ptr %i.bg, align 16, !noalias !519
  store <2 x i64> %i.hr, ptr %i.ep, align 16, !alias.scope !519
  %i.hs = load <2 x i64>, ptr %i.bj, align 32, !noalias !519
  store <2 x i64> %i.hs, ptr %i.eq, align 32, !alias.scope !519
  %i.ht = load <2 x i64>, ptr %i.bm, align 16, !noalias !519
  store <2 x i64> %i.ht, ptr %i.er, align 16, !alias.scope !519
  store <2 x i64> %i.gp, ptr %i.es, align 64, !alias.scope !519
  store <2 x i64> %i.go, ptr %i.et, align 16, !alias.scope !519
  store <2 x i64> %i.gn, ptr %i.eu, align 32, !alias.scope !519
  store <2 x i64> %i.gm, ptr %i.ev, align 16, !alias.scope !519
  store <2 x i64> %i.gl, ptr %i.ew, align 64, !alias.scope !519
  store <2 x i64> %i.gk, ptr %i.ex, align 16, !alias.scope !519
  store <2 x i64> %i.gj, ptr %i.ey, align 32, !alias.scope !519
  store <2 x i64> %i.gi, ptr %i.ez, align 16, !alias.scope !519
  store <2 x i64> %i.gh, ptr %i.fa, align 64, !alias.scope !519
  store <2 x i64> %i.gg, ptr %i.fb, align 16, !alias.scope !519
  store <2 x i64> %i.gf, ptr %i.fc, align 32, !alias.scope !519
  store <2 x i64> %i.ge, ptr %i.fd, align 16, !alias.scope !519
  store <2 x i64> %i.gd, ptr %i.fe, align 64, !alias.scope !519
  store <2 x i64> %i.gc, ptr %i.ff, align 16, !alias.scope !519
  store <2 x i64> %i.gb, ptr %i.fg, align 32, !alias.scope !519
  store <2 x i64> %i.ga, ptr %i.fh, align 16, !alias.scope !519
  store <2 x i64> %i.fz, ptr %i.fi, align 64, !alias.scope !519
  store <2 x i64> %i.fy, ptr %i.fj, align 16, !alias.scope !519
  store <2 x i64> %i.fx, ptr %i.fk, align 32, !alias.scope !519
  store <2 x i64> %i.fw, ptr %i.fl, align 16, !alias.scope !519
  store <2 x i64> %i.fv, ptr %i.fm, align 64, !alias.scope !519
  store <2 x i64> %i.fu, ptr %i.fn, align 16, !alias.scope !519
  store <2 x i64> %i.ft, ptr %i.fo, align 32, !alias.scope !519
  store <2 x i64> %i.fs, ptr %i.fp, align 16, !alias.scope !519
  %i.hu = load ptr, ptr %7, align 8, !noalias !519, !nonnull !21, !align !32
  %i.hv = load i64, ptr %i.hu, align 16, !noalias !519 ; 2 uses
  %.not.i22 = icmp eq i64 %i.hv, 0
  br i1 %.not.i22, label %.preheader18.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ERKS6_.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 3072
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %.0.i9.i = phi i64 [ 0, %.lr.ph.i ], [ %i.jg, %bb.q ] ; 5 uses
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %.0.i9.i
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %.0.i9.i ; 2 uses
  %i.hz = load <4 x i32>, ptr %i.hy, align 16, !alias.scope !519, !noalias !520
  %i.ia = load <4 x i32>, ptr %i.hx, align 16, !noalias !521
  %i.ib = add <4 x i32> %i.ia, %i.hz
  store <4 x i32> %i.ib, ptr %i.hy, align 16, !alias.scope !519
  %i.ic = getelementptr inbounds nuw [96 x i8], ptr %13, i64 %.0.i9.i ; 7 uses
  %i.id = getelementptr inbounds nuw [96 x i8], ptr %i.hl, i64 %.0.i9.i ; 6 uses
  %i.ie = load <4 x float>, ptr %i.ic, align 32, !alias.scope !519, !noalias !522
  %i.if = load <4 x float>, ptr %i.id, align 16, !noalias !523
  %i.ig = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ie, <4 x float> %i.if)
  store <4 x float> %i.ig, ptr %i.ic, align 32, !alias.scope !519
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.ij = load <4 x float>, ptr %i.ih, align 16, !alias.scope !519, !noalias !524
  %i.ik = load <4 x float>, ptr %i.ii, align 16, !noalias !525
  %i.il = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ij, <4 x float> %i.ik)
  store <4 x float> %i.il, ptr %i.ih, align 16, !alias.scope !519
  %i.im = getelementptr inbounds nuw i8, ptr %i.ic, i64 32 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.io = load <4 x float>, ptr %i.im, align 32, !alias.scope !519, !noalias !526
  %i.ip = load <4 x float>, ptr %i.in, align 16, !noalias !527
  %i.iq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.io, <4 x float> %i.ip)
  store <4 x float> %i.iq, ptr %i.im, align 32, !alias.scope !519
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ic, i64 48 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.id, i64 48
  %i.it = load <4 x float>, ptr %i.ir, align 16, !alias.scope !519, !noalias !528
  %i.iu = load <4 x float>, ptr %i.is, align 16, !noalias !529
  %i.iv = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.it, <4 x float> %i.iu)
  store <4 x float> %i.iv, ptr %i.ir, align 16, !alias.scope !519
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ic, i64 64 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.id, i64 64
  %i.iy = load <4 x float>, ptr %i.iw, align 32, !alias.scope !519, !noalias !530
  %i.iz = load <4 x float>, ptr %i.ix, align 16, !noalias !531
  %i.ja = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.iy, <4 x float> %i.iz)
  store <4 x float> %i.ja, ptr %i.iw, align 32, !alias.scope !519
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ic, i64 80 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.id, i64 80
  %i.jd = load <4 x float>, ptr %i.jb, align 16, !alias.scope !519, !noalias !532
  %i.je = load <4 x float>, ptr %i.jc, align 16, !noalias !533
  %i.jf = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.jd, <4 x float> %i.je)
  store <4 x float> %i.jf, ptr %i.jb, align 16, !alias.scope !519
  %i.jg = add nuw i64 %.0.i9.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jg, %i.hv
  br i1 %exitcond.not.i, label %.preheader18.i.preheader, label %bb.q, !llvm.loop !517

.preheader18.i.preheader:                         ; preds = %bb.q, %_ZN6embree4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEC2ERKS6_.exit.i
  br label %.preheader18.i

.preheader18.i:                                   ; preds = %.preheader18.i.preheader, %.preheader18.i
  %.01520.i = phi i64 [ %i.jz, %.preheader18.i ], [ 0, %.preheader18.i.preheader ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.01520.i ; 6 uses
  %i.ji = getelementptr inbounds nuw [96 x i8], ptr %13, i64 %.01520.i ; 6 uses
  %i.jj = load <4 x float>, ptr %i.ji, align 32
  store <4 x float> %i.jj, ptr %i.jh, align 32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jm = load <4 x float>, ptr %i.jk, align 16
  store <4 x float> %i.jm, ptr %i.jl, align 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ji, i64 32
  %i.jp = load <4 x float>, ptr %i.jo, align 32
  store <4 x float> %i.jp, ptr %i.jn, align 32
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 48
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  %i.js = load <4 x float>, ptr %i.jq, align 16
  store <4 x float> %i.js, ptr %i.jr, align 16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jh, i64 64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ji, i64 64
  %i.jv = load <4 x float>, ptr %i.ju, align 32
  store <4 x float> %i.jv, ptr %i.jt, align 32
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ji, i64 80
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jh, i64 80
  %i.jy = load <4 x float>, ptr %i.jw, align 16
  store <4 x float> %i.jy, ptr %i.jx, align 16
  %i.jz = add nuw nsw i64 %.01520.i, 1            ; 2 uses
  %.not.i23 = icmp eq i64 %i.jz, 32
  br i1 %.not.i23, label %bb.r, label %.preheader18.i, !llvm.loop !8

bb.r:                                             ; preds = %.preheader18.i
  %i.ka = load <2 x i64>, ptr %i.ek, align 64
  store <2 x i64> %i.ka, ptr %i.ar, align 64
  %i.kb = load <2 x i64>, ptr %i.el, align 16
  store <2 x i64> %i.kb, ptr %i.au, align 16
  %i.kc = load <2 x i64>, ptr %i.em, align 32
  store <2 x i64> %i.kc, ptr %i.ax, align 32
  %i.kd = load <2 x i64>, ptr %i.en, align 16
  store <2 x i64> %i.kd, ptr %i.ba, align 16
  %i.ke = load <2 x i64>, ptr %i.eo, align 64
  store <2 x i64> %i.ke, ptr %i.bd, align 64
  %i.kf = load <2 x i64>, ptr %i.ep, align 16
  store <2 x i64> %i.kf, ptr %i.bg, align 16
  %i.kg = load <2 x i64>, ptr %i.eq, align 32
  store <2 x i64> %i.kg, ptr %i.bj, align 32
  %i.kh = load <2 x i64>, ptr %i.er, align 16
  store <2 x i64> %i.kh, ptr %i.bm, align 16
  %i.ki = load <2 x i64>, ptr %i.es, align 64     ; 2 uses
  store <2 x i64> %i.ki, ptr %i.bp, align 64
  %i.kj = load <2 x i64>, ptr %i.et, align 16     ; 2 uses
  store <2 x i64> %i.kj, ptr %i.bs, align 16
  %i.kk = load <2 x i64>, ptr %i.eu, align 32     ; 2 uses
  store <2 x i64> %i.kk, ptr %i.bv, align 32
  %i.kl = load <2 x i64>, ptr %i.ev, align 16     ; 2 uses
  store <2 x i64> %i.kl, ptr %i.by, align 16
  %i.km = load <2 x i64>, ptr %i.ew, align 64     ; 2 uses
  store <2 x i64> %i.km, ptr %i.cb, align 64
  %i.kn = load <2 x i64>, ptr %i.ex, align 16     ; 2 uses
  store <2 x i64> %i.kn, ptr %i.ce, align 16
  %i.ko = load <2 x i64>, ptr %i.ey, align 32     ; 2 uses
  store <2 x i64> %i.ko, ptr %i.ch, align 32
  %i.kp = load <2 x i64>, ptr %i.ez, align 16     ; 2 uses
  store <2 x i64> %i.kp, ptr %i.ck, align 16
  %i.kq = load <2 x i64>, ptr %i.fa, align 64     ; 2 uses
  store <2 x i64> %i.kq, ptr %i.cn, align 64
  %i.kr = load <2 x i64>, ptr %i.fb, align 16     ; 2 uses
  store <2 x i64> %i.kr, ptr %i.cq, align 16
  %i.ks = load <2 x i64>, ptr %i.fc, align 32     ; 2 uses
  store <2 x i64> %i.ks, ptr %i.ct, align 32
  %i.kt = load <2 x i64>, ptr %i.fd, align 16     ; 2 uses
  store <2 x i64> %i.kt, ptr %i.cw, align 16
  %i.ku = load <2 x i64>, ptr %i.fe, align 64     ; 2 uses
  store <2 x i64> %i.ku, ptr %i.cz, align 64
  %i.kv = load <2 x i64>, ptr %i.ff, align 16     ; 2 uses
  store <2 x i64> %i.kv, ptr %i.dc, align 16
  %i.kw = load <2 x i64>, ptr %i.fg, align 32     ; 2 uses
  store <2 x i64> %i.kw, ptr %i.df, align 32
  %i.kx = load <2 x i64>, ptr %i.fh, align 16     ; 2 uses
  store <2 x i64> %i.kx, ptr %i.di, align 16
  %i.ky = load <2 x i64>, ptr %i.fi, align 64     ; 2 uses
  store <2 x i64> %i.ky, ptr %i.dl, align 64
  %i.kz = load <2 x i64>, ptr %i.fj, align 16     ; 2 uses
  store <2 x i64> %i.kz, ptr %i.do, align 16
  %i.la = load <2 x i64>, ptr %i.fk, align 32     ; 2 uses
  store <2 x i64> %i.la, ptr %i.dr, align 32
  %i.lb = load <2 x i64>, ptr %i.fl, align 16     ; 2 uses
  store <2 x i64> %i.lb, ptr %i.du, align 16
  %i.lc = load <2 x i64>, ptr %i.fm, align 64     ; 2 uses
  store <2 x i64> %i.lc, ptr %i.dx, align 64
  %i.ld = load <2 x i64>, ptr %i.fn, align 16     ; 2 uses
  store <2 x i64> %i.ld, ptr %i.ea, align 16
  %i.le = load <2 x i64>, ptr %i.fo, align 32     ; 2 uses
  store <2 x i64> %i.le, ptr %i.ed, align 32
  %i.lf = load <2 x i64>, ptr %i.fp, align 16     ; 2 uses
  store <2 x i64> %i.lf, ptr %i.eg, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  %i.lg = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.lg, %i.ej
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !518

bb.s:                                             ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit21
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef %i.v)
          to label %_ZN6embree10StackArrayINS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEELm8192EED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  call void @__clang_call_terminate(ptr %i.li) #28
  unreachable

_ZN6embree10StackArrayINS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEELm8192EED2Ev.exit: ; preds = %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit21, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  resume { ptr, i32 } %.pn.i
}

declare noundef i64 @_ZN6embree13TaskScheduler11threadCountEv() local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_7PrimRefENS_4BBoxINS_6Vec3faEEEEEZNS_22bin_serial_or_parallelILb1ESA_NS4_10BinMappingILm32EEES6_EEvRT0_PKT2_mmmRKT1_EUlRKNS_5rangeImEEE_ZNSB_ILb1ESA_SD_S6_EEvSF_SI_mmmSL_EUlRKSA_SS_E_EESE_T_SU_SU_SU_RKSE_SL_RSH_EUlmE_EEvSU_SW_EUlSP_E_EEvSU_SU_SU_SW_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.34, align 8             ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #25
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #5
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN6embree13FastAllocator8addBlockEPvl:bb.a
  %i.d = and i64 %i.c, -64                        ; 2 uses
  %i.e = sub i64 %i.d, %i.b                       ; 2 uses
  %i.f = sub i64 %2, %i.e                         ; 2 uses
  %i.g = icmp slt i64 %i.f, 4096
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr                 ; 8 uses
  %i.i = add nsw i64 %i.f, -64                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.k = load atomic ptr, ptr %i.j seq_cst, align 8
  store i64 0, ptr %i.h, align 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.i, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.i, ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.e, ptr %i.o, align 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i32 2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i8 0, ptr %i.q, align 4
  store atomic ptr %i.h, ptr %i.j seq_cst, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %bb.c
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden i64 @_ZN6embree4sse217GeneralBVHBuilder5buildINS_10NodeRefPtrILi4EEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEENS0_13PrimInfoRangeES6_NS_13FastAllocator6CreateENS_15QuantizedNode_tIS4_Li4EE7Create2ENSC_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPS9_RNS_20BuildProgressMonitorEPS6_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS6_RKNS_5rangeImEERKNS9_15CachedAllocatorEE_SJ_EET_RT0_PT2_RKT1_T3_T4_T5_RKT6_RKT7_RKST_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 16 dereferenceable(80) %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(64) %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %"struct.embree::FastAllocator::Create", align 8 ; 2 uses
  %8 = alloca %"struct.embree::QuantizedNode_t<embree::NodeRefPtr<4>, 4>::Create2", align 1
  %9 = alloca %"struct.embree::QuantizedNode_t<embree::NodeRefPtr<4>, 4>::Set2", align 1
  %10 = alloca %"class.embree::sse2::GeneralBVHBuilder::BuilderT.107", align 8 ; 4 uses
  %11 = alloca %"struct.embree::sse2::GeneralBVHBuilder::DefaultCanCreateLeafFunc", align 1 ; 3 uses
  %12 = alloca %"struct.embree::sse2::GeneralBVHBuilder::DefaultCanCreateLeafSplitFunc", align 1 ; 3 uses
  %13 = alloca %"struct.embree::sse2::GeneralBVHBuilder::BuildRecordT", align 16 ; 10 uses
  %14 = alloca %"struct.embree::FastAllocator::CachedAllocator", align 8 ; 2 uses
  store ptr %3, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  call void @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_EC2ESQ_RSA_RKSF_RKSI_RKSJ_RKS17_RKS19_RKS1B_RKSO_RKSY_(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  store i64 1, ptr %13, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.c = load <4 x float>, ptr %2, align 16
  store <4 x float> %i.c, ptr %i.b, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.f, ptr %i.d, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load <4 x float>, ptr %i.h, align 16
  store <4 x float> %i.i, ptr %i.g, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.l = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.l, ptr %i.j, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.o = load <2 x i64>, ptr %i.n, align 16
  store <2 x i64> %i.o, ptr %i.m, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.p = call i64 @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_b(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 16 dereferenceable(96) %13, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %14, i1 noundef zeroext true)
  call void @llvm.x86.sse2.mfence()
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  ret i64 %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_EC2ESQ_RSA_RKSF_RKSI_RKSJ_RKS17_RKS19_RKS1B_RKSO_RKSY_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(64) %10) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::allocator", align 1   ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %10, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %6, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %7, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %8, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %9, ptr %i.i, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = icmp ugt i64 %i.j, 16
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 48) #5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #25
          to label %bb.f unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.l) #5
  %i.q = load ptr, ptr %11, align 8               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread26: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn19 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.p, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @__cxa_free_exception(ptr %i.l) #5
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  ret void

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn18 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread26 ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn18

bb.f:                                             ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_b(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.embree::Lock", align 8      ; 6 uses
  %7 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %8 = alloca %"struct.embree::AABBNode_t", align 64 ; 9 uses
  %9 = alloca %"class.embree::CentGeom", align 16 ; 8 uses
  %10 = alloca %"class.embree::CentGeom", align 16 ; 8 uses
  %11 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %12 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %13 = alloca %class.anon.59, align 8            ; 6 uses
  %14 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %15 = alloca %class.anon.60, align 1            ; 3 uses
  %16 = alloca %class.anon.62, align 1            ; 3 uses
  %17 = alloca %"class.embree::CentGeom", align 16 ; 8 uses
  %18 = alloca %"class.embree::CentGeom", align 16 ; 8 uses
  %19 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %20 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %21 = alloca %class.anon.59, align 8            ; 6 uses
  %22 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %23 = alloca %class.anon.60, align 1            ; 3 uses
  %24 = alloca %class.anon.62, align 1            ; 3 uses
  %25 = alloca %"class.embree::Lock", align 8     ; 6 uses
  %26 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %27 = alloca %"struct.embree::sse2::BinSplit", align 16 ; 10 uses
  %28 = alloca %"struct.embree::sse2::PrimInfoRange", align 16 ; 24 uses
  %29 = alloca %"struct.embree::sse2::PrimInfoRange", align 16 ; 24 uses
  %30 = alloca [16 x %"struct.embree::NodeRefPtr"], align 16 ; 17 uses
  %i.c = ptrtoaddr ptr %30 to i64                 ; 2 uses
  %31 = alloca [16 x %"struct.embree::sse2::GeneralBVHBuilder::BuildRecordT"], align 16 ; 30 uses
  %32 = alloca %"struct.embree::sse2::GeneralBVHBuilder::BuildRecordT", align 16 ; 11 uses
  %33 = alloca %"struct.embree::sse2::GeneralBVHBuilder::BuildRecordT", align 16 ; 11 uses
  %34 = alloca %"struct.embree::sse2::BinSplit", align 16 ; 8 uses
  %35 = alloca %class.anon.108, align 8           ; 6 uses
  %i.d = load ptr, ptr %2, align 8
  %.not507 = icmp eq ptr %i.d, null
  br i1 %.not507, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !21, !align !22
  %i.g = load ptr, ptr %i.f, align 8, !noalias !902 ; 2 uses
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN6embree13FastAllocator23thread_local_allocator2E) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !903 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %_ZN6embree13FastAllocator12threadLocal2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 192, i64 noundef 64), !noalias !903 ; 13 uses
  invoke void @_ZN6embree8MutexSysC1Ev(ptr noundef nonnull align 64 dereferenceable(192) %i.k)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8, !noalias !903
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %i.k, ptr %i.m, align 64, !noalias !903
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, i8 0, i64 48, i1 false)
  store ptr %i.k, ptr %i.o, align 64, !noalias !903
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false)
  store ptr %i.k, ptr %i.h, align 8, !noalias !903
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #5, !noalias !903
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %25, align 8, !noalias !903
  %i.q = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i8 1, ptr %i.q, align 8, !noalias !903
  tail call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE), !noalias !903
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #5, !noalias !903
  store ptr %i.k, ptr %26, align 8, !alias.scope !904, !noalias !903
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !903 ; 5 uses
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !903
  %.not.i.i110 = icmp eq ptr %i.r, %i.s
  %i.t = ptrtoint ptr %i.k to i64                 ; 2 uses
  br i1 %.not.i.i110, label %bb.e, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.d
  store i64 %i.t, ptr %i.r, align 8, !noalias !903
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !903
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !903
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !903 ; 10 uses
  %i.x = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 3 uses
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i), !noalias !903
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc111 unwind label %bb.l  ; 10 uses

.noexc111:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  store i64 %i.t, ptr %i.ai, align 8, !noalias !903
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.r
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc111
  %i.aj = add i64 %i.x, -8
  %i.ak = sub i64 %i.aj, %i.y                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1203, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.an = add i64 %i.x, -8
  %i.ao = sub i64 %i.an, %i.y
  %i.ap = and i64 %i.ao, -8
  %i.aq = add i64 %i.ap, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ah, i64 %i.aq
  %scevgep1010 = getelementptr i8, ptr %i.w, i64 %i.aq
  %bound0 = icmp ult ptr %i.ah, %scevgep1010
  %bound1 = icmp ult ptr %i.w, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1203, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.w, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %i.au ; 2 uses
  %next.gep1011 = getelementptr i8, ptr %i.w, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905), !noalias !903
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906), !noalias !903
  %i.av = getelementptr i8, ptr %next.gep1011, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1011, align 8, !alias.scope !907, !noalias !908
  %wide.load1012 = load <2 x i64>, ptr %i.av, align 8, !alias.scope !907, !noalias !908
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !909, !noalias !910
  store <2 x i64> %wide.load1012, ptr %i.aw, align 8, !alias.scope !909, !noalias !910
  %i.ax = getelementptr i8, ptr %next.gep1011, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1011, align 8, !alias.scope !907, !noalias !908
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !alias.scope !907, !noalias !908
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !785

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1203

.lr.ph.i.i.i.i.i.i.i.preheader1203:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ah, %vector.memcheck ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1203, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1203 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1203 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905), !noalias !903
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906), !noalias !903
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !906, !noalias !908
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !905, !noalias !911
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !906, !noalias !908
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !786

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc111
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.noexc111 ], [ %i.as, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #26, !noalias !903
  br label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.g
  store ptr %i.ah, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !903
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !903
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  store ptr %i.bd, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !903
  br label %bb.h

end_hunk_4
begin_hunk_5_@_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_b:bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %28, i64 72
  store i64 %i.kb, ptr %i.kf, align 8
  store <4 x float> %.sroa.0193.1.lcssa, ptr %29, align 16
  %i.kg = getelementptr inbounds nuw i8, ptr %29, i64 16
  store <4 x float> %.sroa.8196.1.lcssa, ptr %i.kg, align 16
  store <4 x float> %.sroa.14.1.lcssa, ptr %i.dz, align 16
  %i.kh = getelementptr inbounds nuw i8, ptr %29, i64 48
  store <4 x float> %.sroa.20.1.lcssa, ptr %i.kh, align 16
  %i.ki = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i64 %i.kb, ptr %i.ki, align 16
  %i.kj = getelementptr inbounds nuw i8, ptr %29, i64 72
  store i64 %i.cs, ptr %i.kj, align 8
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76

bb.ad:                                            ; preds = %bb.u
  br i1 %.not509, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 16 dereferenceable(80) %i.cd)
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 16 dereferenceable(80) %i.cd, ptr noundef nonnull align 16 dereferenceable(80) %28, ptr noundef nonnull align 16 dereferenceable(80) %29)
  %.pre776 = load <4 x float>, ptr %28, align 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %28, i64 16
  %.pre777.a = load <4 x float>, ptr %.phi.trans.insert, align 16
  %.pre778.a = load <4 x float>, ptr %i.dy, align 16
  %.phi.trans.insert779 = getelementptr inbounds nuw i8, ptr %28, i64 48
  %.pre780.a = load <4 x float>, ptr %.phi.trans.insert779, align 16
  %.phi.trans.insert781 = getelementptr inbounds nuw i8, ptr %28, i64 64
  %.pre782.a = load i64, ptr %.phi.trans.insert781, align 16
  %.phi.trans.insert783 = getelementptr inbounds nuw i8, ptr %28, i64 72
  %.pre784.a = load i64, ptr %.phi.trans.insert783, align 8
  %.pre785.a = load <4 x float>, ptr %29, align 16
  %.phi.trans.insert786 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %.pre787.a = load <4 x float>, ptr %.phi.trans.insert786, align 16
  %.pre788 = load <4 x float>, ptr %i.dz, align 16
  %.phi.trans.insert789 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %.pre790 = load <4 x float>, ptr %.phi.trans.insert789, align 16
  %.phi.trans.insert791 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %.pre792 = load i64, ptr %.phi.trans.insert791, align 16
  %.phi.trans.insert793 = getelementptr inbounds nuw i8, ptr %29, i64 72
  %.pre794 = load i64, ptr %.phi.trans.insert793, align 8
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #5
  store <4 x float> splat (float +inf), ptr %17, align 16
  %i.kk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.kk, align 16
  %i.kl = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.kl, align 16
  %i.km = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.km, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #5
  store <4 x float> splat (float +inf), ptr %18, align 16
  %i.kn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.kn, align 16
  %i.ko = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.ko, align 16
  %i.kp = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.kp, align 16
  %i.kq = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.kr = load <1 x i32>, ptr %i.kq, align 8
  %i.ks = shl nuw i32 1, %i.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #5
  %i.kt = shufflevector <1 x i32> %i.kr, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.kt, ptr %19, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #5
  %i.ku = zext i32 %i.ks to i64
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.ku
  %i.kw = load <4 x float>, ptr %i.kv, align 16
  store <4 x float> %i.kw, ptr %20, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #5
  store ptr %27, ptr %21, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %19, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %20, ptr %i.ky, align 8
  %i.kz = load ptr, ptr %i.ea, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #5
  %i.la = call noundef i64 @_ZN6embree21parallel_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb1EEEvRKNS8_8BinSplitILm32EEERKNS8_13PrimInfoRangeERSG_SJ_EUlRKS1_E_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlRS6_SL_E0_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlSN_RKS6_E_EEmPT_mmRKT1_RT0_SY_RKT2_RKT3_RKT4_m(ptr noundef %i.kz, i64 noundef %i.ct, i64 noundef %i.cs, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 16 dereferenceable(64) %17, ptr noundef nonnull align 16 dereferenceable(64) %18, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 1 dereferenceable(1) %23, ptr noundef nonnull align 1 dereferenceable(1) %24, i64 noundef 128) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #5
  %i.lb = load <4 x float>, ptr %17, align 16     ; 2 uses
  store <4 x float> %i.lb, ptr %28, align 16
  %i.lc = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ld = load <4 x float>, ptr %i.kk, align 16   ; 2 uses
  store <4 x float> %i.ld, ptr %i.lc, align 16
  %i.le = load <4 x float>, ptr %i.kl, align 16   ; 2 uses
  store <4 x float> %i.le, ptr %i.dy, align 16
  %i.lf = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.lg = load <4 x float>, ptr %i.km, align 16   ; 2 uses
  store <4 x float> %i.lg, ptr %i.lf, align 16
  %i.lh = getelementptr inbounds nuw i8, ptr %28, i64 64
  store i64 %i.ct, ptr %i.lh, align 16
  %i.li = getelementptr inbounds nuw i8, ptr %28, i64 72
  store i64 %i.la, ptr %i.li, align 8
  %i.lj = load <4 x float>, ptr %18, align 16     ; 2 uses
  store <4 x float> %i.lj, ptr %29, align 16
  %i.lk = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ll = load <4 x float>, ptr %i.kn, align 16   ; 2 uses
  store <4 x float> %i.ll, ptr %i.lk, align 16
  %i.lm = load <4 x float>, ptr %i.ko, align 16   ; 2 uses
  store <4 x float> %i.lm, ptr %i.dz, align 16
  %i.ln = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.lo = load <4 x float>, ptr %i.kp, align 16   ; 2 uses
  store <4 x float> %i.lo, ptr %i.ln, align 16
  %i.lp = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i64 %i.la, ptr %i.lp, align 16
  %i.lq = getelementptr inbounds nuw i8, ptr %29, i64 72
  store i64 %i.cs, ptr %i.lq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #5
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76

_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76: ; preds = %bb.af, %bb.ae, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit
  %i.lr = phi i64 [ %i.cs, %bb.af ], [ %.pre794, %bb.ae ], [ %i.cs, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %i.el, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.ls = phi i64 [ %i.la, %bb.af ], [ %.pre792, %bb.ae ], [ %i.kb, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %i.ep, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lt = phi <4 x float> [ %i.lo, %bb.af ], [ %.pre790, %bb.ae ], [ %.sroa.20.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %.sroa.14.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lu = phi <4 x float> [ %i.lm, %bb.af ], [ %.pre788, %bb.ae ], [ %.sroa.14.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %.sroa.10.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lv = phi <4 x float> [ %i.ll, %bb.af ], [ %.pre787.a, %bb.ae ], [ %.sroa.8196.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %.sroa.6.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lw = phi <4 x float> [ %i.lj, %bb.af ], [ %.pre785.a, %bb.ae ], [ %.sroa.0193.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %.sroa.0.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lx = phi i64 [ %i.la, %bb.af ], [ %.pre784.a, %bb.ae ], [ %i.kb, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %i.ep, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.ly = phi i64 [ %i.ct, %bb.af ], [ %.pre782.a, %bb.ae ], [ %i.ct, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %i.em, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lz = phi <4 x float> [ %i.lg, %bb.af ], [ %.pre780.a, %bb.ae ], [ %.sroa.20212.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %.sroa.1434.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.ma = phi <4 x float> [ %i.le, %bb.af ], [ %.pre778.a, %bb.ae ], [ %.sroa.14209.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %.sroa.1032.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.mb = phi <4 x float> [ %i.ld, %bb.af ], [ %.pre777.a, %bb.ae ], [ %.sroa.8206.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %.sroa.630.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.mc = phi <4 x float> [ %i.lb, %bb.af ], [ %.pre776, %bb.ae ], [ %.sroa.0203.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit89 ], [ %.sroa.028.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #5
  %i.md = load i64, ptr %1, align 16
  %i.me = add i64 %i.md, 1                        ; 2 uses
  store i64 %i.me, ptr %31, align 16
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i8 0, ptr %.sroa.4172.0..sroa_idx, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %31, i64 16
  store <4 x float> %i.mc, ptr %i.mf, align 16
  %i.mg = getelementptr inbounds nuw i8, ptr %31, i64 32
  store <4 x float> %i.mb, ptr %i.mg, align 16
  %i.mh = getelementptr inbounds nuw i8, ptr %31, i64 48
  store <4 x float> %i.ma, ptr %i.mh, align 16
  %i.mi = getelementptr inbounds nuw i8, ptr %31, i64 64
  store <4 x float> %i.lz, ptr %i.mi, align 16
  %i.mj = getelementptr inbounds nuw i8, ptr %31, i64 80
  store i64 %i.ly, ptr %i.mj, align 16
  %.sroa.15179.80..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 88
  store i64 %i.lx, ptr %.sroa.15179.80..sroa_idx, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %31, i64 96
  store i64 %i.me, ptr %i.mk, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 104
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %31, i64 112
  store <4 x float> %i.lw, ptr %i.ml, align 16
  %i.mm = getelementptr inbounds nuw i8, ptr %31, i64 128
  store <4 x float> %i.lv, ptr %i.mm, align 16
  %i.mn = getelementptr inbounds nuw i8, ptr %31, i64 144
  store <4 x float> %i.lu, ptr %i.mn, align 16
  %i.mo = getelementptr inbounds nuw i8, ptr %31, i64 160
  store <4 x float> %i.lt, ptr %i.mo, align 16
  %i.mp = getelementptr inbounds nuw i8, ptr %31, i64 176
  store i64 %i.ls, ptr %i.mp, align 16
  %.sroa.15.80..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 184
  store i64 %i.lr, ptr %.sroa.15.80..sroa_idx, align 8
  %i.mq = load i64, ptr %0, align 8
  %i.mr = icmp ugt i64 %i.mq, 2
  br i1 %i.mr, label %.preheader526.lr.ph, label %.thread

.preheader526.lr.ph:                              ; preds = %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76
  %i.ms = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %32, i64 64 ; 5 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %32, i64 80 ; 5 uses
  %i.my = getelementptr inbounds nuw i8, ptr %32, i64 88 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %33, i64 64 ; 5 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %33, i64 80 ; 5 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %33, i64 88 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.nh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.nq = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %34, i64 48 ; 2 uses
  br label %.lr.ph597

.lr.ph597:                                        ; preds = %bb.aw, %.preheader526.lr.ph
  %.065643 = phi i64 [ 2, %.preheader526.lr.ph ], [ %i.vs, %bb.aw ] ; 4 uses
  %i.ns = load i64, ptr %i.dg, align 8
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.aj
  %i.nt = icmp eq i64 %.1, -1
  br i1 %i.nt, label %.thread, label %bb.ak

bb.ag:                                            ; preds = %.lr.ph597, %bb.aj
  %.061596 = phi i64 [ 0, %.lr.ph597 ], [ %i.oj, %bb.aj ] ; 3 uses
  %.062595 = phi i64 [ -1, %.lr.ph597 ], [ %.1, %bb.aj ] ; 2 uses
  %.063594 = phi float [ -inf, %.lr.ph597 ], [ %.164, %bb.aj ] ; 3 uses
  %i.nu = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %.061596 ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 80
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 88
  %i.nx = load i64, ptr %i.nw, align 8
  %i.ny = load i64, ptr %i.nv, align 16
  %i.nz = sub i64 %i.nx, %i.ny
  %.not75 = icmp ugt i64 %i.nz, %i.ns
  br i1 %.not75, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.oc = load <4 x float>, ptr %i.ob, align 16, !noalias !927
  %i.od = load <4 x float>, ptr %i.oa, align 16, !noalias !927
  %i.oe = fsub <4 x float> %i.oc, %i.od           ; 3 uses
  %.sroa.0184.0.vec.extract = extractelement <4 x float> %i.oe, i64 0
  %.sroa.0184.4.vec.extract = extractelement <4 x float> %i.oe, i64 1 ; 2 uses
  %.sroa.0184.8.vec.extract = extractelement <4 x float> %i.oe, i64 2 ; 2 uses
  %i.of = fadd float %.sroa.0184.4.vec.extract, %.sroa.0184.8.vec.extract
  %i.og = fmul float %.sroa.0184.4.vec.extract, %.sroa.0184.8.vec.extract
  %i.oh = call noundef float @llvm.fmuladd.f32(float %.sroa.0184.0.vec.extract, float %i.of, float %i.og) ; 2 uses
  %i.oi = fcmp ogt float %i.oh, %.063594
  br i1 %i.oi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %.164 = phi float [ %.063594, %bb.ag ], [ %i.oh, %bb.ai ], [ %.063594, %bb.ah ]
  %.1 = phi i64 [ %.062595, %bb.ag ], [ %.061596, %bb.ai ], [ %.062595, %bb.ah ] ; 3 uses
  %i.oj = add nuw i64 %.061596, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.oj, %.065643
  br i1 %exitcond.not, label %._crit_edge, label %bb.ag, !llvm.loop !833

bb.ak:                                            ; preds = %._crit_edge
  %i.ok = getelementptr inbounds [96 x i8], ptr %31, i64 %.1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #5
  %i.ol = load i64, ptr %1, align 16
  %i.om = add i64 %i.ol, 1                        ; 2 uses
  store i64 %i.om, ptr %32, align 16
  store i8 0, ptr %i.ms, align 8
  store <4 x float> splat (float +inf), ptr %i.mt, align 16
  store <4 x float> splat (float -inf), ptr %i.mu, align 16
  store <4 x float> splat (float +inf), ptr %i.mv, align 16
  store <4 x float> splat (float -inf), ptr %i.mw, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.mx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #5
  store i64 %i.om, ptr %33, align 16
  store i8 0, ptr %i.mz, align 8
  store <4 x float> splat (float +inf), ptr %i.na, align 16
  store <4 x float> splat (float -inf), ptr %i.nb, align 16
  store <4 x float> splat (float +inf), ptr %i.nc, align 16
  store <4 x float> splat (float -inf), ptr %i.nd, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ne, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #5
  %i.on = load ptr, ptr %i.cb, align 8, !nonnull !21, !align !22
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 16 ; 4 uses
  %i.op = load i64, ptr %i.ce, align 8
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE4findERKNS0_13PrimInfoRangeEm(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %34, ptr noundef nonnull align 8 dereferenceable(8) %i.on, ptr noundef nonnull align 16 dereferenceable(80) %i.oo, i64 noundef %i.op)
  %i.oq = load ptr, ptr %i.cb, align 8, !nonnull !21, !align !22 ; 6 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.ok, i64 80 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.ok, i64 88 ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8            ; 9 uses
  %i.ou = load i64, ptr %i.or, align 16           ; 7 uses
  %i.ov = sub i64 %i.ot, %i.ou
  %i.ow = icmp ult i64 %i.ov, 3072
  %i.ox = load i32, ptr %i.ng, align 4            ; 3 uses
  %.not513 = icmp eq i32 %i.ox, -1                ; 2 uses
  br i1 %i.ow, label %bb.al, label %bb.at, !prof !27

bb.al:                                            ; preds = %bb.ak
  br i1 %.not513, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i118 = icmp samesign eq i64 %i.ou, %i.ot
  br i1 %.not.i.i.i118, label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit122, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.oy = load ptr, ptr %i.oq, align 8            ; 2 uses
  %.idx.i119 = shl nuw nsw i64 %i.ot, 5           ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.idx.i119 ; 2 uses
  %.idx3.i120 = shl nuw nsw i64 %i.ou, 5          ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.idx3.i120 ; 2 uses
  %gepdiff.i121 = sub nsw i64 %.idx.i119, %.idx3.i120
  %i.pb = ashr exact i64 %gepdiff.i121, 5
  %i.pc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.pb, i1 true)
  %i.pd = shl nuw nsw i64 %i.pc, 1
  %i.pe = xor i64 %i.pd, 126
  call void @_ZSt16__introsort_loopIPN6embree7PrimRefElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.pa, ptr noundef %i.oz, i64 noundef %i.pe)
  call void @_ZSt22__final_insertion_sortIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %i.pa, ptr noundef %i.oz)
  %.pre795 = load i64, ptr %i.or, align 16
  %.pre796 = load i64, ptr %i.os, align 8
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit122

_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit122: ; preds = %bb.am, %bb.an
  %i.pf = phi i64 [ %i.ot, %bb.am ], [ %.pre796, %bb.an ] ; 6 uses
  %i.pg = phi i64 [ %i.ot, %bb.am ], [ %.pre795, %bb.an ] ; 8 uses
  %i.ph = load ptr, ptr %i.oq, align 8            ; 6 uses
  %i.pi = add i64 %i.pf, %i.pg
  %i.pj = lshr i64 %i.pi, 1                       ; 12 uses
  %i.pk = icmp ult i64 %i.pg, %i.pj
  br i1 %i.pk, label %.lr.ph.i.i139.preheader, label %._crit_edge.i.i123

.lr.ph.i.i139.preheader:                          ; preds = %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit122
  %i.pl = sub nuw i64 %i.pj, %i.pg
  %.neg1220 = add i64 %i.pg, 1
  %xtraiter1207 = and i64 %i.pl, 1
  %lcmp.mod1208.not = icmp eq i64 %xtraiter1207, 0
  br i1 %lcmp.mod1208.not, label %.lr.ph.i.i139.prol.loopexit, label %.lr.ph.i.i139.prol

.lr.ph.i.i139.prol:                               ; preds = %.lr.ph.i.i139.preheader
  %i.pm = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %i.pg ; 2 uses
  %i.pn = load <4 x float>, ptr %i.pm, align 16, !noalias !928 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.pp = load <4 x float>, ptr %i.po, align 16, !noalias !929 ; 2 uses
  %i.pq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.pn) ; 2 uses
  %i.pr = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.pp) ; 2 uses
  %i.ps = fadd <4 x float> %i.pn, %i.pp           ; 2 uses
  %i.pt = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ps) ; 2 uses
  %i.pu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ps) ; 2 uses
  %i.pv = add nuw nsw i64 %i.pg, 1
  br label %.lr.ph.i.i139.prol.loopexit

.lr.ph.i.i139.prol.loopexit:                      ; preds = %.lr.ph.i.i139.prol, %.lr.ph.i.i139.preheader
  %.lcssa1160.unr = phi <4 x float> [ poison, %.lr.ph.i.i139.preheader ], [ %i.pq, %.lr.ph.i.i139.prol ]
  %.lcssa1159.unr = phi <4 x float> [ poison, %.lr.ph.i.i139.preheader ], [ %i.pr, %.lr.ph.i.i139.prol ]
  %.lcssa1158.unr = phi <4 x float> [ poison, %.lr.ph.i.i139.preheader ], [ %i.pt, %.lr.ph.i.i139.prol ]
  %.lcssa1157.unr = phi <4 x float> [ poison, %.lr.ph.i.i139.preheader ], [ %i.pu, %.lr.ph.i.i139.prol ]
  %.02166.i.i140.unr = phi i64 [ %i.pg, %.lr.ph.i.i139.preheader ], [ %i.pv, %.lr.ph.i.i139.prol ]
  %.sroa.028.065.i.i141.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i139.preheader ], [ %i.pq, %.lr.ph.i.i139.prol ]
  %.sroa.630.064.i.i142.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i139.preheader ], [ %i.pr, %.lr.ph.i.i139.prol ]
  %.sroa.1032.063.i.i143.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i139.preheader ], [ %i.pt, %.lr.ph.i.i139.prol ]
  %.sroa.1434.062.i.i144.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i139.preheader ], [ %i.pu, %.lr.ph.i.i139.prol ]
  %i.pw = icmp eq i64 %i.pj, %.neg1220
  br i1 %i.pw, label %._crit_edge.i.i123, label %.lr.ph.i.i139

._crit_edge.i.i123:                               ; preds = %.lr.ph.i.i139.prol.loopexit, %.lr.ph.i.i139, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit122
  %.sroa.1434.0.lcssa.i.i124 = phi <4 x float> [ splat (float -inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit122 ], [ %.lcssa1157.unr, %.lr.ph.i.i139.prol.loopexit ], [ %i.rc, %.lr.ph.i.i139 ] ; 2 uses
  %.sroa.1032.0.lcssa.i.i125 = phi <4 x float> [ splat (float +inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit122 ], [ %.lcssa1158.unr, %.lr.ph.i.i139.prol.loopexit ], [ %i.rb, %.lr.ph.i.i139 ] ; 2 uses
  %.sroa.630.0.lcssa.i.i126 = phi <4 x float> [ splat (float -inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit122 ], [ %.lcssa1159.unr, %.lr.ph.i.i139.prol.loopexit ], [ %i.qz, %.lr.ph.i.i139 ] ; 2 uses
  %.sroa.028.0.lcssa.i.i127 = phi <4 x float> [ splat (float +inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit122 ], [ %.lcssa1160.unr, %.lr.ph.i.i139.prol.loopexit ], [ %i.qy, %.lr.ph.i.i139 ] ; 2 uses
  store <4 x float> %.sroa.028.0.lcssa.i.i127, ptr %i.mt, align 16
  store <4 x float> %.sroa.630.0.lcssa.i.i126, ptr %i.mu, align 16
  store <4 x float> %.sroa.1032.0.lcssa.i.i125, ptr %i.mv, align 16
  store <4 x float> %.sroa.1434.0.lcssa.i.i124, ptr %i.mw, align 16
  store i64 %i.pg, ptr %i.mx, align 16
  store i64 %i.pj, ptr %i.my, align 8
  %i.px = icmp ult i64 %i.pj, %i.pf
  br i1 %i.px, label %.lr.ph76.i.i132.preheader, label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit146

.lr.ph76.i.i132.preheader:                        ; preds = %._crit_edge.i.i123
  %i.py = sub nuw i64 %i.pf, %i.pj
  %.neg1221 = add nuw i64 %i.pj, 1
  %xtraiter1209 = and i64 %i.py, 1
  %lcmp.mod1210.not = icmp eq i64 %xtraiter1209, 0
  br i1 %lcmp.mod1210.not, label %.lr.ph76.i.i132.prol.loopexit, label %.lr.ph76.i.i132.prol

.lr.ph76.i.i132.prol:                             ; preds = %.lr.ph76.i.i132.preheader
  %i.pz = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %i.pj ; 2 uses
  %i.qa = load <4 x float>, ptr %i.pz, align 16, !noalias !930 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qc = load <4 x float>, ptr %i.qb, align 16, !noalias !931 ; 2 uses
  %i.qd = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.qa) ; 2 uses
  %i.qe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.qc) ; 2 uses
  %i.qf = fadd <4 x float> %i.qa, %i.qc           ; 2 uses
  %i.qg = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.qf) ; 2 uses
  %i.qh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.qf) ; 2 uses
  %i.qi = add nuw i64 %i.pj, 1
  br label %.lr.ph76.i.i132.prol.loopexit

.lr.ph76.i.i132.prol.loopexit:                    ; preds = %.lr.ph76.i.i132.prol, %.lr.ph76.i.i132.preheader
  %.lcssa1164.unr = phi <4 x float> [ poison, %.lr.ph76.i.i132.preheader ], [ %i.qd, %.lr.ph76.i.i132.prol ]
  %.lcssa1163.unr = phi <4 x float> [ poison, %.lr.ph76.i.i132.preheader ], [ %i.qe, %.lr.ph76.i.i132.prol ]
  %.lcssa1162.unr = phi <4 x float> [ poison, %.lr.ph76.i.i132.preheader ], [ %i.qg, %.lr.ph76.i.i132.prol ]
  %.lcssa1161.unr = phi <4 x float> [ poison, %.lr.ph76.i.i132.preheader ], [ %i.qh, %.lr.ph76.i.i132.prol ]
  %.074.i.i133.unr = phi i64 [ %i.pj, %.lr.ph76.i.i132.preheader ], [ %i.qi, %.lr.ph76.i.i132.prol ]
  %.sroa.0.073.i.i134.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i132.preheader ], [ %i.qd, %.lr.ph76.i.i132.prol ]
  %.sroa.6.072.i.i135.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i132.preheader ], [ %i.qe, %.lr.ph76.i.i132.prol ]
  %.sroa.10.071.i.i136.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i132.preheader ], [ %i.qg, %.lr.ph76.i.i132.prol ]
  %.sroa.14.070.i.i137.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i132.preheader ], [ %i.qh, %.lr.ph76.i.i132.prol ]
  %i.qj = icmp eq i64 %i.pf, %.neg1221
  br i1 %i.qj, label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit146, label %.lr.ph76.i.i132

.lr.ph.i.i139:                                    ; preds = %.lr.ph.i.i139.prol.loopexit, %.lr.ph.i.i139
  %.02166.i.i140 = phi i64 [ %i.rd, %.lr.ph.i.i139 ], [ %.02166.i.i140.unr, %.lr.ph.i.i139.prol.loopexit ] ; 3 uses
  %.sroa.028.065.i.i141 = phi <4 x float> [ %i.qy, %.lr.ph.i.i139 ], [ %.sroa.028.065.i.i141.unr, %.lr.ph.i.i139.prol.loopexit ]
  %.sroa.630.064.i.i142 = phi <4 x float> [ %i.qz, %.lr.ph.i.i139 ], [ %.sroa.630.064.i.i142.unr, %.lr.ph.i.i139.prol.loopexit ]
  %.sroa.1032.063.i.i143 = phi <4 x float> [ %i.rb, %.lr.ph.i.i139 ], [ %.sroa.1032.063.i.i143.unr, %.lr.ph.i.i139.prol.loopexit ]
  %.sroa.1434.062.i.i144 = phi <4 x float> [ %i.rc, %.lr.ph.i.i139 ], [ %.sroa.1434.062.i.i144.unr, %.lr.ph.i.i139.prol.loopexit ]
  %i.qk = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %.02166.i.i140 ; 2 uses
  %i.ql = load <4 x float>, ptr %i.qk, align 16, !noalias !928 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qn = load <4 x float>, ptr %i.qm, align 16, !noalias !929 ; 2 uses
  %i.qo = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.028.065.i.i141, <4 x float> %i.ql)
  %i.qp = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.630.064.i.i142, <4 x float> %i.qn)
  %i.qq = fadd <4 x float> %i.ql, %i.qn           ; 2 uses
  %i.qr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1032.063.i.i143, <4 x float> %i.qq)
  %i.qs = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1434.062.i.i144, <4 x float> %i.qq)
  %i.qt = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %.02166.i.i140 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 32
  %i.qv = load <4 x float>, ptr %i.qu, align 16, !noalias !928 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 48
  %i.qx = load <4 x float>, ptr %i.qw, align 16, !noalias !929 ; 2 uses
  %i.qy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qo, <4 x float> %i.qv) ; 2 uses
  %i.qz = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qp, <4 x float> %i.qx) ; 2 uses
  %i.ra = fadd <4 x float> %i.qv, %i.qx           ; 2 uses
  %i.rb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qr, <4 x float> %i.ra) ; 2 uses
  %i.rc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qs, <4 x float> %i.ra) ; 2 uses
  %i.rd = add nuw nsw i64 %.02166.i.i140, 2       ; 2 uses
  %exitcond.not.i.i145.1 = icmp eq i64 %i.rd, %i.pj
  br i1 %exitcond.not.i.i145.1, label %._crit_edge.i.i123, label %.lr.ph.i.i139, !llvm.loop !0

.lr.ph76.i.i132:                                  ; preds = %.lr.ph76.i.i132.prol.loopexit, %.lr.ph76.i.i132
  %.074.i.i133 = phi i64 [ %i.rx, %.lr.ph76.i.i132 ], [ %.074.i.i133.unr, %.lr.ph76.i.i132.prol.loopexit ] ; 3 uses
  %.sroa.0.073.i.i134 = phi <4 x float> [ %i.rs, %.lr.ph76.i.i132 ], [ %.sroa.0.073.i.i134.unr, %.lr.ph76.i.i132.prol.loopexit ]
  %.sroa.6.072.i.i135 = phi <4 x float> [ %i.rt, %.lr.ph76.i.i132 ], [ %.sroa.6.072.i.i135.unr, %.lr.ph76.i.i132.prol.loopexit ]
  %.sroa.10.071.i.i136 = phi <4 x float> [ %i.rv, %.lr.ph76.i.i132 ], [ %.sroa.10.071.i.i136.unr, %.lr.ph76.i.i132.prol.loopexit ]
  %.sroa.14.070.i.i137 = phi <4 x float> [ %i.rw, %.lr.ph76.i.i132 ], [ %.sroa.14.070.i.i137.unr, %.lr.ph76.i.i132.prol.loopexit ]
  %i.re = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %.074.i.i133 ; 2 uses
  %i.rf = load <4 x float>, ptr %i.re, align 16, !noalias !930 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rh = load <4 x float>, ptr %i.rg, align 16, !noalias !931 ; 2 uses
  %i.ri = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.073.i.i134, <4 x float> %i.rf)
  %i.rj = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.072.i.i135, <4 x float> %i.rh)
  %i.rk = fadd <4 x float> %i.rf, %i.rh           ; 2 uses
  %i.rl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.071.i.i136, <4 x float> %i.rk)
  %i.rm = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.070.i.i137, <4 x float> %i.rk)
  %i.rn = getelementptr inbounds nuw [32 x i8], ptr %i.ph, i64 %.074.i.i133 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.rp = load <4 x float>, ptr %i.ro, align 16, !noalias !930 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 48
end_hunk_5
begin_hunk_6_@_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_b:bb.a
  %.sroa.14243.1.lcssa = phi <4 x float> [ %.sroa.14243.0, %bb.ap ], [ %i.sz, %bb.ar ], [ %.sroa.14243.1602, %bb.aq ] ; 3 uses
  %.sroa.20246.1.lcssa = phi <4 x float> [ %.sroa.20246.0, %bb.ap ], [ %i.ta, %bb.ar ], [ %.sroa.20246.1603, %bb.aq ] ; 3 uses
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.ap ], [ %i.tb, %bb.ar ], [ %.134.i604, %bb.aq ] ; 7 uses
  %.not35.i618 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i618, label %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit, label %.lr.ph624, !prof !28

.lr.ph624:                                        ; preds = %.critedge.i.preheader
  %i.sv = load <4 x float>, ptr %i.nq, align 16, !noalias !936
  %i.sw = load <4 x float>, ptr %i.nr, align 16, !noalias !937
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.sx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0237.1600, <4 x float> %i.sk) ; 2 uses
  %i.sy = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8240.1601, <4 x float> %i.sm) ; 2 uses
  %i.sz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14243.1602, <4 x float> %i.sn) ; 2 uses
  %i.ta = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20246.1603, <4 x float> %i.sn) ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.134.i604, i64 32 ; 3 uses
  %.not.i = icmp ugt ptr %i.tb, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %bb.aq, !prof !30, !llvm.loop !2

bb.as:                                            ; preds = %.lr.ph624, %.critedge.i
  %.1.i623 = phi ptr [ %.0.i, %.lr.ph624 ], [ %i.tr, %.critedge.i ] ; 6 uses
  %.sroa.20234.1622 = phi <4 x float> [ %.sroa.20234.0, %.lr.ph624 ], [ %i.tq, %.critedge.i ] ; 2 uses
  %.sroa.14231.1621 = phi <4 x float> [ %.sroa.14231.0, %.lr.ph624 ], [ %i.tp, %.critedge.i ] ; 2 uses
  %.sroa.8228.1620 = phi <4 x float> [ %.sroa.8228.0, %.lr.ph624 ], [ %i.to, %.critedge.i ] ; 2 uses
  %.sroa.0225.1619 = phi <4 x float> [ %.sroa.0225.0, %.lr.ph624 ], [ %i.tn, %.critedge.i ] ; 2 uses
  %i.tc = load <4 x float>, ptr %.1.i623, align 16, !noalias !938 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.1.i623, i64 16
  %i.te = load <4 x float>, ptr %i.td, align 16, !noalias !939 ; 3 uses
  %i.tf = fadd <4 x float> %i.tc, %i.te           ; 5 uses
  %i.tg = fsub <4 x float> %i.tf, %i.sv
  %i.th = fmul <4 x float> %i.tg, %i.sw
  %i.ti = fadd <4 x float> %i.th, splat (float -5.000000e-01)
  %i.tj = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ti)
  %i.tk = icmp sgt <4 x i32> %i.sa, %i.tj
  %i.tl = select <4 x i1> %i.tk, <4 x i1> %i.sh, <4 x i1> zeroinitializer
  %i.tm = bitcast <4 x i1> %i.tl to i4
  %.not515 = icmp eq i4 %i.tm, 0
  br i1 %.not515, label %.critedge.i, label %.critedge37.i, !prof !27

.critedge.i:                                      ; preds = %bb.as
  %i.tn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0225.1619, <4 x float> %i.tc) ; 2 uses
  %i.to = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8228.1620, <4 x float> %i.te) ; 2 uses
  %i.tp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14231.1621, <4 x float> %i.tf) ; 2 uses
  %i.tq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20234.1622, <4 x float> %i.tf) ; 2 uses
  %i.tr = getelementptr inbounds i8, ptr %.1.i623, i64 -32 ; 2 uses
  %.not35.i = icmp ugt ptr %.134.i.lcssa, %i.tr
  br i1 %.not35.i, label %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit, label %bb.as, !prof !30, !llvm.loop !3

.critedge37.i:                                    ; preds = %bb.as
  %i.ts = getelementptr inbounds nuw i8, ptr %.1.i623, i64 16 ; 2 uses
  %i.tt = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0237.1.lcssa, <4 x float> %i.tc)
  %i.tu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8240.1.lcssa, <4 x float> %i.te)
  %i.tv = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14243.1.lcssa, <4 x float> %i.tf)
  %i.tw = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20246.1.lcssa, <4 x float> %i.tf)
  %i.tx = load <4 x float>, ptr %.134.i.lcssa, align 16, !noalias !940 ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 16 ; 2 uses
  %i.tz = load <4 x float>, ptr %i.ty, align 16, !noalias !941 ; 3 uses
  %i.ua = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0225.1619, <4 x float> %i.tx)
  %i.ub = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8228.1620, <4 x float> %i.tz)
  %i.uc = fadd <4 x float> %i.tx, %i.tz           ; 2 uses
  %i.ud = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14231.1621, <4 x float> %i.uc)
  %i.ue = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20234.1622, <4 x float> %i.uc)
  store <4 x float> %i.tc, ptr %.134.i.lcssa, align 16
  %i.uf = load <4 x float>, ptr %i.ts, align 16
  store <4 x float> %i.uf, ptr %i.ty, align 16
  store <4 x float> %i.tx, ptr %.1.i623, align 16
  store <4 x float> %i.tz, ptr %i.ts, align 16
  %i.ug = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 32
  br label %bb.ap, !llvm.loop !4

_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit: ; preds = %.critedge.i.preheader, %.critedge.i
  %.sroa.0225.1.lcssa = phi <4 x float> [ %i.tn, %.critedge.i ], [ %.sroa.0225.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.8228.1.lcssa = phi <4 x float> [ %i.to, %.critedge.i ], [ %.sroa.8228.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.14231.1.lcssa = phi <4 x float> [ %i.tp, %.critedge.i ], [ %.sroa.14231.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.20234.1.lcssa = phi <4 x float> [ %i.tq, %.critedge.i ], [ %.sroa.20234.0, %.critedge.i.preheader ] ; 2 uses
  %i.uh = ptrtoint ptr %.134.i.lcssa to i64
  %i.ui = ptrtoint ptr %i.se to i64
  %i.uj = sub i64 %i.uh, %i.ui
  %i.uk = ashr exact i64 %i.uj, 5                 ; 2 uses
  store <4 x float> %.sroa.0237.1.lcssa, ptr %i.mt, align 16
  store <4 x float> %.sroa.8240.1.lcssa, ptr %i.mu, align 16
  store <4 x float> %.sroa.14243.1.lcssa, ptr %i.mv, align 16
  store <4 x float> %.sroa.20246.1.lcssa, ptr %i.mw, align 16
  store i64 %i.ou, ptr %i.mx, align 16
  store i64 %i.uk, ptr %i.my, align 8
  store <4 x float> %.sroa.0225.1.lcssa, ptr %i.na, align 16
  store <4 x float> %.sroa.8228.1.lcssa, ptr %i.nb, align 16
  store <4 x float> %.sroa.14231.1.lcssa, ptr %i.nc, align 16
  store <4 x float> %.sroa.20234.1.lcssa, ptr %i.nd, align 16
  store i64 %i.uk, ptr %i.ne, align 16
  store i64 %i.ot, ptr %i.nf, align 8
  br label %bb.aw

bb.at:                                            ; preds = %bb.ak
  br i1 %.not513, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef nonnull align 16 dereferenceable(80) %i.oo)
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %i.oq, ptr noundef nonnull align 16 dereferenceable(80) %i.oo, ptr noundef nonnull align 16 dereferenceable(80) %i.mt, ptr noundef nonnull align 16 dereferenceable(80) %i.na)
  %.pre797 = load <4 x float>, ptr %i.mt, align 16
  %.pre798 = load <4 x float>, ptr %i.mu, align 16
  %.pre799 = load <4 x float>, ptr %i.mv, align 16
  %.pre800 = load <4 x float>, ptr %i.mw, align 16
  %.pre801 = load <4 x float>, ptr %i.na, align 16
  %.pre802 = load <4 x float>, ptr %i.nb, align 16
  %.pre803 = load <4 x float>, ptr %i.nc, align 16
  %.pre804 = load <4 x float>, ptr %i.nd, align 16
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  store <4 x float> splat (float +inf), ptr %9, align 16
  store <4 x float> splat (float -inf), ptr %i.nh, align 16
  store <4 x float> splat (float +inf), ptr %i.ni, align 16
  store <4 x float> splat (float -inf), ptr %i.nj, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  store <4 x float> splat (float +inf), ptr %10, align 16
  store <4 x float> splat (float -inf), ptr %i.nk, align 16
  store <4 x float> splat (float +inf), ptr %i.nl, align 16
  store <4 x float> splat (float -inf), ptr %i.nm, align 16
  %i.ul = load <1 x i32>, ptr %i.nn, align 8
  %i.um = shl nuw i32 1, %i.ox
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  %i.un = shufflevector <1 x i32> %i.ul, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.un, ptr %11, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  %i.uo = zext i32 %i.um to i64
  %i.up = getelementptr inbounds nuw [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.uo
  %i.uq = load <4 x float>, ptr %i.up, align 16
  store <4 x float> %i.uq, ptr %12, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  store ptr %34, ptr %13, align 8
  store ptr %11, ptr %i.no, align 8
  store ptr %12, ptr %i.np, align 8
  %i.ur = load ptr, ptr %i.oq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  %i.us = call noundef i64 @_ZN6embree21parallel_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb1EEEvRKNS8_8BinSplitILm32EEERKNS8_13PrimInfoRangeERSG_SJ_EUlRKS1_E_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlRS6_SL_E0_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlSN_RKS6_E_EEmPT_mmRKT1_RT0_SY_RKT2_RKT3_RKT4_m(ptr noundef %i.ur, i64 noundef %i.ou, i64 noundef %i.ot, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 16 dereferenceable(64) %9, ptr noundef nonnull align 16 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, i64 noundef 128) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  %i.ut = load <4 x float>, ptr %9, align 16      ; 2 uses
  store <4 x float> %i.ut, ptr %i.mt, align 16
  %i.uu = load <4 x float>, ptr %i.nh, align 16   ; 2 uses
  store <4 x float> %i.uu, ptr %i.mu, align 16
  %i.uv = load <4 x float>, ptr %i.ni, align 16   ; 2 uses
  store <4 x float> %i.uv, ptr %i.mv, align 16
  %i.uw = load <4 x float>, ptr %i.nj, align 16   ; 2 uses
  store <4 x float> %i.uw, ptr %i.mw, align 16
  store i64 %i.ou, ptr %i.mx, align 16
  store i64 %i.us, ptr %i.my, align 8
  %i.ux = load <4 x float>, ptr %10, align 16     ; 2 uses
  store <4 x float> %i.ux, ptr %i.na, align 16
  %i.uy = load <4 x float>, ptr %i.nk, align 16   ; 2 uses
  store <4 x float> %i.uy, ptr %i.nb, align 16
  %i.uz = load <4 x float>, ptr %i.nl, align 16   ; 2 uses
  store <4 x float> %i.uz, ptr %i.nc, align 16
  %i.va = load <4 x float>, ptr %i.nm, align 16   ; 2 uses
  store <4 x float> %i.va, ptr %i.nd, align 16
  store i64 %i.us, ptr %i.ne, align 16
  store i64 %i.ot, ptr %i.nf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit146, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit, %bb.au, %bb.av
  %i.vb = phi <4 x float> [ %.sroa.14.0.lcssa.i.i128, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit146 ], [ %.sroa.20234.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre804, %bb.au ], [ %i.va, %bb.av ]
  %i.vc = phi <4 x float> [ %.sroa.10.0.lcssa.i.i129, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit146 ], [ %.sroa.14231.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre803, %bb.au ], [ %i.uz, %bb.av ]
  %i.vd = phi <4 x float> [ %.sroa.6.0.lcssa.i.i130, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit146 ], [ %.sroa.8228.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre802, %bb.au ], [ %i.uy, %bb.av ]
  %i.ve = phi <4 x float> [ %.sroa.0.0.lcssa.i.i131, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit146 ], [ %.sroa.0225.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre801, %bb.au ], [ %i.ux, %bb.av ]
  %i.vf = phi <4 x float> [ %.sroa.1434.0.lcssa.i.i124, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit146 ], [ %.sroa.20246.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre800, %bb.au ], [ %i.uw, %bb.av ]
  %i.vg = phi <4 x float> [ %.sroa.1032.0.lcssa.i.i125, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit146 ], [ %.sroa.14243.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre799, %bb.au ], [ %i.uv, %bb.av ]
  %i.vh = phi <4 x float> [ %.sroa.630.0.lcssa.i.i126, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit146 ], [ %.sroa.8240.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre798, %bb.au ], [ %i.uu, %bb.av ]
  %i.vi = phi <4 x float> [ %.sroa.028.0.lcssa.i.i127, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit146 ], [ %.sroa.0237.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre797, %bb.au ], [ %i.ut, %bb.av ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ok, ptr noundef nonnull align 16 dereferenceable(96) %32, i64 9, i1 false)
  store <4 x float> %i.vi, ptr %i.oo, align 16
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  store <4 x float> %i.vh, ptr %i.vj, align 16
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ok, i64 48
  store <4 x float> %i.vg, ptr %i.vk, align 16
  %i.vl = getelementptr inbounds nuw i8, ptr %i.ok, i64 64
  store <4 x float> %i.vf, ptr %i.vl, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.or, ptr noundef nonnull align 16 dereferenceable(16) %i.mx, i64 16, i1 false)
  %i.vm = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %.065643 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.vm, ptr noundef nonnull align 16 dereferenceable(96) %33, i64 9, i1 false)
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  store <4 x float> %i.ve, ptr %i.vn, align 16
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 32
  store <4 x float> %i.vd, ptr %i.vo, align 16
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vm, i64 48
  store <4 x float> %i.vc, ptr %i.vp, align 16
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vm, i64 64
  store <4 x float> %i.vb, ptr %i.vq, align 16
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vm, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vr, ptr noundef nonnull align 16 dereferenceable(16) %i.ne, i64 16, i1 false)
  %i.vs = add nuw i64 %.065643, 1                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #5
  %i.vt = load i64, ptr %0, align 8
  %i.vu = icmp ult i64 %i.vs, %i.vt
  br i1 %i.vu, label %.lr.ph597, label %.thread

.thread:                                          ; preds = %bb.aw, %._crit_edge, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76
  %.065.lcssa = phi i64 [ 2, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit76 ], [ %.065643, %._crit_edge ], [ %i.vs, %bb.aw ] ; 20 uses
  %i.vv = load i64, ptr %i.cr, align 8
  %i.vw = load i64, ptr %i.cq, align 16
  %i.vx = sub i64 %i.vv, %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.vz = load i64, ptr %i.vy, align 8            ; 4 uses
  %i.wa = icmp ugt i64 %i.vx, %i.vz
  br i1 %i.wa, label %.lr.ph648.preheader, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader674, !prof !29

.lr.ph648.preheader:                              ; preds = %.thread
  %xtraiter1211 = and i64 %.065.lcssa, 1
  %unroll_iter = and i64 %.065.lcssa, -2
  br label %.lr.ph648

.lr.ph648:                                        ; preds = %.lr.ph648, %.lr.ph648.preheader
  %.059647 = phi i64 [ 0, %.lr.ph648.preheader ], [ %i.wt, %.lr.ph648 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph648.preheader ], [ %niter.next.1, %.lr.ph648 ]
  %i.wb = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %.059647 ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 80
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wb, i64 88
  %i.we = load i64, ptr %i.wd, align 8
  %i.wf = load i64, ptr %i.wc, align 16
  %i.wg = sub i64 %i.we, %i.wf
  %i.wh = icmp ule i64 %i.wg, %i.vz
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wj = zext i1 %i.wh to i8
  store i8 %i.wj, ptr %i.wi, align 8
  %i.wk = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %.059647 ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 176
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 184
  %i.wn = load i64, ptr %i.wm, align 8
  %i.wo = load i64, ptr %i.wl, align 16
  %i.wp = sub i64 %i.wn, %i.wo
  %i.wq = icmp ule i64 %i.wp, %i.vz
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wk, i64 104
  %i.ws = zext i1 %i.wq to i8
  store i8 %i.ws, ptr %i.wr, align 8
  %i.wt = add nuw i64 %.059647, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader674.loopexit.unr-lcssa, label %.lr.ph648, !llvm.loop !876

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader674.loopexit.unr-lcssa: ; preds = %.lr.ph648
  %lcmp.mod1212.not = icmp eq i64 %xtraiter1211, 0
  br i1 %lcmp.mod1212.not, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader674, label %.lr.ph648.epil.preheader

.lr.ph648.epil.preheader:                         ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader674.loopexit.unr-lcssa
  %lcmp.mod1213 = trunc i64 %.065.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod1213)
  %i.wu = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %i.wt ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 80
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 88
  %i.wx = load i64, ptr %i.ww, align 8
  %i.wy = load i64, ptr %i.wv, align 16
  %i.wz = sub i64 %i.wx, %i.wy
  %i.xa = icmp ule i64 %i.wz, %i.vz
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.xc = zext i1 %i.xa to i8
  store i8 %i.xc, ptr %i.xb, align 8
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader674

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader674: ; preds = %.lr.ph648.epil.preheader, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader674.loopexit.unr-lcssa, %.thread
  %.idx516 = mul nuw nsw i64 %.065.lcssa, 96
  %i.xd = getelementptr inbounds nuw i8, ptr %31, i64 %.idx516 ; 2 uses
  %i.xe = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.065.lcssa, i1 true)
  %i.xf = shl nuw nsw i64 %i.xe, 1
  %i.xg = xor i64 %i.xf, 126
  call void @_ZSt16__introsort_loopIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_T1_(ptr noundef nonnull %31, ptr noundef nonnull %i.xd, i64 noundef %i.xg)
  call void @_ZSt22__final_insertion_sortIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_(ptr noundef nonnull %31, ptr noundef nonnull %i.xd)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  %i.xh = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 3 uses
  store <4 x float> splat (float +inf), ptr %i.xh, align 32
  %i.xi = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store <4 x float> splat (float +inf), ptr %i.xi, align 64
  %i.xj = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store <4 x float> splat (float +inf), ptr %i.xj, align 32
  %i.xk = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 3 uses
  store <4 x float> splat (float -inf), ptr %i.xk, align 16
  %i.xl = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 3 uses
  store <4 x float> splat (float -inf), ptr %i.xl, align 16
  %i.xm = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  store <4 x float> splat (float -inf), ptr %i.xm, align 16
  store <4 x i64> splat (i64 8), ptr %8, align 64
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i._crit_edge: ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i
  %i.xn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xo = load ptr, ptr %i.xn, align 8            ; 9 uses
  %i.xp = load ptr, ptr %2, align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 80, ptr %i.a, align 8
  %i.xq = load ptr, ptr %i.xo, align 64           ; 18 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 8 ; 6 uses
  %i.xs = load atomic ptr, ptr %i.xr seq_cst, align 8
  %i.xt = icmp eq ptr %i.xs, %i.xp
  br i1 %i.xt, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store ptr %i.xq, ptr %7, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i8 1, ptr %i.xu, align 8
  call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.xq)
  %i.xv = load atomic ptr, ptr %i.xr seq_cst, align 8
  %.not.i8.i = icmp eq ptr %i.xv, null
  br i1 %.not.i8.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xq, i64 104
  %i.xx = load i64, ptr %i.xw, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xq, i64 168
  %i.xz = load i64, ptr %i.xy, align 8
  %i.ya = add i64 %i.xz, %i.xx
  %i.yb = load atomic ptr, ptr %i.xr seq_cst, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 280
  %i.yd = atomicrmw add ptr %i.yc, i64 %i.ya seq_cst, align 8 ; 0 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xq, i64 88
  %i.yf = load i64, ptr %i.ye, align 8
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xq, i64 80
  %i.yh = load i64, ptr %i.yg, align 16
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xq, i64 152
  %i.yj = load i64, ptr %i.yi, align 8
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xq, i64 144
  %i.yl = load i64, ptr %i.yk, align 16
  %i.ym = add i64 %i.yf, %i.yj
  %i.yn = add i64 %i.yh, %i.yl
  %i.yo = sub i64 %i.ym, %i.yn
  %i.yp = load atomic ptr, ptr %i.xr seq_cst, align 8
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 288
  %i.yr = atomicrmw add ptr %i.yq, i64 %i.yo seq_cst, align 8 ; 0 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xq, i64 112
  %i.yt = load i64, ptr %i.ys, align 16
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xq, i64 176
  %i.yv = load i64, ptr %i.yu, align 16
  %i.yw = add i64 %i.yv, %i.yt
  %i.yx = load atomic ptr, ptr %i.xr seq_cst, align 8
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 296
  %i.yz = atomicrmw add ptr %i.yy, i64 %i.yw seq_cst, align 8 ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit155
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bh, %bb.az
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.za, %bb.az ], [ %i.aah, %bb.bh ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %common.resume

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xq, i64 72
  %.not.i153 = icmp eq ptr %i.xp, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zb, i8 0, i64 48, i1 false)
  br i1 %.not.i153, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.bb

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.ba
  %i.zc = getelementptr inbounds nuw i8, ptr %i.xq, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zc, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit155

bb.bb:                                            ; preds = %bb.ba
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xq, i64 96
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xp, i64 16 ; 2 uses
  %i.zf = load i64, ptr %i.ze, align 8
  store i64 %i.zf, ptr %i.zd, align 32
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xq, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zg, i8 0, i64 48, i1 false)
  %i.zh = getelementptr inbounds nuw i8, ptr %i.xq, i64 160
  %i.zi = load i64, ptr %i.ze, align 8
  store i64 %i.zi, ptr %i.zh, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit155

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit155: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.bb
  store atomic ptr %i.xp, ptr %i.xr seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %6, align 8
  %i.zj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 1, ptr %i.zj, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.az

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit155
  %i.zk = getelementptr inbounds nuw i8, ptr %i.xp, i64 304 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.xp, i64 312 ; 4 uses
  %i.zm = load ptr, ptr %i.zl, align 8            ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.xp, i64 320 ; 2 uses
  %i.zo = load ptr, ptr %i.zn, align 8
  %.not.i157 = icmp eq ptr %i.zm, %i.zo
  br i1 %.not.i157, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.noexc.i
  store ptr %i.xq, ptr %i.zm, align 8
  %i.zp = load ptr, ptr %i.zl, align 8
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  store ptr %i.zq, ptr %i.zl, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.bd:                                            ; preds = %.noexc.i
  %i.zr = load ptr, ptr %i.zk, align 8            ; 4 uses
  %i.zs = ptrtoint ptr %i.zm to i64
  %i.zt = ptrtoint ptr %i.zr to i64
  %i.zu = sub i64 %i.zs, %i.zt                    ; 5 uses
  %i.zv = icmp eq i64 %i.zu, 9223372036854775800
  br i1 %i.zv, label %bb.be, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc159 unwind label %bb.bh

.noexc159:                                        ; preds = %bb.be
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bd
  %i.zw = ashr exact i64 %i.zu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.zw, i64 1)
  %i.zx = add nsw i64 %.sroa.speculated.i.i.i, %i.zw ; 2 uses
  %i.zy = icmp ult i64 %i.zx, %i.zw
  %i.zz = call i64 @llvm.umin.i64(i64 %i.zx, i64 1152921504606846975)
  %i.aaa = select i1 %i.zy, i64 1152921504606846975, i64 %i.zz ; 3 uses
  %.not.i.i.i158 = icmp ne i64 %i.aaa, 0
  call void @llvm.assume(i1 %.not.i.i.i158)
  %i.aab = shl nuw nsw i64 %i.aaa, 3
  %i.aac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aab) #27
          to label %.noexc160 unwind label %bb.bh ; 4 uses

.noexc160:                                        ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.aad = getelementptr inbounds i8, ptr %i.aac, i64 %i.zu ; 2 uses
  store ptr %i.xq, ptr %i.aad, align 8
  %i.aae = icmp sgt i64 %i.zu, 0
  br i1 %i.aae, label %bb.bf, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.bf:                                            ; preds = %.noexc160
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aac, ptr align 8 %i.zr, i64 %i.zu, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.bf, %.noexc160
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %.not.i17.i.i = icmp eq ptr %i.zr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.zr) #26
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bg, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.aac, ptr %i.zk, align 8
  store ptr %i.aaf, ptr %i.zl, align 8
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.aac, i64 %i.aaa
  store ptr %i.aag, ptr %i.zn, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.bh:                                            ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.be
  %i.aah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %.body.i

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i: ; preds = %bb.bc, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit161 unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.aai = landingpad { ptr, i32 }
          catch ptr null
  %i.aaj = extractvalue { ptr, i32 } %i.aai, 0
  call void @__clang_call_terminate(ptr %i.aaj) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit161:       ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  %i.aak = load i8, ptr %i.xu, align 8, !range !26, !noundef !21
  %i.aal = trunc nuw i8 %i.aak to i1
  br i1 %i.aal, label %bb.bj, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit162

bb.bj:                                            ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit161
  %i.aam = load ptr, ptr %7, align 8, !nonnull !21, !align !22
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aam)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit162 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aan = landingpad { ptr, i32 }
          catch ptr null
  %i.aao = extractvalue { ptr, i32 } %i.aan, 0
  call void @__clang_call_terminate(ptr %i.aao) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit162:       ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit161, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i: ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit162, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i._crit_edge
  %i.aap = load i64, ptr %i.a, align 8            ; 4 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.xo, i64 40 ; 2 uses
  %i.aar = load i64, ptr %i.aaq, align 8
  %i.aas = add i64 %i.aar, %i.aap
  store i64 %i.aas, ptr %i.aaq, align 8
  %i.aat = getelementptr inbounds nuw i8, ptr %i.xo, i64 16 ; 9 uses
  %i.aau = load i64, ptr %i.aat, align 16         ; 3 uses
  %i.aav = sub i64 0, %i.aau
  %i.aaw = and i64 %i.aav, 15                     ; 2 uses
  %i.aax = add i64 %i.aau, %i.aap
  %i.aay = add i64 %i.aax, %i.aaw                 ; 3 uses
  store i64 %i.aay, ptr %i.aat, align 16
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.xo, i64 24 ; 5 uses
  %i.aba = load i64, ptr %i.aaz, align 8
  %.not.i.i = icmp ugt i64 %i.aay, %i.aba
  br i1 %.not.i.i, label %bb.bm, label %bb.bl, !prof !29

bb.bl:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  %i.abb = getelementptr inbounds nuw i8, ptr %i.xo, i64 48 ; 2 uses
  %i.abc = load i64, ptr %i.abb, align 16
  %i.abd = add i64 %i.abc, %i.aaw
  store i64 %i.abd, ptr %i.abb, align 16
  %i.abe = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8
  %i.abg = sub i64 %i.aay, %i.aap
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.abg
  br label %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit

bb.bm:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  store i64 %i.aau, ptr %i.aat, align 16
  %i.abi = shl i64 %i.aap, 2
  %i.abj = getelementptr inbounds nuw i8, ptr %i.xo, i64 32 ; 2 uses
  %i.abk = load i64, ptr %i.abj, align 32         ; 2 uses
  %i.abl = icmp ugt i64 %i.abi, %i.abk
  br i1 %i.abl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.abm = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.xp, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.abk, ptr %i.b, align 8
  %i.abn = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.xp, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.xo, i64 8 ; 2 uses
  store ptr %i.abn, ptr %i.abo, align 8
  %i.abp = load i64, ptr %i.aaz, align 8
  %i.abq = load i64, ptr %i.aat, align 16
  %i.abr = sub i64 %i.abp, %i.abq
  %i.abs = getelementptr inbounds nuw i8, ptr %i.xo, i64 48 ; 6 uses
  %i.abt = load i64, ptr %i.abs, align 16
  %i.abu = add i64 %i.abt, %i.abr                 ; 2 uses
  store i64 %i.abu, ptr %i.abs, align 16
  %i.abv = load i64, ptr %i.b, align 8            ; 2 uses
  store i64 %i.abv, ptr %i.aaz, align 8
  %36 = load i64, ptr %i.a, align 8               ; 2 uses
  store i64 %36, ptr %i.aat, align 16
  %.not23.i.i = icmp ugt i64 %36, %i.abv
  br i1 %.not23.i.i, label %bb.bq, label %bb.bp, !prof !29

bb.bp:                                            ; preds = %bb.bo
  store i64 %i.abu, ptr %i.abs, align 16
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bo
  store i64 0, ptr %i.aat, align 16
  %i.abw = load i64, ptr %i.abj, align 32
  store i64 %i.abw, ptr %i.b, align 8
  %i.abx = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.xp, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.abx, ptr %i.abo, align 8
  %i.aby = load i64, ptr %i.aaz, align 8
  %i.abz = load i64, ptr %i.aat, align 16
  %i.aca = sub i64 %i.aby, %i.abz
  %i.acb = load i64, ptr %i.abs, align 16
  %i.acc = add i64 %i.acb, %i.aca                 ; 2 uses
  store i64 %i.acc, ptr %i.abs, align 16
  %i.acd = load i64, ptr %i.b, align 8            ; 2 uses
  store i64 %i.acd, ptr %i.aaz, align 8
  %37 = load i64, ptr %i.a, align 8               ; 2 uses
  store i64 %37, ptr %i.aat, align 16
  %.not24.i.i = icmp ugt i64 %37, %i.acd
  br i1 %.not24.i.i, label %bb.bs, label %bb.br, !prof !29

bb.br:                                            ; preds = %bb.bq
  store i64 %i.acc, ptr %i.abs, align 16
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  store i64 0, ptr %i.aat, align 16
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bp
  %.0.i.i = phi ptr [ %i.abn, %bb.bp ], [ %i.abx, %bb.br ], [ null, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i: ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader674, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i
  %.0.i90650 = phi i64 [ %i.acp, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i ], [ 0, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader674 ] ; 8 uses
  %i.ace = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %.0.i90650 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 16
  %i.acg = load <4 x float>, ptr %i.acf, align 16 ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ace, i64 32
  %i.aci = load <4 x float>, ptr %i.ach, align 16 ; 3 uses
  %.sroa.0265.0.vec.extract = extractelement <4 x float> %i.acg, i64 0
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %.0.i90650
  store float %.sroa.0265.0.vec.extract, ptr %i.acj, align 4
  %.sroa.0265.4.vec.extract = extractelement <4 x float> %i.acg, i64 1
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %.0.i90650
  store float %.sroa.0265.4.vec.extract, ptr %i.ack, align 4
  %.sroa.0265.8.vec.extract = extractelement <4 x float> %i.acg, i64 2
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.xh, i64 %.0.i90650
  store float %.sroa.0265.8.vec.extract, ptr %i.acl, align 4
  %.sroa.6.16.vec.extract = extractelement <4 x float> %i.aci, i64 0
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %.0.i90650
  store float %.sroa.6.16.vec.extract, ptr %i.acm, align 4
  %.sroa.6.20.vec.extract = extractelement <4 x float> %i.aci, i64 1
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %.0.i90650
  store float %.sroa.6.20.vec.extract, ptr %i.acn, align 4
  %.sroa.6.24.vec.extract = extractelement <4 x float> %i.aci, i64 2
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %.0.i90650
  store float %.sroa.6.24.vec.extract, ptr %i.aco, align 4
  %i.acp = add nuw i64 %.0.i90650, 1              ; 2 uses
  %exitcond741.not = icmp eq i64 %i.acp, %.065.lcssa
  br i1 %exitcond741.not, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i._crit_edge, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i, !llvm.loop !16

_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit: ; preds = %bb.bl, %bb.bn, %bb.bt
  %.1.i.i = phi ptr [ %i.abh, %bb.bl ], [ %i.abm, %bb.bn ], [ %.0.i.i, %bb.bt ] ; 32 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <4 x i64> splat (i64 8), ptr %.1.i.i, align 8
  %i.acq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  %i.acr = load <4 x float>, ptr %i.xj, align 32, !noalias !942 ; 5 uses
  %i.acs = fcmp une <4 x float> %i.acr, splat (float +inf) ; 2 uses
  %i.act = shufflevector <4 x float> %i.acr, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.acu = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.act, <4 x float> %i.acr) ; 2 uses
  %i.acv = shufflevector <4 x float> %i.acu, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.acw = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.acv, <4 x float> %i.acu) ; 3 uses
  %i.acx = extractelement <4 x float> %i.acw, i64 0
  %i.acy = load <4 x float>, ptr %i.xm, align 16, !noalias !943 ; 4 uses
  %i.acz = shufflevector <4 x float> %i.acy, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ada = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.acz, <4 x float> %i.acy) ; 2 uses
  %i.adb = shufflevector <4 x float> %i.ada, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.adc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.adb, <4 x float> %i.ada)
  %foldExtExtBinop = fsub <4 x float> %i.adc, %i.acw
  %i.add = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ade = fmul float %i.add, f0x3F800002         ; 3 uses
  %i.adf = fdiv float %i.ade, 2.550000e+02        ; 2 uses
  %i.adg = fcmp oeq float %i.adf, 0.000000e+00
  %spec.store.select.i97 = select i1 %i.adg, float f0x01000000, float %i.adf ; 2 uses
  %i.adh = fcmp ogt float %i.ade, 0.000000e+00
  %i.adi = fdiv float 2.550000e+02, %i.ade
  %i.adj = select i1 %i.adh, float %i.adi, float 0.000000e+00
  %i.adk = shufflevector <4 x float> %i.acw, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.adl = fsub <4 x float> %i.acr, %i.adk
  %i.adm = insertelement <4 x float> poison, float %i.adj, i64 0
  %i.adn = shufflevector <4 x float> %i.adm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ado = fmul <4 x float> %i.adl, %i.adn
  %i.adp = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ado)
  %i.adq = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.adp)
  %.inner1044.a = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.adq, <4 x i32> zeroinitializer) ; 2 uses
  %i.adr = fsub <4 x float> %i.acy, %i.adk
  %i.ads = fmul <4 x float> %i.adr, %i.adn
  %i.adt = call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.ads)
  %i.adu = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.adt)
  %.inner1046 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.adu, <4 x i32> splat (i32 255)) ; 2 uses
  %i.adv = uitofp nneg <4 x i32> %.inner1044.a to <4 x float>
  %i.adw = insertelement <4 x float> poison, float %spec.store.select.i97, i64 0
  %i.adx = shufflevector <4 x float> %i.adw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ady = fmul <4 x float> %i.adx, %i.adv
  %i.adz = fadd <4 x float> %i.adk, %i.ady
  %i.aea = fcmp ugt <4 x float> %i.adz, %i.acr
  %i.aeb = sitofp <4 x i32> %.inner1046 to <4 x float>
  %i.aec = fmul <4 x float> %i.adx, %i.aeb
  %i.aed = fadd <4 x float> %i.adk, %i.aec
  %i.aee = fcmp olt <4 x float> %i.aed, %i.acy
  %i.aef = sext <4 x i1> %i.aea to <4 x i32>
  %.inner1048 = add nsw <4 x i32> %.inner1044.a, %i.aef
  %.inner1050 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.inner1048, <4 x i32> zeroinitializer)
  %i.aeg = zext <4 x i1> %i.aee to <4 x i32>
  %.inner1052 = add nsw <4 x i32> %.inner1046, %i.aeg
  %.inner1056 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %.inner1052, <4 x i32> splat (i32 255))
  %.inner1060 = select <4 x i1> %i.acs, <4 x i32> %.inner1050, <4 x i32> splat (i32 255) ; 4 uses
  %.inner1061.a = select <4 x i1> %i.acs, <4 x i32> %.inner1056, <4 x i32> zeroinitializer ; 4 uses
  %i.aeh = bitcast <4 x i32> %.inner1060 to <16 x i8>
  %i.aei = extractelement <16 x i8> %i.aeh, i64 0
  store i8 %i.aei, ptr %i.acq, align 8
  %i.aej = bitcast <4 x i32> %.inner1060 to <16 x i8>
  %i.aek = extractelement <16 x i8> %i.aej, i64 4
  %i.ael = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 33
  store i8 %i.aek, ptr %i.ael, align 1
  %i.aem = bitcast <4 x i32> %.inner1060 to <16 x i8>
  %i.aen = extractelement <16 x i8> %i.aem, i64 8
  %i.aeo = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 34
  store i8 %i.aen, ptr %i.aeo, align 2
  %i.aep = bitcast <4 x i32> %.inner1060 to <16 x i8>
  %i.aeq = extractelement <16 x i8> %i.aep, i64 12
  %i.aer = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 35
  store i8 %i.aeq, ptr %i.aer, align 1
  %i.aes = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 36
  %i.aet = bitcast <4 x i32> %.inner1061.a to <16 x i8>
  %i.aeu = extractelement <16 x i8> %i.aet, i64 0
  store i8 %i.aeu, ptr %i.aes, align 4
  %i.aev = bitcast <4 x i32> %.inner1061.a to <16 x i8>
  %i.aew = extractelement <16 x i8> %i.aev, i64 4
  %i.aex = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 37
  store i8 %i.aew, ptr %i.aex, align 1
  %i.aey = bitcast <4 x i32> %.inner1061.a to <16 x i8>
  %i.aez = extractelement <16 x i8> %i.aey, i64 8
  %i.afa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 38
  store i8 %i.aez, ptr %i.afa, align 2
  %i.afb = bitcast <4 x i32> %.inner1061.a to <16 x i8>
  %i.afc = extractelement <16 x i8> %i.afb, i64 12
  %i.afd = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 39
  store i8 %i.afc, ptr %i.afd, align 1
  %i.afe = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 56
  %i.aff = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 68
  store float %i.acx, ptr %i.afe, align 8
  store float %spec.store.select.i97, ptr %i.aff, align 4
  %i.afg = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.afh = load <4 x float>, ptr %i.xi, align 64, !noalias !944 ; 5 uses
  %i.afi = fcmp une <4 x float> %i.afh, splat (float +inf) ; 2 uses
  %i.afj = shufflevector <4 x float> %i.afh, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.afk = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.afj, <4 x float> %i.afh) ; 2 uses
  %i.afl = shufflevector <4 x float> %i.afk, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.afm = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.afl, <4 x float> %i.afk) ; 3 uses
  %i.afn = extractelement <4 x float> %i.afm, i64 0
  %i.afo = load <4 x float>, ptr %i.xl, align 16, !noalias !945 ; 4 uses
  %i.afp = shufflevector <4 x float> %i.afo, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.afq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.afp, <4 x float> %i.afo) ; 2 uses
  %i.afr = shufflevector <4 x float> %i.afq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.afs = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.afr, <4 x float> %i.afq)
  %foldExtExtBinop1062 = fsub <4 x float> %i.afs, %i.afm
  %i.aft = extractelement <4 x float> %foldExtExtBinop1062, i64 0
  %i.afu = fmul float %i.aft, f0x3F800002         ; 3 uses
  %i.afv = fdiv float %i.afu, 2.550000e+02        ; 2 uses
  %i.afw = fcmp oeq float %i.afv, 0.000000e+00
  %spec.store.select.i96 = select i1 %i.afw, float f0x01000000, float %i.afv ; 2 uses
  %i.afx = fcmp ogt float %i.afu, 0.000000e+00
  %i.afy = fdiv float 2.550000e+02, %i.afu
  %i.afz = select i1 %i.afx, float %i.afy, float 0.000000e+00
  %i.aga = shufflevector <4 x float> %i.afm, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.agb = fsub <4 x float> %i.afh, %i.aga
  %i.agc = insertelement <4 x float> poison, float %i.afz, i64 0
  %i.agd = shufflevector <4 x float> %i.agc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.age = fmul <4 x float> %i.agb, %i.agd
  %i.agf = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.age)
  %i.agg = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.agf)
  %.inner1065.a = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.agg, <4 x i32> zeroinitializer) ; 2 uses
  %i.agh = fsub <4 x float> %i.afo, %i.aga
  %i.agi = fmul <4 x float> %i.agh, %i.agd
  %i.agj = call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.agi)
  %i.agk = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.agj)
  %.inner1067 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.agk, <4 x i32> splat (i32 255)) ; 2 uses
  %i.agl = uitofp nneg <4 x i32> %.inner1065.a to <4 x float>
  %i.agm = insertelement <4 x float> poison, float %spec.store.select.i96, i64 0
  %i.agn = shufflevector <4 x float> %i.agm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ago = fmul <4 x float> %i.agn, %i.agl
  %i.agp = fadd <4 x float> %i.aga, %i.ago
  %i.agq = fcmp ugt <4 x float> %i.agp, %i.afh
  %i.agr = sitofp <4 x i32> %.inner1067 to <4 x float>
  %i.ags = fmul <4 x float> %i.agn, %i.agr
  %i.agt = fadd <4 x float> %i.aga, %i.ags
  %i.agu = fcmp olt <4 x float> %i.agt, %i.afo
  %i.agv = sext <4 x i1> %i.agq to <4 x i32>
  %.inner1069 = add nsw <4 x i32> %.inner1065.a, %i.agv
  %.inner1071 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.inner1069, <4 x i32> zeroinitializer)
  %i.agw = zext <4 x i1> %i.agu to <4 x i32>
  %.inner1073 = add nsw <4 x i32> %.inner1067, %i.agw
  %.inner1077 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %.inner1073, <4 x i32> splat (i32 255))
  %.inner1081 = select <4 x i1> %i.afi, <4 x i32> %.inner1071, <4 x i32> splat (i32 255) ; 4 uses
  %.inner1082.a = select <4 x i1> %i.afi, <4 x i32> %.inner1077, <4 x i32> zeroinitializer ; 4 uses
  %i.agx = bitcast <4 x i32> %.inner1081 to <16 x i8>
  %i.agy = extractelement <16 x i8> %i.agx, i64 0
  store i8 %i.agy, ptr %i.afg, align 8
  %i.agz = bitcast <4 x i32> %.inner1081 to <16 x i8>
  %i.aha = extractelement <16 x i8> %i.agz, i64 4
  %i.ahb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 41
  store i8 %i.aha, ptr %i.ahb, align 1
  %i.ahc = bitcast <4 x i32> %.inner1081 to <16 x i8>
  %i.ahd = extractelement <16 x i8> %i.ahc, i64 8
  %i.ahe = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 42
  store i8 %i.ahd, ptr %i.ahe, align 2
  %i.ahf = bitcast <4 x i32> %.inner1081 to <16 x i8>
  %i.ahg = extractelement <16 x i8> %i.ahf, i64 12
  %i.ahh = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 43
  store i8 %i.ahg, ptr %i.ahh, align 1
  %i.ahi = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 44
  %i.ahj = bitcast <4 x i32> %.inner1082.a to <16 x i8>
  %i.ahk = extractelement <16 x i8> %i.ahj, i64 0
  store i8 %i.ahk, ptr %i.ahi, align 4
  %i.ahl = bitcast <4 x i32> %.inner1082.a to <16 x i8>
  %i.ahm = extractelement <16 x i8> %i.ahl, i64 4
  %i.ahn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 45
  store i8 %i.ahm, ptr %i.ahn, align 1
  %i.aho = bitcast <4 x i32> %.inner1082.a to <16 x i8>
  %i.ahp = extractelement <16 x i8> %i.aho, i64 8
  %i.ahq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 46
  store i8 %i.ahp, ptr %i.ahq, align 2
  %i.ahr = bitcast <4 x i32> %.inner1082.a to <16 x i8>
  %i.ahs = extractelement <16 x i8> %i.ahr, i64 12
  %i.aht = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 47
  store i8 %i.ahs, ptr %i.aht, align 1
  %i.ahu = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 60
  %i.ahv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 72
  store float %i.afn, ptr %i.ahu, align 4
  store float %spec.store.select.i96, ptr %i.ahv, align 8
  %i.ahw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  %i.ahx = load <4 x float>, ptr %i.xh, align 32, !noalias !946 ; 5 uses
  %i.ahy = fcmp une <4 x float> %i.ahx, splat (float +inf) ; 2 uses
  %i.ahz = shufflevector <4 x float> %i.ahx, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aia = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ahz, <4 x float> %i.ahx) ; 2 uses
  %i.aib = shufflevector <4 x float> %i.aia, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aic = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aib, <4 x float> %i.aia) ; 3 uses
  %i.aid = extractelement <4 x float> %i.aic, i64 0
  %i.aie = load <4 x float>, ptr %i.xk, align 16, !noalias !947 ; 4 uses
  %i.aif = shufflevector <4 x float> %i.aie, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aig = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aif, <4 x float> %i.aie) ; 2 uses
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aii = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aih, <4 x float> %i.aig)
  %foldExtExtBinop1083 = fsub <4 x float> %i.aii, %i.aic
  %i.aij = extractelement <4 x float> %foldExtExtBinop1083, i64 0
  %i.aik = fmul float %i.aij, f0x3F800002         ; 3 uses
  %i.ail = fdiv float %i.aik, 2.550000e+02        ; 2 uses
  %i.aim = fcmp oeq float %i.ail, 0.000000e+00
  %spec.store.select.i = select i1 %i.aim, float f0x01000000, float %i.ail ; 2 uses
  %i.ain = fcmp ogt float %i.aik, 0.000000e+00
  %i.aio = fdiv float 2.550000e+02, %i.aik
  %i.aip = select i1 %i.ain, float %i.aio, float 0.000000e+00
  %i.aiq = shufflevector <4 x float> %i.aic, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.air = fsub <4 x float> %i.ahx, %i.aiq
  %i.ais = insertelement <4 x float> poison, float %i.aip, i64 0
  %i.ait = shufflevector <4 x float> %i.ais, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aiu = fmul <4 x float> %i.air, %i.ait
  %i.aiv = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.aiu)
  %i.aiw = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.aiv)
  %.inner1086.a = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aiw, <4 x i32> zeroinitializer) ; 2 uses
  %i.aix = fsub <4 x float> %i.aie, %i.aiq
  %i.aiy = fmul <4 x float> %i.aix, %i.ait
  %i.aiz = call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.aiy)
  %i.aja = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.aiz)
  %.inner1088 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.aja, <4 x i32> splat (i32 255)) ; 2 uses
  %i.ajb = uitofp nneg <4 x i32> %.inner1086.a to <4 x float>
  %i.ajc = insertelement <4 x float> poison, float %spec.store.select.i, i64 0
  %i.ajd = shufflevector <4 x float> %i.ajc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aje = fmul <4 x float> %i.ajd, %i.ajb
  %i.ajf = fadd <4 x float> %i.aiq, %i.aje
  %i.ajg = fcmp ugt <4 x float> %i.ajf, %i.ahx
  %i.ajh = sitofp <4 x i32> %.inner1088 to <4 x float>
  %i.aji = fmul <4 x float> %i.ajd, %i.ajh
  %i.ajj = fadd <4 x float> %i.aiq, %i.aji
  %i.ajk = fcmp olt <4 x float> %i.ajj, %i.aie
  %i.ajl = sext <4 x i1> %i.ajg to <4 x i32>
  %.inner1090 = add nsw <4 x i32> %.inner1086.a, %i.ajl
  %.inner1092 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.inner1090, <4 x i32> zeroinitializer)
  %i.ajm = zext <4 x i1> %i.ajk to <4 x i32>
  %.inner1094 = add nsw <4 x i32> %.inner1088, %i.ajm
  %.inner1098 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %.inner1094, <4 x i32> splat (i32 255))
  %.inner1102 = select <4 x i1> %i.ahy, <4 x i32> %.inner1092, <4 x i32> splat (i32 255) ; 4 uses
  %.inner1103 = select <4 x i1> %i.ahy, <4 x i32> %.inner1098, <4 x i32> zeroinitializer ; 4 uses
  %i.ajn = bitcast <4 x i32> %.inner1102 to <16 x i8>
  %i.ajo = extractelement <16 x i8> %i.ajn, i64 0
  store i8 %i.ajo, ptr %i.ahw, align 8
  %i.ajp = bitcast <4 x i32> %.inner1102 to <16 x i8>
  %i.ajq = extractelement <16 x i8> %i.ajp, i64 4
  %i.ajr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 49
  store i8 %i.ajq, ptr %i.ajr, align 1
  %i.ajs = bitcast <4 x i32> %.inner1102 to <16 x i8>
  %i.ajt = extractelement <16 x i8> %i.ajs, i64 8
  %i.aju = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 50
  store i8 %i.ajt, ptr %i.aju, align 2
  %i.ajv = bitcast <4 x i32> %.inner1102 to <16 x i8>
  %i.ajw = extractelement <16 x i8> %i.ajv, i64 12
  %i.ajx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 51
  store i8 %i.ajw, ptr %i.ajx, align 1
  %i.ajy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 52
  %i.ajz = bitcast <4 x i32> %.inner1103 to <16 x i8>
  %i.aka = extractelement <16 x i8> %i.ajz, i64 0
  store i8 %i.aka, ptr %i.ajy, align 4
  %i.akb = bitcast <4 x i32> %.inner1103 to <16 x i8>
  %i.akc = extractelement <16 x i8> %i.akb, i64 4
  %i.akd = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 53
  store i8 %i.akc, ptr %i.akd, align 1
  %i.ake = bitcast <4 x i32> %.inner1103 to <16 x i8>
  %i.akf = extractelement <16 x i8> %i.ake, i64 8
  %i.akg = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 54
  store i8 %i.akf, ptr %i.akg, align 2
  %i.akh = bitcast <4 x i32> %.inner1103 to <16 x i8>
  %i.aki = extractelement <16 x i8> %i.akh, i64 12
  %i.akj = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 55
  store i8 %i.aki, ptr %i.akj, align 1
  %i.akk = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 64
  %i.akl = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 76
  store float %i.aid, ptr %i.akk, align 8
  store float %spec.store.select.i, ptr %i.akl, align 4
  %i.akm = ptrtoint ptr %.1.i.i to i64            ; 3 uses
  %i.akn = or i64 %i.akm, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  %i.ako = load i64, ptr %i.cr, align 8
  %i.akp = load i64, ptr %i.cq, align 16
  %i.akq = sub i64 %i.ako, %i.akp
  %i.akr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aks = load i64, ptr %i.akr, align 8
  %i.akt = icmp ugt i64 %i.akq, %i.aks
  br i1 %i.akt, label %bb.bu, label %.lr.ph660

bb.bu:                                            ; preds = %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #5
  store ptr %30, ptr %35, align 8
  %i.aku = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %0, ptr %i.aku, align 8
  %i.akv = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %31, ptr %i.akv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  store ptr null, ptr %4, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS3_12BuildRecordTINS2_13PrimInfoRangeENS2_8BinSplitILm32EEEEENS2_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES6_SB_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_15QuantizedNode_tISE_Li4EE7Create2ENSJ_4Set2EZNS2_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPSB_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS3_8SettingsEEUlPKSB_RKNS_5rangeImEERKSG_E_NS3_24DefaultCanCreateLeafFuncISB_S6_EENS3_29DefaultCanCreateLeafSplitFuncISB_S6_EESQ_E7recurseERS9_SG_bEUlS16_E_EEvT_S1H_S1H_RKT0_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %.065.lcssa, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull %4)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.bx

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.bv
  %i.akw = load ptr, ptr %4, align 8              ; 2 uses
  %.not522 = icmp eq ptr %i.akw, null
  br i1 %.not522, label %.lr.ph666.preheader, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.akw, ptr %5, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %5) #25
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.akx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit166

bb.by:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.aky = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akz = load ptr, ptr %5, align 8
  %.not.i165 = icmp eq ptr %i.akz, null
  br i1 %.not.i165, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit166, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit166

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit166: ; preds = %bb.bz, %bb.by, %bb.bx
  %.pn.i109 = phi { ptr, i32 } [ %i.akx, %bb.bx ], [ %i.aky, %bb.by ], [ %i.aky, %bb.bz ]
  %i.ala = load ptr, ptr %4, align 8
  %.not.i.i167 = icmp eq ptr %i.ala, null
  br i1 %.not.i.i167, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit166
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #5
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit166, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %common.resume

.lr.ph666.preheader:                              ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #5
  %i.alb = and i64 %i.akm, -16                    ; 2 uses
  %i.alc = inttoptr i64 %i.alb to ptr             ; 6 uses
  %min.iters.check1030 = icmp ult i64 %.065.lcssa, 8
  %i.ald = sub i64 %i.c, %i.alb
  %diff.check1028 = icmp ugt i64 %i.ald, -32
  %or.cond1041 = or i1 %min.iters.check1030, %diff.check1028
  br i1 %or.cond1041, label %.lr.ph666.preheader1125, label %vector.ph1031

vector.ph1031:                                    ; preds = %.lr.ph666.preheader
  %n.vec1032 = and i64 %.065.lcssa, -4            ; 3 uses
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %vector.ph1031
  %index1034 = phi i64 [ 0, %vector.ph1031 ], [ %index.next1037, %vector.body1033 ] ; 3 uses
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %index1034 ; 2 uses
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %index1034 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 16
  %wide.load1035 = load <2 x i64>, ptr %i.ale, align 16
  %wide.load1036 = load <2 x i64>, ptr %i.alg, align 16
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  store <2 x i64> %wide.load1035, ptr %i.alf, align 16
  store <2 x i64> %wide.load1036, ptr %i.alh, align 16
  %index.next1037 = add nuw i64 %index1034, 4     ; 2 uses
  %i.ali = icmp eq i64 %index.next1037, %n.vec1032
  br i1 %i.ali, label %middle.block1038, label %vector.body1033, !llvm.loop !895

middle.block1038:                                 ; preds = %vector.body1033
  %cmp.n1039 = icmp eq i64 %.065.lcssa, %n.vec1032
  br i1 %cmp.n1039, label %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE4Set2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit94, label %.lr.ph666.preheader1125

.lr.ph666.preheader1125:                          ; preds = %.lr.ph666.preheader, %middle.block1038
  %.0.i92665.ph = phi i64 [ 0, %.lr.ph666.preheader ], [ %n.vec1032, %middle.block1038 ] ; 3 uses
  %xtraiter1216 = and i64 %.065.lcssa, 3          ; 2 uses
  %lcmp.mod1217.not = icmp eq i64 %xtraiter1216, 0
  br i1 %lcmp.mod1217.not, label %.lr.ph666.prol.loopexit, label %.lr.ph666.prol

.lr.ph666.prol:                                   ; preds = %.lr.ph666.preheader1125, %.lr.ph666.prol
  %.0.i92665.prol = phi i64 [ %i.alm, %.lr.ph666.prol ], [ %.0.i92665.ph, %.lr.ph666.preheader1125 ] ; 3 uses
  %prol.iter1218 = phi i64 [ %prol.iter1218.next, %.lr.ph666.prol ], [ 0, %.lr.ph666.preheader1125 ]
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %.0.i92665.prol
  %i.alk = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %.0.i92665.prol
  %i.all = load i64, ptr %i.alj, align 8
  store i64 %i.all, ptr %i.alk, align 8
  %i.alm = add nuw i64 %.0.i92665.prol, 1         ; 2 uses
  %prol.iter1218.next = add i64 %prol.iter1218, 1 ; 2 uses
  %prol.iter1218.cmp.not = icmp eq i64 %prol.iter1218.next, %xtraiter1216
  br i1 %prol.iter1218.cmp.not, label %.lr.ph666.prol.loopexit, label %.lr.ph666.prol, !llvm.loop !896

.lr.ph666.prol.loopexit:                          ; preds = %.lr.ph666.prol, %.lr.ph666.preheader1125
  %.0.i92665.unr = phi i64 [ %.0.i92665.ph, %.lr.ph666.preheader1125 ], [ %i.alm, %.lr.ph666.prol ]
  %i.aln = sub i64 %.0.i92665.ph, %.065.lcssa
  %i.alo = icmp ugt i64 %i.aln, -4
  br i1 %i.alo, label %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE4Set2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit94, label %.lr.ph666

.lr.ph666:                                        ; preds = %.lr.ph666.prol.loopexit, %.lr.ph666
  %.0.i92665 = phi i64 [ %i.ame, %.lr.ph666 ], [ %.0.i92665.unr, %.lr.ph666.prol.loopexit ] ; 6 uses
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %.0.i92665
  %i.alq = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %.0.i92665
  %i.alr = load i64, ptr %i.alp, align 8
  store i64 %i.alr, ptr %i.alq, align 8
  %i.als = add nuw i64 %.0.i92665, 1              ; 2 uses
  %i.alt = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %i.als
  %i.alu = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %i.als
  %i.alv = load i64, ptr %i.alt, align 8
  store i64 %i.alv, ptr %i.alu, align 8
  %i.alw = add nuw i64 %.0.i92665, 2              ; 2 uses
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %i.alw
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %i.alw
  %i.alz = load i64, ptr %i.alx, align 8
  store i64 %i.alz, ptr %i.aly, align 8
  %i.ama = add nuw i64 %.0.i92665, 3              ; 2 uses
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %i.ama
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %i.ama
  %i.amd = load i64, ptr %i.amb, align 8
  store i64 %i.amd, ptr %i.amc, align 8
  %i.ame = add nuw i64 %.0.i92665, 4              ; 2 uses
  %exitcond751.not.3 = icmp eq i64 %i.ame, %.065.lcssa
  br i1 %exitcond751.not.3, label %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE4Set2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit94, label %.lr.ph666, !llvm.loop !897

.lr.ph664.preheader:                              ; preds = %.lr.ph660
  %i.amf = and i64 %i.akm, -16                    ; 2 uses
  %i.amg = inttoptr i64 %i.amf to ptr             ; 6 uses
  %min.iters.check1016 = icmp ult i64 %.065.lcssa, 8
  %i.amh = sub i64 %i.c, %i.amf
  %diff.check = icmp ugt i64 %i.amh, -32
  %or.cond1042 = or i1 %min.iters.check1016, %diff.check
  br i1 %or.cond1042, label %.lr.ph664.preheader1126, label %vector.ph1017

vector.ph1017:                                    ; preds = %.lr.ph664.preheader
  %n.vec1018 = and i64 %.065.lcssa, -4            ; 3 uses
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %vector.ph1017
  %index1020 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1023, %vector.body1019 ] ; 3 uses
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %index1020 ; 2 uses
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %index1020 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ami, i64 16
  %wide.load1021 = load <2 x i64>, ptr %i.ami, align 16
  %wide.load1022 = load <2 x i64>, ptr %i.amk, align 16
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amj, i64 16
  store <2 x i64> %wide.load1021, ptr %i.amj, align 16
  store <2 x i64> %wide.load1022, ptr %i.aml, align 16
  %index.next1023 = add nuw i64 %index1020, 4     ; 2 uses
  %i.amm = icmp eq i64 %index.next1023, %n.vec1018
  br i1 %i.amm, label %middle.block1024, label %vector.body1019, !llvm.loop !898

middle.block1024:                                 ; preds = %vector.body1019
  %cmp.n1025 = icmp eq i64 %.065.lcssa, %n.vec1018
  br i1 %cmp.n1025, label %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE4Set2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit94, label %.lr.ph664.preheader1126

.lr.ph664.preheader1126:                          ; preds = %.lr.ph664.preheader, %middle.block1024
  %.0.i91662.ph = phi i64 [ 0, %.lr.ph664.preheader ], [ %n.vec1018, %middle.block1024 ] ; 3 uses
  %xtraiter1214 = and i64 %.065.lcssa, 3          ; 2 uses
  %lcmp.mod1215.not = icmp eq i64 %xtraiter1214, 0
  br i1 %lcmp.mod1215.not, label %.lr.ph664.prol.loopexit, label %.lr.ph664.prol

.lr.ph664.prol:                                   ; preds = %.lr.ph664.preheader1126, %.lr.ph664.prol
  %.0.i91662.prol = phi i64 [ %i.amq, %.lr.ph664.prol ], [ %.0.i91662.ph, %.lr.ph664.preheader1126 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph664.prol ], [ 0, %.lr.ph664.preheader1126 ]
  %i.amn = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %.0.i91662.prol
  %i.amo = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %.0.i91662.prol
  %i.amp = load i64, ptr %i.amn, align 8
  store i64 %i.amp, ptr %i.amo, align 8
  %i.amq = add nuw i64 %.0.i91662.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1214
  br i1 %prol.iter.cmp.not, label %.lr.ph664.prol.loopexit, label %.lr.ph664.prol, !llvm.loop !899

.lr.ph664.prol.loopexit:                          ; preds = %.lr.ph664.prol, %.lr.ph664.preheader1126
  %.0.i91662.unr = phi i64 [ %.0.i91662.ph, %.lr.ph664.preheader1126 ], [ %i.amq, %.lr.ph664.prol ]
  %i.amr = sub i64 %.0.i91662.ph, %.065.lcssa
  %i.ams = icmp ugt i64 %i.amr, -4
  br i1 %i.ams, label %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE4Set2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit94, label %.lr.ph664

.lr.ph664:                                        ; preds = %.lr.ph664.prol.loopexit, %.lr.ph664
  %.0.i91662 = phi i64 [ %i.ani, %.lr.ph664 ], [ %.0.i91662.unr, %.lr.ph664.prol.loopexit ] ; 6 uses
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %.0.i91662
  %i.amu = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %.0.i91662
  %i.amv = load i64, ptr %i.amt, align 8
  store i64 %i.amv, ptr %i.amu, align 8
  %i.amw = add nuw i64 %.0.i91662, 1              ; 2 uses
  %i.amx = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %i.amw
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %i.amw
  %i.amz = load i64, ptr %i.amx, align 8
  store i64 %i.amz, ptr %i.amy, align 8
  %i.ana = add nuw i64 %.0.i91662, 2              ; 2 uses
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %i.ana
  %i.anc = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %i.ana
  %i.and = load i64, ptr %i.anb, align 8
  store i64 %i.and, ptr %i.anc, align 8
  %i.ane = add nuw i64 %.0.i91662, 3              ; 2 uses
  %i.anf = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %i.ane
  %i.ang = getelementptr inbounds nuw [8 x i8], ptr %i.amg, i64 %i.ane
  %i.anh = load i64, ptr %i.anf, align 8
  store i64 %i.anh, ptr %i.ang, align 8
  %i.ani = add nuw i64 %.0.i91662, 4              ; 2 uses
  %exitcond750.not.3 = icmp eq i64 %i.ani, %.065.lcssa
  br i1 %exitcond750.not.3, label %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE4Set2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit94, label %.lr.ph664, !llvm.loop !900

.lr.ph660:                                        ; preds = %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit, %.lr.ph660
  %.0659 = phi i64 [ %i.anm, %.lr.ph660 ], [ 0, %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE7Create2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit ] ; 3 uses
  %i.anj = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %.0659
  %i.ank = call i64 @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_b(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.anj, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %2, i1 noundef zeroext false)
  %i.anl = getelementptr inbounds nuw [8 x i8], ptr %30, i64 %.0659
  store i64 %i.ank, ptr %i.anl, align 8
  %i.anm = add nuw i64 %.0659, 1                  ; 2 uses
  %exitcond749.not = icmp eq i64 %i.anm, %.065.lcssa
  br i1 %exitcond749.not, label %.lr.ph664.preheader, label %.lr.ph660, !llvm.loop !901

_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE4Set2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit94: ; preds = %.lr.ph664.prol.loopexit, %.lr.ph664, %.lr.ph666.prol.loopexit, %.lr.ph666, %middle.block1024, %middle.block1038
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #5
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE4Set2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit94, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit
  %.sroa.058.1 = phi i64 [ %i.dx, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit ], [ %i.akn, %_ZNK6embree15QuantizedNode_tINS_10NodeRefPtrILi4EEELi4EE4Set2clINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_RKT_PSE_S2_PS2_m.exit94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #5
  ret i64 %.sroa.058.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E15createLargeLeafERKS7_SE_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.embree::Lock", align 8      ; 6 uses
  %4 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %5 = alloca %"struct.embree::AABBNode_t", align 64 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca [16 x %"struct.embree::NodeRefPtr"], align 16 ; 4 uses
  %9 = alloca [16 x %"struct.embree::sse2::GeneralBVHBuilder::BuildRecordT"], align 16 ; 18 uses
  %i.c = load i64, ptr %1, align 16               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 48) #5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #25
          to label %bb.aj unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.g) #5
  %i.l = load ptr, ptr %6, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %6, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread342: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.p) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn335 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.k, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @__cxa_free_exception(ptr %i.g) #5
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load i64, ptr %i.t, align 8
  %i.v = load i64, ptr %i.s, align 16
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  %.not = icmp ugt i64 %i.w, %i.y
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !21, !align !22
  %i.ac = load ptr, ptr %i.z, align 8
  %i.ad = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call i64 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !948
  br label %bb.ai

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %9, ptr noundef nonnull align 16 dereferenceable(96) %1, i64 9, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load <4 x float>, ptr %i.ai, align 16
  store <4 x float> %i.aj, ptr %i.ah, align 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.am = load <4 x float>, ptr %i.ak, align 16
  store <4 x float> %i.am, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load <4 x float>, ptr %i.ao, align 16
  store <4 x float> %i.ap, ptr %i.an, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.as = load <4 x float>, ptr %i.aq, align 16
  store <4 x float> %i.as, ptr %i.ar, align 16
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.at, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.au = add i64 %i.c, 1                         ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f, %.loopexit358
  %indvar = phi i64 [ 0, %bb.f ], [ %indvar.next, %.loopexit358 ] ; 2 uses
  %.054 = phi i64 [ 1, %bb.f ], [ %i.fm, %.loopexit358 ] ; 6 uses
  %xtraiter = and i64 %.054, 1
  %i.aw = icmp eq i64 %indvar, 0
  br i1 %i.aw, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.054, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.050368.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bu, %._crit_edge.unr-lcssa ] ; 2 uses
  %.051367.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ]
  %.052366.epil.init = phi i64 [ -1, %.lr.ph.preheader ], [ %.153.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod559 = trunc i64 %.054 to i1
  tail call void @llvm.assume(i1 %lcmp.mod559)
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.050368.epil.init ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = load i64, ptr %i.ay, align 16
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %.not64.epil = icmp ugt i64 %i.bc, %i.y
  %i.bd = icmp ugt i64 %i.bc, %.051367.epil.init
  %spec.select.epil = select i1 %i.bd, i64 %.050368.epil.init, i64 %.052366.epil.init
  %.153.epil = select i1 %.not64.epil, i64 %spec.select.epil, i64 %.052366.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.153.lcssa = phi i64 [ %.153.1, %._crit_edge.unr-lcssa ], [ %.153.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.be = icmp eq i64 %.153.lcssa, -1
  br i1 %i.be, label %bb.k, label %bb.j

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.050368 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bu, %bb.i ] ; 4 uses
  %.051367 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %bb.i ] ; 3 uses
  %.052366 = phi i64 [ -1, %.lr.ph.preheader.new ], [ %.153.1, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.bf = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.050368 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 88
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = load i64, ptr %i.bg, align 16
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %.not64 = icmp ugt i64 %i.bk, %i.y
  br i1 %.not64, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.bl = icmp ugt i64 %i.bk, %.051367
  %spec.select = select i1 %i.bl, i64 %.050368, i64 %.052366
  %spec.select351 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %.051367)
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.g
  %.153 = phi i64 [ %spec.select, %bb.g ], [ %.052366, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %spec.select351, %bb.g ], [ %.051367, %.lr.ph ] ; 3 uses
  %i.bm = or disjoint i64 %.050368, 1             ; 2 uses
  %i.bn = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = load i64, ptr %i.bo, align 16
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %.not64.1 = icmp ugt i64 %i.bs, %i.y
  br i1 %.not64.1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bt = icmp ugt i64 %i.bs, %.1
  %spec.select.1 = select i1 %i.bt, i64 %i.bm, i64 %.153
  %spec.select351.1 = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 %.1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %.153.1 = phi i64 [ %spec.select.1, %bb.h ], [ %.153, %.lr.ph.1 ] ; 3 uses
  %.1.1 = phi i64 [ %spec.select351.1, %bb.h ], [ %.1, %.lr.ph.1 ] ; 2 uses
  %i.bu = add nuw i64 %.050368, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !949

bb.j:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.153.lcssa ; 7 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.av, align 8, !nonnull !21, !align !22
  %i.by = load ptr, ptr %i.bx, align 8            ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 80 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 16           ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 88
  %i.cc = load i64, ptr %i.cb, align 8            ; 6 uses
  %i.cd = add i64 %i.cc, %i.ca
  %i.ce = lshr i64 %i.cd, 1                       ; 12 uses
  %i.cf = icmp ult i64 %i.ca, %i.ce
  br i1 %i.cf, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.cg = sub nuw i64 %i.ce, %i.ca
  %.neg = add i64 %i.ca, 1
  %xtraiter560 = and i64 %i.cg, 1
  %lcmp.mod561.not = icmp eq i64 %xtraiter560, 0
  br i1 %lcmp.mod561.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.ca ; 2 uses
  %i.ci = load <4 x float>, ptr %i.ch, align 16, !noalias !983 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !noalias !984 ; 2 uses
  %i.cl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ci) ; 2 uses
  %i.cm = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ck) ; 2 uses
  %i.cn = fadd <4 x float> %i.ci, %i.ck           ; 2 uses
  %i.co = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.cn) ; 2 uses
  %i.cp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.cn) ; 2 uses
  %i.cq = add nuw nsw i64 %i.ca, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa553.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.prol ]
  %.lcssa552.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.prol ]
  %.lcssa551.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.co, %.lr.ph.i.i.prol ]
  %.lcssa.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.prol ]
  %.02166.i.i.unr = phi i64 [ %i.ca, %.lr.ph.i.i.preheader ], [ %i.cq, %.lr.ph.i.i.prol ]
  %.sroa.028.065.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.prol ]
  %.sroa.630.064.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.prol ]
  %.sroa.1032.063.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.preheader ], [ %i.co, %.lr.ph.i.i.prol ]
  %.sroa.1434.062.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.prol ]
  %i.cr = icmp eq i64 %i.ce, %.neg
  br i1 %i.cr, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.j
  %.sroa.1434.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %bb.j ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.dx, %.lr.ph.i.i ]
  %.sroa.1032.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %bb.j ], [ %.lcssa551.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.dw, %.lr.ph.i.i ]
  %.sroa.630.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %bb.j ], [ %.lcssa552.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.du, %.lr.ph.i.i ]
  %.sroa.028.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %bb.j ], [ %.lcssa553.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.dt, %.lr.ph.i.i ]
  %i.cs = icmp ult i64 %i.ce, %i.cc
  br i1 %i.cs, label %.lr.ph76.i.i.preheader, label %.loopexit358

.lr.ph76.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.ct = sub nuw i64 %i.cc, %i.ce
  %.neg569 = add nuw i64 %i.ce, 1
  %xtraiter562 = and i64 %i.ct, 1
  %lcmp.mod563.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %.lr.ph76.i.i.prol.loopexit, label %.lr.ph76.i.i.prol

.lr.ph76.i.i.prol:                                ; preds = %.lr.ph76.i.i.preheader
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.ce ; 2 uses
  %i.cv = load <4 x float>, ptr %i.cu, align 16, !noalias !985 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = load <4 x float>, ptr %i.cw, align 16, !noalias !986 ; 2 uses
  %i.cy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.cv) ; 2 uses
  %i.cz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.cx) ; 2 uses
  %i.da = fadd <4 x float> %i.cv, %i.cx           ; 2 uses
  %i.db = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.da) ; 2 uses
  %i.dc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.da) ; 2 uses
  %i.dd = add nuw i64 %i.ce, 1
  br label %.lr.ph76.i.i.prol.loopexit

.lr.ph76.i.i.prol.loopexit:                       ; preds = %.lr.ph76.i.i.prol, %.lr.ph76.i.i.preheader
  %.lcssa557.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.cy, %.lr.ph76.i.i.prol ]
  %.lcssa556.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.cz, %.lr.ph76.i.i.prol ]
  %.lcssa555.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.db, %.lr.ph76.i.i.prol ]
  %.lcssa554.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.dc, %.lr.ph76.i.i.prol ]
  %.074.i.i.unr = phi i64 [ %i.ce, %.lr.ph76.i.i.preheader ], [ %i.dd, %.lr.ph76.i.i.prol ]
  %.sroa.0.073.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i.preheader ], [ %i.cy, %.lr.ph76.i.i.prol ]
  %.sroa.6.072.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i.preheader ], [ %i.cz, %.lr.ph76.i.i.prol ]
  %.sroa.10.071.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i.preheader ], [ %i.db, %.lr.ph76.i.i.prol ]
  %.sroa.14.070.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i.preheader ], [ %i.dc, %.lr.ph76.i.i.prol ]
  %i.de = icmp eq i64 %i.cc, %.neg569
  br i1 %i.de, label %.loopexit358, label %.lr.ph76.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02166.i.i = phi i64 [ %i.dy, %.lr.ph.i.i ], [ %.02166.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.sroa.028.065.i.i = phi <4 x float> [ %i.dt, %.lr.ph.i.i ], [ %.sroa.028.065.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.630.064.i.i = phi <4 x float> [ %i.du, %.lr.ph.i.i ], [ %.sroa.630.064.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.1032.063.i.i = phi <4 x float> [ %i.dw, %.lr.ph.i.i ], [ %.sroa.1032.063.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.1434.062.i.i = phi <4 x float> [ %i.dx, %.lr.ph.i.i ], [ %.sroa.1434.062.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %.02166.i.i ; 2 uses
  %i.dg = load <4 x float>, ptr %i.df, align 16, !noalias !983 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.di = load <4 x float>, ptr %i.dh, align 16, !noalias !984 ; 2 uses
  %i.dj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.028.065.i.i, <4 x float> %i.dg)
  %i.dk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.630.064.i.i, <4 x float> %i.di)
  %i.dl = fadd <4 x float> %i.dg, %i.di           ; 2 uses
  %i.dm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1032.063.i.i, <4 x float> %i.dl)
  %i.dn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1434.062.i.i, <4 x float> %i.dl)
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %.02166.i.i ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.dq = load <4 x float>, ptr %i.dp, align 16, !noalias !983 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.ds = load <4 x float>, ptr %i.dr, align 16, !noalias !984 ; 2 uses
  %i.dt = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dj, <4 x float> %i.dq) ; 2 uses
  %i.du = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dk, <4 x float> %i.ds) ; 2 uses
  %i.dv = fadd <4 x float> %i.dq, %i.ds           ; 2 uses
  %i.dw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dm, <4 x float> %i.dv) ; 2 uses
  %i.dx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dn, <4 x float> %i.dv) ; 2 uses
  %i.dy = add nuw nsw i64 %.02166.i.i, 2          ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.dy, %i.ce
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph76.i.i:                                     ; preds = %.lr.ph76.i.i.prol.loopexit, %.lr.ph76.i.i
  %.074.i.i = phi i64 [ %i.es, %.lr.ph76.i.i ], [ %.074.i.i.unr, %.lr.ph76.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.073.i.i = phi <4 x float> [ %i.en, %.lr.ph76.i.i ], [ %.sroa.0.073.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %.sroa.6.072.i.i = phi <4 x float> [ %i.eo, %.lr.ph76.i.i ], [ %.sroa.6.072.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %.sroa.10.071.i.i = phi <4 x float> [ %i.eq, %.lr.ph76.i.i ], [ %.sroa.10.071.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %.sroa.14.070.i.i = phi <4 x float> [ %i.er, %.lr.ph76.i.i ], [ %.sroa.14.070.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %.074.i.i ; 2 uses
  %i.ea = load <4 x float>, ptr %i.dz, align 16, !noalias !985 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ec = load <4 x float>, ptr %i.eb, align 16, !noalias !986 ; 2 uses
  %i.ed = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.073.i.i, <4 x float> %i.ea)
  %i.ee = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.072.i.i, <4 x float> %i.ec)
  %i.ef = fadd <4 x float> %i.ea, %i.ec           ; 2 uses
  %i.eg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.071.i.i, <4 x float> %i.ef)
  %i.eh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.070.i.i, <4 x float> %i.ef)
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %.074.i.i ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load <4 x float>, ptr %i.ej, align 16, !noalias !985 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.em = load <4 x float>, ptr %i.el, align 16, !noalias !986 ; 2 uses
  %i.en = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ed, <4 x float> %i.ek) ; 2 uses
  %i.eo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ee, <4 x float> %i.em) ; 2 uses
  %i.ep = fadd <4 x float> %i.ek, %i.em           ; 2 uses
  %i.eq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.eg, <4 x float> %i.ep) ; 2 uses
  %i.er = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eh, <4 x float> %i.ep) ; 2 uses
  %i.es = add nuw i64 %.074.i.i, 2                ; 2 uses
  %exitcond89.not.i.i.1 = icmp eq i64 %i.es, %i.cc
  br i1 %exitcond89.not.i.i.1, label %.loopexit358, label %.lr.ph76.i.i, !llvm.loop !1

.loopexit358:                                     ; preds = %.lr.ph76.i.i.prol.loopexit, %.lr.ph76.i.i, %._crit_edge.i.i
  %.sroa.14.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %._crit_edge.i.i ], [ %.lcssa554.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.er, %.lr.ph76.i.i ]
  %.sroa.10.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %._crit_edge.i.i ], [ %.lcssa555.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.eq, %.lr.ph76.i.i ]
  %.sroa.6.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %._crit_edge.i.i ], [ %.lcssa556.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.eo, %.lr.ph76.i.i ]
  %.sroa.0.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %._crit_edge.i.i ], [ %.lcssa557.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.en, %.lr.ph76.i.i ]
  %i.et = getelementptr [96 x i8], ptr %9, i64 %.054 ; 16 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 -96    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bv, ptr noundef nonnull align 16 dereferenceable(96) %i.eu, i64 9, i1 false)
  %i.ev = getelementptr i8, ptr %i.et, i64 -80    ; 2 uses
  %i.ew = load <4 x float>, ptr %i.ev, align 16
  store <4 x float> %i.ew, ptr %i.bw, align 16
  %i.ex = getelementptr i8, ptr %i.et, i64 -64    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ez = load <4 x float>, ptr %i.ex, align 16
  store <4 x float> %i.ez, ptr %i.ey, align 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.fb = getelementptr i8, ptr %i.et, i64 -48    ; 2 uses
  %i.fc = load <4 x float>, ptr %i.fb, align 16
  store <4 x float> %i.fc, ptr %i.fa, align 16
  %i.fd = getelementptr i8, ptr %i.et, i64 -32    ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.ff = load <4 x float>, ptr %i.fd, align 16
  store <4 x float> %i.ff, ptr %i.fe, align 16
  %i.fg = getelementptr i8, ptr %i.et, i64 -16    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bz, ptr noundef nonnull align 16 dereferenceable(16) %i.fg, i64 16, i1 false)
  store i64 %i.au, ptr %i.eu, align 16
  %.sroa.493.0..sroa_idx = getelementptr i8, ptr %i.et, i64 -88
  store i8 0, ptr %.sroa.493.0..sroa_idx, align 8
  store <4 x float> %.sroa.028.0.lcssa.i.i, ptr %i.ev, align 16
  store <4 x float> %.sroa.630.0.lcssa.i.i, ptr %i.ex, align 16
  store <4 x float> %.sroa.1032.0.lcssa.i.i, ptr %i.fb, align 16
  store <4 x float> %.sroa.1434.0.lcssa.i.i, ptr %i.fd, align 16
  store i64 %i.ca, ptr %i.fg, align 16
  %.sroa.20100.80..sroa_idx = getelementptr i8, ptr %i.et, i64 -8
  store i64 %i.ce, ptr %.sroa.20100.80..sroa_idx, align 8
  store i64 %i.au, ptr %i.et, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <4 x float> %.sroa.0.0.lcssa.i.i, ptr %i.fh, align 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  store <4 x float> %.sroa.6.0.lcssa.i.i, ptr %i.fi, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store <4 x float> %.sroa.10.0.lcssa.i.i, ptr %i.fj, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  store <4 x float> %.sroa.14.0.lcssa.i.i, ptr %i.fk, align 16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 80
  store i64 %i.ce, ptr %i.fl, align 16
  %.sroa.20.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 88
  store i64 %i.cc, ptr %.sroa.20.80..sroa_idx, align 8
  %i.fm = add nuw i64 %.054, 1                    ; 3 uses
  %i.fn = load i64, ptr %0, align 8
  %i.fo = icmp ult i64 %i.fm, %i.fn
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fo, label %.lr.ph.preheader, label %bb.k, !llvm.loop !962

bb.k:                                             ; preds = %._crit_edge, %.loopexit358
  %.155348 = phi i64 [ %i.fm, %.loopexit358 ], [ %.054, %._crit_edge ] ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fq = load i64, ptr %i.fp, align 8            ; 4 uses
  %i.fr = icmp ugt i64 %i.w, %i.fq
  br i1 %i.fr, label %.lr.ph370.preheader, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader392, !prof !29

.lr.ph370.preheader:                              ; preds = %bb.k
  %xtraiter564 = and i64 %.155348, 1
  %i.fs = icmp eq i64 %.155348, 1
  br i1 %i.fs, label %.lr.ph370.epil.preheader, label %.lr.ph370.preheader.new

.lr.ph370.preheader.new:                          ; preds = %.lr.ph370.preheader
  %unroll_iter567 = and i64 %.155348, -2
  br label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370, %.lr.ph370.preheader.new
  %.048369 = phi i64 [ 0, %.lr.ph370.preheader.new ], [ %i.gl, %.lr.ph370 ] ; 3 uses
  %niter568 = phi i64 [ 0, %.lr.ph370.preheader.new ], [ %niter568.next.1, %.lr.ph370 ]
  %i.ft = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.048369 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 80
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 88
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = load i64, ptr %i.fu, align 16
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = icmp ule i64 %i.fy, %i.fq
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gb = zext i1 %i.fz to i8
  store i8 %i.gb, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.048369 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 176
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 184
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = load i64, ptr %i.gd, align 16
  %i.gh = sub i64 %i.gf, %i.gg
  %i.gi = icmp ule i64 %i.gh, %i.fq
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 104
  %i.gk = zext i1 %i.gi to i8
  store i8 %i.gk, ptr %i.gj, align 8
  %i.gl = add nuw i64 %.048369, 2                 ; 2 uses
  %niter568.next.1 = add nuw i64 %niter568, 2     ; 2 uses
  %niter568.ncmp.1 = icmp eq i64 %niter568.next.1, %unroll_iter567
  br i1 %niter568.ncmp.1, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader392.loopexit.unr-lcssa, label %.lr.ph370, !llvm.loop !963

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader392.loopexit.unr-lcssa: ; preds = %.lr.ph370
  %lcmp.mod565.not = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod565.not, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader392, label %.lr.ph370.epil.preheader

.lr.ph370.epil.preheader:                         ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader392.loopexit.unr-lcssa, %.lr.ph370.preheader
  %.048369.epil.init = phi i64 [ 0, %.lr.ph370.preheader ], [ %i.gl, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader392.loopexit.unr-lcssa ]
  %lcmp.mod566 = trunc i64 %.155348 to i1
  tail call void @llvm.assume(i1 %lcmp.mod566)
  %i.gm = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.048369.epil.init ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 80
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 88
  %i.gp = load i64, ptr %i.go, align 8
  %i.gq = load i64, ptr %i.gn, align 16
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = icmp ule i64 %i.gr, %i.fq
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gu = zext i1 %i.gs to i8
  store i8 %i.gu, ptr %i.gt, align 8
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader392

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader392: ; preds = %.lr.ph370.epil.preheader, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader392.loopexit.unr-lcssa, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 3 uses
  store <4 x float> splat (float +inf), ptr %i.gv, align 32
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store <4 x float> splat (float +inf), ptr %i.gw, align 64
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store <4 x float> splat (float +inf), ptr %i.gx, align 32
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 3 uses
  store <4 x float> splat (float -inf), ptr %i.gy, align 16
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  store <4 x float> splat (float -inf), ptr %i.gz, align 16
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store <4 x float> splat (float -inf), ptr %i.ha, align 16
  store <4 x i64> splat (i64 8), ptr %5, align 64
  br label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i._crit_edge: ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8            ; 9 uses
  %i.hd = load ptr, ptr %2, align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 80, ptr %i.a, align 8
  %i.he = load ptr, ptr %i.hc, align 64           ; 18 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8 ; 6 uses
  %i.hg = load atomic ptr, ptr %i.hf seq_cst, align 8
  %i.hh = icmp eq ptr %i.hg, %i.hd
  br i1 %i.hh, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  store ptr %i.he, ptr %4, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 1, ptr %i.hi, align 8
  tail call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.he)
  %i.hj = load atomic ptr, ptr %i.hf seq_cst, align 8
  %.not.i8.i = icmp eq ptr %i.hj, null
  br i1 %.not.i8.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 104
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 168
  %i.hn = load i64, ptr %i.hm, align 8
  %i.ho = add i64 %i.hn, %i.hl
  %i.hp = load atomic ptr, ptr %i.hf seq_cst, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 280
  %i.hr = atomicrmw add ptr %i.hq, i64 %i.ho seq_cst, align 8 ; 0 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.he, i64 88
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  %i.hv = load i64, ptr %i.hu, align 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.he, i64 152
  %i.hx = load i64, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.he, i64 144
  %i.hz = load i64, ptr %i.hy, align 16
  %i.ia = add i64 %i.ht, %i.hx
  %i.ib = add i64 %i.hv, %i.hz
  %i.ic = sub i64 %i.ia, %i.ib
  %i.id = load atomic ptr, ptr %i.hf seq_cst, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 288
  %i.if = atomicrmw add ptr %i.ie, i64 %i.ic seq_cst, align 8 ; 0 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.he, i64 112
  %i.ih = load i64, ptr %i.ig, align 16
  %i.ii = getelementptr inbounds nuw i8, ptr %i.he, i64 176
  %i.ij = load i64, ptr %i.ii, align 16
  %i.ik = add i64 %i.ij, %i.ih
  %i.il = load atomic ptr, ptr %i.hf seq_cst, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 296
  %i.in = atomicrmw add ptr %i.im, i64 %i.ik seq_cst, align 8 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit87
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread342 ], [ %.pn335, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.v, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.io, %bb.n ], [ %i.jv, %bb.v ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %common.resume

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ip = getelementptr inbounds nuw i8, ptr %i.he, i64 72
  %.not.i = icmp eq ptr %i.hd, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ip, i8 0, i64 48, i1 false)
  br i1 %.not.i, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.p

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.o
  %i.iq = getelementptr inbounds nuw i8, ptr %i.he, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iq, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit87

bb.p:                                             ; preds = %bb.o
  %i.ir = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  %i.is = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8
  store i64 %i.it, ptr %i.ir, align 32
  %i.iu = getelementptr inbounds nuw i8, ptr %i.he, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.iu, i8 0, i64 48, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.he, i64 160
  %i.iw = load i64, ptr %i.is, align 8
  store i64 %i.iw, ptr %i.iv, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit87

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit87: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.p
  store atomic ptr %i.hd, ptr %i.hf seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %3, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 1, ptr %i.ix, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit87
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hd, i64 304 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hd, i64 312 ; 4 uses
  %i.ja = load ptr, ptr %i.iz, align 8            ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hd, i64 320 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8
  %.not.i88 = icmp eq ptr %i.ja, %i.jc
  br i1 %.not.i88, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  store ptr %i.he, ptr %i.ja, align 8
  %i.jd = load ptr, ptr %i.iz, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store ptr %i.je, ptr %i.iz, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.r:                                             ; preds = %.noexc.i
  %i.jf = load ptr, ptr %i.iy, align 8            ; 4 uses
  %i.jg = ptrtoint ptr %i.ja to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh                    ; 5 uses
  %i.jj = icmp eq i64 %i.ji, 9223372036854775800
  br i1 %i.jj, label %bb.s, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.jk = ashr exact i64 %i.ji, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jk, i64 1)
  %i.jl = add nsw i64 %.sroa.speculated.i.i.i, %i.jk ; 2 uses
  %i.jm = icmp ult i64 %i.jl, %i.jk
  %i.jn = tail call i64 @llvm.umin.i64(i64 %i.jl, i64 1152921504606846975)
  %i.jo = select i1 %i.jm, i64 1152921504606846975, i64 %i.jn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.jp = shl nuw nsw i64 %i.jo, 3
  %i.jq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jp) #27
          to label %.noexc89 unwind label %bb.v   ; 4 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 %i.ji ; 2 uses
  store ptr %i.he, ptr %i.jr, align 8
  %i.js = icmp sgt i64 %i.ji, 0
  br i1 %i.js, label %bb.t, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.t:                                             ; preds = %.noexc89
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jq, ptr align 8 %i.jf, i64 %i.ji, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.t, %.noexc89
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %.not.i17.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.jf) #26
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.jq, ptr %i.iy, align 8
  store ptr %i.jt, ptr %i.iz, align 8
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.jo
  store ptr %i.ju, ptr %i.jb, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.v:                                             ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.s
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %.body.i

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i: ; preds = %bb.q, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.jw = landingpad { ptr, i32 }
          catch ptr null
  %i.jx = extractvalue { ptr, i32 } %i.jw, 0
  tail call void @__clang_call_terminate(ptr %i.jx) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit:          ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.jy = load i8, ptr %i.hi, align 8, !range !26, !noundef !21
  %i.jz = trunc nuw i8 %i.jy to i1
  br i1 %i.jz, label %bb.x, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit90

bb.x:                                             ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit
  %i.ka = load ptr, ptr %4, align 8, !nonnull !21, !align !22
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ka)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit90 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.kb = landingpad { ptr, i32 }
          catch ptr null
  %i.kc = extractvalue { ptr, i32 } %i.kb, 0
  tail call void @__clang_call_terminate(ptr %i.kc) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit90:        ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i: ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit90, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i._crit_edge
  %i.kd = load i64, ptr %i.a, align 8             ; 8 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hc, i64 40 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8
  %i.kg = add i64 %i.kf, %i.kd
  store i64 %i.kg, ptr %i.ke, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 9 uses
  %i.ki = load i64, ptr %i.kh, align 16           ; 3 uses
  %i.kj = sub i64 0, %i.ki
  %i.kk = and i64 %i.kj, 15                       ; 2 uses
  %i.kl = add i64 %i.ki, %i.kd
  %i.km = add i64 %i.kl, %i.kk                    ; 3 uses
  store i64 %i.km, ptr %i.kh, align 16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.hc, i64 24 ; 5 uses
  %i.ko = load i64, ptr %i.kn, align 8
  %.not.i.i = icmp ugt i64 %i.km, %i.ko
  br i1 %.not.i.i, label %bb.aa, label %bb.z, !prof !29

bb.z:                                             ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hc, i64 48 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 16
  %i.kr = add i64 %i.kq, %i.kk
  store i64 %i.kr, ptr %i.kp, align 16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = sub i64 %i.km, %i.kd
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ku
  br label %.lr.ph382.preheader

bb.aa:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  store i64 %i.ki, ptr %i.kh, align 16
  %i.kw = shl i64 %i.kd, 2
  %i.kx = getelementptr inbounds nuw i8, ptr %i.hc, i64 32 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 32           ; 2 uses
  %i.kz = icmp ugt i64 %i.kw, %i.ky
  br i1 %i.kz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.la = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.hd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %.lr.ph382.preheader

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.ky, ptr %i.b, align 8
  %i.lb = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.hd, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  store ptr %i.lb, ptr %i.lc, align 8
  %i.ld = load i64, ptr %i.kn, align 8
  %i.le = load i64, ptr %i.kh, align 16
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %i.hc, i64 48 ; 6 uses
  %i.lh = load i64, ptr %i.lg, align 16
  %i.li = add i64 %i.lh, %i.lf                    ; 2 uses
  store i64 %i.li, ptr %i.lg, align 16
  %i.lj = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.lj, ptr %i.kn, align 8
  store i64 %i.kd, ptr %i.kh, align 16
  %.not23.i.i = icmp ugt i64 %i.kd, %i.lj
  br i1 %.not23.i.i, label %bb.ae, label %bb.ad, !prof !29

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.li, ptr %i.lg, align 16
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  store i64 0, ptr %i.kh, align 16
  %i.lk = load i64, ptr %i.kx, align 32
  store i64 %i.lk, ptr %i.b, align 8
  %i.ll = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.hd, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.ll, ptr %i.lc, align 8
  %i.lm = load i64, ptr %i.kn, align 8
  %i.ln = load i64, ptr %i.kh, align 16
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = load i64, ptr %i.lg, align 16
  %i.lq = add i64 %i.lp, %i.lo                    ; 2 uses
  store i64 %i.lq, ptr %i.lg, align 16
  %i.lr = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.lr, ptr %i.kn, align 8
  store i64 %i.kd, ptr %i.kh, align 16
  %.not24.i.i = icmp ugt i64 %i.kd, %i.lr
  br i1 %.not24.i.i, label %bb.ag, label %bb.af, !prof !29

bb.af:                                            ; preds = %bb.ae
  store i64 %i.lq, ptr %i.lg, align 16
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  store i64 0, ptr %i.kh, align 16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %.0.i.i = phi ptr [ %i.lb, %bb.ad ], [ %i.ll, %bb.af ], [ null, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %.lr.ph382.preheader

_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i: ; preds = %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader392, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i
  %.0.i372 = phi i64 [ %i.md, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i ], [ 0, %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i.preheader392 ] ; 8 uses
  %i.ls = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.0.i372 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load <4 x float>, ptr %i.lt, align 16   ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  %i.lw = load <4 x float>, ptr %i.lv, align 16   ; 3 uses
  %.sroa.0104.0.vec.extract = extractelement <4 x float> %i.lu, i64 0
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %.0.i372
  store float %.sroa.0104.0.vec.extract, ptr %i.lx, align 4
  %.sroa.0104.4.vec.extract = extractelement <4 x float> %i.lu, i64 1
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %.0.i372
  store float %.sroa.0104.4.vec.extract, ptr %i.ly, align 4
  %.sroa.0104.8.vec.extract = extractelement <4 x float> %i.lu, i64 2
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.0.i372
  store float %.sroa.0104.8.vec.extract, ptr %i.lz, align 4
  %.sroa.6.16.vec.extract = extractelement <4 x float> %i.lw, i64 0
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.0.i372
  store float %.sroa.6.16.vec.extract, ptr %i.ma, align 4
  %.sroa.6.20.vec.extract = extractelement <4 x float> %i.lw, i64 1
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.0.i372
  store float %.sroa.6.20.vec.extract, ptr %i.mb, align 4
  %.sroa.6.24.vec.extract = extractelement <4 x float> %i.lw, i64 2
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.0.i372
  store float %.sroa.6.24.vec.extract, ptr %i.mc, align 4
  %i.md = add nuw i64 %.0.i372, 1                 ; 2 uses
  %exitcond402.not = icmp eq i64 %i.md, %.155348
  br i1 %exitcond402.not, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i._crit_edge, label %_ZN6embree10BaseNode_tINS_10NodeRefPtrILi4EEELi4EE5clearEv.exit.i, !llvm.loop !16

.lr.ph382.preheader:                              ; preds = %bb.ah, %bb.ab, %bb.z
  %.1.i.i = phi ptr [ %i.kv, %bb.z ], [ %i.la, %bb.ab ], [ %.0.i.i, %bb.ah ] ; 32 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store <4 x i64> splat (i64 8), ptr %.1.i.i, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  %i.mf = load <4 x float>, ptr %i.gx, align 32, !noalias !987 ; 5 uses
  %i.mg = fcmp une <4 x float> %i.mf, splat (float +inf) ; 2 uses
  %i.mh = shufflevector <4 x float> %i.mf, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.mi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mh, <4 x float> %i.mf) ; 2 uses
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.mk = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.mj, <4 x float> %i.mi) ; 3 uses
  %i.ml = extractelement <4 x float> %i.mk, i64 0
  %i.mm = load <4 x float>, ptr %i.ha, align 16, !noalias !988 ; 4 uses
  %i.mn = shufflevector <4 x float> %i.mm, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.mo = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mn, <4 x float> %i.mm) ; 2 uses
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.mq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.mp, <4 x float> %i.mo)
  %foldExtExtBinop = fsub <4 x float> %i.mq, %i.mk
  %i.mr = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ms = fmul float %i.mr, f0x3F800002           ; 3 uses
  %i.mt = fdiv float %i.ms, 2.550000e+02          ; 2 uses
  %i.mu = fcmp oeq float %i.mt, 0.000000e+00
  %spec.store.select.i69 = select i1 %i.mu, float f0x01000000, float %i.mt ; 2 uses
  %i.mv = fcmp ogt float %i.ms, 0.000000e+00
  %i.mw = fdiv float 2.550000e+02, %i.ms
  %i.mx = select i1 %i.mv, float %i.mw, float 0.000000e+00
  %i.my = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.mz = fsub <4 x float> %i.mf, %i.my
  %i.na = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nc = fmul <4 x float> %i.mz, %i.nb
  %i.nd = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.nc)
  %i.ne = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.nd)
  %.inner470 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ne, <4 x i32> zeroinitializer) ; 2 uses
  %i.nf = fsub <4 x float> %i.mm, %i.my
  %i.ng = fmul <4 x float> %i.nf, %i.nb
  %i.nh = call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.ng)
  %i.ni = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.nh)
  %.inner472 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ni, <4 x i32> splat (i32 255)) ; 2 uses
  %i.nj = uitofp nneg <4 x i32> %.inner470 to <4 x float>
  %i.nk = insertelement <4 x float> poison, float %spec.store.select.i69, i64 0
  %i.nl = shufflevector <4 x float> %i.nk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nm = fmul <4 x float> %i.nl, %i.nj
  %i.nn = fadd <4 x float> %i.my, %i.nm
  %i.no = fcmp ugt <4 x float> %i.nn, %i.mf
  %i.np = sitofp <4 x i32> %.inner472 to <4 x float>
  %i.nq = fmul <4 x float> %i.nl, %i.np
  %i.nr = fadd <4 x float> %i.my, %i.nq
  %i.ns = fcmp olt <4 x float> %i.nr, %i.mm
  %i.nt = sext <4 x i1> %i.no to <4 x i32>
  %.inner474 = add nsw <4 x i32> %.inner470, %i.nt
  %.inner476 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.inner474, <4 x i32> zeroinitializer)
  %i.nu = zext <4 x i1> %i.ns to <4 x i32>
  %.inner478 = add nsw <4 x i32> %.inner472, %i.nu
  %.inner482 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %.inner478, <4 x i32> splat (i32 255))
  %.inner486 = select <4 x i1> %i.mg, <4 x i32> %.inner476, <4 x i32> splat (i32 255) ; 4 uses
  %.inner487 = select <4 x i1> %i.mg, <4 x i32> %.inner482, <4 x i32> zeroinitializer ; 4 uses
  %i.nv = bitcast <4 x i32> %.inner486 to <16 x i8>
  %i.nw = extractelement <16 x i8> %i.nv, i64 0
  store i8 %i.nw, ptr %i.me, align 8
  %i.nx = bitcast <4 x i32> %.inner486 to <16 x i8>
  %i.ny = extractelement <16 x i8> %i.nx, i64 4
  %i.nz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 33
  store i8 %i.ny, ptr %i.nz, align 1
  %i.oa = bitcast <4 x i32> %.inner486 to <16 x i8>
  %i.ob = extractelement <16 x i8> %i.oa, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 34
  store i8 %i.ob, ptr %i.oc, align 2
  %i.od = bitcast <4 x i32> %.inner486 to <16 x i8>
  %i.oe = extractelement <16 x i8> %i.od, i64 12
  %i.of = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 35
  store i8 %i.oe, ptr %i.of, align 1
  %i.og = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 36
  %i.oh = bitcast <4 x i32> %.inner487 to <16 x i8>
  %i.oi = extractelement <16 x i8> %i.oh, i64 0
  store i8 %i.oi, ptr %i.og, align 4
  %i.oj = bitcast <4 x i32> %.inner487 to <16 x i8>
  %i.ok = extractelement <16 x i8> %i.oj, i64 4
  %i.ol = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 37
  store i8 %i.ok, ptr %i.ol, align 1
  %i.om = bitcast <4 x i32> %.inner487 to <16 x i8>
  %i.on = extractelement <16 x i8> %i.om, i64 8
  %i.oo = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 38
  store i8 %i.on, ptr %i.oo, align 2
  %i.op = bitcast <4 x i32> %.inner487 to <16 x i8>
  %i.oq = extractelement <16 x i8> %i.op, i64 12
  %i.or = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 39
  store i8 %i.oq, ptr %i.or, align 1
  %i.os = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 56
  %i.ot = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 68
  store float %i.ml, ptr %i.os, align 8
  store float %spec.store.select.i69, ptr %i.ot, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  %i.ov = load <4 x float>, ptr %i.gw, align 64, !noalias !989 ; 5 uses
  %i.ow = fcmp une <4 x float> %i.ov, splat (float +inf) ; 2 uses
  %i.ox = shufflevector <4 x float> %i.ov, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.oy = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ox, <4 x float> %i.ov) ; 2 uses
  %i.oz = shufflevector <4 x float> %i.oy, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.pa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.oz, <4 x float> %i.oy) ; 3 uses
  %i.pb = extractelement <4 x float> %i.pa, i64 0
  %i.pc = load <4 x float>, ptr %i.gz, align 16, !noalias !990 ; 4 uses
  %i.pd = shufflevector <4 x float> %i.pc, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.pe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pd, <4 x float> %i.pc) ; 2 uses
  %i.pf = shufflevector <4 x float> %i.pe, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.pg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pf, <4 x float> %i.pe)
  %foldExtExtBinop488 = fsub <4 x float> %i.pg, %i.pa
  %i.ph = extractelement <4 x float> %foldExtExtBinop488, i64 0
  %i.pi = fmul float %i.ph, f0x3F800002           ; 3 uses
  %i.pj = fdiv float %i.pi, 2.550000e+02          ; 2 uses
  %i.pk = fcmp oeq float %i.pj, 0.000000e+00
  %spec.store.select.i68 = select i1 %i.pk, float f0x01000000, float %i.pj ; 2 uses
  %i.pl = fcmp ogt float %i.pi, 0.000000e+00
  %i.pm = fdiv float 2.550000e+02, %i.pi
  %i.pn = select i1 %i.pl, float %i.pm, float 0.000000e+00
  %i.po = shufflevector <4 x float> %i.pa, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.pp = fsub <4 x float> %i.ov, %i.po
  %i.pq = insertelement <4 x float> poison, float %i.pn, i64 0
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ps = fmul <4 x float> %i.pp, %i.pr
  %i.pt = call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ps)
  %i.pu = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.pt)
  %.inner491 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.pu, <4 x i32> zeroinitializer) ; 2 uses
  %i.pv = fsub <4 x float> %i.pc, %i.po
  %i.pw = fmul <4 x float> %i.pv, %i.pr
  %i.px = call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.pw)
  %i.py = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.px)
  %.inner493 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.py, <4 x i32> splat (i32 255)) ; 2 uses
  %i.pz = uitofp nneg <4 x i32> %.inner491 to <4 x float>
  %i.qa = insertelement <4 x float> poison, float %spec.store.select.i68, i64 0
  %i.qb = shufflevector <4 x float> %i.qa, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.qc = fmul <4 x float> %i.qb, %i.pz
  %i.qd = fadd <4 x float> %i.po, %i.qc
  %i.qe = fcmp ugt <4 x float> %i.qd, %i.ov
  %i.qf = sitofp <4 x i32> %.inner493 to <4 x float>
  %i.qg = fmul <4 x float> %i.qb, %i.qf
  %i.qh = fadd <4 x float> %i.po, %i.qg
  %i.qi = fcmp olt <4 x float> %i.qh, %i.pc
  %i.qj = sext <4 x i1> %i.qe to <4 x i32>
  %.inner495 = add nsw <4 x i32> %.inner491, %i.qj
  %.inner497 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %.inner495, <4 x i32> zeroinitializer)
  %i.qk = zext <4 x i1> %i.qi to <4 x i32>
  %.inner499 = add nsw <4 x i32> %.inner493, %i.qk
  %.inner503 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %.inner499, <4 x i32> splat (i32 255))
  %.inner507 = select <4 x i1> %i.ow, <4 x i32> %.inner497, <4 x i32> splat (i32 255) ; 4 uses
  %.inner508 = select <4 x i1> %i.ow, <4 x i32> %.inner503, <4 x i32> zeroinitializer ; 4 uses
  %i.ql = bitcast <4 x i32> %.inner507 to <16 x i8>
  %i.qm = extractelement <16 x i8> %i.ql, i64 0
  store i8 %i.qm, ptr %i.ou, align 8
  %i.qn = bitcast <4 x i32> %.inner507 to <16 x i8>
  %i.qo = extractelement <16 x i8> %i.qn, i64 4
  %i.qp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 41
  store i8 %i.qo, ptr %i.qp, align 1
  %i.qq = bitcast <4 x i32> %.inner507 to <16 x i8>
  %i.qr = extractelement <16 x i8> %i.qq, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 42
  store i8 %i.qr, ptr %i.qs, align 2
  %i.qt = bitcast <4 x i32> %.inner507 to <16 x i8>
  %i.qu = extractelement <16 x i8> %i.qt, i64 12
  %i.qv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 43
  store i8 %i.qu, ptr %i.qv, align 1
  %i.qw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 44
  %i.qx = bitcast <4 x i32> %.inner508 to <16 x i8>
  %i.qy = extractelement <16 x i8> %i.qx, i64 0
  store i8 %i.qy, ptr %i.qw, align 4
  %i.qz = bitcast <4 x i32> %.inner508 to <16 x i8>
  %i.ra = extractelement <16 x i8> %i.qz, i64 4
  %i.rb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 45
  store i8 %i.ra, ptr %i.rb, align 1
  %i.rc = bitcast <4 x i32> %.inner508 to <16 x i8>
  %i.rd = extractelement <16 x i8> %i.rc, i64 8
  %i.re = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 46
  store i8 %i.rd, ptr %i.re, align 2
  %i.rf = bitcast <4 x i32> %.inner508 to <16 x i8>
  %i.rg = extractelement <16 x i8> %i.rf, i64 12
  %i.rh = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 47
  store i8 %i.rg, ptr %i.rh, align 1
  %i.ri = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 60
  %i.rj = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 72
  store float %i.pb, ptr %i.ri, align 4
  store float %spec.store.select.i68, ptr %i.rj, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  %i.rl = load <4 x float>, ptr %i.gv, align 32, !noalias !991 ; 5 uses
  %i.rm = fcmp une <4 x float> %i.rl, splat (float +inf) ; 2 uses
  %i.rn = shufflevector <4 x float> %i.rl, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ro = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.rn, <4 x float> %i.rl) ; 2 uses
  %i.rp = shufflevector <4 x float> %i.ro, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.rq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.rp, <4 x float> %i.ro) ; 3 uses
  %i.rr = extractelement <4 x float> %i.rq, i64 0
  %i.rs = load <4 x float>, ptr %i.gy, align 16, !noalias !992 ; 4 uses
  %i.rt = shufflevector <4 x float> %i.rs, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ru = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.rt, <4 x float> %i.rs) ; 2 uses
  %i.rv = shufflevector <4 x float> %i.ru, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.rw = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.rv, <4 x float> %i.ru)
  %foldExtExtBinop509 = fsub <4 x float> %i.rw, %i.rq
  %i.rx = extractelement <4 x float> %foldExtExtBinop509, i64 0
  %i.ry = fmul float %i.rx, f0x3F800002           ; 3 uses
  %i.rz = fdiv float %i.ry, 2.550000e+02          ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS4_12BuildRecordTINS3_13PrimInfoRangeENS3_8BinSplitILm32EEEEENS3_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES7_SC_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSG_6CreateENS_15QuantizedNode_tISF_Li4EE7Create2ENSK_4Set2EZNS3_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSG_RNS_20BuildProgressMonitorEPSC_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS4_8SettingsEEUlPKSC_RKNS_5rangeImEERKSH_E_NS4_24DefaultCanCreateLeafFuncISC_S7_EENS4_29DefaultCanCreateLeafSplitFuncISC_S7_EESR_E7recurseERSA_SH_bEUlS17_E_EEvT_S1I_S1I_RKT0_PNS0_16TaskGroupContextEEUlvE_E7executeEv:bb.a

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !21, !align !32
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %i.m, i64 %.06.i.i
  %i.o = tail call i64 @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_b(ptr noundef nonnull align 8 dereferenceable(136) %i.j, ptr noundef nonnull align 16 dereferenceable(96) %i.n, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %1, i1 noundef zeroext true), !inline_history !995
  %i.p = load ptr, ptr %i.h, align 8, !nonnull !21, !align !22
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.06.i.i
  store i64 %i.o, ptr %i.q, align 8
  tail call void @llvm.x86.sse2.mfence()
  %i.r = add i64 %.06.i.i, 1                      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %i.b
  br i1 %exitcond.not.i, label %_ZZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_bENKUlS14_E_clES14_.exit.i, label %bb.c, !llvm.loop !996

_ZZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_bENKUlS14_E_clES14_.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS3_12BuildRecordTINS2_13PrimInfoRangeENS2_8BinSplitILm32EEEEENS2_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES6_SB_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_15QuantizedNode_tISE_Li4EE7Create2ENSJ_4Set2EZNS2_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPSB_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS3_8SettingsEEUlPKSB_RKNS_5rangeImEERKSG_E_NS3_24DefaultCanCreateLeafFuncISB_S6_EENS3_29DefaultCanCreateLeafSplitFuncISB_S6_EESQ_E7recurseERS9_SG_bEUlS16_E_EEvT_S1H_S1H_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

bb.d:                                             ; preds = %bb.a
  %i.s = add i64 %i.d, %i.b
  %i.t = lshr i64 %i.s, 1                         ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS3_12BuildRecordTINS2_13PrimInfoRangeENS2_8BinSplitILm32EEEEENS2_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES6_SB_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_15QuantizedNode_tISE_Li4EE7Create2ENSJ_4Set2EZNS2_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPSB_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS3_8SettingsEEUlPKSB_RKNS_5rangeImEERKSG_E_NS3_24DefaultCanCreateLeafFuncISB_S6_EENS3_29DefaultCanCreateLeafSplitFuncISB_S6_EESQ_E7recurseERS9_SG_bEUlS16_E_EEvT_S1H_S1H_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.t, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.w), !inline_history !997
  %i.x = load i64, ptr %i.a, align 8
  %i.y = load i64, ptr %i.f, align 8
  %i.z = load ptr, ptr %i.v, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS3_12BuildRecordTINS2_13PrimInfoRangeENS2_8BinSplitILm32EEEEENS2_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES6_SB_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_15QuantizedNode_tISE_Li4EE7Create2ENSJ_4Set2EZNS2_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPSB_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS3_8SettingsEEUlPKSB_RKNS_5rangeImEERKSG_E_NS3_24DefaultCanCreateLeafFuncISB_S6_EENS3_29DefaultCanCreateLeafSplitFuncISB_S6_EESQ_E7recurseERS9_SG_bEUlS16_E_EEvT_S1H_S1H_RKT0_PNS0_16TaskGroupContextE(i64 noundef %i.t, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef %i.z), !inline_history !997
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !997
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS3_12BuildRecordTINS2_13PrimInfoRangeENS2_8BinSplitILm32EEEEENS2_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES6_SB_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_15QuantizedNode_tISE_Li4EE7Create2ENSJ_4Set2EZNS2_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPSB_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS3_8SettingsEEUlPKSB_RKNS_5rangeImEERKSG_E_NS3_24DefaultCanCreateLeafFuncISB_S6_EENS3_29DefaultCanCreateLeafSplitFuncISB_S6_EESQ_E7recurseERS9_SG_bEUlS16_E_EEvT_S1H_S1H_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS3_12BuildRecordTINS2_13PrimInfoRangeENS2_8BinSplitILm32EEEEENS2_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES6_SB_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_15QuantizedNode_tISE_Li4EE7Create2ENSJ_4Set2EZNS2_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPSB_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS3_8SettingsEEUlPKSB_RKNS_5rangeImEERKSG_E_NS3_24DefaultCanCreateLeafFuncISB_S6_EENS3_29DefaultCanCreateLeafSplitFuncISB_S6_EESQ_E7recurseERS9_SG_bEUlS16_E_EEvT_S1H_S1H_RKT0_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %_ZZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_10NodeRefPtrILi4EEENS_13FastAllocator15CachedAllocatorENSD_6CreateENS_15QuantizedNode_tISC_Li4EE7Create2ENSH_4Set2EZNS0_27BVHNBuilderQuantizedVirtualILi4EE12BVHNBuilderV5buildEPSD_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsEEUlPKS9_RKNS_5rangeImEERKSE_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESO_E7recurseERS7_SE_bENKUlS14_E_clES14_.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree4sse217GeneralBVHBuilder5buildINS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEENS0_13PrimInfoRangeES8_NS_13FastAllocator6CreateENS_12AABBNodeMB_tIS5_Li4EE6CreateENSE_12SetTimeRangeEZNS0_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSB_RNS_20BuildProgressMonitorEPS8_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsERKNSP_IfEEEUlPKS8_RKNS_5rangeImEERKNSB_15CachedAllocatorEE_SL_EET_RT0_PT2_RKT1_T3_T4_T5_RKT6_RKT7_RKSV_(ptr dead_on_unwind noalias writable sret(%"struct.embree::BVHNodeRecordMB") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(80) %3, ptr %4, <2 x float> %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(64) %8) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %9 = alloca %"struct.embree::FastAllocator::Create", align 8 ; 2 uses
  %10 = alloca %"struct.embree::AABBNodeMB_t<embree::NodeRefPtr<4>, 4>::Create", align 1
  %11 = alloca %"struct.embree::AABBNodeMB_t<embree::NodeRefPtr<4>, 4>::SetTimeRange", align 8 ; 2 uses
  %12 = alloca %"class.embree::sse2::GeneralBVHBuilder::BuilderT.115", align 8 ; 4 uses
  %13 = alloca %"struct.embree::sse2::GeneralBVHBuilder::DefaultCanCreateLeafFunc", align 1 ; 3 uses
  %14 = alloca %"struct.embree::sse2::GeneralBVHBuilder::DefaultCanCreateLeafSplitFunc", align 1 ; 3 uses
  %15 = alloca %"struct.embree::sse2::GeneralBVHBuilder::BuildRecordT", align 16 ; 10 uses
  %16 = alloca %"struct.embree::FastAllocator::CachedAllocator", align 8 ; 2 uses
  store ptr %4, ptr %9, align 8
  store <2 x float> %5, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  call void @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_12AABBNodeMB_tISD_Li4EE6CreateENSJ_12SetTimeRangeEZNS0_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsERKNSU_IfEEEUlPKS9_RKNS_5rangeImEERKSG_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESQ_EC2ESS_RSA_RKSH_RKSK_RKSL_RKS1C_RKS1E_RKS1G_RKSQ_RKS10_(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(64) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  store i64 1, ptr %15, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.c = load <4 x float>, ptr %3, align 16
  store <4 x float> %i.c, ptr %i.b, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load <4 x float>, ptr %i.e, align 16
  store <4 x float> %i.f, ptr %i.d, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load <4 x float>, ptr %i.h, align 16
  store <4 x float> %i.i, ptr %i.g, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = load <4 x float>, ptr %i.k, align 16
  store <4 x float> %i.l, ptr %i.j, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.o = load <2 x i64>, ptr %i.n, align 16
  store <2 x i64> %i.o, ptr %i.m, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_12AABBNodeMB_tISD_Li4EE6CreateENSJ_12SetTimeRangeEZNS0_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsERKNSU_IfEEEUlPKS9_RKNS_5rangeImEERKSG_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESQ_E7recurseERS7_SG_b(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecordMB") align 16 %0, ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 16 dereferenceable(96) %15, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %16, i1 noundef zeroext true)
  call void @llvm.x86.sse2.mfence()
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_12AABBNodeMB_tISD_Li4EE6CreateENSJ_12SetTimeRangeEZNS0_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsERKNSU_IfEEEUlPKS9_RKNS_5rangeImEERKSG_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESQ_EC2ESS_RSA_RKSH_RKSK_RKSL_RKS1C_RKS1E_RKS1G_RKSQ_RKS10_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(64) %10) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::allocator", align 1   ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %10, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %6, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %7, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %8, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %9, ptr %i.i, align 8
  %i.j = load i64, ptr %0, align 8
  %i.k = icmp ugt i64 %i.j, 16
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 48) #5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #25
          to label %bb.f unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.l) #5
  %i.q = load ptr, ptr %11, align 8               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %11, align 8               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread26: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.u) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  br label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn19 = phi { ptr, i32 } [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.p, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @__cxa_free_exception(ptr %i.l) #5
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  ret void

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn18 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread26 ], [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn18

bb.f:                                             ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_12AABBNodeMB_tISD_Li4EE6CreateENSJ_12SetTimeRangeEZNS0_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsERKNSU_IfEEEUlPKS9_RKNS_5rangeImEERKSG_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESQ_E7recurseERS7_SG_b(ptr dead_on_unwind noalias writable sret(%"struct.embree::BVHNodeRecordMB") align 16 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(96) %2, ptr noundef byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3, i1 noundef zeroext %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %7 = alloca %"class.embree::Lock", align 8      ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %9 = alloca %"class.embree::CentGeom", align 16 ; 8 uses
  %10 = alloca %"class.embree::CentGeom", align 16 ; 8 uses
  %11 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %12 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %13 = alloca %class.anon.59, align 8            ; 6 uses
  %14 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %15 = alloca %class.anon.60, align 1            ; 3 uses
  %16 = alloca %class.anon.62, align 1            ; 3 uses
  %17 = alloca %"class.embree::CentGeom", align 16 ; 8 uses
  %18 = alloca %"class.embree::CentGeom", align 16 ; 8 uses
  %19 = alloca %"struct.embree::vint_impl", align 16 ; 4 uses
  %20 = alloca %"struct.embree::vboolf_impl", align 16 ; 4 uses
  %21 = alloca %class.anon.59, align 8            ; 6 uses
  %22 = alloca %"struct.embree::EmptyTy", align 1 ; 3 uses
  %23 = alloca %class.anon.60, align 1            ; 3 uses
  %24 = alloca %class.anon.62, align 1            ; 3 uses
  %25 = alloca %"class.embree::Lock", align 8     ; 6 uses
  %26 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %27 = alloca %"struct.embree::sse2::BinSplit", align 16 ; 10 uses
  %28 = alloca %"struct.embree::sse2::PrimInfoRange", align 16 ; 24 uses
  %29 = alloca %"struct.embree::sse2::PrimInfoRange", align 16 ; 24 uses
  %30 = alloca [16 x %"struct.embree::BVHNodeRecordMB"], align 16 ; 6 uses
  %31 = alloca [16 x %"struct.embree::sse2::GeneralBVHBuilder::BuildRecordT"], align 16 ; 29 uses
  %32 = alloca %"struct.embree::sse2::GeneralBVHBuilder::BuildRecordT", align 16 ; 11 uses
  %33 = alloca %"struct.embree::sse2::GeneralBVHBuilder::BuildRecordT", align 16 ; 11 uses
  %34 = alloca %"struct.embree::sse2::BinSplit", align 16 ; 8 uses
  %35 = alloca %class.anon.116, align 8           ; 6 uses
  %36 = alloca %"struct.embree::BVHNodeRecordMB", align 16 ; 8 uses
  %i.c = load ptr, ptr %3, align 8
  %.not439 = icmp eq ptr %i.c, null
  br i1 %.not439, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !21, !align !22
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1163 ; 2 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN6embree13FastAllocator23thread_local_allocator2E) ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1164 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_ZN6embree13FastAllocator12threadLocal2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 192, i64 noundef 64), !noalias !1164 ; 13 uses
  invoke void @_ZN6embree8MutexSysC1Ev(ptr noundef nonnull align 64 dereferenceable(192) %i.j)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %i.k, align 8, !noalias !1164
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %i.j, ptr %i.l, align 64, !noalias !1164
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false)
  store ptr %i.j, ptr %i.n, align 64, !noalias !1164
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  store ptr %i.j, ptr %i.g, align 8, !noalias !1164
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #5, !noalias !1164
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %25, align 8, !noalias !1164
  %i.p = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i8 1, ptr %i.p, align 8, !noalias !1164
  tail call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE), !noalias !1164
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #5, !noalias !1164
  store ptr %i.j, ptr %26, align 8, !alias.scope !1165, !noalias !1164
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !1164 ; 5 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !1164
  %.not.i.i95 = icmp eq ptr %i.q, %i.r
  %i.s = ptrtoint ptr %i.j to i64                 ; 2 uses
  br i1 %.not.i.i95, label %bb.e, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread: ; preds = %bb.d
  store i64 %i.s, ptr %i.q, align 8, !noalias !1164
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !1164
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !1164
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !1164 ; 10 uses
  %i.w = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i), !noalias !1164
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #27
          to label %.noexc96 unwind label %bb.l   ; 10 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i64 %i.s, ptr %i.ah, align 8, !noalias !1164
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.q
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc96
  %i.ai = add i64 %i.w, -8
  %i.aj = sub i64 %i.ai, %i.x                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1022, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.am = add i64 %i.w, -8
  %i.an = sub i64 %i.am, %i.x
  %i.ao = and i64 %i.an, -8
  %i.ap = add i64 %i.ao, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ag, i64 %i.ap
  %scevgep934 = getelementptr i8, ptr %i.v, i64 %i.ap
  %bound0 = icmp ult ptr %i.ag, %scevgep934
  %bound1 = icmp ult ptr %i.v, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1022, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.v, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep935 = getelementptr i8, ptr %i.v, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166), !noalias !1164
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167), !noalias !1164
  %i.au = getelementptr i8, ptr %next.gep935, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep935, align 8, !alias.scope !1168, !noalias !1169
  %wide.load936 = load <2 x i64>, ptr %i.au, align 8, !alias.scope !1168, !noalias !1169
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1170, !noalias !1171
  store <2 x i64> %wide.load936, ptr %i.av, align 8, !alias.scope !1170, !noalias !1171
  %i.aw = getelementptr i8, ptr %next.gep935, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep935, align 8, !alias.scope !1168, !noalias !1169
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !alias.scope !1168, !noalias !1169
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1010

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1022

.lr.ph.i.i.i.i.i.i.i.preheader1022:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %vector.memcheck ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1022, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1022 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1022 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166), !noalias !1164
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167), !noalias !1164
  %i.ay = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1167, !noalias !1169
  store i64 %i.ay, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !1166, !noalias !1172
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !1167, !noalias !1169
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.q
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1011

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc96
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ag, %.noexc96 ], [ %i.ar, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #26, !noalias !1164
  br label %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i.i, %bb.g
  store ptr %i.ag, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, align 8, !noalias !1164
  store ptr %i.bb, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 8), align 8, !noalias !1164
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.bc, ptr getelementptr inbounds nuw (i8, ptr @_ZN6embree13FastAllocator25s_thread_local_allocatorsE, i64 16), align 8, !noalias !1164
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN6embree13FastAllocator12ThreadLocal2ESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit
end_hunk_7
begin_hunk_8_@_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_12AABBNodeMB_tISD_Li4EE6CreateENSJ_12SetTimeRangeEZNS0_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsERKNSU_IfEEEUlPKS9_RKNS_5rangeImEERKSG_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESQ_E7recurseERS7_SG_b:bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %28, i64 72
  store i64 %i.jz, ptr %i.kd, align 8
  store <4 x float> %.sroa.0178.1.lcssa, ptr %29, align 16
  %i.ke = getelementptr inbounds nuw i8, ptr %29, i64 16
  store <4 x float> %.sroa.8181.1.lcssa, ptr %i.ke, align 16
  store <4 x float> %.sroa.14.1.lcssa, ptr %i.dx, align 16
  %i.kf = getelementptr inbounds nuw i8, ptr %29, i64 48
  store <4 x float> %.sroa.20.1.lcssa, ptr %i.kf, align 16
  %i.kg = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i64 %i.jz, ptr %i.kg, align 16
  %i.kh = getelementptr inbounds nuw i8, ptr %29, i64 72
  store i64 %i.cr, ptr %i.kh, align 8
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit74

bb.ad:                                            ; preds = %bb.u
  br i1 %.not441, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull align 16 dereferenceable(80) %i.cc)
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull align 16 dereferenceable(80) %i.cc, ptr noundef nonnull align 16 dereferenceable(80) %28, ptr noundef nonnull align 16 dereferenceable(80) %29)
  %.pre683.a = load <4 x float>, ptr %28, align 16
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %28, i64 16
  %.pre684.a = load <4 x float>, ptr %.phi.trans.insert, align 16
  %.pre685.a = load <4 x float>, ptr %i.dw, align 16
  %.phi.trans.insert686 = getelementptr inbounds nuw i8, ptr %28, i64 48
  %.pre687.a = load <4 x float>, ptr %.phi.trans.insert686, align 16
  %.phi.trans.insert688 = getelementptr inbounds nuw i8, ptr %28, i64 64
  %.pre689.a = load i64, ptr %.phi.trans.insert688, align 16
  %.phi.trans.insert690.a = getelementptr inbounds nuw i8, ptr %28, i64 72
  %.pre691.a = load i64, ptr %.phi.trans.insert690.a, align 8
  %.pre692 = load <4 x float>, ptr %29, align 16
  %.phi.trans.insert693 = getelementptr inbounds nuw i8, ptr %29, i64 16
  %.pre694 = load <4 x float>, ptr %.phi.trans.insert693, align 16
  %.pre695 = load <4 x float>, ptr %i.dx, align 16
  %.phi.trans.insert696 = getelementptr inbounds nuw i8, ptr %29, i64 48
  %.pre697 = load <4 x float>, ptr %.phi.trans.insert696, align 16
  %.phi.trans.insert698 = getelementptr inbounds nuw i8, ptr %29, i64 64
  %.pre699 = load i64, ptr %.phi.trans.insert698, align 16
  %.phi.trans.insert700 = getelementptr inbounds nuw i8, ptr %29, i64 72
  %.pre701 = load i64, ptr %.phi.trans.insert700, align 8
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit74

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #5
  store <4 x float> splat (float +inf), ptr %17, align 16
  %i.ki = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.ki, align 16
  %i.kj = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.kj, align 16
  %i.kk = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.kk, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #5
  store <4 x float> splat (float +inf), ptr %18, align 16
  %i.kl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.kl, align 16
  %i.km = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.km, align 16
  %i.kn = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.kn, align 16
  %i.ko = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.kp = load <1 x i32>, ptr %i.ko, align 8
  %i.kq = shl nuw i32 1, %i.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #5
  %i.kr = shufflevector <1 x i32> %i.kp, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.kr, ptr %19, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #5
  %i.ks = zext i32 %i.kq to i64
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.ks
  %i.ku = load <4 x float>, ptr %i.kt, align 16
  store <4 x float> %i.ku, ptr %20, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #5
  store ptr %27, ptr %21, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %19, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %21, i64 16
  store ptr %20, ptr %i.kw, align 8
  %i.kx = load ptr, ptr %i.dy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #5
  %i.ky = call noundef i64 @_ZN6embree21parallel_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb1EEEvRKNS8_8BinSplitILm32EEERKNS8_13PrimInfoRangeERSG_SJ_EUlRKS1_E_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlRS6_SL_E0_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlSN_RKS6_E_EEmPT_mmRKT1_RT0_SY_RKT2_RKT3_RKT4_m(ptr noundef %i.kx, i64 noundef %i.cs, i64 noundef %i.cr, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 16 dereferenceable(64) %17, ptr noundef nonnull align 16 dereferenceable(64) %18, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 1 dereferenceable(1) %23, ptr noundef nonnull align 1 dereferenceable(1) %24, i64 noundef 128) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #5
  %i.kz = load <4 x float>, ptr %17, align 16     ; 2 uses
  store <4 x float> %i.kz, ptr %28, align 16
  %i.la = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.lb = load <4 x float>, ptr %i.ki, align 16   ; 2 uses
  store <4 x float> %i.lb, ptr %i.la, align 16
  %i.lc = load <4 x float>, ptr %i.kj, align 16   ; 2 uses
  store <4 x float> %i.lc, ptr %i.dw, align 16
  %i.ld = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.le = load <4 x float>, ptr %i.kk, align 16   ; 2 uses
  store <4 x float> %i.le, ptr %i.ld, align 16
  %i.lf = getelementptr inbounds nuw i8, ptr %28, i64 64
  store i64 %i.cs, ptr %i.lf, align 16
  %i.lg = getelementptr inbounds nuw i8, ptr %28, i64 72
  store i64 %i.ky, ptr %i.lg, align 8
  %i.lh = load <4 x float>, ptr %18, align 16     ; 2 uses
  store <4 x float> %i.lh, ptr %29, align 16
  %i.li = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.lj = load <4 x float>, ptr %i.kl, align 16   ; 2 uses
  store <4 x float> %i.lj, ptr %i.li, align 16
  %i.lk = load <4 x float>, ptr %i.km, align 16   ; 2 uses
  store <4 x float> %i.lk, ptr %i.dx, align 16
  %i.ll = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.lm = load <4 x float>, ptr %i.kn, align 16   ; 2 uses
  store <4 x float> %i.lm, ptr %i.ll, align 16
  %i.ln = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i64 %i.ky, ptr %i.ln, align 16
  %i.lo = getelementptr inbounds nuw i8, ptr %29, i64 72
  store i64 %i.cr, ptr %i.lo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #5
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit74

_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit74: ; preds = %bb.af, %bb.ae, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit
  %i.lp = phi i64 [ %i.cr, %bb.af ], [ %.pre701, %bb.ae ], [ %i.cr, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %i.ej, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lq = phi i64 [ %i.ky, %bb.af ], [ %.pre699, %bb.ae ], [ %i.jz, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %i.en, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lr = phi <4 x float> [ %i.lm, %bb.af ], [ %.pre697, %bb.ae ], [ %.sroa.20.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %.sroa.14.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.ls = phi <4 x float> [ %i.lk, %bb.af ], [ %.pre695, %bb.ae ], [ %.sroa.14.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %.sroa.10.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lt = phi <4 x float> [ %i.lj, %bb.af ], [ %.pre694, %bb.ae ], [ %.sroa.8181.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %.sroa.6.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lu = phi <4 x float> [ %i.lh, %bb.af ], [ %.pre692, %bb.ae ], [ %.sroa.0178.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %.sroa.0.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lv = phi i64 [ %i.ky, %bb.af ], [ %.pre691.a, %bb.ae ], [ %i.jz, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %i.en, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lw = phi i64 [ %i.cs, %bb.af ], [ %.pre689.a, %bb.ae ], [ %i.cs, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %i.ek, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lx = phi <4 x float> [ %i.le, %bb.af ], [ %.pre687.a, %bb.ae ], [ %.sroa.20197.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %.sroa.1434.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.ly = phi <4 x float> [ %i.lc, %bb.af ], [ %.pre685.a, %bb.ae ], [ %.sroa.14194.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %.sroa.1032.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.lz = phi <4 x float> [ %i.lb, %bb.af ], [ %.pre684.a, %bb.ae ], [ %.sroa.8191.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %.sroa.630.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  %i.ma = phi <4 x float> [ %i.kz, %bb.af ], [ %.pre683.a, %bb.ae ], [ %.sroa.0188.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit87 ], [ %.sroa.028.0.lcssa.i.i, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #5
  %i.mb = load i64, ptr %2, align 16
  %i.mc = add i64 %i.mb, 1                        ; 2 uses
  store i64 %i.mc, ptr %31, align 16
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i8 0, ptr %.sroa.4157.0..sroa_idx, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %31, i64 16
  store <4 x float> %i.ma, ptr %i.md, align 16
  %i.me = getelementptr inbounds nuw i8, ptr %31, i64 32
  store <4 x float> %i.lz, ptr %i.me, align 16
  %i.mf = getelementptr inbounds nuw i8, ptr %31, i64 48
  store <4 x float> %i.ly, ptr %i.mf, align 16
  %i.mg = getelementptr inbounds nuw i8, ptr %31, i64 64
  store <4 x float> %i.lx, ptr %i.mg, align 16
  %i.mh = getelementptr inbounds nuw i8, ptr %31, i64 80
  store i64 %i.lw, ptr %i.mh, align 16
  %.sroa.15164.80..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 88
  store i64 %i.lv, ptr %.sroa.15164.80..sroa_idx, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %31, i64 96
  store i64 %i.mc, ptr %i.mi, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 104
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %31, i64 112
  store <4 x float> %i.lu, ptr %i.mj, align 16
  %i.mk = getelementptr inbounds nuw i8, ptr %31, i64 128
  store <4 x float> %i.lt, ptr %i.mk, align 16
  %i.ml = getelementptr inbounds nuw i8, ptr %31, i64 144
  store <4 x float> %i.ls, ptr %i.ml, align 16
  %i.mm = getelementptr inbounds nuw i8, ptr %31, i64 160
  store <4 x float> %i.lr, ptr %i.mm, align 16
  %i.mn = getelementptr inbounds nuw i8, ptr %31, i64 176
  store i64 %i.lq, ptr %i.mn, align 16
  %.sroa.15.80..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 184
  store i64 %i.lp, ptr %.sroa.15.80..sroa_idx, align 8
  %i.mo = load i64, ptr %1, align 8
  %i.mp = icmp ugt i64 %i.mo, 2
  br i1 %i.mp, label %.preheader452.lr.ph, label %.thread

.preheader452.lr.ph:                              ; preds = %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit74
  %i.mq = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.mr = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 5 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 5 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %32, i64 64 ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %32, i64 80 ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %32, i64 88 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 5 uses
  %i.na = getelementptr inbounds nuw i8, ptr %33, i64 48 ; 5 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %33, i64 64 ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %33, i64 80 ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %33, i64 88 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.nf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %34, i64 32 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %34, i64 48 ; 2 uses
  br label %.lr.ph523

.lr.ph523:                                        ; preds = %bb.aw, %.preheader452.lr.ph
  %.063569 = phi i64 [ 2, %.preheader452.lr.ph ], [ %i.vq, %bb.aw ] ; 4 uses
  %i.nq = load i64, ptr %i.df, align 8
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.aj
  %i.nr = icmp eq i64 %.1, -1
  br i1 %i.nr, label %.thread, label %bb.ak

bb.ag:                                            ; preds = %.lr.ph523, %bb.aj
  %.059522 = phi i64 [ 0, %.lr.ph523 ], [ %i.oh, %bb.aj ] ; 3 uses
  %.060521 = phi i64 [ -1, %.lr.ph523 ], [ %.1, %bb.aj ] ; 2 uses
  %.061520 = phi float [ -inf, %.lr.ph523 ], [ %.162, %bb.aj ] ; 3 uses
  %i.ns = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %.059522 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 80
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 88
  %i.nv = load i64, ptr %i.nu, align 8
  %i.nw = load i64, ptr %i.nt, align 16
  %i.nx = sub i64 %i.nv, %i.nw
  %.not73 = icmp ugt i64 %i.nx, %i.nq
  br i1 %.not73, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.oa = load <4 x float>, ptr %i.nz, align 16, !noalias !1188
  %i.ob = load <4 x float>, ptr %i.ny, align 16, !noalias !1188
  %i.oc = fsub <4 x float> %i.oa, %i.ob           ; 3 uses
  %.sroa.0169.0.vec.extract = extractelement <4 x float> %i.oc, i64 0
  %.sroa.0169.4.vec.extract = extractelement <4 x float> %i.oc, i64 1 ; 2 uses
  %.sroa.0169.8.vec.extract = extractelement <4 x float> %i.oc, i64 2 ; 2 uses
  %i.od = fadd float %.sroa.0169.4.vec.extract, %.sroa.0169.8.vec.extract
  %i.oe = fmul float %.sroa.0169.4.vec.extract, %.sroa.0169.8.vec.extract
  %i.of = call noundef float @llvm.fmuladd.f32(float %.sroa.0169.0.vec.extract, float %i.od, float %i.oe) ; 2 uses
  %i.og = fcmp ogt float %i.of, %.061520
  br i1 %i.og, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag
  %.162 = phi float [ %.061520, %bb.ag ], [ %i.of, %bb.ai ], [ %.061520, %bb.ah ]
  %.1 = phi i64 [ %.060521, %bb.ag ], [ %.059522, %bb.ai ], [ %.060521, %bb.ah ] ; 3 uses
  %i.oh = add nuw i64 %.059522, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.oh, %.063569
  br i1 %exitcond.not, label %._crit_edge, label %bb.ag, !llvm.loop !1058

bb.ak:                                            ; preds = %._crit_edge
  %i.oi = getelementptr inbounds [96 x i8], ptr %31, i64 %.1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #5
  %i.oj = load i64, ptr %2, align 16
  %i.ok = add i64 %i.oj, 1                        ; 2 uses
  store i64 %i.ok, ptr %32, align 16
  store i8 0, ptr %i.mq, align 8
  store <4 x float> splat (float +inf), ptr %i.mr, align 16
  store <4 x float> splat (float -inf), ptr %i.ms, align 16
  store <4 x float> splat (float +inf), ptr %i.mt, align 16
  store <4 x float> splat (float -inf), ptr %i.mu, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.mv, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #5
  store i64 %i.ok, ptr %33, align 16
  store i8 0, ptr %i.mx, align 8
  store <4 x float> splat (float +inf), ptr %i.my, align 16
  store <4 x float> splat (float -inf), ptr %i.mz, align 16
  store <4 x float> splat (float +inf), ptr %i.na, align 16
  store <4 x float> splat (float -inf), ptr %i.nb, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.nc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #5
  %i.ol = load ptr, ptr %i.ca, align 8, !nonnull !21, !align !22
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 16 ; 4 uses
  %i.on = load i64, ptr %i.cd, align 8
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE4findERKNS0_13PrimInfoRangeEm(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %34, ptr noundef nonnull align 8 dereferenceable(8) %i.ol, ptr noundef nonnull align 16 dereferenceable(80) %i.om, i64 noundef %i.on)
  %i.oo = load ptr, ptr %i.ca, align 8, !nonnull !21, !align !22 ; 6 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oi, i64 80 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oi, i64 88 ; 2 uses
  %i.or = load i64, ptr %i.oq, align 8            ; 9 uses
  %i.os = load i64, ptr %i.op, align 16           ; 7 uses
  %i.ot = sub i64 %i.or, %i.os
  %i.ou = icmp ult i64 %i.ot, 3072
  %i.ov = load i32, ptr %i.ne, align 4            ; 3 uses
  %.not445 = icmp eq i32 %i.ov, -1                ; 2 uses
  br i1 %i.ou, label %bb.al, label %bb.at, !prof !27

bb.al:                                            ; preds = %bb.ak
  br i1 %.not445, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %.not.i.i.i103 = icmp samesign eq i64 %i.os, %i.or
  br i1 %.not.i.i.i103, label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit107, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ow = load ptr, ptr %i.oo, align 8            ; 2 uses
  %.idx.i104 = shl nuw nsw i64 %i.or, 5           ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 %.idx.i104 ; 2 uses
  %.idx3.i105 = shl nuw nsw i64 %i.os, 5          ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 %.idx3.i105 ; 2 uses
  %gepdiff.i106 = sub nsw i64 %.idx.i104, %.idx3.i105
  %i.oz = ashr exact i64 %gepdiff.i106, 5
  %i.pa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.oz, i1 true)
  %i.pb = shl nuw nsw i64 %i.pa, 1
  %i.pc = xor i64 %i.pb, 126
  call void @_ZSt16__introsort_loopIPN6embree7PrimRefElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %i.oy, ptr noundef %i.ox, i64 noundef %i.pc)
  call void @_ZSt22__final_insertion_sortIPN6embree7PrimRefEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_(ptr noundef %i.oy, ptr noundef %i.ox)
  %.pre702 = load i64, ptr %i.op, align 16
  %.pre703 = load i64, ptr %i.oq, align 8
  br label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit107

_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit107: ; preds = %bb.am, %bb.an
  %i.pd = phi i64 [ %i.or, %bb.am ], [ %.pre703, %bb.an ] ; 6 uses
  %i.pe = phi i64 [ %i.or, %bb.am ], [ %.pre702, %bb.an ] ; 8 uses
  %i.pf = load ptr, ptr %i.oo, align 8            ; 6 uses
  %i.pg = add i64 %i.pd, %i.pe
  %i.ph = lshr i64 %i.pg, 1                       ; 12 uses
  %i.pi = icmp ult i64 %i.pe, %i.ph
  br i1 %i.pi, label %.lr.ph.i.i124.preheader, label %._crit_edge.i.i108

.lr.ph.i.i124.preheader:                          ; preds = %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit107
  %i.pj = sub nuw i64 %i.ph, %i.pe
  %.neg1034 = add i64 %i.pe, 1
  %xtraiter1026 = and i64 %i.pj, 1
  %lcmp.mod1027.not = icmp eq i64 %xtraiter1026, 0
  br i1 %lcmp.mod1027.not, label %.lr.ph.i.i124.prol.loopexit, label %.lr.ph.i.i124.prol

.lr.ph.i.i124.prol:                               ; preds = %.lr.ph.i.i124.preheader
  %i.pk = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %i.pe ; 2 uses
  %i.pl = load <4 x float>, ptr %i.pk, align 16, !noalias !1189 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pn = load <4 x float>, ptr %i.pm, align 16, !noalias !1190 ; 2 uses
  %i.po = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.pl) ; 2 uses
  %i.pp = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.pn) ; 2 uses
  %i.pq = fadd <4 x float> %i.pl, %i.pn           ; 2 uses
  %i.pr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.pq) ; 2 uses
  %i.ps = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.pq) ; 2 uses
  %i.pt = add nuw nsw i64 %i.pe, 1
  br label %.lr.ph.i.i124.prol.loopexit

.lr.ph.i.i124.prol.loopexit:                      ; preds = %.lr.ph.i.i124.prol, %.lr.ph.i.i124.preheader
  %.lcssa979.unr = phi <4 x float> [ poison, %.lr.ph.i.i124.preheader ], [ %i.po, %.lr.ph.i.i124.prol ]
  %.lcssa978.unr = phi <4 x float> [ poison, %.lr.ph.i.i124.preheader ], [ %i.pp, %.lr.ph.i.i124.prol ]
  %.lcssa977.unr = phi <4 x float> [ poison, %.lr.ph.i.i124.preheader ], [ %i.pr, %.lr.ph.i.i124.prol ]
  %.lcssa976.unr = phi <4 x float> [ poison, %.lr.ph.i.i124.preheader ], [ %i.ps, %.lr.ph.i.i124.prol ]
  %.02166.i.i125.unr = phi i64 [ %i.pe, %.lr.ph.i.i124.preheader ], [ %i.pt, %.lr.ph.i.i124.prol ]
  %.sroa.028.065.i.i126.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i124.preheader ], [ %i.po, %.lr.ph.i.i124.prol ]
  %.sroa.630.064.i.i127.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i124.preheader ], [ %i.pp, %.lr.ph.i.i124.prol ]
  %.sroa.1032.063.i.i128.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i124.preheader ], [ %i.pr, %.lr.ph.i.i124.prol ]
  %.sroa.1434.062.i.i129.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i124.preheader ], [ %i.ps, %.lr.ph.i.i124.prol ]
  %i.pu = icmp eq i64 %i.ph, %.neg1034
  br i1 %i.pu, label %._crit_edge.i.i108, label %.lr.ph.i.i124

._crit_edge.i.i108:                               ; preds = %.lr.ph.i.i124.prol.loopexit, %.lr.ph.i.i124, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit107
  %.sroa.1434.0.lcssa.i.i109 = phi <4 x float> [ splat (float -inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit107 ], [ %.lcssa976.unr, %.lr.ph.i.i124.prol.loopexit ], [ %i.ra, %.lr.ph.i.i124 ] ; 2 uses
  %.sroa.1032.0.lcssa.i.i110 = phi <4 x float> [ splat (float +inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit107 ], [ %.lcssa977.unr, %.lr.ph.i.i124.prol.loopexit ], [ %i.qz, %.lr.ph.i.i124 ] ; 2 uses
  %.sroa.630.0.lcssa.i.i111 = phi <4 x float> [ splat (float -inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit107 ], [ %.lcssa978.unr, %.lr.ph.i.i124.prol.loopexit ], [ %i.qx, %.lr.ph.i.i124 ] ; 2 uses
  %.sroa.028.0.lcssa.i.i112 = phi <4 x float> [ splat (float +inf), %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit107 ], [ %.lcssa979.unr, %.lr.ph.i.i124.prol.loopexit ], [ %i.qw, %.lr.ph.i.i124 ] ; 2 uses
  store <4 x float> %.sroa.028.0.lcssa.i.i112, ptr %i.mr, align 16
  store <4 x float> %.sroa.630.0.lcssa.i.i111, ptr %i.ms, align 16
  store <4 x float> %.sroa.1032.0.lcssa.i.i110, ptr %i.mt, align 16
  store <4 x float> %.sroa.1434.0.lcssa.i.i109, ptr %i.mu, align 16
  store i64 %i.pe, ptr %i.mv, align 16
  store i64 %i.ph, ptr %i.mw, align 8
  %i.pv = icmp ult i64 %i.ph, %i.pd
  br i1 %i.pv, label %.lr.ph76.i.i117.preheader, label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit131

.lr.ph76.i.i117.preheader:                        ; preds = %._crit_edge.i.i108
  %i.pw = sub nuw i64 %i.pd, %i.ph
  %.neg1035 = add nuw i64 %i.ph, 1
  %xtraiter1028 = and i64 %i.pw, 1
  %lcmp.mod1029.not = icmp eq i64 %xtraiter1028, 0
  br i1 %lcmp.mod1029.not, label %.lr.ph76.i.i117.prol.loopexit, label %.lr.ph76.i.i117.prol

.lr.ph76.i.i117.prol:                             ; preds = %.lr.ph76.i.i117.preheader
  %i.px = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %i.ph ; 2 uses
  %i.py = load <4 x float>, ptr %i.px, align 16, !noalias !1191 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %i.qa = load <4 x float>, ptr %i.pz, align 16, !noalias !1192 ; 2 uses
  %i.qb = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.py) ; 2 uses
  %i.qc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.qa) ; 2 uses
  %i.qd = fadd <4 x float> %i.py, %i.qa           ; 2 uses
  %i.qe = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.qd) ; 2 uses
  %i.qf = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.qd) ; 2 uses
  %i.qg = add nuw i64 %i.ph, 1
  br label %.lr.ph76.i.i117.prol.loopexit

.lr.ph76.i.i117.prol.loopexit:                    ; preds = %.lr.ph76.i.i117.prol, %.lr.ph76.i.i117.preheader
  %.lcssa983.unr = phi <4 x float> [ poison, %.lr.ph76.i.i117.preheader ], [ %i.qb, %.lr.ph76.i.i117.prol ]
  %.lcssa982.unr = phi <4 x float> [ poison, %.lr.ph76.i.i117.preheader ], [ %i.qc, %.lr.ph76.i.i117.prol ]
  %.lcssa981.unr = phi <4 x float> [ poison, %.lr.ph76.i.i117.preheader ], [ %i.qe, %.lr.ph76.i.i117.prol ]
  %.lcssa980.unr = phi <4 x float> [ poison, %.lr.ph76.i.i117.preheader ], [ %i.qf, %.lr.ph76.i.i117.prol ]
  %.074.i.i118.unr = phi i64 [ %i.ph, %.lr.ph76.i.i117.preheader ], [ %i.qg, %.lr.ph76.i.i117.prol ]
  %.sroa.0.073.i.i119.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i117.preheader ], [ %i.qb, %.lr.ph76.i.i117.prol ]
  %.sroa.6.072.i.i120.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i117.preheader ], [ %i.qc, %.lr.ph76.i.i117.prol ]
  %.sroa.10.071.i.i121.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i117.preheader ], [ %i.qe, %.lr.ph76.i.i117.prol ]
  %.sroa.14.070.i.i122.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i117.preheader ], [ %i.qf, %.lr.ph76.i.i117.prol ]
  %i.qh = icmp eq i64 %i.pd, %.neg1035
  br i1 %i.qh, label %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit131, label %.lr.ph76.i.i117

.lr.ph.i.i124:                                    ; preds = %.lr.ph.i.i124.prol.loopexit, %.lr.ph.i.i124
  %.02166.i.i125 = phi i64 [ %i.rb, %.lr.ph.i.i124 ], [ %.02166.i.i125.unr, %.lr.ph.i.i124.prol.loopexit ] ; 3 uses
  %.sroa.028.065.i.i126 = phi <4 x float> [ %i.qw, %.lr.ph.i.i124 ], [ %.sroa.028.065.i.i126.unr, %.lr.ph.i.i124.prol.loopexit ]
  %.sroa.630.064.i.i127 = phi <4 x float> [ %i.qx, %.lr.ph.i.i124 ], [ %.sroa.630.064.i.i127.unr, %.lr.ph.i.i124.prol.loopexit ]
  %.sroa.1032.063.i.i128 = phi <4 x float> [ %i.qz, %.lr.ph.i.i124 ], [ %.sroa.1032.063.i.i128.unr, %.lr.ph.i.i124.prol.loopexit ]
  %.sroa.1434.062.i.i129 = phi <4 x float> [ %i.ra, %.lr.ph.i.i124 ], [ %.sroa.1434.062.i.i129.unr, %.lr.ph.i.i124.prol.loopexit ]
  %i.qi = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %.02166.i.i125 ; 2 uses
  %i.qj = load <4 x float>, ptr %i.qi, align 16, !noalias !1189 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.ql = load <4 x float>, ptr %i.qk, align 16, !noalias !1190 ; 2 uses
  %i.qm = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.028.065.i.i126, <4 x float> %i.qj)
  %i.qn = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.630.064.i.i127, <4 x float> %i.ql)
  %i.qo = fadd <4 x float> %i.qj, %i.ql           ; 2 uses
  %i.qp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1032.063.i.i128, <4 x float> %i.qo)
  %i.qq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1434.062.i.i129, <4 x float> %i.qo)
  %i.qr = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %.02166.i.i125 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 32
  %i.qt = load <4 x float>, ptr %i.qs, align 16, !noalias !1189 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 48
  %i.qv = load <4 x float>, ptr %i.qu, align 16, !noalias !1190 ; 2 uses
  %i.qw = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qm, <4 x float> %i.qt) ; 2 uses
  %i.qx = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qn, <4 x float> %i.qv) ; 2 uses
  %i.qy = fadd <4 x float> %i.qt, %i.qv           ; 2 uses
  %i.qz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qp, <4 x float> %i.qy) ; 2 uses
  %i.ra = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qq, <4 x float> %i.qy) ; 2 uses
  %i.rb = add nuw nsw i64 %.02166.i.i125, 2       ; 2 uses
  %exitcond.not.i.i130.1 = icmp eq i64 %i.rb, %i.ph
  br i1 %exitcond.not.i.i130.1, label %._crit_edge.i.i108, label %.lr.ph.i.i124, !llvm.loop !0

.lr.ph76.i.i117:                                  ; preds = %.lr.ph76.i.i117.prol.loopexit, %.lr.ph76.i.i117
  %.074.i.i118 = phi i64 [ %i.rv, %.lr.ph76.i.i117 ], [ %.074.i.i118.unr, %.lr.ph76.i.i117.prol.loopexit ] ; 3 uses
  %.sroa.0.073.i.i119 = phi <4 x float> [ %i.rq, %.lr.ph76.i.i117 ], [ %.sroa.0.073.i.i119.unr, %.lr.ph76.i.i117.prol.loopexit ]
  %.sroa.6.072.i.i120 = phi <4 x float> [ %i.rr, %.lr.ph76.i.i117 ], [ %.sroa.6.072.i.i120.unr, %.lr.ph76.i.i117.prol.loopexit ]
  %.sroa.10.071.i.i121 = phi <4 x float> [ %i.rt, %.lr.ph76.i.i117 ], [ %.sroa.10.071.i.i121.unr, %.lr.ph76.i.i117.prol.loopexit ]
  %.sroa.14.070.i.i122 = phi <4 x float> [ %i.ru, %.lr.ph76.i.i117 ], [ %.sroa.14.070.i.i122.unr, %.lr.ph76.i.i117.prol.loopexit ]
  %i.rc = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %.074.i.i118 ; 2 uses
  %i.rd = load <4 x float>, ptr %i.rc, align 16, !noalias !1191 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %i.rf = load <4 x float>, ptr %i.re, align 16, !noalias !1192 ; 2 uses
  %i.rg = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.073.i.i119, <4 x float> %i.rd)
  %i.rh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.072.i.i120, <4 x float> %i.rf)
  %i.ri = fadd <4 x float> %i.rd, %i.rf           ; 2 uses
  %i.rj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.071.i.i121, <4 x float> %i.ri)
  %i.rk = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.070.i.i122, <4 x float> %i.ri)
  %i.rl = getelementptr inbounds nuw [32 x i8], ptr %i.pf, i64 %.074.i.i118 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  %i.rn = load <4 x float>, ptr %i.rm, align 16, !noalias !1191 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 48
end_hunk_8
begin_hunk_9_@_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_12AABBNodeMB_tISD_Li4EE6CreateENSJ_12SetTimeRangeEZNS0_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsERKNSU_IfEEEUlPKS9_RKNS_5rangeImEERKSG_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESQ_E7recurseERS7_SG_b:bb.a
  %.sroa.14228.1.lcssa = phi <4 x float> [ %.sroa.14228.0, %bb.ap ], [ %i.sx, %bb.ar ], [ %.sroa.14228.1528, %bb.aq ] ; 3 uses
  %.sroa.20231.1.lcssa = phi <4 x float> [ %.sroa.20231.0, %bb.ap ], [ %i.sy, %bb.ar ], [ %.sroa.20231.1529, %bb.aq ] ; 3 uses
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.ap ], [ %i.sz, %bb.ar ], [ %.134.i530, %bb.aq ] ; 7 uses
  %.not35.i544 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i544, label %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit, label %.lr.ph550, !prof !28

.lr.ph550:                                        ; preds = %.critedge.i.preheader
  %i.st = load <4 x float>, ptr %i.no, align 16, !noalias !1197
  %i.su = load <4 x float>, ptr %i.np, align 16, !noalias !1198
  br label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.sv = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0222.1526, <4 x float> %i.si) ; 2 uses
  %i.sw = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8225.1527, <4 x float> %i.sk) ; 2 uses
  %i.sx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14228.1528, <4 x float> %i.sl) ; 2 uses
  %i.sy = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20231.1529, <4 x float> %i.sl) ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %.134.i530, i64 32 ; 3 uses
  %.not.i = icmp ugt ptr %i.sz, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %bb.aq, !prof !30, !llvm.loop !2

bb.as:                                            ; preds = %.lr.ph550, %.critedge.i
  %.1.i549 = phi ptr [ %.0.i, %.lr.ph550 ], [ %i.tp, %.critedge.i ] ; 6 uses
  %.sroa.20219.1548 = phi <4 x float> [ %.sroa.20219.0, %.lr.ph550 ], [ %i.to, %.critedge.i ] ; 2 uses
  %.sroa.14216.1547 = phi <4 x float> [ %.sroa.14216.0, %.lr.ph550 ], [ %i.tn, %.critedge.i ] ; 2 uses
  %.sroa.8213.1546 = phi <4 x float> [ %.sroa.8213.0, %.lr.ph550 ], [ %i.tm, %.critedge.i ] ; 2 uses
  %.sroa.0210.1545 = phi <4 x float> [ %.sroa.0210.0, %.lr.ph550 ], [ %i.tl, %.critedge.i ] ; 2 uses
  %i.ta = load <4 x float>, ptr %.1.i549, align 16, !noalias !1199 ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.1.i549, i64 16
  %i.tc = load <4 x float>, ptr %i.tb, align 16, !noalias !1200 ; 3 uses
  %i.td = fadd <4 x float> %i.ta, %i.tc           ; 5 uses
  %i.te = fsub <4 x float> %i.td, %i.st
  %i.tf = fmul <4 x float> %i.te, %i.su
  %i.tg = fadd <4 x float> %i.tf, splat (float -5.000000e-01)
  %i.th = call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.tg)
  %i.ti = icmp sgt <4 x i32> %i.ry, %i.th
  %i.tj = select <4 x i1> %i.ti, <4 x i1> %i.sf, <4 x i1> zeroinitializer
  %i.tk = bitcast <4 x i1> %i.tj to i4
  %.not447 = icmp eq i4 %i.tk, 0
  br i1 %.not447, label %.critedge.i, label %.critedge37.i, !prof !27

.critedge.i:                                      ; preds = %bb.as
  %i.tl = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0210.1545, <4 x float> %i.ta) ; 2 uses
  %i.tm = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8213.1546, <4 x float> %i.tc) ; 2 uses
  %i.tn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14216.1547, <4 x float> %i.td) ; 2 uses
  %i.to = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20219.1548, <4 x float> %i.td) ; 2 uses
  %i.tp = getelementptr inbounds i8, ptr %.1.i549, i64 -32 ; 2 uses
  %.not35.i = icmp ugt ptr %.134.i.lcssa, %i.tp
  br i1 %.not35.i, label %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit, label %bb.as, !prof !30, !llvm.loop !3

.critedge37.i:                                    ; preds = %bb.as
  %i.tq = getelementptr inbounds nuw i8, ptr %.1.i549, i64 16 ; 2 uses
  %i.tr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0222.1.lcssa, <4 x float> %i.ta)
  %i.ts = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8225.1.lcssa, <4 x float> %i.tc)
  %i.tt = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14228.1.lcssa, <4 x float> %i.td)
  %i.tu = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20231.1.lcssa, <4 x float> %i.td)
  %i.tv = load <4 x float>, ptr %.134.i.lcssa, align 16, !noalias !1201 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 16 ; 2 uses
  %i.tx = load <4 x float>, ptr %i.tw, align 16, !noalias !1202 ; 3 uses
  %i.ty = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0210.1545, <4 x float> %i.tv)
  %i.tz = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8213.1546, <4 x float> %i.tx)
  %i.ua = fadd <4 x float> %i.tv, %i.tx           ; 2 uses
  %i.ub = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14216.1547, <4 x float> %i.ua)
  %i.uc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20219.1548, <4 x float> %i.ua)
  store <4 x float> %i.ta, ptr %.134.i.lcssa, align 16
  %i.ud = load <4 x float>, ptr %i.tq, align 16
  store <4 x float> %i.ud, ptr %i.tw, align 16
  store <4 x float> %i.tv, ptr %.1.i549, align 16
  store <4 x float> %i.tx, ptr %i.tq, align 16
  %i.ue = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 32
  br label %bb.ap, !llvm.loop !4

_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit: ; preds = %.critedge.i.preheader, %.critedge.i
  %.sroa.0210.1.lcssa = phi <4 x float> [ %i.tl, %.critedge.i ], [ %.sroa.0210.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.8213.1.lcssa = phi <4 x float> [ %i.tm, %.critedge.i ], [ %.sroa.8213.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.14216.1.lcssa = phi <4 x float> [ %i.tn, %.critedge.i ], [ %.sroa.14216.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.20219.1.lcssa = phi <4 x float> [ %i.to, %.critedge.i ], [ %.sroa.20219.0, %.critedge.i.preheader ] ; 2 uses
  %i.uf = ptrtoint ptr %.134.i.lcssa to i64
  %i.ug = ptrtoint ptr %i.sc to i64
  %i.uh = sub i64 %i.uf, %i.ug
  %i.ui = ashr exact i64 %i.uh, 5                 ; 2 uses
  store <4 x float> %.sroa.0222.1.lcssa, ptr %i.mr, align 16
  store <4 x float> %.sroa.8225.1.lcssa, ptr %i.ms, align 16
  store <4 x float> %.sroa.14228.1.lcssa, ptr %i.mt, align 16
  store <4 x float> %.sroa.20231.1.lcssa, ptr %i.mu, align 16
  store i64 %i.os, ptr %i.mv, align 16
  store i64 %i.ui, ptr %i.mw, align 8
  store <4 x float> %.sroa.0210.1.lcssa, ptr %i.my, align 16
  store <4 x float> %.sroa.8213.1.lcssa, ptr %i.mz, align 16
  store <4 x float> %.sroa.14216.1.lcssa, ptr %i.na, align 16
  store <4 x float> %.sroa.20219.1.lcssa, ptr %i.nb, align 16
  store i64 %i.ui, ptr %i.nc, align 16
  store i64 %i.or, ptr %i.nd, align 8
  br label %bb.aw

bb.at:                                            ; preds = %bb.ak
  br i1 %.not445, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE(ptr noundef nonnull align 8 dereferenceable(8) %i.oo, ptr noundef nonnull align 16 dereferenceable(80) %i.om)
  call void @_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_(ptr noundef nonnull align 8 dereferenceable(8) %i.oo, ptr noundef nonnull align 16 dereferenceable(80) %i.om, ptr noundef nonnull align 16 dereferenceable(80) %i.mr, ptr noundef nonnull align 16 dereferenceable(80) %i.my)
  %.pre704 = load <4 x float>, ptr %i.mr, align 16
  %.pre705 = load <4 x float>, ptr %i.ms, align 16
  %.pre706 = load <4 x float>, ptr %i.mt, align 16
  %.pre707 = load <4 x float>, ptr %i.mu, align 16
  %.pre708 = load <4 x float>, ptr %i.my, align 16
  %.pre709 = load <4 x float>, ptr %i.mz, align 16
  %.pre710 = load <4 x float>, ptr %i.na, align 16
  %.pre711 = load <4 x float>, ptr %i.nb, align 16
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  store <4 x float> splat (float +inf), ptr %9, align 16
  store <4 x float> splat (float -inf), ptr %i.nf, align 16
  store <4 x float> splat (float +inf), ptr %i.ng, align 16
  store <4 x float> splat (float -inf), ptr %i.nh, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  store <4 x float> splat (float +inf), ptr %10, align 16
  store <4 x float> splat (float -inf), ptr %i.ni, align 16
  store <4 x float> splat (float +inf), ptr %i.nj, align 16
  store <4 x float> splat (float -inf), ptr %i.nk, align 16
  %i.uj = load <1 x i32>, ptr %i.nl, align 8
  %i.uk = shl nuw i32 1, %i.ov
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #5
  %i.ul = shufflevector <1 x i32> %i.uj, <1 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ul, ptr %11, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #5
  %i.um = zext i32 %i.uk to i64
  %i.un = getelementptr inbounds nuw [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.um
  %i.uo = load <4 x float>, ptr %i.un, align 16
  store <4 x float> %i.uo, ptr %12, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #5
  store ptr %34, ptr %13, align 8
  store ptr %11, ptr %i.nm, align 8
  store ptr %12, ptr %i.nn, align 8
  %i.up = load ptr, ptr %i.oo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  %i.uq = call noundef i64 @_ZN6embree21parallel_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb1EEEvRKNS8_8BinSplitILm32EEERKNS8_13PrimInfoRangeERSG_SJ_EUlRKS1_E_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlRS6_SL_E0_ZNSB_ILb1EEEvSF_SI_SJ_SJ_EUlSN_RKS6_E_EEmPT_mmRKT1_RT0_SY_RKT2_RKT3_RKT4_m(ptr noundef %i.up, i64 noundef %i.os, i64 noundef %i.or, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 16 dereferenceable(64) %9, ptr noundef nonnull align 16 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16, i64 noundef 128) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #5
  %i.ur = load <4 x float>, ptr %9, align 16      ; 2 uses
  store <4 x float> %i.ur, ptr %i.mr, align 16
  %i.us = load <4 x float>, ptr %i.nf, align 16   ; 2 uses
  store <4 x float> %i.us, ptr %i.ms, align 16
  %i.ut = load <4 x float>, ptr %i.ng, align 16   ; 2 uses
  store <4 x float> %i.ut, ptr %i.mt, align 16
  %i.uu = load <4 x float>, ptr %i.nh, align 16   ; 2 uses
  store <4 x float> %i.uu, ptr %i.mu, align 16
  store i64 %i.os, ptr %i.mv, align 16
  store i64 %i.uq, ptr %i.mw, align 8
  %i.uv = load <4 x float>, ptr %10, align 16     ; 2 uses
  store <4 x float> %i.uv, ptr %i.my, align 16
  %i.uw = load <4 x float>, ptr %i.ni, align 16   ; 2 uses
  store <4 x float> %i.uw, ptr %i.mz, align 16
  %i.ux = load <4 x float>, ptr %i.nj, align 16   ; 2 uses
  store <4 x float> %i.ux, ptr %i.na, align 16
  %i.uy = load <4 x float>, ptr %i.nk, align 16   ; 2 uses
  store <4 x float> %i.uy, ptr %i.nb, align 16
  store i64 %i.uq, ptr %i.nc, align 16
  store i64 %i.or, ptr %i.nd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit131, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit, %bb.au, %bb.av
  %i.uz = phi <4 x float> [ %.sroa.14.0.lcssa.i.i113, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit131 ], [ %.sroa.20219.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre711, %bb.au ], [ %i.uy, %bb.av ]
  %i.va = phi <4 x float> [ %.sroa.10.0.lcssa.i.i114, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit131 ], [ %.sroa.14216.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre710, %bb.au ], [ %i.ux, %bb.av ]
  %i.vb = phi <4 x float> [ %.sroa.6.0.lcssa.i.i115, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit131 ], [ %.sroa.8213.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre709, %bb.au ], [ %i.uw, %bb.av ]
  %i.vc = phi <4 x float> [ %.sroa.0.0.lcssa.i.i116, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit131 ], [ %.sroa.0210.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre708, %bb.au ], [ %i.uv, %bb.av ]
  %i.vd = phi <4 x float> [ %.sroa.1434.0.lcssa.i.i109, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit131 ], [ %.sroa.20231.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre707, %bb.au ], [ %i.uu, %bb.av ]
  %i.ve = phi <4 x float> [ %.sroa.1032.0.lcssa.i.i110, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit131 ], [ %.sroa.14228.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre706, %bb.au ], [ %i.ut, %bb.av ]
  %i.vf = phi <4 x float> [ %.sroa.630.0.lcssa.i.i111, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit131 ], [ %.sroa.8225.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre705, %bb.au ], [ %i.us, %bb.av ]
  %i.vg = phi <4 x float> [ %.sroa.028.0.lcssa.i.i112, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE13splitFallbackERKNS0_13PrimInfoRangeERS4_S7_.exit131 ], [ %.sroa.0222.1.lcssa, %_ZN6embree19serial_partitioningINS_7PrimRefENS_8CentGeomINS_4BBoxINS_6Vec3faEEEEEZNS_4sse224HeuristicArrayBinningSAHIS1_Lm32EE14split_templateILb0EEEvRKNS7_8BinSplitILm32EEERKNS7_13PrimInfoRangeERSF_SI_EUlRKS1_E_ZNSA_ILb0EEEvSE_SH_SI_SI_EUlRS6_SK_E_EEmPT_mmRT0_SR_RKT1_RKT2_.exit ], [ %.pre704, %bb.au ], [ %i.ur, %bb.av ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.oi, ptr noundef nonnull align 16 dereferenceable(96) %32, i64 9, i1 false)
  store <4 x float> %i.vg, ptr %i.om, align 16
  %i.vh = getelementptr inbounds nuw i8, ptr %i.oi, i64 32
  store <4 x float> %i.vf, ptr %i.vh, align 16
  %i.vi = getelementptr inbounds nuw i8, ptr %i.oi, i64 48
  store <4 x float> %i.ve, ptr %i.vi, align 16
  %i.vj = getelementptr inbounds nuw i8, ptr %i.oi, i64 64
  store <4 x float> %i.vd, ptr %i.vj, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.op, ptr noundef nonnull align 16 dereferenceable(16) %i.mv, i64 16, i1 false)
  %i.vk = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %.063569 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.vk, ptr noundef nonnull align 16 dereferenceable(96) %33, i64 9, i1 false)
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  store <4 x float> %i.vc, ptr %i.vl, align 16
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 32
  store <4 x float> %i.vb, ptr %i.vm, align 16
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vk, i64 48
  store <4 x float> %i.va, ptr %i.vn, align 16
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 64
  store <4 x float> %i.uz, ptr %i.vo, align 16
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vk, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vp, ptr noundef nonnull align 16 dereferenceable(16) %i.nc, i64 16, i1 false)
  %i.vq = add nuw i64 %.063569, 1                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #5
  %i.vr = load i64, ptr %1, align 8
  %i.vs = icmp ult i64 %i.vq, %i.vr
  br i1 %i.vs, label %.lr.ph523, label %.thread

.thread:                                          ; preds = %bb.aw, %._crit_edge, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit74
  %.063.lcssa = phi i64 [ 2, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE5splitERKNS0_8BinSplitILm32EEERKNS0_13PrimInfoRangeERS8_SB_.exit74 ], [ %.063569, %._crit_edge ], [ %i.vq, %bb.aw ] ; 9 uses
  %i.vt = load i64, ptr %i.cq, align 8
  %i.vu = load i64, ptr %i.cp, align 16
  %i.vv = sub i64 %i.vt, %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.vx = load i64, ptr %i.vw, align 8            ; 4 uses
  %i.vy = icmp ugt i64 %i.vv, %i.vx
  br i1 %i.vy, label %.lr.ph574.preheader, label %.loopexit, !prof !29

.lr.ph574.preheader:                              ; preds = %.thread
  %xtraiter1030 = and i64 %.063.lcssa, 1
  %unroll_iter = and i64 %.063.lcssa, -2
  br label %.lr.ph574

.lr.ph574:                                        ; preds = %.lr.ph574, %.lr.ph574.preheader
  %.057573 = phi i64 [ 0, %.lr.ph574.preheader ], [ %i.wr, %.lr.ph574 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph574.preheader ], [ %niter.next.1, %.lr.ph574 ]
  %i.vz = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %.057573 ; 3 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 80
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 88
  %i.wc = load i64, ptr %i.wb, align 8
  %i.wd = load i64, ptr %i.wa, align 16
  %i.we = sub i64 %i.wc, %i.wd
  %i.wf = icmp ule i64 %i.we, %i.vx
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wh = zext i1 %i.wf to i8
  store i8 %i.wh, ptr %i.wg, align 8
  %i.wi = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %.057573 ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 176
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 184
  %i.wl = load i64, ptr %i.wk, align 8
  %i.wm = load i64, ptr %i.wj, align 16
  %i.wn = sub i64 %i.wl, %i.wm
  %i.wo = icmp ule i64 %i.wn, %i.vx
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wi, i64 104
  %i.wq = zext i1 %i.wo to i8
  store i8 %i.wq, ptr %i.wp, align 8
  %i.wr = add nuw i64 %.057573, 2                 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph574, !llvm.loop !1101

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph574
  %lcmp.mod1031.not = icmp eq i64 %xtraiter1030, 0
  br i1 %lcmp.mod1031.not, label %.loopexit, label %.lr.ph574.epil.preheader

.lr.ph574.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod1032 = trunc i64 %.063.lcssa to i1
  call void @llvm.assume(i1 %lcmp.mod1032)
  %i.ws = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %i.wr ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 80
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 88
  %i.wv = load i64, ptr %i.wu, align 8
  %i.ww = load i64, ptr %i.wt, align 16
  %i.wx = sub i64 %i.wv, %i.ww
  %i.wy = icmp ule i64 %i.wx, %i.vx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.xa = zext i1 %i.wy to i8
  store i8 %i.xa, ptr %i.wz, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph574.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.thread
  %.idx448 = mul nuw nsw i64 %.063.lcssa, 96
  %i.xb = getelementptr inbounds nuw i8, ptr %31, i64 %.idx448 ; 2 uses
  %i.xc = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.063.lcssa, i1 true)
  %i.xd = shl nuw nsw i64 %i.xc, 1
  %i.xe = xor i64 %i.xd, 126
  call void @_ZSt16__introsort_loopIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEElN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_T1_(ptr noundef nonnull %31, ptr noundef nonnull %i.xb, i64 noundef %i.xe)
  call void @_ZSt22__final_insertion_sortIPN6embree4sse217GeneralBVHBuilder12BuildRecordTINS1_13PrimInfoRangeENS1_8BinSplitILm32EEEEEN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIS7_EEEEvT_SF_T0_(ptr noundef nonnull %31, ptr noundef nonnull %i.xb)
  %i.xf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.xg = load ptr, ptr %i.xf, align 8            ; 9 uses
  %i.xh = load ptr, ptr %3, align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 224, ptr %i.a, align 8
  %i.xi = load ptr, ptr %i.xg, align 64           ; 18 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8 ; 6 uses
  %i.xk = load atomic ptr, ptr %i.xj seq_cst, align 8
  %i.xl = icmp eq ptr %i.xk, %i.xh
  br i1 %i.xl, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  store ptr %i.xi, ptr %8, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i8 1, ptr %i.xm, align 8
  call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.xi)
  %i.xn = load atomic ptr, ptr %i.xj seq_cst, align 8
  %.not.i3.i = icmp eq ptr %i.xn, null
  br i1 %.not.i3.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xi, i64 104
  %i.xp = load i64, ptr %i.xo, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xi, i64 168
  %i.xr = load i64, ptr %i.xq, align 8
  %i.xs = add i64 %i.xr, %i.xp
  %i.xt = load atomic ptr, ptr %i.xj seq_cst, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 280
  %i.xv = atomicrmw add ptr %i.xu, i64 %i.xs seq_cst, align 8 ; 0 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xi, i64 88
  %i.xx = load i64, ptr %i.xw, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xi, i64 80
  %i.xz = load i64, ptr %i.xy, align 16
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xi, i64 152
  %i.yb = load i64, ptr %i.ya, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xi, i64 144
  %i.yd = load i64, ptr %i.yc, align 16
  %i.ye = add i64 %i.xx, %i.yb
  %i.yf = add i64 %i.xz, %i.yd
  %i.yg = sub i64 %i.ye, %i.yf
  %i.yh = load atomic ptr, ptr %i.xj seq_cst, align 8
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 288
  %i.yj = atomicrmw add ptr %i.yi, i64 %i.yg seq_cst, align 8 ; 0 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xi, i64 112
  %i.yl = load i64, ptr %i.yk, align 16
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xi, i64 176
  %i.yn = load i64, ptr %i.ym, align 16
  %i.yo = add i64 %i.yn, %i.yl
  %i.yp = load atomic ptr, ptr %i.xj seq_cst, align 8
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 296
  %i.yr = atomicrmw add ptr %i.yq, i64 %i.yo seq_cst, align 8 ; 0 uses
  br label %bb.ba

bb.az:                                            ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit140
  %i.ys = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bh, %bb.az
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ys, %bb.az ], [ %i.zz, %bb.bh ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %common.resume

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %i.yt = getelementptr inbounds nuw i8, ptr %i.xi, i64 72
  %.not.i138 = icmp eq ptr %i.xh, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yt, i8 0, i64 48, i1 false)
  br i1 %.not.i138, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.bb

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.ba
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xi, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yu, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit140

bb.bb:                                            ; preds = %bb.ba
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xi, i64 96
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xh, i64 16 ; 2 uses
  %i.yx = load i64, ptr %i.yw, align 8
  store i64 %i.yx, ptr %i.yv, align 32
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xi, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yy, i8 0, i64 48, i1 false)
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xi, i64 160
  %i.za = load i64, ptr %i.yw, align 8
  store i64 %i.za, ptr %i.yz, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit140

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit140: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.bb
  store atomic ptr %i.xh, ptr %i.xj seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %7, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 1, ptr %i.zb, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.az

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit140
  %i.zc = getelementptr inbounds nuw i8, ptr %i.xh, i64 304 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.xh, i64 312 ; 4 uses
  %i.ze = load ptr, ptr %i.zd, align 8            ; 3 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.xh, i64 320 ; 2 uses
  %i.zg = load ptr, ptr %i.zf, align 8
  %.not.i142 = icmp eq ptr %i.ze, %i.zg
  br i1 %.not.i142, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.noexc.i
  store ptr %i.xi, ptr %i.ze, align 8
  %i.zh = load ptr, ptr %i.zd, align 8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  store ptr %i.zi, ptr %i.zd, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.bd:                                            ; preds = %.noexc.i
  %i.zj = load ptr, ptr %i.zc, align 8            ; 4 uses
  %i.zk = ptrtoint ptr %i.ze to i64
  %i.zl = ptrtoint ptr %i.zj to i64
  %i.zm = sub i64 %i.zk, %i.zl                    ; 5 uses
  %i.zn = icmp eq i64 %i.zm, 9223372036854775800
  br i1 %i.zn, label %bb.be, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc144 unwind label %bb.bh

.noexc144:                                        ; preds = %bb.be
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bd
  %i.zo = ashr exact i64 %i.zm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.zo, i64 1)
  %i.zp = add nsw i64 %.sroa.speculated.i.i.i, %i.zo ; 2 uses
  %i.zq = icmp ult i64 %i.zp, %i.zo
  %i.zr = call i64 @llvm.umin.i64(i64 %i.zp, i64 1152921504606846975)
  %i.zs = select i1 %i.zq, i64 1152921504606846975, i64 %i.zr ; 3 uses
  %.not.i.i.i143 = icmp ne i64 %i.zs, 0
  call void @llvm.assume(i1 %.not.i.i.i143)
  %i.zt = shl nuw nsw i64 %i.zs, 3
  %i.zu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zt) #27
          to label %.noexc145 unwind label %bb.bh ; 4 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.zv = getelementptr inbounds i8, ptr %i.zu, i64 %i.zm ; 2 uses
  store ptr %i.xi, ptr %i.zv, align 8
  %i.zw = icmp sgt i64 %i.zm, 0
  br i1 %i.zw, label %bb.bf, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.bf:                                            ; preds = %.noexc145
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.zu, ptr align 8 %i.zj, i64 %i.zm, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.bf, %.noexc145
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %.not.i17.i.i = icmp eq ptr %i.zj, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.zj) #26
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.bg, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.zu, ptr %i.zc, align 8
  store ptr %i.zx, ptr %i.zd, align 8
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %i.zs
  store ptr %i.zy, ptr %i.zf, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.bh:                                            ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.be
  %i.zz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %.body.i

_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i: ; preds = %bb.bc, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit146 unwind label %bb.bi

bb.bi:                                            ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  %i.aaa = landingpad { ptr, i32 }
          catch ptr null
  %i.aab = extractvalue { ptr, i32 } %i.aaa, 0
  call void @__clang_call_terminate(ptr %i.aab) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit146:       ; preds = %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  %i.aac = load i8, ptr %i.xm, align 8, !range !26, !noundef !21
  %i.aad = trunc nuw i8 %i.aac to i1
  br i1 %i.aad, label %bb.bj, label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit147

bb.bj:                                            ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit146
  %i.aae = load ptr, ptr %8, align 8, !nonnull !21, !align !22
  invoke void @_ZN6embree8MutexSys6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aae)
          to label %_ZN6embree4LockINS_8MutexSysEED2Ev.exit147 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aaf = landingpad { ptr, i32 }
          catch ptr null
  %i.aag = extractvalue { ptr, i32 } %i.aaf, 0
  call void @__clang_call_terminate(ptr %i.aag) #28
  unreachable

_ZN6embree4LockINS_8MutexSysEED2Ev.exit147:       ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit146, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i

_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i: ; preds = %_ZN6embree4LockINS_8MutexSysEED2Ev.exit147, %.loopexit
  %i.aah = load i64, ptr %i.a, align 8            ; 4 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.xg, i64 40 ; 2 uses
  %i.aaj = load i64, ptr %i.aai, align 8
  %i.aak = add i64 %i.aaj, %i.aah
  store i64 %i.aak, ptr %i.aai, align 8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.xg, i64 16 ; 9 uses
  %i.aam = load i64, ptr %i.aal, align 16         ; 3 uses
  %i.aan = sub i64 0, %i.aam
  %i.aao = and i64 %i.aan, 15                     ; 2 uses
  %i.aap = add i64 %i.aam, %i.aah
  %i.aaq = add i64 %i.aap, %i.aao                 ; 3 uses
  store i64 %i.aaq, ptr %i.aal, align 16
  %i.aar = getelementptr inbounds nuw i8, ptr %i.xg, i64 24 ; 5 uses
  %i.aas = load i64, ptr %i.aar, align 8
  %.not.i.i = icmp ugt i64 %i.aaq, %i.aas
  br i1 %.not.i.i, label %bb.bm, label %bb.bl, !prof !29

bb.bl:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  %i.aat = getelementptr inbounds nuw i8, ptr %i.xg, i64 48 ; 2 uses
  %i.aau = load i64, ptr %i.aat, align 16
  %i.aav = add i64 %i.aau, %i.aao
  store i64 %i.aav, ptr %i.aat, align 16
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.aax = load ptr, ptr %i.aaw, align 8
  %i.aay = sub i64 %i.aaq, %i.aah
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.aay
  br label %_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE6CreateclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit

bb.bm:                                            ; preds = %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i
  store i64 %i.aam, ptr %i.aal, align 16
  %i.aba = shl i64 %i.aah, 2
  %i.abb = getelementptr inbounds nuw i8, ptr %i.xg, i64 32 ; 2 uses
  %i.abc = load i64, ptr %i.abb, align 32         ; 2 uses
  %i.abd = icmp ugt i64 %i.aba, %i.abc
  br i1 %i.abd, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.abe = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.xh, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 64, i1 noundef zeroext false)
  br label %_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE6CreateclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store i64 %i.abc, ptr %i.b, align 8
  %i.abf = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.xh, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext true) ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.xg, i64 8 ; 2 uses
  store ptr %i.abf, ptr %i.abg, align 8
  %i.abh = load i64, ptr %i.aar, align 8
  %i.abi = load i64, ptr %i.aal, align 16
  %i.abj = sub i64 %i.abh, %i.abi
  %i.abk = getelementptr inbounds nuw i8, ptr %i.xg, i64 48 ; 6 uses
  %i.abl = load i64, ptr %i.abk, align 16
  %i.abm = add i64 %i.abl, %i.abj                 ; 2 uses
  store i64 %i.abm, ptr %i.abk, align 16
  %i.abn = load i64, ptr %i.b, align 8            ; 2 uses
  store i64 %i.abn, ptr %i.aar, align 8
  %37 = load i64, ptr %i.a, align 8               ; 2 uses
  store i64 %37, ptr %i.aal, align 16
  %.not23.i.i = icmp ugt i64 %37, %i.abn
  br i1 %.not23.i.i, label %bb.bq, label %bb.bp, !prof !29

bb.bp:                                            ; preds = %bb.bo
  store i64 %i.abm, ptr %i.abk, align 16
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bo
  store i64 0, ptr %i.aal, align 16
  %i.abo = load i64, ptr %i.abb, align 32
  store i64 %i.abo, ptr %i.b, align 8
  %i.abp = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.xh, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.abp, ptr %i.abg, align 8
  %i.abq = load i64, ptr %i.aar, align 8
  %i.abr = load i64, ptr %i.aal, align 16
  %i.abs = sub i64 %i.abq, %i.abr
  %i.abt = load i64, ptr %i.abk, align 16
  %i.abu = add i64 %i.abt, %i.abs                 ; 2 uses
  store i64 %i.abu, ptr %i.abk, align 16
  %i.abv = load i64, ptr %i.b, align 8            ; 2 uses
  store i64 %i.abv, ptr %i.aar, align 8
  %38 = load i64, ptr %i.a, align 8               ; 2 uses
  store i64 %38, ptr %i.aal, align 16
  %.not24.i.i = icmp ugt i64 %38, %i.abv
  br i1 %.not24.i.i, label %bb.bs, label %bb.br, !prof !29

bb.br:                                            ; preds = %bb.bq
  store i64 %i.abu, ptr %i.abk, align 16
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  store i64 0, ptr %i.aal, align 16
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bp
  %.0.i.i = phi ptr [ %i.abf, %bb.bp ], [ %i.abp, %bb.br ], [ null, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE6CreateclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit

_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE6CreateclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit: ; preds = %bb.bl, %bb.bn, %bb.bt
  %.1.i.i = phi ptr [ %i.aaz, %bb.bl ], [ %i.abe, %bb.bn ], [ %.0.i.i, %bb.bt ] ; 35 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.abw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 96
  store <4 x float> splat (float +inf), ptr %i.abw, align 16
  %i.abx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 64
  store <4 x float> splat (float +inf), ptr %i.abx, align 16
  %i.aby = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  store <4 x float> splat (float +inf), ptr %i.aby, align 16
  %i.abz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 112
  store <4 x float> splat (float -inf), ptr %i.abz, align 16
  %i.aca = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 80
  store <4 x float> splat (float -inf), ptr %i.aca, align 16
  %i.acb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  store <4 x float> splat (float -inf), ptr %i.acb, align 16
  %i.acc = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.acc, i8 0, i64 96, i1 false)
  store <4 x i64> splat (i64 8), ptr %.1.i.i, align 16
  %i.acd = ptrtoint ptr %.1.i.i to i64
  %i.ace = or i64 %i.acd, 1
  %i.acf = load i64, ptr %i.cq, align 8
  %i.acg = load i64, ptr %i.cp, align 16
  %i.ach = sub i64 %i.acf, %i.acg
  %i.aci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.acj = load i64, ptr %i.aci, align 8
  %i.ack = icmp ugt i64 %i.ach, %i.acj
  br i1 %i.ack, label %bb.bu, label %.lr.ph577

.lr.ph577:                                        ; preds = %_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE6CreateclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit
  %i.acl = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.acm = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.acn = getelementptr inbounds nuw i8, ptr %36, i64 48
  %i.aco = getelementptr inbounds nuw i8, ptr %36, i64 64
  br label %bb.cd

bb.bu:                                            ; preds = %_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE6CreateclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEES2_PT_mRKNS_13FastAllocator15CachedAllocatorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #5
  store ptr %30, ptr %35, align 8
  %i.acp = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %1, ptr %i.acp, align 8
  %i.acq = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %31, ptr %i.acq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store ptr null, ptr %5, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS3_12BuildRecordTINS2_13PrimInfoRangeENS2_8BinSplitILm32EEEEENS2_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES6_SB_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSH_6CreateENS_12AABBNodeMB_tISF_Li4EE6CreateENSL_12SetTimeRangeEZNS2_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSH_RNS_20BuildProgressMonitorEPSB_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS3_8SettingsERKNSW_IfEEEUlPKSB_RKNS_5rangeImEERKSI_E_NS3_24DefaultCanCreateLeafFuncISB_S6_EENS3_29DefaultCanCreateLeafSplitFuncISB_S6_EESS_E7recurseERS9_SI_bEUlS1B_E_EEvT_S1M_S1M_RKT0_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %.063.lcssa, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull %5)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.bx

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.bv
  %i.acr = load ptr, ptr %5, align 8              ; 2 uses
  %.not449 = icmp eq ptr %i.acr, null
  br i1 %.not449, label %.lr.ph595, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.acr, ptr %6, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %6) #25
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.acs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit151

bb.by:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.act = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.acu = load ptr, ptr %6, align 8
  %.not.i150 = icmp eq ptr %i.acu, null
  br i1 %.not.i150, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit151, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #5
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit151

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit151: ; preds = %bb.bz, %bb.by, %bb.bx
  %.pn.i94 = phi { ptr, i32 } [ %i.acs, %bb.bx ], [ %i.act, %bb.by ], [ %i.act, %bb.bz ]
  %i.acv = load ptr, ptr %5, align 8
  %.not.i.i152 = icmp eq ptr %i.acv, null
  br i1 %.not.i.i152, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit151
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #5
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit151, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %common.resume

.lr.ph595:                                        ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.phi.trans.insert712 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.pre713 = load ptr, ptr %.phi.trans.insert712, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #5
  %i.acw = getelementptr inbounds nuw i8, ptr %.pre713, i64 4
  %i.acx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  %i.acy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 64
  %i.acz = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 96
  %i.ada = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  %i.adb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 80
  %i.adc = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 112
  %i.add = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 128
  %i.ade = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 160
  %i.adf = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 192
  %i.adg = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 144
  %i.adh = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 176
  %i.adi = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 208
  br label %bb.cb

bb.cb:                                            ; preds = %.lr.ph595, %bb.cb
  %.0.i89594 = phi i64 [ 0, %.lr.ph595 ], [ %i.agj, %bb.cb ] ; 15 uses
  %.sroa.14265.0593 = phi <4 x float> [ splat (float -inf), %.lr.ph595 ], [ %i.agi, %bb.cb ]
  %.sroa.10263.0592 = phi <4 x float> [ splat (float +inf), %.lr.ph595 ], [ %i.agg, %bb.cb ]
  %.sroa.6261.0591 = phi <4 x float> [ splat (float -inf), %.lr.ph595 ], [ %i.age, %bb.cb ]
  %.sroa.0259.0590 = phi <4 x float> [ splat (float +inf), %.lr.ph595 ], [ %i.agc, %bb.cb ]
  %i.adj = getelementptr inbounds nuw [80 x i8], ptr %30, i64 %.0.i89594 ; 5 uses
  %.sroa.01.0.copyload.i91 = load i64, ptr %i.adj, align 16, !noalias !1203
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i, i64 %.0.i89594
  store i64 %.sroa.01.0.copyload.i91, ptr %i.adk, align 8, !noalias !1203
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adj, i64 16 ; 2 uses
  %i.adm = load float, ptr %i.acw, align 4, !noalias !1204
  %i.adn = load float, ptr %.pre713, align 4, !noalias !1204 ; 3 uses
  %i.ado = fsub float %i.adm, %i.adn
  %i.adp = fdiv float 1.000000e+00, %i.ado        ; 2 uses
  %i.adq = fneg float %i.adn
  %i.adr = fmul float %i.adp, %i.adq              ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adj, i64 48 ; 2 uses
  %i.adt = fsub float 1.000000e+00, %i.adr
  %i.adu = insertelement <4 x float> poison, float %i.adr, i64 0
  %i.adv = shufflevector <4 x float> %i.adu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.adw = load <4 x float>, ptr %i.ads, align 16, !noalias !1205 ; 2 uses
  %i.adx = fmul <4 x float> %i.adw, %i.adv
  %i.ady = insertelement <4 x float> poison, float %i.adt, i64 0
  %i.adz = shufflevector <4 x float> %i.ady, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aea = load <4 x float>, ptr %i.adl, align 16, !noalias !1206 ; 2 uses
  %i.aeb = fmul <4 x float> %i.aea, %i.adz
  %i.aec = fadd <4 x float> %i.adx, %i.aeb
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adj, i64 32 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adj, i64 64 ; 2 uses
  %i.aef = load <4 x float>, ptr %i.aee, align 16, !noalias !1207 ; 2 uses
  %i.aeg = fmul <4 x float> %i.aef, %i.adv
  %i.aeh = load <4 x float>, ptr %i.aed, align 16, !noalias !1208 ; 2 uses
  %i.aei = fmul <4 x float> %i.aeh, %i.adz
  %i.aej = fadd <4 x float> %i.aeg, %i.aei
  %i.aek = fsub float 1.000000e+00, %i.adn
  %i.ael = fmul float %i.aek, %i.adp              ; 2 uses
  %i.aem = fsub float 1.000000e+00, %i.ael
  %i.aen = insertelement <4 x float> poison, float %i.ael, i64 0
  %i.aeo = shufflevector <4 x float> %i.aen, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aep = fmul <4 x float> %i.adw, %i.aeo
  %i.aeq = insertelement <4 x float> poison, float %i.aem, i64 0
  %i.aer = shufflevector <4 x float> %i.aeq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aes = fmul <4 x float> %i.aea, %i.aer
  %i.aet = fadd <4 x float> %i.aep, %i.aes
  %i.aeu = fmul <4 x float> %i.aef, %i.aeo
  %i.aev = fmul <4 x float> %i.aeh, %i.aer
  %i.aew = fadd <4 x float> %i.aeu, %i.aev
  %i.aex = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aec, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.aey = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aej, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.aez = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aet, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.afa = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aew, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.afb = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aex)
  %i.afc = fmul <4 x float> %i.afb, splat (float f0x35000000)
  %i.afd = fsub <4 x float> %i.aex, %i.afc        ; 4 uses
  %i.afe = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aey)
  %i.aff = fmul <4 x float> %i.afe, splat (float f0x35000000)
  %i.afg = fadd <4 x float> %i.aey, %i.aff        ; 4 uses
  %i.afh = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aez)
  %i.afi = fmul <4 x float> %i.afh, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.afj = fsub <4 x float> %i.aez, %i.afi
  %i.afk = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.afa)
  %i.afl = fmul <4 x float> %i.afk, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.afm = fadd <4 x float> %i.afa, %i.afl
  %i.afn = fsub <4 x float> %i.afj, %i.afd        ; 3 uses
  %i.afo = fsub <4 x float> %i.afm, %i.afg        ; 3 uses
  %.sroa.0319.0.vec.extract = extractelement <4 x float> %i.afd, i64 0
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.acx, i64 %.0.i89594
  store float %.sroa.0319.0.vec.extract, ptr %i.afp, align 4, !noalias !1203
  %.sroa.0319.4.vec.extract = extractelement <4 x float> %i.afd, i64 1
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.acy, i64 %.0.i89594
  store float %.sroa.0319.4.vec.extract, ptr %i.afq, align 4, !noalias !1203
  %.sroa.0319.8.vec.extract = extractelement <4 x float> %i.afd, i64 2
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.acz, i64 %.0.i89594
  store float %.sroa.0319.8.vec.extract, ptr %i.afr, align 4, !noalias !1203
  %.sroa.10323.16.vec.extract = extractelement <4 x float> %i.afg, i64 0
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.ada, i64 %.0.i89594
  store float %.sroa.10323.16.vec.extract, ptr %i.afs, align 4, !noalias !1203
  %.sroa.10323.20.vec.extract = extractelement <4 x float> %i.afg, i64 1
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.adb, i64 %.0.i89594
  store float %.sroa.10323.20.vec.extract, ptr %i.aft, align 4, !noalias !1203
  %.sroa.10323.24.vec.extract = extractelement <4 x float> %i.afg, i64 2
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.adc, i64 %.0.i89594
  store float %.sroa.10323.24.vec.extract, ptr %i.afu, align 4, !noalias !1203
  %.sroa.0300.0.vec.extract = extractelement <4 x float> %i.afn, i64 0
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.add, i64 %.0.i89594
  store float %.sroa.0300.0.vec.extract, ptr %i.afv, align 4, !noalias !1203
  %.sroa.0300.4.vec.extract = extractelement <4 x float> %i.afn, i64 1
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %.0.i89594
  store float %.sroa.0300.4.vec.extract, ptr %i.afw, align 4, !noalias !1203
  %.sroa.0300.8.vec.extract = extractelement <4 x float> %i.afn, i64 2
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %.0.i89594
  store float %.sroa.0300.8.vec.extract, ptr %i.afx, align 4, !noalias !1203
  %.sroa.0299.0.vec.extract = extractelement <4 x float> %i.afo, i64 0
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.adg, i64 %.0.i89594
  store float %.sroa.0299.0.vec.extract, ptr %i.afy, align 4, !noalias !1203
  %.sroa.0299.4.vec.extract = extractelement <4 x float> %i.afo, i64 1
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %i.adh, i64 %.0.i89594
  store float %.sroa.0299.4.vec.extract, ptr %i.afz, align 4, !noalias !1203
  %.sroa.0299.8.vec.extract = extractelement <4 x float> %i.afo, i64 2
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.adi, i64 %.0.i89594
  store float %.sroa.0299.8.vec.extract, ptr %i.aga, align 4, !noalias !1203
  %i.agb = load <4 x float>, ptr %i.adl, align 16, !noalias !1209
  %i.agc = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0259.0590, <4 x float> %i.agb) ; 2 uses
  %i.agd = load <4 x float>, ptr %i.aed, align 16, !noalias !1210
  %i.age = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6261.0591, <4 x float> %i.agd) ; 2 uses
  %i.agf = load <4 x float>, ptr %i.ads, align 16, !noalias !1211
  %i.agg = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10263.0592, <4 x float> %i.agf) ; 2 uses
  %i.agh = load <4 x float>, ptr %i.aee, align 16, !noalias !1212
  %i.agi = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14265.0593, <4 x float> %i.agh) ; 2 uses
  %i.agj = add nuw i64 %.0.i89594, 1              ; 2 uses
  %exitcond681.not = icmp eq i64 %i.agj, %.063.lcssa
  br i1 %exitcond681.not, label %_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE12SetTimeRangeclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEENS_15BVHNodeRecordMBIS2_EERKT_PSG_S2_PSE_m.exit92, label %bb.cb, !llvm.loop !17

.lr.ph585:                                        ; preds = %bb.cd
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.agl = load ptr, ptr %i.agk, align 8, !nonnull !21, !align !34 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  %i.agn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  %i.ago = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 64
  %i.agp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 96
  %i.agq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  %i.agr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 80
  %i.ags = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 112
  %i.agt = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 128
  %i.agu = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 160
  %i.agv = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 192
  %i.agw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 144
  %i.agx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 176
  %i.agy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 208
  br label %bb.cc

bb.cc:                                            ; preds = %.lr.ph585, %bb.cc
  %.0.i88583 = phi i64 [ 0, %.lr.ph585 ], [ %i.ajv, %bb.cc ] ; 15 uses
  %.sroa.14255.0582 = phi <4 x float> [ splat (float -inf), %.lr.ph585 ], [ %i.aju, %bb.cc ]
  %.sroa.10.0581 = phi <4 x float> [ splat (float +inf), %.lr.ph585 ], [ %i.ajt, %bb.cc ]
  %.sroa.6.0580 = phi <4 x float> [ splat (float -inf), %.lr.ph585 ], [ %i.ajs, %bb.cc ]
  %.sroa.0251.0579 = phi <4 x float> [ splat (float +inf), %.lr.ph585 ], [ %i.ajr, %bb.cc ]
  %i.agz = getelementptr inbounds nuw [80 x i8], ptr %30, i64 %.0.i88583 ; 5 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.agz, align 16, !noalias !1213
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i, i64 %.0.i88583
  store i64 %.sroa.01.0.copyload.i, ptr %i.aha, align 8, !noalias !1213
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 16
  %i.ahc = load float, ptr %i.agm, align 4, !noalias !1214
  %i.ahd = load float, ptr %i.agl, align 4, !noalias !1214 ; 3 uses
  %i.ahe = fsub float %i.ahc, %i.ahd
  %i.ahf = fdiv float 1.000000e+00, %i.ahe        ; 2 uses
  %i.ahg = fneg float %i.ahd
  %i.ahh = fmul float %i.ahf, %i.ahg              ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agz, i64 48
  %i.ahj = fsub float 1.000000e+00, %i.ahh
  %i.ahk = insertelement <4 x float> poison, float %i.ahh, i64 0
  %i.ahl = shufflevector <4 x float> %i.ahk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahm = load <4 x float>, ptr %i.ahi, align 16, !noalias !1215 ; 3 uses
  %i.ahn = fmul <4 x float> %i.ahm, %i.ahl
  %i.aho = insertelement <4 x float> poison, float %i.ahj, i64 0
  %i.ahp = shufflevector <4 x float> %i.aho, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahq = load <4 x float>, ptr %i.ahb, align 16, !noalias !1216 ; 3 uses
  %i.ahr = fmul <4 x float> %i.ahq, %i.ahp
  %i.ahs = fadd <4 x float> %i.ahn, %i.ahr
  %i.aht = getelementptr inbounds nuw i8, ptr %i.agz, i64 32
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agz, i64 64
  %i.ahv = load <4 x float>, ptr %i.ahu, align 16, !noalias !1217 ; 3 uses
  %i.ahw = fmul <4 x float> %i.ahv, %i.ahl
  %i.ahx = load <4 x float>, ptr %i.aht, align 16, !noalias !1218 ; 3 uses
  %i.ahy = fmul <4 x float> %i.ahx, %i.ahp
  %i.ahz = fadd <4 x float> %i.ahw, %i.ahy
  %i.aia = fsub float 1.000000e+00, %i.ahd
  %i.aib = fmul float %i.aia, %i.ahf              ; 2 uses
  %i.aic = fsub float 1.000000e+00, %i.aib
  %i.aid = insertelement <4 x float> poison, float %i.aib, i64 0
  %i.aie = shufflevector <4 x float> %i.aid, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aif = fmul <4 x float> %i.ahm, %i.aie
  %i.aig = insertelement <4 x float> poison, float %i.aic, i64 0
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aii = fmul <4 x float> %i.ahq, %i.aih
  %i.aij = fadd <4 x float> %i.aif, %i.aii
  %i.aik = fmul <4 x float> %i.ahv, %i.aie
  %i.ail = fmul <4 x float> %i.ahx, %i.aih
  %i.aim = fadd <4 x float> %i.aik, %i.ail
  %i.ain = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ahs, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.aio = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ahz, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.aip = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aij, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.aiq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aim, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.air = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ain)
  %i.ais = fmul <4 x float> %i.air, splat (float f0x35000000)
  %i.ait = fsub <4 x float> %i.ain, %i.ais        ; 4 uses
  %i.aiu = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aio)
  %i.aiv = fmul <4 x float> %i.aiu, splat (float f0x35000000)
  %i.aiw = fadd <4 x float> %i.aio, %i.aiv        ; 4 uses
  %i.aix = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aip)
  %i.aiy = fmul <4 x float> %i.aix, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.aiz = fsub <4 x float> %i.aip, %i.aiy
  %i.aja = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.aiq)
  %i.ajb = fmul <4 x float> %i.aja, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.ajc = fadd <4 x float> %i.aiq, %i.ajb
  %i.ajd = fsub <4 x float> %i.aiz, %i.ait        ; 3 uses
  %i.aje = fsub <4 x float> %i.ajc, %i.aiw        ; 3 uses
  %.sroa.0347.0.vec.extract = extractelement <4 x float> %i.ait, i64 0
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.agn, i64 %.0.i88583
  store float %.sroa.0347.0.vec.extract, ptr %i.ajf, align 4, !noalias !1213
  %.sroa.0347.4.vec.extract = extractelement <4 x float> %i.ait, i64 1
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.ago, i64 %.0.i88583
  store float %.sroa.0347.4.vec.extract, ptr %i.ajg, align 4, !noalias !1213
  %.sroa.0347.8.vec.extract = extractelement <4 x float> %i.ait, i64 2
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.agp, i64 %.0.i88583
  store float %.sroa.0347.8.vec.extract, ptr %i.ajh, align 4, !noalias !1213
  %.sroa.10351.16.vec.extract = extractelement <4 x float> %i.aiw, i64 0
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.agq, i64 %.0.i88583
  store float %.sroa.10351.16.vec.extract, ptr %i.aji, align 4, !noalias !1213
  %.sroa.10351.20.vec.extract = extractelement <4 x float> %i.aiw, i64 1
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %i.agr, i64 %.0.i88583
  store float %.sroa.10351.20.vec.extract, ptr %i.ajj, align 4, !noalias !1213
  %.sroa.10351.24.vec.extract = extractelement <4 x float> %i.aiw, i64 2
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %.0.i88583
  store float %.sroa.10351.24.vec.extract, ptr %i.ajk, align 4, !noalias !1213
  %.sroa.0328.0.vec.extract = extractelement <4 x float> %i.ajd, i64 0
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.agt, i64 %.0.i88583
  store float %.sroa.0328.0.vec.extract, ptr %i.ajl, align 4, !noalias !1213
  %.sroa.0328.4.vec.extract = extractelement <4 x float> %i.ajd, i64 1
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %.0.i88583
  store float %.sroa.0328.4.vec.extract, ptr %i.ajm, align 4, !noalias !1213
  %.sroa.0328.8.vec.extract = extractelement <4 x float> %i.ajd, i64 2
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %.0.i88583
  store float %.sroa.0328.8.vec.extract, ptr %i.ajn, align 4, !noalias !1213
  %.sroa.0327.0.vec.extract = extractelement <4 x float> %i.aje, i64 0
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.agw, i64 %.0.i88583
  store float %.sroa.0327.0.vec.extract, ptr %i.ajo, align 4, !noalias !1213
  %.sroa.0327.4.vec.extract = extractelement <4 x float> %i.aje, i64 1
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.agx, i64 %.0.i88583
  store float %.sroa.0327.4.vec.extract, ptr %i.ajp, align 4, !noalias !1213
  %.sroa.0327.8.vec.extract = extractelement <4 x float> %i.aje, i64 2
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %.0.i88583
  store float %.sroa.0327.8.vec.extract, ptr %i.ajq, align 4, !noalias !1213
  %i.ajr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0251.0579, <4 x float> %i.ahq) ; 2 uses
  %i.ajs = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.0580, <4 x float> %i.ahx) ; 2 uses
  %i.ajt = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.0581, <4 x float> %i.ahm) ; 2 uses
  %i.aju = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14255.0582, <4 x float> %i.ahv) ; 2 uses
  %i.ajv = add nuw i64 %.0.i88583, 1              ; 2 uses
  %exitcond680.not = icmp eq i64 %i.ajv, %.063.lcssa
  br i1 %exitcond680.not, label %_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE12SetTimeRangeclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEENS_15BVHNodeRecordMBIS2_EERKT_PSG_S2_PSE_m.exit92, label %bb.cc, !llvm.loop !17

bb.cd:                                            ; preds = %.lr.ph577, %bb.cd
  %.0576 = phi i64 [ 0, %.lr.ph577 ], [ %i.akh, %bb.cd ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #5
  %i.ajw = getelementptr inbounds nuw [96 x i8], ptr %31, i64 %.0576
  call void @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_12AABBNodeMB_tISD_Li4EE6CreateENSJ_12SetTimeRangeEZNS0_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsERKNSU_IfEEEUlPKS9_RKNS_5rangeImEERKSG_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESQ_E7recurseERS7_SG_b(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BVHNodeRecordMB") align 16 %36, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.ajw, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3, i1 noundef zeroext false)
  %i.ajx = getelementptr inbounds nuw [80 x i8], ptr %30, i64 %.0576 ; 5 uses
  %i.ajy = load i64, ptr %36, align 16
  store i64 %i.ajy, ptr %i.ajx, align 16
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajx, i64 16
  %i.aka = load <4 x float>, ptr %i.acl, align 16
  store <4 x float> %i.aka, ptr %i.ajz, align 16
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ajx, i64 32
  %i.akc = load <4 x float>, ptr %i.acm, align 16
  store <4 x float> %i.akc, ptr %i.akb, align 16
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ajx, i64 48
  %i.ake = load <4 x float>, ptr %i.acn, align 16
  store <4 x float> %i.ake, ptr %i.akd, align 16
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajx, i64 64
  %i.akg = load <4 x float>, ptr %i.aco, align 16
  store <4 x float> %i.akg, ptr %i.akf, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #5
  %i.akh = add nuw i64 %.0576, 1                  ; 2 uses
  %exitcond679.not = icmp eq i64 %i.akh, %.063.lcssa
  br i1 %exitcond679.not, label %.lr.ph585, label %bb.cd, !llvm.loop !1162

_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE12SetTimeRangeclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEENS_15BVHNodeRecordMBIS2_EERKT_PSG_S2_PSE_m.exit92: ; preds = %bb.cc, %bb.cb
  %.lcssa767.sink = phi <4 x float> [ %i.agc, %bb.cb ], [ %i.ajr, %bb.cc ]
  %.lcssa766.sink = phi <4 x float> [ %i.age, %bb.cb ], [ %i.ajs, %bb.cc ]
  %.lcssa765.sink = phi <4 x float> [ %i.agg, %bb.cb ], [ %i.ajt, %bb.cc ]
  %.lcssa764.sink = phi <4 x float> [ %i.agi, %bb.cb ], [ %i.aju, %bb.cc ]
  store i64 %i.ace, ptr %0, align 16
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.lcssa767.sink, ptr %i.aki, align 16
  %i.akj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.lcssa766.sink, ptr %i.akj, align 16
  %i.akk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %.lcssa765.sink, ptr %i.akk, align 16
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %.lcssa764.sink, ptr %i.akl, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #5
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE12SetTimeRangeclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEENS_15BVHNodeRecordMBIS2_EERKT_PSG_S2_PSE_m.exit92, %_ZN6embree4sse224HeuristicArrayBinningSAHINS_7PrimRefELm32EE19deterministic_orderERKNS0_13PrimInfoRangeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #5
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_12AABBNodeMB_tISD_Li4EE6CreateENSJ_12SetTimeRangeEZNS0_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsERKNSU_IfEEEUlPKS9_RKNS_5rangeImEERKSG_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESQ_E15createLargeLeafERKS7_SG_(ptr dead_on_unwind noalias writable sret(%"struct.embree::BVHNodeRecordMB") align 16 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(96) %2, ptr noundef byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.embree::Lock", align 8      ; 6 uses
  %5 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::allocator", align 1    ; 5 uses
  %8 = alloca [16 x %"struct.embree::BVHNodeRecordMB"], align 16 ; 4 uses
  %9 = alloca [16 x %"struct.embree::sse2::GeneralBVHBuilder::BuildRecordT"], align 16 ; 17 uses
  %10 = alloca %"struct.embree::BVHNodeRecordMB", align 16 ; 8 uses
  %i.c = load i64, ptr %2, align 16               ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 48) #5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #25
          to label %bb.al unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.g) #5
  %i.l = load ptr, ptr %6, align 8                ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %6, align 8                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread188: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.p) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  br label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn181 = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.k, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @__cxa_free_exception(ptr %i.g) #5
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = load i64, ptr %i.t, align 8
  %i.v = load i64, ptr %i.s, align 16
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  %.not = icmp ugt i64 %i.w, %i.y
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !21, !align !22
  %i.ac = load ptr, ptr %i.z, align 8
  %i.ad = load ptr, ptr %i.ab, align 8, !noalias !1264 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !1264
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1264
  call void %i.af(ptr dead_on_unwind writable sret(%"struct.embree::BVHNodeRecordMB") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %3), !inline_history !1221
  br label %bb.ak

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %9, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 9, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load <4 x float>, ptr %i.ah, align 16
  store <4 x float> %i.ai, ptr %i.ag, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.al = load <4 x float>, ptr %i.aj, align 16
  store <4 x float> %i.al, ptr %i.ak, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ao = load <4 x float>, ptr %i.an, align 16
  store <4 x float> %i.ao, ptr %i.am, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ar = load <4 x float>, ptr %i.ap, align 16
  store <4 x float> %i.ar, ptr %i.aq, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.as, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.at = add i64 %i.c, 1                         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f, %.loopexit199
  %indvar = phi i64 [ 0, %bb.f ], [ %indvar.next, %.loopexit199 ] ; 2 uses
  %.052 = phi i64 [ 1, %bb.f ], [ %i.fl, %.loopexit199 ] ; 6 uses
  %xtraiter = and i64 %.052, 1
  %i.av = icmp eq i64 %indvar, 0
  br i1 %i.av, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.052, -2
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.048209.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bt, %._crit_edge.unr-lcssa ] ; 2 uses
  %.049208.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.unr-lcssa ]
  %.050207.epil.init = phi i64 [ -1, %.lr.ph.preheader ], [ %.151.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod301 = trunc i64 %.052 to i1
  tail call void @llvm.assume(i1 %lcmp.mod301)
  %i.aw = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.048209.epil.init ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = load i64, ptr %i.ax, align 16
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %.not62.epil = icmp ugt i64 %i.bb, %i.y
  %i.bc = icmp ugt i64 %i.bb, %.049208.epil.init
  %spec.select.epil = select i1 %i.bc, i64 %.048209.epil.init, i64 %.050207.epil.init
  %.151.epil = select i1 %.not62.epil, i64 %spec.select.epil, i64 %.050207.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.151.lcssa = phi i64 [ %.151.1, %._crit_edge.unr-lcssa ], [ %.151.epil, %.lr.ph.epil.preheader ] ; 2 uses
  %i.bd = icmp eq i64 %.151.lcssa, -1
  br i1 %i.bd, label %bb.k, label %bb.j

.lr.ph:                                           ; preds = %bb.i, %.lr.ph.preheader.new
  %.048209 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bt, %bb.i ] ; 4 uses
  %.049208 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %.1.1, %bb.i ] ; 3 uses
  %.050207 = phi i64 [ -1, %.lr.ph.preheader.new ], [ %.151.1, %bb.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.i ]
  %i.be = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.048209 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = load i64, ptr %i.bf, align 16
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %.not62 = icmp ugt i64 %i.bj, %i.y
  br i1 %.not62, label %bb.g, label %.lr.ph.1

bb.g:                                             ; preds = %.lr.ph
  %i.bk = icmp ugt i64 %i.bj, %.049208
  %spec.select = select i1 %i.bk, i64 %.048209, i64 %.050207
  %spec.select197 = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 %.049208)
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.g
  %.151 = phi i64 [ %spec.select, %bb.g ], [ %.050207, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %spec.select197, %bb.g ], [ %.049208, %.lr.ph ] ; 3 uses
  %i.bl = or disjoint i64 %.048209, 1             ; 2 uses
  %i.bm = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = load i64, ptr %i.bn, align 16
  %i.br = sub i64 %i.bp, %i.bq                    ; 3 uses
  %.not62.1 = icmp ugt i64 %i.br, %i.y
  br i1 %.not62.1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.1
  %i.bs = icmp ugt i64 %i.br, %.1
  %spec.select.1 = select i1 %i.bs, i64 %i.bl, i64 %.151
  %spec.select197.1 = tail call i64 @llvm.umax.i64(i64 %i.br, i64 %.1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.1
  %.151.1 = phi i64 [ %spec.select.1, %bb.h ], [ %.151, %.lr.ph.1 ] ; 3 uses
  %.1.1 = phi i64 [ %spec.select197.1, %bb.h ], [ %.1, %.lr.ph.1 ] ; 2 uses
  %i.bt = add nuw i64 %.048209, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !1222

bb.j:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.151.lcssa ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.au, align 8, !nonnull !21, !align !22
  %i.bx = load ptr, ptr %i.bw, align 8            ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 80 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 16           ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  %i.cb = load i64, ptr %i.ca, align 8            ; 6 uses
  %i.cc = add i64 %i.cb, %i.bz
  %i.cd = lshr i64 %i.cc, 1                       ; 12 uses
  %i.ce = icmp ult i64 %i.bz, %i.cd
  br i1 %i.ce, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.cf = sub nuw i64 %i.cd, %i.bz
  %.neg = add i64 %i.bz, 1
  %xtraiter302 = and i64 %i.cf, 1
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %i.bz ; 2 uses
  %i.ch = load <4 x float>, ptr %i.cg, align 16, !noalias !1265 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cj = load <4 x float>, ptr %i.ci, align 16, !noalias !1266 ; 2 uses
  %i.ck = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ch) ; 2 uses
  %i.cl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.cj) ; 2 uses
  %i.cm = fadd <4 x float> %i.ch, %i.cj           ; 2 uses
  %i.cn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.cm) ; 2 uses
  %i.co = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.cm) ; 2 uses
  %i.cp = add nuw nsw i64 %i.bz, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa295.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.ck, %.lr.ph.i.i.prol ]
  %.lcssa294.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.prol ]
  %.lcssa293.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.prol ]
  %.lcssa292.unr = phi <4 x float> [ poison, %.lr.ph.i.i.preheader ], [ %i.co, %.lr.ph.i.i.prol ]
  %.02166.i.i.unr = phi i64 [ %i.bz, %.lr.ph.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.prol ]
  %.sroa.028.065.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.preheader ], [ %i.ck, %.lr.ph.i.i.prol ]
  %.sroa.630.064.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.prol ]
  %.sroa.1032.063.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.prol ]
  %.sroa.1434.062.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.preheader ], [ %i.co, %.lr.ph.i.i.prol ]
  %i.cq = icmp eq i64 %i.cd, %.neg
  br i1 %i.cq, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.j
  %.sroa.1434.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %bb.j ], [ %.lcssa292.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.dw, %.lr.ph.i.i ]
  %.sroa.1032.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %bb.j ], [ %.lcssa293.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.dv, %.lr.ph.i.i ]
  %.sroa.630.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %bb.j ], [ %.lcssa294.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.dt, %.lr.ph.i.i ]
  %.sroa.028.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %bb.j ], [ %.lcssa295.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ds, %.lr.ph.i.i ]
  %i.cr = icmp ult i64 %i.cd, %i.cb
  br i1 %i.cr, label %.lr.ph76.i.i.preheader, label %.loopexit199

.lr.ph76.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.cs = sub nuw i64 %i.cb, %i.cd
  %.neg311 = add nuw i64 %i.cd, 1
  %xtraiter304 = and i64 %i.cs, 1
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %.lr.ph76.i.i.prol.loopexit, label %.lr.ph76.i.i.prol

.lr.ph76.i.i.prol:                                ; preds = %.lr.ph76.i.i.preheader
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %i.cd ; 2 uses
  %i.cu = load <4 x float>, ptr %i.ct, align 16, !noalias !1267 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cw = load <4 x float>, ptr %i.cv, align 16, !noalias !1268 ; 2 uses
  %i.cx = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.cu) ; 2 uses
  %i.cy = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.cw) ; 2 uses
  %i.cz = fadd <4 x float> %i.cu, %i.cw           ; 2 uses
  %i.da = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.cz) ; 2 uses
  %i.db = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.cz) ; 2 uses
  %i.dc = add nuw i64 %i.cd, 1
  br label %.lr.ph76.i.i.prol.loopexit

.lr.ph76.i.i.prol.loopexit:                       ; preds = %.lr.ph76.i.i.prol, %.lr.ph76.i.i.preheader
  %.lcssa299.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.cx, %.lr.ph76.i.i.prol ]
  %.lcssa298.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.cy, %.lr.ph76.i.i.prol ]
  %.lcssa297.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.da, %.lr.ph76.i.i.prol ]
  %.lcssa296.unr = phi <4 x float> [ poison, %.lr.ph76.i.i.preheader ], [ %i.db, %.lr.ph76.i.i.prol ]
  %.074.i.i.unr = phi i64 [ %i.cd, %.lr.ph76.i.i.preheader ], [ %i.dc, %.lr.ph76.i.i.prol ]
  %.sroa.0.073.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i.preheader ], [ %i.cx, %.lr.ph76.i.i.prol ]
  %.sroa.6.072.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i.preheader ], [ %i.cy, %.lr.ph76.i.i.prol ]
  %.sroa.10.071.i.i.unr = phi <4 x float> [ splat (float +inf), %.lr.ph76.i.i.preheader ], [ %i.da, %.lr.ph76.i.i.prol ]
  %.sroa.14.070.i.i.unr = phi <4 x float> [ splat (float -inf), %.lr.ph76.i.i.preheader ], [ %i.db, %.lr.ph76.i.i.prol ]
  %i.dd = icmp eq i64 %i.cb, %.neg311
  br i1 %i.dd, label %.loopexit199, label %.lr.ph76.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02166.i.i = phi i64 [ %i.dx, %.lr.ph.i.i ], [ %.02166.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %.sroa.028.065.i.i = phi <4 x float> [ %i.ds, %.lr.ph.i.i ], [ %.sroa.028.065.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.630.064.i.i = phi <4 x float> [ %i.dt, %.lr.ph.i.i ], [ %.sroa.630.064.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.1032.063.i.i = phi <4 x float> [ %i.dv, %.lr.ph.i.i ], [ %.sroa.1032.063.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.1434.062.i.i = phi <4 x float> [ %i.dw, %.lr.ph.i.i ], [ %.sroa.1434.062.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.02166.i.i ; 2 uses
  %i.df = load <4 x float>, ptr %i.de, align 16, !noalias !1265 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load <4 x float>, ptr %i.dg, align 16, !noalias !1266 ; 2 uses
  %i.di = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.028.065.i.i, <4 x float> %i.df)
  %i.dj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.630.064.i.i, <4 x float> %i.dh)
  %i.dk = fadd <4 x float> %i.df, %i.dh           ; 2 uses
  %i.dl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1032.063.i.i, <4 x float> %i.dk)
  %i.dm = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1434.062.i.i, <4 x float> %i.dk)
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.02166.i.i ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = load <4 x float>, ptr %i.do, align 16, !noalias !1265 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dr = load <4 x float>, ptr %i.dq, align 16, !noalias !1266 ; 2 uses
  %i.ds = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.di, <4 x float> %i.dp) ; 2 uses
  %i.dt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dj, <4 x float> %i.dr) ; 2 uses
  %i.du = fadd <4 x float> %i.dp, %i.dr           ; 2 uses
  %i.dv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.dl, <4 x float> %i.du) ; 2 uses
  %i.dw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.dm, <4 x float> %i.du) ; 2 uses
  %i.dx = add nuw nsw i64 %.02166.i.i, 2          ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.dx, %i.cd
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph76.i.i:                                     ; preds = %.lr.ph76.i.i.prol.loopexit, %.lr.ph76.i.i
  %.074.i.i = phi i64 [ %i.er, %.lr.ph76.i.i ], [ %.074.i.i.unr, %.lr.ph76.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.073.i.i = phi <4 x float> [ %i.em, %.lr.ph76.i.i ], [ %.sroa.0.073.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %.sroa.6.072.i.i = phi <4 x float> [ %i.en, %.lr.ph76.i.i ], [ %.sroa.6.072.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %.sroa.10.071.i.i = phi <4 x float> [ %i.ep, %.lr.ph76.i.i ], [ %.sroa.10.071.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %.sroa.14.070.i.i = phi <4 x float> [ %i.eq, %.lr.ph76.i.i ], [ %.sroa.14.070.i.i.unr, %.lr.ph76.i.i.prol.loopexit ]
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.074.i.i ; 2 uses
  %i.dz = load <4 x float>, ptr %i.dy, align 16, !noalias !1267 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load <4 x float>, ptr %i.ea, align 16, !noalias !1268 ; 2 uses
  %i.ec = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.073.i.i, <4 x float> %i.dz)
  %i.ed = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.072.i.i, <4 x float> %i.eb)
  %i.ee = fadd <4 x float> %i.dz, %i.eb           ; 2 uses
  %i.ef = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.071.i.i, <4 x float> %i.ee)
  %i.eg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.070.i.i, <4 x float> %i.ee)
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %.074.i.i ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  %i.ej = load <4 x float>, ptr %i.ei, align 16, !noalias !1267 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.el = load <4 x float>, ptr %i.ek, align 16, !noalias !1268 ; 2 uses
  %i.em = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ec, <4 x float> %i.ej) ; 2 uses
  %i.en = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ed, <4 x float> %i.el) ; 2 uses
  %i.eo = fadd <4 x float> %i.ej, %i.el           ; 2 uses
  %i.ep = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ef, <4 x float> %i.eo) ; 2 uses
  %i.eq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eg, <4 x float> %i.eo) ; 2 uses
  %i.er = add nuw i64 %.074.i.i, 2                ; 2 uses
  %exitcond89.not.i.i.1 = icmp eq i64 %i.er, %i.cb
  br i1 %exitcond89.not.i.i.1, label %.loopexit199, label %.lr.ph76.i.i, !llvm.loop !1

.loopexit199:                                     ; preds = %.lr.ph76.i.i.prol.loopexit, %.lr.ph76.i.i, %._crit_edge.i.i
  %.sroa.14.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %._crit_edge.i.i ], [ %.lcssa296.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.eq, %.lr.ph76.i.i ]
  %.sroa.10.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %._crit_edge.i.i ], [ %.lcssa297.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.ep, %.lr.ph76.i.i ]
  %.sroa.6.0.lcssa.i.i = phi <4 x float> [ splat (float -inf), %._crit_edge.i.i ], [ %.lcssa298.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.en, %.lr.ph76.i.i ]
  %.sroa.0.0.lcssa.i.i = phi <4 x float> [ splat (float +inf), %._crit_edge.i.i ], [ %.lcssa299.unr, %.lr.ph76.i.i.prol.loopexit ], [ %i.em, %.lr.ph76.i.i ]
  %i.es = getelementptr [96 x i8], ptr %9, i64 %.052 ; 16 uses
  %i.et = getelementptr i8, ptr %i.es, i64 -96    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.bu, ptr noundef nonnull align 16 dereferenceable(96) %i.et, i64 9, i1 false)
  %i.eu = getelementptr i8, ptr %i.es, i64 -80    ; 2 uses
  %i.ev = load <4 x float>, ptr %i.eu, align 16
  store <4 x float> %i.ev, ptr %i.bv, align 16
  %i.ew = getelementptr i8, ptr %i.es, i64 -64    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ey = load <4 x float>, ptr %i.ew, align 16
  store <4 x float> %i.ey, ptr %i.ex, align 16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.fa = getelementptr i8, ptr %i.es, i64 -48    ; 2 uses
  %i.fb = load <4 x float>, ptr %i.fa, align 16
  store <4 x float> %i.fb, ptr %i.ez, align 16
  %i.fc = getelementptr i8, ptr %i.es, i64 -32    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  %i.fe = load <4 x float>, ptr %i.fc, align 16
  store <4 x float> %i.fe, ptr %i.fd, align 16
  %i.ff = getelementptr i8, ptr %i.es, i64 -16    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.by, ptr noundef nonnull align 16 dereferenceable(16) %i.ff, i64 16, i1 false)
  store i64 %i.at, ptr %i.et, align 16
  %.sroa.477.0..sroa_idx = getelementptr i8, ptr %i.es, i64 -88
  store i8 0, ptr %.sroa.477.0..sroa_idx, align 8
  store <4 x float> %.sroa.028.0.lcssa.i.i, ptr %i.eu, align 16
  store <4 x float> %.sroa.630.0.lcssa.i.i, ptr %i.ew, align 16
  store <4 x float> %.sroa.1032.0.lcssa.i.i, ptr %i.fa, align 16
  store <4 x float> %.sroa.1434.0.lcssa.i.i, ptr %i.fc, align 16
  store i64 %i.bz, ptr %i.ff, align 16
  %.sroa.2084.80..sroa_idx = getelementptr i8, ptr %i.es, i64 -8
  store i64 %i.cd, ptr %.sroa.2084.80..sroa_idx, align 8
  store i64 %i.at, ptr %i.es, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <4 x float> %.sroa.0.0.lcssa.i.i, ptr %i.fg, align 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store <4 x float> %.sroa.6.0.lcssa.i.i, ptr %i.fh, align 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 48
  store <4 x float> %.sroa.10.0.lcssa.i.i, ptr %i.fi, align 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  store <4 x float> %.sroa.14.0.lcssa.i.i, ptr %i.fj, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  store i64 %i.cd, ptr %i.fk, align 16
  %.sroa.20.80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.es, i64 88
  store i64 %i.cb, ptr %.sroa.20.80..sroa_idx, align 8
  %i.fl = add nuw i64 %.052, 1                    ; 3 uses
  %i.fm = load i64, ptr %1, align 8
  %i.fn = icmp ult i64 %i.fl, %i.fm
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fn, label %.lr.ph.preheader, label %bb.k, !llvm.loop !1235

bb.k:                                             ; preds = %._crit_edge, %.loopexit199
  %.153194 = phi i64 [ %i.fl, %.loopexit199 ], [ %.052, %._crit_edge ] ; 6 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fp = load i64, ptr %i.fo, align 8            ; 4 uses
  %i.fq = icmp ugt i64 %i.w, %i.fp
  br i1 %i.fq, label %.lr.ph211.preheader, label %.loopexit, !prof !29

.lr.ph211.preheader:                              ; preds = %bb.k
  %xtraiter306 = and i64 %.153194, 1
  %i.fr = icmp eq i64 %.153194, 1
  br i1 %i.fr, label %.lr.ph211.epil.preheader, label %.lr.ph211.preheader.new

.lr.ph211.preheader.new:                          ; preds = %.lr.ph211.preheader
  %unroll_iter309 = and i64 %.153194, -2
  br label %.lr.ph211

.lr.ph211:                                        ; preds = %.lr.ph211, %.lr.ph211.preheader.new
  %.046210 = phi i64 [ 0, %.lr.ph211.preheader.new ], [ %i.gk, %.lr.ph211 ] ; 3 uses
  %niter310 = phi i64 [ 0, %.lr.ph211.preheader.new ], [ %niter310.next.1, %.lr.ph211 ]
  %i.fs = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.046210 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 80
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 88
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = load i64, ptr %i.ft, align 16
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = icmp ule i64 %i.fx, %i.fp
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.ga = zext i1 %i.fy to i8
  store i8 %i.ga, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.046210 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 176
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 184
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = load i64, ptr %i.gc, align 16
  %i.gg = sub i64 %i.ge, %i.gf
  %i.gh = icmp ule i64 %i.gg, %i.fp
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 104
  %i.gj = zext i1 %i.gh to i8
  store i8 %i.gj, ptr %i.gi, align 8
  %i.gk = add nuw i64 %.046210, 2                 ; 2 uses
  %niter310.next.1 = add nuw i64 %niter310, 2     ; 2 uses
  %niter310.ncmp.1 = icmp eq i64 %niter310.next.1, %unroll_iter309
  br i1 %niter310.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph211, !llvm.loop !1236

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph211
  %lcmp.mod307.not = icmp eq i64 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %.loopexit, label %.lr.ph211.epil.preheader

.lr.ph211.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph211.preheader
  %.046210.epil.init = phi i64 [ 0, %.lr.ph211.preheader ], [ %i.gk, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod308 = trunc i64 %.153194 to i1
  tail call void @llvm.assume(i1 %lcmp.mod308)
  %i.gl = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.046210.epil.init ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 80
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 88
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = load i64, ptr %i.gm, align 16
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = icmp ule i64 %i.gq, %i.fp
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gt = zext i1 %i.gr to i8
  store i8 %i.gt, ptr %i.gs, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph211.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.k
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8            ; 9 uses
  %i.gw = load ptr, ptr %3, align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 224, ptr %i.a, align 8
  %i.gx = load ptr, ptr %i.gv, align 64           ; 18 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 6 uses
  %i.gz = load atomic ptr, ptr %i.gy seq_cst, align 8
  %i.ha = icmp eq ptr %i.gz, %i.gw
  br i1 %i.ha, label %_ZN6embree13FastAllocator12ThreadLocal24bindEPS0_.exit.i, label %bb.l

bb.l:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store ptr %i.gx, ptr %5, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 1, ptr %i.hb, align 8
  tail call void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 64 dereferenceable(192) %i.gx)
  %i.hc = load atomic ptr, ptr %i.gy seq_cst, align 8
  %.not.i3.i = icmp eq ptr %i.hc, null
  br i1 %.not.i3.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 104
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 168
  %i.hg = load i64, ptr %i.hf, align 8
  %i.hh = add i64 %i.hg, %i.he
  %i.hi = load atomic ptr, ptr %i.gy seq_cst, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 280
  %i.hk = atomicrmw add ptr %i.hj, i64 %i.hh seq_cst, align 8 ; 0 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gx, i64 88
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 80
  %i.ho = load i64, ptr %i.hn, align 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gx, i64 152
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gx, i64 144
  %i.hs = load i64, ptr %i.hr, align 16
  %i.ht = add i64 %i.hm, %i.hq
  %i.hu = add i64 %i.ho, %i.hs
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = load atomic ptr, ptr %i.gy seq_cst, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 288
  %i.hy = atomicrmw add ptr %i.hx, i64 %i.hv seq_cst, align 8 ; 0 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gx, i64 112
  %i.ia = load i64, ptr %i.hz, align 16
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gx, i64 176
  %i.ic = load i64, ptr %i.ib, align 16
  %i.id = add i64 %i.ic, %i.ia
  %i.ie = load atomic ptr, ptr %i.gy seq_cst, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 296
  %i.ig = atomicrmw add ptr %i.if, i64 %i.id seq_cst, align 8 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit71
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread188 ], [ %.pn181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.v, %bb.n
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ih, %bb.n ], [ %i.jo, %bb.v ]
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %common.resume

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gx, i64 72
  %.not.i = icmp eq ptr %i.gw, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ii, i8 0, i64 48, i1 false)
  br i1 %.not.i, label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, label %bb.p

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread: ; preds = %bb.o
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gx, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ij, i8 0, i64 48, i1 false)
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit71

bb.p:                                             ; preds = %bb.o
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gx, i64 96
  %i.il = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8
  store i64 %i.im, ptr %i.ik, align 32
  %i.in = getelementptr inbounds nuw i8, ptr %i.gx, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.in, i8 0, i64 48, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %i.gx, i64 160
  %i.ip = load i64, ptr %i.il, align 8
  store i64 %i.ip, ptr %i.io, align 32
  br label %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit71

_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit71: ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit.thread, %bb.p
  store atomic ptr %i.gw, ptr %i.gy seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  store ptr @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE, ptr %4, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 1, ptr %i.iq, align 8
  invoke void @_ZN6embree8MutexSys4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZN6embree13FastAllocator30s_thread_local_allocators_lockE)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %_ZN6embree13FastAllocator11ThreadLocal4initEPS0_.exit71
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gw, i64 304 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.gw, i64 312 ; 4 uses
  %i.it = load ptr, ptr %i.is, align 8            ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gw, i64 320 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8
  %.not.i72 = icmp eq ptr %i.it, %i.iv
  br i1 %.not.i72, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc.i
  store ptr %i.gx, ptr %i.it, align 8
  %i.iw = load ptr, ptr %i.is, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store ptr %i.ix, ptr %i.is, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.r:                                             ; preds = %.noexc.i
  %i.iy = load ptr, ptr %i.ir, align 8            ; 4 uses
  %i.iz = ptrtoint ptr %i.it to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 5 uses
  %i.jc = icmp eq i64 %i.jb, 9223372036854775800
  br i1 %i.jc, label %bb.s, label %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.s
  unreachable

_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.jd = ashr exact i64 %i.jb, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jd, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i.i, %i.jd ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jd
  %i.jg = tail call i64 @llvm.umin.i64(i64 %i.je, i64 1152921504606846975)
  %i.jh = select i1 %i.jf, i64 1152921504606846975, i64 %i.jg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.jh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ji = shl nuw nsw i64 %i.jh, 3
  %i.jj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #27
          to label %.noexc73 unwind label %bb.v   ; 4 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %i.jb ; 2 uses
  store ptr %i.gx, ptr %i.jk, align 8
  %i.jl = icmp sgt i64 %i.jb, 0
  br i1 %i.jl, label %bb.t, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.t:                                             ; preds = %.noexc73
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jj, ptr align 8 %i.iy, i64 %i.jb, i1 false)
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.t, %.noexc73
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %.not.i17.i.i = icmp eq ptr %i.iy, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.iy) #26
  br label %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.jj, ptr %i.ir, align 8
  store ptr %i.jm, ptr %i.is, align 8
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jh
  store ptr %i.jn, ptr %i.iu, align 8
  br label %_ZN6embree13FastAllocator4joinEPNS0_12ThreadLocal2E.exit.i

bb.v:                                             ; preds = %_ZNKSt6vectorIPN6embree13FastAllocator12ThreadLocal2ESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %bb.s
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6embree4LockINS_8MutexSysEED2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %4) #5
end_hunk_9
begin_hunk_10_@_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_12AABBNodeMB_tISD_Li4EE6CreateENSJ_12SetTimeRangeEZNS0_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsERKNSU_IfEEEUlPKS9_RKNS_5rangeImEERKSG_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESQ_E15createLargeLeafERKS7_SG_:bb.a
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 2 uses
  store ptr %i.ku, ptr %i.kv, align 8
  %i.kw = load i64, ptr %i.kg, align 8
  %i.kx = load i64, ptr %i.ka, align 16
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gv, i64 48 ; 6 uses
  %i.la = load i64, ptr %i.kz, align 16
  %i.lb = add i64 %i.la, %i.ky                    ; 2 uses
  store i64 %i.lb, ptr %i.kz, align 16
  %i.lc = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.lc, ptr %i.kg, align 8
  store i64 %i.jw, ptr %i.ka, align 16
  %.not23.i.i = icmp ugt i64 %i.jw, %i.lc
  br i1 %.not23.i.i, label %bb.ae, label %bb.ad, !prof !29

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.lb, ptr %i.kz, align 16
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  store i64 0, ptr %i.ka, align 16
  %i.ld = load i64, ptr %i.kq, align 32
  store i64 %i.ld, ptr %i.b, align 8
  %i.le = call noundef ptr @_ZN6embree13FastAllocator6mallocERmmb(ptr noundef nonnull align 8 dereferenceable(376) %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 64, i1 noundef zeroext false) ; 2 uses
  store ptr %i.le, ptr %i.kv, align 8
  %i.lf = load i64, ptr %i.kg, align 8
  %i.lg = load i64, ptr %i.ka, align 16
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = load i64, ptr %i.kz, align 16
  %i.lj = add i64 %i.li, %i.lh                    ; 2 uses
  store i64 %i.lj, ptr %i.kz, align 16
  %i.lk = load i64, ptr %i.b, align 8             ; 2 uses
  store i64 %i.lk, ptr %i.kg, align 8
  store i64 %i.jw, ptr %i.ka, align 16
  %.not24.i.i = icmp ugt i64 %i.jw, %i.lk
  br i1 %.not24.i.i, label %bb.ag, label %bb.af, !prof !29

bb.af:                                            ; preds = %bb.ae
  store i64 %i.lj, ptr %i.kz, align 16
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  store i64 0, ptr %i.ka, align 16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %.0.i.i = phi ptr [ %i.ku, %bb.ad ], [ %i.le, %bb.af ], [ null, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %.lr.ph214

.lr.ph214:                                        ; preds = %bb.ah, %bb.ab, %bb.z
  %.1.i.i = phi ptr [ %i.ko, %bb.z ], [ %i.kt, %bb.ab ], [ %.0.i.i, %bb.ah ] ; 22 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ll = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 96
  store <4 x float> splat (float +inf), ptr %i.ll, align 16
  %i.lm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 64
  store <4 x float> splat (float +inf), ptr %i.lm, align 16
  %i.ln = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  store <4 x float> splat (float +inf), ptr %i.ln, align 16
  %i.lo = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 112
  store <4 x float> splat (float -inf), ptr %i.lo, align 16
  %i.lp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 80
  store <4 x float> splat (float -inf), ptr %i.lp, align 16
  %i.lq = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  store <4 x float> splat (float -inf), ptr %i.lq, align 16
  %i.lr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.lr, i8 0, i64 96, i1 false)
  store <4 x i64> splat (i64 8), ptr %.1.i.i, align 16
  %i.ls = ptrtoint ptr %.1.i.i to i64
  %i.lt = or i64 %i.ls, 1
  %i.lu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.lv = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.lx = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %bb.aj

.lr.ph222:                                        ; preds = %bb.aj
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.lz = load ptr, ptr %i.ly, align 8, !nonnull !21, !align !34 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mb = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  %i.mc = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 64
  %i.md = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 96
  %i.me = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  %i.mf = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 80
  %i.mg = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 112
  %i.mh = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 128
  %i.mi = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 160
  %i.mj = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 192
  %i.mk = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 144
  %i.ml = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 176
  %i.mm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 208
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph222, %bb.ai
  %.0.i220 = phi i64 [ 0, %.lr.ph222 ], [ %i.pj, %bb.ai ] ; 15 uses
  %.sroa.1493.0219 = phi <4 x float> [ splat (float -inf), %.lr.ph222 ], [ %i.pi, %bb.ai ]
  %.sroa.10.0218 = phi <4 x float> [ splat (float +inf), %.lr.ph222 ], [ %i.ph, %bb.ai ]
  %.sroa.6.0217 = phi <4 x float> [ splat (float -inf), %.lr.ph222 ], [ %i.pg, %bb.ai ]
  %.sroa.089.0216 = phi <4 x float> [ splat (float +inf), %.lr.ph222 ], [ %i.pf, %bb.ai ]
  %i.mn = getelementptr inbounds nuw [80 x i8], ptr %8, i64 %.0.i220 ; 5 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.mn, align 16, !noalias !1269
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %.1.i.i, i64 %.0.i220
  store i64 %.sroa.01.0.copyload.i, ptr %i.mo, align 8, !noalias !1269
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mq = load float, ptr %i.ma, align 4, !noalias !1270
  %i.mr = load float, ptr %i.lz, align 4, !noalias !1270 ; 3 uses
  %i.ms = fsub float %i.mq, %i.mr
  %i.mt = fdiv float 1.000000e+00, %i.ms          ; 2 uses
  %i.mu = fneg float %i.mr
  %i.mv = fmul float %i.mt, %i.mu                 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 48
  %i.mx = fsub float 1.000000e+00, %i.mv
  %i.my = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.na = load <4 x float>, ptr %i.mw, align 16, !noalias !1271 ; 3 uses
  %i.nb = fmul <4 x float> %i.na, %i.mz
  %i.nc = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.nd = shufflevector <4 x float> %i.nc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ne = load <4 x float>, ptr %i.mp, align 16, !noalias !1272 ; 3 uses
  %i.nf = fmul <4 x float> %i.ne, %i.nd
  %i.ng = fadd <4 x float> %i.nb, %i.nf
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mn, i64 64
  %i.nj = load <4 x float>, ptr %i.ni, align 16, !noalias !1273 ; 3 uses
  %i.nk = fmul <4 x float> %i.nj, %i.mz
  %i.nl = load <4 x float>, ptr %i.nh, align 16, !noalias !1274 ; 3 uses
  %i.nm = fmul <4 x float> %i.nl, %i.nd
  %i.nn = fadd <4 x float> %i.nk, %i.nm
  %i.no = fsub float 1.000000e+00, %i.mr
  %i.np = fmul float %i.no, %i.mt                 ; 2 uses
  %i.nq = fsub float 1.000000e+00, %i.np
  %i.nr = insertelement <4 x float> poison, float %i.np, i64 0
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nt = fmul <4 x float> %i.na, %i.ns
  %i.nu = insertelement <4 x float> poison, float %i.nq, i64 0
  %i.nv = shufflevector <4 x float> %i.nu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.nw = fmul <4 x float> %i.ne, %i.nv
  %i.nx = fadd <4 x float> %i.nt, %i.nw
  %i.ny = fmul <4 x float> %i.nj, %i.ns
  %i.nz = fmul <4 x float> %i.nl, %i.nv
  %i.oa = fadd <4 x float> %i.ny, %i.nz
  %i.ob = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ng, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.oc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.nn, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.od = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.nx, <4 x float> splat (float f0x7F7FFFFF)) ; 2 uses
  %i.oe = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.oa, <4 x float> splat (float f0xFF7FFFFF)) ; 2 uses
  %i.of = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ob)
  %i.og = fmul <4 x float> %i.of, splat (float f0x35000000)
  %i.oh = fsub <4 x float> %i.ob, %i.og           ; 4 uses
  %i.oi = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oc)
  %i.oj = fmul <4 x float> %i.oi, splat (float f0x35000000)
  %i.ok = fadd <4 x float> %i.oc, %i.oj           ; 4 uses
  %i.ol = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.od)
  %i.om = fmul <4 x float> %i.ol, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.on = fsub <4 x float> %i.od, %i.om
  %i.oo = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oe)
  %i.op = fmul <4 x float> %i.oo, <float f0x35000000, float f0x35000000, float f0x35000000, float poison>
  %i.oq = fadd <4 x float> %i.oe, %i.op
  %i.or = fsub <4 x float> %i.on, %i.oh           ; 3 uses
  %i.os = fsub <4 x float> %i.oq, %i.ok           ; 3 uses
  %.sroa.0134.0.vec.extract = extractelement <4 x float> %i.oh, i64 0
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %.0.i220
  store float %.sroa.0134.0.vec.extract, ptr %i.ot, align 4, !noalias !1269
  %.sroa.0134.4.vec.extract = extractelement <4 x float> %i.oh, i64 1
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.0.i220
  store float %.sroa.0134.4.vec.extract, ptr %i.ou, align 4, !noalias !1269
  %.sroa.0134.8.vec.extract = extractelement <4 x float> %i.oh, i64 2
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %.0.i220
  store float %.sroa.0134.8.vec.extract, ptr %i.ov, align 4, !noalias !1269
  %.sroa.10138.16.vec.extract = extractelement <4 x float> %i.ok, i64 0
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %.0.i220
  store float %.sroa.10138.16.vec.extract, ptr %i.ow, align 4, !noalias !1269
  %.sroa.10138.20.vec.extract = extractelement <4 x float> %i.ok, i64 1
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %.0.i220
  store float %.sroa.10138.20.vec.extract, ptr %i.ox, align 4, !noalias !1269
  %.sroa.10138.24.vec.extract = extractelement <4 x float> %i.ok, i64 2
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %.0.i220
  store float %.sroa.10138.24.vec.extract, ptr %i.oy, align 4, !noalias !1269
  %.sroa.0116.0.vec.extract = extractelement <4 x float> %i.or, i64 0
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %.0.i220
  store float %.sroa.0116.0.vec.extract, ptr %i.oz, align 4, !noalias !1269
  %.sroa.0116.4.vec.extract = extractelement <4 x float> %i.or, i64 1
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %.0.i220
  store float %.sroa.0116.4.vec.extract, ptr %i.pa, align 4, !noalias !1269
  %.sroa.0116.8.vec.extract = extractelement <4 x float> %i.or, i64 2
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %.0.i220
  store float %.sroa.0116.8.vec.extract, ptr %i.pb, align 4, !noalias !1269
  %.sroa.0115.0.vec.extract = extractelement <4 x float> %i.os, i64 0
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %.0.i220
  store float %.sroa.0115.0.vec.extract, ptr %i.pc, align 4, !noalias !1269
  %.sroa.0115.4.vec.extract = extractelement <4 x float> %i.os, i64 1
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %.0.i220
  store float %.sroa.0115.4.vec.extract, ptr %i.pd, align 4, !noalias !1269
  %.sroa.0115.8.vec.extract = extractelement <4 x float> %i.os, i64 2
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %.0.i220
  store float %.sroa.0115.8.vec.extract, ptr %i.pe, align 4, !noalias !1269
  %i.pf = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.089.0216, <4 x float> %i.ne) ; 2 uses
  %i.pg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.0217, <4 x float> %i.nl) ; 2 uses
  %i.ph = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.0218, <4 x float> %i.na) ; 2 uses
  %i.pi = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1493.0219, <4 x float> %i.nj) ; 2 uses
  %i.pj = add nuw i64 %.0.i220, 1                 ; 2 uses
  %exitcond245.not = icmp eq i64 %i.pj, %.153194
  br i1 %exitcond245.not, label %_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE12SetTimeRangeclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEENS_15BVHNodeRecordMBIS2_EERKT_PSG_S2_PSE_m.exit, label %bb.ai, !llvm.loop !17

_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE12SetTimeRangeclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEENS_15BVHNodeRecordMBIS2_EERKT_PSG_S2_PSE_m.exit: ; preds = %bb.ai
  store i64 %i.lt, ptr %0, align 16
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %i.pf, ptr %i.pk, align 16
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %i.pg, ptr %i.pl, align 16
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> %i.ph, ptr %i.pm, align 16
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x float> %i.pi, ptr %i.pn, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  br label %bb.ak

bb.aj:                                            ; preds = %.lr.ph214, %bb.aj
  %.045213 = phi i64 [ 0, %.lr.ph214 ], [ %i.pz, %bb.aj ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  %i.po = getelementptr inbounds nuw [96 x i8], ptr %9, i64 %.045213
  call void @_ZN6embree4sse217GeneralBVHBuilder8BuilderTINS1_12BuildRecordTINS0_13PrimInfoRangeENS0_8BinSplitILm32EEEEENS0_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES4_S9_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSF_6CreateENS_12AABBNodeMB_tISD_Li4EE6CreateENSJ_12SetTimeRangeEZNS0_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSF_RNS_20BuildProgressMonitorEPS9_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS1_8SettingsERKNSU_IfEEEUlPKS9_RKNS_5rangeImEERKSG_E_NS1_24DefaultCanCreateLeafFuncIS9_S4_EENS1_29DefaultCanCreateLeafSplitFuncIS9_S4_EESQ_E15createLargeLeafERKS7_SG_(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BVHNodeRecordMB") align 16 %10, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(96) %i.po, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %3)
  %i.pp = getelementptr inbounds nuw [80 x i8], ptr %8, i64 %.045213 ; 5 uses
  %i.pq = load i64, ptr %10, align 16
  store i64 %i.pq, ptr %i.pp, align 16
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.ps = load <4 x float>, ptr %i.lu, align 16
  store <4 x float> %i.ps, ptr %i.pr, align 16
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  %i.pu = load <4 x float>, ptr %i.lv, align 16
  store <4 x float> %i.pu, ptr %i.pt, align 16
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pp, i64 48
  %i.pw = load <4 x float>, ptr %i.lw, align 16
  store <4 x float> %i.pw, ptr %i.pv, align 16
  %i.px = getelementptr inbounds nuw i8, ptr %i.pp, i64 64
  %i.py = load <4 x float>, ptr %i.lx, align 16
  store <4 x float> %i.py, ptr %i.px, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  %i.pz = add nuw i64 %.045213, 1                 ; 2 uses
  %exitcond244.not = icmp eq i64 %i.pz, %.153194
  br i1 %exitcond244.not, label %.lr.ph222, label %bb.aj, !llvm.loop !1263

bb.ak:                                            ; preds = %_ZNK6embree12AABBNodeMB_tINS_10NodeRefPtrILi4EEELi4EE12SetTimeRangeclINS_4sse217GeneralBVHBuilder12BuildRecordTINS6_13PrimInfoRangeENS6_8BinSplitILm32EEEEEEENS_15BVHNodeRecordMBIS2_EERKT_PSG_S2_PSE_m.exit, %bb.e
  ret void

bb.al:                                            ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS3_12BuildRecordTINS2_13PrimInfoRangeENS2_8BinSplitILm32EEEEENS2_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES6_SB_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSH_6CreateENS_12AABBNodeMB_tISF_Li4EE6CreateENSL_12SetTimeRangeEZNS2_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSH_RNS_20BuildProgressMonitorEPSB_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS3_8SettingsERKNSW_IfEEEUlPKSB_RKNS_5rangeImEERKSI_E_NS3_24DefaultCanCreateLeafFuncISB_S6_EENS3_29DefaultCanCreateLeafSplitFuncISB_S6_EESS_E7recurseERS9_SI_bEUlS1B_E_EEvT_S1M_S1M_RKT0_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.117, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %4, ptr %i.e, align 8
  %i.f = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 6 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = getelementptr i8, ptr %i.f, i64 262272   ; 6 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 8
  %i.j = icmp ugt i64 %i.i, 4095
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #25
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.t, %bb.i ], [ %i.k, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #5
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 786624 ; 2 uses
  %i.n = load i64, ptr %i.m, align 64             ; 3 uses
  %i.o = sub i64 0, %i.n
  %i.p = and i64 %i.o, 63
  %i.q = or disjoint i64 %i.p, 64
  %i.r = add i64 %i.q, %i.n                       ; 3 uses
  %i.s = icmp ugt i64 %i.r, 524288
  br i1 %i.s, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #5 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.r, ptr %i.m, align 64
  %i.v = getelementptr i8, ptr %i.h, i64 %i.r     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS4_12BuildRecordTINS3_13PrimInfoRangeENS3_8BinSplitILm32EEEEENS3_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES7_SC_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSI_6CreateENS_12AABBNodeMB_tISG_Li4EE6CreateENSM_12SetTimeRangeEZNS3_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSI_RNS_20BuildProgressMonitorEPSC_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS4_8SettingsERKNSX_IfEEEUlPKSC_RKNS_5rangeImEERKSJ_E_NS4_24DefaultCanCreateLeafFuncISC_S7_EENS4_29DefaultCanCreateLeafSplitFuncISC_S7_EEST_E7recurseERSA_SJ_bEUlS1C_E_EEvT_S1N_S1N_RKT0_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false)
  %i.x = load atomic i64, ptr %i.h seq_cst, align 64
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.x ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 786688
  %i.aa = load ptr, ptr %i.z, align 64            ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 1, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i8 1, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.v, ptr %i.ad, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.aa, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %4, ptr %i.af, align 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i64 %i.n, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i64 %i.a, ptr %i.ah, align 16
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.aj = atomicrmw add ptr %i.ai, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i: ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !33
  %i.ak = cmpxchg ptr %i.y, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.al = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 262208 ; 2 uses
  %i.an = load atomic i64, ptr %i.am seq_cst, align 64
  %i.ao = load atomic i64, ptr %i.h seq_cst, align 64
  %i.ap = add i64 %i.ao, -1
  %.not.i7 = icmp ult i64 %i.an, %i.ap
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS4_12BuildRecordTINS3_13PrimInfoRangeENS3_8BinSplitILm32EEEEENS3_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES7_SC_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSI_6CreateENS_12AABBNodeMB_tISG_Li4EE6CreateENSM_12SetTimeRangeEZNS3_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSI_RNS_20BuildProgressMonitorEPSC_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS4_8SettingsERKNSX_IfEEEUlPKSC_RKNS_5rangeImEERKSJ_E_NS4_24DefaultCanCreateLeafFuncISC_S7_EENS4_29DefaultCanCreateLeafSplitFuncISC_S7_EEST_E7recurseERSA_SJ_bEUlS1C_E_EEvT_S1N_S1N_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKS1N_S1S_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.aq = load atomic i64, ptr %i.h seq_cst, align 64
  %i.ar = add i64 %i.aq, -1
  store atomic i64 %i.ar, ptr %i.am seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS4_12BuildRecordTINS3_13PrimInfoRangeENS3_8BinSplitILm32EEEEENS3_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES7_SC_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSI_6CreateENS_12AABBNodeMB_tISG_Li4EE6CreateENSM_12SetTimeRangeEZNS3_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSI_RNS_20BuildProgressMonitorEPSC_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS4_8SettingsERKNSX_IfEEEUlPKSC_RKNS_5rangeImEERKSJ_E_NS4_24DefaultCanCreateLeafFuncISC_S7_EENS4_29DefaultCanCreateLeafSplitFuncISC_S7_EEST_E7recurseERSA_SJ_bEUlS1C_E_EEvT_S1N_S1N_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKS1N_S1S_.exit

bb.l:                                             ; preds = %bb.a
  %i.as = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS4_12BuildRecordTINS3_13PrimInfoRangeENS3_8BinSplitILm32EEEEENS3_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES7_SC_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSI_6CreateENS_12AABBNodeMB_tISG_Li4EE6CreateENSM_12SetTimeRangeEZNS3_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSI_RNS_20BuildProgressMonitorEPSC_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS4_8SettingsERKNSX_IfEEEUlPKSC_RKNS_5rangeImEERKSJ_E_NS4_24DefaultCanCreateLeafFuncISC_S7_EENS4_29DefaultCanCreateLeafSplitFuncISC_S7_EEST_E7recurseERSA_SJ_bEUlS1C_E_EEvT_S1N_S1N_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKS1N_S1S_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS4_12BuildRecordTINS3_13PrimInfoRangeENS3_8BinSplitILm32EEEEENS3_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES7_SC_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSI_6CreateENS_12AABBNodeMB_tISG_Li4EE6CreateENSM_12SetTimeRangeEZNS3_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSI_RNS_20BuildProgressMonitorEPSC_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS4_8SettingsERKNSX_IfEEEUlPKSC_RKNS_5rangeImEERKSJ_E_NS4_24DefaultCanCreateLeafFuncISC_S7_EENS4_29DefaultCanCreateLeafSplitFuncISC_S7_EEST_E7recurseERSA_SJ_bEUlS1C_E_EEvT_S1N_S1N_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKS1N_S1S_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS4_12BuildRecordTINS3_13PrimInfoRangeENS3_8BinSplitILm32EEEEENS3_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES7_SC_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSI_6CreateENS_12AABBNodeMB_tISG_Li4EE6CreateENSM_12SetTimeRangeEZNS3_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSI_RNS_20BuildProgressMonitorEPSC_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS4_8SettingsERKNSX_IfEEEUlPKSC_RKNS_5rangeImEERKSJ_E_NS4_24DefaultCanCreateLeafFuncISC_S7_EENS4_29DefaultCanCreateLeafSplitFuncISC_S7_EEST_E7recurseERSA_SJ_bEUlS1C_E_EEvT_S1N_S1N_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvmRKS1N_S1S_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_4sse217GeneralBVHBuilder8BuilderTINS4_12BuildRecordTINS3_13PrimInfoRangeENS3_8BinSplitILm32EEEEENS3_24HeuristicArrayBinningSAHINS_7PrimRefELm32EEES7_SC_NS_15BVHNodeRecordMBINS_10NodeRefPtrILi4EEEEENS_13FastAllocator15CachedAllocatorENSI_6CreateENS_12AABBNodeMB_tISG_Li4EE6CreateENSM_12SetTimeRangeEZNS3_23BVHNBuilderMblurVirtualILi4EE12BVHNBuilderV5buildEPSI_RNS_20BuildProgressMonitorEPSC_RKNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEENS4_8SettingsERKNSX_IfEEEUlPKSC_RKNS_5rangeImEERKSJ_E_NS4_24DefaultCanCreateLeafFuncISC_S7_EENS4_29DefaultCanCreateLeafSplitFuncISC_S7_EEST_E7recurseERSA_SJ_bEUlS1C_E_EEvT_S1N_S1N_RKT0_PNS0_16TaskGroupContextEEUlvE_EEvRKS1N_S1S_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.45", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref", align 8       ; 7 uses
  %10 = alloca %"class.embree::Ref", align 8      ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 12 uses
  %i.c = load ptr, ptr %0, align 8
end_hunk_10
