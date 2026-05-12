inline.NumInlined: 2176
inline.NumDeleted: 448
begin_hunk_0_@_ZN7simdutf12match_systemENS_10endiannessE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7simdutf9to_stringB5cxx11ENS_13encoding_typeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  switch i32 %1, label %._crit_edge.i.i16 [
    i32 2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
    i32 4, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i2
end_hunk_0
begin_hunk_1_@_ZN7simdutf9to_stringB5cxx11ENS_13encoding_typeE:bb.a
  br label %bb.b

._crit_edge.i.i10:                                ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  store i32 944133205, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.n, align 8
end_hunk_1
begin_hunk_2_@_ZN7simdutf9to_stringB5cxx11ENS_13encoding_typeE:bb.a
  br label %bb.b

._crit_edge.i.i13:                                ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.5, i64 7, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.p, align 8
end_hunk_2
begin_hunk_3_@_ZN7simdutf9to_stringB5cxx11ENS_13encoding_typeE:bb.a
  br label %bb.b

._crit_edge.i.i16:                                ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.6, i64 5, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.r, align 8
end_hunk_3
