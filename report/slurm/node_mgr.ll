Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/node_mgr?download=true
inline.NumInlined: 54
inline.NumDeleted: 22
begin_hunk_0_@_build_node_callback:bb.a

bb.p:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load i16, ptr %i.by, align 8
  %i.ca = zext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 280
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 208
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call i32 @gres_g_node_config_load(i32 noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.ce, ptr noundef null, ptr noundef null) #13 ; 2 uses
  %.not33 = icmp eq i32 %i.cf, 0
  br i1 %.not33, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  %i.ck = load i16, ptr %i.cj, align 8
  %i.cl = zext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cn = load i16, ptr %i.cm, align 4
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  %i.cq = load i16, ptr %i.cp, align 8
  %i.cr = zext i16 %i.cq to i32
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 284), align 4
  %i.ct = trunc i32 %i.cs to i1
  %i.cu = call i32 @gres_node_config_validate(ptr noundef %i.cg, i32 noundef %i.cl, i32 noundef %i.co, i32 noundef %i.cr, i1 noundef zeroext %i.ct, ptr noundef null) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.g, %bb.q, %bb.p, %bb.a
  %.0 = phi i32 [ %i.b, %bb.a ], [ %i.cf, %bb.p ], [ 2178, %bb.g ], [ %i.cu, %bb.q ] ; 3 uses
  %i.cv = icmp ne i32 %.0, 0
  %i.cw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cx = icmp ne ptr %i.cw, null
  %or.cond3 = select i1 %i.cv, i1 %i.cx, i1 false
  br i1 %or.cond3, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.cy = call fastcc i32 @_delete_node_ptr(ptr noundef %i.cw) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.s, %bb.r
  %.036 = phi i32 [ %.0, %bb.r ], [ %.0, %bb.s ], [ 0, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.036
}

declare void @set_cluster_tres(i1 noundef zeroext) local_unnamed_addr #2

declare void @power_save_set_timeouts(ptr noundef) local_unnamed_addr #2

declare void @power_save_exc_setup() local_unnamed_addr #2

declare i32 @select_g_reconfigure() local_unnamed_addr #2

declare i32 @clusteracct_storage_g_cluster_tres(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2003) i32 @create_dynamic_reg_node(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 23 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8              ; 12 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1184), align 8
  %i.g = tail call ptr @xstrstr(ptr noundef %i.f, ptr noundef nonnull @.str.134) #13
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.135) #13 ; 0 uses
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not56 = icmp eq ptr %i.j, null
  br i1 %.not56, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @slurm_conf_parse_nodeline(ptr noundef nonnull %i.j, ptr noundef nonnull %i.c) #13 ; 7 uses
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.c, align 8
  call void @s_p_hashtbl_destroy(ptr noundef %i.l) #13
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.90, ptr noundef %i.m) #13 ; 0 uses
  br label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.p = call i32 @slurm_conf_nodeset_array(ptr noundef nonnull %i.a) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_validate_nodes_vs_nodeset.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call ptr @hostlist_create(ptr noundef nonnull %i.o) #13 ; 3 uses
  %.not1516.i = icmp sgt i32 %i.p, 0
  br i1 %.not1516.i, label %.lr.ph.preheader.i, label %_validate_nodes_vs_nodeset.exit.thread72

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  br label %.lr.ph.i

bb.h:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_validate_nodes_vs_nodeset.exit.thread72, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call i32 @hostlist_find(ptr noundef %i.q, ptr noundef %i.v) #13
  %.not14.i = icmp eq i32 %i.w, -1
  br i1 %.not14.i, label %bb.h, label %bb.i

_validate_nodes_vs_nodeset.exit.thread72:         ; preds = %bb.h, %bb.g
  call void @hostlist_destroy(ptr noundef %i.q) #13
  br label %_validate_nodes_vs_nodeset.exit.thread

bb.i:                                             ; preds = %.lr.ph.i
  %i.x = load ptr, ptr %i.a, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.147, ptr noundef %i.ab) #13 ; 0 uses
  call void @hostlist_destroy(ptr noundef %i.q) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ad = load ptr, ptr %i.c, align 8
  call void @s_p_hashtbl_destroy(ptr noundef %i.ad) #13
  br label %bb.ag

_validate_nodes_vs_nodeset.exit.thread:           ; preds = %bb.f, %_validate_nodes_vs_nodeset.exit.thread72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ae = load i32, ptr @slurmctld_tres_cnt, align 4
  %i.af = call ptr @config_record_from_conf_node(ptr noundef nonnull %i.k, i32 noundef %i.ae) #13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not59 = icmp eq ptr %i.ah, null
  br i1 %.not59, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_validate_nodes_vs_nodeset.exit.thread
  %i.ai = load ptr, ptr %i.k, align 8
  %i.aj = call i32 @state_str2int(ptr noundef nonnull %i.ah, ptr noundef %i.ai) #13
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.ak = tail call ptr @create_config_record() #13 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.am = load i16, ptr %i.al, align 8
  store i16 %i.am, ptr %i.ak, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i16 %i.ao, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i16 %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call ptr @xstrdup(ptr noundef %i.au) #13
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 218
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  store i16 %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 108
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.bh = load i16, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store i16 %i.bh, ptr %i.bi, align 8
  br label %bb.l

bb.l:                                             ; preds = %_validate_nodes_vs_nodeset.exit.thread, %bb.j, %bb.k
  %.048 = phi ptr [ %i.af, %bb.j ], [ %i.af, %_validate_nodes_vs_nodeset.exit.thread ], [ %i.ak, %bb.k ] ; 3 uses
  %.047 = phi i32 [ %i.aj, %bb.j ], [ 0, %_validate_nodes_vs_nodeset.exit.thread ], [ 0, %bb.k ] ; 4 uses
  %.0 = phi ptr [ %i.k, %bb.j ], [ %i.k, %_validate_nodes_vs_nodeset.exit.thread ], [ null, %bb.k ] ; 3 uses
  %i.bj = load i32, ptr @node_record_count, align 4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = call ptr @bit_alloc(i64 noundef %i.bk) #13
  %i.bm = getelementptr inbounds nuw i8, ptr %.048, i64 64 ; 3 uses
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call i32 @add_node_record(ptr noundef %i.bo, ptr noundef %.048, ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not60 = icmp eq i32 %i.bp, 0
  br i1 %.not60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = call ptr @slurm_strerror(i32 noundef %i.bp) #13
  %i.br = load ptr, ptr %i.bn, align 8
  %i.bs = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.12, ptr noundef %i.bq, ptr noundef %i.br) #13 ; 0 uses
  %i.bt = load ptr, ptr @config_list, align 8
  %i.bu = call i32 @list_delete_ptr(ptr noundef %i.bt, ptr noundef nonnull %.048) #13 ; 0 uses
  %i.bv = load ptr, ptr %i.c, align 8
  call void @s_p_hashtbl_destroy(ptr noundef %i.bv) #13
  br label %bb.ag

bb.n:                                             ; preds = %bb.l
  %.not61 = icmp eq ptr %.0, null                 ; 2 uses
  br i1 %.not61, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not62 = icmp eq ptr %i.bx, null
  br i1 %.not62, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = call i64 @strtol(ptr noundef nonnull captures(none) %i.bx, ptr noundef null, i32 noundef 10) #13
  %i.bz = trunc i64 %i.by to i16
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 376
  store i16 %i.bz, ptr %i.cb, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cc = load ptr, ptr %i.b, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  call void @slurm_xfree(ptr noundef nonnull %i.cd) #13
  %i.ce = load i16, ptr %0, align 8
  %i.cf = icmp eq i16 %i.ce, 0
  br i1 %i.cf, label %bb.r, label %_get_msg_hostname.exit

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call i32 @conn_g_get_fd(ptr noundef %i.ch) #13
  %i.cj = call i32 @slurm_get_peer_addr(i32 noundef %i.ci, ptr noundef nonnull %0) #13 ; 0 uses
  %.pr.i = load i16, ptr %0, align 8
  %.not.i68 = icmp eq i16 %.pr.i, 0
  br i1 %.not.i68, label %_get_msg_hostname.exit.thread, label %_get_msg_hostname.exit

_get_msg_hostname.exit.thread:                    ; preds = %bb.r
  %i.ck = load ptr, ptr %i.b, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store ptr null, ptr %i.cl, align 8
  br label %bb.s

_get_msg_hostname.exit:                           ; preds = %bb.q, %bb.r
  %i.cm = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 46, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.7, i32 noundef 154, ptr noundef nonnull @__func__._get_msg_hostname) #13 ; 3 uses
  call void @slurm_get_ip_str(ptr noundef nonnull %0, ptr noundef %i.cm, i32 noundef 46) #13
  %i.cn = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  store ptr %i.cm, ptr %i.co, align 8
  %.not63 = icmp eq ptr %i.cm, null
  br i1 %.not63, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_get_msg_hostname.exit.thread, %_get_msg_hostname.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = call ptr @xstrdup(ptr noundef %i.cq) #13
  %i.cs = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  store ptr %i.cr, ptr %i.ct, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_get_msg_hostname.exit
  %i.cu = phi ptr [ %i.cs, %bb.s ], [ %i.cn, %_get_msg_hostname.exit ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 296
  call void @slurm_xfree(ptr noundef nonnull %i.cv) #13
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call ptr @xstrdup(ptr noundef %i.cx) #13
  %i.cz = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 296
  store ptr %i.cy, ptr %i.da, align 8
  call void @slurm_conf_add_node(ptr noundef %i.cz) #13
  %i.db = load ptr, ptr @power_up_node_bitmap, align 8
  %i.dc = load ptr, ptr %i.b, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 216
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = zext i32 %i.de to i64
  call void @bit_set(ptr noundef %i.db, i64 noundef %i.df) #13
  %i.dg = load ptr, ptr %i.b, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call ptr @xstrdup(ptr noundef %i.dk) #13 ; 2 uses
  %i.dm = load ptr, ptr %i.b, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 152
  store ptr %i.dl, ptr %i.dn, align 8
  %i.do = load ptr, ptr @avail_feature_list, align 8
  %i.dp = load ptr, ptr %i.bm, align 8
  call void @node_features_update_list(ptr noundef %i.do, ptr noundef %i.dl, ptr noundef %i.dp) #13
  %i.dq = load ptr, ptr %i.b, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = call ptr @xstrdup(ptr noundef %i.du) #13 ; 2 uses
  %i.dw = load ptr, ptr %i.b, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 160
  store ptr %i.dv, ptr %i.dx, align 8
  %i.dy = load ptr, ptr @active_feature_list, align 8
  %i.dz = load ptr, ptr %i.bm, align 8
  call void @node_features_update_list(ptr noundef %i.dy, ptr noundef %i.dv, ptr noundef %i.dz) #13
  %i.ea = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 512
  %i.ec = load ptr, ptr %i.eb, align 8
  %.not64 = icmp eq ptr %i.ec, null
  br i1 %.not64, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = call i32 @topology_g_add_rm_node(ptr noundef nonnull %i.ea) #13
  %.not65 = icmp eq i32 %i.ed, 0
  br i1 %.not65, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = load ptr, ptr %i.b, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 512
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.140, ptr noundef nonnull @__func__.create_dynamic_reg_node, ptr noundef %i.eg) #13 ; 0 uses
  %i.ei = load ptr, ptr %i.b, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 512
  call void @slurm_xfree(ptr noundef nonnull %i.ej) #13
  %i.ek = load ptr, ptr %i.b, align 8
  %i.el = call i32 @topology_g_add_rm_node(ptr noundef %i.ek) #13 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.em = call i32 @pthread_mutex_lock(ptr noundef nonnull @config_list_update_mutex) #13 ; 2 uses
  %.not.i69 = icmp eq i32 %i.em, 0
  br i1 %.not.i69, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.en = tail call ptr @__errno_location() #16
  store i32 %i.em, ptr %i.en, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.132, ptr noundef nonnull @__func__._queue_consolidate_config_list) #15
  unreachable

bb.y:                                             ; preds = %bb.w
  store i1 true, ptr @config_list_update, align 1
  %i.eo = call i32 @pthread_mutex_unlock(ptr noundef nonnull @config_list_update_mutex) #13 ; 2 uses
  %.not5.i = icmp eq i32 %i.eo, 0
  br i1 %.not5.i, label %_queue_consolidate_config_list.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = tail call ptr @__errno_location() #16
  store i32 %i.eo, ptr %i.ep, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.133, ptr noundef nonnull @__func__._queue_consolidate_config_list) #15
  unreachable

_queue_consolidate_config_list.exit:              ; preds = %bb.y
  %i.eq = icmp ne i32 %.047, 1
  %i.er = and i32 %.047, 512
  %.not66 = icmp eq i32 %i.er, 0
  %or.cond = and i1 %i.eq, %.not66
  br i1 %or.cond, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %_queue_consolidate_config_list.exit
  %i.es = call i64 @time(ptr noundef null) #13    ; 2 uses
  br i1 %.not61, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %.0, i64 120
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not67 = icmp eq ptr %i.eu, null
  br i1 %.not67, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ev = load ptr, ptr %i.b, align 8
  call void @set_node_reason(ptr noundef %i.ev, ptr noundef nonnull %i.eu, i64 noundef %i.es)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ew = load ptr, ptr %i.b, align 8
  call fastcc void @_make_node_down(ptr noundef %i.ew, i64 noundef %i.es)
  %i.ex = load ptr, ptr %i.b, align 8             ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.ex, i64 328
  store i32 %.047, ptr %1, align 8
  br label %bb.af

bb.ae:                                            ; preds = %_queue_consolidate_config_list.exit
  %i.ey = load ptr, ptr %i.b, align 8
  call void @make_node_idle(ptr noundef %i.ey, ptr noundef null)
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 328
  %.pre79 = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ez = phi i32 [ %.pre79, %bb.ae ], [ %.047, %bb.ad ]
  %i.fa = phi ptr [ %.pre, %bb.ae ], [ %i.ex, %bb.ad ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 328
  %i.fc = or i32 %i.ez, 67108864
  store i32 %i.fc, ptr %i.fb, align 8
  call void @set_cluster_tres(i1 noundef zeroext false) #13
  %i.fd = load ptr, ptr @part_list, align 8
  %i.fe = call i32 @list_for_each(ptr noundef %i.fd, ptr noundef nonnull @_foreach_build_part_bitmap, ptr noundef null) #13 ; 0 uses
  call void @set_partition_tres(i1 noundef zeroext false) #13
  call void @power_save_set_timeouts(ptr noundef null) #13
  call void @power_save_exc_setup() #13
  %i.ff = call i32 @select_g_reconfigure() #13    ; 0 uses
  %i.fg = load ptr, ptr %i.c, align 8
  call void @s_p_hashtbl_destroy(ptr noundef %i.fg) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.m, %bb.i, %bb.e, %bb.b
  %.049 = phi i32 [ -1, %bb.i ], [ -1, %bb.m ], [ 0, %bb.af ], [ -1, %bb.e ], [ 2002, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i32 %.049
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

declare i32 @topology_g_add_rm_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2048) i32 @delete_nodes(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1184), align 8
  %i.c = tail call ptr @xstrstr(ptr noundef %i.b, ptr noundef nonnull @.str.134) #13
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @xstrdup(ptr noundef nonnull @.str.141) #13 ; 2 uses
  store ptr %i.d, ptr %1, align 8
  %i.e = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.136, ptr noundef %i.d) #13 ; 0 uses
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  tail call void @lock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const.delete_nodes.write_lock) #13
  %i.f = tail call ptr @nodespec_to_hostlist(ptr noundef %0, i1 noundef zeroext true, ptr noundef null) #13 ; 5 uses
  %.not33 = icmp eq ptr %i.f, null
  br i1 %.not33, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @hostlist_count(ptr noundef nonnull %i.f) #13
  %.not34 = icmp eq i32 %i.g, 0
  br i1 %.not34, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.h = tail call ptr @hostlist_shift(ptr noundef nonnull %i.f) #13 ; 2 uses
  %.not3552 = icmp eq ptr %i.h, null
  br i1 %.not3552, label %.thread74, label %.lr.ph

.thread74:                                        ; preds = %.preheader
  tail call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const.delete_nodes.write_lock) #13
  br label %.thread47

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @get_log_level() #13
  %i.j = icmp sgt i32 %i.i, 2
  br i1 %i.j, label %bb.f, label %.thread51

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.delete_nodes, ptr noundef %0) #13
  br label %.thread51

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %i.k = phi ptr [ %i.s, %bb.j ], [ %i.h, %.preheader ] ; 6 uses
  %.055 = phi ptr [ %.1, %bb.j ], [ null, %.preheader ] ; 4 uses
  %.02554 = phi i32 [ %i.r, %bb.j ], [ 0, %.preheader ]
  %.02753 = phi i8 [ %.128, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %i.l = tail call ptr @find_node_record(ptr noundef nonnull %i.k) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_delete_node.exit.thread, label %_delete_node.exit

_delete_node.exit.thread:                         ; preds = %.lr.ph
  %i.m = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.164, ptr noundef nonnull %i.k) #13 ; 0 uses
  br label %bb.g

_delete_node.exit:                                ; preds = %.lr.ph
  %i.n = tail call fastcc i32 @_delete_node_ptr(ptr noundef %i.l) ; 2 uses
  %.not37 = icmp eq i32 %i.n, 0
  br i1 %.not37, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_delete_node.exit.thread, %_delete_node.exit
  %.0.i41 = phi i32 [ 2018, %_delete_node.exit.thread ], [ %i.n, %_delete_node.exit ] ; 2 uses
  %i.o = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.142, ptr noundef nonnull %i.k) #13 ; 0 uses
  %.not38 = icmp eq ptr %.055, null
  br i1 %.not38, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @hostlist_create(ptr noundef nonnull %i.k) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = tail call i32 @hostlist_push_host(ptr noundef nonnull %.055, ptr noundef nonnull %i.k) #13 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_delete_node.exit, %bb.h, %bb.i
  %.0.i42 = phi i32 [ %.0.i41, %bb.i ], [ %.0.i41, %bb.h ], [ 0, %_delete_node.exit ]
  %.128 = phi i8 [ %.02753, %bb.i ], [ %.02753, %bb.h ], [ 1, %_delete_node.exit ] ; 2 uses
  %.1 = phi ptr [ %.055, %bb.i ], [ %i.p, %bb.h ], [ %.055, %_delete_node.exit ] ; 4 uses
  %i.r = or i32 %.0.i42, %.02554                  ; 4 uses
  tail call void @free(ptr noundef nonnull %i.k) #13
  %i.s = tail call ptr @hostlist_shift(ptr noundef nonnull %i.f) #13 ; 2 uses
  %.not35 = icmp eq ptr %i.s, null
  br i1 %.not35, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %bb.j
  %i.t = trunc nuw i8 %.128 to i1                 ; 3 uses
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  tail call void @set_cluster_tres(i1 noundef zeroext false) #13
  %i.u = load ptr, ptr @part_list, align 8
  %i.v = tail call i32 @list_for_each(ptr noundef %i.u, ptr noundef nonnull @_foreach_build_part_bitmap, ptr noundef null) #13 ; 0 uses
  tail call void @set_partition_tres(i1 noundef zeroext false) #13
  %i.w = tail call i32 @select_g_reconfigure() #13 ; 0 uses
  tail call void @power_save_exc_setup() #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.not36 = icmp eq ptr %.1, null
  br i1 %.not36, label %bb.m, label %.split

.split:                                           ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.x = tail call ptr @hostlist_ranged_string_xmalloc(ptr noundef nonnull %.1) #13 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8
  %i.y = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.143, ptr noundef %i.x) #13
  store ptr %i.y, ptr %1, align 8
  call void @slurm_xfree(ptr noundef nonnull %i.a) #13
  call void @hostlist_destroy(ptr noundef nonnull %.1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const.delete_nodes.write_lock) #13
  br i1 %i.t, label %bb.n, label %.thread47

bb.m:                                             ; preds = %bb.l
  tail call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const.delete_nodes.write_lock) #13
  br i1 %i.t, label %bb.n, label %.thread47

bb.n:                                             ; preds = %.split, %bb.m
  %i.z = load ptr, ptr @acct_db_conn, align 8
  %i.aa = call i32 @clusteracct_storage_g_cluster_tres(ptr noundef %i.z, ptr noundef null, ptr noundef null, i64 noundef 0, i16 noundef zeroext 11520) #13 ; 0 uses
  br label %.thread47

.thread51:                                        ; preds = %bb.f, %bb.e
  tail call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const.delete_nodes.write_lock) #13
  br label %.thread47

bb.o:                                             ; preds = %bb.c
  tail call void @unlock_slurmctld(ptr noundef nonnull byval(%struct.slurmctld_lock_t) align 8 @__const.delete_nodes.write_lock) #13
  br label %bb.p

.thread47:                                        ; preds = %.split, %.thread74, %bb.n, %bb.m, %.thread51
  %.1264549 = phi i32 [ 2018, %.thread51 ], [ %i.r, %bb.m ], [ %i.r, %bb.n ], [ 0, %.thread74 ], [ %i.r, %.split ]
  call void @hostlist_destroy(ptr noundef nonnull %i.f) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread47, %bb.b
  %.029 = phi i32 [ 2002, %bb.b ], [ %.1264549, %.thread47 ], [ 2018, %bb.o ]
  ret i32 %.029
}

declare ptr @topology_g_get_topology_str(ptr noundef) local_unnamed_addr #2

declare i32 @slurm_conf_nodeset_array(ptr noundef) local_unnamed_addr #2

declare i32 @hostlist_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @slurm_mcs_get_privatedata() local_unnamed_addr #2

declare i32 @mcs_g_check_mcs_label(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @pack64(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gres_get_node_drain(ptr noundef) local_unnamed_addr #2

declare ptr @gres_get_node_used(ptr noundef) local_unnamed_addr #2

declare void @acct_gather_energy_pack(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare void @select_plugin_id_pack(ptr noundef) local_unnamed_addr #2
end_hunk_0
