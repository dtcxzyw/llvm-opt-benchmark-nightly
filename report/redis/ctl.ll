inline.NumInlined: 852
inline.NumDeleted: 45
begin_hunk_0_@arena_i_destroy_ctl:bb.a
; Function Attrs: nounwind uwtable
define internal range(i32 0, 23) i32 @arena_i_dss_ctl(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4, ptr noundef readonly captures(address_is_null) %5, i64 noundef %6) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !42
  %i.b = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ctl_mtx, i64 64)) #15
end_hunk_0
begin_hunk_1_@arena_i_dss_ctl:bb.a
  br i1 %.not58, label %bb.f, label %.thread66

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %5, align 8, !tbaa !42     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11   ; 5 uses
  %i.k = icmp ugt i64 %i.j, 4294967295
end_hunk_1
