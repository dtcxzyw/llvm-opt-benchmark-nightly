Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/zstd_compress?download=true
inline.NumInlined: 798
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN11duckdb_zstdL50ZSTD_buildEntropyStatisticsAndEstimateSubBlockSizeEPNS_10seqStore_tEPNS_11ZSTD_CCtx_sE:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.ax, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.ay = add i64 %.0.i.i, 6
  %spec.select.i.i = select i1 %i.aq, i64 %.0.i.i, i64 %i.ay
  %i.az = add i64 %i.ap, %spec.select.i.i
  br label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i

bb.h:                                             ; preds = %bb.b
  br label %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i

_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i: ; preds = %bb.h, %bb.g, %bb.d, %bb.c, %bb.b
  %.126.i.i = phi i64 [ 0, %bb.h ], [ 1, %bb.c ], [ %i.u, %bb.b ], [ %i.az, %bb.g ], [ %i.u, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 2064
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 5064
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 5068
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !645 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 31, ptr %i.c, align 4, !tbaa !17
  %i.bf = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %i.aj, ptr noundef nonnull %i.c, ptr noundef %i.w, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) ; 0 uses
  switch i32 %i.bd, label %bb.j [
    i32 0, label %bb.i
    i32 1, label %.preheader.i.i.i
  ]

bb.i:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i
  %i.bg = load i32, ptr %i.c, align 4, !tbaa !17
  %i.bh = call noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef nonnull @_ZN11duckdb_zstdL14OF_defaultNormE, i32 noundef 5, ptr noundef %i.aj, i32 noundef %i.bg)
  br label %bb.l

bb.j:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i
  %i.bi = and i32 %i.bd, -2
  %or.cond.i.i.i = icmp eq i32 %i.bi, 2
  br i1 %or.cond.i.i.i, label %bb.k, label %.preheader.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bj = load i32, ptr %i.c, align 4, !tbaa !17
  %i.bk = call noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef nonnull %i.ba, ptr noundef %i.aj, i32 noundef %i.bj)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i = phi i64 [ %i.bh, %bb.i ], [ %i.bk, %bb.k ] ; 2 uses
  %i.bl = icmp ult i64 %.0.i.i.i, -119
  br i1 %i.bl, label %.preheader.i.i.i, label %bb.m

.preheader.i.i.i:                                 ; preds = %bb.l, %bb.j, %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i
  %.043.i.i.i = phi i64 [ %.0.i.i.i, %bb.l ], [ 0, %bb.j ], [ 0, %_ZN11duckdb_zstdL30ZSTD_estimateBlockSize_literalEPKhmPKNS_17ZSTD_hufCTables_tEPKNS_25ZSTD_hufCTablesMetadata_tEPvmi.exit.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.preheader.i.i.i, %.lr.ph.split.us.i.i.i
  %.139.us.i.i.i = phi i64 [ %.2.us.i.i.i, %.lr.ph.split.us.i.i.i ], [ %.043.i.i.i, %.preheader.i.i.i ]
  %.03338.us.i.i.i = phi ptr [ %i.bm, %.lr.ph.split.us.i.i.i ], [ %i.w, %.preheader.i.i.i ] ; 2 uses
  %.pn.in.us.i.i.i = load i8, ptr %.03338.us.i.i.i, align 1, !tbaa !205
  %.pn.us.i.i.i = zext i8 %.pn.in.us.i.i.i to i64
  %.2.us.i.i.i = add i64 %.139.us.i.i.i, %.pn.us.i.i.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.03338.us.i.i.i, i64 1 ; 2 uses
  %i.bn = icmp ult ptr %i.bm, %i.be
  br i1 %i.bn, label %.lr.ph.split.us.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !641

bb.m:                                             ; preds = %bb.l
  %i.bo = mul i64 %i.ah, 10
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.split.us.i.i.i, %.preheader.i.i.i
  %.1.lcssa.i.i.i = phi i64 [ %.043.i.i.i, %.preheader.i.i.i ], [ %.2.us.i.i.i, %.lr.ph.split.us.i.i.i ]
  %i.bp = lshr i64 %.1.lcssa.i.i.i, 3
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i

_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.m
  %.034.i.i.i = phi i64 [ %i.bo, %bb.m ], [ %i.bp, %._crit_edge.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.bq = load i32, ptr %i.bb, align 8, !tbaa !646 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 4288
  %i.bs = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 35, ptr %i.b, align 4, !tbaa !17
  %i.bt = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %i.aj, ptr noundef nonnull %i.b, ptr noundef %i.y, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) ; 0 uses
  switch i32 %i.bq, label %bb.o [
    i32 0, label %bb.n
    i32 1, label %.preheader.i27.i.i
  ]

bb.n:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i
  %i.bu = load i32, ptr %i.b, align 4, !tbaa !17
  %i.bv = call noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef nonnull @_ZN11duckdb_zstdL14LL_defaultNormE, i32 noundef 6, ptr noundef %i.aj, i32 noundef %i.bu)
  br label %bb.q

bb.o:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i
  %i.bw = and i32 %i.bq, -2
  %or.cond.i35.i.i = icmp eq i32 %i.bw, 2
  br i1 %or.cond.i35.i.i, label %bb.p, label %.preheader.i27.i.i

bb.p:                                             ; preds = %bb.o
  %i.bx = load i32, ptr %i.b, align 4, !tbaa !17
  %i.by = call noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef nonnull %i.br, ptr noundef %i.aj, i32 noundef %i.bx)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.0.i34.i.i = phi i64 [ %i.bv, %bb.n ], [ %i.by, %bb.p ] ; 2 uses
  %i.bz = icmp ult i64 %.0.i34.i.i, -119
  br i1 %i.bz, label %.preheader.i27.i.i, label %bb.r

.preheader.i27.i.i:                               ; preds = %bb.q, %bb.o, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i
  %.043.i28.i.i = phi i64 [ %.0.i34.i.i, %bb.q ], [ 0, %bb.o ], [ 0, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit.i.i ] ; 2 uses
  %.not.i29.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i29.i.i, label %._crit_edge.i31.i.i, label %.lr.ph.split.i.i.i

bb.r:                                             ; preds = %bb.q
  %i.ca = mul i64 %i.ah, 10
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i

.lr.ph.split.i.i.i:                               ; preds = %.preheader.i27.i.i, %.lr.ph.split.i.i.i
  %.139.i.i.i = phi i64 [ %.2.i.i.i, %.lr.ph.split.i.i.i ], [ %.043.i28.i.i, %.preheader.i27.i.i ]
  %.03338.i.i.i = phi ptr [ %i.ce, %.lr.ph.split.i.i.i ], [ %i.y, %.preheader.i27.i.i ] ; 2 uses
  %i.cb = load i8, ptr %.03338.i.i.i, align 1, !tbaa !205
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7LL_bitsE, i64 %i.cc
  %.pn.in.i.i.i = load i8, ptr %i.cd, align 1, !tbaa !205
  %.pn.i.i.i = zext i8 %.pn.in.i.i.i to i64
  %.2.i.i.i = add i64 %.139.i.i.i, %.pn.i.i.i     ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03338.i.i.i, i64 1 ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %i.bs
  br i1 %i.cf, label %.lr.ph.split.i.i.i, label %._crit_edge.i31.i.i, !llvm.loop !641

._crit_edge.i31.i.i:                              ; preds = %.lr.ph.split.i.i.i, %.preheader.i27.i.i
  %.1.lcssa.i32.i.i = phi i64 [ %.043.i28.i.i, %.preheader.i27.i.i ], [ %.2.i.i.i, %.lr.ph.split.i.i.i ]
  %i.cg = lshr i64 %.1.lcssa.i32.i.i, 3
  br label %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i

_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i: ; preds = %._crit_edge.i31.i.i, %bb.r
  %.034.i33.i.i = phi i64 [ %i.ca, %bb.r ], [ %i.cg, %._crit_edge.i31.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 5072
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !226 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2836
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 52, ptr %i.a, align 4, !tbaa !17
  %i.cl = call noundef i64 @_ZN11duckdb_zstd19HIST_countFast_wkspEPjS0_PKvmPvm(ptr noundef %i.aj, ptr noundef nonnull %i.a, ptr noundef %i.aa, i64 noundef range(i64 -1152921504606846976, 1152921504606846976) %i.ah, ptr noundef %i.aj, i64 noundef 8920) ; 0 uses
  switch i32 %i.ci, label %bb.t [
    i32 0, label %bb.s
    i32 1, label %.preheader.i37.i.i
  ]

bb.s:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i
  %i.cm = load i32, ptr %i.a, align 4, !tbaa !17
  %i.cn = call noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef nonnull @_ZN11duckdb_zstdL14ML_defaultNormE, i32 noundef 6, ptr noundef %i.aj, i32 noundef %i.cm)
  br label %bb.v

bb.t:                                             ; preds = %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i
  %i.co = and i32 %i.ci, -2
  %or.cond.i51.i.i = icmp eq i32 %i.co, 2
  br i1 %or.cond.i51.i.i, label %bb.u, label %.preheader.i37.i.i

bb.u:                                             ; preds = %bb.t
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !17
  %i.cq = call noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef nonnull %i.cj, ptr noundef %i.aj, i32 noundef %i.cp)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0.i50.i.i = phi i64 [ %i.cn, %bb.s ], [ %i.cq, %bb.u ] ; 2 uses
  %i.cr = icmp ult i64 %.0.i50.i.i, -119
  br i1 %i.cr, label %.preheader.i37.i.i, label %bb.w

.preheader.i37.i.i:                               ; preds = %bb.v, %bb.t, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i
  %.043.i38.i.i = phi i64 [ %.0.i50.i.i, %bb.v ], [ 0, %bb.t ], [ 0, %_ZN11duckdb_zstdL33ZSTD_estimateBlockSize_symbolTypeENS_20symbolEncodingType_eEPKhmjPKjS2_PKsjjPvm.exit36.i.i ] ; 2 uses
  %.not.i39.i.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not.i39.i.i, label %._crit_edge.i47.i.i, label %.lr.ph.split.i41.i.i

bb.w:                                             ; preds = %bb.v
  %i.cs = mul i64 %i.ah, 10
  br label %_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit

.lr.ph.split.i41.i.i:                             ; preds = %.preheader.i37.i.i, %.lr.ph.split.i41.i.i
  %.139.i42.i.i = phi i64 [ %.2.i46.i.i, %.lr.ph.split.i41.i.i ], [ %.043.i38.i.i, %.preheader.i37.i.i ]
  %.03338.i43.i.i = phi ptr [ %i.cw, %.lr.ph.split.i41.i.i ], [ %i.aa, %.preheader.i37.i.i ] ; 2 uses
  %i.ct = load i8, ptr %.03338.i43.i.i, align 1, !tbaa !205
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr @_ZN11duckdb_zstdL7ML_bitsE, i64 %i.cu
  %.pn.in.i44.i.i = load i8, ptr %i.cv, align 1, !tbaa !205
  %.pn.i45.i.i = zext i8 %.pn.in.i44.i.i to i64
  %.2.i46.i.i = add i64 %.139.i42.i.i, %.pn.i45.i.i ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03338.i43.i.i, i64 1 ; 2 uses
  %i.cx = icmp ult ptr %i.cw, %i.ck
  br i1 %i.cx, label %.lr.ph.split.i41.i.i, label %._crit_edge.i47.i.i, !llvm.loop !641

._crit_edge.i47.i.i:                              ; preds = %.lr.ph.split.i41.i.i, %.preheader.i37.i.i
  %.1.lcssa.i48.i.i = phi i64 [ %.043.i38.i.i, %.preheader.i37.i.i ], [ %.2.i46.i.i, %.lr.ph.split.i41.i.i ]
  %i.cy = lshr i64 %.1.lcssa.i48.i.i, 3
  br label %_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit

_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit: ; preds = %bb.w, %._crit_edge.i47.i.i
  %.034.i49.i.i = phi i64 [ %i.cs, %bb.w ], [ %i.cy, %._crit_edge.i47.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 5216
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !647
  %i.db = icmp ugt i64 %i.ah, 32511
  %i.dc = icmp ugt i64 %i.ah, 127
  %i.dd = select i1 %i.dc, i64 3, i64 2
  %i.de = select i1 %i.db, i64 4, i64 3
  %2 = add nuw nsw i64 %i.de, %i.dd
  %i.df = add i64 %2, %.126.i.i
  %i.dg = add i64 %i.df, %.034.i.i.i
  %i.dh = add i64 %i.dg, %.034.i33.i.i
  %i.di = add i64 %i.dh, %.034.i49.i.i
  %i.dj = add i64 %i.di, %i.da
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit
  %.1 = phi i64 [ %i.dj, %_ZN11duckdb_zstdL22ZSTD_estimateBlockSizeEPKhmS1_S1_S1_mPKNS_21ZSTD_entropyCTables_tEPKNS_29ZSTD_entropyCTablesMetadata_tEPvmii.exit ], [ %i.m, %bb.a ]
  ret i64 %.1
}

declare noundef i64 @_ZN11duckdb_zstd21ZSTD_crossEntropyCostEPKsjPKjj(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd15ZSTD_fseBitCostEPKjS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #20 !guid !648 {
bb.a:
  %9 = alloca %"struct.duckdb_zstd::ZSTD_symbolEncodingTypeStats_t", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !133  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2064 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4288
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2836
  %i.f = load ptr, ptr %0, align 8, !tbaa !195    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !199  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3                   ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !197
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !196
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !198
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 %5 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 212 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !208  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = icmp eq ptr %i.h, %i.f                   ; 2 uses
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !209
  %.pre136.i = ptrtoint ptr %.pre.i to i64
  %.pre137.i = sub i64 %.pre136.i, %i.x           ; 2 uses
  br i1 %i.y, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = udiv i64 %.pre137.i, %i.l
  %i.aa = icmp ugt i64 %i.z, 19
  %i.ab = zext i1 %i.aa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.ac = phi i32 [ %i.ab, %bb.b ], [ 1, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !138
  switch i32 %i.ae, label %bb.d [
    i32 1, label %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %._crit_edge.i
  br label %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.af = icmp eq i32 %i.b, 1
  br i1 %i.af, label %bb.e, label %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !132
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  br label %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i

_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.0.i.i = phi i32 [ 0, %._crit_edge.i ], [ 1, %bb.c ], [ 0, %bb.d ], [ %i.aj, %bb.e ]
  %i.ak = tail call noundef i64 @_ZN11duckdb_zstd21ZSTD_compressLiteralsEPvmPKvmS0_mPKNS_17ZSTD_hufCTables_tEPS3_NS_13ZSTD_strategyEiii(ptr noundef %4, i64 noundef %5, ptr noundef %i.v, i64 noundef %.pre137.i, ptr noundef nonnull %i.t, i64 noundef 8708, ptr noundef %1, ptr noundef %2, i32 noundef %i.b, i32 noundef %.0.i.i, i32 noundef %i.ac, i32 noundef %8) ; 4 uses
  %i.al = icmp ult i64 %i.ak, -119
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak ; 8 uses
  br i1 %i.al, label %bb.f, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread

bb.f:                                             ; preds = %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i
  %i.an = ptrtoint ptr %i.s to i64
  %gepdiff.i = sub nsw i64 %5, %i.ak
  %i.ao = icmp slt i64 %gepdiff.i, 4
  br i1 %i.ao, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp ult i64 %i.l, 128
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = trunc nuw nsw i64 %i.l to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.aq, ptr %i.am, align 1, !tbaa !205
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.as = icmp ult i64 %i.l, 32512
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = lshr i64 %i.l, 8
  %i.au = trunc nuw nsw i64 %i.at to i8
  %i.av = or disjoint i8 %i.au, -128
  store i8 %i.av, ptr %i.am, align 1, !tbaa !205
  %i.aw = trunc i64 %i.l to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !205
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i8 -1, ptr %i.am, align 1, !tbaa !205
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ba = trunc i64 %i.l to i16
  %i.bb = add i16 %i.ba, -32512
  store i16 %i.bb, ptr %i.az, align 1, !tbaa !227
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.1116.i = phi ptr [ %i.ar, %bb.h ], [ %i.ay, %bb.j ], [ %i.bc, %bb.k ] ; 3 uses
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 2064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3552) %i.c, ptr noundef nonnull align 8 dereferenceable(3552) %i.bd, i64 3552, i1 false)
  br label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit

bb.n:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.1116.i, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2064
  call fastcc void @_ZN11duckdb_zstdL29ZSTD_buildSequencesStatisticsEPKNS_10seqStore_tEmPKNS_17ZSTD_fseCTables_tEPS3_PhPKhNS_13ZSTD_strategyEPjPvm(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull readonly %0, i64 noundef %i.l, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.be, ptr noundef nonnull %i.s, i32 noundef %i.b, ptr noundef nonnull %7, ptr noundef nonnull %i.t, i64 noundef 8708)
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !312 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, -119
  br i1 %i.bi, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %bb.n
  %i.bj = load i32, ptr %9, align 8, !tbaa !311
  %i.bk = shl i32 %i.bj, 6
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !313
  %i.bn = shl i32 %i.bm, 4
  %i.bo = add i32 %i.bn, %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !314
  %i.br = shl i32 %i.bq, 2
  %i.bs = add i32 %i.bo, %i.br
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %.1116.i, align 1, !tbaa !205
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !309 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !310
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.an, %i.bz
  %i.cb = tail call noundef i64 @_ZN11duckdb_zstd20ZSTD_encodeSequencesEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmii(ptr noundef nonnull %i.bw, i64 noundef %i.ca, ptr noundef nonnull %i.e, ptr noundef %i.r, ptr noundef nonnull %i.c, ptr noundef %i.n, ptr noundef nonnull %i.d, ptr noundef %i.p, ptr noundef %i.f, i64 noundef %i.l, i32 noundef %i.by, i32 noundef %8) ; 4 uses
  %i.cc = icmp ult i64 %i.cb, -119
  br i1 %i.cc, label %bb.p, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread

bb.p:                                             ; preds = %bb.o
  %.not130.i = icmp eq i64 %i.bv, 0
  %i.cd = add i64 %i.cb, %i.bv
  %i.ce = icmp ugt i64 %i.cd, 3
  %or.cond.not.i = or i1 %.not130.i, %i.ce
  br i1 %or.cond.not.i, label %bb.q, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread31

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb
  br label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit

.critedge.i:                                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread

_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit: ; preds = %bb.m, %bb.q
  %.1116.i.sink = phi ptr [ %.1116.i, %bb.m ], [ %i.cf, %bb.q ]
  %i.cg = ptrtoint ptr %.1116.i.sink to i64
  %i.ch = ptrtoint ptr %4 to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread31, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread

_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread: ; preds = %bb.o, %.critedge.i, %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit
  %.4123.i30 = phi i64 [ %i.ci, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit ], [ %i.cb, %bb.o ], [ %i.ak, %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i ], [ %i.bh, %.critedge.i ] ; 5 uses
  %i.ck = icmp eq i64 %.4123.i30, -70
  %i.cl = icmp ule i64 %6, %5
  %i.cm = and i1 %i.cl, %i.ck
  br i1 %i.cm, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread31, label %bb.r

_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread.thread: ; preds = %bb.f
end_hunk_0
