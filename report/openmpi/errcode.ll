inline.NumInlined: 183
inline.NumDeleted: 10
begin_hunk_0_@ompi_mpi_errcode_init:bb.a
.lr.ph.i454:                                      ; preds = %bb.ez, %.lr.ph.i454
  %i.wj = phi ptr [ %i.wl, %.lr.ph.i454 ], [ %i.wi, %bb.ez ]
  %.07.i455 = phi ptr [ %i.wk, %.lr.ph.i454 ], [ %i.wh, %bb.ez ]
  tail call void %i.wj(ptr noundef nonnull @ompi_t_err_invalid_name) #8, !inline_history !24
  %i.wk = getelementptr inbounds nuw i8, ptr %.07.i455, i64 8 ; 2 uses
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !23 ; 2 uses
  %.not.i456 = icmp eq ptr %i.wl, null
  br i1 %.not.i456, label %opal_obj_run_constructors.exit457, label %.lr.ph.i454, !llvm.loop !25

opal_obj_run_constructors.exit457:                ; preds = %.lr.ph.i454, %bb.ez
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @ompi_t_err_invalid_name, i64 16), align 8, !tbaa !8
  store i32 73, ptr getelementptr inbounds nuw (i8, ptr @ompi_t_err_invalid_name, i64 20), align 4, !tbaa !13
  tail call void @opal_string_copy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_t_err_invalid_name, i64 24), ptr noundef nonnull @.str.75, i64 noundef 256) #8
  %i.wm = tail call i32 @opal_pointer_array_set_item(ptr noundef nonnull @ompi_mpi_errcodes, i32 noundef 73, ptr noundef nonnull @ompi_t_err_invalid_name) #8 ; 0 uses
  %i.wn = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !14
  %i.wo = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcode_t_class, i64 32), align 8, !tbaa !15
  %.not78 = icmp eq i32 %i.wn, %i.wo
  br i1 %.not78, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %opal_obj_run_constructors.exit457
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_mpi_errcode_t_class) #8
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %opal_obj_run_constructors.exit457
  store ptr @ompi_mpi_errcode_t_class, ptr @ompi_err_proc_fail_stop, align 8, !tbaa !20
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_proc_fail_stop, i64 8), align 8, !tbaa !21
  %i.wp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcode_t_class, i64 40), align 8, !tbaa !22 ; 2 uses
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !23 ; 2 uses
  %.not6.i458 = icmp eq ptr %i.wq, null
  br i1 %.not6.i458, label %opal_obj_run_constructors.exit462, label %.lr.ph.i459

.lr.ph.i459:                                      ; preds = %bb.fb, %.lr.ph.i459
  %i.wr = phi ptr [ %i.wt, %.lr.ph.i459 ], [ %i.wq, %bb.fb ]
  %.07.i460 = phi ptr [ %i.ws, %.lr.ph.i459 ], [ %i.wp, %bb.fb ]
  tail call void %i.wr(ptr noundef nonnull @ompi_err_proc_fail_stop) #8, !inline_history !24
  %i.ws = getelementptr inbounds nuw i8, ptr %.07.i460, i64 8 ; 2 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !23 ; 2 uses
  %.not.i461 = icmp eq ptr %i.wt, null
  br i1 %.not.i461, label %opal_obj_run_constructors.exit462, label %.lr.ph.i459, !llvm.loop !25

opal_obj_run_constructors.exit462:                ; preds = %.lr.ph.i459, %bb.fb
  store i32 75, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_proc_fail_stop, i64 16), align 8, !tbaa !8
  store i32 75, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_proc_fail_stop, i64 20), align 4, !tbaa !13
  tail call void @opal_string_copy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_err_proc_fail_stop, i64 24), ptr noundef nonnull @.str.76, i64 noundef 256) #8
  %i.wu = tail call i32 @opal_pointer_array_set_item(ptr noundef nonnull @ompi_mpi_errcodes, i32 noundef 75, ptr noundef nonnull @ompi_err_proc_fail_stop) #8 ; 0 uses
  %i.wv = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !14
  %i.ww = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcode_t_class, i64 32), align 8, !tbaa !15
  %.not79 = icmp eq i32 %i.wv, %i.ww
  br i1 %.not79, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %opal_obj_run_constructors.exit462
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_mpi_errcode_t_class) #8
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %opal_obj_run_constructors.exit462
  store ptr @ompi_mpi_errcode_t_class, ptr @ompi_err_proc_fail_pending, align 8, !tbaa !20
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_proc_fail_pending, i64 8), align 8, !tbaa !21
  %i.wx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcode_t_class, i64 40), align 8, !tbaa !22 ; 2 uses
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !23 ; 2 uses
  %.not6.i463 = icmp eq ptr %i.wy, null
  br i1 %.not6.i463, label %opal_obj_run_constructors.exit467, label %.lr.ph.i464

.lr.ph.i464:                                      ; preds = %bb.fd, %.lr.ph.i464
  %i.wz = phi ptr [ %i.xb, %.lr.ph.i464 ], [ %i.wy, %bb.fd ]
  %.07.i465 = phi ptr [ %i.xa, %.lr.ph.i464 ], [ %i.wx, %bb.fd ]
  tail call void %i.wz(ptr noundef nonnull @ompi_err_proc_fail_pending) #8, !inline_history !24
  %i.xa = getelementptr inbounds nuw i8, ptr %.07.i465, i64 8 ; 2 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !23 ; 2 uses
  %.not.i466 = icmp eq ptr %i.xb, null
  br i1 %.not.i466, label %opal_obj_run_constructors.exit467, label %.lr.ph.i464, !llvm.loop !25

opal_obj_run_constructors.exit467:                ; preds = %.lr.ph.i464, %bb.fd
  store i32 76, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_proc_fail_pending, i64 16), align 8, !tbaa !8
  store i32 76, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_proc_fail_pending, i64 20), align 4, !tbaa !13
  tail call void @opal_string_copy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_err_proc_fail_pending, i64 24), ptr noundef nonnull @.str.77, i64 noundef 256) #8
  %i.xc = tail call i32 @opal_pointer_array_set_item(ptr noundef nonnull @ompi_mpi_errcodes, i32 noundef 76, ptr noundef nonnull @ompi_err_proc_fail_pending) #8 ; 0 uses
  %i.xd = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !14
  %i.xe = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcode_t_class, i64 32), align 8, !tbaa !15
  %.not80 = icmp eq i32 %i.xd, %i.xe
  br i1 %.not80, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %opal_obj_run_constructors.exit467
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_mpi_errcode_t_class) #8
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %opal_obj_run_constructors.exit467
  store ptr @ompi_mpi_errcode_t_class, ptr @ompi_err_revoked, align 8, !tbaa !20
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_revoked, i64 8), align 8, !tbaa !21
  %i.xf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcode_t_class, i64 40), align 8, !tbaa !22 ; 2 uses
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !23 ; 2 uses
  %.not6.i468 = icmp eq ptr %i.xg, null
  br i1 %.not6.i468, label %opal_obj_run_constructors.exit472, label %.lr.ph.i469

.lr.ph.i469:                                      ; preds = %bb.ff, %.lr.ph.i469
  %i.xh = phi ptr [ %i.xj, %.lr.ph.i469 ], [ %i.xg, %bb.ff ]
  %.07.i470 = phi ptr [ %i.xi, %.lr.ph.i469 ], [ %i.xf, %bb.ff ]
  tail call void %i.xh(ptr noundef nonnull @ompi_err_revoked) #8, !inline_history !24
  %i.xi = getelementptr inbounds nuw i8, ptr %.07.i470, i64 8 ; 2 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !23 ; 2 uses
  %.not.i471 = icmp eq ptr %i.xj, null
  br i1 %.not.i471, label %opal_obj_run_constructors.exit472, label %.lr.ph.i469, !llvm.loop !25

opal_obj_run_constructors.exit472:                ; preds = %.lr.ph.i469, %bb.ff
  store i32 77, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_revoked, i64 16), align 8, !tbaa !8
  store i32 77, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_revoked, i64 20), align 4, !tbaa !13
  tail call void @opal_string_copy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_err_revoked, i64 24), ptr noundef nonnull @.str.78, i64 noundef 256) #8
  %i.xk = tail call i32 @opal_pointer_array_set_item(ptr noundef nonnull @ompi_mpi_errcodes, i32 noundef 77, ptr noundef nonnull @ompi_err_revoked) #8 ; 0 uses
  %i.xl = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !14
  %i.xm = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcode_t_class, i64 32), align 8, !tbaa !15
  %.not81 = icmp eq i32 %i.xl, %i.xm
  br i1 %.not81, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %opal_obj_run_constructors.exit472
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_mpi_errcode_t_class) #8
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %opal_obj_run_constructors.exit472
  store ptr @ompi_mpi_errcode_t_class, ptr @ompi_err_session, align 8, !tbaa !20
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_session, i64 8), align 8, !tbaa !21
  %i.xn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcode_t_class, i64 40), align 8, !tbaa !22 ; 2 uses
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !23 ; 2 uses
  %.not6.i473 = icmp eq ptr %i.xo, null
  br i1 %.not6.i473, label %opal_obj_run_constructors.exit477, label %.lr.ph.i474

.lr.ph.i474:                                      ; preds = %bb.fh, %.lr.ph.i474
  %i.xp = phi ptr [ %i.xr, %.lr.ph.i474 ], [ %i.xo, %bb.fh ]
  %.07.i475 = phi ptr [ %i.xq, %.lr.ph.i474 ], [ %i.xn, %bb.fh ]
  tail call void %i.xp(ptr noundef nonnull @ompi_err_session) #8, !inline_history !24
  %i.xq = getelementptr inbounds nuw i8, ptr %.07.i475, i64 8 ; 2 uses
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !23 ; 2 uses
  %.not.i476 = icmp eq ptr %i.xr, null
  br i1 %.not.i476, label %opal_obj_run_constructors.exit477, label %.lr.ph.i474, !llvm.loop !25

opal_obj_run_constructors.exit477:                ; preds = %.lr.ph.i474, %bb.fh
  store i32 78, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_session, i64 16), align 8, !tbaa !8
  store i32 78, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_session, i64 20), align 4, !tbaa !13
  tail call void @opal_string_copy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_err_session, i64 24), ptr noundef nonnull @.str.79, i64 noundef 256) #8
  %i.xs = tail call i32 @opal_pointer_array_set_item(ptr noundef nonnull @ompi_mpi_errcodes, i32 noundef 78, ptr noundef nonnull @ompi_err_session) #8 ; 0 uses
  %i.xt = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !14
  %i.xu = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcode_t_class, i64 32), align 8, !tbaa !15
  %.not82 = icmp eq i32 %i.xt, %i.xu
  br i1 %.not82, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %opal_obj_run_constructors.exit477
  tail call void @opal_class_initialize(ptr noundef nonnull @ompi_mpi_errcode_t_class) #8
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %opal_obj_run_constructors.exit477
  store ptr @ompi_mpi_errcode_t_class, ptr @ompi_err_value_too_large, align 8, !tbaa !20
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_value_too_large, i64 8), align 8, !tbaa !21
  %i.xv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcode_t_class, i64 40), align 8, !tbaa !22 ; 2 uses
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !23 ; 2 uses
  %.not6.i478 = icmp eq ptr %i.xw, null
  br i1 %.not6.i478, label %opal_obj_run_constructors.exit482, label %.lr.ph.i479

.lr.ph.i479:                                      ; preds = %bb.fj, %.lr.ph.i479
  %i.xx = phi ptr [ %i.xz, %.lr.ph.i479 ], [ %i.xw, %bb.fj ]
  %.07.i480 = phi ptr [ %i.xy, %.lr.ph.i479 ], [ %i.xv, %bb.fj ]
  tail call void %i.xx(ptr noundef nonnull @ompi_err_value_too_large) #8, !inline_history !24
  %i.xy = getelementptr inbounds nuw i8, ptr %.07.i480, i64 8 ; 2 uses
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !23 ; 2 uses
  %.not.i481 = icmp eq ptr %i.xz, null
  br i1 %.not.i481, label %opal_obj_run_constructors.exit482, label %.lr.ph.i479, !llvm.loop !25

opal_obj_run_constructors.exit482:                ; preds = %.lr.ph.i479, %bb.fj
  store i32 79, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_value_too_large, i64 16), align 8, !tbaa !8
  store i32 79, ptr getelementptr inbounds nuw (i8, ptr @ompi_err_value_too_large, i64 20), align 4, !tbaa !13
  tail call void @opal_string_copy(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_err_value_too_large, i64 24), ptr noundef nonnull @.str.80, i64 noundef 256) #8
  %i.ya = tail call i32 @opal_pointer_array_set_item(ptr noundef nonnull @ompi_mpi_errcodes, i32 noundef 79, ptr noundef nonnull @ompi_err_value_too_large) #8 ; 0 uses
  store i32 92, ptr @ompi_mpi_errcode_lastused, align 4, !tbaa !14
  store i32 92, ptr @ompi_mpi_errcode_lastpredefined, align 4, !tbaa !14
  %i.yb = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @errcode_lock, i64 16)) #8 ; 0 uses
  tail call void @opal_finalize_append_cleanup(ptr noundef nonnull @ompi_mpi_errcode_finalize, ptr noundef nonnull @.str.81, ptr noundef null) #8
  br label %bb.fk

bb.fk:                                            ; preds = %opal_obj_run_constructors.exit, %opal_obj_run_constructors.exit482, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %opal_obj_run_constructors.exit482 ], [ -1, %opal_obj_run_constructors.exit ]
  ret i32 %.0
}

declare void @opal_class_initialize(ptr noundef) local_unnamed_addr #2

declare i32 @opal_pointer_array_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @opal_string_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @opal_pointer_array_set_item(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @opal_finalize_append_cleanup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef i32 @ompi_mpi_errcode_finalize() #1 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @errcode_lock, i64 16)) #8 ; 0 uses
  %i.b = load i32, ptr @ompi_mpi_errcode_lastpredefined, align 4, !tbaa !14 ; 2 uses
  %i.c = load i32, ptr @ompi_mpi_errcode_lastused, align 4, !tbaa !14
  %.not.not412 = icmp slt i32 %i.b, %i.c
  br i1 %.not.not412, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre415.pre416 = load i8, ptr @opal_uses_threads, align 1, !tbaa !27, !range !29
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.pre415 = phi i8 [ %.pre415417, %bb.h ], [ %.pre415.pre416, %.lr.ph.preheader ] ; 2 uses
  %.0.in413 = phi i32 [ %.0414, %bb.h ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %.0414 = add nsw i32 %.0.in413, 1               ; 5 uses
  %i.d = icmp slt i32 %.0.in413, -1
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcodes, i64 88), align 8
  %i.f = icmp sle i32 %i.e, %.0414
  %i.g = select i1 %i.d, i1 true, i1 %i.f, !prof !30
  br i1 %i.g, label %opal_pointer_array_get_item.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %.lr.ph
  %i.h = trunc nuw i8 %.pre415 to i1
  br i1 %i.h, label %bb.c, label %.thread.i, !prof !30

.thread.i:                                        ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcodes, i64 112), align 8, !tbaa !31
  %0 = zext nneg i32 %.0414 to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %0
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  br label %opal_pointer_array_get_item.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcodes, i64 32)) #8 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !27, !range !29
  %i.m = trunc nuw i8 %.pre.i to i1
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcodes, i64 112), align 8, !tbaa !31
  %1 = zext nneg i32 %.0414 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %1
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 2 uses
  br i1 %i.m, label %bb.d, label %opal_pointer_array_get_item.exit.thread, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_mpi_errcodes, i64 32)) #8 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !27, !range !29
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit.thread:          ; preds = %bb.c, %.thread.i
  %.0.i.ph = phi ptr [ %i.k, %.thread.i ], [ %i.p, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 8
  br label %bb.f

opal_pointer_array_get_item.exit:                 ; preds = %.lr.ph, %bb.d
  %.pre415418 = phi i8 [ %.pre415, %.lr.ph ], [ %.pre, %bb.d ]
  %.0.i = phi ptr [ null, %.lr.ph ], [ %i.p, %bb.d ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.t = trunc nuw i8 %.pre415418 to i1
  br i1 %i.t, label %bb.e, label %bb.f, !prof !36

bb.e:                                             ; preds = %opal_pointer_array_get_item.exit
  %i.u = atomicrmw volatile add ptr %i.s, i32 -1 monotonic, align 4
  %i.v = add i32 %i.u, -1
  br label %opal_thread_add_fetch_32.exit

bb.f:                                             ; preds = %opal_pointer_array_get_item.exit.thread, %opal_pointer_array_get_item.exit
  %i.w = phi ptr [ %i.r, %opal_pointer_array_get_item.exit.thread ], [ %i.s, %opal_pointer_array_get_item.exit ] ; 3 uses
  %.0.i507.a = phi ptr [ %.0.i.ph, %opal_pointer_array_get_item.exit.thread ], [ %.0.i, %opal_pointer_array_get_item.exit ]
  %i.x = load volatile i32, ptr %i.w, align 4, !tbaa !14
  %i.y = add nsw i32 %i.x, -1
  store volatile i32 %i.y, ptr %i.w, align 4, !tbaa !14
  %i.z = load volatile i32, ptr %i.w, align 4, !tbaa !14
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.e, %bb.f
  %.0.i506 = phi ptr [ %.0.i, %bb.e ], [ %.0.i507.a, %bb.f ] ; 3 uses
  %.pre415418504 = phi i8 [ 1, %bb.e ], [ 0, %bb.f ]
  %.0.i5 = phi i32 [ %i.v, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = icmp eq i32 %.0.i5, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.ab = load ptr, ptr %.0.i506, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !37 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !23 ; 2 uses
  %.not6.i = icmp eq ptr %i.ae, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.af = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.ae, %bb.g ]
  %.07.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.ad, %bb.g ]
  tail call void %i.af(ptr noundef nonnull %.0.i506) #8, !inline_history !38
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i, !llvm.loop !39

opal_obj_run_destructors.exit:                    ; preds = %.lr.ph.i, %bb.g
  tail call void @free(ptr noundef nonnull %.0.i506) #8
  %.pre415.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !27, !range !29
  br label %bb.h

bb.h:                                             ; preds = %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  %.pre415417 = phi i8 [ %.pre415418504, %opal_thread_add_fetch_32.exit ], [ %.pre415.pre, %opal_obj_run_destructors.exit ]
  %i.ai = load i32, ptr @ompi_mpi_errcode_lastused, align 4, !tbaa !14
  %.not.not = icmp slt i32 %.0414, %i.ai
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %i.aj = load ptr, ptr @ompi_success, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %.not6.i6 = icmp eq ptr %i.am, null
  br i1 %.not6.i6, label %opal_obj_run_destructors.exit10, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %._crit_edge, %.lr.ph.i7
  %i.an = phi ptr [ %i.ap, %.lr.ph.i7 ], [ %i.am, %._crit_edge ]
  %.07.i8 = phi ptr [ %i.ao, %.lr.ph.i7 ], [ %i.al, %._crit_edge ]
  tail call void %i.an(ptr noundef nonnull @ompi_success) #8, !inline_history !38
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i8, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ap, null
  br i1 %.not.i9, label %opal_obj_run_destructors.exit10, label %.lr.ph.i7, !llvm.loop !39

opal_obj_run_destructors.exit10:                  ; preds = %.lr.ph.i7, %._crit_edge
  %i.aq = load ptr, ptr @ompi_err_buffer, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !37 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !23 ; 2 uses
  %.not6.i11 = icmp eq ptr %i.at, null
  br i1 %.not6.i11, label %opal_obj_run_destructors.exit15, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %opal_obj_run_destructors.exit10, %.lr.ph.i12
  %i.au = phi ptr [ %i.aw, %.lr.ph.i12 ], [ %i.at, %opal_obj_run_destructors.exit10 ]
  %.07.i13 = phi ptr [ %i.av, %.lr.ph.i12 ], [ %i.as, %opal_obj_run_destructors.exit10 ]
  tail call void %i.au(ptr noundef nonnull @ompi_err_buffer) #8, !inline_history !38
  %i.av = getelementptr inbounds nuw i8, ptr %.07.i13, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23 ; 2 uses
  %.not.i14 = icmp eq ptr %i.aw, null
  br i1 %.not.i14, label %opal_obj_run_destructors.exit15, label %.lr.ph.i12, !llvm.loop !39

opal_obj_run_destructors.exit15:                  ; preds = %.lr.ph.i12, %opal_obj_run_destructors.exit10
  %i.ax = load ptr, ptr @ompi_err_count, align 8, !tbaa !20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !23 ; 2 uses
  %.not6.i16 = icmp eq ptr %i.ba, null
  br i1 %.not6.i16, label %opal_obj_run_destructors.exit20, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %opal_obj_run_destructors.exit15, %.lr.ph.i17
  %i.bb = phi ptr [ %i.bd, %.lr.ph.i17 ], [ %i.ba, %opal_obj_run_destructors.exit15 ]
  %.07.i18 = phi ptr [ %i.bc, %.lr.ph.i17 ], [ %i.az, %opal_obj_run_destructors.exit15 ]
  tail call void %i.bb(ptr noundef nonnull @ompi_err_count) #8, !inline_history !38
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i18, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !23 ; 2 uses
  %.not.i19 = icmp eq ptr %i.bd, null
  br i1 %.not.i19, label %opal_obj_run_destructors.exit20, label %.lr.ph.i17, !llvm.loop !39

opal_obj_run_destructors.exit20:                  ; preds = %.lr.ph.i17, %opal_obj_run_destructors.exit15
  %i.be = load ptr, ptr @ompi_err_type, align 8, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !37 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !23 ; 2 uses
  %.not6.i21 = icmp eq ptr %i.bh, null
  br i1 %.not6.i21, label %opal_obj_run_destructors.exit25, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %opal_obj_run_destructors.exit20, %.lr.ph.i22
  %i.bi = phi ptr [ %i.bk, %.lr.ph.i22 ], [ %i.bh, %opal_obj_run_destructors.exit20 ]
  %.07.i23 = phi ptr [ %i.bj, %.lr.ph.i22 ], [ %i.bg, %opal_obj_run_destructors.exit20 ]
  tail call void %i.bi(ptr noundef nonnull @ompi_err_type) #8, !inline_history !38
  %i.bj = getelementptr inbounds nuw i8, ptr %.07.i23, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %.not.i24 = icmp eq ptr %i.bk, null
  br i1 %.not.i24, label %opal_obj_run_destructors.exit25, label %.lr.ph.i22, !llvm.loop !39

opal_obj_run_destructors.exit25:                  ; preds = %.lr.ph.i22, %opal_obj_run_destructors.exit20
  %i.bl = load ptr, ptr @ompi_err_tag, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !37 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  %.not6.i26 = icmp eq ptr %i.bo, null
  br i1 %.not6.i26, label %opal_obj_run_destructors.exit30, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %opal_obj_run_destructors.exit25, %.lr.ph.i27
  %i.bp = phi ptr [ %i.br, %.lr.ph.i27 ], [ %i.bo, %opal_obj_run_destructors.exit25 ]
  %.07.i28 = phi ptr [ %i.bq, %.lr.ph.i27 ], [ %i.bn, %opal_obj_run_destructors.exit25 ]
  tail call void %i.bp(ptr noundef nonnull @ompi_err_tag) #8, !inline_history !38
  %i.bq = getelementptr inbounds nuw i8, ptr %.07.i28, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !23 ; 2 uses
  %.not.i29 = icmp eq ptr %i.br, null
  br i1 %.not.i29, label %opal_obj_run_destructors.exit30, label %.lr.ph.i27, !llvm.loop !39

opal_obj_run_destructors.exit30:                  ; preds = %.lr.ph.i27, %opal_obj_run_destructors.exit25
  %i.bs = load ptr, ptr @ompi_err_comm, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !37 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !23 ; 2 uses
  %.not6.i31 = icmp eq ptr %i.bv, null
  br i1 %.not6.i31, label %opal_obj_run_destructors.exit35, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %opal_obj_run_destructors.exit30, %.lr.ph.i32
  %i.bw = phi ptr [ %i.by, %.lr.ph.i32 ], [ %i.bv, %opal_obj_run_destructors.exit30 ]
  %.07.i33 = phi ptr [ %i.bx, %.lr.ph.i32 ], [ %i.bu, %opal_obj_run_destructors.exit30 ]
  tail call void %i.bw(ptr noundef nonnull @ompi_err_comm) #8, !inline_history !38
  %i.bx = getelementptr inbounds nuw i8, ptr %.07.i33, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !23 ; 2 uses
  %.not.i34 = icmp eq ptr %i.by, null
  br i1 %.not.i34, label %opal_obj_run_destructors.exit35, label %.lr.ph.i32, !llvm.loop !39

opal_obj_run_destructors.exit35:                  ; preds = %.lr.ph.i32, %opal_obj_run_destructors.exit30
  %i.bz = load ptr, ptr @ompi_err_rank, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !37 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !23 ; 2 uses
  %.not6.i36 = icmp eq ptr %i.cc, null
  br i1 %.not6.i36, label %opal_obj_run_destructors.exit40, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %opal_obj_run_destructors.exit35, %.lr.ph.i37
  %i.cd = phi ptr [ %i.cf, %.lr.ph.i37 ], [ %i.cc, %opal_obj_run_destructors.exit35 ]
  %.07.i38 = phi ptr [ %i.ce, %.lr.ph.i37 ], [ %i.cb, %opal_obj_run_destructors.exit35 ]
  tail call void %i.cd(ptr noundef nonnull @ompi_err_rank) #8, !inline_history !38
  %i.ce = getelementptr inbounds nuw i8, ptr %.07.i38, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !23 ; 2 uses
  %.not.i39 = icmp eq ptr %i.cf, null
  br i1 %.not.i39, label %opal_obj_run_destructors.exit40, label %.lr.ph.i37, !llvm.loop !39

opal_obj_run_destructors.exit40:                  ; preds = %.lr.ph.i37, %opal_obj_run_destructors.exit35
  %i.cg = load ptr, ptr @ompi_err_request, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !37 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !23 ; 2 uses
  %.not6.i41 = icmp eq ptr %i.cj, null
  br i1 %.not6.i41, label %opal_obj_run_destructors.exit45, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %opal_obj_run_destructors.exit40, %.lr.ph.i42
  %i.ck = phi ptr [ %i.cm, %.lr.ph.i42 ], [ %i.cj, %opal_obj_run_destructors.exit40 ]
  %.07.i43 = phi ptr [ %i.cl, %.lr.ph.i42 ], [ %i.ci, %opal_obj_run_destructors.exit40 ]
  tail call void %i.ck(ptr noundef nonnull @ompi_err_request) #8, !inline_history !38
  %i.cl = getelementptr inbounds nuw i8, ptr %.07.i43, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !23 ; 2 uses
  %.not.i44 = icmp eq ptr %i.cm, null
  br i1 %.not.i44, label %opal_obj_run_destructors.exit45, label %.lr.ph.i42, !llvm.loop !39

opal_obj_run_destructors.exit45:                  ; preds = %.lr.ph.i42, %opal_obj_run_destructors.exit40
  %i.cn = load ptr, ptr @ompi_err_root, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !37 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !23 ; 2 uses
  %.not6.i46 = icmp eq ptr %i.cq, null
  br i1 %.not6.i46, label %opal_obj_run_destructors.exit50, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %opal_obj_run_destructors.exit45, %.lr.ph.i47
  %i.cr = phi ptr [ %i.ct, %.lr.ph.i47 ], [ %i.cq, %opal_obj_run_destructors.exit45 ]
  %.07.i48 = phi ptr [ %i.cs, %.lr.ph.i47 ], [ %i.cp, %opal_obj_run_destructors.exit45 ]
  tail call void %i.cr(ptr noundef nonnull @ompi_err_root) #8, !inline_history !38
  %i.cs = getelementptr inbounds nuw i8, ptr %.07.i48, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !23 ; 2 uses
  %.not.i49 = icmp eq ptr %i.ct, null
  br i1 %.not.i49, label %opal_obj_run_destructors.exit50, label %.lr.ph.i47, !llvm.loop !39

opal_obj_run_destructors.exit50:                  ; preds = %.lr.ph.i47, %opal_obj_run_destructors.exit45
  %i.cu = load ptr, ptr @ompi_err_group, align 8, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !37 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !23 ; 2 uses
  %.not6.i51 = icmp eq ptr %i.cx, null
  br i1 %.not6.i51, label %opal_obj_run_destructors.exit55, label %.lr.ph.i52

.lr.ph.i52:                                       ; preds = %opal_obj_run_destructors.exit50, %.lr.ph.i52
  %i.cy = phi ptr [ %i.da, %.lr.ph.i52 ], [ %i.cx, %opal_obj_run_destructors.exit50 ]
  %.07.i53 = phi ptr [ %i.cz, %.lr.ph.i52 ], [ %i.cw, %opal_obj_run_destructors.exit50 ]
  tail call void %i.cy(ptr noundef nonnull @ompi_err_group) #8, !inline_history !38
  %i.cz = getelementptr inbounds nuw i8, ptr %.07.i53, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !23 ; 2 uses
  %.not.i54 = icmp eq ptr %i.da, null
  br i1 %.not.i54, label %opal_obj_run_destructors.exit55, label %.lr.ph.i52, !llvm.loop !39

opal_obj_run_destructors.exit55:                  ; preds = %.lr.ph.i52, %opal_obj_run_destructors.exit50
  %i.db = load ptr, ptr @ompi_err_op, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !37 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !23 ; 2 uses
  %.not6.i56 = icmp eq ptr %i.de, null
  br i1 %.not6.i56, label %opal_obj_run_destructors.exit60, label %.lr.ph.i57

.lr.ph.i57:                                       ; preds = %opal_obj_run_destructors.exit55, %.lr.ph.i57
  %i.df = phi ptr [ %i.dh, %.lr.ph.i57 ], [ %i.de, %opal_obj_run_destructors.exit55 ]
  %.07.i58 = phi ptr [ %i.dg, %.lr.ph.i57 ], [ %i.dd, %opal_obj_run_destructors.exit55 ]
  tail call void %i.df(ptr noundef nonnull @ompi_err_op) #8, !inline_history !38
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i58, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !23 ; 2 uses
  %.not.i59 = icmp eq ptr %i.dh, null
  br i1 %.not.i59, label %opal_obj_run_destructors.exit60, label %.lr.ph.i57, !llvm.loop !39

opal_obj_run_destructors.exit60:                  ; preds = %.lr.ph.i57, %opal_obj_run_destructors.exit55
  %i.di = load ptr, ptr @ompi_err_topology, align 8, !tbaa !20
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !37 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !23 ; 2 uses
  %.not6.i61 = icmp eq ptr %i.dl, null
  br i1 %.not6.i61, label %opal_obj_run_destructors.exit65, label %.lr.ph.i62

.lr.ph.i62:                                       ; preds = %opal_obj_run_destructors.exit60, %.lr.ph.i62
  %i.dm = phi ptr [ %i.do, %.lr.ph.i62 ], [ %i.dl, %opal_obj_run_destructors.exit60 ]
  %.07.i63 = phi ptr [ %i.dn, %.lr.ph.i62 ], [ %i.dk, %opal_obj_run_destructors.exit60 ]
end_hunk_0
