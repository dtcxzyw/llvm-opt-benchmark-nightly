begin_hunk_0
  br i1 %.not58.i.i, label %189, label %JPEGFixupTagsSubsamplingReadWord.exit31.thread.i

189:                                              ; preds = %177
  %190 = icmp ult i32 %178, 8
  br i1 %190, label %191, label %JPEGFixupTagsSubsamplingSkip.exit79.i.i

191:                                              ; preds = %189
  %narrow.i.i = sub nuw nsw i32 8, %178
end_hunk_0
begin_hunk_1

JPEGFixupTagsSubsamplingSkip.exit95.i.i:          ; preds = %.lr.ph.i.i
  %232 = getelementptr inbounds nuw i8, ptr %229, i64 1
  %233 = add nsw i32 %230, -1                     ; 2 uses
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %thread-pre-split187.i.i, label %._crit_edge.i96.i.i

end_hunk_1
begin_hunk_2

257:                                              ; preds = %256
  %258 = getelementptr inbounds nuw i8, ptr %252, i64 2
  %259 = add nsw i32 %251, -2
  br label %JPEGFixupTagsSubsamplingSkip.exit108.i.i

260:                                              ; preds = %256
end_hunk_2
