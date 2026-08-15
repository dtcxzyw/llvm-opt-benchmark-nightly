inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@slurm_get_end_time:bb.a
  store i32 %i.j, ptr @slurm_get_end_time.jobid_cache, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  store i64 %i.ac, ptr @slurm_get_end_time.endtime_cache, align 8
  store i64 %i.ac, ptr %1, align 8
  %i.ad = load ptr, ptr %i.y, align 8
  call void @slurm_free_srun_timeout_msg(ptr noundef %i.ad) #15
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  call void @slurm_free_return_code_msg(ptr noundef nonnull %i.af) #15
  %i.ah = load i64, ptr @slurm_get_end_time.endtime_cache, align 8 ; 2 uses
  %.not22 = icmp eq i64 %i.ah, 0
  br i1 %.not22, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %i.ah, ptr %1, align 8
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %.not23 = icmp eq i32 %i.ag, 0
  br i1 %.not23, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = tail call ptr @__errno_location() #16
  store i32 %i.ag, ptr %i.ai, align 4
  br label %bb.s

bb.p:                                             ; preds = %bb.j
  %i.aj = load i64, ptr @slurm_get_end_time.endtime_cache, align 8 ; 2 uses
  %.not24 = icmp eq i64 %i.aj, 0
  br i1 %.not24, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i64 %i.aj, ptr %1, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ak = tail call ptr @__errno_location() #16
  store i32 1000, ptr %i.ak, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.q, %bb.n, %bb.m, %bb.i, %bb.r, %bb.o, %bb.h, %thread-pre-split.thread, %bb.b
  %.0 = phi i32 [ 0, %bb.h ], [ -1, %bb.b ], [ -1, %bb.i ], [ -1, %bb.r ], [ -1, %bb.o ], [ -1, %thread-pre-split.thread ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @islurm_get_rem_time__(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.slurm_step_id_t, align 8    ; 5 uses
  %i.b = tail call i64 @time(ptr noundef null) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.islurm_get_rem_time__.step_id, i64 24, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.c, ptr %i.d, align 8
  %i.e = call i32 @slurm_get_end_time(ptr noundef nonnull byval(%struct.slurm_step_id_t) align 8 %1, ptr noundef nonnull %i.a)
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8
  %i.g = call double @difftime(i64 noundef %i.f, i64 noundef %i.b) #16
  %i.h = fptosi double %i.g to i32
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.store.select, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @islurm_get_rem_time2__() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %0 = alloca %struct.slurm_step_id_t, align 8    ; 5 uses
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.7) #15 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #15, !inline_history !17
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call i64 @time(ptr noundef null) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @__const.islurm_get_rem_time__.step_id, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.g, align 8
  %i.h = call i32 @slurm_get_end_time(ptr noundef nonnull byval(%struct.slurm_step_id_t) align 8 %0, ptr noundef nonnull %i.a)
  %.not6.i = icmp eq i32 %i.h, 0
  br i1 %.not6.i, label %bb.c, label %islurm_get_rem_time__.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.a, align 8
  %i.j = call double @difftime(i64 noundef %i.i, i64 noundef %i.f) #16
  %i.k = fptosi double %i.j to i32
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  br label %islurm_get_rem_time__.exit

islurm_get_rem_time__.exit:                       ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ 0, %bb.b ], [ %spec.store.select.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %islurm_get_rem_time__.exit
  %.0 = phi i32 [ %.0.i, %islurm_get_rem_time__.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @slurm_free_srun_timeout_msg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @slurm_job_node_ready(ptr nofree noundef readonly byval(%struct.slurm_step_id_t) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.slurm_msg, align 8          ; 6 uses
  %2 = alloca %struct.slurm_msg, align 8          ; 7 uses
  %3 = alloca %struct.job_id_msg, align 8         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @slurm_msg_t_init(ptr noundef nonnull %1) #15
  call void @slurm_msg_t_init(ptr noundef nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 226
  store i16 4019, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  store ptr %3, ptr %i.c, align 8
  %i.d = load ptr, ptr @working_cluster_rec, align 8
  %i.e = call i32 @slurm_send_recv_controller_msg(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.d) #15
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 226
  %i.h = load i16, ptr %i.g, align 2
  switch i16 %i.h, label %bb.e [
    i16 4020, label %bb.c
    i16 8001, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.n, 2017
  %switch.selectcmp.case2 = icmp eq i32 %i.n, 2000
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.o = select i1 %switch.selectcmp, i32 -2, i32 -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink = phi ptr [ %i.j, %bb.c ], [ %i.m, %bb.d ]
  %.0.ph = phi i32 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  call void @slurm_free_return_code_msg(ptr noundef nonnull %.sink) #15
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @slurm_network_callerid(ptr noundef byval(%struct.network_callerid_msg) align 8 %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.slurm_msg, align 8          ; 7 uses
  %5 = alloca %struct.slurm_msg, align 8          ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = tail call i32 @get_log_level() #15
  %i.b = icmp sgt i32 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.8) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @slurm_msg_t_init(ptr noundef nonnull %5) #15
  call void @slurm_msg_t_init(ptr noundef nonnull %4) #15
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %7 = load i32, ptr %6, align 8                  ; 2 uses
  %8 = trunc i32 %7 to i16
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %9, 10                        ; 2 uses
  %.sroa.9.sroa.0.0.copyload17 = load <16 x i8>, ptr %0, align 8
  %.sroa.8.4.copyload = load i32, ptr %0, align 8
  %.sroa.9.sroa.0.0 = select i1 %10, <16 x i8> %.sroa.9.sroa.0.0.copyload17, <16 x i8> zeroinitializer
  %.sroa.8.0 = select i1 %10, i32 0, i32 %.sroa.8.4.copyload
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1384), align 8
  %i.d = trunc i32 %i.c to i16
  %rev.i14 = call noundef i16 @llvm.bswap.i16(i16 %i.d)
  store i16 %8, ptr %5, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %rev.i14, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <16 x i8> %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.10.0..sroa_idx, i8 0, i64 104, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 226
  store i16 5035, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 192
  store ptr %0, ptr %i.f, align 8
  call void @slurm_msg_set_r_uid(ptr noundef nonnull %5, i32 noundef -1) #15
  %i.g = call i32 @slurm_send_recv_node_msg(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 0) #15
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 226
  %i.j = load i16, ptr %i.i, align 2
  switch i16 %i.j, label %bb.h [
    i16 5036, label %bb.e
    i16 8001, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = sext i32 %3 to i64
  %i.p = call i64 @strlcpy(ptr noundef %2, ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef %i.o) #15 ; 0 uses
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = tail call ptr @__errno_location() #16
  store i32 %i.s, ptr %i.t, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.u = tail call ptr @__errno_location() #16
  store i32 1000, ptr %i.u, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.r, %bb.f ], [ %.pre, %bb.e ]
  call void @slurm_free_network_callerid_msg(ptr noundef %i.v) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ -1, %bb.g ], [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.0
}

declare i32 @get_log_level() local_unnamed_addr #3

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @slurm_free_network_callerid_msg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @slurm_load_job_prio(ptr nofree noundef captures(none) %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.slurm_msg, align 8          ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %struct.slurm_msg, align 8          ; 6 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store ptr null, ptr %i.g, align 8
  %i.h = and i16 %1, 80
  %or.cond = icmp eq i16 %i.h, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 @slurm_load_federation(ptr noundef nonnull %i.g) #15
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 264), align 8
  %i.m = call zeroext i1 @cluster_in_federation(ptr noundef %i.k, ptr noundef %i.l) #15
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = and i16 %1, -81
  %i.o = or disjoint i16 %i.n, 16
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.010 = phi i16 [ %i.o, %bb.d ], [ %1, %bb.c ]  ; 3 uses
  call void @slurm_msg_t_init(ptr noundef nonnull %3) #15
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 226
  store i16 2026, ptr %i.p, align 2
  %i.q = and i16 %.010, 64
  %.not13 = icmp eq i16 %i.q, 0
  br i1 %.not13, label %bb.bd, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.g, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 264), align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store ptr null, ptr %0, align 8
  %i.t = call ptr @list_create(ptr noundef null) #15 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call i32 @list_count(ptr noundef %i.v) #15
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 3
  %i.z = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.y, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.9, i32 noundef 1067, ptr noundef nonnull @__func__._load_fed_job_prio) #15
  store ptr %i.z, ptr %i.f, align 8
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = call ptr @list_iterator_create(ptr noundef %i.aa) #15 ; 4 uses
  %i.ac = call ptr @list_next(ptr noundef %i.ab) #15 ; 2 uses
  %.not357.i = icmp eq ptr %i.ac, null
  br i1 %.not357.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.f
  call void @list_iterator_destroy(ptr noundef %i.ab) #15
  br label %._crit_edge362.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ad = and i16 %.010, 16
  %i.ae = icmp eq i16 %i.ad, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.lr.ph.i
  %i.af = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.az, %bb.m ] ; 3 uses
  %.0257358.i = phi i32 [ 0, %.lr.ph.i ], [ %.1258.i, %bb.m ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.m, label %bb.h, !llvm.loop !18

bb.h:                                             ; preds = %bb.g
  %i.aj = load i8, ptr %i.ah, align 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %bb.i, !llvm.loop !18

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 280
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call i32 @xstrcmp(ptr noundef %i.am, ptr noundef %i.s) #15
  %.not302.i = icmp eq i32 %i.an, 0               ; 2 uses
  %or.cond.i = or i1 %i.ae, %.not302.i
  br i1 %or.cond.i, label %bb.j, label %bb.m, !llvm.loop !18

bb.j:                                             ; preds = %bb.i
  %i.ao = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 32, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.9, i32 noundef 1080, ptr noundef nonnull @__func__._load_fed_job_prio) #15 ; 5 uses
  store ptr %i.af, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = zext i1 %.not302.i to i8
  store i8 %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %3, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.t, ptr %i.as, align 8
  %i.at = load ptr, ptr %i.f, align 8
  %i.au = sext i32 %.0257358.i to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = call i32 @threadpool_create(ptr noundef nonnull @_load_job_prio_thread, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.ao, i1 noundef zeroext false, ptr noundef null, ptr noundef %i.av, ptr noundef nonnull @__func__._load_fed_job_prio) #15 ; 2 uses
  %.not303.i = icmp eq i32 %i.aw, 0
  br i1 %.not303.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = call ptr @slurm_strerror(i32 noundef %i.aw) #15
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__._load_fed_job_prio, ptr noundef %i.ax) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ay = add nsw i32 %.0257358.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.h, %bb.g
  %.1258.i = phi i32 [ %.0257358.i, %bb.g ], [ %i.ay, %bb.l ], [ %.0257358.i, %bb.h ], [ %.0257358.i, %bb.i ] ; 3 uses
  %i.az = call ptr @list_next(ptr noundef %i.ab) #15 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.m
  call void @list_iterator_destroy(ptr noundef %i.ab) #15
  %i.ba = icmp sgt i32 %.1258.i, 0
  br i1 %i.ba, label %.lr.ph361.preheader.i, label %._crit_edge362.i

.lr.ph361.preheader.i:                            ; preds = %._crit_edge.i
  %wide.trip.count.i = zext nneg i32 %.1258.i to i64
  br label %.lr.ph361.i

.lr.ph361.i:                                      ; preds = %bb.p, %.lr.ph361.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph361.preheader.i ], [ %indvars.iv.next.i, %bb.p ] ; 2 uses
  %i.bb = load ptr, ptr %i.f, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = call i32 @threadpool_join(i64 noundef %i.bd, ptr noundef nonnull @__func__._load_fed_job_prio) #15 ; 2 uses
  %.not301.i = icmp eq i32 %i.be, 0
  br i1 %.not301.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph361.i
  %i.bf = tail call ptr @__errno_location() #16
  store i32 %i.be, ptr %i.bf, align 4
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph361.i
  store i64 0, ptr %i.bc, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge362.i, label %.lr.ph361.i, !llvm.loop !19

._crit_edge362.i:                                 ; preds = %bb.p, %._crit_edge.i, %._crit_edge.thread.i
  call void @slurm_xfree(ptr noundef nonnull %i.f) #15
  call void @list_sort(ptr noundef %i.t, ptr noundef nonnull @_local_resp_first_prio) #15
  %i.bg = call ptr @list_iterator_create(ptr noundef %i.t) #15 ; 3 uses
  %i.bh = call ptr @list_next(ptr noundef %i.bg) #15 ; 3 uses
  store ptr %i.bh, ptr %i.a, align 8
  %.not290363.i = icmp eq ptr %i.bh, null
  br i1 %.not290363.i, label %._crit_edge368.i, label %.lr.ph367.i

.lr.ph367.i:                                      ; preds = %._crit_edge362.i, %bb.x
  %i.bi = phi ptr [ %i.bu, %bb.x ], [ %i.bh, %._crit_edge362.i ] ; 2 uses
  %.0273365.i = phi i32 [ %.2275.i, %bb.x ], [ 0, %._crit_edge362.i ] ; 3 uses
  %.0276364.i = phi ptr [ %.1277.i, %bb.x ], [ null, %._crit_edge362.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 4 uses
  store ptr %i.bk, ptr %i.b, align 8
  %i.bl = load ptr, ptr %i.bk, align 8            ; 3 uses
  %.not298.i = icmp eq ptr %i.bl, null
  br i1 %.not298.i, label %bb.x, label %bb.q

end_hunk_0
