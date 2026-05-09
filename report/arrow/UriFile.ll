inline.NumInlined: 8
inline.NumDeleted: 4
begin_hunk_0_@uriWindowsFilenameToUriStringW:bb.a
.thread83.i:                                      ; preds = %.thread78.i
  %not..i = xor i1 %i.j, true
  %.mux.i = select i1 %not..i, i1 true, i1 %i.i
  %cond.fr.i = freeze i1 %.mux.i                  ; 2 uses
  %spec.select.i = select i1 %cond.fr.i, ptr @.str.5, ptr @.str.6
  %i.k = select i1 %cond.fr.i, i64 5, i64 8       ; 2 uses
  %2 = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1, ptr noundef nonnull align 4 dereferenceable(1) %spec.select.i, i64 %2, i1 false)
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.k
  br label %.thread87.split.split.us.i

end_hunk_0
