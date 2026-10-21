Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-pr-helper?download=true
inline.NumInlined: 22
inline.NumDeleted: 7
begin_hunk_0_@main:bb.a
  %i.ba = load ptr, ptr @pidfile, align 8
  %i.bb = call zeroext i1 @qemu_write_pidfile(ptr noundef %i.ba, ptr noundef nonnull @error_fatal) #13 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread
  store i32 0, ptr @state, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ad, %bb.z
  call void @main_loop_wait(i32 noundef 0) #13
  %i.bc = load i32, ptr @state, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.ab, label %thread-pre-split

bb.ab:                                            ; preds = %bb.aa
  store i32 2, ptr @state, align 4
  %i.be = load ptr, ptr @server_ioc, align 8
  %.not.i51 = icmp eq ptr %i.be, null
  br i1 %.not.i51, label %bb.ac, label %close_server_socket.exit

bb.ac:                                            ; preds = %bb.ab
  call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.27, i32 noundef 832, ptr noundef nonnull @__PRETTY_FUNCTION__.close_server_socket) #15
  unreachable

close_server_socket.exit:                         ; preds = %bb.ab
  %i.bf = load i32, ptr @server_watch, align 4
  %i.bg = call i32 @g_source_remove(i32 noundef %i.bf) #13 ; 0 uses
  store i32 -1, ptr @server_watch, align 4
  %i.bh = load ptr, ptr @server_ioc, align 8
  call void @object_unref(ptr noundef %i.bh) #13
  %i.bi = load i32, ptr @num_active_sockets, align 4
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr @num_active_sockets, align 4
  br label %bb.ad

thread-pre-split:                                 ; preds = %bb.aa
  %.pr = load i32, ptr @num_active_sockets, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %thread-pre-split, %close_server_socket.exit
  %i.bk = phi i32 [ %.pr, %thread-pre-split ], [ %i.bj, %close_server_socket.exit ]
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.aa, label %bb.ae, !llvm.loop !10

bb.ae:                                            ; preds = %bb.ad
  call void @exit(i32 noundef 0) #15
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind sspstrong uwtable
define internal void @termsig_handler(i32 %0) #3 {
bb.a:
  %i.a = cmpxchg ptr @state, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  tail call void @qemu_notify_event() #13
  ret void
}

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @error_init(ptr noundef) local_unnamed_addr #5

declare void @module_call_init(i32 noundef) local_unnamed_addr #5

declare void @qemu_add_opts(ptr noundef) local_unnamed_addr #5

declare void @qemu_init_exec_dir(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @g_free(ptr noundef) local_unnamed_addr #5

declare void @error_report(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare void @trace_opt_parse(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @version(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.21, ptr noundef %0) #13 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc void @usage(ptr noundef %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr @pidfile, align 8
  %i.b = load ptr, ptr @socket_path, align 8
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare zeroext i1 @trace_init_backends() local_unnamed_addr #5

declare void @trace_init_file() local_unnamed_addr #5

declare zeroext i1 @qemu_set_log(i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @check_socket_activation() local_unnamed_addr #5

declare ptr @qio_channel_socket_new() local_unnamed_addr #5

declare i32 @qio_channel_socket_listen_sync(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @object_unref(ptr noundef) local_unnamed_addr #5

declare void @error_report_err(ptr noundef) local_unnamed_addr #5

declare ptr @qio_channel_socket_new_fd(i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @error_reportf_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare i32 @qemu_init_main_loop(ptr noundef) local_unnamed_addr #5

declare i32 @qio_channel_add_watch(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @accept_client(ptr noundef %0, i32 %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL_SOCKET) #13
  %i.b = tail call ptr @qio_channel_socket_accept(ptr noundef %i.a, ptr noundef null) #13 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(8216) ptr @g_malloc(i64 noundef 8216) #17 ; 4 uses
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -1, ptr %i.d, align 8
  %i.e = tail call ptr @qemu_coroutine_create(ptr noundef nonnull @prh_co_entry, ptr noundef nonnull %i.c) #13 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %i.f, align 8
  tail call void @qemu_coroutine_enter(ptr noundef %i.e) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 1
}

; Function Attrs: nounwind
declare i32 @daemon(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare zeroext i1 @qemu_write_pidfile(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @main_loop_wait(i32 noundef) local_unnamed_addr #5

declare void @qemu_notify_event() local_unnamed_addr #5

declare ptr @qemu_get_local_state_dir() local_unnamed_addr #5

declare noalias ptr @g_build_filename(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #9

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #5

declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @qio_channel_socket_accept(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @qemu_coroutine_create(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @prh_co_entry(ptr noundef %0) #3 {
bb.a:
  %1 = alloca %struct.PRHelperSGIOData, align 8   ; 9 uses
  %2 = alloca %struct.PRHelperSGIOData, align 8   ; 9 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %3 = alloca %struct.PRHelperRequest, align 8    ; 10 uses
  %4 = alloca %struct.PRHelperResponse, align 4   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !annotation !8
  %i.c = load ptr, ptr %0, align 8
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #13
  %i.e = call zeroext i1 @qio_channel_set_blocking(ptr noundef %i.d, i1 noundef zeroext false, ptr noundef nonnull %i.a) #13
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8
  %i.g = call ptr @object_dynamic_cast_assert(ptr noundef %i.f, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #13
  call void @qio_channel_set_follow_coroutine_ctx(ptr noundef %i.g, i1 noundef zeroext true) #13
  store i32 0, ptr %i.b, align 4
  %i.h = load ptr, ptr %0, align 8
  %i.i = call ptr @object_dynamic_cast_assert(ptr noundef %i.h, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #13
  %i.j = call i32 @qio_channel_write_all(ptr noundef %i.i, ptr noundef nonnull %i.b, i64 noundef 4, ptr noundef null) #13
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8
  %i.m = call ptr @object_dynamic_cast_assert(ptr noundef %i.l, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #13
  %i.n = call i32 @qio_channel_read_all(ptr noundef %i.m, ptr noundef nonnull %i.b, i64 noundef 4, ptr noundef null) #13
  %i.o = load i32, ptr %i.b, align 4
  %i.p = icmp ne i32 %i.o, 0
  %i.q = icmp slt i32 %i.n, 0
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.r = load atomic i32, ptr @state monotonic, align 4
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 36
  %.0.copyload.i = load i24, ptr @sense_code_INVALID_OPCODE, align 1
  %5 = insertelement <2 x ptr> poison, ptr %i.v, i64 0
  %6 = insertelement <2 x ptr> %5, ptr %i.w, i64 1 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %4, i8 0, i64 104, i1 false), !annotation !8
  %i.ah = call i32 @prh_read_request(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr nonnull poison, ptr noundef nonnull %i.a) ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr @num_active_sockets, align 4
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @num_active_sockets, align 4
  %i.al = load i8, ptr %i.t, align 8
  %i.am = icmp eq i8 %i.al, 95
  br i1 %i.am, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %3, align 8               ; 2 uses
  %i.ao = call i32 (i32, i32, ...) @fcntl64(i32 noundef %i.an, i32 noundef 3) #13
  %i.ap = and i32 %i.ao, 3
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = call i32 @scsi_build_sense(ptr noundef nonnull %i.v, i24 %.0.copyload.i) #13 ; 0 uses
  br label %do_pr_out.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i32 %i.an, ptr %2, align 8
  store i32 0, ptr %i.ac, align 4
  store ptr %i.t, ptr %i.ad, align 8
  store <2 x ptr> %6, ptr %i.ae, align 8
  store i32 %i.ah, ptr %i.af, align 8
  store i32 -2, ptr %i.ag, align 4
  %i.as = call i32 @thread_pool_submit_co(ptr noundef nonnull @do_sgio_worker, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %do_pr_out.exit

bb.i:                                             ; preds = %bb.e
  store i32 8192, ptr %i.u, align 4
  %i.at = load i32, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i32 %i.at, ptr %1, align 8
  store i32 0, ptr %i.x, align 4
  store ptr %i.t, ptr %i.y, align 8
  store <2 x ptr> %6, ptr %i.z, align 8
  store i32 8192, ptr %i.aa, align 8
  store i32 -3, ptr %i.ab, align 4
  %i.au = call i32 @thread_pool_submit_co(ptr noundef nonnull @do_sgio_worker, ptr noundef nonnull %1) #13
  %i.av = load i32, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.aw = call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ah)
  br label %do_pr_out.exit

do_pr_out.exit:                                   ; preds = %bb.h, %bb.g, %bb.i
  %storemerge = phi i32 [ %i.aw, %bb.i ], [ 0, %bb.g ], [ 0, %bb.h ]
  %.0 = phi i32 [ %i.au, %bb.i ], [ 2, %bb.g ], [ %i.as, %bb.h ] ; 2 uses
  store i32 %storemerge, ptr %i.u, align 4
  %i.ax = load i32, ptr @num_active_sockets, align 4
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @num_active_sockets, align 4
  %i.az = load i32, ptr %3, align 8
  %i.ba = call i32 @close(i32 noundef %i.az) #13  ; 0 uses
  %i.bb = icmp eq i32 %.0, -1
  br i1 %i.bb, label %.thread, label %bb.j

bb.j:                                             ; preds = %do_pr_out.exit
  store i32 %.0, ptr %4, align 4
  %i.bc = call i32 @prh_write_response(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.a)
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %.thread, label %bb.k

.thread:                                          ; preds = %do_pr_out.exit, %bb.d, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.be = load atomic i32, ptr @state monotonic, align 4
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.k, %.preheader, %.thread, %bb.c, %bb.b, %bb.a
  %i.bg = load ptr, ptr %i.a, align 8             ; 3 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.loopexit
  %i.bh = load i32, ptr @verbose, align 4
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @error_free(ptr noundef nonnull %i.bg) #13
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @error_report_err(ptr noundef nonnull %i.bg) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %.loopexit
  %i.bj = load ptr, ptr %0, align 8
  call void @object_unref(ptr noundef %i.bj) #13
  call void @g_free(ptr noundef nonnull %0) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @qemu_coroutine_enter(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @qio_channel_set_blocking(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #5

declare void @qio_channel_set_follow_coroutine_ctx(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare i32 @qio_channel_write_all(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

declare i32 @qio_channel_read_all(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #5

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -1, 8193) i32 @prh_read_request(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = tail call i32 @prh_read(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef null)
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef 665, ptr noundef nonnull @__func__.prh_read_request, ptr noundef nonnull @.str.28) #13
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.a, align 8
  %i.h = and i8 %i.g, -2
  %switch = icmp eq i8 %i.h, 94
  br i1 %switch, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef 671, ptr noundef nonnull @__func__.prh_read_request, ptr noundef nonnull @.str.29) #13
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i32 @scsi_cdb_xfer(ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp ugt i32 %i.i, 8192
  br i1 %i.k, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i8, ptr %i.a, align 8
  %i.m = icmp eq i8 %i.l, 95
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %0, align 8
  %i.o = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.n, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef 30, ptr noundef nonnull @__func__.QIO_CHANNEL) #13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = tail call i32 @qio_channel_read_all(ptr noundef %i.o, ptr noundef nonnull %i.p, i64 noundef %i.j, ptr noundef %3) #13
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = load i32, ptr %i.d, align 8
  store i32 %i.s, ptr %1, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %i.t, align 8
  store i32 -1, ptr %i.d, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.u = load i32, ptr %i.d, align 8
  %i.v = tail call i32 @close(i32 noundef %i.u) #13 ; 0 uses
  store i32 -1, ptr %i.d, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.i, %bb.c
  %.0 = phi i32 [ %i.i, %bb.i ], [ -1, %bb.c ], [ -1, %bb.j ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @do_pr_out(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #3 {
bb.a:
  %5 = alloca %struct.PRHelperSGIOData, align 8   ; 10 uses
  %i.a = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 3) #13
  %i.b = and i32 %i.a, 3
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.0.copyload = load i24, ptr @sense_code_INVALID_OPCODE, align 1
  %i.d = tail call i32 @scsi_build_sense(ptr noundef %2, i24 %.0.copyload) #13 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i32 %0, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 -2, ptr %i.j, align 4
  %i.k = call i32 @thread_pool_submit_co(ptr noundef nonnull @do_sgio_worker, ptr noundef nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 2, %bb.b ], [ %i.k, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @do_pr_in(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) #3 {
bb.a:
  %5 = alloca %struct.PRHelperSGIOData, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i32 %0, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.f = load i32, ptr %4, align 4
  store i32 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 -3, ptr %i.g, align 4
  %i.h = call i32 @thread_pool_submit_co(ptr noundef nonnull @do_sgio_worker, ptr noundef nonnull %5) #13
  %i.i = load i32, ptr %i.e, align 8
end_hunk_0
