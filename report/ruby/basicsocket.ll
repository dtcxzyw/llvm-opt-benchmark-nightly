inline.NumInlined: 35
inline.NumDeleted: 24
begin_hunk_0_@bsock_do_not_rev_lookup
define internal range(i64 0, 21) i64 @bsock_do_not_rev_lookup(i64 %0) #4 {
bb.a:
  %i.a = load i32, ptr @rsock_do_not_reverse_lookup, align 4, !tbaa !6
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, i64 0, i64 20
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @bsock_do_not_rev_lookup_set(i64 %0, i64 noundef returned %1) #5 {
bb.a:
  %i.a = and i64 %1, -5
  %i.b = icmp ne i64 %i.a, 0
  %i.c = zext i1 %i.b to i32
  store i32 %i.c, ptr @rsock_do_not_reverse_lookup, align 4, !tbaa !6
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @bsock_s_for_fd(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_fix2int(i64 noundef %1) #10
  br label %rb_num2int_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_num2int(i64 noundef %1) #10
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  %i.d = trunc i64 %.0.i to i32                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.e = call i32 @fstat(i32 noundef %i.d, ptr noundef nonnull %2) #10
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %is_socket.exit.i

bb.d:                                             ; preds = %rb_num2int_inline.exit
  %i.g = tail call ptr @rb_errno_ptr() #10
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  tail call void @rb_syserr_fail(i32 noundef %i.h, ptr noundef nonnull @.str.28) #11
  unreachable

is_socket.exit.i:                                 ; preds = %rb_num2int_inline.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !40
  %i.k = and i32 %i.j, 61440
  %.not.i = icmp eq i32 %i.k, 49152
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %is_socket.exit.i
  %i.l = tail call i32 @rb_reserved_fd_p(i32 noundef %i.d) #10
  %.not2.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i, label %rsock_validate_descriptor.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %is_socket.exit.i
  tail call void @rb_syserr_fail(i32 noundef 9, ptr noundef nonnull @.str.27) #11
  unreachable

rsock_validate_descriptor.exit:                   ; preds = %bb.e
  %i.m = tail call i64 @rb_obj_alloc(i64 noundef %0) #10
  %i.n = tail call i64 @rsock_init_sock(i64 noundef %i.m, i32 noundef %i.d) #10 ; 2 uses
  %i.o = tail call i64 @rb_io_taint_check(i64 noundef %i.n) #10
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22
  tail call void @rb_io_check_closed(ptr noundef %i.r) #10
  ret i64 %i.n
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @bsock_close_read(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_io_taint_check(i64 noundef %0) #10
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  tail call void @rb_io_check_closed(ptr noundef %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = tail call i32 @shutdown(i32 noundef %i.f, i32 noundef 0) #10 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 2 uses
  %i.j = and i32 %i.i, 2
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @rb_io_close(i64 noundef %0) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = and i32 %i.i, -2
  store i32 %i.l, ptr %i.h, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 4, %bb.c ], [ %i.k, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal i64 @bsock_close_write(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @rb_io_taint_check(i64 noundef %0) #10
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 3 uses
  tail call void @rb_io_check_closed(ptr noundef %i.d) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %i.g = and i32 %i.f, 1
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_io_close(i64 noundef %0) #10
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !25
  %i.k = tail call i32 @shutdown(i32 noundef %i.j, i32 noundef 1) #10 ; 0 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !43
  %i.m = and i32 %i.l, -3
  store i32 %i.m, ptr %i.e, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 4, %bb.c ], [ %i.h, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @bsock_shutdown(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %.preheader.split.split

.preheader.split.split:                           ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %rb_scan_args_set.exit.thread, label %.split.us

.split.us:                                        ; preds = %.preheader.split.split
  %i.b = load i64, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.c = icmp eq i32 %0, 1
  br i1 %i.c, label %rb_scan_args_set.exit, label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #11
  unreachable

rb_scan_args_set.exit:                            ; preds = %.split.us
  %i.d = icmp eq i64 %i.b, 4
  br i1 %i.d, label %rb_scan_args_set.exit.thread, label %bb.c

bb.c:                                             ; preds = %rb_scan_args_set.exit
  %i.e = tail call i32 @rsock_shutdown_how_arg(i64 noundef %i.b) #10 ; 2 uses
  %or.cond3 = icmp ugt i32 %i.e, 2
  br i1 %or.cond3, label %bb.d, label %rb_scan_args_set.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.30) #11
  unreachable

rb_scan_args_set.exit.thread:                     ; preds = %.preheader.split.split, %rb_scan_args_set.exit, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ 2, %rb_scan_args_set.exit ], [ 2, %.preheader.split.split ]
  %i.g = tail call i64 @rb_io_taint_check(i64 noundef %2) #10
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.j) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !25
  %i.m = tail call i32 @shutdown(i32 noundef %i.l, i32 noundef %.0) #10
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit.thread
  %i.o = tail call ptr @rb_errno_ptr() #10
  %i.p = load i32, ptr %i.o, align 4, !tbaa !6
  tail call void @rb_syserr_fail(i32 noundef %i.p, ptr noundef nonnull @.str.31) #11
  unreachable

bb.f:                                             ; preds = %rb_scan_args_set.exit.thread
  ret i64 1
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @bsock_setsockopt(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = icmp eq i32 %0, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !10
  %.pr.i = load i64, ptr @bsock_setsockopt.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.e = tail call i64 @rb_intern2(ptr noundef nonnull @.str.32, i64 noundef 5) #10 ; 3 uses
  store i64 %i.e, ptr @bsock_setsockopt.rbimpl_id, align 8, !tbaa !10
  %.not.i22 = icmp eq i64 %i.e, 0
  br i1 %.not.i22, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !44

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.b
  %.lcssa.i = phi i64 [ %.pr.i, %bb.b ], [ %i.e, %.lr.ph.i ]
  %i.f = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.d, i64 noundef %.lcssa.i, i32 noundef 0) #10
  %i.g = load i64, ptr %1, align 8, !tbaa !10
  %.pr.i23 = load i64, ptr @bsock_setsockopt.rbimpl_id.33, align 8, !tbaa !10 ; 2 uses
  %.not4.i24 = icmp eq i64 %.pr.i23, 0
  br i1 %.not4.i24, label %.lr.ph.i26, label %rbimpl_intern_const.exit28

.lr.ph.i26:                                       ; preds = %rbimpl_intern_const.exit, %.lr.ph.i26
  %i.h = tail call i64 @rb_intern2(ptr noundef nonnull @.str.34, i64 noundef 7) #10 ; 3 uses
  store i64 %i.h, ptr @bsock_setsockopt.rbimpl_id.33, align 8, !tbaa !10
  %.not.i27 = icmp eq i64 %i.h, 0
  br i1 %.not.i27, label %.lr.ph.i26, label %rbimpl_intern_const.exit28, !llvm.loop !44

rbimpl_intern_const.exit28:                       ; preds = %.lr.ph.i26, %rbimpl_intern_const.exit
  %.lcssa.i25 = phi i64 [ %.pr.i23, %rbimpl_intern_const.exit ], [ %i.h, %.lr.ph.i26 ]
  %i.i = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.g, i64 noundef %.lcssa.i25, i32 noundef 0) #10
  %i.j = load i64, ptr %1, align 8, !tbaa !10
  %.pr.i29 = load i64, ptr @bsock_setsockopt.rbimpl_id.35, align 8, !tbaa !10 ; 2 uses
  %.not4.i30 = icmp eq i64 %.pr.i29, 0
  br i1 %.not4.i30, label %.lr.ph.i32, label %rbimpl_intern_const.exit34

.lr.ph.i32:                                       ; preds = %rbimpl_intern_const.exit28, %.lr.ph.i32
  %i.k = tail call i64 @rb_intern2(ptr noundef nonnull @.str.36, i64 noundef 4) #10 ; 3 uses
  store i64 %i.k, ptr @bsock_setsockopt.rbimpl_id.35, align 8, !tbaa !10
  %.not.i33 = icmp eq i64 %i.k, 0
  br i1 %.not.i33, label %.lr.ph.i32, label %rbimpl_intern_const.exit34, !llvm.loop !44

rbimpl_intern_const.exit34:                       ; preds = %.lr.ph.i32, %rbimpl_intern_const.exit28
  %.lcssa.i31 = phi i64 [ %.pr.i29, %rbimpl_intern_const.exit28 ], [ %i.k, %.lr.ph.i32 ]
  %i.l = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.j, i64 noundef %.lcssa.i31, i32 noundef 0) #10 ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !10
  br label %rb_scan_args_set.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp slt i32 %0, 3
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %1, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !10   ; 2 uses
  store i64 %i.r, ptr %i.a, align 8, !tbaa !10
  %i.s = icmp eq i32 %0, 3
  br i1 %i.s, label %rb_scan_args_set.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 3, i32 noundef 3) #11
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d, %rbimpl_intern_const.exit34
  %i.t = phi i64 [ %i.r, %bb.d ], [ %i.l, %rbimpl_intern_const.exit34 ] ; 7 uses
  %i.u = phi i64 [ %i.p, %bb.d ], [ %i.i, %rbimpl_intern_const.exit34 ]
  %i.v = phi i64 [ %i.n, %bb.d ], [ %i.f, %rbimpl_intern_const.exit34 ]
  %i.w = tail call i64 @rb_io_taint_check(i64 noundef %2) #10
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22   ; 5 uses
  tail call void @rb_io_check_closed(ptr noundef %i.z) #10
  %i.aa = tail call i32 @rsock_getfamily(ptr noundef %i.z) #10 ; 2 uses
  %i.ab = tail call i32 @rsock_level_arg(i32 noundef %i.aa, i64 noundef %i.v) #10 ; 2 uses
  %i.ac = tail call i32 @rsock_optname_arg(i32 noundef %i.aa, i32 noundef %i.ab, i64 noundef %i.u) #10
  %i.ad = icmp eq i64 %i.t, 0
  %i.ae = and i64 %i.t, 7
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %rb_type.exit

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.ah = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 62)
  switch i64 %i.ah, label %bb.g [
    i64 0, label %rb_type.exit.thread40
    i64 1, label %rb_type.exit.thread
    i64 5, label %rb_type.exit.thread42
    i64 9, label %rb_type.exit.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.ai = trunc i64 %i.t to i1
  br i1 %i.ai, label %rb_type.exit.thread38, label %rb_type.exit.thread

rb_type.exit:                                     ; preds = %rb_scan_args_set.exit
  %i.aj = inttoptr i64 %i.t to ptr
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 31
  switch i32 %i.am, label %rb_type.exit.thread [
    i32 21, label %rb_type.exit.thread38
    i32 19, label %rb_type.exit.thread40
    i32 18, label %rb_type.exit.thread42
  ]

rb_type.exit.thread38:                            ; preds = %bb.g, %rb_type.exit
  %i.an = tail call i64 @rb_fix2int(i64 noundef %i.t) #10
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !6
  br label %bb.j

rb_type.exit.thread40:                            ; preds = %bb.f, %rb_type.exit
  store i32 0, ptr %i.b, align 4, !tbaa !6
  br label %bb.j

rb_type.exit.thread42:                            ; preds = %bb.f, %rb_type.exit
  store i32 1, ptr %i.b, align 4, !tbaa !6
  br label %bb.j

rb_type.exit.thread:                              ; preds = %bb.g, %bb.f, %bb.f, %rb_type.exit
  %i.ap = call i64 @rb_string_value(ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !12
  %i.at = and i64 %i.as, 8192
  %.not.i36 = icmp eq i64 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  br i1 %.not.i36, label %RSTRING_PTR.exit, label %bb.h

bb.h:                                             ; preds = %rb_type.exit.thread
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_type.exit.thread, %bb.h
  %i.aw = phi ptr [ %i.av, %bb.h ], [ %i.au, %rb_type.exit.thread ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !19 ; 3 uses
  %i.az = add i64 %i.ay, 2147483648
  %.not.i.i = icmp ult i64 %i.az, 4294967296
  br i1 %.not.i.i, label %RSTRING_LENINT.exit, label %bb.i

bb.i:                                             ; preds = %RSTRING_PTR.exit
  call void @rb_out_of_int(i64 noundef %i.ay) #12
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit
  %i.ba = trunc nsw i64 %i.ay to i32
  br label %bb.j

bb.j:                                             ; preds = %rb_type.exit.thread38, %rb_type.exit.thread40, %rb_type.exit.thread42, %RSTRING_LENINT.exit
  %.020 = phi i32 [ %i.ba, %RSTRING_LENINT.exit ], [ 4, %rb_type.exit.thread42 ], [ 4, %rb_type.exit.thread40 ], [ 4, %rb_type.exit.thread38 ]
  %.0 = phi ptr [ %i.aw, %RSTRING_LENINT.exit ], [ %i.b, %rb_type.exit.thread42 ], [ %i.b, %rb_type.exit.thread40 ], [ %i.b, %rb_type.exit.thread38 ]
  call void @rb_io_check_closed(ptr noundef %i.z) #10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !25
  %i.bd = call i32 @setsockopt(i32 noundef %i.bc, i32 noundef %i.ab, i32 noundef %i.ac, ptr noundef %.0, i32 noundef %.020) #10
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !46
  call void @rsock_sys_fail_path(ptr noundef nonnull @.str.38, i64 noundef %i.bg) #11
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 1
}

; Function Attrs: nounwind uwtable
define internal i64 @bsock_getsockopt(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #10
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 5 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #10
  %i.f = tail call i32 @rsock_getfamily(ptr noundef %i.e) #10 ; 3 uses
  %i.g = tail call i32 @rsock_level_arg(i32 noundef %i.f, i64 noundef %1) #10 ; 3 uses
  %i.h = tail call i32 @rsock_optname_arg(i32 noundef %i.f, i32 noundef %i.g, i64 noundef %2) #10 ; 2 uses
  store i32 256, ptr %i.a, align 4, !tbaa !6
  %i.i = alloca [256 x i8], align 16              ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #10
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !25
  %i.l = call i32 @getsockopt(i32 noundef %i.k, i32 noundef %i.g, i32 noundef %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a) #10
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  call void @rsock_sys_fail_path(ptr noundef nonnull @.str.39, i64 noundef %i.o) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.p = load i32, ptr %i.a, align 4, !tbaa !6
  %i.q = zext i32 %i.p to i64
  %i.r = call i64 @rb_str_new(ptr noundef nonnull %i.i, i64 noundef %i.q) #10
  %i.s = call i64 @rsock_sockopt_new(i32 noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, i64 noundef %i.r) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.s
}

; Function Attrs: nounwind uwtable
define internal i64 @bsock_getsockname(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %union.union_sockaddr, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #10
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = call i32 @getsockname(i32 noundef %i.g, ptr nonnull %1, ptr noundef nonnull %i.a) #10
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @rb_errno_ptr() #10
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.k, ptr noundef nonnull @.str.40) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.m = icmp ugt i32 %i.l, 2048
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %i.l, %bb.c ], [ 2048, %bb.d ]
  %i.o = zext nneg i32 %i.n to i64
  %i.p = call i64 @rb_str_new(ptr noundef nonnull %1, i64 noundef %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define internal i64 @bsock_getpeername(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %union.union_sockaddr, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #10
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = call i32 @getpeername(i32 noundef %i.g, ptr nonnull %1, ptr noundef nonnull %i.a) #10
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @rb_errno_ptr() #10
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.k, ptr noundef nonnull @.str.41) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.a, align 4, !tbaa !6    ; 2 uses
  %i.m = icmp ugt i32 %i.l, 2048
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %i.l, %bb.c ], [ 2048, %bb.d ]
  %i.o = zext nneg i32 %i.n to i64
  %i.p = call i64 @rb_str_new(ptr noundef nonnull %1, i64 noundef %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.p
}

; Function Attrs: nounwind uwtable
define internal i64 @bsock_getpeereid(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %struct.ucred, align 4              ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 12, ptr %i.a, align 4, !tbaa !6
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #10
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = call i32 @getsockopt(i32 noundef %i.g, i32 noundef 1, i32 noundef 17, ptr noundef nonnull %1, ptr noundef nonnull %i.a) #10
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = call ptr @rb_errno_ptr() #10
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  call void @rb_syserr_fail(i32 noundef %i.k, ptr noundef nonnull @.str.42) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !47
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 1
  %i.p = or disjoint i64 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !49
  %i.s = zext i32 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = or disjoint i64 %i.t, 1
  %i.v = call i64 @rb_assoc_new(i64 noundef %i.p, i64 noundef %i.u) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define internal i64 @bsock_local_address(i64 noundef %0) #0 {
bb.a:
  %1 = alloca %union.union_sockaddr, align 8      ; 4 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 2048, ptr %i.a, align 4, !tbaa !6
  %i.b = tail call i64 @rb_io_taint_check(i64 noundef %0) #10
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  tail call void @rb_io_check_closed(ptr noundef %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = call i32 @getsockname(i32 noundef %i.g, ptr nonnull %1, ptr noundef nonnull %i.a) #10
end_hunk_0
