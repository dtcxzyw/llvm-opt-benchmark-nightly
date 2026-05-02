inline.NumInlined: 24
inline.NumDeleted: 13
begin_hunk_0_@_Py_strhex_impl:bb.a
  %.0123.in = phi ptr [ %i.p, %bb.l ], [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  %.0123 = load i8, ptr %.0123.in, align 1, !tbaa !11 ; 3 uses
  %i.r = icmp sgt i8 %.0123, -1
  %5 = trunc nuw i32 %4 to i1
  %or.cond = select i1 %i.r, i1 true, i1 %5
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_PyUnicode_DATA.exit.i
end_hunk_0
