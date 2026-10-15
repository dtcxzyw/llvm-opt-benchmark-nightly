Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_subdiv?download=true
inline.NumInlined: 2401
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmS3_RNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEE:bb.a
  store <4 x float> splat (float -inf), ptr %i.bj, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.bk, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.bl, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.bm, i8 0, i64 36, i1 false)
  store <2 x float> splat (float 1.000000e+00), ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 140
  store float 0.000000e+00, ptr %i.br, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !221
  store ptr %10, ptr %8, align 8, !noalias !221
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !221
  store ptr %12, ptr %9, align 8, !noalias !221
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %10, ptr %i.bs, align 8, !noalias !221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !222
  store i64 %.lcssa, ptr %i.a, align 8, !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !222
  store ptr %3, ptr %7, align 8, !noalias !222
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.a, ptr %i.bt, align 8, !noalias !222
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %11, ptr %i.bu, align 8, !noalias !222
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %8, ptr %i.bv, align 8, !noalias !222
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %13, ptr %i.bw, align 8, !noalias !222
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %9, ptr %i.bx, align 8, !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !222
  store ptr null, ptr %4, align 8, !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !222
  store ptr %7, ptr %5, align 8, !noalias !222
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSH_RNS_28ParallelForForPrefixSumStateISD_EEEUlPS7_RKNS_5rangeImEEmmE_ZNSG_15countSubPatchesESH_SH_SK_EUlRKSD_SS_E_EET1_RNSI_ISU_EERT_T0_RKSU_RKT2_RKT3_EUlmE_mSD_ZNS4_IS8_mSD_SQ_ST_EESU_SW_SY_SZ_S11_S14_S17_EUlmSP_mE_ST_EESU_SW_SZ_RKSX_S11_S14_S17_EUlmE_EEvSX_RKSZ_EUlSP_E_EEvSX_SX_SX_S1E_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %.lcssa, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %4)
          to label %bb.i unwind label %bb.k, !noalias !222

bb.i:                                             ; preds = %_ZN6embree19ParallelForForState4initIZNS0_4initINS_5Scene8IteratorINS_10SubdivMeshELb1EEEEEvRT_mEUlmE_EEvmRKS7_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !222
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.l, !noalias !222

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.i
  %i.by = load ptr, ptr %4, align 8, !noalias !222 ; 2 uses
  %.not = icmp eq ptr %i.by, null
  br i1 %.not, label %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSF_RNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmE_ZNSE_15countSubPatchesESF_SF_SI_EUlRKSB_SQ_E_EET1_RNSG_ISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SO_SR_EESS_SU_SW_SX_SZ_S12_S15_EUlmSN_mE_SR_EESS_SU_SX_RKSV_SZ_S12_S15_EUlmE_EEvSV_RKSX_.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.by, ptr %6, align 8, !noalias !222
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20, !noalias !222
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %6) #27
          to label %bb.j unwind label %bb.m, !noalias !222

bb.j:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.k:                                             ; preds = %_ZN6embree19ParallelForForState4initIZNS0_4initINS_5Scene8IteratorINS_10SubdivMeshELb1EEEEEvRT_mEUlmE_EEvmRKS7_m.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !222
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21

bb.l:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %6, align 8, !noalias !222
  %.not.i20 = icmp eq ptr %i.cc, null
  br i1 %.not.i20, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #20, !noalias !222
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21: ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bz, %bb.k ], [ %i.ca, %bb.l ], [ %i.cb, %bb.m ], [ %i.cb, %bb.n ]
  %i.cd = load ptr, ptr %4, align 8, !noalias !222
  %.not.i.i22 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i22, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit23, label %bb.o

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20, !noalias !222
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit23

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit23: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !222
  resume { ptr, i32 } %.pn.i

_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSF_RNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmE_ZNSE_15countSubPatchesESF_SF_SI_EUlRKSB_SQ_E_EET1_RNSG_ISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SO_SR_EESS_SU_SW_SX_SZ_S12_S15_EUlmSN_mE_SR_EESS_SU_SX_RKSV_SZ_S12_S15_EUlmE_EEvSV_RKSX_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.pre114.pre = load i64, ptr %i.a, align 8, !noalias !222 ; 3 uses
  %.pre113.pre = load i64, ptr %i.bn, align 8     ; 3 uses
  %.pre112.pre = load i64, ptr %i.bm, align 16    ; 3 uses
  %.pre111.pre = load <4 x float>, ptr %i.bl, align 16
  %.pre110.pre = load <4 x float>, ptr %i.bk, align 16
  %.pre109.pre = load <4 x float>, ptr %i.bj, align 16
  %.pre108.pre = load <4 x float>, ptr %i.bi, align 16
  %.pre107.pre = load <4 x float>, ptr %i.bh, align 16
  %.pre.pre = load <4 x float>, ptr %11, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !222
  %.not97 = icmp eq i64 %.pre114.pre, 0
  br i1 %.not97, label %_ZN6embree29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSE_RNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmE_ZNSD_15countSubPatchesESE_SE_SH_EUlRKSA_SP_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SN_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mE_SQ_EESR_ST_SW_RKSU_SY_S11_S14_.exit, label %.lr.ph92

.lr.ph92:                                         ; preds = %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSF_RNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmE_ZNSE_15countSubPatchesESF_SF_SI_EUlRKSB_SQ_E_EET1_RNSG_ISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SO_SR_EESS_SU_SW_SX_SZ_S12_S15_EUlmSN_mE_SR_EESS_SU_SX_RKSV_SZ_S12_S15_EUlmE_EEvSV_RKSX_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 1040
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 10256 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 1136
  %i.ch = load i64, ptr %i.cg, align 16
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 1144
  %i.cj = load i64, ptr %i.ci, align 8
  store <4 x float> %.pre.pre, ptr %i.cf, align 16
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 10272
  store <4 x float> %.pre107.pre, ptr %i.ck, align 16
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 10288
  store <4 x float> %.pre108.pre, ptr %i.cl, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 10304
  store <4 x float> %.pre109.pre, ptr %i.cm, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 10320
  store <4 x float> %.pre110.pre, ptr %i.cn, align 16
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 10336
  store <4 x float> %.pre111.pre, ptr %i.co, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 10352
  store i64 %.pre112.pre, ptr %i.cp, align 16
  %.sroa.25.96..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %3, i64 10360
  store i64 %.pre113.pre, ptr %.sroa.25.96..sroa_idx.peel, align 8
  %.sroa.28.96..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %3, i64 10368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.28.96..sroa_idx.peel, ptr noundef nonnull align 16 dereferenceable(16) %i.bo, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 10384
  %i.cr = load <4 x float>, ptr %i.bp, align 16
  store <4 x float> %i.cr, ptr %i.cq, align 16
  %i.cs = add i64 %i.ch, %.pre112.pre             ; 2 uses
  %i.ct = add i64 %i.cj, %.pre113.pre             ; 2 uses
  %exitcond101.peel.not = icmp eq i64 %.pre114.pre, 1
  br i1 %exitcond101.peel.not, label %_ZN6embree29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSE_RNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmE_ZNSD_15countSubPatchesESE_SE_SH_EUlRKSA_SP_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SN_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mE_SQ_EESR_ST_SW_RKSU_SY_S11_S14_.exit, label %.peel.next

.peel.next:                                       ; preds = %.lr.ph92, %.peel.next
  %.0.i591 = phi i64 [ %i.dj, %.peel.next ], [ 1, %.lr.ph92 ] ; 3 uses
  %.sroa.20.084 = phi i64 [ %i.dh, %.peel.next ], [ %i.cs, %.lr.ph92 ] ; 2 uses
  %.sroa.25.083 = phi i64 [ %i.di, %.peel.next ], [ %i.ct, %.lr.ph92 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [144 x i8], ptr %i.ce, i64 %.0.i591 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %i.cw = load i64, ptr %i.cv, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 104
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw [144 x i8], ptr %i.cf, i64 %.0.i591 ; 10 uses
  store <4 x float> splat (float +inf), ptr %i.cz, align 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x float> splat (float -inf), ptr %i.da, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store <4 x float> splat (float +inf), ptr %i.db, align 16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store <4 x float> splat (float -inf), ptr %i.dc, align 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  store <4 x float> splat (float +inf), ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 80
  store <4 x float> splat (float -inf), ptr %i.de, align 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 96
  store i64 %.sroa.20.084, ptr %i.df, align 16
  %.sroa.25.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 104
  store i64 %.sroa.25.083, ptr %.sroa.25.96..sroa_idx, align 8
  %.sroa.28.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cz, i64 112
  store <2 x i64> zeroinitializer, ptr %.sroa.28.96..sroa_idx, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 128
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.dg, align 16
  %i.dh = add i64 %i.cw, %.sroa.20.084            ; 2 uses
  %i.di = add i64 %i.cy, %.sroa.25.083            ; 2 uses
  %i.dj = add nuw i64 %.0.i591, 1                 ; 2 uses
  %exitcond101.not = icmp eq i64 %i.dj, %.pre114.pre
  br i1 %exitcond101.not, label %_ZN6embree29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSE_RNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmE_ZNSD_15countSubPatchesESE_SE_SH_EUlRKSA_SP_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SN_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mE_SQ_EESR_ST_SW_RKSU_SY_S11_S14_.exit, label %.peel.next, !llvm.loop !220

_ZN6embree29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSE_RNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmE_ZNSD_15countSubPatchesESE_SE_SH_EUlRKSA_SP_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SN_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mE_SQ_EESR_ST_SW_RKSU_SY_S11_S14_.exit: ; preds = %.peel.next, %.lr.ph92, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSF_RNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmE_ZNSE_15countSubPatchesESF_SF_SI_EUlRKSB_SQ_E_EET1_RNSG_ISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SO_SR_EESS_SU_SW_SX_SZ_S12_S15_EUlmSN_mE_SR_EESS_SU_SX_RKSV_SZ_S12_S15_EUlmE_EEvSV_RKSX_.exit
  %.sroa.25.0.lcssa = phi i64 [ %.pre113.pre, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSF_RNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmE_ZNSE_15countSubPatchesESF_SF_SI_EUlRKSB_SQ_E_EET1_RNSG_ISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SO_SR_EESS_SU_SW_SX_SZ_S12_S15_EUlmSN_mE_SR_EESS_SU_SX_RKSV_SZ_S12_S15_EUlmE_EEvSV_RKSX_.exit ], [ %i.ct, %.lr.ph92 ], [ %i.di, %.peel.next ]
  %.sroa.20.0.lcssa = phi i64 [ %.pre112.pre, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSF_RNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmE_ZNSE_15countSubPatchesESF_SF_SI_EUlRKSB_SQ_E_EET1_RNSG_ISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SO_SR_EESS_SU_SW_SX_SZ_S12_S15_EUlmSN_mE_SR_EESS_SU_SX_RKSV_SZ_S12_S15_EUlmE_EEvSV_RKSX_.exit ], [ %i.cs, %.lr.ph92 ], [ %i.dh, %.peel.next ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  store i64 %.sroa.20.0.lcssa, ptr %1, align 8
  store i64 %.sroa.25.0.lcssa, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, i64 noundef %1, ptr noundef nonnull align 16 dereferenceable(19472) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.embree::sse2::BVHBuilderMSMBlur::BuildRecord", align 16 ; 17 uses
  %4 = alloca %"struct.embree::FastAllocator::CachedAllocator", align 8 ; 4 uses
  %5 = alloca %"class.embree::sse2::BVHBuilderMSMBlur::BuilderT", align 8 ; 4 uses
  %6 = alloca %"struct.embree::Scene::BuildProgressMonitorInterface", align 8 ; 5 uses
  %7 = alloca %class.anon.205, align 8            ; 5 uses
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.209, align 8            ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %11 = alloca %class.anon.208, align 8           ; 10 uses
  %12 = alloca %class.anon.206, align 8           ; 4 uses
  %13 = alloca %class.anon.207, align 8           ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %14 = alloca %"struct.embree::sse2::SubdivRecalculatePrimRef", align 8 ; 6 uses
  %15 = alloca %"class.embree::Scene::Iterator.189", align 8 ; 6 uses
  %16 = alloca %"class.embree::PrimInfoMBT", align 16 ; 18 uses
  %17 = alloca %class.anon.202, align 8           ; 6 uses
  %18 = alloca %class.anon.203, align 1           ; 3 uses
  %19 = alloca %"struct.embree::sse2::BVHBuilderMSMBlur::Settings", align 8 ; 11 uses
  %20 = alloca %"struct.embree::BVHNodeRecordMB4D", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.g, ptr %14, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  tail call void @_ZN6embree13FastAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(376) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr %15, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i8 0, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store <4 x float> splat (float +inf), ptr %16, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.m, align 16
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.n, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.o, align 16
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  store <4 x float> splat (float +inf), ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 2 uses
  store <4 x float> splat (float -inf), ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.r, i8 0, i64 36, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 136
  store <2 x float> splat (float 1.000000e+00), ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 140
  store float 0.000000e+00, ptr %i.y, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store ptr %0, ptr %17, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.b, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %14, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !232
  store ptr %15, ptr %12, align 8, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20, !noalias !232
  store ptr %17, ptr %13, align 8, !noalias !232
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %15, ptr %i.ab, align 8, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !233
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.ad = load i64, ptr %i.ac, align 16, !noalias !233 ; 3 uses
  store i64 %i.ad, ptr %i.a, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !233
  store ptr %2, ptr %11, align 8, !noalias !233
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.a, ptr %i.ae, align 8, !noalias !233
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %16, ptr %i.af, align 8, !noalias !233
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %12, ptr %i.ag, align 8, !noalias !233
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %18, ptr %i.ah, align 8, !noalias !233
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %13, ptr %i.ai, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread, label %bb.b

_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !233
  br label %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !233
  store ptr null, ptr %8, align 8, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !233
  store ptr %11, ptr %9, align 8, !noalias !233
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISD_EEEUlPS7_RKNS_5rangeImEEmmRKSD_E_ZNSG_7rebuildEmSJ_EUlSQ_SQ_E_EET1_RNSH_IST_EERT_T0_RKST_RKT2_RKT3_EUlmE_mSD_ZNS4_IS8_mSD_SR_SS_EEST_SV_SX_SY_S10_S13_S16_EUlmSO_mSQ_E_SS_EEST_SV_SY_RKSW_S10_S13_S16_EUlmE_EEvSW_RKSY_EUlSO_E_EEvSW_SW_SW_S1D_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.ad, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %8)
          to label %bb.c unwind label %bb.e, !noalias !233

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !233
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.f, !noalias !233

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.c
  %i.aj = load ptr, ptr %8, align 8, !noalias !233 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.aj, ptr %10, align 8, !noalias !233
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20, !noalias !233
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #27
          to label %bb.d unwind label %bb.g, !noalias !233

bb.d:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !233
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7

bb.f:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %10, align 8, !noalias !233
  %.not.i6 = icmp eq ptr %i.an, null
  br i1 %.not.i6, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #20, !noalias !233
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7:  ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.al, %bb.f ], [ %i.am, %bb.g ], [ %i.am, %bb.h ]
  %i.ao = load ptr, ptr %8, align 8, !noalias !233
  %.not.i.i8 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i8, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #20, !noalias !233
  br label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit9

_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit9: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !233
  resume { ptr, i32 } %.pn.i

_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %.pre130.pre = load i64, ptr %i.a, align 8, !noalias !233 ; 2 uses
  %i.ap = load <2 x float>, ptr %i.x, align 8     ; 2 uses
  %i.aq = load <2 x float>, ptr %i.v, align 16    ; 2 uses
  %.sroa.48.112.copyload.pre.pre = load i64, ptr %i.u, align 8 ; 2 uses
  %.sroa.43.112.copyload.pre.pre = load i64, ptr %i.t, align 16 ; 2 uses
  %.pre123.pre = load i64, ptr %i.r, align 16     ; 2 uses
  %.pre122.pre = load <4 x float>, ptr %i.q, align 16 ; 2 uses
  %.pre121.pre = load <4 x float>, ptr %i.p, align 16 ; 2 uses
  %.pre120.pre = load <4 x float>, ptr %i.o, align 16 ; 2 uses
  %.pre119.pre = load <4 x float>, ptr %i.n, align 16 ; 2 uses
  %.pre118.pre = load <4 x float>, ptr %i.m, align 16 ; 2 uses
  %.pre.pre = load <4 x float>, ptr %16, align 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !233
  %.not108 = icmp eq i64 %.pre130.pre, 0
  br i1 %.not108, label %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit, label %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph

_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph: ; preds = %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit
  %i.ar = load i64, ptr %i.s, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 1040
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 10256
  %i.au = insertelement <2 x i64> poison, i64 %.pre123.pre, i64 0
  %i.av = insertelement <2 x i64> %i.au, i64 %i.ar, i64 1
  br label %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit

_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit: ; preds = %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit
  %.0.i95 = phi i64 [ 0, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %i.cp, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 3 uses
  %.sroa.014.094 = phi <4 x float> [ %.pre.pre, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %i.by, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 2 uses
  %.sroa.7.093 = phi <4 x float> [ %.pre118.pre, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %i.bz, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 2 uses
  %.sroa.12.092 = phi <4 x float> [ %.pre119.pre, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %i.ca, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 2 uses
  %.sroa.17.091 = phi <4 x float> [ %.pre120.pre, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %i.cb, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 2 uses
  %.sroa.22.090 = phi <4 x float> [ %.pre121.pre, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %i.cc, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 2 uses
  %.sroa.27.089 = phi <4 x float> [ %.pre122.pre, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %i.cd, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 2 uses
  %.sroa.43.086 = phi i64 [ %.sroa.43.112.copyload.pre.pre, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %i.ck, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 2 uses
  %.sroa.48.085 = phi i64 [ %.sroa.48.112.copyload.pre.pre, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %.sroa.2266.0, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 3 uses
  %i.aw = phi <2 x float> [ %i.aq, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %i.co, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 2 uses
  %i.ax = phi <2 x float> [ %i.ap, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %i.ci, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 4 uses
  %i.ay = phi <2 x i64> [ %i.av, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.lr.ph ], [ %i.cj, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %.0.i95 ; 11 uses
  %i.ba = load <4 x float>, ptr %i.az, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = load <4 x float>, ptr %i.bb, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.be = load <4 x float>, ptr %i.bd, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bg = load <4 x float>, ptr %i.bf, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bi = load <4 x float>, ptr %i.bh, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.bk = load <4 x float>, ptr %i.bj, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %.sroa.1879.112.copyload = load i64, ptr %i.bm, align 16
  %.sroa.20.112..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %.sroa.20.112.copyload = load i64, ptr %.sroa.20.112..sroa_idx, align 8 ; 2 uses
  %.sroa.21.112..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bn = load <2 x float>, ptr %.sroa.21.112..sroa_idx, align 16
  %.sroa.23.112..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.bo = getelementptr inbounds nuw [144 x i8], ptr %i.at, i64 %.0.i95 ; 10 uses
  store <4 x float> %.sroa.014.094, ptr %i.bo, align 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x float> %.sroa.7.093, ptr %i.bp, align 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store <4 x float> %.sroa.12.092, ptr %i.bq, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store <4 x float> %.sroa.17.091, ptr %i.br, align 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store <4 x float> %.sroa.22.090, ptr %i.bs, align 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store <4 x float> %.sroa.27.089, ptr %i.bt, align 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  %i.bv = load <2 x i64>, ptr %i.bl, align 16
  store <2 x i64> %i.ay, ptr %i.bu, align 16
  %.sroa.43.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 112
  store i64 %.sroa.43.086, ptr %.sroa.43.96..sroa_idx, align 16
  %.sroa.48.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  store i64 %.sroa.48.085, ptr %.sroa.48.96..sroa_idx, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  %i.bx = shufflevector <2 x float> %i.aw, <2 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.bx, ptr %i.bw, align 16
  %i.by = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.014.094, <4 x float> %i.ba) ; 2 uses
  %i.bz = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.093, <4 x float> %i.bc) ; 2 uses
  %i.ca = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.12.092, <4 x float> %i.be) ; 2 uses
  %i.cb = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.17.091, <4 x float> %i.bg) ; 2 uses
  %i.cc = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.22.090, <4 x float> %i.bi) ; 2 uses
  %i.cd = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.27.089, <4 x float> %i.bk) ; 2 uses
  %i.ce = load <2 x float>, ptr %.sroa.23.112..sroa_idx, align 8 ; 3 uses
  %i.cf = fcmp olt <2 x float> %i.ax, %i.ce
  %i.cg = shufflevector <2 x float> %i.ax, <2 x float> %i.ce, <2 x i32> <i32 0, i32 3>
  %i.ch = shufflevector <2 x float> %i.ce, <2 x float> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.ci = select <2 x i1> %i.cf, <2 x float> %i.cg, <2 x float> %i.ch ; 2 uses
  %i.cj = add <2 x i64> %i.bv, %i.ay              ; 2 uses
  %i.ck = add i64 %.sroa.1879.112.copyload, %.sroa.43.086 ; 2 uses
  %i.cl = icmp ult i64 %.sroa.48.085, %.sroa.20.112.copyload
  %i.cm = insertelement <2 x i1> poison, i1 %i.cl, i64 0
  %i.cn = shufflevector <2 x i1> %i.cm, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.co = select <2 x i1> %i.cn, <2 x float> %i.bn, <2 x float> %i.aw ; 2 uses
  %.sroa.2266.0 = call i64 @llvm.umax.i64(i64 %.sroa.48.085, i64 %.sroa.20.112.copyload) ; 2 uses
  %i.cp = add nuw i64 %.0.i95, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %.pre130.pre
  br i1 %exitcond.not, label %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit, label %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit, !llvm.loop !227

_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit: ; preds = %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit
  %i.cq = extractelement <2 x i64> %i.cj, i64 0
  br label %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit

_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit: ; preds = %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit
  %.sroa.48.0.lcssa = phi i64 [ %.sroa.48.112.copyload.pre.pre, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit ], [ 0, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread ], [ %.sroa.2266.0, %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit ]
  %.sroa.43.0.lcssa = phi i64 [ %.sroa.43.112.copyload.pre.pre, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit ], [ 0, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread ], [ %i.ck, %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit ] ; 2 uses
  %.sroa.32.0.lcssa = phi i64 [ %.pre123.pre, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit ], [ 0, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread ], [ %i.cq, %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit ]
  %.sroa.27.0.lcssa = phi <4 x float> [ %.pre122.pre, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit ], [ splat (float -inf), %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread ], [ %i.cd, %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit ]
  %.sroa.22.0.lcssa = phi <4 x float> [ %.pre121.pre, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit ], [ splat (float +inf), %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread ], [ %i.cc, %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit ]
  %.sroa.17.0.lcssa = phi <4 x float> [ %.pre120.pre, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit ], [ splat (float -inf), %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread ], [ %i.cb, %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit ]
  %.sroa.12.0.lcssa = phi <4 x float> [ %.pre119.pre, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit ], [ splat (float +inf), %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread ], [ %i.ca, %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit ]
  %.sroa.7.0.lcssa = phi <4 x float> [ %.pre118.pre, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit ], [ splat (float -inf), %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread ], [ %i.bz, %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit ]
  %.sroa.014.0.lcssa = phi <4 x float> [ %.pre.pre, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit ], [ splat (float +inf), %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread ], [ %i.by, %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit ]
  %i.cr = phi <2 x float> [ %i.aq, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit ], [ <float 0.000000e+00, float 1.000000e+00>, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread ], [ %i.co, %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit ]
  %i.cs = phi <2 x float> [ %i.ap, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit ], [ <float 1.000000e+00, float 0.000000e+00>, %_ZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISB_EEEUlPS5_RKNS_5rangeImEEmmRKSB_E_ZNSE_7rebuildEmSH_EUlSO_SO_E_EET1_RNSF_ISR_EERT_T0_RKSR_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SP_SQ_EESR_ST_SV_SW_SY_S11_S14_EUlmSM_mSO_E_SQ_EESR_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_.exit.thread ], [ %i.ci, %_ZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.ct = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 56
  store i64 1024, ptr %i.cz, align 8
  store i64 4, ptr %19, align 8
  store i64 80, ptr %i.ct, align 8
  %i.da = call noundef i32 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i32 4) #29, !srcloc !27
  %i.db = sext i32 %i.da to i64
  store i64 %i.db, ptr %i.cu, align 8
  store i64 1, ptr %i.cv, align 8
  store i64 1, ptr %i.cw, align 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.cx, align 8
  store i8 0, ptr %i.cy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dd = load ptr, ptr %i.j, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 392
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 1360
  %spec.select = select i1 %i.dg, ptr null, ptr %i.dh
  %.sroa.01.0.copyload = load ptr, ptr %14, align 8
  %.sroa.2.0.copyload = load ptr, ptr %i.h, align 8
  %i.di = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 104
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 616
  %i.dn = load ptr, ptr %i.dm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.b, ptr %7, align 8
  %.sroa.2.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !234
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree5Scene29BuildProgressMonitorInterfaceE, i64 16), ptr %6, align 8, !noalias !234
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.dn, ptr %i.do, align 8, !noalias !234
  call void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEEC2EPNS_22MemoryMonitorInterfaceES5_SA_SD_SE_SU_SW_RKNS1_8SettingsE(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef %spec.select, ptr %.sroa.01.0.copyload, ptr %.sroa.2.0.copyload, ptr nonnull %i.dj, ptr noundef nonnull byval(%class.anon.205) align 8 %7, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(64) %19), !noalias !234
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !234
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !235
  store i64 %.sroa.43.0.lcssa, ptr %i.dp, align 16, !noalias !235
  %.sroa.48.112..sroa_idx38 = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i64 %.sroa.48.0.lcssa, ptr %.sroa.48.112..sroa_idx38, align 8, !noalias !235
  %.sroa.4842.112..sroa_idx45 = getelementptr inbounds nuw i8, ptr %3, i64 144
  store <2 x float> %i.cr, ptr %.sroa.4842.112..sroa_idx45, align 16, !noalias !235
  %.sroa.52.112..sroa_idx53 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store <2 x float> %i.cs, ptr %.sroa.52.112..sroa_idx53, align 8, !noalias !235
  store i64 1, ptr %3, align 16, !noalias !235
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x float> %.sroa.014.0.lcssa, ptr %i.dq, align 16, !noalias !235
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x float> %.sroa.7.0.lcssa, ptr %i.dr, align 16, !noalias !235
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> %.sroa.12.0.lcssa, ptr %i.ds, align 16, !noalias !235
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x float> %.sroa.17.0.lcssa, ptr %i.dt, align 16, !noalias !235
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x float> %.sroa.22.0.lcssa, ptr %i.du, align 16, !noalias !235
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 96
  store <4 x float> %.sroa.27.0.lcssa, ptr %i.dv, align 16, !noalias !235
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 0, ptr %i.dw, align 16, !noalias !235
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %.sroa.32.0.lcssa, ptr %i.dx, align 8, !noalias !235
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 160
  store ptr %i.dc, ptr %i.dy, align 16, !noalias !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !234
  call void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE7recurseESR_S7_b(ptr dead_on_unwind nonnull writable sret(%"struct.embree::BVHNodeRecordMB4D") align 16 %20, ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 16 dereferenceable(176) %3, ptr noundef nonnull byval(%"struct.embree::FastAllocator::CachedAllocator") align 8 %4, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !235
  call void @llvm.x86.sse2.mfence()
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.dz = load ptr, ptr %i.c, align 8
  %.sroa.0.0.copyload = load i64, ptr %20, align 16
  %i.ea = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @_ZN6embree4BVHNILi4EE3setENS_10NodeRefPtrILi4EEERKNS_5LBBoxINS_6Vec3faEEEm(ptr noundef nonnull align 16 dereferenceable(568) %i.dz, i64 %.sroa.0.0.copyload, ptr noundef nonnull align 16 dereferenceable(64) %i.ea, i64 noundef %.sroa.43.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSH_RNS_28ParallelForForPrefixSumStateISD_EEEUlPS7_RKNS_5rangeImEEmmE_ZNSG_15countSubPatchesESH_SH_SK_EUlRKSD_SS_E_EET1_RNSI_ISU_EERT_T0_RKSU_RKT2_RKT3_EUlmE_mSD_ZNS4_IS8_mSD_SQ_ST_EESU_SW_SY_SZ_S11_S14_S17_EUlmSP_mE_ST_EESU_SW_SZ_RKSX_S11_S14_S17_EUlmE_EEvSX_RKSZ_EUlSP_E_EEvSX_SX_SX_S1E_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.200, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
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
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #20
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
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSI_RNS_28ParallelForForPrefixSumStateISE_EEEUlPS8_RKNS_5rangeImEEmmE_ZNSH_15countSubPatchesESI_SI_SL_EUlRKSE_ST_E_EET1_RNSJ_ISV_EERT_T0_RKSV_RKT2_RKT3_EUlmE_mSE_ZNS5_IS9_mSE_SR_SU_EESV_SX_SZ_S10_S12_S15_S18_EUlmSQ_mE_SU_EESV_SX_S10_RKSY_S12_S15_S18_EUlmE_EEvSY_RKS10_EUlSQ_E_EEvSY_SY_SY_S1F_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = atomicrmw add ptr %i.al, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i: ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !30
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSI_RNS_28ParallelForForPrefixSumStateISE_EEEUlPS8_RKNS_5rangeImEEmmE_ZNSH_15countSubPatchesESI_SI_SL_EUlRKSE_ST_E_EET1_RNSJ_ISV_EERT_T0_RKSV_RKT2_RKT3_EUlmE_mSE_ZNS5_IS9_mSE_SR_SU_EESV_SX_SZ_S10_S12_S15_S18_EUlmSQ_mE_SU_EESV_SX_S10_RKSY_S12_S15_S18_EUlmE_EEvSY_RKS10_EUlSQ_E_EEvSY_SY_SY_S1F_PNS0_16TaskGroupContextEEUlvE_EEvmS1C_S1I_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSI_RNS_28ParallelForForPrefixSumStateISE_EEEUlPS8_RKNS_5rangeImEEmmE_ZNSH_15countSubPatchesESI_SI_SL_EUlRKSE_ST_E_EET1_RNSJ_ISV_EERT_T0_RKSV_RKT2_RKT3_EUlmE_mSE_ZNS5_IS9_mSE_SR_SU_EESV_SX_SZ_S10_S12_S15_S18_EUlmSQ_mE_SU_EESV_SX_S10_RKSY_S12_S15_S18_EUlmE_EEvSY_RKS10_EUlSQ_E_EEvSY_SY_SY_S1F_PNS0_16TaskGroupContextEEUlvE_EEvmS1C_S1I_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSI_RNS_28ParallelForForPrefixSumStateISE_EEEUlPS8_RKNS_5rangeImEEmmE_ZNSH_15countSubPatchesESI_SI_SL_EUlRKSE_ST_E_EET1_RNSJ_ISV_EERT_T0_RKSV_RKT2_RKT3_EUlmE_mSE_ZNS5_IS9_mSE_SR_SU_EESV_SX_SZ_S10_S12_S15_S18_EUlmSQ_mE_SU_EESV_SX_S10_RKSY_S12_S15_S18_EUlmE_EEvSY_RKS10_EUlSQ_E_EEvSY_SY_SY_S1F_PNS0_16TaskGroupContextEEUlvE_EEvS1C_S1I_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSI_RNS_28ParallelForForPrefixSumStateISE_EEEUlPS8_RKNS_5rangeImEEmmE_ZNSH_15countSubPatchesESI_SI_SL_EUlRKSE_ST_E_EET1_RNSJ_ISV_EERT_T0_RKSV_RKT2_RKT3_EUlmE_mSE_ZNS5_IS9_mSE_SR_SU_EESV_SX_SZ_S10_S12_S15_S18_EUlmSQ_mE_SU_EESV_SX_S10_RKSY_S12_S15_S18_EUlmE_EEvSY_RKS10_EUlSQ_E_EEvSY_SY_SY_S1F_PNS0_16TaskGroupContextEEUlvE_EEvmS1C_S1I_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSI_RNS_28ParallelForForPrefixSumStateISE_EEEUlPS8_RKNS_5rangeImEEmmE_ZNSH_15countSubPatchesESI_SI_SL_EUlRKSE_ST_E_EET1_RNSJ_ISV_EERT_T0_RKSV_RKT2_RKT3_EUlmE_mSE_ZNS5_IS9_mSE_SR_SU_EESV_SX_SZ_S10_S12_S15_S18_EUlmSQ_mE_SU_EESV_SX_S10_RKSY_S12_S15_S18_EUlmE_EEvSY_RKS10_EUlSQ_E_EEvSY_SY_SY_S1F_PNS0_16TaskGroupContextEEUlvE_EEvmS1C_S1I_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE15countSubPatchesERmSI_RNS_28ParallelForForPrefixSumStateISE_EEEUlPS8_RKNS_5rangeImEEmmE_ZNSH_15countSubPatchesESI_SI_SL_EUlRKSE_ST_E_EET1_RNSJ_ISV_EERT_T0_RKSV_RKT2_RKT3_EUlmE_mSE_ZNS5_IS9_mSE_SR_SU_EESV_SX_SZ_S10_S12_S15_S18_EUlmSQ_mE_SU_EESV_SX_S10_RKSY_S12_S15_S18_EUlmE_EEvSY_RKS10_EUlSQ_E_EEvSY_SY_SY_S1F_PNS0_16TaskGroupContextEEUlvE_EEvS1C_S1I_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref.124", align 8   ; 7 uses
  %10 = alloca %"class.embree::Ref.124", align 8  ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 unwind label %bb.w, !inline_history !1 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
end_hunk_0
begin_hunk_1_@_ZZN6embree29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateISA_EEEUlPS4_RKNS_5rangeImEEmmRKSA_E_ZNSD_7rebuildEmSG_EUlSN_SN_E_EET1_RNSE_ISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSA_ZNS1_IS5_mSA_SO_SP_EESQ_SS_SU_SV_SX_S10_S13_EUlmSL_mSN_E_SP_EESQ_SS_SV_RKST_SX_S10_S13_ENKUlmE_clEm:bb.a
  %.not10.i.i.peel = icmp eq i32 %i.bw, 1
  br i1 %.not10.i.i.peel, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel, label %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit.i.peel

_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit.i.peel: ; preds = %bb.c
  br i1 %i.bs, label %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit6.i.peel, label %bb.d

bb.d:                                             ; preds = %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit.i.peel
  tail call void @llvm.assume(i1 %.not.i.peel)
  br label %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit6.i.peel

_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit6.i.peel: ; preds = %bb.d, %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit.i.peel
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.by = load i32, ptr %i.bx, align 16
  %i.bz = zext i32 %i.by to i64
  br label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel

_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel: ; preds = %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit6.i.peel, %bb.c, %bb.b, %.lr.ph
  %i.ca = phi i64 [ %i.bz, %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit6.i.peel ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.c ]
  %i.cb = add i64 %i.ai, %i.k
  %i.cc = sub i64 %i.cb, %i.h
  %i.cd = tail call noundef i64 @llvm.umin.i64(i64 %i.ca, i64 %i.cc) ; 3 uses
  %i.ce = icmp ugt i64 %i.cd, %i.ai
  br i1 %i.ce, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.cf = load ptr, ptr %i.am, align 8, !nonnull !24, !align !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i64 %i.ai, ptr %3, align 8
  store i64 %i.cd, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.cg = load ptr, ptr %0, align 8, !nonnull !24, !align !31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 10256
  %i.ci = getelementptr inbounds nuw [144 x i8], ptr %i.ch, i64 %1 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.cj = load <4 x float>, ptr %i.ci, align 16, !noalias !272
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cl = load <4 x float>, ptr %i.ck, align 16, !noalias !272
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cn = load <4 x float>, ptr %i.cm, align 16, !noalias !272
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %i.cp = load <4 x float>, ptr %i.co, align 16, !noalias !272
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %i.cr = load <4 x float>, ptr %i.cq, align 16, !noalias !272
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  %i.ct = load <4 x float>, ptr %i.cs, align 16, !noalias !272
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  %i.cw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cj, <4 x float> %i.n)
  %i.cx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cl, <4 x float> %i.p)
  %i.cy = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cn, <4 x float> %i.r)
  %i.cz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cp, <4 x float> %i.t)
  %i.da = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cr, <4 x float> %i.v)
  %i.db = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ct, <4 x float> %i.x)
  %i.dc = load <2 x i64>, ptr %i.cu, align 16, !noalias !272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.au, ptr noundef nonnull align 16 dereferenceable(32) %i.cv, i64 32, i1 false)
  store <4 x float> %i.cw, ptr %4, align 16, !alias.scope !272
  store <4 x float> %i.cx, ptr %i.ao, align 16, !alias.scope !272
  store <4 x float> %i.cy, ptr %i.ap, align 16, !alias.scope !272
  store <4 x float> %i.cz, ptr %i.aq, align 16, !alias.scope !272
  store <4 x float> %i.da, ptr %i.ar, align 16, !alias.scope !272
  store <4 x float> %i.db, ptr %i.as, align 16, !alias.scope !272
  %i.dd = load <2 x float>, ptr %i.av, align 8, !alias.scope !272 ; 3 uses
  %i.de = fcmp olt <2 x float> %i.dd, %i.ac
  %i.df = shufflevector <2 x float> %i.dd, <2 x float> %i.ac, <2 x i32> <i32 0, i32 3>
  %i.dg = shufflevector <2 x float> %i.ac, <2 x float> %i.dd, <2 x i32> <i32 0, i32 3>
  %i.dh = select <2 x i1> %i.de, <2 x float> %i.df, <2 x float> %i.dg
  store <2 x float> %i.dh, ptr %i.av, align 8, !alias.scope !272
  %i.di = add <2 x i64> %i.dc, %i.z
  store <2 x i64> %i.di, ptr %i.at, align 16, !alias.scope !272
  %i.dj = load i64, ptr %i.au, align 16, !alias.scope !272
  %i.dk = add i64 %i.dj, %.sroa.41.112.copyload
  store i64 %i.dk, ptr %i.au, align 16, !alias.scope !272
  %i.dl = load i64, ptr %i.aw, align 8, !alias.scope !272
  %i.dm = icmp ult i64 %i.dl, %.sroa.45.112.copyload
  br i1 %i.dm, label %bb.f, label %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.peel

bb.f:                                             ; preds = %bb.e
  store i64 %.sroa.45.112.copyload, ptr %i.aw, align 8, !alias.scope !272
  store <2 x float> %i.ab, ptr %i.ax, align 16, !alias.scope !272
  br label %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.peel

_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.peel: ; preds = %bb.f, %bb.e
  %i.dn = load ptr, ptr %i.cf, align 8, !noalias !273, !nonnull !24, !align !28
  %i.do = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !noalias !273, !nonnull !24, !align !28 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !273
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 488
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !273
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ak
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !273 ; 4 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel, label %bb.g

bb.g:                                             ; preds = %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.peel
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dx = load i8, ptr %i.dw, align 8, !range !23, !noalias !273, !noundef !24
  %i.dy = trunc nuw i8 %i.dx to i1
  %.phi.trans.insert.i30.peel = getelementptr inbounds nuw i8, ptr %i.du, i64 60
  %.pre.i31.peel = load i32, ptr %.phi.trans.insert.i30.peel, align 4, !noalias !273 ; 2 uses
  %i.dz = and i32 %.pre.i31.peel, 2097152
  %.not.i32.peel = icmp ne i32 %i.dz, 0
  %or.cond.not8.i.peel = select i1 %i.dy, i1 true, i1 %.not.i32.peel
  %i.ea = and i32 %.pre.i31.peel, 255
  %.not5.i.peel = icmp eq i32 %i.ea, 23
  %or.cond7.i.peel = select i1 %or.cond.not8.i.peel, i1 %.not5.i.peel, i1 false
  br i1 %or.cond7.i.peel, label %bb.h, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel

bb.h:                                             ; preds = %bb.g
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !noalias !273
  %.not10.i.i34.peel = icmp eq i32 %i.ec, 1
  %..i.i.peel = select i1 %.not10.i.i34.peel, ptr null, ptr %i.du
  br label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel

_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel: ; preds = %bb.h, %bb.g, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.peel
  %.1.i.i.peel = phi ptr [ null, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit.peel ], [ null, %bb.g ], [ %..i.i.peel, %bb.h ]
  call void @_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKS8_E_clESC_SG_mmSI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef %.1.i.i.peel, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %i.h, i64 noundef %i.ak, ptr noundef nonnull align 16 dereferenceable(144) %4)
  %i.ed = load <4 x float>, ptr %2, align 16, !noalias !274
  %i.ee = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.n, <4 x float> %i.ed)
  %i.ef = load <4 x float>, ptr %i.ay, align 16, !noalias !275
  %i.eg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.p, <4 x float> %i.ef)
  %i.eh = load <4 x float>, ptr %i.az, align 16, !noalias !276
  %i.ei = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.r, <4 x float> %i.eh)
  %i.ej = load <4 x float>, ptr %i.ba, align 16, !noalias !277
  %i.ek = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.t, <4 x float> %i.ej)
  %i.el = load <4 x float>, ptr %i.bb, align 16, !noalias !278
  %i.em = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.v, <4 x float> %i.el)
  %i.en = load <4 x float>, ptr %i.bc, align 16, !noalias !279
  %i.eo = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.x, <4 x float> %i.en)
  %i.ep = load <2 x float>, ptr %i.bd, align 8, !noalias !280 ; 3 uses
  %i.eq = fcmp olt <2 x float> %i.ac, %i.ep
  %i.er = shufflevector <2 x float> %i.ac, <2 x float> %i.ep, <2 x i32> <i32 0, i32 3>
  %i.es = shufflevector <2 x float> %i.ep, <2 x float> %i.ac, <2 x i32> <i32 0, i32 3>
  %i.et = select <2 x i1> %i.eq, <2 x float> %i.er, <2 x float> %i.es
  %i.eu = load <2 x i64>, ptr %i.be, align 16, !noalias !280
  %i.ev = add <2 x i64> %i.eu, %i.z
  %i.ew = load i64, ptr %i.bf, align 16, !noalias !280
  %i.ex = add i64 %i.ew, %.sroa.41.112.copyload
  %i.ey = load i64, ptr %i.bg, align 8, !noalias !280 ; 2 uses
  %i.ez = icmp ult i64 %.sroa.45.112.copyload, %i.ey
  %i.fa = load <2 x float>, ptr %i.bh, align 16
  %i.fb = insertelement <2 x i1> poison, i1 %i.ez, i64 0
  %i.fc = shufflevector <2 x i1> %i.fb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fd = select <2 x i1> %i.fc, <2 x float> %i.fa, <2 x float> %i.ab
  %.sroa.21.0.peel = call i64 @llvm.umax.i64(i64 %.sroa.45.112.copyload, i64 %i.ey)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.i

bb.i:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel
  %.sroa.45.1.peel = phi i64 [ %.sroa.21.0.peel, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel ], [ %.sroa.45.112.copyload, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.41.1.peel = phi i64 [ %i.ex, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel ], [ %.sroa.41.112.copyload, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.2755.1.peel = phi <4 x float> [ %i.eo, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel ], [ %i.x, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.22.1.peel = phi <4 x float> [ %i.em, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel ], [ %i.v, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.1750.1.peel = phi <4 x float> [ %i.ek, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel ], [ %i.t, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.1247.1.peel = phi <4 x float> [ %i.ei, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel ], [ %i.r, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.7.1.peel = phi <4 x float> [ %i.eg, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel ], [ %i.p, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %.sroa.042.1.peel = phi <4 x float> [ %i.ee, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel ], [ %i.n, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %i.fe = phi <2 x float> [ %i.fd, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel ], [ %i.ab, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %i.ff = phi <2 x float> [ %i.et, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel ], [ %i.ac, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %i.fg = phi <2 x i64> [ %i.ev, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit.peel ], [ %i.z, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit.peel ] ; 2 uses
  %i.fh = sub i64 %i.h, %i.ai
  %i.fi = add i64 %i.fh, %i.cd                    ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.k
  br i1 %i.fj, label %.lr.ph.peel.newph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.q, %bb.i
  %.sroa.45.1.lcssa = phi i64 [ %.sroa.45.1.peel, %bb.i ], [ %.sroa.45.1, %bb.q ]
  %.sroa.41.1.lcssa = phi i64 [ %.sroa.41.1.peel, %bb.i ], [ %.sroa.41.1, %bb.q ]
  %.sroa.2755.1.lcssa = phi <4 x float> [ %.sroa.2755.1.peel, %bb.i ], [ %.sroa.2755.1, %bb.q ]
  %.sroa.22.1.lcssa = phi <4 x float> [ %.sroa.22.1.peel, %bb.i ], [ %.sroa.22.1, %bb.q ]
  %.sroa.1750.1.lcssa = phi <4 x float> [ %.sroa.1750.1.peel, %bb.i ], [ %.sroa.1750.1, %bb.q ]
  %.sroa.1247.1.lcssa = phi <4 x float> [ %.sroa.1247.1.peel, %bb.i ], [ %.sroa.1247.1, %bb.q ]
  %.sroa.7.1.lcssa = phi <4 x float> [ %.sroa.7.1.peel, %bb.i ], [ %.sroa.7.1, %bb.q ]
  %.sroa.042.1.lcssa = phi <4 x float> [ %.sroa.042.1.peel, %bb.i ], [ %.sroa.042.1, %bb.q ]
  %.lcssa100 = phi <2 x float> [ %i.fe, %bb.i ], [ %i.jv, %bb.q ]
  %.lcssa99 = phi <2 x float> [ %i.ff, %bb.i ], [ %i.jw, %bb.q ]
  %.lcssa = phi <2 x i64> [ %i.fg, %bb.i ], [ %i.jx, %bb.q ] ; 2 uses
  %.pre = load ptr, ptr %0, align 8
  %i.fk = extractelement <2 x i64> %.lcssa, i64 0
  %i.fl = extractelement <2 x i64> %.lcssa, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.fm = phi ptr [ %i.a, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.sroa.45.0.lcssa = phi i64 [ %.sroa.45.112.copyload, %bb.a ], [ %.sroa.45.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.41.0.lcssa = phi i64 [ %.sroa.41.112.copyload, %bb.a ], [ %.sroa.41.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.37.0.lcssa = phi i64 [ %i.af, %bb.a ], [ %i.fl, %._crit_edge.loopexit ]
  %.sroa.32.0.lcssa = phi i64 [ %i.ae, %bb.a ], [ %i.fk, %._crit_edge.loopexit ]
  %.sroa.2755.0.lcssa = phi <4 x float> [ %i.x, %bb.a ], [ %.sroa.2755.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.22.0.lcssa = phi <4 x float> [ %i.v, %bb.a ], [ %.sroa.22.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.1750.0.lcssa = phi <4 x float> [ %i.t, %bb.a ], [ %.sroa.1750.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.1247.0.lcssa = phi <4 x float> [ %i.r, %bb.a ], [ %.sroa.1247.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.7.0.lcssa = phi <4 x float> [ %i.p, %bb.a ], [ %.sroa.7.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.042.0.lcssa = phi <4 x float> [ %i.n, %bb.a ], [ %.sroa.042.1.lcssa, %._crit_edge.loopexit ]
  %i.fn = phi <2 x float> [ %i.ab, %bb.a ], [ %.lcssa100, %._crit_edge.loopexit ]
  %i.fo = phi <2 x float> [ %i.ac, %bb.a ], [ %.lcssa99, %._crit_edge.loopexit ]
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 1040
  %i.fq = getelementptr inbounds nuw [144 x i8], ptr %i.fp, i64 %1 ; 12 uses
  store <4 x float> %.sroa.042.0.lcssa, ptr %i.fq, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store <4 x float> %.sroa.7.0.lcssa, ptr %i.fr, align 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  store <4 x float> %.sroa.1247.0.lcssa, ptr %i.fs, align 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 48
  store <4 x float> %.sroa.1750.0.lcssa, ptr %i.ft, align 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  store <4 x float> %.sroa.22.0.lcssa, ptr %i.fu, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 80
  store <4 x float> %.sroa.2755.0.lcssa, ptr %i.fv, align 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 96
  store i64 %.sroa.32.0.lcssa, ptr %i.fw, align 16
  %.sroa.37.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 104
  store i64 %.sroa.37.0.lcssa, ptr %.sroa.37.96..sroa_idx, align 8
  %.sroa.41.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 112
  store i64 %.sroa.41.0.lcssa, ptr %.sroa.41.96..sroa_idx, align 16
  %.sroa.45.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 120
  store i64 %.sroa.45.0.lcssa, ptr %.sroa.45.96..sroa_idx, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 128
  store <2 x float> %i.fn, ptr %i.fx, align 16
  %5 = getelementptr inbounds nuw i8, ptr %i.fq, i64 136
  store <2 x float> %i.fo, ptr %5, align 8
  ret void

.lr.ph.peel.newph:                                ; preds = %bb.i, %bb.q
  %.080.in = phi i64 [ %.080, %bb.q ], [ %i.ak, %bb.i ]
  %.02679 = phi i64 [ %i.jy, %bb.q ], [ %i.fi, %bb.i ] ; 3 uses
  %.sroa.042.077 = phi <4 x float> [ %.sroa.042.1, %bb.q ], [ %.sroa.042.1.peel, %bb.i ] ; 3 uses
  %.sroa.7.076 = phi <4 x float> [ %.sroa.7.1, %bb.q ], [ %.sroa.7.1.peel, %bb.i ] ; 3 uses
  %.sroa.1247.075 = phi <4 x float> [ %.sroa.1247.1, %bb.q ], [ %.sroa.1247.1.peel, %bb.i ] ; 3 uses
  %.sroa.1750.074 = phi <4 x float> [ %.sroa.1750.1, %bb.q ], [ %.sroa.1750.1.peel, %bb.i ] ; 3 uses
  %.sroa.22.073 = phi <4 x float> [ %.sroa.22.1, %bb.q ], [ %.sroa.22.1.peel, %bb.i ] ; 3 uses
  %.sroa.2755.072 = phi <4 x float> [ %.sroa.2755.1, %bb.q ], [ %.sroa.2755.1.peel, %bb.i ] ; 3 uses
  %.sroa.41.069 = phi i64 [ %.sroa.41.1, %bb.q ], [ %.sroa.41.1.peel, %bb.i ] ; 3 uses
  %.sroa.45.068 = phi i64 [ %.sroa.45.1, %bb.q ], [ %.sroa.45.1.peel, %bb.i ] ; 5 uses
  %i.fy = phi <2 x float> [ %i.jv, %bb.q ], [ %i.fe, %bb.i ] ; 3 uses
  %i.fz = phi <2 x float> [ %i.jw, %bb.q ], [ %i.ff, %bb.i ] ; 7 uses
  %i.ga = phi <2 x i64> [ %i.jx, %bb.q ], [ %i.fg, %bb.i ] ; 3 uses
  %.080 = add i64 %.080.in, 1                     ; 4 uses
  %i.gb = load ptr, ptr %i.al, align 8, !nonnull !24, !align !28
  %i.gc = load ptr, ptr %i.gb, align 8, !nonnull !24, !align !28 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 488
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %.080
  %i.gh = load ptr, ptr %i.gg, align 8            ; 4 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.peel.newph
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gk = load i8, ptr %i.gj, align 8, !range !23, !noundef !24
  %i.gl = trunc nuw i8 %i.gk to i1                ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 60
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4 ; 2 uses
  %i.gm = and i32 %.pre.i, 2097152
  %.not.i = icmp ne i32 %i.gm, 0                  ; 2 uses
  %or.cond.not13.i = select i1 %i.gl, i1 true, i1 %.not.i
  %i.gn = and i32 %.pre.i, 255
  %.not9.i = icmp eq i32 %i.gn, 23
  %or.cond12.i = select i1 %or.cond.not13.i, i1 %.not9.i, i1 false
  br i1 %or.cond12.i, label %bb.k, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit

bb.k:                                             ; preds = %bb.j
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 36
  %i.gp = load i32, ptr %i.go, align 4
  %.not10.i.i = icmp eq i32 %i.gp, 1
  br i1 %.not10.i.i, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit, label %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit.i

_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit.i: ; preds = %bb.k
  br i1 %i.gl, label %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit6.i, label %bb.l

bb.l:                                             ; preds = %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit.i
  call void @llvm.assume(i1 %.not.i)
  br label %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit6.i

_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit6.i: ; preds = %bb.l, %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gr = load i32, ptr %i.gq, align 16
  %i.gs = zext i32 %i.gr to i64
  br label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit

_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit: ; preds = %.lr.ph.peel.newph, %bb.j, %bb.k, %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit6.i
  %i.gt = phi i64 [ %i.gs, %_ZN6embree5Scene8IteratorINS_10SubdivMeshELb1EE2atEm.exit6.i ], [ 0, %.lr.ph.peel.newph ], [ 0, %bb.j ], [ 0, %bb.k ]
  %i.gu = sub i64 %i.k, %.02679
  %i.gv = call noundef i64 @llvm.umin.i64(i64 %i.gt, i64 %i.gu) ; 3 uses
  %.not = icmp eq i64 %i.gv, 0
  br i1 %.not, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.gw = load ptr, ptr %i.am, align 8, !nonnull !24, !align !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i64 0, ptr %3, align 8
  store i64 %i.gv, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.gx = load ptr, ptr %0, align 8, !nonnull !24, !align !31
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 10256
  %i.gz = getelementptr inbounds nuw [144 x i8], ptr %i.gy, i64 %1 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.ha = load <4 x float>, ptr %i.gz, align 16, !noalias !281
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hc = load <4 x float>, ptr %i.hb, align 16, !noalias !281
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.he = load <4 x float>, ptr %i.hd, align 16, !noalias !281
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hg = load <4 x float>, ptr %i.hf, align 16, !noalias !281
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.hi = load <4 x float>, ptr %i.hh, align 16, !noalias !281
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 80
  %i.hk = load <4 x float>, ptr %i.hj, align 16, !noalias !281
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gz, i64 96
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gz, i64 112
  %i.hn = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ha, <4 x float> %.sroa.042.077)
  %i.ho = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hc, <4 x float> %.sroa.7.076)
  %i.hp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.he, <4 x float> %.sroa.1247.075)
  %i.hq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hg, <4 x float> %.sroa.1750.074)
  %i.hr = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.hi, <4 x float> %.sroa.22.073)
  %i.hs = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.hk, <4 x float> %.sroa.2755.072)
  %i.ht = load <2 x i64>, ptr %i.hl, align 16, !noalias !281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.au, ptr noundef nonnull align 16 dereferenceable(32) %i.hm, i64 32, i1 false)
  store <4 x float> %i.hn, ptr %4, align 16, !alias.scope !281
  store <4 x float> %i.ho, ptr %i.ao, align 16, !alias.scope !281
  store <4 x float> %i.hp, ptr %i.ap, align 16, !alias.scope !281
  store <4 x float> %i.hq, ptr %i.aq, align 16, !alias.scope !281
  store <4 x float> %i.hr, ptr %i.ar, align 16, !alias.scope !281
  store <4 x float> %i.hs, ptr %i.as, align 16, !alias.scope !281
  %i.hu = load <2 x float>, ptr %i.av, align 8, !alias.scope !281 ; 3 uses
  %i.hv = fcmp olt <2 x float> %i.hu, %i.fz
  %i.hw = shufflevector <2 x float> %i.hu, <2 x float> %i.fz, <2 x i32> <i32 0, i32 3>
  %i.hx = shufflevector <2 x float> %i.fz, <2 x float> %i.hu, <2 x i32> <i32 0, i32 3>
  %i.hy = select <2 x i1> %i.hv, <2 x float> %i.hw, <2 x float> %i.hx
  store <2 x float> %i.hy, ptr %i.av, align 8, !alias.scope !281
  %i.hz = add <2 x i64> %i.ht, %i.ga
  store <2 x i64> %i.hz, ptr %i.at, align 16, !alias.scope !281
  %i.ia = load i64, ptr %i.au, align 16, !alias.scope !281
  %i.ib = add i64 %i.ia, %.sroa.41.069
  store i64 %i.ib, ptr %i.au, align 16, !alias.scope !281
  %i.ic = load i64, ptr %i.aw, align 8, !alias.scope !281
  %i.id = icmp ult i64 %i.ic, %.sroa.45.068
  br i1 %i.id, label %bb.n, label %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit

bb.n:                                             ; preds = %bb.m
  store i64 %.sroa.45.068, ptr %i.aw, align 8, !alias.scope !281
  store <2 x float> %i.fy, ptr %i.ax, align 16, !alias.scope !281
  br label %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit

_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit: ; preds = %bb.m, %bb.n
  %i.ie = load ptr, ptr %i.gw, align 8, !noalias !273, !nonnull !24, !align !28
  %i.if = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !273, !nonnull !24, !align !28 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !273
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 488
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !273
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.080
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !273 ; 4 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit, label %bb.o

bb.o:                                             ; preds = %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.io = load i8, ptr %i.in, align 8, !range !23, !noalias !273, !noundef !24
  %i.ip = trunc nuw i8 %i.io to i1
  %.phi.trans.insert.i30 = getelementptr inbounds nuw i8, ptr %i.il, i64 60
  %.pre.i31 = load i32, ptr %.phi.trans.insert.i30, align 4, !noalias !273 ; 2 uses
  %i.iq = and i32 %.pre.i31, 2097152
  %.not.i32 = icmp ne i32 %i.iq, 0
  %or.cond.not8.i = select i1 %i.ip, i1 true, i1 %.not.i32
  %i.ir = and i32 %.pre.i31, 255
  %.not5.i = icmp eq i32 %i.ir, 23
  %or.cond7.i = select i1 %or.cond.not8.i, i1 %.not5.i, i1 false
  br i1 %or.cond7.i, label %bb.p, label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit

bb.p:                                             ; preds = %bb.o
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 36
  %i.it = load i32, ptr %i.is, align 4, !noalias !273
  %.not10.i.i34 = icmp eq i32 %i.it, 1
  %..i.i = select i1 %.not10.i.i34, ptr null, ptr %i.il
  br label %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit

_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit: ; preds = %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit, %bb.o, %bb.p
  %.1.i.i = phi ptr [ null, %_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlRKS8_SC_E_clESC_SC_.exit ], [ null, %bb.o ], [ %..i.i, %bb.p ]
  call void @_ZZN6embree4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEENKUlPNS_10SubdivMeshERKNS_5rangeImEEmmRKS8_E_clESC_SG_mmSI_(ptr dead_on_unwind nonnull writable sret(%"class.embree::PrimInfoMBT") align 16 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.ie, ptr noundef %.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef %.02679, i64 noundef %.080, ptr noundef nonnull align 16 dereferenceable(144) %4)
  %i.iu = load <4 x float>, ptr %2, align 16, !noalias !274
  %i.iv = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.042.077, <4 x float> %i.iu)
  %i.iw = load <4 x float>, ptr %i.ay, align 16, !noalias !275
  %i.ix = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.7.076, <4 x float> %i.iw)
  %i.iy = load <4 x float>, ptr %i.az, align 16, !noalias !276
  %i.iz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1247.075, <4 x float> %i.iy)
  %i.ja = load <4 x float>, ptr %i.ba, align 16, !noalias !277
  %i.jb = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1750.074, <4 x float> %i.ja)
  %i.jc = load <4 x float>, ptr %i.bb, align 16, !noalias !278
  %i.jd = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.22.073, <4 x float> %i.jc)
  %i.je = load <4 x float>, ptr %i.bc, align 16, !noalias !279
  %i.jf = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2755.072, <4 x float> %i.je)
  %i.jg = load <2 x float>, ptr %i.bd, align 8, !noalias !280 ; 3 uses
  %i.jh = fcmp olt <2 x float> %i.fz, %i.jg
  %i.ji = shufflevector <2 x float> %i.fz, <2 x float> %i.jg, <2 x i32> <i32 0, i32 3>
  %i.jj = shufflevector <2 x float> %i.jg, <2 x float> %i.fz, <2 x i32> <i32 0, i32 3>
  %i.jk = select <2 x i1> %i.jh, <2 x float> %i.ji, <2 x float> %i.jj
  %i.jl = load <2 x i64>, ptr %i.be, align 16, !noalias !280
  %i.jm = add <2 x i64> %i.jl, %i.ga
  %i.jn = load i64, ptr %i.bf, align 16, !noalias !280
  %i.jo = add i64 %i.jn, %.sroa.41.069
  %i.jp = load i64, ptr %i.bg, align 8, !noalias !280 ; 2 uses
  %i.jq = icmp ult i64 %.sroa.45.068, %i.jp
  %i.jr = load <2 x float>, ptr %i.bh, align 16
  %i.js = insertelement <2 x i1> poison, i1 %i.jq, i64 0
  %i.jt = shufflevector <2 x i1> %i.js, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ju = select <2 x i1> %i.jt, <2 x float> %i.jr, <2 x float> %i.fy
  %.sroa.21.0 = call i64 @llvm.umax.i64(i64 %.sroa.45.068, i64 %i.jp)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.q

bb.q:                                             ; preds = %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit
  %.sroa.45.1 = phi i64 [ %.sroa.21.0, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit ], [ %.sroa.45.068, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.41.1 = phi i64 [ %i.jo, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit ], [ %.sroa.41.069, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.2755.1 = phi <4 x float> [ %i.jf, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit ], [ %.sroa.2755.072, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.22.1 = phi <4 x float> [ %i.jd, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit ], [ %.sroa.22.073, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
  %.sroa.1750.1 = phi <4 x float> [ %i.jb, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmSK_mSM_E_clEmSK_mSM_.exit ], [ %.sroa.1750.074, %_ZZN6embree28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_10SubdivMeshELb1EEEmNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse231BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS9_EEEUlPS3_RKNS_5rangeImEEmmRKS9_E_ZNSC_7rebuildEmSF_EUlSM_SM_E_EET1_RNSD_ISP_EERT_T0_RKSP_RKT2_RKT3_ENKUlmE_clEm.exit ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE12findFallbackERKNS_5SetMBE:bb.a
  %or.cond = and i1 %i.s, %i.r
  br i1 %or.cond, label %.critedge.lr.ph, label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryERKNS_5SetMBE.exit

.critedge.lr.ph:                                  ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.u = load ptr, ptr %i.t, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.y = load <2 x float>, ptr %i.x, align 8, !noalias !1258
  br label %.critedge

bb.d:                                             ; preds = %.critedge
  %i.z = add i64 %.037, 1                         ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.c
  br i1 %exitcond.not, label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryERKNS_5SetMBE.exit, label %.critedge, !llvm.loop !1257

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.d
  %.037 = phi i64 [ %i.d, %.critedge.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.w, i64 %.037 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ab, align 16, !noalias !1259 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 60
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !1259
  %i.ae = uitofp i32 %i.ad to float               ; 5 uses
  %i.af = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fsub <2 x float> %i.y, %i.af
  %i.ah = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fsub <2 x float> %i.ah, %i.ai
  %i.ak = fdiv <2 x float> %i.ag, %i.aj           ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = fmul float %i.al, f0x3F800002
  %i.an = fmul float %i.am, %i.ae
  %i.ao = tail call noundef float @llvm.floor.f32(float %i.an) ; 2 uses
  %i.ap = fcmp olt float %i.ao, 0.000000e+00
  %i.aq = select i1 %i.ap, float 0.000000e+00, float %i.ao
  %i.ar = fptosi float %i.aq to i32               ; 2 uses
  %i.as = extractelement <2 x float> %i.ak, i64 1
  %i.at = fmul float %i.as, f0x3F7FFFFC
  %i.au = fmul float %i.at, %i.ae
  %i.av = tail call noundef float @llvm.ceil.f32(float %i.au) ; 2 uses
  %i.aw = fcmp olt float %i.av, %i.ae
  %i.ax = select i1 %i.aw, float %i.av, float %i.ae
  %i.ay = fptosi float %i.ax to i32               ; 2 uses
  %i.az = sub nsw i32 %i.ay, %i.ar
  %i.ba = icmp slt i32 %i.az, 2
  br i1 %i.ba, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.bb = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0
  %i.bc = add nsw i32 %i.ay, %i.ar
  %i.bd = sdiv i32 %i.bc, 2
  %shift72 = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop73 = fsub <2 x float> %shift72, %.sroa.0.0.copyload.i
  %i.be = extractelement <2 x float> %foldExtExtBinop73, i64 0
  %i.bf = sitofp i32 %i.bd to float
  %i.bg = fmul float %i.be, %i.bf
  %i.bh = fdiv float %i.bg, %i.ae
  %i.bi = fadd float %i.bb, %i.bh
  br label %_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryERKNS_5SetMBE.exit

_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE12sameGeometryERKNS_5SetMBE.exit: ; preds = %.lr.ph, %bb.d, %.loopexit, %bb.e
  %.sink58 = phi float [ %i.bi, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %.loopexit ], [ 0.000000e+00, %.lr.ph ]
  %.sink = phi i32 [ 2, %bb.e ], [ 1, %bb.d ], [ 1, %.loopexit ], [ 3, %.lr.ph ]
  store float 0.000000e+00, ptr %0, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sink58, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sink, ptr %i.bl, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE13splitFallbackERKNS_5SetMBERSY_S11_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(152) %2, ptr noundef nonnull align 16 dereferenceable(152) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i64, ptr %i.c, align 16             ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = add i64 %i.d, 1
  %i.h = add i64 %i.g, %i.f
  %i.i = lshr i64 %i.h, 1                         ; 6 uses
  %i.j = icmp ult i64 %i.d, %i.i
  br i1 %i.j, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph, label %.preheader

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18

.preheader:                                       ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18, %bb.a
  %.sroa.3646.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.3646.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.3245.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aw, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.2240.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.an, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1838.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.am, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1436.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.al, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1034.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.ak, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.632.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.aj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.030.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.ai, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %i.m = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.bc, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %i.n = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ], [ %i.at, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 3 uses
  %i.o = icmp ult i64 %i.i, %i.f
  br i1 %i.o, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph, label %._crit_edge

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph: ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  br label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18
  %.0153 = phi i64 [ %i.d, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.bd, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 2 uses
  %.sroa.030.0151 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.ai, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.632.0150 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.aj, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1034.0149 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.ak, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1436.0148 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.al, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.1838.0147 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.am, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.2240.0146 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.an, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.3245.0144 = phi i64 [ 0, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.aw, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %.sroa.3646.0143 = phi i64 [ 0, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %.sroa.3646.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 2 uses
  %i.r = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.bc, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ]
  %i.s = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18.lr.ph ], [ %i.at, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.l, i64 %.0153 ; 5 uses
  %i.u = load <4 x float>, ptr %i.t, align 16, !noalias !1278 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load <4 x float>, ptr %i.v, align 16, !noalias !1279 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load <4 x float>, ptr %i.x, align 16, !noalias !1280 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.aa = load <4 x float>, ptr %i.z, align 16, !noalias !1281 ; 3 uses
  %i.ab = fmul <4 x float> %i.y, splat (float 5.000000e-01)
  %i.ac = fmul <4 x float> %i.u, splat (float 5.000000e-01)
  %i.ad = fadd <4 x float> %i.ac, %i.ab
  %i.ae = fmul <4 x float> %i.aa, splat (float 5.000000e-01)
  %i.af = fmul <4 x float> %i.w, splat (float 5.000000e-01)
  %i.ag = fadd <4 x float> %i.af, %i.ae
  %i.ah = fadd <4 x float> %i.ad, %i.ag           ; 2 uses
  %i.ai = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.030.0151, <4 x float> %i.u) ; 2 uses
  %i.aj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.632.0150, <4 x float> %i.w) ; 2 uses
  %i.ak = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1034.0149, <4 x float> %i.y) ; 2 uses
  %i.al = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1436.0148, <4 x float> %i.aa) ; 2 uses
  %i.am = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1838.0147, <4 x float> %i.ah) ; 2 uses
  %i.an = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2240.0146, <4 x float> %i.ah) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.ap = load <2 x float>, ptr %i.ao, align 16   ; 4 uses
  %i.aq = fcmp olt <2 x float> %i.s, %i.ap
  %i.ar = shufflevector <2 x float> %i.s, <2 x float> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.as = shufflevector <2 x float> %i.ap, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  %i.at = select <2 x i1> %i.aq, <2 x float> %i.ar, <2 x float> %i.as ; 2 uses
  %bc = bitcast <4 x float> %i.y to <4 x i32>
  %i.au = extractelement <4 x i32> %bc, i64 3
  %i.av = zext i32 %i.au to i64
  %i.aw = add i64 %.sroa.3245.0144, %i.av         ; 2 uses
  %bc215 = bitcast <4 x float> %i.aa to <4 x i32>
  %i.ax = extractelement <4 x i32> %bc215, i64 3
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = icmp samesign ult i64 %.sroa.3646.0143, %i.ay
  %i.ba = insertelement <2 x i1> poison, i1 %i.az, i64 0
  %i.bb = shufflevector <2 x i1> %i.ba, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bc = select <2 x i1> %i.bb, <2 x float> %i.ap, <2 x float> %i.r ; 2 uses
  %.sroa.3646.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.3646.0143, i64 %i.ay) ; 2 uses
  %i.bd = add nuw nsw i64 %.0153, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, %i.i
  br i1 %exitcond.not, label %.preheader, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit18, !llvm.loop !1268

._crit_edge:                                      ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit, %.preheader
  %.sroa.36.0.lcssa = phi i64 [ 0, %.preheader ], [ %.sroa.36.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.32.0.lcssa = phi i64 [ 0, %.preheader ], [ %i.dn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.22.0.lcssa = phi <4 x float> [ splat (float -inf), %.preheader ], [ %i.de, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.18.0.lcssa = phi <4 x float> [ splat (float +inf), %.preheader ], [ %i.dd, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.14.0.lcssa = phi <4 x float> [ splat (float -inf), %.preheader ], [ %i.dc, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.10.0.lcssa = phi <4 x float> [ splat (float +inf), %.preheader ], [ %i.db, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %.preheader ], [ %i.da, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.022.0.lcssa = phi <4 x float> [ splat (float +inf), %.preheader ], [ %i.cz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.be = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %.preheader ], [ %i.dt, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.bf = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %.preheader ], [ %i.dk, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.bg, align 8 ; 3 uses
  store <4 x float> %.sroa.030.0.lcssa, ptr %2, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x float> %.sroa.632.0.lcssa, ptr %i.bh, align 16
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x float> %.sroa.1034.0.lcssa, ptr %i.bi, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> %.sroa.1436.0.lcssa, ptr %i.bj, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <4 x float> %.sroa.1838.0.lcssa, ptr %i.bk, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x float> %.sroa.2240.0.lcssa, ptr %i.bl, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %.sroa.3245.0.lcssa, ptr %i.bo, align 16
  %.sroa.3646.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %.sroa.3646.0.lcssa, ptr %.sroa.3646.112..sroa_idx, align 8
  %.sroa.3947.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 128
  store <2 x float> %i.m, ptr %.sroa.3947.112..sroa_idx, align 16
  %.sroa.4349.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.b, ptr %i.bp, align 16
  store i64 %i.d, ptr %i.bm, align 16
  store i64 %i.i, ptr %i.bn, align 8
  %i.bq = fcmp olt <2 x float> %i.n, %.sroa.01.0.copyload
  %i.br = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> %i.n, <2 x i32> <i32 0, i32 3>
  %i.bs = shufflevector <2 x float> %i.n, <2 x float> %.sroa.01.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.bt = select <2 x i1> %i.bq, <2 x float> %i.br, <2 x float> %i.bs
  store <2 x float> %i.bt, ptr %.sroa.4349.112..sroa_idx, align 8
  %i.bu = load ptr, ptr %i.a, align 16
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bg, align 8 ; 3 uses
  store <4 x float> %.sroa.022.0.lcssa, ptr %3, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x float> %.sroa.6.0.lcssa, ptr %i.bv, align 16
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x float> %.sroa.10.0.lcssa, ptr %i.bw, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> %.sroa.14.0.lcssa, ptr %i.bx, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x float> %.sroa.18.0.lcssa, ptr %i.by, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x float> %.sroa.22.0.lcssa, ptr %i.bz, align 16
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %.sroa.32.0.lcssa, ptr %i.cc, align 16
  %.sroa.36.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %.sroa.36.0.lcssa, ptr %.sroa.36.112..sroa_idx, align 8
  %.sroa.39.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 128
  store <2 x float> %i.be, ptr %.sroa.39.112..sroa_idx, align 16
  %.sroa.43.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 144
  store ptr %i.bu, ptr %i.cd, align 16
  store i64 %i.i, ptr %i.ca, align 16
  store i64 %i.f, ptr %i.cb, align 8
  %i.ce = fcmp olt <2 x float> %i.bf, %.sroa.0.0.copyload
  %i.cf = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> %i.bf, <2 x i32> <i32 0, i32 3>
  %i.cg = shufflevector <2 x float> %i.bf, <2 x float> %.sroa.0.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.ch = select <2 x i1> %i.ce, <2 x float> %i.cf, <2 x float> %i.cg
  store <2 x float> %i.ch, ptr %.sroa.43.112..sroa_idx, align 8
  ret void

_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit: ; preds = %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit
  %.017179 = phi i64 [ %i.i, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.du, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %.sroa.022.0178 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.cz, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.6.0177 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.da, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.10.0176 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.db, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.14.0175 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.dc, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.18.0174 = phi <4 x float> [ splat (float +inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.dd, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.22.0173 = phi <4 x float> [ splat (float -inf), %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.de, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.32.0171 = phi i64 [ 0, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.dn, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %.sroa.36.0170 = phi i64 [ 0, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %.sroa.36.1, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 2 uses
  %i.ci = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.dt, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ]
  %i.cj = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit.lr.ph ], [ %i.dk, %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [80 x i8], ptr %i.q, i64 %.017179 ; 5 uses
  %i.cl = load <4 x float>, ptr %i.ck, align 16, !noalias !1282 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cn = load <4 x float>, ptr %i.cm, align 16, !noalias !1283 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cp = load <4 x float>, ptr %i.co, align 16, !noalias !1284 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cr = load <4 x float>, ptr %i.cq, align 16, !noalias !1285 ; 3 uses
  %i.cs = fmul <4 x float> %i.cp, splat (float 5.000000e-01)
  %i.ct = fmul <4 x float> %i.cl, splat (float 5.000000e-01)
  %i.cu = fadd <4 x float> %i.ct, %i.cs
  %i.cv = fmul <4 x float> %i.cr, splat (float 5.000000e-01)
  %i.cw = fmul <4 x float> %i.cn, splat (float 5.000000e-01)
  %i.cx = fadd <4 x float> %i.cw, %i.cv
  %i.cy = fadd <4 x float> %i.cu, %i.cx           ; 2 uses
  %i.cz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.022.0178, <4 x float> %i.cl) ; 2 uses
  %i.da = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.0177, <4 x float> %i.cn) ; 2 uses
  %i.db = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.10.0176, <4 x float> %i.cp) ; 2 uses
  %i.dc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.14.0175, <4 x float> %i.cr) ; 2 uses
  %i.dd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.18.0174, <4 x float> %i.cy) ; 2 uses
  %i.de = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.22.0173, <4 x float> %i.cy) ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.dg = load <2 x float>, ptr %i.df, align 16   ; 4 uses
  %i.dh = fcmp olt <2 x float> %i.cj, %i.dg
  %i.di = shufflevector <2 x float> %i.cj, <2 x float> %i.dg, <2 x i32> <i32 0, i32 3>
  %i.dj = shufflevector <2 x float> %i.dg, <2 x float> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.dk = select <2 x i1> %i.dh, <2 x float> %i.di, <2 x float> %i.dj ; 2 uses
  %bc216 = bitcast <4 x float> %i.cp to <4 x i32>
  %i.dl = extractelement <4 x i32> %bc216, i64 3
  %i.dm = zext i32 %i.dl to i64
  %i.dn = add i64 %.sroa.32.0171, %i.dm           ; 2 uses
  %bc217 = bitcast <4 x float> %i.cr to <4 x i32>
  %i.do = extractelement <4 x i32> %bc217, i64 3
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = icmp samesign ult i64 %.sroa.36.0170, %i.dp
  %i.dr = insertelement <2 x i1> poison, i1 %i.dq, i64 0
  %i.ds = shufflevector <2 x i1> %i.dr, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dt = select <2 x i1> %i.ds, <2 x float> %i.dg, <2 x float> %i.ci ; 2 uses
  %.sroa.36.1 = tail call i64 @llvm.umax.i64(i64 %.sroa.36.0170, i64 %i.dp) ; 2 uses
  %i.du = add nuw i64 %.017179, 1                 ; 2 uses
  %exitcond212.not = icmp eq i64 %i.du, %i.f
  br i1 %exitcond212.not, label %._crit_edge, label %_ZN6embree11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEE11add_primrefINS_9PrimRefMBEEEvRKT_.exit, !llvm.loop !1277
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(152) %1, ptr noundef nonnull align 16 dereferenceable(152) %2, ptr noundef nonnull align 16 dereferenceable(152) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.d ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.f
  br label %bb.b

bb.b:                                             ; preds = %.critedge37.i, %bb.a
  %.sroa.5265.0 = phi i64 [ 0, %bb.a ], [ %.sroa.5265.3, %.critedge37.i ] ; 2 uses
  %.sroa.4663.0 = phi i64 [ 0, %bb.a ], [ %i.dn, %.critedge37.i ] ; 2 uses
  %.sroa.4060.0 = phi i64 [ 0, %bb.a ], [ %i.dm, %.critedge37.i ] ; 2 uses
  %.sroa.3256.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.dh, %.critedge37.i ] ; 2 uses
  %.sroa.2653.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.dg, %.critedge37.i ] ; 2 uses
  %.sroa.2050.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.df, %.critedge37.i ] ; 2 uses
  %.sroa.1447.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.de, %.critedge37.i ] ; 2 uses
  %.sroa.844.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.dd, %.critedge37.i ] ; 2 uses
  %.sroa.041.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.dc, %.critedge37.i ] ; 2 uses
  %.sroa.68.0 = phi float [ 0.000000e+00, %bb.a ], [ %i.eu, %.critedge37.i ] ; 2 uses
  %.sroa.63.0 = phi float [ 1.000000e+00, %bb.a ], [ %i.er, %.critedge37.i ] ; 2 uses
  %.sroa.52.0 = phi i64 [ 0, %bb.a ], [ %.sroa.52.3, %.critedge37.i ] ; 2 uses
  %.sroa.46.0 = phi i64 [ 0, %bb.a ], [ %i.ey, %.critedge37.i ] ; 2 uses
  %.sroa.40.0 = phi i64 [ 0, %bb.a ], [ %i.ev, %.critedge37.i ]
  %.sroa.32.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.el, %.critedge37.i ] ; 2 uses
  %.sroa.26.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.ek, %.critedge37.i ] ; 2 uses
  %.sroa.20.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.ej, %.critedge37.i ] ; 2 uses
  %.sroa.14.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.ei, %.critedge37.i ] ; 2 uses
  %.sroa.8.0 = phi <4 x float> [ splat (float -inf), %bb.a ], [ %i.eh, %.critedge37.i ] ; 2 uses
  %.sroa.022.0 = phi <4 x float> [ splat (float +inf), %bb.a ], [ %i.eg, %.critedge37.i ] ; 2 uses
  %.033.i = phi ptr [ %i.i, %bb.a ], [ %i.fk, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.l, %bb.a ], [ %.1.i177, %.critedge37.i ]
  %i.m = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.fe, %.critedge37.i ] ; 2 uses
  %i.n = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.a ], [ %i.dr, %.critedge37.i ] ; 2 uses
  %i.o = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ], [ %i.dl, %.critedge37.i ] ; 2 uses
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -80 ; 4 uses
  %.not.i120 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i120, label %.critedge.i.preheader, label %.lr.ph, !prof !38

.lr.ph:                                           ; preds = %bb.b, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit
  %.134.i134 = phi ptr [ %i.bg, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.033.i, %bb.b ] ; 8 uses
  %.sroa.041.1130 = phi <4 x float> [ %i.ak, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.041.0, %bb.b ] ; 2 uses
  %.sroa.844.1129 = phi <4 x float> [ %i.al, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.844.0, %bb.b ] ; 2 uses
  %.sroa.1447.1128 = phi <4 x float> [ %i.am, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.1447.0, %bb.b ] ; 2 uses
  %.sroa.2050.1127 = phi <4 x float> [ %i.an, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.2050.0, %bb.b ] ; 2 uses
  %.sroa.2653.1126 = phi <4 x float> [ %i.ao, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.2653.0, %bb.b ] ; 2 uses
  %.sroa.3256.1125 = phi <4 x float> [ %i.ap, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.3256.0, %bb.b ] ; 2 uses
  %.sroa.4060.1124 = phi i64 [ %i.aw, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.4060.0, %bb.b ] ; 2 uses
  %.sroa.4663.1123 = phi i64 [ %i.az, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.4663.0, %bb.b ] ; 2 uses
  %.sroa.5265.1122 = phi i64 [ %.sroa.5265.2, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.5265.0, %bb.b ] ; 3 uses
  %i.p = phi <2 x float> [ %i.bf, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = phi <2 x float> [ %i.av, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %i.o, %bb.b ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.134.i134, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, %i.k
  br i1 %i.t, label %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit, label %.critedge.i.preheader, !prof !34

.critedge.i.preheader:                            ; preds = %.lr.ph, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit, %bb.b
  %.sroa.5265.1.lcssa = phi i64 [ %.sroa.5265.0, %bb.b ], [ %.sroa.5265.2, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.5265.1122, %.lr.ph ] ; 3 uses
  %.sroa.4663.1.lcssa = phi i64 [ %.sroa.4663.0, %bb.b ], [ %i.az, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.4663.1123, %.lr.ph ] ; 2 uses
  %.sroa.4060.1.lcssa = phi i64 [ %.sroa.4060.0, %bb.b ], [ %i.aw, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.4060.1124, %.lr.ph ]
  %.sroa.3256.1.lcssa = phi <4 x float> [ %.sroa.3256.0, %bb.b ], [ %i.ap, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.3256.1125, %.lr.ph ] ; 2 uses
  %.sroa.2653.1.lcssa = phi <4 x float> [ %.sroa.2653.0, %bb.b ], [ %i.ao, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.2653.1126, %.lr.ph ] ; 2 uses
  %.sroa.2050.1.lcssa = phi <4 x float> [ %.sroa.2050.0, %bb.b ], [ %i.an, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.2050.1127, %.lr.ph ] ; 2 uses
  %.sroa.1447.1.lcssa = phi <4 x float> [ %.sroa.1447.0, %bb.b ], [ %i.am, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.1447.1128, %.lr.ph ] ; 2 uses
  %.sroa.844.1.lcssa = phi <4 x float> [ %.sroa.844.0, %bb.b ], [ %i.al, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.844.1129, %.lr.ph ] ; 2 uses
  %.sroa.041.1.lcssa = phi <4 x float> [ %.sroa.041.0, %bb.b ], [ %i.ak, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.sroa.041.1130, %.lr.ph ] ; 2 uses
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.b ], [ %i.bg, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %.134.i134, %.lr.ph ] ; 11 uses
  %i.u = phi <2 x float> [ %i.n, %bb.b ], [ %i.bf, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %i.p, %.lr.ph ] ; 2 uses
  %i.v = phi <2 x float> [ %i.o, %bb.b ], [ %i.av, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit ], [ %i.q, %.lr.ph ] ; 6 uses
  %.not35.i163 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i163, label %_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS7_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tISB_Li4EE6CreateENSJ_3SetEZNS7_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS6_EEEUlRKNS8_11BuildRecordERKSE_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERS10_S13_EUlRKS1_E_ZNSZ_15splitByGeometryES12_S13_S13_EUlRS6_S15_E_EEmPT_mmRT0_S1C_RKT1_RKT2_.exit, label %.lr.ph178, !prof !38

_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit: ; preds = %.lr.ph
  %i.w = load <4 x float>, ptr %.134.i134, align 16, !noalias !1305 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.134.i134, i64 16
  %i.y = load <4 x float>, ptr %i.x, align 16, !noalias !1306 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.134.i134, i64 32
  %i.aa = load <4 x float>, ptr %i.z, align 16, !noalias !1307 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.134.i134, i64 48
  %i.ac = load <4 x float>, ptr %i.ab, align 16, !noalias !1308 ; 3 uses
  %i.ad = fmul <4 x float> %i.aa, splat (float 5.000000e-01)
  %i.ae = fmul <4 x float> %i.w, splat (float 5.000000e-01)
  %i.af = fadd <4 x float> %i.ae, %i.ad
  %i.ag = fmul <4 x float> %i.ac, splat (float 5.000000e-01)
  %i.ah = fmul <4 x float> %i.y, splat (float 5.000000e-01)
  %i.ai = fadd <4 x float> %i.ah, %i.ag
  %i.aj = fadd <4 x float> %i.af, %i.ai           ; 2 uses
  %i.ak = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.041.1130, <4 x float> %i.w) ; 2 uses
  %i.al = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.844.1129, <4 x float> %i.y) ; 2 uses
  %i.am = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1447.1128, <4 x float> %i.aa) ; 2 uses
  %i.an = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2050.1127, <4 x float> %i.ac) ; 2 uses
  %i.ao = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.2653.1126, <4 x float> %i.aj) ; 2 uses
  %i.ap = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.3256.1125, <4 x float> %i.aj) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.134.i134, i64 64
  %i.ar = load <2 x float>, ptr %i.aq, align 16   ; 4 uses
  %i.as = fcmp olt <2 x float> %i.q, %i.ar
  %i.at = shufflevector <2 x float> %i.q, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.au = shufflevector <2 x float> %i.ar, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  %i.av = select <2 x i1> %i.as, <2 x float> %i.at, <2 x float> %i.au ; 2 uses
  %i.aw = add i64 %.sroa.4060.1124, 1             ; 2 uses
  %bc = bitcast <4 x float> %i.aa to <4 x i32>
  %i.ax = extractelement <4 x i32> %bc, i64 3
  %i.ay = zext i32 %i.ax to i64
  %i.az = add i64 %.sroa.4663.1123, %i.ay         ; 2 uses
  %bc299 = bitcast <4 x float> %i.ac to <4 x i32>
  %i.ba = extractelement <4 x i32> %bc299, i64 3
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = icmp ult i64 %.sroa.5265.1122, %i.bb
  %.sroa.5265.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.5265.1122, i64 %i.bb) ; 2 uses
  %i.bd = insertelement <2 x i1> poison, i1 %i.bc, i64 0
  %i.be = shufflevector <2 x i1> %i.bd, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bf = select <2 x i1> %i.be, <2 x float> %i.ar, <2 x float> %i.p ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.134.i134, i64 80 ; 3 uses
  %.not.i = icmp ugt ptr %i.bg, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph, !prof !39, !llvm.loop !1294

.lr.ph178:                                        ; preds = %.critedge.i.preheader, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12
  %.1.i177 = phi ptr [ %i.cw, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.0.i, %.critedge.i.preheader ] ; 14 uses
  %.sroa.022.1176 = phi <4 x float> [ %i.ce, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.022.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.8.1175 = phi <4 x float> [ %i.cf, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.8.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.14.1174 = phi <4 x float> [ %i.cg, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.14.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.20.1173 = phi <4 x float> [ %i.ch, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.20.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.26.1172 = phi <4 x float> [ %i.ci, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.26.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.32.1171 = phi <4 x float> [ %i.cj, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.32.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.40.1170 = phi i64 [ %i.cq, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.40.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.46.1169 = phi i64 [ %i.cr, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.46.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.52.1168 = phi i64 [ %.sroa.52.2, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.52.0, %.critedge.i.preheader ] ; 4 uses
  %.sroa.63.1165 = phi float [ %i.cm, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.63.0, %.critedge.i.preheader ] ; 4 uses
  %.sroa.68.1164 = phi float [ %i.cp, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.68.0, %.critedge.i.preheader ] ; 4 uses
  %i.bh = phi <2 x float> [ %i.cv, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %i.m, %.critedge.i.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i177, i64 12
  %i.bj = load i32, ptr %i.bi, align 4
  %.not = icmp eq i32 %i.bj, %i.k
  %i.bk = load <4 x float>, ptr %.1.i177, align 16, !noalias !24 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i177, i64 16
  %i.bm = load <4 x float>, ptr %i.bl, align 16, !noalias !24 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i177, i64 32
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !noalias !24 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i177, i64 48
  %i.bq = load <4 x float>, ptr %i.bp, align 16, !noalias !24 ; 4 uses
  %i.br = fmul <4 x float> %i.bo, splat (float 5.000000e-01)
  %i.bs = fmul <4 x float> %i.bk, splat (float 5.000000e-01)
  %i.bt = fadd <4 x float> %i.bs, %i.br
  %i.bu = fmul <4 x float> %i.bq, splat (float 5.000000e-01)
  %i.bv = fmul <4 x float> %i.bm, splat (float 5.000000e-01)
  %i.bw = fadd <4 x float> %i.bv, %i.bu
  %i.bx = fadd <4 x float> %i.bt, %i.bw           ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i177, i64 64
  %i.bz = load <2 x float>, ptr %i.by, align 16   ; 7 uses
  %bc302 = bitcast <4 x float> %i.bo to <4 x i32>
  %i.ca = extractelement <4 x i32> %bc302, i64 3
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %bc303 = bitcast <4 x float> %i.bq to <4 x i32>
  %i.cc = extractelement <4 x i32> %bc303, i64 3
  %i.cd = zext i32 %i.cc to i64                   ; 4 uses
  br i1 %.not, label %.critedge37.i, label %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12, !prof !29

_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12: ; preds = %.lr.ph178
  %i.ce = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.022.1176, <4 x float> %i.bk) ; 2 uses
  %i.cf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1175, <4 x float> %i.bm) ; 2 uses
  %i.cg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1174, <4 x float> %i.bo) ; 2 uses
  %i.ch = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1173, <4 x float> %i.bq) ; 2 uses
  %i.ci = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1172, <4 x float> %i.bx) ; 2 uses
  %i.cj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1171, <4 x float> %i.bx) ; 2 uses
  %i.ck = extractelement <2 x float> %i.bz, i64 0 ; 2 uses
  %i.cl = fcmp olt float %.sroa.63.1165, %i.ck
  %i.cm = select i1 %i.cl, float %.sroa.63.1165, float %i.ck ; 2 uses
  %i.cn = extractelement <2 x float> %i.bz, i64 1 ; 2 uses
  %i.co = fcmp olt float %.sroa.68.1164, %i.cn
  %i.cp = select i1 %i.co, float %i.cn, float %.sroa.68.1164 ; 2 uses
  %i.cq = add i64 %.sroa.40.1170, 1
  %i.cr = add i64 %.sroa.46.1169, %i.cb           ; 2 uses
  %i.cs = icmp ult i64 %.sroa.52.1168, %i.cd
  %i.ct = insertelement <2 x i1> poison, i1 %i.cs, i64 0
  %i.cu = shufflevector <2 x i1> %i.ct, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cv = select <2 x i1> %i.cu, <2 x float> %i.bz, <2 x float> %i.bh ; 2 uses
  %.sroa.52.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.52.1168, i64 %i.cd) ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.1.i177, i64 -80 ; 2 uses
  %.not35.i = icmp ugt ptr %.134.i.lcssa, %i.cw
  br i1 %.not35.i, label %_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS7_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tISB_Li4EE6CreateENSJ_3SetEZNS7_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS6_EEEUlRKNS8_11BuildRecordERKSE_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERS10_S13_EUlRKS1_E_ZNSZ_15splitByGeometryES12_S13_S13_EUlRS6_S15_E_EEmPT_mmRT0_S1C_RKT1_RKT2_.exit, label %.lr.ph178, !prof !39, !llvm.loop !1295

.critedge37.i:                                    ; preds = %.lr.ph178
  %i.cx = getelementptr inbounds nuw i8, ptr %.1.i177, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1.i177, i64 32 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.1.i177, i64 48 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1.i177, i64 64 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.1.i177, i64 68
  %i.dc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.041.1.lcssa, <4 x float> %i.bk)
  %i.dd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.844.1.lcssa, <4 x float> %i.bm)
  %i.de = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1447.1.lcssa, <4 x float> %i.bo)
  %i.df = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2050.1.lcssa, <4 x float> %i.bq)
  %i.dg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.2653.1.lcssa, <4 x float> %i.bx)
  %i.dh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.3256.1.lcssa, <4 x float> %i.bx)
  %i.di = fcmp olt <2 x float> %i.v, %i.bz
  %i.dj = shufflevector <2 x float> %i.v, <2 x float> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.dk = shufflevector <2 x float> %i.bz, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.dl = select <2 x i1> %i.di, <2 x float> %i.dj, <2 x float> %i.dk
  %i.dm = add i64 %.sroa.4060.1.lcssa, 1
  %i.dn = add i64 %.sroa.4663.1.lcssa, %i.cb
  %i.do = icmp ult i64 %.sroa.5265.1.lcssa, %i.cd
  %.sroa.5265.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.5265.1.lcssa, i64 %i.cd)
  %i.dp = insertelement <2 x i1> poison, i1 %i.do, i64 0
  %i.dq = shufflevector <2 x i1> %i.dp, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dr = select <2 x i1> %i.dq, <2 x float> %i.bz, <2 x float> %i.u
  %i.ds = load <4 x float>, ptr %.134.i.lcssa, align 16, !noalias !1309 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 16 ; 2 uses
  %i.du = load <4 x float>, ptr %i.dt, align 16, !noalias !1310 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 32 ; 2 uses
  %i.dw = load <4 x float>, ptr %i.dv, align 16, !noalias !1311 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 48 ; 2 uses
  %i.dy = load <4 x float>, ptr %i.dx, align 16, !noalias !1312 ; 4 uses
  %i.dz = fmul <4 x float> %i.dw, splat (float 5.000000e-01)
  %i.ea = fmul <4 x float> %i.ds, splat (float 5.000000e-01)
  %i.eb = fadd <4 x float> %i.ea, %i.dz
  %i.ec = fmul <4 x float> %i.dy, splat (float 5.000000e-01)
  %i.ed = fmul <4 x float> %i.du, splat (float 5.000000e-01)
  %i.ee = fadd <4 x float> %i.ed, %i.ec
  %i.ef = fadd <4 x float> %i.eb, %i.ee           ; 2 uses
  %i.eg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.022.1176, <4 x float> %i.ds)
  %i.eh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1175, <4 x float> %i.du)
  %i.ei = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1174, <4 x float> %i.dw)
  %i.ej = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1173, <4 x float> %i.dy)
  %i.ek = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1172, <4 x float> %i.ef)
  %i.el = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1171, <4 x float> %i.ef)
  %i.em = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 64 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 68
  %i.eo = load <2 x float>, ptr %i.em, align 16   ; 4 uses
  %i.ep = extractelement <2 x float> %i.eo, i64 0 ; 2 uses
  %i.eq = fcmp olt float %.sroa.63.1165, %i.ep
  %i.er = select i1 %i.eq, float %.sroa.63.1165, float %i.ep
  %i.es = extractelement <2 x float> %i.eo, i64 1 ; 2 uses
  %i.et = fcmp olt float %.sroa.68.1164, %i.es
  %i.eu = select i1 %i.et, float %i.es, float %.sroa.68.1164
  %i.ev = add i64 %.sroa.40.1170, 1
  %bc304 = bitcast <4 x float> %i.dw to <4 x i32>
  %i.ew = extractelement <4 x i32> %bc304, i64 3
  %i.ex = zext i32 %i.ew to i64
  %i.ey = add i64 %.sroa.46.1169, %i.ex
  %bc305 = bitcast <4 x float> %i.dy to <4 x i32>
  %i.ez = extractelement <4 x i32> %bc305, i64 3
  %i.fa = zext i32 %i.ez to i64                   ; 2 uses
  %i.fb = icmp ult i64 %.sroa.52.1168, %i.fa
  %i.fc = insertelement <2 x i1> poison, i1 %i.fb, i64 0
  %i.fd = shufflevector <2 x i1> %i.fc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.eo, <2 x float> %i.bh
  %.sroa.52.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.52.1168, i64 %i.fa)
  store <4 x float> %i.bk, ptr %.134.i.lcssa, align 16
  %i.ff = load <4 x float>, ptr %i.cx, align 16
  store <4 x float> %i.ff, ptr %i.dt, align 16
  %i.fg = load <4 x float>, ptr %i.cy, align 16
  store <4 x float> %i.fg, ptr %i.dv, align 16
  %i.fh = load <4 x float>, ptr %i.cz, align 16
  store <4 x float> %i.fh, ptr %i.dx, align 16
  %i.fi = load float, ptr %i.da, align 16
  store float %i.fi, ptr %i.em, align 16
  %i.fj = load float, ptr %i.db, align 4
  store float %i.fj, ptr %i.en, align 4
  store <4 x float> %i.ds, ptr %.1.i177, align 16
  store <4 x float> %i.du, ptr %i.cx, align 16
  store <4 x float> %i.dw, ptr %i.cy, align 16
  store <4 x float> %i.dy, ptr %i.cz, align 16
  store <2 x float> %i.eo, ptr %i.da, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 80
  br label %bb.b, !llvm.loop !1304

_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS7_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tISB_Li4EE6CreateENSJ_3SetEZNS7_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateIS6_EEEUlRKNS8_11BuildRecordERKSE_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERS10_S13_EUlRKS1_E_ZNSZ_15splitByGeometryES12_S13_S13_EUlRS6_S15_E_EEmPT_mmRT0_S1C_RKT1_RKT2_.exit: ; preds = %.critedge.i.preheader, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12
  %.sroa.68.1.lcssa = phi float [ %i.cp, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.68.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.63.1.lcssa = phi float [ %i.cm, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.63.0, %.critedge.i.preheader ] ; 2 uses
  %.sroa.52.1.lcssa = phi i64 [ %.sroa.52.2, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.52.0, %.critedge.i.preheader ]
  %.sroa.46.1.lcssa = phi i64 [ %i.cr, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.46.0, %.critedge.i.preheader ]
  %.sroa.32.1.lcssa = phi <4 x float> [ %i.cj, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.32.0, %.critedge.i.preheader ]
  %.sroa.26.1.lcssa = phi <4 x float> [ %i.ci, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.26.0, %.critedge.i.preheader ]
  %.sroa.20.1.lcssa = phi <4 x float> [ %i.ch, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.20.0, %.critedge.i.preheader ]
  %.sroa.14.1.lcssa = phi <4 x float> [ %i.cg, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.14.0, %.critedge.i.preheader ]
  %.sroa.8.1.lcssa = phi <4 x float> [ %i.cf, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.8.0, %.critedge.i.preheader ]
  %.sroa.022.1.lcssa = phi <4 x float> [ %i.ce, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %.sroa.022.0, %.critedge.i.preheader ]
  %i.fl = phi <2 x float> [ %i.cv, %_ZZN6embree4sse217BVHBuilderMSMBlur8BuilderTINS_10NodeRefPtrILi4EEENS0_24SubdivRecalculatePrimRefENS_13FastAllocator15CachedAllocatorENS_4BVHNILi4EE11CreateAllocENS_14AABBNodeMB4D_tIS4_Li4EE6CreateENSC_3SetEZNS0_31BVHNSubdivPatch1MBlurBuilderSAHILi4EE7rebuildEmRNS_28ParallelForForPrefixSumStateINS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEEEEUlRKNS1_11BuildRecordERKS7_E_NS_5Scene29BuildProgressMonitorInterfaceEE15splitByGeometryERKNS_5SetMBERSY_S11_ENKUlRSM_RKNS_9PrimRefMBEE_clES12_S15_.exit12 ], [ %i.m, %.critedge.i.preheader ]
  %i.fm = ptrtoint ptr %.134.i.lcssa to i64
  %i.fn = ptrtoint ptr %i.h to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = sdiv exact i64 %i.fo, 80                ; 2 uses
  %i.fq = load ptr, ptr %i.a, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.fr, align 8 ; 3 uses
  store <4 x float> %.sroa.041.1.lcssa, ptr %2, align 16
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <4 x float> %.sroa.844.1.lcssa, ptr %i.fs, align 16
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <4 x float> %.sroa.1447.1.lcssa, ptr %i.ft, align 16
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> %.sroa.2050.1.lcssa, ptr %i.fu, align 16
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 64
  store <4 x float> %.sroa.2653.1.lcssa, ptr %i.fv, align 16
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 80
  store <4 x float> %.sroa.3256.1.lcssa, ptr %i.fw, align 16
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 112
  store i64 %.sroa.4663.1.lcssa, ptr %i.fz, align 16
  %.sroa.5265.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  store i64 %.sroa.5265.1.lcssa, ptr %.sroa.5265.112..sroa_idx, align 8
  %.sroa.5767.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 128
  store <2 x float> %i.u, ptr %.sroa.5767.112..sroa_idx, align 16
  %.sroa.6369.112..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 144
  store ptr %i.fq, ptr %i.ga, align 16
  store i64 %i.d, ptr %i.fx, align 16
  store i64 %i.fp, ptr %i.fy, align 8
  %i.gb = fcmp olt <2 x float> %i.v, %.sroa.01.0.copyload
  %i.gc = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> %i.v, <2 x i32> <i32 0, i32 3>
  %i.gd = shufflevector <2 x float> %i.v, <2 x float> %.sroa.01.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.ge = select <2 x i1> %i.gb, <2 x float> %i.gc, <2 x float> %i.gd
  store <2 x float> %i.ge, ptr %.sroa.6369.112..sroa_idx, align 8
  %i.gf = load ptr, ptr %i.a, align 16
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.fr, align 8 ; 2 uses
  store <4 x float> %.sroa.022.1.lcssa, ptr %3, align 16
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <4 x float> %.sroa.8.1.lcssa, ptr %i.gg, align 16
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <4 x float> %.sroa.14.1.lcssa, ptr %i.gh, align 16
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> %.sroa.20.1.lcssa, ptr %i.gi, align 16
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <4 x float> %.sroa.26.1.lcssa, ptr %i.gj, align 16
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <4 x float> %.sroa.32.1.lcssa, ptr %i.gk, align 16
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %.sroa.46.1.lcssa, ptr %i.gn, align 16
  %.sroa.52.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i64 %.sroa.52.1.lcssa, ptr %.sroa.52.112..sroa_idx, align 8
  %.sroa.57.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 128
  store <2 x float> %i.fl, ptr %.sroa.57.112..sroa_idx, align 16
  %.sroa.63.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 136
  %.sroa.68.112..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 140
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 144
  store ptr %i.gf, ptr %i.go, align 16
  store i64 %i.fp, ptr %i.gl, align 16
  store i64 %i.f, ptr %i.gm, align 8
  %.sroa.090.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload, i64 0 ; 2 uses
  %i.gp = fcmp olt float %.sroa.63.1.lcssa, %.sroa.090.0.vec.extract
  %i.gq = select i1 %i.gp, float %.sroa.090.0.vec.extract, float %.sroa.63.1.lcssa
  %.sroa.090.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload, i64 1 ; 2 uses
  %i.gr = fcmp olt float %.sroa.68.1.lcssa, %.sroa.090.4.vec.extract
  %i.gs = select i1 %i.gr, float %.sroa.68.1.lcssa, float %.sroa.090.4.vec.extract
  store float %i.gq, ptr %.sroa.63.112..sroa_idx, align 8
  store float %i.gs, ptr %.sroa.68.112..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i64 @_ZN6embree21parallel_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS8_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKS1_E_ZNSA_5splitESE_SH_SI_SI_EUlRS6_SK_E_ZNSA_5splitESE_SH_SI_SI_EUlSM_RKS6_E_EEmPT_mmRKT1_RT0_SX_RKT2_RKT3_RKT4_mm(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(144) %4, ptr noundef nonnull align 16 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 1 dereferenceable(1) %8, i64 noundef %9, i64 noundef %10) local_unnamed_addr #23 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %12 = alloca %class.anon.270, align 8           ; 5 uses
  %13 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %14 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %15 = alloca %class.anon.267, align 8           ; 5 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %17 = alloca %class.anon.265, align 8           ; 4 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 8 uses
  %18 = alloca %class.anon.266, align 8           ; 7 uses
  %19 = alloca %"class.std::unique_ptr.254", align 8 ; 5 uses
  %i.d = sub i64 %2, %1                           ; 3 uses
  %i.e = icmp ult i64 %i.d, %10
  br i1 %i.e, label %bb.b, label %bb.h, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %1
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %2
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 140 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 120 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 140 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 132
  br label %bb.c

bb.c:                                             ; preds = %.critedge37.i, %bb.b
  %.033.i = phi ptr [ %i.f, %bb.b ], [ %i.gh, %.critedge37.i ] ; 3 uses
  %.pn.i = phi ptr [ %i.g, %bb.b ], [ %.1.i118, %.critedge37.i ]
  %.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -80 ; 4 uses
  %.not.i110 = icmp ugt ptr %.033.i, %.0.i
  br i1 %.not.i110, label %.critedge.i.preheader, label %.lr.ph113, !prof !38

.lr.ph113:                                        ; preds = %bb.c, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit
  %.134.i111 = phi ptr [ %i.cw, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.033.i, %bb.c ] ; 10 uses
  %i.ah = load ptr, ptr %6, align 8, !nonnull !24, !align !31 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.134.i111, i64 32
  %i.aj = load <4 x float>, ptr %i.ai, align 16, !noalias !1429 ; 2 uses
  %i.ak = fmul <4 x float> %i.aj, splat (float 5.000000e-01)
  %i.al = load <4 x float>, ptr %.134.i111, align 16, !noalias !1430 ; 2 uses
  %i.am = fmul <4 x float> %i.al, splat (float 5.000000e-01)
  %i.an = fadd <4 x float> %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.134.i111, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.134.i111, i64 48
  %i.aq = load <4 x float>, ptr %i.ap, align 16, !noalias !1431 ; 2 uses
  %i.ar = fmul <4 x float> %i.aq, splat (float 5.000000e-01)
  %i.as = load <4 x float>, ptr %i.ao, align 16, !noalias !1432 ; 2 uses
  %i.at = fmul <4 x float> %i.as, splat (float 5.000000e-01)
  %i.au = fadd <4 x float> %i.ar, %i.at
  %i.av = fadd <4 x float> %i.an, %i.au           ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !noalias !1433
  %i.ay = fsub <4 x float> %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.ba = load <4 x float>, ptr %i.az, align 16, !noalias !1434
  %i.bb = fmul <4 x float> %i.ba, %i.ay
  %i.bc = fadd <4 x float> %i.bb, splat (float -5.000000e-01)
  %i.bd = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bc)
  %i.be = load ptr, ptr %i.h, align 8, !nonnull !24, !align !31
  %i.bf = load <4 x i32>, ptr %i.be, align 16, !noalias !1435
  %i.bg = icmp sgt <4 x i32> %i.bf, %i.bd
  %i.bh = load ptr, ptr %i.i, align 8, !nonnull !24, !align !31
  %i.bi = load <4 x i32>, ptr %i.bh, align 16, !noalias !1436
  %i.bj = icmp slt <4 x i32> %i.bi, zeroinitializer
  %i.bk = select <4 x i1> %i.bg, <4 x i1> %i.bj, <4 x i1> zeroinitializer
  %i.bl = bitcast <4 x i1> %i.bk to i4
  %.not92 = icmp eq i4 %i.bl, 0
  br i1 %.not92, label %.critedge.i.preheader, label %bb.d, !prof !29

.critedge.i.preheader:                            ; preds = %.lr.ph113, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit, %bb.c
  %.134.i.lcssa = phi ptr [ %.033.i, %bb.c ], [ %i.cw, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit ], [ %.134.i111, %.lr.ph113 ] ; 12 uses
  %.not35.i117 = icmp ugt ptr %.134.i.lcssa, %.0.i
  br i1 %.not35.i117, label %_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS7_8BinSplitILm32EEERKNS_5SetMBERSE_SH_EUlRKS1_E_ZNS9_5splitESD_SG_SH_SH_EUlRS6_SJ_E_EEmPT_mmRT0_SQ_RKT1_RKT2_.exit, label %.lr.ph119, !prof !38

bb.d:                                             ; preds = %.lr.ph113
  %i.bm = load <4 x float>, ptr %4, align 16, !noalias !1437
  %i.bn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bm, <4 x float> %i.al)
  store <4 x float> %i.bn, ptr %4, align 16
  %i.bo = load <4 x float>, ptr %i.j, align 16, !noalias !1438
  %i.bp = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bo, <4 x float> %i.as)
  store <4 x float> %i.bp, ptr %i.j, align 16
  %i.bq = load <4 x float>, ptr %i.k, align 16, !noalias !1439
  %i.br = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bq, <4 x float> %i.aj)
  store <4 x float> %i.br, ptr %i.k, align 16
  %i.bs = load <4 x float>, ptr %i.l, align 16, !noalias !1440
  %i.bt = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bs, <4 x float> %i.aq)
  store <4 x float> %i.bt, ptr %i.l, align 16
  %i.bu = load <4 x float>, ptr %i.m, align 16, !noalias !1441
  %i.bv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bu, <4 x float> %i.av)
  store <4 x float> %i.bv, ptr %i.m, align 16
  %i.bw = load <4 x float>, ptr %i.n, align 16, !noalias !1442
  %i.bx = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bw, <4 x float> %i.av)
  store <4 x float> %i.bx, ptr %i.n, align 16
  %i.by = getelementptr inbounds nuw i8, ptr %.134.i111, i64 64 ; 2 uses
  %i.bz = load float, ptr %i.o, align 8           ; 2 uses
  %i.ca = load float, ptr %i.by, align 16         ; 2 uses
  %i.cb = fcmp olt float %i.bz, %i.ca
  %i.cc = select i1 %i.cb, float %i.bz, float %i.ca
  store float %i.cc, ptr %i.o, align 8
  %i.cd = load float, ptr %i.p, align 4           ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.134.i111, i64 68 ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4          ; 2 uses
  %i.cg = fcmp olt float %i.cd, %i.cf
  %i.ch = select i1 %i.cg, float %i.cf, float %i.cd
  store float %i.ch, ptr %i.p, align 4
  %i.ci = load i64, ptr %i.q, align 8
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.q, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.134.i111, i64 44
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = zext i32 %i.cl to i64
  %i.cn = load i64, ptr %i.r, align 16
  %i.co = add i64 %i.cn, %i.cm
  store i64 %i.co, ptr %i.r, align 16
  %i.cp = load i64, ptr %i.s, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.134.i111, i64 60
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = icmp ult i64 %i.cp, %i.cs
  br i1 %i.ct, label %bb.e, label %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit

bb.e:                                             ; preds = %bb.d
  store i64 %i.cs, ptr %i.s, align 8
  %i.cu = load float, ptr %i.by, align 16
  store float %i.cu, ptr %i.t, align 16
  %i.cv = load float, ptr %i.ce, align 4
  store float %i.cv, ptr %i.u, align 4
  br label %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit

_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit: ; preds = %bb.d, %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %.134.i111, i64 80 ; 3 uses
  %.not.i = icmp ugt ptr %i.cw, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %.lr.ph113, !prof !39, !llvm.loop !15

.lr.ph119:                                        ; preds = %.critedge.i.preheader, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit42
  %.1.i118 = phi ptr [ %i.fm, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit42 ], [ %.0.i, %.critedge.i.preheader ] ; 18 uses
  %i.cx = load ptr, ptr %6, align 8, !nonnull !24, !align !31 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1.i118, i64 32
end_hunk_2
begin_hunk_3_@_ZZN6embree23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS8_8BinSplitILm32EEERKNS_5SetMBERSF_SI_EUlRKS1_E_ZNSA_5splitESE_SH_SI_SI_EUlRS6_SK_E_ZNSA_5splitESE_SH_SI_SI_EUlSM_RKS6_E_E9partitionESM_SM_ENKUlmE_clEm:bb.a
  %i.bw = load <2 x float>, ptr %i.bv, align 16   ; 4 uses
  %i.bx = fcmp olt <2 x float> %i.af, %i.bw
  %i.by = shufflevector <2 x float> %i.af, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.bz = shufflevector <2 x float> %i.bw, <2 x float> %i.af, <2 x i32> <i32 0, i32 3>
  %i.ca = select <2 x i1> %i.bx, <2 x float> %i.by, <2 x float> %i.bz ; 2 uses
  %i.cb = add i64 %.sroa.4052.1102, 1             ; 2 uses
  %i.cc = zext i32 %i.bo to i64
  %i.cd = add i64 %.sroa.4554.1101, %i.cc         ; 2 uses
  %i.ce = zext i32 %i.bn to i64                   ; 2 uses
  %i.cf = icmp ult i64 %.sroa.5056.1100, %i.ce
  %i.cg = insertelement <2 x i1> poison, i1 %i.cf, i64 0
  %i.ch = shufflevector <2 x i1> %i.cg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ci = select <2 x i1> %i.ch, <2 x float> %i.bw, <2 x float> %i.ae ; 2 uses
  %.sroa.5056.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.5056.1100, i64 %i.ce) ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.134.i109, i64 80 ; 3 uses
  %.not.i = icmp ugt ptr %i.cj, %.0.i
  br i1 %.not.i, label %.critedge.i.preheader, label %bb.c, !prof !39, !llvm.loop !15

bb.d:                                             ; preds = %.lr.ph153, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11
  %.1.i152 = phi ptr [ %.0.i, %.lr.ph153 ], [ %i.ee, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 13 uses
  %.sroa.0.1151 = phi <4 x float> [ %.sroa.0.0, %.lr.ph153 ], [ %i.di, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.8.1150 = phi <4 x float> [ %.sroa.8.0, %.lr.ph153 ], [ %i.dj, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.14.1149 = phi <4 x float> [ %.sroa.14.0, %.lr.ph153 ], [ %i.dk, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.20.1148 = phi <4 x float> [ %.sroa.20.0, %.lr.ph153 ], [ %i.dl, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.26.1147 = phi <4 x float> [ %.sroa.26.0, %.lr.ph153 ], [ %i.dm, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.32.1146 = phi <4 x float> [ %.sroa.32.0, %.lr.ph153 ], [ %i.dn, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.40.1145 = phi i64 [ %.sroa.40.0, %.lr.ph153 ], [ %i.dw, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.45.1144 = phi i64 [ %.sroa.45.0, %.lr.ph153 ], [ %i.dy, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %.sroa.50.1143 = phi i64 [ %.sroa.50.0, %.lr.ph153 ], [ %.sroa.50.2, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 4 uses
  %.sroa.63.1140 = phi float [ %.sroa.63.0, %.lr.ph153 ], [ %i.ds, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 4 uses
  %.sroa.69.1139 = phi float [ %.sroa.69.0, %.lr.ph153 ], [ %i.dv, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 4 uses
  %i.ck = phi <2 x float> [ %i.t, %.lr.ph153 ], [ %i.ed, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1.i152, i64 32
  %i.cm = load <4 x float>, ptr %i.cl, align 16, !noalias !1586 ; 4 uses
  %i.cn = fmul <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = load <4 x float>, ptr %.1.i152, align 16, !noalias !1587 ; 4 uses
  %i.cp = fmul <4 x float> %i.co, splat (float 5.000000e-01)
  %i.cq = fadd <4 x float> %i.cn, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i152, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %.1.i152, i64 48
  %i.ct = load <4 x float>, ptr %i.cs, align 16, !noalias !1588 ; 4 uses
  %i.cu = fmul <4 x float> %i.ct, splat (float 5.000000e-01)
  %i.cv = load <4 x float>, ptr %i.cr, align 16, !noalias !1589 ; 3 uses
  %i.cw = fmul <4 x float> %i.cv, splat (float 5.000000e-01)
  %i.cx = fadd <4 x float> %i.cu, %i.cw
  %i.cy = fadd <4 x float> %i.cq, %i.cx           ; 5 uses
  %i.cz = fsub <4 x float> %i.cy, %i.bf
  %i.da = fmul <4 x float> %i.bh, %i.cz
  %i.db = fadd <4 x float> %i.da, splat (float -5.000000e-01)
  %i.dc = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.db)
  %i.dd = icmp sgt <4 x i32> %i.bj, %i.dc
  %i.de = select <4 x i1> %i.dd, <4 x i1> %i.bm, <4 x i1> zeroinitializer
  %i.df = bitcast <4 x i1> %i.de to i4
  %.not80 = icmp eq i4 %i.df, 0
  %bc275 = bitcast <4 x float> %i.cm to <4 x i32>
  %i.dg = extractelement <4 x i32> %bc275, i64 3  ; 2 uses
  %bc276 = bitcast <4 x float> %i.ct to <4 x i32>
  %i.dh = extractelement <4 x i32> %bc276, i64 3  ; 2 uses
  br i1 %.not80, label %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11, label %.critedge37.i, !prof !34

_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11: ; preds = %bb.d
  %i.di = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.1151, <4 x float> %i.co) ; 2 uses
  %i.dj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1150, <4 x float> %i.cv) ; 2 uses
  %i.dk = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1149, <4 x float> %i.cm) ; 2 uses
  %i.dl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1148, <4 x float> %i.ct) ; 2 uses
  %i.dm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1147, <4 x float> %i.cy) ; 2 uses
  %i.dn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1146, <4 x float> %i.cy) ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i152, i64 64
  %i.dp = load <2 x float>, ptr %i.do, align 16   ; 3 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0 ; 2 uses
  %i.dr = fcmp olt float %.sroa.63.1140, %i.dq
  %i.ds = select i1 %i.dr, float %.sroa.63.1140, float %i.dq ; 2 uses
  %i.dt = extractelement <2 x float> %i.dp, i64 1 ; 2 uses
  %i.du = fcmp olt float %.sroa.69.1139, %i.dt
  %i.dv = select i1 %i.du, float %i.dt, float %.sroa.69.1139 ; 2 uses
  %i.dw = add i64 %.sroa.40.1145, 1               ; 2 uses
  %i.dx = zext i32 %i.dg to i64
  %i.dy = add i64 %.sroa.45.1144, %i.dx           ; 2 uses
  %i.dz = zext i32 %i.dh to i64                   ; 2 uses
  %i.ea = icmp ult i64 %.sroa.50.1143, %i.dz
  %i.eb = insertelement <2 x i1> poison, i1 %i.ea, i64 0
  %i.ec = shufflevector <2 x i1> %i.eb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ed = select <2 x i1> %i.ec, <2 x float> %i.dp, <2 x float> %i.ck ; 2 uses
  %.sroa.50.2 = tail call i64 @llvm.umax.i64(i64 %.sroa.50.1143, i64 %i.dz) ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.1.i152, i64 -80 ; 2 uses
  %.not35.i = icmp ugt ptr %.134.i.lcssa, %i.ee
  br i1 %.not35.i, label %_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS7_8BinSplitILm32EEERKNS_5SetMBERSE_SH_EUlRKS1_E_ZNS9_5splitESD_SG_SH_SH_EUlRS6_SJ_E_EEmPT_mmRT0_SQ_RKT1_RKT2_.exit, label %bb.d, !prof !39, !llvm.loop !16

.critedge37.i:                                    ; preds = %bb.d
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i152, i64 32 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.1.i152, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1.i152, i64 48 ; 2 uses
  %i.ei = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.033.1.lcssa, <4 x float> %i.co)
  %i.ej = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.836.1.lcssa, <4 x float> %i.cv)
  %i.ek = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1439.1.lcssa, <4 x float> %i.cm)
  %i.el = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.2042.1.lcssa, <4 x float> %i.ct)
  %i.em = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.2645.1.lcssa, <4 x float> %i.cy)
  %i.en = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.3248.1.lcssa, <4 x float> %i.cy)
  %i.eo = getelementptr inbounds nuw i8, ptr %.1.i152, i64 64 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1.i152, i64 68
  %i.eq = load <2 x float>, ptr %i.eo, align 4    ; 4 uses
  %i.er = fcmp olt <2 x float> %i.bc, %i.eq
  %i.es = shufflevector <2 x float> %i.bc, <2 x float> %i.eq, <2 x i32> <i32 0, i32 3>
  %i.et = shufflevector <2 x float> %i.eq, <2 x float> %i.bc, <2 x i32> <i32 0, i32 3>
  %i.eu = select <2 x i1> %i.er, <2 x float> %i.es, <2 x float> %i.et
  %i.ev = add i64 %.sroa.4052.1.lcssa, 1
  %i.ew = zext i32 %i.dg to i64
  %i.ex = add i64 %.sroa.4554.1.lcssa, %i.ew
  %i.ey = zext i32 %i.dh to i64                   ; 2 uses
  %i.ez = icmp ult i64 %.sroa.5056.1.lcssa, %i.ey
  %i.fa = insertelement <2 x i1> poison, i1 %i.ez, i64 0
  %i.fb = shufflevector <2 x i1> %i.fa, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fc = select <2 x i1> %i.fb, <2 x float> %i.eq, <2 x float> %i.bb
  %.sroa.5056.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.5056.1.lcssa, i64 %i.ey)
  %i.fd = load <4 x float>, ptr %.134.i.lcssa, align 16, !noalias !1590 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 16 ; 2 uses
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !noalias !1591 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 32 ; 2 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 16, !noalias !1592 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 48 ; 2 uses
  %i.fj = load <4 x float>, ptr %i.fi, align 16, !noalias !1593 ; 4 uses
  %i.fk = fmul <4 x float> %i.fh, splat (float 5.000000e-01)
  %i.fl = fmul <4 x float> %i.fd, splat (float 5.000000e-01)
  %i.fm = fadd <4 x float> %i.fl, %i.fk
  %i.fn = fmul <4 x float> %i.fj, splat (float 5.000000e-01)
  %i.fo = fmul <4 x float> %i.ff, splat (float 5.000000e-01)
  %i.fp = fadd <4 x float> %i.fo, %i.fn
  %i.fq = fadd <4 x float> %i.fm, %i.fp           ; 2 uses
  %i.fr = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0.1151, <4 x float> %i.fd)
  %i.fs = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.8.1150, <4 x float> %i.ff)
  %i.ft = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.14.1149, <4 x float> %i.fh)
  %i.fu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.20.1148, <4 x float> %i.fj)
  %i.fv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.26.1147, <4 x float> %i.fq)
  %i.fw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.32.1146, <4 x float> %i.fq)
  %i.fx = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 64 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 68
  %i.fz = load <2 x float>, ptr %i.fx, align 16   ; 4 uses
  %i.ga = extractelement <2 x float> %i.fz, i64 0 ; 2 uses
  %i.gb = fcmp olt float %.sroa.63.1140, %i.ga
  %i.gc = select i1 %i.gb, float %.sroa.63.1140, float %i.ga
  %i.gd = extractelement <2 x float> %i.fz, i64 1 ; 2 uses
  %i.ge = fcmp olt float %.sroa.69.1139, %i.gd
  %i.gf = select i1 %i.ge, float %i.gd, float %.sroa.69.1139
  %i.gg = add i64 %.sroa.40.1145, 1
  %bc277 = bitcast <4 x float> %i.fh to <4 x i32>
  %i.gh = extractelement <4 x i32> %bc277, i64 3
  %i.gi = zext i32 %i.gh to i64
  %i.gj = add i64 %.sroa.45.1144, %i.gi
  %bc278 = bitcast <4 x float> %i.fj to <4 x i32>
  %i.gk = extractelement <4 x i32> %bc278, i64 3
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = icmp ult i64 %.sroa.50.1143, %i.gl
  %i.gn = insertelement <2 x i1> poison, i1 %i.gm, i64 0
  %i.go = shufflevector <2 x i1> %i.gn, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.gp = select <2 x i1> %i.go, <2 x float> %i.fz, <2 x float> %i.ck
  %.sroa.50.3 = tail call i64 @llvm.umax.i64(i64 %.sroa.50.1143, i64 %i.gl)
  store <4 x float> %i.co, ptr %.134.i.lcssa, align 16
  %i.gq = load <4 x float>, ptr %i.eg, align 16
  store <4 x float> %i.gq, ptr %i.fe, align 16
  %i.gr = load <4 x float>, ptr %i.ef, align 16
  store <4 x float> %i.gr, ptr %i.fg, align 16
  %i.gs = load <4 x float>, ptr %i.eh, align 16
  store <4 x float> %i.gs, ptr %i.fi, align 16
  %i.gt = load float, ptr %i.eo, align 16
  store float %i.gt, ptr %i.fx, align 16
  %i.gu = load float, ptr %i.ep, align 4
  store float %i.gu, ptr %i.fy, align 4
  store <4 x float> %i.fd, ptr %.1.i152, align 16
  store <4 x float> %i.ff, ptr %i.eg, align 16
  store <4 x float> %i.fh, ptr %i.ef, align 16
  store <4 x float> %i.fj, ptr %i.eh, align 16
  store <2 x float> %i.fz, ptr %i.eo, align 16
  %i.gv = getelementptr inbounds nuw i8, ptr %.134.i.lcssa, i64 80
  br label %bb.b, !llvm.loop !17

_ZN6embree19serial_partitioningINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEEZNS_4sse223HeuristicArrayBinningMBIS1_Lm32EE5splitERKNS7_8BinSplitILm32EEERKNS_5SetMBERSE_SH_EUlRKS1_E_ZNS9_5splitESD_SG_SH_SH_EUlRS6_SJ_E_EEmPT_mmRT0_SQ_RKT1_RKT2_.exit: ; preds = %.critedge.i.preheader, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11
  %.sroa.69.1.lcssa = phi float [ %i.dv, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.69.0, %.critedge.i.preheader ]
  %.sroa.63.1.lcssa = phi float [ %i.ds, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.63.0, %.critedge.i.preheader ]
  %.sroa.50.1.lcssa = phi i64 [ %.sroa.50.2, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.50.0, %.critedge.i.preheader ]
  %.sroa.45.1.lcssa = phi i64 [ %i.dy, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.45.0, %.critedge.i.preheader ]
  %.sroa.40.1.lcssa = phi i64 [ %i.dw, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.40.0, %.critedge.i.preheader ]
  %.sroa.32.1.lcssa = phi <4 x float> [ %i.dn, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.32.0, %.critedge.i.preheader ]
  %.sroa.26.1.lcssa = phi <4 x float> [ %i.dm, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.26.0, %.critedge.i.preheader ]
  %.sroa.20.1.lcssa = phi <4 x float> [ %i.dl, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.20.0, %.critedge.i.preheader ]
  %.sroa.14.1.lcssa = phi <4 x float> [ %i.dk, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.14.0, %.critedge.i.preheader ]
  %.sroa.8.1.lcssa = phi <4 x float> [ %i.dj, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.8.0, %.critedge.i.preheader ]
  %.sroa.0.1.lcssa = phi <4 x float> [ %i.di, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %.sroa.0.0, %.critedge.i.preheader ]
  %i.gw = phi <2 x float> [ %i.ed, %_ZZN6embree4sse223HeuristicArrayBinningMBINS_9PrimRefMBELm32EE5splitERKNS0_8BinSplitILm32EEERKNS_5SetMBERS8_SB_ENKUlRNS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEERKS2_E_clESH_SJ_.exit11 ], [ %i.t, %.critedge.i.preheader ]
  %i.gx = ptrtoint ptr %.134.i.lcssa to i64
  %i.gy = ptrtoint ptr %i.k to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = sdiv exact i64 %i.gz, 80
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %1
  store i64 %i.g, ptr %i.hc, align 8
  %i.hd = sub i64 %i.ha, %i.g
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %1
  store i64 %i.hd, ptr %i.hf, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 3264
  %i.hh = getelementptr inbounds nuw [144 x i8], ptr %i.hg, i64 %1 ; 12 uses
  store <4 x float> %.sroa.033.1.lcssa, ptr %i.hh, align 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <4 x float> %.sroa.836.1.lcssa, ptr %i.hi, align 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  store <4 x float> %.sroa.1439.1.lcssa, ptr %i.hj, align 16
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  store <4 x float> %.sroa.2042.1.lcssa, ptr %i.hk, align 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 64
  store <4 x float> %.sroa.2645.1.lcssa, ptr %i.hl, align 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  store <4 x float> %.sroa.3248.1.lcssa, ptr %i.hm, align 16
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 96
  store i64 0, ptr %i.hn, align 16
  %.sroa.4052.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 104
  store i64 %.sroa.4052.1.lcssa, ptr %.sroa.4052.96..sroa_idx, align 8
  %.sroa.4554.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 112
  store i64 %.sroa.4554.1.lcssa, ptr %.sroa.4554.96..sroa_idx, align 16
  %.sroa.5056.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 120
  store i64 %.sroa.5056.1.lcssa, ptr %.sroa.5056.96..sroa_idx, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 128
  store <2 x float> %i.bb, ptr %i.ho, align 16
  %2 = getelementptr inbounds nuw i8, ptr %i.hh, i64 136
  store <2 x float> %i.bc, ptr %2, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 12480
  %i.hq = getelementptr inbounds nuw [144 x i8], ptr %i.hp, i64 %1 ; 13 uses
  store <4 x float> %.sroa.0.1.lcssa, ptr %i.hq, align 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <4 x float> %.sroa.8.1.lcssa, ptr %i.hr, align 16
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  store <4 x float> %.sroa.14.1.lcssa, ptr %i.hs, align 16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 48
  store <4 x float> %.sroa.20.1.lcssa, ptr %i.ht, align 16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 64
  store <4 x float> %.sroa.26.1.lcssa, ptr %i.hu, align 16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 80
  store <4 x float> %.sroa.32.1.lcssa, ptr %i.hv, align 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 96
  store i64 0, ptr %i.hw, align 16
  %.sroa.40.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 104
  store i64 %.sroa.40.1.lcssa, ptr %.sroa.40.96..sroa_idx, align 8
  %.sroa.45.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 112
  store i64 %.sroa.45.1.lcssa, ptr %.sroa.45.96..sroa_idx, align 16
  %.sroa.50.96..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hq, i64 120
  store i64 %.sroa.50.1.lcssa, ptr %.sroa.50.96..sroa_idx, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 128
  store <2 x float> %i.gw, ptr %i.hx, align 16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 136
  store float %.sroa.63.1.lcssa, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 140
  store float %.sroa.69.1.lcssa, ptr %i.hz, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS4_Lm32EE5splitERKNSB_8BinSplitILm32EEERKNS_5SetMBERSI_SL_EUlRKS4_E_ZNSD_5splitESH_SK_SL_SL_EUlRS9_SN_E_ZNSD_5splitESH_SK_SL_SL_EUlSP_RKS9_E_E9partitionESP_SP_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSW_SW_SW_SZ_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.271, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
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
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #20
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
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = atomicrmw add ptr %i.al, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i: ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !30
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvRKSX_S17_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvmRKSX_S17_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_23parallel_partition_taskINS_9PrimRefMBENS_11PrimInfoMBTINS_5LBBoxINS_6Vec3faEEEEENS_7EmptyTyEZNS_4sse223HeuristicArrayBinningMBIS5_Lm32EE5splitERKNSC_8BinSplitILm32EEERKNS_5SetMBERSJ_SM_EUlRKS5_E_ZNSE_5splitESI_SL_SM_SM_EUlRSA_SO_E_ZNSE_5splitESI_SL_SM_SM_EUlSQ_RKSA_E_E9partitionESQ_SQ_EUlmE0_EEvT_RKT0_EUlRKNS_5rangeImEEE_EEvSX_SX_SX_S10_PNS0_16TaskGroupContextEEUlvE_EEvRKSX_S17_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref.124", align 8   ; 7 uses
  %10 = alloca %"class.embree::Ref.124", align 8  ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 unwind label %bb.w, !inline_history !1 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41
  %.idx.i.i = phi i64 [ 0, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit41 ], [ %.add.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %.ptr.i.i, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
end_hunk_3
