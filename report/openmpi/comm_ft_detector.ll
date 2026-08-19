inline.NumInlined: 55
inline.NumDeleted: 29
begin_hunk_0_@fd_progress:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.w = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !17
  %.not1 = icmp eq i32 %i.w, 0
  br i1 %.not1, label %._crit_edge, label %.lr.ph, !llvm.loop !113

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !116  ; 2 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %ompi_request_cancel.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.aa = call i32 %i.z(ptr noundef nonnull %i.x, i32 noundef 1) #10, !inline_history !123 ; 0 uses
  br label %ompi_request_cancel.exit

ompi_request_cancel.exit:                         ; preds = %._crit_edge, %bb.i
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !124
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
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 20), align 4, !tbaa !72 ; 2 uses
  %.not = icmp eq i32 %i.b, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 80), align 8, !tbaa !125
  tail call fastcc void @fd_heartbeat_send(ptr noundef nonnull @comm_world_detector)
  store double +inf, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 48), align 8, !tbaa !126
  store i32 -2, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 20), align 4, !tbaa !72
  fence seq_cst
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.pr = load i32, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 16), align 8, !tbaa !61 ; 2 uses
  %.not2430 = icmp eq i32 %.pr, -2
  br i1 %.not2430, label %._crit_edge, label %.lr.ph.preheader

.loopexit:                                        ; preds = %bb.e
  %.not24 = icmp eq i32 %i.g, -2
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader, !llvm.loop !127

.lr.ph.preheader:                                 ; preds = %bb.c, %.loopexit
  %i.c = phi i32 [ %i.g, %.loopexit ], [ %.pr, %bb.c ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.d = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !17
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.f = tail call i32 @opal_progress() #10       ; 0 uses
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 16), align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.g = phi i32 [ %.pre, %bb.d ], [ %i.c, %.lr.ph ] ; 3 uses
  %i.h = icmp eq i32 %i.c, %i.g
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !128

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  %i.i = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !17
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.k = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !17 ; 2 uses
  %i.l = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.h, !prof !80

bb.g:                                             ; preds = %bb.f
  %i.n = sub nsw i32 0, %i.k
  %i.o = atomicrmw volatile add ptr @fd_thread_active, i32 %i.n monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.h:                                             ; preds = %bb.f
  %i.p = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !17
  %i.q = sub nsw i32 %i.p, %i.k
  store volatile i32 %i.q, ptr @fd_thread_active, align 4, !tbaa !17
  %i.r = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !17 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.g, %bb.h
  %i.s = load ptr, ptr @fd_event_base, align 8, !tbaa !14
  %i.t = tail call i32 @event_base_loopbreak(ptr noundef %i.s) #10 ; 0 uses
  %i.u = call i32 @opal_thread_join(ptr noundef nonnull @fd_thread, ptr noundef nonnull %i.a) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.i

bb.i:                                             ; preds = %opal_thread_add_fetch_32.exit, %._crit_edge
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 8), align 8, !tbaa !129 ; 2 uses
  %.not25 = icmp eq ptr %i.v, null
  br i1 %.not25, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = call i32 @event_del(ptr noundef nonnull %i.v) #10 ; 0 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 8), align 8, !tbaa !129
  call void @event_free(ptr noundef %i.x) #10
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 8), align 8, !tbaa !129
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = load ptr, ptr @opal_sync_event_base, align 8, !tbaa !14
  %i.z = load ptr, ptr @fd_event_base, align 8, !tbaa !14 ; 2 uses
  %.not26 = icmp eq ptr %i.y, %i.z
  br i1 %.not26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @event_base_free(ptr noundef %i.z) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 88), align 8, !tbaa !88 ; 2 uses
  %.not27 = icmp eq ptr %i.aa, null
  br i1 %.not27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 64), align 8, !tbaa !89
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %.val29 = load ptr, ptr %i.ac, align 8, !tbaa !90 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val29, i64 264
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !95
  %i.af = call i32 %i.ae(ptr noundef %.val29, ptr noundef nonnull %i.aa) #10, !inline_history !99 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 104), align 8, !tbaa !130 ; 2 uses
  %.not28 = icmp eq ptr %i.ag, null
  br i1 %.not28, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 72), align 8, !tbaa !131
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val = load ptr, ptr %i.ai, align 8, !tbaa !90 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !95
  %i.al = call i32 %i.ak(ptr noundef %.val, ptr noundef nonnull %i.ag) #10, !inline_history !99 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 -2, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 16), align 8, !tbaa !61
  store i32 -2, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 20), align 4, !tbaa !72
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define range(i32 -7, 1) i32 @ompi_comm_failure_detector_start() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @comm_heartbeat_recv_cb_type, align 4, !tbaa !17
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %opal_thread_add_fetch_32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @comm_detector_use_thread, align 1, !tbaa !8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e, !prof !80

bb.d:                                             ; preds = %bb.c
  %i.g = atomicrmw volatile add ptr @fd_thread_active, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.e:                                             ; preds = %bb.c
  %i.h = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !17
  %i.i = add nsw i32 %i.h, 1
  store volatile i32 %i.i, ptr @fd_thread_active, align 4, !tbaa !17
  %i.j = load volatile i32, ptr @fd_thread_active, align 4, !tbaa !17 ; 0 uses
  br label %opal_thread_add_fetch_32.exit

bb.f:                                             ; preds = %bb.b
  %i.k = tail call i32 @ompi_comm_start_detector(ptr noundef nonnull @ompi_mpi_comm_world)
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.e, %bb.d, %bb.a, %bb.f
  %.0 = phi i32 [ %i.k, %bb.f ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -7, 1) i32 @ompi_comm_start_detector(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %.not = icmp eq ptr %0, @ompi_mpi_comm_world
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.a = tail call double @PMPI_Wtime() #10       ; 2 uses
  store double %i.a, ptr @startdate, align 8, !tbaa !12
  store ptr @ompi_mpi_comm_world, ptr @comm_world_detector, align 8, !tbaa !75
  %ompi_mpi_comm_world.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 264), align 8, !tbaa !68
  %i.b = getelementptr i8, ptr %ompi_mpi_comm_world.val, i64 16
  %ompi_mpi_comm_world.val.val = load i32, ptr %i.b, align 8, !tbaa !69 ; 4 uses
  %ompi_mpi_comm_world.val43 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 220), align 4, !tbaa !36 ; 2 uses
  %i.c = add nsw i32 %ompi_mpi_comm_world.val43, %ompi_mpi_comm_world.val.val ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  %i.e = srem i32 %i.d, %ompi_mpi_comm_world.val.val
  store i32 %i.e, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 16), align 8, !tbaa !61
  %i.f = add nsw i32 %i.c, 1
  %i.g = srem i32 %i.f, %ompi_mpi_comm_world.val.val
  store i32 %i.g, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 20), align 4, !tbaa !72
  %i.h = load double, ptr @comm_heartbeat_period, align 8, !tbaa !12 ; 2 uses
  store double %i.h, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 48), align 8, !tbaa !126
  %i.i = load double, ptr @comm_heartbeat_timeout, align 8, !tbaa !12 ; 3 uses
  store double %i.i, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 40), align 8, !tbaa !67
  %i.j = fcmp ugt double %i.i, %i.h
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = fdiv double %i.i, 3.000000e+00
  store double %i.k, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 48), align 8, !tbaa !126
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store double %i.a, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 24), align 8, !tbaa !132
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 56), align 8, !tbaa !74
  %i.l = tail call double @PMPI_Wtime() #10
  %i.m = load double, ptr @comm_heartbeat_timeout, align 8, !tbaa !12
  %i.n = fadd double %i.l, %i.m
  %i.o = fadd double %i.n, 1.000000e+00
  %i.p = sitofp i32 %ompi_mpi_comm_world.val.val to double
  %i.q = tail call double @log(double noundef %i.p) #10
  %i.r = fadd double %i.q, %i.o
  store double %i.r, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 32), align 8, !tbaa !66
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 64), i8 0, i64 16, i1 false)
  store i32 %ompi_mpi_comm_world.val43, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 80), align 8, !tbaa !125
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 88), align 8, !tbaa !88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 104), i8 0, i64 24, i1 false)
  %i.s = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !17
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 32), align 8, !tbaa !18
  %.not41 = icmp eq i32 %i.s, %i.t
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @opal_class_initialize(ptr noundef nonnull @opal_mutex_t_class) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr @opal_mutex_t_class, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 128), align 8, !tbaa !24
  store volatile i32 1, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 136), align 8, !tbaa !26
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @opal_mutex_t_class, i64 40), align 8, !tbaa !27 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 2 uses
  %.not6.i = icmp eq ptr %i.v, null
  br i1 %.not6.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.w = phi ptr [ %i.y, %.lr.ph.i ], [ %i.v, %bb.f ]
  %.07.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.u, %bb.f ]
  tail call void %i.w(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 128)) #10, !inline_history !29
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %opal_obj_run_constructors.exit, label %.lr.ph.i, !llvm.loop !30

opal_obj_run_constructors.exit:                   ; preds = %.lr.ph.i, %bb.f
  %i.z = load ptr, ptr @fd_event_base, align 8, !tbaa !14
  %i.aa = tail call ptr @event_new(ptr noundef %i.z, i32 noundef -1, i16 noundef signext 17, ptr noundef nonnull @fd_event_cb, ptr noundef nonnull @comm_world_detector) #10 ; 2 uses
  store ptr %i.aa, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 8), align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.ab = load double, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 48), align 8, !tbaa !126
  %i.ac = fdiv double %i.ab, 1.000000e+01         ; 2 uses
  %i.ad = fptosi double %i.ac to i32
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  store i64 %i.ae, ptr %1, align 8, !tbaa !133
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = sitofp i64 %i.af to double
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = fmul double %i.ah, 1.000000e+06
  %i.aj = fptosi double %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !135
  %i.al = call i32 @event_add(ptr noundef %i.aa, ptr noundef nonnull %1) #10 ; 0 uses
  %i.am = load double, ptr getelementptr inbounds nuw (i8, ptr @comm_world_detector, i64 48), align 8, !tbaa !126
  %i.an = fcmp olt double %i.am, 1.000000e-05
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %opal_obj_run_constructors.exit
  call void @opal_progress_event_users_increment() #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %opal_obj_run_constructors.exit
  %i.ao = load i32, ptr @comm_detector_use_rdma_hb, align 4, !tbaa !17
  %.not42 = icmp eq i32 %i.ao, 0
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !75
  %.not = icmp eq ptr %i.a, @ompi_mpi_comm_world
  br i1 %.not, label %bb.b, label %fd_heartbeat_rdma_put.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @PMPI_Wtime() #10       ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !74 ; 2 uses
  %i.e = fcmp une double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = fsub double %i.b, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load double, ptr %i.g, align 8, !tbaa !126
  %i.i = fmul double %i.h, 2.000000e+00
  %i.j = fcmp ult double %i.f, %i.i
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr @ompi_ftmpi_output_handle, align 4, !tbaa !17
  %i.l = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.k) #10
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr @ompi_ftmpi_output_handle, align 4, !tbaa !17
  %i.n = tail call ptr @ompi_pmix_print_name(ptr noundef nonnull @opal_process_info) #10
  %i.o = load double, ptr %i.c, align 8, !tbaa !74
  %i.p = fsub double %i.b, %i.o
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.m, ptr noundef nonnull @.str.18, ptr noundef %i.n, ptr noundef nonnull @__func__.fd_heartbeat_send, i32 noundef 0, double noundef %i.p) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  store double %i.b, ptr %i.c, align 8, !tbaa !74
  %i.q = load i32, ptr @comm_detector_use_rdma_hb, align 4, !tbaa !17
  %.not19 = icmp eq i32 %i.q, 0
  br i1 %.not19, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !107
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %fd_heartbeat_rdma_put.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.j, !prof !80

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
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !89  ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !107
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !88
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !90 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 208
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !101
  %i.am = tail call i32 %i.aj(ptr noundef %i.ah, ptr noundef %i.al, ptr noundef nonnull %i.z, i64 noundef %i.ad, ptr noundef %i.ae, ptr noundef %i.af, i64 noundef 4, i32 noundef 0, i32 noundef 255, ptr noundef nonnull @fd_heartbeat_rdma_cb, ptr noundef %i.ac, ptr noundef null) #10, !inline_history !137
  %i.an = icmp eq i32 %i.am, -2
  br i1 %i.an, label %bb.k, label %bb.l, !llvm.loop !138

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !61
  %i.aq = load i32, ptr %i.z, align 8, !tbaa !125
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 0, ptr %i.r, align 8, !tbaa !107
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.o, label %fd_heartbeat_rdma_put.exit, !prof !80

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.av = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.au) #10 ; 0 uses
  br label %fd_heartbeat_rdma_put.exit

bb.p:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %ompi_mpi_comm_world.val = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 216), align 8, !tbaa !139
  store i32 %ompi_mpi_comm_world.val, ptr %1, align 4, !tbaa !140
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 232), align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !141
  %i.ay = load i32, ptr @comm_heartbeat_recv_cb_type, align 4, !tbaa !17
  %i.az = trunc i32 %i.ay to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 %i.az, ptr %i.ba, align 4, !tbaa !142
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !125
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !72
  %ompi_mpi_comm_world.val20 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_comm_world, i64 272), align 8, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %ompi_mpi_comm_world.val20, i64 32 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !77
  %i.bi = sext i32 %i.bf to i64                   ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !78 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bm = trunc i64 %i.bl to i1
  br i1 %i.bm, label %bb.q, label %ompi_comm_peer_lookup.exit, !prof !80

bb.q:                                             ; preds = %bb.p
  %i.bn = lshr i64 %i.bl, 1
  %i.bo = and i64 %i.bn, 32767
  %i.bp = and i64 %i.bl, -65536
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %i.bo, %i.bp
  %i.bq = tail call ptr @ompi_proc_for_name(i64 %.sroa.0.0.insert.insert.i.i.i.i.i) #10 ; 5 uses
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !77
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bi
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = cmpxchg volatile ptr %i.bs, i64 %i.bl, i64 %i.bt acquire monotonic, align 8
  %i.bv = extractvalue { i64, i1 } %i.bu, 1
  br i1 %i.bv, label %bb.r, label %ompi_comm_peer_lookup.exit

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bx = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.s, label %bb.t, !prof !80

bb.s:                                             ; preds = %bb.r
  %i.bz = atomicrmw volatile add ptr %i.bw, i32 1 monotonic, align 4 ; 0 uses
  br label %ompi_comm_peer_lookup.exit

bb.t:                                             ; preds = %bb.r
  %i.ca = load volatile i32, ptr %i.bw, align 4, !tbaa !17
  %i.cb = add nsw i32 %i.ca, 1
  store volatile i32 %i.cb, ptr %i.bw, align 4, !tbaa !17
  %i.cc = load volatile i32, ptr %i.bw, align 4, !tbaa !17 ; 0 uses
  br label %ompi_comm_peer_lookup.exit

ompi_comm_peer_lookup.exit:                       ; preds = %bb.p, %bb.q, %bb.s, %bb.t
  %.0.i.i.i.i = phi ptr [ %i.bk, %bb.p ], [ %i.bq, %bb.t ], [ %i.bq, %bb.s ], [ %i.bq, %bb.q ]
  %i.cd = call i32 @ompi_comm_rbcast_send_msg(ptr noundef %.0.i.i.i.i, ptr noundef nonnull %1, i64 noundef 16) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %fd_heartbeat_rdma_put.exit

fd_heartbeat_rdma_put.exit:                       ; preds = %bb.o, %bb.n, %bb.g, %ompi_comm_peer_lookup.exit, %bb.a
  ret void
}

declare i32 @opal_progress() local_unnamed_addr #1

declare i32 @event_base_loopbreak(ptr noundef) local_unnamed_addr #1

declare i32 @opal_thread_join(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @event_del(ptr noundef) local_unnamed_addr #1

declare void @event_free(ptr noundef) local_unnamed_addr #1

declare void @event_base_free(ptr noundef) local_unnamed_addr #1

declare double @PMPI_Wtime() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #3

declare ptr @event_new(ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @fd_event_cb(i32 %0, i16 signext %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call double @PMPI_Wtime() #10       ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !132 ; 2 uses
  store double %i.a, ptr %i.b, align 8, !tbaa !132
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = load double, ptr %i.d, align 8, !tbaa !74
  %i.f = fsub double %i.a, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !126
  %i.i = fmul double %i.h, 9.000000e-01
  %i.j = fcmp ogt double %i.f, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @fd_heartbeat_send(ptr noundef nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !66
  %i.m = fcmp oeq double %i.l, +inf
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr @comm_detector_use_rdma_hb, align 4, !tbaa !17
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %2, align 8, !tbaa !75
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.p = load volatile i32, ptr %i.o, align 8, !tbaa !143 ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 220
  %.val51 = load i32, ptr %i.r, align 4, !tbaa !36
  %i.s = icmp eq i32 %.val51, %i.p
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr @ompi_ftmpi_output_handle, align 4, !tbaa !17
  %i.u = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 10, i32 noundef %i.t) #10
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr @ompi_ftmpi_output_handle, align 4, !tbaa !17
  %i.w = tail call ptr @ompi_pmix_print_name(ptr noundef nonnull @opal_process_info) #10
  %i.x = load double, ptr @startdate, align 8, !tbaa !12
  %i.y = fsub double %i.a, %i.x
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.v, ptr noundef nonnull @.str.15, ptr noundef %i.w, ptr noundef nonnull @__func__.fd_event_cb, double noundef %i.y) #10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -2, ptr %i.z, align 8, !tbaa !61
  store double +inf, ptr %i.k, align 8, !tbaa !66
  br label %.critedge

bb.i:                                             ; preds = %bb.e
  %i.aa = icmp sgt i32 %i.p, -1
  br i1 %i.aa, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  store volatile i32 -1, ptr %i.o, align 8, !tbaa !143
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !61
  %.not50 = icmp eq i32 %i.p, %i.ac
  br i1 %.not50, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i32, ptr @ompi_ftmpi_output_handle, align 4, !tbaa !17
  %i.ae = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 1, i32 noundef %i.ad) #10
  br i1 %i.ae, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.af = load i32, ptr @ompi_ftmpi_output_handle, align 4, !tbaa !17
  %i.ag = tail call ptr @ompi_pmix_print_name(ptr noundef nonnull @opal_process_info) #10
  %i.ah = load double, ptr @startdate, align 8, !tbaa !12
  %i.ai = fsub double %i.a, %i.ah
  %i.aj = load i32, ptr %i.ab, align 8, !tbaa !61
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.af, ptr noundef nonnull @.str.16, ptr noundef %i.ag, ptr noundef nonnull @__func__.fd_event_cb, double noundef %i.ai, i32 noundef %i.p, i32 noundef %i.aj) #10
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  store double %i.a, ptr %i.k, align 8, !tbaa !66
  br label %.critedge

bb.n:                                             ; preds = %._crit_edge, %bb.i
  %i.ak = phi ptr [ %.pre, %._crit_edge ], [ %i.q, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !61
  %i.an = getelementptr i8, ptr %i.ak, i64 272
  %.val = load ptr, ptr %i.an, align 8, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !77
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64               ; 4 uses
  %i.au = trunc i64 %i.at to i1
  br i1 %i.au, label %bb.o, label %ompi_comm_peer_lookup.exit, !prof !80

bb.o:                                             ; preds = %bb.n
  %i.av = lshr i64 %i.at, 1
  %i.aw = and i64 %i.av, 32767
  %i.ax = and i64 %i.at, -65536
  %.sroa.0.0.insert.insert.i.i.i.i.i = or disjoint i64 %i.aw, %i.ax
  %i.ay = tail call ptr @ompi_proc_for_name(i64 %.sroa.0.0.insert.insert.i.i.i.i.i) #10 ; 5 uses
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !77
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.aq
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = cmpxchg volatile ptr %i.ba, i64 %i.at, i64 %i.bb acquire monotonic, align 8
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.p, label %ompi_comm_peer_lookup.exit

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.bf = load i8, ptr @opal_uses_threads, align 1, !tbaa !8, !range !10, !noundef !11
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.q, label %bb.r, !prof !80

bb.q:                                             ; preds = %bb.p
  %i.bh = atomicrmw volatile add ptr %i.be, i32 1 monotonic, align 4 ; 0 uses
  br label %ompi_comm_peer_lookup.exit

bb.r:                                             ; preds = %bb.p
  %i.bi = load volatile i32, ptr %i.be, align 4, !tbaa !17
end_hunk_0
