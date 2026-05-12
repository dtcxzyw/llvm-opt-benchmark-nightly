inline.NumInlined: 17
inline.NumDeleted: 16
begin_hunk_0_@pty_getpty:bb.a
  %3 = alloca %struct.child_info, align 8         ; 8 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.pty_info, align 4           ; 5 uses
  %i.g = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
end_hunk_0
begin_hunk_1_@pty_getpty:bb.a
  br label %getDevice.exit.i

getDevice.exit.i:                                 ; preds = %bb.h, %bb.g
  %i.w = load i32, ptr %i.a, align 4, !tbaa !6    ; 5 uses
  store i32 %i.w, ptr %3, align 8, !tbaa !20
  %i.x = load i32, ptr %i.b, align 4, !tbaa !6    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
end_hunk_1
begin_hunk_2_@pty_getpty:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.g, ptr %i.z, align 8, !tbaa !22
  store i8 0, ptr %i.e, align 16, !tbaa !23
  %i.aa = call i32 @rb_fork_async_signal_safe(ptr noundef nonnull %i.c, ptr noundef nonnull @chfunc, ptr noundef nonnull %3, i64 noundef 4, ptr noundef nonnull %i.e, i64 noundef 32) #9 ; 3 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %establishShell.exit

end_hunk_2
begin_hunk_3_@pty_getpty:bb.a
  %i.al = call i32 @close(i32 noundef %i.x) #9    ; 0 uses
  %i.am = load i64, ptr %i.r, align 8, !tbaa !16
  call void @rb_execarg_parent_end(i64 noundef %i.am) #9
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.aa, ptr %i.an, align 4, !tbaa !24
  store i32 %i.w, ptr %4, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
end_hunk_3
begin_hunk_4_@pty_getpty:bb.a
  %i.aq = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.g) #9
  %i.ar = call i64 @rb_obj_freeze(i64 noundef %i.aq) #9 ; 2 uses
  %i.as = load i64, ptr @rb_cFile, align 8, !tbaa !10
  %i.at = call i64 @rb_io_open_descriptor(i64 noundef %i.as, i32 noundef %i.w, i32 noundef 1, i64 noundef %i.ar, i64 noundef 4, ptr noundef null) #9
  %i.au = call i32 @rb_cloexec_dup(i32 noundef %i.w) #9 ; 2 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %bb.l, label %bb.m

end_hunk_4
begin_hunk_5_@pty_getpty:bb.a
  %i.ay = call i64 @rb_ary_new_capa(i64 noundef 3) #9 ; 5 uses
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 0, i64 noundef %i.at) #9
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 1, i64 noundef %i.ax) #9
  %5 = shl nuw i32 %i.aa, 1
  %6 = or disjoint i32 %5, 1
  %7 = zext i32 %6 to i64
  call void @rb_ary_store(i64 noundef %i.ay, i64 noundef 2, i64 noundef %7) #9
  %i.az = call i32 @rb_block_given_p() #9
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.o, label %bb.n
end_hunk_5
