inline.NumInlined: 471
inline.NumDeleted: 148
begin_hunk_0_@_asn1obj2py:bb.a
  %.025 = phi ptr [ %i.m, %bb.f ], [ %i.a, %bb.c ] ; 4 uses
  %.024 = phi i32 [ %i.p, %bb.f ], [ %i.b, %bb.c ] ; 2 uses
  %i.w = icmp eq i32 %.024, 0
  %3 = trunc nuw i32 %2 to i1
  %or.cond = select i1 %i.w, i1 %3, i1 false
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
end_hunk_0
