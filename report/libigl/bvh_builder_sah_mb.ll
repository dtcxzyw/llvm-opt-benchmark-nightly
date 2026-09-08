Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_sah_mb?download=true
inline.NumInlined: 7911
inline.NumDeleted: 596
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 185
begin_hunk_0_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseERKNS1_11BuildRecordES9_b:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tz, ptr noundef nonnull align 16 dereferenceable(16) %i.tu, i64 16, i1 false)
  store <4 x float> %i.ack, ptr %i.si, align 16
  store <4 x float> %i.acl, ptr %i.tv, align 16
  store <4 x float> %i.acm, ptr %i.sj, align 16
  store <4 x float> %i.acn, ptr %i.tw, align 16
  store <4 x float> %i.aco, ptr %i.sk, align 16
  store <4 x float> %i.acp, ptr %i.tx, align 16
  store i64 %i.aci, ptr %i.ty, align 16
  store i64 %i.ach, ptr %.sroa.17792.96..sroa_idx, align 8
  %i.acq = load <2 x float>, ptr %.sroa.20794.112..sroa_idx, align 16
  store <2 x float> %i.acq, ptr %i.ua, align 16
  %i.acr = load <2 x float>, ptr %.sroa.22796.112..sroa_idx, align 8 ; 3 uses
  %i.acs = fcmp olt <2 x float> %i.acr, %.sroa.01.0.copyload.i235
  %i.act = shufflevector <2 x float> %.sroa.01.0.copyload.i235, <2 x float> %i.acr, <2 x i32> <i32 0, i32 3>
  %i.acu = shufflevector <2 x float> %i.acr, <2 x float> %.sroa.01.0.copyload.i235, <2 x i32> <i32 0, i32 3>
  %i.acv = select <2 x i1> %i.acs, <2 x float> %i.act, <2 x float> %i.acu
  store <2 x float> %i.acv, ptr %i.ub, align 8
  store ptr %i.acj, ptr %i.uc, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15, !noalias !233
  store ptr %i.aas, ptr %25, align 8, !noalias !233
  store ptr %20, ptr %i.ud, align 8, !noalias !233
  store ptr %i.so, ptr %i.ue, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15, !noalias !233
  store <4 x float> splat (float +inf), ptr %27, align 16
  store <4 x float> splat (float -inf), ptr %i.uf, align 16
  store <4 x float> splat (float +inf), ptr %i.ug, align 16
  store <4 x float> splat (float -inf), ptr %i.uh, align 16
  store <4 x float> splat (float +inf), ptr %i.ui, align 16
  store <4 x float> splat (float -inf), ptr %i.uj, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.uk, i8 0, i64 36, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.ul, align 4
  store float 0.000000e+00, ptr %i.um, align 4
  %i.acw = icmp ult i64 %.pre-phi, 3072
  br i1 %i.acw, label %bb.ca, label %bb.cb, !prof !56

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !236
  store i64 %i.acg, ptr %13, align 8, !noalias !236
  store i64 %i.acf, ptr %i.uo, align 8, !noalias !236
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc363 unwind label %bb.cg

.noexc363:                                        ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !236
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.cb:                                            ; preds = %bb.bz
  %i.acx = add i64 %.pre-phi, 127
  %i.acy = lshr i64 %i.acx, 7                     ; 2 uses
  %i.acz = icmp eq i64 %i.acy, 1
  br i1 %i.acz, label %bb.cc, label %bb.cd, !prof !56

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !237
  store i64 %i.acg, ptr %12, align 8, !noalias !237
  store i64 %i.acf, ptr %i.un, align 8, !noalias !237
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc366 unwind label %bb.cg

.noexc366:                                        ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !237
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.cd:                                            ; preds = %bb.cb
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, i64 noundef %i.acy, i64 noundef %i.acg, i64 noundef %i.acf, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %27, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit unwind label %bb.cg

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit: ; preds = %bb.cd, %.noexc366, %.noexc363
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !233
  %i.ada = load i64, ptr %i.aav, align 16, !noalias !233 ; 5 uses
  %i.adb = load i64, ptr %i.uq, align 8, !noalias !233
  %i.adc = load i64, ptr %i.up, align 16, !noalias !233
  %i.add = sub i64 %i.adb, %i.adc                 ; 2 uses
  %i.ade = add i64 %i.add, %i.ada                 ; 2 uses
  store i64 %i.ada, ptr %i.up, align 16, !noalias !233
  store i64 %i.ade, ptr %i.uq, align 8, !noalias !233
  %i.adf = load i64, ptr %i.aaw, align 8, !noalias !233 ; 2 uses
  %i.adg = sub i64 %i.adf, %i.ada
  %.not28.i237 = icmp eq i64 %i.add, %i.adg
  br i1 %.not28.i237, label %.noexc113, label %bb.ce

bb.ce:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.adh = getelementptr inbounds nuw i8, ptr %i.aas, i64 32
  %i.adi = load ptr, ptr %i.adh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15, !noalias !233
  store ptr %20, ptr %28, align 8, !noalias !233
  %i.adj = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.adi, i64 noundef %i.ada, i64 noundef %i.adf, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.cf unwind label %bb.ch     ; 2 uses

bb.cf:                                            ; preds = %bb.ce
  store i64 %i.adj, ptr %i.uq, align 8, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !233
  %.pre1076 = load i64, ptr %i.up, align 16
  br label %.noexc113

bb.cg:                                            ; preds = %bb.cd, %bb.cc, %bb.ca
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !233
  br label %bb.ci

bb.ch:                                            ; preds = %bb.ce
  %i.adl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !233
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn.i236 = phi { ptr, i32 } [ %i.adk, %bb.cg ], [ %i.adl, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !233
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.by, %bb.bx
  %.pn.pn.i233 = phi { ptr, i32 } [ %.pn.i236, %bb.ci ], [ %i.acd, %bb.bx ], [ %i.ace, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !233
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #15
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.bw
  %.pn.pn.pn.i232 = phi { ptr, i32 } [ %.pn.pn.i233, %bb.cj ], [ %i.acc, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !233
  br label %.body240

.noexc113:                                        ; preds = %bb.cf, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.adm = phi i64 [ %i.adj, %bb.cf ], [ %i.ade, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ]
  %i.adn = phi i64 [ %.pre1076, %bb.cf ], [ %i.ada, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ]
  %.sroa.0.0.copyload.i238 = load <2 x float>, ptr %20, align 8, !noalias !233 ; 3 uses
  %i.ado = load <4 x float>, ptr %26, align 16
  %i.adp = load <4 x float>, ptr %i.ur, align 16
  %i.adq = load <4 x float>, ptr %i.us, align 16
  %i.adr = load <4 x float>, ptr %i.ut, align 16
  %i.ads = load <4 x float>, ptr %i.uu, align 16
  %i.adt = load <4 x float>, ptr %i.uv, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vb, ptr noundef nonnull align 16 dereferenceable(16) %i.uw, i64 16, i1 false)
  store <4 x float> %i.ado, ptr %i.sl, align 16
  store <4 x float> %i.adp, ptr %i.ux, align 16
  store <4 x float> %i.adq, ptr %i.sm, align 16
  store <4 x float> %i.adr, ptr %i.uy, align 16
  store <4 x float> %i.ads, ptr %i.sn, align 16
  store <4 x float> %i.adt, ptr %i.uz, align 16
  store i64 %i.adn, ptr %i.va, align 16
  store i64 %i.adm, ptr %.sroa.17769.96..sroa_idx, align 8
  %i.adu = load <2 x float>, ptr %.sroa.20771.112..sroa_idx, align 16
  store <2 x float> %i.adu, ptr %i.vc, align 16
  %i.adv = load <2 x float>, ptr %.sroa.22773.112..sroa_idx, align 8 ; 3 uses
  %i.adw = fcmp olt <2 x float> %i.adv, %.sroa.0.0.copyload.i238
  %i.adx = shufflevector <2 x float> %.sroa.0.0.copyload.i238, <2 x float> %i.adv, <2 x i32> <i32 0, i32 3>
  %i.ady = shufflevector <2 x float> %i.adv, <2 x float> %.sroa.0.0.copyload.i238, <2 x i32> <i32 0, i32 3>
  %i.adz = select <2 x i1> %i.adw, <2 x float> %i.adx, <2 x float> %i.ady
  store <2 x float> %i.adz, ptr %i.vd, align 8
  store ptr %i.aas, ptr %i.ve, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !233
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit

bb.cl:                                            ; preds = %bb.bk
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc114 unwind label %bb.db

.noexc114:                                        ; preds = %bb.cl
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit unwind label %bb.db

bb.cm:                                            ; preds = %bb.bk
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc116 unwind label %bb.db

.noexc116:                                        ; preds = %bb.cm
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit unwind label %bb.db

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit: ; preds = %bb.bk, %.noexc, %.noexc114, %.noexc116, %.noexc113
  %i.aea = phi i1 [ true, %.noexc113 ], [ %.065980, %.noexc116 ], [ %.065980, %.noexc114 ], [ %.065980, %.noexc ], [ %.065980, %bb.bk ] ; 2 uses
  store ptr null, ptr %73, align 8
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %.188 ; 2 uses
  %i.aec = load ptr, ptr %i.aeb, align 8          ; 8 uses
  %i.aed = load ptr, ptr %i.uc, align 16          ; 3 uses
  %i.aee = load ptr, ptr %i.aec, align 8
  %i.aef = icmp eq ptr %i.aed, %i.aee
  br i1 %i.aef, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8
  %i.aei = add i64 %i.aeh, 1
  store i64 %i.aei, ptr %i.aeg, align 8
  br label %bb.cp

bb.co:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit
  %i.aej = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aek = add nsw i64 %i.aej, 1
  store i64 %i.aek, ptr %i.pp, align 8
  %i.ael = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aej ; 3 uses
  store ptr %i.aed, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  store i64 1, ptr %i.aem, align 16
  store ptr %i.ael, ptr %i.aeb, align 8
  %.pre1077 = load ptr, ptr %i.aec, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.aen = phi ptr [ %.pre1077, %bb.co ], [ %i.aed, %bb.cn ]
  %i.aeo = load ptr, ptr %i.ve, align 16          ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.aen
  br i1 %i.aep, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.aeq = load i64, ptr %i.pn, align 16
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aeq
  store ptr %i.aec, ptr %i.aer, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aet = load i64, ptr %i.aes, align 8          ; 2 uses
  %i.aeu = add i64 %i.aet, 1
  store i64 %i.aeu, ptr %i.aes, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.aev = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aew = add nsw i64 %i.aev, 1
  store i64 %i.aew, ptr %i.pp, align 8
  %i.aex = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aev ; 3 uses
  store ptr %i.aeo, ptr %i.aex, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  store i64 1, ptr %i.aey, align 16
  %i.aez = load i64, ptr %i.pn, align 16
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aez
  store ptr %i.aex, ptr %i.afa, align 8
  %.phi.trans.insert1078 = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %.pre1079 = load i64, ptr %.phi.trans.insert1078, align 8
  %i.afb = add i64 %.pre1079, -1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.afc = phi i64 [ %i.afb, %bb.cr ], [ %i.aet, %bb.cq ] ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i64 %i.afc, ptr %i.afd, align 8
  %i.afe = icmp eq i64 %i.afc, 0
  br i1 %i.afe, label %bb.ct, label %bb.cz

bb.ct:                                            ; preds = %bb.cs
  %i.aff = load ptr, ptr %i.aec, align 8          ; 6 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %bb.cz, label %.preheader952

.preheader952:                                    ; preds = %bb.ct
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afi = load ptr, ptr %i.afh, align 8          ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 24
  %i.afk = load i64, ptr %i.afj, align 8          ; 3 uses
  %.not.i410 = icmp eq ptr %i.afi, null
  br i1 %.not.i410, label %.noexc412, label %bb.cu

bb.cu:                                            ; preds = %.preheader952
  %i.afl = mul i64 %i.afk, 80                     ; 2 uses
  %i.afm = icmp ugt i64 %i.afl, 29360127
  br i1 %i.afm, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afo = load i8, ptr %i.afn, align 8, !range !49, !noundef !50
  %i.afp = trunc nuw i8 %i.afo to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.afi, i64 noundef %i.afl, i1 noundef zeroext %i.afp)
          to label %.noexc412 unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.afi)
          to label %.noexc412 unwind label %bb.cy

.noexc412:                                        ; preds = %bb.cw, %bb.cv, %.preheader952
  %.not9.i411 = icmp eq i64 %i.afk, 0
  br i1 %.not9.i411, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i166, label %bb.cx

bb.cx:                                            ; preds = %.noexc412
  %i.afq = load ptr, ptr %i.aff, align 8          ; 2 uses
  %i.afr = mul i64 %i.afk, -80
  %i.afs = load ptr, ptr %i.afq, align 8
  %i.aft = load ptr, ptr %i.afs, align 8
  invoke void %i.aft(ptr noundef nonnull align 8 dereferenceable(8) %i.afq, i64 noundef %i.afr, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i166 unwind label %bb.cy, !inline_history !1

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.afu = landingpad { ptr, i32 }
          catch ptr null
  %i.afv = extractvalue { ptr, i32 } %i.afu, 0
  call void @__clang_call_terminate(ptr %i.afv) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i166: ; preds = %bb.cx, %.noexc412
  call void @_ZdlPv(ptr noundef nonnull %i.aff) #28
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cs, %bb.ct, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i166
  %i.afw = load i64, ptr %70, align 16
  store i64 %i.afw, ptr %i.xd, align 16
  %i.afx = load <4 x float>, ptr %i.si, align 16
  store <4 x float> %i.afx, ptr %i.xg, align 16
  %i.afy = load <4 x float>, ptr %i.tv, align 16
  store <4 x float> %i.afy, ptr %i.xp, align 16
  %i.afz = load <4 x float>, ptr %i.sj, align 16
  store <4 x float> %i.afz, ptr %i.xt, align 16
  %i.aga = load <4 x float>, ptr %i.tw, align 16
  store <4 x float> %i.aga, ptr %i.xu, align 16
  %i.agb = getelementptr inbounds nuw i8, ptr %i.xd, i64 80
  %i.agc = load <4 x float>, ptr %i.sk, align 16
  store <4 x float> %i.agc, ptr %i.agb, align 16
  %i.agd = getelementptr inbounds nuw i8, ptr %i.xd, i64 96
  %i.age = load <4 x float>, ptr %i.tx, align 16
  store <4 x float> %i.age, ptr %i.agd, align 16
  %i.agf = getelementptr inbounds nuw i8, ptr %i.xd, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agf, ptr noundef nonnull align 16 dereferenceable(32) %i.ty, i64 32, i1 false)
  %i.agg = getelementptr inbounds nuw i8, ptr %i.xd, i64 144
  %i.agh = load <4 x float>, ptr %i.ua, align 16
  store <4 x float> %i.agh, ptr %i.agg, align 16
  %i.agi = load ptr, ptr %i.uc, align 16
  %i.agj = getelementptr inbounds nuw i8, ptr %i.xd, i64 160
  store ptr %i.agi, ptr %i.agj, align 16
  %i.agk = load i64, ptr %i.pn, align 16
  %i.agl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %i.agk ; 10 uses
  %i.agm = load i64, ptr %71, align 16
  store i64 %i.agm, ptr %i.agl, align 16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %i.ago = load <4 x float>, ptr %i.sl, align 16
  store <4 x float> %i.ago, ptr %i.agn, align 16
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 32
  %i.agq = load <4 x float>, ptr %i.ux, align 16
  store <4 x float> %i.agq, ptr %i.agp, align 16
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agl, i64 48
  %i.ags = load <4 x float>, ptr %i.sm, align 16
  store <4 x float> %i.ags, ptr %i.agr, align 16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agl, i64 64
  %i.agu = load <4 x float>, ptr %i.uy, align 16
  store <4 x float> %i.agu, ptr %i.agt, align 16
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agl, i64 80
  %i.agw = load <4 x float>, ptr %i.sn, align 16
  store <4 x float> %i.agw, ptr %i.agv, align 16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agl, i64 96
  %i.agy = load <4 x float>, ptr %i.uz, align 16
  store <4 x float> %i.agy, ptr %i.agx, align 16
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agl, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agz, ptr noundef nonnull align 16 dereferenceable(32) %i.va, i64 32, i1 false)
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agl, i64 144
  %i.ahb = load <4 x float>, ptr %i.vc, align 16
  store <4 x float> %i.ahb, ptr %i.aha, align 16
  %i.ahc = load ptr, ptr %i.ve, align 16
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agl, i64 160
  store ptr %i.ahc, ptr %i.ahd, align 16
  %i.ahe = load i64, ptr %i.pn, align 16
  %i.ahf = add i64 %i.ahe, 1                      ; 4 uses
  store i64 %i.ahf, ptr %i.pn, align 16
  %.pre1080 = load i64, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  %i.ahg = icmp ult i64 %i.ahf, %.pre1080
  br i1 %i.ahg, label %.preheader953, label %.thread

bb.da:                                            ; preds = %bb.bj, %bb.bh
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.db:                                            ; preds = %bb.bl, %.noexc224, %.noexc116, %bb.cm, %.noexc114, %bb.cl
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %.body240

.body240:                                         ; preds = %bb.db, %bb.ck
  %.pn96 = phi { ptr, i32 } [ %.pn.pn.pn.i232, %bb.ck ], [ %i.ahi, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  br label %bb.dc

bb.dc:                                            ; preds = %.body240, %bb.da
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %.body240 ], [ %i.ahh, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  br label %.body

.thread:                                          ; preds = %bb.cz, %._crit_edge..thread.loopexit_crit_edge, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.ahj = phi i64 [ %i.sf, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.pre1081.pre, %._crit_edge..thread.loopexit_crit_edge ], [ %i.ahf, %bb.cz ] ; 5 uses
  %.065.lcssa = phi i1 [ %i.pm, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.065980, %._crit_edge..thread.loopexit_crit_edge ], [ %i.aea, %bb.cz ] ; 3 uses
  %.not1022 = icmp eq i64 %i.ahj, 0
  br i1 %.not1022, label %._crit_edge987, label %.lr.ph986

.lr.ph986:                                        ; preds = %.thread
  %.sroa.013.0.copyload = load float, ptr %i.ci, align 8 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %i.cj, align 4 ; 2 uses
  %min.iters.check1288 = icmp ult i64 %i.ahj, 8
  br i1 %min.iters.check1288, label %scalar.ph1287.preheader, label %vector.ph1289

vector.ph1289:                                    ; preds = %.lr.ph986
  %n.vec1290 = and i64 %i.ahj, -8                 ; 3 uses
  %i.ahk = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.065.lcssa, i64 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.013.0.copyload, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1291 = insertelement <4 x float> poison, float %.sroa.4.0.copyload, i64 0
  %broadcast.splat1292 = shufflevector <4 x float> %broadcast.splatinsert1291, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1293

vector.body1293:                                  ; preds = %vector.body1293, %vector.ph1289
  %index1294 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1296, %vector.body1293 ] ; 9 uses
  %vec.phi = phi <4 x i1> [ %i.ahk, %vector.ph1289 ], [ %i.ajv, %vector.body1293 ]
  %vec.phi1295 = phi <4 x i1> [ zeroinitializer, %vector.ph1289 ], [ %i.ajw, %vector.body1293 ]
  %i.ahl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1294 ; 2 uses
  %i.ahm = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1294 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1294 ; 2 uses
  %i.aho = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1294 ; 2 uses
  %i.ahp = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1294 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1294 ; 2 uses
  %i.ahr = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1294 ; 2 uses
  %i.ahs = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1294 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahl, i64 152
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahm, i64 328
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 504
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aho, i64 680
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahp, i64 856
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1032
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1208
end_hunk_0
begin_hunk_1_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERKNS1_11BuildRecordES9_:bb.a
  %i.aja = icmp ult i64 %.pre-phi, 3072
  br i1 %i.aja, label %bb.bu, label %bb.bv, !prof !56

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !442
  store i64 %i.aik, ptr %7, align 8, !noalias !442
  store i64 %i.aij, ptr %i.acb, align 8, !noalias !442
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %17, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc292 unwind label %bb.ca

.noexc292:                                        ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !442
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.bv:                                            ; preds = %bb.bt
  %i.ajb = add i64 %.pre-phi, 127
  %i.ajc = lshr i64 %i.ajb, 7                     ; 2 uses
  %i.ajd = icmp eq i64 %i.ajc, 1
  br i1 %i.ajd, label %bb.bw, label %bb.bx, !prof !56

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !443
  store i64 %i.aik, ptr %6, align 8, !noalias !443
  store i64 %i.aij, ptr %i.aca, align 8, !noalias !443
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %17, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc294 unwind label %bb.ca

.noexc294:                                        ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !443
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.bx:                                            ; preds = %bb.bv
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %17, i64 noundef %i.ajc, i64 noundef %i.aik, i64 noundef %i.aij, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %18, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit unwind label %bb.ca

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit: ; preds = %bb.bx, %.noexc294, %.noexc292
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !439
  %i.aje = load i64, ptr %i.agz, align 16, !noalias !439 ; 5 uses
  %i.ajf = load i64, ptr %i.acd, align 8, !noalias !439
  %i.ajg = load i64, ptr %i.acc, align 16, !noalias !439
  %i.ajh = sub i64 %i.ajf, %i.ajg                 ; 2 uses
  %i.aji = add i64 %i.ajh, %i.aje                 ; 2 uses
  store i64 %i.aje, ptr %i.acc, align 16, !noalias !439
  store i64 %i.aji, ptr %i.acd, align 8, !noalias !439
  %i.ajj = load i64, ptr %i.aha, align 8, !noalias !439 ; 2 uses
  %i.ajk = sub i64 %i.ajj, %i.aje
  %.not28.i = icmp eq i64 %i.ajh, %i.ajk
  br i1 %.not28.i, label %.noexc105, label %bb.by

bb.by:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.agw, i64 32
  %i.ajm = load ptr, ptr %i.ajl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15, !noalias !439
  store ptr %11, ptr %19, align 8, !noalias !439
  %i.ajn = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.ajm, i64 noundef %i.aje, i64 noundef %i.ajj, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bz unwind label %bb.cb     ; 2 uses

bb.bz:                                            ; preds = %bb.by
  store i64 %i.ajn, ptr %i.acd, align 8, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !439
  %.pre1066 = load i64, ptr %i.acc, align 16
  br label %.noexc105

bb.ca:                                            ; preds = %bb.bx, %bb.bw, %bb.bu
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !439
  br label %bb.cc

bb.cb:                                            ; preds = %bb.by
  %i.ajp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !439
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn.i = phi { ptr, i32 } [ %i.ajo, %bb.ca ], [ %i.ajp, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !439
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bs, %bb.br
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.cc ], [ %i.aih, %bb.br ], [ %i.aii, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !439
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #15
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.bq
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.cd ], [ %i.aig, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !439
  br label %.body218

.noexc105:                                        ; preds = %bb.bz, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.ajq = phi i64 [ %i.ajn, %bb.bz ], [ %i.aji, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ]
  %i.ajr = phi i64 [ %.pre1066, %bb.bz ], [ %i.aje, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ]
  %.sroa.0.0.copyload.i216 = load <2 x float>, ptr %11, align 8, !noalias !439 ; 3 uses
  %i.ajs = load <4 x float>, ptr %17, align 16
  %i.ajt = load <4 x float>, ptr %i.ace, align 16
  %i.aju = load <4 x float>, ptr %i.acf, align 16
  %i.ajv = load <4 x float>, ptr %i.acg, align 16
  %i.ajw = load <4 x float>, ptr %i.ach, align 16
  %i.ajx = load <4 x float>, ptr %i.aci, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aco, ptr noundef nonnull align 16 dereferenceable(16) %i.acj, i64 16, i1 false)
  store <4 x float> %i.ajs, ptr %i.aab, align 16
  store <4 x float> %i.ajt, ptr %i.ack, align 16
  store <4 x float> %i.aju, ptr %i.aac, align 16
  store <4 x float> %i.ajv, ptr %i.acl, align 16
  store <4 x float> %i.ajw, ptr %i.aad, align 16
  store <4 x float> %i.ajx, ptr %i.acm, align 16
  store i64 %i.ajr, ptr %i.acn, align 16
  store i64 %i.ajq, ptr %.sroa.17.96..sroa_idx, align 8
  %i.ajy = load <2 x float>, ptr %.sroa.20728.112..sroa_idx, align 16
  store <2 x float> %i.ajy, ptr %i.acp, align 16
  %i.ajz = load <2 x float>, ptr %.sroa.22729.112..sroa_idx, align 8 ; 3 uses
  %i.aka = fcmp olt <2 x float> %i.ajz, %.sroa.0.0.copyload.i216
  %i.akb = shufflevector <2 x float> %.sroa.0.0.copyload.i216, <2 x float> %i.ajz, <2 x i32> <i32 0, i32 3>
  %i.akc = shufflevector <2 x float> %i.ajz, <2 x float> %.sroa.0.0.copyload.i216, <2 x i32> <i32 0, i32 3>
  %i.akd = select <2 x i1> %i.aka, <2 x float> %i.akb, <2 x float> %i.akc
  store <2 x float> %i.akd, ptr %i.acq, align 8
  store ptr %i.agw, ptr %i.acr, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !439
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !439
  %.pre1067 = load ptr, ptr %45, align 8
  %i.ake = icmp ne ptr %.pre1067, null
  %i.akf = or i1 %.082, %i.ake
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit

bb.cf:                                            ; preds = %bb.be
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.aev)
          to label %.noexc106 unwind label %bb.ey

.noexc106:                                        ; preds = %bb.cf
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.aev, ptr noundef nonnull align 16 dereferenceable(152) %i.zt, ptr noundef nonnull align 16 dereferenceable(152) %i.aab)
          to label %.noexc107 unwind label %bb.ey

bb.cg:                                            ; preds = %bb.be
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.aev)
          to label %.noexc108 unwind label %bb.ey

.noexc108:                                        ; preds = %bb.cg
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.aev, ptr noundef nonnull align 16 dereferenceable(152) %i.zt, ptr noundef nonnull align 16 dereferenceable(152) %i.aab)
          to label %.noexc107 unwind label %bb.ey

.noexc107:                                        ; preds = %.noexc108, %.noexc106, %.noexc, %bb.be
  store ptr null, ptr %45, align 8
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit: ; preds = %.noexc107, %.noexc105
  %i.akg = phi i1 [ %.082, %.noexc107 ], [ %i.akf, %.noexc105 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %46, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.zt)
          to label %bb.ch unwind label %bb.ez

bb.ch:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.zw, ptr noundef nonnull align 16 dereferenceable(64) %46, i64 16, i1 false)
  %i.akh = load i64, ptr %i.adm, align 16
  store i64 %i.akh, ptr %i.aaa, align 16
  %i.aki = load <4 x float>, ptr %i.ado, align 16
  store <4 x float> %i.aki, ptr %i.adn, align 16
  %i.akj = load <4 x float>, ptr %i.adq, align 16
  store <4 x float> %i.akj, ptr %i.adp, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_10TriangleMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %47, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.aab)
          to label %bb.ci unwind label %bb.fa

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aae, ptr noundef nonnull align 16 dereferenceable(64) %47, i64 16, i1 false)
  %i.akk = load i64, ptr %i.adr, align 16
  store i64 %i.akk, ptr %i.aai, align 16
  %i.akl = load <4 x float>, ptr %i.adt, align 16
  store <4 x float> %i.akl, ptr %i.ads, align 16
  %i.akm = load <4 x float>, ptr %i.adv, align 16
  store <4 x float> %i.akm, ptr %i.adu, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  store ptr null, ptr %45, align 8
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %.080.lcssa ; 2 uses
  %i.ako = load ptr, ptr %i.akn, align 8          ; 8 uses
  %i.akp = load ptr, ptr %i.abp, align 16         ; 3 uses
  %i.akq = load ptr, ptr %i.ako, align 8
  %i.akr = icmp eq ptr %i.akp, %i.akq
  br i1 %i.akr, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aks = getelementptr inbounds nuw i8, ptr %i.ako, i64 8 ; 2 uses
  %i.akt = load i64, ptr %i.aks, align 8
  %i.aku = add i64 %i.akt, 1
  store i64 %i.aku, ptr %i.aks, align 8
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.akv = load i64, ptr %i.yy, align 8           ; 2 uses
  %i.akw = add nsw i64 %i.akv, 1
  store i64 %i.akw, ptr %i.yy, align 8
  %i.akx = getelementptr inbounds nuw [16 x i8], ptr %i.yx, i64 %i.akv ; 3 uses
  store ptr %i.akp, ptr %i.akx, align 8
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  store i64 1, ptr %i.aky, align 16
  store ptr %i.akx, ptr %i.akn, align 8
  %.pre1068 = load ptr, ptr %i.ako, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.akz = phi ptr [ %.pre1068, %bb.ck ], [ %i.akp, %bb.cj ]
  %i.ala = load ptr, ptr %i.acr, align 16         ; 2 uses
  %i.alb = icmp eq ptr %i.ala, %i.akz
  br i1 %i.alb, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.alc = load i64, ptr %i.yw, align 16
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %i.alc
  store ptr %i.ako, ptr %i.ald, align 8
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ako, i64 8 ; 2 uses
  %i.alf = load i64, ptr %i.ale, align 8          ; 2 uses
  %i.alg = add i64 %i.alf, 1
  store i64 %i.alg, ptr %i.ale, align 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  %i.alh = load i64, ptr %i.yy, align 8           ; 2 uses
  %i.ali = add nsw i64 %i.alh, 1
  store i64 %i.ali, ptr %i.yy, align 8
  %i.alj = getelementptr inbounds nuw [16 x i8], ptr %i.yx, i64 %i.alh ; 3 uses
  store ptr %i.ala, ptr %i.alj, align 8
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alj, i64 8
  store i64 1, ptr %i.alk, align 16
  %i.all = load i64, ptr %i.yw, align 16
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %i.all
  store ptr %i.alj, ptr %i.alm, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ako, i64 8
  %.pre1069 = load i64, ptr %.phi.trans.insert, align 8
  %i.aln = add i64 %.pre1069, -1
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.alo = phi i64 [ %i.aln, %bb.cn ], [ %i.alf, %bb.cm ] ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ako, i64 8
  store i64 %i.alo, ptr %i.alp, align 8
  %i.alq = icmp eq i64 %i.alo, 0
  br i1 %i.alq, label %bb.cp, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

bb.cp:                                            ; preds = %bb.co
  %i.alr = load ptr, ptr %i.ako, align 8          ; 6 uses
  %i.als = icmp eq ptr %i.alr, null
  br i1 %i.als, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit, label %.preheader864

.preheader864:                                    ; preds = %bb.cp
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alr, i64 32
  %i.alu = load ptr, ptr %i.alt, align 8          ; 3 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alr, i64 24
  %i.alw = load i64, ptr %i.alv, align 8          ; 3 uses
  %.not.i318 = icmp eq ptr %i.alu, null
  br i1 %.not.i318, label %.noexc320, label %bb.cq

bb.cq:                                            ; preds = %.preheader864
  %i.alx = mul i64 %i.alw, 80                     ; 2 uses
  %i.aly = icmp ugt i64 %i.alx, 29360127
  br i1 %i.aly, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alr, i64 8
  %i.ama = load i8, ptr %i.alz, align 8, !range !49, !noundef !50
  %i.amb = trunc nuw i8 %i.ama to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.alu, i64 noundef %i.alx, i1 noundef zeroext %i.amb)
          to label %.noexc320 unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cq
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.alu)
          to label %.noexc320 unwind label %bb.cu

.noexc320:                                        ; preds = %bb.cs, %bb.cr, %.preheader864
  %.not9.i319 = icmp eq i64 %i.alw, 0
  br i1 %.not9.i319, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i150, label %bb.ct

bb.ct:                                            ; preds = %.noexc320
  %i.amc = load ptr, ptr %i.alr, align 8          ; 2 uses
  %i.amd = mul i64 %i.alw, -80
  %i.ame = load ptr, ptr %i.amc, align 8
  %i.amf = load ptr, ptr %i.ame, align 8
  invoke void %i.amf(ptr noundef nonnull align 8 dereferenceable(8) %i.amc, i64 noundef %i.amd, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i150 unwind label %bb.cu, !inline_history !1

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.amg = landingpad { ptr, i32 }
          catch ptr null
  %i.amh = extractvalue { ptr, i32 } %i.amg, 0
  call void @__clang_call_terminate(ptr %i.amh) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i150: ; preds = %bb.ct, %.noexc320
  call void @_ZdlPv(ptr noundef nonnull %i.alr) #28
  %.pre1070 = load ptr, ptr %45, align 8
  br label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.co, %bb.cp, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i150
  %i.ami = phi ptr [ null, %bb.co ], [ null, %bb.cp ], [ %.pre1070, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i150 ] ; 6 uses
  %i.amj = load i64, ptr %43, align 16
  store i64 %i.amj, ptr %i.aer, align 16
  %i.amk = load <4 x float>, ptr %i.zt, align 16
  store <4 x float> %i.amk, ptr %i.aev, align 16
  %i.aml = getelementptr inbounds nuw i8, ptr %i.aer, i64 32
  %i.amm = load <4 x float>, ptr %i.abi, align 16
  store <4 x float> %i.amm, ptr %i.aml, align 16
  %i.amn = getelementptr inbounds nuw i8, ptr %i.aer, i64 48
  %i.amo = load <4 x float>, ptr %i.zu, align 16
  store <4 x float> %i.amo, ptr %i.amn, align 16
  %i.amp = getelementptr inbounds nuw i8, ptr %i.aer, i64 64
  %i.amq = load <4 x float>, ptr %i.abj, align 16
  store <4 x float> %i.amq, ptr %i.amp, align 16
  %i.amr = getelementptr inbounds nuw i8, ptr %i.aer, i64 80
  %i.ams = load <4 x float>, ptr %i.zv, align 16
  store <4 x float> %i.ams, ptr %i.amr, align 16
  %i.amt = getelementptr inbounds nuw i8, ptr %i.aer, i64 96
  %i.amu = load <4 x float>, ptr %i.abk, align 16
  store <4 x float> %i.amu, ptr %i.amt, align 16
  %i.amv = getelementptr inbounds nuw i8, ptr %i.aer, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.amv, ptr noundef nonnull align 16 dereferenceable(32) %i.abl, i64 32, i1 false)
  %i.amw = getelementptr inbounds nuw i8, ptr %i.aer, i64 144
  %i.amx = load <4 x float>, ptr %i.abn, align 16
  store <4 x float> %i.amx, ptr %i.amw, align 16
  %i.amy = load ptr, ptr %i.abp, align 16
  %i.amz = getelementptr inbounds nuw i8, ptr %i.aer, i64 160
  store ptr %i.amy, ptr %i.amz, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aeu, ptr noundef nonnull align 16 dereferenceable(64) %i.zw, i64 16, i1 false)
  %i.ana = getelementptr inbounds nuw i8, ptr %i.aer, i64 192
  %i.anb = load i64, ptr %i.aaa, align 16
  store i64 %i.anb, ptr %i.ana, align 16
  %i.anc = getelementptr inbounds nuw i8, ptr %i.aer, i64 208
  %i.and = load <4 x float>, ptr %i.adn, align 16
  store <4 x float> %i.and, ptr %i.anc, align 16
  %i.ane = getelementptr inbounds nuw i8, ptr %i.aer, i64 224
  %i.anf = load <4 x float>, ptr %i.adp, align 16
  store <4 x float> %i.anf, ptr %i.ane, align 16
  %i.ang = load i64, ptr %i.yw, align 16
  %i.anh = getelementptr inbounds nuw [240 x i8], ptr %42, i64 %i.ang ; 14 uses
  %i.ani = load i64, ptr %44, align 16
  store i64 %i.ani, ptr %i.anh, align 16
  %i.anj = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.ank = load <4 x float>, ptr %i.aab, align 16
  store <4 x float> %i.ank, ptr %i.anj, align 16
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anh, i64 32
  %i.anm = load <4 x float>, ptr %i.ack, align 16
  store <4 x float> %i.anm, ptr %i.anl, align 16
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anh, i64 48
  %i.ano = load <4 x float>, ptr %i.aac, align 16
  store <4 x float> %i.ano, ptr %i.ann, align 16
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anh, i64 64
  %i.anq = load <4 x float>, ptr %i.acl, align 16
  store <4 x float> %i.anq, ptr %i.anp, align 16
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anh, i64 80
  %i.ans = load <4 x float>, ptr %i.aad, align 16
  store <4 x float> %i.ans, ptr %i.anr, align 16
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anh, i64 96
  %i.anu = load <4 x float>, ptr %i.acm, align 16
  store <4 x float> %i.anu, ptr %i.ant, align 16
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anh, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.anv, ptr noundef nonnull align 16 dereferenceable(32) %i.acn, i64 32, i1 false)
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anh, i64 144
  %i.anx = load <4 x float>, ptr %i.acp, align 16
  store <4 x float> %i.anx, ptr %i.anw, align 16
  %i.any = load ptr, ptr %i.acr, align 16
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anh, i64 160
  store ptr %i.any, ptr %i.anz, align 16
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anh, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.aoa, ptr noundef nonnull align 16 dereferenceable(64) %i.aae, i64 16, i1 false)
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anh, i64 192
  %i.aoc = load i64, ptr %i.aai, align 16
  store i64 %i.aoc, ptr %i.aob, align 16
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anh, i64 208
  %i.aoe = load <4 x float>, ptr %i.ads, align 16
  store <4 x float> %i.aoe, ptr %i.aod, align 16
  %i.aof = getelementptr inbounds nuw i8, ptr %i.anh, i64 224
  %i.aog = load <4 x float>, ptr %i.adu, align 16
  store <4 x float> %i.aog, ptr %i.aof, align 16
  %i.aoh = load i64, ptr %i.yw, align 16
  %i.aoi = add i64 %i.aoh, 1                      ; 2 uses
  store i64 %i.aoi, ptr %i.yw, align 16
  %.not.i339 = icmp eq ptr %i.ami, null
  br i1 %.not.i339, label %bb.da, label %.preheader.i.i340

.preheader.i.i340:                                ; preds = %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.ami, i64 32
  %i.aok = load ptr, ptr %i.aoj, align 8          ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.ami, i64 24
  %i.aom = load i64, ptr %i.aol, align 8          ; 3 uses
  %.not.i.i.i341 = icmp eq ptr %i.aok, null
  br i1 %.not.i.i.i341, label %.noexc.i.i342, label %bb.cv

bb.cv:                                            ; preds = %.preheader.i.i340
  %i.aon = mul i64 %i.aom, 80                     ; 2 uses
  %i.aoo = icmp ugt i64 %i.aon, 29360127
  br i1 %i.aoo, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.aop = getelementptr inbounds nuw i8, ptr %i.ami, i64 8
  %i.aoq = load i8, ptr %i.aop, align 8, !range !49, !noundef !50
  %i.aor = trunc nuw i8 %i.aoq to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.aok, i64 noundef %i.aon, i1 noundef zeroext %i.aor)
          to label %.noexc.i.i342 unwind label %bb.cz

bb.cx:                                            ; preds = %bb.cv
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.aok)
          to label %.noexc.i.i342 unwind label %bb.cz

.noexc.i.i342:                                    ; preds = %bb.cx, %bb.cw, %.preheader.i.i340
  %.not9.i.i.i343 = icmp eq i64 %i.aom, 0
  br i1 %.not9.i.i.i343, label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i344, label %bb.cy

bb.cy:                                            ; preds = %.noexc.i.i342
  %i.aos = load ptr, ptr %i.ami, align 8          ; 2 uses
  %i.aot = mul i64 %i.aom, -80
  %i.aou = load ptr, ptr %i.aos, align 8
  %i.aov = load ptr, ptr %i.aou, align 8
  invoke void %i.aov(ptr noundef nonnull align 8 dereferenceable(8) %i.aos, i64 noundef %i.aot, i1 noundef zeroext true)
          to label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i344 unwind label %bb.cz, !inline_history !1

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.aow = landingpad { ptr, i32 }
          catch ptr null
  %i.aox = extractvalue { ptr, i32 } %i.aow, 0
  call void @__clang_call_terminate(ptr %i.aox) #31
end_hunk_1
begin_hunk_2_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseERKNS1_11BuildRecordES9_b:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tz, ptr noundef nonnull align 16 dereferenceable(16) %i.tu, i64 16, i1 false)
  store <4 x float> %i.ack, ptr %i.si, align 16
  store <4 x float> %i.acl, ptr %i.tv, align 16
  store <4 x float> %i.acm, ptr %i.sj, align 16
  store <4 x float> %i.acn, ptr %i.tw, align 16
  store <4 x float> %i.aco, ptr %i.sk, align 16
  store <4 x float> %i.acp, ptr %i.tx, align 16
  store i64 %i.aci, ptr %i.ty, align 16
  store i64 %i.ach, ptr %.sroa.17649.96..sroa_idx, align 8
  %i.acq = load <2 x float>, ptr %.sroa.20651.112..sroa_idx, align 16
  store <2 x float> %i.acq, ptr %i.ua, align 16
  %i.acr = load <2 x float>, ptr %.sroa.22653.112..sroa_idx, align 8 ; 3 uses
  %i.acs = fcmp olt <2 x float> %i.acr, %.sroa.01.0.copyload.i21.i
  %i.act = shufflevector <2 x float> %.sroa.01.0.copyload.i21.i, <2 x float> %i.acr, <2 x i32> <i32 0, i32 3>
  %i.acu = shufflevector <2 x float> %i.acr, <2 x float> %.sroa.01.0.copyload.i21.i, <2 x i32> <i32 0, i32 3>
  %i.acv = select <2 x i1> %i.acs, <2 x float> %i.act, <2 x float> %i.acu
  store <2 x float> %i.acv, ptr %i.ub, align 8
  store ptr %i.acj, ptr %i.uc, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #15, !noalias !2128
  store ptr %i.aas, ptr %41, align 8, !noalias !2128
  store ptr %36, ptr %i.ud, align 8, !noalias !2128
  store ptr %i.so, ptr %i.ue, align 8, !noalias !2128
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15, !noalias !2128
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15, !noalias !2128
  store <4 x float> splat (float +inf), ptr %43, align 16, !noalias !2127
  store <4 x float> splat (float -inf), ptr %i.uf, align 16, !noalias !2127
  store <4 x float> splat (float +inf), ptr %i.ug, align 16, !noalias !2127
  store <4 x float> splat (float -inf), ptr %i.uh, align 16, !noalias !2127
  store <4 x float> splat (float +inf), ptr %i.ui, align 16, !noalias !2127
  store <4 x float> splat (float -inf), ptr %i.uj, align 16, !noalias !2127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.uk, i8 0, i64 36, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.ul, align 4, !noalias !2127
  store float 0.000000e+00, ptr %i.um, align 4, !noalias !2127
  %i.acw = icmp ult i64 %.pre-phi, 3072
  br i1 %i.acw, label %bb.bz, label %bb.ca, !prof !56

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15, !noalias !2132
  store i64 %i.acg, ptr %32, align 8, !noalias !2132
  store i64 %i.acf, ptr %i.uo, align 8, !noalias !2132
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %42, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(16) %32)
          to label %.noexc53.i unwind label %bb.cf

.noexc53.i:                                       ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15, !noalias !2132
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i

bb.ca:                                            ; preds = %bb.by
  %i.acx = add i64 %.pre-phi, 127
  %i.acy = lshr i64 %i.acx, 7                     ; 2 uses
  %i.acz = icmp eq i64 %i.acy, 1
  br i1 %i.acz, label %bb.cb, label %bb.cc, !prof !56

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15, !noalias !2133
  store i64 %i.acg, ptr %31, align 8, !noalias !2133
  store i64 %i.acf, ptr %i.un, align 8, !noalias !2133
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %42, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull align 8 dereferenceable(16) %31)
          to label %.noexc55.i unwind label %bb.cf

.noexc55.i:                                       ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #15, !noalias !2133
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i

bb.cc:                                            ; preds = %bb.ca
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %42, i64 noundef %i.acy, i64 noundef %i.acg, i64 noundef %i.acf, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %43, ptr noundef nonnull align 8 dereferenceable(24) %41, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i unwind label %bb.cf

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i: ; preds = %.noexc55.i, %bb.cc, %.noexc53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15, !noalias !2128
  %i.ada = load i64, ptr %i.aav, align 16, !noalias !2128 ; 5 uses
  %i.adb = load i64, ptr %i.uq, align 8, !noalias !2128
  %i.adc = load i64, ptr %i.up, align 16, !noalias !2128
  %i.add = sub i64 %i.adb, %i.adc                 ; 2 uses
  %i.ade = add i64 %i.add, %i.ada                 ; 2 uses
  store i64 %i.ada, ptr %i.up, align 16, !noalias !2128
  store i64 %i.ade, ptr %i.uq, align 8, !noalias !2128
  %i.adf = load i64, ptr %i.aaw, align 8, !noalias !2128 ; 2 uses
  %i.adg = sub i64 %i.adf, %i.ada
  %.not28.i.i = icmp eq i64 %i.add, %i.adg
  br i1 %.not28.i.i, label %_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_.exit.i, label %bb.cd

bb.cd:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i
  %i.adh = getelementptr inbounds nuw i8, ptr %i.aas, i64 32
  %i.adi = load ptr, ptr %i.adh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15, !noalias !2128
  store ptr %36, ptr %44, align 8, !noalias !2128
  %i.adj = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.adi, i64 noundef %i.ada, i64 noundef %i.adf, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.ce unwind label %bb.cg     ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  store i64 %i.adj, ptr %i.uq, align 8, !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15, !noalias !2128
  %.pre967 = load i64, ptr %i.up, align 16
  br label %_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_.exit.i

bb.cf:                                            ; preds = %bb.cc, %bb.cb, %bb.bz
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15, !noalias !2128
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cd
  %i.adl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15, !noalias !2128
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i.i = phi { ptr, i32 } [ %i.adk, %bb.cf ], [ %i.adl, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15, !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15, !noalias !2128
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bx, %bb.bw
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.ch ], [ %i.acd, %bb.bw ], [ %i.ace, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15, !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15, !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !2128
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #15
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bv
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.ci ], [ %i.acc, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15, !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15, !noalias !2128
  br label %.body266

_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_.exit.i: ; preds = %bb.ce, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i
  %i.adm = phi i64 [ %i.adj, %bb.ce ], [ %i.ade, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i ]
  %i.adn = phi i64 [ %.pre967, %bb.ce ], [ %i.ada, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i ]
  %.sroa.0.0.copyload.i22.i = load <2 x float>, ptr %36, align 8, !noalias !2128 ; 3 uses
  %i.ado = load <4 x float>, ptr %42, align 16
  %i.adp = load <4 x float>, ptr %i.ur, align 16
  %i.adq = load <4 x float>, ptr %i.us, align 16
  %i.adr = load <4 x float>, ptr %i.ut, align 16
  %i.ads = load <4 x float>, ptr %i.uu, align 16
  %i.adt = load <4 x float>, ptr %i.uv, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vb, ptr noundef nonnull align 16 dereferenceable(16) %i.uw, i64 16, i1 false)
  store <4 x float> %i.ado, ptr %i.sl, align 16
  store <4 x float> %i.adp, ptr %i.ux, align 16
  store <4 x float> %i.adq, ptr %i.sm, align 16
  store <4 x float> %i.adr, ptr %i.uy, align 16
  store <4 x float> %i.ads, ptr %i.sn, align 16
  store <4 x float> %i.adt, ptr %i.uz, align 16
  store i64 %i.adn, ptr %i.va, align 16
  store i64 %i.adm, ptr %.sroa.17629.96..sroa_idx, align 8
  %i.adu = load <2 x float>, ptr %.sroa.20630.112..sroa_idx, align 16
  store <2 x float> %i.adu, ptr %i.vc, align 16
  %i.adv = load <2 x float>, ptr %.sroa.22632.112..sroa_idx, align 8 ; 3 uses
  %i.adw = fcmp olt <2 x float> %i.adv, %.sroa.0.0.copyload.i22.i
  %i.adx = shufflevector <2 x float> %.sroa.0.0.copyload.i22.i, <2 x float> %i.adv, <2 x i32> <i32 0, i32 3>
  %i.ady = shufflevector <2 x float> %i.adv, <2 x float> %.sroa.0.0.copyload.i22.i, <2 x i32> <i32 0, i32 3>
  %i.adz = select <2 x i1> %i.adw, <2 x float> %i.adx, <2 x float> %i.ady
  store <2 x float> %i.adz, ptr %i.vd, align 8
  store ptr %i.aas, ptr %i.ve, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #15, !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #15, !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #15, !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15, !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15, !noalias !2128
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15, !noalias !2128
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit

bb.ck:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc268 unwind label %bb.da

.noexc268:                                        ; preds = %bb.ck
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit unwind label %bb.da

bb.cl:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc270 unwind label %bb.da

.noexc270:                                        ; preds = %bb.cl
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit unwind label %bb.da

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit: ; preds = %bb.bj, %.noexc264, %.noexc268, %.noexc270, %_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_.exit.i
  %i.aea = phi i1 [ true, %_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_.exit.i ], [ %.065871, %.noexc270 ], [ %.065871, %.noexc268 ], [ %.065871, %.noexc264 ], [ %.065871, %bb.bj ] ; 2 uses
  store ptr null, ptr %73, align 8
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %.188 ; 2 uses
  %i.aec = load ptr, ptr %i.aeb, align 8          ; 8 uses
  %i.aed = load ptr, ptr %i.uc, align 16          ; 3 uses
  %i.aee = load ptr, ptr %i.aec, align 8
  %i.aef = icmp eq ptr %i.aed, %i.aee
  br i1 %i.aef, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8
  %i.aei = add i64 %i.aeh, 1
  store i64 %i.aei, ptr %i.aeg, align 8
  br label %bb.co

bb.cn:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit
  %i.aej = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aek = add nsw i64 %i.aej, 1
  store i64 %i.aek, ptr %i.pp, align 8
  %i.ael = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aej ; 3 uses
  store ptr %i.aed, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  store i64 1, ptr %i.aem, align 16
  store ptr %i.ael, ptr %i.aeb, align 8
  %.pre968 = load ptr, ptr %i.aec, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.aen = phi ptr [ %.pre968, %bb.cn ], [ %i.aed, %bb.cm ]
  %i.aeo = load ptr, ptr %i.ve, align 16          ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.aen
  br i1 %i.aep, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.aeq = load i64, ptr %i.pn, align 16
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aeq
  store ptr %i.aec, ptr %i.aer, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aet = load i64, ptr %i.aes, align 8          ; 2 uses
  %i.aeu = add i64 %i.aet, 1
  store i64 %i.aeu, ptr %i.aes, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.aev = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aew = add nsw i64 %i.aev, 1
  store i64 %i.aew, ptr %i.pp, align 8
  %i.aex = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aev ; 3 uses
  store ptr %i.aeo, ptr %i.aex, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  store i64 1, ptr %i.aey, align 16
  %i.aez = load i64, ptr %i.pn, align 16
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aez
  store ptr %i.aex, ptr %i.afa, align 8
  %.phi.trans.insert969 = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %.pre970 = load i64, ptr %.phi.trans.insert969, align 8
  %i.afb = add i64 %.pre970, -1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.afc = phi i64 [ %i.afb, %bb.cq ], [ %i.aet, %bb.cp ] ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i64 %i.afc, ptr %i.afd, align 8
  %i.afe = icmp eq i64 %i.afc, 0
  br i1 %i.afe, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.aff = load ptr, ptr %i.aec, align 8          ; 6 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %bb.cy, label %.preheader843

.preheader843:                                    ; preds = %bb.cs
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afi = load ptr, ptr %i.afh, align 8          ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 24
  %i.afk = load i64, ptr %i.afj, align 8          ; 3 uses
  %.not.i254 = icmp eq ptr %i.afi, null
  br i1 %.not.i254, label %.noexc256, label %bb.ct

bb.ct:                                            ; preds = %.preheader843
  %i.afl = mul i64 %i.afk, 80                     ; 2 uses
  %i.afm = icmp ugt i64 %i.afl, 29360127
  br i1 %i.afm, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afo = load i8, ptr %i.afn, align 8, !range !49, !noundef !50
  %i.afp = trunc nuw i8 %i.afo to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.afi, i64 noundef %i.afl, i1 noundef zeroext %i.afp)
          to label %.noexc256 unwind label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.afi)
          to label %.noexc256 unwind label %bb.cx

.noexc256:                                        ; preds = %bb.cv, %bb.cu, %.preheader843
  %.not9.i255 = icmp eq i64 %i.afk, 0
  br i1 %.not9.i255, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i157, label %bb.cw

bb.cw:                                            ; preds = %.noexc256
  %i.afq = load ptr, ptr %i.aff, align 8          ; 2 uses
  %i.afr = mul i64 %i.afk, -80
  %i.afs = load ptr, ptr %i.afq, align 8
  %i.aft = load ptr, ptr %i.afs, align 8
  invoke void %i.aft(ptr noundef nonnull align 8 dereferenceable(8) %i.afq, i64 noundef %i.afr, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i157 unwind label %bb.cx, !inline_history !1

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.afu = landingpad { ptr, i32 }
          catch ptr null
  %i.afv = extractvalue { ptr, i32 } %i.afu, 0
  call void @__clang_call_terminate(ptr %i.afv) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i157: ; preds = %bb.cw, %.noexc256
  call void @_ZdlPv(ptr noundef nonnull %i.aff) #28
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cr, %bb.cs, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i157
  %i.afw = load i64, ptr %70, align 16
  store i64 %i.afw, ptr %i.xd, align 16
  %i.afx = load <4 x float>, ptr %i.si, align 16
  store <4 x float> %i.afx, ptr %i.xg, align 16
  %i.afy = load <4 x float>, ptr %i.tv, align 16
  store <4 x float> %i.afy, ptr %i.xp, align 16
  %i.afz = load <4 x float>, ptr %i.sj, align 16
  store <4 x float> %i.afz, ptr %i.xt, align 16
  %i.aga = load <4 x float>, ptr %i.tw, align 16
  store <4 x float> %i.aga, ptr %i.xu, align 16
  %i.agb = getelementptr inbounds nuw i8, ptr %i.xd, i64 80
  %i.agc = load <4 x float>, ptr %i.sk, align 16
  store <4 x float> %i.agc, ptr %i.agb, align 16
  %i.agd = getelementptr inbounds nuw i8, ptr %i.xd, i64 96
  %i.age = load <4 x float>, ptr %i.tx, align 16
  store <4 x float> %i.age, ptr %i.agd, align 16
  %i.agf = getelementptr inbounds nuw i8, ptr %i.xd, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agf, ptr noundef nonnull align 16 dereferenceable(32) %i.ty, i64 32, i1 false)
  %i.agg = getelementptr inbounds nuw i8, ptr %i.xd, i64 144
  %i.agh = load <4 x float>, ptr %i.ua, align 16
  store <4 x float> %i.agh, ptr %i.agg, align 16
  %i.agi = load ptr, ptr %i.uc, align 16
  %i.agj = getelementptr inbounds nuw i8, ptr %i.xd, i64 160
  store ptr %i.agi, ptr %i.agj, align 16
  %i.agk = load i64, ptr %i.pn, align 16
  %i.agl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %i.agk ; 10 uses
  %i.agm = load i64, ptr %71, align 16
  store i64 %i.agm, ptr %i.agl, align 16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %i.ago = load <4 x float>, ptr %i.sl, align 16
  store <4 x float> %i.ago, ptr %i.agn, align 16
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 32
  %i.agq = load <4 x float>, ptr %i.ux, align 16
  store <4 x float> %i.agq, ptr %i.agp, align 16
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agl, i64 48
  %i.ags = load <4 x float>, ptr %i.sm, align 16
  store <4 x float> %i.ags, ptr %i.agr, align 16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agl, i64 64
  %i.agu = load <4 x float>, ptr %i.uy, align 16
  store <4 x float> %i.agu, ptr %i.agt, align 16
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agl, i64 80
  %i.agw = load <4 x float>, ptr %i.sn, align 16
  store <4 x float> %i.agw, ptr %i.agv, align 16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agl, i64 96
  %i.agy = load <4 x float>, ptr %i.uz, align 16
  store <4 x float> %i.agy, ptr %i.agx, align 16
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agl, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agz, ptr noundef nonnull align 16 dereferenceable(32) %i.va, i64 32, i1 false)
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agl, i64 144
  %i.ahb = load <4 x float>, ptr %i.vc, align 16
  store <4 x float> %i.ahb, ptr %i.aha, align 16
  %i.ahc = load ptr, ptr %i.ve, align 16
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agl, i64 160
  store ptr %i.ahc, ptr %i.ahd, align 16
  %i.ahe = load i64, ptr %i.pn, align 16
  %i.ahf = add i64 %i.ahe, 1                      ; 4 uses
  store i64 %i.ahf, ptr %i.pn, align 16
  %.pre971 = load i64, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  %i.ahg = icmp ult i64 %i.ahf, %.pre971
  br i1 %i.ahg, label %.preheader844, label %.thread

bb.cz:                                            ; preds = %bb.bi, %bb.bg
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %.noexc270, %bb.cl, %.noexc268, %bb.ck, %bb.bl, %bb.bk
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %.body266

.body266:                                         ; preds = %bb.da, %bb.cj
  %.pn96 = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.cj ], [ %i.ahi, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  br label %bb.db

bb.db:                                            ; preds = %.body266, %bb.cz
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %.body266 ], [ %i.ahh, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  br label %.body

.thread:                                          ; preds = %bb.cy, %._crit_edge..thread.loopexit_crit_edge, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.ahj = phi i64 [ %i.sf, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.pre972.pre, %._crit_edge..thread.loopexit_crit_edge ], [ %i.ahf, %bb.cy ] ; 5 uses
  %.065.lcssa = phi i1 [ %i.pm, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.065871, %._crit_edge..thread.loopexit_crit_edge ], [ %i.aea, %bb.cy ] ; 3 uses
  %.not913 = icmp eq i64 %i.ahj, 0
  br i1 %.not913, label %._crit_edge878, label %.lr.ph877

.lr.ph877:                                        ; preds = %.thread
  %.sroa.013.0.copyload = load float, ptr %i.ci, align 8 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %i.cj, align 4 ; 2 uses
  %min.iters.check1179 = icmp ult i64 %i.ahj, 8
  br i1 %min.iters.check1179, label %scalar.ph1178.preheader, label %vector.ph1180

vector.ph1180:                                    ; preds = %.lr.ph877
  %n.vec1181 = and i64 %i.ahj, -8                 ; 3 uses
  %i.ahk = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.065.lcssa, i64 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.013.0.copyload, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1182 = insertelement <4 x float> poison, float %.sroa.4.0.copyload, i64 0
  %broadcast.splat1183 = shufflevector <4 x float> %broadcast.splatinsert1182, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %vector.ph1180
  %index1185 = phi i64 [ 0, %vector.ph1180 ], [ %index.next1187, %vector.body1184 ] ; 9 uses
  %vec.phi = phi <4 x i1> [ %i.ahk, %vector.ph1180 ], [ %i.ajv, %vector.body1184 ]
  %vec.phi1186 = phi <4 x i1> [ zeroinitializer, %vector.ph1180 ], [ %i.ajw, %vector.body1184 ]
  %i.ahl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1185 ; 2 uses
  %i.ahm = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1185 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1185 ; 2 uses
  %i.aho = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1185 ; 2 uses
  %i.ahp = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1185 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1185 ; 2 uses
  %i.ahr = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1185 ; 2 uses
  %i.ahs = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1185 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahl, i64 152
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahm, i64 328
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 504
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aho, i64 680
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahp, i64 856
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1032
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1208
end_hunk_2
begin_hunk_3_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERKNS1_11BuildRecordES9_:bb.a
  %i.akv = icmp ult i64 %.pre-phi, 3072
  br i1 %i.akv, label %bb.bi, label %bb.bj, !prof !56

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15, !noalias !2404
  store i64 %i.akf, ptr %15, align 8, !noalias !2404
  store i64 %i.ake, ptr %i.adw, align 8, !noalias !2404
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %25, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %.noexc53.i unwind label %bb.bo

.noexc53.i:                                       ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15, !noalias !2404
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.akw = add i64 %.pre-phi, 127
  %i.akx = lshr i64 %i.akw, 7                     ; 2 uses
  %i.aky = icmp eq i64 %i.akx, 1
  br i1 %i.aky, label %bb.bk, label %bb.bl, !prof !56

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15, !noalias !2405
  store i64 %i.akf, ptr %14, align 8, !noalias !2405
  store i64 %i.ake, ptr %i.adv, align 8, !noalias !2405
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %25, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %.noexc55.i unwind label %bb.bo

.noexc55.i:                                       ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15, !noalias !2405
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i

bb.bl:                                            ; preds = %bb.bj
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %25, i64 noundef %i.akx, i64 noundef %i.akf, i64 noundef %i.ake, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %26, ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i unwind label %bb.bo

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i: ; preds = %.noexc55.i, %bb.bl, %.noexc53.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !2400
  %i.akz = load i64, ptr %i.aiu, align 16, !noalias !2400 ; 5 uses
  %i.ala = load i64, ptr %i.ady, align 8, !noalias !2400
  %i.alb = load i64, ptr %i.adx, align 16, !noalias !2400
  %i.alc = sub i64 %i.ala, %i.alb                 ; 2 uses
  %i.ald = add i64 %i.alc, %i.akz                 ; 2 uses
  store i64 %i.akz, ptr %i.adx, align 16, !noalias !2400
  store i64 %i.ald, ptr %i.ady, align 8, !noalias !2400
  %i.ale = load i64, ptr %i.aiv, align 8, !noalias !2400 ; 2 uses
  %i.alf = sub i64 %i.ale, %i.akz
  %.not28.i.i = icmp eq i64 %i.alc, %i.alf
  br i1 %.not28.i.i, label %_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_.exit.i, label %bb.bm

bb.bm:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i
  %i.alg = getelementptr inbounds nuw i8, ptr %i.air, i64 32
  %i.alh = load ptr, ptr %i.alg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15, !noalias !2400
  store ptr %19, ptr %27, align 8, !noalias !2400
  %i.ali = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.alh, i64 noundef %i.akz, i64 noundef %i.ale, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.bn unwind label %bb.bp     ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  store i64 %i.ali, ptr %i.ady, align 8, !noalias !2400
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !2400
  %.pre1034 = load i64, ptr %i.adx, align 16
  br label %_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_.exit.i

bb.bo:                                            ; preds = %bb.bl, %bb.bk, %bb.bi
  %i.alj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !2400
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bm
  %i.alk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !2400
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn.i.i = phi { ptr, i32 } [ %i.alj, %bb.bo ], [ %i.alk, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !2400
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15, !noalias !2400
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bg, %bb.bf
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.bq ], [ %i.akc, %bb.bf ], [ %i.akd, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !2400
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !2400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !2400
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %53) #15
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.be
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.br ], [ %i.akb, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !2400
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !2400
  br label %.body231

_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_.exit.i: ; preds = %bb.bn, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i
  %i.all = phi i64 [ %i.ali, %bb.bn ], [ %i.ald, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i ]
  %i.alm = phi i64 [ %.pre1034, %bb.bn ], [ %i.akz, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_.exit.i ]
  %.sroa.0.0.copyload.i22.i = load <2 x float>, ptr %19, align 8, !noalias !2400 ; 3 uses
  %i.aln = load <4 x float>, ptr %25, align 16
  %i.alo = load <4 x float>, ptr %i.adz, align 16
  %i.alp = load <4 x float>, ptr %i.aea, align 16
  %i.alq = load <4 x float>, ptr %i.aeb, align 16
  %i.alr = load <4 x float>, ptr %i.aec, align 16
  %i.als = load <4 x float>, ptr %i.aed, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aej, ptr noundef nonnull align 16 dereferenceable(16) %i.aee, i64 16, i1 false)
  store <4 x float> %i.aln, ptr %i.abw, align 16
  store <4 x float> %i.alo, ptr %i.aef, align 16
  store <4 x float> %i.alp, ptr %i.abx, align 16
  store <4 x float> %i.alq, ptr %i.aeg, align 16
  store <4 x float> %i.alr, ptr %i.aby, align 16
  store <4 x float> %i.als, ptr %i.aeh, align 16
  store i64 %i.alm, ptr %i.aei, align 16
  store i64 %i.all, ptr %.sroa.17.96..sroa_idx, align 8
  %i.alt = load <2 x float>, ptr %.sroa.20519.112..sroa_idx, align 16
  store <2 x float> %i.alt, ptr %i.aek, align 16
  %i.alu = load <2 x float>, ptr %.sroa.22520.112..sroa_idx, align 8 ; 3 uses
  %i.alv = fcmp olt <2 x float> %i.alu, %.sroa.0.0.copyload.i22.i
  %i.alw = shufflevector <2 x float> %.sroa.0.0.copyload.i22.i, <2 x float> %i.alu, <2 x i32> <i32 0, i32 3>
  %i.alx = shufflevector <2 x float> %i.alu, <2 x float> %.sroa.0.0.copyload.i22.i, <2 x i32> <i32 0, i32 3>
  %i.aly = select <2 x i1> %i.alv, <2 x float> %i.alw, <2 x float> %i.alx
  store <2 x float> %i.aly, ptr %i.ael, align 8
  store ptr %i.air, ptr %i.aem, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !2400
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15, !noalias !2400
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !2400
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !2400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !2400
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !2400
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !2400
  %.pre1035 = load ptr, ptr %53, align 8
  %i.alz = icmp ne ptr %.pre1035, null
  %i.ama = or i1 %.082, %i.alz
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit

bb.bt:                                            ; preds = %bb.as
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.agq)
          to label %.noexc233 unwind label %bb.em

.noexc233:                                        ; preds = %bb.bt
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.agq, ptr noundef nonnull align 16 dereferenceable(152) %i.abo, ptr noundef nonnull align 16 dereferenceable(152) %i.abw)
          to label %.noexc234 unwind label %bb.em

bb.bu:                                            ; preds = %bb.as
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.agq)
          to label %.noexc235 unwind label %bb.em

.noexc235:                                        ; preds = %bb.bu
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.agq, ptr noundef nonnull align 16 dereferenceable(152) %i.abo, ptr noundef nonnull align 16 dereferenceable(152) %i.abw)
          to label %.noexc234 unwind label %bb.em

.noexc234:                                        ; preds = %.noexc235, %.noexc233, %.noexc229, %bb.as
  store ptr null, ptr %53, align 8
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit: ; preds = %.noexc234, %_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_.exit.i
  %i.amb = phi i1 [ %.082, %.noexc234 ], [ %i.ama, %_ZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12TriangleMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %54, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.abo)
          to label %bb.bv unwind label %bb.en

bb.bv:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.abr, ptr noundef nonnull align 16 dereferenceable(64) %54, i64 16, i1 false)
  %i.amc = load i64, ptr %i.afh, align 16
  store i64 %i.amc, ptr %i.abv, align 16
  %i.amd = load <4 x float>, ptr %i.afj, align 16
  store <4 x float> %i.amd, ptr %i.afi, align 16
  %i.ame = load <4 x float>, ptr %i.afl, align 16
  store <4 x float> %i.ame, ptr %i.afk, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12TriangleMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_12TriangleMvMBILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %55, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.abw)
          to label %bb.bw unwind label %bb.eo

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.abz, ptr noundef nonnull align 16 dereferenceable(64) %55, i64 16, i1 false)
  %i.amf = load i64, ptr %i.afm, align 16
  store i64 %i.amf, ptr %i.acd, align 16
  %i.amg = load <4 x float>, ptr %i.afo, align 16
  store <4 x float> %i.amg, ptr %i.afn, align 16
  %i.amh = load <4 x float>, ptr %i.afq, align 16
  store <4 x float> %i.amh, ptr %i.afp, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #15
  store ptr null, ptr %53, align 8
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %.080.lcssa ; 2 uses
  %i.amj = load ptr, ptr %i.ami, align 8          ; 8 uses
  %i.amk = load ptr, ptr %i.adk, align 16         ; 3 uses
  %i.aml = load ptr, ptr %i.amj, align 8
  %i.amm = icmp eq ptr %i.amk, %i.aml
  br i1 %i.amm, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amj, i64 8 ; 2 uses
  %i.amo = load i64, ptr %i.amn, align 8
  %i.amp = add i64 %i.amo, 1
  store i64 %i.amp, ptr %i.amn, align 8
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.amq = load i64, ptr %i.aat, align 8          ; 2 uses
  %i.amr = add nsw i64 %i.amq, 1
  store i64 %i.amr, ptr %i.aat, align 8
  %i.ams = getelementptr inbounds nuw [16 x i8], ptr %i.aas, i64 %i.amq ; 3 uses
  store ptr %i.amk, ptr %i.ams, align 8
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  store i64 1, ptr %i.amt, align 16
  store ptr %i.ams, ptr %i.ami, align 8
  %.pre1036 = load ptr, ptr %i.amj, align 8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.amu = phi ptr [ %.pre1036, %bb.by ], [ %i.amk, %bb.bx ]
  %i.amv = load ptr, ptr %i.aem, align 16         ; 2 uses
  %i.amw = icmp eq ptr %i.amv, %i.amu
  br i1 %i.amw, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.amx = load i64, ptr %i.aar, align 16
  %i.amy = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %i.amx
  store ptr %i.amj, ptr %i.amy, align 8
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amj, i64 8 ; 2 uses
  %i.ana = load i64, ptr %i.amz, align 8          ; 2 uses
  %i.anb = add i64 %i.ana, 1
  store i64 %i.anb, ptr %i.amz, align 8
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.anc = load i64, ptr %i.aat, align 8          ; 2 uses
  %i.and = add nsw i64 %i.anc, 1
  store i64 %i.and, ptr %i.aat, align 8
  %i.ane = getelementptr inbounds nuw [16 x i8], ptr %i.aas, i64 %i.anc ; 3 uses
  store ptr %i.amv, ptr %i.ane, align 8
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  store i64 1, ptr %i.anf, align 16
  %i.ang = load i64, ptr %i.aar, align 16
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %i.abn, i64 %i.ang
  store ptr %i.ane, ptr %i.anh, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  %.pre1037 = load i64, ptr %.phi.trans.insert, align 8
  %i.ani = add i64 %.pre1037, -1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.anj = phi i64 [ %i.ani, %bb.cb ], [ %i.ana, %bb.ca ] ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  store i64 %i.anj, ptr %i.ank, align 8
  %i.anl = icmp eq i64 %i.anj, 0
  br i1 %i.anl, label %bb.cd, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

bb.cd:                                            ; preds = %bb.cc
  %i.anm = load ptr, ptr %i.amj, align 8          ; 6 uses
  %i.ann = icmp eq ptr %i.anm, null
  br i1 %i.ann, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit, label %.preheader893

.preheader893:                                    ; preds = %bb.cd
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anm, i64 32
  %i.anp = load ptr, ptr %i.ano, align 8          ; 3 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anm, i64 24
  %i.anr = load i64, ptr %i.anq, align 8          ; 3 uses
  %.not.i219 = icmp eq ptr %i.anp, null
  br i1 %.not.i219, label %.noexc221, label %bb.ce

bb.ce:                                            ; preds = %.preheader893
  %i.ans = mul i64 %i.anr, 80                     ; 2 uses
  %i.ant = icmp ugt i64 %i.ans, 29360127
  br i1 %i.ant, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.anu = getelementptr inbounds nuw i8, ptr %i.anm, i64 8
  %i.anv = load i8, ptr %i.anu, align 8, !range !49, !noundef !50
  %i.anw = trunc nuw i8 %i.anv to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.anp, i64 noundef %i.ans, i1 noundef zeroext %i.anw)
          to label %.noexc221 unwind label %bb.ci

bb.cg:                                            ; preds = %bb.ce
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.anp)
          to label %.noexc221 unwind label %bb.ci

.noexc221:                                        ; preds = %bb.cg, %bb.cf, %.preheader893
  %.not9.i220 = icmp eq i64 %i.anr, 0
  br i1 %.not9.i220, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i134, label %bb.ch

bb.ch:                                            ; preds = %.noexc221
  %i.anx = load ptr, ptr %i.anm, align 8          ; 2 uses
  %i.any = mul i64 %i.anr, -80
  %i.anz = load ptr, ptr %i.anx, align 8
  %i.aoa = load ptr, ptr %i.anz, align 8
  invoke void %i.aoa(ptr noundef nonnull align 8 dereferenceable(8) %i.anx, i64 noundef %i.any, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i134 unwind label %bb.ci, !inline_history !1

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.aob = landingpad { ptr, i32 }
          catch ptr null
  %i.aoc = extractvalue { ptr, i32 } %i.aob, 0
  call void @__clang_call_terminate(ptr %i.aoc) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i134: ; preds = %bb.ch, %.noexc221
  call void @_ZdlPv(ptr noundef nonnull %i.anm) #28
  %.pre1038 = load ptr, ptr %53, align 8
  br label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.cc, %bb.cd, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i134
  %i.aod = phi ptr [ null, %bb.cc ], [ null, %bb.cd ], [ %.pre1038, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i134 ] ; 6 uses
  %i.aoe = load i64, ptr %51, align 16
  store i64 %i.aoe, ptr %i.agm, align 16
  %i.aof = load <4 x float>, ptr %i.abo, align 16
  store <4 x float> %i.aof, ptr %i.agq, align 16
  %i.aog = getelementptr inbounds nuw i8, ptr %i.agm, i64 32
  %i.aoh = load <4 x float>, ptr %i.add, align 16
  store <4 x float> %i.aoh, ptr %i.aog, align 16
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.agm, i64 48
  %i.aoj = load <4 x float>, ptr %i.abp, align 16
  store <4 x float> %i.aoj, ptr %i.aoi, align 16
  %i.aok = getelementptr inbounds nuw i8, ptr %i.agm, i64 64
  %i.aol = load <4 x float>, ptr %i.ade, align 16
  store <4 x float> %i.aol, ptr %i.aok, align 16
  %i.aom = getelementptr inbounds nuw i8, ptr %i.agm, i64 80
  %i.aon = load <4 x float>, ptr %i.abq, align 16
  store <4 x float> %i.aon, ptr %i.aom, align 16
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.agm, i64 96
  %i.aop = load <4 x float>, ptr %i.adf, align 16
  store <4 x float> %i.aop, ptr %i.aoo, align 16
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.agm, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aoq, ptr noundef nonnull align 16 dereferenceable(32) %i.adg, i64 32, i1 false)
  %i.aor = getelementptr inbounds nuw i8, ptr %i.agm, i64 144
  %i.aos = load <4 x float>, ptr %i.adi, align 16
  store <4 x float> %i.aos, ptr %i.aor, align 16
  %i.aot = load ptr, ptr %i.adk, align 16
  %i.aou = getelementptr inbounds nuw i8, ptr %i.agm, i64 160
  store ptr %i.aot, ptr %i.aou, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.agp, ptr noundef nonnull align 16 dereferenceable(64) %i.abr, i64 16, i1 false)
  %i.aov = getelementptr inbounds nuw i8, ptr %i.agm, i64 192
  %i.aow = load i64, ptr %i.abv, align 16
  store i64 %i.aow, ptr %i.aov, align 16
  %i.aox = getelementptr inbounds nuw i8, ptr %i.agm, i64 208
  %i.aoy = load <4 x float>, ptr %i.afi, align 16
  store <4 x float> %i.aoy, ptr %i.aox, align 16
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.agm, i64 224
  %i.apa = load <4 x float>, ptr %i.afk, align 16
  store <4 x float> %i.apa, ptr %i.aoz, align 16
  %i.apb = load i64, ptr %i.aar, align 16
  %i.apc = getelementptr inbounds nuw [240 x i8], ptr %50, i64 %i.apb ; 14 uses
  %i.apd = load i64, ptr %52, align 16
  store i64 %i.apd, ptr %i.apc, align 16
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apc, i64 16
  %i.apf = load <4 x float>, ptr %i.abw, align 16
  store <4 x float> %i.apf, ptr %i.ape, align 16
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apc, i64 32
  %i.aph = load <4 x float>, ptr %i.aef, align 16
  store <4 x float> %i.aph, ptr %i.apg, align 16
  %i.api = getelementptr inbounds nuw i8, ptr %i.apc, i64 48
  %i.apj = load <4 x float>, ptr %i.abx, align 16
  store <4 x float> %i.apj, ptr %i.api, align 16
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apc, i64 64
  %i.apl = load <4 x float>, ptr %i.aeg, align 16
  store <4 x float> %i.apl, ptr %i.apk, align 16
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apc, i64 80
  %i.apn = load <4 x float>, ptr %i.aby, align 16
  store <4 x float> %i.apn, ptr %i.apm, align 16
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apc, i64 96
  %i.app = load <4 x float>, ptr %i.aeh, align 16
  store <4 x float> %i.app, ptr %i.apo, align 16
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apc, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.apq, ptr noundef nonnull align 16 dereferenceable(32) %i.aei, i64 32, i1 false)
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apc, i64 144
  %i.aps = load <4 x float>, ptr %i.aek, align 16
  store <4 x float> %i.aps, ptr %i.apr, align 16
  %i.apt = load ptr, ptr %i.aem, align 16
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apc, i64 160
  store ptr %i.apt, ptr %i.apu, align 16
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apc, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.apv, ptr noundef nonnull align 16 dereferenceable(64) %i.abz, i64 16, i1 false)
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apc, i64 192
  %i.apx = load i64, ptr %i.acd, align 16
  store i64 %i.apx, ptr %i.apw, align 16
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apc, i64 208
  %i.apz = load <4 x float>, ptr %i.afn, align 16
  store <4 x float> %i.apz, ptr %i.apy, align 16
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apc, i64 224
  %i.aqb = load <4 x float>, ptr %i.afp, align 16
  store <4 x float> %i.aqb, ptr %i.aqa, align 16
  %i.aqc = load i64, ptr %i.aar, align 16
  %i.aqd = add i64 %i.aqc, 1                      ; 2 uses
  store i64 %i.aqd, ptr %i.aar, align 16
  %.not.i266 = icmp eq ptr %i.aod, null
  br i1 %.not.i266, label %bb.co, label %.preheader.i.i267

.preheader.i.i267:                                ; preds = %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aod, i64 32
  %i.aqf = load ptr, ptr %i.aqe, align 8          ; 3 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aod, i64 24
  %i.aqh = load i64, ptr %i.aqg, align 8          ; 3 uses
  %.not.i.i.i268 = icmp eq ptr %i.aqf, null
  br i1 %.not.i.i.i268, label %.noexc.i.i269, label %bb.cj

bb.cj:                                            ; preds = %.preheader.i.i267
  %i.aqi = mul i64 %i.aqh, 80                     ; 2 uses
  %i.aqj = icmp ugt i64 %i.aqi, 29360127
  br i1 %i.aqj, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aod, i64 8
  %i.aql = load i8, ptr %i.aqk, align 8, !range !49, !noundef !50
  %i.aqm = trunc nuw i8 %i.aql to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.aqf, i64 noundef %i.aqi, i1 noundef zeroext %i.aqm)
          to label %.noexc.i.i269 unwind label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.aqf)
          to label %.noexc.i.i269 unwind label %bb.cn

.noexc.i.i269:                                    ; preds = %bb.cl, %bb.ck, %.preheader.i.i267
  %.not9.i.i.i270 = icmp eq i64 %i.aqh, 0
  br i1 %.not9.i.i.i270, label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i271, label %bb.cm

bb.cm:                                            ; preds = %.noexc.i.i269
  %i.aqn = load ptr, ptr %i.aod, align 8          ; 2 uses
  %i.aqo = mul i64 %i.aqh, -80
  %i.aqp = load ptr, ptr %i.aqn, align 8
  %i.aqq = load ptr, ptr %i.aqp, align 8
  invoke void %i.aqq(ptr noundef nonnull align 8 dereferenceable(8) %i.aqn, i64 noundef %i.aqo, i1 noundef zeroext true)
          to label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i271 unwind label %bb.cn, !inline_history !1

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.aqr = landingpad { ptr, i32 }
          catch ptr null
  %i.aqs = extractvalue { ptr, i32 } %i.aqr, 0
  call void @__clang_call_terminate(ptr %i.aqs) #31
end_hunk_3
begin_hunk_4_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseERKNS1_11BuildRecordES9_b:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tz, ptr noundef nonnull align 16 dereferenceable(16) %i.tu, i64 16, i1 false)
  store <4 x float> %i.ack, ptr %i.si, align 16
  store <4 x float> %i.acl, ptr %i.tv, align 16
  store <4 x float> %i.acm, ptr %i.sj, align 16
  store <4 x float> %i.acn, ptr %i.tw, align 16
  store <4 x float> %i.aco, ptr %i.sk, align 16
  store <4 x float> %i.acp, ptr %i.tx, align 16
  store i64 %i.aci, ptr %i.ty, align 16
  store i64 %i.ach, ptr %.sroa.17784.96..sroa_idx, align 8
  %i.acq = load <2 x float>, ptr %.sroa.20786.112..sroa_idx, align 16
  store <2 x float> %i.acq, ptr %i.ua, align 16
  %i.acr = load <2 x float>, ptr %.sroa.22788.112..sroa_idx, align 8 ; 3 uses
  %i.acs = fcmp olt <2 x float> %i.acr, %.sroa.01.0.copyload.i276
  %i.act = shufflevector <2 x float> %.sroa.01.0.copyload.i276, <2 x float> %i.acr, <2 x i32> <i32 0, i32 3>
  %i.acu = shufflevector <2 x float> %i.acr, <2 x float> %.sroa.01.0.copyload.i276, <2 x i32> <i32 0, i32 3>
  %i.acv = select <2 x i1> %i.acs, <2 x float> %i.act, <2 x float> %i.acu
  store <2 x float> %i.acv, ptr %i.ub, align 8
  store ptr %i.acj, ptr %i.uc, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15, !noalias !2646
  store ptr %i.aas, ptr %25, align 8, !noalias !2646
  store ptr %20, ptr %i.ud, align 8, !noalias !2646
  store ptr %i.so, ptr %i.ue, align 8, !noalias !2646
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15, !noalias !2646
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15, !noalias !2646
  store <4 x float> splat (float +inf), ptr %27, align 16, !noalias !2646
  store <4 x float> splat (float -inf), ptr %i.uf, align 16, !noalias !2646
  store <4 x float> splat (float +inf), ptr %i.ug, align 16, !noalias !2646
  store <4 x float> splat (float -inf), ptr %i.uh, align 16, !noalias !2646
  store <4 x float> splat (float +inf), ptr %i.ui, align 16, !noalias !2646
  store <4 x float> splat (float -inf), ptr %i.uj, align 16, !noalias !2646
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.uk, i8 0, i64 36, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.ul, align 4, !noalias !2646
  store float 0.000000e+00, ptr %i.um, align 4, !noalias !2646
  %i.acw = icmp ult i64 %.pre-phi, 3072
  br i1 %i.acw, label %bb.bz, label %bb.ca, !prof !56

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !2649
  store i64 %i.acg, ptr %13, align 8, !noalias !2649
  store i64 %i.acf, ptr %i.uo, align 8, !noalias !2649
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc305 unwind label %bb.cf

.noexc305:                                        ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !2649
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.ca:                                            ; preds = %bb.by
  %i.acx = add i64 %.pre-phi, 127
  %i.acy = lshr i64 %i.acx, 7                     ; 2 uses
  %i.acz = icmp eq i64 %i.acy, 1
  br i1 %i.acz, label %bb.cb, label %bb.cc, !prof !56

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !2650
  store i64 %i.acg, ptr %12, align 8, !noalias !2650
  store i64 %i.acf, ptr %i.un, align 8, !noalias !2650
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc308 unwind label %bb.cf

.noexc308:                                        ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !2650
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.cc:                                            ; preds = %bb.ca
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, i64 noundef %i.acy, i64 noundef %i.acg, i64 noundef %i.acf, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %27, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit unwind label %bb.cf

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit: ; preds = %bb.cc, %.noexc308, %.noexc305
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !2646
  %i.ada = load i64, ptr %i.aav, align 16, !noalias !2646 ; 5 uses
  %i.adb = load i64, ptr %i.uq, align 8, !noalias !2646
  %i.adc = load i64, ptr %i.up, align 16, !noalias !2646
  %i.add = sub i64 %i.adb, %i.adc                 ; 2 uses
  %i.ade = add i64 %i.add, %i.ada                 ; 2 uses
  store i64 %i.ada, ptr %i.up, align 16, !noalias !2646
  store i64 %i.ade, ptr %i.uq, align 8, !noalias !2646
  %i.adf = load i64, ptr %i.aaw, align 8, !noalias !2646 ; 2 uses
  %i.adg = sub i64 %i.adf, %i.ada
  %.not28.i279 = icmp eq i64 %i.add, %i.adg
  br i1 %.not28.i279, label %.noexc252, label %bb.cd

bb.cd:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.adh = getelementptr inbounds nuw i8, ptr %i.aas, i64 32
  %i.adi = load ptr, ptr %i.adh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15, !noalias !2646
  store ptr %20, ptr %28, align 8, !noalias !2646
  %i.adj = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.adi, i64 noundef %i.ada, i64 noundef %i.adf, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ce unwind label %bb.cg     ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  store i64 %i.adj, ptr %i.uq, align 8, !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !2646
  %.pre980 = load i64, ptr %i.up, align 16
  br label %.noexc252

bb.cf:                                            ; preds = %bb.cc, %bb.cb, %bb.bz
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !2646
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cd
  %i.adl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !2646
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i278 = phi { ptr, i32 } [ %i.adk, %bb.cf ], [ %i.adl, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !2646
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bx, %bb.bw
  %.pn.pn.i274 = phi { ptr, i32 } [ %.pn.i278, %bb.ch ], [ %i.acd, %bb.bw ], [ %i.ace, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !2646
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #15
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bv
  %.pn.pn.pn.i266 = phi { ptr, i32 } [ %.pn.pn.i274, %bb.ci ], [ %i.acc, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !2646
  br label %.body284

.noexc252:                                        ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit, %bb.ce
  %i.adm = phi i64 [ %i.ade, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %i.adj, %bb.ce ]
  %i.adn = phi i64 [ %i.ada, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %.pre980, %bb.ce ]
  %.sroa.0.0.copyload.i280 = load <2 x float>, ptr %20, align 8, !noalias !2646 ; 3 uses
  %i.ado = load <4 x float>, ptr %26, align 16
  %i.adp = load <4 x float>, ptr %i.ur, align 16
  %i.adq = load <4 x float>, ptr %i.us, align 16
  %i.adr = load <4 x float>, ptr %i.ut, align 16
  %i.ads = load <4 x float>, ptr %i.uu, align 16
  %i.adt = load <4 x float>, ptr %i.uv, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vb, ptr noundef nonnull align 16 dereferenceable(16) %i.uw, i64 16, i1 false)
  store <4 x float> %i.ado, ptr %i.sl, align 16
  store <4 x float> %i.adp, ptr %i.ux, align 16
  store <4 x float> %i.adq, ptr %i.sm, align 16
  store <4 x float> %i.adr, ptr %i.uy, align 16
  store <4 x float> %i.ads, ptr %i.sn, align 16
  store <4 x float> %i.adt, ptr %i.uz, align 16
  store i64 %i.adn, ptr %i.va, align 16
  store i64 %i.adm, ptr %.sroa.17761.96..sroa_idx, align 8
  %i.adu = load <2 x float>, ptr %.sroa.20763.112..sroa_idx, align 16
  store <2 x float> %i.adu, ptr %i.vc, align 16
  %i.adv = load <2 x float>, ptr %.sroa.22765.112..sroa_idx, align 8 ; 3 uses
  %i.adw = fcmp olt <2 x float> %i.adv, %.sroa.0.0.copyload.i280
  %i.adx = shufflevector <2 x float> %.sroa.0.0.copyload.i280, <2 x float> %i.adv, <2 x i32> <i32 0, i32 3>
  %i.ady = shufflevector <2 x float> %i.adv, <2 x float> %.sroa.0.0.copyload.i280, <2 x i32> <i32 0, i32 3>
  %i.adz = select <2 x i1> %i.adw, <2 x float> %i.adx, <2 x float> %i.ady
  store <2 x float> %i.adz, ptr %i.vd, align 8
  store ptr %i.aas, ptr %i.ve, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !2646
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !2646
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit

bb.ck:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc253 unwind label %bb.da

.noexc253:                                        ; preds = %bb.ck
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit unwind label %bb.da

bb.cl:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc255 unwind label %bb.da

.noexc255:                                        ; preds = %bb.cl
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit unwind label %bb.da

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit: ; preds = %bb.bj, %.noexc251, %.noexc253, %.noexc255, %.noexc252
  %i.aea = phi i1 [ true, %.noexc252 ], [ %.065884, %.noexc255 ], [ %.065884, %.noexc253 ], [ %.065884, %.noexc251 ], [ %.065884, %bb.bj ] ; 2 uses
  store ptr null, ptr %73, align 8
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %.188 ; 2 uses
  %i.aec = load ptr, ptr %i.aeb, align 8          ; 8 uses
  %i.aed = load ptr, ptr %i.uc, align 16          ; 3 uses
  %i.aee = load ptr, ptr %i.aec, align 8
  %i.aef = icmp eq ptr %i.aed, %i.aee
  br i1 %i.aef, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8
  %i.aei = add i64 %i.aeh, 1
  store i64 %i.aei, ptr %i.aeg, align 8
  br label %bb.co

bb.cn:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit
  %i.aej = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aek = add nsw i64 %i.aej, 1
  store i64 %i.aek, ptr %i.pp, align 8
  %i.ael = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aej ; 3 uses
  store ptr %i.aed, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  store i64 1, ptr %i.aem, align 16
  store ptr %i.ael, ptr %i.aeb, align 8
  %.pre981 = load ptr, ptr %i.aec, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.aen = phi ptr [ %.pre981, %bb.cn ], [ %i.aed, %bb.cm ]
  %i.aeo = load ptr, ptr %i.ve, align 16          ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.aen
  br i1 %i.aep, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.aeq = load i64, ptr %i.pn, align 16
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aeq
  store ptr %i.aec, ptr %i.aer, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aet = load i64, ptr %i.aes, align 8          ; 2 uses
  %i.aeu = add i64 %i.aet, 1
  store i64 %i.aeu, ptr %i.aes, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.aev = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aew = add nsw i64 %i.aev, 1
  store i64 %i.aew, ptr %i.pp, align 8
  %i.aex = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aev ; 3 uses
  store ptr %i.aeo, ptr %i.aex, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  store i64 1, ptr %i.aey, align 16
  %i.aez = load i64, ptr %i.pn, align 16
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aez
  store ptr %i.aex, ptr %i.afa, align 8
  %.phi.trans.insert982 = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %.pre983 = load i64, ptr %.phi.trans.insert982, align 8
  %i.afb = add i64 %.pre983, -1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.afc = phi i64 [ %i.afb, %bb.cq ], [ %i.aet, %bb.cp ] ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i64 %i.afc, ptr %i.afd, align 8
  %i.afe = icmp eq i64 %i.afc, 0
  br i1 %i.afe, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.aff = load ptr, ptr %i.aec, align 8          ; 6 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %bb.cy, label %.preheader856

.preheader856:                                    ; preds = %bb.cs
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afi = load ptr, ptr %i.afh, align 8          ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 24
  %i.afk = load i64, ptr %i.afj, align 8          ; 3 uses
  %.not.i243 = icmp eq ptr %i.afi, null
  br i1 %.not.i243, label %.noexc245, label %bb.ct

bb.ct:                                            ; preds = %.preheader856
  %i.afl = mul i64 %i.afk, 80                     ; 2 uses
  %i.afm = icmp ugt i64 %i.afl, 29360127
  br i1 %i.afm, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afo = load i8, ptr %i.afn, align 8, !range !49, !noundef !50
  %i.afp = trunc nuw i8 %i.afo to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.afi, i64 noundef %i.afl, i1 noundef zeroext %i.afp)
          to label %.noexc245 unwind label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.afi)
          to label %.noexc245 unwind label %bb.cx

.noexc245:                                        ; preds = %bb.cv, %bb.cu, %.preheader856
  %.not9.i244 = icmp eq i64 %i.afk, 0
  br i1 %.not9.i244, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154, label %bb.cw

bb.cw:                                            ; preds = %.noexc245
  %i.afq = load ptr, ptr %i.aff, align 8          ; 2 uses
  %i.afr = mul i64 %i.afk, -80
  %i.afs = load ptr, ptr %i.afq, align 8
  %i.aft = load ptr, ptr %i.afs, align 8
  invoke void %i.aft(ptr noundef nonnull align 8 dereferenceable(8) %i.afq, i64 noundef %i.afr, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154 unwind label %bb.cx, !inline_history !1

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.afu = landingpad { ptr, i32 }
          catch ptr null
  %i.afv = extractvalue { ptr, i32 } %i.afu, 0
  call void @__clang_call_terminate(ptr %i.afv) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154: ; preds = %bb.cw, %.noexc245
  call void @_ZdlPv(ptr noundef nonnull %i.aff) #28
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cr, %bb.cs, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154
  %i.afw = load i64, ptr %70, align 16
  store i64 %i.afw, ptr %i.xd, align 16
  %i.afx = load <4 x float>, ptr %i.si, align 16
  store <4 x float> %i.afx, ptr %i.xg, align 16
  %i.afy = load <4 x float>, ptr %i.tv, align 16
  store <4 x float> %i.afy, ptr %i.xp, align 16
  %i.afz = load <4 x float>, ptr %i.sj, align 16
  store <4 x float> %i.afz, ptr %i.xt, align 16
  %i.aga = load <4 x float>, ptr %i.tw, align 16
  store <4 x float> %i.aga, ptr %i.xu, align 16
  %i.agb = getelementptr inbounds nuw i8, ptr %i.xd, i64 80
  %i.agc = load <4 x float>, ptr %i.sk, align 16
  store <4 x float> %i.agc, ptr %i.agb, align 16
  %i.agd = getelementptr inbounds nuw i8, ptr %i.xd, i64 96
  %i.age = load <4 x float>, ptr %i.tx, align 16
  store <4 x float> %i.age, ptr %i.agd, align 16
  %i.agf = getelementptr inbounds nuw i8, ptr %i.xd, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agf, ptr noundef nonnull align 16 dereferenceable(32) %i.ty, i64 32, i1 false)
  %i.agg = getelementptr inbounds nuw i8, ptr %i.xd, i64 144
  %i.agh = load <4 x float>, ptr %i.ua, align 16
  store <4 x float> %i.agh, ptr %i.agg, align 16
  %i.agi = load ptr, ptr %i.uc, align 16
  %i.agj = getelementptr inbounds nuw i8, ptr %i.xd, i64 160
  store ptr %i.agi, ptr %i.agj, align 16
  %i.agk = load i64, ptr %i.pn, align 16
  %i.agl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %i.agk ; 10 uses
  %i.agm = load i64, ptr %71, align 16
  store i64 %i.agm, ptr %i.agl, align 16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %i.ago = load <4 x float>, ptr %i.sl, align 16
  store <4 x float> %i.ago, ptr %i.agn, align 16
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 32
  %i.agq = load <4 x float>, ptr %i.ux, align 16
  store <4 x float> %i.agq, ptr %i.agp, align 16
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agl, i64 48
  %i.ags = load <4 x float>, ptr %i.sm, align 16
  store <4 x float> %i.ags, ptr %i.agr, align 16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agl, i64 64
  %i.agu = load <4 x float>, ptr %i.uy, align 16
  store <4 x float> %i.agu, ptr %i.agt, align 16
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agl, i64 80
  %i.agw = load <4 x float>, ptr %i.sn, align 16
  store <4 x float> %i.agw, ptr %i.agv, align 16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agl, i64 96
  %i.agy = load <4 x float>, ptr %i.uz, align 16
  store <4 x float> %i.agy, ptr %i.agx, align 16
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agl, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agz, ptr noundef nonnull align 16 dereferenceable(32) %i.va, i64 32, i1 false)
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agl, i64 144
  %i.ahb = load <4 x float>, ptr %i.vc, align 16
  store <4 x float> %i.ahb, ptr %i.aha, align 16
  %i.ahc = load ptr, ptr %i.ve, align 16
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agl, i64 160
  store ptr %i.ahc, ptr %i.ahd, align 16
  %i.ahe = load i64, ptr %i.pn, align 16
  %i.ahf = add i64 %i.ahe, 1                      ; 4 uses
  store i64 %i.ahf, ptr %i.pn, align 16
  %.pre984 = load i64, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  %i.ahg = icmp ult i64 %i.ahf, %.pre984
  br i1 %i.ahg, label %.preheader857, label %.thread

bb.cz:                                            ; preds = %bb.bi, %bb.bg
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.bl, %.noexc255, %bb.cl, %.noexc253, %bb.ck, %bb.bk
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %.body284

.body284:                                         ; preds = %bb.da, %bb.cj
  %.pn96 = phi { ptr, i32 } [ %.pn.pn.pn.i266, %bb.cj ], [ %i.ahi, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  br label %bb.db

bb.db:                                            ; preds = %.body284, %bb.cz
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %.body284 ], [ %i.ahh, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  br label %.body

.thread:                                          ; preds = %bb.cy, %._crit_edge..thread.loopexit_crit_edge, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.ahj = phi i64 [ %i.sf, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.pre985.pre, %._crit_edge..thread.loopexit_crit_edge ], [ %i.ahf, %bb.cy ] ; 5 uses
  %.065.lcssa = phi i1 [ %i.pm, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.065884, %._crit_edge..thread.loopexit_crit_edge ], [ %i.aea, %bb.cy ] ; 3 uses
  %.not926 = icmp eq i64 %i.ahj, 0
  br i1 %.not926, label %._crit_edge891, label %.lr.ph890

.lr.ph890:                                        ; preds = %.thread
  %.sroa.013.0.copyload = load float, ptr %i.ci, align 8 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %i.cj, align 4 ; 2 uses
  %min.iters.check1192 = icmp ult i64 %i.ahj, 8
  br i1 %min.iters.check1192, label %scalar.ph1191.preheader, label %vector.ph1193

vector.ph1193:                                    ; preds = %.lr.ph890
  %n.vec1194 = and i64 %i.ahj, -8                 ; 3 uses
  %i.ahk = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.065.lcssa, i64 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.013.0.copyload, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1195 = insertelement <4 x float> poison, float %.sroa.4.0.copyload, i64 0
  %broadcast.splat1196 = shufflevector <4 x float> %broadcast.splatinsert1195, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1193
  %index1198 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1200, %vector.body1197 ] ; 9 uses
  %vec.phi = phi <4 x i1> [ %i.ahk, %vector.ph1193 ], [ %i.ajv, %vector.body1197 ]
  %vec.phi1199 = phi <4 x i1> [ zeroinitializer, %vector.ph1193 ], [ %i.ajw, %vector.body1197 ]
  %i.ahl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahm = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.aho = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahp = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahr = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahs = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahl, i64 152
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahm, i64 328
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 504
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aho, i64 680
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahp, i64 856
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1032
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1208
end_hunk_4
begin_hunk_5_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERKNS1_11BuildRecordES9_:bb.a
  %i.akp = icmp ult i64 %.pre-phi, 3072
  br i1 %i.akp, label %bb.bt, label %bb.bu, !prof !56

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !2921
  store i64 %i.ajz, ptr %7, align 8, !noalias !2921
  store i64 %i.ajy, ptr %i.adq, align 8, !noalias !2921
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %17, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc251 unwind label %bb.bz

.noexc251:                                        ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !2921
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.bu:                                            ; preds = %bb.bs
  %i.akq = add i64 %.pre-phi, 127
  %i.akr = lshr i64 %i.akq, 7                     ; 2 uses
  %i.aks = icmp eq i64 %i.akr, 1
  br i1 %i.aks, label %bb.bv, label %bb.bw, !prof !56

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !2922
  store i64 %i.ajz, ptr %6, align 8, !noalias !2922
  store i64 %i.ajy, ptr %i.adp, align 8, !noalias !2922
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %17, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc253 unwind label %bb.bz

.noexc253:                                        ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !2922
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.bw:                                            ; preds = %bb.bu
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %17, i64 noundef %i.akr, i64 noundef %i.ajz, i64 noundef %i.ajy, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %18, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit unwind label %bb.bz

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit: ; preds = %bb.bw, %.noexc253, %.noexc251
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !2918
  %i.akt = load i64, ptr %i.aio, align 16, !noalias !2918 ; 5 uses
  %i.aku = load i64, ptr %i.ads, align 8, !noalias !2918
  %i.akv = load i64, ptr %i.adr, align 16, !noalias !2918
  %i.akw = sub i64 %i.aku, %i.akv                 ; 2 uses
  %i.akx = add i64 %i.akw, %i.akt                 ; 2 uses
  store i64 %i.akt, ptr %i.adr, align 16, !noalias !2918
  store i64 %i.akx, ptr %i.ads, align 8, !noalias !2918
  %i.aky = load i64, ptr %i.aip, align 8, !noalias !2918 ; 2 uses
  %i.akz = sub i64 %i.aky, %i.akt
  %.not28.i = icmp eq i64 %i.akw, %i.akz
  br i1 %.not28.i, label %.noexc217, label %bb.bx

bb.bx:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ail, i64 32
  %i.alb = load ptr, ptr %i.ala, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15, !noalias !2918
  store ptr %11, ptr %19, align 8, !noalias !2918
  %i.alc = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.alb, i64 noundef %i.akt, i64 noundef %i.aky, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.by unwind label %bb.ca     ; 2 uses

bb.by:                                            ; preds = %bb.bx
  store i64 %i.alc, ptr %i.ads, align 8, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !2918
  %.pre1012 = load i64, ptr %i.adr, align 16
  br label %.noexc217

bb.bz:                                            ; preds = %bb.bw, %bb.bv, %bb.bt
  %i.ald = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !2918
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bx
  %i.ale = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !2918
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn.i = phi { ptr, i32 } [ %i.ald, %bb.bz ], [ %i.ale, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !2918
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.br, %bb.bq
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.cb ], [ %i.ajw, %bb.bq ], [ %i.ajx, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !2918
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #15
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bp
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.cc ], [ %i.ajv, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !2918
  br label %.body243

.noexc217:                                        ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit, %bb.by
  %i.alf = phi i64 [ %i.akx, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %i.alc, %bb.by ]
  %i.alg = phi i64 [ %i.akt, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8QuadMeshEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %.pre1012, %bb.by ]
  %.sroa.0.0.copyload.i241 = load <2 x float>, ptr %11, align 8, !noalias !2918 ; 3 uses
  %i.alh = load <4 x float>, ptr %17, align 16
  %i.ali = load <4 x float>, ptr %i.adt, align 16
  %i.alj = load <4 x float>, ptr %i.adu, align 16
  %i.alk = load <4 x float>, ptr %i.adv, align 16
  %i.all = load <4 x float>, ptr %i.adw, align 16
  %i.alm = load <4 x float>, ptr %i.adx, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aed, ptr noundef nonnull align 16 dereferenceable(16) %i.ady, i64 16, i1 false)
  store <4 x float> %i.alh, ptr %i.abq, align 16
  store <4 x float> %i.ali, ptr %i.adz, align 16
  store <4 x float> %i.alj, ptr %i.abr, align 16
  store <4 x float> %i.alk, ptr %i.aea, align 16
  store <4 x float> %i.all, ptr %i.abs, align 16
  store <4 x float> %i.alm, ptr %i.aeb, align 16
  store i64 %i.alg, ptr %i.aec, align 16
  store i64 %i.alf, ptr %.sroa.17.96..sroa_idx, align 8
  %i.aln = load <2 x float>, ptr %.sroa.20699.112..sroa_idx, align 16
  store <2 x float> %i.aln, ptr %i.aee, align 16
  %i.alo = load <2 x float>, ptr %.sroa.22700.112..sroa_idx, align 8 ; 3 uses
  %i.alp = fcmp olt <2 x float> %i.alo, %.sroa.0.0.copyload.i241
  %i.alq = shufflevector <2 x float> %.sroa.0.0.copyload.i241, <2 x float> %i.alo, <2 x i32> <i32 0, i32 3>
  %i.alr = shufflevector <2 x float> %i.alo, <2 x float> %.sroa.0.0.copyload.i241, <2 x i32> <i32 0, i32 3>
  %i.als = select <2 x i1> %i.alp, <2 x float> %i.alq, <2 x float> %i.alr
  store <2 x float> %i.als, ptr %i.aef, align 8
  store ptr %i.ail, ptr %i.aeg, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !2918
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !2918
  %.pre1013 = load ptr, ptr %45, align 8
  %i.alt = icmp ne ptr %.pre1013, null
  %i.alu = or i1 %.082, %i.alt
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit

bb.ce:                                            ; preds = %bb.bd
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.agk)
          to label %.noexc218 unwind label %bb.ex

.noexc218:                                        ; preds = %bb.ce
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.agk, ptr noundef nonnull align 16 dereferenceable(152) %i.abi, ptr noundef nonnull align 16 dereferenceable(152) %i.abq)
          to label %.noexc219 unwind label %bb.ex

bb.cf:                                            ; preds = %bb.bd
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.agk)
          to label %.noexc220 unwind label %bb.ex

.noexc220:                                        ; preds = %bb.cf
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSO_SR_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.agk, ptr noundef nonnull align 16 dereferenceable(152) %i.abi, ptr noundef nonnull align 16 dereferenceable(152) %i.abq)
          to label %.noexc219 unwind label %bb.ex

.noexc219:                                        ; preds = %.noexc220, %.noexc218, %.noexc216, %bb.bd
  store ptr null, ptr %45, align 8
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit: ; preds = %.noexc219, %.noexc217
  %i.alv = phi i1 [ %.082, %.noexc219 ], [ %i.alu, %.noexc217 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %46, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.abi)
          to label %bb.cg unwind label %bb.ey

bb.cg:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSS_SV_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.abl, ptr noundef nonnull align 16 dereferenceable(64) %46, i64 16, i1 false)
  %i.alw = load i64, ptr %i.afb, align 16
  store i64 %i.alw, ptr %i.abp, align 16
  %i.alx = load <4 x float>, ptr %i.afd, align 16
  store <4 x float> %i.alx, ptr %i.afc, align 16
  %i.aly = load <4 x float>, ptr %i.aff, align 16
  store <4 x float> %i.aly, ptr %i.afe, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8QuadMeshEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6QuadMiILi4EEEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %47, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.abq)
          to label %bb.ch unwind label %bb.ez

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.abt, ptr noundef nonnull align 16 dereferenceable(64) %47, i64 16, i1 false)
  %i.alz = load i64, ptr %i.afg, align 16
  store i64 %i.alz, ptr %i.abx, align 16
  %i.ama = load <4 x float>, ptr %i.afi, align 16
  store <4 x float> %i.ama, ptr %i.afh, align 16
  %i.amb = load <4 x float>, ptr %i.afk, align 16
  store <4 x float> %i.amb, ptr %i.afj, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  store ptr null, ptr %45, align 8
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %.080.lcssa ; 2 uses
  %i.amd = load ptr, ptr %i.amc, align 8          ; 8 uses
  %i.ame = load ptr, ptr %i.ade, align 16         ; 3 uses
  %i.amf = load ptr, ptr %i.amd, align 8
  %i.amg = icmp eq ptr %i.ame, %i.amf
  br i1 %i.amg, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amd, i64 8 ; 2 uses
  %i.ami = load i64, ptr %i.amh, align 8
  %i.amj = add i64 %i.ami, 1
  store i64 %i.amj, ptr %i.amh, align 8
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.amk = load i64, ptr %i.aan, align 8          ; 2 uses
  %i.aml = add nsw i64 %i.amk, 1
  store i64 %i.aml, ptr %i.aan, align 8
  %i.amm = getelementptr inbounds nuw [16 x i8], ptr %i.aam, i64 %i.amk ; 3 uses
  store ptr %i.ame, ptr %i.amm, align 8
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 8
  store i64 1, ptr %i.amn, align 16
  store ptr %i.amm, ptr %i.amc, align 8
  %.pre1014 = load ptr, ptr %i.amd, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.amo = phi ptr [ %.pre1014, %bb.cj ], [ %i.ame, %bb.ci ]
  %i.amp = load ptr, ptr %i.aeg, align 16         ; 2 uses
  %i.amq = icmp eq ptr %i.amp, %i.amo
  br i1 %i.amq, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.amr = load i64, ptr %i.aal, align 16
  %i.ams = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %i.amr
  store ptr %i.amd, ptr %i.ams, align 8
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amd, i64 8 ; 2 uses
  %i.amu = load i64, ptr %i.amt, align 8          ; 2 uses
  %i.amv = add i64 %i.amu, 1
  store i64 %i.amv, ptr %i.amt, align 8
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  %i.amw = load i64, ptr %i.aan, align 8          ; 2 uses
  %i.amx = add nsw i64 %i.amw, 1
  store i64 %i.amx, ptr %i.aan, align 8
  %i.amy = getelementptr inbounds nuw [16 x i8], ptr %i.aam, i64 %i.amw ; 3 uses
  store ptr %i.amp, ptr %i.amy, align 8
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  store i64 1, ptr %i.amz, align 16
  %i.ana = load i64, ptr %i.aal, align 16
  %i.anb = getelementptr inbounds nuw [8 x i8], ptr %i.abh, i64 %i.ana
  store ptr %i.amy, ptr %i.anb, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  %.pre1015 = load i64, ptr %.phi.trans.insert, align 8
  %i.anc = add i64 %.pre1015, -1
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.and = phi i64 [ %i.anc, %bb.cm ], [ %i.amu, %bb.cl ] ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %i.amd, i64 8
  store i64 %i.and, ptr %i.ane, align 8
  %i.anf = icmp eq i64 %i.and, 0
  br i1 %i.anf, label %bb.co, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

bb.co:                                            ; preds = %bb.cn
  %i.ang = load ptr, ptr %i.amd, align 8          ; 6 uses
  %i.anh = icmp eq ptr %i.ang, null
  br i1 %i.anh, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit, label %.preheader799

.preheader799:                                    ; preds = %bb.co
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ang, i64 32
  %i.anj = load ptr, ptr %i.ani, align 8          ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ang, i64 24
  %i.anl = load i64, ptr %i.ank, align 8          ; 3 uses
  %.not.i208 = icmp eq ptr %i.anj, null
  br i1 %.not.i208, label %.noexc210, label %bb.cp

bb.cp:                                            ; preds = %.preheader799
  %i.anm = mul i64 %i.anl, 80                     ; 2 uses
  %i.ann = icmp ugt i64 %i.anm, 29360127
  br i1 %i.ann, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ang, i64 8
  %i.anp = load i8, ptr %i.ano, align 8, !range !49, !noundef !50
  %i.anq = trunc nuw i8 %i.anp to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.anj, i64 noundef %i.anm, i1 noundef zeroext %i.anq)
          to label %.noexc210 unwind label %bb.ct

bb.cr:                                            ; preds = %bb.cp
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.anj)
          to label %.noexc210 unwind label %bb.ct

.noexc210:                                        ; preds = %bb.cr, %bb.cq, %.preheader799
  %.not9.i209 = icmp eq i64 %i.anl, 0
  br i1 %.not9.i209, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131, label %bb.cs

bb.cs:                                            ; preds = %.noexc210
  %i.anr = load ptr, ptr %i.ang, align 8          ; 2 uses
  %i.ans = mul i64 %i.anl, -80
  %i.ant = load ptr, ptr %i.anr, align 8
  %i.anu = load ptr, ptr %i.ant, align 8
  invoke void %i.anu(ptr noundef nonnull align 8 dereferenceable(8) %i.anr, i64 noundef %i.ans, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131 unwind label %bb.ct, !inline_history !1

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq
  %i.anv = landingpad { ptr, i32 }
          catch ptr null
  %i.anw = extractvalue { ptr, i32 } %i.anv, 0
  call void @__clang_call_terminate(ptr %i.anw) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131: ; preds = %bb.cs, %.noexc210
  call void @_ZdlPv(ptr noundef nonnull %i.ang) #28
  %.pre1016 = load ptr, ptr %45, align 8
  br label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.cn, %bb.co, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131
  %i.anx = phi ptr [ null, %bb.cn ], [ null, %bb.co ], [ %.pre1016, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131 ] ; 6 uses
  %i.any = load i64, ptr %43, align 16
  store i64 %i.any, ptr %i.agg, align 16
  %i.anz = load <4 x float>, ptr %i.abi, align 16
  store <4 x float> %i.anz, ptr %i.agk, align 16
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.agg, i64 32
  %i.aob = load <4 x float>, ptr %i.acx, align 16
  store <4 x float> %i.aob, ptr %i.aoa, align 16
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.agg, i64 48
  %i.aod = load <4 x float>, ptr %i.abj, align 16
  store <4 x float> %i.aod, ptr %i.aoc, align 16
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.agg, i64 64
  %i.aof = load <4 x float>, ptr %i.acy, align 16
  store <4 x float> %i.aof, ptr %i.aoe, align 16
  %i.aog = getelementptr inbounds nuw i8, ptr %i.agg, i64 80
  %i.aoh = load <4 x float>, ptr %i.abk, align 16
  store <4 x float> %i.aoh, ptr %i.aog, align 16
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.agg, i64 96
  %i.aoj = load <4 x float>, ptr %i.acz, align 16
  store <4 x float> %i.aoj, ptr %i.aoi, align 16
  %i.aok = getelementptr inbounds nuw i8, ptr %i.agg, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aok, ptr noundef nonnull align 16 dereferenceable(32) %i.ada, i64 32, i1 false)
  %i.aol = getelementptr inbounds nuw i8, ptr %i.agg, i64 144
  %i.aom = load <4 x float>, ptr %i.adc, align 16
  store <4 x float> %i.aom, ptr %i.aol, align 16
  %i.aon = load ptr, ptr %i.ade, align 16
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.agg, i64 160
  store ptr %i.aon, ptr %i.aoo, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.agj, ptr noundef nonnull align 16 dereferenceable(64) %i.abl, i64 16, i1 false)
  %i.aop = getelementptr inbounds nuw i8, ptr %i.agg, i64 192
  %i.aoq = load i64, ptr %i.abp, align 16
  store i64 %i.aoq, ptr %i.aop, align 16
  %i.aor = getelementptr inbounds nuw i8, ptr %i.agg, i64 208
  %i.aos = load <4 x float>, ptr %i.afc, align 16
  store <4 x float> %i.aos, ptr %i.aor, align 16
  %i.aot = getelementptr inbounds nuw i8, ptr %i.agg, i64 224
  %i.aou = load <4 x float>, ptr %i.afe, align 16
  store <4 x float> %i.aou, ptr %i.aot, align 16
  %i.aov = load i64, ptr %i.aal, align 16
  %i.aow = getelementptr inbounds nuw [240 x i8], ptr %42, i64 %i.aov ; 14 uses
  %i.aox = load i64, ptr %44, align 16
  store i64 %i.aox, ptr %i.aow, align 16
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aow, i64 16
  %i.aoz = load <4 x float>, ptr %i.abq, align 16
  store <4 x float> %i.aoz, ptr %i.aoy, align 16
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aow, i64 32
  %i.apb = load <4 x float>, ptr %i.adz, align 16
  store <4 x float> %i.apb, ptr %i.apa, align 16
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aow, i64 48
  %i.apd = load <4 x float>, ptr %i.abr, align 16
  store <4 x float> %i.apd, ptr %i.apc, align 16
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aow, i64 64
  %i.apf = load <4 x float>, ptr %i.aea, align 16
  store <4 x float> %i.apf, ptr %i.ape, align 16
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aow, i64 80
  %i.aph = load <4 x float>, ptr %i.abs, align 16
  store <4 x float> %i.aph, ptr %i.apg, align 16
  %i.api = getelementptr inbounds nuw i8, ptr %i.aow, i64 96
  %i.apj = load <4 x float>, ptr %i.aeb, align 16
  store <4 x float> %i.apj, ptr %i.api, align 16
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aow, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.apk, ptr noundef nonnull align 16 dereferenceable(32) %i.aec, i64 32, i1 false)
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aow, i64 144
  %i.apm = load <4 x float>, ptr %i.aee, align 16
  store <4 x float> %i.apm, ptr %i.apl, align 16
  %i.apn = load ptr, ptr %i.aeg, align 16
  %i.apo = getelementptr inbounds nuw i8, ptr %i.aow, i64 160
  store ptr %i.apn, ptr %i.apo, align 16
  %i.app = getelementptr inbounds nuw i8, ptr %i.aow, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.app, ptr noundef nonnull align 16 dereferenceable(64) %i.abt, i64 16, i1 false)
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aow, i64 192
  %i.apr = load i64, ptr %i.abx, align 16
  store i64 %i.apr, ptr %i.apq, align 16
  %i.aps = getelementptr inbounds nuw i8, ptr %i.aow, i64 208
  %i.apt = load <4 x float>, ptr %i.afh, align 16
  store <4 x float> %i.apt, ptr %i.aps, align 16
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aow, i64 224
  %i.apv = load <4 x float>, ptr %i.afj, align 16
  store <4 x float> %i.apv, ptr %i.apu, align 16
  %i.apw = load i64, ptr %i.aal, align 16
  %i.apx = add i64 %i.apw, 1                      ; 2 uses
  store i64 %i.apx, ptr %i.aal, align 16
  %.not.i274 = icmp eq ptr %i.anx, null
  br i1 %.not.i274, label %bb.cz, label %.preheader.i.i275

.preheader.i.i275:                                ; preds = %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.apy = getelementptr inbounds nuw i8, ptr %i.anx, i64 32
  %i.apz = load ptr, ptr %i.apy, align 8          ; 3 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.anx, i64 24
  %i.aqb = load i64, ptr %i.aqa, align 8          ; 3 uses
  %.not.i.i.i276 = icmp eq ptr %i.apz, null
  br i1 %.not.i.i.i276, label %.noexc.i.i277, label %bb.cu

bb.cu:                                            ; preds = %.preheader.i.i275
  %i.aqc = mul i64 %i.aqb, 80                     ; 2 uses
  %i.aqd = icmp ugt i64 %i.aqc, 29360127
  br i1 %i.aqd, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.anx, i64 8
  %i.aqf = load i8, ptr %i.aqe, align 8, !range !49, !noundef !50
  %i.aqg = trunc nuw i8 %i.aqf to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.apz, i64 noundef %i.aqc, i1 noundef zeroext %i.aqg)
          to label %.noexc.i.i277 unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.apz)
          to label %.noexc.i.i277 unwind label %bb.cy

.noexc.i.i277:                                    ; preds = %bb.cw, %bb.cv, %.preheader.i.i275
  %.not9.i.i.i278 = icmp eq i64 %i.aqb, 0
  br i1 %.not9.i.i.i278, label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i279, label %bb.cx

bb.cx:                                            ; preds = %.noexc.i.i277
  %i.aqh = load ptr, ptr %i.anx, align 8          ; 2 uses
  %i.aqi = mul i64 %i.aqb, -80
  %i.aqj = load ptr, ptr %i.aqh, align 8
  %i.aqk = load ptr, ptr %i.aqj, align 8
  invoke void %i.aqk(ptr noundef nonnull align 8 dereferenceable(8) %i.aqh, i64 noundef %i.aqi, i1 noundef zeroext true)
          to label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i279 unwind label %bb.cy, !inline_history !1

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.aql = landingpad { ptr, i32 }
          catch ptr null
  %i.aqm = extractvalue { ptr, i32 } %i.aql, 0
  call void @__clang_call_terminate(ptr %i.aqm) #31
end_hunk_5
begin_hunk_6_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseERKNS1_11BuildRecordES9_b:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tz, ptr noundef nonnull align 16 dereferenceable(16) %i.tu, i64 16, i1 false)
  store <4 x float> %i.ack, ptr %i.si, align 16
  store <4 x float> %i.acl, ptr %i.tv, align 16
  store <4 x float> %i.acm, ptr %i.sj, align 16
  store <4 x float> %i.acn, ptr %i.tw, align 16
  store <4 x float> %i.aco, ptr %i.sk, align 16
  store <4 x float> %i.acp, ptr %i.tx, align 16
  store i64 %i.aci, ptr %i.ty, align 16
  store i64 %i.ach, ptr %.sroa.17784.96..sroa_idx, align 8
  %i.acq = load <2 x float>, ptr %.sroa.20786.112..sroa_idx, align 16
  store <2 x float> %i.acq, ptr %i.ua, align 16
  %i.acr = load <2 x float>, ptr %.sroa.22788.112..sroa_idx, align 8 ; 3 uses
  %i.acs = fcmp olt <2 x float> %i.acr, %.sroa.01.0.copyload.i276
  %i.act = shufflevector <2 x float> %.sroa.01.0.copyload.i276, <2 x float> %i.acr, <2 x i32> <i32 0, i32 3>
  %i.acu = shufflevector <2 x float> %i.acr, <2 x float> %.sroa.01.0.copyload.i276, <2 x i32> <i32 0, i32 3>
  %i.acv = select <2 x i1> %i.acs, <2 x float> %i.act, <2 x float> %i.acu
  store <2 x float> %i.acv, ptr %i.ub, align 8
  store ptr %i.acj, ptr %i.uc, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15, !noalias !4161
  store ptr %i.aas, ptr %25, align 8, !noalias !4161
  store ptr %20, ptr %i.ud, align 8, !noalias !4161
  store ptr %i.so, ptr %i.ue, align 8, !noalias !4161
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15, !noalias !4161
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15, !noalias !4161
  store <4 x float> splat (float +inf), ptr %27, align 16, !noalias !4161
  store <4 x float> splat (float -inf), ptr %i.uf, align 16, !noalias !4161
  store <4 x float> splat (float +inf), ptr %i.ug, align 16, !noalias !4161
  store <4 x float> splat (float -inf), ptr %i.uh, align 16, !noalias !4161
  store <4 x float> splat (float +inf), ptr %i.ui, align 16, !noalias !4161
  store <4 x float> splat (float -inf), ptr %i.uj, align 16, !noalias !4161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.uk, i8 0, i64 36, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.ul, align 4, !noalias !4161
  store float 0.000000e+00, ptr %i.um, align 4, !noalias !4161
  %i.acw = icmp ult i64 %.pre-phi, 3072
  br i1 %i.acw, label %bb.bz, label %bb.ca, !prof !56

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !4164
  store i64 %i.acg, ptr %13, align 8, !noalias !4164
  store i64 %i.acf, ptr %i.uo, align 8, !noalias !4164
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc305 unwind label %bb.cf

.noexc305:                                        ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !4164
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.ca:                                            ; preds = %bb.by
  %i.acx = add i64 %.pre-phi, 127
  %i.acy = lshr i64 %i.acx, 7                     ; 2 uses
  %i.acz = icmp eq i64 %i.acy, 1
  br i1 %i.acz, label %bb.cb, label %bb.cc, !prof !56

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !4165
  store i64 %i.acg, ptr %12, align 8, !noalias !4165
  store i64 %i.acf, ptr %i.un, align 8, !noalias !4165
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc308 unwind label %bb.cf

.noexc308:                                        ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !4165
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.cc:                                            ; preds = %bb.ca
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, i64 noundef %i.acy, i64 noundef %i.acg, i64 noundef %i.acf, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %27, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit unwind label %bb.cf

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit: ; preds = %bb.cc, %.noexc308, %.noexc305
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !4161
  %i.ada = load i64, ptr %i.aav, align 16, !noalias !4161 ; 5 uses
  %i.adb = load i64, ptr %i.uq, align 8, !noalias !4161
  %i.adc = load i64, ptr %i.up, align 16, !noalias !4161
  %i.add = sub i64 %i.adb, %i.adc                 ; 2 uses
  %i.ade = add i64 %i.add, %i.ada                 ; 2 uses
  store i64 %i.ada, ptr %i.up, align 16, !noalias !4161
  store i64 %i.ade, ptr %i.uq, align 8, !noalias !4161
  %i.adf = load i64, ptr %i.aaw, align 8, !noalias !4161 ; 2 uses
  %i.adg = sub i64 %i.adf, %i.ada
  %.not28.i279 = icmp eq i64 %i.add, %i.adg
  br i1 %.not28.i279, label %.noexc252, label %bb.cd

bb.cd:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.adh = getelementptr inbounds nuw i8, ptr %i.aas, i64 32
  %i.adi = load ptr, ptr %i.adh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15, !noalias !4161
  store ptr %20, ptr %28, align 8, !noalias !4161
  %i.adj = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.adi, i64 noundef %i.ada, i64 noundef %i.adf, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ce unwind label %bb.cg     ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  store i64 %i.adj, ptr %i.uq, align 8, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !4161
  %.pre980 = load i64, ptr %i.up, align 16
  br label %.noexc252

bb.cf:                                            ; preds = %bb.cc, %bb.cb, %bb.bz
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !4161
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cd
  %i.adl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !4161
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i278 = phi { ptr, i32 } [ %i.adk, %bb.cf ], [ %i.adl, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !4161
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bx, %bb.bw
  %.pn.pn.i274 = phi { ptr, i32 } [ %.pn.i278, %bb.ch ], [ %i.acd, %bb.bw ], [ %i.ace, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !4161
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #15
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bv
  %.pn.pn.pn.i266 = phi { ptr, i32 } [ %.pn.pn.i274, %bb.ci ], [ %i.acc, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !4161
  br label %.body284

.noexc252:                                        ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit, %bb.ce
  %i.adm = phi i64 [ %i.ade, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %i.adj, %bb.ce ]
  %i.adn = phi i64 [ %i.ada, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %.pre980, %bb.ce ]
  %.sroa.0.0.copyload.i280 = load <2 x float>, ptr %20, align 8, !noalias !4161 ; 3 uses
  %i.ado = load <4 x float>, ptr %26, align 16
  %i.adp = load <4 x float>, ptr %i.ur, align 16
  %i.adq = load <4 x float>, ptr %i.us, align 16
  %i.adr = load <4 x float>, ptr %i.ut, align 16
  %i.ads = load <4 x float>, ptr %i.uu, align 16
  %i.adt = load <4 x float>, ptr %i.uv, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vb, ptr noundef nonnull align 16 dereferenceable(16) %i.uw, i64 16, i1 false)
  store <4 x float> %i.ado, ptr %i.sl, align 16
  store <4 x float> %i.adp, ptr %i.ux, align 16
  store <4 x float> %i.adq, ptr %i.sm, align 16
  store <4 x float> %i.adr, ptr %i.uy, align 16
  store <4 x float> %i.ads, ptr %i.sn, align 16
  store <4 x float> %i.adt, ptr %i.uz, align 16
  store i64 %i.adn, ptr %i.va, align 16
  store i64 %i.adm, ptr %.sroa.17761.96..sroa_idx, align 8
  %i.adu = load <2 x float>, ptr %.sroa.20763.112..sroa_idx, align 16
  store <2 x float> %i.adu, ptr %i.vc, align 16
  %i.adv = load <2 x float>, ptr %.sroa.22765.112..sroa_idx, align 8 ; 3 uses
  %i.adw = fcmp olt <2 x float> %i.adv, %.sroa.0.0.copyload.i280
  %i.adx = shufflevector <2 x float> %.sroa.0.0.copyload.i280, <2 x float> %i.adv, <2 x i32> <i32 0, i32 3>
  %i.ady = shufflevector <2 x float> %i.adv, <2 x float> %.sroa.0.0.copyload.i280, <2 x i32> <i32 0, i32 3>
  %i.adz = select <2 x i1> %i.adw, <2 x float> %i.adx, <2 x float> %i.ady
  store <2 x float> %i.adz, ptr %i.vd, align 8
  store ptr %i.aas, ptr %i.ve, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !4161
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !4161
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit

bb.ck:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc253 unwind label %bb.da

.noexc253:                                        ; preds = %bb.ck
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit unwind label %bb.da

bb.cl:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc255 unwind label %bb.da

.noexc255:                                        ; preds = %bb.cl
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit unwind label %bb.da

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit: ; preds = %bb.bj, %.noexc251, %.noexc253, %.noexc255, %.noexc252
  %i.aea = phi i1 [ true, %.noexc252 ], [ %.065884, %.noexc255 ], [ %.065884, %.noexc253 ], [ %.065884, %.noexc251 ], [ %.065884, %bb.bj ] ; 2 uses
  store ptr null, ptr %73, align 8
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %.188 ; 2 uses
  %i.aec = load ptr, ptr %i.aeb, align 8          ; 8 uses
  %i.aed = load ptr, ptr %i.uc, align 16          ; 3 uses
  %i.aee = load ptr, ptr %i.aec, align 8
  %i.aef = icmp eq ptr %i.aed, %i.aee
  br i1 %i.aef, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8
  %i.aei = add i64 %i.aeh, 1
  store i64 %i.aei, ptr %i.aeg, align 8
  br label %bb.co

bb.cn:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit
  %i.aej = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aek = add nsw i64 %i.aej, 1
  store i64 %i.aek, ptr %i.pp, align 8
  %i.ael = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aej ; 3 uses
  store ptr %i.aed, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  store i64 1, ptr %i.aem, align 16
  store ptr %i.ael, ptr %i.aeb, align 8
  %.pre981 = load ptr, ptr %i.aec, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.aen = phi ptr [ %.pre981, %bb.cn ], [ %i.aed, %bb.cm ]
  %i.aeo = load ptr, ptr %i.ve, align 16          ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.aen
  br i1 %i.aep, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.aeq = load i64, ptr %i.pn, align 16
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aeq
  store ptr %i.aec, ptr %i.aer, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aet = load i64, ptr %i.aes, align 8          ; 2 uses
  %i.aeu = add i64 %i.aet, 1
  store i64 %i.aeu, ptr %i.aes, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.aev = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aew = add nsw i64 %i.aev, 1
  store i64 %i.aew, ptr %i.pp, align 8
  %i.aex = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aev ; 3 uses
  store ptr %i.aeo, ptr %i.aex, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  store i64 1, ptr %i.aey, align 16
  %i.aez = load i64, ptr %i.pn, align 16
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aez
  store ptr %i.aex, ptr %i.afa, align 8
  %.phi.trans.insert982 = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %.pre983 = load i64, ptr %.phi.trans.insert982, align 8
  %i.afb = add i64 %.pre983, -1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.afc = phi i64 [ %i.afb, %bb.cq ], [ %i.aet, %bb.cp ] ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i64 %i.afc, ptr %i.afd, align 8
  %i.afe = icmp eq i64 %i.afc, 0
  br i1 %i.afe, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.aff = load ptr, ptr %i.aec, align 8          ; 6 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %bb.cy, label %.preheader856

.preheader856:                                    ; preds = %bb.cs
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afi = load ptr, ptr %i.afh, align 8          ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 24
  %i.afk = load i64, ptr %i.afj, align 8          ; 3 uses
  %.not.i243 = icmp eq ptr %i.afi, null
  br i1 %.not.i243, label %.noexc245, label %bb.ct

bb.ct:                                            ; preds = %.preheader856
  %i.afl = mul i64 %i.afk, 80                     ; 2 uses
  %i.afm = icmp ugt i64 %i.afl, 29360127
  br i1 %i.afm, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afo = load i8, ptr %i.afn, align 8, !range !49, !noundef !50
  %i.afp = trunc nuw i8 %i.afo to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.afi, i64 noundef %i.afl, i1 noundef zeroext %i.afp)
          to label %.noexc245 unwind label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.afi)
          to label %.noexc245 unwind label %bb.cx

.noexc245:                                        ; preds = %bb.cv, %bb.cu, %.preheader856
  %.not9.i244 = icmp eq i64 %i.afk, 0
  br i1 %.not9.i244, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154, label %bb.cw

bb.cw:                                            ; preds = %.noexc245
  %i.afq = load ptr, ptr %i.aff, align 8          ; 2 uses
  %i.afr = mul i64 %i.afk, -80
  %i.afs = load ptr, ptr %i.afq, align 8
  %i.aft = load ptr, ptr %i.afs, align 8
  invoke void %i.aft(ptr noundef nonnull align 8 dereferenceable(8) %i.afq, i64 noundef %i.afr, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154 unwind label %bb.cx, !inline_history !1

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.afu = landingpad { ptr, i32 }
          catch ptr null
  %i.afv = extractvalue { ptr, i32 } %i.afu, 0
  call void @__clang_call_terminate(ptr %i.afv) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154: ; preds = %bb.cw, %.noexc245
  call void @_ZdlPv(ptr noundef nonnull %i.aff) #28
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cr, %bb.cs, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154
  %i.afw = load i64, ptr %70, align 16
  store i64 %i.afw, ptr %i.xd, align 16
  %i.afx = load <4 x float>, ptr %i.si, align 16
  store <4 x float> %i.afx, ptr %i.xg, align 16
  %i.afy = load <4 x float>, ptr %i.tv, align 16
  store <4 x float> %i.afy, ptr %i.xp, align 16
  %i.afz = load <4 x float>, ptr %i.sj, align 16
  store <4 x float> %i.afz, ptr %i.xt, align 16
  %i.aga = load <4 x float>, ptr %i.tw, align 16
  store <4 x float> %i.aga, ptr %i.xu, align 16
  %i.agb = getelementptr inbounds nuw i8, ptr %i.xd, i64 80
  %i.agc = load <4 x float>, ptr %i.sk, align 16
  store <4 x float> %i.agc, ptr %i.agb, align 16
  %i.agd = getelementptr inbounds nuw i8, ptr %i.xd, i64 96
  %i.age = load <4 x float>, ptr %i.tx, align 16
  store <4 x float> %i.age, ptr %i.agd, align 16
  %i.agf = getelementptr inbounds nuw i8, ptr %i.xd, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agf, ptr noundef nonnull align 16 dereferenceable(32) %i.ty, i64 32, i1 false)
  %i.agg = getelementptr inbounds nuw i8, ptr %i.xd, i64 144
  %i.agh = load <4 x float>, ptr %i.ua, align 16
  store <4 x float> %i.agh, ptr %i.agg, align 16
  %i.agi = load ptr, ptr %i.uc, align 16
  %i.agj = getelementptr inbounds nuw i8, ptr %i.xd, i64 160
  store ptr %i.agi, ptr %i.agj, align 16
  %i.agk = load i64, ptr %i.pn, align 16
  %i.agl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %i.agk ; 10 uses
  %i.agm = load i64, ptr %71, align 16
  store i64 %i.agm, ptr %i.agl, align 16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %i.ago = load <4 x float>, ptr %i.sl, align 16
  store <4 x float> %i.ago, ptr %i.agn, align 16
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 32
  %i.agq = load <4 x float>, ptr %i.ux, align 16
  store <4 x float> %i.agq, ptr %i.agp, align 16
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agl, i64 48
  %i.ags = load <4 x float>, ptr %i.sm, align 16
  store <4 x float> %i.ags, ptr %i.agr, align 16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agl, i64 64
  %i.agu = load <4 x float>, ptr %i.uy, align 16
  store <4 x float> %i.agu, ptr %i.agt, align 16
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agl, i64 80
  %i.agw = load <4 x float>, ptr %i.sn, align 16
  store <4 x float> %i.agw, ptr %i.agv, align 16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agl, i64 96
  %i.agy = load <4 x float>, ptr %i.uz, align 16
  store <4 x float> %i.agy, ptr %i.agx, align 16
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agl, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agz, ptr noundef nonnull align 16 dereferenceable(32) %i.va, i64 32, i1 false)
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agl, i64 144
  %i.ahb = load <4 x float>, ptr %i.vc, align 16
  store <4 x float> %i.ahb, ptr %i.aha, align 16
  %i.ahc = load ptr, ptr %i.ve, align 16
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agl, i64 160
  store ptr %i.ahc, ptr %i.ahd, align 16
  %i.ahe = load i64, ptr %i.pn, align 16
  %i.ahf = add i64 %i.ahe, 1                      ; 4 uses
  store i64 %i.ahf, ptr %i.pn, align 16
  %.pre984 = load i64, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  %i.ahg = icmp ult i64 %i.ahf, %.pre984
  br i1 %i.ahg, label %.preheader857, label %.thread

bb.cz:                                            ; preds = %bb.bi, %bb.bg
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.bl, %.noexc255, %bb.cl, %.noexc253, %bb.ck, %bb.bk
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %.body284

.body284:                                         ; preds = %bb.da, %bb.cj
  %.pn96 = phi { ptr, i32 } [ %.pn.pn.pn.i266, %bb.cj ], [ %i.ahi, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  br label %bb.db

bb.db:                                            ; preds = %.body284, %bb.cz
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %.body284 ], [ %i.ahh, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  br label %.body

.thread:                                          ; preds = %bb.cy, %._crit_edge..thread.loopexit_crit_edge, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.ahj = phi i64 [ %i.sf, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.pre985.pre, %._crit_edge..thread.loopexit_crit_edge ], [ %i.ahf, %bb.cy ] ; 5 uses
  %.065.lcssa = phi i1 [ %i.pm, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.065884, %._crit_edge..thread.loopexit_crit_edge ], [ %i.aea, %bb.cy ] ; 3 uses
  %.not926 = icmp eq i64 %i.ahj, 0
  br i1 %.not926, label %._crit_edge891, label %.lr.ph890

.lr.ph890:                                        ; preds = %.thread
  %.sroa.013.0.copyload = load float, ptr %i.ci, align 8 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %i.cj, align 4 ; 2 uses
  %min.iters.check1192 = icmp ult i64 %i.ahj, 8
  br i1 %min.iters.check1192, label %scalar.ph1191.preheader, label %vector.ph1193

vector.ph1193:                                    ; preds = %.lr.ph890
  %n.vec1194 = and i64 %i.ahj, -8                 ; 3 uses
  %i.ahk = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.065.lcssa, i64 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.013.0.copyload, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1195 = insertelement <4 x float> poison, float %.sroa.4.0.copyload, i64 0
  %broadcast.splat1196 = shufflevector <4 x float> %broadcast.splatinsert1195, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1193
  %index1198 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1200, %vector.body1197 ] ; 9 uses
  %vec.phi = phi <4 x i1> [ %i.ahk, %vector.ph1193 ], [ %i.ajv, %vector.body1197 ]
  %vec.phi1199 = phi <4 x i1> [ zeroinitializer, %vector.ph1193 ], [ %i.ajw, %vector.body1197 ]
  %i.ahl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahm = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.aho = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahp = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahr = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahs = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahl, i64 152
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahm, i64 328
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 504
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aho, i64 680
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahp, i64 856
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1032
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1208
end_hunk_6
begin_hunk_7_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERKNS1_11BuildRecordES9_:bb.a
  %i.abt = icmp ult i64 %.pre-phi, 3072
  br i1 %i.abt, label %bb.bh, label %bb.bi, !prof !56

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !4367
  store i64 %i.abd, ptr %12, align 8, !noalias !4367
  store i64 %i.abc, ptr %i.uu, align 8, !noalias !4367
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %22, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc248 unwind label %bb.bn

.noexc248:                                        ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !4367
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.bi:                                            ; preds = %bb.bg
  %i.abu = add i64 %.pre-phi, 127
  %i.abv = lshr i64 %i.abu, 7                     ; 2 uses
  %i.abw = icmp eq i64 %i.abv, 1
  br i1 %i.abw, label %bb.bj, label %bb.bk, !prof !56

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15, !noalias !4368
  store i64 %i.abd, ptr %11, align 8, !noalias !4368
  store i64 %i.abc, ptr %i.ut, align 8, !noalias !4368
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %22, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %.noexc250 unwind label %bb.bn

.noexc250:                                        ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !4368
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.bk:                                            ; preds = %bb.bi
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %22, i64 noundef %i.abv, i64 noundef %i.abd, i64 noundef %i.abc, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %23, ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit unwind label %bb.bn

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit: ; preds = %bb.bk, %.noexc250, %.noexc248
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15, !noalias !4364
  %i.abx = load i64, ptr %i.zs, align 16, !noalias !4364 ; 5 uses
  %i.aby = load i64, ptr %i.uw, align 8, !noalias !4364
  %i.abz = load i64, ptr %i.uv, align 16, !noalias !4364
  %i.aca = sub i64 %i.aby, %i.abz                 ; 2 uses
  %i.acb = add i64 %i.aca, %i.abx                 ; 2 uses
  store i64 %i.abx, ptr %i.uv, align 16, !noalias !4364
  store i64 %i.acb, ptr %i.uw, align 8, !noalias !4364
  %i.acc = load i64, ptr %i.zt, align 8, !noalias !4364 ; 2 uses
  %i.acd = sub i64 %i.acc, %i.abx
  %.not28.i = icmp eq i64 %i.aca, %i.acd
  br i1 %.not28.i, label %.noexc217, label %bb.bl

bb.bl:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.ace = getelementptr inbounds nuw i8, ptr %i.zp, i64 32
  %i.acf = load ptr, ptr %i.ace, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15, !noalias !4364
  store ptr %16, ptr %24, align 8, !noalias !4364
  %i.acg = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.acf, i64 noundef %i.abx, i64 noundef %i.acc, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bm unwind label %bb.bo     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  store i64 %i.acg, ptr %i.uw, align 8, !noalias !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15, !noalias !4364
  %.pre884 = load i64, ptr %i.uv, align 16
  br label %.noexc217

bb.bn:                                            ; preds = %bb.bk, %bb.bj, %bb.bh
  %i.ach = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15, !noalias !4364
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bl
  %i.aci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15, !noalias !4364
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn.i = phi { ptr, i32 } [ %i.ach, %bb.bn ], [ %i.aci, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !4364
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bf, %bb.be
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bp ], [ %i.aba, %bb.be ], [ %i.abb, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !4364
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #15
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bd
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.bq ], [ %i.aaz, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15, !noalias !4364
  br label %.body240

.noexc217:                                        ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit, %bb.bm
  %i.acj = phi i64 [ %i.acb, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %i.acg, %bb.bm ]
  %i.ack = phi i64 [ %i.abx, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_12UserGeometryEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %.pre884, %bb.bm ]
  %.sroa.0.0.copyload.i238 = load <2 x float>, ptr %16, align 8, !noalias !4364 ; 3 uses
  %i.acl = load <4 x float>, ptr %22, align 16
  %i.acm = load <4 x float>, ptr %i.ux, align 16
  %i.acn = load <4 x float>, ptr %i.uy, align 16
  %i.aco = load <4 x float>, ptr %i.uz, align 16
  %i.acp = load <4 x float>, ptr %i.va, align 16
  %i.acq = load <4 x float>, ptr %i.vb, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vh, ptr noundef nonnull align 16 dereferenceable(16) %i.vc, i64 16, i1 false)
  store <4 x float> %i.acl, ptr %i.su, align 16
  store <4 x float> %i.acm, ptr %i.vd, align 16
  store <4 x float> %i.acn, ptr %i.sv, align 16
  store <4 x float> %i.aco, ptr %i.ve, align 16
  store <4 x float> %i.acp, ptr %i.sw, align 16
  store <4 x float> %i.acq, ptr %i.vf, align 16
  store i64 %i.ack, ptr %i.vg, align 16
  store i64 %i.acj, ptr %.sroa.17.96..sroa_idx, align 8
  %i.acr = load <2 x float>, ptr %.sroa.20663.112..sroa_idx, align 16
  store <2 x float> %i.acr, ptr %i.vi, align 16
  %i.acs = load <2 x float>, ptr %.sroa.22664.112..sroa_idx, align 8 ; 3 uses
  %i.act = fcmp olt <2 x float> %i.acs, %.sroa.0.0.copyload.i238
  %i.acu = shufflevector <2 x float> %.sroa.0.0.copyload.i238, <2 x float> %i.acs, <2 x i32> <i32 0, i32 3>
  %i.acv = shufflevector <2 x float> %i.acs, <2 x float> %.sroa.0.0.copyload.i238, <2 x i32> <i32 0, i32 3>
  %i.acw = select <2 x i1> %i.act, <2 x float> %i.acu, <2 x float> %i.acv
  store <2 x float> %i.acw, ptr %i.vj, align 8
  store ptr %i.zp, ptr %i.vk, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !4364
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15, !noalias !4364
  %.pre885 = load ptr, ptr %55, align 8
  %i.acx = icmp ne ptr %.pre885, null
  %i.acy = or i1 %.082, %i.acx
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit

bb.bs:                                            ; preds = %bb.ar
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xo)
          to label %.noexc218 unwind label %bb.el

.noexc218:                                        ; preds = %bb.bs
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xo, ptr noundef nonnull align 16 dereferenceable(152) %i.sm, ptr noundef nonnull align 16 dereferenceable(152) %i.su)
          to label %.noexc219 unwind label %bb.el

bb.bt:                                            ; preds = %bb.ar
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xo)
          to label %.noexc220 unwind label %bb.el

.noexc220:                                        ; preds = %bb.bt
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xo, ptr noundef nonnull align 16 dereferenceable(152) %i.sm, ptr noundef nonnull align 16 dereferenceable(152) %i.su)
          to label %.noexc219 unwind label %bb.el

.noexc219:                                        ; preds = %.noexc220, %.noexc218, %.noexc216, %bb.ar
  store ptr null, ptr %55, align 8
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit: ; preds = %.noexc219, %.noexc217
  %i.acz = phi i1 [ %.082, %.noexc219 ], [ %i.acy, %.noexc217 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %56, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.sm)
          to label %bb.bu unwind label %bb.em

bb.bu:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.sp, ptr noundef nonnull align 16 dereferenceable(64) %56, i64 16, i1 false)
  %i.ada = load i64, ptr %i.wf, align 16
  store i64 %i.ada, ptr %i.st, align 16
  %i.adb = load <4 x float>, ptr %i.wh, align 16
  store <4 x float> %i.adb, ptr %i.wg, align 16
  %i.adc = load <4 x float>, ptr %i.wj, align 16
  store <4 x float> %i.adc, ptr %i.wi, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_12UserGeometryEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_6ObjectEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %57, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.su)
          to label %bb.bv unwind label %bb.en

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.sx, ptr noundef nonnull align 16 dereferenceable(64) %57, i64 16, i1 false)
  %i.add = load i64, ptr %i.wk, align 16
  store i64 %i.add, ptr %i.tb, align 16
  %i.ade = load <4 x float>, ptr %i.wm, align 16
  store <4 x float> %i.ade, ptr %i.wl, align 16
  %i.adf = load <4 x float>, ptr %i.wo, align 16
  store <4 x float> %i.adf, ptr %i.wn, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  store ptr null, ptr %55, align 8
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %.080.lcssa ; 2 uses
  %i.adh = load ptr, ptr %i.adg, align 8          ; 8 uses
  %i.adi = load ptr, ptr %i.ui, align 16          ; 3 uses
  %i.adj = load ptr, ptr %i.adh, align 8
  %i.adk = icmp eq ptr %i.adi, %i.adj
  br i1 %i.adk, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adh, i64 8 ; 2 uses
  %i.adm = load i64, ptr %i.adl, align 8
  %i.adn = add i64 %i.adm, 1
  store i64 %i.adn, ptr %i.adl, align 8
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.ado = load i64, ptr %i.rr, align 8           ; 2 uses
  %i.adp = add nsw i64 %i.ado, 1
  store i64 %i.adp, ptr %i.rr, align 8
  %i.adq = getelementptr inbounds nuw [16 x i8], ptr %i.rq, i64 %i.ado ; 3 uses
  store ptr %i.adi, ptr %i.adq, align 8
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  store i64 1, ptr %i.adr, align 16
  store ptr %i.adq, ptr %i.adg, align 8
  %.pre886 = load ptr, ptr %i.adh, align 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ads = phi ptr [ %.pre886, %bb.bx ], [ %i.adi, %bb.bw ]
  %i.adt = load ptr, ptr %i.vk, align 16          ; 2 uses
  %i.adu = icmp eq ptr %i.adt, %i.ads
  br i1 %i.adu, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.adv = load i64, ptr %i.rp, align 16
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.adv
  store ptr %i.adh, ptr %i.adw, align 8
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adh, i64 8 ; 2 uses
  %i.ady = load i64, ptr %i.adx, align 8          ; 2 uses
  %i.adz = add i64 %i.ady, 1
  store i64 %i.adz, ptr %i.adx, align 8
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.aea = load i64, ptr %i.rr, align 8           ; 2 uses
  %i.aeb = add nsw i64 %i.aea, 1
  store i64 %i.aeb, ptr %i.rr, align 8
  %i.aec = getelementptr inbounds nuw [16 x i8], ptr %i.rq, i64 %i.aea ; 3 uses
  store ptr %i.adt, ptr %i.aec, align 8
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i64 1, ptr %i.aed, align 16
  %i.aee = load i64, ptr %i.rp, align 16
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.aee
  store ptr %i.aec, ptr %i.aef, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  %.pre887 = load i64, ptr %.phi.trans.insert, align 8
  %i.aeg = add i64 %.pre887, -1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.aeh = phi i64 [ %i.aeg, %bb.ca ], [ %i.ady, %bb.bz ] ; 2 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  store i64 %i.aeh, ptr %i.aei, align 8
  %i.aej = icmp eq i64 %i.aeh, 0
  br i1 %i.aej, label %bb.cc, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

bb.cc:                                            ; preds = %bb.cb
  %i.aek = load ptr, ptr %i.adh, align 8          ; 6 uses
  %i.ael = icmp eq ptr %i.aek, null
  br i1 %i.ael, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit, label %.preheader762

.preheader762:                                    ; preds = %bb.cc
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aek, i64 32
  %i.aen = load ptr, ptr %i.aem, align 8          ; 3 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aek, i64 24
  %i.aep = load i64, ptr %i.aeo, align 8          ; 3 uses
  %.not.i208 = icmp eq ptr %i.aen, null
  br i1 %.not.i208, label %.noexc210, label %bb.cd

bb.cd:                                            ; preds = %.preheader762
  %i.aeq = mul i64 %i.aep, 80                     ; 2 uses
  %i.aer = icmp ugt i64 %i.aeq, 29360127
  br i1 %i.aer, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aet = load i8, ptr %i.aes, align 8, !range !49, !noundef !50
  %i.aeu = trunc nuw i8 %i.aet to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.aen, i64 noundef %i.aeq, i1 noundef zeroext %i.aeu)
          to label %.noexc210 unwind label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.aen)
          to label %.noexc210 unwind label %bb.ch

.noexc210:                                        ; preds = %bb.cf, %bb.ce, %.preheader762
  %.not9.i209 = icmp eq i64 %i.aep, 0
  br i1 %.not9.i209, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131, label %bb.cg

bb.cg:                                            ; preds = %.noexc210
  %i.aev = load ptr, ptr %i.aek, align 8          ; 2 uses
  %i.aew = mul i64 %i.aep, -80
  %i.aex = load ptr, ptr %i.aev, align 8
  %i.aey = load ptr, ptr %i.aex, align 8
  invoke void %i.aey(ptr noundef nonnull align 8 dereferenceable(8) %i.aev, i64 noundef %i.aew, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131 unwind label %bb.ch, !inline_history !1

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.aez = landingpad { ptr, i32 }
          catch ptr null
  %i.afa = extractvalue { ptr, i32 } %i.aez, 0
  call void @__clang_call_terminate(ptr %i.afa) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131: ; preds = %bb.cg, %.noexc210
  call void @_ZdlPv(ptr noundef nonnull %i.aek) #28
  %.pre888 = load ptr, ptr %55, align 8
  br label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.cb, %bb.cc, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131
  %i.afb = phi ptr [ null, %bb.cb ], [ null, %bb.cc ], [ %.pre888, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131 ] ; 6 uses
  %i.afc = load i64, ptr %53, align 16
  store i64 %i.afc, ptr %i.xk, align 16
  %i.afd = load <4 x float>, ptr %i.sm, align 16
  store <4 x float> %i.afd, ptr %i.xo, align 16
  %i.afe = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  %i.aff = load <4 x float>, ptr %i.ub, align 16
  store <4 x float> %i.aff, ptr %i.afe, align 16
  %i.afg = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  %i.afh = load <4 x float>, ptr %i.sn, align 16
  store <4 x float> %i.afh, ptr %i.afg, align 16
  %i.afi = getelementptr inbounds nuw i8, ptr %i.xk, i64 64
  %i.afj = load <4 x float>, ptr %i.uc, align 16
  store <4 x float> %i.afj, ptr %i.afi, align 16
  %i.afk = getelementptr inbounds nuw i8, ptr %i.xk, i64 80
  %i.afl = load <4 x float>, ptr %i.so, align 16
  store <4 x float> %i.afl, ptr %i.afk, align 16
  %i.afm = getelementptr inbounds nuw i8, ptr %i.xk, i64 96
  %i.afn = load <4 x float>, ptr %i.ud, align 16
  store <4 x float> %i.afn, ptr %i.afm, align 16
  %i.afo = getelementptr inbounds nuw i8, ptr %i.xk, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.afo, ptr noundef nonnull align 16 dereferenceable(32) %i.ue, i64 32, i1 false)
  %i.afp = getelementptr inbounds nuw i8, ptr %i.xk, i64 144
  %i.afq = load <4 x float>, ptr %i.ug, align 16
  store <4 x float> %i.afq, ptr %i.afp, align 16
  %i.afr = load ptr, ptr %i.ui, align 16
  %i.afs = getelementptr inbounds nuw i8, ptr %i.xk, i64 160
  store ptr %i.afr, ptr %i.afs, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.xn, ptr noundef nonnull align 16 dereferenceable(64) %i.sp, i64 16, i1 false)
  %i.aft = getelementptr inbounds nuw i8, ptr %i.xk, i64 192
  %i.afu = load i64, ptr %i.st, align 16
  store i64 %i.afu, ptr %i.aft, align 16
  %i.afv = getelementptr inbounds nuw i8, ptr %i.xk, i64 208
  %i.afw = load <4 x float>, ptr %i.wg, align 16
  store <4 x float> %i.afw, ptr %i.afv, align 16
  %i.afx = getelementptr inbounds nuw i8, ptr %i.xk, i64 224
  %i.afy = load <4 x float>, ptr %i.wi, align 16
  store <4 x float> %i.afy, ptr %i.afx, align 16
  %i.afz = load i64, ptr %i.rp, align 16
  %i.aga = getelementptr inbounds nuw [240 x i8], ptr %52, i64 %i.afz ; 14 uses
  %i.agb = load i64, ptr %54, align 16
  store i64 %i.agb, ptr %i.aga, align 16
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %i.agd = load <4 x float>, ptr %i.su, align 16
  store <4 x float> %i.agd, ptr %i.agc, align 16
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 32
  %i.agf = load <4 x float>, ptr %i.vd, align 16
  store <4 x float> %i.agf, ptr %i.age, align 16
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aga, i64 48
  %i.agh = load <4 x float>, ptr %i.sv, align 16
  store <4 x float> %i.agh, ptr %i.agg, align 16
  %i.agi = getelementptr inbounds nuw i8, ptr %i.aga, i64 64
  %i.agj = load <4 x float>, ptr %i.ve, align 16
  store <4 x float> %i.agj, ptr %i.agi, align 16
  %i.agk = getelementptr inbounds nuw i8, ptr %i.aga, i64 80
  %i.agl = load <4 x float>, ptr %i.sw, align 16
  store <4 x float> %i.agl, ptr %i.agk, align 16
  %i.agm = getelementptr inbounds nuw i8, ptr %i.aga, i64 96
  %i.agn = load <4 x float>, ptr %i.vf, align 16
  store <4 x float> %i.agn, ptr %i.agm, align 16
  %i.ago = getelementptr inbounds nuw i8, ptr %i.aga, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ago, ptr noundef nonnull align 16 dereferenceable(32) %i.vg, i64 32, i1 false)
  %i.agp = getelementptr inbounds nuw i8, ptr %i.aga, i64 144
  %i.agq = load <4 x float>, ptr %i.vi, align 16
  store <4 x float> %i.agq, ptr %i.agp, align 16
  %i.agr = load ptr, ptr %i.vk, align 16
  %i.ags = getelementptr inbounds nuw i8, ptr %i.aga, i64 160
  store ptr %i.agr, ptr %i.ags, align 16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.aga, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.agt, ptr noundef nonnull align 16 dereferenceable(64) %i.sx, i64 16, i1 false)
  %i.agu = getelementptr inbounds nuw i8, ptr %i.aga, i64 192
  %i.agv = load i64, ptr %i.tb, align 16
  store i64 %i.agv, ptr %i.agu, align 16
  %i.agw = getelementptr inbounds nuw i8, ptr %i.aga, i64 208
  %i.agx = load <4 x float>, ptr %i.wl, align 16
  store <4 x float> %i.agx, ptr %i.agw, align 16
  %i.agy = getelementptr inbounds nuw i8, ptr %i.aga, i64 224
  %i.agz = load <4 x float>, ptr %i.wn, align 16
  store <4 x float> %i.agz, ptr %i.agy, align 16
  %i.aha = load i64, ptr %i.rp, align 16
  %i.ahb = add i64 %i.aha, 1                      ; 2 uses
  store i64 %i.ahb, ptr %i.rp, align 16
  %.not.i271 = icmp eq ptr %i.afb, null
  br i1 %.not.i271, label %bb.cn, label %.preheader.i.i272

.preheader.i.i272:                                ; preds = %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.afb, i64 32
  %i.ahd = load ptr, ptr %i.ahc, align 8          ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.ahf = load i64, ptr %i.ahe, align 8          ; 3 uses
  %.not.i.i.i273 = icmp eq ptr %i.ahd, null
  br i1 %.not.i.i.i273, label %.noexc.i.i274, label %bb.ci

bb.ci:                                            ; preds = %.preheader.i.i272
  %i.ahg = mul i64 %i.ahf, 80                     ; 2 uses
  %i.ahh = icmp ugt i64 %i.ahg, 29360127
  br i1 %i.ahh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.afb, i64 8
  %i.ahj = load i8, ptr %i.ahi, align 8, !range !49, !noundef !50
  %i.ahk = trunc nuw i8 %i.ahj to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.ahd, i64 noundef %i.ahg, i1 noundef zeroext %i.ahk)
          to label %.noexc.i.i274 unwind label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.ahd)
          to label %.noexc.i.i274 unwind label %bb.cm

.noexc.i.i274:                                    ; preds = %bb.ck, %bb.cj, %.preheader.i.i272
  %.not9.i.i.i275 = icmp eq i64 %i.ahf, 0
  br i1 %.not9.i.i.i275, label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i276, label %bb.cl

bb.cl:                                            ; preds = %.noexc.i.i274
  %i.ahl = load ptr, ptr %i.afb, align 8          ; 2 uses
  %i.ahm = mul i64 %i.ahf, -80
  %i.ahn = load ptr, ptr %i.ahl, align 8
  %i.aho = load ptr, ptr %i.ahn, align 8
  invoke void %i.aho(ptr noundef nonnull align 8 dereferenceable(8) %i.ahl, i64 noundef %i.ahm, i1 noundef zeroext true)
          to label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i276 unwind label %bb.cm, !inline_history !1

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %bb.cj
  %i.ahp = landingpad { ptr, i32 }
          catch ptr null
  %i.ahq = extractvalue { ptr, i32 } %i.ahp, 0
  call void @__clang_call_terminate(ptr %i.ahq) #31
end_hunk_7
begin_hunk_8_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseERKNS1_11BuildRecordES9_b:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tz, ptr noundef nonnull align 16 dereferenceable(16) %i.tu, i64 16, i1 false)
  store <4 x float> %i.ack, ptr %i.si, align 16
  store <4 x float> %i.acl, ptr %i.tv, align 16
  store <4 x float> %i.acm, ptr %i.sj, align 16
  store <4 x float> %i.acn, ptr %i.tw, align 16
  store <4 x float> %i.aco, ptr %i.sk, align 16
  store <4 x float> %i.acp, ptr %i.tx, align 16
  store i64 %i.aci, ptr %i.ty, align 16
  store i64 %i.ach, ptr %.sroa.17784.96..sroa_idx, align 8
  %i.acq = load <2 x float>, ptr %.sroa.20786.112..sroa_idx, align 16
  store <2 x float> %i.acq, ptr %i.ua, align 16
  %i.acr = load <2 x float>, ptr %.sroa.22788.112..sroa_idx, align 8 ; 3 uses
  %i.acs = fcmp olt <2 x float> %i.acr, %.sroa.01.0.copyload.i276
  %i.act = shufflevector <2 x float> %.sroa.01.0.copyload.i276, <2 x float> %i.acr, <2 x i32> <i32 0, i32 3>
  %i.acu = shufflevector <2 x float> %i.acr, <2 x float> %.sroa.01.0.copyload.i276, <2 x i32> <i32 0, i32 3>
  %i.acv = select <2 x i1> %i.acs, <2 x float> %i.act, <2 x float> %i.acu
  store <2 x float> %i.acv, ptr %i.ub, align 8
  store ptr %i.acj, ptr %i.uc, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15, !noalias !5282
  store ptr %i.aas, ptr %25, align 8, !noalias !5282
  store ptr %20, ptr %i.ud, align 8, !noalias !5282
  store ptr %i.so, ptr %i.ue, align 8, !noalias !5282
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15, !noalias !5282
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15, !noalias !5282
  store <4 x float> splat (float +inf), ptr %27, align 16, !noalias !5282
  store <4 x float> splat (float -inf), ptr %i.uf, align 16, !noalias !5282
  store <4 x float> splat (float +inf), ptr %i.ug, align 16, !noalias !5282
  store <4 x float> splat (float -inf), ptr %i.uh, align 16, !noalias !5282
  store <4 x float> splat (float +inf), ptr %i.ui, align 16, !noalias !5282
  store <4 x float> splat (float -inf), ptr %i.uj, align 16, !noalias !5282
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.uk, i8 0, i64 36, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.ul, align 4, !noalias !5282
  store float 0.000000e+00, ptr %i.um, align 4, !noalias !5282
  %i.acw = icmp ult i64 %.pre-phi, 3072
  br i1 %i.acw, label %bb.bz, label %bb.ca, !prof !56

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !5285
  store i64 %i.acg, ptr %13, align 8, !noalias !5285
  store i64 %i.acf, ptr %i.uo, align 8, !noalias !5285
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc305 unwind label %bb.cf

.noexc305:                                        ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !5285
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.ca:                                            ; preds = %bb.by
  %i.acx = add i64 %.pre-phi, 127
  %i.acy = lshr i64 %i.acx, 7                     ; 2 uses
  %i.acz = icmp eq i64 %i.acy, 1
  br i1 %i.acz, label %bb.cb, label %bb.cc, !prof !56

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !5286
  store i64 %i.acg, ptr %12, align 8, !noalias !5286
  store i64 %i.acf, ptr %i.un, align 8, !noalias !5286
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc308 unwind label %bb.cf

.noexc308:                                        ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !5286
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.cc:                                            ; preds = %bb.ca
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, i64 noundef %i.acy, i64 noundef %i.acg, i64 noundef %i.acf, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %27, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit unwind label %bb.cf

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit: ; preds = %bb.cc, %.noexc308, %.noexc305
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !5282
  %i.ada = load i64, ptr %i.aav, align 16, !noalias !5282 ; 5 uses
  %i.adb = load i64, ptr %i.uq, align 8, !noalias !5282
  %i.adc = load i64, ptr %i.up, align 16, !noalias !5282
  %i.add = sub i64 %i.adb, %i.adc                 ; 2 uses
  %i.ade = add i64 %i.add, %i.ada                 ; 2 uses
  store i64 %i.ada, ptr %i.up, align 16, !noalias !5282
  store i64 %i.ade, ptr %i.uq, align 8, !noalias !5282
  %i.adf = load i64, ptr %i.aaw, align 8, !noalias !5282 ; 2 uses
  %i.adg = sub i64 %i.adf, %i.ada
  %.not28.i279 = icmp eq i64 %i.add, %i.adg
  br i1 %.not28.i279, label %.noexc252, label %bb.cd

bb.cd:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.adh = getelementptr inbounds nuw i8, ptr %i.aas, i64 32
  %i.adi = load ptr, ptr %i.adh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15, !noalias !5282
  store ptr %20, ptr %28, align 8, !noalias !5282
  %i.adj = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.adi, i64 noundef %i.ada, i64 noundef %i.adf, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ce unwind label %bb.cg     ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  store i64 %i.adj, ptr %i.uq, align 8, !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !5282
  %.pre980 = load i64, ptr %i.up, align 16
  br label %.noexc252

bb.cf:                                            ; preds = %bb.cc, %bb.cb, %bb.bz
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !5282
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cd
  %i.adl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !5282
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i278 = phi { ptr, i32 } [ %i.adk, %bb.cf ], [ %i.adl, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !5282
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bx, %bb.bw
  %.pn.pn.i274 = phi { ptr, i32 } [ %.pn.i278, %bb.ch ], [ %i.acd, %bb.bw ], [ %i.ace, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !5282
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #15
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bv
  %.pn.pn.pn.i266 = phi { ptr, i32 } [ %.pn.pn.i274, %bb.ci ], [ %i.acc, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !5282
  br label %.body284

.noexc252:                                        ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit, %bb.ce
  %i.adm = phi i64 [ %i.ade, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %i.adj, %bb.ce ]
  %i.adn = phi i64 [ %i.ada, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %.pre980, %bb.ce ]
  %.sroa.0.0.copyload.i280 = load <2 x float>, ptr %20, align 8, !noalias !5282 ; 3 uses
  %i.ado = load <4 x float>, ptr %26, align 16
  %i.adp = load <4 x float>, ptr %i.ur, align 16
  %i.adq = load <4 x float>, ptr %i.us, align 16
  %i.adr = load <4 x float>, ptr %i.ut, align 16
  %i.ads = load <4 x float>, ptr %i.uu, align 16
  %i.adt = load <4 x float>, ptr %i.uv, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vb, ptr noundef nonnull align 16 dereferenceable(16) %i.uw, i64 16, i1 false)
  store <4 x float> %i.ado, ptr %i.sl, align 16
  store <4 x float> %i.adp, ptr %i.ux, align 16
  store <4 x float> %i.adq, ptr %i.sm, align 16
  store <4 x float> %i.adr, ptr %i.uy, align 16
  store <4 x float> %i.ads, ptr %i.sn, align 16
  store <4 x float> %i.adt, ptr %i.uz, align 16
  store i64 %i.adn, ptr %i.va, align 16
  store i64 %i.adm, ptr %.sroa.17761.96..sroa_idx, align 8
  %i.adu = load <2 x float>, ptr %.sroa.20763.112..sroa_idx, align 16
  store <2 x float> %i.adu, ptr %i.vc, align 16
  %i.adv = load <2 x float>, ptr %.sroa.22765.112..sroa_idx, align 8 ; 3 uses
  %i.adw = fcmp olt <2 x float> %i.adv, %.sroa.0.0.copyload.i280
  %i.adx = shufflevector <2 x float> %.sroa.0.0.copyload.i280, <2 x float> %i.adv, <2 x i32> <i32 0, i32 3>
  %i.ady = shufflevector <2 x float> %i.adv, <2 x float> %.sroa.0.0.copyload.i280, <2 x i32> <i32 0, i32 3>
  %i.adz = select <2 x i1> %i.adw, <2 x float> %i.adx, <2 x float> %i.ady
  store <2 x float> %i.adz, ptr %i.vd, align 8
  store ptr %i.aas, ptr %i.ve, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !5282
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !5282
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit

bb.ck:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc253 unwind label %bb.da

.noexc253:                                        ; preds = %bb.ck
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit unwind label %bb.da

bb.cl:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc255 unwind label %bb.da

.noexc255:                                        ; preds = %bb.cl
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit unwind label %bb.da

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit: ; preds = %bb.bj, %.noexc251, %.noexc253, %.noexc255, %.noexc252
  %i.aea = phi i1 [ true, %.noexc252 ], [ %.065884, %.noexc255 ], [ %.065884, %.noexc253 ], [ %.065884, %.noexc251 ], [ %.065884, %bb.bj ] ; 2 uses
  store ptr null, ptr %73, align 8
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %.188 ; 2 uses
  %i.aec = load ptr, ptr %i.aeb, align 8          ; 8 uses
  %i.aed = load ptr, ptr %i.uc, align 16          ; 3 uses
  %i.aee = load ptr, ptr %i.aec, align 8
  %i.aef = icmp eq ptr %i.aed, %i.aee
  br i1 %i.aef, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8
  %i.aei = add i64 %i.aeh, 1
  store i64 %i.aei, ptr %i.aeg, align 8
  br label %bb.co

bb.cn:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit
  %i.aej = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aek = add nsw i64 %i.aej, 1
  store i64 %i.aek, ptr %i.pp, align 8
  %i.ael = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aej ; 3 uses
  store ptr %i.aed, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  store i64 1, ptr %i.aem, align 16
  store ptr %i.ael, ptr %i.aeb, align 8
  %.pre981 = load ptr, ptr %i.aec, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.aen = phi ptr [ %.pre981, %bb.cn ], [ %i.aed, %bb.cm ]
  %i.aeo = load ptr, ptr %i.ve, align 16          ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.aen
  br i1 %i.aep, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.aeq = load i64, ptr %i.pn, align 16
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aeq
  store ptr %i.aec, ptr %i.aer, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aet = load i64, ptr %i.aes, align 8          ; 2 uses
  %i.aeu = add i64 %i.aet, 1
  store i64 %i.aeu, ptr %i.aes, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.aev = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aew = add nsw i64 %i.aev, 1
  store i64 %i.aew, ptr %i.pp, align 8
  %i.aex = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aev ; 3 uses
  store ptr %i.aeo, ptr %i.aex, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  store i64 1, ptr %i.aey, align 16
  %i.aez = load i64, ptr %i.pn, align 16
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aez
  store ptr %i.aex, ptr %i.afa, align 8
  %.phi.trans.insert982 = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %.pre983 = load i64, ptr %.phi.trans.insert982, align 8
  %i.afb = add i64 %.pre983, -1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.afc = phi i64 [ %i.afb, %bb.cq ], [ %i.aet, %bb.cp ] ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i64 %i.afc, ptr %i.afd, align 8
  %i.afe = icmp eq i64 %i.afc, 0
  br i1 %i.afe, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.aff = load ptr, ptr %i.aec, align 8          ; 6 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %bb.cy, label %.preheader856

.preheader856:                                    ; preds = %bb.cs
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afi = load ptr, ptr %i.afh, align 8          ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 24
  %i.afk = load i64, ptr %i.afj, align 8          ; 3 uses
  %.not.i243 = icmp eq ptr %i.afi, null
  br i1 %.not.i243, label %.noexc245, label %bb.ct

bb.ct:                                            ; preds = %.preheader856
  %i.afl = mul i64 %i.afk, 80                     ; 2 uses
  %i.afm = icmp ugt i64 %i.afl, 29360127
  br i1 %i.afm, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afo = load i8, ptr %i.afn, align 8, !range !49, !noundef !50
  %i.afp = trunc nuw i8 %i.afo to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.afi, i64 noundef %i.afl, i1 noundef zeroext %i.afp)
          to label %.noexc245 unwind label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.afi)
          to label %.noexc245 unwind label %bb.cx

.noexc245:                                        ; preds = %bb.cv, %bb.cu, %.preheader856
  %.not9.i244 = icmp eq i64 %i.afk, 0
  br i1 %.not9.i244, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154, label %bb.cw

bb.cw:                                            ; preds = %.noexc245
  %i.afq = load ptr, ptr %i.aff, align 8          ; 2 uses
  %i.afr = mul i64 %i.afk, -80
  %i.afs = load ptr, ptr %i.afq, align 8
  %i.aft = load ptr, ptr %i.afs, align 8
  invoke void %i.aft(ptr noundef nonnull align 8 dereferenceable(8) %i.afq, i64 noundef %i.afr, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154 unwind label %bb.cx, !inline_history !1

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.afu = landingpad { ptr, i32 }
          catch ptr null
  %i.afv = extractvalue { ptr, i32 } %i.afu, 0
  call void @__clang_call_terminate(ptr %i.afv) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154: ; preds = %bb.cw, %.noexc245
  call void @_ZdlPv(ptr noundef nonnull %i.aff) #28
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cr, %bb.cs, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154
  %i.afw = load i64, ptr %70, align 16
  store i64 %i.afw, ptr %i.xd, align 16
  %i.afx = load <4 x float>, ptr %i.si, align 16
  store <4 x float> %i.afx, ptr %i.xg, align 16
  %i.afy = load <4 x float>, ptr %i.tv, align 16
  store <4 x float> %i.afy, ptr %i.xp, align 16
  %i.afz = load <4 x float>, ptr %i.sj, align 16
  store <4 x float> %i.afz, ptr %i.xt, align 16
  %i.aga = load <4 x float>, ptr %i.tw, align 16
  store <4 x float> %i.aga, ptr %i.xu, align 16
  %i.agb = getelementptr inbounds nuw i8, ptr %i.xd, i64 80
  %i.agc = load <4 x float>, ptr %i.sk, align 16
  store <4 x float> %i.agc, ptr %i.agb, align 16
  %i.agd = getelementptr inbounds nuw i8, ptr %i.xd, i64 96
  %i.age = load <4 x float>, ptr %i.tx, align 16
  store <4 x float> %i.age, ptr %i.agd, align 16
  %i.agf = getelementptr inbounds nuw i8, ptr %i.xd, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agf, ptr noundef nonnull align 16 dereferenceable(32) %i.ty, i64 32, i1 false)
  %i.agg = getelementptr inbounds nuw i8, ptr %i.xd, i64 144
  %i.agh = load <4 x float>, ptr %i.ua, align 16
  store <4 x float> %i.agh, ptr %i.agg, align 16
  %i.agi = load ptr, ptr %i.uc, align 16
  %i.agj = getelementptr inbounds nuw i8, ptr %i.xd, i64 160
  store ptr %i.agi, ptr %i.agj, align 16
  %i.agk = load i64, ptr %i.pn, align 16
  %i.agl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %i.agk ; 10 uses
  %i.agm = load i64, ptr %71, align 16
  store i64 %i.agm, ptr %i.agl, align 16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %i.ago = load <4 x float>, ptr %i.sl, align 16
  store <4 x float> %i.ago, ptr %i.agn, align 16
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 32
  %i.agq = load <4 x float>, ptr %i.ux, align 16
  store <4 x float> %i.agq, ptr %i.agp, align 16
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agl, i64 48
  %i.ags = load <4 x float>, ptr %i.sm, align 16
  store <4 x float> %i.ags, ptr %i.agr, align 16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agl, i64 64
  %i.agu = load <4 x float>, ptr %i.uy, align 16
  store <4 x float> %i.agu, ptr %i.agt, align 16
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agl, i64 80
  %i.agw = load <4 x float>, ptr %i.sn, align 16
  store <4 x float> %i.agw, ptr %i.agv, align 16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agl, i64 96
  %i.agy = load <4 x float>, ptr %i.uz, align 16
  store <4 x float> %i.agy, ptr %i.agx, align 16
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agl, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agz, ptr noundef nonnull align 16 dereferenceable(32) %i.va, i64 32, i1 false)
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agl, i64 144
  %i.ahb = load <4 x float>, ptr %i.vc, align 16
  store <4 x float> %i.ahb, ptr %i.aha, align 16
  %i.ahc = load ptr, ptr %i.ve, align 16
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agl, i64 160
  store ptr %i.ahc, ptr %i.ahd, align 16
  %i.ahe = load i64, ptr %i.pn, align 16
  %i.ahf = add i64 %i.ahe, 1                      ; 4 uses
  store i64 %i.ahf, ptr %i.pn, align 16
  %.pre984 = load i64, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  %i.ahg = icmp ult i64 %i.ahf, %.pre984
  br i1 %i.ahg, label %.preheader857, label %.thread

bb.cz:                                            ; preds = %bb.bi, %bb.bg
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.bl, %.noexc255, %bb.cl, %.noexc253, %bb.ck, %bb.bk
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %.body284

.body284:                                         ; preds = %bb.da, %bb.cj
  %.pn96 = phi { ptr, i32 } [ %.pn.pn.pn.i266, %bb.cj ], [ %i.ahi, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  br label %bb.db

bb.db:                                            ; preds = %.body284, %bb.cz
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %.body284 ], [ %i.ahh, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  br label %.body

.thread:                                          ; preds = %bb.cy, %._crit_edge..thread.loopexit_crit_edge, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.ahj = phi i64 [ %i.sf, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.pre985.pre, %._crit_edge..thread.loopexit_crit_edge ], [ %i.ahf, %bb.cy ] ; 5 uses
  %.065.lcssa = phi i1 [ %i.pm, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.065884, %._crit_edge..thread.loopexit_crit_edge ], [ %i.aea, %bb.cy ] ; 3 uses
  %.not926 = icmp eq i64 %i.ahj, 0
  br i1 %.not926, label %._crit_edge891, label %.lr.ph890

.lr.ph890:                                        ; preds = %.thread
  %.sroa.013.0.copyload = load float, ptr %i.ci, align 8 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %i.cj, align 4 ; 2 uses
  %min.iters.check1192 = icmp ult i64 %i.ahj, 8
  br i1 %min.iters.check1192, label %scalar.ph1191.preheader, label %vector.ph1193

vector.ph1193:                                    ; preds = %.lr.ph890
  %n.vec1194 = and i64 %i.ahj, -8                 ; 3 uses
  %i.ahk = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.065.lcssa, i64 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.013.0.copyload, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1195 = insertelement <4 x float> poison, float %.sroa.4.0.copyload, i64 0
  %broadcast.splat1196 = shufflevector <4 x float> %broadcast.splatinsert1195, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1193
  %index1198 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1200, %vector.body1197 ] ; 9 uses
  %vec.phi = phi <4 x i1> [ %i.ahk, %vector.ph1193 ], [ %i.ajv, %vector.body1197 ]
  %vec.phi1199 = phi <4 x i1> [ zeroinitializer, %vector.ph1193 ], [ %i.ajw, %vector.body1197 ]
  %i.ahl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahm = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.aho = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahp = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahr = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahs = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahl, i64 152
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahm, i64 328
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 504
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aho, i64 680
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahp, i64 856
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1032
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1208
end_hunk_8
begin_hunk_9_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERKNS1_11BuildRecordES9_:bb.a
  %i.wd = icmp ult i64 %.pre-phi, 3072
  br i1 %i.wd, label %bb.be, label %bb.bf, !prof !56

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !5410
  store i64 %i.vn, ptr %8, align 8, !noalias !5410
  store i64 %i.vm, ptr %i.pe, align 8, !noalias !5410
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %18, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc247 unwind label %bb.bk

.noexc247:                                        ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !5410
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.bf:                                            ; preds = %bb.bd
  %i.we = add i64 %.pre-phi, 127
  %i.wf = lshr i64 %i.we, 7                       ; 2 uses
  %i.wg = icmp eq i64 %i.wf, 1
  br i1 %i.wg, label %bb.bg, label %bb.bh, !prof !56

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !5411
  store i64 %i.vn, ptr %7, align 8, !noalias !5411
  store i64 %i.vm, ptr %i.pd, align 8, !noalias !5411
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %18, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc249 unwind label %bb.bk

.noexc249:                                        ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !5411
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.bh:                                            ; preds = %bb.bf
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %18, i64 noundef %i.wf, i64 noundef %i.vn, i64 noundef %i.vm, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %19, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit unwind label %bb.bk

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit: ; preds = %bb.bh, %.noexc249, %.noexc247
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !5407
  %i.wh = load i64, ptr %i.uc, align 16, !noalias !5407 ; 5 uses
  %i.wi = load i64, ptr %i.pg, align 8, !noalias !5407
  %i.wj = load i64, ptr %i.pf, align 16, !noalias !5407
  %i.wk = sub i64 %i.wi, %i.wj                    ; 2 uses
  %i.wl = add i64 %i.wk, %i.wh                    ; 2 uses
  store i64 %i.wh, ptr %i.pf, align 16, !noalias !5407
  store i64 %i.wl, ptr %i.pg, align 8, !noalias !5407
  %i.wm = load i64, ptr %i.ud, align 8, !noalias !5407 ; 2 uses
  %i.wn = sub i64 %i.wm, %i.wh
  %.not28.i = icmp eq i64 %i.wk, %i.wn
  br i1 %.not28.i, label %.noexc217, label %bb.bi

bb.bi:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.wo = getelementptr inbounds nuw i8, ptr %i.tz, i64 32
  %i.wp = load ptr, ptr %i.wo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15, !noalias !5407
  store ptr %12, ptr %20, align 8, !noalias !5407
  %i.wq = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.wp, i64 noundef %i.wh, i64 noundef %i.wm, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bl     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  store i64 %i.wq, ptr %i.pg, align 8, !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !5407
  %.pre773 = load i64, ptr %i.pf, align 16
  br label %.noexc217

bb.bk:                                            ; preds = %bb.bh, %bb.bg, %bb.be
  %i.wr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !5407
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.ws = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !5407
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn.i = phi { ptr, i32 } [ %i.wr, %bb.bk ], [ %i.ws, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !5407
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bc, %bb.bb
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bm ], [ %i.vk, %bb.bb ], [ %i.vl, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15, !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !5407
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #15
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ba
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.bn ], [ %i.vj, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !5407
  br label %.body239

.noexc217:                                        ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit, %bb.bj
  %i.wt = phi i64 [ %i.wl, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %i.wq, %bb.bj ]
  %i.wu = phi i64 [ %i.wh, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_8InstanceEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %.pre773, %bb.bj ]
  %.sroa.0.0.copyload.i237 = load <2 x float>, ptr %12, align 8, !noalias !5407 ; 3 uses
  %i.wv = load <4 x float>, ptr %18, align 16
  %i.ww = load <4 x float>, ptr %i.ph, align 16
  %i.wx = load <4 x float>, ptr %i.pi, align 16
  %i.wy = load <4 x float>, ptr %i.pj, align 16
  %i.wz = load <4 x float>, ptr %i.pk, align 16
  %i.xa = load <4 x float>, ptr %i.pl, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.pr, ptr noundef nonnull align 16 dereferenceable(16) %i.pm, i64 16, i1 false)
  store <4 x float> %i.wv, ptr %i.ne, align 16
  store <4 x float> %i.ww, ptr %i.pn, align 16
  store <4 x float> %i.wx, ptr %i.nf, align 16
  store <4 x float> %i.wy, ptr %i.po, align 16
  store <4 x float> %i.wz, ptr %i.ng, align 16
  store <4 x float> %i.xa, ptr %i.pp, align 16
  store i64 %i.wu, ptr %i.pq, align 16
  store i64 %i.wt, ptr %.sroa.17.96..sroa_idx, align 8
  %i.xb = load <2 x float>, ptr %.sroa.20562.112..sroa_idx, align 16
  store <2 x float> %i.xb, ptr %i.ps, align 16
  %i.xc = load <2 x float>, ptr %.sroa.22563.112..sroa_idx, align 8 ; 3 uses
  %i.xd = fcmp olt <2 x float> %i.xc, %.sroa.0.0.copyload.i237
  %i.xe = shufflevector <2 x float> %.sroa.0.0.copyload.i237, <2 x float> %i.xc, <2 x i32> <i32 0, i32 3>
  %i.xf = shufflevector <2 x float> %i.xc, <2 x float> %.sroa.0.0.copyload.i237, <2 x i32> <i32 0, i32 3>
  %i.xg = select <2 x i1> %i.xd, <2 x float> %i.xe, <2 x float> %i.xf
  store <2 x float> %i.xg, ptr %i.pt, align 8
  store ptr %i.tz, ptr %i.pu, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15, !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !5407
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !5407
  %.pre774 = load ptr, ptr %48, align 8
  %i.xh = icmp ne ptr %.pre774, null
  %i.xi = or i1 %.082, %i.xh
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit

bb.bp:                                            ; preds = %bb.ao
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.ry)
          to label %.noexc218 unwind label %bb.ei

.noexc218:                                        ; preds = %bb.bp
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.ry, ptr noundef nonnull align 16 dereferenceable(152) %i.mw, ptr noundef nonnull align 16 dereferenceable(152) %i.ne)
          to label %.noexc219 unwind label %bb.ei

bb.bq:                                            ; preds = %bb.ao
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.ry)
          to label %.noexc220 unwind label %bb.ei

.noexc220:                                        ; preds = %bb.bq
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.ry, ptr noundef nonnull align 16 dereferenceable(152) %i.mw, ptr noundef nonnull align 16 dereferenceable(152) %i.ne)
          to label %.noexc219 unwind label %bb.ei

.noexc219:                                        ; preds = %.noexc220, %.noexc218, %.noexc216, %bb.ao
  store ptr null, ptr %48, align 8
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit: ; preds = %.noexc219, %.noexc217
  %i.xj = phi i1 [ %.082, %.noexc219 ], [ %i.xi, %.noexc217 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %49, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.mw)
          to label %bb.br unwind label %bb.ej

bb.br:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.mz, ptr noundef nonnull align 16 dereferenceable(64) %49, i64 16, i1 false)
  %i.xk = load i64, ptr %i.qp, align 16
  store i64 %i.xk, ptr %i.nd, align 16
  %i.xl = load <4 x float>, ptr %i.qr, align 16
  store <4 x float> %i.xl, ptr %i.qq, align 16
  %i.xm = load <4 x float>, ptr %i.qt, align 16
  store <4 x float> %i.xm, ptr %i.qs, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_8InstanceEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_17InstancePrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %50, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.ne)
          to label %bb.bs unwind label %bb.ek

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.nh, ptr noundef nonnull align 16 dereferenceable(64) %50, i64 16, i1 false)
  %i.xn = load i64, ptr %i.qu, align 16
  store i64 %i.xn, ptr %i.nl, align 16
  %i.xo = load <4 x float>, ptr %i.qw, align 16
  store <4 x float> %i.xo, ptr %i.qv, align 16
  %i.xp = load <4 x float>, ptr %i.qy, align 16
  store <4 x float> %i.xp, ptr %i.qx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #15
  store ptr null, ptr %48, align 8
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %.080.lcssa ; 2 uses
  %i.xr = load ptr, ptr %i.xq, align 8            ; 8 uses
  %i.xs = load ptr, ptr %i.os, align 16           ; 3 uses
  %i.xt = load ptr, ptr %i.xr, align 8
  %i.xu = icmp eq ptr %i.xs, %i.xt
  br i1 %i.xu, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xr, i64 8 ; 2 uses
  %i.xw = load i64, ptr %i.xv, align 8
  %i.xx = add i64 %i.xw, 1
  store i64 %i.xx, ptr %i.xv, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.xy = load i64, ptr %i.mb, align 8            ; 2 uses
  %i.xz = add nsw i64 %i.xy, 1
  store i64 %i.xz, ptr %i.mb, align 8
  %i.ya = getelementptr inbounds nuw [16 x i8], ptr %i.ma, i64 %i.xy ; 3 uses
  store ptr %i.xs, ptr %i.ya, align 8
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  store i64 1, ptr %i.yb, align 16
  store ptr %i.ya, ptr %i.xq, align 8
  %.pre775 = load ptr, ptr %i.xr, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.yc = phi ptr [ %.pre775, %bb.bu ], [ %i.xs, %bb.bt ]
  %i.yd = load ptr, ptr %i.pu, align 16           ; 2 uses
  %i.ye = icmp eq ptr %i.yd, %i.yc
  br i1 %i.ye, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.yf = load i64, ptr %i.lz, align 16
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.yf
  store ptr %i.xr, ptr %i.yg, align 8
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xr, i64 8 ; 2 uses
  %i.yi = load i64, ptr %i.yh, align 8            ; 2 uses
  %i.yj = add i64 %i.yi, 1
  store i64 %i.yj, ptr %i.yh, align 8
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.yk = load i64, ptr %i.mb, align 8            ; 2 uses
  %i.yl = add nsw i64 %i.yk, 1
  store i64 %i.yl, ptr %i.mb, align 8
  %i.ym = getelementptr inbounds nuw [16 x i8], ptr %i.ma, i64 %i.yk ; 3 uses
  store ptr %i.yd, ptr %i.ym, align 8
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  store i64 1, ptr %i.yn, align 16
  %i.yo = load i64, ptr %i.lz, align 16
  %i.yp = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.yo
  store ptr %i.ym, ptr %i.yp, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %.pre776 = load i64, ptr %.phi.trans.insert, align 8
  %i.yq = add i64 %.pre776, -1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.yr = phi i64 [ %i.yq, %bb.bx ], [ %i.yi, %bb.bw ] ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  store i64 %i.yr, ptr %i.ys, align 8
  %i.yt = icmp eq i64 %i.yr, 0
  br i1 %i.yt, label %bb.bz, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

bb.bz:                                            ; preds = %bb.by
  %i.yu = load ptr, ptr %i.xr, align 8            ; 6 uses
  %i.yv = icmp eq ptr %i.yu, null
  br i1 %i.yv, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit, label %.preheader660

.preheader660:                                    ; preds = %bb.bz
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 32
  %i.yx = load ptr, ptr %i.yw, align 8            ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 24
  %i.yz = load i64, ptr %i.yy, align 8            ; 3 uses
  %.not.i208 = icmp eq ptr %i.yx, null
  br i1 %.not.i208, label %.noexc210, label %bb.ca

bb.ca:                                            ; preds = %.preheader660
  %i.za = mul i64 %i.yz, 80                       ; 2 uses
  %i.zb = icmp ugt i64 %i.za, 29360127
  br i1 %i.zb, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.zd = load i8, ptr %i.zc, align 8, !range !49, !noundef !50
  %i.ze = trunc nuw i8 %i.zd to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.yx, i64 noundef %i.za, i1 noundef zeroext %i.ze)
          to label %.noexc210 unwind label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.yx)
          to label %.noexc210 unwind label %bb.ce

.noexc210:                                        ; preds = %bb.cc, %bb.cb, %.preheader660
  %.not9.i209 = icmp eq i64 %i.yz, 0
  br i1 %.not9.i209, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131, label %bb.cd

bb.cd:                                            ; preds = %.noexc210
  %i.zf = load ptr, ptr %i.yu, align 8            ; 2 uses
  %i.zg = mul i64 %i.yz, -80
  %i.zh = load ptr, ptr %i.zf, align 8
  %i.zi = load ptr, ptr %i.zh, align 8
  invoke void %i.zi(ptr noundef nonnull align 8 dereferenceable(8) %i.zf, i64 noundef %i.zg, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131 unwind label %bb.ce, !inline_history !1

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.zj = landingpad { ptr, i32 }
          catch ptr null
  %i.zk = extractvalue { ptr, i32 } %i.zj, 0
  call void @__clang_call_terminate(ptr %i.zk) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131: ; preds = %bb.cd, %.noexc210
  call void @_ZdlPv(ptr noundef nonnull %i.yu) #28
  %.pre777 = load ptr, ptr %48, align 8
  br label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.by, %bb.bz, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131
  %i.zl = phi ptr [ null, %bb.by ], [ null, %bb.bz ], [ %.pre777, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131 ] ; 6 uses
  %i.zm = load i64, ptr %46, align 16
  store i64 %i.zm, ptr %i.ru, align 16
  %i.zn = load <4 x float>, ptr %i.mw, align 16
  store <4 x float> %i.zn, ptr %i.ry, align 16
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ru, i64 32
  %i.zp = load <4 x float>, ptr %i.ol, align 16
  store <4 x float> %i.zp, ptr %i.zo, align 16
  %i.zq = getelementptr inbounds nuw i8, ptr %i.ru, i64 48
  %i.zr = load <4 x float>, ptr %i.mx, align 16
  store <4 x float> %i.zr, ptr %i.zq, align 16
  %i.zs = getelementptr inbounds nuw i8, ptr %i.ru, i64 64
  %i.zt = load <4 x float>, ptr %i.om, align 16
  store <4 x float> %i.zt, ptr %i.zs, align 16
  %i.zu = getelementptr inbounds nuw i8, ptr %i.ru, i64 80
  %i.zv = load <4 x float>, ptr %i.my, align 16
  store <4 x float> %i.zv, ptr %i.zu, align 16
  %i.zw = getelementptr inbounds nuw i8, ptr %i.ru, i64 96
  %i.zx = load <4 x float>, ptr %i.on, align 16
  store <4 x float> %i.zx, ptr %i.zw, align 16
  %i.zy = getelementptr inbounds nuw i8, ptr %i.ru, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.zy, ptr noundef nonnull align 16 dereferenceable(32) %i.oo, i64 32, i1 false)
  %i.zz = getelementptr inbounds nuw i8, ptr %i.ru, i64 144
  %i.aaa = load <4 x float>, ptr %i.oq, align 16
  store <4 x float> %i.aaa, ptr %i.zz, align 16
  %i.aab = load ptr, ptr %i.os, align 16
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ru, i64 160
  store ptr %i.aab, ptr %i.aac, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.rx, ptr noundef nonnull align 16 dereferenceable(64) %i.mz, i64 16, i1 false)
  %i.aad = getelementptr inbounds nuw i8, ptr %i.ru, i64 192
  %i.aae = load i64, ptr %i.nd, align 16
  store i64 %i.aae, ptr %i.aad, align 16
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.ru, i64 208
  %i.aag = load <4 x float>, ptr %i.qq, align 16
  store <4 x float> %i.aag, ptr %i.aaf, align 16
  %i.aah = getelementptr inbounds nuw i8, ptr %i.ru, i64 224
  %i.aai = load <4 x float>, ptr %i.qs, align 16
  store <4 x float> %i.aai, ptr %i.aah, align 16
  %i.aaj = load i64, ptr %i.lz, align 16
  %i.aak = getelementptr inbounds nuw [240 x i8], ptr %45, i64 %i.aaj ; 14 uses
  %i.aal = load i64, ptr %47, align 16
  store i64 %i.aal, ptr %i.aak, align 16
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aan = load <4 x float>, ptr %i.ne, align 16
  store <4 x float> %i.aan, ptr %i.aam, align 16
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aak, i64 32
  %i.aap = load <4 x float>, ptr %i.pn, align 16
  store <4 x float> %i.aap, ptr %i.aao, align 16
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aak, i64 48
  %i.aar = load <4 x float>, ptr %i.nf, align 16
  store <4 x float> %i.aar, ptr %i.aaq, align 16
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aak, i64 64
  %i.aat = load <4 x float>, ptr %i.po, align 16
  store <4 x float> %i.aat, ptr %i.aas, align 16
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aak, i64 80
  %i.aav = load <4 x float>, ptr %i.ng, align 16
  store <4 x float> %i.aav, ptr %i.aau, align 16
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aak, i64 96
  %i.aax = load <4 x float>, ptr %i.pp, align 16
  store <4 x float> %i.aax, ptr %i.aaw, align 16
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aak, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aay, ptr noundef nonnull align 16 dereferenceable(32) %i.pq, i64 32, i1 false)
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aak, i64 144
  %i.aba = load <4 x float>, ptr %i.ps, align 16
  store <4 x float> %i.aba, ptr %i.aaz, align 16
  %i.abb = load ptr, ptr %i.pu, align 16
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aak, i64 160
  store ptr %i.abb, ptr %i.abc, align 16
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aak, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.abd, ptr noundef nonnull align 16 dereferenceable(64) %i.nh, i64 16, i1 false)
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aak, i64 192
  %i.abf = load i64, ptr %i.nl, align 16
  store i64 %i.abf, ptr %i.abe, align 16
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aak, i64 208
  %i.abh = load <4 x float>, ptr %i.qv, align 16
  store <4 x float> %i.abh, ptr %i.abg, align 16
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aak, i64 224
  %i.abj = load <4 x float>, ptr %i.qx, align 16
  store <4 x float> %i.abj, ptr %i.abi, align 16
  %i.abk = load i64, ptr %i.lz, align 16
  %i.abl = add i64 %i.abk, 1                      ; 2 uses
  store i64 %i.abl, ptr %i.lz, align 16
  %.not.i270 = icmp eq ptr %i.zl, null
  br i1 %.not.i270, label %bb.ck, label %.preheader.i.i271

.preheader.i.i271:                                ; preds = %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.abm = getelementptr inbounds nuw i8, ptr %i.zl, i64 32
  %i.abn = load ptr, ptr %i.abm, align 8          ; 3 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.zl, i64 24
  %i.abp = load i64, ptr %i.abo, align 8          ; 3 uses
  %.not.i.i.i272 = icmp eq ptr %i.abn, null
  br i1 %.not.i.i.i272, label %.noexc.i.i273, label %bb.cf

bb.cf:                                            ; preds = %.preheader.i.i271
  %i.abq = mul i64 %i.abp, 80                     ; 2 uses
  %i.abr = icmp ugt i64 %i.abq, 29360127
  br i1 %i.abr, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.abs = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.abt = load i8, ptr %i.abs, align 8, !range !49, !noundef !50
  %i.abu = trunc nuw i8 %i.abt to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.abn, i64 noundef %i.abq, i1 noundef zeroext %i.abu)
          to label %.noexc.i.i273 unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cf
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.abn)
          to label %.noexc.i.i273 unwind label %bb.cj

.noexc.i.i273:                                    ; preds = %bb.ch, %bb.cg, %.preheader.i.i271
  %.not9.i.i.i274 = icmp eq i64 %i.abp, 0
  br i1 %.not9.i.i.i274, label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i275, label %bb.ci

bb.ci:                                            ; preds = %.noexc.i.i273
  %i.abv = load ptr, ptr %i.zl, align 8           ; 2 uses
  %i.abw = mul i64 %i.abp, -80
  %i.abx = load ptr, ptr %i.abv, align 8
  %i.aby = load ptr, ptr %i.abx, align 8
  invoke void %i.aby(ptr noundef nonnull align 8 dereferenceable(8) %i.abv, i64 noundef %i.abw, i1 noundef zeroext true)
          to label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i275 unwind label %bb.cj, !inline_history !1

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.abz = landingpad { ptr, i32 }
          catch ptr null
  %i.aca = extractvalue { ptr, i32 } %i.abz, 0
  call void @__clang_call_terminate(ptr %i.aca) #31
end_hunk_9
begin_hunk_10_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseERKNS1_11BuildRecordES9_b:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tz, ptr noundef nonnull align 16 dereferenceable(16) %i.tu, i64 16, i1 false)
  store <4 x float> %i.ack, ptr %i.si, align 16
  store <4 x float> %i.acl, ptr %i.tv, align 16
  store <4 x float> %i.acm, ptr %i.sj, align 16
  store <4 x float> %i.acn, ptr %i.tw, align 16
  store <4 x float> %i.aco, ptr %i.sk, align 16
  store <4 x float> %i.acp, ptr %i.tx, align 16
  store i64 %i.aci, ptr %i.ty, align 16
  store i64 %i.ach, ptr %.sroa.17784.96..sroa_idx, align 8
  %i.acq = load <2 x float>, ptr %.sroa.20786.112..sroa_idx, align 16
  store <2 x float> %i.acq, ptr %i.ua, align 16
  %i.acr = load <2 x float>, ptr %.sroa.22788.112..sroa_idx, align 8 ; 3 uses
  %i.acs = fcmp olt <2 x float> %i.acr, %.sroa.01.0.copyload.i276
  %i.act = shufflevector <2 x float> %.sroa.01.0.copyload.i276, <2 x float> %i.acr, <2 x i32> <i32 0, i32 3>
  %i.acu = shufflevector <2 x float> %i.acr, <2 x float> %.sroa.01.0.copyload.i276, <2 x i32> <i32 0, i32 3>
  %i.acv = select <2 x i1> %i.acs, <2 x float> %i.act, <2 x float> %i.acu
  store <2 x float> %i.acv, ptr %i.ub, align 8
  store ptr %i.acj, ptr %i.uc, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15, !noalias !5875
  store ptr %i.aas, ptr %25, align 8, !noalias !5875
  store ptr %20, ptr %i.ud, align 8, !noalias !5875
  store ptr %i.so, ptr %i.ue, align 8, !noalias !5875
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15, !noalias !5875
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15, !noalias !5875
  store <4 x float> splat (float +inf), ptr %27, align 16, !noalias !5875
  store <4 x float> splat (float -inf), ptr %i.uf, align 16, !noalias !5875
  store <4 x float> splat (float +inf), ptr %i.ug, align 16, !noalias !5875
  store <4 x float> splat (float -inf), ptr %i.uh, align 16, !noalias !5875
  store <4 x float> splat (float +inf), ptr %i.ui, align 16, !noalias !5875
  store <4 x float> splat (float -inf), ptr %i.uj, align 16, !noalias !5875
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.uk, i8 0, i64 36, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.ul, align 4, !noalias !5875
  store float 0.000000e+00, ptr %i.um, align 4, !noalias !5875
  %i.acw = icmp ult i64 %.pre-phi, 3072
  br i1 %i.acw, label %bb.bz, label %bb.ca, !prof !56

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !5878
  store i64 %i.acg, ptr %13, align 8, !noalias !5878
  store i64 %i.acf, ptr %i.uo, align 8, !noalias !5878
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc305 unwind label %bb.cf

.noexc305:                                        ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !5878
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.ca:                                            ; preds = %bb.by
  %i.acx = add i64 %.pre-phi, 127
  %i.acy = lshr i64 %i.acx, 7                     ; 2 uses
  %i.acz = icmp eq i64 %i.acy, 1
  br i1 %i.acz, label %bb.cb, label %bb.cc, !prof !56

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !5879
  store i64 %i.acg, ptr %12, align 8, !noalias !5879
  store i64 %i.acf, ptr %i.un, align 8, !noalias !5879
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc308 unwind label %bb.cf

.noexc308:                                        ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !5879
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.cc:                                            ; preds = %bb.ca
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, i64 noundef %i.acy, i64 noundef %i.acg, i64 noundef %i.acf, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %27, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit unwind label %bb.cf

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit: ; preds = %bb.cc, %.noexc308, %.noexc305
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !5875
  %i.ada = load i64, ptr %i.aav, align 16, !noalias !5875 ; 5 uses
  %i.adb = load i64, ptr %i.uq, align 8, !noalias !5875
  %i.adc = load i64, ptr %i.up, align 16, !noalias !5875
  %i.add = sub i64 %i.adb, %i.adc                 ; 2 uses
  %i.ade = add i64 %i.add, %i.ada                 ; 2 uses
  store i64 %i.ada, ptr %i.up, align 16, !noalias !5875
  store i64 %i.ade, ptr %i.uq, align 8, !noalias !5875
  %i.adf = load i64, ptr %i.aaw, align 8, !noalias !5875 ; 2 uses
  %i.adg = sub i64 %i.adf, %i.ada
  %.not28.i279 = icmp eq i64 %i.add, %i.adg
  br i1 %.not28.i279, label %.noexc252, label %bb.cd

bb.cd:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.adh = getelementptr inbounds nuw i8, ptr %i.aas, i64 32
  %i.adi = load ptr, ptr %i.adh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15, !noalias !5875
  store ptr %20, ptr %28, align 8, !noalias !5875
  %i.adj = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.adi, i64 noundef %i.ada, i64 noundef %i.adf, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ce unwind label %bb.cg     ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  store i64 %i.adj, ptr %i.uq, align 8, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !5875
  %.pre980 = load i64, ptr %i.up, align 16
  br label %.noexc252

bb.cf:                                            ; preds = %bb.cc, %bb.cb, %bb.bz
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !5875
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cd
  %i.adl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !5875
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i278 = phi { ptr, i32 } [ %i.adk, %bb.cf ], [ %i.adl, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !5875
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bx, %bb.bw
  %.pn.pn.i274 = phi { ptr, i32 } [ %.pn.i278, %bb.ch ], [ %i.acd, %bb.bw ], [ %i.ace, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !5875
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #15
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bv
  %.pn.pn.pn.i266 = phi { ptr, i32 } [ %.pn.pn.i274, %bb.ci ], [ %i.acc, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !5875
  br label %.body284

.noexc252:                                        ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit, %bb.ce
  %i.adm = phi i64 [ %i.ade, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %i.adj, %bb.ce ]
  %i.adn = phi i64 [ %i.ada, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %.pre980, %bb.ce ]
  %.sroa.0.0.copyload.i280 = load <2 x float>, ptr %20, align 8, !noalias !5875 ; 3 uses
  %i.ado = load <4 x float>, ptr %26, align 16
  %i.adp = load <4 x float>, ptr %i.ur, align 16
  %i.adq = load <4 x float>, ptr %i.us, align 16
  %i.adr = load <4 x float>, ptr %i.ut, align 16
  %i.ads = load <4 x float>, ptr %i.uu, align 16
  %i.adt = load <4 x float>, ptr %i.uv, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vb, ptr noundef nonnull align 16 dereferenceable(16) %i.uw, i64 16, i1 false)
  store <4 x float> %i.ado, ptr %i.sl, align 16
  store <4 x float> %i.adp, ptr %i.ux, align 16
  store <4 x float> %i.adq, ptr %i.sm, align 16
  store <4 x float> %i.adr, ptr %i.uy, align 16
  store <4 x float> %i.ads, ptr %i.sn, align 16
  store <4 x float> %i.adt, ptr %i.uz, align 16
  store i64 %i.adn, ptr %i.va, align 16
  store i64 %i.adm, ptr %.sroa.17761.96..sroa_idx, align 8
  %i.adu = load <2 x float>, ptr %.sroa.20763.112..sroa_idx, align 16
  store <2 x float> %i.adu, ptr %i.vc, align 16
  %i.adv = load <2 x float>, ptr %.sroa.22765.112..sroa_idx, align 8 ; 3 uses
  %i.adw = fcmp olt <2 x float> %i.adv, %.sroa.0.0.copyload.i280
  %i.adx = shufflevector <2 x float> %.sroa.0.0.copyload.i280, <2 x float> %i.adv, <2 x i32> <i32 0, i32 3>
  %i.ady = shufflevector <2 x float> %i.adv, <2 x float> %.sroa.0.0.copyload.i280, <2 x i32> <i32 0, i32 3>
  %i.adz = select <2 x i1> %i.adw, <2 x float> %i.adx, <2 x float> %i.ady
  store <2 x float> %i.adz, ptr %i.vd, align 8
  store ptr %i.aas, ptr %i.ve, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !5875
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !5875
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit

bb.ck:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc253 unwind label %bb.da

.noexc253:                                        ; preds = %bb.ck
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit unwind label %bb.da

bb.cl:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc255 unwind label %bb.da

.noexc255:                                        ; preds = %bb.cl
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit unwind label %bb.da

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit: ; preds = %bb.bj, %.noexc251, %.noexc253, %.noexc255, %.noexc252
  %i.aea = phi i1 [ true, %.noexc252 ], [ %.065884, %.noexc255 ], [ %.065884, %.noexc253 ], [ %.065884, %.noexc251 ], [ %.065884, %bb.bj ] ; 2 uses
  store ptr null, ptr %73, align 8
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %.188 ; 2 uses
  %i.aec = load ptr, ptr %i.aeb, align 8          ; 8 uses
  %i.aed = load ptr, ptr %i.uc, align 16          ; 3 uses
  %i.aee = load ptr, ptr %i.aec, align 8
  %i.aef = icmp eq ptr %i.aed, %i.aee
  br i1 %i.aef, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8
  %i.aei = add i64 %i.aeh, 1
  store i64 %i.aei, ptr %i.aeg, align 8
  br label %bb.co

bb.cn:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit
  %i.aej = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aek = add nsw i64 %i.aej, 1
  store i64 %i.aek, ptr %i.pp, align 8
  %i.ael = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aej ; 3 uses
  store ptr %i.aed, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  store i64 1, ptr %i.aem, align 16
  store ptr %i.ael, ptr %i.aeb, align 8
  %.pre981 = load ptr, ptr %i.aec, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.aen = phi ptr [ %.pre981, %bb.cn ], [ %i.aed, %bb.cm ]
  %i.aeo = load ptr, ptr %i.ve, align 16          ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.aen
  br i1 %i.aep, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.aeq = load i64, ptr %i.pn, align 16
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aeq
  store ptr %i.aec, ptr %i.aer, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aet = load i64, ptr %i.aes, align 8          ; 2 uses
  %i.aeu = add i64 %i.aet, 1
  store i64 %i.aeu, ptr %i.aes, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.aev = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aew = add nsw i64 %i.aev, 1
  store i64 %i.aew, ptr %i.pp, align 8
  %i.aex = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aev ; 3 uses
  store ptr %i.aeo, ptr %i.aex, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  store i64 1, ptr %i.aey, align 16
  %i.aez = load i64, ptr %i.pn, align 16
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aez
  store ptr %i.aex, ptr %i.afa, align 8
  %.phi.trans.insert982 = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %.pre983 = load i64, ptr %.phi.trans.insert982, align 8
  %i.afb = add i64 %.pre983, -1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.afc = phi i64 [ %i.afb, %bb.cq ], [ %i.aet, %bb.cp ] ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i64 %i.afc, ptr %i.afd, align 8
  %i.afe = icmp eq i64 %i.afc, 0
  br i1 %i.afe, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.aff = load ptr, ptr %i.aec, align 8          ; 6 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %bb.cy, label %.preheader856

.preheader856:                                    ; preds = %bb.cs
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afi = load ptr, ptr %i.afh, align 8          ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 24
  %i.afk = load i64, ptr %i.afj, align 8          ; 3 uses
  %.not.i243 = icmp eq ptr %i.afi, null
  br i1 %.not.i243, label %.noexc245, label %bb.ct

bb.ct:                                            ; preds = %.preheader856
  %i.afl = mul i64 %i.afk, 80                     ; 2 uses
  %i.afm = icmp ugt i64 %i.afl, 29360127
  br i1 %i.afm, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afo = load i8, ptr %i.afn, align 8, !range !49, !noundef !50
  %i.afp = trunc nuw i8 %i.afo to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.afi, i64 noundef %i.afl, i1 noundef zeroext %i.afp)
          to label %.noexc245 unwind label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.afi)
          to label %.noexc245 unwind label %bb.cx

.noexc245:                                        ; preds = %bb.cv, %bb.cu, %.preheader856
  %.not9.i244 = icmp eq i64 %i.afk, 0
  br i1 %.not9.i244, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154, label %bb.cw

bb.cw:                                            ; preds = %.noexc245
  %i.afq = load ptr, ptr %i.aff, align 8          ; 2 uses
  %i.afr = mul i64 %i.afk, -80
  %i.afs = load ptr, ptr %i.afq, align 8
  %i.aft = load ptr, ptr %i.afs, align 8
  invoke void %i.aft(ptr noundef nonnull align 8 dereferenceable(8) %i.afq, i64 noundef %i.afr, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154 unwind label %bb.cx, !inline_history !1

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.afu = landingpad { ptr, i32 }
          catch ptr null
  %i.afv = extractvalue { ptr, i32 } %i.afu, 0
  call void @__clang_call_terminate(ptr %i.afv) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154: ; preds = %bb.cw, %.noexc245
  call void @_ZdlPv(ptr noundef nonnull %i.aff) #28
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cr, %bb.cs, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154
  %i.afw = load i64, ptr %70, align 16
  store i64 %i.afw, ptr %i.xd, align 16
  %i.afx = load <4 x float>, ptr %i.si, align 16
  store <4 x float> %i.afx, ptr %i.xg, align 16
  %i.afy = load <4 x float>, ptr %i.tv, align 16
  store <4 x float> %i.afy, ptr %i.xp, align 16
  %i.afz = load <4 x float>, ptr %i.sj, align 16
  store <4 x float> %i.afz, ptr %i.xt, align 16
  %i.aga = load <4 x float>, ptr %i.tw, align 16
  store <4 x float> %i.aga, ptr %i.xu, align 16
  %i.agb = getelementptr inbounds nuw i8, ptr %i.xd, i64 80
  %i.agc = load <4 x float>, ptr %i.sk, align 16
  store <4 x float> %i.agc, ptr %i.agb, align 16
  %i.agd = getelementptr inbounds nuw i8, ptr %i.xd, i64 96
  %i.age = load <4 x float>, ptr %i.tx, align 16
  store <4 x float> %i.age, ptr %i.agd, align 16
  %i.agf = getelementptr inbounds nuw i8, ptr %i.xd, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agf, ptr noundef nonnull align 16 dereferenceable(32) %i.ty, i64 32, i1 false)
  %i.agg = getelementptr inbounds nuw i8, ptr %i.xd, i64 144
  %i.agh = load <4 x float>, ptr %i.ua, align 16
  store <4 x float> %i.agh, ptr %i.agg, align 16
  %i.agi = load ptr, ptr %i.uc, align 16
  %i.agj = getelementptr inbounds nuw i8, ptr %i.xd, i64 160
  store ptr %i.agi, ptr %i.agj, align 16
  %i.agk = load i64, ptr %i.pn, align 16
  %i.agl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %i.agk ; 10 uses
  %i.agm = load i64, ptr %71, align 16
  store i64 %i.agm, ptr %i.agl, align 16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %i.ago = load <4 x float>, ptr %i.sl, align 16
  store <4 x float> %i.ago, ptr %i.agn, align 16
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 32
  %i.agq = load <4 x float>, ptr %i.ux, align 16
  store <4 x float> %i.agq, ptr %i.agp, align 16
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agl, i64 48
  %i.ags = load <4 x float>, ptr %i.sm, align 16
  store <4 x float> %i.ags, ptr %i.agr, align 16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agl, i64 64
  %i.agu = load <4 x float>, ptr %i.uy, align 16
  store <4 x float> %i.agu, ptr %i.agt, align 16
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agl, i64 80
  %i.agw = load <4 x float>, ptr %i.sn, align 16
  store <4 x float> %i.agw, ptr %i.agv, align 16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agl, i64 96
  %i.agy = load <4 x float>, ptr %i.uz, align 16
  store <4 x float> %i.agy, ptr %i.agx, align 16
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agl, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agz, ptr noundef nonnull align 16 dereferenceable(32) %i.va, i64 32, i1 false)
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agl, i64 144
  %i.ahb = load <4 x float>, ptr %i.vc, align 16
  store <4 x float> %i.ahb, ptr %i.aha, align 16
  %i.ahc = load ptr, ptr %i.ve, align 16
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agl, i64 160
  store ptr %i.ahc, ptr %i.ahd, align 16
  %i.ahe = load i64, ptr %i.pn, align 16
  %i.ahf = add i64 %i.ahe, 1                      ; 4 uses
  store i64 %i.ahf, ptr %i.pn, align 16
  %.pre984 = load i64, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  %i.ahg = icmp ult i64 %i.ahf, %.pre984
  br i1 %i.ahg, label %.preheader857, label %.thread

bb.cz:                                            ; preds = %bb.bi, %bb.bg
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.bl, %.noexc255, %bb.cl, %.noexc253, %bb.ck, %bb.bk
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %.body284

.body284:                                         ; preds = %bb.da, %bb.cj
  %.pn96 = phi { ptr, i32 } [ %.pn.pn.pn.i266, %bb.cj ], [ %i.ahi, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  br label %bb.db

bb.db:                                            ; preds = %.body284, %bb.cz
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %.body284 ], [ %i.ahh, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  br label %.body

.thread:                                          ; preds = %bb.cy, %._crit_edge..thread.loopexit_crit_edge, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.ahj = phi i64 [ %i.sf, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.pre985.pre, %._crit_edge..thread.loopexit_crit_edge ], [ %i.ahf, %bb.cy ] ; 5 uses
  %.065.lcssa = phi i1 [ %i.pm, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.065884, %._crit_edge..thread.loopexit_crit_edge ], [ %i.aea, %bb.cy ] ; 3 uses
  %.not926 = icmp eq i64 %i.ahj, 0
  br i1 %.not926, label %._crit_edge891, label %.lr.ph890

.lr.ph890:                                        ; preds = %.thread
  %.sroa.013.0.copyload = load float, ptr %i.ci, align 8 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %i.cj, align 4 ; 2 uses
  %min.iters.check1192 = icmp ult i64 %i.ahj, 8
  br i1 %min.iters.check1192, label %scalar.ph1191.preheader, label %vector.ph1193

vector.ph1193:                                    ; preds = %.lr.ph890
  %n.vec1194 = and i64 %i.ahj, -8                 ; 3 uses
  %i.ahk = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.065.lcssa, i64 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.013.0.copyload, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1195 = insertelement <4 x float> poison, float %.sroa.4.0.copyload, i64 0
  %broadcast.splat1196 = shufflevector <4 x float> %broadcast.splatinsert1195, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1193
  %index1198 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1200, %vector.body1197 ] ; 9 uses
  %vec.phi = phi <4 x i1> [ %i.ahk, %vector.ph1193 ], [ %i.ajv, %vector.body1197 ]
  %vec.phi1199 = phi <4 x i1> [ zeroinitializer, %vector.ph1193 ], [ %i.ajw, %vector.body1197 ]
  %i.ahl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahm = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.aho = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahp = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahr = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahs = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahl, i64 152
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahm, i64 328
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 504
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aho, i64 680
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahp, i64 856
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1032
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1208
end_hunk_10
begin_hunk_11_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERKNS1_11BuildRecordES9_:bb.a
  %i.wp = icmp ult i64 %.pre-phi, 3072
  br i1 %i.wp, label %bb.be, label %bb.bf, !prof !56

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15, !noalias !6003
  store i64 %i.vz, ptr %8, align 8, !noalias !6003
  store i64 %i.vy, ptr %i.pq, align 8, !noalias !6003
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %18, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %.noexc249 unwind label %bb.bk

.noexc249:                                        ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15, !noalias !6003
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.bf:                                            ; preds = %bb.bd
  %i.wq = add i64 %.pre-phi, 127
  %i.wr = lshr i64 %i.wq, 7                       ; 2 uses
  %i.ws = icmp eq i64 %i.wr, 1
  br i1 %i.ws, label %bb.bg, label %bb.bh, !prof !56

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !6004
  store i64 %i.vz, ptr %7, align 8, !noalias !6004
  store i64 %i.vy, ptr %i.pp, align 8, !noalias !6004
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSB_SE_ENKUlRKNS_5rangeImEEE0_clESI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %18, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc251 unwind label %bb.bk

.noexc251:                                        ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !6004
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit

bb.bh:                                            ; preds = %bb.bf
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_T_SU_SU_SU_RKST_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %18, i64 noundef %i.wr, i64 noundef %i.vz, i64 noundef %i.vy, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %19, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit unwind label %bb.bk

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit: ; preds = %bb.bh, %.noexc251, %.noexc249
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !6000
  %i.wt = load i64, ptr %i.uo, align 16, !noalias !6000 ; 5 uses
  %i.wu = load i64, ptr %i.ps, align 8, !noalias !6000
  %i.wv = load i64, ptr %i.pr, align 16, !noalias !6000
  %i.ww = sub i64 %i.wu, %i.wv                    ; 2 uses
  %i.wx = add i64 %i.ww, %i.wt                    ; 2 uses
  store i64 %i.wt, ptr %i.pr, align 16, !noalias !6000
  store i64 %i.wx, ptr %i.ps, align 8, !noalias !6000
  %i.wy = load i64, ptr %i.up, align 8, !noalias !6000 ; 2 uses
  %i.wz = sub i64 %i.wy, %i.wt
  %.not28.i = icmp eq i64 %i.ww, %i.wz
  br i1 %.not28.i, label %.noexc217, label %bb.bi

bb.bi:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit
  %i.xa = getelementptr inbounds nuw i8, ptr %i.ul, i64 32
  %i.xb = load ptr, ptr %i.xa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15, !noalias !6000
  store ptr %12, ptr %20, align 8, !noalias !6000
  %i.xc = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSC_SF_EUlRKS1_E0_EET0_PT_SJ_SJ_SJ_RKT1_(ptr noundef %i.xb, i64 noundef %i.wt, i64 noundef %i.wy, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bl     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  store i64 %i.xc, ptr %i.ps, align 8, !noalias !6000
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !6000
  %.pre780 = load i64, ptr %i.pr, align 16
  br label %.noexc217

bb.bk:                                            ; preds = %bb.bh, %bb.bg, %bb.be
  %i.xd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !6000
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %i.xe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !6000
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn.i = phi { ptr, i32 } [ %i.xd, %bb.bk ], [ %i.xe, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !6000
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !6000
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bc, %bb.bb
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.bm ], [ %i.vw, %bb.bb ], [ %i.vx, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15, !noalias !6000
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !6000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !6000
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %48) #15
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ba
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.bn ], [ %i.vv, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !6000
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !6000
  br label %.body241

.noexc217:                                        ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit, %bb.bj
  %i.xf = phi i64 [ %i.wx, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %i.xc, %bb.bj ]
  %i.xg = phi i64 [ %i.wt, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_18RecalculatePrimRefINS_13InstanceArrayEEELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSH_SK_EUlRKNS_5rangeImEEE0_FKS5_RSQ_SR_EEET0_NSL_IT_EESU_SU_RKST_RKT1_RKT2_.exit ], [ %.pre780, %bb.bj ]
  %.sroa.0.0.copyload.i239 = load <2 x float>, ptr %12, align 8, !noalias !6000 ; 3 uses
  %i.xh = load <4 x float>, ptr %18, align 16
  %i.xi = load <4 x float>, ptr %i.pt, align 16
  %i.xj = load <4 x float>, ptr %i.pu, align 16
  %i.xk = load <4 x float>, ptr %i.pv, align 16
  %i.xl = load <4 x float>, ptr %i.pw, align 16
  %i.xm = load <4 x float>, ptr %i.px, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.qd, ptr noundef nonnull align 16 dereferenceable(16) %i.py, i64 16, i1 false)
  store <4 x float> %i.xh, ptr %i.nq, align 16
  store <4 x float> %i.xi, ptr %i.pz, align 16
  store <4 x float> %i.xj, ptr %i.nr, align 16
  store <4 x float> %i.xk, ptr %i.qa, align 16
  store <4 x float> %i.xl, ptr %i.ns, align 16
  store <4 x float> %i.xm, ptr %i.qb, align 16
  store i64 %i.xg, ptr %i.qc, align 16
  store i64 %i.xf, ptr %.sroa.17.96..sroa_idx, align 8
  %i.xn = load <2 x float>, ptr %.sroa.20567.112..sroa_idx, align 16
  store <2 x float> %i.xn, ptr %i.qe, align 16
  %i.xo = load <2 x float>, ptr %.sroa.22568.112..sroa_idx, align 8 ; 3 uses
  %i.xp = fcmp olt <2 x float> %i.xo, %.sroa.0.0.copyload.i239
  %i.xq = shufflevector <2 x float> %.sroa.0.0.copyload.i239, <2 x float> %i.xo, <2 x i32> <i32 0, i32 3>
  %i.xr = shufflevector <2 x float> %i.xo, <2 x float> %.sroa.0.0.copyload.i239, <2 x i32> <i32 0, i32 3>
  %i.xs = select <2 x i1> %i.xp, <2 x float> %i.xq, <2 x float> %i.xr
  store <2 x float> %i.xs, ptr %i.qf, align 8
  store ptr %i.ul, ptr %i.qg, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !6000
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !6000
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15, !noalias !6000
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !6000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !6000
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !6000
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !6000
  %.pre781 = load ptr, ptr %48, align 8
  %i.xt = icmp ne ptr %.pre781, null
  %i.xu = or i1 %.082, %i.xt
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit

bb.bp:                                            ; preds = %bb.ao
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.sk)
          to label %.noexc218 unwind label %bb.ei

.noexc218:                                        ; preds = %bb.bp
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.sk, ptr noundef nonnull align 16 dereferenceable(152) %i.ni, ptr noundef nonnull align 16 dereferenceable(152) %i.nq)
          to label %.noexc219 unwind label %bb.ei

bb.bq:                                            ; preds = %bb.ao
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.sk)
          to label %.noexc220 unwind label %bb.ei

.noexc220:                                        ; preds = %bb.bq
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSN_SQ_(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.sk, ptr noundef nonnull align 16 dereferenceable(152) %i.ni, ptr noundef nonnull align 16 dereferenceable(152) %i.nq)
          to label %.noexc219 unwind label %bb.ei

.noexc219:                                        ; preds = %.noexc220, %.noexc218, %.noexc216, %bb.ao
  store ptr null, ptr %48, align 8
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit: ; preds = %.noexc219, %.noexc217
  %i.xv = phi i1 [ %.082, %.noexc219 ], [ %i.xu, %.noexc217 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %49, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.ni)
          to label %bb.br unwind label %bb.ej

bb.br:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSR_SU_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.nl, ptr noundef nonnull align 16 dereferenceable(64) %49, i64 16, i1 false)
  %i.xw = load i64, ptr %i.rb, align 16
  store i64 %i.xw, ptr %i.np, align 16
  %i.xx = load <4 x float>, ptr %i.rd, align 16
  store <4 x float> %i.xx, ptr %i.rc, align 16
  %i.xy = load <4 x float>, ptr %i.rf, align 16
  store <4 x float> %i.xy, ptr %i.re, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_18RecalculatePrimRefINS_13InstanceArrayEEENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSE_3SetENS0_17CreateMSMBlurLeafILi4ES6_NS_22InstanceArrayPrimitiveEEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %50, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.nq)
          to label %bb.bs unwind label %bb.ek

bb.bs:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.nt, ptr noundef nonnull align 16 dereferenceable(64) %50, i64 16, i1 false)
  %i.xz = load i64, ptr %i.rg, align 16
  store i64 %i.xz, ptr %i.nx, align 16
  %i.ya = load <4 x float>, ptr %i.ri, align 16
  store <4 x float> %i.ya, ptr %i.rh, align 16
  %i.yb = load <4 x float>, ptr %i.rk, align 16
  store <4 x float> %i.yb, ptr %i.rj, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #15
  store ptr null, ptr %48, align 8
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %.080.lcssa ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8            ; 8 uses
  %i.ye = load ptr, ptr %i.pe, align 16           ; 3 uses
  %i.yf = load ptr, ptr %i.yd, align 8
  %i.yg = icmp eq ptr %i.ye, %i.yf
  br i1 %i.yg, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yd, i64 8 ; 2 uses
  %i.yi = load i64, ptr %i.yh, align 8
  %i.yj = add i64 %i.yi, 1
  store i64 %i.yj, ptr %i.yh, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.yk = load i64, ptr %i.mn, align 8            ; 2 uses
  %i.yl = add nsw i64 %i.yk, 1
  store i64 %i.yl, ptr %i.mn, align 8
  %i.ym = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.yk ; 3 uses
  store ptr %i.ye, ptr %i.ym, align 8
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  store i64 1, ptr %i.yn, align 16
  store ptr %i.ym, ptr %i.yc, align 8
  %.pre782 = load ptr, ptr %i.yd, align 8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.yo = phi ptr [ %.pre782, %bb.bu ], [ %i.ye, %bb.bt ]
  %i.yp = load ptr, ptr %i.qg, align 16           ; 2 uses
  %i.yq = icmp eq ptr %i.yp, %i.yo
  br i1 %i.yq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.yr = load i64, ptr %i.ml, align 16
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.yr
  store ptr %i.yd, ptr %i.ys, align 8
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yd, i64 8 ; 2 uses
  %i.yu = load i64, ptr %i.yt, align 8            ; 2 uses
  %i.yv = add i64 %i.yu, 1
  store i64 %i.yv, ptr %i.yt, align 8
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %i.yw = load i64, ptr %i.mn, align 8            ; 2 uses
  %i.yx = add nsw i64 %i.yw, 1
  store i64 %i.yx, ptr %i.mn, align 8
  %i.yy = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.yw ; 3 uses
  store ptr %i.yp, ptr %i.yy, align 8
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  store i64 1, ptr %i.yz, align 16
  %i.za = load i64, ptr %i.ml, align 16
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.za
  store ptr %i.yy, ptr %i.zb, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %.pre783 = load i64, ptr %.phi.trans.insert, align 8
  %i.zc = add i64 %.pre783, -1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.zd = phi i64 [ %i.zc, %bb.bx ], [ %i.yu, %bb.bw ] ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  store i64 %i.zd, ptr %i.ze, align 8
  %i.zf = icmp eq i64 %i.zd, 0
  br i1 %i.zf, label %bb.bz, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

bb.bz:                                            ; preds = %bb.by
  %i.zg = load ptr, ptr %i.yd, align 8            ; 6 uses
  %i.zh = icmp eq ptr %i.zg, null
  br i1 %i.zh, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit, label %.preheader667

.preheader667:                                    ; preds = %bb.bz
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 32
  %i.zj = load ptr, ptr %i.zi, align 8            ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zg, i64 24
  %i.zl = load i64, ptr %i.zk, align 8            ; 3 uses
  %.not.i208 = icmp eq ptr %i.zj, null
  br i1 %.not.i208, label %.noexc210, label %bb.ca

bb.ca:                                            ; preds = %.preheader667
  %i.zm = mul i64 %i.zl, 80                       ; 2 uses
  %i.zn = icmp ugt i64 %i.zm, 29360127
  br i1 %i.zn, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zp = load i8, ptr %i.zo, align 8, !range !49, !noundef !50
  %i.zq = trunc nuw i8 %i.zp to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.zj, i64 noundef %i.zm, i1 noundef zeroext %i.zq)
          to label %.noexc210 unwind label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.zj)
          to label %.noexc210 unwind label %bb.ce

.noexc210:                                        ; preds = %bb.cc, %bb.cb, %.preheader667
  %.not9.i209 = icmp eq i64 %i.zl, 0
  br i1 %.not9.i209, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131, label %bb.cd

bb.cd:                                            ; preds = %.noexc210
  %i.zr = load ptr, ptr %i.zg, align 8            ; 2 uses
  %i.zs = mul i64 %i.zl, -80
  %i.zt = load ptr, ptr %i.zr, align 8
  %i.zu = load ptr, ptr %i.zt, align 8
  invoke void %i.zu(ptr noundef nonnull align 8 dereferenceable(8) %i.zr, i64 noundef %i.zs, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131 unwind label %bb.ce, !inline_history !1

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.zv = landingpad { ptr, i32 }
          catch ptr null
  %i.zw = extractvalue { ptr, i32 } %i.zv, 0
  call void @__clang_call_terminate(ptr %i.zw) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131: ; preds = %bb.cd, %.noexc210
  call void @_ZdlPv(ptr noundef nonnull %i.zg) #28
  %.pre784 = load ptr, ptr %48, align 8
  br label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.by, %bb.bz, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131
  %i.zx = phi ptr [ null, %bb.by ], [ null, %bb.bz ], [ %.pre784, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131 ] ; 6 uses
  %i.zy = load i64, ptr %46, align 16
  store i64 %i.zy, ptr %i.sg, align 16
  %i.zz = load <4 x float>, ptr %i.ni, align 16
  store <4 x float> %i.zz, ptr %i.sk, align 16
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.sg, i64 32
  %i.aab = load <4 x float>, ptr %i.ox, align 16
  store <4 x float> %i.aab, ptr %i.aaa, align 16
  %i.aac = getelementptr inbounds nuw i8, ptr %i.sg, i64 48
  %i.aad = load <4 x float>, ptr %i.nj, align 16
  store <4 x float> %i.aad, ptr %i.aac, align 16
  %i.aae = getelementptr inbounds nuw i8, ptr %i.sg, i64 64
  %i.aaf = load <4 x float>, ptr %i.oy, align 16
  store <4 x float> %i.aaf, ptr %i.aae, align 16
  %i.aag = getelementptr inbounds nuw i8, ptr %i.sg, i64 80
  %i.aah = load <4 x float>, ptr %i.nk, align 16
  store <4 x float> %i.aah, ptr %i.aag, align 16
  %i.aai = getelementptr inbounds nuw i8, ptr %i.sg, i64 96
  %i.aaj = load <4 x float>, ptr %i.oz, align 16
  store <4 x float> %i.aaj, ptr %i.aai, align 16
  %i.aak = getelementptr inbounds nuw i8, ptr %i.sg, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aak, ptr noundef nonnull align 16 dereferenceable(32) %i.pa, i64 32, i1 false)
  %i.aal = getelementptr inbounds nuw i8, ptr %i.sg, i64 144
  %i.aam = load <4 x float>, ptr %i.pc, align 16
  store <4 x float> %i.aam, ptr %i.aal, align 16
  %i.aan = load ptr, ptr %i.pe, align 16
  %i.aao = getelementptr inbounds nuw i8, ptr %i.sg, i64 160
  store ptr %i.aan, ptr %i.aao, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.sj, ptr noundef nonnull align 16 dereferenceable(64) %i.nl, i64 16, i1 false)
  %i.aap = getelementptr inbounds nuw i8, ptr %i.sg, i64 192
  %i.aaq = load i64, ptr %i.np, align 16
  store i64 %i.aaq, ptr %i.aap, align 16
  %i.aar = getelementptr inbounds nuw i8, ptr %i.sg, i64 208
  %i.aas = load <4 x float>, ptr %i.rc, align 16
  store <4 x float> %i.aas, ptr %i.aar, align 16
  %i.aat = getelementptr inbounds nuw i8, ptr %i.sg, i64 224
  %i.aau = load <4 x float>, ptr %i.re, align 16
  store <4 x float> %i.aau, ptr %i.aat, align 16
  %i.aav = load i64, ptr %i.ml, align 16
  %i.aaw = getelementptr inbounds nuw [240 x i8], ptr %45, i64 %i.aav ; 14 uses
  %i.aax = load i64, ptr %47, align 16
  store i64 %i.aax, ptr %i.aaw, align 16
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 16
  %i.aaz = load <4 x float>, ptr %i.nq, align 16
  store <4 x float> %i.aaz, ptr %i.aay, align 16
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaw, i64 32
  %i.abb = load <4 x float>, ptr %i.pz, align 16
  store <4 x float> %i.abb, ptr %i.aba, align 16
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaw, i64 48
  %i.abd = load <4 x float>, ptr %i.nr, align 16
  store <4 x float> %i.abd, ptr %i.abc, align 16
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaw, i64 64
  %i.abf = load <4 x float>, ptr %i.qa, align 16
  store <4 x float> %i.abf, ptr %i.abe, align 16
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aaw, i64 80
  %i.abh = load <4 x float>, ptr %i.ns, align 16
  store <4 x float> %i.abh, ptr %i.abg, align 16
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aaw, i64 96
  %i.abj = load <4 x float>, ptr %i.qb, align 16
  store <4 x float> %i.abj, ptr %i.abi, align 16
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aaw, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.abk, ptr noundef nonnull align 16 dereferenceable(32) %i.qc, i64 32, i1 false)
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aaw, i64 144
  %i.abm = load <4 x float>, ptr %i.qe, align 16
  store <4 x float> %i.abm, ptr %i.abl, align 16
  %i.abn = load ptr, ptr %i.qg, align 16
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aaw, i64 160
  store ptr %i.abn, ptr %i.abo, align 16
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aaw, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.abp, ptr noundef nonnull align 16 dereferenceable(64) %i.nt, i64 16, i1 false)
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aaw, i64 192
  %i.abr = load i64, ptr %i.nx, align 16
  store i64 %i.abr, ptr %i.abq, align 16
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aaw, i64 208
  %i.abt = load <4 x float>, ptr %i.rh, align 16
  store <4 x float> %i.abt, ptr %i.abs, align 16
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aaw, i64 224
  %i.abv = load <4 x float>, ptr %i.rj, align 16
  store <4 x float> %i.abv, ptr %i.abu, align 16
  %i.abw = load i64, ptr %i.ml, align 16
  %i.abx = add i64 %i.abw, 1                      ; 2 uses
  store i64 %i.abx, ptr %i.ml, align 16
  %.not.i272 = icmp eq ptr %i.zx, null
  br i1 %.not.i272, label %bb.ck, label %.preheader.i.i273

.preheader.i.i273:                                ; preds = %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.aby = getelementptr inbounds nuw i8, ptr %i.zx, i64 32
  %i.abz = load ptr, ptr %i.aby, align 8          ; 3 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.zx, i64 24
  %i.acb = load i64, ptr %i.aca, align 8          ; 3 uses
  %.not.i.i.i274 = icmp eq ptr %i.abz, null
  br i1 %.not.i.i.i274, label %.noexc.i.i275, label %bb.cf

bb.cf:                                            ; preds = %.preheader.i.i273
  %i.acc = mul i64 %i.acb, 80                     ; 2 uses
  %i.acd = icmp ugt i64 %i.acc, 29360127
  br i1 %i.acd, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ace = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %i.acf = load i8, ptr %i.ace, align 8, !range !49, !noundef !50
  %i.acg = trunc nuw i8 %i.acf to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.abz, i64 noundef %i.acc, i1 noundef zeroext %i.acg)
          to label %.noexc.i.i275 unwind label %bb.cj

bb.ch:                                            ; preds = %bb.cf
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.abz)
          to label %.noexc.i.i275 unwind label %bb.cj

.noexc.i.i275:                                    ; preds = %bb.ch, %bb.cg, %.preheader.i.i273
  %.not9.i.i.i276 = icmp eq i64 %i.acb, 0
  br i1 %.not9.i.i.i276, label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i277, label %bb.ci

bb.ci:                                            ; preds = %.noexc.i.i275
  %i.ach = load ptr, ptr %i.zx, align 8           ; 2 uses
  %i.aci = mul i64 %i.acb, -80
  %i.acj = load ptr, ptr %i.ach, align 8
  %i.ack = load ptr, ptr %i.acj, align 8
  invoke void %i.ack(ptr noundef nonnull align 8 dereferenceable(8) %i.ach, i64 noundef %i.aci, i1 noundef zeroext true)
          to label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i277 unwind label %bb.cj, !inline_history !1

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.acl = landingpad { ptr, i32 }
          catch ptr null
  %i.acm = extractvalue { ptr, i32 } %i.acl, 0
  call void @__clang_call_terminate(ptr %i.acm) #31
end_hunk_11
begin_hunk_12_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE7recurseERKNS1_11BuildRecordES7_b:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.tz, ptr noundef nonnull align 16 dereferenceable(16) %i.tu, i64 16, i1 false)
  store <4 x float> %i.ack, ptr %i.si, align 16
  store <4 x float> %i.acl, ptr %i.tv, align 16
  store <4 x float> %i.acm, ptr %i.sj, align 16
  store <4 x float> %i.acn, ptr %i.tw, align 16
  store <4 x float> %i.aco, ptr %i.sk, align 16
  store <4 x float> %i.acp, ptr %i.tx, align 16
  store i64 %i.aci, ptr %i.ty, align 16
  store i64 %i.ach, ptr %.sroa.17784.96..sroa_idx, align 8
  %i.acq = load <2 x float>, ptr %.sroa.20786.112..sroa_idx, align 16
  store <2 x float> %i.acq, ptr %i.ua, align 16
  %i.acr = load <2 x float>, ptr %.sroa.22788.112..sroa_idx, align 8 ; 3 uses
  %i.acs = fcmp olt <2 x float> %i.acr, %.sroa.01.0.copyload.i276
  %i.act = shufflevector <2 x float> %.sroa.01.0.copyload.i276, <2 x float> %i.acr, <2 x i32> <i32 0, i32 3>
  %i.acu = shufflevector <2 x float> %i.acr, <2 x float> %.sroa.01.0.copyload.i276, <2 x i32> <i32 0, i32 3>
  %i.acv = select <2 x i1> %i.acs, <2 x float> %i.act, <2 x float> %i.acu
  store <2 x float> %i.acv, ptr %i.ub, align 8
  store ptr %i.acj, ptr %i.uc, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15, !noalias !6672
  store ptr %i.aas, ptr %25, align 8, !noalias !6672
  store ptr %20, ptr %i.ud, align 8, !noalias !6672
  store ptr %i.so, ptr %i.ue, align 8, !noalias !6672
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15, !noalias !6672
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15, !noalias !6672
  store <4 x float> splat (float +inf), ptr %27, align 16, !noalias !6672
  store <4 x float> splat (float -inf), ptr %i.uf, align 16, !noalias !6672
  store <4 x float> splat (float +inf), ptr %i.ug, align 16, !noalias !6672
  store <4 x float> splat (float -inf), ptr %i.uh, align 16, !noalias !6672
  store <4 x float> splat (float +inf), ptr %i.ui, align 16, !noalias !6672
  store <4 x float> splat (float -inf), ptr %i.uj, align 16, !noalias !6672
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.uk, i8 0, i64 36, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.ul, align 4, !noalias !6672
  store float 0.000000e+00, ptr %i.um, align 4, !noalias !6672
  %i.acw = icmp ult i64 %.pre-phi, 3072
  br i1 %i.acw, label %bb.bz, label %bb.ca, !prof !56

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !6675
  store i64 %i.acg, ptr %13, align 8, !noalias !6675
  store i64 %i.acf, ptr %i.uo, align 8, !noalias !6675
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_22GridRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKNS_5rangeImEEE0_clESG_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %.noexc305 unwind label %bb.cf

.noexc305:                                        ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !6675
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit

bb.ca:                                            ; preds = %bb.by
  %i.acx = add i64 %.pre-phi, 127
  %i.acy = lshr i64 %i.acx, 7                     ; 2 uses
  %i.acz = icmp eq i64 %i.acy, 1
  br i1 %i.acz, label %bb.cb, label %bb.cc, !prof !56

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !6676
  store i64 %i.acg, ptr %12, align 8, !noalias !6676
  store i64 %i.acf, ptr %i.un, align 8, !noalias !6676
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_22GridRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKNS_5rangeImEEE0_clESG_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %.noexc308 unwind label %bb.cf

.noexc308:                                        ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !6676
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit

bb.cc:                                            ; preds = %bb.ca
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_T_SS_SS_SS_RKSR_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %26, i64 noundef %i.acy, i64 noundef %i.acg, i64 noundef %i.acf, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %27, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit unwind label %bb.cf

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit: ; preds = %bb.cc, %.noexc308, %.noexc305
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !6672
  %i.ada = load i64, ptr %i.aav, align 16, !noalias !6672 ; 5 uses
  %i.adb = load i64, ptr %i.uq, align 8, !noalias !6672
  %i.adc = load i64, ptr %i.up, align 16, !noalias !6672
  %i.add = sub i64 %i.adb, %i.adc                 ; 2 uses
  %i.ade = add i64 %i.add, %i.ada                 ; 2 uses
  store i64 %i.ada, ptr %i.up, align 16, !noalias !6672
  store i64 %i.ade, ptr %i.uq, align 8, !noalias !6672
  %i.adf = load i64, ptr %i.aaw, align 8, !noalias !6672 ; 2 uses
  %i.adg = sub i64 %i.adf, %i.ada
  %.not28.i279 = icmp eq i64 %i.add, %i.adg
  br i1 %.not28.i279, label %.noexc252, label %bb.cd

bb.cd:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit
  %i.adh = getelementptr inbounds nuw i8, ptr %i.aas, i64 32
  %i.adi = load ptr, ptr %i.adh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15, !noalias !6672
  store ptr %20, ptr %28, align 8, !noalias !6672
  %i.adj = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_22GridRecalculatePrimRefELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSA_SD_EUlRKS1_E0_EET0_PT_SH_SH_SH_RKT1_(ptr noundef %i.adi, i64 noundef %i.ada, i64 noundef %i.adf, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ce unwind label %bb.cg     ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  store i64 %i.adj, ptr %i.uq, align 8, !noalias !6672
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !6672
  %.pre980 = load i64, ptr %i.up, align 16
  br label %.noexc252

bb.cf:                                            ; preds = %bb.cc, %bb.cb, %bb.bz
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15, !noalias !6672
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cd
  %i.adl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15, !noalias !6672
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn.i278 = phi { ptr, i32 } [ %i.adk, %bb.cf ], [ %i.adl, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !6672
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !6672
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bx, %bb.bw
  %.pn.pn.i274 = phi { ptr, i32 } [ %.pn.i278, %bb.ch ], [ %i.acd, %bb.bw ], [ %i.ace, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !6672
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !6672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !6672
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #15
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.bv
  %.pn.pn.pn.i266 = phi { ptr, i32 } [ %.pn.pn.i274, %bb.ci ], [ %i.acc, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !6672
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !6672
  br label %.body284

.noexc252:                                        ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit, %bb.ce
  %i.adm = phi i64 [ %i.ade, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit ], [ %i.adj, %bb.ce ]
  %i.adn = phi i64 [ %i.ada, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit ], [ %.pre980, %bb.ce ]
  %.sroa.0.0.copyload.i280 = load <2 x float>, ptr %20, align 8, !noalias !6672 ; 3 uses
  %i.ado = load <4 x float>, ptr %26, align 16
  %i.adp = load <4 x float>, ptr %i.ur, align 16
  %i.adq = load <4 x float>, ptr %i.us, align 16
  %i.adr = load <4 x float>, ptr %i.ut, align 16
  %i.ads = load <4 x float>, ptr %i.uu, align 16
  %i.adt = load <4 x float>, ptr %i.uv, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.vb, ptr noundef nonnull align 16 dereferenceable(16) %i.uw, i64 16, i1 false)
  store <4 x float> %i.ado, ptr %i.sl, align 16
  store <4 x float> %i.adp, ptr %i.ux, align 16
  store <4 x float> %i.adq, ptr %i.sm, align 16
  store <4 x float> %i.adr, ptr %i.uy, align 16
  store <4 x float> %i.ads, ptr %i.sn, align 16
  store <4 x float> %i.adt, ptr %i.uz, align 16
  store i64 %i.adn, ptr %i.va, align 16
  store i64 %i.adm, ptr %.sroa.17761.96..sroa_idx, align 8
  %i.adu = load <2 x float>, ptr %.sroa.20763.112..sroa_idx, align 16
  store <2 x float> %i.adu, ptr %i.vc, align 16
  %i.adv = load <2 x float>, ptr %.sroa.22765.112..sroa_idx, align 8 ; 3 uses
  %i.adw = fcmp olt <2 x float> %i.adv, %.sroa.0.0.copyload.i280
  %i.adx = shufflevector <2 x float> %.sroa.0.0.copyload.i280, <2 x float> %i.adv, <2 x i32> <i32 0, i32 3>
  %i.ady = shufflevector <2 x float> %i.adv, <2 x float> %.sroa.0.0.copyload.i280, <2 x i32> <i32 0, i32 3>
  %i.adz = select <2 x i1> %i.adw, <2 x float> %i.adx, <2 x float> %i.ady
  store <2 x float> %i.adz, ptr %i.vd, align 8
  store ptr %i.aas, ptr %i.ve, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15, !noalias !6672
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15, !noalias !6672
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15, !noalias !6672
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15, !noalias !6672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !6672
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15, !noalias !6672
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !6672
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSO_SR_.exit

bb.ck:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc253 unwind label %bb.da

.noexc253:                                        ; preds = %bb.ck
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSK_SN_(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSO_SR_.exit unwind label %bb.da

bb.cl:                                            ; preds = %bb.bj
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.xg)
          to label %.noexc255 unwind label %bb.da

.noexc255:                                        ; preds = %bb.cl
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSK_SN_(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.xg, ptr noundef nonnull align 16 dereferenceable(152) %i.si, ptr noundef nonnull align 16 dereferenceable(152) %i.sl)
          to label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSO_SR_.exit unwind label %bb.da

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSO_SR_.exit: ; preds = %bb.bj, %.noexc251, %.noexc253, %.noexc255, %.noexc252
  %i.aea = phi i1 [ true, %.noexc252 ], [ %.065884, %.noexc255 ], [ %.065884, %.noexc253 ], [ %.065884, %.noexc251 ], [ %.065884, %bb.bj ] ; 2 uses
  store ptr null, ptr %73, align 8
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %.188 ; 2 uses
  %i.aec = load ptr, ptr %i.aeb, align 8          ; 8 uses
  %i.aed = load ptr, ptr %i.uc, align 16          ; 3 uses
  %i.aee = load ptr, ptr %i.aec, align 8
  %i.aef = icmp eq ptr %i.aed, %i.aee
  br i1 %i.aef, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSO_SR_.exit
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aeh = load i64, ptr %i.aeg, align 8
  %i.aei = add i64 %i.aeh, 1
  store i64 %i.aei, ptr %i.aeg, align 8
  br label %bb.co

bb.cn:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSO_SR_.exit
  %i.aej = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aek = add nsw i64 %i.aej, 1
  store i64 %i.aek, ptr %i.pp, align 8
  %i.ael = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aej ; 3 uses
  store ptr %i.aed, ptr %i.ael, align 8
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 8
  store i64 1, ptr %i.aem, align 16
  store ptr %i.ael, ptr %i.aeb, align 8
  %.pre981 = load ptr, ptr %i.aec, align 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.aen = phi ptr [ %.pre981, %bb.cn ], [ %i.aed, %bb.cm ]
  %i.aeo = load ptr, ptr %i.ve, align 16          ; 2 uses
  %i.aep = icmp eq ptr %i.aeo, %i.aen
  br i1 %i.aep, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.aeq = load i64, ptr %i.pn, align 16
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aeq
  store ptr %i.aec, ptr %i.aer, align 8
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aec, i64 8 ; 2 uses
  %i.aet = load i64, ptr %i.aes, align 8          ; 2 uses
  %i.aeu = add i64 %i.aet, 1
  store i64 %i.aeu, ptr %i.aes, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.aev = load i64, ptr %i.pp, align 8           ; 2 uses
  %i.aew = add nsw i64 %i.aev, 1
  store i64 %i.aew, ptr %i.pp, align 8
  %i.aex = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.aev ; 3 uses
  store ptr %i.aeo, ptr %i.aex, align 8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  store i64 1, ptr %i.aey, align 16
  %i.aez = load i64, ptr %i.pn, align 16
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.aez
  store ptr %i.aex, ptr %i.afa, align 8
  %.phi.trans.insert982 = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %.pre983 = load i64, ptr %.phi.trans.insert982, align 8
  %i.afb = add i64 %.pre983, -1
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.afc = phi i64 [ %i.afb, %bb.cq ], [ %i.aet, %bb.cp ] ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i64 %i.afc, ptr %i.afd, align 8
  %i.afe = icmp eq i64 %i.afc, 0
  br i1 %i.afe, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %bb.cr
  %i.aff = load ptr, ptr %i.aec, align 8          ; 6 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %bb.cy, label %.preheader856

.preheader856:                                    ; preds = %bb.cs
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afi = load ptr, ptr %i.afh, align 8          ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aff, i64 24
  %i.afk = load i64, ptr %i.afj, align 8          ; 3 uses
  %.not.i243 = icmp eq ptr %i.afi, null
  br i1 %.not.i243, label %.noexc245, label %bb.ct

bb.ct:                                            ; preds = %.preheader856
  %i.afl = mul i64 %i.afk, 80                     ; 2 uses
  %i.afm = icmp ugt i64 %i.afl, 29360127
  br i1 %i.afm, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.afo = load i8, ptr %i.afn, align 8, !range !49, !noundef !50
  %i.afp = trunc nuw i8 %i.afo to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.afi, i64 noundef %i.afl, i1 noundef zeroext %i.afp)
          to label %.noexc245 unwind label %bb.cx

bb.cv:                                            ; preds = %bb.ct
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.afi)
          to label %.noexc245 unwind label %bb.cx

.noexc245:                                        ; preds = %bb.cv, %bb.cu, %.preheader856
  %.not9.i244 = icmp eq i64 %i.afk, 0
  br i1 %.not9.i244, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154, label %bb.cw

bb.cw:                                            ; preds = %.noexc245
  %i.afq = load ptr, ptr %i.aff, align 8          ; 2 uses
  %i.afr = mul i64 %i.afk, -80
  %i.afs = load ptr, ptr %i.afq, align 8
  %i.aft = load ptr, ptr %i.afs, align 8
  invoke void %i.aft(ptr noundef nonnull align 8 dereferenceable(8) %i.afq, i64 noundef %i.afr, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154 unwind label %bb.cx, !inline_history !1

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.afu = landingpad { ptr, i32 }
          catch ptr null
  %i.afv = extractvalue { ptr, i32 } %i.afu, 0
  call void @__clang_call_terminate(ptr %i.afv) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154: ; preds = %bb.cw, %.noexc245
  call void @_ZdlPv(ptr noundef nonnull %i.aff) #28
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cr, %bb.cs, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i154
  %i.afw = load i64, ptr %70, align 16
  store i64 %i.afw, ptr %i.xd, align 16
  %i.afx = load <4 x float>, ptr %i.si, align 16
  store <4 x float> %i.afx, ptr %i.xg, align 16
  %i.afy = load <4 x float>, ptr %i.tv, align 16
  store <4 x float> %i.afy, ptr %i.xp, align 16
  %i.afz = load <4 x float>, ptr %i.sj, align 16
  store <4 x float> %i.afz, ptr %i.xt, align 16
  %i.aga = load <4 x float>, ptr %i.tw, align 16
  store <4 x float> %i.aga, ptr %i.xu, align 16
  %i.agb = getelementptr inbounds nuw i8, ptr %i.xd, i64 80
  %i.agc = load <4 x float>, ptr %i.sk, align 16
  store <4 x float> %i.agc, ptr %i.agb, align 16
  %i.agd = getelementptr inbounds nuw i8, ptr %i.xd, i64 96
  %i.age = load <4 x float>, ptr %i.tx, align 16
  store <4 x float> %i.age, ptr %i.agd, align 16
  %i.agf = getelementptr inbounds nuw i8, ptr %i.xd, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agf, ptr noundef nonnull align 16 dereferenceable(32) %i.ty, i64 32, i1 false)
  %i.agg = getelementptr inbounds nuw i8, ptr %i.xd, i64 144
  %i.agh = load <4 x float>, ptr %i.ua, align 16
  store <4 x float> %i.agh, ptr %i.agg, align 16
  %i.agi = load ptr, ptr %i.uc, align 16
  %i.agj = getelementptr inbounds nuw i8, ptr %i.xd, i64 160
  store ptr %i.agi, ptr %i.agj, align 16
  %i.agk = load i64, ptr %i.pn, align 16
  %i.agl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %i.agk ; 10 uses
  %i.agm = load i64, ptr %71, align 16
  store i64 %i.agm, ptr %i.agl, align 16
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %i.ago = load <4 x float>, ptr %i.sl, align 16
  store <4 x float> %i.ago, ptr %i.agn, align 16
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 32
  %i.agq = load <4 x float>, ptr %i.ux, align 16
  store <4 x float> %i.agq, ptr %i.agp, align 16
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agl, i64 48
  %i.ags = load <4 x float>, ptr %i.sm, align 16
  store <4 x float> %i.ags, ptr %i.agr, align 16
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agl, i64 64
  %i.agu = load <4 x float>, ptr %i.uy, align 16
  store <4 x float> %i.agu, ptr %i.agt, align 16
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agl, i64 80
  %i.agw = load <4 x float>, ptr %i.sn, align 16
  store <4 x float> %i.agw, ptr %i.agv, align 16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agl, i64 96
  %i.agy = load <4 x float>, ptr %i.uz, align 16
  store <4 x float> %i.agy, ptr %i.agx, align 16
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agl, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.agz, ptr noundef nonnull align 16 dereferenceable(32) %i.va, i64 32, i1 false)
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agl, i64 144
  %i.ahb = load <4 x float>, ptr %i.vc, align 16
  store <4 x float> %i.ahb, ptr %i.aha, align 16
  %i.ahc = load ptr, ptr %i.ve, align 16
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agl, i64 160
  store ptr %i.ahc, ptr %i.ahd, align 16
  %i.ahe = load i64, ptr %i.pn, align 16
  %i.ahf = add i64 %i.ahe, 1                      ; 4 uses
  store i64 %i.ahf, ptr %i.pn, align 16
  %.pre984 = load i64, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  %i.ahg = icmp ult i64 %i.ahf, %.pre984
  br i1 %i.ahg, label %.preheader857, label %.thread

bb.cz:                                            ; preds = %bb.bi, %bb.bg
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.bl, %.noexc255, %bb.cl, %.noexc253, %bb.ck, %bb.bk
  %i.ahi = landingpad { ptr, i32 }
          cleanup
  br label %.body284

.body284:                                         ; preds = %bb.da, %bb.cj
  %.pn96 = phi { ptr, i32 } [ %.pn.pn.pn.i266, %bb.cj ], [ %i.ahi, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  br label %bb.db

bb.db:                                            ; preds = %.body284, %bb.cz
  %.pn96.pn = phi { ptr, i32 } [ %.pn96, %.body284 ], [ %i.ahh, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #15
  br label %.body

.thread:                                          ; preds = %bb.cy, %._crit_edge..thread.loopexit_crit_edge, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.ahj = phi i64 [ %i.sf, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.pre985.pre, %._crit_edge..thread.loopexit_crit_edge ], [ %i.ahf, %bb.cy ] ; 5 uses
  %.065.lcssa = phi i1 [ %i.pm, %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit ], [ %.065884, %._crit_edge..thread.loopexit_crit_edge ], [ %i.aea, %bb.cy ] ; 3 uses
  %.not926 = icmp eq i64 %i.ahj, 0
  br i1 %.not926, label %._crit_edge891, label %.lr.ph890

.lr.ph890:                                        ; preds = %.thread
  %.sroa.013.0.copyload = load float, ptr %i.ci, align 8 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %i.cj, align 4 ; 2 uses
  %min.iters.check1192 = icmp ult i64 %i.ahj, 8
  br i1 %min.iters.check1192, label %scalar.ph1191.preheader, label %vector.ph1193

vector.ph1193:                                    ; preds = %.lr.ph890
  %n.vec1194 = and i64 %i.ahj, -8                 ; 3 uses
  %i.ahk = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %.065.lcssa, i64 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.013.0.copyload, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1195 = insertelement <4 x float> poison, float %.sroa.4.0.copyload, i64 0
  %broadcast.splat1196 = shufflevector <4 x float> %broadcast.splatinsert1195, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1193
  %index1198 = phi i64 [ 0, %vector.ph1193 ], [ %index.next1200, %vector.body1197 ] ; 9 uses
  %vec.phi = phi <4 x i1> [ %i.ahk, %vector.ph1193 ], [ %i.ajv, %vector.body1197 ]
  %vec.phi1199 = phi <4 x i1> [ zeroinitializer, %vector.ph1193 ], [ %i.ajw, %vector.body1197 ]
  %i.ahl = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahm = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.aho = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahp = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahr = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.ahs = getelementptr inbounds nuw [176 x i8], ptr %69, i64 %index1198 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahl, i64 152
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahm, i64 328
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 504
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aho, i64 680
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahp, i64 856
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1032
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahr, i64 1208
end_hunk_12
begin_hunk_13_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE15createLargeLeafERKNS1_11BuildRecordES7_:bb.a
  %i.bkd = icmp ult i64 %.pre-phi, 3072
  br i1 %i.bkd, label %bb.by, label %bb.bz, !prof !56

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !6919
  store i64 %i.bjn, ptr %7, align 8, !noalias !6919
  store i64 %i.bjm, ptr %i.bde, align 8, !noalias !6919
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_22GridRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKNS_5rangeImEEE0_clESG_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %17, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.noexc287 unwind label %bb.ce

.noexc287:                                        ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !6919
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit

bb.bz:                                            ; preds = %bb.bx
  %i.bke = add i64 %.pre-phi, 127
  %i.bkf = lshr i64 %i.bke, 7                     ; 2 uses
  %i.bkg = icmp eq i64 %i.bkf, 1
  br i1 %i.bkg, label %bb.ca, label %bb.cb, !prof !56

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15, !noalias !6920
  store i64 %i.bjn, ptr %6, align 8, !noalias !6920
  store i64 %i.bjm, ptr %i.bdd, align 8, !noalias !6920
  invoke void @_ZZN6embree4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS0_22GridRecalculatePrimRefELm2EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS9_SC_ENKUlRKNS_5rangeImEEE0_clESG_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %17, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc289 unwind label %bb.ce

.noexc289:                                        ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15, !noalias !6920
  br label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit

bb.cb:                                            ; preds = %bb.bz
  invoke void @_ZN6embree24parallel_reduce_internalImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_T_SS_SS_SS_RKSR_RKT1_RKT2_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %17, i64 noundef %i.bkf, i64 noundef %i.bjn, i64 noundef %i.bjm, i64 noundef 128, ptr noundef nonnull align 16 dereferenceable(144) %18, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull @_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE6merge2ERKS4_S6_)
          to label %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit unwind label %bb.ce

_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit: ; preds = %bb.cb, %.noexc289, %.noexc287
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !6916
  %i.bkh = load i64, ptr %i.bic, align 16, !noalias !6916 ; 5 uses
  %i.bki = load i64, ptr %i.bdg, align 8, !noalias !6916
  %i.bkj = load i64, ptr %i.bdf, align 16, !noalias !6916
  %i.bkk = sub i64 %i.bki, %i.bkj                 ; 2 uses
  %i.bkl = add i64 %i.bkk, %i.bkh                 ; 2 uses
  store i64 %i.bkh, ptr %i.bdf, align 16, !noalias !6916
  store i64 %i.bkl, ptr %i.bdg, align 8, !noalias !6916
  %i.bkm = load i64, ptr %i.bid, align 8, !noalias !6916 ; 2 uses
  %i.bkn = sub i64 %i.bkm, %i.bkh
  %.not28.i = icmp eq i64 %i.bkk, %i.bkn
  br i1 %.not28.i, label %.noexc217, label %bb.cc

bb.cc:                                            ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bhz, i64 32
  %i.bkp = load ptr, ptr %i.bko, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15, !noalias !6916
  store ptr %11, ptr %19, align 8, !noalias !6916
  %i.bkq = invoke noundef i64 @_ZN6embree15parallel_filterINS_9PrimRefMBEmZNS_4sse227HeuristicMBlurTemporalSplitIS1_NS2_22GridRecalculatePrimRefELm2EE5splitERKNS2_8BinSplitILm32EEERKNS_5SetMBERSA_SD_EUlRKS1_E0_EET0_PT_SH_SH_SH_RKT1_(ptr noundef %i.bkp, i64 noundef %i.bkh, i64 noundef %i.bkm, i64 noundef 1024, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.cd unwind label %bb.cf     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  store i64 %i.bkq, ptr %i.bdg, align 8, !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !6916
  %.pre1723 = load i64, ptr %i.bdf, align 16
  br label %.noexc217

bb.ce:                                            ; preds = %bb.cb, %bb.ca, %bb.by
  %i.bkr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15, !noalias !6916
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cc
  %i.bks = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15, !noalias !6916
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pn.i = phi { ptr, i32 } [ %i.bkr, %bb.ce ], [ %i.bks, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !6916
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.bw, %bb.bv
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.cg ], [ %i.bjk, %bb.bv ], [ %i.bjl, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !6916
  call void @_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %49) #15
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.bu
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.ch ], [ %i.bjj, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !6916
  br label %.body279

.noexc217:                                        ; preds = %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit, %bb.cd
  %i.bkt = phi i64 [ %i.bkl, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit ], [ %i.bkq, %bb.cd ]
  %i.bku = phi i64 [ %i.bkh, %_ZN6embree15parallel_reduceImNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse227HeuristicMBlurTemporalSplitINS_9PrimRefMBENS6_22GridRecalculatePrimRefELm2EE5splitERKNS6_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKNS_5rangeImEEE0_FKS5_RSO_SP_EEET0_NSJ_IT_EESS_SS_RKSR_RKT1_RKT2_.exit ], [ %.pre1723, %bb.cd ]
  %.sroa.0.0.copyload.i277 = load <2 x float>, ptr %11, align 8, !noalias !6916 ; 3 uses
  %i.bkv = load <4 x float>, ptr %17, align 16
  %i.bkw = load <4 x float>, ptr %i.bdh, align 16
  %i.bkx = load <4 x float>, ptr %i.bdi, align 16
  %i.bky = load <4 x float>, ptr %i.bdj, align 16
  %i.bkz = load <4 x float>, ptr %i.bdk, align 16
  %i.bla = load <4 x float>, ptr %i.bdl, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bdr, ptr noundef nonnull align 16 dereferenceable(16) %i.bdm, i64 16, i1 false)
  store <4 x float> %i.bkv, ptr %i.bbe, align 16
  store <4 x float> %i.bkw, ptr %i.bdn, align 16
  store <4 x float> %i.bkx, ptr %i.bbf, align 16
  store <4 x float> %i.bky, ptr %i.bdo, align 16
  store <4 x float> %i.bkz, ptr %i.bbg, align 16
  store <4 x float> %i.bla, ptr %i.bdp, align 16
  store i64 %i.bku, ptr %i.bdq, align 16
  store i64 %i.bkt, ptr %.sroa.17.96..sroa_idx, align 8
  %i.blb = load <2 x float>, ptr %.sroa.201261.112..sroa_idx, align 16
  store <2 x float> %i.blb, ptr %i.bds, align 16
  %i.blc = load <2 x float>, ptr %.sroa.221262.112..sroa_idx, align 8 ; 3 uses
  %i.bld = fcmp olt <2 x float> %i.blc, %.sroa.0.0.copyload.i277
  %i.ble = shufflevector <2 x float> %.sroa.0.0.copyload.i277, <2 x float> %i.blc, <2 x i32> <i32 0, i32 3>
  %i.blf = shufflevector <2 x float> %i.blc, <2 x float> %.sroa.0.0.copyload.i277, <2 x i32> <i32 0, i32 3>
  %i.blg = select <2 x i1> %i.bld, <2 x float> %i.ble, <2 x float> %i.blf
  store <2 x float> %i.blg, ptr %i.bdt, align 8
  store ptr %i.bhz, ptr %i.bdu, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15, !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15, !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15, !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !6916
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15, !noalias !6916
  %.pre1724 = load ptr, ptr %49, align 8
  %i.blh = icmp ne ptr %.pre1724, null
  %i.bli = or i1 %.082, %i.blh
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSO_SR_.exit

bb.cj:                                            ; preds = %bb.bi
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.bfy)
          to label %.noexc218 unwind label %bb.fc

.noexc218:                                        ; preds = %bb.cj
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSK_SN_(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.bfy, ptr noundef nonnull align 16 dereferenceable(152) %i.baw, ptr noundef nonnull align 16 dereferenceable(152) %i.bbe)
          to label %.noexc219 unwind label %bb.fc

bb.ck:                                            ; preds = %bb.bi
  invoke void @_ZNK6embree5SetMB19deterministic_orderEv(ptr noundef nonnull align 16 dereferenceable(152) %i.bfy)
          to label %.noexc220 unwind label %bb.fc

.noexc220:                                        ; preds = %bb.ck
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSK_SN_(ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.bfy, ptr noundef nonnull align 16 dereferenceable(152) %i.baw, ptr noundef nonnull align 16 dereferenceable(152) %i.bbe)
          to label %.noexc219 unwind label %bb.fc

.noexc219:                                        ; preds = %.noexc220, %.noexc218, %.noexc216, %bb.bi
  store ptr null, ptr %49, align 8
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSO_SR_.exit

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSO_SR_.exit: ; preds = %.noexc219, %.noexc217
  %i.blj = phi i1 [ %.082, %.noexc219 ], [ %i.bli, %.noexc217 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %50, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.baw)
          to label %bb.cl unwind label %bb.fd

bb.cl:                                            ; preds = %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERSO_SR_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.baz, ptr noundef nonnull align 16 dereferenceable(64) %50, i64 16, i1 false)
  %i.blk = load i64, ptr %i.bep, align 16
  store i64 %i.blk, ptr %i.bbd, align 16
  %i.bll = load <4 x float>, ptr %i.ber, align 16
  store <4 x float> %i.bll, ptr %i.beq, align 16
  %i.blm = load <4 x float>, ptr %i.bet, align 16
  store <4 x float> %i.blm, ptr %i.bes, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #15
  invoke void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_22GridRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetENS0_21CreateMSMBlurLeafGridILi4EEENS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE(ptr dead_on_unwind nonnull writable sret(%"struct.embree::sse2::BinSplit") align 16 %51, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 16 dereferenceable(152) %i.bbe)
          to label %bb.cm unwind label %bb.fe

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bbh, ptr noundef nonnull align 16 dereferenceable(64) %51, i64 16, i1 false)
  %i.bln = load i64, ptr %i.beu, align 16
  store i64 %i.bln, ptr %i.bbl, align 16
  %i.blo = load <4 x float>, ptr %i.bew, align 16
  store <4 x float> %i.blo, ptr %i.bev, align 16
  %i.blp = load <4 x float>, ptr %i.bey, align 16
  store <4 x float> %i.blp, ptr %i.bex, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #15
  store ptr null, ptr %49, align 8
  %i.blq = getelementptr inbounds nuw [8 x i8], ptr %i.bav, i64 %.080.lcssa ; 2 uses
  %i.blr = load ptr, ptr %i.blq, align 8          ; 8 uses
  %i.bls = load ptr, ptr %i.bcs, align 16         ; 3 uses
  %i.blt = load ptr, ptr %i.blr, align 8
  %i.blu = icmp eq ptr %i.bls, %i.blt
  br i1 %i.blu, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blr, i64 8 ; 2 uses
  %i.blw = load i64, ptr %i.blv, align 8
  %i.blx = add i64 %i.blw, 1
  store i64 %i.blx, ptr %i.blv, align 8
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.bly = load i64, ptr %i.bab, align 8          ; 2 uses
  %i.blz = add nsw i64 %i.bly, 1
  store i64 %i.blz, ptr %i.bab, align 8
  %i.bma = getelementptr inbounds nuw [16 x i8], ptr %i.baa, i64 %i.bly ; 3 uses
  store ptr %i.bls, ptr %i.bma, align 8
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 8
  store i64 1, ptr %i.bmb, align 16
  store ptr %i.bma, ptr %i.blq, align 8
  %.pre1725 = load ptr, ptr %i.blr, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.bmc = phi ptr [ %.pre1725, %bb.co ], [ %i.bls, %bb.cn ]
  %i.bmd = load ptr, ptr %i.bdu, align 16         ; 2 uses
  %i.bme = icmp eq ptr %i.bmd, %i.bmc
  br i1 %i.bme, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.bmf = load i64, ptr %i.azz, align 16
  %i.bmg = getelementptr inbounds nuw [8 x i8], ptr %i.bav, i64 %i.bmf
  store ptr %i.blr, ptr %i.bmg, align 8
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.blr, i64 8 ; 2 uses
  %i.bmi = load i64, ptr %i.bmh, align 8          ; 2 uses
  %i.bmj = add i64 %i.bmi, 1
  store i64 %i.bmj, ptr %i.bmh, align 8
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.bmk = load i64, ptr %i.bab, align 8          ; 2 uses
  %i.bml = add nsw i64 %i.bmk, 1
  store i64 %i.bml, ptr %i.bab, align 8
  %i.bmm = getelementptr inbounds nuw [16 x i8], ptr %i.baa, i64 %i.bmk ; 3 uses
  store ptr %i.bmd, ptr %i.bmm, align 8
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmm, i64 8
  store i64 1, ptr %i.bmn, align 16
  %i.bmo = load i64, ptr %i.azz, align 16
  %i.bmp = getelementptr inbounds nuw [8 x i8], ptr %i.bav, i64 %i.bmo
  store ptr %i.bmm, ptr %i.bmp, align 8
  %.phi.trans.insert1726 = getelementptr inbounds nuw i8, ptr %i.blr, i64 8
  %.pre1727 = load i64, ptr %.phi.trans.insert1726, align 8
  %i.bmq = add i64 %.pre1727, -1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.bmr = phi i64 [ %i.bmq, %bb.cr ], [ %i.bmi, %bb.cq ] ; 2 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.blr, i64 8
  store i64 %i.bmr, ptr %i.bms, align 8
  %i.bmt = icmp eq i64 %i.bmr, 0
  br i1 %i.bmt, label %bb.ct, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

bb.ct:                                            ; preds = %bb.cs
  %i.bmu = load ptr, ptr %i.blr, align 8          ; 6 uses
  %i.bmv = icmp eq ptr %i.bmu, null
  br i1 %i.bmv, label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit, label %.preheader1447

.preheader1447:                                   ; preds = %bb.ct
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmu, i64 32
  %i.bmx = load ptr, ptr %i.bmw, align 8          ; 3 uses
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmu, i64 24
  %i.bmz = load i64, ptr %i.bmy, align 8          ; 3 uses
  %.not.i208 = icmp eq ptr %i.bmx, null
  br i1 %.not.i208, label %.noexc210, label %bb.cu

bb.cu:                                            ; preds = %.preheader1447
  %i.bna = mul i64 %i.bmz, 80                     ; 2 uses
  %i.bnb = icmp ugt i64 %i.bna, 29360127
  br i1 %i.bnb, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bmu, i64 8
  %i.bnd = load i8, ptr %i.bnc, align 8, !range !49, !noundef !50
  %i.bne = trunc nuw i8 %i.bnd to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.bmx, i64 noundef %i.bna, i1 noundef zeroext %i.bne)
          to label %.noexc210 unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.bmx)
          to label %.noexc210 unwind label %bb.cy

.noexc210:                                        ; preds = %bb.cw, %bb.cv, %.preheader1447
  %.not9.i209 = icmp eq i64 %i.bmz, 0
  br i1 %.not9.i209, label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131, label %bb.cx

bb.cx:                                            ; preds = %.noexc210
  %i.bnf = load ptr, ptr %i.bmu, align 8          ; 2 uses
  %i.bng = mul i64 %i.bmz, -80
  %i.bnh = load ptr, ptr %i.bnf, align 8
  %i.bni = load ptr, ptr %i.bnh, align 8
  invoke void %i.bni(ptr noundef nonnull align 8 dereferenceable(8) %i.bnf, i64 noundef %i.bng, i1 noundef zeroext true)
          to label %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131 unwind label %bb.cy, !inline_history !1

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.bnj = landingpad { ptr, i32 }
          catch ptr null
  %i.bnk = extractvalue { ptr, i32 } %i.bnj, 0
  call void @__clang_call_terminate(ptr %i.bnk) #31
  unreachable

_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131: ; preds = %bb.cx, %.noexc210
  call void @_ZdlPv(ptr noundef nonnull %i.bmu) #28
  %.pre1728 = load ptr, ptr %49, align 8
  br label %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.cs, %bb.ct, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131
  %i.bnl = phi ptr [ null, %bb.cs ], [ null, %bb.ct ], [ %.pre1728, %_ZN6embree8vector_tINS_9PrimRefMBENS_27aligned_monitored_allocatorIS1_Lm16EEEED2Ev.exit.i131 ] ; 6 uses
  %i.bnm = load i64, ptr %47, align 16
  store i64 %i.bnm, ptr %i.bfu, align 16
  %i.bnn = load <4 x float>, ptr %i.baw, align 16
  store <4 x float> %i.bnn, ptr %i.bfy, align 16
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bfu, i64 32
  %i.bnp = load <4 x float>, ptr %i.bcl, align 16
  store <4 x float> %i.bnp, ptr %i.bno, align 16
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bfu, i64 48
  %i.bnr = load <4 x float>, ptr %i.bax, align 16
  store <4 x float> %i.bnr, ptr %i.bnq, align 16
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bfu, i64 64
  %i.bnt = load <4 x float>, ptr %i.bcm, align 16
  store <4 x float> %i.bnt, ptr %i.bns, align 16
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bfu, i64 80
  %i.bnv = load <4 x float>, ptr %i.bay, align 16
  store <4 x float> %i.bnv, ptr %i.bnu, align 16
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bfu, i64 96
  %i.bnx = load <4 x float>, ptr %i.bcn, align 16
  store <4 x float> %i.bnx, ptr %i.bnw, align 16
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bfu, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bny, ptr noundef nonnull align 16 dereferenceable(32) %i.bco, i64 32, i1 false)
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bfu, i64 144
  %i.boa = load <4 x float>, ptr %i.bcq, align 16
  store <4 x float> %i.boa, ptr %i.bnz, align 16
  %i.bob = load ptr, ptr %i.bcs, align 16
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bfu, i64 160
  store ptr %i.bob, ptr %i.boc, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bfx, ptr noundef nonnull align 16 dereferenceable(64) %i.baz, i64 16, i1 false)
  %i.bod = getelementptr inbounds nuw i8, ptr %i.bfu, i64 192
  %i.boe = load i64, ptr %i.bbd, align 16
  store i64 %i.boe, ptr %i.bod, align 16
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bfu, i64 208
  %i.bog = load <4 x float>, ptr %i.beq, align 16
  store <4 x float> %i.bog, ptr %i.bof, align 16
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bfu, i64 224
  %i.boi = load <4 x float>, ptr %i.bes, align 16
  store <4 x float> %i.boi, ptr %i.boh, align 16
  %i.boj = load i64, ptr %i.azz, align 16
  %i.bok = getelementptr inbounds nuw [240 x i8], ptr %46, i64 %i.boj ; 14 uses
  %i.bol = load i64, ptr %48, align 16
  store i64 %i.bol, ptr %i.bok, align 16
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bok, i64 16
  %i.bon = load <4 x float>, ptr %i.bbe, align 16
  store <4 x float> %i.bon, ptr %i.bom, align 16
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bok, i64 32
  %i.bop = load <4 x float>, ptr %i.bdn, align 16
  store <4 x float> %i.bop, ptr %i.boo, align 16
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bok, i64 48
  %i.bor = load <4 x float>, ptr %i.bbf, align 16
  store <4 x float> %i.bor, ptr %i.boq, align 16
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bok, i64 64
  %i.bot = load <4 x float>, ptr %i.bdo, align 16
  store <4 x float> %i.bot, ptr %i.bos, align 16
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bok, i64 80
  %i.bov = load <4 x float>, ptr %i.bbg, align 16
  store <4 x float> %i.bov, ptr %i.bou, align 16
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bok, i64 96
  %i.box = load <4 x float>, ptr %i.bdp, align 16
  store <4 x float> %i.box, ptr %i.bow, align 16
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bok, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.boy, ptr noundef nonnull align 16 dereferenceable(32) %i.bdq, i64 32, i1 false)
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bok, i64 144
  %i.bpa = load <4 x float>, ptr %i.bds, align 16
  store <4 x float> %i.bpa, ptr %i.boz, align 16
  %i.bpb = load ptr, ptr %i.bdu, align 16
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bok, i64 160
  store ptr %i.bpb, ptr %i.bpc, align 16
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bok, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bpd, ptr noundef nonnull align 16 dereferenceable(64) %i.bbh, i64 16, i1 false)
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bok, i64 192
  %i.bpf = load i64, ptr %i.bbl, align 16
  store i64 %i.bpf, ptr %i.bpe, align 16
  %i.bpg = getelementptr inbounds nuw i8, ptr %i.bok, i64 208
  %i.bph = load <4 x float>, ptr %i.bev, align 16
  store <4 x float> %i.bph, ptr %i.bpg, align 16
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bok, i64 224
  %i.bpj = load <4 x float>, ptr %i.bex, align 16
  store <4 x float> %i.bpj, ptr %i.bpi, align 16
  %i.bpk = load i64, ptr %i.azz, align 16
  %i.bpl = add i64 %i.bpk, 1                      ; 2 uses
  store i64 %i.bpl, ptr %i.azz, align 16
  %.not.i390 = icmp eq ptr %i.bnl, null
  br i1 %.not.i390, label %bb.de, label %.preheader.i.i391

.preheader.i.i391:                                ; preds = %_ZNSt10unique_ptrIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEESt14default_deleteIS5_EED2Ev.exit
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bnl, i64 32
  %i.bpn = load ptr, ptr %i.bpm, align 8          ; 3 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bnl, i64 24
  %i.bpp = load i64, ptr %i.bpo, align 8          ; 3 uses
  %.not.i.i.i392 = icmp eq ptr %i.bpn, null
  br i1 %.not.i.i.i392, label %.noexc.i.i393, label %bb.cz

bb.cz:                                            ; preds = %.preheader.i.i391
  %i.bpq = mul i64 %i.bpp, 80                     ; 2 uses
  %i.bpr = icmp ugt i64 %i.bpq, 29360127
  br i1 %i.bpr, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bnl, i64 8
  %i.bpt = load i8, ptr %i.bps, align 8, !range !49, !noundef !50
  %i.bpu = trunc nuw i8 %i.bpt to i1
  invoke void @_ZN6embree7os_freeEPvmb(ptr noundef nonnull %i.bpn, i64 noundef %i.bpq, i1 noundef zeroext %i.bpu)
          to label %.noexc.i.i393 unwind label %bb.dd

bb.db:                                            ; preds = %bb.cz
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.bpn)
          to label %.noexc.i.i393 unwind label %bb.dd

.noexc.i.i393:                                    ; preds = %bb.db, %bb.da, %.preheader.i.i391
  %.not9.i.i.i394 = icmp eq i64 %i.bpp, 0
  br i1 %.not9.i.i.i394, label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i395, label %bb.dc

bb.dc:                                            ; preds = %.noexc.i.i393
  %i.bpv = load ptr, ptr %i.bnl, align 8          ; 2 uses
  %i.bpw = mul i64 %i.bpp, -80
  %i.bpx = load ptr, ptr %i.bpv, align 8
  %i.bpy = load ptr, ptr %i.bpx, align 8
  invoke void %i.bpy(ptr noundef nonnull align 8 dereferenceable(8) %i.bpv, i64 noundef %i.bpw, i1 noundef zeroext true)
          to label %_ZNKSt14default_deleteIN6embree8vector_tINS0_9PrimRefMBENS0_27aligned_monitored_allocatorIS2_Lm16EEEEEEclEPS5_.exit.i395 unwind label %bb.dd, !inline_history !1

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %i.bpz = landingpad { ptr, i32 }
          catch ptr null
  %i.bqa = extractvalue { ptr, i32 } %i.bpz, 0
  call void @__clang_call_terminate(ptr %i.bqa) #31
end_hunk_13
