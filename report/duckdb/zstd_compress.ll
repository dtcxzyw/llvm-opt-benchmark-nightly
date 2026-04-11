inline.NumInlined: 798
inline.NumDeleted: 175
begin_hunk_0_@_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm:bb.a
  br label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread
  %.sink = phi ptr [ null, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41 ], [ %i.q, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread ]
  %.pn = phi i64 [ 8920, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41 ], [ 14552, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread ]
  %i.u = phi ptr [ %i.q, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41 ], [ %i.s, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.pn ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store ptr %.sink, ptr %i.w, align 8, !tbaa !71
  %i.x = icmp ugt ptr %i.v, %i.f
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd22ZSTD_initStaticCStreamEPvm:bb.a
  br label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i
  %.sink.i = phi ptr [ null, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i ], [ %i.q, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i ]
  %.pn.i = phi i64 [ 8920, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i ], [ 14552, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i ]
  %i.u = phi ptr [ %i.q, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i ], [ %i.s, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.pn.i ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store ptr %.sink.i, ptr %i.w, align 8, !tbaa !71
  %i.x = icmp ugt ptr %i.v, %i.f
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL33ZSTD_compressSeqStore_singleBlockEPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tEPNS_10repcodes_sES6_PvmPKvmjj:bb.a
  br i1 %.not44.i, label %_ZN11duckdb_zstdL29ZSTD_seqStore_resolveOffCodesEPNS_10repcodes_sES1_PKNS_10seqStore_tEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.s = zext i32 %i.n to i64
  %wide.trip.count.i = and i64 %i.g, 4294967295
  br label %bb.e
end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstdL33ZSTD_compressSeqStore_singleBlockEPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tEPNS_10repcodes_sES6_PvmPKvmjj:bb.a

bb.j:                                             ; preds = %thread-pre-split.i
  %i.aq = load <2 x i32>, ptr %2, align 4, !tbaa !3
  store <2 x i32> %i.aq, ptr %i.p, align 4, !tbaa !3
  %i.ar = add i32 %i.ao, -3
  br label %.sink.split.i.i

end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL33ZSTD_compressSeqStore_singleBlockEPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tEPNS_10repcodes_sES6_PvmPKvmjj:bb.a
  %i.ba = phi i32 [ %i.av, %bb.k ], [ %.pre.i.i, %bb.l ]
  %i.bb = phi i32 [ %i.aw, %bb.k ], [ %i.az, %bb.l ]
  %.not22.i.i = icmp eq i32 %i.au, 1
  %..i.i = select i1 %.not22.i.i, i64 8, i64 4
  %.in.i.i = getelementptr inbounds nuw i8, ptr %2, i64 %..i.i
  %i.bc = load i32, ptr %.in.i.i, align 4, !tbaa !3
  store i32 %i.bc, ptr %i.o, align 4, !tbaa !3
  store i32 %i.ba, ptr %i.p, align 4, !tbaa !3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.m, %bb.j
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstdL33ZSTD_compressSeqStore_singleBlockEPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tEPNS_10repcodes_sES6_PvmPKvmjj:bb.a

bb.n:                                             ; preds = %_ZN11duckdb_zstdL14ZSTD_updateRepEPjjj.exit.i
  %i.be = load <2 x i32>, ptr %3, align 4, !tbaa !3
  store <2 x i32> %i.be, ptr %i.r, align 4, !tbaa !3
  %i.bf = add i32 %i.aa, -3
  br label %.sink.split.i36.i

end_hunk_5
begin_hunk_6_@_ZN11duckdb_zstdL33ZSTD_compressSeqStore_singleBlockEPNS_11ZSTD_CCtx_sEPKNS_10seqStore_tEPNS_10repcodes_sES6_PvmPKvmjj:bb.a
  %i.bm = phi i32 [ %i.bh, %bb.p ], [ %.pre.i38.i, %bb.q ]
  %i.bn = phi i32 [ %i.bi, %bb.p ], [ %i.bl, %bb.q ]
  %.not22.i34.i = icmp eq i32 %i.bg, 1
  %..i35.i = select i1 %.not22.i34.i, i64 8, i64 4
  %.in.i36.i = getelementptr inbounds nuw i8, ptr %3, i64 %..i35.i
  %i.bo = load i32, ptr %.in.i36.i, align 4, !tbaa !3
  store i32 %i.bo, ptr %i.q, align 4, !tbaa !3
  store i32 %i.bm, ptr %i.r, align 4, !tbaa !3
  br label %.sink.split.i36.i

.sink.split.i36.i:                                ; preds = %bb.r, %bb.n
end_hunk_6
begin_hunk_7_@_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi:bb.a

_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %._crit_edge.i
  %.0.i.i = phi i32 [ 0, %._crit_edge.i ], [ 1, %bb.c ], [ 0, %bb.d ], [ %i.aj, %bb.e ]
  %i.ak = tail call noundef i64 @_ZN11duckdb_zstd21ZSTD_compressLiteralsEPvmPKvmS0_mPKNS_17ZSTD_hufCTables_tEPS3_NS_13ZSTD_strategyEiii(ptr noundef %4, i64 noundef %5, ptr noundef %i.v, i64 noundef %.pre143.i, ptr noundef nonnull %i.t, i64 noundef 8708, ptr noundef %1, ptr noundef %2, i32 noundef %i.b, i32 noundef %.0.i.i, i32 noundef %i.ac, i32 noundef %8) ; 5 uses
  %i.al = icmp ult i64 %i.ak, -119
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak ; 6 uses
  br i1 %i.al, label %bb.f, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread

bb.f:                                             ; preds = %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i
  %i.an = ptrtoint ptr %i.s to i64
  %gepdiff.i = sub nsw i64 %5, %i.ak
  %i.ao = icmp slt i64 %gepdiff.i, 4
  br i1 %i.ao, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp ult i64 %i.l, 128
end_hunk_7
begin_hunk_8_@_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi:bb.a

bb.h:                                             ; preds = %bb.g
  %i.aq = trunc nuw nsw i64 %i.l to i8
  store i8 %i.aq, ptr %i.am, align 1, !tbaa !220
  br label %bb.l

end_hunk_8
begin_hunk_9_@_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi:bb.a
  %i.av = trunc i64 %i.l to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
end_hunk_9
begin_hunk_10_@_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi:bb.a
  %i.ay = trunc i64 %i.l to i16
  %i.az = add i16 %i.ay, -32512
  store i16 %i.az, ptr %i.ax, align 1, !tbaa !256
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.pn.i = phi i64 [ 1, %bb.h ], [ 2, %bb.j ], [ 3, %bb.k ] ; 2 uses
  %.1114.i = getelementptr inbounds nuw i8, ptr %i.am, i64 %.pn.i ; 2 uses
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2064
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3552) %i.c, ptr noundef nonnull align 8 dereferenceable(3552) %i.ba, i64 3552, i1 false)
  %10 = add nuw nsw i64 %.pn.i, %i.ak
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.1114.i, i64 1 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi:bb.a
  %i.bx = sub i64 %i.an, %i.bw
  %i.by = tail call noundef i64 @_ZN11duckdb_zstd20ZSTD_encodeSequencesEPvmPKjPKhS2_S4_S2_S4_PKNS_8seqDef_sEmii(ptr noundef nonnull %i.bt, i64 noundef %i.bx, ptr noundef nonnull %i.e, ptr noundef %i.r, ptr noundef nonnull %i.c, ptr noundef %i.n, ptr noundef nonnull %i.d, ptr noundef %i.p, ptr noundef %i.f, i64 noundef %i.l, i32 noundef %i.bv, i32 noundef %8) ; 4 uses
  %i.bz = icmp ult i64 %i.by, -119
  br i1 %i.bz, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread

_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit: ; preds = %bb.p
  %.not129.i = icmp ne i64 %i.bs, 0
  %11 = add i64 %i.by, %i.bs
  %12 = icmp ult i64 %11, 4
  %or.cond.not.i.not39 = and i1 %.not129.i, %12
  %13 = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by
  %i.ca = ptrtoint ptr %13 to i64
  %i.cb = ptrtoint ptr %4 to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  %or.cond = select i1 %or.cond.not.i.not39, i1 true, i1 %i.cd
  br i1 %or.cond, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread

_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread: ; preds = %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit, %bb.p, %bb.f, %bb.o, %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i
  %.4.i29 = phi i64 [ %i.cc, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit ], [ %i.by, %bb.p ], [ -70, %bb.f ], [ %i.be, %bb.o ], [ %i.ak, %_ZN11duckdb_zstdL34ZSTD_literalsCompressionIsDisabledEPKNS_18ZSTD_CCtx_params_sE.exit.i ] ; 2 uses
  %i.ce = icmp eq i64 %.4.i29, -70
  %i.cf = icmp ule i64 %6, %5
  %i.cg = and i1 %i.cf, %i.ce
  br i1 %i.cg, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30, label %bb.q

bb.q:                                             ; preds = %bb.m, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread
  %.4.i2933 = phi i64 [ %10, %bb.m ], [ %.4.i29, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread ] ; 4 uses
  %i.ch = icmp ult i64 %.4.i2933, -119
  br i1 %i.ch, label %bb.r, label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30

bb.r:                                             ; preds = %bb.q
end_hunk_11
begin_hunk_12_@_ZN11duckdb_zstdL28ZSTD_entropyCompressSeqStoreEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmmSA_mi:bb.a
  %i.cm = lshr i64 %6, %i.cl
  %.neg32 = add i64 %6, -2
  %i.cn = sub i64 %.neg32, %i.cm
  %.not27 = icmp ult i64 %.4.i2933, %i.cn
  %spec.select = select i1 %.not27, i64 %.4.i2933, i64 0
  br label %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30

_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread30: ; preds = %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit, %bb.r, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread, %bb.q
  %.2 = phi i64 [ %.4.i2933, %bb.q ], [ 0, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit ], [ 0, %_ZN11duckdb_zstdL37ZSTD_entropyCompressSeqStore_internalEPKNS_10seqStore_tEPKNS_21ZSTD_entropyCTables_tEPS3_PKNS_18ZSTD_CCtx_params_sEPvmSA_mi.exit.thread ], [ %spec.select, %bb.r ]
  ret i64 %.2
}

end_hunk_12
