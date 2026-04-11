inline.NumInlined: 579
inline.NumDeleted: 127
begin_hunk_0_@datetime_datetime_fromisoformat:bb.a
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink.i = phi i64 [ %switch.select118.i, %bb.ae ], [ 1, %bb.ad ] ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ci, i64 %.sink.i
  %i.cn = add nsw i64 %.1.i.i, %.sink.i
  %i.co = sub nsw i64 %i.cg, %i.cn                ; 2 uses
end_hunk_0
