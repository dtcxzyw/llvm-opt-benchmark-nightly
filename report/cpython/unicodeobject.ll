inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@_PyUnicode_ResizeCompact:bb.a
  %i.q = and i32 %i.p, 7
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = and i32 %.val.i, 64
  %.not40 = icmp eq i32 %i.s, 0
  %..a = select i1 %.not40, i64 56, i64 40        ; 3 uses
  %2 = xor i64 %..a, 9223372036854775807
  %i.t = udiv i64 %2, %i.r
  %.not41 = icmp slt i64 %1, %i.t
  br i1 %.not41, label %bb.j, label %bb.i

end_hunk_0
begin_hunk_1_@_PyUnicode_ResizeCompact:bb.a
  br label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.h
  %i.v = add nsw i64 %1, 1
  %i.w = mul i64 %i.v, %i.r
  %i.x = add i64 %i.w, %..a
  %i.y = and i32 %.val.i, 96
  %.not.not.i = icmp eq i32 %i.y, 96
  br i1 %.not.not.i, label %_PyUnicode_HAS_UTF8_MEMORY.exit.thread, label %bb.k
end_hunk_1
begin_hunk_2_@_PyUnicode_ResizeCompact:bb.a
  br i1 %.not.i7.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %..a
  br label %_PyUnicode_HAS_UTF8_MEMORY.exit

bb.n:                                             ; preds = %bb.l
end_hunk_2
begin_hunk_3_@backslashreplace:bb.a
  %.06075.us79 = phi i64 [ %i.n, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %i.k = getelementptr [2 x i8], ptr %.0.i, i64 %.05876.us78
  %i.l = load i16, ptr %i.k, align 2, !tbaa !208
  %i.m = icmp ult i16 %i.l, 256
  %.054.us83.a = select i1 %i.m, i64 4, i64 6     ; 2 uses
  %5 = xor i64 %.054.us83.a, 9223372036854775807
  %.not.us84 = icmp sgt i64 %.06075.us79, %5
  br i1 %.not.us84, label %.thread, label %bb.d

bb.d:                                             ; preds = %PyUnicode_READ.exit.us80
  %i.n = add i64 %.054.us83.a, %.06075.us79       ; 2 uses
  %i.o = add i64 %.05876.us78, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %4
  br i1 %exitcond.not, label %._crit_edge, label %PyUnicode_READ.exit.us80, !llvm.loop !772
end_hunk_3
