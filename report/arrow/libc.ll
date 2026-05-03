inline.NumInlined: 24
inline.NumDeleted: 7
begin_hunk_0_@llvm.va_end.p0
; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define hidden range(i64 0, 65) i64 @_mi_popcount_generic(i64 noundef %0) local_unnamed_addr #10 {
bb.a:
  %1 = icmp ult i64 %0, 2
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 range(i64 2, 0) %0)
  %.0 = select i1 %1, i64 %0, i64 %i.a
  ret i64 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
