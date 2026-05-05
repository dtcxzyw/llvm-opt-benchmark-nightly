inline.NumInlined: 789
inline.NumDeleted: 420
begin_hunk_0_@_ZN9benchmark8internal15BenchmarkRunner16RunMemoryManagerEl:bb.a
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !93
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
end_hunk_0
begin_hunk_1_@_ZN9benchmark8internal15BenchmarkRunner16RunMemoryManagerEl:bb.a
  %i.s = shl nuw nsw i64 %i.r, 5
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #26 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.b, ptr %.sroa.5.0..sroa_idx12, align 8, !tbaa !93
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.u, i64 24
end_hunk_1
