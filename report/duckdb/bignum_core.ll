inline.NumInlined: 59
inline.NumDeleted: 18
begin_hunk_0_@_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_:bb.a
  br label %bb.b

.lr.ph.i.preheader:                               ; preds = %bb.b
  %.lcssa49 = phi ptr [ %i.bk, %bb.b ]            ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.lcssa49, i64 %5
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_:bb.a
  %.020.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %.01819.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ag, %.lr.ph.i ] ; 7 uses
  %i.i = shl i64 %.01819.i, 3
  %scevgep52.a = getelementptr i8, ptr %i.bk, i64 %i.i
  %i.j = load i64, ptr %scevgep52.a, align 8, !tbaa !9 ; 2 uses
  %i.k = icmp ult i64 %i.j, %.020.i
  %i.l = zext i1 %i.k to i64
end_hunk_1
begin_hunk_2_@_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_:bb.a
  %scevgep60 = getelementptr i8, ptr %scevgep59.a, i64 -8
  store i64 %i.s, ptr %scevgep60, align 8, !tbaa !9
  %i.u = shl i64 %.01819.i, 3
  %scevgep50 = getelementptr i8, ptr %i.bk, i64 %i.u
  %scevgep51 = getelementptr i8, ptr %scevgep50, i64 8
  %i.v = load i64, ptr %scevgep51, align 8, !tbaa !9 ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.r
end_hunk_2
begin_hunk_3_@_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_:bb.a
  %i.bh = mul i64 %i.bg, %6
  %i.bi = tail call noundef i64 @_Z20mbedtls_mpi_core_mlaPmmPKmmm(ptr noundef nonnull %.035, i64 noundef %i.e, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %i.bc) ; 0 uses
  %i.bj = tail call noundef i64 @_Z20mbedtls_mpi_core_mlaPmmPKmmm(ptr noundef nonnull %.035, i64 noundef %i.e, ptr noundef %4, i64 noundef %5, i64 noundef %i.bh) ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 4 uses
  %i.bl = add nuw i64 %.03234, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %5, %i.bl
  br i1 %exitcond.not, label %.lr.ph.i.preheader, label %bb.b, !llvm.loop !40
end_hunk_3
