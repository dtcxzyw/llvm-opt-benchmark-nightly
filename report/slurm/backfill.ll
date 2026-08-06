inline.NumInlined: 92
inline.NumDeleted: 25
begin_hunk_0_@_load_config:bb.a

bb.bn:                                            ; preds = %bb.bm
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 18
  %i.dh = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.dg, ptr noundef null, i32 noundef 10) #14, !inline_history !8
  %i.di = trunc i64 %i.dh to i32                  ; 3 uses
  store i32 %i.di, ptr @yield_interval, align 4
  %i.dj = add i32 %i.di, -10000001
  %or.cond27 = icmp ult i32 %i.dj, -10000000
  br i1 %or.cond27, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.dk = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.46, i32 noundef %i.di) #14 ; 0 uses
  br label %.sink.split270

.sink.split270:                                   ; preds = %bb.bm, %bb.bo
  store i32 2000000, ptr @yield_interval, align 4
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split270, %bb.bn
  %i.dl = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.47) #14 ; 2 uses
  %.not181 = icmp eq ptr %i.dl, null
  br i1 %.not181, label %.sink.split271, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 15
  %i.dn = tail call i64 @strtoll(ptr noundef nonnull captures(none) %i.dm, ptr noundef null, i32 noundef 10) #14, !inline_history !9
  %i.do = trunc i64 %i.dn to i32                  ; 3 uses
  store i32 %i.do, ptr @yield_sleep, align 4
  %i.dp = add i32 %i.do, -10000001
  %or.cond29 = icmp ult i32 %i.dp, -10000000
  br i1 %or.cond29, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.dq = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.48, i32 noundef %i.do) #14 ; 0 uses
  br label %.sink.split271

.sink.split271:                                   ; preds = %bb.bp, %bb.br
  store i32 500000, ptr @yield_sleep, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %.sink.split271, %bb.bq
  store i16 0, ptr @bf_hetjob_prio, align 2
  %i.dr = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.49) #14 ; 2 uses
  %.not182 = icmp eq ptr %i.dr, null
  br i1 %.not182, label %bb.ca, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 15 ; 4 uses
  %i.dt = tail call i32 @xstrncasecmp(ptr noundef nonnull %i.ds, ptr noundef nonnull @.str.50, i64 noundef 3) #14
  %.not183 = icmp eq i32 %i.dt, 0
  br i1 %.not183, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.du = load i16, ptr @bf_hetjob_prio, align 2
  %i.dv = or i16 %i.du, 1
  store i16 %i.dv, ptr @bf_hetjob_prio, align 2
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bt
  %i.dw = tail call i32 @xstrncasecmp(ptr noundef nonnull %i.ds, ptr noundef nonnull @.str.51, i64 noundef 3) #14
  %.not184 = icmp eq i32 %i.dw, 0
  br i1 %.not184, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.dx = load i16, ptr @bf_hetjob_prio, align 2
  %i.dy = or i16 %i.dx, 2
  store i16 %i.dy, ptr @bf_hetjob_prio, align 2
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  %i.dz = tail call i32 @xstrncasecmp(ptr noundef nonnull %i.ds, ptr noundef nonnull @.str.52, i64 noundef 3) #14
  %.not185 = icmp eq i32 %i.dz, 0
  br i1 %.not185, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ea = load i16, ptr @bf_hetjob_prio, align 2
  %i.eb = or i16 %i.ea, 4
  store i16 %i.eb, ptr @bf_hetjob_prio, align 2
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.ec = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.53, ptr noundef nonnull %i.ds) #14 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bu, %bb.by, %bb.bz, %bb.bw, %bb.bs
  store i1 false, ptr @bf_hetjob_immediate, align 1
  %i.ed = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.54) #14
  %.not186 = icmp eq ptr %i.ed, null
  br i1 %.not186, label %._crit_edge, label %bb.cb

._crit_edge:                                      ; preds = %bb.ca
  %.b.pre = load i1, ptr @bf_hetjob_immediate, align 1
  br label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i1 true, ptr @bf_hetjob_immediate, align 1
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge, %bb.cb
  %.b = phi i1 [ %.b.pre, %._crit_edge ], [ true, %bb.cb ]
  %i.ee = load i16, ptr @bf_hetjob_prio, align 2
  %i.ef = icmp eq i16 %i.ee, 0
  %or.cond31.not = select i1 %.b, i1 %i.ef, i1 false
  br i1 %or.cond31.not, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  store i16 1, ptr @bf_hetjob_prio, align 2
  %i.eg = tail call i32 @get_log_level() #14
  %i.eh = icmp sgt i32 %i.eg, 2
  br i1 %i.eh, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.55, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._load_config) #14
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce, %bb.cc
  %i.ei = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.56) #14
  %.not = icmp ne ptr %i.ei, null
  store i1 %.not, ptr @bf_one_resv_per_job, align 1
  %i.ej = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.57) #14
  %.not189 = icmp ne ptr %i.ej, null
  store i1 %.not189, ptr @bf_allow_magnetic_slot, align 1
  %i.ek = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.58) #14
  %.not191 = icmp ne ptr %i.ek, null
  store i1 %.not191, ptr @bf_running_job_reserve, align 1
  %i.el = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.59) #14
  %.not193 = icmp ne ptr %i.el, null              ; 2 uses
  br i1 %.not193, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i1 true, ptr @bf_running_job_reserve, align 1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg
  store i1 %.not193, ptr @bf_licenses, align 1
  %i.em = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.60) #14
  %.not194 = icmp ne ptr %i.em, null
  store i1 %.not194, ptr @bf_topopt_enable, align 1
  %i.en = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.61) #14 ; 2 uses
  %.not196 = icmp eq ptr %i.en, null
  br i1 %.not196, label %.sink.split272, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 21
  %i.ep = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.eo, ptr noundef null, i32 noundef 10) #14, !inline_history !8
  %i.eq = trunc i64 %i.ep to i32                  ; 3 uses
  store i32 %i.eq, ptr @bf_topopt_iterations, align 4
  %i.er = add i32 %i.eq, -31
  %or.cond33 = icmp ult i32 %i.er, -29
  br i1 %or.cond33, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.es = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.62, i32 noundef %i.eq) #14 ; 0 uses
  br label %.sink.split272

.sink.split272:                                   ; preds = %bb.ch, %bb.cj
  store i32 10, ptr @bf_topopt_iterations, align 4
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split272, %bb.ci
  %i.et = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.63) #14 ; 2 uses
  %.not197 = icmp eq ptr %i.et, null
  br i1 %.not197, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  br label %bb.co

bb.cm:                                            ; preds = %bb.ck
  %i.ev = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.64) #14 ; 2 uses
  %.not198 = icmp eq ptr %i.ev, null
  br i1 %.not198, label %.sink.split273, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 14
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cl
  %.sink = phi ptr [ %i.ew, %bb.cn ], [ %i.eu, %bb.cl ]
  %i.ex = tail call i64 @strtol(ptr noundef nonnull captures(none) %.sink, ptr noundef null, i32 noundef 10) #14
  %storemerge = trunc i64 %i.ex to i32            ; 3 uses
  store i32 %storemerge, ptr @max_rpc_cnt, align 4
  %or.cond35 = icmp ugt i32 %storemerge, 1000
  br i1 %or.cond35, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ey = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.65, i32 noundef %storemerge) #14 ; 0 uses
  br label %.sink.split273

.sink.split273:                                   ; preds = %bb.cm, %bb.cp
  store i32 0, ptr @max_rpc_cnt, align 4
  br label %bb.cq

bb.cq:                                            ; preds = %.sink.split273, %bb.co
  %i.ez = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.66) #14 ; 2 uses
  %.not199 = icmp eq ptr %i.ez, null
  br i1 %.not199, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 17
  %0 = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.fa, ptr noundef null, i32 noundef 10) #14
  br label %select.unfold

bb.cs:                                            ; preds = %bb.cq
  %i.fb = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.67) #14 ; 2 uses
  %.not200 = icmp eq ptr %i.fb, null
  br i1 %.not200, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 19
  %1 = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.fc, ptr noundef null, i32 noundef 10) #14
  br label %select.unfold

bb.cu:                                            ; preds = %bb.cs
  %i.fd = load i32, ptr @max_rpc_cnt, align 4     ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, 209
  br i1 %i.fe, label %select.unfold.sink.split, label %.thread218

select.unfold.sink.split:                         ; preds = %bb.cu
  %2 = udiv i32 %i.fd, 10
  %3 = zext nneg i32 %2 to i64
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.sink.split, %bb.ct, %bb.cr
  %.0 = phi i64 [ %0, %bb.cr ], [ %1, %bb.ct ], [ %3, %select.unfold.sink.split ] ; 3 uses
  %or.cond37 = icmp ugt i64 %.0, 200
  br i1 %or.cond37, label %bb.cv, label %.thread218

bb.cv:                                            ; preds = %select.unfold
  %i.ff = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.68, i64 noundef %.0) #14 ; 0 uses
  %i.fg = load i32, ptr @max_rpc_cnt, align 4     ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 209
  %i.fi = sdiv i32 %i.fg, 10
  %i.fj = select i1 %i.fh, i32 %i.fi, i32 20
  br label %bb.cw

.thread218:                                       ; preds = %bb.cu, %select.unfold
  %.0221 = phi i64 [ %.0, %select.unfold ], [ 20, %bb.cu ]
  %i.fk = trunc nuw nsw i64 %.0221 to i32
  br label %bb.cw

bb.cw:                                            ; preds = %.thread218, %bb.cv
  %storemerge201 = phi i32 [ %i.fk, %.thread218 ], [ %i.fj, %bb.cv ]
  store i32 %storemerge201, ptr @yield_rpc_cnt, align 4
  %i.fl = tail call ptr @xstrcasestr(ptr noundef %i.a, ptr noundef nonnull @.str.69) #14
  %.not202 = icmp eq ptr %i.fl, null
  br i1 %.not202, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i1 true, ptr @soft_time_limit, align 1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  ret void
}

declare ptr @list_create(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_het_job_map_del(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @list_destroy(ptr noundef nonnull %i.c) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.b, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_init_planned_bitmap() unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = load i32, ptr @node_record_count, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @bit_alloc(i64 noundef %i.c) #14
  store ptr %i.d, ptr @planned_bitmap, align 8
  tail call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._init_planned_bitmap.read_node_lock) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 0, ptr %i.a, align 4
  %i.e = call ptr @next_node(ptr noundef nonnull %i.a) #14 ; 2 uses
  %.not2 = icmp eq ptr %i.e, null
  br i1 %.not2, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const._init_planned_bitmap.read_node_lock) #14
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.f = phi ptr [ %i.o, %bb.c ], [ %i.e, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 2097152
  %.not1 = icmp eq i32 %i.i, 0
  br i1 %.not1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr @planned_bitmap, align 8
  %i.k = load i32, ptr %i.a, align 4
  %i.l = sext i32 %i.k to i64
  call void @bit_set(ptr noundef %i.j, i64 noundef %i.l) #14
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.m = load i32, ptr %i.a, align 4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.a, align 4
  %i.o = call ptr @next_node(ptr noundef nonnull %i.a) #14 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_attempt_backfill() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 191 uses
  %i.d = alloca i32, align 4                      ; 14 uses
  %i.e = alloca i32, align 4                      ; 16 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 12 uses
  %i.j = alloca ptr, align 8                      ; 43 uses
  %i.k = alloca ptr, align 8                      ; 11 uses
  %i.l = alloca ptr, align 8                      ; 12 uses
  %i.m = alloca i64, align 8                      ; 17 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 13 uses
  %i.p = alloca ptr, align 8                      ; 7 uses
  %0 = alloca %struct.timeval, align 8            ; 5 uses
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %2 = alloca %struct.timeval, align 8            ; 7 uses
  %i.q = alloca i8, align 1                       ; 7 uses
  %i.r = alloca ptr, align 8                      ; 9 uses
  %i.s = alloca ptr, align 8                      ; 10 uses
  %i.t = alloca ptr, align 8                      ; 8 uses
  %3 = alloca %struct.resv_exc_t, align 8         ; 10 uses
  %4 = alloca %struct.will_run_data, align 8      ; 8 uses
  %5 = alloca %struct.assoc_mgr_lock_t, align 4   ; 9 uses
  %6 = alloca %struct.node_space_handler_t, align 8 ; 6 uses
  %7 = alloca %struct.timer_str_t, align 1        ; 4 uses
  %8 = alloca %struct.assoc_mgr_lock_t, align 4   ; 7 uses
  %9 = alloca %struct.timer_str_t, align 1        ; 4 uses
  %10 = alloca %struct.resv_exc_t, align 8        ; 5 uses
  %i.u = alloca ptr, align 8                      ; 8 uses
  %11 = alloca %struct.node_space_handler_t, align 8 ; 5 uses
  %12 = alloca %struct.assoc_mgr_lock_t, align 4  ; 6 uses
  %13 = alloca %struct.timer_str_t, align 1       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  store ptr null, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  store ptr null, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store ptr null, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  store ptr null, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #14
  store ptr null, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #14
  store i8 0, ptr %i.q, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #14
  store ptr null, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #14
  store ptr null, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #14
  store ptr null, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef nonnull align 4 dereferenceable(28) @__const._attempt_backfill.qos_read_lock, i64 28, i1 false)
  store i32 0, ptr @bf_sleep_usec, align 4
  store i32 0, ptr @job_start_cnt, align 4
  store i32 0, ptr @job_test_cnt, align 4
  %i.v = tail call zeroext i1 @fed_mgr_sibs_synced() #14
  br i1 %i.v, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = tail call i32 @get_log_level() #14
  %i.x = icmp sgt i32 %i.w, 2
  br i1 %i.x, label %bb.c, label %bb.wy

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.71, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._attempt_backfill) #14
  br label %bb.wy

bb.d:                                             ; preds = %bb.a
  %i.y = tail call i32 @bb_g_load_state(i1 noundef zeroext false) #14 ; 0 uses
  %i.z = tail call { i64, i64 } @timespec_now() #14 ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ad = and i64 %i.ac, 4096
  %.not = icmp eq i64 %i.ad, 0
end_hunk_0
