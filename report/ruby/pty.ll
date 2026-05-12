inline.NumInlined: 17
inline.NumDeleted: 16
begin_hunk_0_@pty_getpty:bb.a
  %3 = alloca %struct.child_info, align 8         ; 8 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.pty_info, align 4           ; 7 uses
  %i.g = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
end_hunk_0
begin_hunk_1_@pty_getpty:bb.a
bb.g:                                             ; preds = %bb.f, %bb.a
  %.018.i = phi ptr [ %i.d, %bb.f ], [ %1, %bb.a ]
  %.0.i = phi i32 [ 1, %bb.f ], [ %0, %bb.a ]
  %i.q = call i64 @rb_execarg_new(i32 noundef %.0.i, ptr noundef %.018.i, i32 noundef 1, i32 noundef 0) #9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !16
  %i.s = call ptr @rb_execarg_get(i64 noundef %i.q) #9
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !19
  %5 = load i64, ptr %i.r, align 8, !tbaa !16
  call void @rb_execarg_parent_start(i64 noundef %5) #9
  %i.u = call fastcc i32 @get_device_once(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 0)
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %getDevice.exit.i, label %bb.h
end_hunk_1
begin_hunk_2_@pty_getpty:bb.a
  %i.aq = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.g) #9
  %i.ar = call i64 @rb_obj_freeze(i64 noundef %i.aq) #9 ; 2 uses
  %i.as = load i64, ptr @rb_cFile, align 8, !tbaa !10
  %i.at = load i32, ptr %4, align 4, !tbaa !26
  %i.au = call i64 @rb_io_open_descriptor(i64 noundef %i.as, i32 noundef %i.at, i32 noundef 1, i64 noundef %i.ar, i64 noundef 4, ptr noundef null) #9
  %6 = load i32, ptr %4, align 4, !tbaa !26
  %i.av = call i32 @rb_cloexec_dup(i32 noundef %6) #9 ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %bb.l, label %bb.m

end_hunk_2
