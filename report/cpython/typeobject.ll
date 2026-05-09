inline.NumInlined: 1348
inline.NumDeleted: 262
begin_hunk_0_@maybe_call_special_one_arg:bb.a
  store ptr %0, ptr %i.a, align 16, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.k, align 8, !tbaa !115
  %.not.i = icmp eq i32 %i.d, 0                   ; 3 uses
  %.07.idx.i.sroa.sel = select i1 %.not.i, ptr %i.k, ptr %i.a ; 2 uses
  %.0.i = select i1 %.not.i, i64 -9223372036854775807, i64 2
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !126 ; 2 uses
  %i.m = getelementptr i8, ptr %.val.i.i.i, i64 168
end_hunk_0
begin_hunk_1_@maybe_call_special_one_arg:bb.a
  br i1 %i.r, label %_PyVectorcall_FunctionInline.exit.thread.i.i, label %bb.e

_PyVectorcall_FunctionInline.exit.thread.i.i:     ; preds = %_PyVectorcall_FunctionInline.exit.i.i, %bb.d
  %5 = select i1 %.not.i, i64 1, i64 2
  %i.s = call ptr @_PyObject_MakeTpCall(ptr noundef %i.c, ptr noundef nonnull %i.g, ptr noundef nonnull %.07.idx.i.sroa.sel, i64 noundef %5, ptr noundef null) #24
  br label %vectorcall_unbound.exit

end_hunk_1
