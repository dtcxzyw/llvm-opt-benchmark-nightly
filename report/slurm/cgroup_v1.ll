Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/cgroup_v1?download=true
inline.NumInlined: 14
inline.NumDeleted: 7
begin_hunk_0_@cgroup_p_step_start_oom_mgr:bb.a
bb.p:                                             ; preds = %.split.us
  %i.aq = call i32 @get_log_level() #12
  %i.ar = icmp sgt i32 %i.aq, 6
  br i1 %i.ar, label %bb.q, label %.lr.ph.split.backedge

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr %i.c, align 8
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #13
  %i.au = trunc i64 %i.at to i32
  %i.av = add nsw i32 %i.au, 1
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.43, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__.cgroup_p_step_start_oom_mgr, ptr noundef nonnull @.str.25, i32 noundef 1382, ptr noundef nonnull @__func__.cgroup_p_step_start_oom_mgr, i64 noundef %i.ap, i32 noundef %i.av) #12
  br label %.lr.ph.split.backedge

.lr.ph.split.backedge:                            ; preds = %bb.q, %bb.p
  br label %.lr.ph.split, !llvm.loop !14

.outer._crit_edge:                                ; preds = %.split.us, %bb.l
  %i.aw = call i32 @pipe2(ptr noundef nonnull @oom_pipe, i32 noundef 524288) #12
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.outer._crit_edge
  %i.ay = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.44) #12 ; 0 uses
  br label %bb.x

bb.s:                                             ; preds = %.outer._crit_edge
  %i.az = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 12, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.25, i32 noundef 1394, ptr noundef nonnull @__func__.cgroup_p_step_start_oom_mgr) #12 ; 4 uses
  store i32 %i.l, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %i.r, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 %i.v, ptr %i.bb, align 4
  %i.bc = call i32 @pthread_mutex_init(ptr noundef nonnull @oom_mutex, ptr noundef null) #12 ; 2 uses
  %.not55 = icmp eq i32 %i.bc, 0
  br i1 %.not55, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = tail call ptr @__errno_location() #14
  store i32 %i.bc, ptr %i.bd, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.cgroup_p_step_start_oom_mgr) #15
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.be = call i32 @threadpool_create(ptr noundef nonnull @_oom_event_monitor, ptr noundef nonnull @.str.46, ptr noundef nonnull %i.az, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @oom_thread, ptr noundef nonnull @__func__.cgroup_p_step_start_oom_mgr) #12 ; 2 uses
  %.not56 = icmp eq i32 %i.be, 0
  br i1 %.not56, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = call ptr @slurm_strerror(i32 noundef %i.be) #12
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.47, ptr noundef nonnull @__func__.cgroup_p_step_start_oom_mgr, ptr noundef %i.bf) #15
  unreachable

bb.w:                                             ; preds = %bb.u
  store i32 2, ptr @oom_kill_type, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w, %bb.r, %bb.k, %bb.i, %bb.g
  %.not58 = phi i1 [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.r ], [ true, %bb.w ], [ false, %bb.ab ]
  %.036 = phi i32 [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.k ], [ -1, %bb.r ], [ 0, %bb.w ], [ -1, %bb.ab ] ; 2 uses
  %.035 = phi i32 [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %bb.k ], [ %i.v, %bb.r ], [ %i.v, %bb.w ], [ %i.v, %bb.ab ]
  %.034 = phi i32 [ -1, %bb.g ], [ -1, %bb.i ], [ %i.r, %bb.k ], [ %i.r, %bb.r ], [ %i.r, %bb.w ], [ %i.r, %bb.ab ]
  call void @slurm_xfree(ptr noundef nonnull %i.c) #12
  %i.bg = load i32, ptr @oom_kill_type, align 4
  %.not57 = icmp eq i32 %i.bg, 2
  br i1 %.not57, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = call i32 @close(i32 noundef %.035) #12  ; 0 uses
  %i.bi = call i32 @close(i32 noundef %.034) #12  ; 0 uses
  %i.bj = call i32 @close(i32 noundef %i.l) #12   ; 0 uses
  %i.bk = load i32, ptr @oom_pipe, align 4
  %i.bl = call i32 @close(i32 noundef %i.bk) #12  ; 0 uses
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @oom_pipe, i64 4), align 4
  %i.bn = call i32 @close(i32 noundef %i.bm) #12  ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @slurm_xfree(ptr noundef nonnull %i.b) #12
  call void @slurm_xfree(ptr noundef nonnull %i.a) #12
  br i1 %.not58, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @int_cg, i64 896), align 16
  %i.bp = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.48, ptr noundef %i.bo) #12 ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %.split63.us, %bb.o
  %i.bq = load ptr, ptr %i.b, align 8
  %i.br = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.49, ptr noundef %i.bq) #12 ; 0 uses
  br label %bb.x

bb.ac:                                            ; preds = %bb.z, %bb.aa, %bb.e, %bb.b
  %.037 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.e ], [ %.036, %bb.aa ], [ %.036, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.037
}

declare ptr @xstrstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @eventfd(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #10

declare i32 @threadpool_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_oom_event_monitor(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %1 = alloca [2 x %struct.pollfd], align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr %0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.c = tail call i32 @get_log_level() #12
  %i.d = icmp sgt i32 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.101, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.46) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  store i32 %i.f, ptr %1, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 3, ptr %i.g, align 4
  %i.h = load i32, ptr @oom_pipe, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 8193, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 14
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.c
  %i.m = call i32 @poll(ptr noundef nonnull %1, i64 noundef 2, i32 noundef -1) #12 ; 2 uses
  switch i32 %i.m, label %bb.g [
    i32 -1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %.backedge
  %i.n = tail call ptr @__errno_location() #14
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %.backedge.backedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.102) #12 ; 0 uses
  br label %bb.ad

bb.f:                                             ; preds = %.backedge
  %i.r = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.103) #12 ; 0 uses
  br label %bb.ad

bb.g:                                             ; preds = %.backedge
  %i.s = icmp sgt i32 %i.m, 0
  br i1 %i.s, label %bb.h, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.outer.split.i31, %bb.g, %bb.ab, %_read_fd.exit33, %bb.x, %bb.d
  br label %.backedge, !llvm.loop !15

bb.h:                                             ; preds = %bb.g
  %i.t = load i16, ptr %i.k, align 2              ; 2 uses
  %i.u = and i16 %i.t, 3
  %.not = icmp eq i16 %i.u, 0
  br i1 %.not, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %i.b, align 8
  %i.v = load i32, ptr %i.e, align 4
  br label %.outer.split.i.preheader

.outer.split.i.preheader:                         ; preds = %bb.i, %.outer.i
  %.0.ph.i46 = phi ptr [ %i.b, %bb.i ], [ %i.ac, %.outer.i ] ; 2 uses
  %.011.ph.i45 = phi i64 [ 8, %bb.i ], [ %i.ab, %.outer.i ] ; 2 uses
  br label %.outer.split.i

.outer.split.i:                                   ; preds = %.outer.split.i.preheader, %bb.j
  %i.w = call i64 @read(i32 noundef %i.v, ptr noundef %.0.ph.i46, i64 noundef %.011.ph.i45) #12 ; 3 uses
  switch i64 %i.w, label %.outer.i [
    i64 0, label %.loopexit
    i64 -1, label %bb.j
  ]

bb.j:                                             ; preds = %.outer.split.i
  %i.x = tail call ptr @__errno_location() #14
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp eq i32 %i.y, 4
  br i1 %i.z, label %.outer.split.i, label %bb.k, !llvm.loop !16

bb.k:                                             ; preds = %bb.j
  %i.aa = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.112) #12 ; 0 uses
  br label %.loopexit

.outer.i:                                         ; preds = %.outer.split.i
  %i.ab = sub i64 %.011.ph.i45, %i.w              ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.0.ph.i46, i64 %i.w
  %cond.i = icmp eq i64 %i.ab, 0
  br i1 %cond.i, label %_read_fd.exit, label %.outer.split.i.preheader, !llvm.loop !16

_read_fd.exit:                                    ; preds = %.outer.i
  %i.ad = call i32 @pthread_mutex_lock(ptr noundef nonnull @oom_mutex) #12 ; 2 uses
  %.not19 = icmp eq i32 %i.ad, 0
  br i1 %.not19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_read_fd.exit
  %i.ae = tail call ptr @__errno_location() #14
  store i32 %i.ad, ptr %i.ae, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.46) #15
  unreachable

bb.m:                                             ; preds = %_read_fd.exit
  %i.af = call i32 @get_log_level() #12
  %i.ag = icmp sgt i32 %i.af, 6
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.104, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.46, i64 noundef %.pre) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = load i64, ptr @oom_kill_count, align 8
  %i.ai = add i64 %i.ah, %.pre
  store i64 %i.ai, ptr @oom_kill_count, align 8
  %i.aj = call i32 @get_log_level() #12
  %i.ak = icmp sgt i32 %i.aj, 4
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.al = load i64, ptr @oom_kill_count, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.105, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.46, i64 noundef %i.al) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.am = call i32 @pthread_mutex_unlock(ptr noundef nonnull @oom_mutex) #12 ; 2 uses
  %.not20 = icmp eq i32 %i.am, 0
  br i1 %.not20, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = tail call ptr @__errno_location() #14
  store i32 %i.am, ptr %i.an, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.46) #15
  unreachable

.loopexit:                                        ; preds = %.outer.split.i, %bb.k
  %i.ao = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.106) #12 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.h
  %i.ap = and i16 %i.t, 8248
  %.not18 = icmp eq i16 %i.ap, 0
  br i1 %.not18, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.107) #12 ; 0 uses
  br label %bb.ad

bb.u:                                             ; preds = %bb.q, %bb.s, %.loopexit
  %i.ar = load i16, ptr %i.l, align 2             ; 2 uses
  %i.as = and i16 %i.ar, 1
  %.not21 = icmp eq i16 %i.as, 0
  br i1 %.not21, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %i.b, align 8
  %i.at = load i32, ptr @oom_pipe, align 4
  br label %.outer.split.i31.preheader

.outer.split.i31.preheader:                       ; preds = %bb.v, %.outer.i27
  %.0.ph.i2948 = phi ptr [ %i.b, %bb.v ], [ %i.ba, %.outer.i27 ] ; 2 uses
  %.011.ph.i2847 = phi i64 [ 8, %bb.v ], [ %i.az, %.outer.i27 ] ; 2 uses
  br label %.outer.split.i31

.outer.split.i31:                                 ; preds = %.outer.split.i31.preheader, %bb.w
  %i.au = call i64 @read(i32 noundef %i.at, ptr noundef %.0.ph.i2948, i64 noundef %.011.ph.i2847) #12 ; 3 uses
  switch i64 %i.au, label %.outer.i27 [
    i64 0, label %.backedge.backedge
    i64 -1, label %bb.w
  ], !llvm.loop !15

bb.w:                                             ; preds = %.outer.split.i31
  %i.av = tail call ptr @__errno_location() #14
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp eq i32 %i.aw, 4
  br i1 %i.ax, label %.outer.split.i31, label %bb.x, !llvm.loop !16

bb.x:                                             ; preds = %bb.w
  %i.ay = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.112) #12 ; 0 uses
  br label %.backedge.backedge

.outer.i27:                                       ; preds = %.outer.split.i31
  %i.az = sub i64 %.011.ph.i2847, %i.au           ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0.ph.i2948, i64 %i.au
  %cond.i30 = icmp eq i64 %i.az, 0
  br i1 %cond.i30, label %_read_fd.exit33, label %.outer.split.i31.preheader, !llvm.loop !16

_read_fd.exit33:                                  ; preds = %.outer.i27
  %i.bb = load i64, ptr %i.b, align 8
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.y, label %.backedge.backedge

bb.y:                                             ; preds = %_read_fd.exit33
  %i.bd = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.be = and i64 %i.bd, 36028797018963968
  %.not23 = icmp eq i64 %i.be, 0
  br i1 %.not23, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = call i32 @get_log_level() #12
  %i.bg = icmp sgt i32 %i.bf, 3
  br i1 %i.bg, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.108, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.46) #12
  br label %bb.ad

bb.ab:                                            ; preds = %bb.u
  %i.bh = and i16 %i.ar, 8248
  %.not22 = icmp eq i16 %i.bh, 0
  br i1 %.not22, label %.backedge.backedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.109) #12 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.e, %bb.f, %bb.t, %bb.ac, %bb.z, %bb.aa, %bb.y
  %i.bj = call i32 @pthread_mutex_lock(ptr noundef nonnull @oom_mutex) #12 ; 2 uses
  %.not24 = icmp eq i32 %i.bj, 0
  br i1 %.not24, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bk = tail call ptr @__errno_location() #14
  store i32 %i.bj, ptr %i.bk, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.46) #15
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.bl = load i64, ptr @oom_kill_count, align 8
  %.not25 = icmp eq i64 %i.bl, 0
  br i1 %.not25, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.bm = call i32 @get_log_level() #12
  %i.bn = icmp sgt i32 %i.bm, 4
  br i1 %i.bn, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.110, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.46) #12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah, %bb.ag
  %i.bo = call i32 @pthread_mutex_unlock(ptr noundef nonnull @oom_mutex) #12 ; 2 uses
  %.not26 = icmp eq i32 %i.bo, 0
  br i1 %.not26, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bp = tail call ptr @__errno_location() #14
  store i32 %i.bo, ptr %i.bp, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.46) #15
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.bq = load i32, ptr %i.e, align 4
  %i.br = call i32 @close(i32 noundef %i.bq) #12  ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = call i32 @close(i32 noundef %i.bt) #12  ; 0 uses
  %i.bv = load i32, ptr %0, align 4
  %i.bw = call i32 @close(i32 noundef %i.bv) #12  ; 0 uses
  %i.bx = load i32, ptr @oom_pipe, align 4
  %i.by = call i32 @close(i32 noundef %i.bx) #12  ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #12
  %i.bz = call i32 @get_log_level() #12
  %i.ca = icmp sgt i32 %i.bz, 4
  br i1 %i.ca, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.111, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.46) #12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr null
}

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #10

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @cgroup_p_step_stop_oom_mgr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.h = load i32, ptr @oom_kill_type, align 4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.50, ptr noundef nonnull %i.j) #12 ; 0 uses
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.l = tail call i32 @common_cgroup_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @int_cg, i64 880)) #12
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.51) #12 ; 0 uses
  br label %bb.an

bb.e:                                             ; preds = %bb.c
  %i.n = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 40, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.25, i32 noundef 1482, ptr noundef nonnull @__func__.cgroup_p_step_stop_oom_mgr) #12 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8
  %i.o = load i32, ptr @cgroup_p_has_feature.swap_enabled, align 4 ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %.split, label %cgroup_p_has_feature.exit

.split:                                           ; preds = %bb.e
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 8), align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.77, ptr noundef %i.q) #12
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = call i32 @stat(ptr noundef %i.r, ptr noundef nonnull %1) #12
  call void @slurm_xfree(ptr noundef nonnull %i.e) #12
  %i.t = icmp eq i32 %i.s, 0                      ; 2 uses
  %i.u = zext i1 %i.t to i32
  store i32 %i.u, ptr @cgroup_p_has_feature.swap_enabled, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br i1 %i.t, label %bb.f, label %bb.m

cgroup_p_has_feature.exit:                        ; preds = %bb.e
  %.not66 = icmp eq i32 %i.o, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br i1 %.not66, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.split, %cgroup_p_has_feature.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i64 0, ptr %i.d, align 8
  %i.v = call i32 @xcgroup_get_uint64_param(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @int_cg, i64 880), ptr noundef nonnull @.str.52, ptr noundef nonnull %i.d) #12
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i = load i64, ptr %i.d, align 8
  br label %_failcnt.exit

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.x = and i64 %i.w, 36028797018963968
  %.not4.i = icmp eq i64 %i.x, 0
  br i1 %.not4.i, label %_failcnt.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call i32 @get_log_level() #12
  %i.z = icmp sgt i32 %i.y, 3
  br i1 %i.z, label %bb.i, label %_failcnt.exit

end_hunk_0
