inline.NumInlined: 231
inline.NumDeleted: 51
begin_hunk_0_@_ZN11duckdb_zstdL25ZSTD_decompressMultiFrameEPNS_11ZSTD_DCtx_sEPvmPKvmS4_mPKNS_12ZSTD_DDict_sE:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 29920
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10296 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 30200
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 29992
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 30232
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 29944 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstdL25ZSTD_decompressMultiFrameEPNS_11ZSTD_DCtx_sEPvmPKvmS4_mPKNS_12ZSTD_DDict_sE:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 56
  %14 = insertelement <2 x ptr> poison, ptr %10, i64 0
  %15 = insertelement <2 x ptr> %14, ptr %11, i64 1
  %16 = insertelement <2 x ptr> poison, ptr %12, i64 0
  %17 = insertelement <2 x ptr> %16, ptr %i.m, i64 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL25ZSTD_decompressMultiFrameEPNS_11ZSTD_DCtx_sEPvmPKvmS4_mPKNS_12ZSTD_DDict_sE:bb.a
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %i.o, align 8, !tbaa !60
  store i32 1, ptr %i.p, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) @_ZN11duckdb_zstdL13repStartValueE, i64 12, i1 false)
  store <2 x ptr> %15, ptr %0, align 8, !tbaa !52
  store <2 x ptr> %17, ptr %13, align 8, !tbaa !52
  call void @_ZN11duckdb_zstd24ZSTD_copyDDictParametersEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE(ptr noundef nonnull %0, ptr noundef nonnull %7)
  br label %bb.k

end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd21ZSTD_decompressStreamEPNS_11ZSTD_DCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sE:bb.a
  %i.bb = getelementptr i8, ptr %0, i64 29996     ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 10296 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 29992 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 30176
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 26684
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 95944
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 29936 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 30264
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstd21ZSTD_decompressStreamEPNS_11ZSTD_DCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sE:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 30128
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30136
  %.sroa.2436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30144 ; 2 uses
  %8 = insertelement <2 x ptr> poison, ptr %4, i64 0
  %9 = insertelement <2 x ptr> %8, ptr %5, i64 1
  %10 = insertelement <2 x ptr> poison, ptr %6, i64 0
  %11 = insertelement <2 x ptr> %10, ptr %i.be, i64 1
  br label %.thread490.outer

.thread490.outer:                                 ; preds = %.thread490.outer.backedge, %_ZN11duckdb_zstdL19ZSTD_checkOutBufferEPKNS_11ZSTD_DCtx_sEPKNS_16ZSTD_outBuffer_sE.exit
end_hunk_4
begin_hunk_5_@_ZN11duckdb_zstd21ZSTD_decompressStreamEPNS_11ZSTD_DCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sE:bb.a
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %i.bf, align 8, !tbaa !60
  store i32 1, ptr %i.bg, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bh, ptr noundef nonnull align 4 dereferenceable(12) @_ZN11duckdb_zstdL13repStartValueE, i64 12, i1 false)
  store <2 x ptr> %9, ptr %0, align 8, !tbaa !52
  store <2 x ptr> %11, ptr %7, align 8, !tbaa !52
  br i1 %.not.i411479, label %_ZN11duckdb_zstd31ZSTD_decompressBegin_usingDDictEPNS_11ZSTD_DCtx_sEPKNS_12ZSTD_DDict_sE.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN11duckdb_zstd20ZSTD_decompressBeginEPNS_11ZSTD_DCtx_sE.exit.i
end_hunk_5
