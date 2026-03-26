begin_hunk_0
  br i1 %.not58.i.i, label %bb.av, label %JPEGFixupTagsSubsamplingReadWord.exit31.thread.i

bb.av:                                            ; preds = %bb.au
  %1 = add nsw i32 %i.ea, -1
  %.not.i77.i.i = icmp ult i32 %1, 7
  br i1 %.not.i77.i.i, label %bb.aw, label %JPEGFixupTagsSubsamplingSkip.exit79.i.i

bb.aw:                                            ; preds = %bb.av
end_hunk_0
begin_hunk_1

JPEGFixupTagsSubsamplingSkip.exit95.i.i:          ; preds = %.lr.ph.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 1
  %i.ft = add i32 %i.fr, -1                       ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %thread-pre-split187.i.i, label %._crit_edge.i96.i.i

end_hunk_1
begin_hunk_2

bb.bj:                                            ; preds = %bb.bi
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 2
  %i.gn = add i32 %i.gi, -2
  br label %JPEGFixupTagsSubsamplingSkip.exit108.i.i

bb.bk:                                            ; preds = %bb.bi
end_hunk_2
