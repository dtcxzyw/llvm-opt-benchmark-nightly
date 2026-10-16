Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/primrefgen?download=true
inline.NumInlined: 3236
inline.NumDeleted: 275
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 78
begin_hunk_0_@"_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS6_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISI_Lm32EEEEERNSH_INS_16SubGridBuildDataENSJ_ISN_Lm4EEEEEE3$_0ZNSF_23createPrimRefArrayGridsESG_SM_SQ_E3$_1EET1_RNS_28ParallelForForPrefixSumStateIST_EERT_T0_RKST_RKT2_RKT3_EUlmE_mSE_ZNS5_IS9_mSE_SR_SS_EEST_SW_SY_SZ_S11_S14_S17_EUlmRKNS_5rangeImEEmE_SS_EEST_SW_SZ_RKSX_S11_S14_S17_EUlmE_EEvSX_RKSZ_EUlS1C_E_EEvSX_SX_SX_S1I_PNS0_16TaskGroupContextEEUlvE_E7executeEv":bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ab = load <4 x float>, ptr %i.aa, align 16   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %.sroa.18.64.copyload.i.i.i = load i64, ptr %i.ac, align 16
  %.sroa.22.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %.sroa.22.64.copyload.i.i.i = load i64, ptr %.sroa.22.64..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.ad = icmp ult i64 %i.p, %i.s
  br i1 %i.ad, label %.lr.ph.i.i.i, label %"_ZZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS3_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISF_Lm32EEEEERNSE_INS_16SubGridBuildDataENSG_ISK_Lm4EEEEEE3$_0ZNSC_23createPrimRefArrayGridsESD_SJ_SN_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SO_SP_EESQ_ST_SV_SW_SY_S11_S14_EUlmRKNS_5rangeImEEmE_SP_EESQ_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_ENKUlS19_E_clES19_.exit.i"

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.d
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !28, !align !29
  %.val.i.i.i = load ptr, ptr %i.ak, align 8      ; 2 uses
  %i.al = load ptr, ptr %.val.i.i.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %.lr.ph.i.i.i
  %.066.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ %i.fj, %bb.m ] ; 4 uses
  %.02565.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ %i.fi, %bb.m ] ; 2 uses
  %.02664.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i ], [ 0, %bb.m ] ; 4 uses
  %.sroa.047.063.i.i.i = phi <4 x float> [ %i.v, %.lr.ph.i.i.i ], [ %.sroa.047.1.i.i.i, %bb.m ] ; 2 uses
  %.sroa.649.062.i.i.i = phi <4 x float> [ %i.x, %.lr.ph.i.i.i ], [ %.sroa.649.1.i.i.i, %bb.m ] ; 2 uses
  %.sroa.1051.061.i.i.i = phi <4 x float> [ %i.z, %.lr.ph.i.i.i ], [ %.sroa.1051.1.i.i.i, %bb.m ] ; 2 uses
  %.sroa.1453.060.i.i.i = phi <4 x float> [ %i.ab, %.lr.ph.i.i.i ], [ %.sroa.1453.1.i.i.i, %bb.m ] ; 2 uses
  %.sroa.22.059.i.i.i = phi i64 [ %.sroa.22.64.copyload.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.22.1.i.i.i, %bb.m ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.066.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8            ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = load i8, ptr %i.ao, align 8, !range !30, !noundef !28
  %i.au = trunc nuw i8 %i.at to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4 ; 2 uses
  %i.av = and i32 %.pre.i.i.i.i, 2097152
  %.not.i.i.i.i = icmp ne i32 %i.av, 0            ; 2 uses
  %or.cond.not7.i.i.i.i = select i1 %i.au, i1 true, i1 %.not.i.i.i.i
  %i.aw = and i32 %.pre.i.i.i.i, 255
  %.not3.i.i.i.i = icmp eq i32 %i.aw, 22
  %or.cond6.i.i.i.i = select i1 %or.cond.not7.i.i.i.i, i1 %.not3.i.i.i.i, i1 false
  br i1 %or.cond6.i.i.i.i, label %bb.e, label %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  %i.ay = load i32, ptr %i.ax, align 4
  %.not9.i.i.i.i.i = icmp eq i32 %i.ay, 1
  br i1 %.not9.i.i.i.i.i, label %_ZN6embree5Scene8IteratorINS_8GridMeshELb0EE2atEm.exit.i.i.i.i, label %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i"

_ZN6embree5Scene8IteratorINS_8GridMeshELb0EE2atEm.exit.i.i.i.i: ; preds = %bb.e
  br i1 %i.au, label %_ZN6embree5Scene8IteratorINS_8GridMeshELb0EE2atEm.exit6.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6embree5Scene8IteratorINS_8GridMeshELb0EE2atEm.exit.i.i.i.i
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  br label %_ZN6embree5Scene8IteratorINS_8GridMeshELb0EE2atEm.exit6.i.i.i.i

_ZN6embree5Scene8IteratorINS_8GridMeshELb0EE2atEm.exit6.i.i.i.i: ; preds = %bb.f, %_ZN6embree5Scene8IteratorINS_8GridMeshELb0EE2atEm.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ba = load i32, ptr %i.az, align 16
  %i.bb = zext i32 %i.ba to i64
  br label %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i"

"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i": ; preds = %_ZN6embree5Scene8IteratorINS_8GridMeshELb0EE2atEm.exit6.i.i.i.i, %bb.e, %bb.d, %bb.c
  %i.bc = phi i64 [ %i.bb, %_ZN6embree5Scene8IteratorINS_8GridMeshELb0EE2atEm.exit6.i.i.i.i ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  %i.bd = sub i64 %i.s, %.02565.i.i.i
  %i.be = add i64 %i.bd, %.02664.i.i.i
  %i.bf = tail call noundef i64 @llvm.umin.i64(i64 %i.bc, i64 %i.be) ; 3 uses
  %i.bg = icmp ugt i64 %i.bf, %.02664.i.i.i
  br i1 %i.bg, label %bb.g, label %bb.m

bb.g:                                             ; preds = %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i"
  %i.bh = load ptr, ptr %i.ap, align 8, !nonnull !28, !align !29
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %.val29.i.i.i = load ptr, ptr %i.bi, align 8    ; 2 uses
  %i.bj = load ptr, ptr %.val29.i.i.i, align 8, !noalias !658
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 488
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !658
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.066.i.i.i
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !658 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %.val29.i.i.i, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !range !30, !noalias !658, !noundef !28
  %i.br = trunc nuw i8 %i.bq to i1
  %.phi.trans.insert.i32.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 60
  %.pre.i33.i.i.i = load i32, ptr %.phi.trans.insert.i32.i.i.i, align 4, !noalias !658 ; 2 uses
  %i.bs = and i32 %.pre.i33.i.i.i, 2097152
  %.not.i34.i.i.i = icmp ne i32 %i.bs, 0
  %or.cond.not18.i.i.i.i = select i1 %i.br, i1 true, i1 %.not.i34.i.i.i
  %i.bt = and i32 %.pre.i33.i.i.i, 255
  %.not3.i35.i.i.i = icmp eq i32 %i.bt, 22
  %or.cond17.i.i.i.i = select i1 %or.cond.not18.i.i.i.i, i1 %.not3.i35.i.i.i, i1 false
  br i1 %or.cond17.i.i.i.i, label %bb.i, label %.lr.ph.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !noalias !658
  %.not9.i.i37.i.i.i = icmp eq i32 %i.bv, 1
  %..i.i.i.i.i = select i1 %.not9.i.i37.i.i.i, ptr %i.bn, ptr null
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.i, %bb.h, %bb.g
  %.1.i.i.i.i.i = phi ptr [ null, %bb.g ], [ null, %bb.h ], [ %..i.i.i.i.i, %bb.i ] ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 112
  %i.by = load i64, ptr %i.bx, align 8, !noalias !659
  %i.bz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 104
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 168
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 224
  %i.cc = trunc i64 %.066.i.i.i to i32
  %i.cd = bitcast i32 %i.cc to float
  %.sroa.011.12.vec.insert.i.i.i.i.i = insertelement <4 x float> <float +inf, float +inf, float +inf, float poison>, float %i.cd, i64 3 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.16.0.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %.sroa.16.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i ] ; 5 uses
  %.sroa.11.0.i.i.i = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i.i.i ], [ %.sroa.11.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i ] ; 5 uses
  %.sroa.8.0.i.i.i = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i.i.i ], [ %.sroa.8.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i ] ; 5 uses
  %.sroa.5.0.i.i.i = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i.i.i ], [ %.sroa.5.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i ] ; 5 uses
  %.sroa.039.0.i.i.i = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i.i.i ], [ %.sroa.039.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i ] ; 5 uses
  %i.ce = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ew, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i ] ; 6 uses
  %i.cf = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i.i.i ], [ %i.ex, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i ] ; 6 uses
  %i.cg = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i.i.i ], [ %i.ey, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i ] ; 6 uses
  %i.ch = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i.i.i ], [ %i.ez, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i ] ; 6 uses
  %i.ci = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i.i.i ], [ %i.fa, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i ] ; 6 uses
  %.062.i.i.i.i.i = phi i64 [ %.02664.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fb, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i ] ; 6 uses
  %.not.i.i.i.i.i.i = icmp ult i64 %.062.i.i.i.i.i, %i.by
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i, !prof !24

bb.k:                                             ; preds = %bb.j
  %i.cj = load ptr, ptr %i.bw, align 8, !noalias !659
  %i.ck = load i64, ptr %i.bz, align 8, !noalias !659
  %i.cl = mul i64 %i.ck, %.062.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl ; 4 uses
  %i.cn = load i32, ptr %i.cm, align 4, !noalias !659 ; 2 uses
  %i.co = zext i32 %i.cn to i64                   ; 3 uses
  %i.cp = load i64, ptr %i.ca, align 8, !noalias !659 ; 2 uses
  %.not34.i.i.i.i.i.i = icmp ugt i64 %i.cp, %i.co
  br i1 %.not34.i.i.i.i.i.i, label %bb.l, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i, !prof !24

bb.l:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 10
  %i.cr = load i16, ptr %i.cq, align 2, !noalias !659 ; 4 uses
  %i.cs = zext i16 %i.cr to i32
  %i.ct = add nsw i32 %i.cs, -1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !noalias !659 ; 2 uses
  %i.cw = mul i32 %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cy = load i16, ptr %i.cx, align 4, !noalias !659 ; 4 uses
  %i.cz = zext i16 %i.cy to i32
  %i.da = add i32 %i.cn, -1
  %i.db = add i32 %i.da, %i.cw
  %i.dc = add i32 %i.db, %i.cz
  %i.dd = zext i32 %i.dc to i64
  %.not35.i.i.i.i.i.i = icmp ugt i64 %i.cp, %i.dd
  br i1 %.not35.i.i.i.i.i.i, label %.preheader50.i.i.i.i.i, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i, !prof !24

.preheader50.i.i.i.i.i:                           ; preds = %bb.l
  %i.de = zext i16 %i.cr to i64                   ; 2 uses
  %.not37.i54.not.i.i.i.i.i = icmp eq i16 %i.cr, 0
  br i1 %.not37.i54.not.i.i.i.i.i, label %.preheader49.thread.i.i.i.i.i, label %.preheader48.lr.ph.i.i.i.i.i

.preheader49.thread.i.i.i.i.i:                    ; preds = %.preheader50.i.i.i.i.i
  %i.df = trunc i64 %.062.i.i.i.i.i to i32
  %i.dg = bitcast i32 %i.df to float
  %.sroa.010.12.vec.insert80.i.i.i.i.i = insertelement <4 x float> <float -inf, float -inf, float -inf, float poison>, float %i.dg, i64 3
  br label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i

.preheader48.lr.ph.i.i.i.i.i:                     ; preds = %.preheader50.i.i.i.i.i
  %i.dh = zext i16 %i.cy to i64                   ; 2 uses
  %.not38.i51.not.i.i.i.i.i = icmp eq i16 %i.cy, 0
  %i.di = zext i32 %i.cv to i64                   ; 2 uses
  br i1 %.not38.i51.not.i.i.i.i.i, label %.preheader47.lr.ph.thread.i.i.i.i.i, label %.preheader48.preheader.i.i.i.i.i

.preheader47.lr.ph.thread.i.i.i.i.i:              ; preds = %.preheader48.lr.ph.i.i.i.i.i
  %i.dj = trunc i64 %.062.i.i.i.i.i to i32
  %i.dk = bitcast i32 %i.dj to float
  %.sroa.010.12.vec.insert83.i.i.i.i.i = insertelement <4 x float> <float -inf, float -inf, float -inf, float poison>, float %i.dk, i64 3
  br label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i

.preheader48.preheader.i.i.i.i.i:                 ; preds = %.preheader48.lr.ph.i.i.i.i.i
  %.pre.pre.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !noalias !660 ; 2 uses
  %.pre68.pre.i.i.i.i.i = load ptr, ptr %.pre.pre.i.i.i.i.i, align 8, !noalias !661 ; 2 uses
  %.phi.trans.insert.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.pre.i.i.i.i.i, i64 16
  %.pre69.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.phi.trans.insert.i.i.i.i.i, align 8, !noalias !661 ; 2 uses
  br label %.preheader48.i.i.i.i.i

.preheader48.i.i.i.i.i:                           ; preds = %..critedge40.i_crit_edge.i.i.i.i.i, %.preheader48.preheader.i.i.i.i.i
  %.028.i55.i.i.i.i.i = phi i64 [ 0, %.preheader48.preheader.i.i.i.i.i ], [ %i.dv, %..critedge40.i_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.dl = mul nuw nsw i64 %.028.i55.i.i.i.i.i, %i.di
  %invariant.op53.i.i.i.i.i = add nuw nsw i64 %i.dl, %i.co
  br label %.preheader45.i.i.i.i.i

1:                                                ; preds = %.preheader45.i.i.i.i.i
  %2 = add nuw nsw i64 %.027.i52.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %2, %i.dh
  br i1 %exitcond.not.i.i.i.i.i, label %..critedge40.i_crit_edge.i.i.i.i.i, label %.preheader45.i.i.i.i.i, !llvm.loop !18

.preheader45.i.i.i.i.i:                           ; preds = %1, %.preheader48.i.i.i.i.i
  %.027.i52.i.i.i.i.i = phi i64 [ 0, %.preheader48.i.i.i.i.i ], [ %2, %1 ] ; 2 uses
  %.reass.reass.i.i.i.i.i = add nuw nsw i64 %invariant.op53.i.i.i.i.i, %.027.i52.i.i.i.i.i
  %i.dm = mul i64 %.reass.reass.i.i.i.i.i, %.pre69.pre.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre68.pre.i.i.i.i.i, i64 %i.dm
  %i.do = load <4 x float>, ptr %i.dn, align 1, !noalias !662 ; 2 uses
  %i.dp = fcmp ugt <4 x float> %i.do, splat (float -1.844000e+18)
  %i.dq = fcmp olt <4 x float> %i.do, splat (float 1.844000e+18)
  %i.dr = and <4 x i1> %i.dp, %i.dq
  %i.ds = bitcast <4 x i1> %i.dr to i4
  %i.dt = and i4 %i.ds, 7
  %i.du = icmp eq i4 %i.dt, 7
  br i1 %i.du, label %1, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i

..critedge40.i_crit_edge.i.i.i.i.i:               ; preds = %1
  %i.dv = add nuw nsw i64 %.028.i55.i.i.i.i.i, 1  ; 2 uses
  %exitcond64.not.i.i.i.i.i = icmp eq i64 %i.dv, %i.de
  br i1 %exitcond64.not.i.i.i.i.i, label %.preheader49.i.i.i.i.i, label %.preheader48.i.i.i.i.i, !llvm.loop !19

.preheader49.i.i.i.i.i:                           ; preds = %..critedge40.i_crit_edge.i.i.i.i.i
  %i.dw = trunc i64 %.062.i.i.i.i.i to i32
  %i.dx = bitcast i32 %i.dw to float
  %.sroa.010.12.vec.insert.i.i.i.i.i = insertelement <4 x float> <float -inf, float -inf, float -inf, float poison>, float %i.dx, i64 3
  br label %.preheader47.i.i.i.i.i

.preheader47.i.i.i.i.i:                           ; preds = %..critedge40.i20_crit_edge.i.i.i.i.i, %.preheader49.i.i.i.i.i
  %.028.i1561.i.i.i.i.i = phi i64 [ 0, %.preheader49.i.i.i.i.i ], [ %i.ei, %..critedge40.i20_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.dy = mul nuw nsw i64 %.028.i1561.i.i.i.i.i, %i.di
  %invariant.op58.i.i.i.i.i = add nuw nsw i64 %i.dy, %i.co
  br label %.preheader.i.i.i.i.i

3:                                                ; preds = %.preheader.i.i.i.i.i
  %4 = add nuw nsw i64 %.027.i1857.i.i.i.i.i, 1   ; 2 uses
  %exitcond60.not.i.i.i.i.i = icmp eq i64 %4, %i.dh
  br i1 %exitcond60.not.i.i.i.i.i, label %..critedge40.i20_crit_edge.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !18

.preheader.i.i.i.i.i:                             ; preds = %3, %.preheader47.i.i.i.i.i
  %.027.i1857.i.i.i.i.i = phi i64 [ 0, %.preheader47.i.i.i.i.i ], [ %4, %3 ] ; 2 uses
  %.reass.reass59.i.i.i.i.i = add nuw nsw i64 %invariant.op58.i.i.i.i.i, %.027.i1857.i.i.i.i.i
  %i.dz = mul i64 %.reass.reass59.i.i.i.i.i, %.pre69.pre.i.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre68.pre.i.i.i.i.i, i64 %i.dz
  %i.eb = load <4 x float>, ptr %i.ea, align 1, !noalias !663 ; 2 uses
  %i.ec = fcmp ugt <4 x float> %i.eb, splat (float -1.844000e+18)
  %i.ed = fcmp olt <4 x float> %i.eb, splat (float 1.844000e+18)
  %i.ee = and <4 x i1> %i.ec, %i.ed
  %i.ef = bitcast <4 x i1> %i.ee to i4
  %i.eg = and i4 %i.ef, 7
  %i.eh = icmp eq i4 %i.eg, 7
  br i1 %i.eh, label %3, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i

..critedge40.i20_crit_edge.i.i.i.i.i:             ; preds = %3
  %i.ei = add nuw nsw i64 %.028.i1561.i.i.i.i.i, 1 ; 2 uses
  %exitcond66.not.i.i.i.i.i = icmp eq i64 %i.ei, %i.de
  br i1 %exitcond66.not.i.i.i.i.i, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i, label %.preheader47.i.i.i.i.i, !llvm.loop !19

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i: ; preds = %..critedge40.i20_crit_edge.i.i.i.i.i, %.preheader47.lr.ph.thread.i.i.i.i.i, %.preheader49.thread.i.i.i.i.i
  %.sroa.010.12.vec.insert81.i.i.i.i.i = phi <4 x float> [ %.sroa.010.12.vec.insert80.i.i.i.i.i, %.preheader49.thread.i.i.i.i.i ], [ %.sroa.010.12.vec.insert83.i.i.i.i.i, %.preheader47.lr.ph.thread.i.i.i.i.i ], [ %.sroa.010.12.vec.insert.i.i.i.i.i, %..critedge40.i20_crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ej = lshr i16 %i.cy, 1
  %i.ek = zext nneg i16 %i.ej to i32
  %i.el = lshr i16 %i.cr, 1
  %i.em = zext nneg i16 %i.el to i32
  %i.en = mul nuw nsw i32 %i.ek, %i.em
  %i.eo = tail call noundef i32 @llvm.umax.i32(i32 %i.en, i32 1)
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ci, <4 x float> %.sroa.011.12.vec.insert.i.i.i.i.i) ; 2 uses
  %i.er = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ch, <4 x float> %.sroa.010.12.vec.insert81.i.i.i.i.i) ; 2 uses
  %i.es = fadd <4 x float> %.sroa.011.12.vec.insert.i.i.i.i.i, %.sroa.010.12.vec.insert81.i.i.i.i.i ; 2 uses
  %i.et = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.cg, <4 x float> %i.es) ; 2 uses
  %i.eu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cf, <4 x float> %i.es) ; 2 uses
  %i.ev = add i64 %i.ce, %i.ep                    ; 2 uses
  br label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i: ; preds = %.preheader45.i.i.i.i.i, %.preheader.i.i.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i, %bb.l, %bb.k, %bb.j
  %.sroa.16.1.i.i.i = phi i64 [ %i.ev, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i ], [ %.sroa.16.0.i.i.i, %bb.j ], [ %.sroa.16.0.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.16.0.i.i.i, %bb.l ], [ %.sroa.16.0.i.i.i, %bb.k ], [ %.sroa.16.0.i.i.i, %.preheader45.i.i.i.i.i ] ; 2 uses
  %.sroa.11.1.i.i.i = phi <4 x float> [ %i.eu, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i ], [ %.sroa.11.0.i.i.i, %bb.j ], [ %.sroa.11.0.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.11.0.i.i.i, %bb.l ], [ %.sroa.11.0.i.i.i, %bb.k ], [ %.sroa.11.0.i.i.i, %.preheader45.i.i.i.i.i ] ; 2 uses
  %.sroa.8.1.i.i.i = phi <4 x float> [ %i.et, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i ], [ %.sroa.8.0.i.i.i, %bb.j ], [ %.sroa.8.0.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.8.0.i.i.i, %bb.l ], [ %.sroa.8.0.i.i.i, %bb.k ], [ %.sroa.8.0.i.i.i, %.preheader45.i.i.i.i.i ] ; 2 uses
  %.sroa.5.1.i.i.i = phi <4 x float> [ %i.er, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i ], [ %.sroa.5.0.i.i.i, %bb.j ], [ %.sroa.5.0.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.5.0.i.i.i, %bb.l ], [ %.sroa.5.0.i.i.i, %bb.k ], [ %.sroa.5.0.i.i.i, %.preheader45.i.i.i.i.i ] ; 2 uses
  %.sroa.039.1.i.i.i = phi <4 x float> [ %i.eq, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i ], [ %.sroa.039.0.i.i.i, %bb.j ], [ %.sroa.039.0.i.i.i, %.preheader.i.i.i.i.i ], [ %.sroa.039.0.i.i.i, %bb.l ], [ %.sroa.039.0.i.i.i, %bb.k ], [ %.sroa.039.0.i.i.i, %.preheader45.i.i.i.i.i ] ; 2 uses
  %i.ew = phi i64 [ %i.ev, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i ], [ %i.ce, %bb.j ], [ %i.ce, %.preheader.i.i.i.i.i ], [ %i.ce, %bb.l ], [ %i.ce, %bb.k ], [ %i.ce, %.preheader45.i.i.i.i.i ]
  %i.ex = phi <4 x float> [ %i.eu, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i ], [ %i.cf, %bb.j ], [ %i.cf, %.preheader.i.i.i.i.i ], [ %i.cf, %bb.l ], [ %i.cf, %bb.k ], [ %i.cf, %.preheader45.i.i.i.i.i ]
  %i.ey = phi <4 x float> [ %i.et, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i ], [ %i.cg, %bb.j ], [ %i.cg, %.preheader.i.i.i.i.i ], [ %i.cg, %bb.l ], [ %i.cg, %bb.k ], [ %i.cg, %.preheader45.i.i.i.i.i ]
  %i.ez = phi <4 x float> [ %i.er, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i ], [ %i.ch, %bb.j ], [ %i.ch, %.preheader.i.i.i.i.i ], [ %i.ch, %bb.l ], [ %i.ch, %bb.k ], [ %i.ch, %.preheader45.i.i.i.i.i ]
  %i.fa = phi <4 x float> [ %i.eq, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit24.thread43.i.i.i.i.i ], [ %i.ci, %bb.j ], [ %i.ci, %.preheader.i.i.i.i.i ], [ %i.ci, %bb.l ], [ %i.ci, %bb.k ], [ %i.ci, %.preheader45.i.i.i.i.i ]
  %i.fb = add nuw i64 %.062.i.i.i.i.i, 1          ; 2 uses
  %exitcond67.not.i.i.i.i.i = icmp eq i64 %i.fb, %i.bf
  br i1 %exitcond67.not.i.i.i.i.i, label %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmRKNS_5rangeImEEmE_clEmS16_m.exit.i.i.i", label %bb.j, !llvm.loop !655

"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmRKNS_5rangeImEEmE_clEmS16_m.exit.i.i.i": ; preds = %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i.i
  %i.fc = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.047.063.i.i.i, <4 x float> %.sroa.039.1.i.i.i)
  %i.fd = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.649.062.i.i.i, <4 x float> %.sroa.5.1.i.i.i)
  %i.fe = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.1051.061.i.i.i, <4 x float> %.sroa.8.1.i.i.i)
  %i.ff = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.1453.060.i.i.i, <4 x float> %.sroa.11.1.i.i.i)
  %i.fg = add i64 %.sroa.16.1.i.i.i, %.sroa.22.059.i.i.i
  br label %bb.m

bb.m:                                             ; preds = %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmRKNS_5rangeImEEmE_clEmS16_m.exit.i.i.i", %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i"
  %.sroa.22.1.i.i.i = phi i64 [ %i.fg, %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmRKNS_5rangeImEEmE_clEmS16_m.exit.i.i.i" ], [ %.sroa.22.059.i.i.i, %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i" ] ; 2 uses
  %.sroa.1453.1.i.i.i = phi <4 x float> [ %i.ff, %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmRKNS_5rangeImEEmE_clEmS16_m.exit.i.i.i" ], [ %.sroa.1453.060.i.i.i, %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i" ] ; 2 uses
  %.sroa.1051.1.i.i.i = phi <4 x float> [ %i.fe, %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmRKNS_5rangeImEEmE_clEmS16_m.exit.i.i.i" ], [ %.sroa.1051.061.i.i.i, %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i" ] ; 2 uses
  %.sroa.649.1.i.i.i = phi <4 x float> [ %i.fd, %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmRKNS_5rangeImEEmE_clEmS16_m.exit.i.i.i" ], [ %.sroa.649.062.i.i.i, %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i" ] ; 2 uses
  %.sroa.047.1.i.i.i = phi <4 x float> [ %i.fc, %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmRKNS_5rangeImEEmE_clEmS16_m.exit.i.i.i" ], [ %.sroa.047.063.i.i.i, %"_ZZN6embree28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS1_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISO_EERT_T0_RKSO_RKT2_RKT3_ENKUlmE_clEm.exit.i.i.i" ] ; 2 uses
  %i.fh = sub i64 %.02565.i.i.i, %.02664.i.i.i
  %i.fi = add i64 %i.bf, %i.fh                    ; 2 uses
  %i.fj = add i64 %.066.i.i.i, 1
  %i.fk = icmp ult i64 %i.fi, %i.s
  br i1 %i.fk, label %bb.c, label %"_ZZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS3_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISF_Lm32EEEEERNSE_INS_16SubGridBuildDataENSG_ISK_Lm4EEEEEE3$_0ZNSC_23createPrimRefArrayGridsESD_SJ_SN_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SO_SP_EESQ_ST_SV_SW_SY_S11_S14_EUlmRKNS_5rangeImEEmE_SP_EESQ_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_ENKUlS19_E_clES19_.exit.i", !llvm.loop !656

"_ZZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS3_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISF_Lm32EEEEERNSE_INS_16SubGridBuildDataENSG_ISK_Lm4EEEEEE3$_0ZNSC_23createPrimRefArrayGridsESD_SJ_SN_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SO_SP_EESQ_ST_SV_SW_SY_S11_S14_EUlmRKNS_5rangeImEEmE_SP_EESQ_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_ENKUlS19_E_clES19_.exit.i": ; preds = %bb.m, %bb.b
  %.sroa.22.0.lcssa.i.i.i = phi i64 [ %.sroa.22.64.copyload.i.i.i, %bb.b ], [ %.sroa.22.1.i.i.i, %bb.m ]
  %.sroa.1453.0.lcssa.i.i.i = phi <4 x float> [ %i.ab, %bb.b ], [ %.sroa.1453.1.i.i.i, %bb.m ]
  %.sroa.1051.0.lcssa.i.i.i = phi <4 x float> [ %i.z, %bb.b ], [ %.sroa.1051.1.i.i.i, %bb.m ]
  %.sroa.649.0.lcssa.i.i.i = phi <4 x float> [ %i.x, %bb.b ], [ %.sroa.649.1.i.i.i, %bb.m ]
  %.sroa.047.0.lcssa.i.i.i = phi <4 x float> [ %i.v, %bb.b ], [ %.sroa.047.1.i.i.i, %bb.m ]
  %i.fl = getelementptr inbounds nuw i8, ptr %i.i, i64 1040
  %i.fm = getelementptr inbounds nuw [80 x i8], ptr %i.fl, i64 %i.d ; 6 uses
  store <4 x float> %.sroa.047.0.lcssa.i.i.i, ptr %i.fm, align 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <4 x float> %.sroa.649.0.lcssa.i.i.i, ptr %i.fn, align 16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store <4 x float> %.sroa.1051.0.lcssa.i.i.i, ptr %i.fo, align 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  store <4 x float> %.sroa.1453.0.lcssa.i.i.i, ptr %i.fp, align 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  store i64 %.sroa.18.64.copyload.i.i.i, ptr %i.fq, align 16
  %.sroa.22.64..sroa_idx56.i.i.i = getelementptr inbounds nuw i8, ptr %i.fm, i64 72
  store i64 %.sroa.22.0.lcssa.i.i.i, ptr %.sroa.22.64..sroa_idx56.i.i.i, align 8
  br label %"_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS5_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNSG_INS_16SubGridBuildDataENSI_ISM_Lm4EEEEEE3$_0ZNSE_23createPrimRefArrayGridsESF_SL_SP_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSD_ZNS4_IS8_mSD_SQ_SR_EESS_SV_SX_SY_S10_S13_S16_EUlmRKNS_5rangeImEEmE_SR_EESS_SV_SY_RKSW_S10_S13_S16_EUlmE_EEvSW_RKSY_EUlS1B_E_EEvSW_SW_SW_S1H_PNS0_16TaskGroupContextEENKUlvE_clEv.exit"

bb.n:                                             ; preds = %bb.a
  %i.fr = add i64 %i.d, %i.b
  %i.fs = lshr i64 %i.fr, 1                       ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8
  %.val4.i = load i64, ptr %i.ft, align 8
  tail call fastcc void @"_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS5_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNSG_INS_16SubGridBuildDataENSI_ISM_Lm4EEEEEE3$_0ZNSE_23createPrimRefArrayGridsESF_SL_SP_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSD_ZNS4_IS8_mSD_SQ_SR_EESS_SV_SX_SY_S10_S13_S16_EUlmRKNS_5rangeImEEmE_SR_EESS_SV_SY_RKSW_S10_S13_S16_EUlmE_EEvSW_RKSY_EUlS1B_E_EEvSW_SW_SW_S1H_PNS0_16TaskGroupContextE"(i64 noundef %i.d, i64 noundef %i.fs, i64 noundef %i.g, i64 %.val4.i, ptr noundef %i.fv), !inline_history !657
  %i.fw = load i64, ptr %i.a, align 8
  %i.fx = load i64, ptr %i.f, align 8
  %i.fy = load ptr, ptr %i.fu, align 8
  %.val3.i = load i64, ptr %i.ft, align 8
  tail call fastcc void @"_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS5_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNSG_INS_16SubGridBuildDataENSI_ISM_Lm4EEEEEE3$_0ZNSE_23createPrimRefArrayGridsESF_SL_SP_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSD_ZNS4_IS8_mSD_SQ_SR_EESS_SV_SX_SY_S10_S13_S16_EUlmRKNS_5rangeImEEmE_SR_EESS_SV_SY_RKSW_S10_S13_S16_EUlmE_EEvSW_RKSY_EUlS1B_E_EEvSW_SW_SW_S1H_PNS0_16TaskGroupContextE"(i64 noundef %i.fs, i64 noundef %i.fw, i64 noundef %i.fx, i64 %.val3.i, ptr noundef %i.fy), !inline_history !657
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !657
  br label %"_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS5_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNSG_INS_16SubGridBuildDataENSI_ISM_Lm4EEEEEE3$_0ZNSE_23createPrimRefArrayGridsESF_SL_SP_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSD_ZNS4_IS8_mSD_SQ_SR_EESS_SV_SX_SY_S10_S13_S16_EUlmRKNS_5rangeImEEmE_SR_EESS_SV_SY_RKSW_S10_S13_S16_EUlmE_EEvSW_RKSY_EUlS1B_E_EEvSW_SW_SW_S1H_PNS0_16TaskGroupContextEENKUlvE_clEv.exit"

"_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS5_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNSG_INS_16SubGridBuildDataENSI_ISM_Lm4EEEEEE3$_0ZNSE_23createPrimRefArrayGridsESF_SL_SP_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSD_ZNS4_IS8_mSD_SQ_SR_EESS_SV_SX_SY_S10_S13_S16_EUlmRKNS_5rangeImEEmE_SR_EESS_SV_SY_RKSW_S10_S13_S16_EUlmE_EEvSW_RKSY_EUlS1B_E_EEvSW_SW_SW_S1H_PNS0_16TaskGroupContextEENKUlvE_clEv.exit": ; preds = %"_ZZN6embree12parallel_forImZNS_29parallel_for_for_prefix_sum0_IZNS_28parallel_for_for_prefix_sum0INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS3_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISF_Lm32EEEEERNSE_INS_16SubGridBuildDataENSG_ISK_Lm4EEEEEE3$_0ZNSC_23createPrimRefArrayGridsESD_SJ_SN_E3$_1EET1_RNS_28ParallelForForPrefixSumStateISQ_EERT_T0_RKSQ_RKT2_RKT3_EUlmE_mSB_ZNS2_IS6_mSB_SO_SP_EESQ_ST_SV_SW_SY_S11_S14_EUlmRKNS_5rangeImEEmE_SP_EESQ_ST_SW_RKSU_SY_S11_S14_EUlmE_EEvSU_RKSW_ENKUlS19_E_clES19_.exit.i", %bb.n
  ret void
}

declare noundef ptr @_ZN6embree9os_mallocEmRb(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare void @_ZN6embree7os_freeEPvmb(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS5_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISH_Lm32EEEEERNSG_INS_16SubGridBuildDataENSI_ISM_Lm4EEEEEE3$_2ZNSE_23createPrimRefArrayGridsESF_SL_SP_E3$_3EET1_RNS_28ParallelForForPrefixSumStateISS_EERT_T0_RKSS_RKT2_RKT3_EUlmE_mSD_ZNS4_IS8_mSD_SQ_SR_EESS_SV_SX_SY_S10_S13_S16_EUlmRKNS_5rangeImEEmRKSD_E_SR_EESS_SV_SY_RKSW_S10_S13_S16_EUlmE_EEvSW_RKSY_EUlS1B_E_EEvSW_SW_SW_S1J_PNS0_16TaskGroupContextE"(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 %.0.val, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.222, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i64 %1, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.0.val, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.e, align 8
  %i.f = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 262272 ; 5 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 8
  %i.j = icmp ugt i64 %i.i, 4095
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.t, %bb.i ], [ %i.k, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 786624 ; 2 uses
  %i.n = load i64, ptr %i.m, align 64             ; 4 uses
  %i.o = sub i64 0, %i.n
  %i.p = and i64 %i.o, 63                         ; 2 uses
  %i.q = add i64 %i.n, 48
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ugt i64 %i.r, 524288
  br i1 %i.s, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.r, ptr %i.m, align 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 262336
  %i.w = getelementptr i8, ptr %i.v, i64 %i.n
  %i.x = getelementptr i8, ptr %i.w, i64 %i.p     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @"_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_29parallel_for_for_prefix_sum1_IZNS_28parallel_for_for_prefix_sum1INS_5Scene8IteratorINS_8GridMeshELb0EEEmNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPS6_RNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISI_Lm32EEEEERNSH_INS_16SubGridBuildDataENSJ_ISN_Lm4EEEEEE3$_2ZNSF_23createPrimRefArrayGridsESG_SM_SQ_E3$_3EET1_RNS_28ParallelForForPrefixSumStateIST_EERT_T0_RKST_RKT2_RKT3_EUlmE_mSE_ZNS5_IS9_mSE_SR_SS_EEST_SW_SY_SZ_S11_S14_S17_EUlmRKNS_5rangeImEEmRKSE_E_SS_EEST_SW_SZ_RKSX_S11_S14_S17_EUlmE_EEvSX_RKSZ_EUlS1C_E_EEvSX_SX_SX_S1K_PNS0_16TaskGroupContextEEUlvE_EE", i64 16), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false)
  %i.z = load atomic i64, ptr %i.h seq_cst, align 64
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.z ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 786688
  %i.ac = load ptr, ptr %i.ab, align 64           ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 1, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.x, ptr %i.af, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.ac, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %3, ptr %i.ah, align 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 %i.n, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 %i.a, ptr %i.aj, align 16
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

end_hunk_0
begin_hunk_1_@"_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISE_Lm32EEEEERNSD_INS_16SubGridBuildDataENSF_ISJ_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESC_SI_SM_E3$_1EET0_RNS_22ParallelPrefixSumStateISP_EET_ST_ST_RKSP_RKT1_RKT2_EUlmE_EEvST_SV_EUlRKNS_5rangeImEEE_EEvST_ST_ST_SV_PNS0_16TaskGroupContextEEUlvE_EEvRKST_S19_mb":bb.a

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  store ptr %i.ei, ptr %11, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %11) #19
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable

bb.au:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %11, align 8
  %.not.i65 = icmp eq ptr %i.ek, null
  br i1 %.not.i65, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.el = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.el, null
  br i1 %.not.i69, label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 786696
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i, label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  invoke void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.en)
          to label %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #20
  unreachable

_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i:    ; preds = %bb.ax, %bb.aw
  invoke void @_ZN6embree11alignedFreeEPv(ptr noundef nonnull %i.el)
          to label %_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit unwind label %bb.az

bb.az:                                            ; preds = %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #20
  unreachable

_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68, %_ZN6embree13TaskScheduler6ThreadD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66: ; preds = %bb.av, %bb.au, %bb.ar
  %.pn36 = phi { ptr, i32 } [ %i.eg, %bb.ar ], [ %i.ej, %bb.au ], [ %i.ej, %bb.av ]
  %i.ev = load ptr, ptr %10, align 8
  %.not.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i70, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit66, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.h, %bb.k, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45, %bb.z
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit71 ], [ %.pn30, %bb.z ], [ %.pn34, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit ], [ %.pn32, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit45 ], [ %i.at, %bb.k ], [ %i.al, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6embree13TaskScheduler6ThreadESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #18
  br label %_ZN6embree13TaskScheduler6ThreaddlEPv.exit

_ZN6embree13TaskScheduler6ThreaddlEPv.exit:       ; preds = %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47, %.body
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %.body ], [ %.pn, %_ZN6embree3RefINS_13TaskSchedulerEED2Ev.exit47 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISE_Lm32EEEEERNSD_INS_16SubGridBuildDataENSF_ISJ_Lm4EEEEEE3$_0ZNSA_23createPrimRefArrayGridsESC_SI_SM_E3$_1EET0_RNS_22ParallelPrefixSumStateISP_EET_ST_ST_RKSP_RKT1_RKT2_EUlmE_EEvST_SV_EUlRKNS_5rangeImEEE_EEvST_ST_ST_SV_PNS0_16TaskGroupContextEEUlvE_E7executeEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8              ; 6 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp ugt i64 %i.e, %i.g
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.h, align 8           ; 5 uses
  %i.i = load ptr, ptr %.val.i, align 8, !nonnull !28, !align !29
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !28, !align !29
  %i.m = load i64, ptr %i.l, align 8
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = mul i64 %i.n, %i.d
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !28, !align !29
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = udiv i64 %i.o, %i.r
  %i.t = add i64 %i.s, %i.j                       ; 2 uses
  %i.u = add i64 %i.d, 1
  %i.v = mul i64 %i.n, %i.u
  %i.w = udiv i64 %i.v, %i.r
  %i.x = add i64 %i.w, %i.j                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !28, !align !29 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %.val4.i.i.i = load ptr, ptr %i.aa, align 8
  %i.ab = icmp ult i64 %i.t, %i.x
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %"_ZZN6embree12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISB_Lm32EEEEERNSA_INS_16SubGridBuildDataENSC_ISG_Lm4EEEEEE3$_0ZNS7_23createPrimRefArrayGridsES9_SF_SJ_E3$_1EET0_RNS_22ParallelPrefixSumStateISM_EET_SQ_SQ_RKSM_RKT1_RKT2_EUlmE_EEvSQ_SS_ENKUlRKNS_5rangeImEEE_clES13_.exit.i"

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %i.z, align 8
  %i.ac = load ptr, ptr %.val.i.i.i, align 8, !noalias !702 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.af = load i64, ptr %i.ae, align 8, !noalias !702
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  br label %bb.c

bb.c:                                             ; preds = %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.16.0.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %.sroa.16.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ] ; 4 uses
  %.sroa.11.0.i.i.i = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i.i ], [ %.sroa.11.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ] ; 4 uses
  %.sroa.8.0.i.i.i = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i.i ], [ %.sroa.8.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ] ; 4 uses
  %.sroa.5.0.i.i.i = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i.i ], [ %.sroa.5.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ] ; 4 uses
  %.sroa.07.0.i.i.i = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i.i ], [ %.sroa.07.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ] ; 4 uses
  %i.aj = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.cn, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ] ; 5 uses
  %i.ak = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i.i ], [ %i.co, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ] ; 5 uses
  %i.al = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i.i ], [ %i.cp, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ] ; 5 uses
  %i.am = phi <4 x float> [ splat (float -inf), %.lr.ph.i.i.i.i ], [ %i.cq, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ] ; 5 uses
  %i.an = phi <4 x float> [ splat (float +inf), %.lr.ph.i.i.i.i ], [ %i.cr, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ] ; 5 uses
  %.041.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i ], [ %i.cs, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ] ; 4 uses
  %.not.i.i.i.i.i = icmp ult i64 %.041.i.i.i.i, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i, !prof !24

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %i.ad, align 8, !noalias !702
  %i.ap = load i64, ptr %i.ag, align 8, !noalias !702
  %i.aq = mul i64 %i.ap, %.041.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4, !noalias !702 ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = load i64, ptr %i.ah, align 8, !noalias !702 ; 2 uses
  %.not34.i.i.i.i.i = icmp ugt i64 %i.au, %i.at
  br i1 %.not34.i.i.i.i.i, label %bb.e, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i, !prof !24

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 10
  %i.aw = load i16, ptr %i.av, align 2, !noalias !702 ; 4 uses
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -1
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !noalias !702 ; 2 uses
  %i.bb = mul i32 %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bd = load i16, ptr %i.bc, align 4, !noalias !702 ; 4 uses
  %i.be = zext i16 %i.bd to i32
  %i.bf = add i32 %i.as, -1
  %i.bg = add i32 %i.bf, %i.bb
  %i.bh = add i32 %i.bg, %i.be
  %i.bi = zext i32 %i.bh to i64
  %.not35.i.i.i.i.i = icmp ugt i64 %i.au, %i.bi
  br i1 %.not35.i.i.i.i.i, label %.preheader35.i.i.i.i, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i, !prof !24

.preheader35.i.i.i.i:                             ; preds = %bb.e
  %i.bj = zext i16 %i.aw to i64
  %.not37.i39.not.i.i.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not37.i39.not.i.i.i.i, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i, label %.preheader34.lr.ph.i.i.i.i

.preheader34.lr.ph.i.i.i.i:                       ; preds = %.preheader35.i.i.i.i
  %i.bk = zext i16 %i.bd to i64
  %.not38.i36.not.i.i.i.i = icmp eq i16 %i.bd, 0
  %i.bl = zext i32 %i.ba to i64
  br i1 %.not38.i36.not.i.i.i.i, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i, label %.preheader34.preheader.i.i.i.i

.preheader34.preheader.i.i.i.i:                   ; preds = %.preheader34.lr.ph.i.i.i.i
  %.pre.pre.i.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !703 ; 2 uses
  %.pre44.pre.i.i.i.i = load ptr, ptr %.pre.pre.i.i.i.i, align 8, !noalias !704
  %.phi.trans.insert.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.pre.i.i.i.i, i64 16
  %.pre45.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.phi.trans.insert.i.i.i.i, align 8, !noalias !704
  br label %.preheader34.i.i.i.i

.preheader34.i.i.i.i:                             ; preds = %..critedge40.i_crit_edge.i.i.i.i, %.preheader34.preheader.i.i.i.i
  %.028.i40.i.i.i.i = phi i64 [ 0, %.preheader34.preheader.i.i.i.i ], [ %i.bw, %..critedge40.i_crit_edge.i.i.i.i ] ; 2 uses
  %i.bm = mul nuw nsw i64 %.028.i40.i.i.i.i, %i.bl
  %invariant.op38.i.i.i.i = add nuw nsw i64 %i.bm, %i.at
  br label %.preheader.i.i.i.i

1:                                                ; preds = %.preheader.i.i.i.i
  %2 = add nuw nsw i64 %.027.i37.i.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %2, %i.bk
  br i1 %exitcond.not.i.i.i.i, label %..critedge40.i_crit_edge.i.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !18

.preheader.i.i.i.i:                               ; preds = %1, %.preheader34.i.i.i.i
  %.027.i37.i.i.i.i = phi i64 [ 0, %.preheader34.i.i.i.i ], [ %2, %1 ] ; 2 uses
  %.reass.reass.i.i.i.i = add nuw nsw i64 %invariant.op38.i.i.i.i, %.027.i37.i.i.i.i
  %i.bn = mul i64 %.reass.reass.i.i.i.i, %.pre45.pre.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre44.pre.i.i.i.i, i64 %i.bn
  %i.bp = load <4 x float>, ptr %i.bo, align 1, !noalias !705 ; 2 uses
  %i.bq = fcmp ugt <4 x float> %i.bp, splat (float -1.844000e+18)
  %i.br = fcmp olt <4 x float> %i.bp, splat (float 1.844000e+18)
  %i.bs = and <4 x i1> %i.bq, %i.br
  %i.bt = bitcast <4 x i1> %i.bs to i4
  %i.bu = and i4 %i.bt, 7
  %i.bv = icmp eq i4 %i.bu, 7
  br i1 %i.bv, label %1, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i

..critedge40.i_crit_edge.i.i.i.i:                 ; preds = %1
  %i.bw = add nuw nsw i64 %.028.i40.i.i.i.i, 1    ; 2 uses
  %exitcond42.not.i.i.i.i = icmp eq i64 %i.bw, %i.bj
  br i1 %exitcond42.not.i.i.i.i, label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i, label %.preheader34.i.i.i.i, !llvm.loop !19

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i: ; preds = %..critedge40.i_crit_edge.i.i.i.i, %.preheader34.lr.ph.i.i.i.i, %.preheader35.i.i.i.i
  %i.bx = load float, ptr %.val4.i.i.i, align 4, !noalias !702
  %i.by = trunc i64 %.041.i.i.i.i to i32
  %.sroa.011.12.vec.insert.i.i.i.i = insertelement <4 x float> <float +inf, float +inf, float +inf, float poison>, float %i.bx, i64 3 ; 2 uses
  %i.bz = bitcast i32 %i.by to float
  %.sroa.010.12.vec.insert.i.i.i.i = insertelement <4 x float> <float -inf, float -inf, float -inf, float poison>, float %i.bz, i64 3 ; 2 uses
  %i.ca = lshr i16 %i.bd, 1
  %i.cb = zext nneg i16 %i.ca to i32
  %i.cc = lshr i16 %i.aw, 1
  %i.cd = zext nneg i16 %i.cc to i32
  %i.ce = mul nuw nsw i32 %i.cb, %i.cd
  %i.cf = tail call noundef i32 @llvm.umax.i32(i32 %i.ce, i32 1)
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.an, <4 x float> %.sroa.011.12.vec.insert.i.i.i.i) ; 2 uses
  %i.ci = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.am, <4 x float> %.sroa.010.12.vec.insert.i.i.i.i) ; 2 uses
  %i.cj = fadd <4 x float> %.sroa.010.12.vec.insert.i.i.i.i, %.sroa.011.12.vec.insert.i.i.i.i ; 2 uses
  %i.ck = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.al, <4 x float> %i.cj) ; 2 uses
  %i.cl = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ak, <4 x float> %i.cj) ; 2 uses
  %i.cm = add i64 %i.aj, %i.cg                    ; 2 uses
  br label %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i

_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i: ; preds = %.preheader.i.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i, %bb.e, %bb.d, %bb.c
  %.sroa.16.1.i.i.i = phi i64 [ %i.cm, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i ], [ %.sroa.16.0.i.i.i, %bb.c ], [ %.sroa.16.0.i.i.i, %bb.e ], [ %.sroa.16.0.i.i.i, %bb.d ], [ %.sroa.16.0.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.11.1.i.i.i = phi <4 x float> [ %i.cl, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i ], [ %.sroa.11.0.i.i.i, %bb.c ], [ %.sroa.11.0.i.i.i, %bb.e ], [ %.sroa.11.0.i.i.i, %bb.d ], [ %.sroa.11.0.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.8.1.i.i.i = phi <4 x float> [ %i.ck, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i ], [ %.sroa.8.0.i.i.i, %bb.c ], [ %.sroa.8.0.i.i.i, %bb.e ], [ %.sroa.8.0.i.i.i, %bb.d ], [ %.sroa.8.0.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.5.1.i.i.i = phi <4 x float> [ %i.ci, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i ], [ %.sroa.5.0.i.i.i, %bb.c ], [ %.sroa.5.0.i.i.i, %bb.e ], [ %.sroa.5.0.i.i.i, %bb.d ], [ %.sroa.5.0.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.07.1.i.i.i = phi <4 x float> [ %i.ch, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i ], [ %.sroa.07.0.i.i.i, %bb.c ], [ %.sroa.07.0.i.i.i, %bb.e ], [ %.sroa.07.0.i.i.i, %bb.d ], [ %.sroa.07.0.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.cn = phi i64 [ %i.cm, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i ], [ %i.aj, %bb.c ], [ %i.aj, %bb.e ], [ %i.aj, %bb.d ], [ %i.aj, %.preheader.i.i.i.i ]
  %i.co = phi <4 x float> [ %i.cl, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i ], [ %i.ak, %bb.c ], [ %i.ak, %bb.e ], [ %i.ak, %bb.d ], [ %i.ak, %.preheader.i.i.i.i ]
  %i.cp = phi <4 x float> [ %i.ck, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i ], [ %i.al, %bb.c ], [ %i.al, %bb.e ], [ %i.al, %bb.d ], [ %i.al, %.preheader.i.i.i.i ]
  %i.cq = phi <4 x float> [ %i.ci, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i ], [ %i.am, %bb.c ], [ %i.am, %bb.e ], [ %i.am, %bb.d ], [ %i.am, %.preheader.i.i.i.i ]
  %i.cr = phi <4 x float> [ %i.ch, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread32.i.i.i.i ], [ %i.an, %bb.c ], [ %i.an, %bb.e ], [ %i.an, %bb.d ], [ %i.an, %.preheader.i.i.i.i ]
  %i.cs = add nuw i64 %.041.i.i.i.i, 1            ; 2 uses
  %exitcond43.not.i.i.i.i = icmp eq i64 %i.cs, %i.x
  br i1 %exitcond43.not.i.i.i.i, label %"_ZZN6embree12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISB_Lm32EEEEERNSA_INS_16SubGridBuildDataENSC_ISG_Lm4EEEEEE3$_0ZNS7_23createPrimRefArrayGridsES9_SF_SJ_E3$_1EET0_RNS_22ParallelPrefixSumStateISM_EET_SQ_SQ_RKSM_RKT1_RKT2_EUlmE_EEvSQ_SS_ENKUlRKNS_5rangeImEEE_clES13_.exit.i", label %bb.c, !llvm.loop !700

"_ZZN6embree12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISB_Lm32EEEEERNSA_INS_16SubGridBuildDataENSC_ISG_Lm4EEEEEE3$_0ZNS7_23createPrimRefArrayGridsES9_SF_SJ_E3$_1EET0_RNS_22ParallelPrefixSumStateISM_EET_SQ_SQ_RKSM_RKT1_RKT2_EUlmE_EEvSQ_SS_ENKUlRKNS_5rangeImEEE_clES13_.exit.i": ; preds = %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i, %bb.b
  %.sroa.16.2.i.i.i = phi i64 [ 0, %bb.b ], [ %.sroa.16.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ]
  %.sroa.11.2.i.i.i = phi <4 x float> [ splat (float -inf), %bb.b ], [ %.sroa.11.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ]
  %.sroa.8.2.i.i.i = phi <4 x float> [ splat (float +inf), %bb.b ], [ %.sroa.8.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ]
  %.sroa.5.2.i.i.i = phi <4 x float> [ splat (float -inf), %bb.b ], [ %.sroa.5.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ]
  %.sroa.07.2.i.i.i = phi <4 x float> [ splat (float +inf), %bb.b ], [ %.sroa.07.1.i.i.i, %_ZNK6embree8GridMesh5validEmRKNS_5rangeImEE.exit.thread.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !28, !align !34
  %i.cv = getelementptr inbounds nuw [80 x i8], ptr %i.cu, i64 %i.d ; 6 uses
  store <4 x float> %.sroa.07.2.i.i.i, ptr %i.cv, align 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <4 x float> %.sroa.5.2.i.i.i, ptr %i.cw, align 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store <4 x float> %.sroa.8.2.i.i.i, ptr %i.cx, align 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  store <4 x float> %.sroa.11.2.i.i.i, ptr %i.cy, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  store i64 0, ptr %i.cz, align 16
  %.sroa.16.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  store i64 %.sroa.16.2.i.i.i, ptr %.sroa.16.64..sroa_idx.i.i.i, align 8
  br label %"_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNS9_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET0_RNS_22ParallelPrefixSumStateISO_EET_SS_SS_RKSO_RKT1_RKT2_EUlmE_EEvSS_SU_EUlRKNS_5rangeImEEE_EEvSS_SS_SS_SU_PNS0_16TaskGroupContextEENKUlvE_clEv.exit"

bb.f:                                             ; preds = %bb.a
  %i.da = add i64 %i.d, %i.b
  %i.db = lshr i64 %i.da, 1                       ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8
  %.val4.i = load i64, ptr %i.dc, align 8
  tail call fastcc void @"_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNS9_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET0_RNS_22ParallelPrefixSumStateISO_EET_SS_SS_RKSO_RKT1_RKT2_EUlmE_EEvSS_SU_EUlRKNS_5rangeImEEE_EEvSS_SS_SS_SU_PNS0_16TaskGroupContextE"(i64 noundef %i.d, i64 noundef %i.db, i64 noundef %i.g, i64 %.val4.i, ptr noundef %i.de), !inline_history !701
  %i.df = load i64, ptr %i.a, align 8
  %i.dg = load i64, ptr %i.f, align 8
  %i.dh = load ptr, ptr %i.dd, align 8
  %.val3.i = load i64, ptr %i.dc, align 8
  tail call fastcc void @"_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNS9_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET0_RNS_22ParallelPrefixSumStateISO_EET_SS_SS_RKSO_RKT1_RKT2_EUlmE_EEvSS_SU_EUlRKNS_5rangeImEEE_EEvSS_SS_SS_SU_PNS0_16TaskGroupContextE"(i64 noundef %i.db, i64 noundef %i.df, i64 noundef %i.dg, i64 %.val3.i, ptr noundef %i.dh), !inline_history !701
  tail call void @_ZN6embree13TaskScheduler4waitEv(), !inline_history !701
  br label %"_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNS9_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET0_RNS_22ParallelPrefixSumStateISO_EET_SS_SS_RKSO_RKT1_RKT2_EUlmE_EEvSS_SU_EUlRKNS_5rangeImEEE_EEvSS_SS_SS_SU_PNS0_16TaskGroupContextEENKUlvE_clEv.exit"

"_ZZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_0ZNS9_23createPrimRefArrayGridsESB_SH_SL_E3$_1EET0_RNS_22ParallelPrefixSumStateISO_EET_SS_SS_RKSO_RKT1_RKT2_EUlmE_EEvSS_SU_EUlRKNS_5rangeImEEE_EEvSS_SS_SS_SU_PNS0_16TaskGroupContextEENKUlvE_clEv.exit": ; preds = %"_ZZN6embree12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISB_Lm32EEEEERNSA_INS_16SubGridBuildDataENSC_ISG_Lm4EEEEEE3$_0ZNS7_23createPrimRefArrayGridsES9_SF_SJ_E3$_1EET0_RNS_22ParallelPrefixSumStateISM_EET_SQ_SQ_RKSM_RKT1_RKT2_EUlmE_EEvSQ_SS_ENKUlRKNS_5rangeImEEE_clES13_.exit.i", %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISD_Lm32EEEEERNSC_INS_16SubGridBuildDataENSE_ISI_Lm4EEEEEE3$_2ZNS9_23createPrimRefArrayGridsESB_SH_SL_E3$_3EET0_RNS_22ParallelPrefixSumStateISO_EET_SS_SS_RKSO_RKT1_RKT2_EUlmE_EEvSS_SU_EUlRKNS_5rangeImEEE_EEvSS_SS_SS_SU_PNS0_16TaskGroupContextE"(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 %.0.val, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.230, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i64 %1, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.0.val, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.e, align 8
  %i.f = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 262272 ; 5 uses
  %i.i = load atomic i64, ptr %i.h seq_cst, align 8
  %i.j = icmp ugt i64 %i.i, 4095
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.t, %bb.i ], [ %i.k, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 786624 ; 2 uses
  %i.n = load i64, ptr %i.m, align 64             ; 4 uses
  %i.o = sub i64 0, %i.n
  %i.p = and i64 %i.o, 63                         ; 2 uses
  %i.q = add i64 %i.n, 48
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %i.s = icmp ugt i64 %i.r, 524288
  br i1 %i.s, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i: ; preds = %bb.f
  store i64 %i.r, ptr %i.m, align 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 262336
  %i.w = getelementptr i8, ptr %i.v, i64 %i.n
  %i.x = getelementptr i8, ptr %i.w, i64 %i.p     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @"_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISE_Lm32EEEEERNSD_INS_16SubGridBuildDataENSF_ISJ_Lm4EEEEEE3$_2ZNSA_23createPrimRefArrayGridsESC_SI_SM_E3$_3EET0_RNS_22ParallelPrefixSumStateISP_EET_ST_ST_RKSP_RKT1_RKT2_EUlmE_EEvST_SV_EUlRKNS_5rangeImEEE_EEvST_ST_ST_SV_PNS0_16TaskGroupContextEEUlvE_EE", i64 16), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false)
  %i.z = load atomic i64, ptr %i.h seq_cst, align 64
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.z ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 786688
  %i.ac = load ptr, ptr %i.ab, align 64           ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 1, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i8 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.x, ptr %i.af, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.ac, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr %3, ptr %i.ah, align 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 %i.n, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 %i.a, ptr %i.aj, align 16
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.al = atomicrmw add ptr %i.ak, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i: ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit.i, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #18, !srcloc !32
  %i.am = cmpxchg ptr %i.aa, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.an = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8 ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 262208 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao seq_cst, align 64
  %i.aq = load atomic i64, ptr %i.h seq_cst, align 64
  %i.ar = add i64 %i.aq, -1
  %.not.i7 = icmp ult i64 %i.ap, %i.ar
  br i1 %.not.i7, label %"_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImNS_9PrimInfoTINS_4BBoxINS_6Vec3faEEEEEZNS_4sse223createPrimRefArrayGridsEPNS_8GridMeshERNS_8vector_tINS_7PrimRefENS_27aligned_monitored_allocatorISE_Lm32EEEEERNSD_INS_16SubGridBuildDataENSF_ISJ_Lm4EEEEEE3$_2ZNSA_23createPrimRefArrayGridsESC_SI_SM_E3$_3EET0_RNS_22ParallelPrefixSumStateISP_EET_ST_ST_RKSP_RKT1_RKT2_EUlmE_EEvST_SV_EUlRKNS_5rangeImEEE_EEvST_ST_ST_SV_PNS0_16TaskGroupContextEEUlvE_EEvmRKST_S19_.exit", label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit.i
  %i.as = load atomic i64, ptr %i.h seq_cst, align 64
  %i.at = add i64 %i.as, -1
end_hunk_1
