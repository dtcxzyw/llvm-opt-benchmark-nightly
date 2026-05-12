inline.NumInlined: 280
inline.NumDeleted: 127
begin_hunk_0_@_RNvYINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader24ParquetRecordBatchStreamNtNtB5_5store19ParquetObjectReaderENtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream9StreamExt15poll_next_unpinCsfY7SmN0bPrO_14deltalake_test:bb.a
  %i.i = alloca [16 x i8], align 16               ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %i.k = alloca [96 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 5 uses
  %i.m = alloca [96 x i8], align 8                ; 5 uses
  %.sroa.599.i.i = alloca [24 x i8], align 8      ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.720.i.i = alloca [32 x i8], align 8      ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 5 uses
  %i.p = alloca [96 x i8], align 8                ; 12 uses
  %.sroa.5.i = alloca [32 x i8], align 8          ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.9.i = alloca [32 x i8], align 8          ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
end_hunk_0
begin_hunk_1_@_RNvYINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader24ParquetRecordBatchStreamNtNtB5_5store19ParquetObjectReaderENtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream9StreamExt15poll_next_unpinCsfY7SmN0bPrO_14deltalake_test:bb.a
  br label %bb.ad

bb.g:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.o, align 8, !range !750, !noalias !748, !noundef !3 ; 6 uses
  %i.z = icmp eq i64 %i.y, -9223372036854775805
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.720.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.560.0..sroa_idx.i.i, i64 32, i1 false), !noalias !748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !748
end_hunk_1
begin_hunk_2_@_RNvYINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader24ParquetRecordBatchStreamNtNtB5_5store19ParquetObjectReaderENtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream9StreamExt15poll_next_unpinCsfY7SmN0bPrO_14deltalake_test:bb.a
bb.s:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !748
  store i64 %i.y, ptr %i.l, align 8, !noalias !748
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.720.i.i, i64 32, i1 false), !noalias !748
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.k, ptr noundef nonnull align 8 dereferenceable(96) %i.p, i64 96, i1 false), !noalias !748
end_hunk_2
begin_hunk_3_@_RNvYINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader24ParquetRecordBatchStreamNtNtB5_5store19ParquetObjectReaderENtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream9StreamExt15poll_next_unpinCsfY7SmN0bPrO_14deltalake_test:bb.a
bb.y:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull align 8 dereferenceable(96) %i.k, i64 96, i1 false), !noalias !745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.720.i.i, i64 32, i1 false), !noalias !742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !748
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %bb.y
  %.sroa.0.2.i = phi i64 [ %storemerge.i.i, %bb.ac ], [ %i.y, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !748
  br label %_RNvMs9_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtB5_24ParquetRecordBatchStreamNtNtB5_5store19ParquetObjectReaderE15poll_next_innerCsfY7SmN0bPrO_14deltalake_test.exit.i

end_hunk_3
begin_hunk_4_@_RNvYINtNtNtCs4tdlwR1I4n2_7parquet5arrow12async_reader24ParquetRecordBatchStreamNtNtB5_5store19ParquetObjectReaderENtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream9StreamExt15poll_next_unpinCsfY7SmN0bPrO_14deltalake_test:bb.a
bb.bl:                                            ; preds = %bb.bg
  store i64 3, ptr %i.r, align 8, !alias.scope !737, !noalias !782
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i, i64 32, i1 false), !noalias !781
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !734, !noalias !781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !742
  br label %_RNvXs8_NtNtCs4tdlwR1I4n2_7parquet5arrow12async_readerINtB5_24ParquetRecordBatchStreamNtNtB5_5store19ParquetObjectReaderENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCsfY7SmN0bPrO_14deltalake_test.exit
end_hunk_4
