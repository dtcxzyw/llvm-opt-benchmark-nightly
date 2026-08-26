Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/epoll?download=true
inline.NumInlined: 22
inline.NumDeleted: 8
begin_hunk_0_@_interrupt:bb.a
bb.n:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.k, %bb.m, %bb.l, %bb.h, %bb.j, %bb.i
  %.017 = phi i32 [ %i.l, %bb.j ], [ %i.l, %bb.i ], [ %i.l, %bb.h ], [ -1, %bb.m ], [ -1, %bb.l ], [ -1, %bb.k ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ] ; 4 uses
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @pctl, i64 112), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @pctl, i64 112), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @pctl, i64 112), %bb.h ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ]
  %i.z = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @pctl) #10 ; 2 uses
  %.not25 = icmp eq i32 %i.z, 0
  br i1 %.not25, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = tail call ptr @__errno_location() #11
  store i32 %i.z, ptr %i.aa, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._interrupt) #12
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp slt i32 %.017, 0
  br i1 %i.ab, label %bb.ai, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ad = and i64 %i.ac, 512
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = tail call { i64, i64 } @timespec_now() #10 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.515.0.i = phi i64 [ %i.ag, %bb.r ], [ 0, %bb.q ]
  %.sroa.014.0.i = phi i64 [ %i.af, %bb.r ], [ 0, %bb.q ]
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.backedge, %bb.s
  %.020.ph43.i = phi ptr [ @__const._intr_send_byte.buf, %bb.s ], [ %i.aq, %.lr.ph.split.i.backedge ] ; 3 uses
  %.021.ph41.i = phi i64 [ 1, %bb.s ], [ %i.ar, %.lr.ph.split.i.backedge ] ; 4 uses
  %i.ah = tail call i64 @write(i32 noundef range(i32 0, -2147483648) %.017, ptr noundef %.020.ph43.i, i64 noundef %.021.ph41.i) #10 ; 2 uses
  %i.ai = and i64 %i.ah, 2147483648
  %.not2639.i = icmp eq i64 %i.ai, 0
  br i1 %.not2639.i, label %.split.us.i, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.lr.ph.split.i
  %i.aj = tail call ptr @__errno_location() #11   ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph40.i
  %i.ak = load i32, ptr %i.aj, align 4
  switch i32 %i.ak, label %.split34.us.i [
    i32 11, label %bb.u
    i32 4, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.al = tail call i64 @write(i32 noundef range(i32 0, -2147483648) %.017, ptr noundef %.020.ph43.i, i64 noundef %.021.ph41.i) #10 ; 2 uses
  %i.am = and i64 %i.al, 2147483648
  %.not26.i = icmp eq i64 %i.am, 0
  br i1 %.not26.i, label %.split.us.i, label %bb.t

.split34.us.i:                                    ; preds = %bb.t
  %i.an = tail call i32 @get_log_level() #10
  %i.ao = icmp sgt i32 %i.an, 4
  br i1 %i.ao, label %bb.v, label %_intr_send_byte.exit

bb.v:                                             ; preds = %.split34.us.i
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.6, i32 noundef 607, ptr noundef nonnull @__func__._intr_send_byte, i64 noundef %.021.ph41.i, i32 noundef 1) #10
  br label %_intr_send_byte.exit

.split.us.i:                                      ; preds = %bb.u, %.lr.ph.split.i
  %.us-phi.i = phi i64 [ %i.ah, %.lr.ph.split.i ], [ %i.al, %bb.u ]
  %i.ap = and i64 %.us-phi.i, 2147483647          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.020.ph43.i, i64 %i.ap
  %i.ar = sub i64 %.021.ph41.i, %i.ap             ; 3 uses
  %.not27.i = icmp eq i64 %i.ar, 0
  br i1 %.not27.i, label %.outer._crit_edge.i, label %bb.w

bb.w:                                             ; preds = %.split.us.i
  %i.as = tail call i32 @get_log_level() #10
  %i.at = icmp sgt i32 %i.as, 6
  br i1 %i.at, label %bb.x, label %.lr.ph.split.i.backedge

bb.x:                                             ; preds = %bb.w
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.6, i32 noundef 607, ptr noundef nonnull @__func__._intr_send_byte, i64 noundef %i.ar, i32 noundef 1) #10
  br label %.lr.ph.split.i.backedge

.lr.ph.split.i.backedge:                          ; preds = %bb.x, %bb.w
  br label %.lr.ph.split.i, !llvm.loop !20

.outer._crit_edge.i:                              ; preds = %.split.us.i
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.av = and i64 %i.au, 512
  %.not28.i = icmp eq i64 %i.av, 0
  br i1 %.not28.i, label %_intr_send_byte.exit.thread, label %bb.y

bb.y:                                             ; preds = %.outer._crit_edge.i
  %i.aw = tail call { i64, i64 } @timespec_now() #10 ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.aw, 0
  %i.ay = extractvalue { i64, i64 } %i.aw, 1
  %i.az = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ba = and i64 %i.az, 512
  %.not29.i = icmp eq i64 %i.ba, 0
  br i1 %.not29.i, label %_intr_send_byte.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bb = tail call i32 @get_log_level() #10
  %i.bc = icmp sgt i32 %i.bb, 3
  br i1 %i.bc, label %bb.aa, label %_intr_send_byte.exit.thread

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @timer_duration_str(ptr dead_on_unwind nonnull writable sret(%struct.timer_str_t) align 1 %1, i64 %.sroa.014.0.i, i64 %.sroa.515.0.i, i64 %i.ax, i64 %i.ay) #10
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.68, ptr noundef %0, ptr noundef nonnull @__func__._intr_send_byte, ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %_intr_send_byte.exit.thread

_intr_send_byte.exit:                             ; preds = %.split34.us.i, %bb.v
  %i.bd = load i32, ptr %i.aj, align 4            ; 2 uses
  %.not26 = icmp eq i32 %i.bd, 0
  br i1 %.not26, label %_intr_send_byte.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_intr_send_byte.exit
  %i.be = tail call ptr @slurm_strerror(i32 noundef %i.bd) #10
  %i.bf = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.64, ptr noundef %0, ptr noundef nonnull @__func__._interrupt, i32 noundef %.017, ptr noundef %i.be) #10 ; 0 uses
  br label %_intr_send_byte.exit.thread

_intr_send_byte.exit.thread:                      ; preds = %.outer._crit_edge.i, %bb.z, %bb.aa, %bb.y, %_intr_send_byte.exit, %bb.ab
  %i.bg = call i32 @pthread_mutex_lock(ptr noundef nonnull @pctl) #10 ; 2 uses
  %.not27 = icmp eq i32 %i.bg, 0
  br i1 %.not27, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_intr_send_byte.exit.thread
  %i.bh = tail call ptr @__errno_location() #11
  store i32 %i.bg, ptr %i.bh, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._interrupt) #12
  unreachable

bb.ad:                                            ; preds = %_intr_send_byte.exit.thread
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bj = and i64 %i.bi, 512
  %.not28 = icmp eq i64 %i.bj, 0
  br i1 %.not28, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bk = call i32 @get_log_level() #10
  %i.bl = icmp sgt i32 %i.bk, 3
  br i1 %i.bl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 212), align 4
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 176), align 8, !range !8, !noundef !9
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = select i1 %i.bo, i32 84, i32 70
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef %0, ptr noundef nonnull @__func__._interrupt, i32 noundef %i.bm, i32 noundef %i.bp) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 216), align 8
  call void @event_signal_now(i1 noundef zeroext true, ptr noundef %.0, ptr noundef nonnull @__func__._interrupt) #10
  %i.bq = call i32 @pthread_mutex_unlock(ptr noundef nonnull @pctl) #10 ; 2 uses
  %.not29 = icmp eq i32 %i.bq, 0
  br i1 %.not29, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.br = tail call ptr @__errno_location() #11
  store i32 %i.bq, ptr %i.br, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._interrupt) #12
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.p
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @get_log_level() local_unnamed_addr #6

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_atfork(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_atfork_child() #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @pctl, i64 56), i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) getelementptr inbounds nuw (i8, ptr @pctl, i64 120), i8 0, i64 60, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) getelementptr inbounds nuw (i8, ptr @pctl, i64 184), i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @pctl, i64 212), i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @pctl, i8 0, i64 48, i1 false)
  store ptr @.str.9, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 48), align 8
  store ptr @.str.10, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 112), align 8
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 180), align 4
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 204), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 208), align 8
  ret void
}

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #5

declare void @fd_set_nonblocking(i32 noundef) local_unnamed_addr #6

declare void @fd_set_close_on_exec(i32 noundef) local_unnamed_addr #6

declare void @fd_set_blocking(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @epoll_create1(i32 noundef) local_unnamed_addr #3

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_link_fd(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.epoll_event, align 4        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 9
  br i1 %exitcond.not.i, label %bb.d, label %bb.c, !llvm.loop !15

bb.c:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.a = getelementptr inbounds nuw [32 x i8], ptr @fd_types, i64 %indvars.iv.i ; 2 uses
  %i.b = load i32, ptr %i.a, align 16
  %i.c = icmp eq i32 %i.b, %1
  br i1 %i.c, label %_fd_type_to_events.exit, label %bb.b

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.14) #12
  unreachable

_fd_type_to_events.exit:                          ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load i32, ptr %i.d, align 16
  store i32 %i.e, ptr %4, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.g, align 4
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 180), align 4
  %i.i = call i32 @epoll_ctl(i32 noundef %i.h, i32 noundef 1, i32 noundef %0, ptr noundef nonnull %4) #10
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_fd_type_to_events.exit
  %i.j = tail call ptr @__errno_location() #11
  %i.k = load i32, ptr %i.j, align 4              ; 4 uses
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.m = and i64 %i.l, 512
  %.not13 = icmp eq i64 %i.m, 0
  br i1 %.not13, label %bb.s, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call i32 @get_log_level() #10
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.f, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i15, 9
  br i1 %exitcond.not.i16, label %bb.j, label %bb.i, !llvm.loop !16

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i14 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i15, %bb.h ] ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr @fd_types, i64 %indvars.iv.i14 ; 2 uses
  %i.r = load i32, ptr %i.q, align 16
  %i.s = icmp eq i32 %i.r, %1
  br i1 %i.s, label %_fd_type_to_events_string.exit, label %bb.h

bb.j:                                             ; preds = %bb.h
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.14) #12
  unreachable

_fd_type_to_events_string.exit:                   ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call ptr @slurm_strerror(i32 noundef %i.k) #10
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef %3, ptr noundef nonnull @__func__._link_fd, ptr noundef %2, i32 noundef %i.p, ptr noundef %i.u, ptr noundef %i.v) #10
  br label %bb.s

bb.k:                                             ; preds = %_fd_type_to_events.exit
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.x = and i64 %i.w, 512
  %.not12 = icmp eq i64 %i.x, 0
  br i1 %.not12, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = call i32 @get_log_level() #10
  %i.z = icmp sgt i32 %i.y, 3
  br i1 %i.z, label %.preheader, label %bb.r

bb.m:                                             ; preds = %.preheader
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i17, 1 ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %indvars.iv.next.i18, 9
  br i1 %exitcond.not.i19, label %bb.n, label %.preheader, !llvm.loop !17

.preheader:                                       ; preds = %bb.l, %bb.m
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i18, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr @fd_types, i64 %indvars.iv.i17 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 16
  %i.ac = icmp eq i32 %i.ab, %1
  br i1 %i.ac, label %_fd_type_to_type_string.exit, label %bb.m

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.14) #12
  unreachable

_fd_type_to_type_string.exit:                     ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i20, 1 ; 2 uses
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.next.i21, 9
  br i1 %exitcond.not.i22, label %bb.q, label %bb.p, !llvm.loop !16

bb.p:                                             ; preds = %bb.o, %_fd_type_to_type_string.exit
  %indvars.iv.i20 = phi i64 [ 0, %_fd_type_to_type_string.exit ], [ %indvars.iv.next.i21, %bb.o ] ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr @fd_types, i64 %indvars.iv.i20 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 16
  %i.ah = icmp eq i32 %i.ag, %1
  br i1 %i.ah, label %_fd_type_to_events_string.exit23, label %bb.o

bb.q:                                             ; preds = %bb.o
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.14) #12
  unreachable

_fd_type_to_events_string.exit23:                 ; preds = %bb.p
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.13, ptr noundef %3, ptr noundef nonnull @__func__._link_fd, ptr noundef %2, ptr noundef %i.ae, i32 noundef %0, ptr noundef %i.aj) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %bb.l, %_fd_type_to_events_string.exit23
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 200), align 8
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 200), align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %_fd_type_to_events_string.exit, %bb.f, %bb.r
  %.0 = phi i32 [ 0, %bb.r ], [ %i.k, %bb.f ], [ %i.k, %_fd_type_to_events_string.exit ], [ %i.k, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @event_wait_now(ptr noundef, ptr noundef, i64, i64, ptr noundef) local_unnamed_addr #6

declare i32 @epoll_wait(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #6

declare void @event_signal_now(i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #6

declare void @_xstrfmtcatat(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare i32 @error(ptr noundef, ...) local_unnamed_addr #6

declare { i64, i64 } @timespec_now() local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

declare void @timer_duration_str(ptr dead_on_unwind writable sret(%struct.timer_str_t) align 1, i64, i64, i64, i64) local_unnamed_addr #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
