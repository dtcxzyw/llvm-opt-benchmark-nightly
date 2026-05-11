inline.NumInlined: 299
inline.NumDeleted: 139
begin_hunk_0_@_ZN4llvh14raw_fd_ostream6anchorEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %"class.std::error_code", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store i32 0, ptr %0, align 8, !tbaa !117
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #29
  store ptr %2, ptr %1, align 8, !tbaa !118
  %i.a = load atomic i8, ptr @_ZGVZN4llvh4outsEvE1S acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !138
end_hunk_0
