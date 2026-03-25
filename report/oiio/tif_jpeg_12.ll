begin_hunk_0
  br i1 %.not58.i.i, label %183, label %JPEGFixupTagsSubsamplingReadWord.exit31.thread.i

183:                                              ; preds = %171
  %184 = icmp ult i32 %172, 8
  br i1 %184, label %185, label %JPEGFixupTagsSubsamplingSkip.exit79.i.i

185:                                              ; preds = %183
  %narrow.i.i = sub nuw nsw i32 8, %172
end_hunk_0
begin_hunk_1

JPEGFixupTagsSubsamplingSkip.exit95.i.i:          ; preds = %.lr.ph.i.i
  %226 = getelementptr inbounds nuw i8, ptr %223, i64 1
  %227 = add nsw i32 %224, -1                     ; 2 uses
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %thread-pre-split187.i.i, label %._crit_edge.i96.i.i

end_hunk_1
begin_hunk_2

250:                                              ; preds = %249
  %251 = getelementptr inbounds nuw i8, ptr %246, i64 2
  %252 = add nsw i32 %245, -2
  br label %JPEGFixupTagsSubsamplingSkip.exit108.i.i

253:                                              ; preds = %249
end_hunk_2
