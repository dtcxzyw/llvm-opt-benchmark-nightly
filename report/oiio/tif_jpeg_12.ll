begin_hunk_0
  br i1 %.not58.i.i, label %160, label %JPEGFixupTagsSubsamplingReadWord.exit31.thread.i

160:                                              ; preds = %148
  %161 = icmp ult i32 %149, 8
  br i1 %161, label %162, label %JPEGFixupTagsSubsamplingSkip.exit79.i.i

162:                                              ; preds = %160
  %narrow.i.i = sub nuw nsw i32 8, %149
end_hunk_0
begin_hunk_1

JPEGFixupTagsSubsamplingSkip.exit95.i.i:          ; preds = %.lr.ph.i.i
  %203 = getelementptr inbounds nuw i8, ptr %200, i64 1
  %204 = add nsw i32 %201, -1                     ; 2 uses
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %thread-pre-split187.i.i, label %._crit_edge.i96.i.i

end_hunk_1
begin_hunk_2

228:                                              ; preds = %227
  %229 = getelementptr inbounds nuw i8, ptr %223, i64 2
  %230 = add nsw i32 %222, -2
  br label %JPEGFixupTagsSubsamplingSkip.exit108.i.i

231:                                              ; preds = %227
end_hunk_2
