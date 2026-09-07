Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/process?download=true
inline.NumInlined: 701
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@rb_fork_ruby:bb.a

bb.m:                                             ; preds = %.critedge
  store i32 %.sroa.4.1, ptr %0, align 4, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %i.r
}

declare i64 @rb_io_flush(i64 noundef) local_unnamed_addr #3

declare void @rb_thread_acquire_fork_lock() local_unnamed_addr #3

declare void @rb_thread_release_fork_lock() local_unnamed_addr #3

declare void @rb_thread_reset_fork_lock() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @handle_fork_error(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef nonnull captures(address) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !13
  switch i32 %0, label %bb.i [
    i32 12, label %bb.b
    i32 11, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile i32, ptr %3, align 4, !tbaa !13 ; 2 uses
  %i.c = add i32 %i.b, -1
  store volatile i32 %i.c, ptr %3, align 4, !tbaa !13
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @rb_during_gc() #27
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  tail call void @rb_gc() #26
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.f = icmp ne ptr %1, null                     ; 2 uses
  %i.g = icmp ne ptr %2, null
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @rb_thread_sleep(i32 noundef 1) #26
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.h = call i64 @rb_protect(ptr noundef nonnull @rb_thread_sleep_that_takes_VALUE_as_sole_argument, i64 noundef 3, ptr noundef nonnull %i.a) #26 ; 0 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !13   ; 3 uses
  br i1 %i.f, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr i8, ptr %1, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !57
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.h
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %bb.b, %bb.c, %bb.a
  %i.k = phi i32 [ %i.i, %thread-pre-split ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.a ]
  %.not18 = icmp eq ptr %2, null
  br i1 %.not18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = load i32, ptr %2, align 4, !tbaa !13
  %i.m = call i32 @close(i32 noundef %i.l) #26    ; 0 uses
  %i.n = getelementptr i8, ptr %2, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13
  %i.p = call i32 @close(i32 noundef %i.o) #26    ; 0 uses
  %i.q = call ptr @rb_errno_ptr() #26
  store i32 %0, ptr %i.q, align 4, !tbaa !13
  %.pre = load i32, ptr %i.a, align 4, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = phi i32 [ %.pre, %bb.j ], [ %i.k, %bb.i ] ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  %i.t = icmp ne ptr %1, null
  %or.cond3 = or i1 %i.t, %i.s
  br i1 %or.cond3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @rb_jump_tag(i32 noundef %i.r) #28
  unreachable

bb.m:                                             ; preds = %bb.k, %thread-pre-split, %bb.f, %bb.d
  %.0 = phi i32 [ 0, %thread-pre-split ], [ 0, %bb.d ], [ 0, %bb.f ], [ -1, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_call_proc__fork() local_unnamed_addr #1 {
bb.a:
  %.pr.i = load i64, ptr @rb_call_proc__fork.rbimpl_id, align 8, !tbaa !50 ; 2 uses
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.a = tail call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 5) #26 ; 3 uses
  store i64 %i.a, ptr @rb_call_proc__fork.rbimpl_id, align 8, !tbaa !50
  %.not.i = icmp eq i64 %i.a, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !208

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i64 [ %.pr.i, %bb.a ], [ %i.a, %.lr.ph.i ] ; 2 uses
  %i.b = load i64, ptr @rb_mProcess, align 8, !tbaa !50 ; 6 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rbimpl_intern_const.exit
  %i.g = inttoptr i64 %i.b to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 8
  br label %rb_class_of.exit

bb.c:                                             ; preds = %rbimpl_intern_const.exit
  switch i64 %i.b, label %bb.f [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.c
  %i.i = trunc i64 %i.b to i1
  br i1 %i.i, label %rb_class_of.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = and i64 %i.b, 254
  %i.k = icmp eq i64 %i.j, 12
  %spec.select.i = select i1 %i.k, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.in.i = phi ptr [ %i.h, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i, %bb.g ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !50
  %i.l = tail call i32 @rb_method_basic_definition_p(i64 noundef %.0.i, i64 noundef %.lcssa.i) #26
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %rb_class_of.exit
  %i.m = tail call i32 @rb_fork_ruby(ptr noundef null) ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.i, label %proc_fork_pid.exit

bb.i:                                             ; preds = %bb.h
  %i.o = tail call ptr @rb_errno_ptr() #26
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.p, ptr noundef nonnull @.str.212) #28
  unreachable

bb.j:                                             ; preds = %rb_class_of.exit
  %i.q = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  %i.r = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.q, i64 noundef %.lcssa.i, i32 noundef 0) #26 ; 3 uses
  %i.s = trunc i64 %i.r to i1
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = tail call i64 @rb_fix2int(i64 noundef %i.r) #26
  br label %rb_num2int_inline.exit

bb.l:                                             ; preds = %bb.j
  %i.u = tail call i64 @rb_num2int(i64 noundef %i.r) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.k, %bb.l
  %.0.i4 = phi i64 [ %i.t, %bb.k ], [ %i.u, %bb.l ]
  %i.v = trunc i64 %.0.i4 to i32
  br label %proc_fork_pid.exit

proc_fork_pid.exit:                               ; preds = %bb.h, %rb_num2int_inline.exit
  %.0 = phi i32 [ %i.v, %rb_num2int_inline.exit ], [ %i.m, %bb.h ]
  ret i32 %.0
}

declare i32 @rb_method_basic_definition_p(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i64 -4294967295, 4294967296) i64 @rb_proc__fork(i64 %0) #1 {
bb.a:
  %i.a = tail call i32 @rb_fork_ruby(ptr noundef null) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %proc_fork_pid.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_errno_ptr() #26
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.d, ptr noundef nonnull @.str.212) #28
  unreachable

proc_fork_pid.exit:                               ; preds = %bb.a
  %i.e = sext i32 %i.a to i64
  %i.f = shl nsw i64 %i.e, 1
  %i.g = or disjoint i64 %i.f, 1
  ret i64 %i.g
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @rb_exit(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [2 x i64], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.g = sext i32 %0 to i64
  %i.h = shl nsw i64 %i.g, 1
  %i.i = or disjoint i64 %i.h, 1
  store i64 %i.i, ptr %i.b, align 16, !tbaa !50
  %i.j = tail call fastcc i64 @rbimpl_str_new_cstr(ptr noundef @.str.20)
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !50
  %i.l = load i64, ptr @rb_eSystemExit, align 8, !tbaa !50
  %i.m = call i64 @rb_class_new_instance(i32 noundef 2, ptr noundef nonnull %i.b, i64 noundef %i.l) #26
  call void @rb_exc_raise(i64 noundef %i.m) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @ruby_stop(i32 noundef %0) #28
  unreachable
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rbimpl_str_new_cstr(ptr noundef nonnull %0) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #27
  %i.b = tail call i64 @rb_str_new_static(ptr noundef nonnull %0, i64 noundef %i.a) #26
  ret i64 %i.b
}

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #5

declare i64 @rb_class_new_instance(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @ruby_stop(i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local noundef i64 @rb_f_exit(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %or.cond.not = icmp ult i32 %0, 2
  br i1 %or.cond.not, label %rb_check_arity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #28
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.c, label %exit_status_code.exit

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = load i64, ptr %1, align 8, !tbaa !50     ; 4 uses
  switch i64 %i.b, label %bb.e [
    i64 20, label %exit_status_code.exit
    i64 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %exit_status_code.exit

bb.e:                                             ; preds = %bb.c
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.d = tail call i64 @rb_fix2int(i64 noundef %i.b) #26
  br label %rb_num2int_inline.exit.i

bb.g:                                             ; preds = %bb.e
  %i.e = tail call i64 @rb_num2int(i64 noundef %i.b) #26
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.d, %bb.f ], [ %i.e, %bb.g ]
  %i.f = trunc i64 %.0.i.i to i32
  br label %exit_status_code.exit

exit_status_code.exit:                            ; preds = %rb_num2int_inline.exit.i, %bb.d, %bb.c, %rb_check_arity.exit
  %.0 = phi i32 [ 0, %rb_check_arity.exit ], [ %i.f, %rb_num2int_inline.exit.i ], [ 1, %bb.d ], [ 0, %bb.c ]
  tail call void @rb_exit(i32 noundef %.0) #32
  unreachable
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local noundef i64 @rb_f_abort(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [2 x i64], align 16               ; 7 uses
  %or.cond.not = icmp ult i32 %0, 2
  br i1 %or.cond.not, label %rb_check_arity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #28
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.c = icmp eq i32 %0, 0
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %rb_check_arity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = tail call i64 @rb_ec_get_errinfo(ptr noundef %.0..0..0..0..0..0..i) #26 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_ec_error_print(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.f) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @rb_exit(i32 noundef 1) #32
  unreachable

bb.f:                                             ; preds = %rb_check_arity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.h = load i64, ptr %1, align 8, !tbaa !50     ; 2 uses
  store i64 %i.h, ptr %i.b, align 16, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !50
  %i.j = call i64 @rb_string_value(ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.k = call i64 @rb_ractor_stderr() #26
  %i.l = call i64 @rb_io_puts(i32 noundef 1, ptr noundef nonnull %i.b, i64 noundef %i.k) #26 ; 0 uses
  store i64 3, ptr %i.b, align 16, !tbaa !50
  %i.m = load i64, ptr @rb_eSystemExit, align 8, !tbaa !50
  %i.n = call i64 @rb_class_new_instance(i32 noundef 2, ptr noundef nonnull %i.b, i64 noundef %i.m) #26
  call void @rb_exc_raise(i64 noundef %i.n) #28
  unreachable
}

declare i64 @rb_ec_get_errinfo(ptr noundef) local_unnamed_addr #3

declare void @rb_ec_error_print(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #3

declare i64 @rb_io_puts(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_ractor_stderr() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_syswait(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_process_status_wait(i32 noundef %0, i32 noundef 0) ; 3 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %rb_waitpid.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @rb_check_typeddata(i64 noundef %i.b, ptr noundef nonnull @rb_process_status_type) #26 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !56
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !58
  %i.i = tail call ptr @rb_errno_ptr() #26
  store i32 %i.h, ptr %i.i, align 4, !tbaa !13
  br label %rb_waitpid.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@InitVM_process:bb.a
  %i.ca = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.ca, ptr noundef nonnull @.str.77, i64 noundef %i.by) #26
  %i.cb = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.cb, ptr noundef nonnull @.str.78, i64 noundef %i.by) #26
  %i.cc = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.cc, ptr noundef nonnull @.str.79, i64 noundef 19) #26
  %i.cd = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.cd, ptr noundef nonnull @.str.80, i64 noundef 9) #26
  %i.ce = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.ce, ptr noundef nonnull @.str.81, i64 noundef 1) #26
  %i.cf = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.cf, ptr noundef nonnull @.str.82, i64 noundef 5) #26
  %i.cg = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.cg, ptr noundef nonnull @.str.83, i64 noundef 3) #26
  %i.ch = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.ch, ptr noundef nonnull @.str.84, i64 noundef 17) #26
  %i.ci = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.ci, ptr noundef nonnull @.str.85, i64 noundef 25) #26
  %i.cj = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.cj, ptr noundef nonnull @.str.86, i64 noundef 27) #26
  %i.ck = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.ck, ptr noundef nonnull @.str.87, i64 noundef 15) #26
  %i.cl = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.cl, ptr noundef nonnull @.str.88, i64 noundef 13) #26
  %i.cm = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.cm, ptr noundef nonnull @.str.89, i64 noundef 11) #26
  %i.cn = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.cn, ptr noundef nonnull @.str.90, i64 noundef 29) #26
  %i.co = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.co, ptr noundef nonnull @.str.91, i64 noundef 31) #26
  %i.cp = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.cp, ptr noundef nonnull @.str.92, i64 noundef 23) #26
  %i.cq = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.cq, ptr noundef nonnull @.str.93, i64 noundef 7) #26
  %i.cr = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.cr, ptr noundef nonnull @.str.94, ptr noundef nonnull @proc_getuid, i32 noundef 0) #26
  %i.cs = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.cs, ptr noundef nonnull @.str.95, ptr noundef nonnull @proc_setuid, i32 noundef 1) #26
  %i.ct = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ct, ptr noundef nonnull @.str.96, ptr noundef nonnull @proc_getgid, i32 noundef 0) #26
  %i.cu = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.cu, ptr noundef nonnull @.str.97, ptr noundef nonnull @proc_setgid, i32 noundef 1) #26
  %i.cv = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.cv, ptr noundef nonnull @.str.98, ptr noundef nonnull @proc_geteuid, i32 noundef 0) #26
  %i.cw = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.cw, ptr noundef nonnull @.str.99, ptr noundef nonnull @proc_seteuid_m, i32 noundef 1) #26
  %i.cx = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.cx, ptr noundef nonnull @.str.100, ptr noundef nonnull @proc_getegid, i32 noundef 0) #26
  %i.cy = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.cy, ptr noundef nonnull @.str.101, ptr noundef nonnull @proc_setegid, i32 noundef 1) #26
  %i.cz = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.cz, ptr noundef nonnull @.str.102, ptr noundef nonnull @proc_initgroups, i32 noundef 2) #26
  %i.da = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.da, ptr noundef nonnull @.str.103, ptr noundef nonnull @proc_getgroups, i32 noundef 0) #26
  %i.db = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.db, ptr noundef nonnull @.str.104, ptr noundef nonnull @proc_setgroups, i32 noundef 1) #26
  %i.dc = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.dc, ptr noundef nonnull @.str.105, ptr noundef nonnull @proc_getmaxgroups, i32 noundef 0) #26
  %i.dd = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.dd, ptr noundef nonnull @.str.106, ptr noundef nonnull @proc_setmaxgroups, i32 noundef 1) #26
  %i.de = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.de, ptr noundef nonnull @.str.107, ptr noundef nonnull @proc_daemon, i32 noundef -1) #26
  %i.df = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.df, ptr noundef nonnull @.str.108, ptr noundef nonnull @rb_proc_times, i32 noundef 0) #26
  %i.dg = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.dg, ptr noundef nonnull @.str.109, i64 noundef 1) #26
  %i.dh = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.dh, ptr noundef nonnull @.str.110, i64 noundef 3) #26
  %i.di = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.di, ptr noundef nonnull @.str.111, i64 noundef 5) #26
  %i.dj = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.dj, ptr noundef nonnull @.str.112, i64 noundef 7) #26
  %i.dk = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.dk, ptr noundef nonnull @.str.113, i64 noundef 11) #26
  %i.dl = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.dl, ptr noundef nonnull @.str.114, i64 noundef 17) #26
  %i.dm = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.dm, ptr noundef nonnull @.str.115, i64 noundef 9) #26
  %i.dn = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.dn, ptr noundef nonnull @.str.116, i64 noundef 13) #26
  %i.do = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.do, ptr noundef nonnull @.str.117, i64 noundef 15) #26
  %i.dp = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.dp, ptr noundef nonnull @.str.118, i64 noundef 19) #26
  %i.dq = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_const(i64 noundef %i.dq, ptr noundef nonnull @.str.119, i64 noundef 23) #26
  %i.dr = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.dr, ptr noundef nonnull @.str.120, ptr noundef nonnull @rb_clock_gettime, i32 noundef -1) #26
  %i.ds = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ds, ptr noundef nonnull @.str.121, ptr noundef nonnull @rb_clock_getres, i32 noundef -1) #26
  %i.dt = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  %i.du = tail call i64 (i64, ptr, ...) @rb_struct_define_under(i64 noundef %i.dt, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef null) #26
  store i64 %i.du, ptr @rb_cProcessTms, align 8, !tbaa !50
  %i.dv = tail call i32 @geteuid() #26
  store i32 %i.dv, ptr @SAVED_USER_ID, align 4, !tbaa !13
  %i.dw = tail call i32 @getegid() #26
  store i32 %i.dw, ptr @SAVED_GROUP_ID, align 4, !tbaa !13
  %i.dx = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  %i.dy = tail call i64 @rb_define_module_under(i64 noundef %i.dx, ptr noundef nonnull @.str.127) #26
  store i64 %i.dy, ptr @rb_mProcUID, align 8, !tbaa !50
  %i.dz = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  %i.ea = tail call i64 @rb_define_module_under(i64 noundef %i.dz, ptr noundef nonnull @.str.128) #26
  store i64 %i.ea, ptr @rb_mProcGID, align 8, !tbaa !50
  %i.eb = load i64, ptr @rb_mProcUID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.eb, ptr noundef nonnull @.str.129, ptr noundef nonnull @proc_getuid, i32 noundef 0) #26
  %i.ec = load i64, ptr @rb_mProcGID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ec, ptr noundef nonnull @.str.129, ptr noundef nonnull @proc_getgid, i32 noundef 0) #26
  %i.ed = load i64, ptr @rb_mProcUID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ed, ptr noundef nonnull @.str.130, ptr noundef nonnull @proc_geteuid, i32 noundef 0) #26
  %i.ee = load i64, ptr @rb_mProcGID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ee, ptr noundef nonnull @.str.130, ptr noundef nonnull @proc_getegid, i32 noundef 0) #26
  %i.ef = load i64, ptr @rb_mProcUID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ef, ptr noundef nonnull @.str.131, ptr noundef nonnull @p_uid_change_privilege, i32 noundef 1) #26
  %i.eg = load i64, ptr @rb_mProcGID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.eg, ptr noundef nonnull @.str.131, ptr noundef nonnull @p_gid_change_privilege, i32 noundef 1) #26
  %i.eh = load i64, ptr @rb_mProcUID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.eh, ptr noundef nonnull @.str.132, ptr noundef nonnull @p_uid_grant_privilege, i32 noundef 1) #26
  %i.ei = load i64, ptr @rb_mProcGID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ei, ptr noundef nonnull @.str.132, ptr noundef nonnull @p_gid_grant_privilege, i32 noundef 1) #26
  %i.ej = load i64, ptr @rb_mProcUID, align 8, !tbaa !50
  %i.ek = tail call i64 @rb_singleton_class(i64 noundef %i.ej) #26
  tail call void @rb_define_alias(i64 noundef %i.ek, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.132) #26
  %i.el = load i64, ptr @rb_mProcGID, align 8, !tbaa !50
  %i.em = tail call i64 @rb_singleton_class(i64 noundef %i.el) #26
  tail call void @rb_define_alias(i64 noundef %i.em, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.132) #26
  %i.en = load i64, ptr @rb_mProcUID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.en, ptr noundef nonnull @.str.134, ptr noundef nonnull @p_uid_exchange, i32 noundef 0) #26
  %i.eo = load i64, ptr @rb_mProcGID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.eo, ptr noundef nonnull @.str.134, ptr noundef nonnull @p_gid_exchange, i32 noundef 0) #26
  %i.ep = load i64, ptr @rb_mProcUID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ep, ptr noundef nonnull @.str.135, ptr noundef nonnull @p_uid_exchangeable, i32 noundef 0) #26
  %i.eq = load i64, ptr @rb_mProcGID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.eq, ptr noundef nonnull @.str.135, ptr noundef nonnull @p_gid_exchangeable, i32 noundef 0) #26
  %i.er = load i64, ptr @rb_mProcUID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.er, ptr noundef nonnull @.str.136, ptr noundef nonnull @p_uid_have_saved_id, i32 noundef 0) #26
  %i.es = load i64, ptr @rb_mProcGID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.es, ptr noundef nonnull @.str.136, ptr noundef nonnull @p_gid_have_saved_id, i32 noundef 0) #26
  %i.et = load i64, ptr @rb_mProcUID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.et, ptr noundef nonnull @.str.137, ptr noundef nonnull @p_uid_switch, i32 noundef 0) #26
  %i.eu = load i64, ptr @rb_mProcGID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.eu, ptr noundef nonnull @.str.137, ptr noundef nonnull @p_gid_switch, i32 noundef 0) #26
  %i.ev = load i64, ptr @rb_mProcUID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ev, ptr noundef nonnull @.str.138, ptr noundef nonnull @p_uid_from_name, i32 noundef 1) #26
  %i.ew = load i64, ptr @rb_mProcGID, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ew, ptr noundef nonnull @.str.138, ptr noundef nonnull @p_gid_from_name, i32 noundef 1) #26
  %i.ex = load i64, ptr @rb_mProcess, align 8, !tbaa !50
  %i.ey = tail call i64 @rb_define_module_under(i64 noundef %i.ex, ptr noundef nonnull @.str.139) #26 ; 2 uses
  store i64 %i.ey, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ey, ptr noundef nonnull @.str.140, ptr noundef nonnull @proc_getuid, i32 noundef 0) #26
  %i.ez = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ez, ptr noundef nonnull @.str.141, ptr noundef nonnull @proc_geteuid, i32 noundef 0) #26
  %i.fa = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fa, ptr noundef nonnull @.str.142, ptr noundef nonnull @proc_getgid, i32 noundef 0) #26
  %i.fb = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fb, ptr noundef nonnull @.str.143, ptr noundef nonnull @proc_getegid, i32 noundef 0) #26
  %i.fc = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fc, ptr noundef nonnull @.str.16, ptr noundef nonnull @p_sys_setuid, i32 noundef 1) #26
  %i.fd = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fd, ptr noundef nonnull @.str.15, ptr noundef nonnull @p_sys_setgid, i32 noundef 1) #26
  %i.fe = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fe, ptr noundef nonnull @.str.144, ptr noundef nonnull @rb_f_notimplement, i32 noundef 1) #26
  %i.ff = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.ff, ptr noundef nonnull @.str.145, ptr noundef nonnull @rb_f_notimplement, i32 noundef 1) #26
  %i.fg = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fg, ptr noundef nonnull @.str.146, ptr noundef nonnull @p_sys_seteuid, i32 noundef 1) #26
  %i.fh = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fh, ptr noundef nonnull @.str.147, ptr noundef nonnull @p_sys_setegid, i32 noundef 1) #26
  %i.fi = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fi, ptr noundef nonnull @.str.148, ptr noundef nonnull @p_sys_setreuid, i32 noundef 2) #26
  %i.fj = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fj, ptr noundef nonnull @.str.149, ptr noundef nonnull @p_sys_setregid, i32 noundef 2) #26
  %i.fk = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fk, ptr noundef nonnull @.str.150, ptr noundef nonnull @p_sys_setresuid, i32 noundef 3) #26
  %i.fl = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fl, ptr noundef nonnull @.str.151, ptr noundef nonnull @p_sys_setresgid, i32 noundef 3) #26
  %i.fm = load i64, ptr @rb_mProcID_Syscall, align 8, !tbaa !50
  tail call void @rb_define_module_function(i64 noundef %i.fm, ptr noundef nonnull @.str.152, ptr noundef nonnull @rb_f_notimplement, i32 noundef 0) #26
  ret void
}

declare void @rb_define_virtual_variable(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal i64 @get_CHILD_STATUS(i64 %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr i8, ptr %.val.i.i, i64 216
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @get_PROCESS_ID(i64 %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = load i32, ptr @cached_pid, align 4, !tbaa !13 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %get_pid.exit, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @getpid() #26              ; 2 uses
  store i32 %i.b, ptr @cached_pid, align 4, !tbaa !13
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 1
  %i.f = or disjoint i64 %i.e, 1
  ret i64 %i.f
}

declare void @rb_gvar_ractor_local(ptr noundef) local_unnamed_addr #3

declare extern_weak void @rb_define_global_function(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @f_exec(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #7 {
bb.a:
  %i.a = tail call i64 @rb_f_exec(i32 noundef %0, ptr noundef %1) #32 ; 0 uses
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @rb_f_fork(i64 %0) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = tail call i32 @rb_call_proc__fork()      ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_block_given_p() #26
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.e = call i64 @rb_protect(ptr noundef nonnull @rb_yield, i64 noundef 36, ptr noundef nonnull %i.a) #26 ; 0 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !13
  call void @ruby_stop(i32 noundef %i.f) #28
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.g = sext i32 %i.b to i64
  %i.h = shl nsw i64 %i.g, 1
  %i.i = or disjoint i64 %i.h, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0 = phi i64 [ %i.i, %bb.d ], [ 4, %bb.b ]
  ret i64 %.0
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @rb_f_exit_bang(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #7 {
bb.a:
  %or.cond.not = icmp ult i32 %0, 2
  br i1 %or.cond.not, label %rb_check_arity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #28
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.c, label %exit_status_code.exit

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = load i64, ptr %1, align 8, !tbaa !50     ; 4 uses
  switch i64 %i.b, label %bb.e [
    i64 20, label %exit_status_code.exit
    i64 0, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %exit_status_code.exit

bb.e:                                             ; preds = %bb.c
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.d = tail call i64 @rb_fix2int(i64 noundef %i.b) #26
  br label %rb_num2int_inline.exit.i

bb.g:                                             ; preds = %bb.e
  %i.e = tail call i64 @rb_num2int(i64 noundef %i.b) #26
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.g, %bb.f
  %.0.i.i = phi i64 [ %i.d, %bb.f ], [ %i.e, %bb.g ]
  %i.f = trunc i64 %.0.i.i to i32
  br label %exit_status_code.exit

exit_status_code.exit:                            ; preds = %rb_num2int_inline.exit.i, %bb.d, %bb.c, %rb_check_arity.exit
  %.0 = phi i32 [ 1, %rb_check_arity.exit ], [ %i.f, %rb_num2int_inline.exit.i ], [ 1, %bb.d ], [ 0, %bb.c ]
  tail call void @_exit(i32 noundef %.0) #28
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_f_system(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #1 {
rb_execarg_new.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.rb_process_status, align 4  ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  store volatile ptr %i.g, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.i = tail call i64 @rb_data_typed_object_zalloc(i64 noundef 0, i64 noundef 176, ptr noundef nonnull @exec_arg_data_type) #26 ; 7 uses
  %i.j = inttoptr i64 %i.i to ptr                 ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 24
  %i.l = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  tail call fastcc void @rb_execarg_init(i32 noundef %0, ptr noundef readonly %1, i32 noundef 1, i64 noundef %i.i)
  store i64 %i.i, ptr %i.b, align 8, !tbaa !50
  %i.m = icmp eq i64 %i.i, 0
  %i.n = and i64 %i.i, 7
  %i.o = icmp ne i64 %i.n, 0
  %i.p = or i1 %i.m, %i.o
  br i1 %i.p, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %rb_execarg_new.exit
  %i.q = load i64, ptr %i.j, align 8, !tbaa !67
  %i.r = and i64 %i.q, 95
  %or.cond.not.i.i = icmp eq i64 %i.r, 76
  br i1 %or.cond.not.i.i, label %bb.a, label %.critedge.i.i, !prof !68

bb.a:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.s = load i64, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %i.t = and i64 %i.s, -2                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = trunc i64 %i.s to i1
  br i1 %i.v, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.b, %bb.a
  %i.x = phi ptr [ %i.w, %bb.b ], [ %i.l, %bb.a ] ; 2 uses
  %i.y = icmp eq i64 %i.t, ptrtoint (ptr @exec_arg_data_type to i64)
  br i1 %i.y, label %rb_execarg_get.exit, label %.preheader.i.i, !prof !63

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.c
  %.015.i.i = phi ptr [ %i.aa, %bb.c ], [ %i.u, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.z = getelementptr i8, ptr %.015.i.i, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, @exec_arg_data_type
  br i1 %i.ab, label %rb_execarg_get.exit, label %.preheader.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rb_execarg_new.exit
  %i.ac = tail call ptr @rb_check_typeddata(i64 noundef %i.i, ptr noundef nonnull @exec_arg_data_type) #26
  br label %rb_execarg_get.exit

rb_execarg_get.exit:                              ; preds = %bb.c, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.ac, %.critedge.i.i ], [ %i.x, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.x, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i64 12, i1 false)
  %i.ad = getelementptr i8, ptr %.1.i.i, i64 72
  store ptr %3, ptr %i.ad, align 8, !tbaa !133
  %i.ae = getelementptr i8, ptr %.val.i, i64 216  ; 2 uses
  store i64 4, ptr %i.ae, align 8, !tbaa !49
  %i.af = call fastcc i32 @rb_execarg_spawn(i64 noundef %i.i, ptr noundef null, i64 noundef 0) ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.j

bb.d:                                             ; preds = %rb_execarg_get.exit
  %i.ah = call i64 @rb_process_status_wait(i32 noundef %i.af, i32 noundef 0) ; 3 uses
  %i.ai = call ptr @rb_check_typeddata(i64 noundef %i.ah, ptr noundef nonnull @rb_process_status_type) #26 ; 2 uses
  %i.aj = call i64 @rb_obj_freeze(i64 noundef %i.ah) #26 ; 0 uses
  store i64 %i.ah, ptr %i.ae, align 8, !tbaa !49
  %i.ak = getelementptr i8, ptr %i.ai, i64 4      ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !57
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.ai, i64 8      ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !58
  %.not30 = icmp eq i32 %i.ao, 0
  %i.ap = getelementptr i8, ptr %.1.i.i, i64 64
  %i.aq = load i16, ptr %i.ap, align 8
  %i.ar = and i16 %i.aq, 4096
  %.not31 = icmp eq i16 %i.ar, 0                  ; 2 uses
  br i1 %.not30, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not31, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load i64, ptr %.1.i.i, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr %i.b, ptr %i.c, align 8, !tbaa !76
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #26, !srcloc !218
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.au = load volatile i64, ptr %i.at, align 8, !tbaa !50 ; 0 uses
  %i.av = load i32, ptr %i.an, align 4, !tbaa !58
  call void @rb_syserr_fail_str(i32 noundef %i.av, i64 noundef %i.as) #28
  unreachable

bb.h:                                             ; preds = %bb.e
  br i1 %.not31, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr %.1.i.i, align 8, !tbaa !65
  %i.ax = call fastcc i64 @rbimpl_str_new_cstr(ptr noundef @.str.231) ; 4 uses
  %i.ay = load i32, ptr %i.ak, align 4, !tbaa !57
  %i.az = call fastcc i64 @pst_message_status(i64 noundef %i.ax, i32 noundef %i.ay) ; 0 uses
  call fastcc void @rbimpl_str_cat_cstr(i64 noundef %i.ax, ptr noundef @.str.232)
  %i.ba = call i64 @rb_str_append(i64 noundef %i.ax, i64 noundef %i.aw) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store ptr %i.b, ptr %i.d, align 8, !tbaa !76
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #26, !srcloc !219
  %i.bb = load ptr, ptr %i.d, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.bc = load volatile i64, ptr %i.bb, align 8, !tbaa !50 ; 0 uses
  %i.bd = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !50
  %i.be = call i64 @rb_exc_new_str(i64 noundef %i.bd, i64 noundef %i.ax) #26
  call void @rb_exc_raise(i64 noundef %i.be) #28
  unreachable

bb.j:                                             ; preds = %rb_execarg_get.exit
  %i.bf = getelementptr i8, ptr %.1.i.i, i64 64
  %i.bg = load i16, ptr %i.bf, align 8
  %i.bh = and i16 %i.bg, 4096
  %.not = icmp eq i16 %i.bh, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load i64, ptr %.1.i.i, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store ptr %i.b, ptr %i.e, align 8, !tbaa !76
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #26, !srcloc !220
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.bk = load volatile i64, ptr %i.bj, align 8, !tbaa !50 ; 0 uses
  %i.bl = call ptr @rb_errno_ptr() #26
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !13
  call void @rb_syserr_fail_str(i32 noundef %i.bm, i64 noundef %i.bi) #28
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.d, %bb.f, %bb.h
  %.1 = phi i64 [ 0, %bb.h ], [ 4, %bb.f ], [ 20, %bb.d ], [ 4, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret i64 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @rb_f_spawn(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #1 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.d = tail call i64 @rb_data_typed_object_zalloc(i64 noundef 0, i64 noundef 176, ptr noundef nonnull @exec_arg_data_type) #26 ; 7 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !53
  %i.h = trunc i64 %i.g to i1
  %i.i = getelementptr i8, ptr %i.e, i64 32       ; 4 uses
  br i1 %i.h, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  tail call fastcc void @rb_execarg_init(i32 noundef %0, ptr noundef readonly %1, i32 noundef 1, i64 noundef %i.d)
  %i.l = getelementptr i8, ptr %i.k, i64 64
  %i.m = load i16, ptr %i.l, align 8
  %i.n = and i16 %i.m, 8192
  %.not9.i = icmp eq i16 %i.n, 0
  br i1 %.not9.i, label %rb_execarg_new.exit, label %bb.c

bb.c:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i
  %i.o = load i64, ptr @rb_eArgError, align 8, !tbaa !50
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.12) #28
  unreachable

rb_execarg_new.exit:                              ; preds = %RTYPEDDATA_GET_DATA.exit.i
  store i64 %i.d, ptr %i.b, align 8, !tbaa !50
  %i.p = icmp eq i64 %i.d, 0
  %i.q = and i64 %i.d, 7
  %i.r = icmp ne i64 %i.q, 0
  %i.s = or i1 %i.p, %i.r
  br i1 %i.s, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %rb_execarg_new.exit
  %i.t = load i64, ptr %i.e, align 8, !tbaa !67
  %i.u = and i64 %i.t, 95
  %or.cond.not.i.i = icmp eq i64 %i.u, 76
  br i1 %or.cond.not.i.i, label %bb.d, label %.critedge.i.i, !prof !68

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.v = load i64, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.w = and i64 %i.v, -2                         ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = trunc i64 %i.v to i1
  br i1 %i.y, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.e, %bb.d
  %i.aa = phi ptr [ %i.z, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  %i.ab = icmp eq i64 %i.w, ptrtoint (ptr @exec_arg_data_type to i64)
  br i1 %i.ab, label %rb_execarg_get.exit, label %.preheader.i.i, !prof !63

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.f
  %.015.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.x, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i
  %i.ac = getelementptr i8, ptr %.015.i.i, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !73 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, @exec_arg_data_type
  br i1 %i.ae, label %rb_execarg_get.exit, label %.preheader.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rb_execarg_new.exit
  %i.af = tail call ptr @rb_check_typeddata(i64 noundef %i.d, ptr noundef nonnull @exec_arg_data_type) #26
  br label %rb_execarg_get.exit

rb_execarg_get.exit:                              ; preds = %bb.f, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.af, %.critedge.i.i ], [ %i.aa, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ag = load i64, ptr %.1.i.i, align 8, !tbaa !65
  %i.ah = call fastcc i32 @rb_execarg_spawn(i64 noundef %i.d, ptr noundef nonnull %i.a, i64 noundef 80) ; 2 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %rb_execarg_get.exit
  %i.aj = call ptr @rb_errno_ptr() #26
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !13
  call fastcc void @rb_exec_fail(ptr noundef nonnull %.1.i.i, ptr noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store ptr %i.b, ptr %i.c, align 8, !tbaa !76
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #26, !srcloc !221
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.am = load volatile i64, ptr %i.al, align 8, !tbaa !50 ; 0 uses
  call void @rb_syserr_fail_str(i32 noundef %i.ak, i64 noundef %i.ag) #28
  unreachable

bb.h:                                             ; preds = %rb_execarg_get.exit
  %i.an = sext i32 %i.ah to i64
  %i.ao = shl nsw i64 %i.an, 1
  %i.ap = or disjoint i64 %i.ao, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.ap
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_sleep(i32 noundef %0, ptr noundef %1, i64 %2) #1 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #26
  %i.b = tail call i64 @rb_fiber_scheduler_current() #26 ; 2 uses
  %.not = icmp eq i64 %i.b, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_fiber_scheduler_kernel_sleepv(i64 noundef %i.b, i32 noundef %0, ptr noundef %1) #26 ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  switch i32 %0, label %.split [
    i32 0, label %bb.e
    i32 1, label %bb.d
  ]

.split:                                           ; preds = %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #28
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.d = load i64, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.e = icmp eq i64 %i.d, 4
  br i1 %i.e, label %bb.e, label %.split10

bb.e:                                             ; preds = %bb.c, %bb.d
  tail call void @rb_thread_sleep_forever() #26
  br label %bb.f

.split10:                                         ; preds = %bb.d
  %i.f = tail call { i64, i64 } @rb_time_interval(i64 noundef %i.d) #26 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1
  tail call void @rb_thread_wait_for(i64 %i.g, i64 %i.h) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split10, %bb.b
  %i.i = tail call i64 @time(ptr noundef null) #26
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = add i64 %i.j, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.k, -1
  br i1 %or.cond.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = shl nsw i64 %i.j, 1
  %i.m = or disjoint i64 %i.l, 1
  br label %rb_long2num_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.n = tail call i64 @rb_int2big(i64 noundef %i.j) #26
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.m, %bb.g ], [ %i.n, %bb.h ]
  ret i64 %.0.i
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @f_exit(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #7 {
bb.a:
  %i.a = tail call i64 @rb_f_exit(i32 noundef %0, ptr noundef %1) #32 ; 0 uses
  unreachable
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal noundef i64 @f_abort(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #7 {
bb.a:
  %i.a = tail call i64 @rb_f_abort(i32 noundef %0, ptr noundef %1) #32 ; 0 uses
  unreachable
}

declare i64 @rb_define_module(ptr noundef) local_unnamed_addr #3

declare void @rb_define_const(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal i64 @proc_s_last_status(i64 %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr i8, ptr %.val.i.i, i64 216
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49
  ret i64 %i.f
}

declare extern_weak void @rb_define_module_function(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @proc_rb_f_kill(i32 noundef %0, ptr noundef %1, i64 %2) #1 {
bb.a:
  %i.a = tail call i64 @rb_f_kill(i32 noundef %0, ptr noundef %1) #26
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 3, 4294967296) i64 @proc_m_wait(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #1 {
bb.a:
  %i.a = tail call fastcc i64 @proc_wait(i32 noundef %0, ptr noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @proc_wait2(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call fastcc i64 @proc_wait(i32 noundef %0, ptr noundef %1) ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.g = getelementptr i8, ptr %.val.i.i, i64 216
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  %i.i = tail call i64 @rb_assoc_new(i64 noundef %i.b, i64 noundef %i.h) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @proc_waitall(i64 %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = tail call i64 @rb_ary_new() #26          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  store volatile ptr %i.f, ptr %i.c, align 8, !tbaa !16
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.c, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr i8, ptr %.val.i.i, i64 216
  store i64 4, ptr %i.h, align 8, !tbaa !49
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.i = tail call i64 @rb_process_status_wait(i32 noundef -1, i32 noundef 0) ; 3 uses
  %i.j = icmp eq i64 %i.i, 4
  br i1 %i.j, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !16
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @rb_check_typeddata(i64 noundef %i.i, ptr noundef nonnull @rb_process_status_type) #26 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56   ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !16   ; 2 uses
  store volatile ptr %i.n, ptr %i.b, align 8, !tbaa !16
  %.0..0..0..0..0..0..0..0..0..0..i.i.i7 = load volatile ptr, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i7, i64 48
  %.val.i.i8 = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.p = getelementptr i8, ptr %.val.i.i8, i64 216
  store i64 %i.i, ptr %i.p, align 8, !tbaa !49
  %i.q = sext i32 %i.l to i64
  %i.r = shl nsw i64 %i.q, 1
  %i.s = or disjoint i64 %i.r, 1
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.k, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  %i.v = tail call ptr @rb_errno_ptr() #26
  store i32 %i.u, ptr %i.v, align 4, !tbaa !13
  %i.w = tail call ptr @rb_errno_ptr() #26
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13   ; 2 uses
  %i.y = icmp eq i32 %i.x, 10
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  ret i64 %i.d

bb.g:                                             ; preds = %bb.e
  tail call void @rb_syserr_fail(i32 noundef %i.x, ptr noundef null) #28
  unreachable

bb.h:                                             ; preds = %._crit_edge, %bb.d
  %i.z = phi ptr [ %i.n, %bb.d ], [ %.pre, %._crit_edge ]
  %.0.i.ph = phi i64 [ %i.s, %bb.d ], [ 1, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.z, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..0..0..0..0..i.i.i9 = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i9, i64 48
  %.val.i.i10 = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ab = getelementptr i8, ptr %.val.i.i10, i64 216
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !49
  %i.ad = tail call i64 @rb_assoc_new(i64 noundef %.0.i.ph, i64 noundef %i.ac) #26
  %i.ae = tail call i64 @rb_ary_push(i64 noundef %i.d, i64 noundef %i.ad) #26 ; 0 uses
  br label %bb.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @proc_detach(i64 %0, i64 noundef %1) #1 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_fix2int(i64 noundef %1) #26
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2int(i64 noundef %1) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %sext = shl i64 %.0.i, 32                       ; 2 uses
  %i.d = ashr exact i64 %sext, 32
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call i64 @rb_thread_create(ptr noundef nonnull @detach_process_watcher, ptr noundef %i.e) #26 ; 4 uses
  %i.g = load i64, ptr @id_pid, align 8, !tbaa !50
  %i.h = ashr exact i64 %sext, 31
  %i.i = or disjoint i64 %i.h, 1
  %i.j = tail call i64 @rb_thread_local_aset(i64 noundef %i.f, i64 noundef %i.g, i64 noundef %i.i) #26 ; 0 uses
  %i.k = load i64, ptr @rb_cWaiter, align 8, !tbaa !50 ; 4 uses
  %i.l = inttoptr i64 %i.f to ptr
  %i.m = getelementptr i8, ptr %i.l, i64 8
  store i64 %i.k, ptr %i.m, align 8, !tbaa !50
  %i.n = icmp eq i64 %i.k, 0
  %i.o = and i64 %i.k, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %rb_detach_process.exit, label %bb.d

bb.d:                                             ; preds = %rb_num2int_inline.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.f, i64 noundef %i.k) #26
  br label %rb_detach_process.exit

rb_detach_process.exit:                           ; preds = %rb_num2int_inline.exit, %bb.d
  ret i64 %i.f
}

declare i64 @rb_define_class_under(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_undef_alloc_func(i64 noundef) local_unnamed_addr #3

declare void @rb_undef_method(i64 noundef, ptr noundef) local_unnamed_addr #3

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @detach_process_pid(i64 noundef %0) #1 {
bb.a:
  %i.a = load i64, ptr @id_pid, align 8, !tbaa !50
  %i.b = tail call i64 @rb_thread_local_aref(i64 noundef %0, i64 noundef %i.a) #26
  ret i64 %i.b
}

declare void @rb_define_alloc_func(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_marshal_define_compat(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @process_status_dump(i64 noundef %0) #1 {
bb.a:
  %i.a = load i64, ptr @rb_cObject, align 8, !tbaa !50
  %i.b = tail call i64 @rb_class_new_instance(i32 noundef 0, ptr noundef null, i64 noundef %i.a) #26 ; 3 uses
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67
  %i.i = and i64 %i.h, 95
  %or.cond.not.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
end_hunk_1
begin_hunk_2_@process_status_dump:bb.a
  %i.ac = or disjoint i64 %i.ab, 1
  %i.ad = tail call i64 @rb_ivar_set(i64 noundef %i.b, i64 noundef %i.x, i64 noundef %i.ac) #26 ; 0 uses
  %i.ae = load i64, ptr @id_pid, align 8, !tbaa !50
  %i.af = load i32, ptr %.1.i, align 4, !tbaa !56
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 1
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = tail call i64 @rb_ivar_set(i64 noundef %i.b, i64 noundef %i.ae, i64 noundef %i.ai) #26 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rbimpl_check_typeddata.exit
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @process_status_load(i64 noundef returned %0, i64 noundef %1) #1 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26 ; 2 uses
  %i.b = load i64, ptr @ruby_static_id_status, align 8, !tbaa !50
  %i.c = tail call i64 @rb_attr_get(i64 noundef %1, i64 noundef %i.b) #26 ; 4 uses
  %i.d = load i64, ptr @id_pid, align 8, !tbaa !50
  %i.e = tail call i64 @rb_attr_get(i64 noundef %1, i64 noundef %i.d) #26 ; 4 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.e to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i64 @rb_fix2int(i64 noundef %i.e) #26
  br label %rb_num2int_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i64 @rb_num2int(i64 noundef %i.e) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  %i.j = trunc i64 %.0.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %rb_num2int_inline.exit
  %i.k = phi i32 [ %i.j, %rb_num2int_inline.exit ], [ 0, %bb.a ]
  store i32 %i.k, ptr %i.a, align 4, !tbaa !56
  %i.l = icmp eq i64 %i.c, 4
  br i1 %i.l, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = trunc i64 %i.c to i1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i64 @rb_fix2int(i64 noundef %i.c) #26
  br label %rb_num2int_inline.exit10

bb.h:                                             ; preds = %bb.f
  %i.o = tail call i64 @rb_num2int(i64 noundef %i.c) #26
  br label %rb_num2int_inline.exit10

rb_num2int_inline.exit10:                         ; preds = %bb.g, %bb.h
  %.0.i9 = phi i64 [ %i.n, %bb.g ], [ %i.o, %bb.h ]
  %i.p = trunc i64 %.0.i9 to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %rb_num2int_inline.exit10
  %i.q = phi i32 [ %i.p, %rb_num2int_inline.exit10 ], [ 0, %bb.e ]
  %i.r = getelementptr i8, ptr %i.a, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !57
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_process_status_waitv(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #1 {
bb.a:
  %or.cond = icmp ugt i32 %0, 2
  br i1 %or.cond, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #28
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.a = load i64, ptr %1, align 8, !tbaa !50     ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @rb_fix2int(i64 noundef %i.a) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = tail call i64 @rb_num2int(i64 noundef %i.a) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i64 [ %i.c, %bb.d ], [ %i.d, %bb.e ]
  %i.e = trunc i64 %.0.i to i32                   ; 2 uses
  %i.f = icmp eq i32 %0, 2
  br i1 %i.f, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call i64 @rb_fix2int(i64 noundef %i.h) #26
  br label %rb_num2int_inline.exit8

bb.i:                                             ; preds = %bb.g
  %i.k = tail call i64 @rb_num2int(i64 noundef %i.h) #26
  br label %rb_num2int_inline.exit8

rb_num2int_inline.exit8:                          ; preds = %bb.h, %bb.i
  %.0.i7 = phi i64 [ %i.j, %bb.h ], [ %i.k, %bb.i ]
  %i.l = trunc i64 %.0.i7 to i32
  br label %.thread

.thread:                                          ; preds = %rb_check_arity.exit, %rb_num2int_inline.exit8, %bb.f
  %.0610 = phi i32 [ %i.e, %rb_num2int_inline.exit8 ], [ %i.e, %bb.f ], [ -1, %rb_check_arity.exit ]
  %.0 = phi i32 [ %i.l, %rb_num2int_inline.exit8 ], [ 0, %bb.f ], [ 0, %rb_check_arity.exit ]
  %i.m = tail call i64 @rb_process_status_wait(i32 noundef %.0610, i32 noundef %.0)
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @pst_equal(i64 noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = icmp eq i64 %0, %1
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.b
  %i.f = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67
  %i.h = and i64 %i.g, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.h, 76
  br i1 %or.cond.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !68

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.i = getelementptr i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  %i.k = and i64 %i.j, -2                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = trunc i64 %i.j to i1
  %i.n = getelementptr i8, ptr %i.f, i64 32       ; 2 uses
  br i1 %i.m, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.o, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.q = icmp eq i64 %i.k, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.q, label %pst_to_i.exit, label %.preheader.i.i.i, !prof !63

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.e
  %.015.i.i.i = phi ptr [ %i.s, %bb.e ], [ %i.l, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.015.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.r = getelementptr i8, ptr %.015.i.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %i.t = icmp eq ptr %i.s, @rb_process_status_type
  br i1 %i.t, label %pst_to_i.exit, label %.preheader.i.i.i, !llvm.loop !1

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.b
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_to_i.exit

pst_to_i.exit:                                    ; preds = %bb.e, %RTYPEDDATA_GET_DATA.exit.i.i.i, %.critedge.i.i.i
  %.1.i.i.i = phi ptr [ %i.u, %.critedge.i.i.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.p, %bb.e ]
  %i.v = getelementptr i8, ptr %.1.i.i.i, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !57
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 1
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = tail call i64 @rb_equal(i64 noundef %i.z, i64 noundef %1) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %pst_to_i.exit
  %.0 = phi i64 [ %i.aa, %pst_to_i.exit ], [ 20, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @pst_to_i(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.p, label %pst_status.exit, label %.preheader.i.i, !prof !63

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq ptr %i.r, @rb_process_status_type
  br i1 %i.s, label %pst_status.exit, label %.preheader.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_status.exit

pst_status.exit:                                  ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 1
  %i.y = or disjoint i64 %i.x, 1
  ret i64 %i.y
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @pst_to_s(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c                         ; 2 uses
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.p, label %pst_pid.exit.thread, label %.preheader.i.i, !prof !63

pst_pid.exit.thread:                              ; preds = %RTYPEDDATA_GET_DATA.exit.i.i
  %i.q = load i32, ptr %i.o, align 4, !tbaa !56
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i.i6

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.s, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = getelementptr i8, ptr %.015.i.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %i.t = icmp eq ptr %i.s, @rb_process_status_type
  br i1 %i.t, label %pst_pid.exit, label %.preheader.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.u = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_pid.exit

pst_pid.exit:                                     ; preds = %bb.d, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.u, %.critedge.i.i ], [ %i.o, %bb.d ]
  %i.v = load i32, ptr %.1.i.i, align 4, !tbaa !56 ; 2 uses
  br i1 %i.d, label %.critedge.i.i8, label %pst_pid.exit.rbimpl_RB_TYPE_P_fastpath.exit.i.i6_crit_edge, !prof !134

pst_pid.exit.rbimpl_RB_TYPE_P_fastpath.exit.i.i6_crit_edge: ; preds = %pst_pid.exit
  %.pre = inttoptr i64 %0 to ptr
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i.i6

rbimpl_RB_TYPE_P_fastpath.exit.i.i6:              ; preds = %pst_pid.exit.rbimpl_RB_TYPE_P_fastpath.exit.i.i6_crit_edge, %pst_pid.exit.thread
  %.pre-phi = phi ptr [ %.pre, %pst_pid.exit.rbimpl_RB_TYPE_P_fastpath.exit.i.i6_crit_edge ], [ %i.e, %pst_pid.exit.thread ] ; 3 uses
  %i.w = phi i32 [ %i.v, %pst_pid.exit.rbimpl_RB_TYPE_P_fastpath.exit.i.i6_crit_edge ], [ %i.q, %pst_pid.exit.thread ] ; 4 uses
  %i.x = load i64, ptr %.pre-phi, align 8, !tbaa !67
  %i.y = and i64 %i.x, 95
  %or.cond.not.i.i7 = icmp eq i64 %i.y, 76
  br i1 %or.cond.not.i.i7, label %bb.e, label %.critedge.i.i8, !prof !68

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i6
  %i.z = getelementptr i8, ptr %.pre-phi, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !53  ; 2 uses
  %i.ab = and i64 %i.aa, -2                       ; 2 uses
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = trunc i64 %i.aa to i1
  %i.ae = getelementptr i8, ptr %.pre-phi, i64 32 ; 2 uses
  br i1 %i.ad, label %RTYPEDDATA_GET_DATA.exit.i.i10, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i10

RTYPEDDATA_GET_DATA.exit.i.i10:                   ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.f ], [ %i.ae, %bb.e ] ; 2 uses
  %i.ah = icmp eq i64 %i.ab, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.ah, label %pst_status.exit, label %.preheader.i.i11, !prof !63

.preheader.i.i11:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i10, %bb.g
  %.015.i.i12 = phi ptr [ %i.aj, %bb.g ], [ %i.ac, %RTYPEDDATA_GET_DATA.exit.i.i10 ] ; 2 uses
  %.not.i.i13 = icmp eq ptr %.015.i.i12, null
  br i1 %.not.i.i13, label %.critedge.i.i8, label %bb.g

bb.g:                                             ; preds = %.preheader.i.i11
  %i.ai = getelementptr i8, ptr %.015.i.i12, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, @rb_process_status_type
  br i1 %i.ak, label %pst_status.exit, label %.preheader.i.i11, !llvm.loop !1

.critedge.i.i8:                                   ; preds = %.preheader.i.i11, %rbimpl_RB_TYPE_P_fastpath.exit.i.i6, %pst_pid.exit
  %i.al = phi i32 [ %i.v, %pst_pid.exit ], [ %i.w, %rbimpl_RB_TYPE_P_fastpath.exit.i.i6 ], [ %i.w, %.preheader.i.i11 ]
  %i.am = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_status.exit

pst_status.exit:                                  ; preds = %bb.g, %RTYPEDDATA_GET_DATA.exit.i.i10, %.critedge.i.i8
  %i.an = phi i32 [ %i.al, %.critedge.i.i8 ], [ %i.w, %RTYPEDDATA_GET_DATA.exit.i.i10 ], [ %i.w, %bb.g ]
  %.1.i.i9 = phi ptr [ %i.am, %.critedge.i.i8 ], [ %i.ag, %RTYPEDDATA_GET_DATA.exit.i.i10 ], [ %i.ag, %bb.g ]
  %i.ao = getelementptr i8, ptr %.1.i.i9, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !57
  %i.aq = tail call i64 @rb_str_buf_new(i64 noundef 0) #26 ; 3 uses
  %i.ar = sext i32 %i.an to i64
  %i.as = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.aq, ptr noundef nonnull @.str.239, i64 noundef %i.ar) #26 ; 0 uses
  %i.at = tail call fastcc i64 @pst_message_status(i64 noundef %i.aq, i32 noundef %i.ap) ; 0 uses
  ret i64 %i.aq
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @pst_inspect(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c                         ; 4 uses
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.p, label %pst_pid.exit.thread, label %.preheader.i.i, !prof !63

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq ptr %i.r, @rb_process_status_type
  br i1 %i.s, label %pst_pid.exit, label %.preheader.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_pid.exit

pst_pid.exit:                                     ; preds = %bb.d, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %bb.d ]
  %i.u = load i32, ptr %.1.i.i, align 4, !tbaa !56 ; 3 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.e, label %bb.k

pst_pid.exit.thread:                              ; preds = %RTYPEDDATA_GET_DATA.exit.i.i
  %i.v = load i32, ptr %i.o, align 4, !tbaa !56   ; 2 uses
  %.not25 = icmp eq i32 %i.v, 0
  br i1 %.not25, label %.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i12

bb.e:                                             ; preds = %pst_pid.exit
  br i1 %i.d, label %bb.f, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.e
  %.pre = inttoptr i64 %0 to ptr
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %pst_pid.exit.thread
  %.pre-phi = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.e, %pst_pid.exit.thread ]
  %i.w = getelementptr i8, ptr %.pre-phi, i64 8
  br label %rb_class_of.exit

bb.f:                                             ; preds = %bb.e
  switch i64 %0, label %bb.i [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.g
    i64 20, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %rb_class_of.exit

bb.h:                                             ; preds = %bb.f
  br label %rb_class_of.exit

bb.i:                                             ; preds = %bb.f
  %i.x = trunc i64 %0 to i1
  br i1 %i.x, label %rb_class_of.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = and i64 %0, 254
  %i.z = icmp eq i64 %i.y, 12
  %spec.select.i = select i1 %i.z, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %.thread, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.in.i = phi ptr [ %i.w, %.thread ], [ @rb_cNilClass, %bb.g ], [ @rb_cTrueClass, %bb.h ], [ @rb_cFalseClass, %bb.f ], [ @rb_cInteger, %bb.i ], [ %spec.select.i, %bb.j ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !50
  %i.aa = tail call ptr @rb_class2name(i64 noundef %.0.i) #26
  %i.ab = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.240, ptr noundef %i.aa) #26
  br label %bb.u

bb.k:                                             ; preds = %pst_pid.exit
  br i1 %i.d, label %.critedge.i.i14, label %.rbimpl_RB_TYPE_P_fastpath.exit.i.i12_crit_edge, !prof !134

.rbimpl_RB_TYPE_P_fastpath.exit.i.i12_crit_edge:  ; preds = %bb.k
  %.pre30 = inttoptr i64 %0 to ptr
  br label %rbimpl_RB_TYPE_P_fastpath.exit.i.i12

rbimpl_RB_TYPE_P_fastpath.exit.i.i12:             ; preds = %.rbimpl_RB_TYPE_P_fastpath.exit.i.i12_crit_edge, %pst_pid.exit.thread
  %.pre-phi31 = phi ptr [ %.pre30, %.rbimpl_RB_TYPE_P_fastpath.exit.i.i12_crit_edge ], [ %i.e, %pst_pid.exit.thread ] ; 4 uses
  %i.ac = phi i32 [ %i.u, %.rbimpl_RB_TYPE_P_fastpath.exit.i.i12_crit_edge ], [ %i.v, %pst_pid.exit.thread ] ; 4 uses
  %i.ad = load i64, ptr %.pre-phi31, align 8, !tbaa !67
  %i.ae = and i64 %i.ad, 95
  %or.cond.not.i.i13 = icmp eq i64 %i.ae, 76
  br i1 %or.cond.not.i.i13, label %bb.l, label %.critedge.i.i14, !prof !68

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i12
  %i.af = getelementptr i8, ptr %.pre-phi31, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !53 ; 2 uses
  %i.ah = and i64 %i.ag, -2                       ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = trunc i64 %i.ag to i1
  %i.ak = getelementptr i8, ptr %.pre-phi31, i64 32 ; 2 uses
  br i1 %i.aj, label %RTYPEDDATA_GET_DATA.exit.i.i16, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i16

RTYPEDDATA_GET_DATA.exit.i.i16:                   ; preds = %bb.m, %bb.l
  %i.am = phi ptr [ %i.al, %bb.m ], [ %i.ak, %bb.l ] ; 2 uses
  %i.an = icmp eq i64 %i.ah, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.an, label %pst_status.exit.thread, label %.preheader.i.i17, !prof !63

pst_status.exit.thread:                           ; preds = %RTYPEDDATA_GET_DATA.exit.i.i16
  %i.ao = getelementptr i8, ptr %i.am, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !57
  br label %bb.o

.preheader.i.i17:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i16, %bb.n
  %.015.i.i18 = phi ptr [ %i.ar, %bb.n ], [ %i.ai, %RTYPEDDATA_GET_DATA.exit.i.i16 ] ; 2 uses
  %.not.i.i19 = icmp eq ptr %.015.i.i18, null
  br i1 %.not.i.i19, label %.critedge.i.i14, label %bb.n

bb.n:                                             ; preds = %.preheader.i.i17
  %i.aq = getelementptr i8, ptr %.015.i.i18, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73 ; 2 uses
  %i.as = icmp eq ptr %i.ar, @rb_process_status_type
  br i1 %i.as, label %pst_status.exit, label %.preheader.i.i17, !llvm.loop !1

.critedge.i.i14:                                  ; preds = %.preheader.i.i17, %rbimpl_RB_TYPE_P_fastpath.exit.i.i12, %bb.k
  %i.at = phi i32 [ %i.u, %bb.k ], [ %i.ac, %rbimpl_RB_TYPE_P_fastpath.exit.i.i12 ], [ %i.ac, %.preheader.i.i17 ]
  %i.au = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_status.exit

pst_status.exit:                                  ; preds = %bb.n, %.critedge.i.i14
  %i.av = phi i32 [ %i.at, %.critedge.i.i14 ], [ %i.ac, %bb.n ] ; 6 uses
  %.1.i.i15 = phi ptr [ %i.au, %.critedge.i.i14 ], [ %i.am, %bb.n ]
  %i.aw = getelementptr i8, ptr %.1.i.i15, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !57 ; 6 uses
  br i1 %i.d, label %bb.p, label %pst_status.exit._crit_edge

pst_status.exit._crit_edge:                       ; preds = %pst_status.exit
  %.pre28 = inttoptr i64 %0 to ptr
  br label %bb.o

bb.o:                                             ; preds = %pst_status.exit._crit_edge, %pst_status.exit.thread
  %.pre-phi29 = phi ptr [ %.pre28, %pst_status.exit._crit_edge ], [ %.pre-phi31, %pst_status.exit.thread ]
  %i.ay = phi i32 [ %i.ax, %pst_status.exit._crit_edge ], [ %i.ap, %pst_status.exit.thread ]
  %i.az = phi i32 [ %i.av, %pst_status.exit._crit_edge ], [ %i.ac, %pst_status.exit.thread ]
  %i.ba = getelementptr i8, ptr %.pre-phi29, i64 8
  br label %rb_class_of.exit23

bb.p:                                             ; preds = %pst_status.exit
  switch i64 %0, label %bb.s [
    i64 0, label %rb_class_of.exit23
    i64 4, label %bb.q
    i64 20, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  br label %rb_class_of.exit23

bb.r:                                             ; preds = %bb.p
  br label %rb_class_of.exit23

bb.s:                                             ; preds = %bb.p
  %i.bb = trunc i64 %0 to i1
  br i1 %i.bb, label %rb_class_of.exit23, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = and i64 %0, 254
  %i.bd = icmp eq i64 %i.bc, 12
  %spec.select.i22 = select i1 %i.bd, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit23

rb_class_of.exit23:                               ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %i.be = phi i32 [ %i.ay, %bb.o ], [ %i.ax, %bb.q ], [ %i.ax, %bb.r ], [ %i.ax, %bb.p ], [ %i.ax, %bb.s ], [ %i.ax, %bb.t ]
  %i.bf = phi i32 [ %i.az, %bb.o ], [ %i.av, %bb.q ], [ %i.av, %bb.r ], [ %i.av, %bb.p ], [ %i.av, %bb.s ], [ %i.av, %bb.t ]
  %.0.in.i20 = phi ptr [ %i.ba, %bb.o ], [ @rb_cNilClass, %bb.q ], [ @rb_cTrueClass, %bb.r ], [ @rb_cFalseClass, %bb.p ], [ @rb_cInteger, %bb.s ], [ %spec.select.i22, %bb.t ]
  %.0.i21 = load i64, ptr %.0.in.i20, align 8, !tbaa !50
  %i.bg = tail call ptr @rb_class2name(i64 noundef %.0.i21) #26
  %i.bh = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.241, ptr noundef %i.bg) #26 ; 4 uses
  %i.bi = sext i32 %i.bf to i64
  %i.bj = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.bh, ptr noundef nonnull @.str.239, i64 noundef %i.bi) #26 ; 0 uses
  %i.bk = tail call fastcc i64 @pst_message_status(i64 noundef %i.bh, i32 noundef %i.be) ; 0 uses
  %i.bl = tail call i64 @rb_str_cat(i64 noundef %i.bh, ptr noundef nonnull @.str.242, i64 noundef 1) #26 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %rb_class_of.exit23, %rb_class_of.exit
  %.0 = phi i64 [ %i.bh, %rb_class_of.exit23 ], [ %i.ab, %rb_class_of.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @pst_pid_m(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.p, label %pst_pid.exit, label %.preheader.i.i, !prof !63

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq ptr %i.r, @rb_process_status_type
  br i1 %i.s, label %pst_pid.exit, label %.preheader.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_pid.exit

pst_pid.exit:                                     ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = load i32, ptr %.1.i.i, align 4, !tbaa !56
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 1
  %i.x = or disjoint i64 %i.w, 1
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @pst_wifstopped(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.p, label %pst_status.exit, label %.preheader.i.i, !prof !63

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq ptr %i.r, @rb_process_status_type
  br i1 %i.s, label %pst_status.exit, label %.preheader.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_status.exit

pst_status.exit:                                  ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57
  %i.w = and i32 %i.v, 255
  %i.x = icmp eq i32 %i.w, 127
  %i.y = select i1 %i.x, i64 20, i64 0
  ret i64 %i.y
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 512) i64 @pst_wstopsig(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.p, label %pst_status.exit, label %.preheader.i.i, !prof !63

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq ptr %i.r, @rb_process_status_type
  br i1 %i.s, label %pst_status.exit, label %.preheader.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_status.exit

pst_status.exit:                                  ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57   ; 2 uses
  %i.w = and i32 %i.v, 255
  %i.x = icmp eq i32 %i.w, 127
  %i.y = lshr i32 %i.v, 7
  %i.z = and i32 %i.y, 510
  %i.aa = or disjoint i32 %i.z, 1
  %narrow = select i1 %i.x, i32 %i.aa, i32 4
  %.0 = zext nneg i32 %narrow to i64
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @pst_wifsignaled(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
end_hunk_2
begin_hunk_3_@pst_wifexited:bb.a

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_status.exit

pst_status.exit:                                  ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57
  %i.w = and i32 %i.v, 127
  %i.x = icmp eq i32 %i.w, 0
  %i.y = select i1 %i.x, i64 20, i64 0
  ret i64 %i.y
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 512) i64 @pst_wexitstatus(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.p, label %pst_status.exit, label %.preheader.i.i, !prof !63

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq ptr %i.r, @rb_process_status_type
  br i1 %i.s, label %pst_status.exit, label %.preheader.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_status.exit

pst_status.exit:                                  ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57   ; 2 uses
  %i.w = and i32 %i.v, 127
  %i.x = icmp eq i32 %i.w, 0
  %i.y = lshr i32 %i.v, 7
  %i.z = and i32 %i.y, 510
  %i.aa = or disjoint i32 %i.z, 1
  %narrow = select i1 %i.x, i32 %i.aa, i32 4
  %.0 = zext nneg i32 %narrow to i64
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @pst_success_p(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.p, label %pst_status.exit, label %.preheader.i.i, !prof !63

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq ptr %i.r, @rb_process_status_type
  br i1 %i.s, label %pst_status.exit, label %.preheader.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_status.exit

pst_status.exit:                                  ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57   ; 2 uses
  %i.w = and i32 %i.v, 127
  %i.x = icmp eq i32 %i.w, 0
  %i.y = and i32 %i.v, 65280
  %i.z = icmp eq i32 %i.y, 0
  %i.aa = select i1 %i.z, i64 20, i64 0
  %.0 = select i1 %i.x, i64 %i.aa, i64 4
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @pst_wcoredump(i64 noundef %0) #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !68

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @rb_process_status_type to i64)
  br i1 %i.p, label %pst_status.exit, label %.preheader.i.i, !prof !63

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.015.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.015.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.015.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq ptr %i.r, @rb_process_status_type
  br i1 %i.s, label %pst_status.exit, label %.preheader.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @rb_process_status_type) #26
  br label %pst_status.exit

pst_status.exit:                                  ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57
  %i.w = and i32 %i.v, 128
  %.not = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not, i64 0, i64 20
  ret i64 %i.x
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @proc_get_pid(i64 %0) #1 {
bb.a:
  %i.a = load i32, ptr @cached_pid, align 4, !tbaa !13 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %get_pid.exit, !prof !94

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @getpid() #26              ; 2 uses
  store i32 %i.b, ptr @cached_pid, align 4, !tbaa !13
  br label %get_pid.exit

get_pid.exit:                                     ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 1
  %i.f = or disjoint i64 %i.e, 1
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @proc_get_ppid(i64 %0) #1 {
bb.a:
  %i.a = tail call i32 @getppid() #26
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 1
  %i.d = or disjoint i64 %i.c, 1
  ret i64 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @proc_getpgrp(i64 %0) #1 {
bb.a:
  %i.a = tail call i32 @getpgid(i32 noundef 0) #26 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_errno_ptr() #26
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.d, ptr noundef null) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = shl nuw i32 %i.a, 1
  %i.f = or disjoint i32 %i.e, 1
  %i.g = zext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @proc_setpgrp(i64 %0) #1 {
bb.a:
  %i.a = tail call i32 @setpgid(i32 noundef 0, i32 noundef 0) #26
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_errno_ptr() #26
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.d, ptr noundef null) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  ret i64 1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @proc_getpgid(i64 %0, i64 noundef %1) #1 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_fix2int(i64 noundef %1) #26
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2int(i64 noundef %1) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.d = trunc i64 %.0.i to i32
  %i.e = tail call i32 @getpgid(i32 noundef %i.d) #26 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2int_inline.exit
  %i.g = tail call ptr @rb_errno_ptr() #26
  %i.h = load i32, ptr %i.g, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.h, ptr noundef null) #28
  unreachable

bb.e:                                             ; preds = %rb_num2int_inline.exit
  %i.i = shl nuw i32 %i.e, 1
  %i.j = or disjoint i32 %i.i, 1
  %i.k = zext i32 %i.j to i64
  ret i64 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @proc_setpgid(i64 %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_fix2int(i64 noundef %1) #26
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2int(i64 noundef %1) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.d = trunc i64 %.0.i to i32
  %i.e = trunc i64 %2 to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2int_inline.exit
  %i.f = tail call i64 @rb_fix2int(i64 noundef %2) #26
  br label %rb_num2int_inline.exit6

bb.e:                                             ; preds = %rb_num2int_inline.exit
  %i.g = tail call i64 @rb_num2int(i64 noundef %2) #26
  br label %rb_num2int_inline.exit6

rb_num2int_inline.exit6:                          ; preds = %bb.d, %bb.e
  %.0.i5 = phi i64 [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  %i.h = trunc i64 %.0.i5 to i32
  %i.i = tail call i32 @setpgid(i32 noundef %i.d, i32 noundef %i.h) #26
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_num2int_inline.exit6
  %i.k = tail call ptr @rb_errno_ptr() #26
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.l, ptr noundef null) #28
  unreachable

bb.g:                                             ; preds = %rb_num2int_inline.exit6
  ret i64 1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @proc_getsid(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #1 {
bb.a:
  %or.cond.not = icmp ult i32 %0, 2
  br i1 %or.cond.not, label %rb_check_arity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #28
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.c, label %bb.g

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = load i64, ptr %1, align 8, !tbaa !50     ; 4 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = trunc i64 %i.b to i1
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i64 @rb_fix2int(i64 noundef %i.b) #26
  br label %rb_num2int_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.f = tail call i64 @rb_num2int(i64 noundef %i.b) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.e, %bb.e ], [ %i.f, %bb.f ]
  %i.g = trunc i64 %.0.i to i32
  br label %bb.g

bb.g:                                             ; preds = %rb_num2int_inline.exit, %bb.c, %rb_check_arity.exit
  %.0 = phi i32 [ 0, %bb.c ], [ %i.g, %rb_num2int_inline.exit ], [ 0, %rb_check_arity.exit ]
  %i.h = tail call i32 @getsid(i32 noundef %.0) #26 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @rb_errno_ptr() #26
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.k, ptr noundef null) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = shl nuw i32 %i.h, 1
  %i.m = or disjoint i32 %i.l, 1
  %i.n = zext i32 %i.m to i64
  ret i64 %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @proc_setsid(i64 %0) #1 {
bb.a:
  %i.a = tail call i32 @setsid() #26              ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @rb_errno_ptr() #26
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.d, ptr noundef null) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = shl nuw i32 %i.a, 1
  %i.f = or disjoint i32 %i.e, 1
  %i.g = zext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @proc_getpriority(i64 %0, i64 noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_fix2int(i64 noundef %1) #26
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2int(i64 noundef %1) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.d = trunc i64 %.0.i to i32
  %i.e = trunc i64 %2 to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2int_inline.exit
  %i.f = tail call i64 @rb_fix2int(i64 noundef %2) #26
  br label %rb_num2int_inline.exit7

bb.e:                                             ; preds = %rb_num2int_inline.exit
  %i.g = tail call i64 @rb_num2int(i64 noundef %2) #26
  br label %rb_num2int_inline.exit7

rb_num2int_inline.exit7:                          ; preds = %bb.d, %bb.e
  %.0.i6 = phi i64 [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  %i.h = trunc i64 %.0.i6 to i32
  %i.i = tail call ptr @rb_errno_ptr() #26
  store i32 0, ptr %i.i, align 4, !tbaa !13
  %i.j = tail call i32 @getpriority(i32 noundef %i.d, i32 noundef %i.h) #26
  %i.k = tail call ptr @rb_errno_ptr() #26
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_num2int_inline.exit7
  %i.m = tail call ptr @rb_errno_ptr() #26
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.n, ptr noundef null) #28
  unreachable

bb.g:                                             ; preds = %rb_num2int_inline.exit7
  %i.o = sext i32 %i.j to i64
  %i.p = shl nsw i64 %i.o, 1
  %i.q = or disjoint i64 %i.p, 1
  ret i64 %i.q
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @proc_setpriority(i64 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #1 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_fix2int(i64 noundef %1) #26
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2int(i64 noundef %1) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.d = trunc i64 %.0.i to i32
  %i.e = trunc i64 %2 to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rb_num2int_inline.exit
  %i.f = tail call i64 @rb_fix2int(i64 noundef %2) #26
  br label %rb_num2int_inline.exit8

bb.e:                                             ; preds = %rb_num2int_inline.exit
  %i.g = tail call i64 @rb_num2int(i64 noundef %2) #26
  br label %rb_num2int_inline.exit8

rb_num2int_inline.exit8:                          ; preds = %bb.d, %bb.e
  %.0.i7 = phi i64 [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  %i.h = trunc i64 %.0.i7 to i32
  %i.i = trunc i64 %3 to i1
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_num2int_inline.exit8
  %i.j = tail call i64 @rb_fix2int(i64 noundef %3) #26
  br label %rb_num2int_inline.exit10

bb.g:                                             ; preds = %rb_num2int_inline.exit8
  %i.k = tail call i64 @rb_num2int(i64 noundef %3) #26
  br label %rb_num2int_inline.exit10

rb_num2int_inline.exit10:                         ; preds = %bb.f, %bb.g
  %.0.i9 = phi i64 [ %i.j, %bb.f ], [ %i.k, %bb.g ]
  %i.l = trunc i64 %.0.i9 to i32
  %i.m = tail call i32 @setpriority(i32 noundef %i.d, i32 noundef %i.h, i32 noundef %i.l) #26
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_num2int_inline.exit10
  %i.o = tail call ptr @rb_errno_ptr() #26
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.p, ptr noundef null) #28
  unreachable

bb.i:                                             ; preds = %rb_num2int_inline.exit10
  ret i64 1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @proc_warmup(i64 %0) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !114
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.b, %bb.a
  call void @rb_gc_prepare_heap() #26
  %i.c = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !114
  %.not.i.i1 = icmp eq ptr %i.c, null
  br i1 %.not.i.i1, label %bb.c, label %rb_vm_lock_leave.exit

bb.c:                                             ; preds = %rb_vm_lock_enter.exit
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.a) #26
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %rb_vm_lock_enter.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 20
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @proc_getrlimit(i64 %0, i64 noundef %1) #1 {
bb.a:
  %2 = alloca %struct.rlimit, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = tail call fastcc i32 @rlimit_resource_type(i64 noundef %1)
  %i.b = call i32 @getrlimit(i32 noundef %i.a, ptr noundef nonnull %2) #26
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @rb_errno_ptr() #26
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  call void @rb_syserr_fail(i32 noundef %i.e, ptr noundef nonnull @.str.74) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %2, align 8, !tbaa !112    ; 3 uses
  %i.g = icmp ult i64 %i.f, 4611686018427387904
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw nsw i64 %i.f, 1
  %i.i = or disjoint i64 %i.h, 1
  br label %rb_ulong2num_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.j = call i64 @rb_uint2big(i64 noundef %i.f) #26
  br label %rb_ulong2num_inline.exit

rb_ulong2num_inline.exit:                         ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.i, %bb.d ], [ %i.j, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !113  ; 3 uses
  %i.m = icmp ult i64 %i.l, 4611686018427387904
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_ulong2num_inline.exit
  %i.n = shl nuw nsw i64 %i.l, 1
  %i.o = or disjoint i64 %i.n, 1
  br label %rb_ulong2num_inline.exit3

bb.g:                                             ; preds = %rb_ulong2num_inline.exit
  %i.p = call i64 @rb_uint2big(i64 noundef %i.l) #26
  br label %rb_ulong2num_inline.exit3

rb_ulong2num_inline.exit3:                        ; preds = %bb.f, %bb.g
  %.0.i2 = phi i64 [ %i.o, %bb.f ], [ %i.p, %bb.g ]
  %i.q = call i64 @rb_assoc_new(i64 noundef %.0.i, i64 noundef %.0.i2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret i64 %i.q
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @proc_setrlimit(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #1 {
bb.a:
  %3 = alloca %struct.rlimit, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = add i32 %0, -4
  %or.cond = icmp ult i32 %i.a, -2
  br i1 %or.cond, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@proc_getgroups:bb.a
  %i.p = call i32 @getgroups(i32 noundef %i.b, ptr noundef nonnull %i.o) #26 ; 3 uses
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @rb_errno_ptr() #26
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13
  call void @rb_syserr_fail(i32 noundef %i.s, ptr noundef null) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = call i64 @rb_ary_new() #26               ; 2 uses
  %i.u = icmp sgt i32 %i.p, 0
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !13
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 1
  %i.z = or disjoint i64 %i.y, 1
  %i.aa = call i64 @rb_ary_push(i64 noundef %i.t, i64 noundef %i.z) #26 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !222

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @proc_setgroups(i64 %0, i64 noundef %1) #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !50
  %i.c = icmp eq i64 %1, 0
  %i.d = and i64 %1, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !66

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.g = inttoptr i64 %1 to ptr                   ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 3 uses
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 7
  br i1 %i.j, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !224

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  tail call void @rb_unexpected_type(i64 noundef %1, i32 noundef 7) #33
  unreachable

Check_Type.exit:                                  ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.k = and i64 %i.h, 8192
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %Check_Type.exit
  %i.l = lshr i64 %i.h, 15
  %i.m = and i64 %i.l, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %Check_Type.exit
  %i.n = getelementptr i8, ptr %i.g, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !65
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.m, %bb.b ], [ %i.o, %bb.c ] ; 10 uses
  %i.p = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.p, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #33
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.q = trunc nsw i64 %.0.i.i to i32             ; 2 uses
  %i.r = load i32, ptr @_maxgroups, align 4, !tbaa !13 ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %maxgroups.exit

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  %i.t = tail call i64 @sysconf(i32 noundef 3) #26
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  %spec.store.select.i = select i1 %i.v, i32 65536, i32 %i.u ; 2 uses
  store i32 %spec.store.select.i, ptr @_maxgroups, align 4
  br label %maxgroups.exit

maxgroups.exit:                                   ; preds = %RARRAY_LENINT.exit, %bb.e
  %i.w = phi i32 [ %spec.store.select.i, %bb.e ], [ %i.r, %RARRAY_LENINT.exit ]
  %i.x = icmp slt i32 %i.w, %i.q
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %maxgroups.exit
  %i.y = load i64, ptr @rb_eArgError, align 8, !tbaa !50
  %i.z = tail call fastcc i32 @maxgroups()
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.248, i32 noundef %i.z) #28
  unreachable

bb.g:                                             ; preds = %maxgroups.exit
  %i.aa = icmp ult i64 %.0.i.i, 256
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.a, align 8, !tbaa !50
  %i.ab = shl nuw nsw i64 %.0.i.i, 2
  %i.ac = alloca i8, i64 %i.ab, align 16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ad = icmp ugt i64 %.0.i.i, 4611686018427387903
  br i1 %i.ad, label %bb.j, label %rb_alloc_tmp_buffer2.exit, !prof !94

bb.j:                                             ; preds = %bb.i
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, 2147483648) %.0.i.i, i64 noundef range(i64 -2147483648, 2147483648) 4) #28
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.i
  %i.ae = shl nuw nsw i64 %.0.i.i, 2              ; 2 uses
  %i.af = add nuw nsw i64 %i.ae, 4
  %i.ag = lshr i64 %i.af, 3
  %i.ah = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.ae, i64 noundef %i.ag) #29
  br label %bb.k

bb.k:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.h
  %i.ai = phi ptr [ %i.ac, %bb.h ], [ %i.ah, %rb_alloc_tmp_buffer2.exit ] ; 2 uses
  %.not28 = icmp eq i64 %.0.i.i, 0
  br i1 %.not28, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.g, i64 16
  %i.ak = getelementptr i8, ptr %i.g, i64 32
  %smax = call i32 @llvm.smax.i32(i32 %i.q, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %RARRAY_AREF.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %RARRAY_AREF.exit ] ; 3 uses
  %i.al = load i64, ptr %i.g, align 8, !tbaa !67
  %i.am = and i64 %i.al, 8192
  %.not.i.i20 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i20, label %bb.m, label %RARRAY_AREF.exit

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !65
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.l, %bb.m
  %.0.i.i21 = phi ptr [ %i.an, %bb.m ], [ %i.aj, %bb.l ]
  %i.ao = getelementptr [8 x i8], ptr %.0.i.i21, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !50
  %i.aq = call fastcc i32 @obj2gid(i64 noundef %i.ap, ptr noundef %i.b)
  %i.ar = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !223

._crit_edge:                                      ; preds = %RARRAY_AREF.exit
  %.pre = load i64, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %.not = icmp eq i64 %.pre, 0
  br i1 %.not, label %._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.as = call i64 @rb_str_resize(i64 noundef %.pre, i64 noundef 0) #26 ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.k, %._crit_edge, %bb.n
  %i.at = call i32 @setgroups(i64 noundef %.0.i.i, ptr noundef nonnull %i.ai) #26
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.thread
  %i.av = call ptr @rb_errno_ptr() #26
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !13
  call void @rb_syserr_fail(i32 noundef %i.aw, ptr noundef null) #28
  unreachable

bb.p:                                             ; preds = %._crit_edge.thread
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #26
  %i.ax = call i64 @proc_getgroups(i64 poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i64 %i.ax
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @proc_getmaxgroups(i64 %0) #1 {
bb.a:
  %i.a = load i32, ptr @_maxgroups, align 4, !tbaa !13 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %maxgroups.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @sysconf(i32 noundef 3) #26
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %spec.store.select.i = select i1 %i.e, i32 65536, i32 %i.d ; 2 uses
  store i32 %spec.store.select.i, ptr @_maxgroups, align 4
  br label %maxgroups.exit

maxgroups.exit:                                   ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %spec.store.select.i, %bb.b ], [ %i.a, %bb.a ]
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 1
  %i.i = or disjoint i64 %i.h, 1
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 8589934592) i64 @proc_setmaxgroups(i64 %0, i64 noundef %1) #1 {
bb.a:
  %i.a = tail call i64 @rb_fix2int(i64 noundef %1) #26
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = tail call i64 @sysconf(i32 noundef 3) #26
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr @rb_eArgError, align 8, !tbaa !50
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.e, ptr noundef nonnull @.str.249, i32 noundef %i.b) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i64 %i.c to i32                    ; 2 uses
  %i.g = tail call i32 @llvm.umin.i32(i32 %i.b, i32 65536) ; 2 uses
  %i.h = icmp sgt i32 %i.f, 0
  %i.i = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.f)
  %.0 = select i1 %i.h, i32 %i.i, i32 %i.g        ; 2 uses
  store i32 %.0, ptr @_maxgroups, align 4, !tbaa !13
  %i.j = zext nneg i32 %.0 to i64
  %i.k = shl nuw nsw i64 %i.j, 1
  %i.l = or disjoint i64 %i.k, 1
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @proc_daemon(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #1 {
bb.a:
  %or.cond = icmp ugt i32 %0, 2
  br i1 %or.cond, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #28
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  switch i32 %0, label %bb.g [
    i32 2, label %bb.c
    i32 1, label %bb.e
  ]

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @rb_bool_expected(i64 noundef %i.b, ptr noundef nonnull @.str.250, i32 noundef 1) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %rb_check_arity.exit
  %.0 = phi i32 [ 0, %rb_check_arity.exit ], [ %i.d, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @rb_bool_expected(i64 noundef %i.e, ptr noundef nonnull @.str.251, i32 noundef 1) #26
  %i.h = icmp eq i32 %i.g, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %rb_check_arity.exit
  %.09 = phi i1 [ true, %rb_check_arity.exit ], [ %i.h, %bb.f ], [ true, %bb.e ]
  %.1 = phi i32 [ 0, %rb_check_arity.exit ], [ %.0, %bb.f ], [ %.0, %bb.e ]
  %i.i = load i64, ptr @rb_stdout, align 8, !tbaa !50
  %i.j = tail call i64 @rb_io_flush(i64 noundef %i.i) #26 ; 0 uses
  %i.k = load i64, ptr @rb_stderr, align 8, !tbaa !50
  %i.l = tail call i64 @rb_io_flush(i64 noundef %i.k) #26 ; 0 uses
  %i.m = tail call i32 @rb_fork_ruby(ptr noundef null)
  switch i32 %i.m, label %bb.h [
    i32 -1, label %rb_daemon.exit.thread
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @_exit(i32 noundef 0) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.n = tail call i32 @setsid() #26              ; 0 uses
  br i1 %.09, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 @chdir(ptr noundef nonnull @.str.252) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i = phi i32 [ 0, %bb.i ], [ %i.o, %bb.j ]   ; 2 uses
  %.not12.i = icmp eq i32 %.1, 0
  br i1 %.not12.i, label %bb.l, label %rb_daemon.exit

bb.l:                                             ; preds = %bb.k
  %i.p = tail call i32 @rb_cloexec_open(ptr noundef nonnull @ruby_null_device, i32 noundef 2, i32 noundef 0) #26 ; 7 uses
  %.not13.i = icmp eq i32 %i.p, -1
  br i1 %.not13.i, label %rb_daemon.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @rb_update_max_fd(i32 noundef %i.p) #26
  %i.q = tail call i32 @dup2(i32 noundef %i.p, i32 noundef 0) #26 ; 0 uses
  %i.r = tail call i32 @dup2(i32 noundef %i.p, i32 noundef 1) #26 ; 0 uses
  %i.s = tail call i32 @dup2(i32 noundef %i.p, i32 noundef 2) #26 ; 0 uses
  %i.t = icmp sgt i32 %i.p, 2
  br i1 %i.t, label %bb.n, label %rb_daemon.exit

bb.n:                                             ; preds = %bb.m
  %i.u = tail call i32 @close(i32 noundef %i.p) #26 ; 0 uses
  br label %rb_daemon.exit

rb_daemon.exit:                                   ; preds = %bb.k, %bb.l, %bb.m, %bb.n
  %i.v = icmp slt i32 %.0.i, 0
  br i1 %i.v, label %rb_daemon.exit.thread, label %bb.o

rb_daemon.exit.thread:                            ; preds = %bb.g, %rb_daemon.exit
  %i.w = tail call ptr @rb_errno_ptr() #26
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.x, ptr noundef nonnull @.str.107) #28
  unreachable

bb.o:                                             ; preds = %rb_daemon.exit
  %i.y = shl nuw i32 %.0.i, 1
  %i.z = or disjoint i32 %i.y, 1
  %i.aa = zext i32 %i.z to i64
  ret i64 %i.aa
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_clock_gettime(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #1 {
bb.a:
  %3 = alloca %struct.timetick, align 8           ; 19 uses
  %i.a = alloca [2 x i64], align 16               ; 3 uses
  %i.b = alloca [2 x i64], align 16               ; 10 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %5 = alloca %struct.tms, align 8                ; 3 uses
  %6 = alloca %struct.rusage, align 8             ; 7 uses
  %7 = alloca %struct.tms, align 8                ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = add i32 %0, -3
  %or.cond = icmp ult i32 %i.c, -2
  br i1 %or.cond, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #28
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.d = icmp eq i32 %0, 2
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %rb_check_arity.exit, %bb.c
  %i.g = phi i64 [ %i.f, %bb.c ], [ 4, %rb_check_arity.exit ]
  %i.h = load i64, ptr %1, align 8, !tbaa !50     ; 19 uses
  %i.i = and i64 %i.h, 255
  %i.j = icmp eq i64 %i.i, 12
  br i1 %i.j, label %RB_SYMBOL_P.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i64 %i.h, 0
  %i.l = and i64 %i.h, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %RB_SYMBOL_P.exit.thread77, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.e
  %i.o = inttoptr i64 %i.h to ptr
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 20
  br i1 %i.r, label %RB_SYMBOL_P.exit.thread, label %RB_SYMBOL_P.exit.thread77
end_hunk_4
begin_hunk_5_@rlimit_resource_name2int:bb.a
  %i.x = tail call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.220) #27
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.y, label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.z = tail call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.221) #27
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.y, label %.critedge

bb.q:                                             ; preds = %bb.n
  %i.ab = tail call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.222) #27
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.y, label %.critedge

bb.r:                                             ; preds = %bb.a
  switch i64 %1, label %.critedge [
    i64 3, label %bb.s
    i64 6, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.ad = tail call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.223) #27
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.y, label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.af = tail call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.224) #27
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ah = tail call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.225) #27
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.y, label %.critedge

bb.v:                                             ; preds = %bb.a
  switch i64 %1, label %.critedge [
    i64 5, label %bb.w
    i64 10, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %i.aj = tail call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.226) #27
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.y, label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.al = tail call i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull @.str.227) #27
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.e, %bb.c
  %.041 = phi i32 [ 3, %bb.w ], [ 9, %bb.c ], [ 4, %bb.e ], [ 0, %bb.f ], [ 2, %bb.h ], [ 1, %bb.j ], [ 8, %bb.l ], [ 12, %bb.m ], [ 7, %bb.o ], [ 6, %bb.p ], [ 13, %bb.q ], [ 5, %bb.s ], [ 14, %bb.t ], [ 15, %bb.u ], [ 11, %bb.x ] ; 4 uses
  %trunc = trunc nuw i32 %2 to i1
  %.not55 = icmp eq i8 %i.a, 0                    ; 2 uses
  br i1 %trunc, label %.preheader, label %.preheader48

.preheader48:                                     ; preds = %bb.y
  br i1 %.not55, label %.critedge, label %.lr.ph

.preheader:                                       ; preds = %bb.y
  br i1 %.not55, label %.critedge, label %.lr.ph57

bb.z:                                             ; preds = %.lr.ph
  %i.an = getelementptr i8, ptr %.052, i64 1      ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !65  ; 2 uses
  %.not46 = icmp eq i8 %i.ao, 0
  br i1 %.not46, label %.critedge, label %.lr.ph, !llvm.loop !251

.lr.ph:                                           ; preds = %.preheader48, %bb.z
  %i.ap = phi i8 [ %i.ao, %bb.z ], [ %i.a, %.preheader48 ]
  %.052 = phi ptr [ %i.an, %bb.z ], [ %0, %.preheader48 ]
  %i.aq = sext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -91
  %i.as = icmp ult i32 %i.ar, -26
  br i1 %i.as, label %.critedge, label %bb.z

bb.aa:                                            ; preds = %.lr.ph57
  %i.at = getelementptr i8, ptr %.156, i64 1      ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !65  ; 2 uses
  %.not = icmp eq i8 %i.au, 0
  br i1 %.not, label %.critedge, label %.lr.ph57, !llvm.loop !252

.lr.ph57:                                         ; preds = %.preheader, %bb.aa
  %i.av = phi i8 [ %i.au, %bb.aa ], [ %i.a, %.preheader ]
  %.156 = phi ptr [ %i.at, %bb.aa ], [ %0, %.preheader ]
  %i.aw = sext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -123
  %i.ay = icmp ult i32 %i.ax, -26
  br i1 %i.ay, label %.critedge, label %bb.aa

.critedge:                                        ; preds = %.lr.ph, %bb.z, %.lr.ph57, %bb.aa, %.preheader48, %.preheader, %bb.r, %bb.s, %bb.w, %bb.p, %bb.o, %bb.l, %bb.e, %bb.a, %bb.c, %bb.b, %bb.f, %bb.h, %bb.g, %bb.j, %bb.i, %bb.m, %bb.q, %bb.u, %bb.x, %bb.d, %bb.k, %bb.n, %bb.v
  %.042 = phi i32 [ -1, %bb.c ], [ -1, %bb.a ], [ -1, %bb.s ], [ -1, %bb.r ], [ -1, %bb.v ], [ -1, %bb.n ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.d ], [ -1, %bb.p ], [ -1, %bb.x ], [ -1, %bb.w ], [ -1, %bb.u ], [ -1, %bb.o ], [ -1, %bb.q ], [ -1, %bb.e ], [ -1, %bb.m ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.g ], [ -1, %bb.h ], [ %.041, %.preheader48 ], [ -1, %bb.f ], [ -1, %bb.b ], [ %.041, %bb.aa ], [ %.041, %.preheader ], [ -1, %.lr.ph57 ], [ %.041, %bb.z ], [ -1, %.lr.ph ]
  ret i32 %.042
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_st_locale_insensitive_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #12

declare i32 @getpwnam_r(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @getpwuid_r(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_float_new_in_heap(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #23

declare i32 @rb_block_given_p() local_unnamed_addr #3

declare i64 @rb_yield(i64 noundef) #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @pst_message_status(i64 noundef returned %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = and i32 %1, 255
  %i.b = icmp eq i32 %i.a, 127
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %1, 8
  %i.d = and i32 %i.c, 255                        ; 3 uses
  %i.e = tail call ptr @ruby_signal_name(i32 noundef %i.d) #27 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.233, ptr noundef nonnull %i.e, i32 noundef %i.d) #26 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.234, i32 noundef %i.d) #26 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.h = and i32 %1, 127                          ; 5 uses
  %i.i = shl nuw nsw i32 %i.h, 24
  %sext = add nuw i32 %i.i, 16777216
  %i.j = icmp sgt i32 %sext, 33554431
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = tail call ptr @ruby_signal_name(i32 noundef %i.h) #27 ; 2 uses
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.235, ptr noundef nonnull %i.k, i32 noundef %i.h) #26 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.m = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.236, i32 noundef %i.h) #26 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.n = icmp eq i32 %i.h, 0
  br i1 %i.n, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.o = lshr i32 %1, 8
  %i.p = and i32 %i.o, 255
  %i.q = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.237, i32 noundef %i.p) #26 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = and i32 %1, 128
  %.not25 = icmp eq i32 %i.r, 0
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.238, i64 noundef 14) #26 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret i64 %0
}

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @ruby_signal_name(i32 noundef) local_unnamed_addr #12

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #9

declare i64 @rb_fiber_scheduler_kernel_sleepv(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_thread_sleep_forever() local_unnamed_addr #3

declare void @rb_thread_wait_for(i64, i64) local_unnamed_addr #3

declare { i64, i64 } @rb_time_interval(i64 noundef) local_unnamed_addr #3

declare i64 @rb_f_kill(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 3, 4294967296) i64 @proc_wait(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %or.cond = icmp ugt i32 %0, 2
  br i1 %or.cond, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #28
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.c = icmp eq i32 %0, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.d = load i64, ptr %1, align 8, !tbaa !50     ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @rb_fix2int(i64 noundef %i.d) #26
  br label %rb_num2int_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i64 @rb_num2int(i64 noundef %i.d) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  %i.h = trunc i64 %.0.i to i32                   ; 3 uses
  %i.i = icmp eq i32 %0, 2
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %rb_num2int_inline.exit
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i64 @rb_num2uint(i64 noundef %i.k) #26
  %i.n = trunc i64 %i.m to i32
  br label %bb.h

bb.h:                                             ; preds = %rb_num2int_inline.exit, %bb.f, %bb.g, %rb_check_arity.exit
  %.011 = phi i32 [ -1, %rb_check_arity.exit ], [ %i.h, %bb.g ], [ %i.h, %bb.f ], [ %i.h, %rb_num2int_inline.exit ]
  %.1 = phi i32 [ 0, %rb_check_arity.exit ], [ %i.n, %bb.g ], [ 0, %bb.f ], [ 0, %rb_num2int_inline.exit ]
  %i.o = tail call i64 @rb_process_status_wait(i32 noundef %.011, i32 noundef %.1) ; 3 uses
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %..thread_crit_edge, label %bb.i

..thread_crit_edge:                               ; preds = %bb.h
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @rb_check_typeddata(i64 noundef %i.o, ptr noundef nonnull @rb_process_status_type) #26 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !56   ; 4 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %rb_waitpid.exit.thread, label %rb_waitpid.exit

rb_waitpid.exit.thread:                           ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  %i.v = tail call ptr @rb_errno_ptr() #26
  store i32 %i.u, ptr %i.v, align 4, !tbaa !13
  br label %bb.j

rb_waitpid.exit:                                  ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  store volatile ptr %i.x, ptr %i.b, align 8, !tbaa !16
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.z = getelementptr i8, ptr %.val.i.i, i64 216
  store i64 %i.o, ptr %i.z, align 8, !tbaa !49
  %i.aa = icmp slt i32 %i.r, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rb_waitpid.exit.thread, %rb_waitpid.exit
  %i.ab = tail call ptr @rb_errno_ptr() #26
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13
  tail call void @rb_syserr_fail(i32 noundef %i.ac, ptr noundef null) #28
  unreachable

bb.k:                                             ; preds = %rb_waitpid.exit
  %i.ad = icmp eq i32 %i.r, 0
  br i1 %i.ad, label %.thread, label %bb.l

.thread:                                          ; preds = %..thread_crit_edge, %bb.k
  %.pre-phi = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load ptr, ptr %.pre-phi, align 8, !tbaa !16
  store volatile ptr %i.ae, ptr %i.a, align 8, !tbaa !16
  %.0..0..0..0..0..0..0..0..0..0..i.i.i14 = load volatile ptr, ptr %i.a, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i14, i64 48
  %.val.i.i15 = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.ag = getelementptr i8, ptr %.val.i.i15, i64 216
  store i64 4, ptr %i.ag, align 8, !tbaa !49
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = shl nuw i32 %i.r, 1
  %i.ai = or disjoint i32 %i.ah, 1
  %i.aj = zext i32 %i.ai to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  %.0 = phi i64 [ 4, %.thread ], [ %i.aj, %bb.l ]
  ret i64 %.0
}

declare i64 @rb_thread_local_aref(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_equal(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #3

declare ptr @rb_class2name(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @getpgid(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @getsid(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @setsid() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @getpriority(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @rb_gc_prepare_heap() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @rlimit_resource_type(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !50
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %rb_type.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %0, label %bb.c [
    i64 0, label %rb_type.exit.thread
    i64 4, label %rb_type.exit.thread
    i64 20, label %rb_type.exit.thread
    i64 36, label %rb_type.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i1
  br i1 %i.f, label %rb_type.exit.thread15, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %0, 254
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %rb_type.exit.thread13, label %rb_type.exit.thread

rb_type.exit:                                     ; preds = %bb.a
  %i.i = inttoptr i64 %0 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 31
  switch i32 %i.l, label %rb_type.exit.thread [
    i32 20, label %rb_type.exit.thread13
    i32 5, label %bb.g
    i32 21, label %rb_type.exit.thread15
    i32 10, label %rb_type.exit.thread15
  ]

rb_type.exit.thread13:                            ; preds = %bb.d, %rb_type.exit
  %i.m = tail call i64 @rb_sym2str(i64 noundef %0) #26
  %i.n = inttoptr i64 %i.m to ptr                 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67
  %i.p = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %rb_type.exit.thread13
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !65
  br label %RSTRING_PTR.exit
end_hunk_5
