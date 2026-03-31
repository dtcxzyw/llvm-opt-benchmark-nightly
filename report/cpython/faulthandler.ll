begin_hunk_0
  br i1 %i.p, label %bb.ac, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not50 = icmp eq i64 %.034, 1
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.031 = phi i32 [ %i.o, %bb.h ], [ 1, %bb.f ]
end_hunk_0
begin_hunk_1
  %.034 = phi i32 [ %i.r, %bb.g ], [ 0, %bb.e ]   ; 2 uses
  %i.u = getelementptr i8, ptr %i.n, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !199  ; 3 uses
  %.not51 = icmp ne ptr %i.v, null
  %.not52 = icmp eq i64 %.036, 1
  %or.cond = select i1 %.not51, i1 %.not52, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.n, i64 24
end_hunk_1
begin_hunk_2
  br i1 %i.w, label %bb.ap, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not54 = icmp eq i64 %.037, 1
  br i1 %.not54, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.034 = phi i32 [ %i.v, %bb.k ], [ 1, %bb.i ]
end_hunk_2
