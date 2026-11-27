Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_sah_spatial?download=true
inline.NumInlined: 6054
inline.NumDeleted: 753
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 207
begin_hunk_0_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSD_23TriangleSplitterFactoryEEESC_PS6_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISL_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSI_RKNS_5rangeImEEmmE_ZNSE_ISF_SG_EESC_SH_SJ_bmSP_SR_EUlRKSC_SZ_E_EET1_RNS_28ParallelForForPrefixSumStateIS11_EERT_T0_RKS11_RKT2_RKT3_EUlmE_mSC_ZNS5_IS7_mSC_SX_S10_EES11_S14_S16_S17_S19_S1C_S1F_EUlmSW_mE_S10_EES11_S14_S17_RKS15_S19_S1C_S1F_EUlmE_EEvS15_RKS17_EUlSW_E_EEvS15_S15_S15_S1M_PNS0_16TaskGroupContextEEUlvE_EEvS1J_S1P_mb:bb.a

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #28
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #28
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.ak, %bb.j ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSD_23TriangleSplitterFactoryEEESC_PS6_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISL_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSI_RKNS_5rangeImEEmmE_ZNSE_ISF_SG_EESC_SH_SJ_bmSP_SR_EUlRKSC_SZ_E_EET1_RNS_28ParallelForForPrefixSumStateIS11_EERT_T0_RKS11_RKT2_RKT3_EUlmE_mSC_ZNS5_IS7_mSC_SX_S10_EES11_S14_S16_S17_S19_S1C_S1F_EUlmSW_mE_S10_EES11_S14_S17_RKS15_S19_S1C_S1F_EUlmE_EEvS15_RKS17_EUlSW_E_EEvS15_S15_S15_S1M_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !71, !align !74
  tail call void @_ZZN6embree29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS9_23TriangleSplitterFactoryEEES8_PS2_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSE_RKNS_5rangeImEEmmE_ZNSA_ISB_SC_EES8_SD_SF_bmSL_SN_EUlRKS8_SV_E_EET1_RNS_28ParallelForForPrefixSumStateISX_EERT_T0_RKSX_RKT2_RKT3_EUlmE_mS8_ZNS1_IS3_mS8_ST_SW_EESX_S10_S12_S13_S15_S18_S1B_EUlmSS_mE_SW_EESX_S10_S13_RKS11_S15_S18_S1B_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef %i.d), !inline_history !167
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSC_23TriangleSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmE_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlRKSB_SY_E_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SW_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mE_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = add i64 %i.d, %i.b
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSC_23TriangleSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmE_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlRKSB_SY_E_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SW_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mE_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.k, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.n), !inline_history !167
  %i.o = load i64, ptr %i.a, align 8
  %i.p = load i64, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSC_23TriangleSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmE_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlRKSB_SY_E_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SW_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mE_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextE(i64 noundef %i.k, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.q), !inline_history !167
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !167
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSC_23TriangleSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmE_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlRKSB_SY_E_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SW_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mE_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSC_23TriangleSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmE_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlRKSB_SY_E_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SW_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mE_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS9_23TriangleSplitterFactoryEEES8_PS2_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSE_RKNS_5rangeImEEmmE_ZNSA_ISB_SC_EES8_SD_SF_bmSL_SN_EUlRKS8_SV_E_EET1_RNS_28ParallelForForPrefixSumStateISX_EERT_T0_RKSX_RKT2_RKT3_EUlmE_mS8_ZNS1_IS3_mS8_ST_SW_EESX_S10_S12_S13_S15_S18_S1B_EUlmSS_mE_SW_EESX_S10_S13_RKS11_S15_S18_S1B_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.embree::PrimInfoT", align 16 ; 12 uses
  %3 = alloca %"struct.embree::range", align 8    ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !71, !align !78 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = mul i64 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !71, !align !74
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = udiv i64 %i.d, %i.g                      ; 4 uses
  %i.i = add i64 %1, 1
  %i.j = mul i64 %i.c, %i.i
  %i.k = udiv i64 %i.j, %i.g                      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !71, !align !78 ; 5 uses
  %i.n = load <4 x float>, ptr %i.m, align 16     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load <4 x float>, ptr %i.o, align 16     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load <4 x float>, ptr %i.q, align 16     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load <4 x float>, ptr %i.s, align 16     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.v = load <2 x i64>, ptr %i.u, align 16       ; 3 uses
  %i.w = icmp ult i64 %i.h, %i.k
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %1
  %i.z = load i64, ptr %i.y, align 8              ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !nonnull !71, !align !74
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !71, !align !74 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ab
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = and i32 %i.as, 2097152
  %.not.i.peel = icmp eq i32 %i.at, 0
  br i1 %.not.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = and i32 %i.as, 255
  %i.av = shl nuw i32 1, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, %i.aw
  %.not.i.i.peel = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp ne i32 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !range !70, !noundef !71
  %i.bf = zext i1 %i.bc to i8
  %.not8.i.i.peel = icmp eq i8 %i.be, %i.bf
  br i1 %.not8.i.i.peel, label %_ZN6embree5Scene9Iterator22atEm.exit.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel

_ZN6embree5Scene9Iterator22atEm.exit.i.peel:      ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bh = load i32, ptr %i.bg, align 16
  %i.bi = zext i32 %i.bh to i64
  br label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel

_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel: ; preds = %_ZN6embree5Scene9Iterator22atEm.exit.i.peel, %bb.d, %bb.c, %bb.b, %.lr.ph
  %i.bj = phi i64 [ %i.bi, %_ZN6embree5Scene9Iterator22atEm.exit.i.peel ], [ 0, %.lr.ph ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.bk = add i64 %i.z, %i.k
  %i.bl = sub i64 %i.bk, %i.h
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bl) ; 3 uses
  %i.bn = icmp ugt i64 %i.bm, %i.z
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bo = load ptr, ptr %i.ad, align 8, !nonnull !71, !align !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 %i.z, ptr %3, align 8
  store i64 %i.bm, ptr %i.ae, align 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !186, !nonnull !71, !align !74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !186, !nonnull !71, !align !74 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !186
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 488
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !186
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ab
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !186, !nonnull !71, !noundef !71 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.bw, i64 60
  %5 = load i32, ptr %4, align 4, !noalias !186   ; 2 uses
  %6 = and i32 %5, 2097152
  %7 = icmp ne i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = and i32 %5, 255
  %9 = shl nuw i32 1, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %12 = load i64, ptr %11, align 8, !noalias !186
  %13 = and i64 %12, %10
  %.not.i.i30.peel = icmp ne i64 %13, 0
  tail call void @llvm.assume(i1 %.not.i.i30.peel)
  %i.bx = load ptr, ptr %i.bp, align 8, !noalias !187, !nonnull !71, !align !74
  %i.by = trunc i64 %i.ab to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !188
  %i.cb = load ptr, ptr %i.bw, align 16, !noalias !188
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 376
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !188
  call void %i.cd(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoT") align 16 %2, ptr noundef nonnull align 16 dereferenceable(88) %i.bw, ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.h, i32 noundef %i.by), !inline_history !174
  %i.ce = load <4 x float>, ptr %2, align 16, !noalias !189
  %i.cf = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.n, <4 x float> %i.ce)
  %i.cg = load <4 x float>, ptr %i.af, align 16, !noalias !190
  %i.ch = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.p, <4 x float> %i.cg)
  %i.ci = load <4 x float>, ptr %i.ag, align 16, !noalias !191
  %i.cj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.r, <4 x float> %i.ci)
  %i.ck = load <4 x float>, ptr %i.ah, align 16, !noalias !192
  %i.cl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.t, <4 x float> %i.ck)
  %i.cm = load <2 x i64>, ptr %i.ai, align 16, !noalias !193
  %i.cn = add <2 x i64> %i.cm, %i.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel
  %.sroa.035.1.peel = phi <4 x float> [ %i.cf, %bb.e ], [ %i.n, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.637.1.peel = phi <4 x float> [ %i.ch, %bb.e ], [ %i.p, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.1039.1.peel = phi <4 x float> [ %i.cj, %bb.e ], [ %i.r, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.1441.1.peel = phi <4 x float> [ %i.cl, %bb.e ], [ %i.t, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %i.co = phi <2 x i64> [ %i.cn, %bb.e ], [ %i.v, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %i.cp = sub i64 %i.h, %i.z
  %i.cq = add i64 %i.cp, %i.bm                    ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.k
  br i1 %i.cr, label %.peel.next, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.k, %bb.f
  %.sroa.035.1.lcssa = phi <4 x float> [ %.sroa.035.1.peel, %bb.f ], [ %.sroa.035.1, %bb.k ]
  %.sroa.637.1.lcssa = phi <4 x float> [ %.sroa.637.1.peel, %bb.f ], [ %.sroa.637.1, %bb.k ]
  %.sroa.1039.1.lcssa = phi <4 x float> [ %.sroa.1039.1.peel, %bb.f ], [ %.sroa.1039.1, %bb.k ]
  %.sroa.1441.1.lcssa = phi <4 x float> [ %.sroa.1441.1.peel, %bb.f ], [ %.sroa.1441.1, %bb.k ]
  %i.cs = phi <2 x i64> [ %i.co, %bb.f ], [ %i.ff, %bb.k ]
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ct = phi ptr [ %i.a, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.sroa.035.0.lcssa = phi <4 x float> [ %i.n, %bb.a ], [ %.sroa.035.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.637.0.lcssa = phi <4 x float> [ %i.p, %bb.a ], [ %.sroa.637.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.1039.0.lcssa = phi <4 x float> [ %i.r, %bb.a ], [ %.sroa.1039.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.1441.0.lcssa = phi <4 x float> [ %i.t, %bb.a ], [ %.sroa.1441.1.lcssa, %._crit_edge.loopexit ]
  %i.cu = phi <2 x i64> [ %i.v, %bb.a ], [ %i.cs, %._crit_edge.loopexit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 1040
  %i.cw = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %1 ; 5 uses
  store <4 x float> %.sroa.035.0.lcssa, ptr %i.cw, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x float> %.sroa.637.0.lcssa, ptr %i.cx, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store <4 x float> %.sroa.1039.0.lcssa, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store <4 x float> %.sroa.1441.0.lcssa, ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store <2 x i64> %i.cu, ptr %i.da, align 16
  ret void

.peel.next:                                       ; preds = %bb.f, %bb.k
  %.054.in = phi i64 [ %.054, %bb.k ], [ %i.ab, %bb.f ]
  %.02553 = phi i64 [ %i.fg, %bb.k ], [ %i.cq, %bb.f ] ; 3 uses
  %.sroa.1441.049 = phi <4 x float> [ %.sroa.1441.1, %bb.k ], [ %.sroa.1441.1.peel, %bb.f ] ; 2 uses
  %.sroa.1039.048 = phi <4 x float> [ %.sroa.1039.1, %bb.k ], [ %.sroa.1039.1.peel, %bb.f ] ; 2 uses
  %.sroa.637.047 = phi <4 x float> [ %.sroa.637.1, %bb.k ], [ %.sroa.637.1.peel, %bb.f ] ; 2 uses
  %.sroa.035.046 = phi <4 x float> [ %.sroa.035.1, %bb.k ], [ %.sroa.035.1.peel, %bb.f ] ; 2 uses
  %i.db = phi <2 x i64> [ %i.ff, %bb.k ], [ %i.co, %bb.f ] ; 2 uses
  %.054 = add i64 %.054.in, 1                     ; 4 uses
  %i.dc = load ptr, ptr %i.ac, align 8, !nonnull !71, !align !74
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !71, !align !74 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 488
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.054
  %i.di = load ptr, ptr %i.dh, align 8            ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.g

bb.g:                                             ; preds = %.peel.next
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 60
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %i.dm = and i32 %i.dl, 2097152
  %.not.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dn = and i32 %i.dl, 255
  %i.do = shl nuw i32 1, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = and i64 %i.dr, %i.dp
  %.not.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 36
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = icmp ne i32 %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dx = load i8, ptr %i.dw, align 8, !range !70, !noundef !71
  %i.dy = zext i1 %i.dv to i8
  %.not8.i.i = icmp eq i8 %i.dx, %i.dy
  br i1 %.not8.i.i, label %_ZN6embree5Scene9Iterator22atEm.exit.i, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit

_ZN6embree5Scene9Iterator22atEm.exit.i:           ; preds = %bb.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.ea = load i32, ptr %i.dz, align 16
  %i.eb = zext i32 %i.ea to i64
  br label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit

_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit: ; preds = %.peel.next, %bb.g, %bb.h, %bb.i, %_ZN6embree5Scene9Iterator22atEm.exit.i
  %i.ec = phi i64 [ %i.eb, %_ZN6embree5Scene9Iterator22atEm.exit.i ], [ 0, %.peel.next ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ]
  %i.ed = sub i64 %i.k, %.02553
  %i.ee = call noundef i64 @llvm.umin.i64(i64 %i.ec, i64 %i.ed) ; 3 uses
  %.not = icmp eq i64 %i.ee, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ef = load ptr, ptr %i.ad, align 8, !nonnull !71, !align !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 0, ptr %3, align 8
  store i64 %i.ee, ptr %i.ae, align 8
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !186, !nonnull !71, !align !74
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !186, !nonnull !71, !align !74
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !186
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 488
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !186
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.054
  %i.en = load ptr, ptr %i.em, align 8, !noalias !186, !nonnull !71, !noundef !71 ; 2 uses
  %i.eo = load ptr, ptr %i.eg, align 8, !noalias !187, !nonnull !71, !align !74
  %i.ep = trunc i64 %.054 to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !188
  %i.es = load ptr, ptr %i.en, align 16, !noalias !188
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 376
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !188
  call void %i.eu(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoT") align 16 %2, ptr noundef nonnull align 16 dereferenceable(88) %i.en, ptr noundef %i.er, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %.02553, i32 noundef %i.ep), !inline_history !174
  %i.ev = load <4 x float>, ptr %2, align 16, !noalias !189
  %i.ew = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.035.046, <4 x float> %i.ev)
  %i.ex = load <4 x float>, ptr %i.af, align 16, !noalias !190
  %i.ey = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.637.047, <4 x float> %i.ex)
  %i.ez = load <4 x float>, ptr %i.ag, align 16, !noalias !191
  %i.fa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1039.048, <4 x float> %i.ez)
  %i.fb = load <4 x float>, ptr %i.ah, align 16, !noalias !192
  %i.fc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1441.049, <4 x float> %i.fb)
  %i.fd = load <2 x i64>, ptr %i.ai, align 16, !noalias !193
  %i.fe = add <2 x i64> %i.fd, %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit
  %.sroa.035.1 = phi <4 x float> [ %i.ew, %bb.j ], [ %.sroa.035.046, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.637.1 = phi <4 x float> [ %i.ey, %bb.j ], [ %.sroa.637.047, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.1039.1 = phi <4 x float> [ %i.fa, %bb.j ], [ %.sroa.1039.048, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.1441.1 = phi <4 x float> [ %i.fc, %bb.j ], [ %.sroa.1441.049, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %i.ff = phi <2 x i64> [ %i.fe, %bb.j ], [ %i.db, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %i.fg = add i64 %.02553, %i.ee                  ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.k
  br i1 %i.fh, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !185
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSC_23TriangleSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.117, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
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
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.8)
          to label %bb.d unwind label %bb.e

end_hunk_0
begin_hunk_1_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSD_23TriangleSplitterFactoryEEESC_PS6_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISL_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSI_RKNS_5rangeImEEmmRKSC_E_ZNSE_ISF_SG_EESC_SH_SJ_bmSP_SR_EUlSY_SY_E0_EET1_RNS_28ParallelForForPrefixSumStateIS11_EERT_T0_RKS11_RKT2_RKT3_EUlmE_mSC_ZNS5_IS7_mSC_SZ_S10_EES11_S14_S16_S17_S19_S1C_S1F_EUlmSW_mSY_E_S10_EES11_S14_S17_RKS15_S19_S1C_S1F_EUlmE_EEvS15_RKS17_EUlSW_E_EEvS15_S15_S15_S1M_PNS0_16TaskGroupContextEEUlvE_EEvS1J_S1P_mb:bb.a
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #28
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #28
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.ak, %bb.j ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSD_23TriangleSplitterFactoryEEESC_PS6_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISL_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSI_RKNS_5rangeImEEmmRKSC_E_ZNSE_ISF_SG_EESC_SH_SJ_bmSP_SR_EUlSY_SY_E0_EET1_RNS_28ParallelForForPrefixSumStateIS11_EERT_T0_RKS11_RKT2_RKT3_EUlmE_mSC_ZNS5_IS7_mSC_SZ_S10_EES11_S14_S16_S17_S19_S1C_S1F_EUlmSW_mSY_E_S10_EES11_S14_S17_RKS15_S19_S1C_S1F_EUlmE_EEvS15_RKS17_EUlSW_E_EEvS15_S15_S15_S1M_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !71, !align !74
  tail call void @_ZZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS9_23TriangleSplitterFactoryEEES8_PS2_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSE_RKNS_5rangeImEEmmRKS8_E_ZNSA_ISB_SC_EES8_SD_SF_bmSL_SN_EUlSU_SU_E0_EET1_RNS_28ParallelForForPrefixSumStateISX_EERT_T0_RKSX_RKT2_RKT3_EUlmE_mS8_ZNS1_IS3_mS8_SV_SW_EESX_S10_S12_S13_S15_S18_S1B_EUlmSS_mSU_E_SW_EESX_S10_S13_RKS11_S15_S18_S1B_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef %i.d), !inline_history !196
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSC_23TriangleSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = add i64 %i.d, %i.b
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSC_23TriangleSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.k, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.n), !inline_history !196
  %i.o = load i64, ptr %i.a, align 8
  %i.p = load i64, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSC_23TriangleSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextE(i64 noundef %i.k, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.q), !inline_history !196
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !196
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSC_23TriangleSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENSC_23TriangleSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS9_23TriangleSplitterFactoryEEES8_PS2_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSE_RKNS_5rangeImEEmmRKS8_E_ZNSA_ISB_SC_EES8_SD_SF_bmSL_SN_EUlSU_SU_E0_EET1_RNS_28ParallelForForPrefixSumStateISX_EERT_T0_RKSX_RKT2_RKT3_EUlmE_mS8_ZNS1_IS3_mS8_SV_SW_EESX_S10_S12_S13_S15_S18_S1B_EUlmSS_mSU_E_SW_EESX_S10_S13_RKS11_S15_S18_S1B_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.embree::PrimInfoT", align 16 ; 13 uses
  %3 = alloca %"struct.embree::range", align 8    ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !71, !align !78 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = mul i64 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !71, !align !74
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = udiv i64 %i.d, %i.g                      ; 3 uses
  %i.i = add i64 %1, 1
  %i.j = mul i64 %i.c, %i.i
  %i.k = udiv i64 %i.j, %i.g                      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !71, !align !78 ; 6 uses
  %i.n = load <4 x float>, ptr %i.m, align 16     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load <4 x float>, ptr %i.o, align 16     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load <4 x float>, ptr %i.q, align 16     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load <4 x float>, ptr %i.s, align 16     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.22.64.copyload = load i64, ptr %i.u, align 16 ; 4 uses
  %.sroa.27.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.sroa.27.64.copyload = load i64, ptr %.sroa.27.64..sroa_idx, align 8 ; 4 uses
  %i.v = icmp ult i64 %i.h, %i.k
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %1
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1
  %i.aa = load i64, ptr %i.z, align 8             ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ab, align 8, !nonnull !71, !align !74
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !71, !align !74 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aa
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = and i32 %i.as, 2097152
  %.not.i.peel = icmp eq i32 %i.at, 0
  br i1 %.not.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = and i32 %i.as, 255
  %i.av = shl nuw i32 1, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, %i.aw
  %.not.i.i.peel = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp ne i32 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !range !70, !noundef !71
  %i.bf = zext i1 %i.bc to i8
  %.not8.i.i.peel = icmp eq i8 %i.be, %i.bf
  br i1 %.not8.i.i.peel, label %_ZN6embree5Scene9Iterator22atEm.exit.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel

_ZN6embree5Scene9Iterator22atEm.exit.i.peel:      ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bh = load i32, ptr %i.bg, align 16
  %i.bi = zext i32 %i.bh to i64
  br label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel

_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel: ; preds = %_ZN6embree5Scene9Iterator22atEm.exit.i.peel, %bb.d, %bb.c, %bb.b, %.lr.ph
  %i.bj = phi i64 [ %i.bi, %_ZN6embree5Scene9Iterator22atEm.exit.i.peel ], [ 0, %.lr.ph ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.bk = add i64 %i.y, %i.k
  %i.bl = sub i64 %i.bk, %i.h
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bl) ; 3 uses
  %i.bn = icmp ugt i64 %i.bm, %i.y
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bo = load ptr, ptr %i.ac, align 8, !nonnull !71, !align !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 %i.y, ptr %3, align 8
  store i64 %i.bm, ptr %i.ad, align 8
  %i.bp = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 6224
  %.sroa.6.64.copyload.peel = load i64, ptr %i.bq, align 16
  %.sroa.10.64..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.bp, i64 6232
  %.sroa.10.64.copyload.peel = load i64, ptr %.sroa.10.64..sroa_idx.peel, align 8
  %i.br = load ptr, ptr %i.bo, align 8, !noalias !215, !nonnull !71, !align !74
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !215, !nonnull !71, !align !74 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !215
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 488
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !215
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.aa
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !215, !nonnull !71, !noundef !71 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.by, i64 60
  %5 = load i32, ptr %4, align 4, !noalias !215   ; 2 uses
  %6 = and i32 %5, 2097152
  %7 = icmp ne i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = and i32 %5, 255
  %9 = shl nuw i32 1, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %12 = load i64, ptr %11, align 8, !noalias !215
  %13 = and i64 %12, %10
  %.not.i.i31.peel = icmp ne i64 %13, 0
  tail call void @llvm.assume(i1 %.not.i.i31.peel)
  %i.bz = load ptr, ptr %i.br, align 8, !noalias !216, !nonnull !71, !align !74
  %i.ca = add i64 %.sroa.22.64.copyload, %.sroa.6.64.copyload.peel
  %i.cb = sub i64 %.sroa.27.64.copyload, %i.ca
  %i.cc = add i64 %i.cb, %.sroa.10.64.copyload.peel
  %i.cd = trunc i64 %i.aa to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !217
  %i.cg = load ptr, ptr %i.by, align 16, !noalias !217
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 376
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !217
  call void %i.ci(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoT") align 16 %2, ptr noundef nonnull align 16 dereferenceable(88) %i.by, ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.cc, i32 noundef %i.cd), !inline_history !203
  %i.cj = load <4 x float>, ptr %2, align 16, !noalias !218
  %i.ck = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.n, <4 x float> %i.cj)
  %i.cl = load <4 x float>, ptr %i.ae, align 16, !noalias !219
  %i.cm = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.p, <4 x float> %i.cl)
  %i.cn = load <4 x float>, ptr %i.af, align 16, !noalias !220
  %i.co = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.r, <4 x float> %i.cn)
  %i.cp = load <4 x float>, ptr %i.ag, align 16, !noalias !221
  %i.cq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.t, <4 x float> %i.cp)
  %i.cr = load i64, ptr %i.ah, align 16, !noalias !222
  %i.cs = add i64 %i.cr, %.sroa.22.64.copyload
  %i.ct = load i64, ptr %i.ai, align 8, !noalias !222
  %i.cu = add i64 %i.ct, %.sroa.27.64.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel
  %.sroa.042.1.peel = phi <4 x float> [ %i.ck, %bb.e ], [ %i.n, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.7.1.peel = phi <4 x float> [ %i.cm, %bb.e ], [ %i.p, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.12.1.peel = phi <4 x float> [ %i.co, %bb.e ], [ %i.r, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.17.1.peel = phi <4 x float> [ %i.cq, %bb.e ], [ %i.t, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.22.1.peel = phi i64 [ %i.cs, %bb.e ], [ %.sroa.22.64.copyload, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.27.1.peel = phi i64 [ %i.cu, %bb.e ], [ %.sroa.27.64.copyload, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %i.cv = sub i64 %i.h, %i.y
  %i.cw = add i64 %i.cv, %i.bm                    ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.k
  br i1 %i.cx, label %.peel.next, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.k, %bb.f
  %.sroa.042.1.lcssa = phi <4 x float> [ %.sroa.042.1.peel, %bb.f ], [ %.sroa.042.1, %bb.k ]
  %.sroa.7.1.lcssa = phi <4 x float> [ %.sroa.7.1.peel, %bb.f ], [ %.sroa.7.1, %bb.k ]
  %.sroa.12.1.lcssa = phi <4 x float> [ %.sroa.12.1.peel, %bb.f ], [ %.sroa.12.1, %bb.k ]
  %.sroa.17.1.lcssa = phi <4 x float> [ %.sroa.17.1.peel, %bb.f ], [ %.sroa.17.1, %bb.k ]
  %.sroa.22.1.lcssa = phi i64 [ %.sroa.22.1.peel, %bb.f ], [ %.sroa.22.1, %bb.k ]
  %.sroa.27.1.lcssa = phi i64 [ %.sroa.27.1.peel, %bb.f ], [ %.sroa.27.1, %bb.k ]
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.cy = phi ptr [ %i.a, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.sroa.042.0.lcssa = phi <4 x float> [ %i.n, %bb.a ], [ %.sroa.042.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.7.0.lcssa = phi <4 x float> [ %i.p, %bb.a ], [ %.sroa.7.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.12.0.lcssa = phi <4 x float> [ %i.r, %bb.a ], [ %.sroa.12.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.17.0.lcssa = phi <4 x float> [ %i.t, %bb.a ], [ %.sroa.17.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.64.copyload, %bb.a ], [ %.sroa.22.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.27.0.lcssa = phi i64 [ %.sroa.27.64.copyload, %bb.a ], [ %.sroa.27.1.lcssa, %._crit_edge.loopexit ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1040
  %i.da = getelementptr inbounds nuw [80 x i8], ptr %i.cz, i64 %1 ; 6 uses
  store <4 x float> %.sroa.042.0.lcssa, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <4 x float> %.sroa.7.0.lcssa, ptr %i.db, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store <4 x float> %.sroa.12.0.lcssa, ptr %i.dc, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  store <4 x float> %.sroa.17.0.lcssa, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  store i64 %.sroa.22.0.lcssa, ptr %i.de, align 16
  %.sroa.27.64..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  store i64 %.sroa.27.0.lcssa, ptr %.sroa.27.64..sroa_idx52, align 8
  ret void

.peel.next:                                       ; preds = %bb.f, %bb.k
  %.063.in = phi i64 [ %.063, %bb.k ], [ %i.aa, %bb.f ]
  %.02662 = phi i64 [ %i.fq, %bb.k ], [ %i.cw, %bb.f ] ; 2 uses
  %.sroa.27.060 = phi i64 [ %.sroa.27.1, %bb.k ], [ %.sroa.27.1.peel, %bb.f ] ; 3 uses
  %.sroa.22.059 = phi i64 [ %.sroa.22.1, %bb.k ], [ %.sroa.22.1.peel, %bb.f ] ; 3 uses
  %.sroa.17.058 = phi <4 x float> [ %.sroa.17.1, %bb.k ], [ %.sroa.17.1.peel, %bb.f ] ; 2 uses
  %.sroa.12.057 = phi <4 x float> [ %.sroa.12.1, %bb.k ], [ %.sroa.12.1.peel, %bb.f ] ; 2 uses
  %.sroa.7.056 = phi <4 x float> [ %.sroa.7.1, %bb.k ], [ %.sroa.7.1.peel, %bb.f ] ; 2 uses
  %.sroa.042.055 = phi <4 x float> [ %.sroa.042.1, %bb.k ], [ %.sroa.042.1.peel, %bb.f ] ; 2 uses
  %.063 = add i64 %.063.in, 1                     ; 4 uses
  %i.df = load ptr, ptr %i.ab, align 8, !nonnull !71, !align !74
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !71, !align !74 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 488
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.063
  %i.dl = load ptr, ptr %i.dk, align 8            ; 4 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.g

bb.g:                                             ; preds = %.peel.next
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 60
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %i.dp = and i32 %i.do, 2097152
  %.not.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dq = and i32 %i.do, 255
  %i.dr = shl nuw i32 1, %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = and i64 %i.du, %i.ds
  %.not.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = icmp ne i32 %i.dx, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.ea = load i8, ptr %i.dz, align 8, !range !70, !noundef !71
  %i.eb = zext i1 %i.dy to i8
  %.not8.i.i = icmp eq i8 %i.ea, %i.eb
  br i1 %.not8.i.i, label %_ZN6embree5Scene9Iterator22atEm.exit.i, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit

_ZN6embree5Scene9Iterator22atEm.exit.i:           ; preds = %bb.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.ed = load i32, ptr %i.ec, align 16
  %i.ee = zext i32 %i.ed to i64
  br label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit

_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit: ; preds = %.peel.next, %bb.g, %bb.h, %bb.i, %_ZN6embree5Scene9Iterator22atEm.exit.i
  %i.ef = phi i64 [ %i.ee, %_ZN6embree5Scene9Iterator22atEm.exit.i ], [ 0, %.peel.next ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ]
  %i.eg = sub i64 %i.k, %.02662
  %i.eh = call noundef i64 @llvm.umin.i64(i64 %i.ef, i64 %i.eg) ; 3 uses
  %.not = icmp eq i64 %i.eh, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ei = load ptr, ptr %i.ac, align 8, !nonnull !71, !align !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 0, ptr %3, align 8
  store i64 %i.eh, ptr %i.ad, align 8
  %i.ej = load ptr, ptr %0, align 8, !nonnull !71, !align !78
  %i.ek = getelementptr inbounds nuw [80 x i8], ptr %i.ej, i64 %1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 6224
  %.sroa.6.64.copyload = load i64, ptr %i.el, align 16
  %.sroa.10.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 6232
  %.sroa.10.64.copyload = load i64, ptr %.sroa.10.64..sroa_idx, align 8
  %i.em = load ptr, ptr %i.ei, align 8, !noalias !215, !nonnull !71, !align !74
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !215, !nonnull !71, !align !74
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !215
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 488
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !215
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.063
  %i.et = load ptr, ptr %i.es, align 8, !noalias !215, !nonnull !71, !noundef !71 ; 2 uses
  %i.eu = load ptr, ptr %i.em, align 8, !noalias !216, !nonnull !71, !align !74
  %i.ev = add i64 %.sroa.22.059, %.sroa.6.64.copyload
  %i.ew = sub i64 %.sroa.27.060, %i.ev
  %i.ex = add i64 %i.ew, %.sroa.10.64.copyload
  %i.ey = trunc i64 %.063 to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !217
  %i.fb = load ptr, ptr %i.et, align 16, !noalias !217
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 376
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !217
  call void %i.fd(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoT") align 16 %2, ptr noundef nonnull align 16 dereferenceable(88) %i.et, ptr noundef %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.ex, i32 noundef %i.ey), !inline_history !203
  %i.fe = load <4 x float>, ptr %2, align 16, !noalias !218
  %i.ff = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.042.055, <4 x float> %i.fe)
  %i.fg = load <4 x float>, ptr %i.ae, align 16, !noalias !219
  %i.fh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.056, <4 x float> %i.fg)
  %i.fi = load <4 x float>, ptr %i.af, align 16, !noalias !220
  %i.fj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.12.057, <4 x float> %i.fi)
  %i.fk = load <4 x float>, ptr %i.ag, align 16, !noalias !221
  %i.fl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.17.058, <4 x float> %i.fk)
  %i.fm = load i64, ptr %i.ah, align 16, !noalias !222
  %i.fn = add i64 %i.fm, %.sroa.22.059
  %i.fo = load i64, ptr %i.ai, align 8, !noalias !222
  %i.fp = add i64 %i.fo, %.sroa.27.060
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit
  %.sroa.042.1 = phi <4 x float> [ %i.ff, %bb.j ], [ %.sroa.042.055, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.7.1 = phi <4 x float> [ %i.fh, %bb.j ], [ %.sroa.7.056, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.12.1 = phi <4 x float> [ %i.fj, %bb.j ], [ %.sroa.12.057, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.17.1 = phi <4 x float> [ %i.fl, %bb.j ], [ %.sroa.17.058, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.22.1 = phi i64 [ %i.fn, %bb.j ], [ %.sroa.22.059, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.27.1 = phi i64 [ %i.fp, %bb.j ], [ %.sroa.27.060, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_12TriangleMeshENS8_23TriangleSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %i.fq = add i64 %.02662, %i.eh                  ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.k
  br i1 %i.fr, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !214
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef float @_ZZN6embree4sse227createPrimRefArray_presplitIZNS0_27createPrimRefArray_presplitINS_12TriangleMeshENS0_23TriangleSplitterFactoryEEENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEPNS_5SceneENS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISF_Lm32EEEEERNS_20BuildProgressMonitorEEUlRKSF_jRKNS0_13SplittingGridEPSF_RjE_ZNS2_IS3_S4_EES9_SB_SD_bmSJ_SL_EUlSN_E_SI_EES9_mRT1_RKS9_RKT_RKT0_ENKUlRKNS_5rangeImEEE_clES18_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
end_hunk_1
begin_hunk_2_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSD_19QuadSplitterFactoryEEESC_PS6_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISL_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSI_RKNS_5rangeImEEmmE_ZNSE_ISF_SG_EESC_SH_SJ_bmSP_SR_EUlRKSC_SZ_E_EET1_RNS_28ParallelForForPrefixSumStateIS11_EERT_T0_RKS11_RKT2_RKT3_EUlmE_mSC_ZNS5_IS7_mSC_SX_S10_EES11_S14_S16_S17_S19_S1C_S1F_EUlmSW_mE_S10_EES11_S14_S17_RKS15_S19_S1C_S1F_EUlmE_EEvS15_RKS17_EUlSW_E_EEvS15_S15_S15_S1M_PNS0_16TaskGroupContextEEUlvE_EEvS1J_S1P_mb:bb.a

bb.bb:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #28
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #28
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.ak, %bb.j ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSD_19QuadSplitterFactoryEEESC_PS6_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISL_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSI_RKNS_5rangeImEEmmE_ZNSE_ISF_SG_EESC_SH_SJ_bmSP_SR_EUlRKSC_SZ_E_EET1_RNS_28ParallelForForPrefixSumStateIS11_EERT_T0_RKS11_RKT2_RKT3_EUlmE_mSC_ZNS5_IS7_mSC_SX_S10_EES11_S14_S16_S17_S19_S1C_S1F_EUlmSW_mE_S10_EES11_S14_S17_RKS15_S19_S1C_S1F_EUlmE_EEvS15_RKS17_EUlSW_E_EEvS15_S15_S15_S1M_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !71, !align !74
  tail call void @_ZZN6embree29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS9_19QuadSplitterFactoryEEES8_PS2_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSE_RKNS_5rangeImEEmmE_ZNSA_ISB_SC_EES8_SD_SF_bmSL_SN_EUlRKS8_SV_E_EET1_RNS_28ParallelForForPrefixSumStateISX_EERT_T0_RKSX_RKT2_RKT3_EUlmE_mS8_ZNS1_IS3_mS8_ST_SW_EESX_S10_S12_S13_S15_S18_S1B_EUlmSS_mE_SW_EESX_S10_S13_RKS11_S15_S18_S1B_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef %i.d), !inline_history !2060
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSC_19QuadSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmE_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlRKSB_SY_E_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SW_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mE_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = add i64 %i.d, %i.b
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSC_19QuadSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmE_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlRKSB_SY_E_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SW_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mE_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.k, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.n), !inline_history !2060
  %i.o = load i64, ptr %i.a, align 8
  %i.p = load i64, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSC_19QuadSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmE_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlRKSB_SY_E_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SW_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mE_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextE(i64 noundef %i.k, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.q), !inline_history !2060
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !2060
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSC_19QuadSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmE_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlRKSB_SY_E_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SW_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mE_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSC_19QuadSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmE_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlRKSB_SY_E_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SW_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mE_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS9_19QuadSplitterFactoryEEES8_PS2_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSE_RKNS_5rangeImEEmmE_ZNSA_ISB_SC_EES8_SD_SF_bmSL_SN_EUlRKS8_SV_E_EET1_RNS_28ParallelForForPrefixSumStateISX_EERT_T0_RKSX_RKT2_RKT3_EUlmE_mS8_ZNS1_IS3_mS8_ST_SW_EESX_S10_S12_S13_S15_S18_S1B_EUlmSS_mE_SW_EESX_S10_S13_RKS11_S15_S18_S1B_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.embree::PrimInfoT", align 16 ; 12 uses
  %3 = alloca %"struct.embree::range", align 8    ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !71, !align !78 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = mul i64 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !71, !align !74
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = udiv i64 %i.d, %i.g                      ; 4 uses
  %i.i = add i64 %1, 1
  %i.j = mul i64 %i.c, %i.i
  %i.k = udiv i64 %i.j, %i.g                      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !71, !align !78 ; 5 uses
  %i.n = load <4 x float>, ptr %i.m, align 16     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load <4 x float>, ptr %i.o, align 16     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load <4 x float>, ptr %i.q, align 16     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load <4 x float>, ptr %i.s, align 16     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.v = load <2 x i64>, ptr %i.u, align 16       ; 3 uses
  %i.w = icmp ult i64 %i.h, %i.k
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %1
  %i.z = load i64, ptr %i.y, align 8              ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1
  %i.ab = load i64, ptr %i.aa, align 8            ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !nonnull !71, !align !74
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !71, !align !74 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ab
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = and i32 %i.as, 2097152
  %.not.i.peel = icmp eq i32 %i.at, 0
  br i1 %.not.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = and i32 %i.as, 255
  %i.av = shl nuw i32 1, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, %i.aw
  %.not.i.i.peel = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp ne i32 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !range !70, !noundef !71
  %i.bf = zext i1 %i.bc to i8
  %.not8.i.i.peel = icmp eq i8 %i.be, %i.bf
  br i1 %.not8.i.i.peel, label %_ZN6embree5Scene9Iterator22atEm.exit.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel

_ZN6embree5Scene9Iterator22atEm.exit.i.peel:      ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bh = load i32, ptr %i.bg, align 16
  %i.bi = zext i32 %i.bh to i64
  br label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel

_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel: ; preds = %_ZN6embree5Scene9Iterator22atEm.exit.i.peel, %bb.d, %bb.c, %bb.b, %.lr.ph
  %i.bj = phi i64 [ %i.bi, %_ZN6embree5Scene9Iterator22atEm.exit.i.peel ], [ 0, %.lr.ph ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.bk = add i64 %i.z, %i.k
  %i.bl = sub i64 %i.bk, %i.h
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bl) ; 3 uses
  %i.bn = icmp ugt i64 %i.bm, %i.z
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bo = load ptr, ptr %i.ad, align 8, !nonnull !71, !align !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 %i.z, ptr %3, align 8
  store i64 %i.bm, ptr %i.ae, align 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !2079, !nonnull !71, !align !74
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !2079, !nonnull !71, !align !74 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !2079
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 488
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !2079
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ab
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !2079, !nonnull !71, !noundef !71 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.bw, i64 60
  %5 = load i32, ptr %4, align 4, !noalias !2079  ; 2 uses
  %6 = and i32 %5, 2097152
  %7 = icmp ne i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = and i32 %5, 255
  %9 = shl nuw i32 1, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %12 = load i64, ptr %11, align 8, !noalias !2079
  %13 = and i64 %12, %10
  %.not.i.i30.peel = icmp ne i64 %13, 0
  tail call void @llvm.assume(i1 %.not.i.i30.peel)
  %i.bx = load ptr, ptr %i.bp, align 8, !noalias !2080, !nonnull !71, !align !74
  %i.by = trunc i64 %i.ab to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !2081
  %i.cb = load ptr, ptr %i.bw, align 16, !noalias !2081
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 376
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !2081
  call void %i.cd(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoT") align 16 %2, ptr noundef nonnull align 16 dereferenceable(88) %i.bw, ptr noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.h, i32 noundef %i.by), !inline_history !2067
  %i.ce = load <4 x float>, ptr %2, align 16, !noalias !2082
  %i.cf = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.n, <4 x float> %i.ce)
  %i.cg = load <4 x float>, ptr %i.af, align 16, !noalias !2083
  %i.ch = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.p, <4 x float> %i.cg)
  %i.ci = load <4 x float>, ptr %i.ag, align 16, !noalias !2084
  %i.cj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.r, <4 x float> %i.ci)
  %i.ck = load <4 x float>, ptr %i.ah, align 16, !noalias !2085
  %i.cl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.t, <4 x float> %i.ck)
  %i.cm = load <2 x i64>, ptr %i.ai, align 16, !noalias !2086
  %i.cn = add <2 x i64> %i.cm, %i.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel
  %.sroa.035.1.peel = phi <4 x float> [ %i.cf, %bb.e ], [ %i.n, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.637.1.peel = phi <4 x float> [ %i.ch, %bb.e ], [ %i.p, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.1039.1.peel = phi <4 x float> [ %i.cj, %bb.e ], [ %i.r, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.1441.1.peel = phi <4 x float> [ %i.cl, %bb.e ], [ %i.t, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %i.co = phi <2 x i64> [ %i.cn, %bb.e ], [ %i.v, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %i.cp = sub i64 %i.h, %i.z
  %i.cq = add i64 %i.cp, %i.bm                    ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.k
  br i1 %i.cr, label %.peel.next, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.k, %bb.f
  %.sroa.035.1.lcssa = phi <4 x float> [ %.sroa.035.1.peel, %bb.f ], [ %.sroa.035.1, %bb.k ]
  %.sroa.637.1.lcssa = phi <4 x float> [ %.sroa.637.1.peel, %bb.f ], [ %.sroa.637.1, %bb.k ]
  %.sroa.1039.1.lcssa = phi <4 x float> [ %.sroa.1039.1.peel, %bb.f ], [ %.sroa.1039.1, %bb.k ]
  %.sroa.1441.1.lcssa = phi <4 x float> [ %.sroa.1441.1.peel, %bb.f ], [ %.sroa.1441.1, %bb.k ]
  %i.cs = phi <2 x i64> [ %i.co, %bb.f ], [ %i.ff, %bb.k ]
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ct = phi ptr [ %i.a, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.sroa.035.0.lcssa = phi <4 x float> [ %i.n, %bb.a ], [ %.sroa.035.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.637.0.lcssa = phi <4 x float> [ %i.p, %bb.a ], [ %.sroa.637.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.1039.0.lcssa = phi <4 x float> [ %i.r, %bb.a ], [ %.sroa.1039.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.1441.0.lcssa = phi <4 x float> [ %i.t, %bb.a ], [ %.sroa.1441.1.lcssa, %._crit_edge.loopexit ]
  %i.cu = phi <2 x i64> [ %i.v, %bb.a ], [ %i.cs, %._crit_edge.loopexit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 1040
  %i.cw = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %1 ; 5 uses
  store <4 x float> %.sroa.035.0.lcssa, ptr %i.cw, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x float> %.sroa.637.0.lcssa, ptr %i.cx, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store <4 x float> %.sroa.1039.0.lcssa, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store <4 x float> %.sroa.1441.0.lcssa, ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store <2 x i64> %i.cu, ptr %i.da, align 16
  ret void

.peel.next:                                       ; preds = %bb.f, %bb.k
  %.054.in = phi i64 [ %.054, %bb.k ], [ %i.ab, %bb.f ]
  %.02553 = phi i64 [ %i.fg, %bb.k ], [ %i.cq, %bb.f ] ; 3 uses
  %.sroa.1441.049 = phi <4 x float> [ %.sroa.1441.1, %bb.k ], [ %.sroa.1441.1.peel, %bb.f ] ; 2 uses
  %.sroa.1039.048 = phi <4 x float> [ %.sroa.1039.1, %bb.k ], [ %.sroa.1039.1.peel, %bb.f ] ; 2 uses
  %.sroa.637.047 = phi <4 x float> [ %.sroa.637.1, %bb.k ], [ %.sroa.637.1.peel, %bb.f ] ; 2 uses
  %.sroa.035.046 = phi <4 x float> [ %.sroa.035.1, %bb.k ], [ %.sroa.035.1.peel, %bb.f ] ; 2 uses
  %i.db = phi <2 x i64> [ %i.ff, %bb.k ], [ %i.co, %bb.f ] ; 2 uses
  %.054 = add i64 %.054.in, 1                     ; 4 uses
  %i.dc = load ptr, ptr %i.ac, align 8, !nonnull !71, !align !74
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !71, !align !74 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 488
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %.054
  %i.di = load ptr, ptr %i.dh, align 8            ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.g

bb.g:                                             ; preds = %.peel.next
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 60
  %i.dl = load i32, ptr %i.dk, align 4            ; 2 uses
  %i.dm = and i32 %i.dl, 2097152
  %.not.i = icmp eq i32 %i.dm, 0
  br i1 %.not.i, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dn = and i32 %i.dl, 255
  %i.do = shl nuw i32 1, %i.dn
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = and i64 %i.dr, %i.dp
  %.not.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 36
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = icmp ne i32 %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dx = load i8, ptr %i.dw, align 8, !range !70, !noundef !71
  %i.dy = zext i1 %i.dv to i8
  %.not8.i.i = icmp eq i8 %i.dx, %i.dy
  br i1 %.not8.i.i, label %_ZN6embree5Scene9Iterator22atEm.exit.i, label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit

_ZN6embree5Scene9Iterator22atEm.exit.i:           ; preds = %bb.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.ea = load i32, ptr %i.dz, align 16
  %i.eb = zext i32 %i.ea to i64
  br label %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit

_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit: ; preds = %.peel.next, %bb.g, %bb.h, %bb.i, %_ZN6embree5Scene9Iterator22atEm.exit.i
  %i.ec = phi i64 [ %i.eb, %_ZN6embree5Scene9Iterator22atEm.exit.i ], [ 0, %.peel.next ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ]
  %i.ed = sub i64 %i.k, %.02553
  %i.ee = call noundef i64 @llvm.umin.i64(i64 %i.ec, i64 %i.ed) ; 3 uses
  %.not = icmp eq i64 %i.ee, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ef = load ptr, ptr %i.ad, align 8, !nonnull !71, !align !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 0, ptr %3, align 8
  store i64 %i.ee, ptr %i.ae, align 8
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !2079, !nonnull !71, !align !74
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !2079, !nonnull !71, !align !74
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !2079
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 488
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !2079
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %.054
  %i.en = load ptr, ptr %i.em, align 8, !noalias !2079, !nonnull !71, !noundef !71 ; 2 uses
  %i.eo = load ptr, ptr %i.eg, align 8, !noalias !2080, !nonnull !71, !align !74
  %i.ep = trunc i64 %.054 to i32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !2081
  %i.es = load ptr, ptr %i.en, align 16, !noalias !2081
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 376
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !2081
  call void %i.eu(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoT") align 16 %2, ptr noundef nonnull align 16 dereferenceable(88) %i.en, ptr noundef %i.er, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %.02553, i32 noundef %i.ep), !inline_history !2067
  %i.ev = load <4 x float>, ptr %2, align 16, !noalias !2082
  %i.ew = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.035.046, <4 x float> %i.ev)
  %i.ex = load <4 x float>, ptr %i.af, align 16, !noalias !2083
  %i.ey = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.637.047, <4 x float> %i.ex)
  %i.ez = load <4 x float>, ptr %i.ag, align 16, !noalias !2084
  %i.fa = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1039.048, <4 x float> %i.ez)
  %i.fb = load <4 x float>, ptr %i.ah, align 16, !noalias !2085
  %i.fc = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1441.049, <4 x float> %i.fb)
  %i.fd = load <2 x i64>, ptr %i.ai, align 16, !noalias !2086
  %i.fe = add <2 x i64> %i.fd, %i.db
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit
  %.sroa.035.1 = phi <4 x float> [ %i.ew, %bb.j ], [ %.sroa.035.046, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.637.1 = phi <4 x float> [ %i.ey, %bb.j ], [ %.sroa.637.047, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.1039.1 = phi <4 x float> [ %i.fa, %bb.j ], [ %.sroa.1039.048, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.1441.1 = phi <4 x float> [ %i.fc, %bb.j ], [ %.sroa.1441.049, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %i.ff = phi <2 x i64> [ %i.fe, %bb.j ], [ %i.db, %_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmE_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlRKS7_SU_E_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %i.fg = add i64 %.02553, %i.ee                  ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.k
  br i1 %i.fh, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !2078
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSC_19QuadSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.394, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
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
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.8)
          to label %bb.d unwind label %bb.e

end_hunk_2
begin_hunk_3_@_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSD_19QuadSplitterFactoryEEESC_PS6_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISL_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSI_RKNS_5rangeImEEmmRKSC_E_ZNSE_ISF_SG_EESC_SH_SJ_bmSP_SR_EUlSY_SY_E0_EET1_RNS_28ParallelForForPrefixSumStateIS11_EERT_T0_RKS11_RKT2_RKT3_EUlmE_mSC_ZNS5_IS7_mSC_SZ_S10_EES11_S14_S16_S17_S19_S1C_S1F_EUlmSW_mSY_E_S10_EES11_S14_S17_RKS15_S19_S1C_S1F_EUlmE_EEvS15_RKS17_EUlSW_E_EEvS15_S15_S15_S1M_PNS0_16TaskGroupContextEEUlvE_EEvS1J_S1P_mb:bb.a
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #28
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.bc, %bb.bb
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #28
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.ba, %bb.az, %bb.aw
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.aw ], [ %i.ej, %bb.az ], [ %i.ej, %bb.ba ]
  %i.ev = load ptr, ptr %11, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #22
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j, %bb.m, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.ac
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.ac ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.m ], [ %i.ak, %bb.j ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #22
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSD_19QuadSplitterFactoryEEESC_PS6_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISL_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSI_RKNS_5rangeImEEmmRKSC_E_ZNSE_ISF_SG_EESC_SH_SJ_bmSP_SR_EUlSY_SY_E0_EET1_RNS_28ParallelForForPrefixSumStateIS11_EERT_T0_RKS11_RKT2_RKT3_EUlmE_mSC_ZNS5_IS7_mSC_SZ_S10_EES11_S14_S16_S17_S19_S1C_S1F_EUlmSW_mSY_E_S10_EES11_S14_S17_RKS15_S19_S1C_S1F_EUlmE_EEvS15_RKS17_EUlSW_E_EEvS15_S15_S15_S1M_PNS0_16TaskGroupContextEEUlvE_E7executeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 4 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !71, !align !74
  tail call void @_ZZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS9_19QuadSplitterFactoryEEES8_PS2_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSE_RKNS_5rangeImEEmmRKS8_E_ZNSA_ISB_SC_EES8_SD_SF_bmSL_SN_EUlSU_SU_E0_EET1_RNS_28ParallelForForPrefixSumStateISX_EERT_T0_RKSX_RKT2_RKT3_EUlmE_mS8_ZNS1_IS3_mS8_SV_SW_EESX_S10_S12_S13_S15_S18_S1B_EUlmSS_mSU_E_SW_EESX_S10_S13_RKS11_S15_S18_S1B_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 noundef %i.d), !inline_history !2089
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSC_19QuadSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

bb.c:                                             ; preds = %bb.a
  %i.j = add i64 %i.d, %i.b
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSC_19QuadSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextE(i64 noundef %i.d, i64 noundef %i.k, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.n), !inline_history !2089
  %i.o = load i64, ptr %i.a, align 8
  %i.p = load i64, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.m, align 8
  tail call void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSC_19QuadSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextE(i64 noundef %i.k, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.q), !inline_history !2089
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !2089
  br label %_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSC_19QuadSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit

_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENSC_19QuadSplitterFactoryEEESB_PS5_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISK_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSH_RKNS_5rangeImEEmmRKSB_E_ZNSD_ISE_SF_EESB_SG_SI_bmSO_SQ_EUlSX_SX_E0_EET1_RNS_28ParallelForForPrefixSumStateIS10_EERT_T0_RKS10_RKT2_RKT3_EUlmE_mSB_ZNS4_IS6_mSB_SY_SZ_EES10_S13_S15_S16_S18_S1B_S1E_EUlmSV_mSX_E_SZ_EES10_S13_S16_RKS14_S18_S1B_S1E_EUlmE_EEvS14_RKS16_EUlSV_E_EEvS14_S14_S14_S1L_PNS0_16TaskGroupContextEENKUlvE_clEv.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS9_19QuadSplitterFactoryEEES8_PS2_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSE_RKNS_5rangeImEEmmRKS8_E_ZNSA_ISB_SC_EES8_SD_SF_bmSL_SN_EUlSU_SU_E0_EET1_RNS_28ParallelForForPrefixSumStateISX_EERT_T0_RKSX_RKT2_RKT3_EUlmE_mS8_ZNS1_IS3_mS8_SV_SW_EESX_S10_S12_S13_S15_S18_S1B_EUlmSS_mSU_E_SW_EESX_S10_S13_RKS11_S15_S18_S1B_ENKUlmE_clEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %2 = alloca %"class.embree::PrimInfoT", align 16 ; 13 uses
  %3 = alloca %"struct.embree::range", align 8    ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !71, !align !78 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = mul i64 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !71, !align !74
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = udiv i64 %i.d, %i.g                      ; 3 uses
  %i.i = add i64 %1, 1
  %i.j = mul i64 %i.c, %i.i
  %i.k = udiv i64 %i.j, %i.g                      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !71, !align !78 ; 6 uses
  %i.n = load <4 x float>, ptr %i.m, align 16     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load <4 x float>, ptr %i.o, align 16     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load <4 x float>, ptr %i.q, align 16     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.t = load <4 x float>, ptr %i.s, align 16     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.22.64.copyload = load i64, ptr %i.u, align 16 ; 4 uses
  %.sroa.27.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %.sroa.27.64.copyload = load i64, ptr %.sroa.27.64..sroa_idx, align 8 ; 4 uses
  %i.v = icmp ult i64 %i.h, %i.k
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %1
  %i.y = load i64, ptr %i.x, align 8              ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1
  %i.aa = load i64, ptr %i.z, align 8             ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.aj = load ptr, ptr %i.ab, align 8, !nonnull !71, !align !74
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !71, !align !74 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aa
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  %i.as = load i32, ptr %i.ar, align 4            ; 2 uses
  %i.at = and i32 %i.as, 2097152
  %.not.i.peel = icmp eq i32 %i.at, 0
  br i1 %.not.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.au = and i32 %i.as, 255
  %i.av = shl nuw i32 1, %i.au
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, %i.aw
  %.not.i.i.peel = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = icmp ne i32 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.be = load i8, ptr %i.bd, align 8, !range !70, !noundef !71
  %i.bf = zext i1 %i.bc to i8
  %.not8.i.i.peel = icmp eq i8 %i.be, %i.bf
  br i1 %.not8.i.i.peel, label %_ZN6embree5Scene9Iterator22atEm.exit.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel

_ZN6embree5Scene9Iterator22atEm.exit.i.peel:      ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bh = load i32, ptr %i.bg, align 16
  %i.bi = zext i32 %i.bh to i64
  br label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel

_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel: ; preds = %_ZN6embree5Scene9Iterator22atEm.exit.i.peel, %bb.d, %bb.c, %bb.b, %.lr.ph
  %i.bj = phi i64 [ %i.bi, %_ZN6embree5Scene9Iterator22atEm.exit.i.peel ], [ 0, %.lr.ph ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.bk = add i64 %i.y, %i.k
  %i.bl = sub i64 %i.bk, %i.h
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bl) ; 3 uses
  %i.bn = icmp ugt i64 %i.bm, %i.y
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.bo = load ptr, ptr %i.ac, align 8, !nonnull !71, !align !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 %i.y, ptr %3, align 8
  store i64 %i.bm, ptr %i.ad, align 8
  %i.bp = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 6224
  %.sroa.6.64.copyload.peel = load i64, ptr %i.bq, align 16
  %.sroa.10.64..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.bp, i64 6232
  %.sroa.10.64.copyload.peel = load i64, ptr %.sroa.10.64..sroa_idx.peel, align 8
  %i.br = load ptr, ptr %i.bo, align 8, !noalias !2108, !nonnull !71, !align !74
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !2108, !nonnull !71, !align !74 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !2108
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 488
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !2108
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.aa
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !2108, !nonnull !71, !noundef !71 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.by, i64 60
  %5 = load i32, ptr %4, align 4, !noalias !2108  ; 2 uses
  %6 = and i32 %5, 2097152
  %7 = icmp ne i32 %6, 0
  tail call void @llvm.assume(i1 %7)
  %8 = and i32 %5, 255
  %9 = shl nuw i32 1, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %12 = load i64, ptr %11, align 8, !noalias !2108
  %13 = and i64 %12, %10
  %.not.i.i31.peel = icmp ne i64 %13, 0
  tail call void @llvm.assume(i1 %.not.i.i31.peel)
  %i.bz = load ptr, ptr %i.br, align 8, !noalias !2109, !nonnull !71, !align !74
  %i.ca = add i64 %.sroa.22.64.copyload, %.sroa.6.64.copyload.peel
  %i.cb = sub i64 %.sroa.27.64.copyload, %i.ca
  %i.cc = add i64 %i.cb, %.sroa.10.64.copyload.peel
  %i.cd = trunc i64 %i.aa to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !2110
  %i.cg = load ptr, ptr %i.by, align 16, !noalias !2110
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 376
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !2110
  call void %i.ci(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoT") align 16 %2, ptr noundef nonnull align 16 dereferenceable(88) %i.by, ptr noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.cc, i32 noundef %i.cd), !inline_history !2096
  %i.cj = load <4 x float>, ptr %2, align 16, !noalias !2111
  %i.ck = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.n, <4 x float> %i.cj)
  %i.cl = load <4 x float>, ptr %i.ae, align 16, !noalias !2112
  %i.cm = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.p, <4 x float> %i.cl)
  %i.cn = load <4 x float>, ptr %i.af, align 16, !noalias !2113
  %i.co = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.r, <4 x float> %i.cn)
  %i.cp = load <4 x float>, ptr %i.ag, align 16, !noalias !2114
  %i.cq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.t, <4 x float> %i.cp)
  %i.cr = load i64, ptr %i.ah, align 16, !noalias !2115
  %i.cs = add i64 %i.cr, %.sroa.22.64.copyload
  %i.ct = load i64, ptr %i.ai, align 8, !noalias !2115
  %i.cu = add i64 %i.ct, %.sroa.27.64.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel
  %.sroa.042.1.peel = phi <4 x float> [ %i.ck, %bb.e ], [ %i.n, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.7.1.peel = phi <4 x float> [ %i.cm, %bb.e ], [ %i.p, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.12.1.peel = phi <4 x float> [ %i.co, %bb.e ], [ %i.r, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.17.1.peel = phi <4 x float> [ %i.cq, %bb.e ], [ %i.t, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.22.1.peel = phi i64 [ %i.cs, %bb.e ], [ %.sroa.22.64.copyload, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.27.1.peel = phi i64 [ %i.cu, %bb.e ], [ %.sroa.27.64.copyload, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %i.cv = sub i64 %i.h, %i.y
  %i.cw = add i64 %i.cv, %i.bm                    ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.k
  br i1 %i.cx, label %.peel.next, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.k, %bb.f
  %.sroa.042.1.lcssa = phi <4 x float> [ %.sroa.042.1.peel, %bb.f ], [ %.sroa.042.1, %bb.k ]
  %.sroa.7.1.lcssa = phi <4 x float> [ %.sroa.7.1.peel, %bb.f ], [ %.sroa.7.1, %bb.k ]
  %.sroa.12.1.lcssa = phi <4 x float> [ %.sroa.12.1.peel, %bb.f ], [ %.sroa.12.1, %bb.k ]
  %.sroa.17.1.lcssa = phi <4 x float> [ %.sroa.17.1.peel, %bb.f ], [ %.sroa.17.1, %bb.k ]
  %.sroa.22.1.lcssa = phi i64 [ %.sroa.22.1.peel, %bb.f ], [ %.sroa.22.1, %bb.k ]
  %.sroa.27.1.lcssa = phi i64 [ %.sroa.27.1.peel, %bb.f ], [ %.sroa.27.1, %bb.k ]
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.cy = phi ptr [ %i.a, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.sroa.042.0.lcssa = phi <4 x float> [ %i.n, %bb.a ], [ %.sroa.042.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.7.0.lcssa = phi <4 x float> [ %i.p, %bb.a ], [ %.sroa.7.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.12.0.lcssa = phi <4 x float> [ %i.r, %bb.a ], [ %.sroa.12.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.17.0.lcssa = phi <4 x float> [ %i.t, %bb.a ], [ %.sroa.17.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.22.0.lcssa = phi i64 [ %.sroa.22.64.copyload, %bb.a ], [ %.sroa.22.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.27.0.lcssa = phi i64 [ %.sroa.27.64.copyload, %bb.a ], [ %.sroa.27.1.lcssa, %._crit_edge.loopexit ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1040
  %i.da = getelementptr inbounds nuw [80 x i8], ptr %i.cz, i64 %1 ; 6 uses
  store <4 x float> %.sroa.042.0.lcssa, ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <4 x float> %.sroa.7.0.lcssa, ptr %i.db, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store <4 x float> %.sroa.12.0.lcssa, ptr %i.dc, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  store <4 x float> %.sroa.17.0.lcssa, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  store i64 %.sroa.22.0.lcssa, ptr %i.de, align 16
  %.sroa.27.64..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  store i64 %.sroa.27.0.lcssa, ptr %.sroa.27.64..sroa_idx52, align 8
  ret void

.peel.next:                                       ; preds = %bb.f, %bb.k
  %.063.in = phi i64 [ %.063, %bb.k ], [ %i.aa, %bb.f ]
  %.02662 = phi i64 [ %i.fq, %bb.k ], [ %i.cw, %bb.f ] ; 2 uses
  %.sroa.27.060 = phi i64 [ %.sroa.27.1, %bb.k ], [ %.sroa.27.1.peel, %bb.f ] ; 3 uses
  %.sroa.22.059 = phi i64 [ %.sroa.22.1, %bb.k ], [ %.sroa.22.1.peel, %bb.f ] ; 3 uses
  %.sroa.17.058 = phi <4 x float> [ %.sroa.17.1, %bb.k ], [ %.sroa.17.1.peel, %bb.f ] ; 2 uses
  %.sroa.12.057 = phi <4 x float> [ %.sroa.12.1, %bb.k ], [ %.sroa.12.1.peel, %bb.f ] ; 2 uses
  %.sroa.7.056 = phi <4 x float> [ %.sroa.7.1, %bb.k ], [ %.sroa.7.1.peel, %bb.f ] ; 2 uses
  %.sroa.042.055 = phi <4 x float> [ %.sroa.042.1, %bb.k ], [ %.sroa.042.1.peel, %bb.f ] ; 2 uses
  %.063 = add i64 %.063.in, 1                     ; 4 uses
  %i.df = load ptr, ptr %i.ab, align 8, !nonnull !71, !align !74
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !71, !align !74 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 488
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.063
  %i.dl = load ptr, ptr %i.dk, align 8            ; 4 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.g

bb.g:                                             ; preds = %.peel.next
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 60
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %i.dp = and i32 %i.do, 2097152
  %.not.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dq = and i32 %i.do, 255
  %i.dr = shl nuw i32 1, %i.dq
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = and i64 %i.du, %i.ds
  %.not.i.i = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = icmp ne i32 %i.dx, 1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.ea = load i8, ptr %i.dz, align 8, !range !70, !noundef !71
  %i.eb = zext i1 %i.dy to i8
  %.not8.i.i = icmp eq i8 %i.ea, %i.eb
  br i1 %.not8.i.i, label %_ZN6embree5Scene9Iterator22atEm.exit.i, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit

_ZN6embree5Scene9Iterator22atEm.exit.i:           ; preds = %bb.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.ed = load i32, ptr %i.ec, align 16
  %i.ee = zext i32 %i.ed to i64
  br label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit

_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit: ; preds = %.peel.next, %bb.g, %bb.h, %bb.i, %_ZN6embree5Scene9Iterator22atEm.exit.i
  %i.ef = phi i64 [ %i.ee, %_ZN6embree5Scene9Iterator22atEm.exit.i ], [ 0, %.peel.next ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ]
  %i.eg = sub i64 %i.k, %.02662
  %i.eh = call noundef i64 @llvm.umin.i64(i64 %i.ef, i64 %i.eg) ; 3 uses
  %.not = icmp eq i64 %i.eh, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ei = load ptr, ptr %i.ac, align 8, !nonnull !71, !align !74 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 0, ptr %3, align 8
  store i64 %i.eh, ptr %i.ad, align 8
  %i.ej = load ptr, ptr %0, align 8, !nonnull !71, !align !78
  %i.ek = getelementptr inbounds nuw [80 x i8], ptr %i.ej, i64 %1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 6224
  %.sroa.6.64.copyload = load i64, ptr %i.el, align 16
  %.sroa.10.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ek, i64 6232
  %.sroa.10.64.copyload = load i64, ptr %.sroa.10.64..sroa_idx, align 8
  %i.em = load ptr, ptr %i.ei, align 8, !noalias !2108, !nonnull !71, !align !74
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !2108, !nonnull !71, !align !74
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !2108
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 488
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !2108
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.063
  %i.et = load ptr, ptr %i.es, align 8, !noalias !2108, !nonnull !71, !noundef !71 ; 2 uses
  %i.eu = load ptr, ptr %i.em, align 8, !noalias !2109, !nonnull !71, !align !74
  %i.ev = add i64 %.sroa.22.059, %.sroa.6.64.copyload
  %i.ew = sub i64 %.sroa.27.060, %i.ev
  %i.ex = add i64 %i.ew, %.sroa.10.64.copyload
  %i.ey = trunc i64 %.063 to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !2110
  %i.fb = load ptr, ptr %i.et, align 16, !noalias !2110
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 376
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !2110
  call void %i.fd(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoT") align 16 %2, ptr noundef nonnull align 16 dereferenceable(88) %i.et, ptr noundef %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.ex, i32 noundef %i.ey), !inline_history !2096
  %i.fe = load <4 x float>, ptr %2, align 16, !noalias !2111
  %i.ff = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.042.055, <4 x float> %i.fe)
  %i.fg = load <4 x float>, ptr %i.ae, align 16, !noalias !2112
  %i.fh = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.056, <4 x float> %i.fg)
  %i.fi = load <4 x float>, ptr %i.af, align 16, !noalias !2113
  %i.fj = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.12.057, <4 x float> %i.fi)
  %i.fk = load <4 x float>, ptr %i.ag, align 16, !noalias !2114
  %i.fl = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.17.058, <4 x float> %i.fk)
  %i.fm = load i64, ptr %i.ah, align 16, !noalias !2115
  %i.fn = add i64 %i.fm, %.sroa.22.059
  %i.fo = load i64, ptr %i.ai, align 8, !noalias !2115
  %i.fp = add i64 %i.fo, %.sroa.27.060
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit
  %.sroa.042.1 = phi <4 x float> [ %i.ff, %bb.j ], [ %.sroa.042.055, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.7.1 = phi <4 x float> [ %i.fh, %bb.j ], [ %.sroa.7.056, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.12.1 = phi <4 x float> [ %i.fj, %bb.j ], [ %.sroa.12.057, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.17.1 = phi <4 x float> [ %i.fl, %bb.j ], [ %.sroa.17.058, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.22.1 = phi i64 [ %i.fn, %bb.j ], [ %.sroa.22.059, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.27.1 = phi i64 [ %i.fp, %bb.j ], [ %.sroa.27.060, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene9Iterator2EmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse227createPrimRefArray_presplitINS_8QuadMeshENS8_19QuadSplitterFactoryEEES7_PS1_NS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISG_Lm32EEEEERNS_20BuildProgressMonitorEEUlPSD_RKNS_5rangeImEEmmRKS7_E_ZNS9_ISA_SB_EES7_SC_SE_bmSK_SM_EUlST_ST_E0_EET1_RNS_28ParallelForForPrefixSumStateISW_EERT_T0_RKSW_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %i.fq = add i64 %.02662, %i.eh                  ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.k
  br i1 %i.fr, label %.peel.next, label %._crit_edge.loopexit, !llvm.loop !2107
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef float @_ZZN6embree4sse227createPrimRefArray_presplitIZNS0_27createPrimRefArray_presplitINS_8QuadMeshENS0_19QuadSplitterFactoryEEENS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEPNS_5SceneENS_8Geometry9GTypeMaskEbmRNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISF_Lm32EEEEERNS_20BuildProgressMonitorEEUlRKSF_jRKNS0_13SplittingGridEPSF_RjE_ZNS2_IS3_S4_EES9_SB_SD_bmSJ_SL_EUlSN_E_SI_EES9_mRT1_RKS9_RKT_RKT0_ENKUlRKNS_5rangeImEEE_clES18_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

end_hunk_3
