Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/poll?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
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
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.5, i32 noundef 643, ptr noundef nonnull @__func__._intr_send_byte, i64 noundef %.021.ph41.i, i32 noundef 1) #10
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
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.5, i32 noundef 643, ptr noundef nonnull @__func__._intr_send_byte, i64 noundef %i.ar, i32 noundef 1) #10
  br label %.lr.ph.split.i.backedge

.lr.ph.split.i.backedge:                          ; preds = %bb.x, %bb.w
  br label %.lr.ph.split.i, !llvm.loop !24

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
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.60, ptr noundef %0, ptr noundef nonnull @__func__._intr_send_byte, ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %_intr_send_byte.exit.thread

_intr_send_byte.exit:                             ; preds = %.split34.us.i, %bb.v
  %i.bd = load i32, ptr %i.aj, align 4            ; 2 uses
  %.not26 = icmp eq i32 %i.bd, 0
  br i1 %.not26, label %_intr_send_byte.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_intr_send_byte.exit
  %i.be = tail call ptr @slurm_strerror(i32 noundef %i.bd) #10
  %i.bf = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.56, ptr noundef %0, ptr noundef nonnull @__func__._interrupt, i32 noundef %.017, ptr noundef %i.be) #10 ; 0 uses
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
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 220), align 4
  %i.bn = load i8, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 176), align 8, !range !8, !noundef !9
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = select i1 %i.bo, i32 84, i32 70
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.57, ptr noundef %0, ptr noundef nonnull @__func__._interrupt, i32 noundef %i.bm, i32 noundef %i.bp) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 224), align 8
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) getelementptr inbounds nuw (i8, ptr @pctl, i64 120), i8 0, i64 92, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @pctl, i64 220), i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) @pctl, i8 0, i64 48, i1 false)
  store ptr @.str.8, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 48), align 8
  store ptr @.str.9, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 112), align 8
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 212), align 4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 216), align 8
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

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @_link_fd(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.n, %bb.a
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 192), align 8 ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %tailrecurse
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 200), align 8
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !25

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.h = and i64 %i.g, 512
  %.not20 = icmp eq i64 %i.h, 0
  br i1 %.not20, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @get_log_level() #10
  %i.j = icmp sgt i32 %i.i, 3
  br i1 %i.j, label %.preheader, label %bb.k

bb.f:                                             ; preds = %.preheader
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 9
  br i1 %exitcond.not.i, label %bb.g, label %.preheader, !llvm.loop !17

.preheader:                                       ; preds = %bb.e, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr @fd_types, i64 %indvars.iv.i ; 2 uses
  %i.l = load i32, ptr %i.k, align 16
  %i.m = icmp eq i32 %i.l, %1
  br i1 %i.m, label %_fd_type_to_type_string.exit, label %bb.f

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13) #12
  unreachable

_fd_type_to_type_string.exit:                     ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i22, 1 ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next.i23, 9
  br i1 %exitcond.not.i24, label %bb.j, label %bb.i, !llvm.loop !18

bb.i:                                             ; preds = %bb.h, %_fd_type_to_type_string.exit
  %indvars.iv.i22 = phi i64 [ 0, %_fd_type_to_type_string.exit ], [ %indvars.iv.next.i23, %bb.h ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr @fd_types, i64 %indvars.iv.i22 ; 2 uses
  %i.q = load i32, ptr %i.p, align 16
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %_fd_type_to_events_string.exit, label %bb.h

bb.j:                                             ; preds = %bb.h
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13) #12
  unreachable

_fd_type_to_events_string.exit:                   ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef %3, ptr noundef nonnull @__func__._link_fd, ptr noundef %2, ptr noundef %i.o, i32 noundef %0, ptr noundef %i.t) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %_fd_type_to_events_string.exit, %bb.e
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 200), align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 %0, ptr %i.w, align 4
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 200), align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store i32 %1, ptr %i.y, align 4
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 208), align 8
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 208), align 8
  ret void

._crit_edge:                                      ; preds = %bb.b, %tailrecurse
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ac = and i64 %i.ab, 512
  %.not21 = icmp eq i64 %i.ac, 0
  br i1 %.not21, label %bb.n, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ad = tail call i32 @get_log_level() #10
  %i.ae = icmp sgt i32 %i.ad, 3
  %.pre41 = load i32, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 192), align 8 ; 3 uses
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = shl nsw i32 %.pre41, 1
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef %3, ptr noundef nonnull @__func__._link_fd, i32 noundef %.pre41, i32 noundef %i.af) #10
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 192), align 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l, %bb.m
  %i.ag = phi i32 [ %i.a, %._crit_edge ], [ %.pre41, %bb.l ], [ %.pre, %bb.m ]
  %i.ah = shl nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.ah, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 192), align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call ptr @slurm_xrecalloc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pctl, i64 184), i64 noundef %i.ai, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 382, ptr noundef nonnull @__func__._link_fd) #10 ; 0 uses
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @pctl, i64 192), align 8
  %i.al = sext i32 %i.ak to i64
  %i.am = tail call ptr @slurm_xrecalloc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @pctl, i64 200), i64 noundef %i.al, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.5, i32 noundef 383, ptr noundef nonnull @__func__._link_fd) #10 ; 0 uses
  br label %tailrecurse
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare ptr @slurm_xrecalloc(ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @event_wait_now(ptr noundef, ptr noundef, i64, i64, ptr noundef) local_unnamed_addr #6

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #6

declare void @event_signal_now(i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

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
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
