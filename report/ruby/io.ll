inline.NumInlined: 1500
inline.NumDeleted: 204
begin_hunk_0_@rb_io_check_char_readable:bb.a

bb.m:                                             ; preds = %rb_io_check_closed.exit14
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.y) #31
  unreachable

bb.n:                                             ; preds = %rb_io_check_closed.exit14, %bb.h
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @io_fflush(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %bb.b, label %rb_io_check_initialized.exit.i

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %rb_io_check_closed.exit

bb.c:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.e = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.f = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %rb_io_check_closed.exit
  %i.i = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.j = ptrtoint ptr %0 to i64                   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %rb_io_check_closed.exit9
  %i.k = load i64, ptr %i.i, align 8, !tbaa !41   ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i64 @rb_mutex_owned_p(i64 noundef %i.k) #28
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !41
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i64 @io_flush_buffer_async(i64 noundef %i.j)
  br label %io_flush_buffer.exit

bb.g:                                             ; preds = %._crit_edge.i, %bb.d
  %i.o = phi i64 [ %.pre.i, %._crit_edge.i ], [ 4, %bb.d ]
  %i.p = tail call i64 @rb_mutex_synchronize(i64 noundef %i.o, ptr noundef nonnull @io_flush_buffer_async, i64 noundef %i.j) #28
  br label %io_flush_buffer.exit

io_flush_buffer.exit:                             ; preds = %bb.f, %bb.g
  %.0.in.i = phi i64 [ %i.p, %bb.g ], [ %i.n, %bb.f ]
  %i.q = and i64 %.0.in.i, 4294967295
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.critedge, label %bb.h

bb.h:                                             ; preds = %io_flush_buffer.exit
  %i.r = tail call ptr @rb_errno_ptr() #28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = load i64, ptr %0, align 8, !tbaa !42
  %i.u = tail call i32 @rb_io_maybe_wait_writable(i32 noundef %i.s, i64 noundef %i.t, i64 noundef 4)
  %.not6 = icmp eq i32 %i.u, 0
  br i1 %.not6, label %.critedge, label %rb_io_check_initialized.exit.i8

rb_io_check_initialized.exit.i8:                  ; preds = %bb.h
  %i.v = load i32, ptr %i.b, align 8, !tbaa !20
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %rb_io_check_closed.exit9

bb.i:                                             ; preds = %rb_io_check_initialized.exit.i8
  tail call void @rb_thread_check_ints() #28
  %i.x = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit9:                         ; preds = %rb_io_check_initialized.exit.i8
  %.pr = load i32, ptr %i.f, align 4, !tbaa !40
  %i.y = icmp sgt i32 %.pr, 0
  br i1 %i.y, label %bb.d, label %.critedge, !llvm.loop !43

.critedge:                                        ; preds = %bb.h, %rb_io_check_closed.exit9, %io_flush_buffer.exit, %rb_io_check_closed.exit
  %.0 = phi i32 [ 0, %rb_io_check_closed.exit ], [ 0, %rb_io_check_closed.exit9 ], [ -1, %bb.h ], [ 0, %io_flush_buffer.exit ]
  ret i32 %.0
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @rb_sys_fail_on_write(ptr noundef readonly captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @rb_errno_ptr() #28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !44
  %i.e = tail call i64 @rb_syserr_new_path_in(ptr noundef nonnull @__func__.rb_sys_fail_on_write, i32 noundef %i.b, i64 noundef %i.d) #28 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = and i32 %i.g, 131072
  %i.i = icmp ne i32 %i.h, 0
  %i.j = icmp eq i32 %i.b, 32
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr @ruby_static_id_signo, align 8, !tbaa !13
  %i.l = tail call i64 @rb_ivar_set(i64 noundef %i.e, i64 noundef %i.k, i64 noundef 27) #28 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_exc_raise(i64 noundef %i.e) #30
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_io_check_byte_readable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @rb_io_check_char_readable(ptr noundef %0)
  %i.a = getelementptr i8, ptr %0, i64 148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.7) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_io_check_readable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @rb_io_check_char_readable(ptr noundef %0)
  %i.a = getelementptr i8, ptr %0, i64 148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %rb_io_check_byte_readable.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_byte_readable.exit:                   ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_io_check_writable(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %bb.b, label %rb_io_check_initialized.exit.i

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %rb_io_check_closed.exit

bb.c:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.e = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = and i32 %i.g, 2
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_io_check_closed.exit
  %i.i = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.8) #30
  unreachable

bb.e:                                             ; preds = %rb_io_check_closed.exit
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = load i32, ptr %i.j, align 8, !tbaa !46
  %.not4 = icmp eq i32 %i.k, 0
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @io_unread(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @io_unread(ptr noundef captures(address_is_null) %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %bb.b, label %rb_io_check_initialized.exit.i

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %rb_io_check_closed.exit

bb.c:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.e = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.f = getelementptr i8, ptr %0, i64 80         ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.o, label %bb.d

bb.d:                                             ; preds = %rb_io_check_closed.exit
  %i.i = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39
  %i.k = and i32 %i.j, 32
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.l, align 4, !tbaa !7
  %i.m = load i32, ptr %i.b, align 8, !tbaa !20
  %i.n = load i32, ptr %i.f, align 8, !tbaa !46
  %i.o = sub i32 0, %i.n
  %i.p = sext i32 %i.o to i64
  %i.q = tail call i64 @lseek(i32 noundef %i.m, i64 noundef %i.p, i32 noundef 1) #28
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @rb_errno_ptr() #28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %.not10 = icmp eq i32 %i.t, 0
  br i1 %.not10, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @rb_errno_ptr() #28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  %i.w = icmp eq i32 %i.v, 29
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr %i.i, align 4, !tbaa !39
  %i.y = or i32 %i.x, 32
  store i32 %i.y, ptr %i.i, align 4, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %1, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.e
  %i.z = getelementptr i8, ptr %0, i64 76
  store i32 0, ptr %i.z, align 4, !tbaa !47
  store i32 0, ptr %i.f, align 8, !tbaa !46
  %i.aa = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @rb_econv_close(ptr noundef nonnull %i.ab) #28
  store ptr null, ptr %i.aa, align 8, !tbaa !48
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %clear_readconv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @ruby_xfree(ptr noundef nonnull %i.ad) #28
  store ptr null, ptr %i.ac, align 8, !tbaa !49
  br label %clear_readconv.exit.i

clear_readconv.exit.i:                            ; preds = %bb.m, %bb.l
  %i.ae = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.af, null
  br i1 %.not.i2.i, label %clear_codeconv.exit, label %bb.n

bb.n:                                             ; preds = %clear_readconv.exit.i
  tail call void @rb_econv_close(ptr noundef nonnull %i.af) #28
  store ptr null, ptr %i.ae, align 8, !tbaa !50
  br label %clear_codeconv.exit

clear_codeconv.exit:                              ; preds = %clear_readconv.exit.i, %bb.n
  %i.ag = getelementptr i8, ptr %0, i64 176
  store i32 0, ptr %i.ag, align 8, !tbaa !51
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %rb_io_check_closed.exit, %bb.d, %clear_codeconv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define dso_local i32 @rb_io_read_pending(ptr noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 148
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 80
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_io_read_check(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !42
  %i.d = tail call i64 @rb_io_wait(i64 noundef %i.c, i64 noundef 3, i64 noundef 4) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_io_wait(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !52
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !53 ; 2 uses
  %i.e = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef %.val.i) #28 ; 2 uses
  %.not = icmp eq i64 %i.e, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_fiber_scheduler_io_wait(i64 noundef %i.e, i64 noundef %0, i64 noundef %1, i64 noundef %2) #28
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ne i64 %0, 0
  %i.h = and i64 %0, 7
  %i.i = icmp eq i64 %i.h, 0
  %.not3.i.i.i = and i1 %i.g, %i.i
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.c
  %i.j = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16   ; 3 uses
  %i.l = and i64 %i.k, 2048
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.c
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.m = and i64 %i.k, 31
  %i.n = icmp ne i64 %i.m, 5
  %i.o = and i64 %i.k, 49152
  %.not8.i.i = icmp eq i64 %i.o, 0
  %or.cond.i.i = or i1 %i.n, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.p = getelementptr i8, ptr %i.j, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34   ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.q, null
  br i1 %.not.i.i26, label %bb.e, label %rb_io_check_initialized.exit.i

bb.e:                                             ; preds = %rb_io_taint_check.exit
  %i.r = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.s = getelementptr i8, ptr %i.q, i64 16       ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !20
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %rb_io_check_closed.exit

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.v = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.w = and i64 %2, -33
  %i.x = icmp eq i64 %i.w, 4
  br i1 %i.x, label %bb.g, label %.thread

bb.g:                                             ; preds = %rb_io_check_closed.exit
  %i.y = getelementptr i8, ptr %i.q, i64 200
  %i.z = load i64, ptr %i.y, align 8, !tbaa !38   ; 2 uses
  %.not24 = icmp eq i64 %i.z, 4
  br i1 %.not24, label %bb.h, label %.thread

.thread:                                          ; preds = %rb_io_check_closed.exit, %bb.g
  %.02032 = phi i64 [ %i.z, %bb.g ], [ %2, %rb_io_check_closed.exit ]
  %i.aa = tail call { i64, i64 } @rb_time_interval(i64 noundef %.02032) #28 ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  store i64 %i.ab, ptr %3, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.021 = phi ptr [ %3, %.thread ], [ null, %bb.g ]
  %i.ad = trunc i64 %1 to i1
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call i64 @rb_fix2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

bb.j:                                             ; preds = %bb.h
  %i.af = tail call i64 @rb_num2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ae, %bb.i ], [ %i.af, %bb.j ]
  %i.ag = trunc i64 %.0.i to i32
  %i.ah = call i32 @rb_thread_io_wait(ptr noundef %.val.i, ptr noundef nonnull %i.q, i32 noundef %i.ag, ptr noundef %.021) #28 ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %rb_io_check_initialized.exit.i28

bb.k:                                             ; preds = %rb_num2int_inline.exit
  %i.aj = call ptr @rb_errno_ptr() #28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  call void @rb_syserr_fail(i32 noundef %i.ak, ptr noundef null) #30
  unreachable

rb_io_check_initialized.exit.i28:                 ; preds = %rb_num2int_inline.exit
  %i.al = load i32, ptr %i.s, align 8, !tbaa !20
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %rb_io_check_closed.exit29

bb.l:                                             ; preds = %rb_io_check_initialized.exit.i28
  call void @rb_thread_check_ints() #28
  %i.an = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit29:                        ; preds = %rb_io_check_initialized.exit.i28
  %.not25 = icmp eq i32 %i.ah, 0
  %i.ao = shl nuw i32 %i.ah, 1
  %i.ap = or disjoint i32 %i.ao, 1
  %narrow = select i1 %.not25, i32 0, i32 %i.ap
  %.0 = zext i32 %narrow to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.m

bb.m:                                             ; preds = %rb_io_check_closed.exit29, %bb.b
end_hunk_0
begin_hunk_1_@rb_io_maybe_wait_readable:bb.a

bb.c:                                             ; preds = %rb_io_check_initialized.exit.i.i
  tail call void @rb_thread_check_ints() #28
  %i.h = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i.i
  switch i32 %0, label %.thread15 [
    i32 4, label %.thread
    i32 85, label %.thread
    i32 11, label %rb_io_maybe_wait.exit
  ]

.thread:                                          ; preds = %rb_io_check_closed.exit.i, %rb_io_check_closed.exit.i
  tail call void @rb_thread_check_ints() #28
  br label %bb.e

rb_io_maybe_wait.exit:                            ; preds = %rb_io_check_closed.exit.i
  %i.i = tail call i64 @rb_io_wait(i64 noundef %1, i64 noundef 3, i64 noundef %2) ; 5 uses
  %i.j = and i64 %i.i, -5
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %rb_io_maybe_wait.exit
  %i.k = trunc i64 %i.i to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %.0.i914 = phi i64 [ 3, %.thread ], [ %i.i, %bb.d ]
  %i.l = tail call i64 @rb_fix2int(i64 noundef %.0.i914) #28
  br label %rb_num2int_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.m = tail call i64 @rb_num2int(i64 noundef %i.i) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.e, %bb.f
  %.0.i7 = phi i64 [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  %i.n = trunc i64 %.0.i7 to i32
  br label %.thread15

bb.g:                                             ; preds = %rb_io_maybe_wait.exit
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %bb.h, label %.thread15

bb.h:                                             ; preds = %bb.g
  %i.p = load i64, ptr @rb_eIOTimeoutError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.9) #30
  unreachable

.thread15:                                        ; preds = %rb_io_check_closed.exit.i, %bb.g, %rb_num2int_inline.exit
  %.0 = phi i32 [ %i.n, %rb_num2int_inline.exit ], [ 0, %bb.g ], [ 0, %rb_io_check_closed.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_io_maybe_wait_writable(i32 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.b, label %rb_io_check_initialized.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i.i:                 ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %rb_io_check_closed.exit.i

bb.c:                                             ; preds = %rb_io_check_initialized.exit.i.i
  tail call void @rb_thread_check_ints() #28
  %i.h = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i.i
  switch i32 %0, label %.thread15 [
    i32 4, label %.thread
    i32 85, label %.thread
    i32 11, label %rb_io_maybe_wait.exit
  ]

.thread:                                          ; preds = %rb_io_check_closed.exit.i, %rb_io_check_closed.exit.i
  tail call void @rb_thread_check_ints() #28
  br label %bb.e

rb_io_maybe_wait.exit:                            ; preds = %rb_io_check_closed.exit.i
  %i.i = tail call i64 @rb_io_wait(i64 noundef %1, i64 noundef 9, i64 noundef %2) ; 5 uses
  %i.j = and i64 %i.i, -5
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %rb_io_maybe_wait.exit
  %i.k = trunc i64 %i.i to i1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %.0.i914 = phi i64 [ 9, %.thread ], [ %i.i, %bb.d ]
  %i.l = tail call i64 @rb_fix2int(i64 noundef %.0.i914) #28
  br label %rb_num2int_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.m = tail call i64 @rb_num2int(i64 noundef %i.i) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.e, %bb.f
  %.0.i7 = phi i64 [ %i.l, %bb.e ], [ %i.m, %bb.f ]
  %i.n = trunc i64 %.0.i7 to i32
  br label %.thread15

bb.g:                                             ; preds = %rb_io_maybe_wait.exit
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %bb.h, label %.thread15

bb.h:                                             ; preds = %bb.g
  %i.p = load i64, ptr @rb_eIOTimeoutError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.10) #30
  unreachable

.thread15:                                        ; preds = %rb_io_check_closed.exit.i, %bb.g, %rb_num2int_inline.exit
  %.0 = phi i32 [ %i.n, %rb_num2int_inline.exit ], [ 0, %bb.g ], [ 0, %rb_io_check_closed.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_io_bufwrite(i64 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 6 uses
  %.not.i.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i.i4, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit.i

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i
  %i.q = getelementptr i8, ptr %i.k, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  %i.s = and i32 %i.r, 2
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_io_check_closed.exit.i
  %i.t = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.t, ptr noundef nonnull @.str.8) #30
  unreachable

bb.f:                                             ; preds = %rb_io_check_closed.exit.i
  %i.u = getelementptr i8, ptr %i.k, i64 80
  %i.v = load i32, ptr %i.u, align 8, !tbaa !46
  %.not4.i = icmp eq i32 %i.v, 0
  br i1 %.not4.i, label %rb_io_check_writable.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @io_unread(ptr noundef nonnull %i.k, i1 noundef zeroext true)
  br label %rb_io_check_writable.exit

rb_io_check_writable.exit:                        ; preds = %bb.f, %bb.g
  %i.w = tail call fastcc i64 @io_binwrite(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.k, i32 noundef 0)
  ret i64 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @io_binwrite(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.binwrite_arg, align 8       ; 6 uses
  %i.a = icmp slt i64 %1, 1
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_thread_check_ints() #28
  %.not.not = icmp eq i32 %3, 0                   ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 48         ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr i8, ptr %2, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %i.g = and i32 %i.f, 8
  %.not10.i = icmp eq i32 %i.g, 0
  br i1 %.not10.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr i8, ptr %2, i64 56
  store i32 0, ptr %i.h, align 8, !tbaa !65
  %i.i = getelementptr i8, ptr %2, i64 60
  store i32 0, ptr %i.i, align 4, !tbaa !40
  %i.j = getelementptr i8, ptr %2, i64 64
  store i32 8192, ptr %i.j, align 8, !tbaa !66
  %i.k = tail call noalias nonnull dereferenceable(8192) ptr @ruby_xmalloc2(i64 noundef 8192, i64 noundef 1) #32
  store ptr %i.k, ptr %i.b, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.l = getelementptr i8, ptr %2, i64 192        ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !41
  %i.n = icmp eq i64 %i.m, 4
  br i1 %i.n, label %bb.g, label %io_allocate_write_buffer.exit

bb.g:                                             ; preds = %bb.f
  %i.o = tail call i64 @rb_mutex_new() #28        ; 2 uses
  store i64 %i.o, ptr %i.l, align 8, !tbaa !41
  tail call void @rb_mutex_allow_trap(i64 noundef %i.o, i32 noundef 1) #28
  br label %io_allocate_write_buffer.exit

io_allocate_write_buffer.exit:                    ; preds = %bb.f, %bb.g
  br i1 %.not.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %io_allocate_write_buffer.exit
  %i.p = getelementptr i8, ptr %2, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !39
  %i.r = and i32 %i.q, 24
  %.not6.i = icmp eq i32 %i.r, 0
  br i1 %.not6.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %io_allocate_write_buffer.exit
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !64   ; 5 uses
  %.not7.i = icmp eq ptr %i.s, null
  br i1 %.not7.i, label %io_binwrite_requires_flush_write.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %2, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !66
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %2, i64 60
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  %i.y = sext i32 %i.x to i64
  %i.z = add i64 %1, %i.y
  %.not8.i = icmp slt i64 %i.z, %i.v
  br i1 %.not8.i, label %io_binwrite_requires_flush_write.exit, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %2, ptr %4, align 8, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.aa, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %1, ptr %i.ab, align 8, !tbaa !70
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !41  ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4
  %i.ae = ptrtoint ptr %4 to i64                  ; 2 uses
  br i1 %i.ad, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call i64 @rb_mutex_synchronize(i64 noundef %i.ac, ptr noundef nonnull @io_binwrite_string, i64 noundef %i.ae) #28
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ag = call i64 @io_binwrite_string(i64 noundef %i.ae)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi i64 [ %i.ag, %bb.m ], [ %i.af, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.s

io_binwrite_requires_flush_write.exit:            ; preds = %bb.j, %bb.i
  %i.ah = getelementptr i8, ptr %2, i64 56        ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !65 ; 2 uses
  %.not32 = icmp eq i32 %i.ai, 0
  br i1 %.not32, label %bb.r, label %bb.o

bb.o:                                             ; preds = %io_binwrite_requires_flush_write.exit
  %i.aj = getelementptr i8, ptr %2, i64 60
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !40 ; 2 uses
  %.not33 = icmp eq i32 %i.ak, 0
  br i1 %.not33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr i8, ptr %i.s, i64 %i.al
  %i.an = sext i32 %i.ak to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.s, ptr noundef nonnull align 1 %i.am, i64 noundef %i.an, i1 noundef false) #28
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pre = phi ptr [ %.pre.pre, %bb.p ], [ %i.s, %bb.o ]
  store i32 0, ptr %i.ah, align 8, !tbaa !65
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %io_binwrite_requires_flush_write.exit
  %i.ao = phi ptr [ %.pre, %bb.q ], [ %i.s, %io_binwrite_requires_flush_write.exit ]
  %i.ap = getelementptr i8, ptr %2, i64 60        ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !40
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %i.ao, i64 %i.ar
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.as, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #28
  %i.at = trunc i64 %1 to i32
  %i.au = load i32, ptr %i.ap, align 4, !tbaa !40
  %i.av = add i32 %i.au, %i.at
  store i32 %i.av, ptr %i.ap, align 4, !tbaa !40
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r, %bb.n
  %.1 = phi i64 [ %1, %bb.r ], [ %.0, %bb.n ], [ %1, %bb.a ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_io_write(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  %i.b = load i64, ptr @id_write, align 8, !tbaa !13
  %i.c = call i64 @rb_funcallv(i64 noundef %0, i64 noundef %i.b, i32 noundef 1, ptr noundef nonnull %i.a) #28
  ret i64 %i.c
}

declare i64 @rb_funcallv(i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_io_addstr(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  %i.b = load i64, ptr @id_write, align 8, !tbaa !13
  %i.c = call i64 @rb_funcallv(i64 noundef %0, i64 noundef %i.b, i32 noundef 1, ptr noundef nonnull %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_io_flush_raw(i64 noundef %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 11
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = load i64, ptr @id_flush, align 8, !tbaa !13
  %i.j = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef %i.i, i32 noundef 0) #28
  br label %bb.k

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.c, label %rb_io_get_write_io.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 88
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  %..i = select i1 %.not.i, i64 %0, i64 %i.o      ; 7 uses
  %i.p = icmp ne i64 %..i, 0
  %i.q = and i64 %..i, 7
  %i.r = icmp eq i64 %i.q, 0
  %.not3.i.i.i = and i1 %i.p, %i.r
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rb_io_get_write_io.exit
  %i.s = inttoptr i64 %..i to ptr                 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16   ; 3 uses
  %i.u = and i64 %i.t, 2048
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %rb_io_get_write_io.exit
  tail call void @rb_error_frozen_object(i64 noundef %..i) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.v = and i64 %i.t, 31
  %i.w = icmp ne i64 %i.v, 5
  %i.x = and i64 %i.t, 49152
  %.not8.i.i = icmp eq i64 %i.x, 0
  %or.cond.i.i = or i1 %i.w, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %..i) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.y = getelementptr i8, ptr %i.s, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34   ; 6 uses
  %.not.i.i11 = icmp eq ptr %i.z, null
  br i1 %.not.i.i11, label %bb.e, label %rb_io_check_initialized.exit.i

bb.e:                                             ; preds = %rb_io_taint_check.exit
  %i.aa = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !20
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %rb_io_check_closed.exit

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.ae = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.af = getelementptr i8, ptr %i.z, i64 20      ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39 ; 2 uses
  %i.ah = and i32 %i.ag, 2
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %rb_io_check_closed.exit
  %i.ai = tail call fastcc i32 @io_fflush(ptr noundef nonnull %i.z)
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %.pre = load i32, ptr %i.af, align 4, !tbaa !39
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.z) #31
  unreachable

bb.i:                                             ; preds = %._crit_edge, %rb_io_check_closed.exit
  %i.ak = phi i32 [ %.pre, %._crit_edge ], [ %i.ag, %rb_io_check_closed.exit ]
  %i.al = and i32 %i.ak, 1
  %.not10 = icmp eq i32 %i.al, 0
  br i1 %.not10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @io_unread(ptr noundef nonnull %i.z, i1 noundef zeroext true)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.0 = phi i64 [ %i.j, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %..i, %bb.j ], [ %..i, %bb.i ]
  ret i64 %.0
}

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_io_flush(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_io_flush_raw(i64 noundef %0, i32 poison)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 21) i64 @rb_io_eof(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 6 uses
  %.not.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i8, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.k)
  %i.q = getelementptr i8, ptr %i.k, i64 148
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %rb_io_check_closed.exit
  %i.s = getelementptr i8, ptr %i.k, i64 80
  %i.t = load i32, ptr %i.s, align 8, !tbaa !46
  %.not7 = icmp eq i32 %i.t, 0
  br i1 %.not7, label %rb_io_check_initialized.exit.i10, label %bb.g

rb_io_check_initialized.exit.i10:                 ; preds = %bb.e
  %i.u = load i32, ptr %i.m, align 8, !tbaa !20
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %rb_io_check_closed.exit11

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i10
  tail call void @rb_thread_check_ints() #28
  %i.w = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit11:                        ; preds = %rb_io_check_initialized.exit.i10
  %i.x = tail call fastcc i32 @io_fillbuf(ptr noundef nonnull %i.k)
  %i.y = icmp slt i32 %i.x, 0
  %i.z = select i1 %i.y, i64 20, i64 0
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %rb_io_check_closed.exit, %rb_io_check_closed.exit11
  %.0 = phi i64 [ %i.z, %rb_io_check_closed.exit11 ], [ 0, %rb_io_check_closed.exit ], [ 0, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @io_fillbuf(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 68         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 4, !tbaa !71
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 76
  store i32 0, ptr %i.d, align 4, !tbaa !47
  %i.e = getelementptr i8, ptr %0, i64 80
  store i32 0, ptr %i.e, align 4, !tbaa !46
  %i.f = getelementptr i8, ptr %0, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  %i.j = and i32 %i.i, 4096
  %.not27 = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not27, i32 8192, i32 131072
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ 131072, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 84
  store i32 %i.l, ptr %i.m, align 4, !tbaa !73
  %i.n = zext nneg i32 %i.l to i64
  %i.o = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.n, i64 noundef 1) #32
  store ptr %i.o, ptr %i.a, align 4, !tbaa !71
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.p = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !46
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %fptr_wait_readable.exit.preheader, label %bb.m

fptr_wait_readable.exit.preheader:                ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 84
  %i.t = getelementptr i8, ptr %0, i64 16         ; 3 uses
  br label %fptr_wait_readable.exit

fptr_wait_readable.exit:                          ; preds = %fptr_wait_readable.exit.preheader, %rb_io_check_initialized.exit.i.i
  %i.u = load ptr, ptr %i.a, align 4, !tbaa !71
  %i.v = load i32, ptr %i.s, align 4, !tbaa !73
  %i.w = sext i32 %i.v to i64
  %i.x = tail call fastcc i64 @rb_io_read_memory(ptr noundef nonnull %0, ptr noundef %i.u, i64 noundef %i.w) ; 3 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.f, label %bb.k

bb.f:                                             ; preds = %fptr_wait_readable.exit
  %i.z = tail call ptr @rb_errno_ptr() #28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = load i64, ptr %0, align 8, !tbaa !42
  %i.ac = tail call i32 @rb_io_maybe_wait_readable(i32 noundef %i.aa, i64 noundef %i.ab, i64 noundef 4)
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %rb_io_check_initialized.exit.i.i

rb_io_check_initialized.exit.i.i:                 ; preds = %bb.f
  %i.ad = load i32, ptr %i.t, align 8, !tbaa !20
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %fptr_wait_readable.exit

bb.g:                                             ; preds = %rb_io_check_initialized.exit.i.i
  tail call void @rb_thread_check_ints() #28
  %i.af = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.af, ptr noundef nonnull @closed_stream) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = tail call ptr @rb_errno_ptr() #28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !20
  %i.aj = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.194, i32 noundef %i.ai) #28 ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !44 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4
  br i1 %i.am, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = tail call i64 @rb_str_append(i64 noundef %i.aj, i64 noundef %i.al) #28 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.io_fillbuf, i32 noundef %i.ah, i64 noundef %i.aj) #30
  unreachable

bb.k:                                             ; preds = %fptr_wait_readable.exit
  %.not28 = icmp eq i64 %i.x, 0
  br i1 %.not28, label %rb_io_check_closed.exit.thread, label %rb_io_check_initialized.exit.i

rb_io_check_closed.exit.thread:                   ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %0, i64 76
  store i32 0, ptr %i.ao, align 4, !tbaa !47
  br label %.sink.split

rb_io_check_initialized.exit.i:                   ; preds = %bb.k
  %i.ap = load i32, ptr %i.t, align 8, !tbaa !20
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %rb_io_check_closed.exit

bb.l:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.ar = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ar, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.as = getelementptr i8, ptr %0, i64 76
  store i32 0, ptr %i.as, align 4, !tbaa !47
  %i.at = trunc i64 %i.x to i32
  br label %.sink.split

.sink.split:                                      ; preds = %rb_io_check_closed.exit.thread, %rb_io_check_closed.exit
  %.sink = phi i32 [ %i.at, %rb_io_check_closed.exit ], [ 0, %rb_io_check_closed.exit.thread ]
  %.0.ph = phi i32 [ 0, %rb_io_check_closed.exit ], [ -1, %rb_io_check_closed.exit.thread ]
  store i32 %.sink, ptr %i.p, align 4, !tbaa !46
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ %.0.ph, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_io_descriptor(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 11
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = getelementptr i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.j, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !20   ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.o = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @closed_stream) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.p = load i64, ptr @id_fileno, align 8, !tbaa !13
  %i.q = tail call i64 @rb_check_funcall(i64 noundef %0, i64 noundef %i.p, i32 noundef 0, ptr noundef null) #28 ; 4 uses
  %i.r = icmp eq i64 %i.q, 36
  br i1 %i.r, label %bb.i, label %bb.e

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.s = trunc i64 %i.q to i1
end_hunk_1
begin_hunk_2_@rb_io_getline_0:bb.a
  %i.bz = getelementptr i8, ptr %3, i64 144       ; 5 uses
  %i.ca = getelementptr i8, ptr %.0.i144, i64 20  ; 4 uses
  %i.cb = getelementptr i8, ptr %.0.i144, i64 32  ; 2 uses
  %i.cc = getelementptr i8, ptr %3, i64 80        ; 4 uses
  %i.cd = getelementptr i8, ptr %3, i64 68        ; 2 uses
  %i.ce = getelementptr i8, ptr %3, i64 76        ; 4 uses
  %i.cf = getelementptr i8, ptr %3, i64 16
  %.not214 = icmp eq i32 %.1120, -1
  %i.cg = sub i64 0, %.2115
  %.not129 = icmp ne i32 %.1112, 0
  %.not.i161 = icmp eq i64 %.2, 0
  %or.cond213 = or i1 %.not129, %.not.i161
  %i.ch = inttoptr i64 %.2 to ptr                 ; 3 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 24     ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 16
  br label %.outer

.outer:                                           ; preds = %bb.cc, %bb.y
  %.0184.ph = phi i64 [ 1, %bb.cc ], [ %1, %bb.y ]
  %.0180.ph = phi i64 [ %.10200301308, %bb.cc ], [ 4, %bb.y ]
  %.0108.ph = phi i32 [ %i.ja, %bb.cc ], [ 16, %bb.y ] ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.backedge, %.outer
  %.0184 = phi i64 [ %.0184.ph, %.outer ], [ %.2186199304, %.backedge ] ; 2 uses
  %.0180 = phi i64 [ %.0180.ph, %.outer ], [ %.10200300, %.backedge ] ; 4 uses
  %i.ck = load ptr, ptr %i.bv, align 8, !tbaa !72
  %.not.i156 = icmp eq ptr %i.ck, null
  br i1 %.not.i156, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cl = load i32, ptr %i.bw, align 4, !tbaa !39
  %i.cm = and i32 %i.cl, 4096
  %.not131.i = icmp eq i32 %i.cm, 0
  br i1 %.not131.i, label %.preheader.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call fastcc void @make_readconv(ptr noundef nonnull %3, i32 noundef 0)
  br label %bb.ac

bb.ac:                                            ; preds = %more_char.exit.i, %bb.ab
  %.3183 = phi i64 [ %.0180, %bb.ab ], [ %.5, %more_char.exit.i ] ; 3 uses
  %.0118.i = phi i64 [ %.0184, %bb.ab ], [ %.2120.ph.i, %more_char.exit.i ] ; 6 uses
  %.0106.i = phi i64 [ %.0180, %bb.ab ], [ %.4110.ph.i, %more_char.exit.i ] ; 6 uses
  %i.cn = load i32, ptr %i.bx, align 4, !tbaa !45 ; 3 uses
  %.not134.i = icmp eq i32 %i.cn, 0
  br i1 %.not134.i, label %bb.as, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.cp = load i32, ptr %i.bz, align 8, !tbaa !88
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.co, i64 %i.cq  ; 9 uses
  %i.cs = icmp sgt i64 %.0118.i, 0
  %i.ct = sext i32 %i.cn to i64
  %i.cu = icmp slt i64 %.0118.i, %i.ct
  %or.cond.i = and i1 %i.cs, %i.cu
  %i.cv = trunc nuw nsw i64 %.0118.i to i32
  %.0124.i = select i1 %or.cond.i, i32 %i.cv, i32 %i.cn ; 3 uses
  %i.cw = sext i32 %.0124.i to i64                ; 5 uses
  %.val36.i.i = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.cx = icmp eq i32 %.val36.i.i, 1
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cy = call ptr @memchr(ptr noundef %i.cr, i32 noundef %.1120, i64 noundef range(i64 -2147483648, 2147483648) %i.cw) #33 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  br i1 %.not.i.i, label %search_delim.exit.thread.i, label %search_delim.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.da = getelementptr i8, ptr %i.cr, i64 %i.cw  ; 4 uses
  %i.db = icmp ult ptr %i.cr, %i.da
  br i1 %i.db, label %.lr.ph.i.i, label %search_delim.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.af, %bb.ai
  %.03043.i.i = phi ptr [ %.232.i.i, %bb.ai ], [ %i.cr, %bb.af ] ; 4 uses
  %i.dc = call i32 @rb_enc_precise_mbclen(ptr noundef %.03043.i.i, ptr noundef nonnull %i.da, ptr noundef nonnull %.0.i144) #28 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  %.val.i.i = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.de = sext i32 %.val.i.i to i64
  %i.df = getelementptr i8, ptr %.03043.i.i, i64 %i.de
  br label %bb.ai, !llvm.loop !89

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.dg = load ptr, ptr %i.cb, align 8, !tbaa !90
  %i.dh = call i32 %i.dg(ptr noundef %.03043.i.i, ptr noundef nonnull %i.da, ptr noundef nonnull %.0.i144) #28, !inline_history !91
  %i.di = icmp eq i32 %i.dh, %.1120
  %i.dj = zext nneg i32 %i.dc to i64
  %i.dk = getelementptr i8, ptr %.03043.i.i, i64 %i.dj ; 2 uses
  br i1 %i.di, label %search_delim.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.232.i.i = phi ptr [ %i.dk, %bb.ah ], [ %i.df, %bb.ag ] ; 2 uses
  %i.dl = icmp ult ptr %.232.i.i, %i.da
  br i1 %i.dl, label %.lr.ph.i.i, label %search_delim.exit.thread.i

search_delim.exit.i:                              ; preds = %bb.ah, %bb.ae
  %.4.i.i = phi ptr [ %i.cz, %bb.ae ], [ %i.dk, %bb.ah ] ; 2 uses
  %.not135.i = icmp eq ptr %.4.i.i, null
  br i1 %.not135.i, label %search_delim.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %search_delim.exit.i
  %i.dm = ptrtoint ptr %.4.i.i to i64
  %i.dn = ptrtoint ptr %i.cr to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 2 uses
  %i.dp = trunc i64 %i.do to i32                  ; 2 uses
  %i.dq = icmp eq i64 %.0106.i, 4
  %sext136.i = shl i64 %i.do, 32
  %i.dr = ashr exact i64 %sext136.i, 32           ; 3 uses
  br i1 %i.dq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ds = call i64 @rb_str_new(ptr noundef %i.cr, i64 noundef %i.dr) #28
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.dt = call i64 @rb_str_cat(i64 noundef %.0106.i, ptr noundef %i.cr, i64 noundef %i.dr) #28 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.6 = phi i64 [ %i.ds, %bb.ak ], [ %.3183, %bb.al ]
  %i.du = load i32, ptr %i.bz, align 8, !tbaa !88
  %i.dv = add i32 %i.du, %i.dp
  store i32 %i.dv, ptr %i.bz, align 8, !tbaa !88
  %i.dw = load i32, ptr %i.bx, align 4, !tbaa !45
  %i.dx = sub i32 %i.dw, %i.dp
  store i32 %i.dx, ptr %i.bx, align 4, !tbaa !45
  %i.dy = sub i64 %.0118.i, %i.dr
  br label %appendline.exit

search_delim.exit.thread.i:                       ; preds = %bb.ai, %search_delim.exit.i, %bb.af, %bb.ae
  %i.dz = icmp eq i64 %.0106.i, 4
  br i1 %i.dz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %search_delim.exit.thread.i
  %i.ea = call i64 @rb_str_new(ptr noundef %i.cr, i64 noundef %i.cw) #28 ; 2 uses
  br label %bb.ap

bb.ao:                                            ; preds = %search_delim.exit.thread.i
  %i.eb = call i64 @rb_str_cat(i64 noundef %.0106.i, ptr noundef %i.cr, i64 noundef %i.cw) #28 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.4 = phi i64 [ %i.ea, %bb.an ], [ %.3183, %bb.ao ] ; 3 uses
  %.2108.i = phi i64 [ %i.ea, %bb.an ], [ %.0106.i, %bb.ao ] ; 2 uses
  %i.ec = load i32, ptr %i.bz, align 8, !tbaa !88
  %i.ed = add i32 %i.ec, %.0124.i
  store i32 %i.ed, ptr %i.bz, align 8, !tbaa !88
  %i.ee = load i32, ptr %i.bx, align 4, !tbaa !45
  %i.ef = sub i32 %i.ee, %.0124.i
  store i32 %i.ef, ptr %i.bx, align 4, !tbaa !45
  %i.eg = sub i64 %.0118.i, %i.cw                 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ei = inttoptr i64 %.2108.i to ptr            ; 4 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !16
  %i.ek = and i64 %i.ej, 8192
  %.not.i141.i = icmp eq i64 %i.ek, 0
  %i.el = getelementptr i8, ptr %i.ei, i64 24     ; 2 uses
  br i1 %.not.i141.i, label %appendline.exit.thread195, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !86
  br label %appendline.exit.thread195

bb.as:                                            ; preds = %bb.ap, %bb.ac
  %.5 = phi i64 [ %.3183, %bb.ac ], [ %.4, %bb.ap ] ; 3 uses
  %.2120.ph.i = phi i64 [ %.0118.i, %bb.ac ], [ %i.eg, %bb.ap ]
  %.4110.ph.i = phi i64 [ %.0106.i, %bb.ac ], [ %.2108.i, %bb.ap ]
  %i.en = call fastcc i64 @fill_cbuf(ptr noundef nonnull %3, i32 noundef 262144) ; 3 uses
  %i.eo = and i64 %i.en, -17
  %or.cond.not.i.i = icmp eq i64 %i.eo, 4
  br i1 %or.cond.not.i.i, label %more_char.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @rb_exc_raise(i64 noundef %i.en) #30
  unreachable

more_char.exit.i:                                 ; preds = %bb.as
  %.not138.i = icmp eq i64 %i.en, 4
  br i1 %.not138.i, label %bb.au, label %bb.ac, !llvm.loop !92

bb.au:                                            ; preds = %more_char.exit.i
  %i.ep = getelementptr i8, ptr %3, i64 128       ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !48 ; 2 uses
  %.not.i142.i = icmp eq ptr %i.eq, null
  br i1 %.not.i142.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @rb_econv_close(ptr noundef nonnull %i.eq) #28
  store ptr null, ptr %i.ep, align 8, !tbaa !48
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.er = load ptr, ptr %i.by, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i, label %.thread207, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @ruby_xfree(ptr noundef nonnull %i.er) #28
  store ptr null, ptr %i.by, align 8, !tbaa !49
  br label %.thread207

.preheader.i:                                     ; preds = %bb.aa, %bb.bn
  %.7 = phi i64 [ %.8, %bb.bn ], [ %.0180, %bb.aa ] ; 2 uses
  %.3121.i = phi i64 [ %.4122.i, %bb.bn ], [ %.0184, %bb.aa ] ; 4 uses
  %.5111.i = phi i64 [ %.7.i, %bb.bn ], [ %.0180, %bb.aa ] ; 5 uses
  %i.es = load i32, ptr %i.cc, align 8, !tbaa !46 ; 3 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %bb.ay, label %thread-pre-split.i

bb.ay:                                            ; preds = %.preheader.i
  %i.eu = zext nneg i32 %i.es to i64              ; 2 uses
  %i.ev = load ptr, ptr %i.cd, align 4, !tbaa !71
  %i.ew = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr i8, ptr %i.ev, i64 %i.ex  ; 5 uses
  %i.ez = icmp sgt i64 %.3121.i, 0
  %i.fa = call i64 @llvm.smin.i64(i64 %.3121.i, i64 %i.eu)
  %.0113.i = select i1 %i.ez, i64 %i.fa, i64 %i.eu ; 3 uses
  %.val36.i143.i = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.fb = icmp eq i32 %.val36.i143.i, 1
  br i1 %i.fb, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fc = call ptr @memchr(ptr noundef %i.ey, i32 noundef %.1120, i64 noundef range(i64 -2147483648, 2147483648) %.0113.i) #33 ; 2 uses
  %.not.i149.i = icmp eq ptr %i.fc, null
  %i.fd = getelementptr i8, ptr %i.fc, i64 1
  %spec.select.i150.i = select i1 %.not.i149.i, ptr null, ptr %i.fd
  br label %search_delim.exit151.i

bb.ba:                                            ; preds = %bb.ay
  %i.fe = getelementptr i8, ptr %i.ey, i64 %.0113.i ; 4 uses
  %i.ff = icmp ult ptr %i.ey, %i.fe
  br i1 %i.ff, label %.lr.ph.i145.i, label %search_delim.exit151.i

.lr.ph.i145.i:                                    ; preds = %bb.ba, %bb.bd
  %.03043.i146.i = phi ptr [ %.232.i148.i, %bb.bd ], [ %i.ey, %bb.ba ] ; 4 uses
  %i.fg = call i32 @rb_enc_precise_mbclen(ptr noundef %.03043.i146.i, ptr noundef nonnull %i.fe, ptr noundef nonnull %.0.i144) #28 ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i145.i
  %.val.i147.i = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.fi = sext i32 %.val.i147.i to i64
  %i.fj = getelementptr i8, ptr %.03043.i146.i, i64 %i.fi
  br label %bb.bd, !llvm.loop !89

bb.bc:                                            ; preds = %.lr.ph.i145.i
  %i.fk = load ptr, ptr %i.cb, align 8, !tbaa !90
  %i.fl = call i32 %i.fk(ptr noundef %.03043.i146.i, ptr noundef nonnull %i.fe, ptr noundef nonnull %.0.i144) #28, !inline_history !91
  %i.fm = icmp eq i32 %i.fl, %.1120
  %i.fn = zext nneg i32 %i.fg to i64
  %i.fo = getelementptr i8, ptr %.03043.i146.i, i64 %i.fn ; 2 uses
  br i1 %i.fm, label %search_delim.exit151.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.232.i148.i = phi ptr [ %i.fo, %bb.bc ], [ %i.fj, %bb.bb ] ; 2 uses
  %i.fp = icmp ult ptr %.232.i148.i, %i.fe
  br i1 %i.fp, label %.lr.ph.i145.i, label %search_delim.exit151.i

search_delim.exit151.i:                           ; preds = %bb.bd, %bb.bc, %bb.ba, %bb.az
  %.4.i144.i = phi ptr [ %spec.select.i150.i, %bb.az ], [ null, %bb.ba ], [ %i.fo, %bb.bc ], [ null, %bb.bd ] ; 2 uses
  %.not132.i = icmp eq ptr %.4.i144.i, null       ; 2 uses
  %i.fq = ptrtoint ptr %.4.i144.i to i64
  %i.fr = ptrtoint ptr %i.ey to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %.1114.i = select i1 %.not132.i, i64 %.0113.i, i64 %i.fs ; 5 uses
  %i.ft = icmp eq i64 %.5111.i, 4
  br i1 %i.ft, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %search_delim.exit151.i
  %i.fu = inttoptr i64 %.5111.i to ptr            ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !81 ; 2 uses
  %i.fx = add i64 %i.fw, %.1114.i
  %i.fy = call i64 @rb_str_resize(i64 noundef %.5111.i, i64 noundef %i.fx) #28 ; 0 uses
  br label %bb.bg

bb.bf:                                            ; preds = %search_delim.exit151.i
  %i.fz = call i64 @rb_str_buf_new(i64 noundef %.1114.i) #28 ; 4 uses
  call void @rb_str_set_len(i64 noundef %i.fz, i64 noundef %.1114.i) #28
  %.pre.i = inttoptr i64 %i.fz to ptr
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.9 = phi i64 [ %i.fz, %bb.bf ], [ %.7, %bb.be ] ; 4 uses
  %.pre-phi.i = phi ptr [ %.pre.i, %bb.bf ], [ %i.fu, %bb.be ] ; 5 uses
  %.6112.i = phi i64 [ %i.fz, %bb.bf ], [ %.5111.i, %bb.be ]
  %.0.i157 = phi i64 [ 0, %bb.bf ], [ %i.fw, %bb.be ]
  %i.ga = load i64, ptr %.pre-phi.i, align 8, !tbaa !16
  %i.gb = and i64 %i.ga, 8192
  %.not.i152.i = icmp eq i64 %i.gb, 0
  %i.gc = getelementptr i8, ptr %.pre-phi.i, i64 24 ; 4 uses
  br i1 %.not.i152.i, label %RSTRING_PTR.exit153.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !86
  br label %RSTRING_PTR.exit153.i

RSTRING_PTR.exit153.i:                            ; preds = %bb.bh, %bb.bg
  %i.ge = phi ptr [ %i.gd, %bb.bh ], [ %i.gc, %bb.bg ]
  %i.gf = load i32, ptr %i.cc, align 8, !tbaa !46 ; 3 uses
  %i.gg = icmp slt i32 %i.gf, 1
  br i1 %i.gg, label %read_buffered_data.exit.i, label %bb.bi

bb.bi:                                            ; preds = %RSTRING_PTR.exit153.i
  %i.gh = getelementptr i8, ptr %i.ge, i64 %.0.i157
  %i.gi = zext nneg i32 %i.gf to i64
  %spec.select17.i.i = call i64 @llvm.smin.i64(i64 %.1114.i, i64 %i.gi) ; 2 uses
  %spec.select.i154.i = trunc i64 %spec.select17.i.i to i32 ; 2 uses
  %i.gj = load ptr, ptr %i.cd, align 4, !tbaa !71
  %i.gk = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr i8, ptr %i.gj, i64 %i.gl
  %sext.i.i = shl i64 %spec.select17.i.i, 32
  %i.gn = ashr exact i64 %sext.i.i, 32
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.gh, ptr noundef nonnull align 1 %i.gm, i64 noundef %i.gn, i1 noundef false) #28
  %i.go = load i32, ptr %i.ce, align 4, !tbaa !47
  %i.gp = add i32 %i.go, %spec.select.i154.i
  store i32 %i.gp, ptr %i.ce, align 4, !tbaa !47
  %i.gq = load i32, ptr %i.cc, align 8, !tbaa !46
  %i.gr = sub i32 %i.gq, %spec.select.i154.i      ; 2 uses
  store i32 %i.gr, ptr %i.cc, align 8, !tbaa !46
  br label %read_buffered_data.exit.i

read_buffered_data.exit.i:                        ; preds = %bb.bi, %RSTRING_PTR.exit153.i
  %.pr.i = phi i32 [ %i.gf, %RSTRING_PTR.exit153.i ], [ %i.gr, %bb.bi ]
  %i.gs = sub i64 %.3121.i, %.1114.i              ; 3 uses
  br i1 %.not132.i, label %bb.bj, label %appendline.exit

bb.bj:                                            ; preds = %read_buffered_data.exit.i
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %bb.bk, label %thread-pre-split.i

bb.bk:                                            ; preds = %bb.bj
  %i.gu = load i64, ptr %.pre-phi.i, align 8, !tbaa !16
  %i.gv = and i64 %i.gu, 8192
  %.not.i155.i = icmp eq i64 %i.gv, 0
  br i1 %.not.i155.i, label %appendline.exit.thread195, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gw = load ptr, ptr %i.gc, align 8, !tbaa !86
  br label %appendline.exit.thread195

thread-pre-split.i:                               ; preds = %bb.bj, %.preheader.i
  %.8 = phi i64 [ %.9, %bb.bj ], [ %.7, %.preheader.i ] ; 2 uses
  %i.gx = phi i32 [ %.pr.i, %bb.bj ], [ %i.es, %.preheader.i ]
  %.4122.i = phi i64 [ %i.gs, %bb.bj ], [ %.3121.i, %.preheader.i ]
  %.7.i = phi i64 [ %.6112.i, %bb.bj ], [ %.5111.i, %.preheader.i ]
  %.not133.i = icmp eq i32 %i.gx, 0
  br i1 %.not133.i, label %rb_io_check_initialized.exit.i.i, label %bb.bn

rb_io_check_initialized.exit.i.i:                 ; preds = %thread-pre-split.i
  %i.gy = load i32, ptr %i.cf, align 8, !tbaa !20
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %rb_io_check_initialized.exit.i.i
  call void @rb_thread_check_ints() #28
  %i.ha = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ha, ptr noundef nonnull @closed_stream) #30
  unreachable

bb.bn:                                            ; preds = %rb_io_check_initialized.exit.i.i, %thread-pre-split.i
  %i.hb = call fastcc i32 @io_fillbuf(ptr noundef nonnull %3)
  %i.hc = icmp sgt i32 %i.hb, -1
  br i1 %i.hc, label %.preheader.i, label %.thread207, !llvm.loop !93

appendline.exit:                                  ; preds = %read_buffered_data.exit.i, %bb.am
  %.2186 = phi i64 [ %i.dy, %bb.am ], [ %i.gs, %read_buffered_data.exit.i ]
  %.10 = phi i64 [ %.6, %bb.am ], [ %.9, %read_buffered_data.exit.i ] ; 2 uses
  br i1 %.not214, label %.thread207, label %appendline.exit.thread195.thread

appendline.exit.thread195:                        ; preds = %bb.bk, %bb.bl, %bb.aq, %bb.ar
  %.pre-phi.i.lcssa326.sink = phi ptr [ %i.ei, %bb.aq ], [ %i.ei, %bb.ar ], [ %.pre-phi.i, %bb.bl ], [ %.pre-phi.i, %bb.bk ]
  %.sink337 = phi ptr [ %i.el, %bb.aq ], [ %i.em, %bb.ar ], [ %i.gw, %bb.bl ], [ %i.gc, %bb.bk ]
  %.10200 = phi i64 [ %.4, %bb.aq ], [ %.4, %bb.ar ], [ %.9, %bb.bl ], [ %.9, %bb.bk ] ; 2 uses
  %i.hd = getelementptr i8, ptr %.pre-phi.i.lcssa326.sink, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !81
  %i.hf = getelementptr i8, ptr %.sink337, i64 %i.he
  %i.hg = getelementptr i8, ptr %i.hf, i64 -1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !86
  %i.hi = zext i8 %i.hh to i32
  %i.hj = icmp eq i32 %.1120, %i.hi
  br i1 %i.hj, label %appendline.exit.thread195.thread, label %.thread

appendline.exit.thread195.thread:                 ; preds = %appendline.exit, %appendline.exit.thread195
  %.2186199304 = phi i64 [ 0, %appendline.exit.thread195 ], [ %.2186, %appendline.exit ] ; 2 uses
  %.10200300 = phi i64 [ %.10200, %appendline.exit.thread195 ], [ %.10, %appendline.exit ] ; 6 uses
  %i.hk = inttoptr i64 %.10200300 to ptr          ; 3 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !81 ; 2 uses
  %i.hn = icmp slt i64 %i.hm, %.2115
  br i1 %i.hn, label %.backedge, label %bb.bo

bb.bo:                                            ; preds = %appendline.exit.thread195.thread
  %i.ho = load i64, ptr %i.hk, align 8, !tbaa !16
  %i.hp = and i64 %i.ho, 8192
  %.not.i158 = icmp eq i64 %i.hp, 0
  %i.hq = getelementptr i8, ptr %i.hk, i64 24     ; 2 uses
  br i1 %.not.i158, label %RSTRING_END.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !86
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.bo, %bb.bp
  %i.hs = phi ptr [ %i.hr, %bb.bp ], [ %i.hq, %bb.bo ] ; 4 uses
  %i.ht = getelementptr i8, ptr %i.hs, i64 %i.hm  ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 %i.cg  ; 7 uses
  %i.hv = call ptr @onigenc_get_left_adjust_char_head(ptr noundef %.0.i144, ptr noundef %i.hs, ptr noundef %i.hu, ptr noundef %i.ht) #28
  %i.hw = icmp eq ptr %i.hv, %i.hu
  br i1 %i.hw, label %bb.bq, label %.backedge

bb.bq:                                            ; preds = %RSTRING_END.exit
  br i1 %or.cond213, label %rscheck.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hx = load i64, ptr %i.ch, align 8, !tbaa !16
  %i.hy = and i64 %i.hx, 8192
  %.not.i.i162 = icmp eq i64 %i.hy, 0
  br i1 %.not.i.i162, label %RSTRING_PTR.exit.i163, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hz = load ptr, ptr %i.ci, align 8, !tbaa !86
  br label %RSTRING_PTR.exit.i163

RSTRING_PTR.exit.i163:                            ; preds = %bb.bs, %bb.br
  %i.ia = phi ptr [ %i.hz, %bb.bs ], [ %i.ci, %bb.br ]
  %.not4.i = icmp eq ptr %i.ia, %.2118
  br i1 %.not4.i, label %rscheck.exit, label %bb.bt

bb.bt:                                            ; preds = %RSTRING_PTR.exit.i163
  %i.ib = load i64, ptr %i.cj, align 8, !tbaa !81
  %.not5.i = icmp eq i64 %i.ib, %.2115
  br i1 %.not5.i, label %rscheck.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ic = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ic, ptr noundef nonnull @.str.197) #30
  unreachable

rscheck.exit:                                     ; preds = %bb.bt, %RSTRING_PTR.exit.i163, %bb.bq
  %bcmp = call i32 @bcmp(ptr %i.hu, ptr %.2118, i64 %.2115)
  %i.id = icmp eq i32 %bcmp, 0
  br i1 %i.id, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %rscheck.exit
  %.not130 = icmp eq i32 %2, 0
  br i1 %.not130, label %.loopexit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not131 = icmp ne i32 %.0107, 0
  %i.ie = icmp ugt ptr %i.hu, %i.hs
  %or.cond132 = and i1 %.not131, %i.ie
  br i1 %or.cond132, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.if = getelementptr i8, ptr %i.hu, i64 -1     ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !86
  %i.ih = icmp eq i8 %i.ig, 13
  %spec.select = select i1 %i.ih, ptr %i.if, ptr %i.hu
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.0103 = phi ptr [ %i.hu, %bb.bw ], [ %spec.select, %bb.bx ]
  %i.ii = ptrtoint ptr %.0103 to i64
  %i.ij = ptrtoint ptr %i.hs to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @rb_str_set_len(i64 noundef %.10200300, i64 noundef %i.ik) #28
  br label %.loopexit

bb.bz:                                            ; preds = %rscheck.exit
  %i.il = icmp eq i64 %.2186199304, 0
  br i1 %i.il, label %.thread, label %.backedge

.backedge:                                        ; preds = %bb.bz, %RSTRING_END.exit, %appendline.exit.thread195.thread
  br label %bb.z, !llvm.loop !94

.thread:                                          ; preds = %appendline.exit.thread195, %bb.bz
  %.10200301308 = phi i64 [ %.10200300, %bb.bz ], [ %.10200, %appendline.exit.thread195 ] ; 4 uses
  %i.im = inttoptr i64 %.10200301308 to ptr       ; 3 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !16
  %i.io = and i64 %i.in, 8192
  %.not.i164 = icmp eq i64 %i.io, 0
  %i.ip = getelementptr i8, ptr %i.im, i64 24     ; 2 uses
  br i1 %.not.i164, label %RSTRING_END.exit167, label %bb.ca

bb.ca:                                            ; preds = %.thread
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !86
  br label %RSTRING_END.exit167

RSTRING_END.exit167:                              ; preds = %.thread, %bb.ca
  %i.ir = phi ptr [ %i.iq, %bb.ca ], [ %i.ip, %.thread ] ; 2 uses
  %i.is = getelementptr i8, ptr %i.im, i64 16
  %i.it = load i64, ptr %i.is, align 8, !tbaa !81
  %i.iu = getelementptr i8, ptr %i.ir, i64 %i.it  ; 3 uses
  %i.iv = call ptr @onigenc_get_prev_char_head(ptr noundef %.0.i144, ptr noundef %i.ir, ptr noundef %i.iu, ptr noundef %i.iu) #28 ; 2 uses
  %i.iw = icmp ne i32 %.0108.ph, 0
  %i.ix = icmp ne ptr %i.iv, null
  %or.cond7 = select i1 %i.iw, i1 %i.ix, i1 false
  br i1 %or.cond7, label %bb.cb, label %.loopexit

bb.cb:                                            ; preds = %RSTRING_END.exit167
  %i.iy = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.iv, ptr noundef %i.iu, ptr noundef %.0.i144) #28
  %i.iz = icmp slt i32 %i.iy, -1
  br i1 %i.iz, label %bb.cc, label %.loopexit

bb.cc:                                            ; preds = %bb.cb
  %i.ja = add i32 %.0108.ph, -1
  br label %.outer

.loopexit:                                        ; preds = %RSTRING_END.exit167, %bb.cb, %bb.bv, %bb.by
  %.10200303 = phi i64 [ %.10200300, %bb.bv ], [ %.10200300, %bb.by ], [ %.10200301308, %bb.cb ], [ %.10200301308, %RSTRING_END.exit167 ] ; 2 uses
  %.1105.ph = phi i32 [ 0, %bb.bv ], [ 0, %bb.by ], [ 1, %bb.cb ], [ 1, %RSTRING_END.exit167 ] ; 2 uses
  %.not215 = icmp eq i32 %.1112, 0
  br i1 %.not215, label %.thread207, label %bb.cd

bb.cd:                                            ; preds = %.loopexit
  call fastcc void @swallow(ptr noundef nonnull %3)
  br label %.thread207

.thread207:                                       ; preds = %appendline.exit, %bb.bn, %bb.ax, %bb.aw, %bb.cd, %.loopexit
  %.2106212 = phi i32 [ %.1105.ph, %.loopexit ], [ %.1105.ph, %bb.cd ], [ 0, %bb.bn ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %appendline.exit ]
  %.10192211 = phi i64 [ %.10200303, %.loopexit ], [ %.10200303, %bb.cd ], [ %.8, %bb.bn ], [ %.5, %bb.aw ], [ %.5, %bb.ax ], [ %.10, %appendline.exit ] ; 3 uses
  %i.jb = icmp eq i64 %.10192211, 4
  br i1 %i.jb, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %.thread207
  %.val135 = load ptr, ptr %i.y, align 8, !tbaa !83 ; 2 uses
  %.not.i.i168 = icmp eq ptr %.val135, null
  br i1 %.not.i.i168, label %bb.cf, label %io_enc_str.exit

bb.cf:                                            ; preds = %bb.ce
  %i.jc = call ptr @rb_default_external_encoding() #28
  br label %io_enc_str.exit

io_enc_str.exit:                                  ; preds = %bb.ce, %bb.cf
  %.0.i.i = phi ptr [ %i.jc, %bb.cf ], [ %.val135, %bb.ce ]
  %i.jd = call i64 @rb_enc_associate(i64 noundef %.10192211, ptr noundef %.0.i.i) #28 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %io_enc_str.exit, %.thread207
  %i.je = icmp ne i32 %.2106212, 0
  br label %bb.ch

bb.ch:                                            ; preds = %bb.b, %bb.cg
  %.2182 = phi i64 [ %i.d, %bb.b ], [ %.10192211, %bb.cg ] ; 3 uses
  %.3 = phi i1 [ false, %bb.b ], [ %i.je, %bb.cg ]
  %i.jf = icmp eq i64 %.2182, 4
  %or.cond11 = or i1 %i.jf, %.3
  br i1 %or.cond11, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jg = getelementptr i8, ptr %3, i64 28        ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !74
  %i.ji = add i32 %i.jh, 1
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !74
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ch, %bb.ci, %bb.b, %bb.k, %io_read_encoding.exit
  %.0 = phi i64 [ %i.x, %bb.k ], [ 4, %bb.b ], [ %i.l, %io_read_encoding.exit ], [ %.2182, %bb.ci ], [ %.2182, %bb.ch ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_io_gets_internal(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_io_gets_limit_internal(i64 noundef %0, i64 noundef -1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, 512) i64 @rb_io_getbyte(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 9 uses
  %.not.i.i18 = icmp eq ptr %i.k, null
  br i1 %.not.i.i18, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16       ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.k)
  %i.q = getelementptr i8, ptr %i.k, i64 148
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %rb_io_check_byte_readable.exit, label %bb.e

bb.e:                                             ; preds = %rb_io_check_closed.exit
  %i.s = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_byte_readable.exit:                   ; preds = %rb_io_check_closed.exit
  %i.t = getelementptr i8, ptr %i.k, i64 68
  %i.u = getelementptr i8, ptr %i.k, i64 80
  %i.v = load i32, ptr %i.u, align 8, !tbaa !46
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %rb_io_check_initialized.exit.i20, label %rb_io_check_closed.exit21

rb_io_check_initialized.exit.i20:                 ; preds = %rb_io_check_byte_readable.exit
  %i.w = load i32, ptr %i.m, align 8, !tbaa !20
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %rb_io_check_closed.exit21

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i20
  tail call void @rb_thread_check_ints() #28
  %i.y = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit21:                        ; preds = %rb_io_check_initialized.exit.i20, %rb_io_check_byte_readable.exit
  %i.z = tail call i64 @rb_ractor_stdout() #28    ; 5 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !20
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.g:                                             ; preds = %rb_io_check_closed.exit21
  %i.ac = getelementptr i8, ptr %i.k, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = and i32 %i.ad, 16
  %.not16 = icmp eq i32 %i.ae, 0
  br i1 %.not16, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq i64 %i.z, 0
  %i.ag = and i64 %i.z, 7
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = or i1 %i.af, %i.ah
  br i1 %i.ai, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.h
  %i.aj = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !16 ; 2 uses
  %i.al = and i64 %i.ak, 31
  %i.am = icmp eq i64 %i.al, 11
  br i1 %i.am, label %RB_OBJ_FROZEN.exit.i.i24, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

RB_OBJ_FROZEN.exit.i.i24:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.an = and i64 %i.ak, 2048
  %.not.i.i25 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i25, label %rb_io_taint_check.exit29, label %RB_OBJ_FROZEN.exit.thread.i.i23, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i23:                  ; preds = %RB_OBJ_FROZEN.exit.i.i24
  tail call void @rb_error_frozen_object(i64 noundef %i.z) #30
  unreachable

rb_io_taint_check.exit29:                         ; preds = %RB_OBJ_FROZEN.exit.i.i24
  %.phi.trans.insert = getelementptr i8, ptr %i.aj, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34 ; 3 uses
  %.not.i.i30 = icmp eq ptr %.pre, null
  br i1 %.not.i.i30, label %bb.i, label %rb_io_check_initialized.exit.i31

bb.i:                                             ; preds = %rb_io_taint_check.exit29
  %i.ao = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ao, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i31:                 ; preds = %rb_io_taint_check.exit29
  %i.ap = getelementptr i8, ptr %.pre, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !20
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %rb_io_check_closed.exit32

bb.j:                                             ; preds = %rb_io_check_initialized.exit.i31
  tail call void @rb_thread_check_ints() #28
  %i.as = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit32:                        ; preds = %rb_io_check_initialized.exit.i31
  %i.at = getelementptr i8, ptr %.pre, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !39
  %i.av = and i32 %i.au, 16
  %.not17 = icmp eq i32 %i.av, 0
  br i1 %.not17, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.k

bb.k:                                             ; preds = %rb_io_check_closed.exit32
  %i.aw = tail call i64 @rb_io_flush_raw(i64 noundef %i.z, i32 poison) ; 0 uses
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.h, %rb_io_check_closed.exit32, %bb.k, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.g, %rb_io_check_closed.exit21
  %i.ax = tail call fastcc i32 @io_fillbuf(ptr noundef nonnull %i.k)
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.az = getelementptr i8, ptr %i.k, i64 76      ; 3 uses
  %i.ba = load <2 x i32>, ptr %i.az, align 4, !tbaa !7
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !47
  %i.bc = add <2 x i32> %i.ba, <i32 1, i32 -1>
  store <2 x i32> %i.bc, ptr %i.az, align 4, !tbaa !7
  %i.bd = load ptr, ptr %i.t, align 4, !tbaa !71
  %i.be = sext i32 %i.bb to i64
  %i.bf = getelementptr i8, ptr %i.bd, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !86
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %bb.m

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.l
  %.0 = phi i64 [ %i.bj, %bb.l ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  ret i64 %.0
}

declare i64 @rb_ractor_stdout() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_io_ungetbyte(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp ne i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp eq i64 %i.d, 0
  %.not3.i.i.i = and i1 %i.c, %i.e
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 3 uses
  %i.h = and i64 %i.g, 2048
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.i = and i64 %i.g, 31
  %i.j = icmp ne i64 %i.i, 5
  %i.k = and i64 %i.g, 49152
  %.not8.i.i = icmp eq i64 %i.k, 0
  %or.cond.i.i = or i1 %i.j, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 5 uses
  %.not.i.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i.i4, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.n = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.o = getelementptr i8, ptr %i.m, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.r = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.m)
  %i.s = getelementptr i8, ptr %i.m, i64 148
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %rb_io_check_byte_readable.exit, label %bb.e

bb.e:                                             ; preds = %rb_io_check_closed.exit
  %i.u = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_byte_readable.exit:                   ; preds = %rb_io_check_closed.exit
  %i.v = icmp eq i64 %1, 0
  %i.w = and i64 %1, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %rb_type.exit

bb.f:                                             ; preds = %rb_io_check_byte_readable.exit
  %i.z = tail call i64 @llvm.fshl.i64(i64 %1, i64 %1, i64 62)
  switch i64 %i.z, label %bb.g [
    i64 0, label %rb_type.exit.thread
    i64 1, label %rb_type.exit.thread7
    i64 5, label %rb_type.exit.thread
    i64 9, label %rb_type.exit.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %1 to i1
  br i1 %i.aa, label %rb_type.exit.thread9, label %rb_type.exit.thread

rb_type.exit:                                     ; preds = %rb_io_check_byte_readable.exit
  %i.ab = inttoptr i64 %1 to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 31
  switch i32 %i.ae, label %rb_type.exit.thread [
    i32 17, label %rb_type.exit.thread7
    i32 21, label %rb_type.exit.thread9
    i32 10, label %rb_type.exit.thread9
  ]

rb_type.exit.thread9:                             ; preds = %bb.g, %rb_type.exit, %rb_type.exit
  %i.af = tail call i64 @rb_int_modulo(i64 noundef %1, i64 noundef 513) #28 ; 3 uses
  %i.ag = trunc i64 %i.af to i1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_type.exit.thread9
  %i.ah = tail call i64 @rb_fix2int(i64 noundef %i.af) #28
  br label %rb_num2int_inline.exit

bb.i:                                             ; preds = %rb_type.exit.thread9
  %i.ai = tail call i64 @rb_num2int(i64 noundef %i.af) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i5 = phi i64 [ %i.ah, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = trunc i64 %.0.i5 to i8
  store i8 %i.aj, ptr %i.b, align 1, !tbaa !86
  %i.ak = call i64 @rb_str_new(ptr noundef nonnull %i.b, i64 noundef 1) #28 ; 2 uses
  store i64 %i.ak, ptr %i.a, align 8, !tbaa !13
  br label %bb.j

rb_type.exit.thread:                              ; preds = %bb.g, %bb.f, %bb.f, %bb.f, %rb_type.exit
  %i.al = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %rb_type.exit.thread, %rb_num2int_inline.exit
  %i.am = phi i64 [ %.pre, %rb_type.exit.thread ], [ %i.ak, %rb_num2int_inline.exit ]
  call fastcc void @io_ungetbyte(i64 noundef %i.am, ptr noundef nonnull %i.m)
  br label %rb_type.exit.thread7

rb_type.exit.thread7:                             ; preds = %bb.f, %rb_type.exit, %bb.j
  ret i64 4
}

declare i64 @rb_int_modulo(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @io_ungetbyte(i64 noundef %0, ptr noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81   ; 6 uses
  %i.d = getelementptr i8, ptr %1, i64 68         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 4, !tbaa !71   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39
  %i.k = and i32 %i.j, 4096
  %.not38 = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not38, i64 8192, i64 131072
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i64 [ 131072, %bb.b ], [ %i.l, %bb.c ]
  %i.n = getelementptr i8, ptr %1, i64 76
  store i32 0, ptr %i.n, align 4, !tbaa !47
  %i.o = getelementptr i8, ptr %1, i64 80
  store i32 0, ptr %i.o, align 8, !tbaa !46
  %i.p = icmp sgt i64 %i.c, 2147483647
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.198) #30
  unreachable

bb.f:                                             ; preds = %bb.d
  %spec.select42 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 %i.m) ; 2 uses
  %spec.select = trunc i64 %spec.select42 to i32
  %i.r = getelementptr i8, ptr %1, i64 84
  store i32 %spec.select, ptr %i.r, align 4, !tbaa !73
  %i.s = and i64 %spec.select42, 4294967295
  %i.t = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.s, i64 noundef 1) #32 ; 2 uses
  store ptr %i.t, ptr %i.d, align 4, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.u = phi ptr [ %i.t, %bb.f ], [ %i.e, %bb.a ] ; 3 uses
  %i.v = getelementptr i8, ptr %1, i64 84         ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !73
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 80         ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !46   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = add i64 %i.c, %i.aa
  %i.ac = icmp sgt i64 %i.ab, %i.x
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.198) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %1, i64 76        ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = icmp sgt i64 %i.c, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr i8, ptr %i.u, i64 %i.x
  %i.aj = sub nsw i64 0, %i.aa
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.u, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.al, i64 noundef %i.aa, i1 noundef false) #28
  %i.am = load i32, ptr %i.v, align 4, !tbaa !73
  %i.an = load i32, ptr %i.y, align 4, !tbaa !46  ; 2 uses
  %i.ao = sub i32 %i.am, %i.an
  %.pre = load ptr, ptr %i.d, align 4, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = phi ptr [ %.pre, %bb.j ], [ %i.u, %bb.i ]
  %i.aq = phi i32 [ %i.an, %bb.j ], [ %i.z, %bb.i ]
  %i.ar = phi i32 [ %i.ao, %bb.j ], [ %i.af, %bb.i ]
  %i.as = trunc i64 %i.c to i32                   ; 2 uses
  %i.at = sub i32 %i.ar, %i.as                    ; 2 uses
  store i32 %i.at, ptr %i.ae, align 4, !tbaa !47
  %i.au = add i32 %i.aq, %i.as
  store i32 %i.au, ptr %i.y, align 4, !tbaa !46
  %i.av = load i64, ptr %i.a, align 8, !tbaa !16
  %i.aw = and i64 %i.av, 8192
  %.not.i = icmp eq i64 %i.aw, 0
  %i.ax = getelementptr i8, ptr %i.a, i64 24      ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.k, %bb.l
  %i.az = phi ptr [ %i.ay, %bb.l ], [ %i.ax, %bb.k ]
  %i.ba = sext i32 %i.at to i64
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bb, ptr noundef nonnull align 1 %i.az, i64 noundef %i.c, i1 noundef false) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_io_ungetc(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = and i64 %i.f, 2048
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.h = and i64 %i.f, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.f, 49152
  %.not8.i.i = icmp eq i64 %i.j, 0
  %or.cond.i.i = or i1 %i.i, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.k = getelementptr i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 13 uses
  %.not.i.i33 = icmp eq ptr %i.l, null
  br i1 %.not.i.i33, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.m = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !20
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.q = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.l)
  %i.r = trunc i64 %1 to i1
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %rb_io_check_closed.exit
  %i.s = tail call i64 @rb_fix2uint(i64 noundef %1) #28
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr i8, ptr %i.l, i64 96
  %.val32 = load ptr, ptr %i.u, align 8, !tbaa !83 ; 2 uses
  %.not.i = icmp eq ptr %.val32, null
  br i1 %.not.i, label %bb.f, label %io_read_encoding.exit

bb.f:                                             ; preds = %bb.e
  %i.v = tail call ptr @rb_default_external_encoding() #28
  br label %io_read_encoding.exit

io_read_encoding.exit:                            ; preds = %bb.e, %bb.f
  %.0.i34 = phi ptr [ %i.v, %bb.f ], [ %.val32, %bb.e ]
  %i.w = tail call i64 @rb_enc_uint_chr(i32 noundef %i.t, ptr noundef %.0.i34) #28
  store i64 %i.w, ptr %i.a, align 8, !tbaa !13
  br label %bb.j

bb.g:                                             ; preds = %rb_io_check_closed.exit
  %i.x = icmp eq i64 %1, 0
  %i.y = and i64 %1, 6
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.g
  %i.ab = inttoptr i64 %1 to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !16
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 10
  br i1 %i.ae, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.af = tail call i64 @rb_num2uint(i64 noundef %1) #28
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr i8, ptr %i.l, i64 96
  %.val = load ptr, ptr %i.ah, align 8, !tbaa !83 ; 2 uses
  %.not.i35 = icmp eq ptr %.val, null
  br i1 %.not.i35, label %bb.i, label %io_read_encoding.exit37

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call ptr @rb_default_external_encoding() #28
  br label %io_read_encoding.exit37

io_read_encoding.exit37:                          ; preds = %bb.h, %bb.i
  %.0.i36 = phi ptr [ %i.ai, %bb.i ], [ %.val, %bb.h ]
  %i.aj = tail call i64 @rb_enc_uint_chr(i32 noundef %i.ag, ptr noundef %.0.i36) #28
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !13
  br label %bb.j

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.g, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.ak = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %io_read_encoding.exit37, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %io_read_encoding.exit
  %i.al = getelementptr i8, ptr %i.l, i64 104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !72
end_hunk_2
begin_hunk_3_@rb_io_ungetc:bb.a
  %.pre40 = load i64, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  br i1 %.not31, label %bb.t, label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.aq = phi i64 [ %.pre, %._crit_edge ], [ %.pre40, %bb.k ]
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr i8, ptr %i.ar, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !81 ; 5 uses
  %i.au = icmp sgt i64 %i.at, 2147483647
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.av, ptr noundef nonnull @.str.12) #30
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aw = trunc i64 %i.at to i32                  ; 3 uses
  call fastcc void @make_readconv(ptr noundef nonnull %i.l, i32 noundef %i.aw)
  %i.ax = getelementptr i8, ptr %i.l, i64 136     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.l, i64 152     ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !95 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.l, i64 148     ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !45 ; 3 uses
  %i.bc = sub i32 %i.az, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp sgt i64 %i.at, %i.bd
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bf, ptr noundef nonnull @.str.12) #30
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bg = getelementptr i8, ptr %i.l, i64 144     ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !88 ; 2 uses
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = icmp sgt i64 %i.at, %i.bi
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !87 ; 2 uses
  %i.bl = sext i32 %i.az to i64
  %i.bm = getelementptr i8, ptr %i.bk, i64 %i.bl
  %i.bn = sext i32 %i.bb to i64                   ; 2 uses
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr i8, ptr %i.bm, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bk, i64 %i.bi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bp, ptr noundef nonnull align 1 %i.bq, i64 noundef %i.bn, i1 noundef false) #28
  %i.br = load i32, ptr %i.ay, align 8, !tbaa !95
  %i.bs = load i32, ptr %i.ba, align 4, !tbaa !45 ; 2 uses
  %i.bt = sub i32 %i.br, %i.bs
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bu = phi i32 [ %i.bs, %bb.q ], [ %i.bb, %bb.p ]
  %i.bv = phi i32 [ %i.bt, %bb.q ], [ %i.bh, %bb.p ]
  %i.bw = sub i32 %i.bv, %i.aw                    ; 2 uses
  store i32 %i.bw, ptr %i.bg, align 8, !tbaa !88
  %i.bx = add i32 %i.bu, %i.aw
  store i32 %i.bx, ptr %i.ba, align 4, !tbaa !45
  %i.by = load ptr, ptr %i.ax, align 8, !tbaa !87
  %i.bz = sext i32 %i.bw to i64
  %i.ca = getelementptr i8, ptr %i.by, i64 %i.bz
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !13
  %i.cc = inttoptr i64 %i.cb to ptr               ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.ce = and i64 %i.cd, 8192
  %.not.i38 = icmp eq i64 %i.ce, 0
  %i.cf = getelementptr i8, ptr %i.cc, i64 24     ; 2 uses
  br i1 %.not.i38, label %RSTRING_PTR.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.r, %bb.s
  %i.ch = phi ptr [ %i.cg, %bb.s ], [ %i.cf, %bb.r ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ca, ptr noundef nonnull align 1 %i.ch, i64 noundef %i.at, i1 noundef false) #28
  br label %bb.u

bb.t:                                             ; preds = %bb.k
  call fastcc void @io_ungetbyte(i64 noundef %.pre40, ptr noundef nonnull %i.l)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %RSTRING_PTR.exit
  ret i64 4
}

declare i64 @rb_enc_uint_chr(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @make_readconv(ptr noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !96
  %i.e = and i32 %i.d, -28673                     ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !97
  %i.h = getelementptr i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 2 uses
  %.not23 = icmp eq ptr %i.i, null
  br i1 %.not23, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val25 = load ptr, ptr %i.j, align 8, !tbaa !98
  %i.k = getelementptr i8, ptr %0, i64 96
  %.val26 = load ptr, ptr %i.k, align 8, !tbaa !83 ; 2 uses
  %.not.i = icmp eq ptr %.val26, null
  br i1 %.not.i, label %bb.d, label %io_read_encoding.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @rb_default_external_encoding() #28
  br label %io_read_encoding.exit

io_read_encoding.exit:                            ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %.val26, %bb.c ]
  %i.m = getelementptr i8, ptr %.0.i, i64 8
  %.val = load ptr, ptr %i.m, align 8, !tbaa !98
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %io_read_encoding.exit
  %.021 = phi ptr [ %.val25, %io_read_encoding.exit ], [ @.str.199, %bb.b ] ; 2 uses
  %.0 = phi ptr [ %.val, %io_read_encoding.exit ], [ @.str.199, %bb.b ] ; 2 uses
  %i.n = tail call ptr @rb_econv_open_opts(ptr noundef %.021, ptr noundef %.0, i32 noundef %i.e, i64 noundef %i.g) #28 ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !48
  %.not24 = icmp eq ptr %i.n, null
  br i1 %.not24, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i64 @rb_econv_open_exc(ptr noundef %.021, ptr noundef %.0, i32 noundef %i.e) #28
  tail call void @rb_exc_raise(i64 noundef %i.o) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %0, i64 136
  %i.q = getelementptr i8, ptr %0, i64 144
  store i32 0, ptr %i.q, align 8, !tbaa !88
  %i.r = getelementptr i8, ptr %0, i64 148
  store i32 0, ptr %i.r, align 4, !tbaa !45
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 131072) ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 152
  store i32 %spec.store.select, ptr %i.s, align 8, !tbaa !95
  %i.t = zext nneg i32 %spec.store.select to i64
  %i.u = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.t, i64 noundef 1) #32
  store ptr %i.u, ptr %i.p, align 8, !tbaa !87
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_io_fptr_finalize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @rb_io_fptr_cleanup_all(ptr noundef nonnull %0)
  tail call void @ruby_xfree(ptr noundef nonnull %0) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_io_fptr_cleanup_all(ptr noundef initializes((32, 40)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  store i64 4, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @rb_io_fptr_cleanup(ptr noundef nonnull %0, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr i8, ptr %0, i64 192
  store i64 4, ptr %i.e, align 8, !tbaa !41
  %i.f = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.g = load ptr, ptr %i.f, align 4, !tbaa !49   ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %free_io_buffer.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_xfree(ptr noundef nonnull %i.g) #28
  store ptr null, ptr %i.f, align 4, !tbaa !49
  br label %free_io_buffer.exit

free_io_buffer.exit:                              ; preds = %bb.c, %bb.d
  %i.h = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49   ; 2 uses
  %.not.i7 = icmp eq ptr %i.i, null
  br i1 %.not.i7, label %free_io_buffer.exit8, label %bb.e

bb.e:                                             ; preds = %free_io_buffer.exit
  tail call void @ruby_xfree(ptr noundef nonnull %i.i) #28
  store ptr null, ptr %i.h, align 8, !tbaa !49
  br label %free_io_buffer.exit8

free_io_buffer.exit8:                             ; preds = %free_io_buffer.exit, %bb.e
  %i.j = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %free_io_buffer.exit8
  tail call void @rb_econv_close(ptr noundef nonnull %i.k) #28
  store ptr null, ptr %i.j, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %free_io_buffer.exit8
  %i.l = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %clear_readconv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.m) #28
  store ptr null, ptr %i.l, align 8, !tbaa !49
  br label %clear_readconv.exit.i

clear_readconv.exit.i:                            ; preds = %bb.h, %bb.g
  %i.n = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50   ; 2 uses
  %.not.i2.i = icmp eq ptr %i.o, null
  br i1 %.not.i2.i, label %clear_codeconv.exit, label %bb.i

bb.i:                                             ; preds = %clear_readconv.exit.i
  tail call void @rb_econv_close(ptr noundef nonnull %i.o) #28
  store ptr null, ptr %i.n, align 8, !tbaa !50
  br label %clear_codeconv.exit

clear_codeconv.exit:                              ; preds = %clear_readconv.exit.i, %bb.i
  %i.p = getelementptr i8, ptr %0, i64 176
  store i32 0, ptr %i.p, align 8, !tbaa !51
  ret void
}

declare void @ruby_xfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_io_memsize(ptr noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = sext i32 %i.b to i64
  %i.d = add nsw i64 %i.c, 248
  %i.e = getelementptr i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !66
  %i.g = sext i32 %i.f to i64
  %i.h = add nsw i64 %i.d, %i.g
  %i.i = getelementptr i8, ptr %0, i64 152
  %i.j = load i32, ptr %i.i, align 8, !tbaa !95
  %i.k = sext i32 %i.j to i64
  %i.l = add nsw i64 %i.h, %i.k                   ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i64 @rb_econv_memsize(ptr noundef nonnull %i.n) #28
  %i.p = add i64 %i.o, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.p, %bb.b ], [ %i.l, %bb.a ]  ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50   ; 2 uses
  %.not22 = icmp eq ptr %i.r, null
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i64 @rb_econv_memsize(ptr noundef nonnull %i.r) #28
  %i.t = add i64 %i.s, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i64 [ %i.t, %bb.d ], [ %.0, %bb.c ]   ; 2 uses
  %i.u = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !99
  %i.v = getelementptr i8, ptr %i.u, i64 496
  %i.w = load i64, ptr %i.v, align 8, !tbaa !101
  %i.x = getelementptr i8, ptr %0, i64 240
  %i.y = load i64, ptr %i.x, align 8, !tbaa !122
  %i.z = icmp eq i64 %i.y, %i.w
  br i1 %i.z, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %0, i64 208       ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.019.in = phi ptr [ %i.aa, %bb.f ], [ %.019, %bb.g ]
  %.2 = phi i64 [ %.1, %bb.f ], [ %i.ab, %bb.g ]  ; 2 uses
  %.019 = load ptr, ptr %.019.in, align 8, !tbaa !123 ; 2 uses
  %.not23 = icmp eq ptr %.019, %i.aa
  %i.ab = add i64 %.2, 24
  br i1 %.not23, label %.loopexit, label %bb.g, !llvm.loop !124

.loopexit:                                        ; preds = %bb.g, %bb.e
  %.3 = phi i64 [ %.1, %bb.e ], [ %.2, %bb.g ]
  ret i64 %.3
}

declare i64 @rb_econv_memsize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_io_close(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = tail call fastcc ptr @io_close_fptr(i64 noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = getelementptr i8, ptr %i.b, i64 24       ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !125
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %fptr_waitpid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @rb_last_status_clear() #28
  %i.e = load i32, ptr %i.c, align 8, !tbaa !125
  %i.f = call i32 @rb_waitpid(i32 noundef %i.e, ptr noundef nonnull %i.a, i32 noundef 0) #28 ; 0 uses
  store i32 0, ptr %i.c, align 8, !tbaa !125
  br label %fptr_waitpid.exit

fptr_waitpid.exit:                                ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.d

bb.d:                                             ; preds = %fptr_waitpid.exit, %bb.a
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @io_close_fptr(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.b, label %rb_io_get_write_io.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37   ; 3 uses
  %.not.i = icmp eq i64 %i.f, 0
  %.not20 = icmp eq i64 %i.f, %0
  %.not = or i1 %.not.i, %.not20
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %rb_io_get_write_io.exit
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34   ; 3 uses
  %.not17 = icmp eq ptr %i.i, null
  br i1 %.not17, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !20
  %i.l = icmp sgt i32 %i.k, -1
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @rb_io_fptr_cleanup(ptr noundef nonnull %i.i, i32 noundef 1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  %.not18 = icmp eq ptr %.pre, null
  br i1 %.not18, label %bb.i, label %.thread

.thread:                                          ; preds = %rb_io_get_write_io.exit, %bb.d, %bb.c, %bb.e
  %i.m = phi ptr [ %.pre, %bb.e ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %rb_io_get_write_io.exit ] ; 5 uses
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !20
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.q = tail call i64 @rb_thread_io_close_interrupt(ptr noundef nonnull %i.m) #28
  %.not19 = icmp eq i64 %i.q, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @fptr_finalize_flush(ptr noundef nonnull %i.m, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call fastcc void @rb_io_fptr_cleanup(ptr noundef nonnull %i.m, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %.thread, %bb.e, %bb.h
  %.0 = phi ptr [ null, %bb.e ], [ %i.m, %bb.h ], [ null, %.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 0, 21) i64 @rb_io_closed_p(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.b, label %rb_io_get_write_io.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37   ; 3 uses
end_hunk_3
begin_hunk_4_@rb_io_closed_p:bb.a
; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, -7) i64 @rb_io_binmode(i64 noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 6 uses
  %.not.i.i10 = icmp eq ptr %i.k, null
  br i1 %.not.i.i10, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.q = getelementptr i8, ptr %i.k, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !48   ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rb_io_check_closed.exit
  tail call void @rb_econv_binmode(ptr noundef nonnull %i.r) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rb_io_check_closed.exit
  %i.s = getelementptr i8, ptr %i.k, i64 160
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 2 uses
  %.not9 = icmp eq ptr %i.t, null
  br i1 %.not9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @rb_econv_binmode(ptr noundef nonnull %i.t) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr i8, ptr %i.k, i64 20       ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !39
  %i.w = and i32 %i.v, -4101
  %i.x = or disjoint i32 %i.w, 4
  store i32 %i.x, ptr %i.u, align 4, !tbaa !39
  %i.y = getelementptr i8, ptr %i.k, i64 180      ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !126
  %i.aa = and i32 %i.z, -32513
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !126
  ret i64 %0
}

declare void @rb_econv_binmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i64 1, -7) i64 @rb_io_ascii8bit_binmode(i64 noundef returned %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i2, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call fastcc void @io_ascii8bit_binmode(ptr noundef nonnull %i.k)
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @io_ascii8bit_binmode(ptr noundef captures(none) initializes((96, 116), (120, 128), (176, 180)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128        ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_econv_close(ptr noundef nonnull %i.b) #28
  store ptr null, ptr %i.a, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 160        ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_econv_close(ptr noundef nonnull %i.d) #28
  store ptr null, ptr %i.c, align 8, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !39
  %i.g = and i32 %i.f, -4101
  %i.h = or disjoint i32 %i.g, 4
  store i32 %i.h, ptr %i.e, align 4, !tbaa !39
  %i.i = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.j = getelementptr i8, ptr %0, i64 96
  store ptr %i.i, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr i8, ptr %0, i64 104
  store ptr null, ptr %i.k, align 8, !tbaa !72
  %i.l = getelementptr i8, ptr %0, i64 112
  store i32 0, ptr %i.l, align 8, !tbaa !96
  %i.m = getelementptr i8, ptr %0, i64 120
  store i64 4, ptr %i.m, align 8, !tbaa !97
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_econv_close(ptr noundef nonnull %i.n) #28
  store ptr null, ptr %i.a, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %clear_readconv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.p) #28
  store ptr null, ptr %i.o, align 8, !tbaa !49
  br label %clear_readconv.exit.i

clear_readconv.exit.i:                            ; preds = %bb.h, %bb.g
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %.not.i2.i = icmp eq ptr %i.q, null
  br i1 %.not.i2.i, label %clear_codeconv.exit, label %bb.i

bb.i:                                             ; preds = %clear_readconv.exit.i
  tail call void @rb_econv_close(ptr noundef nonnull %i.q) #28
  store ptr null, ptr %i.c, align 8, !tbaa !50
  br label %clear_codeconv.exit

clear_codeconv.exit:                              ; preds = %clear_readconv.exit.i, %bb.i
  %i.r = getelementptr i8, ptr %0, i64 176
  store i32 0, ptr %i.r, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, -4) i32 @rb_io_modestr_fmode(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1          ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !86      ; 2 uses
  switch i8 %i.b, label %.loopexit33 [
    i8 114, label %bb.c
    i8 119, label %.thread
    i8 97, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.022 = phi i32 [ 194, %bb.b ], [ 1, %bb.a ]    ; 3 uses
  %i.c = load i8, ptr %i.a, align 1, !tbaa !86    ; 3 uses
  %.not37 = icmp eq i8 %i.c, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

.thread:                                          ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !86    ; 2 uses
  %.not3757 = icmp eq i8 %i.d, 0
  br i1 %.not3757, label %.loopexit.thread, label %.lr.ph.split.us.preheader

.lr.ph:                                           ; preds = %bb.c
  %.not29 = icmp eq i8 %i.b, 119
  br i1 %.not29, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.thread, %.lr.ph
  %.ph = phi i8 [ %i.d, %.thread ], [ %i.c, %.lr.ph ]
  %.138.us.ph = phi i32 [ 2178, %.thread ], [ %.022, %.lr.ph ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.g
  %i.e = phi i8 [ %i.h, %bb.g ], [ %.ph, %.lr.ph.split.us.preheader ]
  %.039.us = phi ptr [ %i.f, %bb.g ], [ %i.a, %.lr.ph.split.us.preheader ]
  %.138.us = phi i32 [ %i.g, %bb.g ], [ %.138.us.ph, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.f = getelementptr i8, ptr %.039.us, i64 1    ; 3 uses
  switch i8 %i.e, label %.loopexit33 [
    i8 98, label %bb.f
    i8 116, label %bb.e
    i8 43, label %bb.d
    i8 120, label %bb.g
    i8 58, label %.split.us
  ]

bb.d:                                             ; preds = %.lr.ph.split.us
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph.split.us
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us, %bb.f, %bb.e, %bb.d
  %.sink = phi i32 [ 4, %bb.f ], [ 4096, %bb.e ], [ 3, %bb.d ], [ 1024, %.lr.ph.split.us ]
  %i.g = or i32 %.138.us, %.sink                  ; 2 uses
  %i.h = load i8, ptr %i.f, align 1, !tbaa !86    ; 2 uses
  %.not.us = icmp eq i8 %i.h, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !127

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.m
  %i.i = phi i8 [ %i.u, %bb.m ], [ %i.c, %.lr.ph ]
  %.039 = phi ptr [ %i.j, %bb.m ], [ %i.a, %.lr.ph ]
  %.138 = phi i32 [ %i.t, %bb.m ], [ %.022, %.lr.ph ] ; 2 uses
  %i.j = getelementptr i8, ptr %.039, i64 1       ; 3 uses
  switch i8 %i.i, label %.loopexit33 [
    i8 98, label %bb.m
    i8 116, label %bb.h
    i8 43, label %bb.i
    i8 58, label %.split.us
  ]

bb.h:                                             ; preds = %.lr.ph.split
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph.split
  br label %bb.m

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi ptr [ %i.f, %.lr.ph.split.us ], [ %i.j, %.lr.ph.split ] ; 4 uses
  %.us-phi40 = phi i32 [ %.138.us, %.lr.ph.split.us ], [ %.138, %.lr.ph.split ] ; 2 uses
  %i.k = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.us-phi, i32 noundef 58) #33 ; 2 uses
  %.not25 = icmp eq ptr %i.k, null
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split.us
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %.us-phi to i64
  %i.n = sub i64 %i.l, %i.m
  br label %bb.l

bb.k:                                             ; preds = %.split.us
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.us-phi) #33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = phi i64 [ %i.n, %bb.j ], [ %i.o, %bb.k ]
  %i.q = icmp sgt i64 %i.p, 4
  br i1 %i.q, label %io_encname_bom_p.exit, label %io_encname_bom_p.exit.thread

io_encname_bom_p.exit:                            ; preds = %bb.l
  %i.r = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull readonly %.us-phi, ptr noundef nonnull @bom_prefix, i64 noundef 4) #33
  %.fr = freeze i32 %i.r
  %.not32 = icmp eq i32 %.fr, 0
  %i.s = or i32 %.us-phi40, 1048576
  br i1 %.not32, label %.loopexit, label %io_encname_bom_p.exit.thread

io_encname_bom_p.exit.thread:                     ; preds = %bb.l, %io_encname_bom_p.exit
  br label %.loopexit

bb.m:                                             ; preds = %.lr.ph.split, %bb.i, %bb.h
  %.sink76 = phi i32 [ 3, %bb.i ], [ 4096, %bb.h ], [ 4, %.lr.ph.split ]
  %i.t = or i32 %.138, %.sink76                   ; 2 uses
  %i.u = load i8, ptr %i.j, align 1, !tbaa !86    ; 2 uses
  %.not = icmp eq i8 %i.u, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !127

.loopexit:                                        ; preds = %bb.m, %bb.g, %bb.c, %io_encname_bom_p.exit.thread, %io_encname_bom_p.exit
  %.3 = phi i32 [ %i.s, %io_encname_bom_p.exit ], [ %.us-phi40, %io_encname_bom_p.exit.thread ], [ %.022, %bb.c ], [ %i.g, %bb.g ], [ %i.t, %bb.m ] ; 2 uses
  %i.v = and i32 %.3, 4100
  %or.cond.not = icmp eq i32 %i.v, 4100
  br i1 %or.cond.not, label %.loopexit33, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.thread, %.loopexit
  %.364 = phi i32 [ %.3, %.loopexit ], [ 2178, %.thread ]
  ret i32 %.364

.loopexit33:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.loopexit, %bb.a
  %i.w = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.14, ptr noundef nonnull %0) #30
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i32 0, 4096) i32 @rb_io_oflags_fmode(i32 noundef %0) local_unnamed_addr #11 {
switch.lookup:
  %i.a = and i32 %0, 3
  %i.b = zext nneg i32 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.b
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.c = lshr i32 %0, 4
  %i.d = and i32 %i.c, 64
  %i.e = shl i32 %0, 2
  %i.f = and i32 %i.e, 2048
  %i.g = shl i32 %0, 1
  %i.h = and i32 %i.g, 128
  %i.i = shl i32 %0, 3
  %i.j = and i32 %i.i, 1024
  %spec.select = or disjoint i32 %i.f, %i.d
  %.2 = or disjoint i32 %spec.select, %i.h
  %.3 = or disjoint i32 %.2, %i.j
  %.4 = or disjoint i32 %.3, %switch.load
  ret i32 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2048) i32 @rb_io_modestr_oflags(ptr noundef %0) local_unnamed_addr #0 {
switch.lookup:
  %i.a = tail call i32 @rb_io_modestr_fmode(ptr noundef %0) ; 5 uses
  %i.b = and i32 %i.a, 3
  %i.c = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.c
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.d = shl i32 %i.a, 4
  %i.e = and i32 %i.d, 1024
  %i.f = lshr i32 %i.a, 2
  %i.g = and i32 %i.f, 512
  %i.h = lshr i32 %i.a, 1
  %i.i = and i32 %i.h, 64
  %i.j = lshr i32 %i.a, 3
  %i.k = and i32 %i.j, 128
  %spec.select.i = or disjoint i32 %i.g, %i.e
  %.2.i = or disjoint i32 %spec.select.i, %i.i
end_hunk_4
begin_hunk_5_@argf_next_argv:bb.a
  br i1 %.not108, label %.thread155, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ey = call i32 @getuid() #28
  %i.ez = or i32 %i.ey, %i.ev
  %or.cond = icmp eq i32 %i.ez, 0
  br i1 %or.cond, label %bb.ap, label %.thread155

bb.ap:                                            ; preds = %bb.ao
  %i.fa = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.fb = inttoptr i64 %i.fa to ptr               ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !16
  %i.fd = and i64 %i.fc, 8192
  %.not.i132 = icmp eq i64 %i.fd, 0
  %i.fe = getelementptr i8, ptr %i.fb, i64 24     ; 2 uses
  br i1 %.not.i132, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !86
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fg = phi ptr [ %i.ff, %bb.aq ], [ %i.fe, %bb.ap ]
  %i.fh = call ptr @rb_errno_ptr() #28
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !7
  %i.fj = call ptr @strerror(i32 noundef %i.fi) #28
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.224, i64 noundef %i.fa, i64 noundef %.098, ptr noundef %i.fj) #34
  %i.fk = call i32 @close(i32 noundef %i.cn) #28  ; 0 uses
  %i.fl = call i32 @close(i32 noundef %i.eq) #28  ; 0 uses
  %i.fm = call i32 @unlink(ptr noundef %i.fg) #28 ; 0 uses
  br label %bb.ay

.thread155:                                       ; preds = %.thread, %bb.an, %bb.ao
  %i.fn = load i64, ptr @rb_cFile, align 8, !tbaa !13
  %i.fo = call fastcc i64 @prep_io(i32 noundef %i.eq, i32 noundef 2, i64 noundef %i.fn, ptr noundef %i.ca) ; 2 uses
  call void @rb_ractor_stdout_set(i64 noundef %i.fo) #28
  br i1 %.not109, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.thread155
  %i.fp = load i64, ptr @rb_stdout, align 8, !tbaa !13
  %i.fq = call i64 @rb_io_binmode(i64 noundef %i.fp) ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %.thread155, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %bb.at
  %.1100 = phi i64 [ %i.fo, %bb.at ], [ 4, %bb.aa ] ; 4 uses
  %i.fr = load i64, ptr @rb_cFile, align 8, !tbaa !13
  %i.fs = call fastcc i64 @prep_io(i32 noundef %i.cn, i32 noundef 1, i64 noundef %i.fr, ptr noundef %i.ca) ; 2 uses
  %i.ft = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  store i64 %i.fs, ptr %i.fu, align 8, !tbaa !77
  %i.fv = icmp eq i64 %.1100, 4
  br i1 %i.fv, label %.thread163, label %bb.au

bb.au:                                            ; preds = %.loopexit
  %i.fw = inttoptr i64 %i.fs to ptr
  %i.fx = getelementptr i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i, label %bb.av, label %rb_io_get_fptr.exit.i

bb.av:                                            ; preds = %bb.au
  %i.fz = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fz, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_fptr.exit.i:                            ; preds = %bb.au
  %i.ga = and i64 %.1100, -5
  %.not7.i = icmp eq i64 %i.ga, 0
  br i1 %.not7.i, label %rb_io_set_write_io.exit, label %bb.aw

bb.aw:                                            ; preds = %rb_io_get_fptr.exit.i
  %i.gb = inttoptr i64 %.1100 to ptr
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !34
  %.not.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i.i, label %bb.ax, label %rb_io_set_write_io.exit

bb.ax:                                            ; preds = %bb.aw
  %i.ge = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ge, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_set_write_io.exit:                          ; preds = %rb_io_get_fptr.exit.i, %bb.aw
  %.0.i134 = phi i64 [ 0, %rb_io_get_fptr.exit.i ], [ %.1100, %bb.aw ]
  %i.gf = getelementptr i8, ptr %i.fy, i64 88
  store i64 %.0.i134, ptr %i.gf, align 8, !tbaa !37
  br label %.thread163

.thread163:                                       ; preds = %.loopexit, %rb_io_set_write_io.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr %i.b, ptr %i.d, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #28, !srcloc !185
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.gh = load volatile i64, ptr %i.gg, align 8, !tbaa !13 ; 0 uses
  %.pre188 = load ptr, ptr %i.x, align 8, !tbaa !75
  br label %.loopexit168

bb.ay:                                            ; preds = %bb.am, %bb.ak, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.bk

.loopexit168:                                     ; preds = %bb.y, %.thread163
  %i.gi = phi ptr [ %.pre188, %.thread163 ], [ %i.cj, %bb.y ] ; 3 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 82
  %i.gk = load i8, ptr %i.gj, align 2, !tbaa !186
  %.not112 = icmp eq i8 %i.gk, 0
  br i1 %.not112, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.loopexit168
  %i.gl = getelementptr i8, ptr %i.gi, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !77
  %i.gn = call i64 @rb_io_ascii8bit_binmode(i64 noundef %i.gm) ; 0 uses
  %.pre189 = load ptr, ptr %i.x, align 8, !tbaa !75
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.loopexit168
  %i.go = phi ptr [ %.pre189, %bb.az ], [ %i.gi, %.loopexit168 ]
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !77 ; 5 uses
  %i.gr = icmp ne i64 %i.gq, 0
  %i.gs = and i64 %i.gq, 7
  %i.gt = icmp eq i64 %i.gs, 0
  %.not3.i.i.i136 = and i1 %i.gr, %i.gt
  br i1 %.not3.i.i.i136, label %RB_OBJ_FROZEN.exit.i.i138, label %RB_OBJ_FROZEN.exit.thread.i.i137, !prof !15

RB_OBJ_FROZEN.exit.i.i138:                        ; preds = %bb.ba
  %i.gu = inttoptr i64 %i.gq to ptr               ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !16 ; 3 uses
  %i.gw = and i64 %i.gv, 2048
  %.not.i.i139 = icmp eq i64 %i.gw, 0
  br i1 %.not.i.i139, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i140, label %RB_OBJ_FROZEN.exit.thread.i.i137, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i137:                 ; preds = %RB_OBJ_FROZEN.exit.i.i138, %bb.ba
  call void @rb_error_frozen_object(i64 noundef %i.gq) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i140:            ; preds = %RB_OBJ_FROZEN.exit.i.i138
  %i.gx = and i64 %i.gv, 31
  %i.gy = icmp ne i64 %i.gx, 5
  %i.gz = and i64 %i.gv, 49152
  %.not8.i.i141 = icmp eq i64 %i.gz, 0
  %or.cond.i.i142 = or i1 %i.gy, %.not8.i.i141
  br i1 %or.cond.i.i142, label %rb_io_taint_check.exit143, label %bb.bb, !prof !19

bb.bb:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i140
  call void @rb_str_modify(i64 noundef %i.gq) #28
  br label %rb_io_taint_check.exit143

rb_io_taint_check.exit143:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i140, %bb.bb
  %i.ha = getelementptr i8, ptr %i.gu, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !34 ; 8 uses
  %.not.i.i144 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i144, label %bb.bc, label %rb_io_check_initialized.exit.i145

bb.bc:                                            ; preds = %rb_io_taint_check.exit143
  %i.hc = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hc, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i145:                ; preds = %rb_io_taint_check.exit143
  %i.hd = getelementptr i8, ptr %i.hb, i64 16
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !20
  %i.hf = icmp slt i32 %i.he, 0
  br i1 %i.hf, label %bb.bd, label %rb_io_check_closed.exit146

bb.bd:                                            ; preds = %rb_io_check_initialized.exit.i145
  call void @rb_thread_check_ints() #28
  %i.hg = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hg, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit146:                       ; preds = %rb_io_check_initialized.exit.i145
  %i.hh = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.hi = getelementptr i8, ptr %i.hh, i64 48     ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !187
  %.not113 = icmp eq ptr %i.hj, null
  br i1 %.not113, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %rb_io_check_closed.exit146
  %i.hk = getelementptr i8, ptr %i.hb, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %i.hi, i64 32, i1 false), !tbaa.struct !152
  %i.hl = getelementptr i8, ptr %i.hb, i64 128    ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !48 ; 2 uses
  %.not.i.i147 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i147, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @rb_econv_close(ptr noundef nonnull %i.hm) #28
  store ptr null, ptr %i.hl, align 8, !tbaa !48
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hn = getelementptr i8, ptr %i.hb, i64 136    ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i148, label %clear_readconv.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @ruby_xfree(ptr noundef nonnull %i.ho) #28
  store ptr null, ptr %i.hn, align 8, !tbaa !49
  br label %clear_readconv.exit.i

clear_readconv.exit.i:                            ; preds = %bb.bh, %bb.bg
  %i.hp = getelementptr i8, ptr %i.hb, i64 160    ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !50 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.hq, null
  br i1 %.not.i2.i, label %clear_codeconv.exit, label %bb.bi

bb.bi:                                            ; preds = %clear_readconv.exit.i
  call void @rb_econv_close(ptr noundef nonnull %i.hq) #28
  store ptr null, ptr %i.hp, align 8, !tbaa !50
  br label %clear_codeconv.exit

clear_codeconv.exit:                              ; preds = %clear_readconv.exit.i, %bb.bi
  %i.hr = getelementptr i8, ptr %i.hb, i64 176
  store i32 0, ptr %i.hr, align 8, !tbaa !51
  br label %.thread166

bb.bj:                                            ; preds = %rb_io_check_closed.exit146
  %i.hs = getelementptr i8, ptr %i.hb, i64 112    ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !96
  %i.hu = and i32 %i.ht, -32513
  store i32 %i.hu, ptr %i.hs, align 8
  br label %.thread166

.thread166:                                       ; preds = %clear_codeconv.exit, %bb.bj
  %i.hv = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.hw = getelementptr i8, ptr %i.hv, i64 81
  store i8 0, ptr %i.hw, align 1, !tbaa !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.bn

bb.bk:                                            ; preds = %bb.ay, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.t

bb.bl:                                            ; preds = %rb_array_len.exit126
  %i.hx = getelementptr i8, ptr %i.bj, i64 81
  store i8 1, ptr %i.hx, align 1, !tbaa !174
  br label %bb.bp

.thread204:                                       ; preds = %rb_array_len.exit123, %bb.k, %bb.p
  %i.hy = load i64, ptr @rb_stdin, align 8, !tbaa !13
  %i.hz = getelementptr i8, ptr %i.y, i64 8
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !77
  %i.ia = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.26, i64 noundef 1) #28
  %i.ib = load ptr, ptr %i.x, align 8, !tbaa !75  ; 2 uses
  store i64 %i.ia, ptr %i.ib, align 8, !tbaa !178
  %i.ic = getelementptr i8, ptr %i.ib, i64 40
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !179
  %.not103 = icmp eq i64 %i.id, 0
  br i1 %.not103, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.thread204
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.225) #34
  %i.ie = load i64, ptr @orig_stdout, align 8, !tbaa !13
  tail call void @rb_ractor_stdout_set(i64 noundef %i.ie) #28
  br label %bb.bn

bb.bn:                                            ; preds = %.thread166, %bb.p, %bb.bm, %.thread204
  %i.if = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.ig = getelementptr i8, ptr %i.if, i64 80     ; 2 uses
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !175
  %i.ii = icmp eq i8 %i.ih, -1
  br i1 %i.ii, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i8 1, ptr %i.ig, align 8, !tbaa !175
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.bl
  %.0 = phi i32 [ 0, %bb.bl ], [ 1, %bb.bo ], [ 1, %bb.bn ]
  ret i32 %.0
}

declare void @rb_lastline_set(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_stdio_set_default_encoding() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 4, ptr %i.a, align 8, !tbaa !13
  %i.b = load i64, ptr @rb_stdin, align 8, !tbaa !13
  %i.c = call i64 @rb_io_set_encoding(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.b) ; 0 uses
  %i.d = load i64, ptr @rb_stdout, align 8, !tbaa !13
  %i.e = call i64 @rb_io_set_encoding(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.d) ; 0 uses
  %i.f = load i64, ptr @rb_stderr, align 8, !tbaa !13
  %i.g = call i64 @rb_io_set_encoding(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_set_encoding(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 11
  br i1 %i.h, label %rb_scan_args_n_opt.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = load i64, ptr @id_set_encoding, align 8, !tbaa !13
  %i.j = tail call i32 @rb_keyword_given_p() #28
  %i.k = icmp ne i32 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = tail call i64 @rb_funcallv_kw(i64 noundef %2, i64 noundef %i.i, i32 noundef %0, ptr noundef %1, i32 noundef %i.l) #28
  br label %bb.i

rb_scan_args_n_opt.exit:                          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.n = icmp sgt i32 %0, 0
  br i1 %i.n, label %bb.b, label %.thread

bb.b:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.o = zext nneg i32 %0 to i64
  %i.p = getelementptr [8 x i8], ptr %1, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !13
  %i.s = tail call i32 @rb_keyword_given_p() #28
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = tail call i64 @rb_hash_dup(i64 noundef %i.r) #28
  %i.u = add nsw i32 %0, -1                       ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.c
  %.1.i29 = phi i32 [ %i.u, %bb.c ], [ %0, %bb.b ] ; 3 uses
  %.188.i28 = phi i64 [ %i.t, %bb.c ], [ 4, %bb.b ]
  %i.w = load i64, ptr %1, align 8, !tbaa !13
  %i.x = icmp samesign ugt i32 %.1.i29, 1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.y = getelementptr i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.d
  %i.aa = phi i64 [ %i.z, %bb.d ], [ 4, %.preheader ]
  %.185.i.lcssa = phi i32 [ 2, %bb.d ], [ 1, %.preheader ]
  %i.ab = icmp eq i32 %.185.i.lcssa, %.1.i29
  br i1 %i.ab, label %RB_OBJ_FROZEN.exit.i.i, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %bb.e, %bb.c
  %.1.i14 = phi i32 [ 0, %bb.c ], [ %.1.i29, %bb.e ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i14, i32 noundef 1, i32 noundef 2) #30
  unreachable

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.e
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !16  ; 3 uses
  %i.ad = and i64 %i.ac, 2048
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i
  tail call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.ae = and i64 %i.ac, 31
  %i.af = icmp ne i64 %i.ae, 5
  %i.ag = and i64 %i.ac, 49152
  %.not8.i.i = icmp eq i64 %i.ag, 0
  %or.cond.i.i = or i1 %i.af, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.f, !prof !19

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.f
  %i.ah = getelementptr i8, ptr %i.e, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i10, label %bb.g, label %rb_io_check_initialized.exit.i

bb.g:                                             ; preds = %rb_io_taint_check.exit
  %i.aj = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !20
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %rb_io_check_closed.exit

bb.h:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
end_hunk_5
begin_hunk_6_@rb_f_select:bb.a
  %.not.i.i.i = icmp eq i64 %i.r, -9223372036854775806
  br i1 %.not.i.i.i, label %is_pos_inf.exit.thread17, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.neg.i.i.i = ashr i64 %i.r, 63
  %i.ag = add nsw i64 %.neg.i.i.i, 2
  %i.ah = and i64 %i.r, -4
  %i.ai = or i64 %i.ag, %i.ah                     ; 2 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.ai, i64 range(i64 1, 0) %i.ai, i64 61)
  %i.ak = bitcast i64 %i.aj to double
  br label %is_pos_inf.exit

bb.o:                                             ; preds = %RB_FLOAT_TYPE_P.exit.i
  %i.al = getelementptr i8, ptr %i.ac, i64 16
  %i.am = load double, ptr %i.al, align 8, !tbaa !190
  br label %is_pos_inf.exit

is_pos_inf.exit:                                  ; preds = %bb.n, %bb.o
  %.0.i4.i = phi double [ %i.am, %bb.o ], [ %i.ak, %bb.n ]
  %i.an = fcmp une double %.0.i4.i, +inf
  br i1 %i.an, label %is_pos_inf.exit.thread17, label %rb_scan_args_set.exit.thread

is_pos_inf.exit.thread17:                         ; preds = %bb.l, %RB_FLOAT_TYPE_P.exit.i, %bb.m, %is_pos_inf.exit
  %i.ao = tail call { i64, i64 } @rb_time_interval(i64 noundef %i.r) #28 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = extractvalue { i64, i64 } %i.ao, 1
  store i64 %i.ap, ptr %4, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %rb_scan_args_set.exit, %is_pos_inf.exit, %.thread, %is_pos_inf.exit.thread17
  %.sink40 = phi ptr [ %4, %is_pos_inf.exit.thread17 ], [ null, %.thread ], [ null, %is_pos_inf.exit ], [ null, %rb_scan_args_set.exit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %.sink40, ptr %i.ar, align 8, !tbaa !193
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @rb_fd_init(ptr noundef nonnull %i.as) #28
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @rb_fd_init(ptr noundef nonnull %i.at) #28
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @rb_fd_init(ptr noundef nonnull %i.au) #28
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @rb_fd_init(ptr noundef nonnull %i.av) #28
  %i.aw = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.ax = call i64 @rb_ensure(ptr noundef nonnull @select_call, i64 noundef %i.aw, ptr noundef nonnull @select_end, i64 noundef %i.aw) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %rb_scan_args_set.exit.thread
  %.1 = phi i64 [ %i.ax, %rb_scan_args_set.exit.thread ], [ %i.b, %bb.b ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_readlines(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = load i64, ptr @argf, align 8, !tbaa !13  ; 2 uses
  %i.b = icmp eq i64 %2, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @argf_readlines(i32 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @rb_f_readlines.rbimpl_id, align 8, !tbaa !13 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.d = tail call i64 @rb_intern2(ptr noundef nonnull @.str.49, i64 noundef 9) #28 ; 3 uses
  store i64 %i.d, ptr @rb_f_readlines.rbimpl_id, align 8, !tbaa !13
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !153

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.c
  %.lcssa.i = phi i64 [ %.pr.i, %bb.c ], [ %i.d, %.lr.ph.i ]
  %i.e = tail call i32 @rb_keyword_given_p() #28
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i32
  %i.h = tail call i64 @rb_funcallv_kw(i64 noundef %i.a, i64 noundef %.lcssa.i, i32 noundef %0, ptr noundef %1, i32 noundef %i.g) #28
  br label %bb.d

bb.d:                                             ; preds = %rbimpl_intern_const.exit, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.h, %rbimpl_intern_const.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_backquote(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.f = call i64 @rb_string_value(ptr noundef nonnull %i.c) #28 ; 0 uses
  call void @rb_last_status_clear() #28
  %i.g = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.b, align 8, !tbaa !13
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !81
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.h, align 8, !tbaa !16
  %i.m = and i64 %i.l, 8192
  %.not.i.i.i = icmp eq i64 %i.m, 0
  %i.n = getelementptr i8, ptr %i.h, i64 24       ; 2 uses
  br i1 %.not.i.i.i, label %RSTRING_PTR.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.o, %bb.c ], [ %i.n, %bb.b ]
  %i.q = load i8, ptr %i.p, align 1, !tbaa !86
  %i.r = icmp eq i8 %i.q, 45
  br i1 %i.r, label %pipe_open_s.exit, label %bb.d

bb.d:                                             ; preds = %RSTRING_PTR.exit.i.i, %bb.a
  %i.s = call i64 @rb_execarg_new(i32 noundef 1, ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef 0) #28
  br label %pipe_open_s.exit

pipe_open_s.exit:                                 ; preds = %RSTRING_PTR.exit.i.i, %bb.d
  %.0.i = phi i64 [ %i.s, %bb.d ], [ 4, %RSTRING_PTR.exit.i.i ]
  %i.t = call fastcc noundef i64 @pipe_open(i64 noundef %.0.i, i32 noundef 1, ptr noundef null) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.t, ptr %i.d, align 8, !tbaa !13
  %i.u = icmp eq i64 %i.t, 4
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %pipe_open_s.exit
  %i.v = call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #28
  br label %bb.r

bb.f:                                             ; preds = %pipe_open_s.exit
  %i.w = icmp ne i64 %i.t, 0
  %i.x = and i64 %i.t, 7
  %i.y = icmp eq i64 %i.x, 0
  %.not3.i.i.i = and i1 %i.w, %i.y
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.f
  %i.z = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16  ; 3 uses
  %i.ab = and i64 %i.aa, 2048
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.f
  call void @rb_error_frozen_object(i64 noundef %i.t) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.ac = and i64 %i.aa, 31
  %i.ad = icmp ne i64 %i.ac, 5
  %i.ae = and i64 %i.aa, 49152
  %.not8.i.i = icmp eq i64 %i.ae, 0
  %or.cond.i.i = or i1 %i.ad, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.g, !prof !19

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  call void @rb_str_modify(i64 noundef %i.t) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.g
  %i.af = getelementptr i8, ptr %i.z, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34 ; 7 uses
  %.not.i.i5 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i5, label %bb.h, label %rb_io_check_initialized.exit.i

bb.h:                                             ; preds = %rb_io_taint_check.exit
  %i.ah = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.ai = getelementptr i8, ptr %i.ag, i64 16     ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %rb_io_check_closed.exit

bb.i:                                             ; preds = %rb_io_check_initialized.exit.i
  call void @rb_thread_check_ints() #28
  %i.al = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.al, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.am = getelementptr i8, ptr %i.ag, i64 80
  %i.an = load i32, ptr %i.am, align 8, !tbaa !46
  %i.ao = sext i32 %i.an to i64                   ; 3 uses
  %i.ap = call i32 @fstat(i32 noundef %i.aj, ptr noundef nonnull %2) #28
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %bb.o

bb.j:                                             ; preds = %rb_io_check_closed.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !180
  %i.at = and i32 %i.as, 61440
  %i.au = icmp eq i32 %i.at, 32768
  br i1 %i.au, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.av = call fastcc i32 @io_fflush(ptr noundef nonnull %i.ag)
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.ag) #31
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ax = load i32, ptr %i.ai, align 8, !tbaa !20
  %i.ay = call i64 @lseek(i32 noundef %i.ax, i64 noundef 0, i32 noundef 1) #28 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !196 ; 2 uses
  %i.bb = icmp sge i64 %i.ba, %i.ay
  %i.bc = icmp sgt i64 %i.ay, -1
  %or.cond.i = and i1 %i.bc, %i.bb
  br i1 %or.cond.i, label %bb.n, label %remain_size.exit

bb.n:                                             ; preds = %bb.m
  %i.bd = sub i64 %i.ao, %i.ay
  %i.be = add i64 %i.bd, %i.ba
  br label %remain_size.exit

bb.o:                                             ; preds = %bb.j, %rb_io_check_closed.exit
  %i.bf = add nsw i64 %i.ao, 8192
  br label %remain_size.exit

remain_size.exit:                                 ; preds = %bb.m, %bb.n, %bb.o
  %.0.i6 = phi i64 [ %i.be, %bb.n ], [ %i.ao, %bb.m ], [ %i.bf, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.bg = call fastcc i64 @read_all(ptr noundef nonnull %i.ag, i64 noundef %.0.i6, i64 noundef 4)
  %i.bh = call fastcc ptr @io_close_fptr(i64 noundef %i.t) ; 2 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %rb_io_close.exit, label %bb.p

bb.p:                                             ; preds = %remain_size.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bi = getelementptr i8, ptr %i.bh, i64 24     ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !125
  %.not.i.i7 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i7, label %fptr_waitpid.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @rb_last_status_clear() #28
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !125
  %i.bl = call i32 @rb_waitpid(i32 noundef %i.bk, ptr noundef nonnull %i.a, i32 noundef 0) #28 ; 0 uses
  store i32 0, ptr %i.bi, align 8, !tbaa !125
  br label %fptr_waitpid.exit.i

fptr_waitpid.exit.i:                              ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %rb_io_close.exit

rb_io_close.exit:                                 ; preds = %remain_size.exit, %fptr_waitpid.exit.i
  call fastcc void @rb_io_fptr_cleanup_all(ptr noundef nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store ptr %i.d, ptr %i.e, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #28, !srcloc !197
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.bn = load volatile i64, ptr %i.bm, align 8, !tbaa !13 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %rb_io_close.exit, %bb.e
  %.0 = phi i64 [ %i.v, %bb.e ], [ %i.bg, %rb_io_close.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_p(i32 noundef %0, ptr noundef %1, i64 %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %bb.d

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = tail call i64 @rb_inspect(i64 noundef %i.c) #28
  %i.e = tail call i64 @rb_obj_as_string(i64 noundef %i.d) #28
  %i.f = tail call i64 @rb_uninterruptible(ptr noundef nonnull @rb_p_write, i64 noundef %i.e) #28 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !198

._crit_edge:                                      ; preds = %.lr.ph
  %i.g = icmp eq i32 %0, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.h = load i64, ptr %1, align 8, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.i = zext nneg i32 %0 to i64
  %i.j = tail call i64 @rb_ary_new_from_values(i64 noundef %i.i, ptr noundef nonnull %1) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %i.j, %bb.c ], [ 4, %bb.a ]
  %i.k = tail call i64 @rb_ractor_stdout() #28    ; 4 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = and i64 %i.k, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  br i1 %i.o, label %rb_p_result.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.d
  %i.p = inttoptr i64 %i.k to ptr
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = and i64 %i.q, 31
  %i.s = icmp eq i64 %i.r, 11
  br i1 %i.s, label %bb.e, label %rb_p_result.exit

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.t = tail call i64 @rb_uninterruptible(ptr noundef nonnull @rb_io_flush, i64 noundef %i.k) #28 ; 0 uses
  br label %rb_p_result.exit

rb_p_result.exit:                                 ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.e
  ret i64 %.0.i
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_obj_display(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #30
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = tail call i64 @rb_ractor_stdout() #28
  br label %bb.e

bb.d:                                             ; preds = %rb_check_arity.exit
  %i.c = load i64, ptr %1, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = phi i64 [ %i.b, %bb.c ], [ %i.c, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  %i.e = load i64, ptr @id_write, align 8, !tbaa !13
  %i.f = call i64 @rb_funcallv(i64 noundef %i.d, i64 noundef %i.e, i32 noundef 1, ptr noundef nonnull %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 4
}

declare void @rb_include_module(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_define_const(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_define_module_under(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #1

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_new(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_obj_as_string(i64 noundef %2) #28 ; 2 uses
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.233, i64 noundef %i.b, i64 noundef %i.b) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_6
begin_hunk_7_@rb_io_reopen:rb_scan_args_n_opt.exit
bb.bh:                                            ; preds = %flush_before_seek.exit128.i
  %i.gn = tail call ptr @rb_errno_ptr() #28
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !7
  %.not98.i = icmp eq i32 %i.go, 0
  br i1 %.not98.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gp = tail call ptr @rb_errno_ptr() #28
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !7
  %i.gr = load i64, ptr %i.dm, align 8, !tbaa !44
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.io_reopen, i32 noundef %i.gq, i64 noundef %i.gr) #30
  unreachable

bb.bj:                                            ; preds = %bb.bh, %flush_before_seek.exit128.i, %rb_update_max_fd.exit.i, %bb.ag
  %i.gs = load i32, ptr %i.bg, align 4, !tbaa !39
  %i.gt = and i32 %i.gs, 4
  %.not99.i = icmp eq i32 %i.gt, 0
  br i1 %.not99.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gu = tail call i64 @rb_io_binmode(i64 noundef %2) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.gv = tail call i64 @rb_obj_class(i64 noundef %i.y) #28 ; 4 uses
  %i.gw = getelementptr i8, ptr %i.ac, i64 8
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !13
  %i.gx = icmp eq i64 %i.gv, 0
  %i.gy = and i64 %i.gv, 7
  %i.gz = icmp ne i64 %i.gy, 0
  %i.ha = or i1 %i.gx, %i.gz
  br i1 %i.ha, label %io_reopen.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.gv) #28
  br label %io_reopen.exit.thread

io_reopen.exit:                                   ; preds = %.thread147, %bb.c
  %i.hb = phi i1 [ %i.u, %bb.c ], [ true, %.thread147 ]
  %.pre112 = load i64, ptr %i.c, align 8, !tbaa !13
  %i.hc = tail call i64 @rb_get_path(i64 noundef %.pre112) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store ptr %i.c, ptr %i.f, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #28, !srcloc !224
  %i.hd = load ptr, ptr %i.f, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  store volatile i64 %i.hc, ptr %i.hd, align 8, !tbaa !13
  %i.he = icmp ne i64 %2, 0
  %i.hf = and i64 %2, 7
  %i.hg = icmp eq i64 %i.hf, 0
  %.not3.i.i.i = and i1 %i.he, %i.hg
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %io_reopen.exit
  %i.hh = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !16 ; 3 uses
  %i.hj = and i64 %i.hi, 2048
  %.not.i.i72 = icmp eq i64 %i.hj, 0
  br i1 %.not.i.i72, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %io_reopen.exit
  call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.hk = and i64 %i.hi, 31
  %i.hl = icmp ne i64 %i.hk, 5
  %i.hm = and i64 %i.hi, 49152
  %.not8.i.i = icmp eq i64 %i.hm, 0
  %or.cond.i.i73 = or i1 %i.hl, %.not8.i.i
  br i1 %or.cond.i.i73, label %rb_io_taint_check.exit, label %bb.bn, !prof !19

bb.bn:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.bn
  %i.hn = getelementptr i8, ptr %i.hh, i64 16     ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !34 ; 2 uses
  %.not = icmp eq ptr %i.ho, null
  br i1 %.not, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %rb_io_taint_check.exit
  %i.hp = call noalias nonnull dereferenceable(248) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 248) #32 ; 2 uses
  store ptr %i.hp, ptr %i.hn, align 8, !tbaa !34
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %rb_io_taint_check.exit
  %.055 = phi ptr [ %i.ho, %rb_io_taint_check.exit ], [ %i.hp, %bb.bo ] ; 12 uses
  %i.hq = icmp eq i64 %.188.i145, 4
  %or.cond = select i1 %i.hb, i1 %i.hq, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @rb_io_extract_modeenc(ptr noundef nonnull %i.d, ptr noundef null, i64 noundef %.188.i145, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull %3)
  %i.hr = getelementptr i8, ptr %.055, i64 20     ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !39 ; 3 uses
  %i.ht = and i32 %i.hs, 65536
  %.not61 = icmp eq i32 %i.ht, 0
  %.pre113 = load i32, ptr %i.g, align 4, !tbaa !7 ; 4 uses
  br i1 %.not61, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hu = and i32 %.pre113, 3
  %i.hv = xor i32 %i.hu, 3
  %i.hw = and i32 %i.hv, %i.hs
  %.not62 = icmp eq i32 %i.hw, 0
  br i1 %.not62, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hx = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.hy = getelementptr i8, ptr %.055, i64 32
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !44
  %i.ia = inttoptr i64 %i.hz to ptr               ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !16
  %i.ic = and i64 %i.ib, 8192
  %.not.i74 = icmp eq i64 %i.ic, 0
  %i.id = getelementptr i8, ptr %i.ia, i64 24     ; 2 uses
  br i1 %.not.i74, label %RSTRING_PTR.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.bs, %bb.bt
  %i.if = phi ptr [ %i.ie, %bb.bt ], [ %i.id, %bb.bs ]
  %i.ig = call fastcc ptr @rb_io_fmode_modestr(i32 noundef %i.hs)
  %i.ih = call fastcc ptr @rb_io_fmode_modestr(i32 noundef %.pre113)
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hx, ptr noundef nonnull @.str.256, ptr noundef %i.if, ptr noundef nonnull %i.ig, ptr noundef nonnull %i.ih) #30
  unreachable

bb.bu:                                            ; preds = %bb.br, %bb.bq
  store i32 %.pre113, ptr %i.hr, align 4, !tbaa !39
  %i.ii = getelementptr i8, ptr %.055, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ii, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !152
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %bb.bv

switch.lookup:                                    ; preds = %bb.bp
  %i.ij = getelementptr i8, ptr %.055, i64 20
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !39 ; 6 uses
  %i.il = and i32 %i.ik, 3
  %i.im = zext nneg i32 %i.il to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.rb_io_reopen, i64 %i.im
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.in = shl i32 %i.ik, 4
  %i.io = and i32 %i.in, 1024
  %i.ip = lshr i32 %i.ik, 2
  %i.iq = and i32 %i.ip, 512
  %i.ir = lshr i32 %i.ik, 1
  %i.is = and i32 %i.ir, 64
  %i.it = lshr i32 %i.ik, 3
  %i.iu = and i32 %i.it, 128
  %spec.select.i75 = or disjoint i32 %i.iq, %i.io
  %.2.i76 = or disjoint i32 %spec.select.i75, %i.is
  %.3.i = or disjoint i32 %.2.i76, %i.iu
  %.4.i77 = or disjoint i32 %.3.i, %switch.load
  store i32 %.4.i77, ptr %i.e, align 4, !tbaa !7
  br label %bb.bv

default.unreachable:                              ; preds = %bb.cg, %bb.ce
  unreachable

bb.bv:                                            ; preds = %switch.lookup, %bb.bu
  %i.iv = phi i32 [ %i.ik, %switch.lookup ], [ %.pre113, %bb.bu ]
  %i.iw = load i64, ptr %i.c, align 8, !tbaa !13  ; 2 uses
  %i.ix = getelementptr i8, ptr %.055, i64 32     ; 6 uses
  store i64 %i.iw, ptr %i.ix, align 8, !tbaa !44
  %i.iy = getelementptr i8, ptr %.055, i64 16     ; 5 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !20
  %i.ja = icmp slt i32 %i.iz, 0
  br i1 %i.ja, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.jb = load i32, ptr %i.e, align 4, !tbaa !7
  %i.jc = call fastcc i32 @rb_sysopen(i64 noundef %i.iw, i32 noundef %i.jb, i32 noundef 438)
  store i32 %i.jc, ptr %i.iy, align 8, !tbaa !20
  %i.jd = getelementptr i8, ptr %.055, i64 8
  store ptr null, ptr %i.jd, align 8, !tbaa !151
  br label %io_reopen.exit.thread

bb.bx:                                            ; preds = %bb.bv
  %i.je = and i32 %i.iv, 2
  %.not63 = icmp eq i32 %i.je, 0
  br i1 %.not63, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jf = call fastcc i32 @io_fflush(ptr noundef nonnull %.055)
  %i.jg = icmp slt i32 %i.jf, 0
  br i1 %i.jg, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %.055) #31
  unreachable

bb.ca:                                            ; preds = %bb.by, %bb.bx
  %i.jh = getelementptr i8, ptr %.055, i64 80
  store i32 0, ptr %i.jh, align 8, !tbaa !46
  %i.ji = getelementptr i8, ptr %.055, i64 76
  store i32 0, ptr %i.ji, align 4, !tbaa !47
  %i.jj = getelementptr i8, ptr %.055, i64 8      ; 5 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !151
  %.not64 = icmp eq ptr %i.jk, null
  %i.jl = load i64, ptr %i.ix, align 8, !tbaa !44 ; 2 uses
  br i1 %.not64, label %bb.cw, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jm = call i64 @rb_str_encode_ospath(i64 noundef %i.jl) #28 ; 2 uses
  %i.jn = load i32, ptr %i.e, align 4, !tbaa !7   ; 5 uses
  %i.jo = and i32 %i.jn, 128
  %.not.i78 = icmp eq i32 %i.jo, 0
  br i1 %.not.i78, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jp = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jp, ptr noundef nonnull @.str.210) #30
  unreachable

bb.cd:                                            ; preds = %bb.cb
  %i.jq = and i32 %i.jn, 3                        ; 2 uses
  %i.jr = and i32 %i.jn, 1024
  %.not9.i = icmp eq i32 %i.jr, 0
  br i1 %.not9.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  switch i32 %i.jq, label %default.unreachable [
    i32 1, label %rb_io_oflags_modestr.exit
    i32 2, label %bb.cf
    i32 0, label %bb.ci
    i32 3, label %bb.ch
  ]

bb.cf:                                            ; preds = %bb.ce
  br label %rb_io_oflags_modestr.exit

bb.cg:                                            ; preds = %bb.cd
  switch i32 %i.jq, label %default.unreachable [
    i32 0, label %bb.ci
    i32 1, label %rb_io_oflags_modestr.exit
    i32 2, label %bb.cj
    i32 3, label %bb.ch
  ]

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  %i.js = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.js, ptr noundef nonnull @.str.213, i32 noundef %i.jn) #30
  unreachable

bb.ci:                                            ; preds = %bb.cg, %bb.ce
  br label %rb_io_oflags_modestr.exit

bb.cj:                                            ; preds = %bb.cg
  %i.jt = and i32 %i.jn, 512
  %.not10.i = icmp eq i32 %i.jt, 0
  %.str.216..str.215.i = select i1 %.not10.i, ptr @.str.216, ptr @.str.215
  br label %rb_io_oflags_modestr.exit

rb_io_oflags_modestr.exit:                        ; preds = %bb.ce, %bb.cf, %bb.cg, %bb.ci, %bb.cj
  %.0.i79 = phi ptr [ @.str.24, %bb.cg ], [ @.str.212, %bb.cf ], [ @.str.214, %bb.ci ], [ @.str.211, %bb.ce ], [ %.str.216..str.215.i, %bb.cj ]
  %i.ju = load ptr, ptr %i.jj, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.jm, ptr %i.a, align 8, !tbaa !13
  %i.jv = inttoptr i64 %i.jm to ptr               ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !16
  %i.jx = and i64 %i.jw, 8192
  %.not.i.i80 = icmp eq i64 %i.jx, 0
  %i.jy = getelementptr i8, ptr %i.jv, i64 24     ; 2 uses
  br i1 %.not.i.i80, label %RSTRING_PTR.exit.i81, label %bb.ck

bb.ck:                                            ; preds = %rb_io_oflags_modestr.exit
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !86
  br label %RSTRING_PTR.exit.i81

RSTRING_PTR.exit.i81:                             ; preds = %bb.ck, %rb_io_oflags_modestr.exit
  %i.ka = phi ptr [ %i.jz, %bb.ck ], [ %i.jy, %rb_io_oflags_modestr.exit ]
  %i.kb = call ptr @freopen(ptr noundef %i.ka, ptr noundef nonnull %.0.i79, ptr noundef %i.ju) #28
  %.not.i82 = icmp eq ptr %i.kb, null
  br i1 %.not.i82, label %rb_freopen.exit, label %rb_freopen.exit.thread

rb_freopen.exit.thread:                           ; preds = %RSTRING_PTR.exit.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cm

rb_freopen.exit:                                  ; preds = %RSTRING_PTR.exit.i81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr %i.a, ptr %i.b, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #28, !srcloc !225
  %i.kc = load ptr, ptr %i.b, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.kd = load volatile i64, ptr %i.kc, align 8, !tbaa !13 ; 0 uses
  %i.ke = call ptr @rb_errno_ptr() #28
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !7  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not66 = icmp eq i32 %i.kf, 0
  br i1 %.not66, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %rb_freopen.exit
  %i.kg = load i64, ptr %i.ix, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_reopen, i32 noundef %i.kf, i64 noundef %i.kg) #30
  unreachable

bb.cm:                                            ; preds = %rb_freopen.exit.thread, %rb_freopen.exit
  %i.kh = load ptr, ptr %i.jj, align 8, !tbaa !151
  %i.ki = call i32 @fileno(ptr noundef %i.kh) #28 ; 8 uses
  store i32 %i.ki, ptr %i.iy, align 8, !tbaa !20
  call void @rb_maygvl_fd_fix_cloexec(i32 noundef %i.ki)
  %i.kj = load i32, ptr @max_file_descriptor, align 4, !tbaa !7 ; 2 uses
  %i.kk = icmp sgt i32 %i.ki, -1
  %.not.i.i84 = icmp ugt i32 %i.ki, %i.kj
  %or.cond.i.i85 = select i1 %i.kk, i1 %.not.i.i84, i1 false
  br i1 %or.cond.i.i85, label %bb.cn, label %rb_fd_fix_cloexec.exit

bb.cn:                                            ; preds = %bb.cm
  %i.kl = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ki, i32 noundef 3) #28
  %i.km = icmp eq i32 %i.kl, -1
  br i1 %i.km, label %bb.co, label %.lr.ph.i.i88.preheader

.lr.ph.i.i88.preheader:                           ; preds = %bb.co, %bb.cn
  br label %.lr.ph.i.i88

bb.co:                                            ; preds = %bb.cn
  %i.kn = call ptr @rb_errno_ptr() #28
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !7
  %i.kp = icmp eq i32 %i.ko, 9
  br i1 %i.kp, label %bb.cp, label %.lr.ph.i.i88.preheader

bb.cp:                                            ; preds = %bb.co
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i32 noundef %i.ki) #29
  unreachable

.lr.ph.i.i88:                                     ; preds = %.lr.ph.i.i88.preheader, %.lr.ph.i.i88
  %.013.i.i89 = phi i32 [ %i.kr, %.lr.ph.i.i88 ], [ %i.kj, %.lr.ph.i.i88.preheader ]
  %i.kq = cmpxchg volatile ptr @max_file_descriptor, i32 %.013.i.i89, i32 %i.ki seq_cst seq_cst, align 4
  %i.kr = extractvalue { i32, i1 } %i.kq, 0       ; 2 uses
  %i.ks = icmp ult i32 %i.kr, %i.ki
  br i1 %i.ks, label %.lr.ph.i.i88, label %rb_fd_fix_cloexec.exit, !llvm.loop !11

rb_fd_fix_cloexec.exit:                           ; preds = %.lr.ph.i.i88, %bb.cm
  %i.kt = load ptr, ptr %i.jj, align 8, !tbaa !151 ; 3 uses
  %i.ku = load ptr, ptr @stderr, align 8, !tbaa !158
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %rb_fd_fix_cloexec.exit
  %i.kw = call i32 @setvbuf(ptr noundef %i.kt, ptr noundef null, i32 noundef 2, i64 noundef 8192) #28
  %.not69 = icmp eq i32 %i.kw, 0
  br i1 %.not69, label %io_reopen.exit.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kx = load i64, ptr %i.ix, align 8, !tbaa !44
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.257, i64 noundef %i.kx) #34
  br label %io_reopen.exit.thread

bb.cs:                                            ; preds = %rb_fd_fix_cloexec.exit
  %i.ky = load ptr, ptr @stdout, align 8, !tbaa !158
  %i.kz = icmp eq ptr %i.kt, %i.ky
  br i1 %i.kz, label %bb.ct, label %io_reopen.exit.thread

bb.ct:                                            ; preds = %bb.cs
  %i.la = load i32, ptr %i.iy, align 8, !tbaa !20
  %i.lb = call i32 @isatty(i32 noundef %i.la) #28
  %.not67 = icmp eq i32 %i.lb, 0
  br i1 %.not67, label %io_reopen.exit.thread, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lc = load ptr, ptr %i.jj, align 8, !tbaa !151
  %i.ld = call i32 @setvbuf(ptr noundef %i.lc, ptr noundef null, i32 noundef 1, i64 noundef 8192) #28
  %.not68 = icmp eq i32 %i.ld, 0
  br i1 %.not68, label %io_reopen.exit.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.le = load i64, ptr %i.ix, align 8, !tbaa !44
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.257, i64 noundef %i.le) #34
  br label %io_reopen.exit.thread

bb.cw:                                            ; preds = %bb.ca
  %i.lf = load i32, ptr %i.e, align 4, !tbaa !7
  %i.lg = call fastcc i32 @rb_sysopen(i64 noundef %i.jl, i32 noundef %i.lf, i32 noundef 438) ; 6 uses
  %i.lh = load i32, ptr %i.iy, align 8, !tbaa !20 ; 4 uses
  %i.li = icmp eq i32 %i.lg, %i.lh
  br i1 %i.li, label %rb_cloexec_dup2.exit.thread98, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lj = icmp slt i32 %i.lh, 3
  %.b.i = load i1, ptr @rb_cloexec_dup2.try_dup3, align 4
  %or.cond.not.i = select i1 %i.lj, i1 true, i1 %.b.i
  br i1 %or.cond.not.i, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lk = call i32 @dup3(i32 noundef %i.lg, i32 noundef %i.lh, i32 noundef 524288) #28 ; 2 uses
  %.not.i90 = icmp eq i32 %i.lk, -1
  br i1 %.not.i90, label %bb.cz, label %rb_cloexec_dup2.exit

bb.cz:                                            ; preds = %bb.cy
  %i.ll = call ptr @rb_errno_ptr() #28
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !7
  %i.ln = icmp eq i32 %i.lm, 38
  br i1 %i.ln, label %bb.da, label %rb_cloexec_dup2.exit.thread
end_hunk_7
begin_hunk_8_@rb_io_reopen:rb_scan_args_n_opt.exit
  %i.lr = call i32 @close(i32 noundef %i.lg) #28  ; 0 uses
  br label %io_reopen.exit.thread

rb_cloexec_dup2.exit.thread:                      ; preds = %bb.cz, %bb.db, %rb_cloexec_dup2.exit
  %i.ls = call ptr @rb_errno_ptr() #28
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !7  ; 2 uses
  %i.lu = call i32 @close(i32 noundef %i.lg) #28  ; 0 uses
  %.not65 = icmp eq i32 %i.lt, 0
  br i1 %.not65, label %io_reopen.exit.thread, label %bb.dc

bb.dc:                                            ; preds = %rb_cloexec_dup2.exit.thread
  %i.lv = load i64, ptr %i.ix, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_reopen, i32 noundef %i.lt, i64 noundef %i.lv) #30
  unreachable

io_reopen.exit.thread:                            ; preds = %rb_io_check_closed.exit111.i, %bb.bl, %bb.bm, %.thread100, %bb.cs, %bb.ct, %bb.cv, %bb.cu, %bb.cq, %bb.cr, %rb_cloexec_dup2.exit.thread, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret i64 %2
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_io_putc(i64 noundef %0, i64 noundef returned %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 5
  br i1 %i.j, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = tail call i64 @rb_str_substr(i64 noundef %1, i64 noundef 0, i64 noundef 1) #28
  br label %bb.e

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.l = trunc i64 %1 to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.m = tail call i64 @rb_fix2int(i64 noundef %1) #28
  br label %rb_num2char_inline.exit

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.n = tail call i64 @rb_num2int(i64 noundef %1) #28
  br label %rb_num2char_inline.exit

rb_num2char_inline.exit:                          ; preds = %bb.c, %bb.d
  %.0.i5.i = phi i64 [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  %i.o = trunc i64 %.0.i5.i to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !86
  %i.p = call i64 @rb_str_new(ptr noundef nonnull %i.b, i64 noundef 1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.e

bb.e:                                             ; preds = %rb_num2char_inline.exit, %bb.b
  %.0 = phi i64 [ %i.k, %bb.b ], [ %i.p, %rb_num2char_inline.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0, ptr %i.a, align 8, !tbaa !13
  %i.q = load i64, ptr @id_write, align 8, !tbaa !13
  %i.r = call i64 @rb_funcallv(i64 noundef %0, i64 noundef %i.q, i32 noundef 1, ptr noundef nonnull %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_each_line(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.getline_arg, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #28
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #28
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %2, i64 noundef %i.c, i32 noundef %0, ptr noundef %1, ptr noundef null) #28
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  call fastcc void @prepare_getline_args(i32 noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !203  ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !201  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = tail call fastcc i64 @rb_io_getline_1(i64 noundef %i.i, i64 noundef %i.f, i32 noundef %i.m, i64 noundef %2) ; 2 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.277) #30
  unreachable

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.q = phi i64 [ %i.s, %.lr.ph ], [ %i.n, %.preheader ]
  %i.r = tail call i64 @rb_yield(i64 noundef %i.q) #28 ; 0 uses
  %i.s = tail call fastcc i64 @rb_io_getline_1(i64 noundef %i.i, i64 noundef %i.f, i32 noundef %i.m, i64 noundef %2) ; 2 uses
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %.loopexit, label %.lr.ph, !llvm.loop !226

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %2, %.preheader ], [ %2, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_each_byte(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #28
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #28
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef null) #28
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %0, 0
  %i.f = and i64 %0, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not3.i.i.i = and i1 %i.e, %i.g
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.c
  %i.h = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %i.j = and i64 %i.i, 2048
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.c
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.k = and i64 %i.i, 31
  %i.l = icmp ne i64 %i.k, 5
  %i.m = and i64 %i.i, 49152
  %.not8.i.i = icmp eq i64 %i.m, 0
  %or.cond.i.i = or i1 %i.l, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.n = getelementptr i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.o, null
  br i1 %.not.i.i14, label %bb.e, label %rb_io_check_initialized.exit.i

bb.e:                                             ; preds = %rb_io_taint_check.exit
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.q = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %rb_io_check_closed.exit.preheader

rb_io_check_closed.exit.preheader:                ; preds = %rb_io_check_initialized.exit.i
  %i.t = getelementptr i8, ptr %i.o, i64 80       ; 3 uses
  %i.u = getelementptr i8, ptr %i.o, i64 68
  %i.v = getelementptr i8, ptr %i.o, i64 76       ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 148
  br label %rb_io_check_closed.exit

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.x = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_closed.exit.preheader, %rb_io_check_closed.exit17
  %i.y = load i32, ptr %i.t, align 8, !tbaa !46   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %rb_io_check_closed.exit, %rb_io_check_byte_readable.exit
  %i.aa = phi i32 [ %i.ap, %rb_io_check_byte_readable.exit ], [ %i.y, %rb_io_check_closed.exit ]
  %i.ab = load ptr, ptr %i.u, align 4, !tbaa !71
  %i.ac = load i32, ptr %i.v, align 4, !tbaa !47  ; 2 uses
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.v, align 4, !tbaa !47
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ae
  %i.ag = add nsw i32 %i.aa, -1
  store i32 %i.ag, ptr %i.t, align 8, !tbaa !46
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !86
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 1
  %i.ak = or disjoint i64 %i.aj, 1
  %i.al = tail call i64 @rb_yield(i64 noundef %i.ak) #28 ; 0 uses
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.o)
  %i.am = load i32, ptr %i.w, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %rb_io_check_byte_readable.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.an = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_byte_readable.exit:                   ; preds = %.lr.ph
  %i.ao = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.ao, align 4, !tbaa !7
  %i.ap = load i32, ptr %i.t, align 8, !tbaa !46  ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !227

._crit_edge:                                      ; preds = %rb_io_check_byte_readable.exit, %rb_io_check_closed.exit
  %.lcssa = phi i32 [ %i.y, %rb_io_check_closed.exit ], [ %i.ap, %rb_io_check_byte_readable.exit ]
  %.not13 = icmp eq i32 %.lcssa, 0
  br i1 %.not13, label %rb_io_check_initialized.exit.i16, label %rb_io_check_closed.exit17

rb_io_check_initialized.exit.i16:                 ; preds = %._crit_edge
  %i.ar = load i32, ptr %i.q, align 8, !tbaa !20
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %rb_io_check_closed.exit17

bb.h:                                             ; preds = %rb_io_check_initialized.exit.i16
  tail call void @rb_thread_check_ints() #28
  %i.at = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.at, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit17:                        ; preds = %rb_io_check_initialized.exit.i16, %._crit_edge
  %i.au = tail call fastcc i32 @io_fillbuf(ptr noundef nonnull %i.o)
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %rb_io_check_closed.exit, label %.loopexit, !llvm.loop !228

.loopexit:                                        ; preds = %rb_io_check_closed.exit17, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %0, %rb_io_check_closed.exit17 ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_each_char(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_frame_this_func() #28
  %i.c = tail call i64 @rb_id2sym(i64 noundef %i.b) #28
  %i.d = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.c, i32 noundef 0, ptr noundef null, ptr noundef null) #28
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ne i64 %0, 0
  %i.f = and i64 %0, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not3.i.i.i = and i1 %i.e, %i.g
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.c
  %i.h = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %i.j = and i64 %i.i, 2048
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.c
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.k = and i64 %i.i, 31
  %i.l = icmp ne i64 %i.k, 5
  %i.m = and i64 %i.i, 49152
  %.not8.i.i = icmp eq i64 %i.m, 0
  %or.cond.i.i = or i1 %i.l, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.n = getelementptr i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34   ; 8 uses
  %.not.i.i11 = icmp eq ptr %i.o, null
  br i1 %.not.i.i11, label %bb.e, label %rb_io_check_initialized.exit.i

bb.e:                                             ; preds = %rb_io_taint_check.exit
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.q = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %rb_io_check_closed.exit

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.t = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.t, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.o)
  %i.u = getelementptr i8, ptr %i.o, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.g, label %io_input_encoding.exit

bb.g:                                             ; preds = %rb_io_check_closed.exit
  %i.w = getelementptr i8, ptr %i.o, i64 96
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !83 ; 2 uses
  %.not.i.i12 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i12, label %bb.h, label %io_input_encoding.exit

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @rb_default_external_encoding() #28
  br label %io_input_encoding.exit

io_input_encoding.exit:                           ; preds = %rb_io_check_closed.exit, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.v, %rb_io_check_closed.exit ], [ %i.x, %bb.h ], [ %.val.i, %bb.g ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.o, i64 80
  %i.z = load i32, ptr %i.y, align 8, !tbaa !46
  %.not10 = icmp eq i32 %i.z, 0
  br i1 %.not10, label %rb_io_check_initialized.exit.i14, label %rb_io_check_closed.exit15

rb_io_check_initialized.exit.i14:                 ; preds = %io_input_encoding.exit
  %i.aa = load i32, ptr %i.q, align 8, !tbaa !20
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %rb_io_check_closed.exit15

bb.i:                                             ; preds = %rb_io_check_initialized.exit.i14
  tail call void @rb_thread_check_ints() #28
  %i.ac = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ac, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit15:                        ; preds = %rb_io_check_initialized.exit.i14, %io_input_encoding.exit
  %i.ad = tail call fastcc i64 @io_getc(ptr noundef nonnull %i.o, ptr noundef %.0.i) ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4
  br i1 %i.ae, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %rb_io_check_closed.exit15, %.lr.ph
  %i.af = phi i64 [ %i.ah, %.lr.ph ], [ %i.ad, %rb_io_check_closed.exit15 ]
  %i.ag = tail call i64 @rb_yield(i64 noundef %i.af) #28 ; 0 uses
  %i.ah = tail call fastcc i64 @io_getc(ptr noundef nonnull %i.o, ptr noundef %.0.i) ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4
  br i1 %i.ai, label %.loopexit, label %.lr.ph, !llvm.loop !229

.loopexit:                                        ; preds = %.lr.ph, %rb_io_check_closed.exit15, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %0, %rb_io_check_closed.exit15 ], [ %0, %.lr.ph ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_each_codepoint(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 7 uses
  %i.b = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_frame_this_func() #28
  %i.d = tail call i64 @rb_id2sym(i64 noundef %i.c) #28
  %i.e = tail call i64 @rb_enumeratorize_with_size(i64 noundef %0, i64 noundef %i.d, i32 noundef 0, ptr noundef null, ptr noundef null) #28
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ne i64 %0, 0
  %i.g = and i64 %0, 7
  %i.h = icmp eq i64 %i.g, 0
  %.not3.i.i.i = and i1 %i.f, %i.h
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.c
  %i.i = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 3 uses
  %i.k = and i64 %i.j, 2048
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.c
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.l = and i64 %i.j, 31
  %i.m = icmp ne i64 %i.l, 5
  %i.n = and i64 %i.j, 49152
  %.not8.i.i = icmp eq i64 %i.n, 0
  %or.cond.i.i = or i1 %i.m, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.o = getelementptr i8, ptr %i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 22 uses
  %.not.i.i108 = icmp eq ptr %i.p, null
  br i1 %.not.i.i108, label %bb.e, label %rb_io_check_initialized.exit.i

bb.e:                                             ; preds = %rb_io_taint_check.exit
  %i.q = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.r = getelementptr i8, ptr %i.p, i64 16       ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %rb_io_check_closed.exit

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.u = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.p)
  %i.v = getelementptr i8, ptr %i.p, i64 68       ; 3 uses
  %i.w = getelementptr i8, ptr %i.p, i64 80       ; 9 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !46
  %.not101 = icmp eq i32 %i.x, 0
  br i1 %.not101, label %rb_io_check_initialized.exit.i110, label %rb_io_check_closed.exit111

rb_io_check_initialized.exit.i110:                ; preds = %rb_io_check_closed.exit
  %i.y = load i32, ptr %i.r, align 8, !tbaa !20
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %rb_io_check_closed.exit111

bb.g:                                             ; preds = %rb_io_check_initialized.exit.i110
  tail call void @rb_thread_check_ints() #28
  %i.aa = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit111:                       ; preds = %rb_io_check_initialized.exit.i110, %rb_io_check_closed.exit
  %i.ab = getelementptr i8, ptr %i.p, i64 96
  %.val107 = load ptr, ptr %i.ab, align 8, !tbaa !83 ; 2 uses
  %.not.i = icmp eq ptr %.val107, null
  br i1 %.not.i, label %bb.h, label %io_read_encoding.exit

bb.h:                                             ; preds = %rb_io_check_closed.exit111
  %i.ac = tail call ptr @rb_default_external_encoding() #28
  br label %io_read_encoding.exit

io_read_encoding.exit:                            ; preds = %rb_io_check_closed.exit111, %bb.h
  %.0.i = phi ptr [ %i.ac, %bb.h ], [ %.val107, %rb_io_check_closed.exit111 ] ; 7 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !72
  %.not102 = icmp eq ptr %i.ae, null
  br i1 %.not102, label %bb.i, label %bb.j

bb.i:                                             ; preds = %io_read_encoding.exit
  %i.af = getelementptr i8, ptr %i.p, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  %i.ah = and i32 %i.ag, 4096
  %.not103 = icmp eq i32 %i.ah, 0
  br i1 %.not103, label %rb_io_check_byte_readable.exit.preheader, label %bb.j

rb_io_check_byte_readable.exit.preheader:         ; preds = %bb.i
  %i.ai = tail call fastcc i32 @io_fillbuf(ptr noundef nonnull %i.p)
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %rb_io_check_byte_readable.exit.preheader
  %i.ak = getelementptr i8, ptr %i.p, i64 76      ; 7 uses
  %i.al = getelementptr i8, ptr %i.p, i64 148
  br label %bb.x

bb.j:                                             ; preds = %bb.i, %io_read_encoding.exit
  %i.am = getelementptr i8, ptr %i.p, i64 136     ; 4 uses
  %i.an = getelementptr i8, ptr %i.p, i64 148     ; 5 uses
  %i.ao = getelementptr i8, ptr %i.p, i64 144     ; 4 uses
  %i.ap = getelementptr i8, ptr %i.p, i64 152
  br label %bb.k

bb.k:                                             ; preds = %bb.w, %bb.j
  %.088 = phi i32 [ 1, %bb.j ], [ %i.ax, %bb.w ]
  tail call fastcc void @make_readconv(ptr noundef nonnull %i.p, i32 noundef 0)
  br label %bb.l

bb.l:                                             ; preds = %more_char.exit, %bb.k
  %.189 = phi i32 [ %.088, %bb.k ], [ %.2, %more_char.exit ]
  %i.aq = load i32, ptr %i.an, align 4, !tbaa !45 ; 2 uses
  %.not105 = icmp eq i32 %i.aq, 0
  br i1 %.not105, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !87
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !88
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at  ; 2 uses
  %i.av = sext i32 %i.aq to i64
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.av
  %i.ax = tail call i32 @rb_enc_precise_mbclen(ptr noundef %i.au, ptr noundef %i.aw, ptr noundef %.0.i) #28 ; 6 uses
  %i.ay = icmp slt i32 %i.ax, -1
  br i1 %i.ay, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.an, align 4, !tbaa !45
  %i.ba = load i32, ptr %i.ap, align 8, !tbaa !95
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bc, ptr noundef nonnull @.str.278) #30
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.l
  %.2 = phi i32 [ %i.ax, %bb.n ], [ %.189, %bb.l ] ; 2 uses
  %i.bd = tail call fastcc i64 @fill_cbuf(ptr noundef nonnull %i.p, i32 noundef 262144) ; 3 uses
  %i.be = and i64 %i.bd, -17
  %or.cond.not.i = icmp eq i64 %i.be, 4
  br i1 %or.cond.not.i, label %more_char.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @rb_exc_raise(i64 noundef %i.bd) #30
  unreachable

more_char.exit:                                   ; preds = %bb.p
  %i.bf = icmp eq i64 %i.bd, 4
  br i1 %i.bf, label %bb.r, label %bb.l

bb.r:                                             ; preds = %more_char.exit
  %i.bg = getelementptr i8, ptr %i.p, i64 128     ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !48 ; 2 uses
  %.not.i112 = icmp eq ptr %i.bh, null
  br i1 %.not.i112, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @rb_econv_close(ptr noundef nonnull %i.bh) #28
  store ptr null, ptr %i.bg, align 8, !tbaa !48
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bi = load ptr, ptr %i.am, align 8, !tbaa !49 ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i113, label %clear_readconv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @ruby_xfree(ptr noundef nonnull %i.bi) #28
  store ptr null, ptr %i.am, align 8, !tbaa !49
  br label %clear_readconv.exit

clear_readconv.exit:                              ; preds = %bb.t, %bb.u
  %i.bj = icmp sgt i32 %.2, 0
  br i1 %i.bj, label %.loopexit, label %.loopexit118

bb.v:                                             ; preds = %bb.m
  %i.bk = icmp eq i32 %i.ax, -1
  br i1 %i.bk, label %.loopexit118, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = load ptr, ptr %i.am, align 8, !tbaa !87
  %i.bm = load i32, ptr %i.ao, align 8, !tbaa !88
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr i8, ptr %i.bl, i64 %i.bn  ; 2 uses
  %i.bp = load i32, ptr %i.an, align 4, !tbaa !45
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr i8, ptr %i.bo, i64 %i.bq
  %i.bs = tail call i32 @rb_enc_codepoint_len(ptr noundef %i.bo, ptr noundef %i.br, ptr noundef null, ptr noundef %.0.i) #28
  %i.bt = load i32, ptr %i.ao, align 8, !tbaa !88
  %i.bu = add i32 %i.bt, %i.ax
  store i32 %i.bu, ptr %i.ao, align 8, !tbaa !88
  %i.bv = load i32, ptr %i.an, align 4, !tbaa !45
  %i.bw = sub i32 %i.bv, %i.ax
  store i32 %i.bw, ptr %i.an, align 4, !tbaa !45
  %i.bx = zext i32 %i.bs to i64
  %i.by = shl nuw nsw i64 %i.bx, 1
  %i.bz = or disjoint i64 %i.by, 1
  %i.ca = tail call i64 @rb_yield(i64 noundef %i.bz) #28 ; 0 uses
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.p)
  br label %bb.k

bb.x:                                             ; preds = %.lr.ph, %rb_io_check_byte_readable.exit.backedge
  %i.cb = load ptr, ptr %i.v, align 4, !tbaa !71
  %i.cc = load i32, ptr %i.ak, align 4, !tbaa !47
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr i8, ptr %i.cb, i64 %i.cd  ; 2 uses
  %i.cf = load i32, ptr %i.w, align 8, !tbaa !46
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr i8, ptr %i.ce, i64 %i.cg
  %i.ci = call i32 @rb_enc_precise_mbclen(ptr noundef %i.ce, ptr noundef %i.ch, ptr noundef %.0.i) #28 ; 8 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ck = load i32, ptr %i.w, align 8, !tbaa !46  ; 2 uses
  %.not104 = icmp sgt i32 %i.ci, %i.ck
  br i1 %.not104, label %rb_io_check_byte_readable.exit.backedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = load ptr, ptr %i.v, align 4, !tbaa !71
  %i.cm = load i32, ptr %i.ak, align 4, !tbaa !47
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr i8, ptr %i.cl, i64 %i.cn  ; 2 uses
  %i.cp = zext nneg i32 %i.ck to i64
  %i.cq = getelementptr i8, ptr %i.co, i64 %i.cp
  %i.cr = call i32 @rb_enc_codepoint_len(ptr noundef %i.co, ptr noundef %i.cq, ptr noundef null, ptr noundef %.0.i) #28
  %i.cs = load i32, ptr %i.ak, align 4, !tbaa !47
  %i.ct = add i32 %i.cs, %i.ci
  store i32 %i.ct, ptr %i.ak, align 4, !tbaa !47
  %i.cu = load i32, ptr %i.w, align 8, !tbaa !46
  %i.cv = sub i32 %i.cu, %i.ci
  store i32 %i.cv, ptr %i.w, align 8, !tbaa !46
  %i.cw = zext i32 %i.cr to i64
  %i.cx = shl nuw nsw i64 %i.cw, 1
  %i.cy = or disjoint i64 %i.cx, 1
  %i.cz = call i64 @rb_yield(i64 noundef %i.cy) #28 ; 0 uses
  br label %bb.ah

bb.aa:                                            ; preds = %bb.x
  %i.da = icmp eq i32 %i.ci, -1
  br i1 %i.da, label %.loopexit118, label %.thread

.thread:                                          ; preds = %bb.aa
  %i.db = icmp slt i32 %i.ci, -1
  br i1 %i.db, label %bb.ab, label %rb_io_check_byte_readable.exit.backedge

rb_io_check_byte_readable.exit.backedge:          ; preds = %bb.y, %.thread, %bb.ah
  %i.dc = call fastcc i32 @io_fillbuf(ptr noundef nonnull %i.p)
  %i.dd = icmp sgt i32 %i.dc, -1
  br i1 %i.dd, label %bb.x, label %.loopexit, !llvm.loop !230

bb.ab:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.de = icmp samesign ult i32 %i.ci, -9
  br i1 %i.de, label %.thread116, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = xor i32 %i.ci, -1
  %i.dg = load i32, ptr %i.w, align 8, !tbaa !46  ; 3 uses
  %i.dh = add i32 %i.dg, %i.df                    ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 8
  br i1 %i.di, label %.thread116, label %.preheader

.preheader:                                       ; preds = %bb.ac
  %i.dj = icmp slt i32 %i.dg, 1
  br i1 %i.dj, label %.critedge, label %read_buffered_data.exit

read_buffered_data.exit:                          ; preds = %.preheader, %bb.af
  %.0136 = phi i32 [ %i.dx, %bb.af ], [ %i.dh, %.preheader ] ; 3 uses
  %.086135 = phi ptr [ %i.dw, %bb.af ], [ %i.a, %.preheader ] ; 3 uses
  %i.dk = phi i32 [ %i.eb, %bb.af ], [ %i.dg, %.preheader ]
  %i.dl = sext i32 %.0136 to i64
  %i.dm = zext nneg i32 %i.dk to i64
  %spec.select17.i = call i64 @llvm.smin.i64(i64 %i.dl, i64 %i.dm) ; 3 uses
  %spec.select.i = trunc nsw i64 %spec.select17.i to i32 ; 3 uses
  %i.dn = load ptr, ptr %i.v, align 4, !tbaa !71
  %i.do = load i32, ptr %i.ak, align 4, !tbaa !47
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr i8, ptr %i.dn, i64 %i.dp
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %.086135, ptr noundef nonnull align 1 %i.dq, i64 noundef %spec.select17.i, i1 noundef false) #28
  %i.dr = load i32, ptr %i.ak, align 4, !tbaa !47
  %i.ds = add i32 %i.dr, %spec.select.i
  store i32 %i.ds, ptr %i.ak, align 4, !tbaa !47
  %i.dt = load i32, ptr %i.w, align 8, !tbaa !46
  %i.du = sub i32 %i.dt, %spec.select.i
  store i32 %i.du, ptr %i.w, align 8, !tbaa !46
  %i.dv = icmp sgt i32 %.0136, 0
  br i1 %i.dv, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %read_buffered_data.exit
  %i.dw = getelementptr i8, ptr %.086135, i64 %spec.select17.i ; 3 uses
  %i.dx = sub nsw i32 %.0136, %spec.select.i      ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.dz = call fastcc i32 @io_fillbuf(ptr noundef nonnull %i.p)
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %.thread116, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eb = load i32, ptr %i.w, align 8, !tbaa !46  ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 1
  br i1 %i.ec, label %.critedge, label %read_buffered_data.exit, !llvm.loop !231

.critedge:                                        ; preds = %bb.ad, %read_buffered_data.exit, %bb.af, %.preheader
  %.1 = phi ptr [ %i.a, %.preheader ], [ %.086135, %read_buffered_data.exit ], [ %i.dw, %bb.af ], [ %i.dw, %bb.ad ] ; 2 uses
  %i.ed = call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %i.a, ptr noundef %.1, ptr noundef %.0.i) #28
  %i.ee = icmp sgt i32 %i.ed, 0
  br i1 %i.ee, label %bb.ag, label %.thread116

.thread116:                                       ; preds = %bb.ab, %bb.ac, %.critedge, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.loopexit118

bb.ag:                                            ; preds = %.critedge
  %i.ef = call i32 @rb_enc_codepoint_len(ptr noundef nonnull %i.a, ptr noundef %.1, ptr noundef null, ptr noundef %.0.i) #28
  %i.eg = zext i32 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 1
  %i.ei = or disjoint i64 %i.eh, 1
  %i.ej = call i64 @rb_yield(i64 noundef %i.ei) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.z
  call void @rb_io_check_char_readable(ptr noundef nonnull %i.p)
  %i.ek = load i32, ptr %i.al, align 4, !tbaa !45
  %.not.i114 = icmp eq i32 %i.ek, 0
  br i1 %.not.i114, label %rb_io_check_byte_readable.exit.backedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.el, ptr noundef nonnull @.str.7) #30
  unreachable

.loopexit118:                                     ; preds = %bb.v, %bb.aa, %.thread116, %clear_readconv.exit
  %i.em = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  %i.en = getelementptr i8, ptr %.0.i, i64 8
  %.val = load ptr, ptr %i.en, align 8, !tbaa !98
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.em, ptr noundef nonnull @.str.279, ptr noundef %.val) #30
  unreachable

.loopexit:                                        ; preds = %rb_io_check_byte_readable.exit.backedge, %rb_io_check_byte_readable.exit.preheader, %clear_readconv.exit, %bb.b
  %.090 = phi i64 [ %i.e, %bb.b ], [ %0, %clear_readconv.exit ], [ %0, %rb_io_check_byte_readable.exit.preheader ], [ %0, %rb_io_check_byte_readable.exit.backedge ]
  ret i64 %.090
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @rb_io_syswrite(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 5
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = tail call i64 @rb_obj_as_string(i64 noundef %1) #28
  br label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0 = phi i64 [ %1, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread ] ; 2 uses
  %i.j = inttoptr i64 %0 to ptr
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.c, label %rb_io_get_write_io.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.l, i64 88
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  %..i = select i1 %.not.i, i64 %0, i64 %i.o      ; 5 uses
  %i.p = icmp ne i64 %..i, 0
  %i.q = and i64 %..i, 7
  %i.r = icmp eq i64 %i.q, 0
  %.not3.i.i.i = and i1 %i.p, %i.r
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rb_io_get_write_io.exit
  %i.s = inttoptr i64 %..i to ptr                 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16   ; 3 uses
  %i.u = and i64 %i.t, 2048
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %rb_io_get_write_io.exit
  tail call void @rb_error_frozen_object(i64 noundef %..i) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.v = and i64 %i.t, 31
  %i.w = icmp ne i64 %i.v, 5
  %i.x = and i64 %i.t, 49152
  %.not8.i.i = icmp eq i64 %i.x, 0
  %or.cond.i.i = or i1 %i.w, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %..i) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.y = getelementptr i8, ptr %i.s, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34   ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.z, null
  br i1 %.not.i.i18, label %bb.e, label %rb_io_check_initialized.exit.i

bb.e:                                             ; preds = %rb_io_taint_check.exit
  %i.aa = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !20
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %rb_io_check_closed.exit.i

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.ae = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i
  %i.af = getelementptr i8, ptr %i.z, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  %i.ah = and i32 %i.ag, 2
  %.not.i20 = icmp eq i32 %i.ah, 0
  br i1 %.not.i20, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_io_check_closed.exit.i
  %i.ai = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @.str.8) #30
  unreachable

bb.h:                                             ; preds = %rb_io_check_closed.exit.i
  %i.aj = getelementptr i8, ptr %i.z, i64 80
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !46
  %.not4.i = icmp eq i32 %i.ak, 0
  br i1 %.not4.i, label %rb_io_check_writable.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @io_unread(ptr noundef nonnull %i.z, i1 noundef zeroext true)
  br label %rb_io_check_writable.exit

rb_io_check_writable.exit:                        ; preds = %bb.h, %bb.i
  %i.al = getelementptr i8, ptr %i.z, i64 60
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %rb_io_check_writable.exit
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.280) #34
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %rb_io_check_writable.exit
  %i.an = tail call i64 @rb_str_tmp_frozen_acquire(i64 noundef %.0) #28 ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !16
  %i.aq = and i64 %i.ap, 8192
  %.not.i21 = icmp eq i64 %i.aq, 0
  %i.ar = getelementptr i8, ptr %i.ao, i64 24     ; 2 uses
  br i1 %.not.i21, label %RSTRING_PTR.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.k, %bb.l
  %i.at = phi ptr [ %i.as, %bb.l ], [ %i.ar, %bb.k ]
  %i.au = getelementptr i8, ptr %i.ao, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !81
  %i.aw = tail call fastcc i64 @rb_io_write_memory(ptr noundef nonnull %i.z, ptr noundef %i.at, i64 noundef %i.av) ; 2 uses
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %RSTRING_PTR.exit
  %i.ay = tail call ptr @rb_errno_ptr() #28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = getelementptr i8, ptr %i.z, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !44
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_syswrite, i32 noundef %i.az, i64 noundef %i.bb) #30
  unreachable

bb.n:                                             ; preds = %RSTRING_PTR.exit
  tail call void @rb_str_tmp_frozen_release(i64 noundef %.0, i64 noundef %i.an) #28
  %i.bc = shl nuw i64 %i.aw, 1
  %i.bd = or disjoint i64 %i.bc, 1
  ret i64 %i.bd
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_sysread(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 14 uses
  %3 = alloca %struct.io_internal_read_struct, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !13     ; 3 uses
  %.not39 = icmp eq i32 %0, 1
  br i1 %.not39, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ 4, %.preheader ] ; 2 uses
  %.185.i.lcssa = phi i1 [ %i.f, %bb.b ], [ true, %.preheader ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !13
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.g = trunc i64 %i.c to i1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.h = ashr i64 %i.c, 1
  br label %rb_num2long_inline.exit

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.i = tail call i64 @rb_num2long(i64 noundef %i.c) #28
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.e, %bb.f
  %i.j = phi i64 [ %.sink, %bb.e ], [ %.pre, %bb.f ]
  %.0.i = phi i64 [ %i.h, %bb.e ], [ %i.i, %bb.f ] ; 9 uses
  %.not33 = icmp eq i64 %i.j, 4                   ; 2 uses
  br i1 %.not33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_num2long_inline.exit
  %i.k = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i) #28, !callees !232, !inline_history !233
  store i64 %i.k, ptr %i.a, align 8, !tbaa !13
  br label %io_setstrbuf.exit

bb.h:                                             ; preds = %rb_num2long_inline.exit
  %i.l = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 2 uses
  call void @rb_str_modify(i64 noundef %i.l) #28
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !81   ; 2 uses
  %.not.not.i = icmp slt i64 %i.o, %.0.i
  %i.p = sub i64 %.0.i, %i.o                      ; 2 uses
  br i1 %.not.not.i, label %bb.i, label %io_setstrbuf.exit

bb.i:                                             ; preds = %bb.h
  %i.q = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.r = call i64 @rb_str_capacity(i64 noundef %i.q) #33
  %i.s = inttoptr i64 %i.q to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !81
  %i.v = sub i64 %i.r, %i.u
  %i.w = icmp ult i64 %i.v, %i.p
  br i1 %i.w, label %bb.j, label %io_setstrbuf.exit

bb.j:                                             ; preds = %bb.i
  call void @rb_str_modify_expand(i64 noundef %i.q, i64 noundef %i.p) #28
  br label %io_setstrbuf.exit

io_setstrbuf.exit:                                ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %i.x = icmp eq i64 %.0.i, 0
  br i1 %i.x, label %bb.ac, label %bb.k

bb.k:                                             ; preds = %io_setstrbuf.exit
  %i.y = icmp ne i64 %2, 0
  %i.z = and i64 %2, 7
  %i.aa = icmp eq i64 %i.z, 0
  %.not3.i.i.i = and i1 %i.y, %i.aa
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.k
  %i.ab = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !16 ; 3 uses
  %i.ad = and i64 %i.ac, 2048
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.k
  call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.ae = and i64 %i.ac, 31
  %i.af = icmp ne i64 %i.ae, 5
  %i.ag = and i64 %i.ac, 49152
  %.not8.i.i = icmp eq i64 %i.ag, 0
  %or.cond.i.i = or i1 %i.af, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.l, !prof !19

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.l
  %i.ah = getelementptr i8, ptr %i.ab, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34 ; 7 uses
  %.not.i.i23 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i23, label %bb.m, label %rb_io_check_initialized.exit.i

bb.m:                                             ; preds = %rb_io_taint_check.exit
  %i.aj = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.ak = getelementptr i8, ptr %i.ai, i64 16     ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !20
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %rb_io_check_closed.exit

bb.n:                                             ; preds = %rb_io_check_initialized.exit.i
  call void @rb_thread_check_ints() #28
  %i.an = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  call void @rb_io_check_char_readable(ptr noundef nonnull %i.ai)
  %i.ao = getelementptr i8, ptr %i.ai, i64 148
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !45
  %.not.i24 = icmp eq i32 %i.ap, 0
  br i1 %.not.i24, label %rb_io_check_byte_readable.exit, label %bb.o

bb.o:                                             ; preds = %rb_io_check_closed.exit
  %i.aq = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aq, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_byte_readable.exit:                   ; preds = %rb_io_check_closed.exit
  %i.ar = getelementptr i8, ptr %i.ai, i64 80
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !46
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %rb_io_check_initialized.exit.i26, label %bb.p

bb.p:                                             ; preds = %rb_io_check_byte_readable.exit
  %i.at = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.at, ptr noundef nonnull @.str.282) #30
  unreachable

rb_io_check_initialized.exit.i26:                 ; preds = %rb_io_check_byte_readable.exit
  %i.au = load i32, ptr %i.ak, align 8, !tbaa !20
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.q, label %rb_io_check_closed.exit27

bb.q:                                             ; preds = %rb_io_check_initialized.exit.i26
  call void @rb_thread_check_ints() #28
  %i.aw = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aw, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit27:                        ; preds = %rb_io_check_initialized.exit.i26
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ay = icmp eq i64 %i.ax, 4
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_io_check_closed.exit27
  %i.az = call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i) #28, !callees !232, !inline_history !233
  store i64 %i.az, ptr %i.a, align 8, !tbaa !13
  br label %io_setstrbuf.exit30

bb.s:                                             ; preds = %rb_io_check_closed.exit27
  %i.ba = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 2 uses
  call void @rb_str_modify(i64 noundef %i.ba) #28
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !81 ; 2 uses
  %.not.not.i28 = icmp slt i64 %i.bd, %.0.i
  %i.be = sub i64 %.0.i, %i.bd                    ; 2 uses
  br i1 %.not.not.i28, label %bb.t, label %io_setstrbuf.exit30

bb.t:                                             ; preds = %bb.s
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  %i.bg = call i64 @rb_str_capacity(i64 noundef %i.bf) #33
  %i.bh = inttoptr i64 %i.bf to ptr
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !81
  %i.bk = sub i64 %i.bg, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.be
  br i1 %i.bl, label %bb.u, label %io_setstrbuf.exit30

bb.u:                                             ; preds = %bb.t
  call void @rb_str_modify_expand(i64 noundef %i.bf, i64 noundef %i.be) #28
  br label %io_setstrbuf.exit30

io_setstrbuf.exit30:                              ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %i.bm = call i64 @rb_thread_current() #28
  store i64 %i.bm, ptr %3, align 8, !tbaa !234
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.bn, align 8, !tbaa !236
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.bo, align 8, !tbaa !237
  %i.bp = load i32, ptr %i.ak, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !238
  %i.br = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr               ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !16
  %i.bu = and i64 %i.bt, 8192
  %.not.i31 = icmp eq i64 %i.bu, 0
  %i.bv = getelementptr i8, ptr %i.bs, i64 24     ; 2 uses
  br i1 %.not.i31, label %RSTRING_PTR.exit, label %bb.v

bb.v:                                             ; preds = %io_setstrbuf.exit30
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %io_setstrbuf.exit30, %bb.v
  %i.bx = phi ptr [ %i.bw, %bb.v ], [ %i.bv, %io_setstrbuf.exit30 ]
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !239
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.0.i, ptr %i.bz, align 8, !tbaa !240
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.ca, align 8, !tbaa !241
  %i.cb = ptrtoint ptr %3 to i64
  %i.cc = call i64 @rb_str_locktmp_ensure(i64 noundef %i.br, ptr noundef nonnull @io_read_memory_call, i64 noundef %i.cb) #28 ; 6 uses
  %i.cd = icmp slt i64 %i.cc, 0
  br i1 %i.cd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %RSTRING_PTR.exit
  %i.ce = call ptr @rb_errno_ptr() #28
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = getelementptr i8, ptr %i.ai, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_sysread, i32 noundef %i.cf, i64 noundef %i.ch) #30
  unreachable

bb.x:                                             ; preds = %RSTRING_PTR.exit
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !13  ; 5 uses
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !81
  %.not.i32 = icmp eq i64 %i.cl, %i.cc
  br i1 %.not.i32, label %io_set_read_length.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @rb_str_modify(i64 noundef %i.ci) #28
  call void @rb_str_set_len(i64 noundef %i.ci, i64 noundef range(i64 0, -9223372036854775808) %i.cc) #28
  br i1 %.not33, label %bb.z, label %io_set_read_length.exit

bb.z:                                             ; preds = %bb.y
  %i.cm = call i64 @rb_str_capacity(i64 noundef %i.ci) #33
  %i.cn = sub i64 %i.cm, %i.cc
  %i.co = icmp ugt i64 %i.cn, 4096
  br i1 %i.co, label %bb.aa, label %io_set_read_length.exit

bb.aa:                                            ; preds = %bb.z
  %i.cp = call i64 @rb_str_resize(i64 noundef %i.ci, i64 noundef range(i64 0, -9223372036854775808) %i.cc) #28 ; 0 uses
  br label %io_set_read_length.exit

io_set_read_length.exit:                          ; preds = %bb.x, %bb.y, %bb.z, %bb.aa
  %i.cq = icmp eq i64 %i.cc, 0
  %i.cr = icmp sgt i64 %.0.i, 0
  %or.cond = and i1 %i.cr, %i.cq
  br i1 %or.cond, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %io_set_read_length.exit
  call void @rb_eof_error() #31
  unreachable

bb.ac:                                            ; preds = %io_set_read_length.exit, %io_setstrbuf.exit
  %.0 = load i64, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_pread(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  %3 = alloca %struct.prdwr_internal_arg, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = icmp slt i32 %0, 2
  br i1 %i.b, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13   ; 3 uses
  %.not47 = icmp eq i32 %0, 2
  br i1 %.not47, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = icmp eq i64 %i.g, 4
  %i.i = icmp eq i32 %0, 3
  br label %bb.d

bb.c:                                             ; preds = %.preheader
  store i64 4, ptr %i.a, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not = phi i1 [ %i.h, %bb.b ], [ true, %bb.c ] ; 2 uses
  %.185.i.lcssa = phi i1 [ %i.i, %bb.b ], [ true, %bb.c ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef 3) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d
  %i.j = trunc i64 %i.c to i1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.k = ashr i64 %i.c, 1
  br label %rb_num2ull_inline.exit

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.l = tail call i64 @rb_num2ull(i64 noundef %i.c) #28
  br label %rb_num2ull_inline.exit

rb_num2ull_inline.exit:                           ; preds = %bb.f, %bb.g
  %i.m = phi i64 [ %i.k, %bb.f ], [ %i.l, %bb.g ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !242
  %i.o = trunc i64 %i.e to i1
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_num2ull_inline.exit
  %i.p = ashr i64 %i.e, 1
  br label %rb_num2long_inline.exit

bb.i:                                             ; preds = %rb_num2ull_inline.exit
  %i.q = tail call i64 @rb_num2long(i64 noundef %i.e) #28
  br label %rb_num2long_inline.exit
end_hunk_8
begin_hunk_9_@rb_io_pread:bb.a
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.be, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_initialized.exit.i22:                 ; preds = %rb_io_check_closed.exit
  store ptr %i.aw, ptr %3, align 8, !tbaa !246
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !20 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !247
  %i.bh = icmp slt i32 %i.bf, 0
  br i1 %i.bh, label %bb.t, label %rb_io_check_closed.exit23

bb.t:                                             ; preds = %rb_io_check_initialized.exit.i22
  call void @rb_thread_check_ints() #28
  %i.bi = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bi, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit23:                        ; preds = %rb_io_check_initialized.exit.i22
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bk = call i64 @rb_str_locktmp(i64 noundef %i.bj) #28 ; 0 uses
  %i.bl = ptrtoint ptr %3 to i64
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bn = call i64 @rb_ensure(ptr noundef nonnull @pread_internal_call, i64 noundef %i.bl, ptr noundef nonnull @rb_str_unlocktmp, i64 noundef %i.bm) #28 ; 6 uses
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %rb_io_check_closed.exit23
  %i.bp = call ptr @rb_errno_ptr() #28
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = getelementptr i8, ptr %i.aw, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_pread, i32 noundef %i.bq, i64 noundef %i.bs) #30
  unreachable

bb.v:                                             ; preds = %rb_io_check_closed.exit23
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !13  ; 5 uses
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr i8, ptr %i.bu, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !81
  %.not.i24 = icmp eq i64 %i.bw, %i.bn
  br i1 %.not.i24, label %io_set_read_length.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @rb_str_modify(i64 noundef %i.bt) #28
  call void @rb_str_set_len(i64 noundef %i.bt, i64 noundef range(i64 0, -9223372036854775808) %i.bn) #28
  br i1 %.not, label %bb.x, label %io_set_read_length.exit

bb.x:                                             ; preds = %bb.w
  %i.bx = call i64 @rb_str_capacity(i64 noundef %i.bt) #33
  %i.by = sub i64 %i.bx, %i.bn
  %i.bz = icmp ugt i64 %i.by, 4096
  br i1 %i.bz, label %bb.y, label %io_set_read_length.exit

bb.y:                                             ; preds = %bb.x
  %i.ca = call i64 @rb_str_resize(i64 noundef %i.bt, i64 noundef range(i64 0, -9223372036854775808) %i.bn) #28 ; 0 uses
  br label %io_set_read_length.exit

io_set_read_length.exit:                          ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %i.cb = icmp eq i64 %i.bn, 0
  %i.cc = load i64, ptr %i.n, align 8
  %i.cd = icmp ne i64 %i.cc, 0
  %or.cond = select i1 %i.cb, i1 %i.cd, i1 false
  br i1 %or.cond, label %bb.z, label %io_set_read_length.exit._crit_edge

io_set_read_length.exit._crit_edge:               ; preds = %io_set_read_length.exit
  %.0.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.aa

bb.z:                                             ; preds = %io_set_read_length.exit
  call void @rb_eof_error() #31
  unreachable

bb.aa:                                            ; preds = %io_set_read_length.exit._crit_edge, %io_setstrbuf.exit
  %.0 = phi i64 [ %.0.pre, %io_set_read_length.exit._crit_edge ], [ %.0.pre38, %io_setstrbuf.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_pwrite(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.prdwr_internal_arg, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 5
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = tail call i64 @rb_obj_as_string(i64 noundef %1) #28
  br label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0 = phi i64 [ %1, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread ] ; 2 uses
  %i.j = trunc i64 %2 to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = ashr i64 %2, 1
  br label %rb_num2long_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i64 @rb_num2long(i64 noundef %2) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.c, %bb.d
  %i.m = phi i64 [ %i.k, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !244
  %i.o = inttoptr i64 %0 to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.e, label %rb_io_get_write_io.exit

bb.e:                                             ; preds = %rb_num2long_inline.exit
  %i.r = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %rb_num2long_inline.exit
  %i.s = getelementptr i8, ptr %i.q, i64 88
  %i.t = load i64, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i64 %i.t, 0
  %..i = select i1 %.not.i, i64 %0, i64 %i.t      ; 5 uses
  %i.u = icmp ne i64 %..i, 0
  %i.v = and i64 %..i, 7
  %i.w = icmp eq i64 %i.v, 0
  %.not3.i.i.i = and i1 %i.u, %i.w
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rb_io_get_write_io.exit
  %i.x = inttoptr i64 %..i to ptr                 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16   ; 3 uses
  %i.z = and i64 %i.y, 2048
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %rb_io_get_write_io.exit
  tail call void @rb_error_frozen_object(i64 noundef %..i) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.aa = and i64 %i.y, 31
  %i.ab = icmp ne i64 %i.aa, 5
  %i.ac = and i64 %i.y, 49152
  %.not8.i.i = icmp eq i64 %i.ac, 0
  %or.cond.i.i = or i1 %i.ab, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.f, !prof !19

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %..i) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.f
  %i.ad = getelementptr i8, ptr %i.x, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 9 uses
  %.not.i.i18 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i18, label %bb.g, label %rb_io_check_initialized.exit.i

bb.g:                                             ; preds = %rb_io_taint_check.exit
  %i.af = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.af, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.ag = getelementptr i8, ptr %i.ae, i64 16     ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %rb_io_check_closed.exit.i

bb.h:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.aj = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i
  %i.ak = getelementptr i8, ptr %i.ae, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !39
  %i.am = and i32 %i.al, 2
  %.not.i20 = icmp eq i32 %i.am, 0
  br i1 %.not.i20, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rb_io_check_closed.exit.i
  %i.an = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @.str.8) #30
  unreachable

bb.j:                                             ; preds = %rb_io_check_closed.exit.i
  %i.ao = getelementptr i8, ptr %i.ae, i64 80
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !46
  %.not4.i = icmp eq i32 %i.ap, 0
  br i1 %.not4.i, label %rb_io_check_writable.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @io_unread(ptr noundef nonnull %i.ae, i1 noundef zeroext true)
  %.pre = load i32, ptr %i.ag, align 8, !tbaa !20
  br label %rb_io_check_writable.exit

rb_io_check_writable.exit:                        ; preds = %bb.j, %bb.k
  %i.aq = phi i32 [ %i.ah, %bb.j ], [ %.pre, %bb.k ]
  store ptr %i.ae, ptr %3, align 8, !tbaa !246
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !247
  %i.as = tail call i64 @rb_str_tmp_frozen_acquire(i64 noundef %.0) #28 ; 2 uses
  %i.at = inttoptr i64 %i.as to ptr               ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = and i64 %i.au, 8192
  %.not.i21 = icmp eq i64 %i.av, 0
  %i.aw = getelementptr i8, ptr %i.at, i64 24     ; 2 uses
  br i1 %.not.i21, label %RSTRING_PTR.exit, label %bb.l

bb.l:                                             ; preds = %rb_io_check_writable.exit
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_io_check_writable.exit, %bb.l
  %i.ay = phi ptr [ %i.ax, %bb.l ], [ %i.aw, %rb_io_check_writable.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !245
  %i.ba = getelementptr i8, ptr %i.at, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !81 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !242
  %i.bd = tail call i64 @rb_fiber_scheduler_current() #28 ; 2 uses
  %.not.i22 = icmp eq i64 %i.bd, 4
  br i1 %.not.i22, label %rb_fiber_scheduler_io_result_apply.exit.i, label %bb.m

bb.m:                                             ; preds = %RSTRING_PTR.exit
  %i.be = load i64, ptr %i.ae, align 8, !tbaa !42
  %i.bf = tail call i64 @rb_fiber_scheduler_io_pwrite_memory(i64 noundef %i.bd, i64 noundef %i.be, i64 noundef %i.m, ptr noundef %i.ay, i64 noundef %i.bb, i64 noundef 0) #28 ; 6 uses
  %i.bg = icmp eq i64 %i.bf, 36
  br i1 %i.bg, label %rb_fiber_scheduler_io_result_apply.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = trunc i64 %i.bf to i1
  br i1 %i.bh, label %rb_num2int_inline.exit.i.i, label %bb.p

rb_num2int_inline.exit.i.i:                       ; preds = %bb.n
  %i.bi = tail call i64 @rb_fix2int(i64 noundef %i.bf) #28
  %i.bj = and i64 %i.bi, 2147483648
  %.not.i.i23 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i23, label %bb.o, label %pwrite_internal_call.exit.thread

pwrite_internal_call.exit.thread:                 ; preds = %rb_num2int_inline.exit.i.i
  %i.bk = tail call i64 @rb_fix2int(i64 noundef %i.bf) #28
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = sub i32 0, %i.bl
  %i.bn = tail call ptr @rb_errno_ptr() #28
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !7
  br label %bb.q

bb.o:                                             ; preds = %rb_num2int_inline.exit.i.i
  %i.bo = ashr i64 %i.bf, 1
  br label %pwrite_internal_call.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = tail call i64 @rb_num2ull(i64 noundef %i.bf) #28
  br label %pwrite_internal_call.exit

rb_fiber_scheduler_io_result_apply.exit.i:        ; preds = %bb.m, %RSTRING_PTR.exit
  %i.bq = call i64 @rb_thread_io_blocking_call(ptr noundef nonnull %i.ae, ptr noundef nonnull @internal_pwrite_func, ptr noundef nonnull %3, i32 noundef 4) #28
  br label %pwrite_internal_call.exit

pwrite_internal_call.exit:                        ; preds = %bb.o, %bb.p, %rb_fiber_scheduler_io_result_apply.exit.i
  %.1.i = phi i64 [ %i.bq, %rb_fiber_scheduler_io_result_apply.exit.i ], [ %i.bp, %bb.p ], [ %i.bo, %bb.o ] ; 4 uses
  %i.br = icmp slt i64 %.1.i, 0
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %pwrite_internal_call.exit.thread, %pwrite_internal_call.exit
  %i.bs = call ptr @rb_errno_ptr() #28
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = getelementptr i8, ptr %i.ae, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_pwrite, i32 noundef %i.bt, i64 noundef %i.bv) #30
  unreachable

bb.r:                                             ; preds = %pwrite_internal_call.exit
  call void @rb_str_tmp_frozen_release(i64 noundef %.0, i64 noundef %i.as) #28
  %i.bw = icmp samesign ult i64 %.1.i, 4611686018427387904
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = shl nuw nsw i64 %.1.i, 1
  %i.by = or disjoint i64 %i.bx, 1
  br label %rb_ll2num_inline.exit

bb.t:                                             ; preds = %bb.r
  %i.bz = call i64 @rb_ll2inum(i64 noundef range(i64 0, -9223372036854775808) %.1.i) #28
  br label %rb_ll2num_inline.exit

rb_ll2num_inline.exit:                            ; preds = %bb.s, %bb.t
  %.0.i24 = phi i64 [ %i.by, %bb.s ], [ %i.bz, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 %.0.i24
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @rb_io_fileno(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.b, label %rb_io_check_initialized.exit.i

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20   ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %rb_io_check_closed.exit

bb.c:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.h = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.i = shl nuw i32 %i.f, 1
  %i.j = or disjoint i32 %i.i, 1
  %i.k = zext i32 %i.j to i64
  ret i64 %i.k
}

declare void @rb_define_alias(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i64 @rb_io_to_io(i64 noundef returned %0) #11 {
bb.a:
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_io_fsync(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.b, label %rb_io_get_write_io.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  %..i = select i1 %.not.i, i64 %0, i64 %i.f      ; 5 uses
  %i.g = icmp ne i64 %..i, 0
  %i.h = and i64 %..i, 7
  %i.i = icmp eq i64 %i.h, 0
  %.not3.i.i.i = and i1 %i.g, %i.i
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rb_io_get_write_io.exit
  %i.j = inttoptr i64 %..i to ptr                 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16   ; 3 uses
  %i.l = and i64 %i.k, 2048
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %rb_io_get_write_io.exit
  tail call void @rb_error_frozen_object(i64 noundef %..i) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.m = and i64 %i.k, 31
  %i.n = icmp ne i64 %i.m, 5
  %i.o = and i64 %i.k, 49152
  %.not8.i.i = icmp eq i64 %i.o, 0
  %or.cond.i.i = or i1 %i.n, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.c, !prof !19

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %..i) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.c
  %i.p = getelementptr i8, ptr %i.j, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34   ; 7 uses
  %.not.i.i7 = icmp eq ptr %i.q, null
  br i1 %.not.i.i7, label %bb.d, label %rb_io_check_initialized.exit.i
end_hunk_9
begin_hunk_10_@rb_io_set_lineno:bb.a
bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.k)
  %i.q = trunc i64 %1 to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_io_check_closed.exit
  %i.r = tail call i64 @rb_fix2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

bb.f:                                             ; preds = %rb_io_check_closed.exit
  %i.s = tail call i64 @rb_num2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.r, %bb.e ], [ %i.s, %bb.f ]
  %i.t = trunc i64 %.0.i to i32
  %i.u = getelementptr i8, ptr %i.k, i64 28
  store i32 %i.t, ptr %i.u, align 4, !tbaa !74
  ret i64 %1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_readlines(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.getline_arg, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call fastcc void @prepare_getline_args(i32 noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !203  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.241) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_ary_new() #28          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = load i64, ptr %i.f, align 8, !tbaa !201  ; 2 uses
  %i.i = load i8, ptr %i.g, align 8
  %i.j = and i8 %i.i, 1
  %i.k = zext nneg i8 %i.j to i32                 ; 2 uses
  %i.l = tail call fastcc i64 @rb_io_getline_1(i64 noundef %i.h, i64 noundef %i.b, i32 noundef %i.k, i64 noundef %2) ; 2 uses
  %i.m = icmp eq i64 %i.l, 4
  br i1 %i.m, label %io_readlines.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.n = phi i64 [ %i.p, %.lr.ph.i ], [ %i.l, %bb.c ]
  %i.o = tail call i64 @rb_ary_push(i64 noundef %i.e, i64 noundef %i.n) #28 ; 0 uses
  %i.p = tail call fastcc i64 @rb_io_getline_1(i64 noundef %i.h, i64 noundef %i.b, i32 noundef %i.k, i64 noundef %2) ; 2 uses
  %i.q = icmp eq i64 %i.p, 4
  br i1 %i.q, label %io_readlines.exit, label %.lr.ph.i, !llvm.loop !248

io_readlines.exit:                                ; preds = %.lr.ph.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 5, 4) i64 @io_readpartial(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @io_getpartial(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 4, i32 noundef 0) ; 2 uses
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_eof_error() #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @io_read(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %3 = alloca %struct.bufread_arg, align 8        ; 6 uses
  %4 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = alloca i64, align 8                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = icmp slt i32 %0, 0
  br i1 %i.c, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.not65 = icmp eq i32 %0, 0
  br i1 %.not65, label %.preheader.1, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.d = load i64, ptr %1, align 8, !tbaa !13
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 4, %.preheader.preheader ] ; 4 uses
  %.286.i = phi i32 [ 1, %bb.b ], [ 0, %.preheader.preheader ] ; 4 uses
  %i.f = icmp samesign ult i32 %.286.i, %0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.1
  store i64 4, ptr %i.b, align 8, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %.preheader.1
  %i.g = zext nneg i32 %.286.i to i64
  %i.h = getelementptr [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  store i64 %i.i, ptr %i.b, align 8, !tbaa !13
  %i.j = add nuw nsw i32 %.286.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.286.i.1 = phi i32 [ %i.j, %bb.d ], [ %.286.i, %bb.c ]
  %i.k = icmp eq i32 %.286.i.1, %0
  br i1 %i.k, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.l = icmp eq i64 %i.e, 4
  br i1 %i.l, label %bb.g, label %bb.q

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.m = icmp ne i64 %2, 0
  %i.n = and i64 %2, 7
  %i.o = icmp eq i64 %i.n, 0
  %.not3.i.i.i = and i1 %i.m, %i.o
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.g
  %i.p = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 3 uses
  %i.r = and i64 %i.q, 2048
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.g
  tail call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.s = and i64 %i.q, 31
  %i.t = icmp ne i64 %i.s, 5
  %i.u = and i64 %i.q, 49152
  %.not8.i.i = icmp eq i64 %i.u, 0
  %or.cond.i.i = or i1 %i.t, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.h, !prof !19

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.h
  %i.v = getelementptr i8, ptr %i.p, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34   ; 7 uses
  %.not.i.i21 = icmp eq ptr %i.w, null
  br i1 %.not.i.i21, label %bb.i, label %rb_io_check_initialized.exit.i

bb.i:                                             ; preds = %rb_io_taint_check.exit
  %i.x = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.y = getelementptr i8, ptr %i.w, i64 16       ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !20
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %rb_io_check_closed.exit

bb.j:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.ab = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ac = getelementptr i8, ptr %i.w, i64 80
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = load i32, ptr %i.y, align 8, !tbaa !20
  %i.ag = call i32 @fstat(i32 noundef %i.af, ptr noundef nonnull %4) #28
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %bb.p

bb.k:                                             ; preds = %rb_io_check_closed.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !180
  %i.ak = and i32 %i.aj, 61440
  %i.al = icmp eq i32 %i.ak, 32768
  br i1 %i.al, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.am = tail call fastcc i32 @io_fflush(ptr noundef nonnull %i.w)
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.w) #31
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.y, align 8, !tbaa !20
  %i.ap = tail call i64 @lseek(i32 noundef %i.ao, i64 noundef 0, i32 noundef 1) #28 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !196 ; 2 uses
  %i.as = icmp sge i64 %i.ar, %i.ap
  %i.at = icmp sgt i64 %i.ap, -1
  %or.cond.i22 = and i1 %i.at, %i.as
  br i1 %or.cond.i22, label %bb.o, label %remain_size.exit

bb.o:                                             ; preds = %bb.n
  %i.au = sub i64 %i.ae, %i.ap
  %i.av = add i64 %i.au, %i.ar
  br label %remain_size.exit

bb.p:                                             ; preds = %bb.k, %rb_io_check_closed.exit
  %i.aw = add nsw i64 %i.ae, 8192
  br label %remain_size.exit

remain_size.exit:                                 ; preds = %bb.n, %bb.o, %bb.p
  %.0.i = phi i64 [ %i.av, %bb.o ], [ %i.ae, %bb.n ], [ %i.aw, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ax = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ay = tail call fastcc i64 @read_all(ptr noundef nonnull %i.w, i64 noundef %.0.i, i64 noundef %i.ax)
  br label %bb.as

bb.q:                                             ; preds = %rb_scan_args_set.exit
  %i.az = trunc i64 %i.e to i1
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = ashr i64 %i.e, 1
  br label %rb_num2long_inline.exit

bb.s:                                             ; preds = %bb.q
  %i.bb = tail call i64 @rb_num2long(i64 noundef %i.e) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.r, %bb.s
  %.0.i23 = phi i64 [ %i.ba, %bb.r ], [ %i.bb, %bb.s ] ; 10 uses
  %i.bc = icmp slt i64 %.0.i23, 0
  br i1 %i.bc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %rb_num2long_inline.exit
  %i.bd = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bd, ptr noundef nonnull @.str.284, i64 noundef %.0.i23) #30
  unreachable

bb.u:                                             ; preds = %rb_num2long_inline.exit
  %i.be = load i64, ptr %i.b, align 8, !tbaa !13
  %.not45.not = icmp eq i64 %i.be, 4              ; 3 uses
  br i1 %.not45.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bf = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i23) #28, !callees !232, !inline_history !233
  store i64 %i.bf, ptr %i.b, align 8, !tbaa !13
  br label %io_setstrbuf.exit

bb.w:                                             ; preds = %bb.u
  %i.bg = call i64 @rb_string_value(ptr noundef nonnull %i.b) #28 ; 2 uses
  call void @rb_str_modify(i64 noundef %i.bg) #28
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !81 ; 2 uses
  %.not.not.i = icmp slt i64 %i.bj, %.0.i23
  %i.bk = sub i64 %.0.i23, %i.bj                  ; 2 uses
  br i1 %.not.not.i, label %bb.x, label %io_setstrbuf.exit

bb.x:                                             ; preds = %bb.w
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.bm = call i64 @rb_str_capacity(i64 noundef %i.bl) #33
  %i.bn = inttoptr i64 %i.bl to ptr
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !81
  %i.bq = sub i64 %i.bm, %i.bp
  %i.br = icmp ult i64 %i.bq, %i.bk
  br i1 %i.br, label %bb.y, label %io_setstrbuf.exit

bb.y:                                             ; preds = %bb.x
  call void @rb_str_modify_expand(i64 noundef %i.bl, i64 noundef %i.bk) #28
  br label %io_setstrbuf.exit

io_setstrbuf.exit:                                ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  %i.bs = icmp ne i64 %2, 0
  %i.bt = and i64 %2, 7
  %i.bu = icmp eq i64 %i.bt, 0
  %.not3.i.i.i25 = and i1 %i.bs, %i.bu
  br i1 %.not3.i.i.i25, label %RB_OBJ_FROZEN.exit.i.i27, label %RB_OBJ_FROZEN.exit.thread.i.i26, !prof !15

RB_OBJ_FROZEN.exit.i.i27:                         ; preds = %io_setstrbuf.exit
  %i.bv = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !16 ; 3 uses
  %i.bx = and i64 %i.bw, 2048
  %.not.i.i28 = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i28, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i29, label %RB_OBJ_FROZEN.exit.thread.i.i26, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i26:                  ; preds = %RB_OBJ_FROZEN.exit.i.i27, %io_setstrbuf.exit
  call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i29:             ; preds = %RB_OBJ_FROZEN.exit.i.i27
  %i.by = and i64 %i.bw, 31
  %i.bz = icmp ne i64 %i.by, 5
  %i.ca = and i64 %i.bw, 49152
  %.not8.i.i30 = icmp eq i64 %i.ca, 0
  %or.cond.i.i31 = or i1 %i.bz, %.not8.i.i30
  br i1 %or.cond.i.i31, label %rb_io_taint_check.exit32, label %bb.z, !prof !19

bb.z:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i29
  call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit32

rb_io_taint_check.exit32:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i29, %bb.z
  %i.cb = getelementptr i8, ptr %i.bv, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !34 ; 7 uses
  %.not.i.i33 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i33, label %bb.aa, label %rb_io_check_initialized.exit.i34

bb.aa:                                            ; preds = %rb_io_taint_check.exit32
  %i.cd = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cd, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i34:                 ; preds = %rb_io_taint_check.exit32
  %i.ce = getelementptr i8, ptr %i.cc, i64 16     ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !20
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %bb.ab, label %rb_io_check_closed.exit35

bb.ab:                                            ; preds = %rb_io_check_initialized.exit.i34
  call void @rb_thread_check_ints() #28
  %i.ch = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ch, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit35:                        ; preds = %rb_io_check_initialized.exit.i34
  call void @rb_io_check_char_readable(ptr noundef nonnull %i.cc)
  %i.ci = getelementptr i8, ptr %i.cc, i64 148
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !45
  %.not.i36 = icmp eq i32 %i.cj, 0
  br i1 %.not.i36, label %rb_io_check_byte_readable.exit, label %bb.ac

bb.ac:                                            ; preds = %rb_io_check_closed.exit35
  %i.ck = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ck, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_byte_readable.exit:                   ; preds = %rb_io_check_closed.exit35
  %i.cl = icmp eq i64 %.0.i23, 0
  br i1 %i.cl, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %rb_io_check_byte_readable.exit
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !13  ; 5 uses
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr i8, ptr %i.cn, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !81
  %.not.i37 = icmp eq i64 %i.cp, 0
  br i1 %.not.i37, label %io_set_read_length.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @rb_str_modify(i64 noundef %i.cm) #28
  call void @rb_str_set_len(i64 noundef %i.cm, i64 noundef 0) #28
  br i1 %.not45.not, label %bb.af, label %io_set_read_length.exit

bb.af:                                            ; preds = %bb.ae
  %i.cq = call i64 @rb_str_capacity(i64 noundef %i.cm) #33
  %i.cr = icmp ugt i64 %i.cq, 4096
  br i1 %i.cr, label %bb.ag, label %io_set_read_length.exit

bb.ag:                                            ; preds = %bb.af
  %i.cs = call i64 @rb_str_resize(i64 noundef %i.cm, i64 noundef 0) #28 ; 0 uses
  br label %io_set_read_length.exit

io_set_read_length.exit:                          ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bb.as

bb.ah:                                            ; preds = %rb_io_check_byte_readable.exit
  %i.cu = getelementptr i8, ptr %i.cc, i64 80
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !46
  %.not = icmp eq i32 %i.cv, 0
  br i1 %.not, label %rb_io_check_initialized.exit.i39, label %rb_io_check_closed.exit40

rb_io_check_initialized.exit.i39:                 ; preds = %bb.ah
  %i.cw = load i32, ptr %i.ce, align 8, !tbaa !20
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %bb.ai, label %rb_io_check_closed.exit40

bb.ai:                                            ; preds = %rb_io_check_initialized.exit.i39
  call void @rb_thread_check_ints() #28
  %i.cy = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cy, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit40:                        ; preds = %rb_io_check_initialized.exit.i39, %bb.ah
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cz, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.da = icmp eq i64 %i.cz, 4
  br i1 %i.da, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %rb_io_check_closed.exit40
  %i.db = call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i23) #28, !callees !232, !inline_history !249 ; 2 uses
  store i64 %i.db, ptr %i.a, align 8, !tbaa !13
  br label %io_setstrbuf.exit.i

bb.ak:                                            ; preds = %rb_io_check_closed.exit40
  %i.dc = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 2 uses
  call void @rb_str_modify(i64 noundef %i.dc) #28
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !81 ; 2 uses
  %.not.not.i.i = icmp slt i64 %i.df, %.0.i23
  %i.dg = sub i64 %.0.i23, %i.df                  ; 2 uses
  %.pre8.i = load i64, ptr %i.a, align 8, !tbaa !13 ; 5 uses
  br i1 %.not.not.i.i, label %bb.al, label %io_setstrbuf.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.dh = call i64 @rb_str_capacity(i64 noundef %.pre8.i) #33
  %i.di = inttoptr i64 %.pre8.i to ptr
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !81
  %i.dl = sub i64 %i.dh, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.dg
  br i1 %i.dm, label %bb.am, label %io_setstrbuf.exit.i

bb.am:                                            ; preds = %bb.al
  call void @rb_str_modify_expand(i64 noundef %.pre8.i, i64 noundef %i.dg) #28
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !13
  br label %io_setstrbuf.exit.i

io_setstrbuf.exit.i:                              ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.dn = phi i64 [ %i.db, %bb.aj ], [ %.pre8.i, %bb.ak ], [ %.pre8.i, %bb.al ], [ %.pre.i, %bb.am ] ; 2 uses
  %i.do = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !16
  %i.dq = and i64 %i.dp, 8192
  %.not.i.i41 = icmp eq i64 %i.dq, 0
  %i.dr = getelementptr i8, ptr %i.do, i64 24     ; 2 uses
  br i1 %.not.i.i41, label %RSTRING_PTR.exit.i, label %bb.an

bb.an:                                            ; preds = %io_setstrbuf.exit.i
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !86
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.an, %io_setstrbuf.exit.i
  %i.dt = phi ptr [ %i.ds, %bb.an ], [ %i.dr, %io_setstrbuf.exit.i ]
  store ptr %i.dt, ptr %3, align 8, !tbaa !250
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.0.i23, ptr %i.du, align 8, !tbaa !252
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cc, ptr %i.dv, align 8, !tbaa !253
  %i.dw = ptrtoint ptr %3 to i64
  %i.dx = call i64 @rb_str_locktmp_ensure(i64 noundef %i.dn, ptr noundef nonnull @bufread_call, i64 noundef %i.dw) #28 ; 0 uses
  %i.dy = load i64, ptr %i.du, align 8, !tbaa !252 ; 6 uses
  %i.dz = icmp slt i64 %i.dy, 0
  br i1 %i.dz, label %bb.ao, label %io_fread.exit

bb.ao:                                            ; preds = %RSTRING_PTR.exit.i
  %i.ea = call ptr @rb_errno_ptr() #28
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !7
  %i.ec = getelementptr i8, ptr %i.cc, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.io_fread, i32 noundef %i.eb, i64 noundef %i.ed) #30
  unreachable

io_fread.exit:                                    ; preds = %RSTRING_PTR.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !13  ; 5 uses
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !81
  %.not.i42 = icmp eq i64 %i.eh, %i.dy
  br i1 %.not.i42, label %io_set_read_length.exit44, label %bb.ap

bb.ap:                                            ; preds = %io_fread.exit
  call void @rb_str_modify(i64 noundef %i.ee) #28
  call void @rb_str_set_len(i64 noundef %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.dy) #28
  br i1 %.not45.not, label %bb.aq, label %io_set_read_length.exit44

bb.aq:                                            ; preds = %bb.ap
  %i.ei = call i64 @rb_str_capacity(i64 noundef %i.ee) #33
  %i.ej = sub i64 %i.ei, %i.dy
  %i.ek = icmp ugt i64 %i.ej, 4096
  br i1 %i.ek, label %bb.ar, label %io_set_read_length.exit44

bb.ar:                                            ; preds = %bb.aq
  %i.el = call i64 @rb_str_resize(i64 noundef %i.ee, i64 noundef range(i64 0, -9223372036854775808) %i.dy) #28 ; 0 uses
  br label %io_set_read_length.exit44

io_set_read_length.exit44:                        ; preds = %io_fread.exit, %bb.ap, %bb.aq, %bb.ar
  %i.em = icmp eq i64 %i.dy, 0
  %i.en = load i64, ptr %i.b, align 8
  %spec.select = select i1 %i.em, i64 4, i64 %i.en
  br label %bb.as

bb.as:                                            ; preds = %io_set_read_length.exit44, %io_set_read_length.exit, %remain_size.exit
  %.0 = phi i64 [ %i.ay, %remain_size.exit ], [ %i.ct, %io_set_read_length.exit ], [ %spec.select, %io_set_read_length.exit44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @io_write_m(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i64 @io_writev(i32 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !13
  %i.c = tail call fastcc i64 @io_write(i64 noundef %2, i64 noundef %i.b, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.a, %bb.b ], [ %i.c, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_io_gets_m(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.getline_arg, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call fastcc void @prepare_getline_args(i32 noundef %0, ptr noundef readonly %1, ptr noundef %3, i64 noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !201
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !203
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i8, ptr %i.e, align 8
  %i.g = and i8 %i.f, 1
  %i.h = zext nneg i8 %i.g to i32
  %i.i = tail call fastcc i64 @rb_io_getline_1(i64 noundef %i.b, i64 noundef %i.d, i32 noundef %i.h, i64 noundef %2) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  tail call void @rb_lastline_set(i64 noundef %i.i) #28
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_getc(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 7 uses
  %.not.i.i6 = icmp eq ptr %i.k, null
  br i1 %.not.i.i6, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.k)
  %i.q = getelementptr i8, ptr %i.k, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.e, label %io_input_encoding.exit

bb.e:                                             ; preds = %rb_io_check_closed.exit
  %i.s = getelementptr i8, ptr %i.k, i64 96
  %.val.i = load ptr, ptr %i.s, align 8, !tbaa !83 ; 2 uses
  %.not.i.i7 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i7, label %bb.f, label %io_input_encoding.exit

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @rb_default_external_encoding() #28
  br label %io_input_encoding.exit

io_input_encoding.exit:                           ; preds = %rb_io_check_closed.exit, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.r, %rb_io_check_closed.exit ], [ %i.t, %bb.f ], [ %.val.i, %bb.e ]
  %i.u = getelementptr i8, ptr %i.k, i64 80
  %i.v = load i32, ptr %i.u, align 8, !tbaa !46
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %rb_io_check_initialized.exit.i9, label %rb_io_check_closed.exit10

rb_io_check_initialized.exit.i9:                  ; preds = %io_input_encoding.exit
  %i.w = load i32, ptr %i.m, align 8, !tbaa !20
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %rb_io_check_closed.exit10

bb.g:                                             ; preds = %rb_io_check_initialized.exit.i9
  tail call void @rb_thread_check_ints() #28
  %i.y = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit10:                        ; preds = %rb_io_check_initialized.exit.i9, %io_input_encoding.exit
  %i.z = tail call fastcc i64 @io_getc(ptr noundef nonnull %i.k, ptr noundef %.0.i)
  ret i64 %i.z
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 5, 4) i64 @rb_io_readchar(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_io_getc(i64 noundef %0) ; 2 uses
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_eof_error() #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 512) i64 @rb_io_readbyte(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_io_getbyte(i64 noundef %0) ; 2 uses
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_eof_error() #31
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_tell(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 7 uses
  %.not.i.i7 = icmp eq ptr %i.k, null
  br i1 %.not.i.i7, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.q = tail call fastcc i32 @io_fflush(ptr noundef nonnull %i.k)
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %flush_before_seek.exit

bb.e:                                             ; preds = %rb_io_check_closed.exit
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.k) #31
  unreachable

flush_before_seek.exit:                           ; preds = %rb_io_check_closed.exit
  tail call fastcc void @io_unread(ptr noundef nonnull %i.k, i1 noundef zeroext false)
  %i.s = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.s, align 4, !tbaa !7
  %i.t = load i32, ptr %i.m, align 8, !tbaa !20
  %i.u = tail call i64 @lseek(i32 noundef %i.t, i64 noundef 0, i32 noundef 1) #28 ; 2 uses
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %flush_before_seek.exit
  %i.w = tail call ptr @rb_errno_ptr() #28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call ptr @rb_errno_ptr() #28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = getelementptr i8, ptr %i.k, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !44
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_tell, i32 noundef %i.z, i64 noundef %i.ab) #30
  unreachable

bb.h:                                             ; preds = %bb.f, %flush_before_seek.exit
  %i.ac = getelementptr i8, ptr %i.k, i64 80
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !46
  %i.ae = sext i32 %i.ad to i64
  %i.af = sub i64 %i.u, %i.ae                     ; 3 uses
  %i.ag = add i64 %i.af, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.ag, -1
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = shl nsw i64 %i.af, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %rb_long2num_inline.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = tail call i64 @rb_int2big(i64 noundef %i.af) #28
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ai, %bb.i ], [ %i.aj, %bb.j ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_io_seek_m(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !13
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %interpret_seek_whence.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 8 uses
  %i.e = icmp eq i32 %0, 2
  br i1 %i.e, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.b
  %i.f = load i64, ptr @sym_SET, align 8, !tbaa !13
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %interpret_seek_whence.exit, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.h = load i64, ptr @sym_CUR, align 8, !tbaa !13
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %interpret_seek_whence.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr @sym_END, align 8, !tbaa !13
  %i.k = icmp eq i64 %i.d, %i.j
  br i1 %i.k, label %interpret_seek_whence.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr @sym_DATA, align 8, !tbaa !13
  %i.m = icmp eq i64 %i.d, %i.l
  br i1 %i.m, label %interpret_seek_whence.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i64, ptr @sym_HOLE, align 8, !tbaa !13
  %i.o = icmp eq i64 %i.d, %i.n
  br i1 %i.o, label %interpret_seek_whence.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = trunc i64 %i.d to i1
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i64 @rb_fix2int(i64 noundef %i.d) #28
  br label %rb_num2int_inline.exit.i

bb.j:                                             ; preds = %bb.h
  %i.r = tail call i64 @rb_num2int(i64 noundef %i.d) #28
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.q, %bb.i ], [ %i.r, %bb.j ]
  %i.s = trunc i64 %.0.i.i to i32
  br label %interpret_seek_whence.exit

interpret_seek_whence.exit:                       ; preds = %.preheader, %rb_num2int_inline.exit.i, %bb.g, %bb.f, %bb.e, %bb.d, %rb_scan_args_set.exit
  %.0 = phi i32 [ 4, %bb.g ], [ %i.s, %rb_num2int_inline.exit.i ], [ 0, %rb_scan_args_set.exit ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 0, %.preheader ]
  tail call fastcc void @rb_io_seek(i64 noundef %2, i64 noundef %i.b, i32 noundef %.0)
  ret i64 1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_io_rewind(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 10 uses
  %.not.i.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i.i9, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.q = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.q, align 4, !tbaa !7
  %i.r = tail call fastcc i32 @io_fflush(ptr noundef nonnull %i.k)
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %flush_before_seek.exit

bb.e:                                             ; preds = %rb_io_check_closed.exit
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.k) #31
  unreachable

flush_before_seek.exit:                           ; preds = %rb_io_check_closed.exit
  tail call fastcc void @io_unread(ptr noundef nonnull %i.k, i1 noundef zeroext true)
  %i.t = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.t, align 4, !tbaa !7
  %i.u = load i32, ptr %i.m, align 8, !tbaa !20
  %i.v = tail call i64 @lseek(i32 noundef %i.u, i64 noundef 0, i32 noundef 0) #28
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %flush_before_seek.exit
  %i.x = tail call ptr @rb_errno_ptr() #28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @rb_errno_ptr() #28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = getelementptr i8, ptr %i.k, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_rewind, i32 noundef %i.aa, i64 noundef %i.ac) #30
  unreachable

bb.h:                                             ; preds = %bb.f, %flush_before_seek.exit
  %i.ad = load i64, ptr @argf, align 8, !tbaa !13
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !77
  %i.aj = icmp eq i64 %0, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.k, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !74
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr i8, ptr %i.ag, i64 24     ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !79
  %i.ap = sub i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = getelementptr i8, ptr %i.k, i64 28
  store i32 0, ptr %i.aq, align 4, !tbaa !74
  %i.ar = getelementptr i8, ptr %i.k, i64 128     ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48 ; 2 uses
  %.not8 = icmp eq ptr %i.as, null
  br i1 %.not8, label %clear_readconv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @rb_econv_close(ptr noundef nonnull %i.as) #28
  store ptr null, ptr %i.ar, align 8, !tbaa !48
  %i.at = getelementptr i8, ptr %i.k, i64 136     ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.au, null
  br i1 %.not.i.i10, label %clear_readconv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @ruby_xfree(ptr noundef nonnull %i.au) #28
  store ptr null, ptr %i.at, align 8, !tbaa !49
  br label %clear_readconv.exit

clear_readconv.exit:                              ; preds = %bb.l, %bb.k, %bb.j
  ret i64 1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_set_pos(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1
  br label %rb_num2long_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2long(i64 noundef %1) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.d = icmp ne i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp eq i64 %i.e, 0
  %.not3.i.i.i = and i1 %i.d, %i.f
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rb_num2long_inline.exit
  %i.g = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %i.i = and i64 %i.h, 2048
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %rb_num2long_inline.exit
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.j = and i64 %i.h, 31
  %i.k = icmp ne i64 %i.j, 5
  %i.l = and i64 %i.h, 49152
  %.not8.i.i = icmp eq i64 %i.l, 0
  %or.cond.i.i = or i1 %i.k, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34   ; 6 uses
  %.not.i.i7 = icmp eq ptr %i.n, null
  br i1 %.not.i.i7, label %bb.e, label %rb_io_check_initialized.exit.i

bb.e:                                             ; preds = %rb_io_taint_check.exit
  %i.o = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.p = getelementptr i8, ptr %i.n, i64 16       ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %rb_io_check_closed.exit

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.s = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.t = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.t, align 4, !tbaa !7
  %i.u = tail call fastcc i32 @io_fflush(ptr noundef nonnull %i.n)
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %flush_before_seek.exit

bb.g:                                             ; preds = %rb_io_check_closed.exit
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.n) #31
  unreachable

flush_before_seek.exit:                           ; preds = %rb_io_check_closed.exit
  tail call fastcc void @io_unread(ptr noundef nonnull %i.n, i1 noundef zeroext true)
  %i.w = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.w, align 4, !tbaa !7
  %i.x = load i32, ptr %i.p, align 8, !tbaa !20
  %i.y = tail call i64 @lseek(i32 noundef %i.x, i64 noundef %.0.i, i32 noundef 0) #28 ; 4 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.h, label %bb.j

bb.h:                                             ; preds = %flush_before_seek.exit
  %i.aa = tail call ptr @rb_errno_ptr() #28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call ptr @rb_errno_ptr() #28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = getelementptr i8, ptr %i.n, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !44
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_set_pos, i32 noundef %i.ad, i64 noundef %i.af) #30
  unreachable

bb.j:                                             ; preds = %bb.h, %flush_before_seek.exit
  %i.ag = add i64 %i.y, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.ag, -1
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = shl nsw i64 %i.y, 1
  %i.ai = or disjoint i64 %i.ah, 1
  br label %rb_long2num_inline.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = tail call i64 @rb_int2big(i64 noundef %i.y) #28
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.k, %bb.l
  %.0.i8 = phi i64 [ %i.ai, %bb.k ], [ %i.aj, %bb.l ]
  ret i64 %.0.i8
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_io_close_on_exec_p(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.b, label %rb_io_get_write_io.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.c, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37   ; 6 uses
  %.not.i = icmp eq i64 %i.f, 0
  %.not40 = icmp eq i64 %i.f, %0
  %.not = or i1 %.not.i, %.not40
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %rb_io_get_write_io.exit
  %i.g = and i64 %i.f, 7
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.c
  %i.i = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16   ; 3 uses
  %i.k = and i64 %i.j, 2048
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.c
  tail call void @rb_error_frozen_object(i64 noundef %i.f) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.l = and i64 %i.j, 31
  %i.m = icmp ne i64 %i.l, 5
  %i.n = and i64 %i.j, 49152
  %.not8.i.i = icmp eq i64 %i.n, 0
  %or.cond.i.i = or i1 %i.m, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %i.f) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.o = getelementptr i8, ptr %i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.p, null
  br i1 %.not.i.i28, label %bb.e, label %rb_io_check_initialized.exit.i

bb.e:                                             ; preds = %rb_io_taint_check.exit
  %i.q = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.r = getelementptr i8, ptr %i.p, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %rb_io_check_closed.exit

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.u = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @closed_stream) #30
  unreachable

end_hunk_10
begin_hunk_11_@rb_io_binmode_p:bb.a
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.q = getelementptr i8, ptr %i.k, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  %i.s = and i32 %i.r, 4
  %.not = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not, i64 0, i64 20
  ret i64 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_sysseek(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !13     ; 3 uses
  %.not28 = icmp eq i32 %0, 1
  br i1 %.not28, label %interpret_seek_whence.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 8 uses
  %i.e = icmp eq i32 %0, 2
  br i1 %i.e, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.b
  %i.f = load i64, ptr @sym_SET, align 8, !tbaa !13
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %interpret_seek_whence.exit, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.h = load i64, ptr @sym_CUR, align 8, !tbaa !13
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %interpret_seek_whence.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr @sym_END, align 8, !tbaa !13
  %i.k = icmp eq i64 %i.d, %i.j
  br i1 %i.k, label %interpret_seek_whence.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr @sym_DATA, align 8, !tbaa !13
  %i.m = icmp eq i64 %i.d, %i.l
  br i1 %i.m, label %interpret_seek_whence.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = load i64, ptr @sym_HOLE, align 8, !tbaa !13
  %i.o = icmp eq i64 %i.d, %i.n
  br i1 %i.o, label %interpret_seek_whence.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = trunc i64 %i.d to i1
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i64 @rb_fix2int(i64 noundef %i.d) #28
  br label %rb_num2int_inline.exit.i

bb.j:                                             ; preds = %bb.h
  %i.r = tail call i64 @rb_num2int(i64 noundef %i.d) #28
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.q, %bb.i ], [ %i.r, %bb.j ]
  %i.s = trunc i64 %.0.i.i to i32
  br label %interpret_seek_whence.exit

interpret_seek_whence.exit:                       ; preds = %.preheader, %rb_num2int_inline.exit.i, %bb.g, %bb.f, %bb.e, %bb.d, %rb_scan_args_set.exit
  %.0 = phi i32 [ 4, %bb.g ], [ %i.s, %rb_num2int_inline.exit.i ], [ 0, %rb_scan_args_set.exit ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 0, %.preheader ]
  %i.t = trunc i64 %i.b to i1
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %interpret_seek_whence.exit
  %i.u = ashr i64 %i.b, 1
  br label %rb_num2long_inline.exit

bb.l:                                             ; preds = %interpret_seek_whence.exit
  %i.v = tail call i64 @rb_num2long(i64 noundef %i.b) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.k, %bb.l
  %.0.i19 = phi i64 [ %i.u, %bb.k ], [ %i.v, %bb.l ]
  %i.w = icmp ne i64 %2, 0
  %i.x = and i64 %2, 7
  %i.y = icmp eq i64 %i.x, 0
  %.not3.i.i.i = and i1 %i.w, %i.y
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rb_num2long_inline.exit
  %i.z = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16  ; 3 uses
  %i.ab = and i64 %i.aa, 2048
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %rb_num2long_inline.exit
  tail call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.ac = and i64 %i.aa, 31
  %i.ad = icmp ne i64 %i.ac, 5
  %i.ae = and i64 %i.aa, 49152
  %.not8.i.i = icmp eq i64 %i.ae, 0
  %or.cond.i.i = or i1 %i.ad, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.m, !prof !19

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.m
  %i.af = getelementptr i8, ptr %i.z, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34 ; 7 uses
  %.not.i.i20 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i20, label %bb.n, label %rb_io_check_initialized.exit.i

bb.n:                                             ; preds = %rb_io_taint_check.exit
  %i.ah = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.ai = getelementptr i8, ptr %i.ag, i64 16     ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !20
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.o, label %rb_io_check_closed.exit

bb.o:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.al = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.al, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.am = getelementptr i8, ptr %i.ag, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39 ; 2 uses
  %i.ao = and i32 %i.an, 1
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %rb_io_check_closed.exit
  %i.ap = getelementptr i8, ptr %i.ag, i64 80
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !46
  %.not14 = icmp eq i32 %i.aq, 0
  br i1 %.not14, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr i8, ptr %i.ag, i64 148
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !45
  %.not15 = icmp eq i32 %i.as, 0
  br i1 %.not15, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.at = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.at, ptr noundef nonnull @.str.289) #30
  unreachable

bb.s:                                             ; preds = %bb.q, %rb_io_check_closed.exit
  %i.au = and i32 %i.an, 2
  %.not16 = icmp eq i32 %i.au, 0
  br i1 %.not16, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr i8, ptr %i.ag, i64 60
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !40
  %.not17 = icmp eq i32 %i.aw, 0
  br i1 %.not17, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.289) #34
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.ax = tail call ptr @rb_errno_ptr() #28
  store i32 0, ptr %i.ax, align 4, !tbaa !7
  %i.ay = load i32, ptr %i.ai, align 8, !tbaa !20
  %i.az = tail call i64 @lseek(i32 noundef %i.ay, i64 noundef %.0.i19, i32 noundef %.0) #28 ; 4 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bb = tail call ptr @rb_errno_ptr() #28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %.not18 = icmp eq i32 %i.bc, 0
  br i1 %.not18, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = tail call ptr @rb_errno_ptr() #28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = getelementptr i8, ptr %i.ag, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !44
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_sysseek, i32 noundef %i.be, i64 noundef %i.bg) #30
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bh = add i64 %i.az, 4611686018427387904
  %or.cond.i21 = icmp sgt i64 %i.bh, -1
  br i1 %or.cond.i21, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bi = shl nsw i64 %i.az, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %rb_long2num_inline.exit

bb.aa:                                            ; preds = %bb.y
  %i.bk = tail call i64 @rb_int2big(i64 noundef %i.az) #28
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.z, %bb.aa
  %.0.i22 = phi i64 [ %i.bj, %bb.z ], [ %i.bk, %bb.aa ]
  ret i64 %.0.i22
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_io_advise(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.io_advise_struct, align 8   ; 7 uses
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !13     ; 18 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 4, %.preheader ] ; 4 uses
  %.286.i = phi i32 [ 2, %bb.b ], [ 1, %.preheader ] ; 4 uses
  %i.f = icmp samesign ult i32 %.286.i, %0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = zext nneg i32 %.286.i to i64
  %i.h = getelementptr [8 x i8], ptr %1, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = add nuw nsw i32 %.286.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi i64 [ %i.i, %bb.d ], [ 4, %bb.c ]    ; 4 uses
  %.286.i.1 = phi i32 [ %i.j, %bb.d ], [ %.286.i, %bb.c ]
  %i.l = icmp eq i32 %.286.i.1, %0
  br i1 %i.l, label %rb_scan_args_set.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 3) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.e
  %i.m = and i64 %i.b, 255
  %i.n = icmp eq i64 %i.m, 12
  br i1 %i.n, label %RB_SYMBOL_P.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.o = icmp eq i64 %i.b, 0
  %i.p = and i64 %i.b, 7
  %i.q = icmp ne i64 %i.p, 0
  %i.r = or i1 %i.o, %i.q
  br i1 %i.r, label %RB_SYMBOL_P.exit.thread17.i, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.g
  %i.s = inttoptr i64 %i.b to ptr
  %i.t = load i64, ptr %i.s, align 8, !tbaa !16
  %i.u = and i64 %i.t, 31
  %i.v = icmp eq i64 %i.u, 20
  br i1 %i.v, label %RB_SYMBOL_P.exit.thread.i, label %RB_SYMBOL_P.exit.thread17.i

RB_SYMBOL_P.exit.thread17.i:                      ; preds = %RB_SYMBOL_P.exit.i, %bb.g
  %i.w = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.290) #30
  unreachable

RB_SYMBOL_P.exit.thread.i:                        ; preds = %RB_SYMBOL_P.exit.i, %rb_scan_args_set.exit
  %i.x = load i64, ptr @sym_normal, align 8, !tbaa !13
  %.not.i6 = icmp eq i64 %i.b, %i.x
  %i.y = load i64, ptr @sym_sequential, align 8
  %.not8.i = icmp eq i64 %i.b, %i.y
  %or.cond.i7 = select i1 %.not.i6, i1 true, i1 %.not8.i
  %i.z = load i64, ptr @sym_random, align 8
  %.not9.i = icmp eq i64 %i.b, %i.z
  %or.cond13.i = select i1 %or.cond.i7, i1 true, i1 %.not9.i
  %i.aa = load i64, ptr @sym_willneed, align 8
  %.not10.i = icmp eq i64 %i.b, %i.aa
  %or.cond14.i = select i1 %or.cond13.i, i1 true, i1 %.not10.i
  %i.ab = load i64, ptr @sym_dontneed, align 8
  %.not11.i = icmp eq i64 %i.b, %i.ab
  %or.cond15.i = select i1 %or.cond14.i, i1 true, i1 %.not11.i
  %i.ac = load i64, ptr @sym_noreuse, align 8
  %.not12.i = icmp eq i64 %i.b, %i.ac
  %or.cond16.i = select i1 %or.cond15.i, i1 true, i1 %.not12.i
  br i1 %or.cond16.i, label %advice_arg_check.exit, label %bb.h

bb.h:                                             ; preds = %RB_SYMBOL_P.exit.thread.i
  %i.ad = load i64, ptr @rb_eNotImpError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.291, i64 noundef %i.b) #30
  unreachable

advice_arg_check.exit:                            ; preds = %RB_SYMBOL_P.exit.thread.i
  %i.ae = inttoptr i64 %2 to ptr
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.i, label %rb_io_get_write_io.exit

bb.i:                                             ; preds = %advice_arg_check.exit
  %i.ah = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %advice_arg_check.exit
  %i.ai = getelementptr i8, ptr %i.ag, i64 88
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !37 ; 2 uses
  %.not.i8 = icmp eq i64 %i.aj, 0
  %..i = select i1 %.not.i8, i64 %2, i64 %i.aj    ; 5 uses
  %i.ak = icmp ne i64 %..i, 0
  %i.al = and i64 %..i, 7
  %i.am = icmp eq i64 %i.al, 0
  %.not3.i.i.i = and i1 %i.ak, %i.am
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rb_io_get_write_io.exit
  %i.an = inttoptr i64 %..i to ptr                ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !16 ; 3 uses
  %i.ap = and i64 %i.ao, 2048
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %rb_io_get_write_io.exit
  tail call void @rb_error_frozen_object(i64 noundef %..i) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.aq = and i64 %i.ao, 31
  %i.ar = icmp ne i64 %i.aq, 5
  %i.as = and i64 %i.ao, 49152
  %.not8.i.i = icmp eq i64 %i.as, 0
  %or.cond.i.i = or i1 %i.ar, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.j, !prof !19
end_hunk_11
begin_hunk_12_@io_wait:bb.a
  br i1 %.not4.i46.i, label %.lr.ph.i48.i, label %rbimpl_intern_const.exit50.i

.lr.ph.i48.i:                                     ; preds = %bb.j, %.lr.ph.i48.i
  %i.bc = tail call i64 @rb_intern2(ptr noundef nonnull @.str.307, i64 noundef 8) #28 ; 3 uses
  store i64 %i.bc, ptr @wait_mode_sym.rbimpl_id.306, align 8, !tbaa !13
  %.not.i49.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i49.i, label %.lr.ph.i48.i, label %rbimpl_intern_const.exit50.i, !llvm.loop !153

rbimpl_intern_const.exit50.i:                     ; preds = %.lr.ph.i48.i, %bb.j
  %.lcssa.i47.i = phi i64 [ %.pr.i45.i, %bb.j ], [ %i.bc, %.lr.ph.i48.i ]
  %i.bd = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i47.i) #28
  %i.be = icmp eq i64 %i.ac, %i.bd
  br i1 %i.be, label %wait_mode_sym.exit, label %bb.k

bb.k:                                             ; preds = %rbimpl_intern_const.exit50.i
  %.pr.i55 = load i64, ptr @wait_mode_sym.rbimpl_id.308, align 8, !tbaa !13 ; 2 uses
  %.not4.i56 = icmp eq i64 %.pr.i55, 0
  br i1 %.not4.i56, label %.lr.ph.i58, label %rbimpl_intern_const.exit60

.lr.ph.i58:                                       ; preds = %bb.k, %.lr.ph.i58
  %i.bf = tail call i64 @rb_intern2(ptr noundef nonnull @.str.309, i64 noundef 2) #28 ; 3 uses
  store i64 %i.bf, ptr @wait_mode_sym.rbimpl_id.308, align 8, !tbaa !13
  %.not.i59 = icmp eq i64 %i.bf, 0
  br i1 %.not.i59, label %.lr.ph.i58, label %rbimpl_intern_const.exit60, !llvm.loop !153

rbimpl_intern_const.exit60:                       ; preds = %.lr.ph.i58, %bb.k
  %.lcssa.i57 = phi i64 [ %.pr.i55, %bb.k ], [ %i.bf, %.lr.ph.i58 ]
  %i.bg = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i57) #28
  %i.bh = icmp eq i64 %i.ac, %i.bg
  br i1 %i.bh, label %wait_mode_sym.exit, label %bb.l

bb.l:                                             ; preds = %rbimpl_intern_const.exit60
  %.pr.i49 = load i64, ptr @wait_mode_sym.rbimpl_id.310, align 8, !tbaa !13 ; 2 uses
  %.not4.i50 = icmp eq i64 %.pr.i49, 0
  br i1 %.not4.i50, label %.lr.ph.i52, label %rbimpl_intern_const.exit54

.lr.ph.i52:                                       ; preds = %bb.l, %.lr.ph.i52
  %i.bi = tail call i64 @rb_intern2(ptr noundef nonnull @.str.311, i64 noundef 10) #28 ; 3 uses
  store i64 %i.bi, ptr @wait_mode_sym.rbimpl_id.310, align 8, !tbaa !13
  %.not.i53 = icmp eq i64 %i.bi, 0
  br i1 %.not.i53, label %.lr.ph.i52, label %rbimpl_intern_const.exit54, !llvm.loop !153

rbimpl_intern_const.exit54:                       ; preds = %.lr.ph.i52, %bb.l
  %.lcssa.i51 = phi i64 [ %.pr.i49, %bb.l ], [ %i.bi, %.lr.ph.i52 ]
  %i.bj = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i51) #28
  %i.bk = icmp eq i64 %i.ac, %i.bj
  br i1 %i.bk, label %wait_mode_sym.exit, label %bb.m

bb.m:                                             ; preds = %rbimpl_intern_const.exit54
  %.pr.i = load i64, ptr @wait_mode_sym.rbimpl_id.312, align 8, !tbaa !13 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %i.bl = tail call i64 @rb_intern2(ptr noundef nonnull @.str.313, i64 noundef 17) #28 ; 3 uses
  store i64 %i.bl, ptr @wait_mode_sym.rbimpl_id.312, align 8, !tbaa !13
  %.not.i48 = icmp eq i64 %i.bl, 0
  br i1 %.not.i48, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !153

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.m
  %.lcssa.i = phi i64 [ %.pr.i, %bb.m ], [ %i.bl, %.lr.ph.i ]
  %i.bm = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #28
  %i.bn = icmp eq i64 %i.ac, %i.bm
  br i1 %i.bn, label %wait_mode_sym.exit, label %bb.n

bb.n:                                             ; preds = %rbimpl_intern_const.exit
  %i.bo = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bo, ptr noundef nonnull @.str.314, i64 noundef %i.ac) #30
  unreachable

wait_mode_sym.exit:                               ; preds = %rbimpl_intern_const.exit.i, %rbimpl_intern_const.exit26.i, %rbimpl_intern_const.exit32.i, %rbimpl_intern_const.exit38.i, %rbimpl_intern_const.exit44.i, %rbimpl_intern_const.exit50.i, %rbimpl_intern_const.exit60, %rbimpl_intern_const.exit54, %rbimpl_intern_const.exit
  %.0.i = phi i32 [ 5, %rbimpl_intern_const.exit54 ], [ 1, %rbimpl_intern_const.exit.i ], [ 1, %rbimpl_intern_const.exit26.i ], [ 1, %rbimpl_intern_const.exit32.i ], [ 4, %rbimpl_intern_const.exit38.i ], [ 4, %rbimpl_intern_const.exit44.i ], [ 4, %rbimpl_intern_const.exit50.i ], [ 5, %rbimpl_intern_const.exit60 ], [ 5, %rbimpl_intern_const.exit ]
  %i.bp = or i32 %.0.i, %.03181
  br label %bb.q

RB_SYMBOL_P.exit40.thread63:                      ; preds = %bb.e, %RB_SYMBOL_P.exit40
  %i.bq = icmp eq i64 %.02982, 36
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %RB_SYMBOL_P.exit40.thread63
  %i.br = tail call { i64, i64 } @rb_time_interval(i64 noundef %i.ac) #28 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %RB_SYMBOL_P.exit40.thread63
  %i.bs = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bs, ptr noundef nonnull @.str.300) #30
  unreachable

bb.q:                                             ; preds = %wait_mode_sym.exit, %bb.o
  %.132 = phi i32 [ %i.bp, %wait_mode_sym.exit ], [ %.03181, %bb.o ] ; 2 uses
  %.130 = phi i64 [ %.02982, %wait_mode_sym.exit ], [ %i.ac, %bb.o ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !267

RB_SYMBOL_P.exit39.thread62:                      ; preds = %bb.d, %RB_SYMBOL_P.exit39
  %i.bt = trunc i64 %i.a to i1
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %RB_SYMBOL_P.exit39.thread62
  %i.bu = tail call i64 @rb_fix2int(i64 noundef %i.a) #28
  br label %rb_num2int_inline.exit.i

bb.s:                                             ; preds = %RB_SYMBOL_P.exit39.thread62
  %i.bv = tail call i64 @rb_num2int(i64 noundef %i.a) #28
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.s, %bb.r
  %.0.i.i = phi i64 [ %i.bu, %bb.r ], [ %i.bv, %bb.s ]
  %i.bw = trunc i64 %.0.i.i to i32                ; 2 uses
  %i.bx = icmp slt i32 %i.bw, 1
  br i1 %i.bx, label %bb.t, label %io_event_from_value.exit

bb.t:                                             ; preds = %rb_num2int_inline.exit.i
  %i.by = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.by, ptr noundef nonnull @.str.315) #30
  unreachable

io_event_from_value.exit:                         ; preds = %rb_num2int_inline.exit.i
  %i.bz = load i64, ptr %i.l, align 8, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %io_event_from_value.exit
  %.not38.not = phi i1 [ false, %io_event_from_value.exit ], [ true, %._crit_edge ]
  %.not11.i = phi i1 [ true, %io_event_from_value.exit ], [ false, %._crit_edge ] ; 2 uses
  %.233 = phi i32 [ %i.bw, %io_event_from_value.exit ], [ %i.y, %._crit_edge ] ; 3 uses
  %.2 = phi i64 [ %i.bz, %io_event_from_value.exit ], [ %spec.select, %._crit_edge ] ; 2 uses
  %i.ca = and i32 %.233, 1
  %.not36 = icmp eq i32 %i.ca, 0
  br i1 %.not36, label %bb.y, label %.thread

.thread:                                          ; preds = %RB_SYMBOL_P.exit.thread, %bb.u
  %.2126 = phi i64 [ %.2, %bb.u ], [ 4, %RB_SYMBOL_P.exit.thread ]
  %.233124 = phi i32 [ %.233, %bb.u ], [ 1, %RB_SYMBOL_P.exit.thread ]
  %.not11.i122 = phi i1 [ %.not11.i, %bb.u ], [ false, %RB_SYMBOL_P.exit.thread ]
  %.not38.not121 = phi i1 [ %.not38.not, %bb.u ], [ true, %RB_SYMBOL_P.exit.thread ] ; 2 uses
  %i.cb = icmp ne i64 %2, 0
  %i.cc = and i64 %2, 7
  %i.cd = icmp eq i64 %i.cc, 0
  %.not3.i.i.i = and i1 %i.cb, %i.cd
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %.thread
  %i.ce = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !16 ; 3 uses
  %i.cg = and i64 %i.cf, 2048
  %.not.i.i41 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i41, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %.thread
  tail call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.ch = and i64 %i.cf, 31
  %i.ci = icmp ne i64 %i.ch, 5
  %i.cj = and i64 %i.cf, 49152
  %.not8.i.i = icmp eq i64 %i.cj, 0
  %or.cond.i.i = or i1 %i.ci, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.v, !prof !19

bb.v:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.v
  %i.ck = getelementptr i8, ptr %i.ce, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !34 ; 4 uses
  %.not.i.i42 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i42, label %bb.w, label %rb_io_check_initialized.exit.i

bb.w:                                             ; preds = %rb_io_taint_check.exit
  %i.cm = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cm, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.cn = getelementptr i8, ptr %i.cl, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !20
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %bb.x, label %rb_io_check_closed.exit

bb.x:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.cq = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cq, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.cr = getelementptr i8, ptr %i.cl, i64 148
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i, label %rb_io_read_pending.exit, label %rb_io_read_pending.exit.thread

rb_io_read_pending.exit.thread:                   ; preds = %rb_io_check_closed.exit
  %.mux130 = select i1 %.not38.not121, i64 20, i64 3
  br label %io_wait_event.exit

rb_io_read_pending.exit:                          ; preds = %rb_io_check_closed.exit
  %i.ct = getelementptr i8, ptr %i.cl, i64 80
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !46
  %i.cv = icmp eq i32 %i.cu, 0                    ; 2 uses
  %brmerge = or i1 %.not38.not121, %i.cv
  %.mux = select i1 %brmerge, i64 20, i64 3
  br i1 %i.cv, label %bb.y, label %io_wait_event.exit

bb.y:                                             ; preds = %rb_io_read_pending.exit, %bb.u
  %.2127 = phi i64 [ %.2126, %rb_io_read_pending.exit ], [ %.2, %bb.u ]
  %.233125 = phi i32 [ %.233124, %rb_io_read_pending.exit ], [ %.233, %bb.u ] ; 2 uses
  %.not11.i123 = phi i1 [ %.not11.i122, %rb_io_read_pending.exit ], [ %.not11.i, %bb.u ]
  %i.cw = shl nuw i32 %.233125, 1
  %i.cx = or disjoint i32 %i.cw, 1
  %i.cy = zext i32 %i.cx to i64
  %i.cz = tail call i64 @rb_io_wait(i64 noundef %2, i64 noundef %i.cy, i64 noundef %.2127) ; 5 uses
  %i.da = and i64 %i.cz, -5
  %.not12.i = icmp eq i64 %i.da, 0
  br i1 %.not12.i, label %io_wait_event.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = trunc i64 %i.cz to i1
  br i1 %i.db, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dc = tail call i64 @rb_fix2int(i64 noundef %i.cz) #28
  br label %rb_num2int_inline.exit.i44

bb.ab:                                            ; preds = %bb.z
  %i.dd = tail call i64 @rb_num2int(i64 noundef %i.cz) #28
  br label %rb_num2int_inline.exit.i44

rb_num2int_inline.exit.i44:                       ; preds = %bb.ab, %bb.aa
  %.0.i.i45 = phi i64 [ %i.dc, %bb.aa ], [ %i.dd, %bb.ab ]
  %i.de = trunc i64 %.0.i.i45 to i32
  %i.df = and i32 %.233125, %i.de
  %.not.i46 = icmp eq i32 %i.df, 0
  %..i = select i1 %.not11.i123, i64 %i.cz, i64 %2
  %.0.i47 = select i1 %.not.i46, i64 0, i64 %..i
  br label %io_wait_event.exit

io_wait_event.exit:                               ; preds = %rb_io_read_pending.exit.thread, %rb_io_read_pending.exit, %rb_num2int_inline.exit.i44, %bb.y
  %.1 = phi i64 [ 4, %bb.y ], [ %.mux, %rb_io_read_pending.exit ], [ %.0.i47, %rb_num2int_inline.exit.i44 ], [ %.mux130, %rb_io_read_pending.exit.thread ]
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, -7) i64 @io_wait_readable(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp ne i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 5 uses
  %.not.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i8, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.k)
  %i.q = getelementptr i8, ptr %i.k, i64 148
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %rb_io_read_pending.exit, label %io_wait_event.exit

rb_io_read_pending.exit:                          ; preds = %rb_io_check_closed.exit
  %i.s = getelementptr i8, ptr %i.k, i64 80
  %i.t = load i32, ptr %i.s, align 8, !tbaa !46
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.e, label %io_wait_event.exit

bb.e:                                             ; preds = %rb_io_read_pending.exit
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.f, label %rb_check_arity.exit

bb.f:                                             ; preds = %bb.e
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #30
  unreachable

rb_check_arity.exit:                              ; preds = %bb.e
  %i.u = icmp eq i32 %0, 1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_check_arity.exit
  %i.v = load i64, ptr %1, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %rb_check_arity.exit, %bb.g
  %i.w = phi i64 [ %i.v, %bb.g ], [ 4, %rb_check_arity.exit ]
  %i.x = tail call i64 @rb_io_wait(i64 noundef %2, i64 noundef 3, i64 noundef %i.w) ; 4 uses
  %i.y = and i64 %i.x, -5
  %.not12.i = icmp eq i64 %i.y, 0
  br i1 %.not12.i, label %io_wait_event.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = trunc i64 %i.x to i1
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i64 @rb_fix2int(i64 noundef %i.x) #28
  br label %rb_num2int_inline.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ab = tail call i64 @rb_num2int(i64 noundef %i.x) #28
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.k, %bb.j
  %.0.i.i = phi i64 [ %i.aa, %bb.j ], [ %i.ab, %bb.k ]
  %i.ac = and i64 %.0.i.i, 1
  %.not.i9 = icmp eq i64 %i.ac, 0
  %.0.i10 = select i1 %.not.i9, i64 0, i64 %2
  br label %io_wait_event.exit

io_wait_event.exit:                               ; preds = %rb_io_check_closed.exit, %rb_num2int_inline.exit.i, %bb.h, %rb_io_read_pending.exit
  %.0 = phi i64 [ 4, %bb.h ], [ 20, %rb_io_read_pending.exit ], [ %.0.i10, %rb_num2int_inline.exit.i ], [ 20, %rb_io_check_closed.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, -7) i64 @io_wait_writable(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp ne i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 5 uses
  %.not.i.i6 = icmp eq ptr %i.k, null
  br i1 %.not.i.i6, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit.i

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i
  %i.q = getelementptr i8, ptr %i.k, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !39
  %i.s = and i32 %i.r, 2
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_io_check_closed.exit.i
  %i.t = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.t, ptr noundef nonnull @.str.8) #30
  unreachable

bb.f:                                             ; preds = %rb_io_check_closed.exit.i
  %i.u = getelementptr i8, ptr %i.k, i64 80
  %i.v = load i32, ptr %i.u, align 8, !tbaa !46
  %.not4.i = icmp eq i32 %i.v, 0
  br i1 %.not4.i, label %rb_io_check_writable.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @io_unread(ptr noundef nonnull %i.k, i1 noundef zeroext true)
  br label %rb_io_check_writable.exit

rb_io_check_writable.exit:                        ; preds = %bb.f, %bb.g
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.h, label %rb_check_arity.exit

bb.h:                                             ; preds = %rb_io_check_writable.exit
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #30
  unreachable

rb_check_arity.exit:                              ; preds = %rb_io_check_writable.exit
  %i.w = icmp eq i32 %0, 1
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rb_check_arity.exit
  %i.x = load i64, ptr %1, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %rb_check_arity.exit, %bb.i
  %i.y = phi i64 [ %i.x, %bb.i ], [ 4, %rb_check_arity.exit ]
  %i.z = tail call i64 @rb_io_wait(i64 noundef %2, i64 noundef 9, i64 noundef %i.y) ; 4 uses
  %i.aa = and i64 %i.z, -5
  %.not12.i = icmp eq i64 %i.aa, 0
  br i1 %.not12.i, label %io_wait_event.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = trunc i64 %i.z to i1
  br i1 %i.ab, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call i64 @rb_fix2int(i64 noundef %i.z) #28
  br label %rb_num2int_inline.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ad = tail call i64 @rb_num2int(i64 noundef %i.z) #28
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.m, %bb.l
  %.0.i.i = phi i64 [ %i.ac, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = and i64 %.0.i.i, 4
  %.not.i7 = icmp eq i64 %i.ae, 0
  %.0.i = select i1 %.not.i7, i64 0, i64 %2
  br label %io_wait_event.exit

io_wait_event.exit:                               ; preds = %bb.j, %rb_num2int_inline.exit.i
  %.1.i = phi i64 [ %.0.i, %rb_num2int_inline.exit.i ], [ 4, %bb.j ]
  ret i64 %.1.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, -7) i64 @io_wait_priority(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp ne i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.d = inttoptr i64 %2 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.g = and i64 %i.e, 31
  %i.h = icmp ne i64 %i.g, 5
  %i.i = and i64 %i.e, 49152
  %.not8.i.i = icmp eq i64 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 5 uses
  %.not.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i8, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.l = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.l, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.m = getelementptr i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !20
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.p = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.k)
  %i.q = getelementptr i8, ptr %i.k, i64 148
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %rb_io_read_pending.exit, label %io_wait_event.exit

rb_io_read_pending.exit:                          ; preds = %rb_io_check_closed.exit
  %i.s = getelementptr i8, ptr %i.k, i64 80
  %i.t = load i32, ptr %i.s, align 8, !tbaa !46
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.e, label %io_wait_event.exit

bb.e:                                             ; preds = %rb_io_read_pending.exit
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.f, label %rb_check_arity.exit

bb.f:                                             ; preds = %bb.e
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #30
  unreachable

rb_check_arity.exit:                              ; preds = %bb.e
  %i.u = icmp eq i32 %0, 1
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_check_arity.exit
  %i.v = load i64, ptr %1, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %rb_check_arity.exit, %bb.g
  %i.w = phi i64 [ %i.v, %bb.g ], [ 4, %rb_check_arity.exit ]
  %i.x = tail call i64 @rb_io_wait(i64 noundef %2, i64 noundef 5, i64 noundef %i.w) ; 4 uses
  %i.y = and i64 %i.x, -5
  %.not12.i = icmp eq i64 %i.y, 0
  br i1 %.not12.i, label %io_wait_event.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = trunc i64 %i.x to i1
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = tail call i64 @rb_fix2int(i64 noundef %i.x) #28
  br label %rb_num2int_inline.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ab = tail call i64 @rb_num2int(i64 noundef %i.x) #28
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.k, %bb.j
  %.0.i.i = phi i64 [ %i.aa, %bb.j ], [ %i.ab, %bb.k ]
  %i.ac = and i64 %.0.i.i, 2
  %.not.i9 = icmp eq i64 %i.ac, 0
  %.0.i10 = select i1 %.not.i9, i64 0, i64 %2
  br label %io_wait_event.exit

io_wait_event.exit:                               ; preds = %rb_io_check_closed.exit, %rb_num2int_inline.exit.i, %bb.h, %rb_io_read_pending.exit
  %.0 = phi i64 [ 4, %bb.h ], [ 20, %rb_io_read_pending.exit ], [ %.0.i10, %rb_num2int_inline.exit.i ], [ 20, %rb_io_check_closed.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @stdin_getter(i64 %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_ractor_stdin() #28
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @stdin_setter(i64 noundef %0, i64 %1, ptr readnone captures(none) %2) #0 {
bb.a:
  tail call void @rb_ractor_stdin_set(i64 noundef %0) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @stdout_getter(i64 %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_ractor_stdout() #28
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @stdout_setter(i64 noundef %0, i64 noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i64, ptr @id_write, align 8, !tbaa !13 ; 2 uses
  %i.b = tail call i32 @rb_respond_to(i64 noundef %0, i64 noundef %i.a) #28
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %must_respond_to.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.d = tail call i64 @rb_id2str(i64 noundef %1) #28
  %i.e = tail call i64 @rb_id2str(i64 noundef %i.a) #28
  %i.f = tail call i64 @rb_obj_class(i64 noundef %0) #28
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.316, i64 noundef %i.d, i64 noundef %i.e, i64 noundef %i.f) #30
  unreachable

must_respond_to.exit:                             ; preds = %bb.a
  tail call void @rb_ractor_stdout_set(i64 noundef %0) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @stderr_getter(i64 %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_ractor_stderr() #28
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @stderr_setter(i64 noundef %0, i64 noundef %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = load i64, ptr @id_write, align 8, !tbaa !13 ; 2 uses
  %i.b = tail call i32 @rb_respond_to(i64 noundef %0, i64 noundef %i.a) #28
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %must_respond_to.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.d = tail call i64 @rb_id2str(i64 noundef %1) #28
  %i.e = tail call i64 @rb_id2str(i64 noundef %i.a) #28
  %i.f = tail call i64 @rb_obj_class(i64 noundef %0) #28
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.316, i64 noundef %i.d, i64 noundef %i.e, i64 noundef %i.f) #30
  unreachable

must_respond_to.exit:                             ; preds = %bb.a
  tail call void @rb_ractor_stderr_set(i64 noundef %0) #28
  ret void
}

declare void @rb_global_variable(ptr noundef) local_unnamed_addr #1

declare void @rb_define_global_const(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_class_new(i64 noundef) local_unnamed_addr #1

declare void @rb_set_class_path(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @argf_alloc(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %0, i64 noundef 88, ptr noundef nonnull @argf_type) #28 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !268
  %i.e = trunc i64 %i.d to i1
  %i.f = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  br i1 %i.e, label %RTYPEDDATA_GET_DATA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !270
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.f, %bb.a ] ; 4 uses
  store i64 4, ptr %i.h, align 8, !tbaa !178
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store i64 4, ptr %i.i, align 8, !tbaa !77
  %i.j = getelementptr i8, ptr %i.h, i64 24
  store i64 0, ptr %i.j, align 8, !tbaa !79
  %i.k = getelementptr i8, ptr %i.h, i64 32
  store i64 4, ptr %i.k, align 8, !tbaa !176
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @argf_initialize(i64 noundef returned %0, i64 noundef %1) #17 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 32       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.c, i8 noundef 0, i64 noundef 88, i1 noundef false) #28
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !75   ; 4 uses
  store i64 4, ptr %i.d, align 8, !tbaa !178
  %i.e = getelementptr i8, ptr %i.d, i64 8
  store i64 4, ptr %i.e, align 8, !tbaa !77
  %i.f = getelementptr i8, ptr %i.d, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !79
  %i.g = getelementptr i8, ptr %i.d, i64 32
  store i64 %1, ptr %i.g, align 8, !tbaa !176
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @argf_initialize_copy(i64 noundef returned %0, i64 noundef %1) #0 {
bb.a:
  %.not = icmp eq i64 %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @rb_obj_init_copy(i64 noundef %0, i64 noundef %1) #28 ; 0 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 32       ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.e = inttoptr i64 %1 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false), !tbaa.struct !271
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !176
  %i.k = tail call i64 @rb_obj_dup(i64 noundef %i.j) #28
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.m = getelementptr i8, ptr %i.l, i64 32
  store i64 %i.k, ptr %i.m, align 8, !tbaa !176
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i64 %0
}
end_hunk_12
begin_hunk_13_@rb_file_initialize:bb.a
  %i.ap = phi i32 [ %i.ao, %bb.k ], [ 438, %.thread13 ]
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ar = load i32, ptr %i.d, align 4, !tbaa !7
  %i.as = load i32, ptr %i.e, align 4, !tbaa !7
  %i.at = call fastcc i64 @rb_file_open_generic(i64 noundef %2, i64 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, ptr noundef %3, i32 noundef %i.ap) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %rb_open_file.exit
  ret i64 %2
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

declare i64 @rb_id_encoding() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_builtin_io() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_load_with_builtin_functions(ptr noundef nonnull @.str.192, ptr noundef nonnull @Init_builtin_io.io_table) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @io_read_nonblock(ptr readnone captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  %5 = alloca %struct.io_internal_read_struct, align 8 ; 9 uses
  store i64 %3, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.b = trunc i64 %2 to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = ashr i64 %2, 1
  br label %rb_num2long_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_num2long(i64 noundef %2) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 11 uses
  %i.e = icmp slt i64 %.0.i, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2long_inline.exit
  %i.f = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.284, i64 noundef %.0.i) #30
  unreachable

bb.e:                                             ; preds = %rb_num2long_inline.exit
  %.not47 = icmp eq i64 %3, 4                     ; 2 uses
  br i1 %.not47, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i) #28, !callees !232, !inline_history !233
  store i64 %i.g, ptr %i.a, align 8, !tbaa !13
  br label %io_setstrbuf.exit

bb.g:                                             ; preds = %bb.e
  %i.h = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 2 uses
  call void @rb_str_modify(i64 noundef %i.h) #28
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !81   ; 2 uses
  %.not.not.i = icmp slt i64 %i.k, %.0.i
  %i.l = sub i64 %.0.i, %i.k                      ; 2 uses
  br i1 %.not.not.i, label %bb.h, label %io_setstrbuf.exit

bb.h:                                             ; preds = %bb.g
  %i.m = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.n = call i64 @rb_str_capacity(i64 noundef %i.m) #33
  %i.o = inttoptr i64 %i.m to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !81
  %i.r = sub i64 %i.n, %i.q
  %i.s = icmp ult i64 %i.r, %i.l
  br i1 %i.s, label %bb.i, label %io_setstrbuf.exit

bb.i:                                             ; preds = %bb.h
  call void @rb_str_modify_expand(i64 noundef %i.m, i64 noundef %i.l) #28
  br label %io_setstrbuf.exit

io_setstrbuf.exit:                                ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %.1.i = phi i32 [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.h ] ; 4 uses
  %i.t = call i32 @rb_bool_expected(i64 noundef %4, ptr noundef nonnull @.str.324, i32 noundef 1) #28 ; 0 uses
  %i.u = icmp ne i64 %1, 0
  %i.v = and i64 %1, 7
  %i.w = icmp eq i64 %i.v, 0
  %.not3.i.i.i = and i1 %i.u, %i.w
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %io_setstrbuf.exit
  %i.x = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !16   ; 3 uses
  %i.z = and i64 %i.y, 2048
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %io_setstrbuf.exit
  call void @rb_error_frozen_object(i64 noundef %1) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.aa = and i64 %i.y, 31
  %i.ab = icmp ne i64 %i.aa, 5
  %i.ac = and i64 %i.y, 49152
  %.not8.i.i = icmp eq i64 %i.ac, 0
  %or.cond.i.i = or i1 %i.ab, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.j, !prof !19

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  call void @rb_str_modify(i64 noundef %1) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.j
  %i.ad = getelementptr i8, ptr %i.x, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 9 uses
  %.not.i.i33 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i33, label %bb.k, label %rb_io_check_initialized.exit.i

bb.k:                                             ; preds = %rb_io_taint_check.exit
  %i.af = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.af, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.ag = getelementptr i8, ptr %i.ae, i64 16     ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !20
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %rb_io_check_closed.exit

bb.l:                                             ; preds = %rb_io_check_initialized.exit.i
  call void @rb_thread_check_ints() #28
  %i.aj = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  call void @rb_io_check_char_readable(ptr noundef nonnull %i.ae)
  %i.ak = getelementptr i8, ptr %i.ae, i64 148
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %rb_io_check_byte_readable.exit, label %bb.m

bb.m:                                             ; preds = %rb_io_check_closed.exit
  %i.am = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.am, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_byte_readable.exit:                   ; preds = %rb_io_check_closed.exit
  %i.an = icmp eq i64 %.0.i, 0
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !13  ; 5 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 3 uses
  br i1 %i.an, label %bb.n, label %bb.r

bb.n:                                             ; preds = %rb_io_check_byte_readable.exit
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !81
  %.not.i34 = icmp eq i64 %i.ar, 0
  br i1 %.not.i34, label %io_set_read_length.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @rb_str_modify(i64 noundef %i.ao) #28
  call void @rb_str_set_len(i64 noundef %i.ao, i64 noundef 0) #28
  br i1 %.not47, label %bb.p, label %io_set_read_length.exit

bb.p:                                             ; preds = %bb.o
  %i.as = call i64 @rb_str_capacity(i64 noundef %i.ao) #33
  %i.at = icmp ugt i64 %i.as, 4096
  br i1 %i.at, label %bb.q, label %io_set_read_length.exit

bb.q:                                             ; preds = %bb.p
  %i.au = call i64 @rb_str_resize(i64 noundef %i.ao, i64 noundef 0) #28 ; 0 uses
  br label %io_set_read_length.exit

io_set_read_length.exit:                          ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %i.av = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.al

bb.r:                                             ; preds = %rb_io_check_byte_readable.exit
  %i.aw = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.ax = and i64 %i.aw, 8192
  %.not.i35 = icmp eq i64 %i.ax, 0
  %i.ay = getelementptr i8, ptr %i.ap, i64 24     ; 2 uses
  br i1 %.not.i35, label %RSTRING_PTR.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.r, %bb.s
  %i.ba = phi ptr [ %i.az, %bb.s ], [ %i.ay, %bb.r ]
  %i.bb = getelementptr i8, ptr %i.ae, i64 80     ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %read_buffered_data.exit.thread, label %read_buffered_data.exit

read_buffered_data.exit:                          ; preds = %RSTRING_PTR.exit
  %i.be = getelementptr i8, ptr %i.ae, i64 68
  %i.bf = zext nneg i32 %i.bc to i64
  %i.bg = call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.bf) ; 3 uses
  %spec.select.i = trunc nuw nsw i64 %i.bg to i32 ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 4, !tbaa !71
  %i.bi = getelementptr i8, ptr %i.ae, i64 76     ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !47
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr i8, ptr %i.bh, i64 %i.bk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ba, ptr noundef nonnull align 1 %i.bl, i64 noundef %i.bg, i1 noundef false) #28
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !47
  %i.bn = add i32 %i.bm, %spec.select.i
  store i32 %i.bn, ptr %i.bi, align 4, !tbaa !47
  %i.bo = load i32, ptr %i.bb, align 8, !tbaa !46
  %i.bp = sub i32 %i.bo, %spec.select.i
  store i32 %i.bp, ptr %i.bb, align 8, !tbaa !46
  br label %bb.ae

read_buffered_data.exit.thread:                   ; preds = %RSTRING_PTR.exit
  %i.bq = load i32, ptr %i.ag, align 8, !tbaa !20 ; 2 uses
  %i.br = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.bq, i32 noundef 3) #28 ; 2 uses
  %i.bs = and i32 %i.br, 2048
  %.not.i36 = icmp eq i32 %i.bs, 0
  br i1 %.not.i36, label %bb.t, label %rb_fd_set_nonblock.exit

bb.t:                                             ; preds = %read_buffered_data.exit.thread
  %i.bt = or disjoint i32 %i.br, 2048
  %i.bu = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.bq, i32 noundef 4, i32 noundef %i.bt) #28 ; 0 uses
  br label %rb_fd_set_nonblock.exit

rb_fd_set_nonblock.exit:                          ; preds = %read_buffered_data.exit.thread, %bb.t
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bw = icmp eq i64 %i.bv, 4
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %rb_fd_set_nonblock.exit
  %i.bx = call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i) #28, !callees !232, !inline_history !233 ; 2 uses
  store i64 %i.bx, ptr %i.a, align 8, !tbaa !13
  br label %io_setstrbuf.exit40

bb.v:                                             ; preds = %rb_fd_set_nonblock.exit
  %i.by = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 2 uses
  call void @rb_str_modify(i64 noundef %i.by) #28
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !81 ; 2 uses
  %.not.not.i38 = icmp slt i64 %i.cb, %.0.i
  %i.cc = sub i64 %.0.i, %i.cb                    ; 2 uses
  %.pre48 = load i64, ptr %i.a, align 8, !tbaa !13 ; 5 uses
  br i1 %.not.not.i38, label %bb.w, label %io_setstrbuf.exit40

bb.w:                                             ; preds = %bb.v
  %i.cd = call i64 @rb_str_capacity(i64 noundef %.pre48) #33
  %i.ce = inttoptr i64 %.pre48 to ptr
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !81
  %i.ch = sub i64 %i.cd, %i.cg
  %i.ci = icmp ult i64 %i.ch, %i.cc
  br i1 %i.ci, label %bb.x, label %io_setstrbuf.exit40

bb.x:                                             ; preds = %bb.w
  call void @rb_str_modify_expand(i64 noundef %.pre48, i64 noundef %i.cc) #28
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %io_setstrbuf.exit40

io_setstrbuf.exit40:                              ; preds = %bb.u, %bb.v, %bb.w, %bb.x
  %i.cj = phi i64 [ %i.bx, %bb.u ], [ %.pre48, %bb.v ], [ %.pre, %bb.x ], [ %.pre48, %bb.w ] ; 2 uses
  %.1.i39 = phi i32 [ 1, %bb.u ], [ %.1.i, %bb.v ], [ %.1.i, %bb.x ], [ %.1.i, %bb.w ]
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ae, ptr %i.ck, align 8, !tbaa !236
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 1, ptr %i.cl, align 8, !tbaa !237
  %i.cm = load i32, ptr %i.ag, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !238
  %i.co = inttoptr i64 %i.cj to ptr               ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !16
  %i.cq = and i64 %i.cp, 8192
  %.not.i41 = icmp eq i64 %i.cq, 0
  %i.cr = getelementptr i8, ptr %i.co, i64 24     ; 2 uses
  br i1 %.not.i41, label %RSTRING_PTR.exit42, label %bb.y

bb.y:                                             ; preds = %io_setstrbuf.exit40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !86
  br label %RSTRING_PTR.exit42

RSTRING_PTR.exit42:                               ; preds = %io_setstrbuf.exit40, %bb.y
  %i.ct = phi ptr [ %i.cs, %bb.y ], [ %i.cr, %io_setstrbuf.exit40 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !239
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.0.i, ptr %i.cv, align 8, !tbaa !240
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.cw, align 8, !tbaa !241
  %i.cx = ptrtoint ptr %5 to i64
  %i.cy = call i64 @rb_str_locktmp_ensure(i64 noundef %i.cj, ptr noundef nonnull @io_read_memory_call, i64 noundef %i.cx) #28 ; 2 uses
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %RSTRING_PTR.exit42
  %i.da = call ptr @rb_errno_ptr() #28
  %i.db = load i32, ptr %i.da, align 4, !tbaa !7  ; 2 uses
  %i.dc = icmp eq i32 %i.db, 11
  br i1 %i.dc, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %.not32 = icmp eq i64 %4, 0
  br i1 %.not32, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dd = load i64, ptr @sym_wait_readable, align 8, !tbaa !13
  br label %bb.al

bb.ac:                                            ; preds = %bb.aa
  call void @rb_readwrite_syserr_fail(i32 noundef 0, i32 noundef 11, ptr noundef nonnull @.str.285) #31
  unreachable

bb.ad:                                            ; preds = %bb.z
  %i.de = getelementptr i8, ptr %i.ae, i64 32
  %i.df = load i64, ptr %i.de, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @.str.189, i32 noundef %i.db, i64 noundef %i.df) #30
  unreachable

bb.ae:                                            ; preds = %read_buffered_data.exit, %RSTRING_PTR.exit42
  %.028 = phi i64 [ %i.cy, %RSTRING_PTR.exit42 ], [ %i.bg, %read_buffered_data.exit ] ; 5 uses
  %.027 = phi i32 [ %.1.i39, %RSTRING_PTR.exit42 ], [ %.1.i, %read_buffered_data.exit ]
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !13  ; 5 uses
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !81
  %.not.i43 = icmp eq i64 %i.dj, %.028
  br i1 %.not.i43, label %io_set_read_length.exit45, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @rb_str_modify(i64 noundef %i.dg) #28
  call void @rb_str_set_len(i64 noundef %i.dg, i64 noundef range(i64 0, -9223372036854775808) %.028) #28
  %.not8.i44 = icmp eq i32 %.027, 0
  br i1 %.not8.i44, label %io_set_read_length.exit45, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = call i64 @rb_str_capacity(i64 noundef %i.dg) #33
  %i.dl = sub i64 %i.dk, %.028
  %i.dm = icmp ugt i64 %i.dl, 4096
  br i1 %i.dm, label %bb.ah, label %io_set_read_length.exit45

bb.ah:                                            ; preds = %bb.ag
  %i.dn = call i64 @rb_str_resize(i64 noundef %i.dg, i64 noundef range(i64 0, -9223372036854775808) %.028) #28 ; 0 uses
  br label %io_set_read_length.exit45

io_set_read_length.exit45:                        ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah
  %i.do = icmp eq i64 %.028, 0
  br i1 %i.do, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %io_set_read_length.exit45
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @rb_eof_error() #31
  unreachable

bb.ak:                                            ; preds = %io_set_read_length.exit45
  %i.dp = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.ab, %io_set_read_length.exit
  %.0 = phi i64 [ %i.av, %io_set_read_length.exit ], [ %i.dd, %bb.ab ], [ %i.dp, %bb.ak ], [ 4, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @io_write_nonblock(ptr readnone captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.g = inttoptr i64 %2 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 5
  br i1 %i.j, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = tail call i64 @rb_obj_as_string(i64 noundef %2) #28 ; 2 uses
  store i64 %i.k, ptr %i.a, align 8, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.l = phi i64 [ %i.k, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %2, %rbimpl_RB_TYPE_P_fastpath.exit ]
  %i.m = tail call i32 @rb_bool_expected(i64 noundef %3, ptr noundef nonnull @.str.324, i32 noundef 1) #28 ; 0 uses
  %i.n = inttoptr i64 %1 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.c, label %rb_io_get_write_io.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.p, i64 88
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  %..i = select i1 %.not.i, i64 %1, i64 %i.s      ; 5 uses
  %i.t = icmp ne i64 %..i, 0
  %i.u = and i64 %..i, 7
  %i.v = icmp eq i64 %i.u, 0
  %.not3.i.i.i = and i1 %i.t, %i.v
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rb_io_get_write_io.exit
  %i.w = inttoptr i64 %..i to ptr                 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16   ; 3 uses
  %i.y = and i64 %i.x, 2048
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %rb_io_get_write_io.exit
  tail call void @rb_error_frozen_object(i64 noundef %..i) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.z = and i64 %i.x, 31
  %i.aa = icmp ne i64 %i.z, 5
  %i.ab = and i64 %i.x, 49152
  %.not8.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i.i = or i1 %i.aa, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.d, !prof !19

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %..i) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.d
  %i.ac = getelementptr i8, ptr %i.w, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i17, label %bb.e, label %rb_io_check_initialized.exit.i

bb.e:                                             ; preds = %rb_io_taint_check.exit
  %i.ae = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.af = getelementptr i8, ptr %i.ad, i64 16     ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !20
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %rb_io_check_closed.exit.i

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.ai = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ai, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i
  %i.aj = getelementptr i8, ptr %i.ad, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !39
  %i.al = and i32 %i.ak, 2
  %.not.i19 = icmp eq i32 %i.al, 0
  br i1 %.not.i19, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_io_check_closed.exit.i
  %i.am = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.am, ptr noundef nonnull @.str.8) #30
  unreachable

bb.h:                                             ; preds = %rb_io_check_closed.exit.i
  %i.an = getelementptr i8, ptr %i.ad, i64 80
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !46
  %.not4.i = icmp eq i32 %i.ao, 0
  br i1 %.not4.i, label %rb_io_check_writable.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @io_unread(ptr noundef nonnull %i.ad, i1 noundef zeroext true)
  br label %rb_io_check_writable.exit

rb_io_check_writable.exit:                        ; preds = %bb.h, %bb.i
  %i.ap = tail call fastcc i32 @io_fflush(ptr noundef nonnull %i.ad)
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rb_io_check_writable.exit
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.ad) #31
  unreachable

bb.k:                                             ; preds = %rb_io_check_writable.exit
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %i.as = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ar, i32 noundef 3) #28 ; 2 uses
  %i.at = and i32 %i.as, 2048
  %.not.i20 = icmp eq i32 %i.at, 0
  br i1 %.not.i20, label %bb.l, label %rb_fd_set_nonblock.exit

bb.l:                                             ; preds = %bb.k
  %i.au = or disjoint i32 %i.as, 2048
  %i.av = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ar, i32 noundef 4, i32 noundef %i.au) #28 ; 0 uses
  br label %rb_fd_set_nonblock.exit

rb_fd_set_nonblock.exit:                          ; preds = %bb.k, %bb.l
  %i.aw = load i32, ptr %i.af, align 8, !tbaa !20
  %i.ax = inttoptr i64 %i.l to ptr                ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.az = and i64 %i.ay, 8192
  %.not.i22 = icmp eq i64 %i.az, 0
  %i.ba = getelementptr i8, ptr %i.ax, i64 24     ; 2 uses
  br i1 %.not.i22, label %RSTRING_PTR.exit, label %bb.m

bb.m:                                             ; preds = %rb_fd_set_nonblock.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_fd_set_nonblock.exit, %bb.m
  %i.bc = phi ptr [ %i.bb, %bb.m ], [ %i.ba, %rb_fd_set_nonblock.exit ]
  %i.bd = getelementptr i8, ptr %i.ax, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !81
  %i.bf = tail call i64 @write(i32 noundef %i.aw, ptr noundef %i.bc, i64 noundef %i.be) #28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr %i.a, ptr %i.b, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #28, !srcloc !278
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.bh = load volatile i64, ptr %i.bg, align 8, !tbaa !13 ; 0 uses
  %i.bi = icmp slt i64 %i.bf, 0
  br i1 %i.bi, label %bb.n, label %bb.s

bb.n:                                             ; preds = %RSTRING_PTR.exit
  %i.bj = call ptr @rb_errno_ptr() #28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7  ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 11
  br i1 %i.bl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = load i64, ptr @sym_wait_writable, align 8, !tbaa !13
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  call void @rb_readwrite_syserr_fail(i32 noundef 1, i32 noundef 11, ptr noundef nonnull @.str.325) #31
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.bn = getelementptr i8, ptr %i.ad, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @.str.190, i32 noundef %i.bk, i64 noundef %i.bo) #30
  unreachable

bb.s:                                             ; preds = %RSTRING_PTR.exit
  %i.bp = shl nuw i64 %i.bf, 1
  %i.bq = or disjoint i64 %i.bp, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.0 = phi i64 [ %i.bm, %bb.p ], [ %i.bq, %bb.s ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 5, 4) i64 @io_readline(ptr readnone captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  %i.b = icmp eq i64 %3, 4
  %i.c = icmp eq i64 %2, 4                        ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @rb_check_string_type(i64 noundef %2) #28 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i64 %2 to i1
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = ashr i64 %2, 1
  br label %rb_num2long_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.h = tail call i64 @rb_num2long(i64 noundef %2) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.g, %bb.e ], [ %i.h, %bb.f ]
  %i.i = load i64, ptr @rb_rs, align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %rb_num2long_inline.exit
  %.0 = phi i64 [ -1, %bb.b ], [ %.0.i, %rb_num2long_inline.exit ], [ -1, %bb.c ]
  %storemerge = phi i64 [ 4, %bb.b ], [ %i.i, %rb_num2long_inline.exit ], [ %i.d, %bb.c ]
  store i64 %storemerge, ptr %i.a, align 8, !tbaa !13
  br label %rb_num2long_inline.exit11

bb.h:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.k = trunc i64 %3 to i1
  br i1 %i.k, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.l = ashr i64 %3, 1
  br label %rb_num2long_inline.exit11

bb.l:                                             ; preds = %bb.j
  %i.m = call i64 @rb_num2long(i64 noundef %3) #28
  br label %rb_num2long_inline.exit11

rb_num2long_inline.exit11:                        ; preds = %bb.l, %bb.k, %bb.g
  %.1 = phi i64 [ %.0, %bb.g ], [ %i.l, %bb.k ], [ %i.m, %bb.l ]
  call fastcc void @check_getline_args(ptr noundef nonnull %i.a, i64 noundef %1)
  %i.n = load i64, ptr %i.a, align 8, !tbaa !13
  %i.o = and i64 %4, -5
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = call fastcc i64 @rb_io_getline_1(i64 noundef %i.n, i64 noundef %.1, i32 noundef %i.q, i64 noundef %1) ; 3 uses
  call void @rb_lastline_set_up(i64 noundef %i.r, i32 noundef 1) #28
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.m, label %bb.n

bb.m:                                             ; preds = %rb_num2long_inline.exit11
  call void @rb_eof_error() #31
  unreachable

bb.n:                                             ; preds = %rb_num2long_inline.exit11
  ret i64 %i.r
}

declare void @rb_load_with_builtin_functions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_error_frozen_object(i64 noundef) local_unnamed_addr #7

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

declare i64 @rb_syserr_new_path_in(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @rb_econv_close(ptr noundef) local_unnamed_addr #1

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #1

declare i64 @rb_mutex_owned_p(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @io_flush_buffer_async(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = tail call i64 @rb_fiber_scheduler_current() #28 ; 2 uses
  %.not = icmp eq i64 %i.b, 4
  br i1 %.not, label %io_flush_buffer_fiber_scheduler.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !42
  %i.d = getelementptr i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64
end_hunk_13
begin_hunk_14_@internal_read_func:bb.a
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.at = icmp eq i32 %i.as, 11
  br i1 %i.at, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.au = load i64, ptr %0, align 8, !tbaa !234
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !236
  %i.aw = call ptr @rb_errno_ptr() #28
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !241
  %i.az = call fastcc i32 @io_internal_wait(i64 noundef %i.au, ptr noundef %i.av, i32 noundef %i.ax, i32 noundef 1, ptr noundef %i.ay)
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %.loopexit, label %bb.g

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.f, %io_internal_wait.exit.thread
  %.0 = phi i64 [ -1, %io_internal_wait.exit.thread ], [ -1, %bb.f ], [ %i.ao, %bb.g ], [ %i.ao, %bb.h ], [ %i.ao, %bb.i ], [ -1, %bb.j ]
  ret i64 %.0
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @read_all(ptr noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %3 = alloca %struct.bufread_arg, align 8        ; 6 uses
  %i.b = alloca i64, align 8                      ; 24 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  store i64 %2, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.d = getelementptr i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = and i32 %i.g, 4096
  %.not64 = icmp eq i32 %i.h, 0
  br i1 %.not64, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = icmp ne i64 %2, 4                        ; 3 uses
  %i.j = zext i1 %i.i to i32
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #28, !callees !232, !inline_history !233
  store i64 %i.k, ptr %i.b, align 8, !tbaa !13
  br label %io_setstrbuf.exit

bb.e:                                             ; preds = %bb.c
  %i.l = call i64 @rb_string_value(ptr noundef nonnull %i.b) #28 ; 2 uses
  call void @rb_str_modify(i64 noundef %i.l) #28
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !81   ; 2 uses
  %.not.not.i = icmp slt i64 %i.o, 0
  %i.p = sub i64 0, %i.o                          ; 2 uses
  br i1 %.not.not.i, label %bb.f, label %io_setstrbuf.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.b, align 8, !tbaa !13   ; 3 uses
  %i.r = call i64 @rb_str_capacity(i64 noundef %i.q) #33
  %i.s = inttoptr i64 %i.q to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !81
  %i.v = sub i64 %i.r, %i.u
  %i.w = icmp ult i64 %i.v, %i.p
  br i1 %i.w, label %bb.g, label %io_setstrbuf.exit

bb.g:                                             ; preds = %bb.f
  call void @rb_str_modify_expand(i64 noundef %i.q, i64 noundef %i.p) #28
  br label %io_setstrbuf.exit

io_setstrbuf.exit:                                ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  call fastcc void @make_readconv(ptr noundef nonnull %0, i32 noundef 0)
  %i.x = getelementptr i8, ptr %0, i64 148        ; 6 uses
  %i.y = getelementptr i8, ptr %0, i64 136        ; 4 uses
  %i.z = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.aa = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 152
  br label %bb.h

bb.h:                                             ; preds = %bb.v, %io_setstrbuf.exit
  %.054 = phi i32 [ %i.j, %io_setstrbuf.exit ], [ %.256, %bb.v ] ; 2 uses
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !45  ; 2 uses
  %.not68 = icmp eq i32 %i.ac, 0
  br i1 %.not68, label %io_shift_cbuf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not69 = icmp eq i32 %.054, 0
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !13
  call void @rb_str_set_len(i64 noundef %i.ad, i64 noundef 0) #28
  %.pre = load i32, ptr %i.x, align 4, !tbaa !45
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = phi i32 [ %.pre, %bb.j ], [ %i.ac, %bb.i ] ; 4 uses
  %i.af = load i64, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.ag = icmp eq i64 %i.af, 4
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !88
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr i8, ptr %i.ah, i64 %i.aj  ; 2 uses
  %i.al = sext i32 %i.ae to i64                   ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = call i64 @rb_str_new(ptr noundef %i.ak, i64 noundef %i.al) #28 ; 2 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !13
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.an = call i64 @rb_str_cat(i64 noundef %i.af, ptr noundef %i.ak, i64 noundef %i.al) #28 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i = phi i64 [ %i.am, %bb.l ], [ %i.af, %bb.m ]
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !83
  %i.ap = call i64 @rb_enc_associate(i64 noundef %.0.i, ptr noundef %i.ao) #28 ; 0 uses
  %i.aq = load i32, ptr %i.z, align 8, !tbaa !88
  %i.ar = add i32 %i.aq, %i.ae                    ; 3 uses
  store i32 %i.ar, ptr %i.z, align 8, !tbaa !88
  %i.as = load i32, ptr %i.x, align 4, !tbaa !45  ; 2 uses
  %i.at = sub i32 %i.as, %i.ae                    ; 2 uses
  store i32 %i.at, ptr %i.x, align 4, !tbaa !45
  %i.au = icmp eq i32 %i.as, %i.ae
  br i1 %i.au, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load i32, ptr %i.ab, align 8, !tbaa !95
  %i.aw = sdiv i32 %i.av, 2
  %i.ax = icmp slt i32 %i.aw, %i.ar
  br i1 %i.ax, label %bb.p, label %io_shift_cbuf.exit

bb.p:                                             ; preds = %bb.o
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !87  ; 2 uses
  %i.az = sext i32 %i.ar to i64
  %i.ba = getelementptr i8, ptr %i.ay, i64 %i.az
  %i.bb = sext i32 %i.at to i64
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ay, ptr noundef nonnull align 1 %i.ba, i64 noundef %i.bb, i1 noundef false) #28
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %bb.n
  store i32 0, ptr %i.z, align 8, !tbaa !88
  br label %io_shift_cbuf.exit

io_shift_cbuf.exit:                               ; preds = %.sink.split.i, %bb.o, %bb.h
  %.256 = phi i32 [ %.054, %bb.h ], [ 0, %bb.o ], [ 0, %.sink.split.i ] ; 3 uses
  %i.bc = call fastcc i64 @fill_cbuf(ptr noundef nonnull %0, i32 noundef 0) ; 3 uses
  %i.bd = and i64 %i.bc, -17
  %or.cond.not = icmp eq i64 %i.bd, 4
  br i1 %or.cond.not, label %bb.v, label %bb.q

bb.q:                                             ; preds = %io_shift_cbuf.exit
  %i.be = load i32, ptr %i.x, align 4, !tbaa !45  ; 2 uses
  %.not73 = icmp eq i32 %i.be, 0
  br i1 %.not73, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not74 = icmp eq i32 %.256, 0
  br i1 %.not74, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !13
  call void @rb_str_set_len(i64 noundef %i.bf, i64 noundef 0) #28
  %.pre102 = load i32, ptr %i.x, align 4, !tbaa !45
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bg = phi i32 [ %.pre102, %bb.s ], [ %i.be, %bb.r ]
  call fastcc void @io_shift_cbuf(ptr noundef nonnull %0, i32 noundef %i.bg, ptr noundef nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  call void @rb_exc_raise(i64 noundef %i.bc) #30
  unreachable

bb.v:                                             ; preds = %io_shift_cbuf.exit
  %.not72 = icmp eq i64 %i.bc, 4
  br i1 %.not72, label %bb.w, label %bb.h

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @rb_econv_close(ptr noundef nonnull %i.bi) #28
  store ptr null, ptr %i.bh, align 8, !tbaa !48
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bj = load ptr, ptr %i.y, align 8, !tbaa !49  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %clear_readconv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @ruby_xfree(ptr noundef nonnull %i.bj) #28
  store ptr null, ptr %i.y, align 8, !tbaa !49
  br label %clear_readconv.exit

clear_readconv.exit:                              ; preds = %bb.y, %bb.z
  %.not70 = icmp eq i32 %.256, 0
  br i1 %.not70, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %clear_readconv.exit
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !13
  call void @rb_str_set_len(i64 noundef %i.bk, i64 noundef 0) #28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %clear_readconv.exit
  %.pre104 = load i64, ptr %i.b, align 8, !tbaa !13 ; 5 uses
  br i1 %i.i, label %io_shrink_read_string.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bl = inttoptr i64 %.pre104 to ptr
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !81 ; 2 uses
  %i.bo = call i64 @rb_str_capacity(i64 noundef %.pre104) #33
  %i.bp = sub i64 %i.bo, %i.bn
  %i.bq = icmp ugt i64 %i.bp, 4096
  br i1 %i.bq, label %bb.ad, label %io_shrink_read_string.exit

bb.ad:                                            ; preds = %bb.ac
  %i.br = call i64 @rb_str_resize(i64 noundef %.pre104, i64 noundef %i.bn) #28 ; 0 uses
  %.pre103 = load i64, ptr %i.b, align 8, !tbaa !13
  br label %io_shrink_read_string.exit

io_shrink_read_string.exit:                       ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.bs = phi i64 [ %.pre103, %bb.ad ], [ %.pre104, %bb.ac ], [ %.pre104, %bb.ab ] ; 2 uses
  %.val76 = load ptr, ptr %i.aa, align 8, !tbaa !83 ; 2 uses
  %.not.i.i78 = icmp eq ptr %.val76, null
  br i1 %.not.i.i78, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %io_shrink_read_string.exit
  %i.bt = call ptr @rb_default_external_encoding() #28
  br label %.thread

.thread:                                          ; preds = %bb.ae, %io_shrink_read_string.exit
  %.0.i.i = phi ptr [ %i.bt, %bb.ae ], [ %.val76, %io_shrink_read_string.exit ]
  %i.bu = call i64 @rb_enc_associate(i64 noundef %i.bs, ptr noundef %.0.i.i) #28 ; 0 uses
  br label %bb.bd

bb.af:                                            ; preds = %bb.b
  %i.bv = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %.val = load ptr, ptr %i.bv, align 8, !tbaa !83 ; 2 uses
  %.not.i79 = icmp eq ptr %.val, null
  br i1 %.not.i79, label %bb.ag, label %io_read_encoding.exit

bb.ag:                                            ; preds = %bb.af
  %i.bw = tail call ptr @rb_default_external_encoding() #28
  br label %io_read_encoding.exit

io_read_encoding.exit:                            ; preds = %bb.af, %bb.ag
  %.0.i80 = phi ptr [ %i.bw, %bb.ag ], [ %.val, %bb.af ]
  store i32 0, ptr %i.c, align 4, !tbaa !7
  %i.bx = icmp eq i64 %1, 0
  %spec.store.select = select i1 %i.bx, i64 8192, i64 %1 ; 4 uses
  %.not95 = icmp eq i64 %2, 4                     ; 2 uses
  br i1 %.not95, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %io_read_encoding.exit
  %i.by = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %spec.store.select) #28, !callees !232, !inline_history !233
  store i64 %i.by, ptr %i.b, align 8, !tbaa !13
  br label %io_setstrbuf.exit83

bb.ai:                                            ; preds = %io_read_encoding.exit
  %i.bz = call i64 @rb_string_value(ptr noundef nonnull %i.b) #28 ; 2 uses
  call void @rb_str_modify(i64 noundef %i.bz) #28
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !81 ; 2 uses
  %.not.not.i81 = icmp slt i64 %i.cc, %spec.store.select
  %i.cd = sub i64 %spec.store.select, %i.cc       ; 2 uses
  br i1 %.not.not.i81, label %bb.aj, label %io_setstrbuf.exit83

bb.aj:                                            ; preds = %bb.ai
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.cf = call i64 @rb_str_capacity(i64 noundef %i.ce) #33
  %i.cg = inttoptr i64 %i.ce to ptr
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !81
  %i.cj = sub i64 %i.cf, %i.ci
  %i.ck = icmp ult i64 %i.cj, %i.cd
  br i1 %i.ck, label %bb.ak, label %io_setstrbuf.exit83

bb.ak:                                            ; preds = %bb.aj
  call void @rb_str_modify_expand(i64 noundef %i.ce, i64 noundef %i.cd) #28
  br label %io_setstrbuf.exit83

io_setstrbuf.exit83:                              ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %i.cl = getelementptr i8, ptr %0, i64 80
  %i.cm = getelementptr i8, ptr %0, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cp = ptrtoint ptr %3 to i64
  br label %bb.al

bb.al:                                            ; preds = %.backedge, %io_setstrbuf.exit83
  %.060 = phi i64 [ 0, %io_setstrbuf.exit83 ], [ %i.ea, %.backedge ] ; 4 uses
  %.058 = phi i64 [ 0, %io_setstrbuf.exit83 ], [ %.159, %.backedge ] ; 3 uses
  %.057 = phi i64 [ %spec.store.select, %io_setstrbuf.exit83 ], [ %i.ep, %.backedge ] ; 6 uses
  %i.cq = load i32, ptr %i.cl, align 8, !tbaa !46
  %.not65 = icmp eq i32 %i.cq, 0
  br i1 %.not65, label %rb_io_check_initialized.exit.i, label %rb_io_check_closed.exit

rb_io_check_initialized.exit.i:                   ; preds = %bb.al
  %i.cr = load i32, ptr %i.cm, align 8, !tbaa !20
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.am, label %rb_io_check_closed.exit

bb.am:                                            ; preds = %rb_io_check_initialized.exit.i
  call void @rb_thread_check_ints() #28
  %i.ct = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ct, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i, %bb.al
  %i.cu = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.cv = sub i64 %.057, %.060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.cu, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.cw = icmp eq i64 %i.cu, 4
  br i1 %i.cw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %rb_io_check_closed.exit
  %i.cx = call i64 @rb_str_new(ptr noundef null, i64 noundef %.057) #28, !callees !232, !inline_history !249 ; 2 uses
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !13
  br label %io_setstrbuf.exit.i

bb.ao:                                            ; preds = %rb_io_check_closed.exit
  %i.cy = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 2 uses
  call void @rb_str_modify(i64 noundef %i.cy) #28
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !81 ; 2 uses
  %.not.not.i.i = icmp slt i64 %i.db, %.057
  %i.dc = sub i64 %.057, %i.db                    ; 2 uses
  %.pre8.i = load i64, ptr %i.a, align 8, !tbaa !13 ; 5 uses
  br i1 %.not.not.i.i, label %bb.ap, label %io_setstrbuf.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.dd = call i64 @rb_str_capacity(i64 noundef %.pre8.i) #33
  %i.de = inttoptr i64 %.pre8.i to ptr
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !81
  %i.dh = sub i64 %i.dd, %i.dg
  %i.di = icmp ult i64 %i.dh, %i.dc
  br i1 %i.di, label %bb.aq, label %io_setstrbuf.exit.i

bb.aq:                                            ; preds = %bb.ap
  call void @rb_str_modify_expand(i64 noundef %.pre8.i, i64 noundef %i.dc) #28
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !13
  br label %io_setstrbuf.exit.i

io_setstrbuf.exit.i:                              ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.dj = phi i64 [ %i.cx, %bb.an ], [ %.pre8.i, %bb.ao ], [ %.pre8.i, %bb.ap ], [ %.pre.i, %bb.aq ] ; 2 uses
  %i.dk = inttoptr i64 %i.dj to ptr               ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !16
  %i.dm = and i64 %i.dl, 8192
  %.not.i.i85 = icmp eq i64 %i.dm, 0
  %i.dn = getelementptr i8, ptr %i.dk, i64 24     ; 2 uses
  br i1 %.not.i.i85, label %RSTRING_PTR.exit.i, label %bb.ar

bb.ar:                                            ; preds = %io_setstrbuf.exit.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !86
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.ar, %io_setstrbuf.exit.i
  %i.dp = phi ptr [ %i.do, %bb.ar ], [ %i.dn, %io_setstrbuf.exit.i ]
  %i.dq = getelementptr i8, ptr %i.dp, i64 %.060
  store ptr %i.dq, ptr %3, align 8, !tbaa !250
  store i64 %i.cv, ptr %i.cn, align 8, !tbaa !252
  store ptr %0, ptr %i.co, align 8, !tbaa !253
  %i.dr = call i64 @rb_str_locktmp_ensure(i64 noundef %i.dj, ptr noundef nonnull @bufread_call, i64 noundef %i.cp) #28 ; 0 uses
  %i.ds = load i64, ptr %i.cn, align 8, !tbaa !252 ; 3 uses
  %i.dt = icmp slt i64 %i.ds, 0
  br i1 %i.dt, label %bb.as, label %io_fread.exit

bb.as:                                            ; preds = %RSTRING_PTR.exit.i
  %i.du = call ptr @rb_errno_ptr() #28
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7
  %i.dw = getelementptr i8, ptr %0, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.io_fread, i32 noundef %i.dv, i64 noundef %i.dx) #30
  unreachable

io_fread.exit:                                    ; preds = %RSTRING_PTR.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dy = or i64 %i.ds, %.060
  %or.cond3 = icmp eq i64 %i.dy, 0
  br i1 %or.cond3, label %bb.at, label %bb.au

bb.at:                                            ; preds = %io_fread.exit
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !13
  call void @rb_str_set_len(i64 noundef %i.dz, i64 noundef 0) #28
  br label %.loopexit

bb.au:                                            ; preds = %io_fread.exit
  %i.ea = add i64 %i.ds, %.060                    ; 4 uses
  %i.eb = load i64, ptr %i.b, align 8, !tbaa !13
  call void @rb_str_set_len(i64 noundef %i.eb, i64 noundef %i.ea) #28
  %i.ec = load i32, ptr %i.c, align 4, !tbaa !7
  %.not66 = icmp eq i32 %i.ec, 3145728
  br i1 %.not66, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ed = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ee = inttoptr i64 %i.ed to ptr               ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !16
  %i.eg = and i64 %i.ef, 8192
  %.not.i86 = icmp eq i64 %i.eg, 0
  %i.eh = getelementptr i8, ptr %i.ee, i64 24     ; 2 uses
  br i1 %.not.i86, label %RSTRING_PTR.exit88, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !86
  br label %RSTRING_PTR.exit88

RSTRING_PTR.exit88:                               ; preds = %bb.av, %bb.aw
  %i.ej = phi ptr [ %i.ei, %bb.aw ], [ %i.eh, %bb.av ] ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 %.058
  %i.el = getelementptr i8, ptr %i.ej, i64 %i.ea
  %i.em = call i64 @rb_str_coderange_scan_restartable(ptr noundef %i.ek, ptr noundef %i.el, ptr noundef %.0.i80, ptr noundef nonnull %i.c) #28
  %i.en = add i64 %i.em, %.058
  br label %bb.ax

bb.ax:                                            ; preds = %RSTRING_PTR.exit88, %bb.au
  %.159 = phi i64 [ %i.en, %RSTRING_PTR.exit88 ], [ %.058, %bb.au ]
  %i.eo = icmp slt i64 %i.ea, %.057
  br i1 %i.eo, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ep = add i64 %.057, 8192
  %i.eq = load i64, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.er = call i64 @rb_str_capacity(i64 noundef %i.eq) #33 ; 2 uses
  %i.es = inttoptr i64 %i.eq to ptr
  %i.et = getelementptr i8, ptr %i.es, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !81
  %i.ev = add i64 %i.eu, 8192
  %i.ew = icmp ult i64 %i.er, %i.ev
  br i1 %i.ew, label %bb.az, label %.backedge

bb.az:                                            ; preds = %bb.ay
  %i.ex = call i64 @llvm.umax.i64(i64 %i.er, i64 8192)
  %.0 = call i64 @llvm.umin.i64(i64 %i.ex, i64 8388608)
  call void @rb_str_modify_expand(i64 noundef %i.eq, i64 noundef %.0) #28
  br label %.backedge

.backedge:                                        ; preds = %bb.az, %bb.ay
  br label %bb.al

.loopexit:                                        ; preds = %bb.ax, %bb.at
  %.pre106 = load i64, ptr %i.b, align 8, !tbaa !13 ; 5 uses
  br i1 %.not95, label %bb.ba, label %io_shrink_read_string.exit89

bb.ba:                                            ; preds = %.loopexit
  %i.ey = inttoptr i64 %.pre106 to ptr
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !81 ; 2 uses
  %i.fb = call i64 @rb_str_capacity(i64 noundef %.pre106) #33
  %i.fc = sub i64 %i.fb, %i.fa
  %i.fd = icmp ugt i64 %i.fc, 4096
  br i1 %i.fd, label %bb.bb, label %io_shrink_read_string.exit89

bb.bb:                                            ; preds = %bb.ba
  %i.fe = call i64 @rb_str_resize(i64 noundef %.pre106, i64 noundef %i.fa) #28 ; 0 uses
  %.pre105 = load i64, ptr %i.b, align 8, !tbaa !13
  br label %io_shrink_read_string.exit89

io_shrink_read_string.exit89:                     ; preds = %bb.bb, %bb.ba, %.loopexit
  %i.ff = phi i64 [ %.pre105, %bb.bb ], [ %.pre106, %bb.ba ], [ %.pre106, %.loopexit ] ; 3 uses
  %.val75 = load ptr, ptr %i.bv, align 8, !tbaa !83 ; 2 uses
  %.not.i.i90 = icmp eq ptr %.val75, null
  br i1 %.not.i.i90, label %bb.bc, label %io_enc_str.exit92

bb.bc:                                            ; preds = %io_shrink_read_string.exit89
  %i.fg = call ptr @rb_default_external_encoding() #28
  br label %io_enc_str.exit92

io_enc_str.exit92:                                ; preds = %io_shrink_read_string.exit89, %bb.bc
  %.0.i.i91 = phi ptr [ %i.fg, %bb.bc ], [ %.val75, %io_shrink_read_string.exit89 ]
  %i.fh = call i64 @rb_enc_associate(i64 noundef %i.ff, ptr noundef %.0.i.i91) #28 ; 0 uses
  store i64 %i.ff, ptr %i.b, align 8, !tbaa !13
  %i.fi = load i32, ptr %i.c, align 4, !tbaa !7
  %i.fj = inttoptr i64 %i.ff to ptr               ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !16
  %i.fl = and i64 %i.fk, -3145729
  %i.fm = zext i32 %i.fi to i64
  %i.fn = or i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %i.fj, align 8, !tbaa !16
  %i.fo = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bb.bd

bb.bd:                                            ; preds = %.thread, %io_enc_str.exit92
  %.2 = phi i64 [ %i.fo, %io_enc_str.exit92 ], [ %i.bs, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret i64 %.2
}

declare i64 @rb_enc_str_new_static(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1
end_hunk_14
begin_hunk_15_@swallow:bb.a
  br i1 %.not.i, label %bb.d, label %io_read_encoding.exit

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @rb_default_external_encoding() #28
  br label %io_read_encoding.exit

io_read_encoding.exit:                            ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.m, %bb.d ], [ %.val, %bb.c ] ; 3 uses
  %i.n = getelementptr i8, ptr %.0.i, i64 20
  %.val95 = load i32, ptr %i.n, align 4, !tbaa !84
  %.val95.fr = freeze i32 %.val95
  %.not82 = icmp eq i32 %.val95.fr, 1
  tail call fastcc void @make_readconv(ptr noundef nonnull %0, i32 noundef 0)
  %i.o = getelementptr i8, ptr %0, i64 148        ; 8 uses
  %i.p = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 144        ; 7 uses
  %i.r = getelementptr i8, ptr %0, i64 152        ; 2 uses
  br i1 %.not82, label %io_read_encoding.exit.split.us, label %io_read_encoding.exit.split

io_read_encoding.exit.split.us:                   ; preds = %io_read_encoding.exit, %more_char.exit.us
  %i.s = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %.not83105.us = icmp eq i32 %i.s, 0
  br i1 %.not83105.us, label %.critedge92.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %io_read_encoding.exit.split.us
  %.pre118 = load i32, ptr %i.q, align 8, !tbaa !88
  br label %.lr.ph.us

.critedge92.us:                                   ; preds = %io_shift_cbuf.exit.us.us, %io_read_encoding.exit.split.us
  %i.t = tail call fastcc i64 @fill_cbuf(ptr noundef nonnull %0, i32 noundef 262144) ; 3 uses
  %i.u = and i64 %i.t, -17
  %or.cond.not.i.us = icmp eq i64 %i.u, 4
  br i1 %or.cond.not.i.us, label %more_char.exit.us, label %.split.us

more_char.exit.us:                                ; preds = %.critedge92.us
  %.not87.us = icmp eq i64 %i.t, 4
  br i1 %.not87.us, label %.loopexit, label %io_read_encoding.exit.split.us, !llvm.loop !325

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %io_shift_cbuf.exit.us.us
  %i.v = phi i32 [ %i.aq, %io_shift_cbuf.exit.us.us ], [ %.pre118, %.lr.ph.us.preheader ] ; 2 uses
  %i.w = phi i32 [ %i.ap, %io_shift_cbuf.exit.us.us ], [ %i.s, %.lr.ph.us.preheader ] ; 2 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !87   ; 3 uses
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr i8, ptr %i.x, i64 %i.y     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !86
  %.not84.us.us = icmp eq i8 %i.aa, 10
  br i1 %.not84.us.us, label %.preheader1, label %.critedge89

.preheader1:                                      ; preds = %.lr.ph.us
  %i.ab = add i32 %i.w, -1                        ; 3 uses
  %.not85.us.us13 = icmp eq i32 %i.ab, 0
  br i1 %.not85.us.us13, label %.critedge.loopexit.us.us.thread, label %.lr.ph15

bb.e:                                             ; preds = %.lr.ph15
  %i.ac = add i32 %i.ad, -1                       ; 3 uses
  %.not85.us.us = icmp eq i32 %i.ac, 0
  br i1 %.not85.us.us, label %.critedge.loopexit.us.us.thread, label %.lr.ph15, !llvm.loop !326

.critedge.loopexit.us.us.thread:                  ; preds = %bb.e, %.preheader1
  %.lcssa6 = phi i32 [ %i.ab, %.preheader1 ], [ %i.ac, %bb.e ]
  store i32 %.lcssa6, ptr %i.o, align 4, !tbaa !45
  br label %.sink.split.i.us.us

.lr.ph15:                                         ; preds = %.preheader1, %bb.e
  %i.ad = phi i32 [ %i.ac, %bb.e ], [ %i.ab, %.preheader1 ] ; 5 uses
  %.063.us.us14 = phi ptr [ %i.ae, %bb.e ], [ %i.z, %.preheader1 ]
  %i.ae = getelementptr i8, ptr %.063.us.us14, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !86
  %i.ag = icmp eq i8 %i.af, 10
  br i1 %i.ag, label %bb.e, label %bb.f, !llvm.loop !326

bb.f:                                             ; preds = %.lr.ph15
  %i.ah = sub i32 %i.w, %i.ad
  %i.ai = add i32 %i.v, %i.ah                     ; 4 uses
  store i32 %i.ai, ptr %i.q, align 8, !tbaa !88
  store i32 %i.ad, ptr %i.o, align 4, !tbaa !45
  %i.aj = load i32, ptr %i.r, align 8, !tbaa !95
  %i.ak = sdiv i32 %i.aj, 2
  %i.al = icmp slt i32 %i.ak, %i.ai
  br i1 %i.al, label %bb.g, label %io_shift_cbuf.exit.us.us

bb.g:                                             ; preds = %bb.f
  %i.am = sext i32 %i.ai to i64
  %i.an = getelementptr i8, ptr %i.x, i64 %i.am
  %i.ao = sext i32 %i.ad to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.x, ptr noundef nonnull align 1 dereferenceable(1) %i.an, i64 noundef %i.ao, i1 noundef false) #28
  %.pre119.pre = load i32, ptr %i.o, align 4, !tbaa !45
  br label %.sink.split.i.us.us

.sink.split.i.us.us:                              ; preds = %.critedge.loopexit.us.us.thread, %bb.g
  %.pre119 = phi i32 [ 0, %.critedge.loopexit.us.us.thread ], [ %.pre119.pre, %bb.g ]
  store i32 0, ptr %i.q, align 8, !tbaa !88
  br label %io_shift_cbuf.exit.us.us

io_shift_cbuf.exit.us.us:                         ; preds = %.sink.split.i.us.us, %bb.f
  %i.ap = phi i32 [ %.pre119, %.sink.split.i.us.us ], [ %i.ad, %bb.f ] ; 2 uses
  %i.aq = phi i32 [ 0, %.sink.split.i.us.us ], [ %i.ai, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not83.us.us = icmp eq i32 %i.ap, 0
  br i1 %.not83.us.us, label %.critedge92.us, label %.lr.ph.us

io_read_encoding.exit.split:                      ; preds = %io_read_encoding.exit, %more_char.exit
  %i.ar = load i32, ptr %i.o, align 4, !tbaa !45  ; 2 uses
  %.not83105 = icmp eq i32 %i.ar, 0
  br i1 %.not83105, label %.critedge92, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %io_read_encoding.exit.split
  %.pre = load i32, ptr %i.q, align 8, !tbaa !88
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %io_shift_cbuf.exit
  %i.as = phi i32 [ %i.by, %io_shift_cbuf.exit ], [ %.pre, %.lr.ph.preheader ]
  %i.at = phi i32 [ %i.bx, %io_shift_cbuf.exit ], [ %i.ar, %.lr.ph.preheader ] ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !87
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr i8, ptr %i.av, i64 %i.aw  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.au  ; 4 uses
  %i.az = call i32 @rb_enc_ascget(ptr noundef %i.ax, ptr noundef %i.ay, ptr noundef nonnull %i.a, ptr noundef %.0.i) #28
  %.not86 = icmp eq i32 %i.az, 10
  br i1 %.not86, label %.preheader100, label %.critedge89

.preheader100:                                    ; preds = %.lr.ph, %bb.h
  %.164 = phi ptr [ %i.bc, %bb.h ], [ %i.ax, %.lr.ph ]
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !7
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %.164, i64 %i.bb  ; 4 uses
  %i.bd = icmp ult ptr %i.bc, %i.ay
  br i1 %i.bd, label %bb.h, label %.critedge5

bb.h:                                             ; preds = %.preheader100
  %i.be = call i32 @rb_enc_ascget(ptr noundef %i.bc, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.a, ptr noundef %.0.i) #28
  %i.bf = icmp eq i32 %i.be, 10
  br i1 %i.bf, label %.preheader100, label %.critedge5, !llvm.loop !327

.critedge5:                                       ; preds = %.preheader100, %bb.h
  %i.bg = ptrtoint ptr %i.ay to i64
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = trunc i64 %i.bi to i32                  ; 2 uses
  store i32 %i.bj, ptr %i.a, align 4, !tbaa !7
  %i.bk = sub i32 %i.at, %i.bj                    ; 3 uses
  %i.bl = load i32, ptr %i.q, align 8, !tbaa !88
  %i.bm = add i32 %i.bl, %i.bk                    ; 4 uses
  store i32 %i.bm, ptr %i.q, align 8, !tbaa !88
  %i.bn = load i32, ptr %i.o, align 4, !tbaa !45  ; 2 uses
  %i.bo = sub i32 %i.bn, %i.bk                    ; 3 uses
  store i32 %i.bo, ptr %i.o, align 4, !tbaa !45
  %i.bp = icmp eq i32 %i.bn, %i.bk
  br i1 %i.bp, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %.critedge5
  %i.bq = load i32, ptr %i.r, align 8, !tbaa !95
  %i.br = sdiv i32 %i.bq, 2
  %i.bs = icmp slt i32 %i.br, %i.bm
  br i1 %i.bs, label %bb.j, label %io_shift_cbuf.exit

bb.j:                                             ; preds = %bb.i
  %i.bt = load ptr, ptr %i.p, align 8, !tbaa !87  ; 2 uses
  %i.bu = sext i32 %i.bm to i64
  %i.bv = getelementptr i8, ptr %i.bt, i64 %i.bu
  %i.bw = sext i32 %i.bo to i64
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bt, ptr noundef nonnull align 1 %i.bv, i64 noundef %i.bw, i1 noundef false) #28
  %.pre117.pre = load i32, ptr %i.o, align 4, !tbaa !45
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %.critedge5
  %.pre117 = phi i32 [ %.pre117.pre, %bb.j ], [ 0, %.critedge5 ]
  store i32 0, ptr %i.q, align 8, !tbaa !88
  br label %io_shift_cbuf.exit

io_shift_cbuf.exit:                               ; preds = %bb.i, %.sink.split.i
  %i.bx = phi i32 [ %i.bo, %bb.i ], [ %.pre117, %.sink.split.i ] ; 2 uses
  %i.by = phi i32 [ %i.bm, %bb.i ], [ 0, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %.not83 = icmp eq i32 %i.bx, 0
  br i1 %.not83, label %.critedge92, label %.lr.ph

.critedge89:                                      ; preds = %.lr.ph, %.lr.ph.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.loopexit

.critedge92:                                      ; preds = %io_shift_cbuf.exit, %io_read_encoding.exit.split
  %i.bz = call fastcc i64 @fill_cbuf(ptr noundef nonnull %0, i32 noundef 262144) ; 3 uses
  %i.ca = and i64 %i.bz, -17
  %or.cond.not.i = icmp eq i64 %i.ca, 4
  br i1 %or.cond.not.i, label %more_char.exit, label %.split.us

.split.us:                                        ; preds = %.critedge92, %.critedge92.us
  %.us-phi = phi i64 [ %i.t, %.critedge92.us ], [ %i.bz, %.critedge92 ]
  call void @rb_exc_raise(i64 noundef %.us-phi) #30
  unreachable

more_char.exit:                                   ; preds = %.critedge92
  %.not87 = icmp eq i64 %i.bz, 4
  br i1 %.not87, label %.loopexit, label %io_read_encoding.exit.split, !llvm.loop !325

bb.k:                                             ; preds = %.preheader99, %rb_io_check_closed.exit.thread
  %i.cb = load i32, ptr %i.h, align 8, !tbaa !46  ; 2 uses
  %.not78.not106 = icmp eq i32 %i.cb, 0
  br i1 %.not78.not106, label %rb_io_check_initialized.exit.i, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %bb.k
  %.pre120 = load i32, ptr %i.j, align 4, !tbaa !47
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.l
  %i.cc = phi i32 [ %i.cv, %bb.l ], [ %.pre120, %.lr.ph107.preheader ]
  %i.cd = phi i32 [ %i.cx, %bb.l ], [ %i.cb, %.lr.ph107.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.ce = load ptr, ptr %i.i, align 4, !tbaa !71
  %i.cf = sext i32 %i.cc to i64
  %i.cg = getelementptr i8, ptr %i.ce, i64 %i.cf  ; 3 uses
  %i.ch = call i32 @llvm.umin.i32(i32 %i.cd, i32 1024) ; 3 uses
  %spec.store.select = zext nneg i32 %i.ch to i64
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !86
  %.not79 = icmp eq i8 %i.ci, 10
  br i1 %.not79, label %.preheader.preheader, label %rb_io_check_closed.exit.thread98

.preheader.preheader:                             ; preds = %.lr.ph107
  %i.cj = add nsw i32 %i.ch, -1                   ; 3 uses
  %.not8016 = icmp eq i32 %i.cj, 0
  br i1 %.not8016, label %.critedge7, label %.lr.ph18

.preheader:                                       ; preds = %.lr.ph18
  %i.ck = add nsw i32 %i.cl, -1                   ; 3 uses
  %.not80 = icmp eq i32 %i.ck, 0
  br i1 %.not80, label %.critedge7, label %.lr.ph18, !llvm.loop !328

.lr.ph18:                                         ; preds = %.preheader.preheader, %.preheader
  %i.cl = phi i32 [ %i.ck, %.preheader ], [ %i.cj, %.preheader.preheader ] ; 2 uses
  %.06217 = phi ptr [ %i.cm, %.preheader ], [ %i.cg, %.preheader.preheader ]
  %i.cm = getelementptr i8, ptr %.06217, i64 1    ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !86
  %i.co = icmp eq i8 %i.cn, 10
  br i1 %i.co, label %.preheader, label %..critedge7_crit_edge, !llvm.loop !328

..critedge7_crit_edge:                            ; preds = %.lr.ph18
  br label %.critedge7, !llvm.loop !328

.critedge7:                                       ; preds = %.preheader, %..critedge7_crit_edge, %.preheader.preheader
  %.lcssa = phi i32 [ %i.cj, %.preheader.preheader ], [ %i.cl, %..critedge7_crit_edge ], [ %i.ck, %.preheader ] ; 2 uses
  %i.cp = icmp slt i32 %i.cd, 1
  br i1 %i.cp, label %read_buffered_data.exit.thread, label %read_buffered_data.exit

read_buffered_data.exit:                          ; preds = %.critedge7
  %i.cq = zext nneg i32 %.lcssa to i64
  %i.cr = sub nsw i64 %spec.store.select, %i.cq
  %i.cs = zext nneg i32 %i.cd to i64
  %spec.select17.i = call i64 @llvm.smin.i64(i64 %i.cr, i64 %i.cs) ; 2 uses
  %spec.select.i = trunc nsw i64 %spec.select17.i to i32 ; 2 uses
  %i.ct = call ptr @__memmove_chk(ptr noundef nonnull %i.b, ptr noundef nonnull %i.cg, i64 noundef %spec.select17.i, i64 noundef 1024) #28 ; 0 uses
  %i.cu = load i32, ptr %i.j, align 4, !tbaa !47
  %i.cv = add i32 %i.cu, %spec.select.i           ; 2 uses
  store i32 %i.cv, ptr %i.j, align 4, !tbaa !47
  %i.cw = load i32, ptr %i.h, align 8, !tbaa !46
  %i.cx = sub i32 %i.cw, %spec.select.i           ; 3 uses
  store i32 %i.cx, ptr %i.h, align 8, !tbaa !46
  %.not81 = icmp eq i32 %i.ch, %.lcssa
  br i1 %.not81, label %read_buffered_data.exit.thread, label %bb.l

read_buffered_data.exit.thread:                   ; preds = %.critedge7, %read_buffered_data.exit
  %i.cy = call ptr @rb_errno_ptr() #28
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.da = getelementptr i8, ptr %0, i64 32
  %i.db = load i64, ptr %i.da, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.swallow, i32 noundef %i.cz, i64 noundef %i.db) #30
  unreachable

bb.l:                                             ; preds = %read_buffered_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.not78.not = icmp eq i32 %i.cx, 0
  br i1 %.not78.not, label %rb_io_check_initialized.exit.i, label %.lr.ph107, !llvm.loop !329

rb_io_check_initialized.exit.i:                   ; preds = %bb.l, %bb.k
  %i.dc = load i32, ptr %i.k, align 8, !tbaa !20
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %bb.m, label %rb_io_check_closed.exit.thread

bb.m:                                             ; preds = %rb_io_check_initialized.exit.i
  call void @rb_thread_check_ints() #28
  %i.de = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.de, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.thread98:                 ; preds = %.lr.ph107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.loopexit

rb_io_check_closed.exit.thread:                   ; preds = %rb_io_check_initialized.exit.i
  %i.df = call fastcc i32 @io_fillbuf(ptr noundef nonnull %0)
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.k, label %.loopexit, !llvm.loop !330

.loopexit:                                        ; preds = %more_char.exit, %more_char.exit.us, %rb_io_check_closed.exit.thread, %rb_io_check_closed.exit.thread98, %.critedge89
  ret void
}

declare i64 @rb_usascii_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_conv_enc(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #1

declare i32 @rb_enc_codepoint_len(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_enc_precise_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @io_shift_cbuf(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8, !tbaa !13     ; 3 uses
  %i.b = icmp eq i64 %i.a, 4
  %i.c = getelementptr i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.e = getelementptr i8, ptr %0, i64 144
  %i.f = load i32, ptr %i.e, align 8, !tbaa !88
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g     ; 2 uses
  %i.i = sext i32 %1 to i64                       ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i64 @rb_str_new(ptr noundef %i.h, i64 noundef %i.i) #28 ; 2 uses
  store i64 %i.j, ptr %2, align 8, !tbaa !13
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i64 @rb_str_cat(i64 noundef %i.a, ptr noundef %i.h, i64 noundef %i.i) #28 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.j, %bb.c ], [ %i.a, %bb.d ]
  %i.l = getelementptr i8, ptr %0, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = tail call i64 @rb_enc_associate(i64 noundef %.0, ptr noundef %i.m) #28 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.o = getelementptr i8, ptr %0, i64 136
  %i.p = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !88
  %i.r = add i32 %i.q, %1                         ; 3 uses
  store i32 %i.r, ptr %i.p, align 8, !tbaa !88
  %i.s = getelementptr i8, ptr %0, i64 148        ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45   ; 2 uses
  %i.u = sub i32 %i.t, %1                         ; 2 uses
  store i32 %i.u, ptr %i.s, align 4, !tbaa !45
  %i.v = icmp eq i32 %i.t, %1
  br i1 %i.v, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %0, i64 152
  %i.x = load i32, ptr %i.w, align 8, !tbaa !95
  %i.y = sdiv i32 %i.x, 2
  %i.z = icmp slt i32 %i.y, %i.r
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !87  ; 2 uses
  %i.ab = sext i32 %i.r to i64
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  %i.ad = sext i32 %i.u to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.aa, ptr noundef nonnull align 1 %i.ac, i64 noundef %i.ad, i1 noundef false) #28
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.h
  store i32 0, ptr %i.p, align 8, !tbaa !88
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @fill_cbuf(ptr noundef %0, i32 noundef range(i32 0, 262145) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = or i32 %1, 131072
  %i.d = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 148        ; 10 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !45   ; 5 uses
  %i.g = getelementptr i8, ptr %0, i64 152        ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %i.f, 0
  %i.k = getelementptr i8, ptr %0, i64 144        ; 3 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.k, align 8, !tbaa !88
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.k, align 8, !tbaa !88   ; 3 uses
  %i.m = add i32 %i.l, %i.f
  %i.n = icmp eq i32 %i.m, %i.h
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !87   ; 2 uses
  %i.p = sext i32 %i.l to i64
  %i.q = getelementptr i8, ptr %i.o, i64 %i.p
  %i.r = sext i32 %i.f to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.o, ptr noundef nonnull align 1 %i.q, i64 noundef %i.r, i1 noundef false) #28
  store i32 0, ptr %i.k, align 8, !tbaa !88
  %.pre = load i32, ptr %i.e, align 4, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.s = phi i32 [ %i.l, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ]
  %i.t = phi i32 [ %i.f, %bb.d ], [ %.pre, %bb.e ], [ 0, %bb.c ] ; 5 uses
  %i.u = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 76         ; 6 uses
  %i.w = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %i.x = getelementptr i8, ptr %0, i64 144        ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 128        ; 6 uses
  %i.z = getelementptr i8, ptr %0, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.p, %bb.f
  %i.aa = phi i32 [ %.pre82, %bb.p ], [ %i.t, %bb.f ]
  %i.ab = phi i32 [ %.pre81, %bb.p ], [ %i.s, %bb.f ]
  %i.ac = load ptr, ptr %i.u, align 4, !tbaa !71
  %i.ad = load i32, ptr %i.v, align 4, !tbaa !47
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.ac, i64 %i.ae  ; 3 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !159
  %i.ag = load i32, ptr %i.w, align 8, !tbaa !46
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr i8, ptr %i.af, i64 %i.ah
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !87  ; 2 uses
  %i.ak = sext i32 %i.ab to i64
  %i.al = getelementptr i8, ptr %i.aj, i64 %i.ak
  %i.am = sext i32 %i.aa to i64
  %i.an = getelementptr i8, ptr %i.al, i64 %i.am  ; 2 uses
  store ptr %i.an, ptr %i.b, align 8, !tbaa !159
  %i.ao = load i32, ptr %i.g, align 8, !tbaa !95
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %i.aj, i64 %i.ap
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.as = call i32 @rb_econv_convert(ptr noundef %i.ar, ptr noundef nonnull %i.a, ptr noundef %i.ai, ptr noundef nonnull %i.b, ptr noundef %i.aq, i32 noundef %i.c) #28
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !159
  %i.au = insertelement <2 x ptr> poison, ptr %i.at, i64 0
  %i.av = insertelement <2 x ptr> %i.au, ptr %i.af, i64 1 ; 2 uses
  %i.aw = ptrtoint <2 x ptr> %i.av to <2 x i64>
  %i.ax = shufflevector <2 x ptr> %i.av, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = ptrtoint <2 x ptr> %i.ax to <2 x i64>
  %i.az = sub <2 x i64> %i.aw, %i.ay
  %i.ba = trunc <2 x i64> %i.az to <2 x i32>
  %i.bb = load <2 x i32>, ptr %i.v, align 4, !tbaa !7
  %i.bc = add <2 x i32> %i.bb, %i.ba
  store <2 x i32> %i.bc, ptr %i.v, align 4, !tbaa !7
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.an to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = load i32, ptr %i.e, align 4, !tbaa !45
  %i.bj = add i32 %i.bi, %i.bh
  store i32 %i.bj, ptr %i.e, align 4, !tbaa !45
  %i.bk = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.bl = call i32 @rb_econv_putbackable(ptr noundef %i.bk) #28 ; 5 uses
  %.not = icmp eq i32 %i.bl, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.bn = load ptr, ptr %i.u, align 4, !tbaa !71
  %i.bo = load i32, ptr %i.v, align 4, !tbaa !47
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.bn, i64 %i.bp
  %i.br = sext i32 %i.bl to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr i8, ptr %i.bq, i64 %i.bs
  call void @rb_econv_putback(ptr noundef %i.bm, ptr noundef %i.bt, i32 noundef %i.bl) #28
  %i.bu = load i32, ptr %i.v, align 4, !tbaa !47
  %i.bv = sub i32 %i.bu, %i.bl
  store i32 %i.bv, ptr %i.v, align 4, !tbaa !47
  %i.bw = load i32, ptr %i.w, align 8, !tbaa !46
  %i.bx = add i32 %i.bw, %i.bl
  store i32 %i.bx, ptr %i.w, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.by = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.bz = call i64 @rb_econv_make_exception(ptr noundef %i.by) #28 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4
  br i1 %i.ca, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.cb = load i32, ptr %i.e, align 4, !tbaa !45
  %.not73 = icmp eq i32 %i.t, %i.cb
  br i1 %.not73, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  switch i32 %i.as, label %bb.p [
    i32 4, label %.loopexit
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.cc = load i32, ptr %i.w, align 8, !tbaa !46
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %rb_io_check_initialized.exit.i, label %bb.p

rb_io_check_initialized.exit.i:                   ; preds = %bb.l
  %i.ce = load i32, ptr %i.z, align 8, !tbaa !20
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.m, label %rb_io_check_closed.exit

bb.m:                                             ; preds = %rb_io_check_initialized.exit.i
  call void @rb_thread_check_ints() #28
  %i.cg = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cg, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.ch = call fastcc i32 @io_fillbuf(ptr noundef nonnull %0)
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.n, label %rb_io_check_closed.exit._crit_edge

rb_io_check_closed.exit._crit_edge:               ; preds = %rb_io_check_closed.exit
  %.pre82.pre = load i32, ptr %i.e, align 4, !tbaa !45
  br label %bb.p

bb.n:                                             ; preds = %rb_io_check_closed.exit
  %i.cj = load ptr, ptr %i.y, align 8, !tbaa !48  ; 2 uses
  %.not74 = icmp eq ptr %i.cj, null
  br i1 %.not74, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !87  ; 2 uses
  %i.cl = load i32, ptr %i.x, align 8, !tbaa !88
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr i8, ptr %i.ck, i64 %i.cm
  %i.co = load i32, ptr %i.e, align 4, !tbaa !45
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr i8, ptr %i.cn, i64 %i.cp  ; 2 uses
  store ptr %i.cq, ptr %i.b, align 8, !tbaa !159
  %i.cr = load i32, ptr %i.g, align 8, !tbaa !95
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr i8, ptr %i.ck, i64 %i.cs
  %i.cu = call i32 @rb_econv_convert(ptr noundef nonnull %i.cj, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef %i.ct, i32 noundef 0) #28 ; 0 uses
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !159
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = trunc i64 %i.cy to i32
  %i.da = load i32, ptr %i.e, align 4, !tbaa !45
  %i.db = add i32 %i.da, %i.cz
  store i32 %i.db, ptr %i.e, align 4, !tbaa !45
  %i.dc = load ptr, ptr %i.y, align 8, !tbaa !48
  call void @rb_econv_check_error(ptr noundef %i.dc) #28
  %i.dd = load i32, ptr %i.e, align 4, !tbaa !45
  %.not75 = icmp eq i32 %i.t, %i.dd
  %. = select i1 %.not75, i64 4, i64 20
  br label %.loopexit

bb.p:                                             ; preds = %rb_io_check_closed.exit._crit_edge, %bb.k, %bb.l
  %.pre82 = phi i32 [ %.pre82.pre, %rb_io_check_closed.exit._crit_edge ], [ %i.t, %bb.k ], [ %i.t, %bb.l ]
  %.pre81 = load i32, ptr %i.x, align 8, !tbaa !88
  br label %bb.g

.loopexit:                                        ; preds = %bb.k, %bb.j, %bb.i, %bb.o, %bb.n, %bb.a
  %.0 = phi i64 [ 20, %bb.a ], [ %., %bb.o ], [ 4, %bb.n ], [ 4, %bb.k ], [ 20, %bb.j ], [ %i.bz, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

declare i64 @rb_str_coderange_scan_restartable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_str_capacity(i64 noundef) local_unnamed_addr #20

declare void @rb_str_modify_expand(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_enc_associate(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_econv_convert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @rb_econv_putbackable(ptr noundef) local_unnamed_addr #1

declare void @rb_econv_putback(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @rb_econv_make_exception(ptr noundef) local_unnamed_addr #1

declare void @rb_econv_check_error(ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_locktmp_ensure(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @bufread_call(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !252  ; 7 uses
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !253  ; 10 uses
  %i.g = getelementptr i8, ptr %i.f, i64 80       ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %.old1.i = icmp sgt i64 %i.d, 0                 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.old1.i, label %rb_io_check_initialized.exit.i.preheader.i, label %.loopexit.i

rb_io_check_initialized.exit.i.preheader.i:       ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 16       ; 3 uses
  br label %rb_io_check_initialized.exit.i.outer.i

rb_io_check_initialized.exit.i.outer.i:           ; preds = %.loopexit21, %rb_io_check_initialized.exit.i.preheader.i
  %.037.ph.i = phi i64 [ 0, %rb_io_check_initialized.exit.i.preheader.i ], [ %i.ag, %.loopexit21 ] ; 2 uses
  %.0.ph.i = phi i64 [ %i.d, %rb_io_check_initialized.exit.i.preheader.i ], [ %i.ah, %.loopexit21 ] ; 5 uses
  %i.k = getelementptr i8, ptr %i.b, i64 %.037.ph.i ; 2 uses
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !20
  %i.l = icmp slt i32 %.pre.i, 0
  br i1 %i.l, label %.loopexit23, label %rb_io_check_closed.exit.i.peel

rb_io_check_closed.exit.i.peel:                   ; preds = %rb_io_check_initialized.exit.i.outer.i
  %i.m = tail call fastcc i64 @rb_io_read_memory(ptr noundef nonnull %i.f, ptr noundef %i.k, i64 noundef %.0.ph.i) ; 3 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %rb_io_check_closed.exit.i.peel
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %bb.d, label %.loopexit21

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @rb_errno_ptr() #28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = load i64, ptr %i.f, align 8, !tbaa !42
  %i.s = tail call i32 @rb_io_maybe_wait_readable(i32 noundef %i.q, i64 noundef %i.r, i64 noundef 4)
  %.not.i.i.peel = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.peel, label %io_bufread.exit, label %rb_io_check_initialized.exit.i.i.i.peel

rb_io_check_initialized.exit.i.i.i.peel:          ; preds = %bb.d
  %i.t = load i32, ptr %i.j, align 8, !tbaa !20
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.loopexit22, label %rb_io_check_closed.exit.i

.loopexit23:                                      ; preds = %rb_io_check_initialized.exit.i.outer.i
  tail call void @rb_thread_check_ints() #28
  %i.v = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.v, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i.i.i.peel, %rb_io_check_initialized.exit.i.i.i
  %i.w = tail call fastcc i64 @rb_io_read_memory(ptr noundef nonnull %i.f, ptr noundef %i.k, i64 noundef %.0.ph.i) ; 3 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %rb_io_check_closed.exit.i
  %i.y = icmp slt i64 %i.w, 0
  br i1 %i.y, label %bb.f, label %.loopexit21

bb.f:                                             ; preds = %bb.e
  %i.z = tail call ptr @rb_errno_ptr() #28
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !42
  %i.ac = tail call i32 @rb_io_maybe_wait_readable(i32 noundef %i.aa, i64 noundef %i.ab, i64 noundef 4)
  %.not.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i, label %io_bufread.exit, label %rb_io_check_initialized.exit.i.i.i

rb_io_check_initialized.exit.i.i.i:               ; preds = %bb.f
  %i.ad = load i32, ptr %i.j, align 8, !tbaa !20
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit22, label %rb_io_check_closed.exit.i, !llvm.loop !331

.loopexit22:                                      ; preds = %rb_io_check_initialized.exit.i.i.i.peel, %rb_io_check_initialized.exit.i.i.i
  tail call void @rb_thread_check_ints() #28
  %i.af = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.af, ptr noundef nonnull @closed_stream) #30
  unreachable

.loopexit21:                                      ; preds = %bb.e, %bb.c
  %.lcssa13 = phi i64 [ %i.m, %bb.c ], [ %i.w, %bb.e ] ; 2 uses
  %i.ag = add i64 %.lcssa13, %.037.ph.i
  %i.ah = sub nsw i64 %.0.ph.i, %.lcssa13         ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %rb_io_check_initialized.exit.i.outer.i, label %.loopexit.i, !llvm.loop !332

.loopexit.i:                                      ; preds = %.loopexit21, %rb_io_check_closed.exit.i.peel, %rb_io_check_closed.exit.i, %bb.b
  %.1.i = phi i64 [ %i.d, %bb.b ], [ %.0.ph.i, %rb_io_check_closed.exit.i ], [ %.0.ph.i, %rb_io_check_closed.exit.i.peel ], [ %i.ah, %.loopexit21 ]
  %i.aj = sub i64 %i.d, %.1.i
  br label %io_bufread.exit

bb.g:                                             ; preds = %bb.a
  br i1 %.old1.i, label %.preheader.i, label %.loopexit56.i

.preheader.i:                                     ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %i.f, i64 68
  %i.al = getelementptr i8, ptr %i.f, i64 76      ; 3 uses
  %i.am = getelementptr i8, ptr %i.f, i64 16
  br label %bb.h

thread-pre-split.i:                               ; preds = %rb_io_check_closed.exit53.i
  %.pr.i = load i32, ptr %i.g, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split.i, %.preheader.i
  %i.an = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.h, %.preheader.i ] ; 2 uses
  %.138.i = phi i64 [ %.239.i, %thread-pre-split.i ], [ 0, %.preheader.i ] ; 3 uses
  %.2.i = phi i64 [ %.3.i, %thread-pre-split.i ], [ %i.d, %.preheader.i ] ; 3 uses
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %rb_io_check_initialized.exit.i52.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr i8, ptr %i.b, i64 %.138.i
  %i.aq = zext nneg i32 %i.an to i64
  %spec.select17.i.i = tail call i64 @llvm.smin.i64(i64 %.2.i, i64 %i.aq) ; 4 uses
  %spec.select.i.i = trunc nuw nsw i64 %spec.select17.i.i to i32 ; 2 uses
  %i.ar = load ptr, ptr %i.ak, align 4, !tbaa !71
  %i.as = load i32, ptr %i.al, align 4, !tbaa !47
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr i8, ptr %i.ar, i64 %i.at
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ap, ptr noundef nonnull align 1 %i.au, i64 noundef %spec.select17.i.i, i1 noundef false) #28
  %i.av = load i32, ptr %i.al, align 4, !tbaa !47
  %i.aw = add i32 %i.av, %spec.select.i.i
  store i32 %i.aw, ptr %i.al, align 4, !tbaa !47
  %i.ax = load i32, ptr %i.g, align 4, !tbaa !46
  %i.ay = sub i32 %i.ax, %spec.select.i.i
  store i32 %i.ay, ptr %i.g, align 4, !tbaa !46
  %i.az = add i64 %spec.select17.i.i, %.138.i
  %i.ba = sub nsw i64 %.2.i, %spec.select17.i.i   ; 3 uses
  %i.bb = icmp slt i64 %i.ba, 1
  br i1 %i.bb, label %.loopexit56.i, label %rb_io_check_initialized.exit.i52.i

rb_io_check_initialized.exit.i52.i:               ; preds = %bb.i, %bb.h
  %.239.i = phi i64 [ %i.az, %bb.i ], [ %.138.i, %bb.h ]
  %.3.i = phi i64 [ %i.ba, %bb.i ], [ %.2.i, %bb.h ] ; 2 uses
  %i.bc = load i32, ptr %i.am, align 8, !tbaa !20
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.j, label %rb_io_check_closed.exit53.i

bb.j:                                             ; preds = %rb_io_check_initialized.exit.i52.i
  tail call void @rb_thread_check_ints() #28
  %i.be = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.be, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit53.i:                      ; preds = %rb_io_check_initialized.exit.i52.i
  %i.bf = tail call fastcc i32 @io_fillbuf(ptr noundef nonnull %i.f)
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %thread-pre-split.i, label %.loopexit56.i, !llvm.loop !333

.loopexit56.i:                                    ; preds = %rb_io_check_closed.exit53.i, %bb.i, %bb.g
  %.4.i = phi i64 [ %i.d, %bb.g ], [ %i.ba, %bb.i ], [ %.3.i, %rb_io_check_closed.exit53.i ]
  %i.bh = sub i64 %i.d, %.4.i
  br label %io_bufread.exit

io_bufread.exit:                                  ; preds = %bb.d, %bb.f, %.loopexit.i, %.loopexit56.i
  %.040.i = phi i64 [ %i.aj, %.loopexit.i ], [ %i.bh, %.loopexit56.i ], [ -1, %bb.f ], [ -1, %bb.d ]
  store i64 %.040.i, ptr %i.c, align 8, !tbaa !252
  ret i64 36
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

declare ptr @onigenc_get_prev_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_buf_new(i64 noundef) local_unnamed_addr #1

declare ptr @onigenc_get_left_adjust_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_fix2uint(i64 noundef) local_unnamed_addr #1

declare ptr @rb_default_external_encoding() local_unnamed_addr #1

declare i64 @rb_num2uint(i64 noundef) local_unnamed_addr #1

declare ptr @rb_econv_open_opts(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_econv_open_exc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_io_fptr_cleanup(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef nonnull %0, i32 noundef %1) #28
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @fptr_finalize_flush(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1)
  %i.c = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 4, !tbaa !49   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %free_io_buffer.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_xfree(ptr noundef nonnull %i.d) #28
  store ptr null, ptr %i.c, align 4, !tbaa !49
  br label %free_io_buffer.exit.i

free_io_buffer.exit.i:                            ; preds = %bb.d, %bb.c
  %i.e = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %.not.i4.i = icmp eq ptr %i.f, null
  br i1 %.not.i4.i, label %free_io_buffer.exit5.i, label %bb.e

bb.e:                                             ; preds = %free_io_buffer.exit.i
  tail call void @ruby_xfree(ptr noundef nonnull %i.f) #28
  store ptr null, ptr %i.e, align 8, !tbaa !49
  br label %free_io_buffer.exit5.i

free_io_buffer.exit5.i:                           ; preds = %bb.e, %free_io_buffer.exit.i
  %i.g = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %free_io_buffer.exit5.i
  tail call void @rb_econv_close(ptr noundef nonnull %i.h) #28
  store ptr null, ptr %i.g, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %free_io_buffer.exit5.i
  %i.i = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %clear_readconv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.j) #28
  store ptr null, ptr %i.i, align 8, !tbaa !49
  br label %clear_readconv.exit.i.i

clear_readconv.exit.i.i:                          ; preds = %bb.h, %bb.g
  %i.k = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i2.i.i, label %fptr_finalize.exit, label %bb.i

bb.i:                                             ; preds = %clear_readconv.exit.i.i
  tail call void @rb_econv_close(ptr noundef nonnull %i.l) #28
  store ptr null, ptr %i.k, align 8, !tbaa !50
  br label %fptr_finalize.exit

fptr_finalize.exit:                               ; preds = %clear_readconv.exit.i.i, %bb.i
  %i.m = getelementptr i8, ptr %0, i64 176
  store i32 0, ptr %i.m, align 8, !tbaa !51
  br label %bb.j

bb.j:                                             ; preds = %fptr_finalize.exit, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @fptr_finalize_flush(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.finish_writeconv_arg, align 8 ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !20   ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151  ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !39
  %i.h = getelementptr i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %.not77 = icmp eq ptr %i.i, null
  br i1 %.not77, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 192
  %i.k = load i64, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  %i.m = icmp ne i32 %1, 0
  %or.cond = or i1 %i.m, %i.l
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.n = tail call fastcc i64 @finish_writeconv(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i64 [ %i.n, %bb.c ], [ 4, %bb.a ]     ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 60         ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40   ; 2 uses
  %.not78 = icmp eq i32 %i.p, 0
  br i1 %.not78, label %io_flush_buffer_sync.exit, label %bb.e

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !334
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !336
  %i.r = ptrtoint ptr %2 to i64
  %i.s = call i64 @rb_mutex_synchronize(i64 noundef %i.k, ptr noundef nonnull @finish_writeconv_sync, i64 noundef %i.r) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.t = getelementptr i8, ptr %0, i64 60
  %i.u = load i32, ptr %i.t, align 4, !tbaa !40
  %.not7889 = icmp eq i32 %i.u, 0
  br i1 %.not7889, label %io_flush_buffer_sync.exit, label %.thread91

bb.e:                                             ; preds = %bb.d
  %.not79 = icmp eq i32 %1, 0
  br i1 %.not79, label %.thread91, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %0, i64 48
  %i.w = sext i32 %i.p to i64
  %i.x = load i32, ptr %i.b, align 8, !tbaa !20
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.z = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !65
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.ab
  %i.ad = tail call i64 @write(i32 noundef %i.x, ptr noundef %i.ac, i64 noundef %i.w) #28 ; 3 uses
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !40  ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %.not.i = icmp slt i64 %i.ad, %i.af
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.z, align 8, !tbaa !65
  store i32 0, ptr %i.o, align 4, !tbaa !40
  br label %io_flush_buffer_sync.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ad, -1
  br i1 %i.ag, label %bb.i, label %io_flush_buffer_sync.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = trunc nuw nsw i64 %i.ad to i32          ; 2 uses
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !65
  %i.aj = add i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %i.z, align 8, !tbaa !65
  %i.ak = sub i32 %i.ae, %i.ah
  store i32 %i.ak, ptr %i.o, align 4, !tbaa !40
  %i.al = tail call ptr @rb_errno_ptr() #28
  store i32 11, ptr %i.al, align 4, !tbaa !7
  br label %io_flush_buffer_sync.exit

.thread91:                                        ; preds = %.thread, %bb.e
  %.09094 = phi i64 [ %.0, %bb.e ], [ %i.s, %.thread ] ; 2 uses
  %i.am = call fastcc i32 @io_fflush(ptr noundef nonnull %0)
  %i.an = icmp slt i32 %i.am, 0
  %i.ao = icmp eq i64 %.09094, 4
  %or.cond98 = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond98, label %bb.j, label %io_flush_buffer_sync.exit

bb.j:                                             ; preds = %.thread91
  %i.ap = call ptr @rb_errno_ptr() #28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %io_flush_buffer_sync.exit

io_flush_buffer_sync.exit:                        ; preds = %bb.i, %bb.h, %bb.g, %.thread, %bb.j, %.thread91, %bb.d
  %.1 = phi i64 [ %i.s, %.thread ], [ %i.at, %bb.j ], [ %.0, %bb.i ], [ %.09094, %.thread91 ], [ %.0, %bb.d ], [ %.0, %bb.g ], [ %.0, %bb.h ] ; 4 uses
  %i.au = load i32, ptr %i.f, align 4, !tbaa !39  ; 2 uses
  %i.av = and i32 %i.au, 65536
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = icmp sgt i32 %i.c, 2
  %or.cond3.not = select i1 %i.aw, i1 %i.ax, i1 false ; 2 uses
  %not.or.cond3.not = xor i1 %or.cond3.not, true
  %spec.select = zext i1 %not.or.cond3.not to i32
  store i32 -1, ptr %i.b, align 8, !tbaa !20
  store ptr null, ptr %i.d, align 8, !tbaa !151
  %i.ay = and i32 %i.au, -4
  store i32 %i.ay, ptr %i.f, align 4, !tbaa !39
  call void @rb_thread_io_close_wait(ptr noundef nonnull %0) #28
  %i.az = icmp ne ptr %i.e, null
  %or.cond5 = select i1 %or.cond3.not, i1 %i.az, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.m

bb.k:                                             ; preds = %io_flush_buffer_sync.exit
  %.not.i83 = icmp eq i32 %1, 0
  br i1 %.not.i83, label %maygvl_fclose.exit, label %maygvl_fclose.exit.thread

maygvl_fclose.exit.thread:                        ; preds = %bb.k
  %i.ba = call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  br label %bb.m

maygvl_fclose.exit:                               ; preds = %bb.k
  %i.bb = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_fclose, ptr noundef nonnull %i.e, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #28
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 2147483648
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = icmp eq i64 %.1, 4
  %or.cond99 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond99, label %bb.l, label %bb.m

bb.l:                                             ; preds = %maygvl_fclose.exit
  %i.bg = call ptr @rb_errno_ptr() #28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 1
  %i.bk = or disjoint i64 %i.bj, 1
  br label %bb.m

bb.m:                                             ; preds = %maygvl_fclose.exit.thread, %maygvl_fclose.exit, %bb.l, %io_flush_buffer_sync.exit
  %.169 = phi i32 [ %spec.select, %io_flush_buffer_sync.exit ], [ 1, %bb.l ], [ 1, %maygvl_fclose.exit ], [ 1, %maygvl_fclose.exit.thread ] ; 2 uses
  %.3 = phi i64 [ %.1, %io_flush_buffer_sync.exit ], [ %i.bk, %bb.l ], [ %.1, %maygvl_fclose.exit ], [ %.1, %maygvl_fclose.exit.thread ] ; 4 uses
  %i.bl = call i64 @rb_fiber_scheduler_current() #28 ; 2 uses
  %i.bm = icmp eq i32 %.169, 0
  %i.bn = icmp sgt i32 %i.c, -1                   ; 2 uses
  %or.cond7 = select i1 %i.bm, i1 %i.bn, i1 false
  %i.bo = icmp ne i64 %i.bl, 4
  %or.cond9 = select i1 %or.cond7, i1 %i.bo, i1 false
  br i1 %or.cond9, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bp = shl nuw i32 %i.c, 1
  %i.bq = or disjoint i32 %i.bp, 1
  %i.br = zext i32 %i.bq to i64
  %i.bs = call i64 @rb_fiber_scheduler_io_close(i64 noundef %i.bl, i64 noundef %i.br) #28 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 36
  br i1 %i.bt, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = and i64 %i.bs, -5
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.371 = phi i32 [ %.169, %bb.m ], [ 0, %bb.n ], [ %i.bw, %bb.o ]
  %i.bx = icmp eq i32 %.371, 0
  %or.cond11 = select i1 %i.bx, i1 %i.bn, i1 false
  br i1 %or.cond11, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
end_hunk_15
begin_hunk_16_@io_encoding_set:bb.a
  ]

bb.r:                                             ; preds = %bb.q
  %i.aj = icmp eq ptr %.019.i, %i.af
  br i1 %i.aj, label %bb.s, label %rb_io_ext_int_to_encs.exit

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.q
  %.not25.i = icmp eq ptr %.019.i, %i.af
  %i.ak = select i1 %.not25.i, ptr %i.af, ptr null
  br label %rb_io_ext_int_to_encs.exit

rb_io_ext_int_to_encs.exit:                       ; preds = %bb.r, %bb.s
  %storemerge22.i = phi ptr [ %i.ak, %bb.s ], [ %.019.i, %bb.r ] ; 2 uses
  %storemerge.i = phi ptr [ null, %bb.s ], [ %i.af, %bb.r ] ; 2 uses
  store ptr %storemerge22.i, ptr %i.a, align 8, !tbaa !128
  store ptr %storemerge.i, ptr %i.b, align 8, !tbaa !128
  store i64 4, ptr %i.c, align 8, !tbaa !13
  br label %thread-pre-split

bb.t:                                             ; preds = %bb.n
  %i.al = tail call i64 @rb_check_string_type(i64 noundef %1) #28 ; 3 uses
  %i.am = icmp eq i64 %i.al, 4
  br i1 %i.am, label %rb_enc_asciicompat.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @rb_enc_get(i64 noundef %i.al) #28 ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 20
  %.val.i = load i32, ptr %i.ao, align 4, !tbaa !84
  %.not.i31 = icmp eq i32 %.val.i, 1
  br i1 %.not.i31, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.u
  %i.ap = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.an) #33
  %.not3.i = icmp eq i32 %i.ap, 0
  br i1 %.not3.i, label %bb.v, label %rb_enc_asciicompat.exit.thread

bb.v:                                             ; preds = %rb_enc_asciicompat.exit
  %i.aq = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = and i64 %i.ar, 8192
  %.not.i32 = icmp eq i64 %i.as, 0
  %i.at = getelementptr i8, ptr %i.aq, i64 24     ; 2 uses
  br i1 %.not.i32, label %RSTRING_PTR.exit33, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !86
  br label %RSTRING_PTR.exit33

RSTRING_PTR.exit33:                               ; preds = %bb.v, %bb.w
  %i.av = phi ptr [ %i.au, %bb.w ], [ %i.at, %bb.v ]
  call fastcc void @parse_mode_enc(ptr noundef %i.av, ptr noundef nonnull %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null)
  %i.aw = call i32 @rb_econv_prepare_options(i64 noundef %3, ptr noundef nonnull %i.c, i32 noundef %i.e) #28
  %.pr.pre = load ptr, ptr %i.a, align 8, !tbaa !128
  %.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !128
  br label %thread-pre-split

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.u, %rb_enc_asciicompat.exit, %bb.t
  %i.ax = tail call ptr @rb_find_encoding(i64 noundef %1) #28 ; 2 uses
  %.not.i34 = icmp ne ptr %i.ax, null             ; 2 uses
  br i1 %.not.i34, label %find_encoding.exit35.thread, label %bb.x

bb.x:                                             ; preds = %rb_enc_asciicompat.exit.thread
  tail call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.207, i64 noundef %1) #34
  %i.ay = tail call ptr @rb_default_external_encoding() #28
  br label %find_encoding.exit35.thread

find_encoding.exit35.thread:                      ; preds = %rb_enc_asciicompat.exit.thread, %bb.x
  %.018.i = phi ptr [ %i.ay, %bb.x ], [ %i.ax, %rb_enc_asciicompat.exit.thread ] ; 5 uses
  %i.az = tail call nonnull ptr @rb_ascii8bit_encoding() #28
  %i.ba = icmp eq ptr %.018.i, %i.az
  br i1 %i.ba, label %bb.z, label %bb.y

bb.y:                                             ; preds = %find_encoding.exit35.thread
  %i.bb = tail call ptr @rb_default_internal_encoding() #28
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %find_encoding.exit35.thread
  %.019.i36 = phi ptr [ null, %find_encoding.exit35.thread ], [ %i.bb, %bb.y ] ; 4 uses
  %magicptr.i37 = ptrtoint ptr %.019.i36 to i64
  switch i64 %magicptr.i37, label %bb.aa [
    i64 4, label %bb.ab
    i64 0, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bc = icmp eq ptr %.019.i36, %.018.i
  br i1 %i.bc, label %bb.ab, label %rb_io_ext_int_to_encs.exit41

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.z
  %.not25.i38 = icmp eq ptr %.019.i36, %.018.i
  %or.cond26.i = select i1 %.not.i34, i1 true, i1 %.not25.i38
  %i.bd = select i1 %or.cond26.i, ptr %.018.i, ptr null
  br label %rb_io_ext_int_to_encs.exit41

rb_io_ext_int_to_encs.exit41:                     ; preds = %bb.aa, %bb.ab
  %storemerge22.i39 = phi ptr [ %i.bd, %bb.ab ], [ %.019.i36, %bb.aa ] ; 2 uses
  %storemerge.i40 = phi ptr [ null, %bb.ab ], [ %.018.i, %bb.aa ] ; 2 uses
  store ptr %storemerge22.i39, ptr %i.a, align 8, !tbaa !128
  store ptr %storemerge.i40, ptr %i.b, align 8, !tbaa !128
  store i64 4, ptr %i.c, align 8, !tbaa !13
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %RSTRING_PTR.exit33, %bb.m, %rb_io_ext_int_to_encs.exit, %rb_io_ext_int_to_encs.exit41
  %i.be = phi ptr [ %storemerge.i40, %rb_io_ext_int_to_encs.exit41 ], [ %storemerge.i, %rb_io_ext_int_to_encs.exit ], [ %.pre51, %bb.m ], [ %.pre.pre, %RSTRING_PTR.exit33 ] ; 2 uses
  %i.bf = phi ptr [ %storemerge22.i39, %rb_io_ext_int_to_encs.exit41 ], [ %storemerge22.i, %rb_io_ext_int_to_encs.exit ], [ %.pr48, %bb.m ], [ %.pr.pre, %RSTRING_PTR.exit33 ] ; 3 uses
  %.0 = phi i32 [ %i.e, %rb_io_ext_int_to_encs.exit41 ], [ %i.e, %rb_io_ext_int_to_encs.exit ], [ %i.ad, %bb.m ], [ %i.aw, %RSTRING_PTR.exit33 ] ; 3 uses
  %i.bg = getelementptr i8, ptr %0, i64 96
  %i.bh = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7  ; 4 uses
  %i.bj = icmp eq ptr %i.be, null
  %i.bk = and i32 %i.bi, 4
  %.not.i42 = icmp eq i32 %i.bk, 0                ; 2 uses
  %i.bl = and i32 %i.bi, 5
  %i.bm = icmp eq i32 %i.bl, 1
  %or.cond22.i = and i1 %i.bj, %i.bm
  br i1 %or.cond22.i, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %thread-pre-split
  %.not17.i = icmp eq ptr %i.bf, null
  br i1 %.not17.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bn = call ptr @rb_default_external_encoding() #28
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bo = phi ptr [ %i.bn, %bb.ad ], [ %i.bf, %bb.ac ] ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 20
  %.val.i.i = load i32, ptr %i.bp, align 4, !tbaa !84
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_asciicompat.exit.i, label %rb_enc_asciicompat.exit.thread.i

rb_enc_asciicompat.exit.i:                        ; preds = %bb.ae
  %i.bq = call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.bo) #33
  %.not3.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not3.i.i, label %.thread.i, label %rb_enc_asciicompat.exit.thread.i

.thread.i:                                        ; preds = %rb_enc_asciicompat.exit.i
  %i.br = and i32 %.0, 32512
  %.not1926.i = icmp eq i32 %i.br, 0
  br label %bb.ah

rb_enc_asciicompat.exit.thread.i:                 ; preds = %rb_enc_asciicompat.exit.i, %bb.ae
  %i.bs = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bs, ptr noundef nonnull @.str.205) #30
  unreachable

bb.af:                                            ; preds = %thread-pre-split
  %i.bt = and i32 %.0, 32512
  %.not19.i = icmp eq i32 %i.bt, 0                ; 2 uses
  %or.cond23.i = or i1 %.not19.i, %.not.i42
  br i1 %or.cond23.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bu = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bu, ptr noundef nonnull @.str.206) #30
  unreachable

bb.ah:                                            ; preds = %bb.af, %.thread.i
  %.not1928.i = phi i1 [ %.not1926.i, %.thread.i ], [ %.not19.i, %bb.af ] ; 2 uses
  %.not18.not.i = xor i1 %.not.i42, true
  %or.cond24.i = or i1 %.not1928.i, %.not18.not.i
  br i1 %or.cond24.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bv = or i32 %i.bi, 4096
  br label %.sink.split.i

bb.aj:                                            ; preds = %bb.ah
  br i1 %.not1928.i, label %bb.ak, label %validate_enc_binmode.exit

bb.ak:                                            ; preds = %bb.aj
  %i.bw = and i32 %i.bi, -4097
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ak, %bb.ai
  %.sink.i = phi i32 [ %i.bw, %bb.ak ], [ %i.bv, %bb.ai ]
  store i32 %.sink.i, ptr %i.bh, align 4, !tbaa !7
  br label %validate_enc_binmode.exit

validate_enc_binmode.exit:                        ; preds = %bb.aj, %.sink.split.i
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !83
  %i.bx = getelementptr i8, ptr %0, i64 104
  store ptr %i.be, ptr %i.bx, align 8, !tbaa !72
  store i32 %.0, ptr %i.d, align 8, !tbaa !96
  %i.by = load i64, ptr %i.c, align 8, !tbaa !13
  %i.bz = getelementptr i8, ptr %0, i64 120
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !97
  %i.ca = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !48 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i43, label %bb.am, label %bb.al

bb.al:                                            ; preds = %validate_enc_binmode.exit
  call void @rb_econv_close(ptr noundef nonnull %i.cb) #28
  store ptr null, ptr %i.ca, align 8, !tbaa !48
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %validate_enc_binmode.exit
  %i.cc = getelementptr i8, ptr %0, i64 136       ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %clear_readconv.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @ruby_xfree(ptr noundef nonnull %i.cd) #28
  store ptr null, ptr %i.cc, align 8, !tbaa !49
  br label %clear_readconv.exit.i

clear_readconv.exit.i:                            ; preds = %bb.an, %bb.am
  %i.ce = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !50 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.cf, null
  br i1 %.not.i2.i, label %clear_codeconv.exit, label %bb.ao

bb.ao:                                            ; preds = %clear_readconv.exit.i
  call void @rb_econv_close(ptr noundef nonnull %i.cf) #28
  store ptr null, ptr %i.ce, align 8, !tbaa !50
  br label %clear_codeconv.exit

clear_codeconv.exit:                              ; preds = %clear_readconv.exit.i, %bb.ao
  %i.cg = getelementptr i8, ptr %0, i64 176
  store i32 0, ptr %i.cg, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare ptr @rb_find_encoding(i64 noundef) local_unnamed_addr #1

declare i64 @rb_wb_unprotected_newobj_of(i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @ruby_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @rb_execarg_get(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_syserr_fail_str(i32 noundef, i64 noundef) local_unnamed_addr #7

declare i32 @rb_execarg_addopt(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_execarg_fixup_v(i64 noundef %0) #0 {
bb.a:
  tail call void @rb_execarg_parent_start(i64 noundef %0) #28
  ret i64 4
}

declare void @rb_execarg_parent_end(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @popen_exec(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145
  %i.c = tail call i32 @rb_exec_async_signal_safe(ptr noundef %i.b, ptr noundef %1, i64 noundef %2) #28
  ret i32 %i.c
}

declare i32 @rb_call_proc__fork() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @popen_redirect(ptr noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %i.c = and i32 %i.b, 3
  %or.cond.not = icmp eq i32 %i.c, 3
  br i1 %or.cond.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 28         ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7
  %i.g = tail call i32 @close(i32 noundef %i.f) #28 ; 0 uses
  %i.h = load i32, ptr %i.d, align 4, !tbaa !7    ; 2 uses
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @dup2(i32 noundef %i.h, i32 noundef 0) #28 ; 0 uses
  %i.j = load i32, ptr %i.d, align 4, !tbaa !7
  %i.k = tail call i32 @close(i32 noundef %i.j) #28 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr i8, ptr %0, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = tail call i32 @close(i32 noundef %i.m) #28 ; 0 uses
  %i.o = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !7    ; 2 uses
  %.not27 = icmp eq i32 %i.p, 1
  br i1 %.not27, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i32 @dup2(i32 noundef %i.p, i32 noundef 1) #28 ; 0 uses
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.r = and i32 %i.b, 1
  %.not = icmp eq i32 %i.r, 0
  %i.s = getelementptr i8, ptr %0, i64 20         ; 3 uses
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = tail call i32 @close(i32 noundef %i.t) #28 ; 0 uses
  %i.v = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !7    ; 2 uses
  %.not25 = icmp eq i32 %i.w, 1
  br i1 %.not25, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call i32 @dup2(i32 noundef %i.w, i32 noundef 1) #28 ; 0 uses
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %0, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !7
  %i.aa = tail call i32 @close(i32 noundef %i.z) #28 ; 0 uses
  %i.ab = load i32, ptr %i.s, align 4, !tbaa !7   ; 2 uses
  %.not24 = icmp eq i32 %i.ab, 0
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call i32 @dup2(i32 noundef %i.ab, i32 noundef 0) #28 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.j, %bb.h
  %.sink.in = phi ptr [ %i.v, %bb.h ], [ %i.s, %bb.j ], [ %i.o, %bb.e ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !7
  %i.ad = tail call i32 @close(i32 noundef %.sink) #28 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.g, %bb.i, %bb.d
  ret void
}

declare void @rb_execarg_parent_start(i64 noundef) local_unnamed_addr #1

declare i32 @rb_exec_async_signal_safe(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @execv(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #14

declare i32 @rb_enc_get_index(i64 noundef) local_unnamed_addr #1

declare i32 @rb_obj_method_arity(i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @rb_category_warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @rb_method_basic_definition_p(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @io_writev(i32 noundef range(i32 2, 1) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = inttoptr i64 %2 to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.b, label %rb_io_get_write_io.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  %..i = select i1 %.not.i, i64 %2, i64 %i.g      ; 2 uses
  %i.h = tail call i64 @rb_check_convert_type_with_id(i64 noundef %..i, i32 noundef 11, ptr noundef nonnull @.str.5, i64 noundef 3345) #28 ; 6 uses
  %i.i = icmp eq i64 %i.h, 4
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_io_get_write_io.exit
  %i.j = load i64, ptr @id_write, align 8, !tbaa !13
  %i.k = tail call i64 @rb_funcallv(i64 noundef %..i, i64 noundef %i.j, i32 noundef %0, ptr noundef %1) #28
  br label %.loopexit

bb.d:                                             ; preds = %rb_io_get_write_io.exit
  %i.l = icmp ne i64 %i.h, 0
  %i.m = and i64 %i.h, 7
  %i.n = icmp eq i64 %i.m, 0
  %.not3.i.i.i = and i1 %i.l, %i.n
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.d
  %i.o = inttoptr i64 %i.h to ptr                 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16   ; 3 uses
  %i.q = and i64 %i.p, 2048
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.d
  tail call void @rb_error_frozen_object(i64 noundef %i.h) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.r = and i64 %i.p, 31
  %i.s = icmp ne i64 %i.r, 5
  %i.t = and i64 %i.p, 49152
  %.not8.i.i = icmp eq i64 %i.t, 0
  %or.cond.i.i = or i1 %i.s, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.e, !prof !19

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %i.h) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.e
  %i.u = getelementptr i8, ptr %i.o, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34   ; 9 uses
  %.not.i.i36 = icmp eq ptr %i.v, null
  br i1 %.not.i.i36, label %bb.f, label %rb_io_check_initialized.exit.i

bb.f:                                             ; preds = %rb_io_taint_check.exit
  %i.w = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.x = getelementptr i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !20
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %rb_io_check_closed.exit.i

bb.g:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.aa = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i
  %i.ab = getelementptr i8, ptr %i.v, i64 20      ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.ad = and i32 %i.ac, 2
  %.not.i38 = icmp eq i32 %i.ad, 0
  br i1 %.not.i38, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_io_check_closed.exit.i
  %i.ae = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.8) #30
  unreachable

bb.i:                                             ; preds = %rb_io_check_closed.exit.i
  %i.af = getelementptr i8, ptr %i.v, i64 80
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !46
  %.not4.i = icmp eq i32 %i.ag, 0
  br i1 %.not4.i, label %rb_io_check_writable.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @io_unread(ptr noundef nonnull %i.v, i1 noundef zeroext true)
  br label %rb_io_check_writable.exit

rb_io_check_writable.exit:                        ; preds = %bb.i, %bb.j
  %i.ah = icmp sgt i32 %0, 0
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %rb_io_check_writable.exit
  %i.ai = add nsw i32 %0, -1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.t
  %.03043 = phi i32 [ 0, %.lr.ph ], [ %i.bm, %bb.t ] ; 5 uses
  %.03142 = phi i64 [ 1, %.lr.ph ], [ %i.bl, %bb.t ]
  %i.aj = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.ak = and i32 %i.aj, 24
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = sub i32 %0, %.03043                     ; 3 uses
  %i.am = icmp sgt i32 %i.al, 1023
  br i1 %i.am, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = sext i32 %.03043 to i64
  %i.ao = getelementptr [8 x i8], ptr %1, i64 %i.an
  %i.ap = tail call fastcc i64 @io_fwritev(i32 noundef %i.al, ptr noundef %i.ao, ptr noundef nonnull %i.v)
  br label %bb.r

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.aq = sext i32 %.03043 to i64
  %i.ar = getelementptr [8 x i8], ptr %1, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !13
  %i.at = tail call i64 @rb_obj_as_string(i64 noundef %i.as) #28
  %i.au = icmp slt i32 %.03043, %i.ai
  %i.av = zext i1 %i.au to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.aw = call fastcc i64 @do_writeconv(i64 noundef %i.at, ptr noundef nonnull %i.v, ptr noundef %i.a) ; 3 uses
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !7
  %.not.i39 = icmp eq i32 %i.ax, 0
  br i1 %.not.i39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @rb_obj_freeze_inline(i64 noundef %i.aw) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ay = tail call i64 @rb_str_tmp_frozen_no_embed_acquire(i64 noundef %i.aw) #28 ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !16
  %i.bb = and i64 %i.ba, 8192
  %.not.i.i40 = icmp eq i64 %i.bb, 0
  %i.bc = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  br i1 %.not.i.i40, label %io_fwrite.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !86
  br label %io_fwrite.exit

io_fwrite.exit:                                   ; preds = %bb.p, %bb.q
  %i.be = phi ptr [ %i.bd, %bb.q ], [ %i.bc, %bb.p ]
  %i.bf = getelementptr i8, ptr %i.az, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !81
  %i.bh = tail call fastcc i64 @io_binwrite(ptr noundef %i.be, i64 noundef %i.bg, ptr noundef nonnull %i.v, i32 noundef %i.av)
  tail call void @rb_str_tmp_frozen_release(i64 noundef %i.aw, i64 noundef %i.ay) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.r

bb.r:                                             ; preds = %io_fwrite.exit, %bb.m
  %.033 = phi i64 [ %i.ap, %bb.m ], [ %i.bh, %io_fwrite.exit ] ; 2 uses
  %.0 = phi i32 [ %i.al, %bb.m ], [ 1, %io_fwrite.exit ]
  %i.bi = icmp slt i64 %.033, 0
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.v) #31
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bj = shl nuw i64 %.033, 1
  %i.bk = or disjoint i64 %i.bj, 1
  %i.bl = tail call i64 @rb_fix_plus(i64 noundef %i.bk, i64 noundef %.03142) #28 ; 2 uses
  %i.bm = add i32 %.0, %.03043                    ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %0
  br i1 %i.bn, label %bb.k, label %.loopexit, !llvm.loop !342

.loopexit:                                        ; preds = %bb.t, %rb_io_check_writable.exit, %bb.c
  %.032 = phi i64 [ %i.k, %bb.c ], [ 1, %rb_io_check_writable.exit ], [ %i.bl, %bb.t ]
  ret i64 %.032
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @io_fwritev(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.binwritev_arg, align 8      ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.d = add i32 %0, 1                            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.e = sext i32 %i.d to i64                     ; 4 uses
  %i.f = icmp ult i32 %i.d, 64
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !13
  %i.g = shl nuw nsw i64 %i.e, 4
  %i.h = alloca i8, i64 %i.g, align 16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %i.d, 0
  br i1 %i.i, label %bb.d, label %rb_alloc_tmp_buffer2.exit, !prof !343

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, 2147483648) %i.e, i64 noundef 16) #30
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.c
  %i.j = shl nuw nsw i64 %i.e, 4
  %i.k = shl nuw nsw i64 %i.e, 1
  %i.l = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.j, i64 noundef %i.k) #37
  br label %bb.e

bb.e:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.b
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.l, %rb_alloc_tmp_buffer2.exit ] ; 11 uses
  %i.n = sext i32 %0 to i64                       ; 4 uses
  %i.o = icmp ult i32 %0, 128
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.c, align 8, !tbaa !13
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = alloca i8, i64 %i.p, align 16
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.r = icmp slt i32 %0, 0
  br i1 %i.r, label %bb.h, label %rb_alloc_tmp_buffer2.exit42, !prof !343

bb.h:                                             ; preds = %bb.g
  call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, 2147483648) %i.n, i64 noundef 8) #30
  unreachable

rb_alloc_tmp_buffer2.exit42:                      ; preds = %bb.g
  %i.s = shl nuw nsw i64 %i.n, 3
  %i.t = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.c, i64 noundef %i.s, i64 noundef %i.n) #37
  br label %bb.i

bb.i:                                             ; preds = %rb_alloc_tmp_buffer2.exit42, %bb.f
  %i.u = phi ptr [ %i.q, %bb.f ], [ %i.t, %rb_alloc_tmp_buffer2.exit42 ] ; 2 uses
  %.not62 = icmp eq i32 %0, 0                     ; 2 uses
  br i1 %.not62, label %.preheader59.i.thread, label %.lr.ph.preheader

.preheader59.i.thread:                            ; preds = %bb.i
  call void @rb_thread_check_ints() #28
  br label %._crit_edge.i

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %RSTRING_PTR.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %RSTRING_PTR.exit ] ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13
  %i.x = call i64 @rb_obj_as_string(i64 noundef %i.w) #28
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.y = call fastcc i64 @do_writeconv(i64 noundef %i.x, ptr noundef %2, ptr noundef %i.a) ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !7
  %.not41 = icmp eq i32 %i.z, 0
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  call void @rb_obj_freeze_inline(i64 noundef %i.y) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.aa = call i64 @rb_str_tmp_frozen_acquire(i64 noundef %i.y) #28 ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.u, i64 %indvars.iv
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !13
  %i.ac = inttoptr i64 %i.aa to ptr               ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !16
  %i.ae = and i64 %i.ad, 8192
  %.not.i = icmp eq i64 %i.ae, 0
  %i.af = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

end_hunk_16
begin_hunk_17_@ignore_closed_stream:bb.a

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.f = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 5
  br i1 %i.i, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !81
  %.not = icmp eq i64 %i.k, 13
  br i1 %.not, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.l, 0
  %i.m = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %i.n, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.p = load i64, ptr %i.o, align 1
  %i.q = xor i64 %i.p, 8295740900507610211
  %i.r = getelementptr i8, ptr %i.o, i64 5
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 %i.s, 7881692365129457764
  %i.u = or i64 %i.q, %i.t
  %i.v = icmp ne i64 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %.not6 = icmp eq i32 %i.w, 0
  br i1 %.not6, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %RSTRING_PTR.exit, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit
  tail call void @rb_exc_raise(i64 noundef %1) #30
  unreachable

bb.e:                                             ; preds = %RSTRING_PTR.exit
  ret i64 %0
}

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_ary_new() local_unnamed_addr #1

declare i32 @rb_block_given_p() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #4

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #1

declare i32 @rb_respond_to(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_ensure(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_yield(i64 noundef) #1

declare i64 @rb_fiber_scheduler_io_selectv(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @rb_fd_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @select_call(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 4 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 11 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !357  ; 7 uses
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !358  ; 7 uses
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !359  ; 7 uses
  %i.g = getelementptr i8, ptr %i.a, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193  ; 2 uses
  %i.i = getelementptr i8, ptr %i.a, i64 32       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.j = icmp eq i64 %i.b, 4
  br i1 %i.j, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.b, 0
  %i.l = and i64 %i.b, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %bb.c, !prof !171

bb.c:                                             ; preds = %bb.b
  %i.o = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 7
  br i1 %i.r, label %Check_Type.exit.preheader.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, !prof !18

Check_Type.exit.preheader.i:                      ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %i.t = getelementptr i8, ptr %i.o, i64 32
  %i.u = getelementptr i8, ptr %i.a, i64 80
  br label %Check_Type.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.c, %bb.b
  tail call void @rb_unexpected_type(i64 noundef %i.b, i32 noundef 7) #29
  unreachable

Check_Type.exit.i:                                ; preds = %bb.j, %Check_Type.exit.preheader.i
  %i.v = phi i64 [ %.pre.i, %bb.j ], [ %i.p, %Check_Type.exit.preheader.i ] ; 2 uses
  %.0136.i = phi i32 [ %.1137.i, %bb.j ], [ 0, %Check_Type.exit.preheader.i ] ; 3 uses
  %.0130.i = phi i32 [ %spec.select.i, %bb.j ], [ 0, %Check_Type.exit.preheader.i ] ; 3 uses
  %.0128.i = phi i64 [ %i.bd, %bb.j ], [ 0, %Check_Type.exit.preheader.i ] ; 4 uses
  %i.w = and i64 %i.v, 8192
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %rb_array_len.exit.i, label %rb_array_len.exit.thread.i

rb_array_len.exit.i:                              ; preds = %Check_Type.exit.i
  %i.x = load i64, ptr %i.s, align 8, !tbaa !86
  %i.y = icmp slt i64 %.0128.i, %i.x
  br i1 %i.y, label %bb.d, label %bb.k

rb_array_len.exit.thread.i:                       ; preds = %Check_Type.exit.i
  %i.z = lshr i64 %i.v, 15
  %i.aa = and i64 %i.z, 127
  %i.ab = icmp samesign ult i64 %.0128.i, %i.aa
  br i1 %i.ab, label %RARRAY_AREF.exit.i, label %bb.k

bb.d:                                             ; preds = %rb_array_len.exit.i
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !86
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.d, %rb_array_len.exit.thread.i
  %.0.i.i.i = phi ptr [ %i.ac, %bb.d ], [ %i.s, %rb_array_len.exit.thread.i ]
  %i.ad = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %.0128.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13
  %i.af = tail call i64 @rb_convert_type_with_id(i64 noundef %i.ae, i32 noundef 11, ptr noundef nonnull @.str.5, i64 noundef 3345) #28 ; 5 uses
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = and i64 %i.af, 7
  %i.ai = icmp eq i64 %i.ah, 0
  %.not3.i.i.i.i = and i1 %i.ag, %i.ai
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %RARRAY_AREF.exit.i
  %i.aj = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !16 ; 3 uses
  %i.al = and i64 %i.ak, 2048
  %.not.i.i161.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i161.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %RARRAY_AREF.exit.i
  tail call void @rb_error_frozen_object(i64 noundef %i.af) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.am = and i64 %i.ak, 31
  %i.an = icmp ne i64 %i.am, 5
  %i.ao = and i64 %i.ak, 49152
  %.not8.i.i.i = icmp eq i64 %i.ao, 0
  %or.cond.i.i.i = or i1 %i.an, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_io_taint_check.exit.i, label %bb.e, !prof !19

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %i.af) #28
  br label %rb_io_taint_check.exit.i

rb_io_taint_check.exit.i:                         ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.ap = getelementptr i8, ptr %i.aj, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !34 ; 4 uses
  %.not.i.i162.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i162.i, label %bb.f, label %rb_io_check_initialized.exit.i.i

bb.f:                                             ; preds = %rb_io_taint_check.exit.i
  %i.ar = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ar, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i.i:                 ; preds = %rb_io_taint_check.exit.i
  %i.as = getelementptr i8, ptr %i.aq, i64 16     ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !20 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.g, label %rb_io_check_closed.exit.i

bb.g:                                             ; preds = %rb_io_check_initialized.exit.i.i
  tail call void @rb_thread_check_ints() #28
  %i.av = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.av, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i.i
  tail call void @rb_fd_set(i32 noundef %i.at, ptr noundef %i.i) #28
  %i.aw = getelementptr i8, ptr %i.aq, i64 80
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !46
  %.not146.i = icmp eq i32 %i.ax, 0
  br i1 %.not146.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_io_check_closed.exit.i
  %i.ay = getelementptr i8, ptr %i.aq, i64 148
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !45
  %.not147.i = icmp eq i32 %i.az, 0
  br i1 %.not147.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %rb_io_check_closed.exit.i
  %i.ba = add i32 %.0136.i, 1
  %i.bb = load i32, ptr %i.as, align 8, !tbaa !20
  tail call void @rb_fd_set(i32 noundef %i.bb, ptr noundef %i.u) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1137.i = phi i32 [ %i.ba, %bb.i ], [ %.0136.i, %bb.h ]
  %i.bc = load i32, ptr %i.as, align 8, !tbaa !20
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.0130.i, i32 %i.bc)
  %i.bd = add nuw nsw i64 %.0128.i, 1
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !16
  br label %Check_Type.exit.i, !llvm.loop !360

bb.k:                                             ; preds = %rb_array_len.exit.thread.i, %rb_array_len.exit.i
  %.not.i = icmp eq i32 %.0136.i, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.a
  %.2138.i = phi i1 [ true, %bb.a ], [ false, %bb.l ], [ true, %bb.k ]
  %.2132.i = phi i32 [ 0, %bb.a ], [ %.0130.i, %bb.l ], [ %.0130.i, %bb.k ] ; 2 uses
  %.0125.i = phi ptr [ null, %bb.a ], [ %i.i, %bb.l ], [ %i.i, %bb.k ] ; 2 uses
  %.1.i = phi ptr [ %i.h, %bb.a ], [ %1, %bb.l ], [ %i.h, %bb.k ]
  %i.be = icmp eq i64 %i.d, 4
  br i1 %i.be, label %.loopexit427.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp eq i64 %i.d, 0
  %i.bg = and i64 %i.d, 7
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = or i1 %i.bf, %i.bh
  br i1 %i.bi, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i163.i, label %bb.o, !prof !171

bb.o:                                             ; preds = %bb.n
  %i.bj = inttoptr i64 %i.d to ptr                ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !16 ; 2 uses
  %i.bl = and i64 %i.bk, 31
  %i.bm = icmp eq i64 %i.bl, 7
  br i1 %i.bm, label %Check_Type.exit164.preheader.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i163.i, !prof !18

Check_Type.exit164.preheader.i:                   ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bj, i64 16     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bj, i64 32
  %i.bp = getelementptr i8, ptr %i.a, i64 48      ; 3 uses
  br label %Check_Type.exit164.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i163.i:     ; preds = %bb.o, %bb.n
  tail call void @rb_unexpected_type(i64 noundef %i.d, i32 noundef 7) #29
  unreachable

Check_Type.exit164.i:                             ; preds = %rb_io_check_closed.exit182.i, %Check_Type.exit164.preheader.i
  %i.bq = phi i64 [ %.pre392.i, %rb_io_check_closed.exit182.i ], [ %i.bk, %Check_Type.exit164.preheader.i ] ; 2 uses
  %.3133.i = phi i32 [ %spec.select158.i, %rb_io_check_closed.exit182.i ], [ %.2132.i, %Check_Type.exit164.preheader.i ] ; 3 uses
  %.1129.i = phi i64 [ %i.cy, %rb_io_check_closed.exit182.i ], [ 0, %Check_Type.exit164.preheader.i ] ; 4 uses
  %i.br = and i64 %i.bq, 8192
  %.not.i165.i = icmp eq i64 %i.br, 0
  br i1 %.not.i165.i, label %rb_array_len.exit167.i, label %rb_array_len.exit167.thread.i

rb_array_len.exit167.i:                           ; preds = %Check_Type.exit164.i
  %i.bs = load i64, ptr %i.bn, align 8, !tbaa !86
  %i.bt = icmp slt i64 %.1129.i, %i.bs
  br i1 %i.bt, label %bb.p, label %.loopexit427.i

rb_array_len.exit167.thread.i:                    ; preds = %Check_Type.exit164.i
  %i.bu = lshr i64 %i.bq, 15
  %i.bv = and i64 %i.bu, 127
  %i.bw = icmp samesign ult i64 %.1129.i, %i.bv
  br i1 %i.bw, label %RARRAY_AREF.exit170.i, label %.loopexit427.i

bb.p:                                             ; preds = %rb_array_len.exit167.i
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !86
  br label %RARRAY_AREF.exit170.i

RARRAY_AREF.exit170.i:                            ; preds = %bb.p, %rb_array_len.exit167.thread.i
  %.0.i.i169.i = phi ptr [ %i.bx, %bb.p ], [ %i.bn, %rb_array_len.exit167.thread.i ]
  %i.by = getelementptr [8 x i8], ptr %.0.i.i169.i, i64 %.1129.i
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !13
  %i.ca = tail call i64 @rb_convert_type_with_id(i64 noundef %i.bz, i32 noundef 11, ptr noundef nonnull @.str.5, i64 noundef 3345) #28 ; 2 uses
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i, label %bb.q, label %rb_io_get_write_io.exit.i

bb.q:                                             ; preds = %RARRAY_AREF.exit170.i
  %i.ce = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ce, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit.i:                        ; preds = %RARRAY_AREF.exit170.i
  %i.cf = getelementptr i8, ptr %i.cd, i64 88
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !37 ; 2 uses
  %.not.i171.i = icmp eq i64 %i.cg, 0
  %..i.i = select i1 %.not.i171.i, i64 %i.ca, i64 %i.cg ; 5 uses
  %i.ch = icmp ne i64 %..i.i, 0
  %i.ci = and i64 %..i.i, 7
  %i.cj = icmp eq i64 %i.ci, 0
  %.not3.i.i.i172.i = and i1 %i.ch, %i.cj
  br i1 %.not3.i.i.i172.i, label %RB_OBJ_FROZEN.exit.i.i174.i, label %RB_OBJ_FROZEN.exit.thread.i.i173.i, !prof !15

RB_OBJ_FROZEN.exit.i.i174.i:                      ; preds = %rb_io_get_write_io.exit.i
  %i.ck = inttoptr i64 %..i.i to ptr              ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !16 ; 3 uses
  %i.cm = and i64 %i.cl, 2048
  %.not.i.i175.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i175.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i176.i, label %RB_OBJ_FROZEN.exit.thread.i.i173.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i173.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i174.i, %rb_io_get_write_io.exit.i
  tail call void @rb_error_frozen_object(i64 noundef %..i.i) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i176.i:          ; preds = %RB_OBJ_FROZEN.exit.i.i174.i
  %i.cn = and i64 %i.cl, 31
  %i.co = icmp ne i64 %i.cn, 5
  %i.cp = and i64 %i.cl, 49152
  %.not8.i.i177.i = icmp eq i64 %i.cp, 0
  %or.cond.i.i178.i = or i1 %i.co, %.not8.i.i177.i
  br i1 %or.cond.i.i178.i, label %rb_io_taint_check.exit179.i, label %bb.r, !prof !19

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i176.i
  tail call void @rb_str_modify(i64 noundef %..i.i) #28
  br label %rb_io_taint_check.exit179.i

rb_io_taint_check.exit179.i:                      ; preds = %bb.r, %rbimpl_RB_TYPE_P_fastpath.exit.i.i176.i
  %i.cq = getelementptr i8, ptr %i.ck, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !34 ; 2 uses
  %.not.i.i180.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i180.i, label %bb.s, label %rb_io_check_initialized.exit.i181.i

bb.s:                                             ; preds = %rb_io_taint_check.exit179.i
  %i.cs = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cs, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i181.i:              ; preds = %rb_io_taint_check.exit179.i
  %i.ct = getelementptr i8, ptr %i.cr, i64 16     ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !20 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %bb.t, label %rb_io_check_closed.exit182.i

bb.t:                                             ; preds = %rb_io_check_initialized.exit.i181.i
  tail call void @rb_thread_check_ints() #28
  %i.cw = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cw, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit182.i:                     ; preds = %rb_io_check_initialized.exit.i181.i
  tail call void @rb_fd_set(i32 noundef %i.cu, ptr noundef %i.bp) #28
  %i.cx = load i32, ptr %i.ct, align 8, !tbaa !20
  %spec.select158.i = tail call i32 @llvm.smax.i32(i32 %.3133.i, i32 %i.cx)
  %i.cy = add nuw nsw i64 %.1129.i, 1
  %.pre392.i = load i64, ptr %i.bj, align 8, !tbaa !16
  br label %Check_Type.exit164.i, !llvm.loop !361

.loopexit427.i:                                   ; preds = %rb_array_len.exit167.thread.i, %rb_array_len.exit167.i, %bb.m
  %.5135.i = phi i32 [ %.2132.i, %bb.m ], [ %.3133.i, %rb_array_len.exit167.i ], [ %.3133.i, %rb_array_len.exit167.thread.i ] ; 2 uses
  %.0126.i = phi ptr [ null, %bb.m ], [ %i.bp, %rb_array_len.exit167.i ], [ %i.bp, %rb_array_len.exit167.thread.i ] ; 2 uses
  %i.cz = icmp eq i64 %i.f, 4
  br i1 %i.cz, label %.loopexit426.i, label %bb.u

bb.u:                                             ; preds = %.loopexit427.i
  %i.da = icmp eq i64 %i.f, 0
  %i.db = and i64 %i.f, 7
  %i.dc = icmp ne i64 %i.db, 0
  %i.dd = or i1 %i.da, %i.dc
  br i1 %i.dd, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i183.i, label %bb.v, !prof !171

bb.v:                                             ; preds = %bb.u
  %i.de = inttoptr i64 %i.f to ptr                ; 4 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !16 ; 2 uses
  %i.dg = and i64 %i.df, 31
  %i.dh = icmp eq i64 %i.dg, 7
  br i1 %i.dh, label %Check_Type.exit184.preheader.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i183.i, !prof !18

Check_Type.exit184.preheader.i:                   ; preds = %bb.v
  %i.di = getelementptr i8, ptr %i.de, i64 16     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.de, i64 32
  %i.dk = getelementptr i8, ptr %i.a, i64 64      ; 4 uses
  br label %Check_Type.exit184.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i183.i:     ; preds = %bb.v, %bb.u
  tail call void @rb_unexpected_type(i64 noundef %i.f, i32 noundef 7) #29
  unreachable

Check_Type.exit184.i:                             ; preds = %bb.ae, %Check_Type.exit184.preheader.i
  %i.dl = phi i64 [ %.pre393.i, %bb.ae ], [ %i.df, %Check_Type.exit184.preheader.i ] ; 2 uses
  %.6.i = phi i32 [ %.8.i, %bb.ae ], [ %.5135.i, %Check_Type.exit184.preheader.i ] ; 3 uses
end_hunk_17
begin_hunk_18_@io_s_write:rb_scan_args_n_opt.exit
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !204 ; 8 uses
  br i1 %.not, label %rb_io_binmode_m.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = tail call i64 @rb_io_ascii8bit_binmode(i64 noundef %.pre) ; 0 uses
  %i.aa = inttoptr i64 %.pre to ptr
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %bb.k, label %rb_io_get_write_io.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit.i:                        ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %i.ac, i64 88
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !37 ; 3 uses
  %.not.i.i = icmp eq i64 %i.af, 0
  %.not6.i = icmp eq i64 %i.af, %.pre
  %.not.i10 = or i1 %.not.i.i, %.not6.i
  br i1 %.not.i10, label %rb_io_binmode_m.exit, label %bb.l

bb.l:                                             ; preds = %rb_io_get_write_io.exit.i
  %i.ag = tail call i64 @rb_io_ascii8bit_binmode(i64 noundef %i.af) ; 0 uses
  br label %rb_io_binmode_m.exit

rb_io_binmode_m.exit:                             ; preds = %bb.i, %bb.l, %rb_io_get_write_io.exit.i
  %i.ah = icmp eq i64 %.pre, 4
  br i1 %i.ah, label %bb.r, label %bb.m

bb.m:                                             ; preds = %rb_io_binmode_m.exit
  %i.ai = icmp eq i64 %.041, 4
  br i1 %i.ai, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i64 %.pre, ptr %6, align 8, !tbaa !207
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.041, ptr %i.aj, align 8, !tbaa !209
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.ak, align 8, !tbaa !210
  %i.al = ptrtoint ptr %6 to i64
  %i.am = call i64 @rb_protect(ptr noundef nonnull @seek_before_access, i64 noundef %i.al, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.an = load i32, ptr %i.a, align 4, !tbaa !7
  %.not9 = icmp eq i32 %i.an, 0
  br i1 %.not9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = call i64 @rb_io_close(i64 noundef %.pre) ; 0 uses
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !7
  call void @rb_jump_tag(i32 noundef %i.ap) #30
  unreachable

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  store i64 %.pre, ptr %5, align 8, !tbaa !368
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.aq, align 8, !tbaa !370
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.ar, align 8, !tbaa !371
  %i.as = ptrtoint ptr %5 to i64
  %i.at = call i64 @rb_ensure(ptr noundef nonnull @io_s_write0, i64 noundef %i.as, ptr noundef nonnull @rb_io_close, i64 noundef %.pre) #28
  br label %bb.r

bb.r:                                             ; preds = %rb_io_binmode_m.exit, %bb.q
  %.08 = phi i64 [ %i.at, %bb.q ], [ 4, %rb_io_binmode_m.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret i64 %.08
}

declare i64 @rb_hash_new() local_unnamed_addr #1

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @io_s_write0(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !368
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !370
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !371
  %i.g = tail call fastcc i64 @io_write(i64 noundef %i.b, i64 noundef %i.d, i32 noundef %i.f)
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @io_write(i64 noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.b, label %rb_io_get_write_io.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.d, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  %..i = select i1 %.not.i, i64 %0, i64 %i.g      ; 2 uses
  %i.h = tail call i64 @rb_obj_as_string(i64 noundef %1) #28 ; 3 uses
  %i.i = tail call i64 @rb_check_convert_type_with_id(i64 noundef %..i, i32 noundef 11, ptr noundef nonnull @.str.5, i64 noundef 3345) #28 ; 6 uses
  %i.j = icmp eq i64 %i.i, 4
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_io_get_write_io.exit
  %i.k = load i64, ptr @id_write, align 8, !tbaa !13
  %i.l = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %..i, i64 noundef %i.k, i32 noundef 1, i64 noundef %i.h) #28
  br label %bb.q

bb.d:                                             ; preds = %rb_io_get_write_io.exit
  %i.m = inttoptr i64 %i.h to ptr
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !81
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ne i64 %i.i, 0
  %i.r = and i64 %i.i, 7
  %i.s = icmp eq i64 %i.r, 0
  %.not3.i.i.i = and i1 %i.q, %i.s
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.e
  %i.t = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16   ; 3 uses
  %i.v = and i64 %i.u, 2048
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.e
  tail call void @rb_error_frozen_object(i64 noundef %i.i) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.w = and i64 %i.u, 31
  %i.x = icmp ne i64 %i.w, 5
  %i.y = and i64 %i.u, 49152
  %.not8.i.i = icmp eq i64 %i.y, 0
  %or.cond.i.i = or i1 %i.x, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.f, !prof !19

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %i.i) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.f
  %i.z = getelementptr i8, ptr %i.t, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34  ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i17, label %bb.g, label %rb_io_check_initialized.exit.i

bb.g:                                             ; preds = %rb_io_taint_check.exit
  %i.ab = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !20
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %rb_io_check_closed.exit.i

bb.h:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.af = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.af, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i
  %i.ag = getelementptr i8, ptr %i.aa, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !39
  %i.ai = and i32 %i.ah, 2
  %.not.i19 = icmp eq i32 %i.ai, 0
  br i1 %.not.i19, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rb_io_check_closed.exit.i
  %i.aj = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.8) #30
  unreachable

bb.j:                                             ; preds = %rb_io_check_closed.exit.i
  %i.ak = getelementptr i8, ptr %i.aa, i64 80
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !46
  %.not4.i = icmp eq i32 %i.al, 0
  br i1 %.not4.i, label %rb_io_check_writable.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @io_unread(ptr noundef nonnull %i.aa, i1 noundef zeroext true)
  br label %rb_io_check_writable.exit

rb_io_check_writable.exit:                        ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !7
  %i.am = call fastcc i64 @do_writeconv(i64 noundef %i.h, ptr noundef nonnull %i.aa, ptr noundef %i.a) ; 3 uses
  %i.an = load i32, ptr %i.a, align 4, !tbaa !7
  %.not.i20 = icmp eq i32 %i.an, 0
  br i1 %.not.i20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %rb_io_check_writable.exit
  tail call void @rb_obj_freeze_inline(i64 noundef %i.am) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %rb_io_check_writable.exit
  %i.ao = tail call i64 @rb_str_tmp_frozen_no_embed_acquire(i64 noundef %i.am) #28 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr               ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.ar = and i64 %i.aq, 8192
  %.not.i.i21 = icmp eq i64 %i.ar, 0
  %i.as = getelementptr i8, ptr %i.ap, i64 24     ; 2 uses
  br i1 %.not.i.i21, label %io_fwrite.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !86
  br label %io_fwrite.exit

io_fwrite.exit:                                   ; preds = %bb.m, %bb.n
  %i.au = phi ptr [ %i.at, %bb.n ], [ %i.as, %bb.m ]
  %i.av = getelementptr i8, ptr %i.ap, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !81
  %i.ax = tail call fastcc i64 @io_binwrite(ptr noundef %i.au, i64 noundef %i.aw, ptr noundef nonnull %i.aa, i32 noundef %2) ; 2 uses
  tail call void @rb_str_tmp_frozen_release(i64 noundef %i.am, i64 noundef %i.ao) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ay = icmp slt i64 %i.ax, 0
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %io_fwrite.exit
  tail call fastcc void @rb_sys_fail_on_write(ptr noundef nonnull %i.aa) #31
  unreachable

bb.p:                                             ; preds = %io_fwrite.exit
  %i.az = shl nuw i64 %i.ax, 1
  %i.ba = or disjoint i64 %i.az, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.p, %bb.c
  %.0 = phi i64 [ %i.l, %bb.c ], [ %i.ba, %bb.p ], [ 1, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @io_new_instance(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.a, align 8, !tbaa !13
  %i.d = tail call i64 @rb_class_new_instance(i32 noundef 2, ptr noundef %i.b, i64 noundef %i.c) #28
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @io_encoding_set_v(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !216
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !217
  %i.g = getelementptr i8, ptr %i.a, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !218
  tail call fastcc void @io_encoding_set(ptr noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h)
  ret i64 4
}

declare i64 @rb_assoc_new(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @pipe_pair_close(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = tail call i64 @rb_ensure(ptr noundef nonnull @io_close, i64 noundef %i.b, ptr noundef nonnull @io_close, i64 noundef %i.d) #28
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @copy_stream_body(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 12 uses
  %i.d = alloca [2 x i64], align 16               ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca [3 x i64], align 16               ; 6 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = inttoptr i64 %0 to ptr                   ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.i = load i64, ptr %i.h, align 8, !tbaa !372  ; 10 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.j = getelementptr i8, ptr %i.h, i64 8        ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !373  ; 2 uses
  store i64 %i.k, ptr %i.c, align 8, !tbaa !13
  %i.l = tail call i64 @rb_thread_current() #28
  %i.m = getelementptr i8, ptr %i.h, i64 80
  store i64 %i.l, ptr %i.m, align 8, !tbaa !374
  %i.n = getelementptr i8, ptr %i.h, i64 56       ; 3 uses
  store i64 0, ptr %i.n, align 8, !tbaa !222
  %i.o = load i64, ptr @argf, align 8, !tbaa !13
  %i.p = icmp eq i64 %i.i, %i.o
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %i.i, 0
  %i.r = and i64 %i.i, 7
  %i.s = icmp ne i64 %i.r, 0
  %i.t = or i1 %i.q, %i.s                         ; 2 uses
  br i1 %i.t, label %rbimpl_RB_TYPE_P_fastpath.exit98.thread, label %rbimpl_RB_TYPE_P_fastpath.exit100

rbimpl_RB_TYPE_P_fastpath.exit100:                ; preds = %bb.b
  %i.u = inttoptr i64 %i.i to ptr
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16
  %i.w = and i64 %i.v, 31
  switch i64 %i.w, label %rbimpl_RB_TYPE_P_fastpath.exit98.thread [
    i64 11, label %bb.d
    i64 5, label %bb.d
  ]

rbimpl_RB_TYPE_P_fastpath.exit98.thread:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit100, %bb.b
  %.pr.i = load i64, ptr @copy_stream_body.rbimpl_id, align 8, !tbaa !13 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit98.thread, %.lr.ph.i
  %i.x = tail call i64 @rb_intern2(ptr noundef nonnull @.str.137, i64 noundef 7) #28 ; 3 uses
  store i64 %i.x, ptr @copy_stream_body.rbimpl_id, align 8, !tbaa !13
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !153

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rbimpl_RB_TYPE_P_fastpath.exit98.thread
  %.lcssa.i = phi i64 [ %.pr.i, %rbimpl_RB_TYPE_P_fastpath.exit98.thread ], [ %i.x, %.lr.ph.i ]
  %i.y = tail call i32 @rb_respond_to(i64 noundef %i.i, i64 noundef %.lcssa.i) #28
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rbimpl_intern_const.exit, %bb.a
  %i.z = getelementptr i8, ptr %i.h, i64 32
  store ptr null, ptr %i.z, align 8, !tbaa !375
  br label %.critedge

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit100, %rbimpl_RB_TYPE_P_fastpath.exit100, %rbimpl_intern_const.exit
  %i.aa = tail call i64 @rb_check_convert_type_with_id(i64 noundef %i.i, i32 noundef 11, ptr noundef nonnull @.str.5, i64 noundef 3345) #28 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, 4
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !13
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.t, label %rbimpl_RB_TYPE_P_fastpath.exit96.thread, label %rbimpl_RB_TYPE_P_fastpath.exit96

rbimpl_RB_TYPE_P_fastpath.exit96:                 ; preds = %bb.f
  %i.ac = inttoptr i64 %i.i to ptr
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !16
  %i.ae = and i64 %i.ad, 31
  %i.af = icmp eq i64 %i.ae, 11
  br i1 %i.af, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit96.thread

rbimpl_RB_TYPE_P_fastpath.exit96.thread:          ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.ag = tail call i64 @rb_get_path(i64 noundef %i.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store ptr %i.b, ptr %i.e, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #28, !srcloc !376
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  store volatile i64 %i.ag, ptr %i.ah, align 8, !tbaa !13
  %i.ai = load i64, ptr %i.b, align 8, !tbaa !13
  store i64 %i.ai, ptr %i.d, align 16, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 513, ptr %i.aj, align 8, !tbaa !13
  %i.ak = load i64, ptr @rb_cFile, align 8, !tbaa !13
  %i.al = call i64 @rb_class_new_instance(i32 noundef 2, ptr noundef nonnull %i.d, i64 noundef %i.ak) #28 ; 3 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !13
  store i64 %i.al, ptr %i.h, align 8, !tbaa !372
  %i.am = getelementptr i8, ptr %i.h, i64 48      ; 2 uses
  %i.an = load i8, ptr %i.am, align 8
  %i.ao = or i8 %i.an, 1
  store i8 %i.ao, ptr %i.am, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
end_hunk_18
begin_hunk_19_@copy_stream_body:bb.a

bb.m:                                             ; preds = %.critedge
  %i.bx = icmp eq i64 %i.bu, 0
  %i.by = and i64 %i.bu, 7
  %i.bz = icmp ne i64 %i.by, 0
  %i.ca = or i1 %i.bx, %i.bz
  br i1 %i.ca, label %rbimpl_RB_TYPE_P_fastpath.exit92.thread, label %rbimpl_RB_TYPE_P_fastpath.exit94

rbimpl_RB_TYPE_P_fastpath.exit94:                 ; preds = %bb.m
  %i.cb = inttoptr i64 %i.bu to ptr
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !16
  %i.cd = and i64 %i.cc, 31
  switch i64 %i.cd, label %rbimpl_RB_TYPE_P_fastpath.exit92.thread [
    i64 11, label %bb.n
    i64 5, label %bb.n
  ]

rbimpl_RB_TYPE_P_fastpath.exit92.thread:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit94, %bb.m
  %.pr.i103 = load i64, ptr @copy_stream_body.rbimpl_id.247, align 8, !tbaa !13 ; 2 uses
  %.not4.i104 = icmp eq i64 %.pr.i103, 0
  br i1 %.not4.i104, label %.lr.ph.i106, label %rbimpl_intern_const.exit108

.lr.ph.i106:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit92.thread, %.lr.ph.i106
  %i.ce = call i64 @rb_intern2(ptr noundef nonnull @.str.137, i64 noundef 7) #28 ; 3 uses
  store i64 %i.ce, ptr @copy_stream_body.rbimpl_id.247, align 8, !tbaa !13
  %.not.i107 = icmp eq i64 %i.ce, 0
  br i1 %.not.i107, label %.lr.ph.i106, label %rbimpl_intern_const.exit108, !llvm.loop !153

rbimpl_intern_const.exit108:                      ; preds = %.lr.ph.i106, %rbimpl_RB_TYPE_P_fastpath.exit92.thread
  %.lcssa.i105 = phi i64 [ %.pr.i103, %rbimpl_RB_TYPE_P_fastpath.exit92.thread ], [ %i.ce, %.lr.ph.i106 ]
  %i.cf = call i32 @rb_respond_to(i64 noundef %i.bu, i64 noundef %.lcssa.i105) #28
  %.not83 = icmp eq i32 %i.cf, 0
  br i1 %.not83, label %.critedge90.thread, label %rbimpl_intern_const.exit108._crit_edge

rbimpl_intern_const.exit108._crit_edge:           ; preds = %rbimpl_intern_const.exit108
  %.pre142 = load i64, ptr %i.c, align 8, !tbaa !13
  br label %bb.n

.critedge90.thread:                               ; preds = %.critedge, %rbimpl_intern_const.exit108
  %i.cg = getelementptr i8, ptr %i.h, i64 40
  store ptr null, ptr %i.cg, align 8, !tbaa !379
  br label %bb.ac

bb.n:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit94, %rbimpl_RB_TYPE_P_fastpath.exit94, %rbimpl_intern_const.exit108._crit_edge
  %i.ch = phi i64 [ %.pre142, %rbimpl_intern_const.exit108._crit_edge ], [ %i.bu, %rbimpl_RB_TYPE_P_fastpath.exit94 ], [ %i.bu, %rbimpl_RB_TYPE_P_fastpath.exit94 ]
  %i.ci = call i64 @rb_check_convert_type_with_id(i64 noundef %i.ch, i32 noundef 11, ptr noundef nonnull @.str.5, i64 noundef 3345) #28 ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 4
  br i1 %i.cj, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = inttoptr i64 %i.ci to ptr
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %bb.p, label %rb_io_get_write_io.exit

bb.p:                                             ; preds = %bb.o
  %i.cn = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cn, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit:                          ; preds = %bb.o
  %i.co = getelementptr i8, ptr %i.cm, i64 88
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !37 ; 2 uses
  %.not.i109 = icmp eq i64 %i.cp, 0
  %..i = select i1 %.not.i109, i64 %i.ci, i64 %i.cp ; 2 uses
  store i64 %..i, ptr %i.c, align 8, !tbaa !13
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.cq = load i64, ptr %i.c, align 8, !tbaa !13  ; 5 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = and i64 %i.cq, 7
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = or i1 %i.cr, %i.ct
  br i1 %i.cu, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.q
  %i.cv = inttoptr i64 %i.cq to ptr               ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !16
  %i.cx = and i64 %i.cw, 31
  %i.cy = icmp eq i64 %i.cx, 11
  br i1 %i.cy, label %bb.r, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.q, %rbimpl_RB_TYPE_P_fastpath.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  %i.cz = call i64 @rb_get_path(i64 noundef %i.cq) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store ptr %i.c, ptr %i.g, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #28, !srcloc !380
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  store volatile i64 %i.cz, ptr %i.da, align 8, !tbaa !13
  %i.db = load i64, ptr %i.c, align 8, !tbaa !13
  store i64 %i.db, ptr %i.f, align 16, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1667, ptr %i.dc, align 8, !tbaa !13
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 877, ptr %i.dd, align 16, !tbaa !13
  %i.de = load i64, ptr @rb_cFile, align 8, !tbaa !13
  %i.df = call i64 @rb_class_new_instance(i32 noundef 3, ptr noundef nonnull %i.f, i64 noundef %i.de) #28 ; 3 uses
  store i64 %i.df, ptr %i.c, align 8, !tbaa !13
  store i64 %i.df, ptr %i.j, align 8, !tbaa !373
  %i.dg = getelementptr i8, ptr %i.h, i64 48      ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 8
  %i.di = or i8 %i.dh, 2
  store i8 %i.di, ptr %i.dg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  br label %bb.t

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.dj = getelementptr i8, ptr %i.cv, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i110 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i110, label %bb.s, label %rb_io_get_write_io.exit113

bb.s:                                             ; preds = %bb.r
  %i.dl = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dl, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_get_write_io.exit113:                       ; preds = %bb.r
  %i.dm = getelementptr i8, ptr %i.dk, i64 88
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !37 ; 2 uses
  %.not.i111 = icmp eq i64 %i.dn, 0
  %..i112 = select i1 %.not.i111, i64 %i.cq, i64 %i.dn ; 3 uses
  store i64 %..i112, ptr %i.c, align 8, !tbaa !13
  store i64 %..i112, ptr %i.j, align 8, !tbaa !373
  br label %bb.t

bb.t:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rb_io_get_write_io.exit113, %rb_io_get_write_io.exit
  %i.do = phi i64 [ %i.df, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %..i112, %rb_io_get_write_io.exit113 ], [ %..i, %rb_io_get_write_io.exit ] ; 5 uses
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = and i64 %i.do, 7
  %i.dr = icmp eq i64 %i.dq, 0
  %.not3.i.i.i114 = and i1 %i.dp, %i.dr
  br i1 %.not3.i.i.i114, label %RB_OBJ_FROZEN.exit.i.i116, label %RB_OBJ_FROZEN.exit.thread.i.i115, !prof !15

RB_OBJ_FROZEN.exit.i.i116:                        ; preds = %bb.t
  %i.ds = inttoptr i64 %i.do to ptr               ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !16 ; 3 uses
  %i.du = and i64 %i.dt, 2048
  %.not.i.i117 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i117, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i118, label %RB_OBJ_FROZEN.exit.thread.i.i115, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i115:                 ; preds = %RB_OBJ_FROZEN.exit.i.i116, %bb.t
  call void @rb_error_frozen_object(i64 noundef %i.do) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i118:            ; preds = %RB_OBJ_FROZEN.exit.i.i116
  %i.dv = and i64 %i.dt, 31
  %i.dw = icmp ne i64 %i.dv, 5
  %i.dx = and i64 %i.dt, 49152
  %.not8.i.i119 = icmp eq i64 %i.dx, 0
  %or.cond.i.i120 = or i1 %i.dw, %.not8.i.i119
  br i1 %or.cond.i.i120, label %rb_io_taint_check.exit121, label %bb.u, !prof !19

bb.u:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i118
  call void @rb_str_modify(i64 noundef %i.do) #28
  br label %rb_io_taint_check.exit121

rb_io_taint_check.exit121:                        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i118, %bb.u
  %i.dy = getelementptr i8, ptr %i.ds, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !34 ; 6 uses
  %i.ea = getelementptr i8, ptr %i.h, i64 40      ; 3 uses
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !379
  %.not.i.i122 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i122, label %bb.v, label %rb_io_check_initialized.exit.i123

bb.v:                                             ; preds = %rb_io_taint_check.exit121
  %i.eb = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eb, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i123:                ; preds = %rb_io_taint_check.exit121
  %i.ec = getelementptr i8, ptr %i.dz, i64 16
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !20 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 0
  br i1 %i.ee, label %bb.w, label %rb_io_check_closed.exit.i

bb.w:                                             ; preds = %rb_io_check_initialized.exit.i123
  call void @rb_thread_check_ints() #28
  %i.ef = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ef, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i123
  %i.eg = getelementptr i8, ptr %i.dz, i64 20
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !39
  %i.ei = and i32 %i.eh, 2
  %.not.i126 = icmp eq i32 %i.ei, 0
  br i1 %.not.i126, label %bb.x, label %bb.y

bb.x:                                             ; preds = %rb_io_check_closed.exit.i
  %i.ej = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ej, ptr noundef nonnull @.str.8) #30
  unreachable

bb.y:                                             ; preds = %rb_io_check_closed.exit.i
  %i.ek = getelementptr i8, ptr %i.dz, i64 80
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !46
  %.not4.i127 = icmp eq i32 %i.el, 0
  br i1 %.not4.i127, label %rb_io_check_writable.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call fastcc void @io_unread(ptr noundef nonnull %i.dz, i1 noundef zeroext true)
  %.pre143 = load ptr, ptr %i.ea, align 8, !tbaa !379
  %.phi.trans.insert = getelementptr i8, ptr %.pre143, i64 16
  %.pre144 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %rb_io_check_writable.exit

rb_io_check_writable.exit:                        ; preds = %bb.y, %bb.z
  %i.em = phi i32 [ %i.ed, %bb.y ], [ %.pre144, %bb.z ]
  %i.en = getelementptr i8, ptr %i.h, i64 232
  %i.eo = call i32 @fstat(i32 noundef %i.em, ptr noundef %i.en) #28
  %i.ep = icmp sgt i32 %i.eo, -1
  br i1 %i.ep, label %.critedge90, label %bb.aa

bb.aa:                                            ; preds = %rb_io_check_writable.exit
  %i.eq = getelementptr i8, ptr %i.h, i64 64
  store ptr @.str.246, ptr %i.eq, align 8, !tbaa !377
  %i.er = call ptr @rb_errno_ptr() #28
  %i.es = load i32, ptr %i.er, align 4, !tbaa !7
  %i.et = getelementptr i8, ptr %i.h, i64 52
  store i32 %i.es, ptr %i.et, align 4, !tbaa !378
  br label %bb.ax

.critedge90:                                      ; preds = %rb_io_check_writable.exit
  %.pre146 = load ptr, ptr %i.ea, align 8, !tbaa !379 ; 2 uses
  %.not84 = icmp eq ptr %.pre146, null
  br i1 %.not84, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge90
  call fastcc void @io_ascii8bit_binmode(ptr noundef nonnull %.pre146)
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge90.thread, %bb.ab, %.critedge90
  %i.eu = getelementptr i8, ptr %i.h, i64 40      ; 4 uses
  %i.ev = getelementptr i8, ptr %i.h, i64 24      ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !221
  %i.ex = icmp slt i64 %i.ew, 0
  br i1 %i.ex, label %bb.ad, label %bb.ao

bb.ad:                                            ; preds = %bb.ac
  %i.ey = getelementptr i8, ptr %i.h, i64 32      ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !375 ; 2 uses
  %.not85 = icmp eq ptr %i.ez, null
  br i1 %.not85, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fa = getelementptr i8, ptr %i.ez, i64 80
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !46 ; 2 uses
  %.not86 = icmp eq i32 %i.fb, 0
  br i1 %.not86, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = getelementptr i8, ptr %i.h, i64 16      ; 3 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !219 ; 2 uses
  %i.ff = call i64 @llvm.smin.i64(i64 %i.fe, i64 %i.fc)
  %i.fg = icmp slt i64 %i.fe, 0
  %.072 = select i1 %i.fg, i64 %i.fc, i64 %i.ff   ; 5 uses
  %i.fh = call i64 @rb_str_buf_new(i64 noundef %.072) #28 ; 4 uses
  %i.fi = call i64 @rb_str_resize(i64 noundef %i.fh, i64 noundef %.072) #28 ; 0 uses
  %i.fj = inttoptr i64 %i.fh to ptr               ; 4 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !16
  %i.fl = and i64 %i.fk, 8192
  %.not.i128 = icmp eq i64 %i.fl, 0
  %i.fm = getelementptr i8, ptr %i.fj, i64 24     ; 4 uses
  br i1 %.not.i128, label %RSTRING_PTR.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.af, %bb.ag
  %i.fo = phi ptr [ %i.fn, %bb.ag ], [ %i.fm, %bb.af ]
  %i.fp = load ptr, ptr %i.ey, align 8, !tbaa !375 ; 3 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 80     ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !46 ; 2 uses
  %i.fs = icmp slt i32 %i.fr, 1
  br i1 %i.fs, label %read_buffered_data.exit, label %bb.ah

bb.ah:                                            ; preds = %RSTRING_PTR.exit
  %i.ft = getelementptr i8, ptr %i.fp, i64 68
  %i.fu = zext nneg i32 %i.fr to i64
  %spec.select17.i = call i64 @llvm.smin.i64(i64 %.072, i64 %i.fu) ; 2 uses
  %spec.select.i = trunc i64 %spec.select17.i to i32 ; 2 uses
  %i.fv = load ptr, ptr %i.ft, align 4, !tbaa !71
  %i.fw = getelementptr i8, ptr %i.fp, i64 76     ; 3 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !47
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr i8, ptr %i.fv, i64 %i.fy
  %sext.i = shl i64 %spec.select17.i, 32
  %i.ga = ashr exact i64 %sext.i, 32
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.fo, ptr noundef nonnull align 1 %i.fz, i64 noundef %i.ga, i1 noundef false) #28
  %i.gb = load i32, ptr %i.fw, align 4, !tbaa !47
  %i.gc = add i32 %i.gb, %spec.select.i
  store i32 %i.gc, ptr %i.fw, align 4, !tbaa !47
  %i.gd = load i32, ptr %i.fq, align 4, !tbaa !46
  %i.ge = sub i32 %i.gd, %spec.select.i
  store i32 %i.ge, ptr %i.fq, align 4, !tbaa !46
  br label %read_buffered_data.exit

read_buffered_data.exit:                          ; preds = %RSTRING_PTR.exit, %bb.ah
  %i.gf = load ptr, ptr %i.eu, align 8, !tbaa !379 ; 2 uses
  %.not87 = icmp eq ptr %i.gf, null
  br i1 %.not87, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %read_buffered_data.exit
  %i.gg = load i64, ptr %i.fj, align 8, !tbaa !16
  %i.gh = and i64 %i.gg, 8192
  %.not.i129 = icmp eq i64 %i.gh, 0
  br i1 %.not.i129, label %RSTRING_PTR.exit130, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gi = load ptr, ptr %i.fm, align 8, !tbaa !86
  br label %RSTRING_PTR.exit130

RSTRING_PTR.exit130:                              ; preds = %bb.ai, %bb.aj
  %i.gj = phi ptr [ %i.gi, %bb.aj ], [ %i.fm, %bb.ai ]
  %i.gk = getelementptr i8, ptr %i.fj, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !81
  %i.gm = call fastcc i64 @io_binwrite(ptr noundef %i.gj, i64 noundef %i.gl, ptr noundef nonnull %i.gf, i32 noundef 0)
  %i.gn = icmp slt i64 %i.gm, 0
  br i1 %i.gn, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %RSTRING_PTR.exit130
  %i.go = load ptr, ptr %i.eu, align 8, !tbaa !379
  call fastcc void @rb_sys_fail_on_write(ptr noundef %i.go) #31
  unreachable

bb.al:                                            ; preds = %read_buffered_data.exit
  %i.gp = load i64, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.fh, ptr %i.a, align 8, !tbaa !13
  %i.gq = load i64, ptr @id_write, align 8, !tbaa !13
  %i.gr = call i64 @rb_funcallv(i64 noundef %i.gp, i64 noundef %i.gq, i32 noundef 1, ptr noundef nonnull %i.a) #28 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.am

bb.am:                                            ; preds = %RSTRING_PTR.exit130, %bb.al
  %i.gs = call i64 @rb_str_resize(i64 noundef %i.fh, i64 noundef 0) #28 ; 0 uses
  %i.gt = load i64, ptr %i.n, align 8, !tbaa !222
  %i.gu = add i64 %i.gt, %.072
  store i64 %i.gu, ptr %i.n, align 8, !tbaa !222
  %i.gv = load i64, ptr %i.fd, align 8, !tbaa !219 ; 2 uses
  %i.gw = icmp sgt i64 %i.gv, -1
  br i1 %i.gw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gx = sub i64 %i.gv, %.072
  store i64 %i.gx, ptr %i.fd, align 8, !tbaa !219
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.ae, %bb.ad, %bb.ac
  %i.gy = load ptr, ptr %i.eu, align 8, !tbaa !379 ; 2 uses
  %.not88 = icmp eq ptr %i.gy, null
  br i1 %.not88, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gz = call fastcc i32 @io_fflush(ptr noundef nonnull %i.gy)
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hb = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hb, ptr noundef nonnull @.str.248) #30
  unreachable

bb.ar:                                            ; preds = %bb.ap, %bb.ao
  %i.hc = getelementptr i8, ptr %i.h, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !219
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hf = getelementptr i8, ptr %i.h, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !375
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hi = load ptr, ptr %i.eu, align 8, !tbaa !379
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %copy_stream_fallback.exit, label %bb.aw

bb.au:                                            ; preds = %bb.as
  %i.hk = load i64, ptr %i.ev, align 8, !tbaa !221
  %i.hl = icmp sgt i64 %i.hk, -1
  br i1 %i.hl, label %bb.av, label %copy_stream_fallback.exit

bb.av:                                            ; preds = %bb.au
  %i.hm = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hm, ptr noundef nonnull @.str.249) #30
  unreachable

copy_stream_fallback.exit:                        ; preds = %bb.at, %bb.au
  %i.hn = load i64, ptr @rb_eEOFError, align 8, !tbaa !13
  %i.ho = call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef nonnull @copy_stream_fallback_body, i64 noundef %0, ptr noundef null, i64 noundef 0, i64 noundef %i.hn, i64 noundef 0) #28 ; 0 uses
  br label %bb.ax
end_hunk_19
begin_hunk_20_@nogvl_copy_stream_wait_write:bb.a
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = getelementptr i8, ptr %0, i64 52
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !378
  br label %.critedge9

.critedge9:                                       ; preds = %bb.b, %nogvl_wait_for.exit, %._crit_edge, %.critedge
  %.0 = phi i32 [ %i.o, %.critedge ], [ 0, %._crit_edge ], [ 0, %nogvl_wait_for.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i64 @copy_file_range(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @sendfile(i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @io_initialize(i64 noundef returned %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.rb_io_encoding, align 8     ; 4 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @rb_io_extract_modeenc(ptr noundef nonnull %i.a, ptr noundef null, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %4)
  %i.f = trunc i64 %1 to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @rb_fix2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_num2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  %i.i = trunc i64 %.0.i to i32                   ; 12 uses
  %i.j = tail call i32 @rb_reserved_fd_p(i32 noundef %i.i) #28
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_num2int_inline.exit
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.255) #30
  unreachable

bb.e:                                             ; preds = %rb_num2int_inline.exit
  %i.l = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 3) #28 ; 6 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @rb_errno_ptr() #28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.o, ptr noundef null) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = load i32, ptr @max_file_descriptor, align 4, !tbaa !7 ; 2 uses
  %i.q = icmp sgt i32 %i.i, -1
  %.not.i = icmp ult i32 %i.p, %i.i
  %or.cond.i = select i1 %i.q, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.h, label %rb_update_max_fd.exit

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.i, i32 noundef 3) #28
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i, %bb.h
  br label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @rb_errno_ptr() #28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = icmp eq i32 %i.u, 9
  br i1 %i.v, label %bb.j, label %.lr.ph.i.preheader

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i32 noundef %i.i) #29
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.013.i = phi i32 [ %i.x, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %i.w = cmpxchg volatile ptr @max_file_descriptor, i32 %.013.i, i32 %i.i seq_cst seq_cst, align 4
  %i.x = extractvalue { i32, i1 } %i.w, 0         ; 2 uses
  %i.y = icmp ult i32 %i.x, %i.i
  br i1 %i.y, label %.lr.ph.i, label %rb_update_max_fd.exit, !llvm.loop !11

rb_update_max_fd.exit:                            ; preds = %.lr.ph.i, %bb.g
  %i.z = and i32 %i.l, 3
  %i.aa = zext nneg i32 %i.z to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.io_initialize, i64 %i.aa
  %switch.load = load i32, ptr %switch.gep, align 4 ; 2 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ac = icmp eq i64 %i.ab, 4
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rb_update_max_fd.exit
  %i.ad = shl i32 %i.l, 2
  %i.ae = and i32 %i.ad, 2048
  %i.af = lshr i32 %i.l, 4
  %i.ag = and i32 %i.af, 64
  %spec.select.i = or disjoint i32 %i.ae, %i.ag
  %i.ah = shl i32 %i.l, 1
  %i.ai = and i32 %i.ah, 128
  %.2.i = or disjoint i32 %spec.select.i, %i.ai
  %i.aj = shl i32 %i.l, 3
  %i.ak = and i32 %i.aj, 1024
  %.3.i = or disjoint i32 %.2.i, %i.ak
  %.4.i = or disjoint i32 %.3.i, %switch.load
  br label %bb.n

bb.l:                                             ; preds = %rb_update_max_fd.exit
  %i.al = load i32, ptr %i.c, align 4, !tbaa !7   ; 2 uses
  %i.am = xor i32 %switch.load, 3
  %i.an = and i32 %i.am, %i.al
  %.not33 = icmp eq i32 %i.an, 0
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 45, ptr %i.d, align 8, !tbaa !13
  %i.ao = load i64, ptr @rb_eSystemCallError, align 8, !tbaa !13
  %i.ap = call i64 @rb_class_new_instance(i32 noundef 1, ptr noundef nonnull %i.d, i64 noundef %i.ao) #28
  call void @rb_exc_raise(i64 noundef %i.ap) #30
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.aq = phi i32 [ %i.al, %bb.l ], [ %.4.i, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 4, ptr %i.e, align 8, !tbaa !13
  %i.ar = icmp eq i64 %3, 4
  br i1 %i.ar, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = load i64, ptr @sym_autoclose, align 8, !tbaa !13
  %i.at = tail call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.as) #28
  %i.au = icmp eq i64 %i.at, 0
  %i.av = or i32 %i.aq, 65536
  %spec.select = select i1 %i.au, i32 %i.av, i32 %i.aq ; 2 uses
  %i.aw = tail call i64 @rb_id2sym(i64 noundef 3681) #28
  %i.ax = tail call i64 @rb_hash_aref(i64 noundef %3, i64 noundef %i.aw) #28 ; 2 uses
  store i64 %i.ax, ptr %i.e, align 8, !tbaa !13
  %i.ay = icmp eq i64 %i.ax, 4
  br i1 %i.ay, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = call i64 @rb_string_value(ptr noundef nonnull %i.e) #28 ; 0 uses
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !13
  %i.bb = call i64 @rb_str_new_frozen(i64 noundef %i.ba) #28
  store i64 %i.bb, ptr %i.e, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %i.bc = phi i32 [ %i.aq, %bb.n ], [ %spec.select, %bb.p ], [ %spec.select, %bb.o ] ; 2 uses
  %i.bd = call ptr @rb_io_make_open_file(i64 noundef %0) ; 16 uses
  store i64 %0, ptr %i.bd, align 8, !tbaa !42
  %i.be = getelementptr i8, ptr %i.bd, i64 16     ; 2 uses
  store i32 %i.i, ptr %i.be, align 8, !tbaa !20
  %i.bf = getelementptr i8, ptr %i.bd, i64 20     ; 3 uses
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !39
  %i.bg = getelementptr i8, ptr %i.bd, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !152
  %i.bh = load i64, ptr %i.e, align 8, !tbaa !13
  %i.bi = getelementptr i8, ptr %i.bd, i64 32
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !44
  %i.bj = getelementptr i8, ptr %i.bd, i64 200
  store i64 4, ptr %i.bj, align 8, !tbaa !38
  %i.bk = getelementptr i8, ptr %i.bd, i64 208    ; 3 uses
  %i.bl = getelementptr i8, ptr %i.bd, i64 216
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !167
  store ptr %i.bk, ptr %i.bk, align 8, !tbaa !168
  %i.bm = getelementptr i8, ptr %i.bd, i64 224
  store ptr null, ptr %i.bm, align 8, !tbaa !169
  %i.bn = getelementptr i8, ptr %i.bd, i64 232
  store i64 4, ptr %i.bn, align 8, !tbaa !170
  %i.bo = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !99
  %i.bp = getelementptr i8, ptr %i.bo, i64 496
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !101
  %i.br = getelementptr i8, ptr %i.bd, i64 240
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !122
  %i.bs = getelementptr i8, ptr %i.bd, i64 128    ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @rb_econv_close(ptr noundef nonnull %i.bt) #28
  store ptr null, ptr %i.bs, align 8, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bu = getelementptr i8, ptr %i.bd, i64 136    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %clear_readconv.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @ruby_xfree(ptr noundef nonnull %i.bv) #28
  store ptr null, ptr %i.bu, align 8, !tbaa !49
  br label %clear_readconv.exit.i

clear_readconv.exit.i:                            ; preds = %bb.t, %bb.s
  %i.bw = getelementptr i8, ptr %i.bd, i64 160    ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !50 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.bx, null
  br i1 %.not.i2.i, label %clear_codeconv.exit, label %bb.u

bb.u:                                             ; preds = %clear_readconv.exit.i
  call void @rb_econv_close(ptr noundef nonnull %i.bx) #28
  store ptr null, ptr %i.bw, align 8, !tbaa !50
  br label %clear_codeconv.exit

clear_codeconv.exit:                              ; preds = %clear_readconv.exit.i, %bb.u
  %i.by = getelementptr i8, ptr %i.bd, i64 176
  store i32 0, ptr %i.by, align 8, !tbaa !51
  %i.bz = load i32, ptr %i.be, align 8, !tbaa !20
  %i.ca = call i32 @isatty(i32 noundef %i.bz) #28
  %.not.i36 = icmp eq i32 %i.ca, 0
  br i1 %.not.i36, label %io_check_tty.exit, label %bb.v

bb.v:                                             ; preds = %clear_codeconv.exit
  %i.cb = load i32, ptr %i.bf, align 4, !tbaa !39
  %i.cc = or i32 %i.cb, 48
  store i32 %i.cc, ptr %i.bf, align 4, !tbaa !39
  br label %io_check_tty.exit

io_check_tty.exit:                                ; preds = %clear_codeconv.exit, %bb.v
  %i.cd = load ptr, ptr @stdin, align 8, !tbaa !158
  %i.ce = call i32 @fileno(ptr noundef %i.cd) #28
  %i.cf = icmp eq i32 %i.ce, %i.i
  br i1 %i.cf, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %io_check_tty.exit
  %i.cg = load ptr, ptr @stdout, align 8, !tbaa !158
  %i.ch = call i32 @fileno(ptr noundef %i.cg) #28
  %i.ci = icmp eq i32 %i.ch, %i.i
  br i1 %i.ci, label %.sink.split, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !158
  %i.ck = call i32 @fileno(ptr noundef %i.cj) #28
  %i.cl = icmp eq i32 %i.ck, %i.i
  br i1 %i.cl, label %.sink.split, label %bb.y

.sink.split:                                      ; preds = %bb.x, %bb.w, %io_check_tty.exit
  %stdout.sink = phi ptr [ @stdin, %io_check_tty.exit ], [ @stdout, %bb.w ], [ @stderr, %bb.x ]
  %i.cm = load ptr, ptr %stdout.sink, align 8, !tbaa !158
  %i.cn = getelementptr i8, ptr %i.bd, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !151
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.x
  %i.co = and i32 %i.bc, 1048576
  %.not34 = icmp eq i32 %i.co, 0
  br i1 %.not34, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = call fastcc ptr @io_set_encoding_by_bom(i64 noundef %0) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret i64 %0
}

declare i32 @rb_reserved_fd_p(i32 noundef) local_unnamed_addr #1

declare i64 @rb_str_equal(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_frozen_bare_string(i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_init_copy(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef nonnull ptr @rb_io_fmode_modestr(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = and i32 %0, 64
  %.not = icmp eq i32 %i.a, 0
  %i.b = and i32 %0, 3                            ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.b, 3
  %i.d = and i32 %0, 4
  %.not40 = icmp eq i32 %i.d, 0                   ; 2 uses
  %i.e = and i32 %0, 4096
  %.not41 = icmp eq i32 %i.e, 0                   ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = select i1 %.not41, ptr @.str.212, ptr @.str.259
  %i.g = select i1 %.not40, ptr %i.f, ptr @.str.258
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.h = select i1 %.not41, ptr @.str.211, ptr @.str.261
  %i.i = select i1 %.not40, ptr %i.h, ptr @.str.260
  br label %bb.p

bb.e:                                             ; preds = %bb.a
  switch i32 %i.b, label %default.unreachable42 [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.k
    i32 0, label %bb.f
  ]

default.unreachable42:                            ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.262, i32 noundef %0) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = and i32 %0, 4
  %.not36 = icmp eq i32 %i.k, 0
  %i.l = and i32 %0, 4096
  %.not37 = icmp eq i32 %i.l, 0
  %i.m = select i1 %.not37, ptr @.str.214, ptr @.str.264
  %i.n = select i1 %.not36, ptr %i.m, ptr @.str.263
  br label %bb.p

bb.h:                                             ; preds = %bb.e
  %i.o = and i32 %0, 1024
  %.not31 = icmp eq i32 %i.o, 0
  %i.p = and i32 %0, 4
  %.not32 = icmp eq i32 %i.p, 0                   ; 2 uses
  %i.q = and i32 %0, 4096
  %.not33 = icmp eq i32 %i.q, 0                   ; 2 uses
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = select i1 %.not33, ptr @.str.267, ptr @.str.266
  %i.s = select i1 %.not32, ptr %i.r, ptr @.str.265
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.t = select i1 %.not33, ptr @.str.24, ptr @.str.269
  %i.u = select i1 %.not32, ptr %i.t, ptr @.str.268
  br label %bb.p

bb.k:                                             ; preds = %bb.e
  %i.v = and i32 %0, 128
  %.not23 = icmp eq i32 %i.v, 0
  br i1 %.not23, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = and i32 %0, 1024
  %.not26 = icmp eq i32 %i.w, 0
  %i.x = and i32 %0, 4
  %.not27 = icmp eq i32 %i.x, 0                   ; 2 uses
  %i.y = and i32 %0, 4096
  %.not28 = icmp eq i32 %i.y, 0                   ; 2 uses
  br i1 %.not26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = select i1 %.not28, ptr @.str.272, ptr @.str.271
  %i.aa = select i1 %.not27, ptr %i.z, ptr @.str.270
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.ab = select i1 %.not28, ptr @.str.215, ptr @.str.274
  %i.ac = select i1 %.not27, ptr %i.ab, ptr @.str.273
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ad = and i32 %0, 4
  %.not24 = icmp eq i32 %i.ad, 0
  %i.ae = and i32 %0, 4096
  %.not25 = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not25, ptr @.str.216, ptr @.str.276
  %i.ag = select i1 %.not24, ptr %i.af, ptr @.str.275
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.i, %bb.j, %bb.o, %bb.g, %bb.d, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.n, %bb.g ], [ %i.ag, %bb.o ], [ %i.u, %bb.j ], [ %i.s, %bb.i ], [ %i.aa, %bb.m ], [ %i.ac, %bb.n ]
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @setvbuf(ptr noundef captures(none), ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #14

declare ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_str_substr(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @prepare_getline_args(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull captures(none) %2, i64 noundef %3) unnamed_addr #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
end_hunk_20
begin_hunk_21_@prepare_getline_args:rb_scan_args_n_opt.exit
  %.1.i25 = phi i32 [ %.1.i2429, %.preheader.1 ], [ %0, %bb.b ]
  tail call void @rb_error_arity(i32 noundef %.1.i25, i32 noundef 0, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.o = load i64, ptr @rb_rs, align 8, !tbaa !13 ; 3 uses
  store i64 %i.o, ptr %i.b, align 8, !tbaa !13
  switch i32 %.1.i2429, label %bb.g [
    i32 1, label %bb.d
    i32 0, label %.thread.i
  ]

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.p = load i64, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.q = icmp eq i64 %i.p, 4
  br i1 %i.q, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i64 @rb_check_string_type(i64 noundef %i.p) #28 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %1, align 8, !tbaa !13
  br label %bb.i

bb.g:                                             ; preds = %rb_scan_args_set.exit
  %i.u = load i64, ptr %1, align 8, !tbaa !13     ; 2 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !13
  %i.v = getelementptr i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13   ; 2 uses
  %i.x = icmp eq i64 %i.u, 4
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call i64 @rb_string_value(ptr noundef nonnull %i.b) #28 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bb.i

.thread.i:                                        ; preds = %rb_scan_args_set.exit, %bb.e, %bb.d
  %i.z = phi i64 [ %i.o, %rb_scan_args_set.exit ], [ 4, %bb.d ], [ %i.r, %bb.e ]
  %i.aa = getelementptr i8, ptr %2, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !201
  br label %extract_getline_args.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ab = phi i64 [ %i.o, %bb.f ], [ 4, %bb.g ], [ %.pre.i, %bb.h ]
  %.1.i8 = phi i64 [ %i.t, %bb.f ], [ %i.w, %bb.g ], [ %i.w, %bb.h ] ; 4 uses
  %i.ac = getelementptr i8, ptr %2, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !201
  %i.ad = icmp eq i64 %.1.i8, 4
  br i1 %i.ad, label %extract_getline_args.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = trunc i64 %.1.i8 to i1
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = ashr i64 %.1.i8, 1
  br label %extract_getline_args.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = call i64 @rb_num2long(i64 noundef %.1.i8) #28
  br label %extract_getline_args.exit

extract_getline_args.exit:                        ; preds = %.thread.i, %bb.i, %bb.k, %bb.l
  %i.ah = phi i64 [ -1, %.thread.i ], [ -1, %bb.i ], [ %i.af, %bb.k ], [ %i.ag, %bb.l ]
  %i.ai = getelementptr i8, ptr %2, i64 16
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.aj = icmp eq i64 %.188.i2331, 4
  br i1 %i.aj, label %extract_getline_opts.exit, label %bb.m

bb.m:                                             ; preds = %extract_getline_args.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ak = load i64, ptr @extract_getline_opts.kwds, align 8, !tbaa !13
  %.not.i9 = icmp eq i64 %i.ak, 0
  br i1 %.not.i9, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.al = call i64 @rb_intern2(ptr noundef nonnull @.str.238, i64 noundef 5) #28
  store i64 %i.al, ptr @extract_getline_opts.kwds, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.am = call i32 @rb_get_kwargs(i64 noundef %.188.i2331, ptr noundef nonnull @extract_getline_opts.kwds, i32 noundef 0, i32 noundef -2, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.an = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.ao = icmp ne i64 %i.an, 36
  %i.ap = and i64 %i.an, -5
  %i.aq = icmp ne i64 %i.ap, 0
  %narrow.i = and i1 %i.ao, %i.aq
  %i.ar = zext i1 %narrow.i to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %extract_getline_opts.exit

extract_getline_opts.exit:                        ; preds = %extract_getline_args.exit, %bb.o
  %.0.i = phi i8 [ 0, %extract_getline_args.exit ], [ %i.ar, %bb.o ]
  %i.as = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.at = load i8, ptr %i.as, align 8
  %i.au = and i8 %i.at, -2
  %i.av = or disjoint i8 %i.au, %.0.i
  store i8 %i.av, ptr %i.as, align 8
  %i.aw = getelementptr i8, ptr %2, i64 8
  call fastcc void @check_getline_args(ptr noundef %i.aw, i64 noundef %3)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @io_getc(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !39
  %i.e = and i32 %i.d, 4096
  %.not89 = icmp eq i32 %i.e, 0
  br i1 %.not89, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !83  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.d, label %io_read_encoding.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @rb_default_external_encoding() #28
  br label %io_read_encoding.exit

io_read_encoding.exit:                            ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %.val, %bb.c ] ; 5 uses
  tail call fastcc void @make_readconv(ptr noundef nonnull %0, i32 noundef 0)
  %i.h = getelementptr i8, ptr %0, i64 136        ; 10 uses
  %i.i = getelementptr i8, ptr %0, i64 148        ; 8 uses
  %i.j = getelementptr i8, ptr %0, i64 144        ; 12 uses
  %i.k = getelementptr i8, ptr %0, i64 152        ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %more_char.exit, %io_read_encoding.exit
  %i.l = load i32, ptr %i.i, align 4, !tbaa !45   ; 2 uses
  %.not94 = icmp eq i32 %i.l, 0
  br i1 %.not94, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.n = load i32, ptr %i.j, align 8, !tbaa !88
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o     ; 2 uses
  %i.q = sext i32 %i.l to i64
  %i.r = getelementptr i8, ptr %i.p, i64 %i.q
  %i.s = tail call i32 @rb_enc_precise_mbclen(ptr noundef %i.p, ptr noundef %i.r, ptr noundef %.0.i) #28 ; 7 uses
  %i.t = icmp slt i32 %i.s, -1
  br i1 %i.t, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.i, align 4, !tbaa !45
  %i.v = load i32, ptr %i.k, align 8, !tbaa !95
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.278) #30
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.y = tail call fastcc i64 @fill_cbuf(ptr noundef nonnull %0, i32 noundef 262144) ; 3 uses
  %i.z = and i64 %i.y, -17
  %or.cond.not.i = icmp eq i64 %i.z, 4
  br i1 %or.cond.not.i, label %more_char.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @rb_exc_raise(i64 noundef %i.y) #30
  unreachable

more_char.exit:                                   ; preds = %bb.i
  %i.aa = icmp eq i64 %i.y, 4
  br i1 %i.aa, label %bb.k, label %bb.e

bb.k:                                             ; preds = %more_char.exit
  %i.ab = load i32, ptr %i.i, align 4, !tbaa !45
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !48 ; 2 uses
  %.not.i99 = icmp eq ptr %i.ae, null
  br i1 %.not.i99, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @rb_econv_close(ptr noundef nonnull %i.ae) #28
  store ptr null, ptr %i.ad, align 8, !tbaa !48
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !49  ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %clear_readconv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @ruby_xfree(ptr noundef nonnull %i.af) #28
  store ptr null, ptr %i.h, align 8, !tbaa !49
  br label %clear_readconv.exit

bb.p:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.ah = load i32, ptr %i.j, align 8, !tbaa !88
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %i.ag, i64 %i.ai
  %i.ak = tail call i64 @rb_enc_str_new(ptr noundef %i.aj, i64 noundef 1, ptr noundef %.0.i) #28 ; 2 uses
  %i.al = load <2 x i32>, ptr %i.j, align 8, !tbaa !7
  %i.am = add <2 x i32> %i.al, <i32 1, i32 -1>    ; 2 uses
  store <2 x i32> %i.am, ptr %i.j, align 8, !tbaa !7
  %i.an = extractelement <2 x i32> %i.am, i64 1
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.q, label %clear_readconv.exit102

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr i8, ptr %0, i64 128       ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48 ; 2 uses
  %.not.i100 = icmp eq ptr %i.aq, null
  br i1 %.not.i100, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @rb_econv_close(ptr noundef nonnull %i.aq) #28
  store ptr null, ptr %i.ap, align 8, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !49  ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i101, label %clear_readconv.exit102, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @ruby_xfree(ptr noundef nonnull %i.ar) #28
  store ptr null, ptr %i.h, align 8, !tbaa !49
  br label %clear_readconv.exit102

clear_readconv.exit102:                           ; preds = %bb.t, %bb.s, %bb.p
  %i.as = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !16
  %i.au = or i64 %i.at, 3145728
  store i64 %i.au, ptr %i.as, align 8, !tbaa !16
  br label %clear_readconv.exit

bb.u:                                             ; preds = %bb.f
  %i.av = icmp eq i32 %i.s, -1
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.ax = load i32, ptr %i.j, align 8, !tbaa !88
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr i8, ptr %i.aw, i64 %i.ay  ; 3 uses
  br i1 %i.av, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ba = load i32, ptr %i.i, align 4, !tbaa !45
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr i8, ptr %i.az, i64 %i.bb
  %i.bd = tail call i32 @rb_enc_mbclen(ptr noundef %i.az, ptr noundef %i.bc, ptr noundef %.0.i) #28 ; 4 uses
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.bf = load i32, ptr %i.j, align 8, !tbaa !88
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr i8, ptr %i.be, i64 %i.bg
  %i.bi = sext i32 %i.bd to i64
  %i.bj = tail call i64 @rb_str_new(ptr noundef %i.bh, i64 noundef %i.bi) #28 ; 3 uses
  %i.bk = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.bl = tail call i64 @rb_enc_associate(i64 noundef %i.bj, ptr noundef %i.bk) #28 ; 0 uses
  %i.bm = load i32, ptr %i.j, align 8, !tbaa !88
  %i.bn = add i32 %i.bm, %i.bd                    ; 3 uses
  store i32 %i.bn, ptr %i.j, align 8, !tbaa !88
  %i.bo = load i32, ptr %i.i, align 4, !tbaa !45  ; 2 uses
  %i.bp = sub i32 %i.bo, %i.bd                    ; 2 uses
  store i32 %i.bp, ptr %i.i, align 4, !tbaa !45
  %i.bq = icmp eq i32 %i.bo, %i.bd
  br i1 %i.bq, label %.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.br = load i32, ptr %i.k, align 8, !tbaa !95
  %i.bs = sdiv i32 %i.br, 2
  %i.bt = icmp slt i32 %i.bs, %i.bn
  br i1 %i.bt, label %bb.x, label %io_shift_cbuf.exit

bb.x:                                             ; preds = %bb.w
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !87  ; 2 uses
  %i.bv = sext i32 %i.bn to i64
  %i.bw = getelementptr i8, ptr %i.bu, i64 %i.bv
  %i.bx = sext i32 %i.bp to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bu, ptr noundef nonnull align 1 %i.bw, i64 noundef %i.bx, i1 noundef false) #28
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %bb.v
  store i32 0, ptr %i.j, align 8, !tbaa !88
  br label %io_shift_cbuf.exit

bb.y:                                             ; preds = %bb.u
  %i.by = zext nneg i32 %i.s to i64
  %i.bz = tail call i64 @rb_str_new(ptr noundef %i.az, i64 noundef %i.by) #28 ; 6 uses
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.cb = tail call i64 @rb_enc_associate(i64 noundef %i.bz, ptr noundef %i.ca) #28 ; 0 uses
  %i.cc = load i32, ptr %i.j, align 8, !tbaa !88
  %i.cd = add i32 %i.cc, %i.s                     ; 3 uses
  store i32 %i.cd, ptr %i.j, align 8, !tbaa !88
  %i.ce = load i32, ptr %i.i, align 4, !tbaa !45  ; 2 uses
  %i.cf = sub i32 %i.ce, %i.s                     ; 2 uses
  store i32 %i.cf, ptr %i.i, align 4, !tbaa !45
  %i.cg = icmp eq i32 %i.ce, %i.s
  br i1 %i.cg, label %.sink.split.i107, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = load i32, ptr %i.k, align 8, !tbaa !95
  %i.ci = sdiv i32 %i.ch, 2
  %i.cj = icmp slt i32 %i.ci, %i.cd
  br i1 %i.cj, label %bb.aa, label %io_shift_cbuf.exit108

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %i.h, align 8, !tbaa !87  ; 2 uses
  %i.cl = sext i32 %i.cd to i64
  %i.cm = getelementptr i8, ptr %i.ck, i64 %i.cl
  %i.cn = sext i32 %i.cf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ck, ptr noundef nonnull align 1 %i.cm, i64 noundef %i.cn, i1 noundef false) #28
  br label %.sink.split.i107

.sink.split.i107:                                 ; preds = %bb.aa, %bb.y
  store i32 0, ptr %i.j, align 8, !tbaa !88
  br label %io_shift_cbuf.exit108

io_shift_cbuf.exit108:                            ; preds = %bb.z, %.sink.split.i107
  %i.co = icmp eq i32 %i.s, 1
  br i1 %i.co, label %bb.ab, label %io_shift_cbuf.exit

bb.ab:                                            ; preds = %io_shift_cbuf.exit108
  %i.cp = getelementptr i8, ptr %.0.i, i64 20
  %.val.i = load i32, ptr %i.cp, align 4, !tbaa !84
  %.not.i109 = icmp eq i32 %.val.i, 1
  br i1 %.not.i109, label %rb_enc_asciicompat.exit, label %io_shift_cbuf.exit

rb_enc_asciicompat.exit:                          ; preds = %bb.ab
  %i.cq = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %.0.i) #33
  %.not3.i = icmp eq i32 %i.cq, 0
  br i1 %.not3.i, label %bb.ac, label %io_shift_cbuf.exit

bb.ac:                                            ; preds = %rb_enc_asciicompat.exit
  %i.cr = inttoptr i64 %i.bz to ptr               ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !16
  %i.ct = and i64 %i.cs, 8192
  %.not.i111 = icmp eq i64 %i.ct, 0
  %i.cu = getelementptr i8, ptr %i.cr, i64 24     ; 2 uses
  br i1 %.not.i111, label %RSTRING_PTR.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.ac, %bb.ad
  %i.cw = phi ptr [ %i.cv, %bb.ad ], [ %i.cu, %bb.ac ]
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !86
  %i.cy = icmp slt i8 %i.cx, 0
  %i.cz = select i1 %i.cy, i64 2097152, i64 1048576
  br label %io_shift_cbuf.exit

io_shift_cbuf.exit:                               ; preds = %bb.ab, %.sink.split.i, %bb.w, %RSTRING_PTR.exit, %io_shift_cbuf.exit108, %rb_enc_asciicompat.exit
  %.0 = phi i64 [ %i.bz, %io_shift_cbuf.exit108 ], [ %i.bz, %RSTRING_PTR.exit ], [ %i.bz, %rb_enc_asciicompat.exit ], [ %i.bj, %bb.w ], [ %i.bj, %.sink.split.i ], [ %i.bz, %bb.ab ] ; 3 uses
  %.083 = phi i64 [ 2097152, %io_shift_cbuf.exit108 ], [ %i.cz, %RSTRING_PTR.exit ], [ 2097152, %rb_enc_asciicompat.exit ], [ 3145728, %bb.w ], [ 3145728, %.sink.split.i ], [ 2097152, %bb.ab ]
  %.val98 = load ptr, ptr %i.f, align 8, !tbaa !83 ; 2 uses
  %.not.i.i112 = icmp eq ptr %.val98, null
  br i1 %.not.i.i112, label %bb.ae, label %io_enc_str.exit

bb.ae:                                            ; preds = %io_shift_cbuf.exit
  %i.da = tail call ptr @rb_default_external_encoding() #28
  br label %io_enc_str.exit

io_enc_str.exit:                                  ; preds = %io_shift_cbuf.exit, %bb.ae
  %.0.i.i = phi ptr [ %i.da, %bb.ae ], [ %.val98, %io_shift_cbuf.exit ]
  %i.db = tail call i64 @rb_enc_associate(i64 noundef %.0, ptr noundef %.0.i.i) #28 ; 0 uses
  %i.dc = inttoptr i64 %.0 to ptr                 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !16
  %i.de = and i64 %i.dd, -3145729
  %i.df = or disjoint i64 %i.de, %.083
  store i64 %i.df, ptr %i.dc, align 8, !tbaa !16
  br label %clear_readconv.exit

bb.af:                                            ; preds = %bb.b
  %i.dg = tail call fastcc i32 @io_fillbuf(ptr noundef nonnull %0)
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %clear_readconv.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr i8, ptr %1, i64 20
  %.val.i113 = load i32, ptr %i.di, align 4, !tbaa !84
  %.not.i114 = icmp eq i32 %.val.i113, 1
  br i1 %.not.i114, label %rb_enc_asciicompat.exit117, label %rb_enc_asciicompat.exit117.thread

rb_enc_asciicompat.exit117:                       ; preds = %bb.ag
  %i.dj = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %1) #33
  %.not3.i116 = icmp eq i32 %i.dj, 0
  br i1 %.not3.i116, label %bb.ah, label %rb_enc_asciicompat.exit117.thread

bb.ah:                                            ; preds = %rb_enc_asciicompat.exit117
  %i.dk = getelementptr i8, ptr %0, i64 68
  %i.dl = load ptr, ptr %i.dk, align 4, !tbaa !71
  %i.dm = getelementptr i8, ptr %0, i64 76        ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !47
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr i8, ptr %i.dl, i64 %i.do  ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !86
  %i.dr = icmp slt i8 %i.dq, 0
  br i1 %i.dr, label %rb_enc_asciicompat.exit117.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ds = tail call i64 @rb_str_new(ptr noundef nonnull %i.dp, i64 noundef 1) #28
  %i.dt = load <2 x i32>, ptr %i.dm, align 4, !tbaa !7
  %i.du = add <2 x i32> %i.dt, <i32 1, i32 -1>
  store <2 x i32> %i.du, ptr %i.dm, align 4, !tbaa !7
  br label %.loopexit

rb_enc_asciicompat.exit117.thread:                ; preds = %bb.ag, %bb.ah, %rb_enc_asciicompat.exit117
  %i.dv = getelementptr i8, ptr %0, i64 68        ; 5 uses
  %i.dw = load ptr, ptr %i.dv, align 4, !tbaa !71
  %i.dx = getelementptr i8, ptr %0, i64 76        ; 11 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !47
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr i8, ptr %i.dw, i64 %i.dz  ; 2 uses
  %i.eb = getelementptr i8, ptr %0, i64 80        ; 6 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !46
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr i8, ptr %i.ea, i64 %i.ed
  %i.ef = tail call i32 @rb_enc_precise_mbclen(ptr noundef %i.ea, ptr noundef %i.ee, ptr noundef nonnull %1) #28 ; 6 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %rb_enc_asciicompat.exit117.thread
  %i.eh = load i32, ptr %i.eb, align 8, !tbaa !46
  %.not91 = icmp sgt i32 %i.ef, %i.eh
  br i1 %.not91, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load ptr, ptr %i.dv, align 4, !tbaa !71
  %i.ej = load i32, ptr %i.dx, align 4, !tbaa !47
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr i8, ptr %i.ei, i64 %i.ek
  %i.em = zext nneg i32 %i.ef to i64
  %i.en = tail call i64 @rb_str_new(ptr noundef %i.el, i64 noundef %i.em) #28
  %i.eo = load i32, ptr %i.dx, align 4, !tbaa !47
  %i.ep = add i32 %i.eo, %i.ef
  store i32 %i.ep, ptr %i.dx, align 4, !tbaa !47
  %i.eq = load i32, ptr %i.eb, align 8, !tbaa !46
  %i.er = sub i32 %i.eq, %i.ef
  store i32 %i.er, ptr %i.eb, align 8, !tbaa !46
  br label %.loopexit

bb.al:                                            ; preds = %rb_enc_asciicompat.exit117.thread
  %i.es = icmp slt i32 %i.ef, -1
  br i1 %i.es, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.et = load ptr, ptr %i.dv, align 4, !tbaa !71
  %i.eu = load i32, ptr %i.dx, align 4, !tbaa !47
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr i8, ptr %i.et, i64 %i.ev
  %i.ex = load i32, ptr %i.eb, align 8, !tbaa !46
  %i.ey = sext i32 %i.ex to i64
  %i.ez = tail call i64 @rb_str_new(ptr noundef %i.ew, i64 noundef %i.ey) #28 ; 4 uses
  store i32 0, ptr %i.eb, align 8, !tbaa !46
  %i.fa = inttoptr i64 %i.ez to ptr               ; 3 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 24     ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fa, i64 16
  br label %bb.an

bb.an:                                            ; preds = %RSTRING_PTR.exit121, %bb.am
  %i.fd = tail call fastcc i32 @io_fillbuf(ptr noundef nonnull %0)
  %.not92 = icmp eq i32 %i.fd, -1
  br i1 %.not92, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fe = load ptr, ptr %i.dv, align 4, !tbaa !71
  %i.ff = load i32, ptr %i.dx, align 4, !tbaa !47
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr i8, ptr %i.fe, i64 %i.fg
  %i.fi = tail call i64 @rb_str_cat(i64 noundef %i.ez, ptr noundef %i.fh, i64 noundef 1) #28 ; 0 uses
  %i.fj = load <2 x i32>, ptr %i.dx, align 4, !tbaa !7
  %i.fk = add <2 x i32> %i.fj, <i32 1, i32 -1>
  store <2 x i32> %i.fk, ptr %i.dx, align 4, !tbaa !7
  %i.fl = load i64, ptr %i.fa, align 8, !tbaa !16
  %i.fm = and i64 %i.fl, 8192
  %.not.i118 = icmp eq i64 %i.fm, 0
  br i1 %.not.i118, label %RSTRING_PTR.exit121, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fn = load ptr, ptr %i.fb, align 8, !tbaa !86
  br label %RSTRING_PTR.exit121

RSTRING_PTR.exit121:                              ; preds = %bb.ao, %bb.ap
  %i.fo = phi ptr [ %i.fn, %bb.ap ], [ %i.fb, %bb.ao ] ; 2 uses
  %i.fp = load i64, ptr %i.fc, align 8, !tbaa !81
  %i.fq = getelementptr i8, ptr %i.fo, i64 %i.fp
  %i.fr = tail call i32 @rb_enc_precise_mbclen(ptr noundef %i.fo, ptr noundef %i.fq, ptr noundef nonnull %1) #28 ; 2 uses
  %i.fs = icmp slt i32 %i.fr, -1
  br i1 %i.fs, label %bb.an, label %bb.aq

bb.aq:                                            ; preds = %RSTRING_PTR.exit121
  %i.ft = icmp sgt i32 %i.fr, 0
  %spec.select96 = select i1 %i.ft, i64 2097152, i64 3145728
  br label %.loopexit

.thread:                                          ; preds = %bb.aj, %bb.al
  %i.fu = load ptr, ptr %i.dv, align 4, !tbaa !71
  %i.fv = load i32, ptr %i.dx, align 4, !tbaa !47
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr i8, ptr %i.fu, i64 %i.fw
  %i.fy = tail call i64 @rb_str_new(ptr noundef %i.fx, i64 noundef 1) #28
  %i.fz = load <2 x i32>, ptr %i.dx, align 4, !tbaa !7
  %i.ga = add <2 x i32> %i.fz, <i32 1, i32 -1>
  store <2 x i32> %i.ga, ptr %i.dx, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.an, %bb.aq, %bb.ak, %.thread, %bb.ai
  %.1137 = phi i64 [ %i.ds, %bb.ai ], [ %i.ez, %bb.aq ], [ %i.fy, %.thread ], [ %i.en, %bb.ak ], [ %i.ez, %bb.an ] ; 3 uses
  %.not93 = phi i64 [ 1048576, %bb.ai ], [ %spec.select96, %bb.aq ], [ 3145728, %.thread ], [ 2097152, %bb.ak ], [ 3145728, %bb.an ]
  %i.gb = getelementptr i8, ptr %0, i64 96
  %.val97 = load ptr, ptr %i.gb, align 8, !tbaa !83 ; 2 uses
  %.not.i.i122 = icmp eq ptr %.val97, null
  br i1 %.not.i.i122, label %bb.ar, label %io_enc_str.exit124

bb.ar:                                            ; preds = %.loopexit
  %i.gc = tail call ptr @rb_default_external_encoding() #28
  br label %io_enc_str.exit124

io_enc_str.exit124:                               ; preds = %.loopexit, %bb.ar
  %.0.i.i123 = phi ptr [ %i.gc, %bb.ar ], [ %.val97, %.loopexit ]
  %i.gd = tail call i64 @rb_enc_associate(i64 noundef %.1137, ptr noundef %.0.i.i123) #28 ; 0 uses
  %i.ge = inttoptr i64 %.1137 to ptr              ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !16
  %i.gg = and i64 %i.gf, -3145729
  %i.gh = or disjoint i64 %i.gg, %.not93
  store i64 %i.gh, ptr %i.ge, align 8, !tbaa !16
  br label %clear_readconv.exit

clear_readconv.exit:                              ; preds = %bb.o, %bb.n, %bb.af, %clear_readconv.exit102, %io_enc_str.exit, %io_enc_str.exit124
  %.1 = phi i64 [ %.1137, %io_enc_str.exit124 ], [ %.0, %io_enc_str.exit ], [ 4, %bb.af ], [ %i.ak, %clear_readconv.exit102 ], [ 4, %bb.n ], [ 4, %bb.o ]
  ret i64 %.1
}

declare i64 @rb_enc_str_new(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @rb_enc_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @io_read_memory_call(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 7 uses
  %i.b = tail call i64 @rb_fiber_scheduler_current() #28 ; 2 uses
  %.not = icmp eq i64 %i.b, 4
  br i1 %.not, label %rb_fiber_scheduler_io_result_apply.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !236
  %i.e = load i64, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !239
  %i.h = getelementptr i8, ptr %i.a, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !240
  %i.j = tail call i64 @rb_fiber_scheduler_io_read_memory(i64 noundef %i.b, i64 noundef %i.e, ptr noundef %i.g, i64 noundef %i.i, i64 noundef 0) #28 ; 6 uses
  %i.k = icmp eq i64 %i.j, 36
  br i1 %i.k, label %rb_fiber_scheduler_io_result_apply.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i64 %i.j to i1
  br i1 %i.l, label %rb_num2int_inline.exit.i, label %bb.e

rb_num2int_inline.exit.i:                         ; preds = %bb.c
  %i.m = tail call i64 @rb_fix2int(i64 noundef %i.j) #28
  %i.n = and i64 %i.m, 2147483648
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.d, label %rb_num2int_inline.exit6.i

rb_num2int_inline.exit6.i:                        ; preds = %rb_num2int_inline.exit.i
  %i.o = tail call i64 @rb_fix2int(i64 noundef %i.j) #28
  %i.p = trunc i64 %i.o to i32
  %i.q = sub i32 0, %i.p
  %i.r = tail call ptr @rb_errno_ptr() #28
  store i32 %i.q, ptr %i.r, align 4, !tbaa !7
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

bb.d:                                             ; preds = %rb_num2int_inline.exit.i
  %i.s = ashr i64 %i.j, 1
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.t = tail call i64 @rb_num2ull(i64 noundef %i.j) #28
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

rb_fiber_scheduler_io_result_apply.exit:          ; preds = %bb.b, %bb.a
  %i.u = getelementptr i8, ptr %i.a, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !237
  %.not16 = icmp eq i32 %i.v, 0
  %i.w = getelementptr i8, ptr %i.a, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !236  ; 2 uses
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_fiber_scheduler_io_result_apply.exit
  %i.y = tail call i64 @rb_thread_io_blocking_call(ptr noundef %i.x, ptr noundef nonnull @internal_read_func, ptr noundef nonnull %i.a, i32 noundef 0) #28
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

bb.g:                                             ; preds = %rb_fiber_scheduler_io_result_apply.exit
  %i.z = tail call i64 @rb_thread_io_blocking_call(ptr noundef %i.x, ptr noundef nonnull @internal_read_func, ptr noundef nonnull %i.a, i32 noundef 1) #28
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

rb_fiber_scheduler_io_result_apply.exit.thread:   ; preds = %rb_num2int_inline.exit6.i, %bb.d, %bb.e, %bb.g, %bb.f
  %.1 = phi i64 [ %i.y, %bb.f ], [ %i.z, %bb.g ], [ %i.t, %bb.e ], [ %i.s, %bb.d ], [ -1, %rb_num2int_inline.exit6.i ]
  ret i64 %.1
}

declare i64 @rb_str_locktmp(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @pread_internal_call(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 6 uses
  %i.b = tail call i64 @rb_fiber_scheduler_current() #28 ; 2 uses
  %.not = icmp eq i64 %i.b, 4
  br i1 %.not, label %rb_fiber_scheduler_io_result_apply.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !246
  %i.d = load i64, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr i8, ptr %i.a, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !244
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !245
  %i.i = getelementptr i8, ptr %i.a, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !242
  %i.k = tail call i64 @rb_fiber_scheduler_io_pread_memory(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, ptr noundef %i.h, i64 noundef %i.j, i64 noundef 0) #28 ; 6 uses
  %i.l = icmp eq i64 %i.k, 36
  br i1 %i.l, label %rb_fiber_scheduler_io_result_apply.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = trunc i64 %i.k to i1
  br i1 %i.m, label %rb_num2int_inline.exit.i, label %bb.e

rb_num2int_inline.exit.i:                         ; preds = %bb.c
  %i.n = tail call i64 @rb_fix2int(i64 noundef %i.k) #28
  %i.o = and i64 %i.n, 2147483648
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.d, label %rb_num2int_inline.exit6.i

rb_num2int_inline.exit6.i:                        ; preds = %rb_num2int_inline.exit.i
  %i.p = tail call i64 @rb_fix2int(i64 noundef %i.k) #28
  %i.q = trunc i64 %i.p to i32
  %i.r = sub i32 0, %i.q
  %i.s = tail call ptr @rb_errno_ptr() #28
  store i32 %i.r, ptr %i.s, align 4, !tbaa !7
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

bb.d:                                             ; preds = %rb_num2int_inline.exit.i
  %i.t = ashr i64 %i.k, 1
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.u = tail call i64 @rb_num2ull(i64 noundef %i.k) #28
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

rb_fiber_scheduler_io_result_apply.exit:          ; preds = %bb.b, %bb.a
end_hunk_21
begin_hunk_22_@fsync

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2147483648, 2147483648) i64 @nogvl_fdatasync(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !20
  %i.c = tail call i32 @fdatasync(i32 noundef %i.b) #28
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

declare i32 @fdatasync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @io_getpartial(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i32 noundef range(i32 0, 5) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 18 uses
  %5 = alloca %struct.io_internal_read_struct, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !13     ; 3 uses
  %.not80 = icmp eq i32 %0, 1
  br i1 %.not80, label %rb_scan_args_set.exit.critedge, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = icmp eq i32 %0, 2
  store i64 %i.e, ptr %i.a, align 8, !tbaa !13
  br i1 %i.f, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit.critedge:                   ; preds = %.preheader
  store i64 4, ptr %i.a, align 8, !tbaa !13
  br label %rb_scan_args_set.exit

rb_scan_args_set.exit:                            ; preds = %rb_scan_args_set.exit.critedge, %bb.b
  %i.g = trunc i64 %i.c to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.h = ashr i64 %i.c, 1
  br label %rb_num2long_inline.exit

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.i = tail call i64 @rb_num2long(i64 noundef %i.c) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 11 uses
  %i.j = icmp slt i64 %.0.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_num2long_inline.exit
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.284, i64 noundef %.0.i) #30
  unreachable

bb.g:                                             ; preds = %rb_num2long_inline.exit
  %i.l = load i64, ptr %i.a, align 8, !tbaa !13
  %.not67.not = icmp eq i64 %i.l, 4               ; 3 uses
  br i1 %.not67.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i) #28, !callees !232, !inline_history !233
  store i64 %i.m, ptr %i.a, align 8, !tbaa !13
  br label %io_setstrbuf.exit

bb.i:                                             ; preds = %bb.g
  %i.n = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 2 uses
  call void @rb_str_modify(i64 noundef %i.n) #28
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  %.not.not.i = icmp slt i64 %i.q, %.0.i
  %i.r = sub i64 %.0.i, %i.q                      ; 2 uses
  br i1 %.not.not.i, label %bb.j, label %io_setstrbuf.exit

bb.j:                                             ; preds = %bb.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.t = call i64 @rb_str_capacity(i64 noundef %i.s) #33
  %i.u = inttoptr i64 %i.s to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !81
  %i.x = sub i64 %i.t, %i.w
  %i.y = icmp ult i64 %i.x, %i.r
  br i1 %i.y, label %bb.k, label %io_setstrbuf.exit

bb.k:                                             ; preds = %bb.j
  call void @rb_str_modify_expand(i64 noundef %i.s, i64 noundef %i.r) #28
  br label %io_setstrbuf.exit

io_setstrbuf.exit:                                ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.z = icmp ne i64 %2, 0
  %i.aa = and i64 %2, 7
  %i.ab = icmp eq i64 %i.aa, 0
  %.not3.i.i.i = and i1 %i.z, %i.ab
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %io_setstrbuf.exit
  %i.ac = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !16 ; 3 uses
  %i.ae = and i64 %i.ad, 2048
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %io_setstrbuf.exit
  call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.af = and i64 %i.ad, 31
  %i.ag = icmp ne i64 %i.af, 5
  %i.ah = and i64 %i.ad, 49152
  %.not8.i.i = icmp eq i64 %i.ah, 0
  %or.cond.i.i = or i1 %i.ag, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.l, !prof !19

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.l
  %i.ai = getelementptr i8, ptr %i.ac, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34 ; 12 uses
  %.not.i.i44 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i44, label %bb.m, label %rb_io_check_initialized.exit.i

bb.m:                                             ; preds = %rb_io_taint_check.exit
  %i.ak = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ak, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.al = getelementptr i8, ptr %i.aj, i64 16     ; 5 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !20
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.n, label %rb_io_check_closed.exit

bb.n:                                             ; preds = %rb_io_check_initialized.exit.i
  call void @rb_thread_check_ints() #28
  %i.ao = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ao, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  call void @rb_io_check_char_readable(ptr noundef nonnull %i.aj)
  %i.ap = getelementptr i8, ptr %i.aj, i64 148
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !45
  %.not.i45 = icmp eq i32 %i.aq, 0
  br i1 %.not.i45, label %rb_io_check_byte_readable.exit, label %bb.o

bb.o:                                             ; preds = %rb_io_check_closed.exit
  %i.ar = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ar, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_byte_readable.exit:                   ; preds = %rb_io_check_closed.exit
  %i.as = icmp eq i64 %.0.i, 0
  br i1 %i.as, label %bb.p, label %bb.t

bb.p:                                             ; preds = %rb_io_check_byte_readable.exit
  %i.at = load i64, ptr %i.a, align 8, !tbaa !13  ; 5 uses
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !81
  %.not.i46 = icmp eq i64 %i.aw, 0
  br i1 %.not.i46, label %io_set_read_length.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @rb_str_modify(i64 noundef %i.at) #28
  call void @rb_str_set_len(i64 noundef %i.at, i64 noundef 0) #28
  br i1 %.not67.not, label %bb.r, label %io_set_read_length.exit

bb.r:                                             ; preds = %bb.q
  %i.ax = call i64 @rb_str_capacity(i64 noundef %i.at) #33
  %i.ay = icmp ugt i64 %i.ax, 4096
  br i1 %i.ay, label %bb.s, label %io_set_read_length.exit

bb.s:                                             ; preds = %bb.r
  %i.az = call i64 @rb_str_resize(i64 noundef %i.at, i64 noundef 0) #28 ; 0 uses
  br label %io_set_read_length.exit

io_set_read_length.exit:                          ; preds = %bb.p, %bb.q, %bb.r, %bb.s
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.am

bb.t:                                             ; preds = %rb_io_check_byte_readable.exit
  %.not = icmp eq i32 %4, 0                       ; 3 uses
  br i1 %.not, label %bb.u, label %rb_io_check_closed.exit49

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr i8, ptr %i.aj, i64 80
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !46
  %.not40 = icmp eq i32 %i.bc, 0
  br i1 %.not40, label %rb_io_check_initialized.exit.i48, label %rb_io_check_closed.exit49

rb_io_check_initialized.exit.i48:                 ; preds = %bb.u
  %i.bd = load i32, ptr %i.al, align 8, !tbaa !20
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.v, label %rb_io_check_closed.exit49

bb.v:                                             ; preds = %rb_io_check_initialized.exit.i48
  call void @rb_thread_check_ints() #28
  %i.bf = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bf, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit49:                        ; preds = %rb_io_check_initialized.exit.i48, %bb.u, %bb.t
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !16
  %i.bj = and i64 %i.bi, 8192
  %.not.i50 = icmp eq i64 %i.bj, 0
  %i.bk = getelementptr i8, ptr %i.bh, i64 24     ; 2 uses
  br i1 %.not.i50, label %RSTRING_PTR.exit, label %bb.w

bb.w:                                             ; preds = %rb_io_check_closed.exit49
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_io_check_closed.exit49, %bb.w
  %i.bm = phi ptr [ %i.bl, %bb.w ], [ %i.bk, %rb_io_check_closed.exit49 ]
  %i.bn = getelementptr i8, ptr %i.aj, i64 80     ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !46 ; 2 uses
  %i.bp = icmp slt i32 %i.bo, 1
  br i1 %i.bp, label %read_buffered_data.exit.preheader, label %read_buffered_data.exit.thread

read_buffered_data.exit.preheader:                ; preds = %RSTRING_PTR.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bw = ptrtoint ptr %5 to i64
  br label %read_buffered_data.exit

read_buffered_data.exit.thread:                   ; preds = %RSTRING_PTR.exit
  %i.bx = getelementptr i8, ptr %i.aj, i64 68
  %i.by = zext nneg i32 %i.bo to i64
  %i.bz = call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.by) ; 3 uses
  %spec.select.i51 = trunc nuw nsw i64 %i.bz to i32 ; 2 uses
  %i.ca = load ptr, ptr %i.bx, align 4, !tbaa !71
  %i.cb = getelementptr i8, ptr %i.aj, i64 76     ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !47
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr i8, ptr %i.ca, i64 %i.cd
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bm, ptr noundef nonnull align 1 %i.ce, i64 noundef %i.bz, i1 noundef false) #28
  %i.cf = load i32, ptr %i.cb, align 4, !tbaa !47
  %i.cg = add i32 %i.cf, %spec.select.i51
  store i32 %i.cg, ptr %i.cb, align 4, !tbaa !47
  %i.ch = load i32, ptr %i.bn, align 8, !tbaa !46
  %i.ci = sub i32 %i.ch, %spec.select.i51
  store i32 %i.ci, ptr %i.bn, align 8, !tbaa !46
  br label %.loopexit

read_buffered_data.exit:                          ; preds = %read_buffered_data.exit.preheader, %rb_io_check_initialized.exit.i.i
  br i1 %.not, label %rb_io_set_nonblock.exit, label %bb.x

bb.x:                                             ; preds = %read_buffered_data.exit
  %i.cj = load i32, ptr %i.al, align 8, !tbaa !20 ; 2 uses
  %i.ck = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.cj, i32 noundef 3) #28 ; 3 uses
  %i.cl = icmp eq i32 %i.ck, -1
  br i1 %i.cl, label %rb_fd_set_nonblock.exit.thread4.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = and i32 %i.ck, 2048
  %.not.i.i52 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i52, label %rb_fd_set_nonblock.exit.i, label %rb_io_set_nonblock.exit

rb_fd_set_nonblock.exit.i:                        ; preds = %bb.y
  %i.cn = or disjoint i32 %i.ck, 2048
  %i.co = call i32 (i32, i32, ...) @fcntl(i32 noundef %i.cj, i32 noundef 4, i32 noundef %i.cn) #28
  %.not.i53 = icmp eq i32 %i.co, 0
  br i1 %.not.i53, label %rb_io_set_nonblock.exit, label %rb_fd_set_nonblock.exit.thread4.i

rb_fd_set_nonblock.exit.thread4.i:                ; preds = %rb_fd_set_nonblock.exit.i, %bb.x
  %i.cp = call ptr @rb_errno_ptr() #28
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cr = getelementptr i8, ptr %i.aj, i64 32
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_io_set_nonblock, i32 noundef %i.cq, i64 noundef %i.cs) #30
  unreachable

rb_io_set_nonblock.exit:                          ; preds = %rb_fd_set_nonblock.exit.i, %bb.y, %read_buffered_data.exit
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !13
  %i.cu = icmp eq i64 %i.ct, 4
  br i1 %i.cu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %rb_io_set_nonblock.exit
  %i.cv = call i64 @rb_str_new(ptr noundef null, i64 noundef %.0.i) #28, !callees !232, !inline_history !233
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !13
  br label %io_setstrbuf.exit56

bb.aa:                                            ; preds = %rb_io_set_nonblock.exit
  %i.cw = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 2 uses
  call void @rb_str_modify(i64 noundef %i.cw) #28
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !81 ; 2 uses
  %.not.not.i54 = icmp slt i64 %i.cz, %.0.i
  %i.da = sub i64 %.0.i, %i.cz                    ; 2 uses
  br i1 %.not.not.i54, label %bb.ab, label %io_setstrbuf.exit56

bb.ab:                                            ; preds = %bb.aa
  %i.db = load i64, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  %i.dc = call i64 @rb_str_capacity(i64 noundef %i.db) #33
  %i.dd = inttoptr i64 %i.db to ptr
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !81
  %i.dg = sub i64 %i.dc, %i.df
  %i.dh = icmp ult i64 %i.dg, %i.da
  br i1 %i.dh, label %bb.ac, label %io_setstrbuf.exit56

bb.ac:                                            ; preds = %bb.ab
  call void @rb_str_modify_expand(i64 noundef %i.db, i64 noundef %i.da) #28
  br label %io_setstrbuf.exit56

io_setstrbuf.exit56:                              ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac
  %i.di = call i64 @rb_thread_current() #28
  store i64 %i.di, ptr %5, align 8, !tbaa !234
  store ptr %i.aj, ptr %i.bq, align 8, !tbaa !236
  store i32 %4, ptr %i.br, align 8, !tbaa !237
  %i.dj = load i32, ptr %i.al, align 8, !tbaa !20
  store i32 %i.dj, ptr %i.bs, align 4, !tbaa !238
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.dl = inttoptr i64 %i.dk to ptr               ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !16
  %i.dn = and i64 %i.dm, 8192
  %.not.i57 = icmp eq i64 %i.dn, 0
  %i.do = getelementptr i8, ptr %i.dl, i64 24     ; 2 uses
  br i1 %.not.i57, label %RSTRING_PTR.exit58, label %bb.ad

bb.ad:                                            ; preds = %io_setstrbuf.exit56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !86
  br label %RSTRING_PTR.exit58

RSTRING_PTR.exit58:                               ; preds = %io_setstrbuf.exit56, %bb.ad
  %i.dq = phi ptr [ %i.dp, %bb.ad ], [ %i.do, %io_setstrbuf.exit56 ]
  store ptr %i.dq, ptr %i.bt, align 8, !tbaa !239
  store i64 %.0.i, ptr %i.bu, align 8, !tbaa !240
  store ptr null, ptr %i.bv, align 8, !tbaa !241
  %i.dr = call i64 @rb_str_locktmp_ensure(i64 noundef %i.dk, ptr noundef nonnull @io_read_memory_call, i64 noundef %i.bw) #28 ; 2 uses
  %i.ds = icmp slt i64 %i.dr, 0
  br i1 %i.ds, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %RSTRING_PTR.exit58
  %i.dt = call ptr @rb_errno_ptr() #28
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7  ; 2 uses
  br i1 %.not, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.dv = call ptr @rb_errno_ptr() #28
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7
  %i.dx = load i64, ptr %i.aj, align 8, !tbaa !42
  %i.dy = call i32 @rb_io_maybe_wait_readable(i32 noundef %i.dw, i64 noundef %i.dx, i64 noundef 4)
  %.not.i59 = icmp eq i32 %i.dy, 0
  br i1 %.not.i59, label %.loopexit68, label %rb_io_check_initialized.exit.i.i

rb_io_check_initialized.exit.i.i:                 ; preds = %bb.af
  %i.dz = load i32, ptr %i.al, align 8, !tbaa !20
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.ag, label %read_buffered_data.exit

bb.ag:                                            ; preds = %rb_io_check_initialized.exit.i.i
  call void @rb_thread_check_ints() #28
  %i.eb = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eb, ptr noundef nonnull @closed_stream) #30
  unreachable

.critedge:                                        ; preds = %bb.ae
  %i.ec = icmp eq i32 %i.du, 11
  br i1 %i.ec, label %bb.ah, label %.loopexit68

bb.ah:                                            ; preds = %.critedge
  %.not42 = icmp eq i32 %3, 0
  br i1 %.not42, label %bb.ai, label %fptr_wait_readable.exit.thread64

fptr_wait_readable.exit.thread64:                 ; preds = %bb.ah
  %i.ed = load i64, ptr @sym_wait_readable, align 8, !tbaa !13
  br label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @rb_readwrite_syserr_fail(i32 noundef 0, i32 noundef 11, ptr noundef nonnull @.str.285) #31
  unreachable

.loopexit68:                                      ; preds = %bb.af, %.critedge
  %i.ee = getelementptr i8, ptr %i.aj, i64 32
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.io_getpartial, i32 noundef %i.du, i64 noundef %i.ef) #30
  unreachable

.loopexit:                                        ; preds = %RSTRING_PTR.exit58, %read_buffered_data.exit.thread
  %.035 = phi i64 [ %i.bz, %read_buffered_data.exit.thread ], [ %i.dr, %RSTRING_PTR.exit58 ] ; 5 uses
  %i.eg = load i64, ptr %i.a, align 8, !tbaa !13  ; 5 uses
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !81
  %.not.i60 = icmp eq i64 %i.ej, %.035
  br i1 %.not.i60, label %io_set_read_length.exit62, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  call void @rb_str_modify(i64 noundef %i.eg) #28
  call void @rb_str_set_len(i64 noundef %i.eg, i64 noundef range(i64 0, -9223372036854775808) %.035) #28
  br i1 %.not67.not, label %bb.ak, label %io_set_read_length.exit62

bb.ak:                                            ; preds = %bb.aj
  %i.ek = call i64 @rb_str_capacity(i64 noundef %i.eg) #33
  %i.el = sub i64 %i.ek, %.035
  %i.em = icmp ugt i64 %i.el, 4096
  br i1 %i.em, label %bb.al, label %io_set_read_length.exit62

bb.al:                                            ; preds = %bb.ak
  %i.en = call i64 @rb_str_resize(i64 noundef %i.eg, i64 noundef range(i64 0, -9223372036854775808) %.035) #28 ; 0 uses
  br label %io_set_read_length.exit62

io_set_read_length.exit62:                        ; preds = %.loopexit, %bb.aj, %bb.ak, %bb.al
  %i.eo = icmp eq i64 %.035, 0
  %i.ep = load i64, ptr %i.a, align 8
  %spec.select = select i1 %i.eo, i64 4, i64 %i.ep
  br label %bb.am

bb.am:                                            ; preds = %fptr_wait_readable.exit.thread64, %io_set_read_length.exit62, %io_set_read_length.exit
  %.2 = phi i64 [ %i.ba, %io_set_read_length.exit ], [ %i.ed, %fptr_wait_readable.exit.thread64 ], [ %spec.select, %io_set_read_length.exit62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.2
}

; Function Attrs: nounwind
declare i32 @shutdown(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2147483648, 2147483648) i64 @io_advise_internal(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !254
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !257
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !258
  %i.f = getelementptr i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256
  %i.h = tail call i32 @posix_fadvise(i32 noundef %i.a, i64 noundef %i.c, i64 noundef %i.e, i32 noundef %i.g) #28
  %i.i = sext i32 %i.h to i64
  ret i64 %i.i
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @setup_narg(i64 noundef %0, ptr noundef nonnull captures(none) %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !13     ; 6 uses
end_hunk_22
