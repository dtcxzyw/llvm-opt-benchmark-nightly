begin_hunk_0
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.8.0.copyload.i = load i32, ptr %.sroa.8.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 20
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %154 = icmp sgt i32 %.sroa.9.0.copyload.i, 1979
  %155 = icmp sgt i32 %.sroa.9.0.copyload.i, 79
  %..i = select i1 %155, i32 -80, i32 20
  %spec.select.i = select i1 %154, i32 -1980, i32 %..i
  %156 = add nsw i32 %spec.select.i, %.sroa.9.0.copyload.i
  br label %157

157:                                              ; preds = %mz_zip_time_t_to_tm.exit.i, %.thread.i
end_hunk_0
begin_hunk_1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %5 = icmp sgt i32 %.sroa.9.0.copyload, 1979
  %6 = icmp sgt i32 %.sroa.9.0.copyload, 79
  %. = select i1 %6, i32 -80, i32 20
  %spec.select = select i1 %5, i32 -1980, i32 %.
  %7 = add nsw i32 %spec.select, %.sroa.9.0.copyload
  br label %8

8:                                                ; preds = %mz_zip_time_t_to_tm.exit, %.thread
end_hunk_1
