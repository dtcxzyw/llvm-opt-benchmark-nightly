inline.NumInlined: 440
inline.NumDeleted: 99
begin_hunk_0_@rb_immutable_obj_clone:bb.a
; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_get_freeze_opt(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 4, ptr %i.a, align 8, !tbaa !11
  %i.b = load i64, ptr @rb_get_freeze_opt.keyword_ids, align 8, !tbaa !11
end_hunk_0
begin_hunk_1_@rb_get_freeze_opt:bb.a

bb.d:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.j = icmp slt i32 %0, 0
  br i1 %i.j, label %.thread14, label %rb_scan_args_set.exit.obj_freeze_opt.exit_crit_edge

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i64 @rb_hash_dup(i64 noundef %i.h) #21 ; 2 uses
end_hunk_1
begin_hunk_2_@rb_get_freeze_opt:bb.a

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.n = icmp eq i64 %i.k, 4
  br i1 %i.n, label %rb_scan_args_set.exit.obj_freeze_opt.exit_crit_edge, label %bb.f

rb_scan_args_set.exit.obj_freeze_opt.exit_crit_edge: ; preds = %bb.d, %rb_scan_args_set.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %obj_freeze_opt.exit

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.o = call i32 @rb_get_kwargs(i64 noundef %i.k, ptr noundef nonnull @rb_get_freeze_opt.keyword_ids, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a) #21 ; 0 uses
end_hunk_2
begin_hunk_3_@rb_get_freeze_opt:bb.a
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.138, i64 noundef %i.s) #22
  unreachable

obj_freeze_opt.exit:                              ; preds = %rb_scan_args_set.exit.obj_freeze_opt.exit_crit_edge, %bb.f, %bb.f, %bb.f, %bb.f
  %2 = phi i64 [ %.pre, %rb_scan_args_set.exit.obj_freeze_opt.exit_crit_edge ], [ %i.p, %bb.f ], [ %i.p, %bb.f ], [ %i.p, %bb.f ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i64 %2
}
end_hunk_3
