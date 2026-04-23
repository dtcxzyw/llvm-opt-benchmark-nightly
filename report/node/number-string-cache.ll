inline.NumInlined: 76
inline.NumDeleted: 45
begin_hunk_0_@_ZN2v88internal14SmiStringCache19GetUsedEntriesCountEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %1 = lshr i64 %i.b, 32
  %2 = trunc nuw i64 %1 to i32                    ; 3 uses
  %3 = sdiv i32 %2, 2                             ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %.off = add i32 %2, 1
  %.not12 = icmp ult i32 %.off, 3
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %xtraiter = and i64 %4, 1
  %i.d = and i32 %2, -2
end_hunk_0
