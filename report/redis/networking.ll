inline.NumInlined: 302
inline.NumDeleted: 51
begin_hunk_0_@clientSetinfoCommand:bb.a

bb.n:                                             ; preds = %sdslen.exit.thread, %bb.m
  %i.ai = load ptr, ptr @shared, align 8, !tbaa !336
  tail call void @addReply(ptr noundef %0, ptr noundef %i.ai)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %validateClientAttr.exit, %bb.c
end_hunk_0
