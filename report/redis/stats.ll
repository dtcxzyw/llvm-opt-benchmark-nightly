inline.NumInlined: 411
inline.NumDeleted: 33
begin_hunk_0_@je_stats_print:bb.a
  store i8 0, ptr %i.j, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.k, align 1, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  store i32 0, ptr %i.l, align 8, !tbaa !24
  %spec.select.i.i = icmp samesign ult i32 %.246, 2
  br i1 %spec.select.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %select.unfold
  call void (ptr, ptr, ...) @emitter_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.27)
  store i32 1, ptr %i.l, align 8, !tbaa !24
  store i8 0, ptr %i.j, align 4, !tbaa !22
  br label %emitter_begin.exit

end_hunk_0
