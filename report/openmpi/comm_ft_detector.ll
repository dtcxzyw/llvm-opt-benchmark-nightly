Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/comm_ft_detector?download=true
inline.NumInlined: 55
inline.NumDeleted: 29
begin_hunk_0_@fd_progress:bb.a
  %i.aa = call i32 %i.z(ptr noundef nonnull %i.x, i32 noundef 1) #10, !inline_history !126 ; 0 uses
  br label %ompi_request_cancel.exit

ompi_request_cancel.exit:                         ; preds = %._crit_edge, %bb.i
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !138
  %i.ac = call i32 %i.ab(ptr noundef nonnull %i.a, ptr noundef null) #10 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.d, %bb.c, %ompi_request_cancel.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr inttoptr (i64 1 to ptr)
}

declare i32 @opal_thread_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef i32 @ompi_comm_failure_detector_finalize() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 20), align 4, !tbaa !71 ; 2 uses
  %.not = icmp eq i32 %i.b, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 80), align 8, !tbaa !106
  tail call fastcc void @fd_heartbeat_send(ptr noundef nonnull @comm_world_detector)
  store double +inf, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 48), align 8, !tbaa !107
  store i32 -2, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 20), align 4, !tbaa !71
  fence seq_cst
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 16), align 8, !tbaa !64 ; 2 uses
  %.not2430 = icmp eq i32 %.pr, -2
  br i1 %.not2430, label %._crit_edge, label %.lr.ph.preheader

.loopexit:                                        ; preds = %bb.e
  %.not24 = icmp eq i32 %i.g, -2
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !139

.lr.ph.preheader:                                 ; preds = %bb.c, %.loopexit
  %i.c = phi i32 [ %i.g, %.loopexit ], [ %.pr, %bb.c ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.d = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !22
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.f = tail call i32 @opal_progress() #10       ; 0 uses
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 16), align 8, !tbaa !64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.g = phi i32 [ %.pre, %bb.d ], [ %i.c, %.lr.ph ] ; 3 uses
  %i.h = icmp eq i32 %i.c, %i.g
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !140

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %i.i = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !22
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.k = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !22 ; 2 uses
  %i.l = load i8, ptr @opal_uses_threads, align 1, !tbaa !14, !range !15, !noundef !16
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.h, !prof !79

bb.g:                                             ; preds = %bb.f
  %i.n = sub nsw i32 0, %i.k
  %i.o = atomicrmw volatile add ptr @fd_thread_active, i32 %i.n monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.h:                                             ; preds = %bb.f
  %i.p = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !22
  %i.q = sub nsw i32 %i.p, %i.k
  store volatile i32 %i.q, ptr @fd_thread_active, align 4, !tbaa !22
  %i.r = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !22 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.g, %bb.h
  %i.s = load ptr, ptr @fd_event_base, align 8, !tbaa !21
  %i.t = tail call i32 @event_base_loopbreak(ptr noundef %i.s) #10 ; 0 uses
  %i.u = call i32 @opal_thread_join(ptr noundef nonnull @fd_thread, ptr noundef nonnull %i.a) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.i

bb.i:                                             ; preds = %opal_thread_add_fetch_32.exit, %._crit_edge
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 8), align 8, !tbaa !108 ; 2 uses
  %.not25 = icmp eq ptr %i.v, null
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = call i32 @event_del(ptr noundef nonnull %i.v) #10 ; 0 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 8), align 8, !tbaa !108
  call void @event_free(ptr noundef %i.x) #10
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 8), align 8, !tbaa !108
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = load ptr, ptr @opal_sync_event_base, align 8, !tbaa !21
  %i.z = load ptr, ptr @fd_event_base, align 8, !tbaa !21 ; 2 uses
  %.not26 = icmp eq ptr %i.y, %i.z
  br i1 %.not26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @event_base_free(ptr noundef %i.z) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 88), align 8, !tbaa !86 ; 2 uses
  %.not27 = icmp eq ptr %i.aa, null
  br i1 %.not27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 64), align 8, !tbaa !87
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val29 = load ptr, ptr %i.ac, align 8, !tbaa !92 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val29, i64 264
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96
  %i.af = call i32 %i.ae(ptr noundef %.val29, ptr noundef nonnull %i.aa) #10, !inline_history !3 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 104), align 8, !tbaa !109 ; 2 uses
  %.not28 = icmp eq ptr %i.ag, null
  br i1 %.not28, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 72), align 8, !tbaa !110
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val = load ptr, ptr %i.ai, align 8, !tbaa !92 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !96
  %i.al = call i32 %i.ak(ptr noundef %.val, ptr noundef nonnull %i.ag) #10, !inline_history !3 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 -2, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 16), align 8, !tbaa !64
  store i32 -2, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 20), align 4, !tbaa !71
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define range(i32 -7, 1) i32 @ompi_comm_failure_detector_start() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @comm_heartbeat_recv_cb_type, align 4, !tbaa !22
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %opal_thread_add_fetch_32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @comm_detector_use_thread, align 1, !tbaa !14, !range !15, !noundef !16
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr @opal_uses_threads, align 1, !tbaa !14, !range !15, !noundef !16
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !79

bb.d:                                             ; preds = %bb.c
  %i.g = atomicrmw volatile add ptr @fd_thread_active, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !22
  %i.i = add nsw i32 %i.h, 1
  store volatile i32 %i.i, ptr @fd_thread_active, align 4, !tbaa !22
  %i.j = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !22 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.f:                                             ; preds = %bb.b
  %i.k = tail call i32 @ompi_comm_start_detector(ptr noundef nonnull @ompi_mpi_comm_world)
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.e, %bb.d, %bb.a, %bb.f
  %.0 = phi i32 [ %i.k, %bb.f ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -7, 1) i32 @ompi_comm_start_detector(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %.not = icmp eq ptr %0, @ompi_mpi_comm_world
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.a = tail call double @PMPI_Wtime() #10       ; 2 uses
  store double %i.a, ptr @startdate, align 8, !tbaa !18
  store ptr %0, ptr @comm_world_detector, align 8, !tbaa !74
  %i.b = getelementptr i8, ptr %0, i64 264
  %.val = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.c = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i32, ptr %i.c, align 8, !tbaa !70 ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 220
  %.val43 = load i32, ptr %i.d, align 4, !tbaa !56 ; 2 uses
  %i.e = add nsw i32 %.val43, %.val.val           ; 2 uses
  %2 = add nsw i32 %i.e, -1
  %3 = srem i32 %2, %.val.val
  store i32 %3, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 16), align 8, !tbaa !64
  %4 = add nsw i32 %i.e, 1
  %5 = srem i32 %4, %.val.val
  store i32 %5, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 20), align 4, !tbaa !71
  %i.f = load double, ptr @comm_heartbeat_period, align 8, !tbaa !18 ; 2 uses
  store double %i.f, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 48), align 8, !tbaa !107
  %i.g = load double, ptr @comm_heartbeat_timeout, align 8, !tbaa !18 ; 3 uses
  store double %i.g, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 40), align 8, !tbaa !66
  %i.h = fcmp ugt double %i.g, %i.f
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fdiv double %i.g, 3.000000e+00
  store double %i.i, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 48), align 8, !tbaa !107
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store double %i.a, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 24), align 8, !tbaa !111
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 56), align 8, !tbaa !73
  %i.j = tail call double @PMPI_Wtime() #10
  %i.k = load double, ptr @comm_heartbeat_timeout, align 8, !tbaa !18
  %i.l = fadd double %i.j, %i.k
  %i.m = fadd double %i.l, 1.000000e+00
  %i.n = sitofp i32 %.val.val to double
  %i.o = tail call double @log(double noundef %i.n) #10
  %i.p = fadd double %i.o, %i.m
  store double %i.p, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 32), align 8, !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 64), i8 0, i64 16, i1 false)
  store i32 %.val43, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 80), align 8, !tbaa !106
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 88), align 8, !tbaa !86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 104), i8 0, i64 24, i1 false)
  %i.q = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !22
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 32), align 8, !tbaa !28
  %.not41 = icmp eq i32 %i.q, %i.r
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr @opal_mutex_t_class, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 128), align 8, !tbaa !30
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 136), align 8, !tbaa !31
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 2 uses
  %.not6.i = icmp eq ptr %i.t, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.u = phi ptr [ %i.w, %.lr.ph.i ], [ %i.t, %bb.f ]
  %.07.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.s, %bb.f ]
  tail call void %i.u(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 128)) #10, !inline_history !0
  %i.v = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !1

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.f
  %i.x = load ptr, ptr @fd_event_base, align 8, !tbaa !21
  %i.y = tail call ptr @event_new(ptr noundef %i.x, i32 noundef -1, i16 noundef signext 17, ptr noundef nonnull @fd_event_cb, ptr noundef nonnull @comm_world_detector) #10 ; 2 uses
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 8), align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.z = load double, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 48), align 8, !tbaa !107
  %i.aa = fdiv double %i.z, 1.000000e+01          ; 2 uses
  %i.ab = fptosi double %i.aa to i32
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  store i64 %i.ac, ptr %1, align 8, !tbaa !142
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = sitofp i64 %i.ad to double
  %i.af = fadd double %i.aa, %i.ae
  %i.ag = fmul double %i.af, 1.000000e+06
  %i.ah = fptosi double %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !143
  %i.aj = call i32 @event_add(ptr noundef %i.y, ptr noundef nonnull %1) #10 ; 0 uses
  %i.ak = load double, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 48), align 8, !tbaa !107
  %i.al = fcmp olt double %i.ak, 1.000000e-05
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %opal_obj_run_constructors.exit
  call void @opal_progress_event_users_increment() #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %opal_obj_run_constructors.exit
  %i.am = load i32, ptr @comm_detector_use_rdma_hb, align 4, !tbaa !22
  %.not42 = icmp eq i32 %i.am, 0
  br i1 %.not42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @fd_heartbeat_request(ptr noundef nonnull @comm_world_detector)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call fastcc void @fd_heartbeat_send(ptr noundef nonnull @comm_world_detector)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.0 = phi i32 [ 0, %bb.k ], [ -7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fd_heartbeat_send(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.fd_heartbeat_t, align 4     ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 4 uses
  %.not = icmp eq ptr %i.a, @ompi_mpi_comm_world
  br i1 %.not, label %bb.b, label %fd_heartbeat_rdma_put.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @PMPI_Wtime() #10       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !73 ; 2 uses
  %i.e = fcmp une double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = fsub double %i.b, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load double, ptr %i.g, align 8, !tbaa !107
  %i.i = fmul double %i.h, 2.000000e+00
  %i.j = fcmp ult double %i.f, %i.i
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr @ompi_ftmpi_output_handle, align 4, !tbaa !22
  %i.l = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.k) #10
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr @ompi_ftmpi_output_handle, align 4, !tbaa !22
  %i.n = tail call ptr @ompi_pmix_print_name(ptr noundef nonnull @opal_process_info) #10
  %i.o = load double, ptr %i.c, align 8, !tbaa !73
  %i.p = fsub double %i.b, %i.o
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.m, ptr noundef nonnull @.str.18, ptr noundef %i.n, ptr noundef nonnull @__func__.fd_heartbeat_send, i32 noundef 0, double noundef %i.p) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  store double %i.b, ptr %i.c, align 8, !tbaa !73
  %i.q = load i32, ptr @comm_detector_use_rdma_hb, align 4, !tbaa !22
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !103
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %fd_heartbeat_rdma_put.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i8, ptr @opal_uses_threads, align 1, !tbaa !14, !range !15, !noundef !16
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.j, !prof !79

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.w) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !87  ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !103
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !86
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !146
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !98
  %i.am = tail call i32 %i.aj(ptr noundef %i.ah, ptr noundef %i.al, ptr noundef nonnull %i.z, i64 noundef %i.ad, ptr noundef %i.ae, ptr noundef %i.af, i64 noundef 4, i32 noundef 0, i32 noundef 255, ptr noundef nonnull @fd_heartbeat_rdma_cb, ptr noundef %i.ac, ptr noundef null) #10, !inline_history !144
  %i.an = icmp eq i32 %i.am, -2
  br i1 %i.an, label %bb.k, label %bb.l, !llvm.loop !145

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !64
  %i.aq = load i32, ptr %i.z, align 8, !tbaa !106
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %i.r, align 8, !tbaa !103
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = load i8, ptr @opal_uses_threads, align 1, !tbaa !14, !range !15, !noundef !16
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.o, label %fd_heartbeat_rdma_put.exit, !prof !79

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.av = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.au) #10 ; 0 uses
end_hunk_0
