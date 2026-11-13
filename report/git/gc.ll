Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/gc?download=true
inline.NumInlined: 210
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@maintenance_run:bb.a
  store i32 9, ptr %i.az, align 16, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 292
  store i32 0, ptr %i.ba, align 4, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 296
  store ptr @.str.4, ptr %i.bb, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 304
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.bd, ptr %i.bc, align 16, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 312
  store i64 4, ptr %i.be, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 320
  store ptr null, ptr %i.bf, align 16, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 328
  store ptr @.str.116, ptr %i.bg, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 336
  store i32 2, ptr %i.bh, align 16, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 340
  store i32 0, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 344
  store ptr null, ptr %i.bj, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 352
  store i64 1, ptr %i.bk, align 16, !tbaa !38
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  store i32 13, ptr %i.bm, align 16, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 388
  store i32 0, ptr %i.bn, align 4, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 392
  store ptr @.str.117, ptr %i.bo, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 400
  store ptr %6, ptr %i.bp, align 16, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 408
  store i64 0, ptr %i.bq, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 416
  store ptr @.str.117, ptr %i.br, align 16, !tbaa !34
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 424
  store ptr @.str.118, ptr %i.bs, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 432
  store i32 4, ptr %i.bt, align 16, !tbaa !36
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 436
  store i32 0, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 440
  store ptr @task_option_parse, ptr %i.bv, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.bw, i8 0, i64 128, i1 false)
  %i.bx = call i32 @isatty(i32 noundef 2) #18
  %.not = icmp eq i32 %i.bx, 0
  %i.by = zext i1 %.not to i32
  store i32 %i.by, ptr %i.bd, align 8, !tbaa !41
  %i.bz = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull @builtin_maintenance_run_usage, i32 noundef 2) #18
  %i.ca = load i32, ptr %i.s, align 8, !tbaa !42
  %i.cb = load i32, ptr %i.ar, align 4, !tbaa !126
  call void @die_for_incompatible_opt4(i32 noundef %i.ca, ptr noundef nonnull @.str.106, i32 noundef %i.cb, ptr noundef nonnull @.str.119, i32 noundef 0, ptr noundef nonnull @.str.77, i32 noundef 0, ptr noundef nonnull @.str.77) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !87
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = load i32, ptr %i.ar, align 4, !tbaa !126
  call void @die_for_incompatible_opt4(i32 noundef %i.ce, ptr noundef nonnull @.str.120, i32 noundef %i.cf, ptr noundef nonnull @.str.119, i32 noundef 0, ptr noundef nonnull @.str.77, i32 noundef 0, ptr noundef nonnull @.str.77) #18
  call fastcc void @gc_config(ptr noundef %7)
  call fastcc void @initialize_task_config(ptr noundef %5, ptr noundef %6)
  %.not4 = icmp eq i32 %i.bz, 0
  br i1 %.not4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @usage_with_options(ptr noundef nonnull @builtin_maintenance_run_usage, ptr noundef nonnull %8) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.cg = load ptr, ptr @the_repository, align 8, !tbaa !48 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !81
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !99
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !127
  %i.cn = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.193, ptr noundef %i.cm) #18 ; 4 uses
  %i.co = call i32 @hold_lock_file_for_update_timeout_mode(ptr noundef nonnull %4, ptr noundef %i.cn, i32 noundef range(i32 1, 3) 2, i64 noundef 0, i32 noundef 438) #18
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.cq = load i32, ptr %i.s, align 8, !tbaa !42
  %.not29.i = icmp eq i32 %i.cq, 0
  %i.cr = load i32, ptr %i.bd, align 8
  %.not30.i = icmp eq i32 %i.cr, 0
  %or.cond = select i1 %.not29.i, i1 %.not30.i, i1 false
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.cs = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ct = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.194, i32 noundef 5) #18
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.ct, %bb.f ], [ @.str.194, %bb.e ]
  call void (ptr, ...) @warning(ptr noundef %.0.i.i, ptr noundef %i.cn) #18
  br label %bb.g

bb.g:                                             ; preds = %_.exit.i, %bb.d
  call void @free(ptr noundef %i.cn) #18
  br label %maintenance_run_tasks.exit

bb.h:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.cn) #18
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !128
  %.not40.i = icmp eq i64 %i.cv, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.cw = phi i64 [ 0, %bb.h ], [ %i.dg, %.lr.ph.i ]
  %.026.lcssa.i = phi i32 [ 0, %bb.h ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.cx = load i32, ptr %i.a, align 4, !tbaa !43
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.i, label %bb.j

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.02533.i = phi i64 [ %i.df, %.lr.ph.i ], [ 0, %bb.h ] ; 2 uses
  %.02632.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.h ]
  %i.cz = load ptr, ptr %5, align 8, !tbaa !108
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.02533.i
  %i.db = load i32, ptr %i.da, align 4, !tbaa !15
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr @tasks, i64 %i.dc
  %i.de = call fastcc i32 @maybe_run_task(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.cg, ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 0)
  %.not28.i = icmp eq i32 %i.de, 0
  %spec.select.i = select i1 %.not28.i, i32 %.02632.i, i32 1 ; 2 uses
  %i.df = add nuw i64 %.02533.i, 1                ; 2 uses
  %i.dg = load i64, ptr %i.cu, align 8, !tbaa !128 ; 2 uses
  %i.dh = icmp ult i64 %i.df, %i.dg
  br i1 %i.dh, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !181

bb.i:                                             ; preds = %._crit_edge.i
  %i.di = load ptr, ptr @the_repository, align 8, !tbaa !48
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.126, i32 noundef 1816, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.18, ptr noundef %i.di) #18
  %i.dj = call i32 @daemonize() #18               ; 0 uses
  %i.dk = load ptr, ptr @the_repository, align 8, !tbaa !48
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.126, i32 noundef 1818, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.18, ptr noundef %i.dk) #18
  %.pre.i = load i64, ptr %i.cu, align 8, !tbaa !128
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %i.dl = phi i64 [ %.pre.i, %bb.i ], [ %i.cw, %._crit_edge.i ]
  %.not41.i = icmp eq i64 %i.dl, 0
  br i1 %.not41.i, label %._crit_edge38.i, label %.lr.ph37.i

._crit_edge38.i:                                  ; preds = %.lr.ph37.i, %bb.j
  %.2.lcssa.i = phi i32 [ %.026.lcssa.i, %bb.j ], [ %spec.select31.i, %.lr.ph37.i ]
  %i.dm = call i32 @rollback_lock_file(ptr noundef nonnull %4) #18 ; 0 uses
  br label %maintenance_run_tasks.exit

.lr.ph37.i:                                       ; preds = %bb.j, %.lr.ph37.i
  %.035.i = phi i64 [ %i.dt, %.lr.ph37.i ], [ 0, %bb.j ] ; 2 uses
  %.234.i = phi i32 [ %spec.select31.i, %.lr.ph37.i ], [ %.026.lcssa.i, %bb.j ]
  %i.dn = load ptr, ptr %5, align 8, !tbaa !108
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.035.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !15
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr @tasks, i64 %i.dq
  %i.ds = call fastcc i32 @maybe_run_task(ptr noundef nonnull %i.dr, ptr noundef nonnull %i.cg, ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 1)
  %.not.i = icmp eq i32 %i.ds, 0
  %spec.select31.i = select i1 %.not.i, i32 %.234.i, i32 1 ; 2 uses
  %i.dt = add nuw i64 %.035.i, 1                  ; 2 uses
  %i.du = load i64, ptr %i.cu, align 8, !tbaa !128
  %i.dv = icmp ult i64 %i.dt, %i.du
  br i1 %i.dv, label %.lr.ph37.i, label %._crit_edge38.i, !llvm.loop !182

maintenance_run_tasks.exit:                       ; preds = %bb.g, %._crit_edge38.i
  %.027.i = phi i32 [ 0, %bb.g ], [ %.2.lcssa.i, %._crit_edge38.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @string_list_clear(ptr noundef nonnull %6, i32 noundef 0) #18
  %.val = load ptr, ptr %5, align 8, !tbaa !108
  call void @free(ptr noundef %.val) #18
  %i.dx = load ptr, ptr %i.g, align 16, !tbaa !22
  call void @free(ptr noundef %i.dx) #18
  %i.dy = load ptr, ptr %i.i, align 8, !tbaa !23
  call void @free(ptr noundef %i.dy) #18
  %i.dz = load ptr, ptr %i.k, align 16, !tbaa !24
  call void @free(ptr noundef %i.dz) #18
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !109
  call void @free(ptr noundef %i.ea) #18
  %i.eb = load ptr, ptr %i.dw, align 16, !tbaa !110
  call void @free(ptr noundef %i.eb) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i32 %.027.i
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @maintenance_start(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca i32, align 4                        ; 4 uses
  %5 = alloca i32, align 4                        ; 4 uses
  %6 = alloca %struct.child_process, align 8      ; 7 uses
  %7 = alloca i32, align 4                        ; 4 uses
  %8 = alloca %struct.child_process, align 8      ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %struct.maintenance_start_opts, align 4 ; 8 uses
  %10 = alloca [2 x %struct.option], align 16     ; 15 uses
  %i.b = alloca [2 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i32 0, ptr %9, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store i32 13, ptr %10, align 16, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.198, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %9, ptr %i.e, align 16, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 0, ptr %i.f, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr @.str.198, ptr %i.g, align 16, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr @.str.199, ptr %i.h, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 4, ptr %i.i, align 16, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 52
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @maintenance_opt_scheduler, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.l, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.maintenance_start.register_args, i64 16, i1 false)
  %i.m = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull @builtin_maintenance_start_usage, i32 noundef 0) #18
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @usage_with_options(ptr noundef nonnull @builtin_maintenance_start_usage, ptr noundef nonnull %10) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load i32, ptr %9, align 4, !tbaa !130
  switch i32 %i.n, label %default.switch.case.unreachable.i [
    i32 0, label %bb.d
    i32 -1, label %11
    i32 1, label %call.1.i
    i32 2, label %resolve_scheduler.exit.thread.a
    i32 3, label %call.3.i
    i32 4, label %call.4.i
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.o = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.211, ptr noundef nonnull %i.a, ptr noundef null)
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.a, align 4, !tbaa !15
  br label %is_systemd_timer_available.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %8, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %8, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216, ptr noundef null) #18
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 104 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = or i8 %i.r, 23
  store i8 %i.s, ptr %i.q, align 8
  %i.t = call i32 @start_command(ptr noundef nonnull %8) #18
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %bb.g, label %real_is_systemd_timer_available.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.u = call i32 @finish_command(ptr noundef nonnull %8) #18
  %.not1.i.i.i = icmp eq i32 %i.u, 0
  %..i.i.i = zext i1 %.not1.i.i.i to i32
  br label %real_is_systemd_timer_available.exit.i.i

real_is_systemd_timer_available.exit.i.i:         ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ 0, %bb.f ], [ %..i.i.i, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %is_systemd_timer_available.exit.i

is_systemd_timer_available.exit.i:                ; preds = %real_is_systemd_timer_available.exit.i.i, %bb.e
  %.0.i.i = phi i32 [ %i.p, %bb.e ], [ %.0.i.i.i, %real_is_systemd_timer_available.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not4.i = icmp eq i32 %.0.i.i, 0
  br i1 %.not4.i, label %bb.h, label %resolve_scheduler.exit.thread18

resolve_scheduler.exit.thread18:                  ; preds = %is_systemd_timer_available.exit.i
  store i32 2, ptr %9, align 4, !tbaa !130
  br label %resolve_scheduler.exit.thread.a

bb.h:                                             ; preds = %is_systemd_timer_available.exit.i
  %i.v = call i32 @is_crontab_available()
  %.not5.i = icmp eq i32 %i.v, 0
  br i1 %.not5.i, label %bb.i, label %resolve_scheduler.exit.thread

resolve_scheduler.exit.thread:                    ; preds = %bb.h
  store i32 1, ptr %9, align 4, !tbaa !130
  br label %call.1.i

bb.i:                                             ; preds = %bb.h
  %i.w = call fastcc ptr @_(ptr noundef nonnull @.str.210)
  call void (ptr, ...) @die(ptr noundef %i.w) #19
  unreachable

11:                                               ; preds = %bb.c
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.126, i32 noundef 3351, ptr noundef nonnull @.str.217) #19
  unreachable

default.switch.case.unreachable.i:                ; preds = %bb.c
  unreachable

call.1.i:                                         ; preds = %bb.c, %resolve_scheduler.exit.thread
  %12 = call i32 @is_crontab_available() #18
  br label %.tail.i

resolve_scheduler.exit.thread.a:                  ; preds = %bb.c, %resolve_scheduler.exit.thread18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %13 = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.211, ptr noundef nonnull %7, ptr noundef null)
  %.not.i.i6 = icmp eq i32 %13, 0
  br i1 %.not.i.i6, label %bb.k, label %bb.j

bb.j:                                             ; preds = %resolve_scheduler.exit.thread.a
  %14 = load i32, ptr %7, align 4, !tbaa !15
  br label %is_systemd_timer_available.exit.i7

bb.k:                                             ; preds = %resolve_scheduler.exit.thread.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %6, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216, ptr noundef null) #18
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %15 = load i8, ptr %i.x, align 8
  %16 = or i8 %15, 23
  store i8 %16, ptr %i.x, align 8
  %17 = call i32 @start_command(ptr noundef nonnull %6) #18
  %.not.i5.a = icmp eq i32 %17, 0
  br i1 %.not.i5.a, label %18, label %real_is_systemd_timer_available.exit.i.i10

18:                                               ; preds = %bb.k
  %19 = call i32 @finish_command(ptr noundef nonnull %6) #18
  %.not1.i.i.i12 = icmp eq i32 %19, 0
  %..i.i.i13 = zext i1 %.not1.i.i.i12 to i32
  br label %real_is_systemd_timer_available.exit.i.i10

real_is_systemd_timer_available.exit.i.i10:       ; preds = %18, %bb.k
  %.0.i.i.i11 = phi i32 [ 0, %bb.k ], [ %..i.i.i13, %18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %is_systemd_timer_available.exit.i7

is_systemd_timer_available.exit.i7:               ; preds = %real_is_systemd_timer_available.exit.i.i10, %bb.j
  %.0.i.i8 = phi i32 [ %14, %bb.j ], [ %.0.i.i.i11, %real_is_systemd_timer_available.exit.i.i10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.tail.i

call.3.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %20 = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.207, ptr noundef nonnull %5, ptr noundef null)
  %.not.i4.i = icmp eq i32 %20, 0
  %21 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.not.i4.i, label %bb.l, label %.tail.i

call.4.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %22 = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.208, ptr noundef nonnull %4, ptr noundef null)
  %.not.i6.i = icmp eq i32 %22, 0
  %23 = load i32, ptr %4, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.not.i6.i, label %bb.l, label %.tail.i

.tail.i:                                          ; preds = %call.4.i, %call.3.i, %is_systemd_timer_available.exit.i7, %call.1.i
  %.0.i15 = phi i64 [ 1, %call.1.i ], [ 2, %is_systemd_timer_available.exit.i7 ], [ 3, %call.3.i ], [ 4, %call.4.i ]
  %24 = phi i32 [ %12, %call.1.i ], [ %.0.i.i8, %is_systemd_timer_available.exit.i7 ], [ %21, %call.3.i ], [ %23, %call.4.i ]
  %.not.i5 = icmp eq i32 %24, 0
  br i1 %.not.i5, label %bb.l, label %validate_scheduler.exit

bb.l:                                             ; preds = %.tail.i, %call.4.i, %call.3.i
  %.0.i16 = phi i64 [ %.0.i15, %.tail.i ], [ 4, %call.4.i ], [ 3, %call.3.i ]
  %25 = getelementptr inbounds nuw [24 x i8], ptr @scheduler_fn, i64 %.0.i16
  %i.y = call fastcc ptr @_(ptr noundef nonnull @.str.219)
  %i.z = load ptr, ptr %25, align 8, !tbaa !183
  call void (ptr, ...) @die(ptr noundef %i.y, ptr noundef %i.z) #19
  unreachable

validate_scheduler.exit:                          ; preds = %.tail.i
  %i.aa = call fastcc i32 @update_background_schedule(ptr noundef nonnull %9, i32 noundef 1)
  %.not4 = icmp eq i32 %i.aa, 0
  br i1 %.not4, label %bb.n, label %bb.m

bb.m:                                             ; preds = %validate_scheduler.exit
  %i.ab = call fastcc ptr @_(ptr noundef nonnull @.str.200)
  call void (ptr, ...) @die(ptr noundef %i.ab) #19
  unreachable

bb.n:                                             ; preds = %validate_scheduler.exit
  %i.ac = call i32 @maintenance_register(i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef null, ptr poison) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @maintenance_stop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca [1 x %struct.option], align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  %i.a = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull @builtin_maintenance_stop_usage, i32 noundef 0) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @usage_with_options(ptr noundef nonnull @builtin_maintenance_stop_usage, ptr noundef nonnull %4) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = call fastcc i32 @update_background_schedule(ptr noundef null, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @maintenance_register(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %5 = alloca [2 x %struct.option], align 16      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %5, i8 0, i64 192, i1 false)
  store i32 10, ptr %5, align 16, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.295, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.a, ptr %i.d, align 16, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @.str.296, ptr %i.e, align 16, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.297, ptr %i.f, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  %i.g = load ptr, ptr @the_repository, align 8, !tbaa !48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.b, label %get_maintpath.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !133
  br label %get_maintpath.exit

get_maintpath.exit:                               ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  %i.l = call ptr @strbuf_realpath(ptr noundef nonnull %4, ptr noundef %i.k, i32 noundef 1) #18 ; 0 uses
  %i.m = call ptr @strbuf_detach(ptr noundef nonnull %4, ptr noundef null) #18 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.n = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull @builtin_maintenance_register_usage, i32 noundef 0) #18
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %get_maintpath.exit
  call void @usage_with_options(ptr noundef nonnull @builtin_maintenance_register_usage, ptr noundef nonnull %5) #19
  unreachable

bb.d:                                             ; preds = %get_maintpath.exit
  %i.o = load ptr, ptr @the_repository, align 8, !tbaa !48
  call void @repo_config_set(ptr noundef %i.o, ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.300) #18
  %i.p = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.q = call i32 @repo_config_get(ptr noundef %i.p, ptr noundef nonnull @.str.186) #18
  %.not20 = icmp eq i32 %i.q, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @the_repository, align 8, !tbaa !48
  call void @repo_config_set(ptr noundef %i.r, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.190) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.t = call i32 @repo_config_get_string_multi(ptr noundef %i.s, ptr noundef nonnull @.str.298, ptr noundef nonnull %i.b) #18
  %.not21 = icmp eq i32 %i.t, 0
  br i1 %.not21, label %bb.g, label %.critedge28

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !135  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88   ; 3 uses
  %.not2232 = icmp eq ptr %i.v, null
  br i1 %.not2232, label %.critedge28, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !87   ; 2 uses
  %.idx = shl nuw nsw i64 %i.x, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %.not40 = icmp eq i64 %i.x, 0
  br i1 %.not40, label %.critedge28, label %.lr.ph39

bb.h:                                             ; preds = %.lr.ph39
  %i.z = getelementptr inbounds nuw i8, ptr %.0173338, i64 16 ; 2 uses
  %i.aa = icmp ult ptr %i.z, %i.y
  br i1 %i.aa, label %.lr.ph39, label %.critedge28

.lr.ph39:                                         ; preds = %.lr.ph, %bb.h
  %.0173338 = phi ptr [ %i.z, %bb.h ], [ %i.v, %.lr.ph ] ; 2 uses
  %i.ab = load ptr, ptr %.0173338, align 8, !tbaa !90
  %i.ac = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.ab) #22
  %.not23 = icmp eq i32 %i.ac, 0
  br i1 %.not23, label %.critedge, label %bb.h

.critedge28:                                      ; preds = %bb.h, %.lr.ph, %bb.g, %bb.f
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %.not25 = icmp eq ptr %i.ad, null
  br i1 %.not25, label %bb.i, label %.thread

bb.i:                                             ; preds = %.critedge28
  %i.ae = call ptr @git_global_config() #18       ; 4 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !27
  %.not26 = icmp eq ptr %i.ae, null
  br i1 %.not26, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.af = call fastcc ptr @_(ptr noundef nonnull @.str.301)
  call void (ptr, ...) @die(ptr noundef %i.af) #19
  unreachable

.thread:                                          ; preds = %.critedge28, %bb.i
  %.031 = phi ptr [ %i.ae, %bb.i ], [ null, %.critedge28 ]
  %i.ag = phi ptr [ %i.ae, %bb.i ], [ %i.ad, %.critedge28 ]
  %i.ah = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.ai = call i32 @repo_config_set_multivar_in_file_gently(ptr noundef %i.ah, ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.298, ptr noundef %i.m, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef null, i32 noundef 0) #18
  call void @free(ptr noundef %.031) #18
  %.not27 = icmp eq i32 %i.ai, 0
  br i1 %.not27, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.aj = call fastcc ptr @_(ptr noundef nonnull @.str.302)
  call void (ptr, ...) @die(ptr noundef %i.aj, ptr noundef nonnull @.str.298, ptr noundef %i.m) #19
  unreachable

.critedge:                                        ; preds = %.lr.ph39, %.thread
  call void @free(ptr noundef %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @maintenance_unregister(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 5 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %5 = alloca [3 x %struct.option], align 16      ; 21 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %struct.config_set, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i32 10, ptr %5, align 16, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.295, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.f, align 16, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @.str.296, ptr %i.h, align 16, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.297, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.j, i8 0, i64 48, i1 false)
  store i32 8, ptr %i.k, align 16, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 100
  store i32 102, ptr %i.l, align 4, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 104
  store ptr @.str.20, ptr %i.m, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 112
  store ptr %i.a, ptr %i.n, align 16, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 4, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr null, ptr %i.p, align 16, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 136
  store ptr @.str.304, ptr %i.q, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 144
  store i32 514, ptr %i.r, align 16, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 148
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(140) %i.s, i8 0, i64 140, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
end_hunk_0
begin_hunk_1_@maintenance_unregister:bb.a
  br i1 %.not31, label %.critedge, label %bb.h

.critedge:                                        ; preds = %.lr.ph51
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %.not34 = icmp eq ptr %i.aq, null
  br i1 %.not34, label %bb.i, label %.thread39

bb.i:                                             ; preds = %.critedge
  %i.ar = call ptr @git_global_config() #18       ; 4 uses
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !27
  %.not35 = icmp eq ptr %i.ar, null
  br i1 %.not35, label %bb.j, label %.thread39

bb.j:                                             ; preds = %bb.i
  %i.as = call fastcc ptr @_(ptr noundef nonnull @.str.301)
  call void (ptr, ...) @die(ptr noundef %i.as) #19
  unreachable

.thread39:                                        ; preds = %.critedge, %bb.i
  %.042 = phi ptr [ %i.ar, %bb.i ], [ null, %.critedge ]
  %i.at = phi ptr [ %i.ar, %bb.i ], [ %i.aq, %.critedge ]
  %i.au = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.av = call i32 @repo_config_set_multivar_in_file_gently(ptr noundef %i.au, ptr noundef nonnull %i.at, ptr noundef nonnull @.str.298, ptr noundef null, ptr noundef nonnull %i.z, ptr noundef null, i32 noundef 3) #18 ; 2 uses
  call void @free(ptr noundef %.042) #18
  %.not36 = icmp eq i32 %i.av, 0
  br i1 %.not36, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.thread39
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !15
  %i.ax = icmp eq i32 %i.aw, 0
  %i.ay = icmp eq i32 %i.av, 5
  %or.cond = or i1 %i.ay, %i.ax
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.az = call fastcc ptr @_(ptr noundef nonnull @.str.305)
  call void (ptr, ...) @die(ptr noundef %i.az, ptr noundef nonnull @.str.298, ptr noundef nonnull %i.z) #19
  unreachable

.critedge37:                                      ; preds = %bb.h, %.lr.ph, %bb.g, %bb.f, %.thread
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !15
  %.not33 = icmp eq i32 %i.ba, 0
  br i1 %.not33, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.critedge37
  %i.bb = call fastcc ptr @_(ptr noundef nonnull @.str.306)
  call void (ptr, ...) @die(ptr noundef %i.bb, ptr noundef %i.z) #19
  unreachable

bb.n:                                             ; preds = %.thread39, %bb.k, %.critedge37
  call void @git_configset_clear(ptr noundef nonnull %6) #18
  call void @free(ptr noundef %i.z) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @maintenance_is_needed(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.maintenance_run_opts, align 8 ; 10 uses
  %5 = alloca %struct.string_list, align 8        ; 7 uses
  %6 = alloca %struct.gc_config, align 16         ; 16 uses
  %7 = alloca [3 x %struct.option], align 16      ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 -1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store <4 x i32> <i32 1, i32 1, i32 1, i32 0>, ptr %6, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.c, align 16, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  store <4 x i32> <i32 50, i32 250, i32 6700, i32 50>, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 1, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.h = tail call ptr @xstrdup(ptr noundef nonnull @.str) #18
  store ptr %i.h, ptr %i.g, align 16, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.j = tail call ptr @xstrdup(ptr noundef nonnull @.str.1) #18
  store ptr %i.j, ptr %i.i, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.l = tail call ptr @xstrdup(ptr noundef nonnull @.str.2) #18
  store ptr %i.l, ptr %i.k, align 16, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  store i64 268435456, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 112
  store i64 100663296, ptr %i.o, align 16, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 9, ptr %7, align 16, !tbaa !29
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.16, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.s, ptr %i.r, align 16, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 4, ptr %i.t, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr null, ptr %i.u, align 16, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr @.str.111, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 2, ptr %i.w, align 16, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr null, ptr %i.y, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 1, ptr %i.z, align 16, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store i32 13, ptr %i.ab, align 16, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 100
  store i32 0, ptr %i.ac, align 4, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 104
  store ptr @.str.117, ptr %i.ad, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 112
  store ptr %5, ptr %i.ae, align 16, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 120
  store i64 0, ptr %i.af, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr @.str.117, ptr %i.ag, align 16, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 136
  store ptr @.str.308, ptr %i.ah, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i32 4, ptr %i.ai, align 16, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 148
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 152
  store ptr @task_option_parse, ptr %i.ak, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.al, i8 0, i64 128, i1 false)
  %i.am = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull @builtin_maintenance_is_needed_usage, i32 noundef 2) #18
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @usage_with_options(ptr noundef nonnull @builtin_maintenance_is_needed_usage, ptr noundef nonnull %7) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  call fastcc void @gc_config(ptr noundef %6)
  call fastcc void @initialize_task_config(ptr noundef %4, ptr noundef %5)
  %i.an = load i32, ptr %i.s, align 8, !tbaa !42
  %.not12 = icmp eq i32 %i.an, 0
  br i1 %.not12, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !128 ; 2 uses
  %.not18 = icmp eq i64 %i.ap, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre19 = load ptr, ptr %4, align 8, !tbaa !108
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.aq = phi i64 [ %i.az, %bb.e ], [ %i.ap, %.lr.ph.preheader ]
  %i.ar = phi ptr [ %i.ba, %bb.e ], [ %.pre19, %.lr.ph.preheader ] ; 2 uses
  %.015 = phi i64 [ %i.bb, %bb.e ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.015
  %i.at = load i32, ptr %i.as, align 4, !tbaa !15 ; 2 uses
  %.not13 = icmp eq i32 %i.at, 0
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [32 x i8], ptr @tasks, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !137
  %i.ay = call i32 %i.ax(ptr noundef nonnull %6) #18
  %.not14 = icmp eq i32 %i.ay, 0
  br i1 %.not14, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %4, align 8, !tbaa !108
  %.pre20 = load i64, ptr %i.ao, align 8, !tbaa !128
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %.lr.ph
  %i.az = phi i64 [ %i.aq, %.lr.ph ], [ %.pre20, %._crit_edge ] ; 2 uses
  %i.ba = phi ptr [ %i.ar, %.lr.ph ], [ %.pre, %._crit_edge ]
  %i.bb = add nuw i64 %.015, 1                    ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.az
  br i1 %i.bc, label %.lr.ph, label %.loopexit, !llvm.loop !184

.loopexit:                                        ; preds = %bb.d, %bb.e, %.preheader, %bb.c
  %not..1 = phi i32 [ 0, %bb.c ], [ 1, %.preheader ], [ 0, %bb.d ], [ 1, %bb.e ]
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @string_list_clear(ptr noundef nonnull %5, i32 noundef 0) #18
  %.val = load ptr, ptr %4, align 8, !tbaa !108
  call void @free(ptr noundef %.val) #18
  %i.be = load ptr, ptr %i.g, align 16, !tbaa !22
  call void @free(ptr noundef %i.be) #18
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !23
  call void @free(ptr noundef %i.bf) #18
  %i.bg = load ptr, ptr %i.k, align 16, !tbaa !24
  call void @free(ptr noundef %i.bg) #18
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !109
  call void @free(ptr noundef %i.bh) #18
  %i.bi = load ptr, ptr %i.bd, align 16, !tbaa !110
  call void @free(ptr noundef %i.bi) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %not..1
}

declare i32 @repo_config_get_value(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare i32 @git_config_bool(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @repo_config_get_int(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @repo_config_get_bool(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @repo_config_get_ulong(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @repo_config_get_expiry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @repo_config_get_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @repo_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @git_default_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @run_hooks(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @odb_prepare_alternates(ptr noundef) local_unnamed_addr #3

declare ptr @packfile_store_get_packs(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sysinfo(ptr noundef) local_unnamed_addr #8

declare i32 @odb_count_objects(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @string_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @for_each_string_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @keep_one_pack(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  %i.b = tail call ptr @__xpg_basename(ptr noundef %i.a) #18
  %i.c = tail call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef %1, ptr noundef nonnull @.str.92, ptr noundef %i.b) #18 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind
declare ptr @__xpg_basename(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

declare i32 @die_message_errno(ptr noundef, ...) local_unnamed_addr #3

declare i64 @strbuf_read_file(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

declare i32 @xgethostname(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @xsnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @xstrfmt(ptr noundef, ...) local_unnamed_addr #3

declare ptr @git_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @__isoc23_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @rollback_lock_file(ptr noundef) local_unnamed_addr #3

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #8

declare i64 @write_in_full(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @commit_lock_file(ptr noundef) local_unnamed_addr #3

declare ptr @register_tempfile(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal i32 @maintenance_task_pack_refs(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.child_process, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 8, ptr %i.a, align 8
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105, ptr noundef null) #18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull @.str.106) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = call i32 @run_command(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %i.e
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @maintenance_task_reflog_expire(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.child_process, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 8, ptr %i.a, align 8
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.104, ptr noundef null) #18
  %i.b = call i32 @run_command(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %i.b
}

declare i32 @hold_lock_file_for_update_timeout_mode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_tempfile_fd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

declare ptr @get_tempfile_path(ptr noundef) local_unnamed_addr #3

declare i32 @unlink_or_warn(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @maintenance_opt_schedule(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc ptr @_(ptr noundef nonnull @.str.121)
  tail call void (ptr, ...) @die(ptr noundef %i.a) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %parse_schedule.exit.thread8, label %bb.d

parse_schedule.exit.thread8:                      ; preds = %bb.c
  store i32 0, ptr %i.c, align 4, !tbaa !15
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @strcasecmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.123) #22
  %.not5.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i, label %parse_schedule.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @strcasecmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.124) #22
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %parse_schedule.exit.thread, label %parse_schedule.exit

parse_schedule.exit.thread:                       ; preds = %bb.e, %bb.d
  %.0.i.ph = phi i32 [ 3, %bb.d ], [ 2, %bb.e ]
  store i32 %.0.i.ph, ptr %i.c, align 4, !tbaa !15
  br label %bb.g

parse_schedule.exit:                              ; preds = %bb.e
  %i.f = tail call i32 @strcasecmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.125) #22
  %.not7.i = icmp eq i32 %i.f, 0                  ; 2 uses
  %..i = zext i1 %.not7.i to i32
  store i32 %..i, ptr %i.c, align 4, !tbaa !15
  br i1 %.not7.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %parse_schedule.exit.thread8, %parse_schedule.exit
  %i.g = tail call fastcc ptr @_(ptr noundef nonnull @.str.122)
  tail call void (ptr, ...) @die(ptr noundef %i.g, ptr noundef %1) #19
  unreachable

bb.g:                                             ; preds = %parse_schedule.exit.thread, %parse_schedule.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @task_option_parse(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.c = tail call i32 @strcasecmp(ptr noundef nonnull @.str.130, ptr noundef %1) #22
  %.not15 = icmp eq i32 %i.c, 0
  br i1 %.not15, label %bb.e, label %.preheader.1

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.126, i32 noundef 2015, ptr noundef nonnull @.str.127) #19
  unreachable

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.d = tail call i32 @strcasecmp(ptr noundef nonnull @.str.131, ptr noundef %1) #22
  %.not15.1 = icmp eq i32 %i.d, 0
  br i1 %.not15.1, label %bb.e, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.e = tail call i32 @strcasecmp(ptr noundef nonnull @.str.132, ptr noundef %1) #22
  %.not15.2 = icmp eq i32 %i.e, 0
  br i1 %.not15.2, label %bb.e, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.f = tail call i32 @strcasecmp(ptr noundef nonnull @.str.133, ptr noundef %1) #22
  %.not15.3 = icmp eq i32 %i.f, 0
  br i1 %.not15.3, label %bb.e, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.g = tail call i32 @strcasecmp(ptr noundef nonnull @.str.109, ptr noundef %1) #22
  %.not15.4 = icmp eq i32 %i.g, 0
  br i1 %.not15.4, label %bb.e, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.h = tail call i32 @strcasecmp(ptr noundef nonnull @.str.134, ptr noundef %1) #22
  %.not15.5 = icmp eq i32 %i.h, 0
  br i1 %.not15.5, label %bb.e, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.i = tail call i32 @strcasecmp(ptr noundef nonnull @.str.102, ptr noundef %1) #22
  %.not15.6 = icmp eq i32 %i.i, 0
  br i1 %.not15.6, label %bb.e, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.j = tail call i32 @strcasecmp(ptr noundef nonnull @.str.135, ptr noundef %1) #22
  %.not15.7 = icmp eq i32 %i.j, 0
  br i1 %.not15.7, label %bb.e, label %.preheader.8

.preheader.8:                                     ; preds = %.preheader.7
  %i.k = tail call i32 @strcasecmp(ptr noundef nonnull @.str.136, ptr noundef %1) #22
  %.not15.8 = icmp eq i32 %i.k, 0
  br i1 %.not15.8, label %bb.e, label %.preheader.9

.preheader.9:                                     ; preds = %.preheader.8
  %i.l = tail call i32 @strcasecmp(ptr noundef nonnull @.str.137, ptr noundef %1) #22
  %.not15.9 = icmp eq i32 %i.l, 0
  br i1 %.not15.9, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.preheader.9
  %i.m = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i, label %_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.128, i32 noundef 5) #18
  br label %_.exit

_.exit:                                           ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.d ], [ @.str.128, %bb.c ]
  %i.o = tail call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef %1) #18 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %.preheader.9, %.preheader.8, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.021.lcssa = phi i64 [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ 2, %.preheader.2 ], [ 3, %.preheader.3 ], [ 4, %.preheader.4 ], [ 5, %.preheader.5 ], [ 6, %.preheader.6 ], [ 7, %.preheader.7 ], [ 8, %.preheader.8 ], [ 9, %.preheader.9 ]
  %i.p = tail call i32 @unsorted_string_list_has_string(ptr noundef %i.b, ptr noundef %1) #18
  %.not16 = icmp eq i32 %i.p, 0
  br i1 %.not16, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i17 = icmp eq i32 %i.q, 0
  br i1 %.not4.i17, label %_.exit19, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.129, i32 noundef 5) #18
  br label %_.exit19

_.exit19:                                         ; preds = %bb.f, %bb.g
  %.0.i18 = phi ptr [ %i.r, %bb.g ], [ @.str.129, %bb.f ]
  %i.s = tail call i32 (ptr, ...) @error(ptr noundef %.0.i18, ptr noundef %1) #18 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.t = inttoptr i64 %.021.lcssa to ptr
  %i.u = tail call ptr @string_list_append(ptr noundef %i.b, ptr noundef %1) #18
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.t, ptr %i.v, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_.exit19, %_.exit
  %.014 = phi i32 [ 1, %_.exit ], [ 1, %_.exit19 ], [ 0, %bb.h ]
  ret i32 %.014
}

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @initialize_task_config(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 8 uses
  %3 = alloca %struct.maintenance_strategy, align 4 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %.sroa.0 = alloca [10 x %struct.anon], align 8  ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i64, ptr %i.e, align 8, !tbaa !128
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.g = phi i64 [ %i.d, %.lr.ph ], [ %i.y, %bb.e ]
  %i.h = phi i64 [ %.pre, %.lr.ph ], [ %.pre-phi83, %bb.e ] ; 2 uses
  %.04669 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.e ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !88
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.04669
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !138
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = trunc i64 %i.m to i32
  %i.o = add i64 %i.h, 1                          ; 3 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !189  ; 2 uses
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre72 = load ptr, ptr %0, align 8, !tbaa !108
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = mul i64 %i.p, 3
  %i.s = add i64 %i.r, 48
  %i.t = lshr i64 %i.s, 1
  %. = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.o) ; 4 uses
  store i64 %., ptr %i.f, align 8, !tbaa !189
  %i.u = icmp ugt i64 %., 4611686018427387903
  br i1 %i.u, label %bb.d, label %st_mult.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.189, i64 noundef 4, i64 noundef %.) #19
  unreachable

st_mult.exit:                                     ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !108
  %i.w = shl nuw i64 %., 2
  %i.x = tail call ptr @xrealloc(ptr noundef %i.v, i64 noundef %i.w) #18 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !108
  %.pre73 = load i64, ptr %i.e, align 8, !tbaa !128 ; 2 uses
  %.pre74 = load i64, ptr %i.c, align 8, !tbaa !87
  %.pre82 = add i64 %.pre73, 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %st_mult.exit
  %.pre-phi83 = phi i64 [ %i.o, %._crit_edge ], [ %.pre82, %st_mult.exit ] ; 2 uses
  %i.y = phi i64 [ %i.g, %._crit_edge ], [ %.pre74, %st_mult.exit ] ; 2 uses
  %i.z = phi i64 [ %i.h, %._crit_edge ], [ %.pre73, %st_mult.exit ]
  %i.aa = phi ptr [ %.pre72, %._crit_edge ], [ %i.x, %st_mult.exit ]
  store i64 %.pre-phi83, ptr %i.e, align 8, !tbaa !128
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z
  store i32 %i.n, ptr %i.ab, align 4, !tbaa !15
  %i.ac = add nuw i64 %.04669, 1                  ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.y
  br i1 %i.ad, label %bb.b, label %.loopexit, !llvm.loop !185

bb.f:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !126
  %.not54 = icmp eq i32 %i.af, 0
  br i1 %.not54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(80) @geometric_strategy, i64 80, i1 false), !tbaa.struct !190
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.047 = phi i32 [ 1, %bb.g ], [ 2, %bb.h ]      ; 2 uses
  %i.ag = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.ah = call i32 @repo_config_get_string_tmp(ptr noundef %i.ag, ptr noundef nonnull @.str.186, ptr noundef nonnull %i.a) #18
  %.not55 = icmp eq i32 %i.ah, 0
  br i1 %.not55, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !27  ; 4 uses
  %i.aj = call i32 @strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.190) #22, !noalias !191
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(80) @incremental_strategy, i64 80, i1 false), !tbaa.struct !190
  br label %parse_maintenance_strategy.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = call i32 @strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.109) #22, !noalias !191
  %.not4.i = icmp eq i32 %i.ak, 0
  br i1 %.not4.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(80) @gc_strategy, i64 80, i1 false), !tbaa.struct !190
  br label %parse_maintenance_strategy.exit

bb.n:                                             ; preds = %bb.l
  %i.al = call i32 @strcasecmp(ptr noundef %i.ai, ptr noundef nonnull @.str.191) #22, !noalias !191
  %.not5.i = icmp eq i32 %i.al, 0
  br i1 %.not5.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(80) @geometric_strategy, i64 80, i1 false), !tbaa.struct !190
  br label %parse_maintenance_strategy.exit

bb.p:                                             ; preds = %bb.n
  %i.am = call fastcc ptr @_(ptr noundef nonnull @.str.192), !noalias !191
  call void (ptr, ...) @die(ptr noundef %i.am, ptr noundef %i.ai) #19, !noalias !191
  unreachable

parse_maintenance_strategy.exit:                  ; preds = %bb.k, %bb.m, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0, i64 80, i1 false), !tbaa.struct !190
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.q

bb.q:                                             ; preds = %parse_maintenance_strategy.exit, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.al
  call void @strbuf_release(ptr noundef nonnull %2) #18
  br label %.loopexit

bb.s:                                             ; preds = %bb.q, %bb.al
  %.070 = phi i64 [ 0, %bb.q ], [ %i.ch, %bb.al ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i64 0, ptr %i.an, align 8, !tbaa !124
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !54 ; 2 uses
  %.not9.i = icmp eq ptr %i.ar, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.ar, align 1, !tbaa !112
  br label %strbuf_setlen.exit

bb.u:                                             ; preds = %bb.s
  %i.as = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !112
  %.not10.i = icmp eq i8 %i.as, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @__assert_fail(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.180, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #19
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.t, %bb.u
  %i.at = getelementptr inbounds nuw [32 x i8], ptr @tasks, i64 %.070
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !139 ; 2 uses
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.187, ptr noundef %i.au) #18
  %i.av = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.ax = call i32 @repo_config_get_bool(ptr noundef %i.av, ptr noundef %i.aw, ptr noundef nonnull %i.b) #18
  %.not56 = icmp eq i32 %i.ax, 0
  br i1 %.not56, label %bb.w, label %strbuf_setlen.exit._crit_edge

strbuf_setlen.exit._crit_edge:                    ; preds = %strbuf_setlen.exit
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.070
  %.pre75 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !193
  %i.ay = and i32 %.pre75, %.047
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.al, label %bb.x

bb.w:                                             ; preds = %strbuf_setlen.exit
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !15
  %.not57 = icmp eq i32 %i.ba, 0                  ; 2 uses
  %i.bb = select i1 %.not57, i32 0, i32 %.047
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.070
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !193
  br i1 %.not57, label %bb.al, label %bb.x

bb.x:                                             ; preds = %strbuf_setlen.exit._crit_edge, %bb.w
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.070 ; 2 uses
  %i.be = load i32, ptr %i.ae, align 4, !tbaa !126
  %.not59 = icmp eq i32 %i.be, 0
  br i1 %.not59, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i64 0, ptr %i.an, align 8, !tbaa !124
  %i.bf = load ptr, ptr %i.ao, align 8, !tbaa !54 ; 2 uses
  %.not9.i63 = icmp eq ptr %i.bf, @strbuf_slopbuf
  br i1 %.not9.i63, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.bf, align 1, !tbaa !112
  br label %strbuf_setlen.exit65

bb.aa:                                            ; preds = %bb.y
  %i.bg = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !112
  %.not10.i64 = icmp eq i8 %i.bg, 0
  br i1 %.not10.i64, label %strbuf_setlen.exit65, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @__assert_fail(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.180, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #19
  unreachable

strbuf_setlen.exit65:                             ; preds = %bb.z, %bb.aa
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.188, ptr noundef %i.au) #18
  %i.bh = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.bj = call i32 @repo_config_get_string_tmp(ptr noundef %i.bh, ptr noundef %i.bi, ptr noundef nonnull %i.a) #18
  %.not60 = icmp eq i32 %i.bj, 0
  br i1 %.not60, label %bb.ac, label %strbuf_setlen.exit65._crit_edge

strbuf_setlen.exit65._crit_edge:                  ; preds = %strbuf_setlen.exit65
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %.pre77 = load i32, ptr %.phi.trans.insert76, align 4, !tbaa !194
  br label %bb.ag

bb.ac:                                            ; preds = %strbuf_setlen.exit65
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !27  ; 4 uses
  %.not.i66 = icmp eq ptr %i.bk, null
  br i1 %.not.i66, label %parse_schedule.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = call i32 @strcasecmp(ptr noundef nonnull readonly %i.bk, ptr noundef nonnull @.str.123) #22
  %.not5.i67 = icmp eq i32 %i.bl, 0
  br i1 %.not5.i67, label %parse_schedule.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = call i32 @strcasecmp(ptr noundef nonnull readonly %i.bk, ptr noundef nonnull @.str.124) #22
  %.not6.i = icmp eq i32 %i.bm, 0
  br i1 %.not6.i, label %parse_schedule.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bn = call i32 @strcasecmp(ptr noundef nonnull readonly %i.bk, ptr noundef nonnull @.str.125) #22
  %.not7.i = icmp eq i32 %i.bn, 0
  %..i = zext i1 %.not7.i to i32
  br label %parse_schedule.exit

parse_schedule.exit:                              ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.0.i = phi i32 [ 2, %bb.ae ], [ %..i, %bb.af ], [ 3, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %.0.i, ptr %i.bo, align 4, !tbaa !194
  br label %bb.ag

bb.ag:                                            ; preds = %strbuf_setlen.exit65._crit_edge, %parse_schedule.exit
  %i.bp = phi i32 [ %.pre77, %strbuf_setlen.exit65._crit_edge ], [ %.0.i, %parse_schedule.exit ]
  %i.bq = load i32, ptr %i.ae, align 4, !tbaa !126
  %i.br = icmp ult i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.x, %bb.ag
  %i.bs = load i64, ptr %i.ap, align 8, !tbaa !128 ; 2 uses
  %i.bt = add i64 %i.bs, 1                        ; 3 uses
  %i.bu = load i64, ptr %i.aq, align 8, !tbaa !189 ; 2 uses
  %i.bv = icmp ugt i64 %i.bt, %i.bu
  br i1 %i.bv, label %bb.ai, label %._crit_edge78

._crit_edge78:                                    ; preds = %bb.ah
  %.pre79 = load ptr, ptr %0, align 8, !tbaa !108
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.bw = mul i64 %i.bu, 3
  %i.bx = add i64 %i.bw, 48
  %i.by = lshr i64 %i.bx, 1
  %.62 = call i64 @llvm.umax.i64(i64 %i.by, i64 %i.bt) ; 4 uses
  store i64 %.62, ptr %i.aq, align 8, !tbaa !189
  %i.bz = icmp ugt i64 %.62, 4611686018427387903
  br i1 %i.bz, label %bb.aj, label %st_mult.exit68

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @die(ptr noundef nonnull @.str.189, i64 noundef 4, i64 noundef %.62) #19
  unreachable

st_mult.exit68:                                   ; preds = %bb.ai
  %i.ca = load ptr, ptr %0, align 8, !tbaa !108
  %i.cb = shl nuw i64 %.62, 2
  %i.cc = call ptr @xrealloc(ptr noundef %i.ca, i64 noundef %i.cb) #18 ; 2 uses
  store ptr %i.cc, ptr %0, align 8, !tbaa !108
  %.pre80 = load i64, ptr %i.ap, align 8, !tbaa !128 ; 2 uses
  %.pre81 = add i64 %.pre80, 1
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge78, %st_mult.exit68
  %.pre-phi = phi i64 [ %i.bt, %._crit_edge78 ], [ %.pre81, %st_mult.exit68 ]
  %i.cd = phi i64 [ %i.bs, %._crit_edge78 ], [ %.pre80, %st_mult.exit68 ]
  %i.ce = phi ptr [ %.pre79, %._crit_edge78 ], [ %i.cc, %st_mult.exit68 ]
  %i.cf = trunc nuw nsw i64 %.070 to i32
  store i64 %.pre-phi, ptr %i.ap, align 8, !tbaa !128
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cd
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !15
  br label %bb.al

bb.al:                                            ; preds = %strbuf_setlen.exit._crit_edge, %bb.ag, %bb.w, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.ch = add nuw nsw i64 %.070, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, 10
  br i1 %exitcond.not, label %bb.r, label %bb.s, !llvm.loop !188

.loopexit:                                        ; preds = %bb.e, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

declare i32 @unsorted_string_list_has_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @maintenance_task_prefetch(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call i32 @for_each_remote(ptr noundef nonnull @fetch_remote, ptr noundef %0) #18
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i = icmp eq i32 %i.b, 0
  br i1 %.not4.i, label %_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.138, i32 noundef 5) #18
  br label %_.exit

_.exit:                                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.c ], [ @.str.138, %bb.b ]
  %i.d = tail call i32 (ptr, ...) @error(ptr noundef %.0.i) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_.exit
  %.0 = phi i32 [ 1, %_.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @maintenance_task_loose_objects(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.write_loose_object_data, align 8 ; 7 uses
  %3 = alloca %struct.child_process, align 8      ; 11 uses
  %4 = alloca %struct.child_process, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i8 8, ptr %i.a, align 8
  %i.b = call ptr @strvec_push(ptr noundef nonnull %4, ptr noundef nonnull @.str.145) #18 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %prune_packed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @strvec_push(ptr noundef nonnull %4, ptr noundef nonnull @.str.144) #18 ; 0 uses
  br label %prune_packed.exit

prune_packed.exit:                                ; preds = %bb.a, %bb.b
  %i.f = call i32 @run_command(ptr noundef nonnull %4) #18
  %.not3 = icmp eq i32 %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br i1 %.not3, label %bb.c, label %bb.k

bb.c:                                             ; preds = %prune_packed.exit
  %i.g = load ptr, ptr @the_repository, align 8, !tbaa !48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  %i.l = call i32 @for_each_loose_file_in_source(ptr noundef %i.k, ptr noundef nonnull @bail_on_loose, ptr noundef null, ptr noundef null, ptr noundef null) #18
  %.not.i2 = icmp eq i32 %i.l, 0
  br i1 %.not.i2, label %pack_loose.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i8 8, ptr %i.m, align 8
  %i.n = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef nonnull @.str.146) #18 ; 0 uses
  %i.o = load i32, ptr %i.c, align 8, !tbaa !41
  %.not8.i = icmp eq i32 %i.o, 0
  %.str.147..str.144.i = select i1 %.not8.i, ptr @.str.147, ptr @.str.144
  %i.p = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef nonnull %.str.147..str.144.i) #18 ; 0 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !127
  %i.v = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %3, ptr noundef nonnull @.str.148, ptr noundef %i.u) #18 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store i32 -1, ptr %i.w, align 8, !tbaa !140
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 -1, ptr %i.x, align 4, !tbaa !141
  %i.y = call i32 @start_command(ptr noundef nonnull %3) #18
  %.not9.i = icmp eq i32 %i.y, 0
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i = icmp eq i32 %i.z, 0
  br i1 %.not4.i.i, label %.sink.split15.i, label %.sink.split15.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !140
  %i.ab = call ptr @xfdopen(i32 noundef %i.aa, ptr noundef nonnull @.str.150) #18
  store ptr %i.ab, ptr %2, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ac, align 8, !tbaa !144
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i32 50000, ptr %i.ad, align 4, !tbaa !145
  %i.ae = call i32 @repo_config_get_int(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.151, ptr noundef nonnull %i.ad) #18 ; 0 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !145 ; 3 uses
  %.not10.i = icmp eq i32 %i.af, 0
  br i1 %.not10.i, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.af, -1
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.h, %bb.f
  %.sink.i = phi i32 [ %i.ah, %bb.h ], [ 2147483647, %bb.f ]
  store i32 %.sink.i, ptr %i.ad, align 4, !tbaa !145
  br label %bb.i

bb.i:                                             ; preds = %.sink.split.i, %bb.g
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !99
  %i.al = call i32 @for_each_loose_file_in_source(ptr noundef %i.ak, ptr noundef nonnull @write_loose_object_to_stdin, ptr noundef null, ptr noundef null, ptr noundef nonnull %2) #18 ; 0 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !143
  %i.an = call i32 @fclose(ptr noundef %i.am)     ; 0 uses
  %i.ao = call i32 @finish_command(ptr noundef nonnull %3) #18
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %pack_loose.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i12.i = icmp eq i32 %i.ap, 0
  br i1 %.not4.i12.i, label %.sink.split15.i, label %.sink.split15.sink.split.i

.sink.split15.sink.split.i:                       ; preds = %bb.j, %bb.e
  %.str.152.sink.i = phi ptr [ @.str.149, %bb.e ], [ @.str.152, %bb.j ]
  %i.aq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.152.sink.i, i32 noundef 5) #18
  br label %.sink.split15.i

.sink.split15.i:                                  ; preds = %.sink.split15.sink.split.i, %bb.j, %bb.e
  %.0.i13.sink.i = phi ptr [ @.str.149, %bb.e ], [ @.str.152, %bb.j ], [ %i.aq, %.sink.split15.sink.split.i ]
  %i.ar = call i32 (ptr, ...) @error(ptr noundef %.0.i13.sink.i) #18 ; 0 uses
  br label %pack_loose.exit

pack_loose.exit:                                  ; preds = %bb.c, %bb.i, %.sink.split15.i
  %.06.i = phi i32 [ 0, %bb.i ], [ 0, %bb.c ], [ 1, %.sink.split15.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.k

bb.k:                                             ; preds = %pack_loose.exit, %prune_packed.exit
  %i.as = phi i32 [ 1, %prune_packed.exit ], [ %.06.i, %pack_loose.exit ]
  ret i32 %i.as
}

; Function Attrs: nounwind uwtable
define internal i32 @loose_object_auto_condition(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !15
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.c = tail call i32 @repo_config_get_int(ptr noundef %i.b, ptr noundef nonnull @.str.154, ptr noundef nonnull @loose_object_auto_limit) #18 ; 0 uses
  %i.d = load i32, ptr @loose_object_auto_limit, align 4, !tbaa !15 ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !99
  %i.k = call i32 @for_each_loose_file_in_source(ptr noundef %i.j, ptr noundef nonnull @loose_object_count, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @maintenance_task_incremental_repack(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.child_process, align 8      ; 10 uses
  %3 = alloca %struct.child_process, align 8      ; 9 uses
  %4 = alloca %struct.child_process, align 8      ; 8 uses
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !48
  tail call void @prepare_repo_settings(ptr noundef %i.a) #18
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.d = load i32, ptr %i.c, align 8, !tbaa !146
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.155, i32 noundef 5) #18
  br label %_.exit

_.exit:                                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ @.str.155, %bb.b ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i) #18
  br label %bb.s

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i8 8, ptr %i.g, align 8
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %4, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.157, ptr noundef null) #18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.i, 0
  %.str.158..str.45.i = select i1 %.not.i, ptr @.str.158, ptr @.str.45
  %i.j = call ptr @strvec_push(ptr noundef nonnull %4, ptr noundef nonnull %.str.158..str.45.i) #18 ; 0 uses
  %i.k = call i32 @run_command(ptr noundef nonnull %4) #18
  %.not1.i = icmp eq i32 %i.k, 0
  br i1 %.not1.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i.i, label %multi_pack_index_write.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.159, i32 noundef 5) #18
  br label %multi_pack_index_write.exit

multi_pack_index_write.exit:                      ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.m, %bb.f ], [ @.str.159, %bb.e ]
  %i.n = call i32 (ptr, ...) @error(ptr noundef %.0.i.i) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.s

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104
  store i8 8, ptr %i.o, align 8
  %i.p = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 112
  store ptr %i.r, ptr %i.s, align 8, !tbaa !85
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %3, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.107, ptr noundef null) #18
  %i.t = load i32, ptr %i.h, align 8, !tbaa !41
  %.not.i7 = icmp eq i32 %i.t, 0
  %.str.158..str.45.i8 = select i1 %.not.i7, ptr @.str.158, ptr @.str.45
  %i.u = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef nonnull %.str.158..str.45.i8) #18 ; 0 uses
  %i.v = call i32 @run_command(ptr noundef nonnull %3) #18
  %.not1.i9 = icmp eq i32 %i.v, 0
  br i1 %.not1.i9, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i10 = icmp eq i32 %i.w, 0
  br i1 %.not4.i.i10, label %multi_pack_index_expire.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.160, i32 noundef 5) #18
  br label %multi_pack_index_expire.exit

multi_pack_index_expire.exit:                     ; preds = %bb.h, %bb.i
  %.0.i.i12 = phi ptr [ %i.x, %bb.i ], [ @.str.160, %bb.h ]
  %i.y = call i32 (ptr, ...) @error(ptr noundef %.0.i.i12) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.s

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 8, ptr %i.z, align 8
  %i.aa = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !85
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.29, ptr noundef null) #18
  %i.ae = load i32, ptr %i.h, align 8, !tbaa !41
  %.not.i14 = icmp eq i32 %i.ae, 0
  %.str.158..str.45.i15 = select i1 %.not.i14, ptr @.str.158, ptr @.str.45
  %i.af = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull %.str.158..str.45.i15) #18 ; 0 uses
  %i.ag = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !81
  call void @odb_reprepare(ptr noundef %i.ai) #18
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !81
  call void @odb_prepare_alternates(ptr noundef %i.aj) #18
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !81
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  br label %bb.k

bb.k:                                             ; preds = %odb_source_files_downcast.exit.i.i.i, %bb.j
  %.09.in.i.i.i = phi ptr [ %i.al, %bb.j ], [ %.09.i.i.i, %odb_source_files_downcast.exit.i.i.i ]
  %.09.i.i.i = load ptr, ptr %.09.in.i.i.i, align 8, !tbaa !113 ; 5 uses
  %.not.i.i.i = icmp eq ptr %.09.i.i.i, null
  br i1 %.not.i.i.i, label %get_auto_pack_size.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !102 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.an, 1
  br i1 %.not.i.i.i.i, label %odb_source_files_downcast.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.79, i32 noundef 31, ptr noundef nonnull @.str.80, i32 noundef %i.an) #19
  unreachable

odb_source_files_downcast.exit.i.i.i:             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 160
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !114
  %i.aq = call ptr @packfile_store_get_packs(ptr noundef %i.ap) #18 ; 3 uses
  %.not11.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not11.i.i.i, label %bb.k, label %.lr.ph.i.preheader.i, !llvm.loop !1

.lr.ph.i.preheader.i:                             ; preds = %odb_source_files_downcast.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !118 ; 2 uses
  %.not17.i15.i = icmp eq ptr %i.as, null
  br i1 %.not17.i15.i, label %.thread.loopexit.i.i, label %.lr.ph.i

.thread.loopexit.i.i:                             ; preds = %repo_for_each_pack_data_next.exit.i.i, %.critedge.i.i.i, %.lr.ph.i.preheader.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %.critedge.i.i.i ], [ 0, %.lr.ph.i.preheader.i ], [ %.1.i.i, %repo_for_each_pack_data_next.exit.i.i ]
  %i.at = call i64 @llvm.smin.i64(i64 %.0.lcssa.ph.i.i, i64 2147483646)
  %i.au = add nuw nsw i64 %i.at, 1
  br label %get_auto_pack_size.exit.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i, %repo_for_each_pack_data_next.exit.i.i
  %i.av = phi ptr [ %i.bg, %repo_for_each_pack_data_next.exit.i.i ], [ %i.as, %.lr.ph.i.preheader.i ]
  %.sroa.0.027.i19.i = phi ptr [ %.sroa.0.1.i.i, %repo_for_each_pack_data_next.exit.i.i ], [ %.09.i.i.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.6.028.i18.i = phi ptr [ %.sroa.6.1.i.i, %repo_for_each_pack_data_next.exit.i.i ], [ %i.aq, %.lr.ph.i.preheader.i ]
  %.01129.i17.i = phi i64 [ %.112.i.i, %repo_for_each_pack_data_next.exit.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 3 uses
  %.030.i16.i = phi i64 [ %.1.i.i, %repo_for_each_pack_data_next.exit.i.i ], [ 0, %.lr.ph.i.preheader.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !52 ; 3 uses
  %i.ay = icmp sgt i64 %i.ax, %.01129.i17.i
  %spec.select.i.i = call i64 @llvm.smax.i64(i64 %i.ax, i64 %.030.i16.i)
  %.112.i.i = call i64 @llvm.smax.i64(i64 %i.ax, i64 %.01129.i17.i)
  %.1.i.i = select i1 %i.ay, i64 %.01129.i17.i, i64 %spec.select.i.i ; 3 uses
  %i.az = load ptr, ptr %.sroa.6.028.i18.i, align 8, !tbaa !119 ; 2 uses
  %.not.i18.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i18.i.i, label %.critedge.i.i.i, label %repo_for_each_pack_data_next.exit.i.i

.critedge.i.i.i:                                  ; preds = %.lr.ph.i, %odb_source_files_downcast.exit.i20.i.i
  %.015.in.i.i.i = phi ptr [ %.015.i.i.i, %odb_source_files_downcast.exit.i20.i.i ], [ %.sroa.0.027.i19.i, %.lr.ph.i ]
  %.015.i.i.i = load ptr, ptr %.015.in.i.i.i, align 8, !tbaa !120 ; 5 uses
  %.not17.i.i.i = icmp eq ptr %.015.i.i.i, null
  br i1 %.not17.i.i.i, label %.thread.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %.critedge.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !102 ; 2 uses
  %.not.i.i19.i.i = icmp eq i32 %i.bb, 1
  br i1 %.not.i.i19.i.i, label %odb_source_files_downcast.exit.i20.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.79, i32 noundef 31, ptr noundef nonnull @.str.80, i32 noundef %i.bb) #19
  unreachable

odb_source_files_downcast.exit.i20.i.i:           ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 160
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !114
  %i.be = call ptr @packfile_store_get_packs(ptr noundef %i.bd) #18 ; 2 uses
  %.not18.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not18.i.i.i, label %.critedge.i.i.i, label %repo_for_each_pack_data_next.exit.i.i, !llvm.loop !2

repo_for_each_pack_data_next.exit.i.i:            ; preds = %odb_source_files_downcast.exit.i20.i.i, %.lr.ph.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.027.i19.i, %.lr.ph.i ], [ %.015.i.i.i, %odb_source_files_downcast.exit.i20.i.i ]
  %.sroa.6.1.i.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.be, %odb_source_files_downcast.exit.i20.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !118 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.bg, null
  br i1 %.not17.i.i, label %.thread.loopexit.i.i, label %.lr.ph.i, !llvm.loop !195

get_auto_pack_size.exit.i:                        ; preds = %bb.k, %.thread.loopexit.i.i
  %.0.lcssa.i.i = phi i64 [ %i.au, %.thread.loopexit.i.i ], [ 1, %bb.k ]
  %i.bh = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %2, ptr noundef nonnull @.str.161, i64 noundef %.0.lcssa.i.i) #18 ; 0 uses
  %i.bi = call i32 @run_command(ptr noundef nonnull %2) #18
  %.not1.i16 = icmp eq i32 %i.bi, 0
  br i1 %.not1.i16, label %bb.r, label %bb.p

bb.p:                                             ; preds = %get_auto_pack_size.exit.i
  %i.bj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i17 = icmp eq i32 %i.bj, 0
  br i1 %.not4.i.i17, label %multi_pack_index_repack.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.162, i32 noundef 5) #18
  br label %multi_pack_index_repack.exit

multi_pack_index_repack.exit:                     ; preds = %bb.p, %bb.q
  %.0.i.i19 = phi ptr [ %i.bk, %bb.q ], [ @.str.162, %bb.p ]
  %i.bl = call i32 (ptr, ...) @error(ptr noundef %.0.i.i19) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.s

bb.r:                                             ; preds = %get_auto_pack_size.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %multi_pack_index_repack.exit, %multi_pack_index_expire.exit, %multi_pack_index_write.exit, %_.exit
  %.0 = phi i32 [ 0, %_.exit ], [ 1, %multi_pack_index_write.exit ], [ 1, %multi_pack_index_expire.exit ], [ 0, %bb.r ], [ 1, %multi_pack_index_repack.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @incremental_repack_auto_condition(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 10, ptr %i.a, align 4, !tbaa !15
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !48
  tail call void @prepare_repo_settings(ptr noundef %i.b) #18
  %i.c = load ptr, ptr @the_repository, align 8, !tbaa !48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.e = load i32, ptr %i.d, align 8, !tbaa !146
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @repo_config_get_int(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.163, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %.not8 = icmp eq i32 %i.g, 0
  br i1 %.not8, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81
  call void @odb_prepare_alternates(ptr noundef %i.k) #18
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %bb.e

bb.e:                                             ; preds = %odb_source_files_downcast.exit.i, %bb.d
  %.09.in.i = phi ptr [ %i.m, %bb.d ], [ %.09.i, %odb_source_files_downcast.exit.i ]
  %.09.i = load ptr, ptr %.09.in.i, align 8, !tbaa !113 ; 5 uses
  %.not.i = icmp eq ptr %.09.i, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !102  ; 2 uses
  %.not.i.i = icmp eq i32 %i.o, 1
  br i1 %.not.i.i, label %odb_source_files_downcast.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.79, i32 noundef 31, ptr noundef nonnull @.str.80, i32 noundef %i.o) #19
  unreachable

odb_source_files_downcast.exit.i:                 ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i, i64 160
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114
  %i.r = call ptr @packfile_store_get_packs(ptr noundef %i.q) #18 ; 3 uses
  %.not11.i = icmp eq ptr %i.r, null
  br i1 %.not11.i, label %bb.e, label %.lr.ph.preheader, !llvm.loop !1

.lr.ph.preheader:                                 ; preds = %odb_source_files_downcast.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118  ; 2 uses
  %.not1083 = icmp ne ptr %i.t, null
  %i.u = load i32, ptr %i.a, align 4              ; 2 uses
  %.not1184 = icmp sgt i32 %i.u, 0
  %or.cond85 = select i1 %.not1083, i1 %.not1184, i1 false
  br i1 %or.cond85, label %.lr.ph89, label %.loopexit

.thread:                                          ; preds = %bb.e, %.critedge.i
  %.0.lcssa = phi i32 [ %spec.select, %.critedge.i ], [ 0, %bb.e ]
  %i.v = load i32, ptr %i.a, align 4
  br label %.loopexit

.lr.ph89:                                         ; preds = %.lr.ph.preheader, %repo_for_each_pack_data_next.exit
  %i.w = phi ptr [ %i.ai, %repo_for_each_pack_data_next.exit ], [ %i.t, %.lr.ph.preheader ]
  %.sroa.0.02888 = phi ptr [ %.sroa.0.1, %repo_for_each_pack_data_next.exit ], [ %.09.i, %.lr.ph.preheader ] ; 2 uses
  %.sroa.6.02987 = phi ptr [ %.sroa.6.1, %repo_for_each_pack_data_next.exit ], [ %i.r, %.lr.ph.preheader ]
  %.03086 = phi i32 [ %spec.select, %repo_for_each_pack_data_next.exit ], [ 0, %.lr.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = load i16, ptr %i.x, align 8
  %i.z = and i16 %i.y, 128
  %.not12 = icmp eq i16 %i.z, 0
  %i.aa = zext i1 %.not12 to i32
  %spec.select = add nuw nsw i32 %.03086, %i.aa   ; 4 uses
  %i.ab = load ptr, ptr %.sroa.6.02987, align 8, !tbaa !119 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ab, null
  br i1 %.not.i13, label %.critedge.i, label %repo_for_each_pack_data_next.exit

.critedge.i:                                      ; preds = %.lr.ph89, %odb_source_files_downcast.exit.i15
  %.015.in.i = phi ptr [ %.015.i, %odb_source_files_downcast.exit.i15 ], [ %.sroa.0.02888, %.lr.ph89 ]
  %.015.i = load ptr, ptr %.015.in.i, align 8, !tbaa !120 ; 5 uses
  %.not17.i = icmp eq ptr %.015.i, null
  br i1 %.not17.i, label %.thread, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.015.i, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !102 ; 2 uses
  %.not.i.i14 = icmp eq i32 %i.ad, 1
  br i1 %.not.i.i14, label %odb_source_files_downcast.exit.i15, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.79, i32 noundef 31, ptr noundef nonnull @.str.80, i32 noundef %i.ad) #19
  unreachable

odb_source_files_downcast.exit.i15:               ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i, i64 160
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !114
  %i.ag = call ptr @packfile_store_get_packs(ptr noundef %i.af) #18 ; 2 uses
  %.not18.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i, label %.critedge.i, label %repo_for_each_pack_data_next.exit, !llvm.loop !2

repo_for_each_pack_data_next.exit:                ; preds = %odb_source_files_downcast.exit.i15, %.lr.ph89
  %.sroa.0.1 = phi ptr [ %.sroa.0.02888, %.lr.ph89 ], [ %.015.i, %odb_source_files_downcast.exit.i15 ]
  %.sroa.6.1 = phi ptr [ %i.ab, %.lr.ph89 ], [ %i.ag, %odb_source_files_downcast.exit.i15 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.6.1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118 ; 2 uses
  %.not10 = icmp ne ptr %i.ai, null
  %i.aj = load i32, ptr %i.a, align 4             ; 2 uses
  %.not11 = icmp slt i32 %spec.select, %i.aj
  %or.cond = select i1 %.not10, i1 %.not11, i1 false
  br i1 %or.cond, label %.lr.ph89, label %.loopexit, !llvm.loop !196

.loopexit:                                        ; preds = %repo_for_each_pack_data_next.exit, %.lr.ph.preheader, %.thread
  %.022 = phi i32 [ %.0.lcssa, %.thread ], [ 0, %.lr.ph.preheader ], [ %spec.select, %repo_for_each_pack_data_next.exit ]
  %i.ak = phi i32 [ %i.v, %.thread ], [ %i.u, %.lr.ph.preheader ], [ %i.aj, %repo_for_each_pack_data_next.exit ]
  %i.al = icmp sge i32 %.022, %i.ak
  %i.am = zext i1 %i.al to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a, %.loopexit
  %.04 = phi i32 [ 0, %bb.b ], [ %i.am, %.loopexit ], [ 0, %bb.a ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @maintenance_task_geometric_repack(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.pack_geometry, align 8      ; 9 uses
  %3 = alloca %struct.pack_objects_args, align 8  ; 5 uses
  %4 = alloca %struct.existing_packs, align 8     ; 10 uses
  %5 = alloca %struct.string_list, align 8        ; 5 uses
  %6 = alloca %struct.child_process, align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  store i32 2, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i64 160, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.c, i8 0, i64 168, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i8 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i8 1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.h = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.i = call i32 @repo_config_get_int(ptr noundef %i.h, ptr noundef nonnull @.str.164, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !48
  store ptr %i.j, ptr %4, align 8, !tbaa !148
  call void @existing_packs_collect(ptr noundef nonnull %4, ptr noundef nonnull %5) #18
  call void @pack_geometry_init(ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull %3) #18
  call void @pack_geometry_split(ptr noundef nonnull %2) #18
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i8 8, ptr %i.k, align 8
  %i.l = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 112
  store ptr %i.n, ptr %i.o, align 8, !tbaa !85
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %6, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef null) #18
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !151
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !197
  %i.t = icmp ult i32 %i.q, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = load i32, ptr %i.a, align 4, !tbaa !198
  %i.v = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %6, ptr noundef nonnull @.str.165, i32 noundef %i.u) #18 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call fastcc void @add_repack_all_option(ptr noundef %1, ptr noundef null, ptr noundef %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !41
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call ptr @strvec_push(ptr noundef nonnull %6, ptr noundef nonnull @.str.144) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 360
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !146
  %.not2 = icmp eq i32 %i.ab, 0
  br i1 %.not2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = call ptr @strvec_push(ptr noundef nonnull %6, ptr noundef nonnull @.str.166) #18 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = call i32 @run_command(ptr noundef nonnull %6) #18
  %.not3 = icmp eq i32 %i.ad, 0
  br i1 %.not3, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i = icmp eq i32 %i.ae, 0
  br i1 %.not4.i, label %_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.167, i32 noundef 5) #18
  br label %_.exit

_.exit:                                           ; preds = %bb.i, %bb.j
  %.0.i = phi ptr [ %i.af, %bb.j ], [ @.str.167, %bb.i ]
  %i.ag = call i32 (ptr, ...) @error(ptr noundef %.0.i) #18 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_.exit
  %.0 = phi i32 [ -1, %_.exit ], [ 0, %bb.h ]
  call void @existing_packs_release(ptr noundef nonnull %4) #18
  call void @pack_geometry_release(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @geometric_repack_auto_condition(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.pack_geometry, align 8      ; 8 uses
  %2 = alloca %struct.pack_objects_args, align 8  ; 5 uses
  %3 = alloca %struct.existing_packs, align 8     ; 10 uses
  %4 = alloca %struct.string_list, align 8        ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  store i32 2, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, i8 0, i64 160, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 1, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.e, i8 0, i64 168, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i8 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i8 1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 1, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 100, ptr %i.b, align 4, !tbaa !15
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.k = call i32 @repo_config_get_int(ptr noundef %i.j, ptr noundef nonnull @.str.168, ptr noundef nonnull %i.b) #18 ; 0 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !15   ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.o = call i32 @repo_config_get_int(ptr noundef %i.n, ptr noundef nonnull @.str.164, ptr noundef nonnull %i.c) #18 ; 0 uses
  %i.p = load ptr, ptr @the_repository, align 8, !tbaa !48
  store ptr %i.p, ptr %3, align 8, !tbaa !148
  call void @existing_packs_collect(ptr noundef nonnull %3, ptr noundef nonnull %4) #18
  call void @pack_geometry_init(ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %2) #18
  call void @pack_geometry_split(ptr noundef nonnull %1) #18
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !151
  %.not4 = icmp eq i32 %i.r, 0
  br i1 %.not4, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.b, align 4, !tbaa !15
  %i.t = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !102  ; 2 uses
  %.not.i.i = icmp eq i32 %i.z, 1
  br i1 %.not.i.i, label %odb_source_files_downcast.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.79, i32 noundef 31, ptr noundef nonnull @.str.80, i32 noundef %i.z) #19
  unreachable

odb_source_files_downcast.exit.i:                 ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !106 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !107
  %i.ae = call i32 %i.ad(ptr noundef %i.ab, i32 noundef 1, ptr noundef nonnull %i.a) #18, !inline_history !0
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %too_many_loose_objects.exit.thread, label %too_many_loose_objects.exit

too_many_loose_objects.exit.thread:               ; preds = %odb_source_files_downcast.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.f

too_many_loose_objects.exit:                      ; preds = %odb_source_files_downcast.exit.i
  %i.ag = add nsw i32 %i.s, 255
  %i.ah = sdiv i32 %i.ag, 256
  %i.ai = shl nsw i32 %i.ah, 8
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !52
  %i.ak = sext i32 %i.ai to i64
  %i.al = icmp ule i64 %i.aj, %i.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %cond.fr = freeze i1 %i.al
  br i1 %cond.fr, label %bb.f, label %bb.g

bb.f:                                             ; preds = %too_many_loose_objects.exit.thread, %too_many_loose_objects.exit
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %too_many_loose_objects.exit, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.f ], [ 1, %too_many_loose_objects.exit ]
  call void @existing_packs_release(ptr noundef nonnull %3) #18
  call void @pack_geometry_release(ptr noundef nonnull %1) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.a, %bb.g
  %.02 = phi i32 [ 0, %bb.a ], [ %.0, %bb.g ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %.02
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @maintenance_task_gc_foreground(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call fastcc i32 @gc_foreground_tasks(ptr noundef %0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @maintenance_task_gc_background(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.child_process, align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 8, ptr %i.a, align 8
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.d, ptr %i.e, align 8, !tbaa !85
  %i.f = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull @.str.109) #18 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !42
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull @.str.106) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41
  %.not2 = icmp eq i32 %i.k, 0
  %.str.147..str.144 = select i1 %.not2, ptr @.str.147, ptr @.str.144
  %i.l = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull %.str.147..str.144) #18 ; 0 uses
  %i.m = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull @.str.169) #18 ; 0 uses
  %i.n = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull @.str.170) #18 ; 0 uses
  %i.o = call i32 @run_command(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @gc_condition(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.strvec, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.gc_condition.repack_args, i64 24, i1 false)
  %i.a = call fastcc i32 @need_to_gc(ptr noundef %0, ptr noundef %1)
  call void @strvec_clear(ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @maintenance_task_commit_graph(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.child_process, align 8      ; 8 uses
  %i.a = load ptr, ptr @the_repository, align 8, !tbaa !48
  tail call void @prepare_repo_settings(ptr noundef %i.a) #18
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.d = load i32, ptr %i.c, align 4, !tbaa !199
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 8, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112
  store ptr %i.g, ptr %i.h, align 8, !tbaa !85
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.173, ptr noundef null) #18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %.not.i = icmp eq i32 %i.j, 0
  %.str.158..str.45.i = select i1 %.not.i, ptr @.str.158, ptr @.str.45
  %i.k = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull %.str.158..str.45.i) #18 ; 0 uses
  %i.l = call i32 @run_command(ptr noundef nonnull %2) #18
  %.not2 = icmp eq i32 %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.not2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i, label %_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.171, i32 noundef 5) #18
  br label %_.exit

_.exit:                                           ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.n, %bb.d ], [ @.str.171, %bb.c ]
  %i.o = call i32 (ptr, ...) @error(ptr noundef %.0.i) #18 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %_.exit
  %.0 = phi i32 [ 1, %_.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @should_write_commit_graph(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.cg_auto_data, align 4       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store i32 0, ptr %1, align 4, !tbaa !153
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  store i32 100, ptr %i.a, align 4, !tbaa !154
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.c = call i32 @repo_config_get_int(ptr noundef %i.b, ptr noundef nonnull @.str.174, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !154  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.g = call ptr @get_main_ref_store(ptr noundef %i.f) #18
  %i.h = call i32 @refs_for_each_ref(ptr noundef %i.g, ptr noundef nonnull @dfs_on_ref, ptr noundef nonnull %1) #18
  %i.i = load ptr, ptr @the_repository, align 8, !tbaa !48
  call void @repo_clear_commit_marks(ptr noundef %i.i, i32 noundef 1) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @pack_refs_condition(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.string_list, align 8        ; 6 uses
  %2 = alloca %struct.ref_exclusions, align 8     ; 5 uses
  %3 = alloca %struct.refs_optimize_opts, align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) @__const.pack_refs_condition.excludes, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 3, ptr %3, align 8, !tbaa !202
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !203
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = call ptr @string_list_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.175) #18 ; 0 uses
  %i.f = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.g = call ptr @get_main_ref_store(ptr noundef %i.f) #18
  %i.h = call i32 @refs_optimize_required(ptr noundef %i.g, ptr noundef nonnull %3, ptr noundef nonnull %i.a) #18
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @clear_ref_exclusions(ptr noundef nonnull %2) #18
  call void @string_list_clear(ptr noundef nonnull %1, i32 noundef 0) #18
  %i.i = load i8, ptr %i.a, align 1, !tbaa !205, !range !206, !noundef !207
  %i.j = zext nneg i8 %i.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @reflog_expire_condition(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 4 uses
  %2 = alloca %struct.count_reflog_entries_data, align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #18 ; 0 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !123    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 120, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = add i64 %i.c, -2592000
  store i64 %i.f, ptr %i.e, align 8, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.h = add i64 %i.c, -7776000
  store i64 %i.h, ptr %i.g, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 100, ptr %i.a, align 4, !tbaa !15
  %i.i = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.j = call i32 @repo_config_get_int(ptr noundef %i.i, ptr noundef nonnull @.str.176, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !15   ; 3 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i32 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !162
  %i.o = load ptr, ptr @the_repository, align 8, !tbaa !48
  call void @repo_config(ptr noundef %i.o, ptr noundef nonnull @reflog_expire_config, ptr noundef nonnull %i.d) #18
  call void @reflog_expire_options_set_refname(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.177) #18
  %i.p = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.q = call ptr @get_main_ref_store(ptr noundef %i.p) #18
  %i.r = call i32 @refs_for_each_reflog_ent(ptr noundef %i.q, ptr noundef nonnull @.str.177, ptr noundef nonnull @count_reflog_entries, ptr noundef nonnull %2) #18 ; 0 uses
  call void @reflog_expiry_cleanup(ptr noundef nonnull %2) #18
  call void @reflog_clear_expire_config(ptr noundef nonnull %i.d) #18
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163
  %i.u = load i64, ptr %i.n, align 8, !tbaa !162
  %i.v = icmp uge i64 %i.t, %i.u
  %i.w = zext i1 %i.v to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %i.w, %bb.c ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @worktree_prune_condition(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.strbuf, align 8             ; 8 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 1, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.d = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.e = call i32 @repo_config_get_int(ptr noundef %i.d, ptr noundef nonnull @.str.178, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ne i32 %i.f, 0
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !24
  %i.k = call i32 @parse_expiry_date(ptr noundef %i.j, ptr noundef nonnull %i.b) #18
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.m = call ptr (ptr, ptr, ptr, ...) @repo_git_path_replace(ptr noundef %i.l, ptr noundef nonnull %1, ptr noundef nonnull @.str.179) #18
  %i.n = call noalias ptr @opendir(ptr noundef %i.m) ; 3 uses
  %.not10 = icmp eq ptr %i.n, null
  br i1 %.not10, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.o = load i32, ptr %i.a, align 4, !tbaa !15
  %.not1120 = icmp eq i32 %i.o, 0
  br i1 %.not1120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %i.r = call ptr @readdir_skip_dot_and_dotdot(ptr noundef nonnull %i.n) #18 ; 2 uses
  %.not12 = icmp eq ptr %i.r, null
  br i1 %.not12, label %.._crit_edge.loopexit_crit_edge, label %bb.f

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.e
  %.pre.pre = load i32, ptr %i.a, align 4, !tbaa !15
  %i.s = icmp eq i32 %.pre.pre, 0
  br label %._crit_edge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 0, ptr %i.p, align 8, !tbaa !124
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !54   ; 2 uses
  %.not9.i = icmp eq ptr %i.t, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.t, align 1, !tbaa !112
  br label %strbuf_setlen.exit

bb.h:                                             ; preds = %bb.f
  %i.u = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !112
  %.not10.i = icmp eq i8 %i.u, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.180, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #19
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.g, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 19
  %i.w = load i64, ptr %i.b, align 8, !tbaa !52
  %i.x = call i32 @should_prune_worktree(ptr noundef nonnull %i.v, ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef %i.w) #18
  %.not14 = icmp eq i32 %i.x, 0
  br i1 %.not14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %strbuf_setlen.exit
  %i.y = load i32, ptr %i.a, align 4, !tbaa !15
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.a, align 4, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %strbuf_setlen.exit
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !27
  call void @free(ptr noundef %i.aa) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !15
  %.not11 = icmp eq i32 %i.ab, 0
  br i1 %.not11, label %._crit_edge, label %bb.e, !llvm.loop !210

._crit_edge:                                      ; preds = %bb.k, %.._crit_edge.loopexit_crit_edge, %.preheader
  %.not13 = phi i1 [ true, %.preheader ], [ %i.s, %.._crit_edge.loopexit_crit_edge ], [ true, %bb.k ]
  %i.ac = call i32 @closedir(ptr noundef nonnull %i.n) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %._crit_edge
  %.06.shrunk19 = phi i1 [ %.not13, %._crit_edge ], [ false, %bb.d ], [ false, %bb.c ], [ %i.h, %bb.b ]
  %.06 = zext i1 %.06.shrunk19 to i32
  call void @strbuf_release(ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @rerere_gc_condition(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.strbuf, align 8             ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 1, ptr %i.a, align 4, !tbaa !15
  %i.b = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.c = call i32 @repo_config_get_int(ptr noundef %i.b, ptr noundef nonnull @.str.183, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i32 %i.d, 0
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.h = call ptr (ptr, ptr, ptr, ...) @repo_git_path_replace(ptr noundef %i.g, ptr noundef nonnull %1, ptr noundef nonnull @.str.184) #18 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.k = call noalias ptr @opendir(ptr noundef %i.j) ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  %.04.shrunk.ph = phi i1 [ false, %bb.c ], [ %i.f, %bb.b ]
  call void @strbuf_release(ptr noundef nonnull %1) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call ptr @readdir_skip_dot_and_dotdot(ptr noundef nonnull %i.k) #18
  %i.m = icmp ne ptr %i.l, null
  call void @strbuf_release(ptr noundef nonnull %1) #18
  %i.n = call i32 @closedir(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %.04.shrunk11 = phi i1 [ %.04.shrunk.ph, %.thread ], [ %i.m, %bb.d ]
  %.04 = zext i1 %.04.shrunk11 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %.04
}

declare i32 @for_each_remote(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fetch_remote(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.child_process, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.b = load i32, ptr %i.a, align 4, !tbaa !216
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i8 8, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !217
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.139, ptr noundef %i.e, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143, ptr noundef null) #18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41
  %.not4 = icmp eq i32 %i.g, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @strvec_push(ptr noundef nonnull %2, ptr noundef nonnull @.str.144) #18 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = call i32 @run_command(ptr noundef nonnull %2) #18
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.k, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.0
}

declare i32 @for_each_loose_file_in_source(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @bail_on_loose(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #12 {
bb.a:
  ret i32 1
}

declare i32 @start_command(ptr noundef) local_unnamed_addr #3

declare ptr @xfdopen(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @write_loose_object_to_stdin(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !143
  %i.b = tail call ptr @oid_to_hex(ptr noundef %0) #18
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.153, ptr noundef %i.b) #18 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !144  ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !144
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !145
  %i.i = icmp sge i32 %i.e, %i.h
  %i.j = zext i1 %i.i to i32
  ret i32 %i.j
}

declare i32 @finish_command(ptr noundef) local_unnamed_addr #3

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @loose_object_count(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2) #13 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !15
  %i.b = add nsw i32 %i.a, 1                      ; 2 uses
  store i32 %i.b, ptr %2, align 4, !tbaa !15
  %i.c = load i32, ptr @loose_object_auto_limit, align 4, !tbaa !15
  %.not = icmp sge i32 %i.b, %i.c
  %. = zext i1 %.not to i32
  ret i32 %.
}

declare void @prepare_repo_settings(ptr noundef) local_unnamed_addr #3

declare void @existing_packs_collect(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pack_geometry_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pack_geometry_split(ptr noundef) local_unnamed_addr #3

declare void @existing_packs_release(ptr noundef) local_unnamed_addr #3

declare void @pack_geometry_release(ptr noundef) local_unnamed_addr #3

declare i32 @refs_for_each_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_main_ref_store(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @dfs_on_ref(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.object_id, align 4          ; 4 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !223
  %i.d = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.e = call i32 @reference_get_peeled_oid(ptr noundef %i.d, ptr noundef %0, ptr noundef nonnull %2) #18
  %.not = icmp eq i32 %i.e, 0
  %spec.select = select i1 %.not, ptr %2, ptr %i.c ; 2 uses
  %i.f = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.i = call i32 @odb_read_object_info(ptr noundef %i.h, ptr noundef %spec.select, ptr noundef null) #18
  %.not31 = icmp eq i32 %i.i, 1
  br i1 %.not31, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.k = call ptr @lookup_commit(ptr noundef %i.j, ptr noundef %spec.select) #18 ; 6 uses
  %.not32 = icmp eq ptr %i.k, null
  br i1 %.not32, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = and i64 %i.l, 4294967296
  %.not33 = icmp eq i64 %i.m, 0
  br i1 %.not33, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.n = or disjoint i64 %i.l, 4294967296
  store i64 %i.n, ptr %i.k, align 8
  %i.o = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.p = call i32 @repo_parse_commit_gently(ptr noundef %i.o, ptr noundef nonnull %i.k, i32 noundef 0) #18
  %.not34 = icmp eq i32 %i.p, 0
  br i1 %.not34, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 @commit_graph_position(ptr noundef nonnull %i.k) #18
  %.not35 = icmp eq i32 %i.q, -1
  br i1 %.not35, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %1, align 4, !tbaa !153
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  store i32 %i.s, ptr %1, align 4, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !154
  %.not36 = icmp slt i32 %i.s, %i.u
  br i1 %.not36, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.v = call ptr @commit_list_insert(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a) #18 ; 0 uses
  %i.w = load ptr, ptr %i.a, align 8
  %.not53 = icmp eq ptr %i.w, null
  br i1 %.not53, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.g, %._crit_edge
  %i.x = call ptr @pop_commit(ptr noundef nonnull %i.a) #18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.043 = load ptr, ptr %i.y, align 8, !tbaa !223 ; 2 uses
  %.not3844 = icmp eq ptr %.043, null
  br i1 %.not3844, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph50, %bb.l
  %.045 = phi ptr [ %.0, %bb.l ], [ %.043, %.lr.ph50 ] ; 5 uses
  %i.z = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.aa = load ptr, ptr %.045, align 8, !tbaa !225
  %i.ab = call i32 @repo_parse_commit_gently(ptr noundef %i.z, ptr noundef %i.aa, i32 noundef 0) #18
  %.not39 = icmp eq i32 %i.ab, 0
  br i1 %.not39, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph
  %i.ac = load ptr, ptr %.045, align 8, !tbaa !225
  %i.ad = call i32 @commit_graph_position(ptr noundef %i.ac) #18
  %.not40 = icmp eq i32 %i.ad, -1
  br i1 %.not40, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %.045, align 8, !tbaa !225 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = and i64 %i.af, 4294967296
  %.not41 = icmp eq i64 %i.ag, 0
  br i1 %.not41, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ah = or disjoint i64 %i.af, 4294967296
  store i64 %i.ah, ptr %i.ae, align 8
  %i.ai = load i32, ptr %1, align 4, !tbaa !153
  %i.aj = add nsw i32 %i.ai, 1                    ; 2 uses
  store i32 %i.aj, ptr %1, align 4, !tbaa !153
  %i.ak = load i32, ptr %i.t, align 4, !tbaa !154
  %.not42 = icmp slt i32 %i.aj, %i.ak
  br i1 %.not42, label %bb.k, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.j
  %i.al = load ptr, ptr %i.a, align 8
  br label %._crit_edge51

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %.045, align 8, !tbaa !225
  %i.an = call ptr @commit_list_insert(ptr noundef %i.am, ptr noundef nonnull %i.a) #18 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.h, %bb.i, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.045, i64 8
  %.0 = load ptr, ptr %i.ao, align 8, !tbaa !223  ; 2 uses
  %.not38 = icmp eq ptr %.0, null
  br i1 %.not38, label %._crit_edge, label %.lr.ph, !llvm.loop !218

._crit_edge:                                      ; preds = %bb.l, %.lr.ph50
  %i.ap = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not60 = icmp eq ptr %i.ap, null
  br i1 %.not60, label %._crit_edge51, label %.lr.ph50, !llvm.loop !219

._crit_edge51:                                    ; preds = %._crit_edge, %._crit_edge.thread, %bb.g
  %.028.lcssa = phi i32 [ 0, %bb.g ], [ 1, %._crit_edge.thread ], [ 0, %._crit_edge ]
  %.lcssa = phi ptr [ null, %bb.g ], [ %i.al, %._crit_edge.thread ], [ %i.ap, %._crit_edge ]
  call void @commit_list_free(ptr noundef %.lcssa) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.d, %bb.e, %bb.b, %bb.c, %bb.a, %._crit_edge51
  %.029 = phi i32 [ %.028.lcssa, %._crit_edge51 ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i32 %.029
}

declare void @repo_clear_commit_marks(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @reference_get_peeled_oid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @odb_read_object_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lookup_commit(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @commit_graph_position(ptr noundef) local_unnamed_addr #3

declare ptr @commit_list_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pop_commit(ptr noundef) local_unnamed_addr #3

declare void @commit_list_free(ptr noundef) local_unnamed_addr #3

declare i32 @repo_parse_commit_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @refs_optimize_required(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @clear_ref_exclusions(ptr noundef) local_unnamed_addr #3

declare i32 @reflog_expire_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @reflog_expire_options_set_refname(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @refs_for_each_reflog_ent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @count_reflog_entries(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #0 {
bb.a:
  %i.a = tail call i32 @should_expire_reflog_ent(ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) #18
  %.not = icmp eq i32 %i.a, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !163 ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %.pre, 1                         ; 2 uses
  store i64 %i.b, ptr %.phi.trans.insert, align 8, !tbaa !163
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.c = phi i64 [ %i.b, %bb.b ], [ %.pre, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !162
  %i.f = icmp uge i64 %i.c, %i.e
  %i.g = zext i1 %i.f to i32
  ret i32 %i.g
}

declare void @reflog_expiry_cleanup(ptr noundef) local_unnamed_addr #3

declare void @reflog_clear_expire_config(ptr noundef) local_unnamed_addr #3

declare i32 @should_expire_reflog_ent(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #7

declare ptr @repo_git_path_replace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @readdir_skip_dot_and_dotdot(ptr noundef) local_unnamed_addr #3

declare i32 @should_prune_worktree(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #14

declare void @die_for_incompatible_opt4(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @repo_config_get_string_tmp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @maybe_run_task(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %4, 0                        ; 2 uses
  %i.b = select i1 %i.a, ptr @.str.196, ptr @.str.195 ; 2 uses
  %.in.v = select i1 %i.a, i64 8, i64 16
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.c = load ptr, ptr %.in, align 8, !tbaa !86   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !137  ; 2 uses
  %.not25 = icmp eq ptr %i.g, null
  br i1 %.not25, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 %i.g(ptr noundef nonnull %3) #18
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !139
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str.126, i32 noundef 1775, ptr noundef nonnull %i.b, ptr noundef %i.i, ptr noundef %1) #18
  %i.j = tail call i32 %i.c(ptr noundef nonnull %2, ptr noundef nonnull %3) #18
  %.not27 = icmp eq i32 %i.j, 0
  br i1 %.not27, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i = icmp eq i32 %i.k, 0
  br i1 %.not4.i, label %_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.197, i32 noundef 5) #18
  br label %_.exit

_.exit:                                           ; preds = %bb.f, %bb.g
  %.0.i = phi ptr [ %i.l, %bb.g ], [ @.str.197, %bb.f ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !139
  %i.n = tail call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef %i.m) #18 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %_.exit, %bb.e
  %.0 = phi i32 [ 1, %_.exit ], [ 0, %bb.e ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !139
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str.126, i32 noundef 1780, ptr noundef nonnull %i.b, ptr noundef %i.o, ptr noundef %1) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.h
  %.021 = phi i32 [ %.0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.021
}

declare void @trace2_region_enter_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @trace2_region_leave_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @maintenance_opt_scheduler(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.126, i32 noundef 3312, ptr noundef nonnull @.str.127) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @strcasecmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.16) #22
  %.not9.i = icmp eq i32 %i.c, 0
  br i1 %.not9.i, label %parse_scheduler.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @strcasecmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.203) #22
  %.not10.i = icmp eq i32 %i.d, 0
  br i1 %.not10.i, label %parse_scheduler.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call i32 @strcasecmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.204) #22
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %parse_scheduler.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = tail call i32 @strcasecmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.205) #22
  %.not12.i = icmp eq i32 %i.f, 0
  br i1 %.not12.i, label %parse_scheduler.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = tail call i32 @strcasecmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.206) #22
  %.not13.i = icmp eq i32 %i.g, 0
  br i1 %.not13.i, label %parse_scheduler.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = tail call i32 @strcasecmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.207) #22
end_hunk_1
begin_hunk_2_@update_background_schedule:bb.a
  %.val19.us.1 = load ptr, ptr %4, align 8, !tbaa !57
  %i.ac = call i32 @get_tempfile_fd(ptr noundef %.val19.us.1) #18 ; 0 uses
  %i.ad = call fastcc i32 @systemd_timer_delete_units() ; 0 uses
  br label %.preheader.split.us.2

.preheader.split.us.2:                            ; preds = %bb.f, %is_systemd_timer_available.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.ae = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.207, ptr noundef nonnull %i.e, ptr noundef null)
  %.not.i31 = icmp eq i32 %i.ae, 0
  %i.af = load i32, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %.not18.us.257 = icmp eq i32 %i.af, 0
  %.not18.us.2 = select i1 %.not.i31, i1 true, i1 %.not18.us.257
  br i1 %.not18.us.2, label %.preheader.split.us.3, label %bb.g

bb.g:                                             ; preds = %.preheader.split.us.2
  %.val19.us.2 = load ptr, ptr %4, align 8, !tbaa !57
  %i.ag = call i32 @get_tempfile_fd(ptr noundef %.val19.us.2) #18 ; 0 uses
  %i.ah = call fastcc i32 @launchctl_remove_plist(i32 noundef 3)
  %.not.i.i33 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i33, label %bb.h, label %.preheader.split.us.3

bb.h:                                             ; preds = %bb.g
  %i.ai = call fastcc i32 @launchctl_remove_plist(i32 noundef 2)
  %.not1.i.i35 = icmp eq i32 %i.ai, 0
  br i1 %.not1.i.i35, label %bb.i, label %.preheader.split.us.3

bb.i:                                             ; preds = %bb.h
  %i.aj = call fastcc i32 @launchctl_remove_plist(i32 noundef 1) ; 0 uses
  br label %.preheader.split.us.3

.preheader.split.us.3:                            ; preds = %bb.i, %bb.h, %bb.g, %.preheader.split.us.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ak = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.208, ptr noundef nonnull %i.d, ptr noundef null)
  %.not.i36 = icmp eq i32 %i.ak, 0
  %i.al = load i32, ptr %i.d, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %.not18.us.358 = icmp eq i32 %i.al, 0
  %.not18.us.3 = select i1 %.not.i36, i1 true, i1 %.not18.us.358
  br i1 %.not18.us.3, label %.split.us, label %bb.j

bb.j:                                             ; preds = %.preheader.split.us.3
  %.val19.us.3 = load ptr, ptr %4, align 8, !tbaa !57
  %i.am = call i32 @get_tempfile_fd(ptr noundef %.val19.us.3) #18 ; 0 uses
  %i.an = call i32 @schtasks_update_schedule(i32 noundef 0, i32 poison) #18 ; 0 uses
  br label %.split.us

bb.k:                                             ; preds = %bb.a
  %i.ao = tail call ptr @__errno_location() #21   ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.aq = icmp eq i32 %i.ap, 17
  %i.ar = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i = icmp eq i32 %i.ar, 0                 ; 2 uses
  br i1 %i.aq, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %.not4.i, label %_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.292, i32 noundef 5) #18
  br label %_.exit

_.exit:                                           ; preds = %bb.l, %bb.m
  %.0.i = phi ptr [ %i.as, %bb.m ], [ @.str.292, %bb.l ]
  %i.at = call ptr @absolute_path(ptr noundef %i.n) #18
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.av = call ptr @strerror(i32 noundef %i.au) #18
  %i.aw = call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef %i.at, ptr noundef %i.av) #18 ; 0 uses
  br label %bb.aa

bb.n:                                             ; preds = %bb.k
  br i1 %.not4.i, label %_.exit22, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.293, i32 noundef 5) #18
  br label %_.exit22

_.exit22:                                         ; preds = %bb.n, %bb.o
  %.0.i21 = phi ptr [ %i.ax, %bb.o ], [ @.str.293, %bb.n ]
  %i.ay = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i21) #18 ; 0 uses
  br label %bb.aa

bb.p:                                             ; preds = %.preheader.split.preheader
  %i.az = call i32 @is_crontab_available() #18
  %.not18 = icmp eq i32 %i.az, 0
  br i1 %.not18, label %.preheader.split.1, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val19 = load ptr, ptr %4, align 8, !tbaa !57
  %i.ba = call i32 @get_tempfile_fd(ptr noundef %.val19) #18
  %i.bb = call i32 @crontab_update_schedule(i32 noundef 0, i32 noundef %i.ba) #18 ; 0 uses
  br label %.preheader.split.1

.preheader.split.1:                               ; preds = %bb.p, %bb.q
  %.pr = load i32, ptr %0, align 4, !tbaa !130
  %i.bc = icmp eq i32 %.pr, 2
  br i1 %i.bc, label %.preheader.split.2.thread, label %.preheader.split.1.thread

.preheader.split.1.thread:                        ; preds = %.preheader.split.preheader, %.preheader.split.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.bd = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.211, ptr noundef nonnull %i.c, ptr noundef null)
  %.not.i38 = icmp eq i32 %i.bd, 0
  br i1 %.not.i38, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader.split.1.thread
  %i.be = load i32, ptr %i.c, align 4, !tbaa !15
  br label %is_systemd_timer_available.exit45

bb.s:                                             ; preds = %.preheader.split.1.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216, ptr noundef null) #18
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 8
  %i.bh = or i8 %i.bg, 23
  store i8 %i.bh, ptr %i.bf, align 8
  %i.bi = call i32 @start_command(ptr noundef nonnull %2) #18
  %.not.i.i40 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i40, label %bb.t, label %real_is_systemd_timer_available.exit.i41

bb.t:                                             ; preds = %bb.s
  %i.bj = call i32 @finish_command(ptr noundef nonnull %2) #18
  %.not1.i.i43 = icmp eq i32 %i.bj, 0
  %..i.i44 = zext i1 %.not1.i.i43 to i32
  br label %real_is_systemd_timer_available.exit.i41

real_is_systemd_timer_available.exit.i41:         ; preds = %bb.t, %bb.s
  %.0.i.i42 = phi i32 [ 0, %bb.s ], [ %..i.i44, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %is_systemd_timer_available.exit45

is_systemd_timer_available.exit45:                ; preds = %bb.r, %real_is_systemd_timer_available.exit.i41
  %.0.i39 = phi i32 [ %i.be, %bb.r ], [ %.0.i.i42, %real_is_systemd_timer_available.exit.i41 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.not18.1 = icmp eq i32 %.0.i39, 0
  br i1 %.not18.1, label %.preheader.split.2, label %bb.u

bb.u:                                             ; preds = %is_systemd_timer_available.exit45
  %.val19.1 = load ptr, ptr %4, align 8, !tbaa !57
  %i.bk = call i32 @get_tempfile_fd(ptr noundef %.val19.1) #18 ; 0 uses
  %i.bl = call fastcc i32 @systemd_timer_delete_units() ; 0 uses
  br label %.preheader.split.2

.preheader.split.2:                               ; preds = %bb.u, %is_systemd_timer_available.exit45
  %.pr27 = load i32, ptr %0, align 4, !tbaa !130
  %i.bm = icmp eq i32 %.pr27, 3
  br i1 %i.bm, label %.preheader.split.3.thread, label %.preheader.split.2.thread

.preheader.split.2.thread:                        ; preds = %.preheader.split.1, %.preheader.split.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.bn = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.207, ptr noundef nonnull %i.b, ptr noundef null)
  %.not.i47 = icmp eq i32 %i.bn, 0
  %i.bo = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.not18.255 = icmp eq i32 %i.bo, 0
  %.not18.2 = select i1 %.not.i47, i1 true, i1 %.not18.255
  br i1 %.not18.2, label %.preheader.split.3, label %bb.v

bb.v:                                             ; preds = %.preheader.split.2.thread
  %.val19.2 = load ptr, ptr %4, align 8, !tbaa !57
  %i.bp = call i32 @get_tempfile_fd(ptr noundef %.val19.2) #18 ; 0 uses
  %i.bq = call fastcc i32 @launchctl_remove_plist(i32 noundef 3)
  %.not.i.i49 = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i49, label %bb.w, label %.preheader.split.3

bb.w:                                             ; preds = %bb.v
  %i.br = call fastcc i32 @launchctl_remove_plist(i32 noundef 2)
  %.not1.i.i51 = icmp eq i32 %i.br, 0
  br i1 %.not1.i.i51, label %bb.x, label %.preheader.split.3

bb.x:                                             ; preds = %bb.w
  %i.bs = call fastcc i32 @launchctl_remove_plist(i32 noundef 1) ; 0 uses
  br label %.preheader.split.3

.preheader.split.3:                               ; preds = %bb.x, %bb.w, %bb.v, %.preheader.split.2.thread
  %.pr28 = load i32, ptr %0, align 4, !tbaa !130
  %i.bt = icmp eq i32 %.pr28, 4
  br i1 %i.bt, label %bb.z, label %.preheader.split.3.thread

.preheader.split.3.thread:                        ; preds = %.preheader.split.2, %.preheader.split.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bu = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.208, ptr noundef nonnull %i.a, ptr noundef null)
  %.not.i53 = icmp eq i32 %i.bu, 0
  %i.bv = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not18.356 = icmp eq i32 %i.bv, 0
  %.not18.3 = select i1 %.not.i53, i1 true, i1 %.not18.356
  br i1 %.not18.3, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader.split.3.thread
  %.val19.3 = load ptr, ptr %4, align 8, !tbaa !57
  %i.bw = call i32 @get_tempfile_fd(ptr noundef %.val19.3) #18 ; 0 uses
  %i.bx = call i32 @schtasks_update_schedule(i32 noundef 0, i32 poison) #18 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %.preheader.split.3, %.preheader.split.3.thread, %bb.y
  %i.by = load i32, ptr %0, align 4, !tbaa !130
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [24 x i8], ptr @scheduler_fn, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !226
  %.val = load ptr, ptr %4, align 8, !tbaa !57
  %i.cd = call i32 @get_tempfile_fd(ptr noundef %.val) #18
  %i.ce = call i32 %i.cc(i32 noundef 1, i32 noundef %i.cd) #18
  br label %.split.us

.split.us:                                        ; preds = %bb.j, %.preheader.split.us.3, %bb.z
  %.0 = phi i32 [ %i.ce, %bb.z ], [ 0, %.preheader.split.us.3 ], [ 0, %bb.j ]
  %i.cf = call i32 @rollback_lock_file(ptr noundef nonnull %4) #18 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_.exit, %_.exit22, %.split.us
  %.015 = phi i32 [ %.0, %.split.us ], [ -1, %_.exit22 ], [ -1, %_.exit ]
  call void @free(ptr noundef %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal i32 @is_systemd_timer_available() #0 {
bb.a:
  %0 = alloca %struct.child_process, align 8      ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.211, ptr noundef nonnull %i.a, ptr noundef null)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %0, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216, ptr noundef null) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = or i8 %i.e, 23
  store i8 %i.f, ptr %i.d, align 8
  %i.g = call i32 @start_command(ptr noundef nonnull %0) #18
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.d, label %real_is_systemd_timer_available.exit

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @finish_command(ptr noundef nonnull %0) #18
  %.not1.i = icmp eq i32 %i.h, 0
  %..i = zext i1 %.not1.i to i32
  br label %real_is_systemd_timer_available.exit

real_is_systemd_timer_available.exit:             ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.c ], [ %..i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  br label %bb.e

bb.e:                                             ; preds = %real_is_systemd_timer_available.exit, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %.0.i, %real_is_systemd_timer_available.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @is_crontab_available() #0 {
bb.a:
  %0 = alloca %struct.child_process, align 8      ; 8 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.204, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 4, !tbaa !15
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  call void @strvec_split(ptr noundef nonnull %0, ptr noundef %i.e) #18
  %i.f = call ptr @strvec_push(ptr noundef nonnull %0, ptr noundef nonnull @.str.31) #18 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = or i8 %i.h, 23
  store i8 %i.i, ptr %i.g, align 8
  %i.j = call i32 @start_command(ptr noundef nonnull %0) #18
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.d, label %check_crontab_process.exit

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @finish_command(ptr noundef nonnull %0) #18 ; 0 uses
  br label %check_crontab_process.exit

check_crontab_process.exit:                       ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ 1, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  br label %bb.e

bb.e:                                             ; preds = %check_crontab_process.exit, %bb.b
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.e, %check_crontab_process.exit ]
  %.0 = phi i32 [ %i.d, %bb.b ], [ %.0.i, %check_crontab_process.exit ]
  call void @free(ptr noundef %i.l) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @get_schedule_cmd(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.string_list, align 8        ; 10 uses
  %4 = alloca %struct.string_list, align 8        ; 8 uses
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.212) #18 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %xstrdup_or_null.exit.thread, label %xstrdup_or_null.exit

xstrdup_or_null.exit.thread:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  br label %bb.b

xstrdup_or_null.exit:                             ; preds = %bb.a
  %i.b = tail call ptr @xstrdup(ptr noundef nonnull %i.a) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %xstrdup_or_null.exit.thread, %xstrdup_or_null.exit
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @xstrdup(ptr noundef %0) #18
  store ptr %i.c, ptr %2, align 8, !tbaa !27
  br label %bb.q

bb.d:                                             ; preds = %xstrdup_or_null.exit
  %.not28 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %1, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = call i32 @string_list_split_in_place(ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.213, i32 noundef -1) #18 ; 0 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !88     ; 3 uses
  %.not2936 = icmp eq ptr %i.e, null
  br i1 %.not2936, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !88
  %i.h = load i64, ptr %i.f, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.h
  %i.j = icmp ult ptr %i.e, %i.i
  br i1 %i.j, label %.lr.ph45, label %.critedge

.lr.ph45:                                         ; preds = %.lr.ph, %bb.n
  %.0213744 = phi ptr [ %i.s, %bb.n ], [ %i.e, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.k = load ptr, ptr %.0213744, align 8, !tbaa !90
  %i.l = call i32 @string_list_split_in_place(ptr noundef nonnull %4, ptr noundef %i.k, ptr noundef nonnull @.str.214, i32 noundef 2) #18
  %.not31 = icmp eq i32 %i.l, 2
  br i1 %.not31, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.lr.ph45
  %i.m = load ptr, ptr %4, align 8, !tbaa !88     ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !90
  %i.o = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.n) #22
  %.not32 = icmp eq i32 %i.o, 0
  br i1 %.not32, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.r = call ptr @xstrdup(ptr noundef %i.q) #18
  store ptr %i.r, ptr %2, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %.not28, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %1, align 4, !tbaa !15
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  call void @string_list_clear(ptr noundef nonnull %4, i32 noundef 0) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.k
  call void @string_list_clear(ptr noundef nonnull %4, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.p

bb.n:                                             ; preds = %bb.l, %.lr.ph45
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.s = getelementptr inbounds nuw i8, ptr %.0213744, i64 16 ; 2 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !88
  %i.u = load i64, ptr %i.f, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.u
  %i.w = icmp ult ptr %i.s, %i.v
  br i1 %i.w, label %.lr.ph45, label %.critedge

.critedge:                                        ; preds = %bb.n, %.lr.ph, %bb.f
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.x = call ptr @xstrdup(ptr noundef %0) #18
  store ptr %i.x, ptr %2, align 8, !tbaa !27
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %.critedge, %bb.o
  call void @string_list_clear(ptr noundef nonnull %3, i32 noundef 0) #18
  call void @free(ptr noundef %i.b) #18
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.c, %bb.p
  %.022 = phi i32 [ 0, %bb.b ], [ 1, %bb.p ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i32 %.022
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #15

declare i32 @string_list_split_in_place(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @strvec_split(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @crontab_update_schedule(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %struct.child_process, align 8      ; 10 uses
  %4 = alloca %struct.child_process, align 8      ; 8 uses
  %5 = alloca %struct.strbuf, align 8             ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !121
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.212) #18
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %get_random_minute.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @git_rand(i32 noundef 0) #18
  %i.e = urem i32 %i.d, 60
  br label %get_random_minute.exit

get_random_minute.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.e, %bb.b ], [ 13, %bb.a ]  ; 3 uses
  %i.f = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.204, ptr noundef null, ptr noundef nonnull %i.a) ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  call void @strvec_split(ptr noundef nonnull %3, ptr noundef %i.g) #18
  %i.h = call ptr @strvec_push(ptr noundef nonnull %3, ptr noundef nonnull @.str.31) #18 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i32 -1, ptr %i.i, align 8, !tbaa !140
  %i.j = call i32 @dup(i32 noundef %1) #18
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 %i.j, ptr %i.k, align 4, !tbaa !141
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, -9
  store i8 %i.n, ptr %i.l, align 8
  %i.o = call i32 @start_command(ptr noundef nonnull %3) #18
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %get_random_minute.exit
  %i.p = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i, label %_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.220, i32 noundef 5) #18
  br label %_.exit

_.exit:                                           ; preds = %bb.c, %bb.d
  %.0.i41 = phi ptr [ %i.q, %bb.d ], [ @.str.220, %bb.c ]
  %i.r = call i32 (ptr, ...) @error(ptr noundef %.0.i41) #18 ; 0 uses
  br label %bb.w

bb.e:                                             ; preds = %get_random_minute.exit
  %i.s = call i32 @finish_command(ptr noundef nonnull %3) #18 ; 0 uses
  %i.t = call ptr @mks_tempfile_tsm(ptr noundef nonnull @.str.221, i32 noundef 0, i32 noundef 384) #18 ; 4 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !121
  %.not28 = icmp eq ptr %i.t, null
  br i1 %.not28, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i42 = icmp eq i32 %i.u, 0
  br i1 %.not4.i42, label %_.exit44, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.222, i32 noundef 5) #18
  br label %_.exit44

_.exit44:                                         ; preds = %bb.f, %bb.g
  %.0.i43 = phi ptr [ %i.v, %bb.g ], [ @.str.222, %bb.f ]
  %i.w = call i32 (ptr, ...) @error(ptr noundef %.0.i43) #18 ; 0 uses
  br label %bb.w

bb.h:                                             ; preds = %bb.e
  %i.x = call ptr @fdopen_tempfile(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.150) #18 ; 11 uses
  %.not29 = icmp eq ptr %i.x, null
  br i1 %.not29, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i45 = icmp eq i32 %i.y, 0
  br i1 %.not4.i45, label %_.exit47, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.223, i32 noundef 5) #18
  br label %_.exit47

_.exit47:                                         ; preds = %bb.i, %bb.j
  %.0.i46 = phi ptr [ %i.z, %bb.j ], [ @.str.223, %bb.i ]
  %i.aa = call i32 (ptr, ...) @error(ptr noundef %.0.i46) #18 ; 0 uses
  br label %bb.w

bb.k:                                             ; preds = %bb.h
  %i.ab = call noalias ptr @fdopen(i32 noundef %1, ptr noundef nonnull @.str.100) #18 ; 4 uses
  call void @rewind(ptr noundef %i.ab)
  %i.ac = call i32 @strbuf_getline_lf(ptr noundef nonnull %5, ptr noundef %i.ab) #18
  %.not3055 = icmp eq i32 %i.ac, 0
  br i1 %.not3055, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.n
  %.02556 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.n ]
  %.not36 = icmp eq i32 %.02556, 0
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54 ; 3 uses
  br i1 %.not36, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.af = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(33) @.str.224) #22
  %.not37 = icmp eq i32 %i.af, 0
  br i1 %.not37, label %bb.n, label %.critedge40

.critedge:                                        ; preds = %bb.l
  %i.ag = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(31) @.str.225) #22
  %.not38 = icmp ne i32 %i.ag, 0
  %.mux = zext i1 %.not38 to i32
  br label %bb.n

.critedge40:                                      ; preds = %bb.m
  %i.ah = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.ae) #18 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.m, %.critedge40
  %.1 = phi i32 [ %.mux, %.critedge ], [ 0, %.critedge40 ], [ 1, %bb.m ]
  %i.ai = call i32 @strbuf_getline_lf(ptr noundef nonnull %5, ptr noundef %i.ab) #18
  %.not30 = icmp eq i32 %i.ai, 0
  br i1 %.not30, label %bb.l, label %._crit_edge, !llvm.loop !227

._crit_edge:                                      ; preds = %bb.n, %bb.k
  call void @strbuf_release(ptr noundef nonnull %5) #18
  %.not31 = icmp eq i32 %0, 0
  br i1 %.not31, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  %i.aj = call ptr @git_exec_path() #18           ; 2 uses
  %i.ak = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.224) #18 ; 0 uses
  %fwrite = call i64 @fwrite(ptr nonnull @.str.226, i64 44, i64 1, ptr nonnull %i.x) ; 0 uses
  %fwrite32 = call i64 @fwrite(ptr nonnull @.str.227, i64 41, i64 1, ptr nonnull %i.x) ; 0 uses
  %fwrite33 = call i64 @fwrite(ptr nonnull @.str.228, i64 44, i64 1, ptr nonnull %i.x) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  %i.al = load ptr, ptr @get_extra_config_parameters.result, align 8, !tbaa !27 ; 2 uses
  %.not.i48 = icmp eq ptr %i.al, null
  br i1 %.not.i48, label %.preheader.preheader.i, label %get_extra_config_parameters.exit

.preheader.preheader.i:                           ; preds = %bb.o
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.237) #18
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.238) #18
  %i.am = call ptr @strbuf_detach(ptr noundef nonnull %2, ptr noundef null) #18 ; 2 uses
  store ptr %i.am, ptr @get_extra_config_parameters.result, align 8, !tbaa !27
  br label %get_extra_config_parameters.exit

get_extra_config_parameters.exit:                 ; preds = %bb.o, %.preheader.preheader.i
  %.05.i = phi ptr [ %i.am, %.preheader.preheader.i ], [ %i.al, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %6, ptr noundef nonnull @.str.229, ptr noundef %i.aj, ptr noundef %i.aj, ptr noundef %.05.i) #18
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54
  %i.ap = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.x, ptr noundef %i.ao, i32 noundef %.0.i, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.123) #18 ; 0 uses
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !54
  %i.ar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.x, ptr noundef %i.aq, i32 noundef %.0.i, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.124) #18 ; 0 uses
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !54
  %i.at = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.x, ptr noundef %i.as, i32 noundef %.0.i, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.125) #18 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %6) #18
  %i.au = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.225) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.p

bb.p:                                             ; preds = %get_extra_config_parameters.exit, %._crit_edge
  %i.av = call i32 @fflush(ptr noundef nonnull %i.x) ; 0 uses
  call void @strvec_split(ptr noundef nonnull %4, ptr noundef %i.g) #18
  %i.aw = call ptr @get_tempfile_path(ptr noundef nonnull %i.t) #18
  %i.ax = call ptr @strvec_push(ptr noundef nonnull %4, ptr noundef %i.aw) #18 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8
  %i.ba = and i8 %i.az, -9
  store i8 %i.ba, ptr %i.ay, align 8
  %i.bb = call i32 @start_command(ptr noundef nonnull %4) #18
  %.not34 = icmp eq i32 %i.bb, 0
  br i1 %.not34, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i49 = icmp eq i32 %i.bc, 0
  br i1 %.not4.i49, label %_.exit51, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.234, i32 noundef 5) #18
  br label %_.exit51

_.exit51:                                         ; preds = %bb.q, %bb.r
  %.0.i50 = phi ptr [ %i.bd, %bb.r ], [ @.str.234, %bb.q ]
  %i.be = call i32 (ptr, ...) @error(ptr noundef %.0.i50) #18 ; 0 uses
  br label %bb.w

bb.s:                                             ; preds = %bb.p
  %i.bf = call i32 @finish_command(ptr noundef nonnull %4) #18
  %.not35 = icmp eq i32 %i.bf, 0
  br i1 %.not35, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i52 = icmp eq i32 %i.bg, 0
  br i1 %.not4.i52, label %_.exit54, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.235, i32 noundef 5) #18
  br label %_.exit54

_.exit54:                                         ; preds = %bb.t, %bb.u
  %.0.i53 = phi ptr [ %i.bh, %bb.u ], [ @.str.235, %bb.t ]
  %i.bi = call i32 (ptr, ...) @error(ptr noundef %.0.i53) #18 ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bj = call i32 @fclose(ptr noundef %i.ab)     ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %_.exit54, %bb.v, %_.exit51, %_.exit47, %_.exit44, %_.exit
  %.0 = phi i32 [ -1, %_.exit ], [ -1, %_.exit51 ], [ -1, %_.exit54 ], [ 0, %bb.v ], [ -1, %_.exit47 ], [ -1, %_.exit44 ]
  %i.bk = call i32 @delete_tempfile(ptr noundef nonnull %i.b) #18 ; 0 uses
  call void @free(ptr noundef %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @systemd_timer_update_schedule(i32 noundef %0, i32 %1) #0 {
bb.a:
  %2 = alloca %struct.strbuf, align 8             ; 6 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @getenv(ptr noundef nonnull @.str.212) #18
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %get_random_minute.exit.i

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @git_rand(i32 noundef 0) #18
  %i.c = urem i32 %i.b, 60
  br label %get_random_minute.exit.i

get_random_minute.exit.i:                         ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.c, %bb.c ], [ 13, %bb.b ] ; 3 uses
  %i.d = tail call ptr @git_exec_path() #18       ; 2 uses
  %i.e = tail call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.240) #18 ; 3 uses
  %i.f = tail call ptr @xdg_config_home_for(ptr noundef nonnull @.str.245, ptr noundef %i.e) #18 ; 7 uses
  %i.g = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.h = tail call i32 @safe_create_leading_directories(ptr noundef %i.g, ptr noundef %i.f) #18
  %.not.i7.i = icmp eq i32 %i.h, 0
  br i1 %.not.i7.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %get_random_minute.exit.i
  %i.i = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not4.i.i.i, label %_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.241, i32 noundef 5) #18
  br label %_.exit.i.i

_.exit.i.i:                                       ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.j, %bb.e ], [ @.str.241, %bb.d ]
  %i.k = tail call i32 (ptr, ...) @error(ptr noundef %.0.i.i.i, ptr noundef %i.f) #18 ; 0 uses
  br label %.thread.critedge.i

bb.f:                                             ; preds = %get_random_minute.exit.i
  %i.l = tail call ptr @fopen_or_warn(ptr noundef %i.f, ptr noundef nonnull @.str.150) #18 ; 4 uses
  %.not16.i.i = icmp eq ptr %i.l, null
  br i1 %.not16.i.i, label %.thread.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  %i.m = load ptr, ptr @get_extra_config_parameters.result, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %.preheader.preheader.i.i.i, label %get_extra_config_parameters.exit.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.g
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.237) #18
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.238) #18
  %i.n = call ptr @strbuf_detach(ptr noundef nonnull %2, ptr noundef null) #18 ; 2 uses
  store ptr %i.n, ptr @get_extra_config_parameters.result, align 8, !tbaa !27
  br label %get_extra_config_parameters.exit.i.i

get_extra_config_parameters.exit.i.i:             ; preds = %.preheader.preheader.i.i.i, %bb.g
  %.05.i.i.i = phi ptr [ %i.n, %.preheader.preheader.i.i.i ], [ %i.m, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.o = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.242, ptr noundef %i.d, ptr noundef %i.d, ptr noundef %.05.i.i.i) #18
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.h, label %bb.j

bb.h:                                             ; preds = %get_extra_config_parameters.exit.i.i
  %i.q = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i17.i.i = icmp eq i32 %i.q, 0
  br i1 %.not4.i17.i.i, label %_.exit19.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.243, i32 noundef 5) #18
  br label %_.exit19.i.i

_.exit19.i.i:                                     ; preds = %bb.i, %bb.h
  %.0.i18.i.i = phi ptr [ %i.r, %bb.i ], [ @.str.243, %bb.h ]
  %i.s = call i32 (ptr, ...) @error(ptr noundef %.0.i18.i.i, ptr noundef %i.f) #18 ; 0 uses
  %i.t = call i32 @fclose(ptr noundef nonnull %i.l) ; 0 uses
  br label %.thread.critedge.i

bb.j:                                             ; preds = %get_extra_config_parameters.exit.i.i
  %i.u = call i32 @fclose(ptr noundef nonnull %i.l)
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.k, label %systemd_timer_write_service_template.exit.i

bb.k:                                             ; preds = %bb.j
  %i.w = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i20.i.i = icmp eq i32 %i.w, 0
  br i1 %.not4.i20.i.i, label %_.exit22.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.244, i32 noundef 5) #18
  br label %_.exit22.i.i
end_hunk_2
begin_hunk_3_@launchctl_schedule_plist:switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br i1 %.not2.i.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %launchctl_list_contains_plist.exit
  %i.ap = call i32 @rollback_lock_file(ptr noundef nonnull %6) #18 ; 0 uses
  br label %bb.t

bb.o:                                             ; preds = %launchctl_list_contains_plist.exit, %bb.k, %bb.j, %bb.i, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !124
  %i.au = call i64 @write_in_full(i32 noundef %i.x, ptr noundef %i.ar, i64 noundef %i.at) #18
  %i.av = icmp slt i64 %i.au, 0
  br i1 %i.av, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = call i32 @commit_lock_file(ptr noundef nonnull %6) #18
  %.not37 = icmp eq i32 %i.aw, 0
  br i1 %.not37, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ax = call fastcc ptr @_(ptr noundef nonnull @.str.265)
  call void (ptr, ...) @die_errno(ptr noundef %i.ax, ptr noundef nonnull %i.g) #19
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ay = call fastcc i32 @launchctl_boot_plist(i32 noundef 0, ptr noundef %i.g) ; 0 uses
  %i.az = call fastcc i32 @launchctl_boot_plist(i32 noundef 1, ptr noundef %i.g)
  %.not38 = icmp eq i32 %i.az, 0
  br i1 %.not38, label %._crit_edge48, label %bb.s

._crit_edge48:                                    ; preds = %bb.r
  %.pre49 = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = call fastcc ptr @_(ptr noundef nonnull @.str.266)
  call void (ptr, ...) @die(ptr noundef %i.ba, ptr noundef nonnull %i.g) #19
  unreachable

bb.t:                                             ; preds = %._crit_edge48, %bb.n
  %i.bb = phi ptr [ %.pre49, %._crit_edge48 ], [ %i.ai, %bb.n ]
  call void @free(ptr noundef nonnull %i.g) #18
  call void @free(ptr noundef %i.d) #18
  call void @free(ptr noundef %i.bb) #18
  call void @strbuf_release(ptr noundef nonnull %7) #18
  call void @strbuf_release(ptr noundef nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

declare i32 @strbuf_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die_errno(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @launchctl_boot_plist(i32 noundef range(i32 0, 2) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.child_process, align 8      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  %i.b = tail call i32 @getuid() #18
  %i.c = tail call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.276, i32 noundef %i.b) #18 ; 2 uses
  %i.d = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.207, ptr noundef null, ptr noundef nonnull %i.a) ; 0 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  call void @strvec_split(ptr noundef nonnull %2, ptr noundef %i.e) #18
  %.not = icmp eq i32 %0, 0
  %i.f = select i1 %.not, ptr @.str.275, ptr @.str.274
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull %i.f, ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef null) #18
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = or i8 %i.h, 6
  store i8 %i.i, ptr %i.g, align 8
  %i.j = call i32 @start_command(ptr noundef nonnull %2) #18
  %.not4 = icmp eq i32 %i.j, 0
  br i1 %.not4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call fastcc ptr @_(ptr noundef nonnull @.str.273)
  call void (ptr, ...) @die(ptr noundef %i.k) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = call i32 @finish_command(ptr noundef nonnull %2) #18
  call void @free(ptr noundef %i.e) #18
  call void @free(ptr noundef %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.l
}

declare ptr @interpolate_path(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc i32 @launchctl_remove_plist(i32 noundef range(i32 1, 4) %0) unnamed_addr #0 {
switch.lookup:
  %1 = alloca %struct.strbuf, align 8             ; 6 uses
  %2 = alloca %struct.strbuf, align 8             ; 5 uses
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr [8 x i8], ptr @switch.table.schtasks_schedule_task, i64 %i.a
  %switch.gep = getelementptr i8, ptr %i.b, i64 -8
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.267, ptr noundef nonnull %switch.load) #18
  %i.c = call ptr @strbuf_detach(ptr noundef nonnull %2, ptr noundef null) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %1, ptr noundef nonnull @.str.268, ptr noundef %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.f = call ptr @interpolate_path(ptr noundef %i.e, i32 noundef 1) #18 ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.a, label %launchctl_service_filename.exit

bb.a:                                             ; preds = %switch.lookup
  %i.g = call fastcc ptr @_(ptr noundef nonnull @.str.269)
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !54
  call void (ptr, ...) @die(ptr noundef %i.g, ptr noundef %i.h) #19
  unreachable

launchctl_service_filename.exit:                  ; preds = %switch.lookup
  call void @strbuf_release(ptr noundef nonnull %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.i = call fastcc i32 @launchctl_boot_plist(i32 noundef 0, ptr noundef %i.f)
  %i.j = call i32 @unlink(ptr noundef nonnull %i.f) #18 ; 0 uses
  call void @free(ptr noundef nonnull %i.f) #18
  call void @free(ptr noundef %i.c) #18
  ret i32 %i.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @schtasks_schedule_task(ptr noundef %0, i32 noundef range(i32 1, 4) %1) unnamed_addr #0 {
switch.lookup:
  %2 = alloca %struct.strbuf, align 8             ; 6 uses
  %3 = alloca %struct.strbuf, align 8             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.child_process, align 8      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.strbuf, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(136) @__const.schtasks_remove_task.child, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr [8 x i8], ptr @switch.table.schtasks_schedule_task, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -8
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.289, ptr noundef nonnull %switch.load) #18
  %i.e = call ptr @strbuf_detach(ptr noundef nonnull %3, ptr noundef null) #18 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  %i.f = call ptr @getenv(ptr noundef nonnull @.str.212) #18
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.a, label %get_random_minute.exit

bb.a:                                             ; preds = %switch.lookup
  %i.g = call i32 @git_rand(i32 noundef 0) #18
  %i.h = urem i32 %i.g, 60
  br label %get_random_minute.exit

get_random_minute.exit:                           ; preds = %switch.lookup, %bb.a
  %.0.i15 = phi i32 [ %i.h, %bb.a ], [ 13, %switch.lookup ]
  %i.i = call fastcc i32 @get_schedule_cmd(ptr noundef nonnull @.str.208, ptr noundef null, ptr noundef nonnull %i.a) ; 0 uses
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !48
  %i.k = call ptr @repo_get_common_dir(ptr noundef %i.j) #18
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %5, ptr noundef nonnull @.str.277, ptr noundef %i.k, ptr noundef nonnull %switch.load) #18
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !54
  %i.n = call ptr @xmks_tempfile_m(ptr noundef %i.m, i32 noundef 384) #18 ; 5 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !121
  call void @strbuf_release(ptr noundef nonnull %5) #18
  %i.o = call ptr @fdopen_tempfile(ptr noundef %i.n, ptr noundef nonnull @.str.150) #18
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.b, label %switch.lookup19

bb.b:                                             ; preds = %get_random_minute.exit
  %i.p = call fastcc ptr @_(ptr noundef nonnull @.str.278)
  call void (ptr, ...) @die(ptr noundef %i.p) #19
  unreachable

switch.lookup19:                                  ; preds = %get_random_minute.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 3 uses
  %i.r = load volatile ptr, ptr %i.q, align 8, !tbaa !231
  %fwrite = call i64 @fwrite(ptr nonnull @.str.279, i64 135, i64 1, ptr %i.r) ; 0 uses
  %i.s = load volatile ptr, ptr %i.q, align 8, !tbaa !231
  %i.t = zext nneg i32 %1 to i64
  %i.u = getelementptr [8 x i8], ptr @switch.table.schtasks_schedule_task.9, i64 %i.t
  %switch.gep20 = getelementptr i8, ptr %i.u, i64 -8
  %switch.load21 = load ptr, ptr %switch.gep20, align 8
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull %switch.load21, i32 noundef %.0.i15) #18 ; 0 uses
  %i.w = load volatile ptr, ptr %i.q, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.get_maintpath.sb, i64 24, i1 false)
  %i.x = load ptr, ptr @get_extra_config_parameters.result, align 8, !tbaa !27 ; 2 uses
  %.not.i16 = icmp eq ptr %i.x, null
  br i1 %.not.i16, label %.preheader.preheader.i, label %get_extra_config_parameters.exit

.preheader.preheader.i:                           ; preds = %switch.lookup19
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.237) #18
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.238) #18
  %i.y = call ptr @strbuf_detach(ptr noundef nonnull %2, ptr noundef null) #18 ; 2 uses
  store ptr %i.y, ptr @get_extra_config_parameters.result, align 8, !tbaa !27
  br label %get_extra_config_parameters.exit

get_extra_config_parameters.exit:                 ; preds = %switch.lookup19, %.preheader.preheader.i
  %.05.i = phi ptr [ %i.y, %.preheader.preheader.i ], [ %i.x, %switch.lookup19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.z = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.283, ptr noundef %0, ptr noundef %0, ptr noundef %.05.i, ptr noundef nonnull %switch.load) #18 ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  call void @strvec_split(ptr noundef nonnull %4, ptr noundef %i.aa) #18
  %i.ab = call ptr @get_tempfile_path(ptr noundef nonnull %i.n) #18
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %4, ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.285, ptr noundef %i.e, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.287, ptr noundef %i.ab, ptr noundef null) #18
  %i.ac = call i32 @close_tempfile_gently(ptr noundef nonnull %i.n) #18 ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8
  %i.af = or i8 %i.ae, 6
  store i8 %i.af, ptr %i.ad, align 8
  %i.ag = call i32 @start_command(ptr noundef nonnull %4) #18
  %.not14 = icmp eq i32 %i.ag, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %get_extra_config_parameters.exit
  %i.ah = call fastcc ptr @_(ptr noundef nonnull @.str.288)
  call void (ptr, ...) @die(ptr noundef %i.ah) #19
  unreachable

bb.d:                                             ; preds = %get_extra_config_parameters.exit
  %i.ai = call i32 @finish_command(ptr noundef nonnull %4) #18
  %i.aj = call i32 @delete_tempfile(ptr noundef nonnull %i.b) #18 ; 0 uses
  call void @free(ptr noundef %i.e) #18
  call void @free(ptr noundef %i.aa) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ai
}

declare ptr @repo_get_common_dir(ptr noundef) local_unnamed_addr #3

declare i32 @close_tempfile_gently(ptr noundef) local_unnamed_addr #3

declare ptr @xmks_tempfile_m(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @absolute_path(ptr noundef) local_unnamed_addr #3

declare void @repo_config_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @repo_config_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @repo_config_get_string_multi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @git_global_config() local_unnamed_addr #3

declare i32 @repo_config_set_multivar_in_file_gently(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @strbuf_realpath(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @git_configset_init(ptr noundef) local_unnamed_addr #3

declare i32 @git_configset_add_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @git_configset_get_string_multi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @git_configset_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null, null}
!1 = distinct !{!1, !91}
!2 = distinct !{!2, !91}
!3 = !{i32 7, !"Dwarf Version", i32 5}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!"long", !11, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"gc_config", !12, i64 0, !12, i64 4, !12, i64 8, !16, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !16, i64 96, !16, i64 104, !16, i64 112}
!20 = !{!19, !16, i64 16}
!21 = !{!19, !12, i64 40}
!22 = !{!19, !18, i64 48}
!23 = !{!19, !18, i64 56}
!24 = !{!19, !18, i64 64}
!25 = !{!19, !16, i64 104}
!26 = !{!19, !16, i64 112}
!27 = !{!18, !18, i64 0}
!28 = !{!"option", !12, i64 0, !12, i64 4, !18, i64 8, !17, i64 16, !16, i64 24, !18, i64 32, !18, i64 40, !12, i64 48, !17, i64 56, !16, i64 64, !17, i64 72, !16, i64 80, !17, i64 88}
!29 = !{!28, !12, i64 0}
!30 = !{!28, !12, i64 4}
!31 = !{!28, !18, i64 8}
!32 = !{!28, !17, i64 16}
!33 = !{!28, !16, i64 24}
!34 = !{!28, !18, i64 32}
!35 = !{!28, !18, i64 40}
!36 = !{!28, !12, i64 48}
!37 = !{!28, !17, i64 56}
!38 = !{!28, !16, i64 64}
!39 = !{!19, !12, i64 0}
!40 = !{!"maintenance_run_opts", !17, i64 0, !16, i64 8, !16, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36}
!41 = !{!40, !12, i64 32}
!42 = !{!40, !12, i64 24}
!43 = !{!40, !12, i64 28}
!44 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!19, !16, i64 96}
!47 = !{!"p1 _ZTS10repository", !17, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"timespec", !16, i64 0, !16, i64 8}
!50 = !{!"stat", !16, i64 0, !16, i64 8, !16, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !49, i64 72, !49, i64 88, !49, i64 104, !11, i64 120}
!51 = !{!50, !16, i64 88}
!52 = !{!16, !16, i64 0}
!53 = !{!"strbuf", !16, i64 0, !16, i64 8, !18, i64 16}
!54 = !{!53, !18, i64 16}
!55 = !{!"p1 _ZTS8tempfile", !17, i64 0}
!56 = !{!"lock_file", !55, i64 0, !55, i64 8}
!57 = !{!56, !55, i64 0}
!58 = !{!"p1 _ZTS15object_database", !17, i64 0}
!59 = !{!"p1 _ZTS18parsed_object_pool", !17, i64 0}
!60 = !{!"p1 _ZTS9ref_store", !17, i64 0}
!61 = !{!"_Bool", !11, i64 0}
!62 = !{!"any p2 pointer", !17, i64 0}
!63 = !{!"p2 _ZTS13hashmap_entry", !62, i64 0}
!64 = !{!"hashmap", !63, i64 0, !17, i64 8, !17, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40}
!65 = !{!"p1 _ZTS8mem_pool", !17, i64 0}
!66 = !{!"strmap", !64, i64 0, !65, i64 48, !12, i64 56}
!67 = !{!"repo_path_cache", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48}
!68 = !{!"p1 _ZTS18fsmonitor_settings", !17, i64 0}
!69 = !{!"repo_settings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !68, i64 56, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !12, i64 128, !18, i64 136}
!70 = !{!"p1 _ZTS10config_set", !17, i64 0}
!71 = !{!"p1 _ZTS15submodule_cache", !17, i64 0}
!72 = !{!"p1 _ZTS11index_state", !17, i64 0}
!73 = !{!"p1 _ZTS12remote_state", !17, i64 0}
!74 = !{!"p1 _ZTS13git_hash_algo", !17, i64 0}
!75 = !{!"repo_config_values", !18, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!76 = !{!"p1 _ZTS6strmap", !17, i64 0}
!77 = !{!"p1 _ZTS16string_list_item", !17, i64 0}
!78 = !{!"string_list", !77, i64 0, !16, i64 8, !16, i64 16, !12, i64 24, !17, i64 32}
!79 = !{!"p1 _ZTS22promisor_remote_config", !17, i64 0}
!80 = !{!"repository", !18, i64 0, !18, i64 8, !58, i64 16, !59, i64 24, !60, i64 32, !61, i64 40, !66, i64 48, !66, i64 112, !67, i64 176, !18, i64 232, !18, i64 240, !18, i64 248, !61, i64 256, !61, i64 257, !18, i64 264, !69, i64 272, !70, i64 416, !71, i64 424, !72, i64 432, !73, i64 440, !74, i64 448, !74, i64 456, !75, i64 464, !12, i64 512, !18, i64 520, !12, i64 528, !12, i64 532, !76, i64 536, !12, i64 544, !66, i64 552, !78, i64 616, !18, i64 656, !79, i64 664, !12, i64 672, !12, i64 676, !12, i64 680, !12, i64 684, !12, i64 688, !61, i64 689, !61, i64 690}
!81 = !{!80, !58, i64 16}
!82 = !{!"p2 omnipotent char", !62, i64 0}
!83 = !{!"strvec", !82, i64 0, !16, i64 8, !16, i64 16}
!84 = !{!"child_process", !83, i64 0, !83, i64 24, !12, i64 48, !12, i64 52, !16, i64 56, !18, i64 64, !18, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !18, i64 96, !12, i64 104, !12, i64 104, !12, i64 104, !12, i64 104, !12, i64 104, !12, i64 104, !58, i64 112, !12, i64 120, !12, i64 120, !12, i64 120, !12, i64 120, !17, i64 128}
!85 = !{!84, !58, i64 112}
!86 = !{!17, !17, i64 0}
!87 = !{!78, !16, i64 8}
!88 = !{!78, !77, i64 0}
!89 = !{!"string_list_item", !18, i64 0, !17, i64 8}
!90 = !{!89, !18, i64 0}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"p1 _ZTS15odb_transaction", !17, i64 0}
!93 = !{!"p1 _ZTS10odb_source", !17, i64 0}
!94 = !{!"p2 _ZTS10odb_source", !62, i64 0}
!95 = !{!"p1 _ZTS15kh_odb_path_map", !17, i64 0}
!96 = !{!"oidmap", !64, i64 0}
!97 = !{!"p1 _ZTS12commit_graph", !17, i64 0}
!98 = !{!"object_database", !47, i64 0, !92, i64 8, !93, i64 16, !94, i64 24, !95, i64 32, !12, i64 40, !18, i64 48, !96, i64 56, !12, i64 104, !11, i64 112, !97, i64 152, !12, i64 160, !93, i64 168, !16, i64 176, !12, i64 184, !12, i64 188, !78, i64 192}
!99 = !{!98, !93, i64 16}
!100 = !{!19, !12, i64 32}
!101 = !{!"odb_source", !93, i64 0, !58, i64 8, !12, i64 16, !61, i64 20, !12, i64 24, !18, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !17, i64 112, !17, i64 120, !17, i64 128, !17, i64 136, !17, i64 144}
!102 = !{!101, !12, i64 16}
!103 = !{!"p1 _ZTS16odb_source_loose", !17, i64 0}
!104 = !{!"p1 _ZTS14packfile_store", !17, i64 0}
!105 = !{!"odb_source_files", !101, i64 0, !103, i64 152, !104, i64 160}
!106 = !{!105, !103, i64 152}
!107 = !{!101, !17, i64 88}
!108 = !{!40, !17, i64 0}
!109 = !{!19, !18, i64 72}
!110 = !{!19, !18, i64 80}
!111 = !{!19, !12, i64 4}
!112 = !{!11, !11, i64 0}
!113 = !{!93, !93, i64 0}
!114 = !{!105, !104, i64 160}
!115 = !{!"p1 _ZTS19packfile_list_entry", !17, i64 0}
!116 = !{!"p1 _ZTS10packed_git", !17, i64 0}
!117 = !{!"packfile_list_entry", !115, i64 0, !116, i64 8}
!118 = !{!117, !116, i64 8}
!119 = !{!117, !115, i64 0}
!120 = !{!101, !93, i64 0}
!121 = !{!55, !55, i64 0}
!122 = !{!"timeval", !16, i64 0, !16, i64 8}
!123 = !{!122, !16, i64 0}
!124 = !{!53, !16, i64 8}
!125 = !{!50, !16, i64 48}
!126 = !{!40, !12, i64 36}
!127 = !{!101, !18, i64 32}
!128 = !{!40, !16, i64 8}
!129 = !{!"maintenance_start_opts", !12, i64 0}
!130 = !{!129, !12, i64 0}
!131 = !{!"", !18, i64 0, !17, i64 8, !17, i64 16}
!132 = !{!80, !18, i64 248}
!133 = !{!80, !18, i64 0}
!134 = !{!"p1 _ZTS11string_list", !17, i64 0}
!135 = !{!134, !134, i64 0}
!136 = !{!"maintenance_task", !18, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!137 = !{!136, !17, i64 24}
!138 = !{!89, !17, i64 8}
!139 = !{!136, !18, i64 0}
!140 = !{!84, !12, i64 80}
!141 = !{!84, !12, i64 84}
!142 = !{!"write_loose_object_data", !44, i64 0, !12, i64 8, !12, i64 12}
!143 = !{!142, !44, i64 0}
!144 = !{!142, !12, i64 8}
!145 = !{!142, !12, i64 12}
!146 = !{!80, !12, i64 360}
!147 = !{!"existing_packs", !47, i64 0, !93, i64 8, !78, i64 16, !78, i64 56, !78, i64 96, !78, i64 136}
!148 = !{!147, !47, i64 0}
!149 = !{!"p2 _ZTS10packed_git", !62, i64 0}
!150 = !{!"pack_geometry", !149, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !149, i64 24, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !61, i64 48, !61, i64 49, !12, i64 52}
!151 = !{!150, !12, i64 16}
!152 = !{!"cg_auto_data", !12, i64 0, !12, i64 4}
!153 = !{!152, !12, i64 0}
!154 = !{!152, !12, i64 4}
!155 = !{!"p1 _ZTS26reflog_expire_entry_option", !17, i64 0}
!156 = !{!"p2 _ZTS26reflog_expire_entry_option", !62, i64 0}
!157 = !{!"reflog_expire_options", !155, i64 0, !156, i64 8, !12, i64 16, !12, i64 20, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !12, i64 56}
!158 = !{!"p1 _ZTS11commit_list", !17, i64 0}
!159 = !{!"p1 _ZTS6commit", !17, i64 0}
!160 = !{!"expire_reflog_policy_cb", !12, i64 0, !158, i64 8, !16, i64 16, !157, i64 24, !159, i64 88, !158, i64 96, !12, i64 104}
!161 = !{!"count_reflog_entries_data", !160, i64 0, !16, i64 112, !16, i64 120}
!162 = !{!161, !16, i64 120}
!163 = !{!161, !16, i64 112}
!164 = distinct !{!164, !91}
!165 = !{!19, !12, i64 24}
!166 = !{!19, !12, i64 28}
!167 = !{!80, !12, i64 680}
!168 = !{!83, !82, i64 0}
!169 = !{!84, !82, i64 0}
!170 = !{!80, !12, i64 288}
!171 = distinct !{!171, !91}
!172 = !{!19, !12, i64 36}
!173 = !{!"short", !11, i64 0}
!174 = !{!"sysinfo", !16, i64 0, !11, i64 8, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !173, i64 80, !173, i64 82, !16, i64 88, !16, i64 96, !12, i64 104, !11, i64 108}
!175 = !{!174, !16, i64 32}
!176 = !{!174, !12, i64 104}
!177 = distinct !{!177, !91}
!178 = !{!19, !12, i64 8}
!179 = !{!19, !18, i64 88}
!180 = !{!28, !17, i64 88}
!181 = distinct !{!181, !91}
!182 = distinct !{!182, !91}
!183 = !{!131, !18, i64 0}
!184 = distinct !{!184, !91}
!185 = distinct !{!185, !91}
!186 = distinct !{!186, i1 true, !"parse_maintenance_strategy"}
!187 = distinct !{!187, !186, !"parse_maintenance_strategy: argument 0"}
!188 = distinct !{!188, !91}
!189 = !{!40, !16, i64 16}
!190 = !{i64 0, i64 80, !112}
!191 = !{!187}
!192 = !{!"", !12, i64 0, !12, i64 4}
!193 = !{!192, !12, i64 0}
!194 = !{!192, !12, i64 4}
!195 = distinct !{!195, !91}
!196 = distinct !{!196, !91}
!197 = !{!150, !12, i64 8}
!198 = !{!150, !12, i64 52}
!199 = !{!80, !12, i64 276}
!200 = !{!"p1 _ZTS14ref_exclusions", !17, i64 0}
!201 = !{!"refs_optimize_opts", !12, i64 0, !200, i64 8, !134, i64 16}
!202 = !{!201, !12, i64 0}
!203 = !{!201, !200, i64 8}
!204 = !{!201, !134, i64 16}
!205 = !{!61, !61, i64 0}
!206 = !{i8 0, i8 2}
!207 = !{}
!208 = !{!157, !16, i64 24}
!209 = !{!157, !16, i64 40}
!210 = distinct !{!210, !91}
!211 = !{!"p1 _ZTS13hashmap_entry", !17, i64 0}
!212 = !{!"hashmap_entry", !211, i64 0, !12, i64 8}
!213 = !{!"p1 _ZTS12refspec_item", !17, i64 0}
!214 = !{!"refspec", !213, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!215 = !{!"remote", !212, i64 0, !18, i64 16, !12, i64 24, !12, i64 28, !18, i64 32, !83, i64 40, !83, i64 64, !214, i64 88, !214, i64 112, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !78, i64 192, !78, i64 232, !78, i64 272, !12, i64 312, !18, i64 320}
!216 = !{!215, !12, i64 140}
!217 = !{!215, !18, i64 16}
!218 = distinct !{!218, !91}
!219 = distinct !{!219, !91}
!220 = !{!"p1 _ZTS9object_id", !17, i64 0}
!221 = !{!"reference", !18, i64 0, !18, i64 8, !220, i64 16, !220, i64 24, !12, i64 32}
!222 = !{!221, !220, i64 16}
!223 = !{!158, !158, i64 0}
!224 = !{!"commit_list", !159, i64 0, !158, i64 8}
!225 = !{!224, !159, i64 0}
!226 = !{!131, !17, i64 16}
!227 = distinct !{!227, !91}
!228 = !{!"p1 _ZTS18volatile_list_head", !17, i64 0}
!229 = !{!"volatile_list_head", !228, i64 0, !228, i64 8}
!230 = !{!"tempfile", !229, i64 0, !12, i64 16, !44, i64 24, !12, i64 32, !53, i64 40, !18, i64 64}
!231 = !{!230, !44, i64 24}
end_hunk_3
