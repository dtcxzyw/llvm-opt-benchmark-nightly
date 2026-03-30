begin_hunk_0
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store i32 %i.dn, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store <4 x i32> splat (i32 -1), ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  br label %insert_prefix_instructions.exit.i
end_hunk_0
