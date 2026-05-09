inline.NumInlined: 2138
inline.NumDeleted: 500
begin_hunk_0_@rb_gc_impl_start:bb.a
  br i1 %4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = select i1 %1, i32 107520, i32 41984
  %5 = select i1 %1, i32 74752, i32 9216
  %.1 = select i1 %2, i32 %spec.select, i32 %5    ; 2 uses
  %i.g = and i32 %.1, 99328
  %spec.select15 = select i1 %3, i32 %.1, i32 %i.g
end_hunk_0
