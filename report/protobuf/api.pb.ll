inline.NumInlined: 660
inline.NumDeleted: 220
begin_hunk_0_@_ZN6google8protobuf6MethodC2EPNS0_5ArenaE:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.ptr.i, i8 0, i64 20, i1 false)
  store i32 -16, ptr %i.c, align 4, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.d, align 8, !tbaa !19
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %2, align 8, !tbaa !19
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %3, align 8, !tbaa !19
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %4, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.e, align 8
  ret void
end_hunk_0
