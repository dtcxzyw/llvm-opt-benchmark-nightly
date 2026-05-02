inline.NumInlined: 798
inline.NumDeleted: 175
begin_hunk_0_@_ZN11duckdb_zstdL46ZSTD_estimateCCtxSize_usingCCtxParams_internalEPKNS_26ZSTD_compressionParametersEPKNS_11ldmParams_tEiNS_18ZSTD_paramSwitch_eEmmmim:bb.a
_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread.i: ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread32.i, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i, %.thread
  %i.r = phi i64 [ %i.q, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread32.i ], [ 0, %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i ], [ 0, %.thread ]
  %i.s = icmp eq i32 %i.h, 3                      ; 2 uses
  %11 = trunc nuw i32 %7 to i1
  %12 = select i1 %i.s, i1 true, i1 %11
  %i.t = select i1 %12, i64 3, i64 4
  %i.u = udiv i64 %i.f, %i.t                      ; 2 uses
  %i.v = shl i64 %i.u, 3
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eE:bb.a
  %i.a = add i32 %0, -6
  %i.b = icmp ult i32 %i.a, -3
  %i.c = icmp ne i32 %1, 1
  %.not8 = or i1 %i.c, %i.b
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [24 x i8], ptr @_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE24rowBasedBlockCompressors, i64 %i.d
  %i.f = zext nneg i32 %0 to i64
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL30ZSTD_compressContinue_internalEPNS_11ZSTD_CCtx_sEPvmPKvmjj:bb.a
  br i1 %i.c, label %_ZN11duckdb_zstdL24ZSTD_compress_frameChunkEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = trunc nuw i32 %5 to i1                  ; 2 uses
  %i.d = icmp eq i32 %i.b, 1
  %or.cond = and i1 %i.d, %.not
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL30ZSTD_compressContinue_internalEPNS_11ZSTD_CCtx_sEPvmPKvmjj:bb.a
  br i1 %.not138.i, label %bb.cg, label %bb.u, !llvm.loop !286

bb.cg:                                            ; preds = %_ZN11duckdb_zstdL35ZSTD_compressBlock_targetCBlockSizeEPNS_11ZSTD_CCtx_sEPvmPKvmj.exit.i
  %.not139.i = trunc nuw i32 %6 to i1
  %i.nv = icmp ugt ptr %i.nt, %.065
  %or.cond.i89 = select i1 %.not139.i, i1 %i.nv, i1 false
  br i1 %or.cond.i89, label %bb.ch, label %bb.ci
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL27ZSTD_compressBegin_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE:bb.a
  %i.in = add i32 %i.il, -6
  %i.io = icmp ult i32 %i.in, -3
  %i.ip = icmp ne i32 %i.im, 1
  %.not75.i.i = or i1 %i.ip, %i.io
  br i1 %.not75.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN11duckdb_zstdL27ZSTD_copyCDictTableIntoCCtxEPjPKjmPKNS_26ZSTD_compressionParametersE.exit69.i.i
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstd46ZSTD_copySequencesToSeqStoreExplicitBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE:bb.a
  %i.cd = icmp ne ptr %.val, null
  %i.ce = load i32, ptr %i.x, align 4, !tbaa !390
  %i.cf = icmp eq i32 %i.ce, 3
  %8 = select i1 %i.cf, i1 true, i1 %i.cd
  %i.cg = select i1 %8, i64 3, i64 4
  %i.ch = zext i32 %i.am to i64
  %.not154 = icmp samesign ugt i64 %i.cg, %i.ch
end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstd40ZSTD_copySequencesToSeqStoreNoBlockDelimEPNS_11ZSTD_CCtx_sEPNS_21ZSTD_sequencePositionEPKNS_13ZSTD_SequenceEmPKvmNS_18ZSTD_paramSwitch_eE:bb.a
  %i.ck = icmp ne ptr %.val, null
  %i.cl = load i32, ptr %i.r, align 4, !tbaa !390
  %i.cm = icmp eq i32 %i.cl, 3
  %8 = select i1 %i.cm, i1 true, i1 %i.ck
  %i.cn = select i1 %8, i64 3, i64 4
  %i.co = zext i32 %.2136 to i64
  %.not212 = icmp samesign ugt i64 %i.cn, %i.co
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL23ZSTD_resetCCtx_internalEPNS_11ZSTD_CCtx_sEPKNS_18ZSTD_CCtx_params_sEmmNS_22ZSTD_compResetPolicy_eENS_22ZSTD_buffered_policy_eE:bb.a
  %.val196 = load ptr, ptr %i.q, align 8, !tbaa !152
  %i.r = icmp ne ptr %.val196, null
  %i.s = icmp eq i32 %i.p, 3
  %6 = select i1 %i.s, i1 true, i1 %i.r
  %i.t = select i1 %6, i64 3, i64 4               ; 4 uses
  %i.u = udiv i64 %.189, %i.t                     ; 5 uses
  %i.v = icmp eq i32 %5, 1
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL23ZSTD_resetCCtx_internalEPNS_11ZSTD_CCtx_sEPKNS_18ZSTD_CCtx_params_sEmmNS_22ZSTD_compResetPolicy_eENS_22ZSTD_buffered_policy_eE:bb.a
  %i.br = ptrtoint ptr %.val193 to i64            ; 2 uses
  %i.bs = ptrtoint ptr %.val to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp ult i64 %i.bt, %i.bk
  %i.bv = getelementptr i8, ptr %0, i64 704       ; 28 uses
  %.val.i = load ptr, ptr %i.bv, align 8, !tbaa !68
  %i.bw = getelementptr i8, ptr %0, i64 720       ; 25 uses
end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL23ZSTD_resetCCtx_internalEPNS_11ZSTD_CCtx_sEPKNS_18ZSTD_CCtx_params_sEmmNS_22ZSTD_compResetPolicy_eENS_22ZSTD_buffered_policy_eE:bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !425
  %i.cd = icmp sgt i32 %i.cc, 128
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_check_wastefulEPNS_10ZSTD_cwkspEm.exit

_ZN11duckdb_zstdL25ZSTD_cwksp_check_wastefulEPNS_10ZSTD_cwkspEm.exit: ; preds = %bb.k, %bb.l
  %7 = phi i1 [ false, %bb.k ], [ %i.cd, %bb.l ]
  %8 = select i1 %i.bu, i1 true, i1 %7
  br i1 %8, label %bb.m, label %.thread294

bb.m:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_check_wastefulEPNS_10ZSTD_cwkspEm.exit
  br i1 %.not184, label %bb.n, label %.thread290

bb.n:                                             ; preds = %bb.m
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL23ZSTD_resetCCtx_internalEPNS_11ZSTD_CCtx_sEPKNS_18ZSTD_CCtx_params_sEmmNS_22ZSTD_compResetPolicy_eENS_22ZSTD_buffered_policy_eE:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 744
  br label %_ZN11duckdb_zstdL16ZSTD_cwksp_clearEPNS_10ZSTD_cwkspE.exit

.thread294:                                       ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_check_wastefulEPNS_10ZSTD_cwkspEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !67
  %.phi.trans.insert313 = getelementptr inbounds nuw i8, ptr %0, i64 744
end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL21ZSTD_reset_matchStateEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_26ZSTD_compressionParametersENS_18ZSTD_paramSwitch_eENS_22ZSTD_compResetPolicy_eENS_23ZSTD_indexResetPolicy_eENS_18ZSTD_resetTarget_eE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.d = load i32, ptr %i.c, align 4, !tbaa !444
  %i.e = icmp eq i32 %i.d, 0
  %7 = trunc nuw i32 %6 to i1                     ; 4 uses
  %.not160 = or i1 %i.e, %7
  br i1 %.not160, label %bb.b, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread155

bb.b:                                             ; preds = %bb.a
end_hunk_11
begin_hunk_12_@_ZN11duckdb_zstdL28ZSTD_overflowCorrectIfNeededEPNS_17ZSTD_matchState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvS8_:bb.a
  %i.bf = add i32 %i.ba, -3
  %i.bg = icmp ult i32 %i.bf, 3
  %i.bh = icmp eq i32 %i.bc, 1
  %.not8.i.not.i = and i1 %i.bh, %i.bg
  br i1 %.not8.i.not.i, label %_ZN11duckdb_zstdL24ZSTD_reduceTable_btlazy2EPjjj.exit.i, label %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i

_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.thread21.i: ; preds = %_ZN11duckdb_zstdL23ZSTD_allocateChainTableENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eEj.exit.i, %bb.b
end_hunk_12
begin_hunk_13_@_ZN11duckdb_zstdL18ZSTD_buildSeqStoreEPNS_11ZSTD_CCtx_sEPKvm:bb.a
  %i.fi = add i32 %i.ff, -6
  %i.fj = icmp ult i32 %i.fi, -3
  %i.fk = icmp ne i32 %i.fh, 1
  %.not8.i = or i1 %i.fk, %i.fj
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr @_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE24rowBasedBlockCompressors, i64 %i.an
  %i.fm = zext nneg i32 %i.ff to i64
  %i.fn = getelementptr [8 x i8], ptr %i.fl, i64 %i.fm
end_hunk_13
begin_hunk_14_@_ZN11duckdb_zstdL18ZSTD_buildSeqStoreEPNS_11ZSTD_CCtx_sEPKvm:bb.a
  %i.ga = add i32 %i.fx, -6
  %i.gb = icmp ult i32 %i.ga, -3
  %i.gc = icmp ne i32 %i.fz, 1
  %.not8.i148 = or i1 %i.gc, %i.gb
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr @_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE24rowBasedBlockCompressors, i64 %i.an
  %i.ge = zext nneg i32 %i.fx to i64
  %i.gf = getelementptr [8 x i8], ptr %i.gd, i64 %i.ge
end_hunk_14
begin_hunk_15_@_ZN11duckdb_zstdL26ZSTD_loadDictionaryContentEPNS_17ZSTD_matchState_tEPNS_10ldmState_tEPNS_10ZSTD_cwkspEPKNS_18ZSTD_CCtx_params_sEPKvmNS_26ZSTD_dictTableLoadMethod_eENS_23ZSTD_tableFillPurpose_eE:bb.a
  %i.f = and i1 %i.e, %i.d                        ; 2 uses
  %i.g = getelementptr i8, ptr %3, i64 28         ; 3 uses
  %.val = load i32, ptr %i.g, align 4, !tbaa !101 ; 3 uses
  %i.h = add i32 %.val, -3
  %narrow.i = icmp ult i32 %i.h, -2
  %or.cond.not119 = icmp eq i32 %7, 0
  %or.cond.not = or i1 %or.cond.not119, %narrow.i ; 2 uses
  %spec.select.neg = select i1 %or.cond.not, i64 -3758096382, i64 -16777214
  %spec.select = select i1 %or.cond.not, i64 3758096382, i64 16777214 ; 2 uses
  %i.i = icmp ugt i64 %5, %spec.select
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %spec.select.neg
  %.093 = tail call i64 @llvm.umin.i64(i64 %5, i64 %spec.select) ; 4 uses
end_hunk_15
