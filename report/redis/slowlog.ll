begin_hunk_0
  %i.b = alloca i64, align 8                      ; 11 uses
  %1 = alloca %struct.listIter, align 8           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i32, ptr %i.c, align 8, !tbaa !89   ; 3 uses
  %2 = icmp eq i32 %i.d, 2
  br i1 %2, label %bb.b, label %3

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_0
begin_hunk_1
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.z) #9
  br label %bb.z

3:                                                ; preds = %bb.a
  %4 = and i32 %i.d, -2
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %..thread49_crit_edge, label %bb.y

..thread49_crit_edge:                             ; preds = %3
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !90 ; 2 uses
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %.pre, i64 8
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.z

bb.y:                                             ; preds = %3, %.thread49
  tail call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0) #9
  br label %bb.z

end_hunk_2
