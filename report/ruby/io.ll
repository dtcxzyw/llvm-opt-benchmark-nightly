Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/io?download=true
inline.NumInlined: 1500
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@io_readline:bb.a
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
  %i.i = load i64, ptr @rb_rs, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %rb_num2long_inline.exit
  %.0 = phi i64 [ -1, %bb.b ], [ %.0.i, %rb_num2long_inline.exit ], [ -1, %bb.c ]
  %storemerge = phi i64 [ 4, %bb.b ], [ %i.i, %rb_num2long_inline.exit ], [ %i.d, %bb.c ]
  store i64 %storemerge, ptr %i.a, align 8, !tbaa !19
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
  %i.n = load i64, ptr %i.a, align 8, !tbaa !19
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
  %i.c = load i64, ptr %i.a, align 8, !tbaa !47
  %i.d = getelementptr i8, ptr %i.a, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = getelementptr i8, ptr %i.a, i64 56       ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !69
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr i8, ptr %i.a, i64 60       ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = sext i32 %i.k to i64
  %i.m = tail call i64 @rb_fiber_scheduler_io_write_memory(i64 noundef range(i64 5, 4) %i.b, i64 noundef %i.c, ptr noundef %i.i, i64 noundef %i.l, i64 noundef 0) #28 ; 6 uses
  %i.n = icmp eq i64 %i.m, 36
  br i1 %i.n, label %io_flush_buffer_fiber_scheduler.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = trunc i64 %i.m to i1
  br i1 %i.o, label %rb_num2int_inline.exit.i.i, label %bb.e

rb_num2int_inline.exit.i.i:                       ; preds = %bb.c
  %i.p = tail call i64 @rb_fix2int(i64 noundef %i.m) #28
  %i.q = and i64 %i.p, 2147483648
  %.not.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %io_flush_buffer_fiber_scheduler.exit.thread12

io_flush_buffer_fiber_scheduler.exit.thread12:    ; preds = %rb_num2int_inline.exit.i.i
  %i.r = tail call i64 @rb_fix2int(i64 noundef %i.m) #28
  %i.s = trunc i64 %i.r to i32
  %i.t = sub i32 0, %i.s
  %i.u = tail call ptr @rb_errno_ptr() #28
  store i32 %i.t, ptr %i.u, align 4, !tbaa !16
  br label %bb.g

bb.d:                                             ; preds = %rb_num2int_inline.exit.i.i
  %i.v = ashr i64 %i.m, 1
  br label %rb_fiber_scheduler_io_result_apply.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = tail call i64 @rb_num2ull(i64 noundef %i.m) #28
  br label %rb_fiber_scheduler_io_result_apply.exit.i

rb_fiber_scheduler_io_result_apply.exit.i:        ; preds = %bb.e, %bb.d
  %.0.i.i = phi i64 [ %i.w, %bb.e ], [ %i.v, %bb.d ] ; 3 uses
  %i.x = icmp sgt i64 %.0.i.i, 0
  br i1 %i.x, label %bb.f, label %io_flush_buffer_fiber_scheduler.exit

bb.f:                                             ; preds = %rb_fiber_scheduler_io_result_apply.exit.i
  %i.y = load i32, ptr %i.f, align 8, !tbaa !69
  %i.z = trunc i64 %.0.i.i to i32                 ; 2 uses
  %i.aa = add i32 %i.y, %i.z
  store i32 %i.aa, ptr %i.f, align 8, !tbaa !69
  %i.ab = load i32, ptr %i.j, align 4, !tbaa !45
  %i.ac = sub i32 %i.ab, %i.z
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !45
  br label %io_flush_buffer_fiber_scheduler.exit

io_flush_buffer_fiber_scheduler.exit:             ; preds = %rb_fiber_scheduler_io_result_apply.exit.i, %bb.f
  %.lobit.i = ashr i64 %.0.i.i, 63
  br label %bb.g

io_flush_buffer_fiber_scheduler.exit.thread:      ; preds = %bb.b, %bb.a
  %i.ad = tail call i64 @rb_thread_io_blocking_call(ptr noundef %i.a, ptr noundef nonnull @io_flush_buffer_sync, ptr noundef %i.a, i32 noundef 4) #28
  br label %bb.g

bb.g:                                             ; preds = %io_flush_buffer_fiber_scheduler.exit, %io_flush_buffer_fiber_scheduler.exit.thread12, %io_flush_buffer_fiber_scheduler.exit.thread
  %.1 = phi i64 [ %i.ad, %io_flush_buffer_fiber_scheduler.exit.thread ], [ %.lobit.i, %io_flush_buffer_fiber_scheduler.exit ], [ -1, %io_flush_buffer_fiber_scheduler.exit.thread12 ]
  ret i64 %.1
}

declare i64 @rb_mutex_synchronize(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_fiber_scheduler_current() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -1, 1) i64 @io_flush_buffer_sync(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = getelementptr i8, ptr %0, i64 60         ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !45
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !38
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.h = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !69
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %i.g, i64 %i.j
  %i.l = tail call i64 @write(i32 noundef %i.f, ptr noundef %i.k, i64 noundef %i.d) #28 ; 3 uses
  %i.m = load i32, ptr %i.b, align 4, !tbaa !45   ; 2 uses
  %i.n = sext i32 %i.m to i64
  %.not = icmp slt i64 %i.l, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.h, align 8, !tbaa !69
  store i32 0, ptr %i.b, align 4, !tbaa !45
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = icmp sgt i64 %i.l, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = trunc nuw nsw i64 %i.l to i32            ; 2 uses
  %i.q = load i32, ptr %i.h, align 8, !tbaa !69
  %i.r = add i32 %i.q, %i.p
  store i32 %i.r, ptr %i.h, align 8, !tbaa !69
  %i.s = sub i32 %i.m, %i.p
  store i32 %i.s, ptr %i.b, align 4, !tbaa !45
  %i.t = tail call ptr @rb_errno_ptr() #28
  store i32 11, ptr %i.t, align 4, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ -1, %bb.d ], [ -1, %bb.c ]
  ret i64 %.0
}

declare i64 @rb_fiber_scheduler_io_write_memory(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2ull(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #1

declare i64 @rb_fiber_scheduler_make_timeout(ptr noundef) local_unnamed_addr #1

declare i32 @rb_thread_wait_for_single_fd(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @io_binwrite_string(i64 noundef %0) #0 {
bb.a:
  %1 = alloca [2 x %struct.iovec], align 16       ; 7 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %.not35 = icmp eq i64 %i.c, 0
  br i1 %.not35, label %rb_io_check_closed.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %rb_io_check_closed.exit.outer

rb_io_check_closed.exit.outer:                    ; preds = %bb.k, %.lr.ph
  %.01937.ph = phi i64 [ %i.ag, %bb.k ], [ %i.c, %.lr.ph ] ; 4 uses
  %.02036.ph = phi ptr [ %i.af, %bb.k ], [ %i.e, %.lr.ph ] ; 3 uses
  br label %rb_io_check_closed.exit

rb_io_check_closed.exit:                          ; preds = %rb_io_check_closed.exit.backedge, %rb_io_check_closed.exit.outer
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !72   ; 5 uses
  %i.j = getelementptr i8, ptr %i.i, i64 60       ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45   ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %rb_io_check_closed.exit
  %i.l = getelementptr i8, ptr %i.i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.n = getelementptr i8, ptr %i.i, i64 56       ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !69
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr i8, ptr %i.m, i64 %i.p
  store ptr %i.q, ptr %1, align 16, !tbaa !217
  %i.r = sext i32 %i.k to i64
  store i64 %i.r, ptr %i.f, align 8, !tbaa !218
  store ptr %.02036.ph, ptr %i.g, align 16, !tbaa !217
  store i64 %.01937.ph, ptr %i.h, align 8, !tbaa !218
  %i.s = call fastcc i64 @rb_writev_internal(ptr noundef nonnull %i.i, ptr noundef nonnull %1, i32 noundef 2) ; 5 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.j, align 4, !tbaa !45   ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %.not27.i = icmp slt i64 %i.s, %i.v
  br i1 %.not27.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = sub i64 %i.s, %i.v
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = trunc nuw nsw i64 %i.s to i32            ; 2 uses
  %i.y = load i32, ptr %i.n, align 8, !tbaa !69
  %i.z = add i32 %i.y, %i.x
  %i.aa = sub nuw i32 %i.u, %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ]
  %storemerge.i = phi i32 [ %i.aa, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi i64 [ 0, %bb.e ], [ %i.w, %bb.d ]
  store i32 %.sink.i, ptr %i.n, align 8, !tbaa !69
  store i32 %storemerge.i, ptr %i.j, align 4, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.023.i = phi i64 [ %.0.i, %bb.f ], [ %i.s, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %io_binwrite_string_internal.exit

bb.h:                                             ; preds = %rb_io_check_closed.exit
  %i.ab = call fastcc i64 @rb_io_write_memory(ptr noundef nonnull %i.i, ptr noundef %.02036.ph, i64 noundef range(i64 1, 0) %.01937.ph)
  br label %io_binwrite_string_internal.exit

io_binwrite_string_internal.exit:                 ; preds = %bb.g, %bb.h
  %.1.i = phi i64 [ %.023.i, %bb.g ], [ %i.ab, %bb.h ] ; 5 uses
  %i.ac = icmp eq i64 %.1.i, 0
  br i1 %i.ac, label %rb_io_check_closed.exit.backedge, label %bb.i

bb.i:                                             ; preds = %io_binwrite_string_internal.exit
  %i.ad = icmp sgt i64 %.1.i, 0
  br i1 %i.ad, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %.1.i, %.01937.ph
  br i1 %i.ae, label %rb_io_check_closed.exit.thread31.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %.02036.ph, i64 %.1.i
  %i.ag = sub i64 %.01937.ph, %.1.i
  br label %rb_io_check_closed.exit.outer

bb.l:                                             ; preds = %bb.i
  %i.ah = call ptr @rb_errno_ptr() #28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !16
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !47
  %i.al = call i32 @rb_io_maybe_wait_writable(i32 noundef %i.ai, i64 noundef %i.ak, i64 noundef 4)
  %.not27 = icmp eq i32 %i.al, 0
  br i1 %.not27, label %rb_io_check_closed.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !72  ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.n, label %rb_io_check_initialized.exit.i

bb.n:                                             ; preds = %bb.m
  %i.an = load i64, ptr @rb_eIOError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.an, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %bb.m
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !38
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.o, label %rb_io_check_closed.exit.backedge

rb_io_check_closed.exit.backedge:                 ; preds = %rb_io_check_initialized.exit.i, %io_binwrite_string_internal.exit
  br label %rb_io_check_closed.exit

bb.o:                                             ; preds = %rb_io_check_initialized.exit.i
  call void @rb_thread_check_ints() #28
  %i.ar = load i64, ptr @rb_eIOError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ar, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.thread31.loopexit:        ; preds = %bb.j
  %.pre = load i64, ptr %i.b, align 8, !tbaa !74
  br label %rb_io_check_closed.exit.thread

rb_io_check_closed.exit.thread:                   ; preds = %bb.l, %bb.a, %rb_io_check_closed.exit.thread31.loopexit
  %.225 = phi i64 [ 0, %bb.a ], [ %.pre, %rb_io_check_closed.exit.thread31.loopexit ], [ -1, %bb.l ]
  ret i64 %.225
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #19

declare i64 @rb_mutex_new() local_unnamed_addr #1

declare void @rb_mutex_allow_trap(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_writev_internal(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.io_internal_writev_struct, align 8 ; 11 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %rb_fiber_scheduler_io_result_apply.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !56
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !67 ; 2 uses
  %i.e = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef %.val.i) #28 ; 2 uses
  %.not22 = icmp eq i64 %i.e, 4
  br i1 %.not22, label %rb_fiber_scheduler_io_result_apply.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %0, align 8, !tbaa !47
  %i.g = load ptr, ptr %1, align 8, !tbaa !217
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !218
  %i.j = tail call i64 @rb_fiber_scheduler_io_write_memory(i64 noundef %i.e, i64 noundef %i.f, ptr noundef %i.g, i64 noundef %i.i, i64 noundef 0) #28 ; 6 uses
  %i.k = icmp eq i64 %i.j, 36
  br i1 %i.k, label %rb_fiber_scheduler_io_result_apply.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = trunc i64 %i.j to i1
  br i1 %i.l, label %rb_num2int_inline.exit.i, label %bb.f

rb_num2int_inline.exit.i:                         ; preds = %bb.d
  %i.m = tail call i64 @rb_fix2int(i64 noundef %i.j) #28
  %i.n = and i64 %i.m, 2147483648
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.e, label %rb_num2int_inline.exit6.i

rb_num2int_inline.exit6.i:                        ; preds = %rb_num2int_inline.exit.i
  %i.o = tail call i64 @rb_fix2int(i64 noundef %i.j) #28
  %i.p = trunc i64 %i.o to i32
  %i.q = sub i32 0, %i.p
  %i.r = tail call ptr @rb_errno_ptr() #28
  store i32 %i.q, ptr %i.r, align 4, !tbaa !16
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

bb.e:                                             ; preds = %rb_num2int_inline.exit.i
  %i.s = ashr i64 %i.j, 1
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.t = tail call i64 @rb_num2ull(i64 noundef %i.j) #28
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

rb_fiber_scheduler_io_result_apply.exit:          ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.u = getelementptr i8, ptr %.val.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !231
  store i64 %i.v, ptr %3, align 8, !tbaa !234
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.w, align 8, !tbaa !235
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.x, align 8, !tbaa !236
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.z = getelementptr i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !38
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !237
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %2, ptr %i.ab, align 8, !tbaa !238
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 0, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.ad, align 8, !tbaa !239
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.af = getelementptr i8, ptr %0, i64 200
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %.not23 = icmp eq i64 %i.ag, 4
  br i1 %.not23, label %bb.h, label %bb.g

bb.g:                                             ; preds = %rb_fiber_scheduler_io_result_apply.exit
  %i.ah = tail call { i64, i64 } @rb_time_interval(i64 noundef %i.ag) #28 ; 2 uses
  %i.ai = extractvalue { i64, i64 } %i.ah, 0
  %i.aj = extractvalue { i64, i64 } %i.ah, 1
  store i64 %i.ai, ptr %4, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aj, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !19
  store ptr %4, ptr %i.ae, align 8, !tbaa !240
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %rb_fiber_scheduler_io_result_apply.exit
  %i.ak = call i64 @rb_thread_io_blocking_call(ptr noundef nonnull %0, ptr noundef nonnull @internal_writev_func, ptr noundef nonnull %3, i32 noundef 4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %rb_fiber_scheduler_io_result_apply.exit.thread

rb_fiber_scheduler_io_result_apply.exit.thread:   ; preds = %rb_num2int_inline.exit6.i, %bb.e, %bb.f, %bb.h, %bb.a
  %.2 = phi i64 [ 0, %bb.a ], [ %i.ak, %bb.h ], [ %i.t, %bb.f ], [ %i.s, %bb.e ], [ -1, %rb_num2int_inline.exit6.i ]
  ret i64 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_io_write_memory(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.io_internal_write_struct, align 8 ; 10 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
end_hunk_0
begin_hunk_1_@bufread_call:bb.a
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %thread-pre-split.i, label %.loopexit56.i, !llvm.loop !362

.loopexit56.i:                                    ; preds = %rb_io_check_closed.exit53.i, %bb.i, %bb.g
  %.4.i = phi i64 [ %i.d, %bb.g ], [ %i.ba, %bb.i ], [ %.3.i, %rb_io_check_closed.exit53.i ]
  %i.bh = sub i64 %i.d, %.4.i
  br label %io_bufread.exit

io_bufread.exit:                                  ; preds = %bb.d, %bb.f, %.loopexit.i, %.loopexit56.i
  %.040.i = phi i64 [ %i.aj, %.loopexit.i ], [ %i.bh, %.loopexit56.i ], [ -1, %bb.f ], [ -1, %bb.d ]
  store i64 %.040.i, ptr %i.c, align 8, !tbaa !201
  ret i64 36
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !183  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef nonnull %0, i32 noundef %1) #28
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @fptr_finalize_flush(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1)
  %i.c = getelementptr i8, ptr %0, i64 68         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 4, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %free_io_buffer.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ruby_xfree(ptr noundef nonnull %i.d) #28
  store ptr null, ptr %i.c, align 4, !tbaa !53
  br label %free_io_buffer.exit.i

free_io_buffer.exit.i:                            ; preds = %bb.d, %bb.c
  %i.e = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %.not.i4.i = icmp eq ptr %i.f, null
  br i1 %.not.i4.i, label %free_io_buffer.exit5.i, label %bb.e

bb.e:                                             ; preds = %free_io_buffer.exit.i
  tail call void @ruby_xfree(ptr noundef nonnull %i.f) #28
  store ptr null, ptr %i.e, align 8, !tbaa !53
  br label %free_io_buffer.exit5.i

free_io_buffer.exit5.i:                           ; preds = %bb.e, %free_io_buffer.exit.i
  %i.g = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %free_io_buffer.exit5.i
  tail call void @rb_econv_close(ptr noundef nonnull %i.h) #28
  store ptr null, ptr %i.g, align 8, !tbaa !52
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %free_io_buffer.exit5.i
  %i.i = getelementptr i8, ptr %0, i64 136        ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %clear_readconv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ruby_xfree(ptr noundef nonnull %i.j) #28
  store ptr null, ptr %i.i, align 8, !tbaa !53
  br label %clear_readconv.exit.i.i

clear_readconv.exit.i.i:                          ; preds = %bb.h, %bb.g
  %i.k = getelementptr i8, ptr %0, i64 160        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i2.i.i, label %fptr_finalize.exit, label %bb.i

bb.i:                                             ; preds = %clear_readconv.exit.i.i
  tail call void @rb_econv_close(ptr noundef nonnull %i.l) #28
  store ptr null, ptr %i.k, align 8, !tbaa !54
  br label %fptr_finalize.exit

fptr_finalize.exit:                               ; preds = %clear_readconv.exit.i.i, %bb.i
  %i.m = getelementptr i8, ptr %0, i64 176
  store i32 0, ptr %i.m, align 8, !tbaa !55
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38   ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133  ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !44
  %i.h = getelementptr i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %.not77 = icmp eq ptr %i.i, null
  br i1 %.not77, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 192
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  %i.m = icmp ne i32 %1, 0
  %or.cond = or i1 %i.m, %i.l
  br i1 %or.cond, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.n = tail call fastcc i64 @finish_writeconv(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.068 = phi i64 [ %i.n, %bb.c ], [ 4, %bb.a ]   ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 60         ; 4 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %.not78 = icmp eq i32 %i.p, 0
  br i1 %.not78, label %io_flush_buffer_sync.exit, label %bb.e

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !262
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !263
  %i.r = ptrtoint ptr %2 to i64
  %i.s = call i64 @rb_mutex_synchronize(i64 noundef %i.k, ptr noundef nonnull @finish_writeconv_sync, i64 noundef %i.r) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.t = getelementptr i8, ptr %0, i64 60
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45
  %.not7889 = icmp eq i32 %i.u, 0
  br i1 %.not7889, label %io_flush_buffer_sync.exit, label %.thread91

bb.e:                                             ; preds = %bb.d
  %.not79 = icmp eq i32 %1, 0
  br i1 %.not79, label %.thread91, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %0, i64 48
  %i.w = sext i32 %i.p to i64
  %i.x = load i32, ptr %i.b, align 8, !tbaa !38
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.z = getelementptr i8, ptr %0, i64 56         ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !69
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.ab
  %i.ad = tail call i64 @write(i32 noundef %i.x, ptr noundef %i.ac, i64 noundef %i.w) #28 ; 3 uses
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !45  ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %.not.i = icmp slt i64 %i.ad, %i.af
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.z, align 8, !tbaa !69
  store i32 0, ptr %i.o, align 4, !tbaa !45
  br label %io_flush_buffer_sync.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = icmp sgt i64 %i.ad, -1
  br i1 %i.ag, label %bb.i, label %io_flush_buffer_sync.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = trunc nuw nsw i64 %i.ad to i32          ; 2 uses
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !69
  %i.aj = add i32 %i.ai, %i.ah
  store i32 %i.aj, ptr %i.z, align 8, !tbaa !69
  %i.ak = sub i32 %i.ae, %i.ah
  store i32 %i.ak, ptr %i.o, align 4, !tbaa !45
  %i.al = tail call ptr @rb_errno_ptr() #28
  store i32 11, ptr %i.al, align 4, !tbaa !16
  br label %io_flush_buffer_sync.exit

.thread91:                                        ; preds = %.thread, %bb.e
  %.0689094 = phi i64 [ %.068, %bb.e ], [ %i.s, %.thread ] ; 2 uses
  %i.am = call fastcc i32 @io_fflush(ptr noundef nonnull %0)
  %i.an = icmp slt i32 %i.am, 0
  %i.ao = icmp eq i64 %.0689094, 4
  %or.cond98 = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond98, label %bb.j, label %io_flush_buffer_sync.exit

bb.j:                                             ; preds = %.thread91
  %i.ap = call ptr @rb_errno_ptr() #28
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %io_flush_buffer_sync.exit

io_flush_buffer_sync.exit:                        ; preds = %bb.i, %bb.h, %bb.g, %.thread, %bb.j, %.thread91, %bb.d
  %.169 = phi i64 [ %i.s, %.thread ], [ %i.at, %bb.j ], [ %.068, %bb.i ], [ %.0689094, %.thread91 ], [ %.068, %bb.d ], [ %.068, %bb.g ], [ %.068, %bb.h ] ; 4 uses
  %i.au = load i32, ptr %i.f, align 4, !tbaa !44  ; 2 uses
  %i.av = and i32 %i.au, 65536
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = icmp sgt i32 %i.c, 2
  %or.cond3.not = select i1 %i.aw, i1 %i.ax, i1 false ; 2 uses
  %not.or.cond3.not = xor i1 %or.cond3.not, true
  %spec.select = zext i1 %not.or.cond3.not to i32
  store i32 -1, ptr %i.b, align 8, !tbaa !38
  store ptr null, ptr %i.d, align 8, !tbaa !133
  %i.ay = and i32 %i.au, -4
  store i32 %i.ay, ptr %i.f, align 4, !tbaa !44
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
  %i.bf = icmp eq i64 %.169, 4
  %or.cond99 = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %or.cond99, label %bb.l, label %bb.m

bb.l:                                             ; preds = %maygvl_fclose.exit
  %i.bg = call ptr @rb_errno_ptr() #28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 1
  %i.bk = or disjoint i64 %i.bj, 1
  br label %bb.m

bb.m:                                             ; preds = %maygvl_fclose.exit.thread, %maygvl_fclose.exit, %bb.l, %io_flush_buffer_sync.exit
  %.371 = phi i64 [ %.169, %io_flush_buffer_sync.exit ], [ %.169, %maygvl_fclose.exit ], [ %i.bk, %bb.l ], [ %.169, %maygvl_fclose.exit.thread ] ; 4 uses
  %.1 = phi i32 [ %spec.select, %io_flush_buffer_sync.exit ], [ 1, %maygvl_fclose.exit ], [ 1, %bb.l ], [ 1, %maygvl_fclose.exit.thread ] ; 2 uses
  %i.bl = call i64 @rb_fiber_scheduler_current() #28 ; 2 uses
  %i.bm = icmp eq i32 %.1, 0
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
  %.3 = phi i32 [ %.1, %bb.m ], [ 0, %bb.n ], [ %i.bw, %bb.o ]
  %i.bx = icmp eq i32 %.3, 0
  %or.cond11 = select i1 %i.bx, i1 %i.bn, i1 false
  br i1 %or.cond11, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.by = lshr i32 %i.g, 1
  %.lobit = and i32 %i.by, 1
  %i.bz = xor i32 %.lobit, 1
  %i.ca = or i32 %i.bz, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.c, ptr %i.a, align 4, !tbaa !16
  %.not.i85 = icmp eq i32 %i.ca, 0
  br i1 %.not.i85, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = call i32 @close(i32 noundef %i.c) #28
  br label %maygvl_close.exit

bb.s:                                             ; preds = %bb.q
  %i.cc = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_close, ptr noundef nonnull %i.a, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #28
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = trunc i64 %i.cd to i32
  br label %maygvl_close.exit

maygvl_close.exit:                                ; preds = %bb.r, %bb.s
  %.0.i86 = phi i32 [ %i.cb, %bb.r ], [ %i.ce, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cf = icmp slt i32 %.0.i86, 0
  br i1 %i.cf, label %bb.t, label %bb.v

bb.t:                                             ; preds = %maygvl_close.exit
  %i.cg = icmp eq i64 %.371, 4
  %i.ch = icmp eq i32 %1, 0
  %or.cond18.not = and i1 %i.ch, %i.cg
  br i1 %or.cond18.not, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = call ptr @rb_errno_ptr() #28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !16
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 1
  %i.cm = or disjoint i64 %i.cl, 1
  br label %bb.v

bb.v:                                             ; preds = %maygvl_close.exit, %bb.t, %bb.u, %bb.p
  %.5 = phi i64 [ %.371, %bb.p ], [ %.371, %bb.t ], [ %i.cm, %bb.u ], [ %.371, %maygvl_close.exit ] ; 7 uses
  %i.cn = icmp eq i64 %.5, 4
  %i.co = icmp ne i32 %1, 0
  %or.cond13 = or i1 %i.co, %i.cn
  br i1 %or.cond13, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = trunc i64 %.5 to i1
  br i1 %i.cp, label %rb_integer_type_p.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = icmp eq i64 %.5, 0
  %i.cr = and i64 %.5, 6
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = or i1 %i.cq, %i.cs
  br i1 %i.ct, label %rb_integer_type_p.exit.thread96, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.x
  %i.cu = inttoptr i64 %.5 to ptr
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !22
  %i.cw = and i64 %i.cv, 31
  %i.cx = icmp eq i64 %i.cw, 10
  br i1 %i.cx, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread96

rb_integer_type_p.exit.thread:                    ; preds = %bb.w, %rb_integer_type_p.exit
  %i.cy = call fastcc i32 @rb_num2int_inline(i64 noundef %.5)
  %i.cz = getelementptr i8, ptr %0, i64 32
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !48
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.fptr_finalize_flush, i32 noundef %i.cy, i64 noundef %i.da) #30
  unreachable

rb_integer_type_p.exit.thread96:                  ; preds = %bb.x, %rb_integer_type_p.exit
  call void @rb_exc_raise(i64 noundef %.5) #30
  unreachable

bb.y:                                             ; preds = %bb.v
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @finish_writeconv_sync(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !262
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !263
  %i.e = tail call fastcc i64 @finish_writeconv(ptr noundef %i.b, i32 noundef %i.d)
  ret i64 %i.e
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @finish_writeconv(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca [1024 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.c = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 60         ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 64         ; 2 uses
end_hunk_1
