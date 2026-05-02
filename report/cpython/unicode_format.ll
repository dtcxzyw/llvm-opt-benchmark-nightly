inline.NumInlined: 83
inline.NumDeleted: 26
begin_hunk_0_@unicode_format_getnextarg:bb.a
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = trunc nuw i32 %1 to i1                  ; 2 uses
  %i.f = icmp sgt i64 %i.d, -1                    ; 2 uses
  %or.cond = or i1 %i.f, %.not
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
end_hunk_0
