begin_hunk_0
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i51 = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i51, label %.noexc56, label %bb.h

end_hunk_0
