Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/slurmd?download=true
inline.NumInlined: 37
inline.NumDeleted: 23
begin_hunk_0_@_service_msg:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  store ptr %i.f, ptr %i.b, align 8
  store ptr null, ptr %i.e, align 8
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.h = and i64 %i.g, 1024
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @get_log_level() #16
  %i.j = icmp sgt i32 %i.i, 3
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @conmgr_con_get_name(ptr noundef %i.f) #16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 226
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = zext i16 %i.m to i32
  %i.o = tail call ptr @rpc_num2string(i16 noundef zeroext %i.m) #16
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.149, ptr noundef %i.k, i32 noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.d) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.q = and i64 %i.p, 33554432
  %.not19 = icmp eq i64 %i.q, 0
  br i1 %.not19, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 @get_log_level() #16
  %i.s = icmp sgt i32 %i.r, 3
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @conmgr_con_get_name(ptr noundef %i.f) #16
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 226
  %i.v = load i16, ptr %i.u, align 2
  %i.w = tail call ptr @rpc_num2string(i16 noundef zeroext %i.v) #16
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.y = load i32, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 228
  %i.aa = load i16, ptr %i.z, align 4
  %i.ab = zext i16 %i.aa to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.144, ptr noundef %i.t, ptr noundef %i.w, i32 noundef %i.y, ptr noundef nonnull %i.d, i32 noundef %i.ab) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e
  tail call void @conmgr_fd_free_ref(ptr noundef nonnull %i.e) #16
  tail call void @slurmd_req(ptr noundef nonnull %i.d) #16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 216 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @conn_g_destroy(ptr noundef %i.ad, i1 noundef zeroext true) #16
  store ptr null, ptr %i.ac, align 8
  %i.ae = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.af = and i64 %i.ae, 1024
  %.not20 = icmp eq i64 %i.af, 0
  br i1 %.not20, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call i32 @get_log_level() #16
  %i.ah = icmp sgt i32 %i.ag, 3
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call ptr @conmgr_con_get_name(ptr noundef %i.f) #16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 226
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = tail call ptr @rpc_num2string(i16 noundef zeroext %i.ak) #16
  tail call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.149, ptr noundef %i.ai, i32 noundef %i.al, ptr noundef %i.am) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  call void @conmgr_fd_free_ref(ptr noundef nonnull %i.b) #16
  call void @slurm_free_msg(ptr noundef nonnull %i.d) #16
  store i32 -720021680, ptr %0, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call fastcc void @_decrement_thd_count()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr null
}

declare void @warning(ptr noundef, ...) local_unnamed_addr #3

declare void @timespec_ctime_str(ptr dead_on_unwind writable sret(%struct.timespec_ctime_str_t) align 1, i64, i64, i1 noundef zeroext) local_unnamed_addr #3

declare { i64, i64 } @conmgr_calc_work_time_delay(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @slurm_conf_init(ptr noundef) local_unnamed_addr #3

declare void @init_node_conf() local_unnamed_addr #3

declare i32 @gres_init() local_unnamed_addr #3

declare i32 @build_all_nodeline_info(i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare i32 @cgroup_conf_init() local_unnamed_addr #3

declare i32 @cgroup_g_init() local_unnamed_addr #3

declare i32 @conmgr_set_params(ptr noundef) local_unnamed_addr #3

declare i32 @auth_g_init() local_unnamed_addr #3

declare i32 @hash_g_init() local_unnamed_addr #3

declare i32 @certmgr_g_init() local_unnamed_addr #3

declare i32 @conn_g_init() local_unnamed_addr #3

declare i32 @serializer_g_init() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_dynamic_init() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %0 = alloca %struct.node_config_load_t, align 8 ; 9 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = load ptr, ptr @conf, align 8             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4593
  %i.h = load i8, ptr %i.g, align 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4432
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.i) #16 ; 2 uses
  %.not6 = icmp eq i32 %i.j, 0
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__errno_location() #19
  store i32 %i.j, ptr %i.k, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__._dynamic_init) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @conf, align 8             ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4196
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4198
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4200
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4202
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 4204
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4232
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 4240
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 4248
  %i.u = tail call i32 @xcpuinfo_hwloc_topo_get(ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #16 ; 0 uses
  %i.v = load ptr, ptr @conf, align 8             ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4196
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 4152
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4200
  %i.z = load i16, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4202
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4184
  store i16 %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 4204
  %i.ae = load i16, ptr %i.ad, align 4
  %i.af = load <2 x i16>, ptr %i.w, align 4
  %i.ag = shufflevector <2 x i16> %i.af, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.z, i64 2
  %i.ai = insertelement <4 x i16> %i.ah, i16 %i.ae, i64 3
  store <4 x i16> %i.ai, ptr %i.x, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 4216
  %i.ak = tail call i32 @get_memory(ptr noundef nonnull %i.aj) #16 ; 0 uses
  %i.al = load ptr, ptr @conf, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4216
  %i.an = load i64, ptr %i.am, align 8
  tail call fastcc void @_spec_override(i64 noundef %i.an)
  %i.ao = load ptr, ptr @conf, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4593
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  switch i8 %i.aq, label %bb.aj [
    i8 1, label %bb.e
    i8 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call i32 @send_registration_msg(i32 noundef 0) ; 0 uses
  store i64 0, ptr @sent_reg_time, align 8
  store i8 0, ptr @sent_successful_registration, align 1
  br label %bb.ak

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4600
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %_validate_dynamic_conf.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.f
  %i.au = tail call ptr @xstrcasestr(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.190) #16
  %.not6.i = icmp eq ptr %i.au, null
  br i1 %.not6.i, label %.preheader.preheader.i._validate_dynamic_conf.exit_crit_edge, label %bb.g

.preheader.preheader.i._validate_dynamic_conf.exit_crit_edge: ; preds = %.preheader.preheader.i
  %.pre = load ptr, ptr @conf, align 8
  br label %_validate_dynamic_conf.exit

bb.g:                                             ; preds = %.preheader.preheader.i
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.190) #17
  unreachable

_validate_dynamic_conf.exit:                      ; preds = %.preheader.preheader.i._validate_dynamic_conf.exit_crit_edge, %bb.f
  %i.av = phi ptr [ %.pre, %.preheader.preheader.i._validate_dynamic_conf.exit_crit_edge ], [ %i.ao, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4264
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.176, ptr noundef %i.ax) #16
  store ptr %i.ay, ptr %i.e, align 8
  %i.az = load ptr, ptr @conf, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4600
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = tail call ptr @xstrcasestr(ptr noundef %i.bb, ptr noundef nonnull @.str.177) #16
  %.not7 = icmp eq ptr %i.bc, null
  br i1 %.not7, label %bb.h, label %bb.m

bb.h:                                             ; preds = %_validate_dynamic_conf.exit
  %i.bd = load ptr, ptr @conf, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4600
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call ptr @xstrcasestr(ptr noundef %i.bf, ptr noundef nonnull @.str.178) #16
  %.not8 = icmp eq ptr %i.bg, null
  br i1 %.not8, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bh = load ptr, ptr @conf, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4600
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call ptr @xstrcasestr(ptr noundef %i.bj, ptr noundef nonnull @.str.179) #16
  %.not9 = icmp eq ptr %i.bk, null
  br i1 %.not9, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr @conf, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4600
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call ptr @xstrcasestr(ptr noundef %i.bn, ptr noundef nonnull @.str.180) #16
  %.not10 = icmp eq ptr %i.bo, null
  br i1 %.not10, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bp = load ptr, ptr @conf, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4600
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call ptr @xstrcasestr(ptr noundef %i.br, ptr noundef nonnull @.str.181) #16
  %.not11 = icmp eq ptr %i.bs, null
  br i1 %.not11, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr @conf, align 8            ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4196
  %i.bv = load i16, ptr %i.bu, align 4
  %i.bw = zext i16 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 4198
  %i.by = load i16, ptr %i.bx, align 2            ; 2 uses
  %i.bz = zext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 4200
  %i.cb = load i16, ptr %i.ca, align 8
  %i.cc = udiv i16 %i.cb, %i.by
  %i.cd = zext i16 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 4202
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = zext i16 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bt, i64 4204
  %i.ci = load i16, ptr %i.ch, align 4
  %i.cj = zext i16 %i.ci to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.182, i32 noundef %i.bw, i32 noundef %i.bz, i32 noundef %i.cd, i32 noundef %i.cg, i32 noundef %i.cj) #16
  br label %bb.m

bb.m:                                             ; preds = %_validate_dynamic_conf.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.ck = load ptr, ptr @conf, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4600
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call ptr @xstrcasestr(ptr noundef %i.cm, ptr noundef nonnull @.str.183) #16
  %.not12 = icmp eq ptr %i.cn, null
  br i1 %.not12, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.co = load ptr, ptr @conf, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4216
  %i.cq = load i64, ptr %i.cp, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.184, i64 noundef %i.cq) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.cr = load ptr, ptr @conf, align 8            ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4196
  %i.ct = load i16, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 4232
  %i.cv = load i16, ptr %i.cu, align 8
  %..i = call i16 @llvm.umax.i16(i16 %i.ct, i16 %i.cv)
  %i.cw = zext i16 %..i to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #16
  store i32 %i.cw, ptr %0, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @.str.130, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.da, i8 0, i64 7, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @xcpuinfo_mac_to_abs, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 4600
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not.i16 = icmp eq ptr %i.dd, null
  br i1 %.not.i16, label %.thread41.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = call ptr @xstrcasestr(ptr noundef nonnull %i.dd, ptr noundef nonnull @.str.192) #16 ; 6 uses
  %.not25.i = icmp eq ptr %i.de, null
  br i1 %.not25.i, label %.thread41.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.de, i32 noundef 32) #21 ; 3 uses
  %.not26.i = icmp eq ptr %i.df, null
  br i1 %.not26.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.dg = call ptr @xstrcasestr(ptr noundef nonnull %i.de, ptr noundef nonnull @.str.193) #16
  %.not27.i = icmp eq ptr %i.dg, null
  br i1 %.not27.i, label %.thread41.i, label %_insert_gpu_conf.exit

.thread.i:                                        ; preds = %bb.q
  store i8 0, ptr %i.df, align 1
  %i.dh = call ptr @xstrcasestr(ptr noundef nonnull %i.de, ptr noundef nonnull @.str.193) #16
  %.not2731.i = icmp eq ptr %i.dh, null
  store i8 32, ptr %i.df, align 1
  br i1 %.not2731.i, label %.thread41.i, label %_insert_gpu_conf.exit

.thread41.i:                                      ; preds = %.thread.i, %bb.r, %bb.p, %bb.o
  %.017.i = phi ptr [ %i.de, %bb.r ], [ null, %bb.p ], [ null, %bb.o ], [ %i.de, %.thread.i ] ; 2 uses
  %i.di = load ptr, ptr @conf, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4264
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call i32 @gres_parse_conf(ptr noundef %i.dk, i32 noundef %i.cw) #16 ; 0 uses
  %i.dm = call ptr @gres_get_dynamic_gpu_str(ptr noundef nonnull byval(%struct.node_config_load_t) align 8 %0) #16 ; 6 uses
  store ptr %i.dm, ptr %i.b, align 8
  %.not28.i = icmp eq ptr %i.dm, null
  br i1 %.not28.i, label %_insert_gpu_conf.exit, label %bb.s

bb.s:                                             ; preds = %.thread41.i
  %i.dn = call i32 @get_log_level() #16
  %i.do = icmp sgt i32 %i.dn, 3
  br i1 %i.do, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dp = load ptr, ptr @conf, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4264
  %i.dr = load ptr, ptr %i.dq, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.194, ptr noundef %i.dr, ptr noundef nonnull %i.dm) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not29.i = icmp eq ptr %.017.i, null
  br i1 %.not29.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.017.i, i32 noundef 32) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8
  %.not30.i = icmp eq ptr %i.ds, null
  br i1 %.not30.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.ds, align 1
  %i.dt = load ptr, ptr @conf, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4600
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.195, ptr noundef %i.dv, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dw) #16
  store i8 32, ptr %i.ds, align 1
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dx = load ptr, ptr @conf, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4600
  %i.dz = load ptr, ptr %i.dy, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.196, ptr noundef %i.dz, ptr noundef nonnull %i.dm) #16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ea = load ptr, ptr @conf, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4600
  call void @slurm_xfree(ptr noundef nonnull %i.eb) #16
  %i.ec = load ptr, ptr %i.c, align 8
  %i.ed = load ptr, ptr @conf, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4600
  store ptr %i.ec, ptr %i.ee, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.aa

bb.z:                                             ; preds = %bb.u
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.197, ptr noundef nonnull %i.dm) #16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  br label %_insert_gpu_conf.exit

_insert_gpu_conf.exit:                            ; preds = %bb.r, %.thread.i, %.thread41.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.ef = load ptr, ptr @conf, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4600
  %i.eh = load ptr, ptr %i.eg, align 8            ; 2 uses
  %.not13 = icmp eq ptr %i.eh, null
  br i1 %.not13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_insert_gpu_conf.exit
  call void @_xstrcat(ptr noundef nonnull %i.e, ptr noundef nonnull %i.eh) #16
  %.pre22 = load ptr, ptr @conf, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_insert_gpu_conf.exit
  %i.ei = phi ptr [ %.pre22, %bb.ab ], [ %i.ef, %_insert_gpu_conf.exit ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4600
  call void @slurm_xfree(ptr noundef nonnull %i.ej) #16
  %i.ek = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.el = load ptr, ptr @conf, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4600
  store ptr %i.ek, ptr %i.em, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  %i.en = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1184), align 8
  %i.eo = call ptr @xstrstr(ptr noundef %i.en, ptr noundef nonnull @.str.198) #16
  %.not.i17 = icmp eq ptr %i.eo, null
  br i1 %.not.i17, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ep = call ptr @xstrdup(ptr noundef nonnull @.str.199) #16
  br label %_create_nodes.exit.thread

bb.ae:                                            ; preds = %bb.ac
  %i.eq = call ptr @slurm_conf_parse_nodeline(ptr noundef %i.ek, ptr noundef nonnull %i.a) #16 ; 3 uses
  %.not14.i = icmp eq ptr %i.eq, null
  br i1 %.not14.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.er = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.200, ptr noundef %i.ek) #16
  br label %_create_nodes.exit.thread

bb.ag:                                            ; preds = %bb.ae
  %i.es = call ptr @config_record_from_conf_node(ptr noundef nonnull %i.eq, i32 noundef 0) #16
  %i.et = call i32 @expand_nodeline_info(ptr noundef nonnull %i.eq, ptr noundef %i.es, ptr noundef nonnull %i.d, ptr noundef nonnull @_build_node_callback) #16
  %.not15.i = icmp eq i32 %i.et, 0
  br i1 %.not15.i, label %bb.ai, label %_create_nodes.exit

_create_nodes.exit.thread:                        ; preds = %bb.ad, %bb.af
  %.sink32 = phi ptr [ %i.ep, %bb.ad ], [ %i.er, %bb.af ] ; 2 uses
  store ptr %.sink32, ptr %i.d, align 8
  %i.eu = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.45, ptr noundef %.sink32) #16 ; 0 uses
  br label %bb.ah

_create_nodes.exit:                               ; preds = %bb.ag
  %i.ev = load ptr, ptr %i.d, align 8
  %i.ew = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.45, ptr noundef %i.ev) #16 ; 0 uses
  %i.ex = load ptr, ptr %i.a, align 8
  call void @s_p_hashtbl_destroy(ptr noundef %i.ex) #16
  br label %bb.ah

bb.ah:                                            ; preds = %_create_nodes.exit, %_create_nodes.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ey = load ptr, ptr @conf, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4600
  %i.fa = load ptr, ptr %i.ez, align 8
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.185, ptr noundef %i.fa) #17
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.fb = load ptr, ptr %i.a, align 8
  call void @s_p_hashtbl_destroy(ptr noundef %i.fb) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @slurm_xfree(ptr noundef nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.ak

bb.aj:                                            ; preds = %bb.d
  %i.fc = zext i8 %i.aq to i32
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.186, i32 noundef %i.fc) #17
  unreachable

bb.ak:                                            ; preds = %bb.e, %bb.ai
  %i.fd = load ptr, ptr @conf, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4432
  %i.ff = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.fe) #16 ; 2 uses
  %.not15 = icmp eq i32 %i.ff, 0
  br i1 %.not15, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fg = tail call ptr @__errno_location() #19
  store i32 %i.ff, ptr %i.fg, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__._dynamic_init) #17
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_read_config() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.f = load ptr, ptr @conf, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4432
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.g) #16 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__errno_location() #19
  store i32 %i.h, ptr %i.i, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__._read_config) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = tail call ptr @slurm_conf_lock() #16     ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1000 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %.not88 = icmp eq i32 %i.l, 0
  br i1 %.not88, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 992 ; 2 uses
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 376 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %.not89 = icmp eq i32 %i.o, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 368 ; 2 uses
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  store ptr %i.s, ptr %i.b, align 8
  %i.t = call ptr @get_extra_conf_path(ptr noundef %i.s) #16
  %i.u = load ptr, ptr %i.m, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store ptr %i.t, ptr %i.v, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = load i32, ptr %i.k, align 8
  %i.x = zext i32 %i.w to i64
  %i.y = icmp samesign ult i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.d, label %.preheader, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 1528 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not63 = icmp eq ptr %i.aa, null
  br i1 %.not63, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.lr.ph87, %bb.e
  %indvars.iv91 = phi i64 [ 0, %.lr.ph87 ], [ %indvars.iv.next92, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.ab = load ptr, ptr %i.p, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv91
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  store ptr %i.ad, ptr %i.c, align 8
  %i.ae = call ptr @get_extra_conf_path(ptr noundef %i.ad) #16
  %i.af = load ptr, ptr %i.p, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv91
  store ptr %i.ae, ptr %i.ag, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.ah = load i32, ptr %i.n, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp samesign ult i64 %indvars.iv.next92, %i.ai
  br i1 %i.aj, label %bb.e, label %._crit_edge, !llvm.loop !22

bb.f:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr %i.aa, ptr %i.d, align 8
  %i.ak = call ptr @get_extra_conf_path(ptr noundef nonnull %i.aa) #16
  store ptr %i.ak, ptr %i.z, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 1504 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %.not64 = icmp eq ptr %i.am, null
  br i1 %.not64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store ptr %i.am, ptr %i.e, align 8
  %i.an = call ptr @get_extra_conf_path(ptr noundef nonnull %i.am) #16
  store ptr %i.an, ptr %i.al, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @slurm_conf_unlock() #16
  %i.ao = load ptr, ptr @conf, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4264
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call ptr @slurm_conf_get_bcast_address(ptr noundef %i.aq) #16 ; 2 uses
  store ptr %i.ar, ptr %i.a, align 8
  %.not65 = icmp eq ptr %i.ar, null
  br i1 %.not65, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 272), align 8
  %i.at = call ptr @xstrcasestr(ptr noundef %i.as, ptr noundef nonnull @.str.201) #16
  %.not66 = icmp eq ptr %i.at, null
  br i1 %.not66, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.202) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.au = load ptr, ptr @conf, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4264
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call ptr @find_node_record(ptr noundef %i.aw) #16 ; 12 uses
  %.not67 = icmp eq ptr %i.ax, null
  %i.ay = load ptr, ptr @conf, align 8            ; 2 uses
  br i1 %.not67, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4264
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.203, ptr noundef %i.ba) #16 ; 0 uses
  call void @exit(i32 noundef 1) #18
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 4328 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %.not68 = icmp eq ptr %i.bd, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ax, i64 352
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.not70 = icmp eq ptr %.pre, null               ; 2 uses
  br i1 %.not68, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not70, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.bc, ptr noundef nonnull @.str.204, ptr noundef nonnull %.pre) #16
  %.pre95 = load ptr, ptr @conf, align 8
  %.phi.trans.insert96 = getelementptr inbounds nuw i8, ptr %.pre95, i64 4328
  %.pre97 = load ptr, ptr %.phi.trans.insert96, align 8
  br label %.thread

bb.r:                                             ; preds = %bb.o
  br i1 %.not70, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = call ptr @xstrdup(ptr noundef nonnull %.pre) #16 ; 2 uses
  %i.bf = load ptr, ptr @conf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4328
  store ptr %i.be, ptr %i.bg, align 8
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.r, %bb.s, %bb.q
  %i.bh = phi ptr [ null, %bb.r ], [ %i.be, %bb.s ], [ %.pre97, %bb.q ], [ %i.bd, %bb.p ]
  call void @parse_slurmd_params(ptr noundef %i.bh) #16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 376
  %i.bj = load i16, ptr %i.bi, align 8            ; 2 uses
  %i.bk = load ptr, ptr @conf, align 8            ; 7 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4376
  store i16 %i.bj, ptr %i.bl, align 8
  %i.bm = zext i16 %i.bj to i32
  store i32 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1384), align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bo = load i16, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 4188
  store i16 %i.bo, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 90
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 4192
  store i16 %i.br, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.bu = load i16, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 4186
  store i16 %i.bu, ptr %i.bv, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 554
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 4190
  store i16 %i.bx, ptr %i.by, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 544
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 4194
  store i16 %i.ca, ptr %i.cb, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  %i.cd = load i16, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bk, i64 4168
  store i16 %i.cd, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = call ptr @xstrdup(ptr noundef %i.cg) #16
  %i.ci = load ptr, ptr @conf, align 8            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4160
  store ptr %i.ch, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4176
  store i64 %i.cl, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 4240
  call void @slurm_xfree(ptr noundef nonnull %i.cn) #16
  %i.co = load ptr, ptr @conf, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4248
  call void @slurm_xfree(ptr noundef nonnull %i.cp) #16
  %i.cq = load ptr, ptr @conf, align 8            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4144 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %.not71 = icmp eq ptr %i.cs, null
  br i1 %.not71, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.thread
  call void @slurm_xfree(ptr noundef nonnull %i.cr) #16
  %i.ct = load ptr, ptr @conf, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4360
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.167, ptr noundef %i.cv) #16
  %i.cx = load ptr, ptr @conf, align 8            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4144
  store ptr %i.cw, ptr %i.cy, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread
  %i.cz = phi ptr [ %i.cx, %bb.t ], [ %i.cq, %.thread ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4256
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_update_nice.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = call i32 @getpid() #16                  ; 2 uses
  %i.de = call i32 @getpriority(i32 noundef 0, i32 noundef %i.dd) #16
  %i.df = load ptr, ptr @conf, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4256
  %i.dh = load i32, ptr %i.dg, align 8            ; 2 uses
  %i.di = icmp eq i32 %i.de, %i.dh
  br i1 %i.di, label %_update_nice.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = call i32 @setpriority(i32 noundef 0, i32 noundef %i.dd, i32 noundef %i.dh) #16
  %.not.i = icmp eq i32 %i.dj, 0
  %.pre99 = load ptr, ptr @conf, align 8          ; 2 uses
  br i1 %.not.i, label %_update_nice.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre99, i64 4256
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.215, i32 noundef %i.dl) #16 ; 0 uses
  %.pre98 = load ptr, ptr @conf, align 8
  br label %_update_nice.exit

_update_nice.exit:                                ; preds = %bb.u, %bb.v, %bb.w, %bb.x
  %i.dn = phi ptr [ %i.cz, %bb.u ], [ %i.df, %bb.v ], [ %.pre99, %bb.w ], [ %.pre98, %bb.x ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4196
  store i16 0, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4144
  %i.dq = load ptr, ptr %i.dp, align 8
  %.not72 = icmp eq ptr %i.dq, null
  br i1 %.not72, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %_update_nice.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.j, i64 1336
end_hunk_0
begin_hunk_1_@_set_slurmd_spooldir:bb.a

declare i32 @topology_g_init() local_unnamed_addr #3

declare void @rehash_node() local_unnamed_addr #3

declare i32 @topology_g_build_config() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_set_topo_info() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8
  %i.c = load ptr, ptr @conf, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4432
  %i.e = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.d) #16 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #19
  store i32 %i.e, ptr %i.f, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__._set_topo_info) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @conf, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4264
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call i32 @topology_g_get_node_addr(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.k = icmp eq i32 %i.j, 0
  %.pre = load ptr, ptr @conf, align 8            ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 4272
  call void @slurm_xfree(ptr noundef nonnull %i.l) #16
  %i.m = load ptr, ptr @conf, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4280
  call void @slurm_xfree(ptr noundef nonnull %i.n) #16
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = load ptr, ptr @conf, align 8             ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4272
  store ptr %i.o, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4280
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = phi ptr [ %.pre, %bb.c ], [ %i.p, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4432
  %i.v = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.u) #16 ; 2 uses
  %.not7 = icmp eq i32 %i.v, 0
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call ptr @__errno_location() #19
  store i32 %i.v, ptr %i.w, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__._set_topo_info) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare void @cpu_freq_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_resource_spec_init() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  tail call void @fini_system_cgroup() #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.d = load ptr, ptr @conf, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4168
  %i.f = load i16, ptr %i.e, align 8
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4160
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @get_log_level() #16
  %i.l = icmp sgt i32 %i.k, 4
  br i1 %i.l, label %bb.d, label %_core_spec_init.exit

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.221) #16
  br label %_core_spec_init.exit

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4156
  %i.n = load i16, ptr %i.m, align 4
  %i.o = zext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4184
  %i.q = load i16, ptr %i.p, align 8
  %i.r = zext i16 %i.q to i32
  %i.s = mul nuw nsw i32 %i.r, %i.o               ; 3 uses
  store i32 %i.s, ptr @ncores, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 4158
  %i.u = load i16, ptr %i.t, align 2
  %i.v = zext i16 %i.u to i32
  %i.w = mul nuw nsw i32 %i.s, %i.v
  store i32 %i.w, ptr @ncpus, align 4
  %i.x = shl nuw nsw i32 %i.s, 2                  ; 2 uses
  store i32 %i.x, ptr @res_abs_core_size, align 4
  %i.y = zext nneg i32 %i.x to i64
  %i.z = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef %i.y, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.4, i32 noundef 3125, ptr noundef nonnull @__func__._core_spec_init) #16
  store ptr %i.z, ptr @res_abs_cores, align 8
  %i.aa = load i32, ptr @ncores, align 4
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = tail call ptr @bit_alloc(i64 noundef %i.ab) #16
  store ptr %i.ac, ptr @res_core_bitmap, align 8
  %i.ad = load i32, ptr @ncpus, align 4
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = tail call ptr @bit_alloc(i64 noundef %i.ae) #16
  store ptr %i.af, ptr @res_cpu_bitmap, align 8
  store i8 0, ptr @res_abs_cpus, align 16
  %i.ag = load ptr, ptr @conf, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4160
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not.i = icmp eq ptr %i.ai, null
  %i.aj = tail call i32 @get_log_level() #16
  %i.ak = icmp sgt i32 %i.aj, 5                   ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr @conf, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4160
  %i.an = load ptr, ptr %i.am, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.222, ptr noundef %i.an) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ao = load i32, ptr @ncores, align 4
  %i.ap = load ptr, ptr @conf, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4152
  %i.ar = load i16, ptr %i.aq, align 8
  %i.as = zext i16 %i.ar to i32
  %.not.i.i = icmp slt i32 %i.ao, %i.as
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 4160
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = load ptr, ptr @res_core_bitmap, align 8
  %i.aw = tail call i32 @bit_unfmt(ptr noundef %i.av, ptr noundef %i.au) #16
  %.not17.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not17.i.i, label %.loopexit20.i.i, label %_validate_and_convert_cpu_list.exit.thread.i

bb.j:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr @res_cpu_bitmap, align 8
  %i.ay = tail call i32 @bit_unfmt(ptr noundef %i.ax, ptr noundef %i.au) #16
  %.not16.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not16.i.i, label %.preheader19.i.i, label %_validate_and_convert_cpu_list.exit.thread.i

.preheader19.i.i:                                 ; preds = %bb.j
  %i.az = load i32, ptr @ncpus, align 4
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i, label %.loopexit20.i.i

.lr.ph.i.i:                                       ; preds = %.preheader19.i.i, %bb.l
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.l ], [ 0, %.preheader19.i.i ] ; 3 uses
  %i.bb = load ptr, ptr @res_cpu_bitmap, align 8
  %i.bc = tail call i32 @slurm_bit_test(ptr noundef %i.bb, i64 noundef %indvars.iv.i.i) #16
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.be = load ptr, ptr @res_core_bitmap, align 8
  %i.bf = load ptr, ptr @conf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4158
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32
  %i.bj = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.bk = udiv i32 %i.bj, %i.bi
  %i.bl = zext nneg i32 %i.bk to i64
  tail call void @bit_set(ptr noundef %i.be, i64 noundef %i.bl) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bm = load i32, ptr @ncpus, align 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next.i.i, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i, label %.loopexit20.i.i, !llvm.loop !23

.loopexit20.i.i:                                  ; preds = %bb.l, %.preheader19.i.i, %bb.i
  %i.bp = load ptr, ptr @res_abs_cores, align 8
  %i.bq = load i32, ptr @res_abs_core_size, align 4
  %i.br = load ptr, ptr @res_core_bitmap, align 8
  %i.bs = tail call ptr @bit_fmt(ptr noundef %i.bp, i32 noundef %i.bq, ptr noundef %i.br) #16 ; 0 uses
  %i.bt = load i32, ptr @ncores, align 4
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph26.i.i, label %_validate_and_convert_cpu_list.exit.i

.lr.ph26.i.i:                                     ; preds = %.loopexit20.i.i, %.loopexit.i.i
  %indvars.iv29.i.i = phi i64 [ %indvars.iv.next30.i.i, %.loopexit.i.i ], [ 0, %.loopexit20.i.i ] ; 3 uses
  %i.bv = load ptr, ptr @res_core_bitmap, align 8
  %i.bw = tail call i32 @slurm_bit_test(ptr noundef %i.bv, i64 noundef %indvars.iv29.i.i) #16
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %.preheader.i.i, label %.loopexit.i.i

.preheader.i.i:                                   ; preds = %.lr.ph26.i.i
  %i.by = load ptr, ptr @conf, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4158
  %i.ca = load i16, ptr %i.bz, align 2            ; 2 uses
  %.not27.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not27.i.i, label %.loopexit.i.i, label %.lr.ph23.preheader.i.i

.lr.ph23.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.cb = zext i16 %i.ca to i32
  %i.cc = trunc nuw nsw i64 %indvars.iv29.i.i to i32
  br label %.lr.ph23.i.i

.lr.ph23.i.i:                                     ; preds = %.lr.ph23.i.i, %.lr.ph23.preheader.i.i
  %i.cd = phi i32 [ %i.cm, %.lr.ph23.i.i ], [ %i.cb, %.lr.ph23.preheader.i.i ]
  %.122.i.i = phi i32 [ %i.ci, %.lr.ph23.i.i ], [ 0, %.lr.ph23.preheader.i.i ] ; 2 uses
  %i.ce = mul nuw nsw i32 %i.cd, %i.cc
  %i.cf = add nuw nsw i32 %i.ce, %.122.i.i
  %i.cg = load ptr, ptr @res_cpu_bitmap, align 8
  %i.ch = zext nneg i32 %i.cf to i64
  tail call void @bit_set(ptr noundef %i.cg, i64 noundef %i.ch) #16
  %i.ci = add nuw nsw i32 %.122.i.i, 1            ; 2 uses
  %i.cj = load ptr, ptr @conf, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4158
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = zext i16 %i.cl to i32                   ; 2 uses
  %i.cn = icmp samesign ult i32 %i.ci, %i.cm
  br i1 %i.cn, label %.lr.ph23.i.i, label %.loopexit.i.i, !llvm.loop !24

.loopexit.i.i:                                    ; preds = %.lr.ph23.i.i, %.preheader.i.i, %.lr.ph26.i.i
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 2 uses
  %i.co = load i32, ptr @ncores, align 4
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next30.i.i, %i.cp
  br i1 %i.cq, label %.lr.ph26.i.i, label %_validate_and_convert_cpu_list.exit.i, !llvm.loop !25

_validate_and_convert_cpu_list.exit.i:            ; preds = %.loopexit.i.i, %.loopexit20.i.i
  %i.cr = load ptr, ptr @res_cpu_bitmap, align 8
  %i.cs = tail call ptr @bit_fmt(ptr noundef nonnull @res_abs_cpus, i32 noundef 256, ptr noundef %i.cr) #16 ; 0 uses
  %i.ct = load ptr, ptr @res_abs_cores, align 8
  %i.cu = tail call i32 @xcpuinfo_abs_to_mac(ptr noundef %i.ct, ptr noundef nonnull @res_mac_cpus) #16
  %.not18.i.not.i = icmp eq i32 %i.cu, 0
  br i1 %.not18.i.not.i, label %bb.af, label %_validate_and_convert_cpu_list.exit.thread.i

_validate_and_convert_cpu_list.exit.thread.i:     ; preds = %_validate_and_convert_cpu_list.exit.i, %bb.j, %bb.i
  %i.cv = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.223) #16 ; 0 uses
  tail call void @slurm_xfree(ptr noundef nonnull @res_abs_cores) #16
  tail call void @slurm_xfree(ptr noundef nonnull @res_mac_cpus) #16
  %i.cw = load ptr, ptr @res_core_bitmap, align 8
  %.not.i29.i = icmp eq ptr %i.cw, null
  br i1 %.not.i29.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_validate_and_convert_cpu_list.exit.thread.i
  tail call void @slurm_bit_free(ptr noundef nonnull @res_core_bitmap) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_validate_and_convert_cpu_list.exit.thread.i
  store ptr null, ptr @res_core_bitmap, align 8
  %i.cx = load ptr, ptr @res_cpu_bitmap, align 8
  %.not1.i.i = icmp eq ptr %i.cx, null
  br i1 %.not1.i.i, label %_resource_spec_fini.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @slurm_bit_free(ptr noundef nonnull @res_cpu_bitmap) #16
  br label %_resource_spec_fini.exit.i

_resource_spec_fini.exit.i:                       ; preds = %bb.o, %bb.n
  store ptr null, ptr @res_cpu_bitmap, align 8
  br label %bb.br

bb.p:                                             ; preds = %bb.e
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cy = load ptr, ptr @conf, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4168
  %i.da = load i16, ptr %i.cz, align 8
  %i.db = zext i16 %i.da to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.224, i32 noundef %i.db) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dc = load ptr, ptr @conf, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4168
  %i.de = load i16, ptr %i.dd, align 8
  %i.df = zext i16 %i.de to i32
  %i.dg = load i32, ptr @ncores, align 4
  %.not18.i = icmp sgt i32 %i.dg, %i.df
  br i1 %.not18.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.225) #16 ; 0 uses
  tail call void @slurm_xfree(ptr noundef nonnull @res_abs_cores) #16
  tail call void @slurm_xfree(ptr noundef nonnull @res_mac_cpus) #16
  %i.di = load ptr, ptr @res_core_bitmap, align 8
  %.not.i30.i = icmp eq ptr %i.di, null
  br i1 %.not.i30.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @slurm_bit_free(ptr noundef nonnull @res_core_bitmap) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr null, ptr @res_core_bitmap, align 8
  %i.dj = load ptr, ptr @res_cpu_bitmap, align 8
  %.not1.i31.i = icmp eq ptr %i.dj, null
  br i1 %.not1.i31.i, label %_resource_spec_fini.exit32.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @slurm_bit_free(ptr noundef nonnull @res_cpu_bitmap) #16
  br label %_resource_spec_fini.exit32.i

_resource_spec_fini.exit32.i:                     ; preds = %bb.v, %bb.u
  store ptr null, ptr @res_cpu_bitmap, align 8
  br label %bb.br

bb.w:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1152), align 8
  %i.dl = tail call ptr @xstrcasestr(ptr noundef %i.dk, ptr noundef nonnull @.str.233) #16
  %.not.not.i.i = icmp eq ptr %i.dl, null
  %i.dm = load ptr, ptr @conf, align 8            ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4184
  %i.do = load i16, ptr %i.dn, align 8
  %i.dp = zext i16 %i.do to i32                   ; 2 uses
  br i1 %.not.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4156
  %i.dr = load i16, ptr %i.dq, align 4
  %i.ds = zext i16 %i.dr to i32
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dt = add nsw i32 %i.dp, -1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 4156
  %i.dv = load i16, ptr %i.du, align 4
  %i.dw = zext i16 %i.dv to i32
  %i.dx = add nsw i32 %i.dw, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.028.i.i = phi i32 [ 0, %bb.x ], [ %i.dt, %bb.y ] ; 2 uses
  %.027.i.i = phi i32 [ %i.dp, %bb.x ], [ -1, %bb.y ] ; 2 uses
  %.025.i.i = phi i32 [ 0, %bb.x ], [ %i.dx, %bb.y ] ; 2 uses
  %.024.i.i = phi i32 [ %i.ds, %bb.x ], [ -1, %bb.y ] ; 2 uses
  %.023.i.i = phi i32 [ 1, %bb.x ], [ -1, %bb.y ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 4168
  %i.dz = load i16, ptr %i.dy, align 8            ; 2 uses
  %i.ea = icmp eq i16 %i.dz, 0
  %i.eb = icmp eq i32 %.028.i.i, %.027.i.i
  %.not60.i.i = select i1 %i.ea, i1 true, i1 %i.eb
  %.not.i33.i = icmp eq i32 %.025.i.i, %.024.i.i
  %or.cond.i.i = select i1 %.not60.i.i, i1 true, i1 %.not.i33.i
  br i1 %or.cond.i.i, label %_select_spec_cores.exit.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %bb.z
  %i.ec = zext i16 %i.dz to i32
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge37.us.i.i, %.preheader.us.preheader.i.i
  %.03140.us.i.i = phi i32 [ %i.fc, %._crit_edge37.us.i.i ], [ %.028.i.i, %.preheader.us.preheader.i.i ] ; 3 uses
  %.03239.us.i.i = phi i32 [ %i.ex, %._crit_edge37.us.i.i ], [ %i.ec, %.preheader.us.preheader.i.i ]
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.us.i.i, %.preheader.us.i.i
  %.03035.us.i.i = phi i32 [ %.025.i.i, %.preheader.us.i.i ], [ %i.ey, %._crit_edge.us.i.i ] ; 3 uses
  %.134.us.i.i = phi i32 [ %.03239.us.i.i, %.preheader.us.i.i ], [ %i.ex, %._crit_edge.us.i.i ]
  %i.ed = load ptr, ptr @conf, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4184
  %i.ef = load i16, ptr %i.ee, align 8
  %i.eg = zext i16 %i.ef to i32
  %i.eh = mul nsw i32 %.03035.us.i.i, %i.eg
  %i.ei = add nsw i32 %i.eh, %.03140.us.i.i       ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 4158
  %i.ek = load i16, ptr %i.ej, align 2            ; 2 uses
  %.not43.i.i = icmp eq i16 %i.ek, 0
  br i1 %.not43.i.i, label %._crit_edge.us.i.i, label %.lr.ph.us.preheader.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %bb.aa
  %i.el = zext i16 %i.ek to i32
  %i.em = mul nsw i32 %i.ei, %i.el
  %i.en = sext i32 %i.em to i64
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph.us.i.i, %.lr.ph.us.preheader.i.i
  %indvars.iv.i34.i = phi i64 [ 0, %.lr.ph.us.preheader.i.i ], [ %indvars.iv.next.i35.i, %.lr.ph.us.i.i ] ; 2 uses
  %i.eo = load ptr, ptr @res_cpu_bitmap, align 8
  %i.ep = add nsw i64 %indvars.iv.i34.i, %i.en
  tail call void @bit_set(ptr noundef %i.eo, i64 noundef %i.ep) #16
  %indvars.iv.next.i35.i = add nuw nsw i64 %indvars.iv.i34.i, 1 ; 2 uses
  %i.eq = load ptr, ptr @conf, align 8            ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4158
  %i.es = load i16, ptr %i.er, align 2
  %i.et = zext i16 %i.es to i64
  %i.eu = icmp samesign ult i64 %indvars.iv.next.i35.i, %i.et
  br i1 %i.eu, label %.lr.ph.us.i.i, label %._crit_edge.us.loopexit.i.i, !llvm.loop !26

._crit_edge.us.loopexit.i.i:                      ; preds = %.lr.ph.us.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.eq, i64 4184
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 8
  %.pre47.i.i = zext i16 %.pre.i.i to i32
  %.pre48.i.i = mul nsw i32 %.03035.us.i.i, %.pre47.i.i
  %.pre50.i.i = add nsw i32 %.pre48.i.i, %.03140.us.i.i
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %._crit_edge.us.loopexit.i.i, %bb.aa
  %.pre-phi51.i.i = phi i32 [ %.pre50.i.i, %._crit_edge.us.loopexit.i.i ], [ %i.ei, %bb.aa ]
  %i.ev = load ptr, ptr @res_core_bitmap, align 8
  %i.ew = sext i32 %.pre-phi51.i.i to i64
  tail call void @bit_set(ptr noundef %i.ev, i64 noundef %i.ew) #16
  %i.ex = add nsw i32 %.134.us.i.i, -1            ; 3 uses
  %i.ey = add nsw i32 %.03035.us.i.i, %.023.i.i   ; 2 uses
  %i.ez = icmp ne i32 %i.ex, 0                    ; 2 uses
  %i.fa = icmp ne i32 %i.ey, %.024.i.i
  %i.fb = select i1 %i.ez, i1 %i.fa, i1 false
  br i1 %i.fb, label %bb.aa, label %._crit_edge37.us.i.i, !llvm.loop !27

._crit_edge37.us.i.i:                             ; preds = %._crit_edge.us.i.i
  %i.fc = add nsw i32 %.03140.us.i.i, %.023.i.i   ; 2 uses
  %i.fd = icmp ne i32 %i.fc, %.027.i.i
  %i.fe = select i1 %i.ez, i1 %i.fd, i1 false
  br i1 %i.fe, label %.preheader.us.i.i, label %_select_spec_cores.exit.i, !llvm.loop !28

_select_spec_cores.exit.i:                        ; preds = %._crit_edge37.us.i.i, %bb.z
  %i.ff = load ptr, ptr @res_abs_cores, align 8
  %i.fg = load i32, ptr @res_abs_core_size, align 4
  %i.fh = load ptr, ptr @res_core_bitmap, align 8
  %i.fi = tail call ptr @bit_fmt(ptr noundef %i.ff, i32 noundef %i.fg, ptr noundef %i.fh) #16 ; 0 uses
  %i.fj = load ptr, ptr @res_cpu_bitmap, align 8
  %i.fk = tail call ptr @bit_fmt(ptr noundef nonnull @res_abs_cpus, i32 noundef 256, ptr noundef %i.fj) #16 ; 0 uses
  %i.fl = load ptr, ptr @res_abs_cores, align 8
  %i.fm = tail call i32 @xcpuinfo_abs_to_mac(ptr noundef %i.fl, ptr noundef nonnull @res_mac_cpus) #16
  %.not.i36.not.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i36.not.i, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %_select_spec_cores.exit.i
  %i.fn = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.226) #16 ; 0 uses
  tail call void @slurm_xfree(ptr noundef nonnull @res_abs_cores) #16
  tail call void @slurm_xfree(ptr noundef nonnull @res_mac_cpus) #16
  %i.fo = load ptr, ptr @res_core_bitmap, align 8
  %.not.i38.i = icmp eq ptr %i.fo, null
  br i1 %.not.i38.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @slurm_bit_free(ptr noundef nonnull @res_core_bitmap) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store ptr null, ptr @res_core_bitmap, align 8
  %i.fp = load ptr, ptr @res_cpu_bitmap, align 8
  %.not1.i39.i = icmp eq ptr %i.fp, null
  br i1 %.not1.i39.i, label %_resource_spec_fini.exit40.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @slurm_bit_free(ptr noundef nonnull @res_cpu_bitmap) #16
  br label %_resource_spec_fini.exit40.i

_resource_spec_fini.exit40.i:                     ; preds = %bb.ae, %bb.ad
  store ptr null, ptr @res_cpu_bitmap, align 8
  br label %bb.br

bb.af:                                            ; preds = %_select_spec_cores.exit.i, %_validate_and_convert_cpu_list.exit.i
  %i.fq = tail call i32 @getpid() #16             ; 2 uses
  %i.fr = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1520), align 8
  %i.fs = and i32 %i.fr, 262144                   ; 2 uses
  %.not23.i = icmp eq i32 %i.fs, 0
  %i.ft = tail call zeroext i1 @check_corespec_cgroup_job_confinement() #16
  br i1 %i.ft, label %bb.ag, label %bb.ax

bb.ag:                                            ; preds = %bb.af
  %i.fu = tail call i32 @init_system_cpuset_cgroup() #16
  %.not25.i = icmp eq i32 %i.fu, 0
  br i1 %.not25.i, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fv = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.227) #16 ; 0 uses
  tail call void @slurm_xfree(ptr noundef nonnull @res_abs_cores) #16
  tail call void @slurm_xfree(ptr noundef nonnull @res_mac_cpus) #16
  %i.fw = load ptr, ptr @res_core_bitmap, align 8
  %.not.i41.i = icmp eq ptr %i.fw, null
  br i1 %.not.i41.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @slurm_bit_free(ptr noundef nonnull @res_core_bitmap) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store ptr null, ptr @res_core_bitmap, align 8
  %i.fx = load ptr, ptr @res_cpu_bitmap, align 8
  %.not1.i42.i = icmp eq ptr %i.fx, null
  br i1 %.not1.i42.i, label %_resource_spec_fini.exit43.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @slurm_bit_free(ptr noundef nonnull @res_cpu_bitmap) #16
  br label %_resource_spec_fini.exit43.i

_resource_spec_fini.exit43.i:                     ; preds = %bb.ak, %bb.aj
  store ptr null, ptr @res_cpu_bitmap, align 8
  br label %bb.br

bb.al:                                            ; preds = %bb.ag
  br i1 %.not23.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.fy = load i32, ptr @ncpus, align 4
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = tail call ptr @bit_alloc(i64 noundef %i.fz) #16 ; 4 uses
  store ptr %i.ga, ptr %i.a, align 8
  %i.gb = load ptr, ptr @res_mac_cpus, align 8
  %i.gc = tail call i32 @bit_unfmt(ptr noundef %i.ga, ptr noundef %i.gb) #16 ; 0 uses
  tail call void @bit_not(ptr noundef %i.ga) #16
  %i.gd = call ptr @bit_fmt(ptr noundef nonnull %i.b, i32 noundef 1024, ptr noundef %i.ga) #16 ; 0 uses
  %i.ge = load ptr, ptr %i.a, align 8
  %.not26.i = icmp eq ptr %i.ge, null
  br i1 %.not26.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  store ptr null, ptr %i.a, align 8
  %i.gf = call i32 @set_system_cgroup_cpus(ptr noundef nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.gg = load ptr, ptr @res_mac_cpus, align 8
  %i.gh = tail call i32 @set_system_cgroup_cpus(ptr noundef %i.gg) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.016.i = phi i32 [ %i.gf, %bb.ao ], [ %i.gh, %bb.ap ]
  %.not27.i = icmp eq i32 %.016.i, 0
  br i1 %.not27.i, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gi = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.228) #16 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull @res_abs_cores) #16
  call void @slurm_xfree(ptr noundef nonnull @res_mac_cpus) #16
  %i.gj = load ptr, ptr @res_core_bitmap, align 8
  %.not.i44.i = icmp eq ptr %i.gj, null
  br i1 %.not.i44.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @slurm_bit_free(ptr noundef nonnull @res_core_bitmap) #16
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  store ptr null, ptr @res_core_bitmap, align 8
  %i.gk = load ptr, ptr @res_cpu_bitmap, align 8
  %.not1.i45.i = icmp eq ptr %i.gk, null
  br i1 %.not1.i45.i, label %_resource_spec_fini.exit46.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @slurm_bit_free(ptr noundef nonnull @res_cpu_bitmap) #16
  br label %_resource_spec_fini.exit46.i

_resource_spec_fini.exit46.i:                     ; preds = %bb.au, %bb.at
  store ptr null, ptr @res_cpu_bitmap, align 8
  br label %bb.br

bb.av:                                            ; preds = %bb.aq
  %i.gl = call i32 @attach_system_cpuset_pid(i32 noundef %i.fq) #16
  %.not28.i = icmp eq i32 %i.gl, 0
  br i1 %.not28.i, label %bb.bj, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gm = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.229) #16 ; 0 uses
  call fastcc void @_resource_spec_fini()
  br label %bb.br

bb.ax:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.gn = tail call ptr @xcpuset_alloc() #16      ; 4 uses
  store ptr %i.gn, ptr %i.c, align 8
  %i.go = load i32, ptr @ncpus, align 4
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = tail call ptr @bit_alloc(i64 noundef %i.gp) #16 ; 4 uses
  store ptr %i.gq, ptr %i.a, align 8
  %i.gr = load ptr, ptr @res_mac_cpus, align 8
  %i.gs = tail call i32 @bit_unfmt(ptr noundef %i.gq, ptr noundef %i.gr) #16 ; 0 uses
  %i.gt = load i32, ptr @ncpus, align 4
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ax
  %.lobit.i = lshr exact i32 %i.fs, 18
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bb, %.lr.ph.i
  %i.gx = phi ptr [ %i.gq, %.lr.ph.i ], [ %i.hk, %bb.bb ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bb ] ; 5 uses
  %i.gy = tail call i32 @slurm_bit_test(ptr noundef %i.gx, i64 noundef %indvars.iv.i) #16
  %i.gz = icmp ne i32 %i.gy, 0
  %i.ha = zext i1 %i.gz to i32
  %.not24.i = icmp eq i32 %.lobit.i, %i.ha
  br i1 %.not24.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hb = lshr i64 %indvars.iv.i, 3
  %i.hc = load i64, ptr %i.gv, align 8
  %i.hd = icmp ult i64 %i.hb, %i.hc
  br i1 %i.hd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.he = and i64 %indvars.iv.i, 63
  %i.hf = shl nuw i64 1, %i.he
  %i.hg = lshr i64 %indvars.iv.i, 6
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.hg ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8
  %i.hj = or i64 %i.hi, %i.hf
  store i64 %i.hj, ptr %i.hh, align 8
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.hk = phi ptr [ %.pre.i, %bb.ba ], [ %i.gx, %bb.az ], [ %i.gx, %bb.ay ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hl = load i32, ptr @ncpus, align 4
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next.i, %i.hm
  br i1 %i.hn, label %bb.ay, label %._crit_edge.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %bb.bb, %bb.ax
  %i.ho = phi ptr [ %i.gq, %bb.ax ], [ %i.hk, %bb.bb ]
  %.not21.i = icmp eq ptr %i.ho, null
  br i1 %.not21.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %._crit_edge.i
  store ptr null, ptr %i.a, align 8
  %i.hp = call i32 @xsetaffinity(i32 noundef %i.fq, ptr noundef %i.gn) #16
  %.not22.i = icmp eq i32 %i.hp, 0
  br i1 %.not22.i, label %.thread.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.230) #16 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull @res_abs_cores) #16
  call void @slurm_xfree(ptr noundef nonnull @res_mac_cpus) #16
  %i.hr = load ptr, ptr @res_core_bitmap, align 8
  %.not.i47.i = icmp eq ptr %i.hr, null
  br i1 %.not.i47.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @slurm_bit_free(ptr noundef nonnull @res_core_bitmap) #16
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store ptr null, ptr @res_core_bitmap, align 8
  %i.hs = load ptr, ptr @res_cpu_bitmap, align 8
  %.not1.i48.i = icmp eq ptr %i.hs, null
  br i1 %.not1.i48.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @slurm_bit_free(ptr noundef nonnull @res_cpu_bitmap) #16
  br label %bb.bi

.thread.i:                                        ; preds = %bb.bd
  call void @slurm_xfree(ptr noundef nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store ptr null, ptr @res_cpu_bitmap, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.br

bb.bj:                                            ; preds = %.thread.i, %bb.av
  %i.ht = call i32 @get_log_level() #16
  %i.hu = icmp sgt i32 %i.ht, 2
  br i1 %i.hu, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.231, ptr noundef nonnull @res_abs_cpus) #16
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.hv = call i32 @get_log_level() #16
  %i.hw = icmp sgt i32 %i.hv, 2
  br i1 %i.hw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.hx = load ptr, ptr @res_mac_cpus, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.232, ptr noundef %i.hx) #16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  call void @slurm_xfree(ptr noundef nonnull @res_abs_cores) #16
  call void @slurm_xfree(ptr noundef nonnull @res_mac_cpus) #16
  %i.hy = load ptr, ptr @res_core_bitmap, align 8
  %.not.i50.i = icmp eq ptr %i.hy, null
  br i1 %.not.i50.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @slurm_bit_free(ptr noundef nonnull @res_core_bitmap) #16
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  store ptr null, ptr @res_core_bitmap, align 8
  %i.hz = load ptr, ptr @res_cpu_bitmap, align 8
  %.not1.i51.i = icmp eq ptr %i.hz, null
  br i1 %.not1.i51.i, label %_resource_spec_fini.exit52.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @slurm_bit_free(ptr noundef nonnull @res_cpu_bitmap) #16
  br label %_resource_spec_fini.exit52.i

_resource_spec_fini.exit52.i:                     ; preds = %bb.bq, %bb.bp
  store ptr null, ptr @res_cpu_bitmap, align 8
  br label %_core_spec_init.exit

_core_spec_init.exit:                             ; preds = %bb.c, %bb.d, %_resource_spec_fini.exit52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.bs

bb.br:                                            ; preds = %_resource_spec_fini.exit40.i, %_resource_spec_fini.exit.i, %_resource_spec_fini.exit43.i, %_resource_spec_fini.exit46.i, %bb.aw, %bb.bi, %_resource_spec_fini.exit32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ia = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.219) #16 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %_core_spec_init.exit, %bb.br
  %i.ib = load ptr, ptr @conf, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4176
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %i.if = call i32 @get_log_level() #16
  %i.ig = icmp sgt i32 %i.if, 4
  br i1 %i.ig, label %bb.bu, label %_memory_spec_init.exit.thread

bb.bu:                                            ; preds = %bb.bt
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.234) #16
  br label %_memory_spec_init.exit.thread

bb.bv:                                            ; preds = %bb.bs
  %i.ih = call zeroext i1 @cgroup_memcg_job_confinement() #16
  br i1 %i.ih, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ii = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1200), align 8
  %i.ij = and i16 %i.ii, 16
  %.not.i2 = icmp eq i16 %i.ij, 0
  br i1 %.not.i2, label %_memory_spec_init.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ik = load ptr, ptr @conf, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4176
  %i.im = load i64, ptr %i.il, align 8
  %i.in = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.235, i64 noundef %i.im) #16 ; 0 uses
  br label %_memory_spec_init.exit.thread

bb.by:                                            ; preds = %bb.bv
  %i.io = call i32 @init_system_memory_cgroup() #16
  %.not2.i = icmp eq i32 %i.io, 0
  br i1 %.not2.i, label %bb.bz, label %_memory_spec_init.exit

bb.bz:                                            ; preds = %bb.by
  %i.ip = load ptr, ptr @conf, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4176
  %i.ir = load i64, ptr %i.iq, align 8
  %i.is = call i32 @set_system_cgroup_mem_limit(i64 noundef %i.ir) #16
  %.not3.i = icmp eq i32 %i.is, 0
  br i1 %.not3.i, label %bb.ca, label %_memory_spec_init.exit

bb.ca:                                            ; preds = %bb.bz
  %i.it = call i32 @getpid() #16
  %i.iu = call i32 @attach_system_memory_pid(i32 noundef %i.it) #16
  %.not4.i = icmp eq i32 %i.iu, 0
  br i1 %.not4.i, label %bb.cb, label %_memory_spec_init.exit

bb.cb:                                            ; preds = %bb.ca
  %i.iv = call i32 @get_log_level() #16
  %i.iw = icmp sgt i32 %i.iv, 2
  br i1 %i.iw, label %bb.cc, label %_memory_spec_init.exit.thread

bb.cc:                                            ; preds = %bb.cb
  %i.ix = load ptr, ptr @conf, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4176
  %i.iz = load i64, ptr %i.iy, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.240, i64 noundef %i.iz) #16
  br label %_memory_spec_init.exit.thread

_memory_spec_init.exit:                           ; preds = %bb.ca, %bb.bz, %bb.by, %bb.bw
  %.str.239.sink = phi ptr [ @.str.238, %bb.bz ], [ @.str.237, %bb.by ], [ @.str.236, %bb.bw ], [ @.str.239, %bb.ca ]
  %i.ja = call i32 (ptr, ...) @error(ptr noundef nonnull %.str.239.sink) #16 ; 0 uses
  %i.jb = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.220) #16 ; 0 uses
  br label %_memory_spec_init.exit.thread

_memory_spec_init.exit.thread:                    ; preds = %bb.cb, %bb.cc, %bb.bu, %bb.bx, %bb.bt, %_memory_spec_init.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_print_conf() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = tail call i32 @get_log_level() #16
  %i.d = icmp slt i32 %i.c, 7
  br i1 %i.d, label %bb.bu, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @slurm_conf_lock() #16     ; 14 uses
  %i.f = tail call i32 @get_log_level() #16
  %i.g = icmp sgt i32 %i.f, 6
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @conf, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4264
  %i.j = load ptr, ptr %i.i, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.241, ptr noundef %i.j) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call i32 @get_log_level() #16
  %i.l = icmp sgt i32 %i.k, 6
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr @conf, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4272
  %i.o = load ptr, ptr %i.n, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.242, ptr noundef %i.o) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = tail call i32 @get_log_level() #16
  %i.q = icmp sgt i32 %i.p, 6
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @conf, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4280
  %i.t = load ptr, ptr %i.s, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.243, ptr noundef %i.t) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = tail call i32 @get_log_level() #16
  %i.v = icmp sgt i32 %i.u, 6
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.x = load ptr, ptr %i.w, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.244, ptr noundef %i.x) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = tail call i32 @get_log_level() #16
  %i.z = icmp sgt i32 %i.y, 6
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr @conf, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4296
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.245, ptr noundef %i.ac) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = tail call i32 @get_log_level() #16
  %i.ae = icmp sgt i32 %i.ad, 6
  br i1 %i.ae, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 1344
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = zext i16 %i.ag to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.246, i32 noundef %i.ah) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ai = tail call i32 @get_log_level() #16
  %i.aj = icmp sgt i32 %i.ai, 6
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr @conf, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4152
  %i.am = load i16, ptr %i.al, align 8
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4186
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 4196
  %i.as = load i16, ptr %i.ar, align 4
  %i.at = zext i16 %i.as to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.247, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %i.at) #16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.au = tail call i32 @get_log_level() #16
  %i.av = icmp sgt i32 %i.au, 6
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr @conf, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4154
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = zext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 4188
  %i.bb = load i16, ptr %i.ba, align 4
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 4198
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = zext i16 %i.be to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.248, i32 noundef %i.az, i32 noundef %i.bc, i32 noundef %i.bf) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bg = tail call i32 @get_log_level() #16
  %i.bh = icmp sgt i32 %i.bg, 6
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = load ptr, ptr @conf, align 8            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4156
  %i.bk = load i16, ptr %i.bj, align 4
  %i.bl = zext i16 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 4190
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 4200
  %i.bq = load i16, ptr %i.bp, align 8
  %i.br = zext i16 %i.bq to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.249, i32 noundef %i.bl, i32 noundef %i.bo, i32 noundef %i.br) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bs = tail call i32 @get_log_level() #16
  %i.bt = icmp sgt i32 %i.bs, 6
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr @conf, align 8            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4184
  %i.bw = load i16, ptr %i.bv, align 8
  %i.bx = zext i16 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4192
  %i.bz = load i16, ptr %i.by, align 8
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 4202
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = zext i16 %i.cc to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.250, i32 noundef %i.bx, i32 noundef %i.ca, i32 noundef %i.cd) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ce = tail call i32 @get_log_level() #16
  %i.cf = icmp sgt i32 %i.ce, 6
  br i1 %i.cf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cg = load ptr, ptr @conf, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4158
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = zext i16 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 4194
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = zext i16 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 4204
  %i.co = load i16, ptr %i.cn, align 4
  %i.cp = zext i16 %i.co to i32
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.251, i32 noundef %i.cj, i32 noundef %i.cm, i32 noundef %i.cp) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cq = load ptr, ptr @conf, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4228
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = zext i32 %i.cs to i64
  call void @secs2time_str(i64 noundef %i.ct, ptr noundef nonnull %i.b, i32 noundef 32) #16
  %i.cu = call i32 @get_log_level() #16
  %i.cv = icmp sgt i32 %i.cu, 6
  br i1 %i.cv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cw = load ptr, ptr @conf, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4228
  %i.cy = load i32, ptr %i.cx, align 4
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.252, i32 noundef %i.cy, ptr noundef nonnull %i.b) #16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cz = load ptr, ptr @conf, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4232
  %i.db = load i16, ptr %i.da, align 8
  %.not43 = icmp eq i16 %i.db, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.z ] ; 2 uses
  %i.dc = phi ptr [ %i.dk, %.lr.ph ], [ %i.cz, %bb.z ]
  %i.dd = load ptr, ptr %i.a, align 8
  %.not29 = icmp eq ptr %i.dd, null
  %i.de = select i1 %.not29, ptr @.str.124, ptr @.str.254
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 4240
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv
  %i.di = load i16, ptr %i.dh, align 2
  %i.dj = zext i16 %i.di to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.253, ptr noundef nonnull %i.de, i32 noundef %i.dj) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dk = load ptr, ptr @conf, align 8            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4232
  %i.dm = load i16, ptr %i.dl, align 8
  %i.dn = zext i16 %i.dm to i64
  %i.do = icmp samesign ult i64 %indvars.iv.next, %i.dn
  br i1 %i.do, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.z
  %i.dp = call i32 @get_log_level() #16
  %i.dq = icmp sgt i32 %i.dp, 6
  br i1 %i.dq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %._crit_edge
  %i.dr = load ptr, ptr %i.a, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.255, ptr noundef %i.dr) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  %i.ds = load ptr, ptr @conf, align 8            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4232
  %i.du = load i16, ptr %i.dt, align 8
  %.not44 = icmp eq i16 %i.du, 0
  br i1 %.not44, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.ab, %.lr.ph33
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.lr.ph33 ], [ 0, %bb.ab ] ; 2 uses
  %i.dv = phi ptr [ %i.ed, %.lr.ph33 ], [ %i.ds, %bb.ab ]
  %i.dw = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.dw, null
  %i.dx = select i1 %.not, ptr @.str.124, ptr @.str.254
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 4248
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %indvars.iv48
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = zext i16 %i.eb to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.253, ptr noundef nonnull %i.dx, i32 noundef %i.ec) #16
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 2 uses
  %i.ed = load ptr, ptr @conf, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4232
  %i.ef = load i16, ptr %i.ee, align 8
  %i.eg = zext i16 %i.ef to i64
  %i.eh = icmp samesign ult i64 %indvars.iv.next49, %i.eg
  br i1 %i.eh, label %.lr.ph33, label %._crit_edge34, !llvm.loop !31

._crit_edge34:                                    ; preds = %.lr.ph33, %bb.ab
  %i.ei = call i32 @get_log_level() #16
  %i.ej = icmp sgt i32 %i.ei, 6
  br i1 %i.ej, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %._crit_edge34
  %i.ek = load ptr, ptr %i.a, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.256, ptr noundef %i.ek) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge34
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  %i.el = call i32 @get_log_level() #16
  %i.em = icmp sgt i32 %i.el, 6
  br i1 %i.em, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.en = load ptr, ptr @conf, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4208
  %i.ep = load i64, ptr %i.eo, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.257, i64 noundef %i.ep) #16
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eq = call i32 @get_log_level() #16
  %i.er = icmp sgt i32 %i.eq, 6
  br i1 %i.er, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.es = load ptr, ptr @conf, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4216
  %i.eu = load i64, ptr %i.et, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.258, i64 noundef %i.eu) #16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ev = call i32 @get_log_level() #16
  %i.ew = icmp sgt i32 %i.ev, 6
  br i1 %i.ew, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ex = load ptr, ptr @conf, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4224
  %i.ez = load i32, ptr %i.ey, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.259, i32 noundef %i.ez) #16
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fa = getelementptr inbounds nuw i8, ptr %i.e, i64 376 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8
  %.not45 = icmp eq i32 %i.fb, 0
  br i1 %.not45, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.aj
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  br label %bb.ak

._crit_edge38:                                    ; preds = %bb.am, %bb.aj
  %i.fd = call i32 @get_log_level() #16
  %i.fe = icmp sgt i32 %i.fd, 6
  br i1 %i.fe, label %bb.an, label %bb.ao

bb.ak:                                            ; preds = %.lr.ph37, %bb.am
  %indvars.iv51 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next52, %bb.am ] ; 3 uses
  %i.ff = call i32 @get_log_level() #16
  %i.fg = icmp sgt i32 %i.ff, 6
  br i1 %i.fg, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fh = load ptr, ptr %i.fc, align 8
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv51
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = trunc nuw nsw i64 %indvars.iv51 to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.260, i32 noundef %i.fk, ptr noundef %i.fj) #16
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.fl = load i32, ptr %i.fa, align 8
  %i.fm = zext i32 %i.fl to i64
  %i.fn = icmp samesign ult i64 %indvars.iv.next52, %i.fm
  br i1 %i.fn, label %bb.ak, label %._crit_edge38, !llvm.loop !32

bb.an:                                            ; preds = %._crit_edge38
  %i.fo = load ptr, ptr @conf, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4320
  %i.fq = load ptr, ptr %i.fp, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.261, ptr noundef %i.fq) #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge38
  %i.fr = call i32 @get_log_level() #16
  %i.fs = icmp sgt i32 %i.fr, 6
  br i1 %i.fs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ft = getelementptr inbounds nuw i8, ptr %i.e, i64 456
  %i.fu = load ptr, ptr %i.ft, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.262, ptr noundef %i.fu) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.fv = call i32 @get_log_level() #16
  %i.fw = icmp sgt i32 %i.fv, 6
  br i1 %i.fw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.fy = load i16, ptr %i.fx, align 8
  %i.fz = zext i16 %i.fy to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.263, i32 noundef %i.fz) #16
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ga = call i32 @get_log_level() #16
  %i.gb = icmp sgt i32 %i.ga, 6
  br i1 %i.gb, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gc = load ptr, ptr @conf, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4264
  %i.ge = load ptr, ptr %i.gd, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.241, ptr noundef %i.ge) #16
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gf = call i32 @get_log_level() #16
  %i.gg = icmp sgt i32 %i.gf, 6
  br i1 %i.gg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gh = load ptr, ptr @conf, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4376
  %i.gj = load i16, ptr %i.gi, align 8
  %i.gk = zext i16 %i.gj to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.264, i32 noundef %i.gk) #16
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gl = getelementptr inbounds nuw i8, ptr %i.e, i64 1000 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8
  %.not46 = icmp eq i32 %i.gm, 0
  br i1 %.not46, label %._crit_edge42, label %.lr.ph41

.lr.ph41:                                         ; preds = %bb.aw
  %i.gn = getelementptr inbounds nuw i8, ptr %i.e, i64 992
  br label %bb.ax

._crit_edge42:                                    ; preds = %bb.az, %bb.aw
  %i.go = call i32 @get_log_level() #16
  %i.gp = icmp sgt i32 %i.go, 6
  br i1 %i.gp, label %bb.ba, label %bb.bb

bb.ax:                                            ; preds = %.lr.ph41, %bb.az
  %indvars.iv54 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next55, %bb.az ] ; 3 uses
  %i.gq = call i32 @get_log_level() #16
  %i.gr = icmp sgt i32 %i.gq, 6
  br i1 %i.gr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gs = load ptr, ptr %i.gn, align 8
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv54
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = trunc nuw nsw i64 %indvars.iv54 to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.265, i32 noundef %i.gv, ptr noundef %i.gu) #16
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.gw = load i32, ptr %i.gl, align 8
  %i.gx = zext i32 %i.gw to i64
  %i.gy = icmp samesign ult i64 %indvars.iv.next55, %i.gx
  br i1 %i.gy, label %bb.ax, label %._crit_edge42, !llvm.loop !33

bb.ba:                                            ; preds = %._crit_edge42
  %i.gz = load ptr, ptr @conf, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4344
  %i.hb = load ptr, ptr %i.ha, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.266, ptr noundef %i.hb) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %._crit_edge42
  %i.hc = call i32 @get_log_level() #16
  %i.hd = icmp sgt i32 %i.hc, 6
  br i1 %i.hd, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.he = load ptr, ptr @conf, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4368
  %i.hg = load ptr, ptr %i.hf, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.267, ptr noundef %i.hg) #16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hh = call i32 @get_log_level() #16
  %i.hi = icmp sgt i32 %i.hh, 6
  br i1 %i.hi, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hj = load ptr, ptr @conf, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4360
  %i.hl = load ptr, ptr %i.hk, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.268, ptr noundef %i.hl) #16
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.hm = call i32 @get_log_level() #16
  %i.hn = icmp sgt i32 %i.hm, 6
  br i1 %i.hn, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ho = getelementptr inbounds nuw i8, ptr %i.e, i64 1400
  %i.hp = load i16, ptr %i.ho, align 8
  %i.hq = zext i16 %i.hp to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.269, i32 noundef %i.hq) #16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.hr = call i32 @get_log_level() #16
  %i.hs = icmp sgt i32 %i.hr, 6
  br i1 %i.hs, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ht = load ptr, ptr @conf, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4336
  %i.hv = load ptr, ptr %i.hu, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.270, ptr noundef %i.hv) #16
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.hw = call i32 @get_log_level() #16
  %i.hx = icmp sgt i32 %i.hw, 6
  br i1 %i.hx, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.hy = getelementptr inbounds nuw i8, ptr %i.e, i64 1232
  %i.hz = load i32, ptr %i.hy, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.271, i32 noundef %i.hz) #16
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ia = call i32 @get_log_level() #16
  %i.ib = icmp sgt i32 %i.ia, 6
  br i1 %i.ib, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ic = getelementptr inbounds nuw i8, ptr %i.e, i64 1528
  %i.id = load ptr, ptr %i.ic, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.272, ptr noundef %i.id) #16
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ie = call i32 @get_log_level() #16
  %i.if = icmp sgt i32 %i.ie, 6
  br i1 %i.if, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ig = getelementptr inbounds nuw i8, ptr %i.e, i64 1504
  %i.ih = load ptr, ptr %i.ig, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.273, ptr noundef %i.ih) #16
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ii = call i32 @get_log_level() #16
  %i.ij = icmp sgt i32 %i.ii, 6
  br i1 %i.ij, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ik = getelementptr inbounds nuw i8, ptr %i.e, i64 1520
  %i.il = load i32, ptr %i.ik, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.274, i32 noundef %i.il) #16
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.im = call i32 @get_log_level() #16
  %i.in = icmp sgt i32 %i.im, 6
  br i1 %i.in, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.io = getelementptr inbounds nuw i8, ptr %i.e, i64 284
  %i.ip = load i32, ptr %i.io, align 4
  %i.iq = and i32 %i.ip, 16
  %i.ir = zext nneg i32 %i.iq to i64
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.275, i64 noundef %i.ir) #16
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  call void @slurm_conf_unlock() #16
  br label %bb.bu

bb.bu:                                            ; preds = %bb.a, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

declare i32 @proctrack_g_init() local_unnamed_addr #3

declare i32 @task_g_init() local_unnamed_addr #3

declare i32 @spank_slurmd_init() local_unnamed_addr #3

declare i32 @cred_g_init() local_unnamed_addr #3

declare i32 @compress_g_init() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @rlimits_use_max_nofile() local_unnamed_addr #3

declare i32 @stepd_cleanup_sockets(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_stepd_cleanup_batch_dirs(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.c = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #16
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.276, ptr noundef %0) #16 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 61440
  %i.i = icmp eq i32 %i.h, 16384
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.277, ptr noundef %0) #16 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.k = tail call noalias ptr @opendir(ptr noundef %0) ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.m = tail call ptr @readdir(ptr noundef nonnull %i.k) #16 ; 2 uses
  %.not1 = icmp eq ptr %i.m, null
  br i1 %.not1, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.278, ptr noundef %0) #16 ; 0 uses
  br label %bb.l

.lr.ph:                                           ; preds = %.preheader, %bb.k
  %i.o = phi ptr [ %i.ac, %bb.k ], [ %i.m, %.preheader ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 19 ; 2 uses
  %i.q = call i32 @xstrncmp(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.279, i64 noundef 3) #16
  %.not13 = icmp eq i32 %i.q, 0
  br i1 %.not13, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 22
  %i.s = load i8, ptr %i.r, align 1
  %i.t = add i8 %i.s, -48
  %or.cond = icmp ult i8 %i.t, 10
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.280, ptr noundef %0, ptr noundef nonnull %i.p) #16
  %i.u = load ptr, ptr %i.a, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.281, ptr noundef %i.u) #16
  %i.v = call i32 @get_log_level() #16
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.282, ptr noundef nonnull @__func__._stepd_cleanup_batch_dirs, ptr noundef %i.x) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = load ptr, ptr %i.b, align 8
  %i.z = call i32 @unlink(ptr noundef %i.y) #16   ; 0 uses
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = call i32 @rmdir(ptr noundef %i.aa) #16  ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @slurm_xfree(ptr noundef nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %.lr.ph
  %i.ac = call ptr @readdir(ptr noundef nonnull %i.k) #16 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.k, %.preheader
  %i.ad = call i32 @closedir(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.f, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @_set_work_dir() unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load ptr, ptr @conf, align 8             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4320
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.g = tail call ptr @xstrdup(ptr noundef nonnull %i.d) #16 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8
  %i.h = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.g, i32 noundef 47) #21 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.g
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 0, ptr %i.j, align 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %i.h, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = tail call i32 @access(ptr noundef nonnull %i.g, i32 noundef 2) #16
  %.not8 = icmp eq i32 %i.k, 0
  br i1 %.not8, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @chdir(ptr noundef nonnull %i.g) #16
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %.thread13

.thread13:                                        ; preds = %bb.g
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread16

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.n = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.283, ptr noundef nonnull %i.g) #16 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.pre = load ptr, ptr @conf, align 8
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.h
  %i.o = phi ptr [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %.pre, %bb.h ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4360
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call i32 @access(ptr noundef %i.q, i32 noundef 2) #16
  %.not9 = icmp eq i32 %i.r, 0
  br i1 %.not9, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  %i.s = load ptr, ptr @conf, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4360
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call i32 @chdir(ptr noundef %i.u) #16
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %.thread16

bb.j:                                             ; preds = %bb.i, %.thread
  %i.x = load ptr, ptr @conf, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4360
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.283, ptr noundef %i.z) #16 ; 0 uses
  %i.ab = call i32 @access(ptr noundef nonnull @.str.284, i32 noundef 2) #16
  %.not10 = icmp eq i32 %i.ab, 0
  br i1 %.not10, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = call i32 @chdir(ptr noundef nonnull @.str.284) #16
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.285) #16 ; 0 uses
  br label %.thread16

bb.m:                                             ; preds = %bb.k
  %i.af = call i32 @get_log_level() #16
  %i.ag = icmp sgt i32 %i.af, 2
  br i1 %i.ag, label %bb.n, label %.thread16

bb.n:                                             ; preds = %bb.m
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.286) #16
  br label %.thread16

.thread16:                                        ; preds = %bb.i, %.thread13, %bb.m, %bb.n, %bb.l
  %.04 = phi i32 [ -1, %bb.l ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %.thread13 ], [ 0, %bb.i ]
  ret i32 %.04
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @fetch_config(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare i32 @sleep(i32 noundef) local_unnamed_addr #3

declare ptr @slurm_conf_expand_slurmd_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @write_configs_to_conf_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @slurm_free_config_response_msg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @gethostname(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @slurm_conf_get_nodename(ptr noundef) local_unnamed_addr #3

declare ptr @slurm_conf_get_aliased_nodename() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_spec_override(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1520), align 8
  %i.b = and i32 %i.a, 2097152
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @xcpuinfo_get_cpuspec() #16 ; 3 uses
  %.not12 = icmp eq ptr %i.c, null
  br i1 %.not12, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @get_log_level() #16
  %i.e = icmp sgt i32 %i.d, 2
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @conf, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4160
  %i.h = load ptr, ptr %i.g, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.187, ptr noundef %i.h, ptr noundef nonnull %i.c) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load ptr, ptr @conf, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4160
  tail call void @slurm_xfree(ptr noundef nonnull %i.j) #16
  %i.k = load ptr, ptr @conf, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4160
  store ptr %i.c, ptr %i.l, align 8
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1520), align 8
  %i.n = and i32 %i.m, -262145
  store i32 %i.n, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1520), align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.o = tail call ptr @cgroup_g_constrain_get(i32 noundef 2, i32 noundef 1) #16 ; 3 uses
  %.not13 = icmp eq ptr %i.o, null
  br i1 %.not13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq i64 %i.q, -2
  br i1 %i.r, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = tail call i32 @get_log_level() #16
  %i.t = icmp sgt i32 %i.s, 2
  br i1 %i.t, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.188) #16
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.u = lshr i64 %i.q, 20                        ; 2 uses
  store i64 %i.u, ptr %i.p, align 8
  %i.v = sub i64 %0, %i.u
  %i.w = load ptr, ptr @conf, align 8
end_hunk_1
begin_hunk_2_@_resource_spec_fini:bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @slurm_bit_free(ptr noundef nonnull @res_cpu_bitmap) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr @res_cpu_bitmap, align 8
  ret void
}

declare zeroext i1 @check_corespec_cgroup_job_confinement() local_unnamed_addr #3

declare i32 @init_system_cpuset_cgroup() local_unnamed_addr #3

declare i32 @bit_unfmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bit_not(ptr noundef) local_unnamed_addr #3

declare ptr @bit_fmt(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @slurm_bit_free(ptr noundef) local_unnamed_addr #3

declare i32 @set_system_cgroup_cpus(ptr noundef) local_unnamed_addr #3

declare i32 @attach_system_cpuset_pid(i32 noundef) local_unnamed_addr #3

declare ptr @xcpuset_alloc() local_unnamed_addr #3

declare i32 @slurm_bit_test(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @xsetaffinity(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @bit_set(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @init_system_memory_cgroup() local_unnamed_addr #3

declare i32 @set_system_cgroup_mem_limit(i64 noundef) local_unnamed_addr #3

declare i32 @attach_system_memory_pid(i32 noundef) local_unnamed_addr #3

declare void @secs2time_str(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare ptr @readdir(ptr noundef) local_unnamed_addr #3

declare i32 @xstrncmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @rmdir(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @chdir(ptr noundef) local_unnamed_addr #4

declare void @compress_g_fini() local_unnamed_addr #3

declare i32 @assoc_mgr_fini(i1 noundef zeroext) local_unnamed_addr #3

declare i32 @mpi_fini() local_unnamed_addr #3

declare i32 @node_features_g_fini() local_unnamed_addr #3

declare i32 @jobacct_gather_fini() local_unnamed_addr #3

declare i32 @acct_gather_profile_fini() local_unnamed_addr #3

declare void @cred_state_fini() local_unnamed_addr #3

declare i32 @switch_g_fini() local_unnamed_addr #3

declare i32 @task_g_fini() local_unnamed_addr #3

declare i32 @slurm_conf_destroy() local_unnamed_addr #3

declare i32 @proctrack_g_fini() local_unnamed_addr #3

declare i32 @auth_g_fini() local_unnamed_addr #3

declare i32 @hash_g_fini() local_unnamed_addr #3

declare i32 @certmgr_g_fini() local_unnamed_addr #3

declare void @node_fini2() local_unnamed_addr #3

declare i32 @gres_fini() local_unnamed_addr #3

declare i32 @prep_g_fini() local_unnamed_addr #3

declare i32 @topology_g_destroy_config() local_unnamed_addr #3

declare i32 @topology_g_fini() local_unnamed_addr #3

declare void @job_mem_limit_fini() local_unnamed_addr #3

declare void @forward_fini() local_unnamed_addr #3

declare i32 @conn_g_fini() local_unnamed_addr #3

declare i32 @spank_slurmd_exit() local_unnamed_addr #3

declare void @cpu_freq_fini() local_unnamed_addr #3

declare i32 @namespace_g_fini() local_unnamed_addr #3

declare i32 @acct_gather_conf_destroy() local_unnamed_addr #3

declare void @serializer_g_fini() local_unnamed_addr #3

declare i32 @cgroup_g_fini() local_unnamed_addr #3

declare i32 @read_pidfile(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @fd_get_readw_lock(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { cold }
attributes #21 = { nounwind willreturn memory(read) }

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
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = distinct !{!12, !8, !9}
!13 = distinct !{!13, !8, !9}
!14 = distinct !{null}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !8, !9}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !8, !9}
!22 = distinct !{!22, !8, !9}
!23 = distinct !{!23, !8, !9}
!24 = distinct !{!24, !8, !9}
!25 = distinct !{!25, !8, !9}
!26 = distinct !{!26, !8, !9}
!27 = distinct !{!27, !8, !9}
!28 = distinct !{!28, !8, !9}
!29 = distinct !{!29, !8, !9}
!30 = distinct !{!30, !8, !9}
!31 = distinct !{!31, !8, !9}
!32 = distinct !{!32, !8, !9}
!33 = distinct !{!33, !8, !9}
!34 = distinct !{!34, !8, !9}
end_hunk_2
