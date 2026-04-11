inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0_@keyMetaOnAof:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 56
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 1, %.preheader ] ; 2 uses
  %.130 = phi ptr [ %.332, %bb.j ], [ %spec.select, %.preheader ] ; 3 uses
  %.028 = phi i32 [ %i.ab, %bb.j ], [ %i.c, %.preheader ] ; 2 uses
  %i.m = and i32 %.028, 1
  %.not37 = icmp eq i32 %i.m, 0
  br i1 %.not37, label %bb.j, label %bb.c
end_hunk_0
begin_hunk_1_@keyMetaTransition:bb.a
  %i.f = and i64 %i.e, 4294967296
  %.not29 = icmp eq i64 %i.f, 0
  %.023.v = select i1 %.not29, i64 -8, i64 -16
  %i.g = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.g, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
end_hunk_1
begin_hunk_2_@keyMetaTransition:bb.a
  %sum.shift30 = lshr i64 %i.e, 33
  %i.h = trunc nuw nsw i64 %sum.shift30 to i32
  %i.i = and i32 %i.h, 127
  %.023 = getelementptr inbounds i8, ptr %1, i64 %.023.v
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
end_hunk_2
