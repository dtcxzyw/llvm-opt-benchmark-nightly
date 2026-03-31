begin_hunk_0
  br i1 %i.p, label %bb.ac, label %bb.h

bb.h:                                             ; preds = %bb.g
  %5 = icmp ugt i64 %.034, 1
  br i1 %5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %.031 = phi i32 [ %i.o, %bb.h ], [ 1, %bb.f ]
end_hunk_0
begin_hunk_1
  %.034 = phi i32 [ %i.r, %bb.g ], [ 0, %bb.e ]   ; 2 uses
  %i.u = getelementptr i8, ptr %i.n, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !199  ; 3 uses
  %.not51 = icmp eq ptr %i.v, null
  %4 = icmp ugt i64 %.036, 1
  %or.cond = select i1 %.not51, i1 true, i1 %4
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.n, i64 24
end_hunk_1
begin_hunk_2
  br i1 %i.w, label %bb.ap, label %bb.k

bb.k:                                             ; preds = %bb.j
  %6 = icmp ugt i64 %.037, 1
  br i1 %6, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %.034 = phi i32 [ %i.v, %bb.k ], [ 1, %bb.i ]
end_hunk_2
