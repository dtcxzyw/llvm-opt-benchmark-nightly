inline.NumInlined: 520
inline.NumDeleted: 74
begin_hunk_0_@je_posix_memalign:bb.a
  br label %aligned_usize_get.exit.i17.thread

aligned_usize_get.exit.i17.thread:                ; preds = %bb.y, %bb.v, %sz_s2u_compute.exit29.i, %bb.t, %compute_size_with_overflow.exit, %imalloc_no_sample.exit, %aligned_usize_get.exit.i17, %bb.ad
  %.0.i.ph = phi i64 [ 12, %imalloc_no_sample.exit ], [ 12, %aligned_usize_get.exit.i17 ], [ 22, %compute_size_with_overflow.exit ], [ 12, %bb.v ], [ 0, %bb.ad ], [ 12, %bb.t ], [ 12, %sz_s2u_compute.exit29.i ], [ 12, %bb.y ]
  %.0.i.ph.a = phi i32 [ 12, %imalloc_no_sample.exit ], [ 12, %aligned_usize_get.exit.i17 ], [ 22, %compute_size_with_overflow.exit ], [ 12, %bb.v ], [ 0, %bb.ad ], [ 12, %bb.t ], [ 12, %sz_s2u_compute.exit29.i ], [ 12, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.er = ptrtoint ptr %0 to i64
  store i64 %i.er, ptr %i.a, align 16, !tbaa !27
end_hunk_0
begin_hunk_1_@je_posix_memalign:bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %i.et, align 16, !tbaa !27
  %i.eu = load ptr, ptr %0, align 8, !tbaa !97
  call void @je_hook_invoke_alloc(i32 noundef 1, ptr noundef %i.eu, i64 noundef %.0.i.ph, ptr noundef nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %imalloc.exit

end_hunk_1
