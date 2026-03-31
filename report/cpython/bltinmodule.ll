begin_hunk_0
  %.142 = phi i64 [ %i.r, %bb.h ], [ %.041, %bb.g ]
  %i.s = getelementptr i8, ptr %i.k, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31   ; 4 uses
  %.not61 = icmp eq ptr %i.t, null
  %4 = icmp ugt i64 %.142, 1
  %or.cond = select i1 %.not61, i1 true, i1 %4
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %i.k, i64 32
end_hunk_0
begin_hunk_1
  %.142 = phi i64 [ %i.u, %bb.h ], [ %.041, %bb.g ]
  %i.v = getelementptr i8, ptr %i.l, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 4 uses
  %.not61 = icmp eq ptr %i.w, null
  %4 = icmp ugt i64 %.142, 1
  %or.cond = select i1 %.not61, i1 true, i1 %4
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %i.l, i64 32
end_hunk_1
begin_hunk_2
  br i1 %.not58, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = icmp ugt i64 %.141, 1
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.034 = phi ptr [ %i.m, %bb.j ], [ @_Py_NoneStruct, %bb.i ]
end_hunk_2
