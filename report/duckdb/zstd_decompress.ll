inline.NumInlined: 231
inline.NumDeleted: 51
begin_hunk_0_@_ZN11duckdb_zstd20ZSTD_decompressBoundEPKvm:bb.a
  call fastcc void @_ZN11duckdb_zstdL22ZSTD_findFrameSizeInfoEPKvmNS_13ZSTD_format_eE(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef %.015, i64 noundef %.019, i32 noundef 0)
  %i.c = load i64, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !75   ; 2 uses
  %3 = icmp ult i64 %i.c, -119
  %4 = icmp ne i64 %i.d, -2
  %or.cond.not = select i1 %3, i1 %4, i1 false
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 %i.c
  %i.f = sub i64 %.019, %i.c
  %i.g = add i64 %i.d, %.017
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %or.cond.not, label %bb.b, label %bb.d, !llvm.loop !76

bb.d:                                             ; preds = %bb.b, %bb.c
  %.2 = phi i64 [ -2, %bb.c ], [ %.017, %bb.b ]
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL25ZSTD_decompressMultiFrameEPNS_11ZSTD_DCtx_sEPvmPKvmS4_mPKNS_12ZSTD_DDict_sE:bb.a
  %.6.i = phi i64 [ -72, %bb.k ], [ -72, %bb.l ], [ %.4.ph.i, %.thread171.i ], [ %i.ck, %_ZN11duckdb_zstdL29ZSTD_frameHeaderSize_internalEPKvmNS_13ZSTD_format_eE.exit.i ], [ -22, %bb.ae ], [ -22, %bb.ag ], [ -20, %bb.ac ], [ %i.co, %bb.m ], [ %i.ei, %bb.al ], [ %i.ei, %bb.ai ] ; 5 uses
  %i.fb = call noundef i32 @_ZN11duckdb_zstd17ZSTD_getErrorCodeEm(i64 noundef %.6.i)
  %i.fc = icmp eq i32 %i.fb, 10
  %or.cond6 = and i1 %i.am, %i.fc
  br i1 %or.cond6, label %.thread, label %bb.am

bb.am:                                            ; preds = %_ZN11duckdb_zstdL20ZSTD_decompressFrameEPNS_11ZSTD_DCtx_sEPvmPPKvPm.exit
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd21ZSTD_decompressStreamEPNS_11ZSTD_DCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sE:bb.a
bb.ar:                                            ; preds = %_ZN11duckdb_zstdL33ZSTD_DCtx_updateOversizedDurationEPNS_11ZSTD_DCtx_sEmm.exit
  %i.fx = icmp ult i64 %.val4.i, %i.fq
  %i.fy = icmp ugt i64 %.sink.i, 127
  %or.cond = or i1 %i.fx, %i.fy
  br i1 %or.cond, label %.thread480, label %bb.ba

.thread480:                                       ; preds = %_ZN11duckdb_zstdL33ZSTD_DCtx_updateOversizedDurationEPNS_11ZSTD_DCtx_sEmm.exit, %bb.ar
end_hunk_2
