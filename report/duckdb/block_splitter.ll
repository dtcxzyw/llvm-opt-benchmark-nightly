inline.NumInlined: 26
inline.NumDeleted: 26
begin_hunk_0_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  %i.es = sub nuw nsw i64 %i.eq, %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 1024
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 1032
  store double 0x7FF0000000000000, ptr %i.eu, align 8, !tbaa !30
  %i.ev = add i64 %.lcssa903, -69
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.ew = mul nuw nsw i64 %., 1040
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  %.020.i.i = phi i64 [ 0, %_ZL26InitialEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralE.exit.i ], [ %i.hh, %_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i ] ; 2 uses
  %.01719.i.i = phi i32 [ 7, %_ZL26InitialEntropyCodesLiteralPKhmmmPN13duckdb_brotli16HistogramLiteralE.exit.i ], [ %i.ey, %_ZN13duckdb_brotliL28HistogramAddHistogramLiteralEPNS_16HistogramLiteralEPKS0_.exit.i.i ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.em, i8 0, i64 1024, i1 false)
  %i.ey = mul i32 %.01719.i.i, 16807              ; 2 uses
  %i.ez = zext i32 %i.ey to i64
  %i.fa = urem i64 %i.ez, %i.ev
end_hunk_1
begin_hunk_2_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  %i.atw = add nuw nsw i64 %i.atv, %spec.select.i68 ; 2 uses
  %i.atx = urem i64 %i.atw, %spec.select.i68
  %i.aty = sub nuw nsw i64 %i.atw, %i.atx
  %10 = getelementptr inbounds nuw i8, ptr %i.ats, i64 2816
  %i.atz = getelementptr inbounds nuw i8, ptr %i.ats, i64 2824
  store double 0x7FF0000000000000, ptr %i.atz, align 8, !tbaa !116
  %i.aua = add i64 %2, -39
  %umax.i.i79 = tail call i64 @llvm.umax.i64(i64 %i.aty, i64 1)
  %i.aub = mul nuw nsw i64 %spec.select.i68, 2832
end_hunk_2
begin_hunk_3_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  %i.aue = zext i32 %i.aud to i64
  %i.auf = urem i64 %i.aue, %i.aua
  %i.aug = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %i.auf ; 40 uses
  store i64 40, ptr %10, align 8, !tbaa !120
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 2
  %i.aui = load i16, ptr %i.aug, align 2, !tbaa !73
  %i.auj = zext i16 %i.aui to i64
end_hunk_3
begin_hunk_4_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  br i1 %exitcond21.not.i.i84, label %_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i, label %vector.memcheck766, !llvm.loop !129

_ZL25RefineEntropyCodesCommandPKtmmmPN13duckdb_brotli16HistogramCommandES3_.exit.i: ; preds = %_ZN13duckdb_brotliL28HistogramAddHistogramCommandEPNS_16HistogramCommandEPKS0_.exit.i.i
  %i.bfe = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %2) ; 23 uses
  %i.bff = add nuw nsw i64 %spec.select.i68, 7
  %i.bfg = lshr i64 %i.bff, 3
end_hunk_4
begin_hunk_5_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  %i.cnm = add nuw nsw i64 %i.cnl, %spec.select   ; 2 uses
  %i.cnn = urem i64 %i.cnm, %spec.select
  %i.cno = sub nuw nsw i64 %i.cnm, %i.cnn
  %11 = getelementptr inbounds nuw i8, ptr %i.cni, i64 2176
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.cni, i64 2184
  store double 0x7FF0000000000000, ptr %i.cnp, align 8, !tbaa !168
  %i.cnq = add i64 %.1, -39
  %umax.i.i252 = tail call i64 @llvm.umax.i64(i64 %i.cno, i64 1)
  %i.cnr = mul nuw nsw i64 %spec.select, 2192
end_hunk_5
begin_hunk_6_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  %i.cnu = zext i32 %i.cnt to i64
  %i.cnv = urem i64 %i.cnu, %i.cnq
  %i.cnw = getelementptr inbounds nuw [2 x i8], ptr %i.can, i64 %i.cnv ; 40 uses
  store i64 40, ptr %11, align 8, !tbaa !172
  %i.cnx = getelementptr inbounds nuw i8, ptr %i.cnw, i64 2
  %i.cny = load i16, ptr %i.cnw, align 2, !tbaa !73
  %i.cnz = zext i16 %i.cny to i64
end_hunk_6
begin_hunk_7_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a
  br i1 %exitcond21.not.i.i257, label %_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i, label %vector.memcheck821, !llvm.loop !181

_ZL26RefineEntropyCodesDistancePKtmmmPN13duckdb_brotli17HistogramDistanceES3_.exit.i: ; preds = %_ZN13duckdb_brotliL29HistogramAddHistogramDistanceEPNS_17HistogramDistanceEPKS0_.exit.i.i
  %i.cyu = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %.1) ; 23 uses
  %i.cyv = add nuw nsw i64 %spec.select, 7
  %i.cyw = lshr i64 %i.cyv, 3
end_hunk_7
