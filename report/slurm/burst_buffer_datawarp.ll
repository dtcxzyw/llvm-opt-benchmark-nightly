Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/burst_buffer_datawarp?download=true
inline.NumInlined: 92
inline.NumDeleted: 38
begin_hunk_0_@_start_stage_out:bb.a
  %i.bj = load ptr, ptr %i.d, align 8
  %i.bk = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.215, i32 noundef %i.bh, i32 noundef %i.bi, ptr noundef %i.bj) #14 ; 0 uses
  %.not75 = icmp eq ptr %i.bc, null
  br i1 %.not75, label %.split, label %.thread96

.thread96:                                        ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 1048
  store i32 75, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bc, i64 1040 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.bm) #14
  %i.bn = load ptr, ptr %i.d, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.bm, ptr noundef nonnull @.str.216, ptr noundef nonnull @plugin_type, ptr noundef %i.bn) #14
  %i.bo = load ptr, ptr %i.d, align 8
  call void @bb_update_system_comment(ptr noundef nonnull %i.bc, ptr noundef nonnull @.str.210, ptr noundef %i.bo, i1 noundef zeroext true) #14
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.not76 = icmp eq ptr %i.bc, null
  br i1 %.not76, label %.critedge, label %bb.l

.split:                                           ; preds = %bb.j
  %i.bp = load ptr, ptr %i.a, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.195, i32 noundef %i.br) #14 ; 0 uses
  br label %.sink.split

bb.l:                                             ; preds = %.thread96, %bb.k
  %i.bt = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not77 = icmp eq i32 %i.bt, 0
  br i1 %.not77, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = tail call ptr @__errno_location() #15
  store i32 %i.bt, ptr %i.bu, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.211) #16
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bv = call fastcc ptr @_get_bb_job(ptr noundef nonnull %i.bc) ; 2 uses
  %.not78 = icmp eq ptr %i.bv, null
  br i1 %.not78, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @bb_set_job_bb_state(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bv, i32 noundef 49) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.bw = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not79 = icmp eq i32 %i.bw, 0
  br i1 %.not79, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = tail call ptr @__errno_location() #15
  store i32 %i.bw, ptr %i.bx, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.211) #16
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._destroy_persistent.job_write_lock) #14
  br i1 %or.cond93, label %bb.s, label %bb.ae

.critedge:                                        ; preds = %bb.k
  %i.by = load ptr, ptr %i.a, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.195, i32 noundef %i.ca) #14 ; 0 uses
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._destroy_persistent.job_write_lock) #14
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %bb.r
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 124), align 4
  %i.cd = mul i32 %i.cc, 1000
  %i.ce = call { i64, i64 } @timespec_now() #14   ; 2 uses
  %i.cf = extractvalue { i64, i64 } %i.ce, 0
  %i.cg = extractvalue { i64, i64 } %i.ce, 1
  store i64 %i.cf, ptr %1, align 8
  store i64 %i.cg, ptr %.sroa.414.0..sroa_idx, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.d) #14
  store i32 %i.cd, ptr %i.u, align 8
  %i.ch = load ptr, ptr %i.c, align 8
  store ptr %i.ch, ptr %i.v, align 8
  store ptr @.str.217, ptr %i.w, align 8
  %i.ci = call ptr @run_command(ptr noundef nonnull %3) #14
  store ptr %i.ci, ptr %i.d, align 8
  %i.cj = call { i64, i64 } @timespec_now() #14   ; 2 uses
  %i.ck = extractvalue { i64, i64 } %i.cj, 0
  %i.cl = extractvalue { i64, i64 } %i.cj, 1
  store i64 %i.ck, ptr %2, align 8
  store i64 %i.cl, ptr %.sroa.412.0..sroa_idx, align 8
  %i.cm = call i64 @timer_get_duration(ptr noundef nonnull %1, ptr noundef nonnull %2) #14
  %i.cn = icmp sgt i64 %i.cm, 1000000
  br i1 %i.cn, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.cp = and i64 %i.co, 1099511627776
  %.not80 = icmp eq i64 %i.cp, 0
  br i1 %.not80, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cq = call i32 @get_log_level() #14
  %i.cr = icmp sgt i32 %i.cq, 2
  br i1 %i.cr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %i.a, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i32, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.cv = load i64, ptr %1, align 8
  %i.cw = load i64, ptr %.sroa.414.0..sroa_idx, align 8
  %i.cx = load i64, ptr %2, align 8
  %i.cy = load i64, ptr %.sroa.412.0..sroa_idx, align 8
  call void @timer_duration_str(ptr dead_on_unwind nonnull writable sret(%struct.timer_str_t) align 1 %5, i64 %i.cv, i64 %i.cw, i64 %i.cx, i64 %i.cy) #14
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.218, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.211, i32 noundef %i.cu, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.cz = load i32, ptr %i.e, align 4
  %i.da = call zeroext i1 @track_script_killed(i64 noundef %i.f, i32 noundef %i.cz, i1 noundef zeroext true) #14
  br i1 %i.da, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.db = call i32 @get_log_level() #14
  %i.dc = icmp sgt i32 %i.db, 2
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dd = load ptr, ptr %i.a, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load i32, ptr %i.de, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.219, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.211, i32 noundef %i.df) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @slurm_xfree_array(ptr noundef nonnull %i.b) #14
  call void @slurm_xfree_array(ptr noundef nonnull %i.c) #14
  call void @slurm_xfree(ptr noundef nonnull %i.d) #14
  %i.dg = load ptr, ptr %i.a, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  call void @slurm_xfree(ptr noundef nonnull %i.dh) #14
  br label %bb.bi

bb.aa:                                            ; preds = %bb.w
  call void @track_script_reset_cpid(i64 noundef %i.f, i32 noundef 0) #14
  %i.di = load ptr, ptr %i.c, align 8
  %i.dj = load ptr, ptr %i.d, align 8
  call fastcc void @_log_script_argv(ptr noundef %i.di, ptr noundef %i.dj)
  %i.dk = load i32, ptr %i.e, align 4
  %i.dl = and i32 %i.dk, 65407
  %or.cond94 = icmp eq i32 %i.dl, 0
  br i1 %or.cond94, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load ptr, ptr %i.d, align 8
  %i.dn = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.dm, ptr noundef nonnull dereferenceable(1) @.str.166) #17
  %.not82 = icmp eq ptr %i.dn, null
  br i1 %.not82, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @trigger_burst_buffer() #14
  %i.do = load ptr, ptr %i.a, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = load i32, ptr %i.e, align 4
  %i.ds = load ptr, ptr %i.d, align 8
  %i.dt = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.220, i32 noundef %i.dq, i32 noundef %i.dr, ptr noundef %i.ds) #14 ; 0 uses
  call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._destroy_persistent.job_write_lock) #14
  %i.du = load ptr, ptr %i.a, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = call ptr @find_job_record(i32 noundef %i.dw) #14 ; 4 uses
  %.not83 = icmp eq ptr %i.dx, null
  br i1 %.not83, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1048
  store i32 75, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 1040 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.dz) #14
  %i.ea = load ptr, ptr %i.d, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.dz, ptr noundef nonnull @.str.221, ptr noundef nonnull @plugin_type, ptr noundef %i.ea) #14
  %i.eb = load ptr, ptr %i.d, align 8
  call void @bb_update_system_comment(ptr noundef nonnull %i.dx, ptr noundef nonnull @.str.209, ptr noundef %i.eb, i1 noundef zeroext true) #14
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %bb.ad, %.split
  %.061.ph = phi ptr [ @.str.212, %.split ], [ @.str.217, %bb.ad ], [ @.str.217, %bb.ac ]
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._destroy_persistent.job_write_lock) #14
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.aa, %bb.ab, %bb.r
  %.not85 = phi i1 [ true, %bb.ab ], [ false, %bb.r ], [ true, %bb.aa ], [ false, %.sink.split ] ; 4 uses
  %.061 = phi ptr [ @.str.217, %bb.ab ], [ @.str.212, %bb.r ], [ @.str.217, %bb.aa ], [ %.061.ph, %.sink.split ]
  call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._destroy_persistent.job_write_lock) #14
  %i.ec = load ptr, ptr %i.a, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load i32, ptr %i.ed, align 8
  %i.ef = call ptr @find_job_record(i32 noundef %i.ee) #14 ; 12 uses
  %.not84 = icmp eq ptr %i.ef, null
  br i1 %.not84, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eg = load ptr, ptr %i.a, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.195, i32 noundef %i.ei) #14 ; 0 uses
  br label %bb.bh

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not85, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 1048
  store i32 75, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 1040 ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.el) #14
  %i.em = load ptr, ptr %i.d, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.el, ptr noundef nonnull @.str.156, ptr noundef nonnull @plugin_type, ptr noundef nonnull %.061, ptr noundef %i.em) #14
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @slurm_job_state_unset_flag(ptr noundef nonnull %i.ef, i32 noundef 8388608, ptr noundef nonnull @.str.211) #14
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.en) #14
  %i.eo = call i64 @time(ptr noundef null) #14
  store i64 %i.eo, ptr @last_job_update, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ep = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not86 = icmp eq i32 %i.ep, 0
  br i1 %.not86, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eq = tail call ptr @__errno_location() #15
  store i32 %i.ep, ptr %i.eq, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.211) #16
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.er = call fastcc ptr @_get_bb_job(ptr noundef nonnull %i.ef) ; 3 uses
  %i.es = icmp ne ptr %i.er, null                 ; 2 uses
  %or.cond = select i1 %.not85, i1 %i.es, i1 false
  br i1 %or.cond, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %6 = call ptr @bb_find_alloc_rec(ptr noundef nonnull @bb_state, ptr noundef nonnull %i.ef) #14 ; 3 uses
  %.not87 = icmp eq ptr %6, null
  br i1 %.not87, label %bb.ba, label %bb.ao

bb.an:                                            ; preds = %bb.al
  call void @bb_set_job_bb_state(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.er, i32 noundef 65) #14
  %i.et = call ptr @bb_find_alloc_rec(ptr noundef nonnull @bb_state, ptr noundef nonnull %i.ef) #14 ; 2 uses
  %.not87.a = icmp eq ptr %i.et, null
  br i1 %.not87.a, label %bb.bb, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  br i1 %.not85, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %7 = phi ptr [ %6, %bb.ao ], [ %i.et, %bb.an ]  ; 2 uses
  %i.eu = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ev = and i64 %i.eu, 1099511627776
  %.not91 = icmp eq i64 %i.ev, 0
  br i1 %.not91, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ew = call i32 @get_log_level() #14
  %i.ex = icmp sgt i32 %i.ew, 3
  br i1 %i.ex, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.222, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.211, ptr noundef nonnull %i.ef) #14
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.ap
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 144
  store i16 65, ptr %i.ey, align 8
  %i.ez = call i64 @time(ptr noundef null) #14
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 152
  store i64 %i.ez, ptr %i.fa, align 8
  br label %bb.az

bb.at:                                            ; preds = %bb.ao
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 64), align 8
  %i.fc = and i32 %i.fb, 16
  %.not89 = icmp eq i32 %i.fc, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  br i1 %.not89, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i16 65, ptr %i.fd, align 8
  %i.fe = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load i32, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 40
  %i.fi = load i32, ptr %i.fh, align 8
  call void @_queue_teardown(i32 noundef %i.fg, i32 noundef %i.fi, i1 noundef zeroext false)
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  store i16 18, ptr %i.fd, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.fj = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.fk = and i64 %i.fj, 1099511627776
  %.not90 = icmp eq i64 %i.fk, 0
  br i1 %.not90, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fl = call i32 @get_log_level() #14
  %i.fm = icmp sgt i32 %i.fl, 3
  br i1 %i.fm, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.223, ptr noundef nonnull @plugin_type, ptr noundef nonnull @.str.211, ptr noundef nonnull %i.ef) #14
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.ay, %bb.ax, %bb.as
  %i.fn = call i64 @time(ptr noundef null) #14
  store i64 %i.fn, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 264), align 8
  br label %bb.bd

bb.ba:                                            ; preds = %bb.am
  br i1 %i.es, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.an, %bb.ba
  %i.fo = getelementptr inbounds nuw i8, ptr %i.er, i64 128
  %i.fp = load i64, ptr %i.fo, align 8
  %.not88 = icmp eq i64 %i.fp, 0
  br i1 %.not88, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.224, ptr noundef nonnull %i.ef) #14 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bb, %bb.bc, %bb.az
  br i1 %.not85, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fr = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load i32, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  %i.fv = load i32, ptr %i.fu, align 8
  call void @_queue_teardown(i32 noundef %i.ft, i32 noundef %i.fv, i1 noundef zeroext false)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.fw = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not92 = icmp eq i32 %i.fw, 0
  br i1 %.not92, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fx = tail call ptr @__errno_location() #15
  store i32 %i.fw, ptr %i.fx, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.211) #16
  unreachable

bb.bh:                                            ; preds = %bb.bf, %bb.af
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._destroy_persistent.job_write_lock) #14
  call void @slurm_xfree(ptr noundef nonnull %i.d) #14
  call void @slurm_xfree_array(ptr noundef nonnull %i.b) #14
  call void @slurm_xfree_array(ptr noundef nonnull %i.c) #14
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.z, %bb.h
  call void @slurm_xfree(ptr noundef nonnull %i.a) #14
  call void @track_script_remove(i64 noundef %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_create_persistent(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %1 = alloca %struct.run_command_args_t, align 8 ; 11 uses
  %2 = alloca %struct.timer_str_t, align 1        ; 4 uses
  %3 = alloca %struct.assoc_mgr_lock_t, align 4   ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  store i32 0, ptr %i.f, align 4
  %i.h = tail call i64 @pthread_self() #15        ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 9 uses
  %i.j = load i32, ptr %i.i, align 4
  tail call void @track_script_rec_add(i32 noundef %i.j, i32 noundef 0, i64 noundef %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 72), align 8
  store ptr %i.n, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr @.str.129, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.f, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.h, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = call ptr @slurm_xcalloc(i64 noundef 20, i64 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.8, i32 noundef 4222, ptr noundef nonnull @.str.230) #14 ; 12 uses
  store ptr %i.s, ptr %i.d, align 8
  %i.t = call ptr @xstrdup(ptr noundef nonnull @.str.24) #14
  store ptr %i.t, ptr %i.s, align 8
  %i.u = call ptr @xstrdup(ptr noundef nonnull @.str.25) #14
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.u, ptr %i.v, align 8
  %i.w = call ptr @xstrdup(ptr noundef nonnull @.str.129) #14
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.w, ptr %i.x, align 8
  %i.y = call ptr @xstrdup(ptr noundef nonnull @.str.236) #14
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = call ptr @xstrdup(ptr noundef nonnull @.str.237) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = call ptr @xstrdup(ptr noundef nonnull @.str.238) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call ptr @xstrdup(ptr noundef %i.af) #14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ai = call ptr @xstrdup(ptr noundef nonnull @.str.239) #14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.am = load i32, ptr %i.al, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.44, i32 noundef %i.am) #14
  %i.an = call ptr @xstrdup(ptr noundef nonnull @.str.240) #14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store ptr %i.an, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.at = load i64, ptr %i.as, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.241, ptr noundef %i.ar, i64 noundef %i.at) #14
  %i.au = call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.av = tail call ptr @__errno_location() #15
  store i32 %i.au, ptr %i.av, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.230) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.aw = load i32, ptr getelementptr inbounds nuw (i8, ptr @bb_state, i64 116), align 4
  %i.ax = mul i32 %i.aw, 1000                     ; 2 uses
  %i.ay = call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @bb_state, i64 192)) #14 ; 2 uses
  %.not111 = icmp eq i32 %i.ay, 0
  br i1 %.not111, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = tail call ptr @__errno_location() #15
  store i32 %i.ay, ptr %i.az, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.230) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %0, align 8
  %.not112 = icmp eq ptr %i.ba, null
  br i1 %.not112, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bb = call ptr @xstrdup(ptr noundef nonnull @.str.242) #14
  %i.bc = load ptr, ptr %i.d, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  store ptr %i.bb, ptr %i.bd, align 8
  %i.be = load ptr, ptr %0, align 8
  %i.bf = call ptr @xstrdup(ptr noundef %i.be) #14
  %i.bg = load ptr, ptr %i.d, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  store ptr %i.bf, ptr %i.bh, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.099 = phi i64 [ 13, %bb.f ], [ 11, %bb.e ]    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  %.not113 = icmp eq ptr %i.bj, null
  br i1 %.not113, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = call ptr @xstrdup(ptr noundef nonnull @.str.243) #14
  %i.bl = load ptr, ptr %i.d, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.099
  store ptr %i.bk, ptr %i.bm, align 8
  %i.bn = load ptr, ptr %i.bi, align 8
  %i.bo = call ptr @xstrdup(ptr noundef %i.bn) #14
  %i.bp = load ptr, ptr %i.d, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.099
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bo, ptr %i.br, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bs = call { i64, i64 } @timespec_now() #14   ; 2 uses
  store i32 %i.ax, ptr %i.k, align 8
  %i.bt = load ptr, ptr %i.d, align 8
  store ptr %i.bt, ptr %i.l, align 8
  %i.bu = call ptr @run_command(ptr noundef nonnull %1) #14 ; 2 uses
  store ptr %i.bu, ptr %i.e, align 8
  %i.bv = load ptr, ptr %i.d, align 8
  call fastcc void @_log_script_argv(ptr noundef %i.bv, ptr noundef %i.bu)
  call void @slurm_xfree_array(ptr noundef nonnull %i.d) #14
  %i.bw = call { i64, i64 } @timespec_now() #14   ; 2 uses
end_hunk_0
