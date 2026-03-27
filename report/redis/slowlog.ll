begin_hunk_0
  %i.b = alloca i64, align 8                      ; 11 uses
  %1 = alloca %struct.listIter, align 8           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  switch i32 %i.d, label %bb.y [
    i32 2, label %bb.b
    i32 3, label %..thread49_crit_edge
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_0
begin_hunk_1
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.z) #9
  br label %bb.z

..thread49_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.z

bb.y:                                             ; preds = %bb.a, %.thread49
  tail call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0) #9
  br label %bb.z

end_hunk_2
