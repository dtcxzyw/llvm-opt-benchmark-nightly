inline.NumInlined: 62
inline.NumDeleted: 6
begin_hunk_0_@scan_args_hash:rb_scan_args_n_opt.exit
rb_scan_args_n_opt.exit:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.a, label %bb.b

end_hunk_0
begin_hunk_1_@scan_args_hash:rb_scan_args_n_opt.exit
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  %i.h = tail call i32 @rb_keyword_given_p() #4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread10, label %bb.c

.thread10:                                        ; preds = %bb.a
  store i64 4, ptr %i.b, align 8, !tbaa !10
  br label %.thread10.a

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.i = icmp slt i32 %0, 0
end_hunk_1
begin_hunk_2_@scan_args_hash:rb_scan_args_n_opt.exit
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %rb_scan_args_set.exit, label %.thread10.a

.thread10.a:                                      ; preds = %.thread10, %bb.c, %bb.b
  %.1.i6 = phi i32 [ %i.k, %bb.c ], [ %0, %bb.b ], [ %0, %.thread10 ]
  tail call void @rb_error_arity(i32 noundef %.1.i6, i32 noundef 0, i32 noundef 0) #5
  unreachable

end_hunk_2
