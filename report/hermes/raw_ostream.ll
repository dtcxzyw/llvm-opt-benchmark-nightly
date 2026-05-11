inline.NumInlined: 299
inline.NumDeleted: 139
begin_hunk_0_@_ZN4llvh14raw_fd_ostream6anchorEv:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %"class.std::error_code", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  %i.a = load atomic i8, ptr @_ZGVZN4llvh4outsEvE1S acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !138
end_hunk_0
