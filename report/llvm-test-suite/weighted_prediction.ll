inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0_@test_wp_B_slice:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.r = icmp eq i32 %0, 1                        ; 5 uses
  %. = select i1 %i.r, i32 5, i32 6               ; 3 uses
  store i32 %., ptr @luma_log_weight_denom, align 4, !tbaa !4
  store i32 %., ptr @chroma_log_weight_denom, align 4, !tbaa !4
  %1 = select i1 %i.r, i32 16, i32 32             ; 2 uses
  store i32 %1, ptr @wp_luma_round, align 4, !tbaa !4
  store i32 %1, ptr @wp_chroma_round, align 4, !tbaa !4
  %i.s = shl nuw nsw i32 1, %.                    ; 31 uses
  %i.t = load ptr, ptr @wp_weight, align 8
  %i.u = load ptr, ptr @wp_offset, align 8
end_hunk_0
