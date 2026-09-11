Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/launch?download=true
inline.NumInlined: 25
inline.NumDeleted: 15
begin_hunk_0_@_task_finish:bb.a
  %i.ce = icmp slt i64 %i.cd, 0
  %i.cf = icmp ult i64 %.0.i.i, 32768
  %i.cg = and i1 %i.cf, %i.ce
  br i1 %i.cg, label %bb.t, label %bb.u, !llvm.loop !24

bb.u:                                             ; preds = %bb.t
  %i.ch = icmp ugt i64 %.0.i.i, 32767
  %.pre.i.i = load ptr, ptr %i.a, align 8         ; 2 uses
  br i1 %i.ch, label %bb.v, label %_hostset_to_string.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 65534
  store i16 43, ptr %i.ci, align 1
  br label %_hostset_to_string.exit.i

_hostset_to_string.exit.i:                        ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @hostset_destroy(ptr noundef %i.bt) #17
  br label %_task_ids_to_host_list.exit

_task_ids_to_host_list.exit:                      ; preds = %launch_get_slurm_step_layout.exit.thread.i, %bb.p, %_hostset_to_string.exit.i
  %.024.i = phi ptr [ %i.bm, %launch_get_slurm_step_layout.exit.thread.i ], [ %i.bs, %bb.p ], [ %.pre.i.i, %_hostset_to_string.exit.i ] ; 2 uses
  store ptr %.024.i, ptr %i.d, align 8
  br label %.critedge97

.critedge97:                                      ; preds = %bb.j, %.split, %bb.m, %_task_ids_to_host_list.exit
  %i.cj = phi ptr [ null, %.split ], [ null, %bb.j ], [ null, %bb.m ], [ %i.at, %_task_ids_to_host_list.exit ] ; 5 uses
  %i.ck = phi ptr [ null, %.split ], [ null, %bb.j ], [ null, %bb.m ], [ %.024.i, %_task_ids_to_host_list.exit ] ; 5 uses
  %i.cl = call i32 @pthread_mutex_lock(ptr noundef nonnull @launch_lock) #17 ; 2 uses
  %.not80 = icmp eq i32 %i.cl, 0
  br i1 %.not80, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge97
  %i.cm = tail call ptr @__errno_location() #19
  store i32 %i.cl, ptr %i.cm, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._task_finish) #18
  unreachable

bb.x:                                             ; preds = %.critedge97
  %i.cn = load i32, ptr %i.u, align 8             ; 5 uses
  %i.co = and i32 %i.cn, 255
  %i.cp = icmp eq i32 %i.co, 253
  br i1 %i.cp, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %.b77 = load i1, ptr @_task_finish.oom_printed, align 4
  br i1 %.b77, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.64, ptr noundef %i.ck, ptr noundef nonnull %.str.70..str.71.i, ptr noundef %i.cj) #17 ; 0 uses
  %.pre = load i32, ptr %i.u, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cr = phi i32 [ %.pre, %bb.z ], [ %i.cn, %bb.y ]
  store i1 true, ptr @_task_finish.oom_printed, align 4
  %i.cs = load ptr, ptr @local_global_rc, align 8
  store i32 %i.cr, ptr %i.cs, align 4
  br label %bb.av

bb.ab:                                            ; preds = %bb.x
  %i.ct = and i32 %i.cn, 127                      ; 2 uses
  switch i32 %i.ct, label %bb.am [
    i32 0, label %bb.ac
    i32 127, label %bb.av
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cu = lshr i32 %i.cn, 8
  %i.cv = and i32 %i.cu, 255                      ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cx = call i32 @get_log_level() #17
  %i.cy = icmp sgt i32 %i.cx, 3
  br i1 %i.cy, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef %i.ck, ptr noundef nonnull %.str.70..str.71.i, ptr noundef %i.cj) #17
  br label %bb.ah

bb.af:                                            ; preds = %bb.ac
  %i.cz = load i32, ptr @_task_finish.reduce_task_exit_msg, align 4
  %i.da = icmp ne i32 %i.cz, 0
  %.b75 = load i1, ptr @_task_finish.msg_printed, align 4
  %or.cond3.not = select i1 %i.da, i1 %.b75, i1 false
  %i.db = load i32, ptr @_task_finish.last_task_exit_rc, align 4
  %.not88 = icmp eq i32 %i.cn, %i.db
  %or.cond98 = select i1 %or.cond3.not, i1 %.not88, i1 false
  br i1 %or.cond98, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.66, ptr noundef %i.ck, ptr noundef nonnull %.str.70..str.71.i, ptr noundef %i.cj, i32 noundef %i.cv) #17 ; 0 uses
  store i1 true, ptr @_task_finish.msg_printed, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ad, %bb.ae, %bb.ag
  %.0 = phi i32 [ 0, %bb.af ], [ 0, %bb.ag ], [ 1, %bb.ae ], [ 1, %bb.ad ] ; 4 uses
  %i.dd = load ptr, ptr @local_global_rc, align 8 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4            ; 3 uses
  %i.df = and i32 %i.de, 255
  %.not89 = icmp eq i32 %i.df, 253
  br i1 %.not89, label %bb.av, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = and i32 %i.de, 127                      ; 2 uses
  %i.dh = shl nuw nsw i32 %i.dg, 24
  %sext90 = add nuw i32 %i.dh, 16777216
  %i.di = icmp sgt i32 %sext90, 33554431
  br i1 %i.di, label %bb.av, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dj = icmp eq i32 %i.dg, 0
  br i1 %i.dj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dk = lshr i32 %i.de, 8
  %i.dl = and i32 %i.dk, 255
  %i.dm = icmp samesign ugt i32 %i.cv, %i.dl
  br i1 %i.dm, label %bb.al, label %bb.av

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dn = load i32, ptr %i.u, align 8
  store i32 %i.dn, ptr %i.dd, align 4
  br label %bb.av

bb.am:                                            ; preds = %bb.ab
  %i.do = call ptr @strsignal(i32 noundef %i.ct) #17 ; 2 uses
  %i.dp = load i32, ptr %i.u, align 8
  %i.dq = and i32 %i.dp, 128
  %.not82 = icmp eq i32 %i.dq, 0
  %spec.store.select = select i1 %.not82, ptr @.str.47, ptr @.str.67 ; 2 uses
  %i.dr = call i32 @srun_job_state(ptr noundef nonnull %i.i) #17
  %i.ds = icmp ugt i32 %i.dr, 3
  br i1 %i.ds, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dt = call i32 @get_log_level() #17
  %i.du = icmp sgt i32 %i.dt, 3
  br i1 %i.du, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.68, ptr noundef %i.ck, ptr noundef nonnull %.str.70..str.71.i, ptr noundef %i.cj, ptr noundef %i.do, ptr noundef nonnull %spec.store.select) #17
  br label %bb.as

bb.ap:                                            ; preds = %bb.am
  %i.dv = load i32, ptr @_task_finish.reduce_task_exit_msg, align 4
  %i.dw = icmp ne i32 %i.dv, 0
  %.b = load i1, ptr @_task_finish.msg_printed, align 4
  %or.cond5.not = select i1 %i.dw, i1 %.b, i1 false
  br i1 %or.cond5.not, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dx = load i32, ptr %i.u, align 8
  %i.dy = load i32, ptr @_task_finish.last_task_exit_rc, align 4
  %.not84 = icmp eq i32 %i.dx, %i.dy
  br i1 %.not84, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dz = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.68, ptr noundef %i.ck, ptr noundef nonnull %.str.70..str.71.i, ptr noundef %i.cj, ptr noundef %i.do, ptr noundef nonnull %spec.store.select) #17 ; 0 uses
  store i1 true, ptr @_task_finish.msg_printed, align 4
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.an, %bb.ao
  %i.ea = load i32, ptr %i.u, align 8             ; 2 uses
  %i.eb = load ptr, ptr @local_global_rc, align 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4            ; 2 uses
  %i.ed = and i32 %i.ec, 255
  %.not85 = icmp eq i32 %i.ed, 253
  br i1 %.not85, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ee = and i32 %i.ea, 127
  %i.ef = and i32 %i.ec, 127                      ; 2 uses
  %i.eg = shl nuw nsw i32 %i.ef, 24
  %sext86 = add nuw i32 %i.eg, 16777216
  %i.eh = icmp slt i32 %sext86, 33554432
  %i.ei = icmp samesign ugt i32 %i.ee, %i.ef
  %or.cond99 = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %or.cond99, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 %i.ea, ptr %i.eb, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.ab, %bb.as, %bb.au, %bb.at, %bb.al, %bb.ak, %bb.ai, %bb.ah, %bb.aa
  %.1 = phi i32 [ 0, %bb.aa ], [ %.0, %bb.ai ], [ %.0, %bb.al ], [ %.0, %bb.ak ], [ %.0, %bb.ah ], [ 0, %bb.ab ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.as ]
  call void @slurm_xfree(ptr noundef nonnull %i.c) #17
  call void @slurm_xfree(ptr noundef nonnull %i.d) #17
  %i.ej = load ptr, ptr @task_state_list, align 8
  %i.ek = call ptr @task_state_find(ptr noundef nonnull %i.g, ptr noundef %i.ej) #17 ; 2 uses
  %.not91 = icmp eq ptr %i.ek, null
  br i1 %.not91, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.el = load i32, ptr %0, align 8               ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  %.not92.not = icmp eq i32 %.1, 0
  %1 = select i1 %.not92.not, i32 3, i32 2
  %.not8.i = icmp eq i32 %i.el, 0
  br i1 %.not8.i, label %_update_task_exit_state.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.aw
  %wide.trip.count.i110 = zext i32 %i.el to i64
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %.lr.ph.i111, %.lr.ph.preheader.i
  %indvars.iv.i112 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i113, %.lr.ph.i111 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv.i112
  %i.ep = load i32, ptr %i.eo, align 4
  call void @task_state_update(ptr noundef nonnull %i.ek, i32 noundef %i.ep, i32 noundef %1) #17
  %indvars.iv.next.i113 = add nuw nsw i64 %indvars.iv.i112, 1 ; 2 uses
  %exitcond.not.i114 = icmp eq i64 %indvars.iv.next.i113, %wide.trip.count.i110
  br i1 %exitcond.not.i114, label %_update_task_exit_state.exit, label %.lr.ph.i111, !llvm.loop !25

bb.ax:                                            ; preds = %bb.av
  %i.eq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__._task_finish, ptr noundef nonnull %i.g) #17 ; 0 uses
  br label %_update_task_exit_state.exit

_update_task_exit_state.exit:                     ; preds = %.lr.ph.i111, %bb.aw, %bb.ax
  %i.er = load ptr, ptr @task_state_list, align 8
  %i.es = call zeroext i1 @task_state_first_abnormal_exit(ptr noundef %i.er) #17
  br i1 %i.es, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %_update_task_exit_state.exit
  %i.et = load ptr, ptr @opt_save, align 8        ; 2 uses
  %.not.i116 = icmp eq ptr %i.et, null
  br i1 %.not.i116, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 116
  %i.ex = load i32, ptr %i.ew, align 4            ; 2 uses
  %i.ey = icmp eq i32 %i.ex, -2
  br i1 %i.ey, label %bb.ba, label %_kill_on_bad_exit.exit

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ez = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 636), align 4
  %i.fa = zext i16 %i.ez to i32
  br label %_kill_on_bad_exit.exit

_kill_on_bad_exit.exit:                           ; preds = %bb.az, %bb.ba
  %.0.i117 = phi i32 [ %i.fa, %bb.ba ], [ %i.ex, %bb.az ]
  %.not93 = icmp eq i32 %.0.i117, 0
  br i1 %.not93, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_kill_on_bad_exit.exit
  %i.fb = call fastcc i32 @_step_signal(i32 noundef 991) ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_kill_on_bad_exit.exit, %_update_task_exit_state.exit
  %i.fc = load ptr, ptr @task_state_list, align 8
  %i.fd = call zeroext i1 @task_state_first_exit(ptr noundef %i.fc) #17
  %i.fe = load ptr, ptr @opt_save, align 8        ; 2 uses
  %i.ff = icmp ne ptr %i.fe, null
  %or.cond7 = select i1 %i.fd, i1 %i.ff, i1 false
  br i1 %or.cond7, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 128
  %i.fj = load i32, ptr %i.fi, align 8
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %bb.bd
  %i.fl = call i32 @get_log_level() #17
  %i.fm = icmp sgt i32 %i.fl, 3
  br i1 %i.fm, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fn = load ptr, ptr @opt_save, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 128
  %i.fr = load i32, ptr %i.fq, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.76, i32 noundef %i.fr) #17
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.fs = call i32 @pthread_mutex_lock(ptr noundef nonnull @srun_max_timer_lock) #17 ; 2 uses
  %.not.i118 = icmp eq i32 %i.fs, 0
  br i1 %.not.i118, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ft = tail call ptr @__errno_location() #19
  store i32 %i.fs, ptr %i.ft, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__._setup_max_wait_timer) #18
  unreachable

bb.bi:                                            ; preds = %bb.bg
  store i8 1, ptr @srun_max_timer, align 1
  %i.fu = call i32 @pthread_mutex_unlock(ptr noundef nonnull @srun_max_timer_lock) #17 ; 2 uses
  %.not5.i = icmp eq i32 %i.fu, 0
  br i1 %.not5.i, label %_setup_max_wait_timer.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fv = tail call ptr @__errno_location() #19
  store i32 %i.fu, ptr %i.fv, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__._setup_max_wait_timer) #18
  unreachable

_setup_max_wait_timer.exit:                       ; preds = %bb.bi
  %i.fw = load ptr, ptr @opt_save, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 128
  %i.ga = load i32, ptr %i.fz, align 8
  %i.gb = call i32 @alarm(i32 noundef %i.ga) #17  ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %_setup_max_wait_timer.exit, %bb.bd, %bb.bc
  %i.gc = load i32, ptr %i.u, align 8
  store i32 %i.gc, ptr @_task_finish.last_task_exit_rc, align 4
  %i.gd = call i32 @pthread_mutex_unlock(ptr noundef nonnull @launch_lock) #17 ; 2 uses
  %.not94 = icmp eq i32 %i.gd, 0
  br i1 %.not94, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ge = tail call ptr @__errno_location() #19
  store i32 %i.gd, ptr %i.ge, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__._task_finish) #18
  unreachable

bb.bm:                                            ; preds = %bb.bk, %_find_srun_job.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret void
}

declare void @update_job_state(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @slurm_step_launch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @slurm_step_launch_abort(ptr noundef) local_unnamed_addr #1

declare void @slurm_step_launch_wait_finish(ptr noundef) local_unnamed_addr #1

declare i32 @slurm_step_launch_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @slurm_step_launch_wait_start(ptr noundef) local_unnamed_addr #1

declare i32 @mpir_set_multi_name(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @mpir_set_executable_names(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @mpir_dump_proctable() local_unnamed_addr #1

declare void @MPIR_Breakpoint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @launch_step_terminate() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_step_signal(i32 noundef 9)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_step_signal(i32 noundef range(i32 9, 992) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @local_job_list, align 8   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @get_log_level() #17
  %i.c = icmp sgt i32 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__._step_signal) #17
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.d = tail call ptr @list_iterator_create(ptr noundef nonnull %i.a) #17 ; 3 uses
  %i.e = tail call ptr @list_next(ptr noundef %i.d) #17 ; 2 uses
  %.not1214 = icmp eq ptr %i.e, null
  br i1 %.not1214, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.f = trunc nuw nsw i32 %0 to i16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %i.g = phi ptr [ %i.e, %.lr.ph ], [ %i.k, %bb.g ] ; 2 uses
  %.015 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.g ]
  %i.h = tail call i32 @get_log_level() #17
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.78, ptr noundef nonnull %i.g) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = tail call i32 @slurm_kill_job_step(ptr noundef nonnull %i.g, i16 noundef zeroext %i.f, i16 noundef zeroext 0) #17 ; 2 uses
  %.not13 = icmp eq i32 %i.j, 0
  %spec.select = select i1 %.not13, i32 %.015, i32 %i.j ; 2 uses
  %i.k = tail call ptr @list_next(ptr noundef %i.d) #17 ; 2 uses
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %._crit_edge, label %bb.e, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.g, %bb.d
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %spec.select, %bb.g ]
  tail call void @list_iterator_destroy(ptr noundef %i.d) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %._crit_edge
  %.08 = phi i32 [ %.0.lcssa, %._crit_edge ], [ -1, %bb.c ], [ -1, %bb.b ]
end_hunk_0
