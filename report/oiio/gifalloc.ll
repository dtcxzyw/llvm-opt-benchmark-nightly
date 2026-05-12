inline.NumInlined: 11
begin_hunk_0_@GifUnionColorMap:bb.a

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %i.c to i64
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 3) #14 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !9
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.e, label %bb.f
end_hunk_0
begin_hunk_1_@GifUnionColorMap:bb.a
  br i1 %.not90, label %.thread99, label %bb.q

.thread99:                                        ; preds = %bb.p
  %3 = load ptr, ptr %i.k, align 8, !tbaa !9
  tail call void @free(ptr noundef %3) #15
  tail call void @free(ptr noundef nonnull %i.g) #15
  br label %GifMakeMapObject.exit.thread

end_hunk_1
