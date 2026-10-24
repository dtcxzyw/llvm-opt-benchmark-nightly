Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/node_scheduler?download=true
inline.NumInlined: 20
inline.NumDeleted: 13
begin_hunk_0_@select_nodes:bb.a
  %i.bs = call i32 @bb_g_job_test_stage_in(ptr noundef nonnull %i.u, i1 noundef zeroext %1) #13 ; 2 uses
  switch i32 %i.bs, label %bb.t [
    i32 1, label %bb.w
    i32 -1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 1048
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = icmp eq i32 %i.bu, 75
  br i1 %i.bv, label %bb.fo, label %.thread

.thread:                                          ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.bw) #13
  store i64 %i.o, ptr @last_job_update, align 8
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.bx) #13
  store i64 %i.o, ptr @last_job_update, align 8
  %i.by = icmp eq i32 %i.bs, 0
  br i1 %i.by, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 1048
  store i32 74, ptr %i.bz, align 8
  br label %bb.fo

bb.v:                                             ; preds = %.thread, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 1048
  store i32 73, ptr %i.ca, align 8
  br label %bb.fo

bb.w:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 288
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 240
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.cj = load ptr, ptr %i.ci, align 8
  %.not456 = icmp eq ptr %i.cj, null              ; 2 uses
  %brmerge = or i1 %1, %.not456
  %.mux = select i1 %.not456, i32 2006, i32 0
  br i1 %brmerge, label %bb.fo, label %bb.z

bb.z:                                             ; preds = %bb.y
  call fastcc void @_end_null_job(ptr noundef nonnull %i.u)
  br label %bb.fo

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.ck = load i32, ptr %i.ap, align 8
  %i.cl = call zeroext i1 @node_features_g_user_update(i32 noundef %i.ck) #13 ; 2 uses
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = call fastcc i32 @_build_node_list(ptr noundef nonnull %i.u, ptr noundef %i.d, ptr noundef %i.b, ptr noundef %i.cm, i1 noundef zeroext %1, i1 noundef zeroext %i.cl) ; 2 uses
  %.not392 = icmp eq i32 %i.cn, 0
  br i1 %.not392, label %bb.ab, label %bb.fo

bb.ab:                                            ; preds = %bb.aa
  %i.co = load ptr, ptr %i.d, align 8             ; 7 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.fo, label %.preheader467

.preheader467:                                    ; preds = %bb.ab
  %i.cq = load i32, ptr %i.b, align 4             ; 7 uses
  %i.cr = icmp sgt i32 %i.cq, 0                   ; 2 uses
  br i1 %i.cr, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader467
  %wide.trip.count = zext nneg i32 %i.cq to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_set_sched_weight.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_set_sched_weight.exit ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [64 x i8], ptr %i.co, i64 %indvars.iv ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 44
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = shl i32 %i.cu, 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 56 ; 2 uses
  %i.cx = or disjoint i32 %i.cv, 255
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  store i64 %i.cy, ptr %i.cw, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = zext i32 %i.da to i64                   ; 3 uses
  %i.dc = and i64 %i.db, 10
  %or.cond.i = icmp eq i64 %i.dc, 0
  br i1 %or.cond.i, label %bb.ac, label %.sink.split.i

bb.ac:                                            ; preds = %.lr.ph
  %i.dd = and i64 %i.db, 16
  %.not12.i = icmp eq i64 %i.dd, 0
  br i1 %.not12.i, label %bb.ad, label %.sink.split.i

bb.ad:                                            ; preds = %bb.ac
  %i.de = and i64 %i.db, 4
  %.not13.i = icmp eq i64 %i.de, 0
  br i1 %.not13.i, label %_set_sched_weight.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ad, %bb.ac, %.lr.ph
  %.sink14.i = phi i64 [ 3298534883328, %.lr.ph ], [ 2199023255552, %bb.ac ], [ 1099511627776, %bb.ad ]
  %i.df = or disjoint i64 %.sink14.i, %i.cy
  store i64 %i.df, ptr %i.cw, align 8
  br label %_set_sched_weight.exit

_set_sched_weight.exit:                           ; preds = %bb.ad, %.sink.split.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %_set_sched_weight.exit, %.preheader467
  %i.dg = sext i32 %i.cq to i64
  call void @qsort(ptr noundef nonnull %i.co, i64 noundef %i.dg, i64 noundef 64, ptr noundef nonnull @_sort_node_set) #13
  call fastcc void @_log_node_set(ptr noundef %i.u, ptr noundef nonnull %i.co, i32 noundef %i.cq)
  %i.dh = load ptr, ptr %i.v, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 392
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not393 = icmp eq ptr %i.dj, null
  br i1 %.not393, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  %i.dk = call fastcc i32 @_nodes_in_sets(ptr noundef %i.dj, ptr noundef nonnull %i.co, i32 noundef %i.cq) ; 4 uses
  store i32 %i.dk, ptr %i.a, align 4
  %.not394 = icmp eq i32 %i.dk, 0
  br i1 %.not394, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = call i32 @get_log_level() #13
  %i.dm = icmp sgt i32 %i.dl, 2
  br i1 %i.dm, label %bb.ag, label %bb.em

bb.ag:                                            ; preds = %bb.af
  %i.dn = load ptr, ptr %i.ac, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 224
  %i.dp = load ptr, ptr %i.do, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.u, ptr noundef %i.dp) #13
  br label %bb.em

bb.ah:                                            ; preds = %bb.ae, %._crit_edge
  %i.dq = call i32 @get_node_cnts(ptr noundef nonnull %i.u, i32 noundef %.0354, ptr noundef %.0358, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g) ; 5 uses
  store i32 %i.dq, ptr %i.a, align 4
  switch i32 %i.dq, label %bb.ai [
    i32 2050, label %bb.em
    i32 2014, label %bb.em
    i32 2015, label %.thread514
  ]

bb.ai:                                            ; preds = %bb.ah
  call void @job_array_pre_sched(ptr noundef nonnull %i.u) #13
  %i.dr = getelementptr inbounds nuw i8, ptr %i.u, i64 504
  %i.ds = load ptr, ptr %i.dr, align 8
  %.not396 = icmp eq ptr %i.ds, null
  br i1 %.not396, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = call i32 @get_log_level() #13
  %i.du = icmp sgt i32 %i.dt, 5
  br i1 %i.du, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.select_nodes, ptr noundef nonnull %i.u) #13
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj
  %i.dv = load i32, ptr %i.f, align 4
  %i.dw = load i32, ptr %i.g, align 4
  %i.dx = load i32, ptr %i.h, align 4
  %i.dy = call fastcc i32 @_get_req_features(ptr noundef nonnull %i.co, i32 noundef %i.cq, ptr noundef %i.c, ptr noundef nonnull %i.u, ptr noundef %.0358, i32 noundef %i.dv, i32 noundef %i.dw, i32 noundef %i.dx, i1 noundef zeroext %1, ptr noundef %i.i, i1 noundef zeroext %i.cl, i1 noundef zeroext %2) ; 4 uses
  store i32 %i.dy, ptr %i.a, align 4
  %.pre = load ptr, ptr %i.c, align 8             ; 7 uses
  %.not397.not = icmp eq ptr %.pre, null
  br i1 %.not397.not, label %.thread514, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dz = call fastcc ptr @_handle_exclusive_gres(ptr noundef nonnull %i.u, ptr noundef %.pre, i1 noundef zeroext %1) ; 2 uses
  %i.ea = call i32 @bit_set_count(ptr noundef nonnull %.pre) #13 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.u, i64 700
  store i32 %i.ea, ptr %i.eb, align 4
  %.not398.not = icmp ne ptr %i.dz, null          ; 3 uses
  br i1 %.not398.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ec = getelementptr inbounds nuw i8, ptr %i.u, i64 344 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  store ptr %i.dz, ptr %i.ec, align 8
  br label %bb.ao

.thread514:                                       ; preds = %bb.al, %bb.ah
  %i.ee = phi i32 [ %i.dy, %bb.al ], [ %i.dq, %bb.ah ]
  %i.ef = load i32, ptr %i.h, align 4
  br label %bb.bf

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.1352 = phi ptr [ null, %bb.am ], [ %i.ed, %bb.an ] ; 2 uses
  %i.eg = load i32, ptr @max_powered_nodes, align 4
  %i.eh = icmp eq i32 %i.eg, -2
  %or.cond7.not = select i1 %1, i1 true, i1 %i.eh
  br i1 %or.cond7.not, label %bb.bf, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  %i.ei = call ptr @bit_copy(ptr noundef nonnull %.pre) #13 ; 2 uses
  store ptr %i.ei, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  store ptr null, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  store ptr null, ptr %i.l, align 8
  %i.ej = load ptr, ptr @power_down_node_bitmap, align 8
  call void @bit_and(ptr noundef %i.ei, ptr noundef %i.ej) #13
  %i.ek = load ptr, ptr %i.j, align 8
  %i.el = call i32 @bit_set_count(ptr noundef %i.ek) #13 ; 2 uses
  %i.em = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.en = and i64 %i.em, 4398046511104
  %.not399 = icmp eq i64 %i.en, 0
  br i1 %.not399, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eo = call ptr @bitmap2hostlist(ptr noundef nonnull %.pre) #13 ; 2 uses
  %i.ep = call ptr @slurm_hostlist_ranged_string_xmalloc(ptr noundef %i.eo) #13
  store ptr %i.ep, ptr %i.k, align 8
  %i.eq = load ptr, ptr %i.j, align 8
  %i.er = call ptr @bitmap2hostlist(ptr noundef %i.eq) #13 ; 2 uses
  %i.es = call ptr @slurm_hostlist_ranged_string_xmalloc(ptr noundef %i.er) #13
  store ptr %i.es, ptr %i.l, align 8
  %i.et = load ptr, ptr @power_up_node_bitmap, align 8
  %i.eu = call i32 @bit_set_count(ptr noundef %i.et) #13
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0349 = phi ptr [ %i.eo, %bb.aq ], [ null, %bb.ap ] ; 2 uses
  %.0348 = phi ptr [ %i.er, %bb.aq ], [ null, %bb.ap ] ; 2 uses
  %.0347 = phi i32 [ %i.eu, %bb.aq ], [ 0, %bb.ap ]
  %i.ev = load ptr, ptr %i.j, align 8
  %i.ew = load ptr, ptr @power_up_node_bitmap, align 8
  call void @bit_or(ptr noundef %i.ev, ptr noundef %i.ew) #13
  %i.ex = load ptr, ptr %i.j, align 8
  %i.ey = call i32 @bit_set_count(ptr noundef %i.ex) #13 ; 2 uses
  %i.ez = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.fa = and i64 %i.ez, 4398046511104
  %.not400 = icmp eq i64 %i.fa, 0
  br i1 %.not400, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fb = call i32 @get_log_level() #13
  %i.fc = icmp sgt i32 %i.fb, 3
  br i1 %i.fc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fd = load ptr, ptr %i.l, align 8
  %i.fe = load ptr, ptr %i.k, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %i.el, ptr noundef %i.fd, ptr noundef %i.fe, i32 noundef %.0347, i32 noundef %i.ey) #13
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %i.ff = icmp sgt i32 %i.el, 0
  %i.fg = load i32, ptr @max_powered_nodes, align 4
  %i.fh = icmp ugt i32 %i.ey, %i.fg
  %or.cond = select i1 %i.ff, i1 %i.fh, i1 false
  br i1 %or.cond, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  store i32 2177, ptr %i.a, align 4
  %i.fi = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.fj = and i64 %i.fi, 4398046511104
  %.not401 = icmp eq i64 %i.fj, 0
  br i1 %.not401, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fk = call i32 @get_log_level() #13
  %i.fl = icmp sgt i32 %i.fk, 3
  br i1 %i.fl, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.select_nodes, ptr noundef nonnull %i.u) #13
  br label %bb.ay

bb.ay:                                            ; preds = %bb.au, %bb.aw, %bb.ax, %bb.av
  %i.fm = phi i32 [ %i.dy, %bb.au ], [ 2177, %bb.aw ], [ 2177, %bb.ax ], [ 2177, %bb.av ]
  %i.fn = load ptr, ptr %i.j, align 8
  %.not402 = icmp eq ptr %i.fn, null
  br i1 %.not402, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @slurm_bit_free(ptr noundef nonnull %i.j) #13
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store ptr null, ptr %i.j, align 8
  %.not403 = icmp eq ptr %.0348, null
  br i1 %.not403, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @hostlist_destroy(ptr noundef nonnull %.0348) #13
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.not404 = icmp eq ptr %.0349, null
  br i1 %.not404, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @hostlist_destroy(ptr noundef nonnull %.0349) #13
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call void @slurm_xfree(ptr noundef nonnull %i.k) #13
  call void @slurm_xfree(ptr noundef nonnull %i.l) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %bb.bf

bb.bf:                                            ; preds = %.thread514, %bb.be, %bb.ao
  %.1524 = phi i1 [ %.not398.not, %bb.be ], [ %.not398.not, %bb.ao ], [ false, %.thread514 ] ; 21 uses
  %.1352523 = phi ptr [ %.1352, %bb.be ], [ %.1352, %bb.ao ], [ null, %.thread514 ] ; 21 uses
  %.0357522 = phi i32 [ %i.ea, %bb.be ], [ %i.ea, %bb.ao ], [ %i.ef, %.thread514 ] ; 5 uses
  %i.fo = phi ptr [ %.pre, %bb.be ], [ %.pre, %bb.ao ], [ null, %.thread514 ] ; 14 uses
  %i.fp = phi i32 [ %i.fm, %bb.be ], [ %i.dy, %bb.ao ], [ %i.ee, %.thread514 ] ; 4 uses
  %.not525 = xor i1 %1, true
  %i.fq = getelementptr inbounds nuw i8, ptr %i.u, i64 1184
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = shl nuw nsw i64 %i.q, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.s, ptr align 8 %i.fr, i64 %i.fs, i1 false)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.u, i64 1128 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8            ; 2 uses
  %.not405 = icmp eq i32 %i.fu, 0
  %.pre478 = load ptr, ptr %i.v, align 8          ; 2 uses
  br i1 %.not405, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre478, i64 272
  %i.fw = load i32, ptr %i.fv, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %i.fx = phi i32 [ %i.fw, %bb.bg ], [ %i.fu, %bb.bf ] ; 2 uses
  %i.fy = zext i32 %i.fx to i64
  store i64 %i.fy, ptr %i.s, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.u, i64 504 ; 4 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %.pre478, i64 320
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = load ptr, ptr %i.ac, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.u, i64 344 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.u, i64 144 ; 5 uses
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = and i64 %i.gh, 8388608
  %i.gj = icmp ne i64 %i.gi, 0
  %i.gk = call zeroext i16 @job_get_sockets_per_node(ptr noundef nonnull %i.u) #13
  %i.gl = load ptr, ptr %i.v, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 300
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = call i64 @job_get_tres_mem(ptr noundef %i.ga, i64 noundef %i.gc, i32 noundef %i.fx, i32 noundef %.0357522, ptr noundef %i.gd, ptr noundef %i.gf, i1 noundef zeroext %i.gj, i16 noundef zeroext %i.gk, i32 noundef %i.gn) #13
  %i.gp = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.go, ptr %i.gp, align 8
  %i.gq = zext i32 %.0357522 to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.gq, ptr %i.gr, align 8
  call void @assoc_mgr_lock(ptr noundef nonnull %5) #13
  %i.gs = load ptr, ptr %i.ge, align 8
  call void @gres_stepmgr_set_job_tres_cnt(ptr noundef %i.gs, i32 noundef %.0357522, ptr noundef nonnull %i.s, i1 noundef zeroext true) #13
  %i.gt = load ptr, ptr %i.ac, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 88
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 914), align 2
  %i.gx = call double @assoc_mgr_tres_weighted(ptr noundef nonnull %i.s, ptr noundef %i.gv, i16 noundef zeroext %i.gw, i1 noundef zeroext true) #13
  %i.gy = fptoui double %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.gy, ptr %i.gz, align 16
  %i.ha = icmp eq i32 %.0357522, -2
  %or.cond10.not = select i1 %1, i1 true, i1 %i.ha
  br i1 %or.cond10.not, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hb = call zeroext i1 @acct_policy_job_runnable_post_select(ptr noundef nonnull %i.u, ptr noundef nonnull %i.s, i1 noundef zeroext true) #13
  br i1 %i.hb, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @assoc_mgr_unlock(ptr noundef nonnull %5) #13
  call void @free_job_resources(ptr noundef nonnull %i.fz) #13
  %.not407 = icmp eq i32 %i.fp, 0
  br i1 %.not407, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hc = call i32 @get_log_level() #13
  %i.hd = icmp sgt i32 %i.hc, 5
  br i1 %i.hd, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.he = call ptr @slurm_strerror(i32 noundef %i.fp) #13
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.u, ptr noundef %i.he) #13
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.bj
  store i32 2050, ptr %i.a, align 4
  br label %bb.em

bb.bn:                                            ; preds = %bb.bi, %bb.bh
  call void @assoc_mgr_unlock(ptr noundef nonnull %5) #13
  %i.hf = load i32, ptr %i.ft, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.u, i64 208
  store i32 %i.hf, ptr %i.hg, align 8
  %i.hh = load ptr, ptr %i.i, align 8
  %i.hi = icmp ne ptr %i.hh, null
  %or.cond13 = select i1 %.not525, i1 %i.hi, i1 false
  %i.hj = icmp eq i32 %i.fp, 0
  %or.cond15 = select i1 %or.cond13, i1 %i.hj, i1 false
  br i1 %or.cond15, label %bb.bo, label %thread-pre-split

bb.bo:                                            ; preds = %bb.bn
  %i.hk = load ptr, ptr %i.v, align 8
  %i.hl = call i64 @time(ptr noundef null) #13    ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 400 ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %.not408 = icmp eq i64 %i.hn, 0
  br i1 %.not408, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ho = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 638), align 2
  %i.hp = zext i16 %i.ho to i64
  %i.hq = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 816), align 8
  %i.hr = zext i16 %i.hq to i64
  %i.hs = add nuw nsw i64 %i.hp, %i.hr
  %i.ht = sub i64 %i.hl, %i.hs
  %i.hu = icmp sle i64 %i.hn, %i.ht
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.0346 = phi i1 [ true, %bb.bo ], [ %i.hu, %bb.bp ] ; 2 uses
  %i.hv = load ptr, ptr %i.i, align 8
  call fastcc void @_preempt_jobs(ptr noundef %i.hv, i1 noundef zeroext %.0346, ptr noundef %i.a, ptr noundef nonnull %i.u)
  %i.hw = load i32, ptr %i.a, align 4             ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 2016
  %or.cond17 = and i1 %.0346, %i.hx
  br i1 %or.cond17, label %bb.br, label %thread-pre-split

bb.br:                                            ; preds = %bb.bq
  store i64 %i.hl, ptr %i.hm, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.u, i64 816
  store i8 1, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ia = load ptr, ptr %i.hz, align 8            ; 2 uses
  %.not409 = icmp eq ptr %i.ia, null
  br i1 %.not409, label %.thread528, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 44 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4
  br label %.thread528

thread-pre-split:                                 ; preds = %bb.bq, %bb.bn
  %i.ie = phi i32 [ %i.fp, %bb.bn ], [ %i.hw, %bb.bq ] ; 5 uses
  switch i32 %i.ie, label %bb.cj [
    i32 0, label %bb.ct
    i32 2015, label %bb.bt
    i32 2068, label %bb.bw
    i32 2118, label %bb.ci
  ]

bb.bt:                                            ; preds = %thread-pre-split
  %i.if = call i32 @get_log_level() #13
  %i.ig = icmp sgt i32 %i.if, 6
  br i1 %i.ig, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.select_nodes, ptr noundef nonnull %i.u) #13
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ih = getelementptr inbounds nuw i8, ptr %i.u, i64 1048
  store i32 4, ptr %i.ih, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.u, i64 1040
  call void @slurm_xfree(ptr noundef nonnull %i.ii) #13
  store i64 %i.o, ptr @last_job_update, align 8
  br label %bb.em

bb.bw:                                            ; preds = %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  %i.ij = call i32 @get_log_level() #13
  %i.ik = icmp sgt i32 %i.ij, 6
  br i1 %i.ik, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.select_nodes, ptr noundef nonnull %i.u) #13
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.il = getelementptr inbounds nuw i8, ptr %i.u, i64 1048
  store i32 15, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.u, i64 1040 ; 3 uses
  call void @slurm_xfree(ptr noundef nonnull %i.im) #13
  %i.in = load ptr, ptr @avail_node_bitmap, align 8
  %i.io = call ptr @bit_copy(ptr noundef %i.in) #13 ; 2 uses
  store ptr %i.io, ptr %i.n, align 8
  call void @filter_by_node_owner(ptr noundef nonnull %i.u, ptr noundef %i.io)
  %i.ip = load ptr, ptr %i.n, align 8
  call void @bit_not(ptr noundef %i.ip) #13
  %i.iq = load ptr, ptr %i.n, align 8
  %i.ir = load ptr, ptr @future_node_bitmap, align 8
  call void @bit_and_not(ptr noundef %i.iq, ptr noundef %i.ir) #13
  %i.is = load ptr, ptr %i.n, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %.0358, i64 232
  %i.iu = load ptr, ptr %i.it, align 8
  call void @bit_and(ptr noundef %i.is, ptr noundef %i.iu) #13
  %i.iv = load ptr, ptr %i.n, align 8
  %i.iw = load ptr, ptr @up_node_bitmap, align 8
  call void @bit_and_not(ptr noundef %i.iv, ptr noundef %i.iw) #13
  %i.ix = load ptr, ptr %i.v, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 392
  %i.iz = load ptr, ptr %i.iy, align 8            ; 2 uses
  %.not437 = icmp eq ptr %i.iz, null
  br i1 %.not437, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
end_hunk_0
begin_hunk_1_@_get_req_features:bb.a
  %12 = alloca %struct.resv_exc_t, align 8        ; 9 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store i8 0, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, i8 0, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 928
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.o = tail call i64 @time(ptr noundef null) #13
  store i64 %i.o, ptr %i.g, align 8
  %i.p = call i32 @job_test_resv(ptr noundef nonnull %3, ptr noundef nonnull %i.g, i1 noundef zeroext false, ptr noundef nonnull %i.e, ptr noundef nonnull %12, ptr noundef nonnull %i.f, i1 noundef zeroext true) #13 ; 2 uses
  switch i32 %i.p, label %bb.e [
    i32 2118, label %bb.c
    i32 2016, label %bb.c
    i32 0, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.q = load ptr, ptr @avail_node_bitmap, align 8 ; 2 uses
  %i.r = load i32, ptr @node_record_count, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = call ptr @bit_alloc(i64 noundef %i.s) #13
  store ptr %i.t, ptr @avail_node_bitmap, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %.not343 = icmp eq ptr %i.u, null
  br i1 %.not343, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @slurm_bit_free(ptr noundef nonnull %i.e) #13
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.e, align 8
  %.not342 = icmp eq ptr %i.v, null
  br i1 %.not342, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @slurm_bit_free(ptr noundef nonnull %i.e) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e
  store ptr null, ptr %i.e, align 8
  call void @reservation_delete_resv_exc_parts(ptr noundef nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %bb.dw

bb.g:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not335 = icmp eq ptr %i.w, null
  br i1 %.not335, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr @avail_node_bitmap, align 8
  %i.y = call i32 @bit_equal(ptr noundef nonnull %i.w, ptr noundef %i.x) #13
  %.not336 = icmp eq i32 %i.y, 0
  %i.z = load ptr, ptr %i.e, align 8              ; 2 uses
  br i1 %.not336, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr @avail_node_bitmap, align 8
  call void @bit_and(ptr noundef %i.z, ptr noundef %i.aa) #13
  %i.ab = load ptr, ptr @avail_node_bitmap, align 8 ; 3 uses
  %i.ac = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.ad = and i64 %i.ac, 16384
  %.not337 = icmp eq i64 %i.ad, 0
  br i1 %.not337, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.e, align 8
  %i.af = call i32 @bit_equal(ptr noundef %i.ab, ptr noundef %i.ae) #13
  %.not338 = icmp eq i32 %i.af, 0
  br i1 %.not338, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.ag = call ptr @bit_copy(ptr noundef %i.ab) #13 ; 2 uses
  store ptr %i.ag, ptr %i.i, align 8
  %i.ah = load ptr, ptr %i.e, align 8
  call void @bit_and_not(ptr noundef %i.ag, ptr noundef %i.ah) #13
  %i.ai = load ptr, ptr %i.i, align 8
  %i.aj = call ptr @bitmap2node_name(ptr noundef %i.ai) #13
  store ptr %i.aj, ptr %i.h, align 8
  %i.ak = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.al = and i64 %i.ak, 16384
  %.not339 = icmp eq i64 %i.al, 0
  br i1 %.not339, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = call i32 @get_log_level() #13
  %i.an = icmp sgt i32 %i.am, 3
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.h, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.48, ptr noundef %i.ao, ptr noundef nonnull %3) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  call void @slurm_xfree(ptr noundef nonnull %i.h) #13
  %i.ap = load ptr, ptr %i.i, align 8
  %.not340 = icmp eq ptr %i.ap, null
  br i1 %.not340, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @slurm_bit_free(ptr noundef nonnull %i.i) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.j, %bb.i
  %i.aq = load ptr, ptr %i.e, align 8
  store ptr %i.aq, ptr @avail_node_bitmap, align 8
  br label %.thread

bb.r:                                             ; preds = %bb.h
  %.not341 = icmp eq ptr %i.z, null
  br i1 %.not341, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @slurm_bit_free(ptr noundef nonnull %i.e) #13
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.s, %bb.g, %bb.c, %bb.d, %bb.q
  %.1290 = phi ptr [ %i.ab, %bb.q ], [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ null, %bb.g ], [ null, %bb.s ], [ null, %bb.r ]
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  %i.ar = icmp eq i32 %i.p, 2118
  br label %bb.w

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  %i.as = tail call i64 @time(ptr noundef null) #13
  store i64 %i.as, ptr %i.j, align 8
  %i.at = call i32 @job_test_resv(ptr noundef nonnull %3, ptr noundef nonnull %i.j, i1 noundef zeroext false, ptr noundef nonnull %i.e, ptr noundef nonnull %12, ptr noundef nonnull %i.f, i1 noundef zeroext true) #13 ; 0 uses
  %i.au = load ptr, ptr %i.e, align 8
  %.not333 = icmp eq ptr %i.au, null
  br i1 %.not333, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @slurm_bit_free(ptr noundef nonnull %i.e) #13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v
  %.0304 = phi i1 [ %i.ar, %.thread ], [ false, %bb.v ]
  %.2291 = phi ptr [ %.1290, %.thread ], [ null, %bb.v ] ; 2 uses
  br i1 %11, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.f, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not344 = icmp eq ptr %.2291, null
  br i1 %.not344, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.av = load ptr, ptr @avail_node_bitmap, align 8
  %i.aw = call ptr @bit_copy(ptr noundef %i.av) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.3292 = phi ptr [ %.2291, %bb.y ], [ %i.aw, %bb.z ] ; 2 uses
  %i.ax = load ptr, ptr @share_node_bitmap, align 8
  %i.ay = call ptr @bit_copy(ptr noundef %i.ax) #13 ; 2 uses
  %i.az = load ptr, ptr @share_node_bitmap, align 8
  call void @filter_by_node_owner(ptr noundef nonnull %3, ptr noundef %i.az)
  %.not = xor i1 %10, true
  %or.cond3 = or i1 %8, %.not
  br i1 %or.cond3, label %_filter_by_node_feature.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_filter_by_node_feature.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = zext i32 %i.bg to i64
  %i.bi = add nsw i64 %i.be, %i.bh
  %i.bj = call i64 @time(ptr noundef null) #13
  %.not12.i = icmp sgt i64 %i.bi, %i.bj
  %i.bk = icmp sgt i32 %1, 0
  %or.cond.i = and i1 %i.bk, %.not12.i
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_filter_by_node_feature.exit

bb.ae:                                            ; preds = %bb.ac
  %.old.i = icmp sgt i32 %1, 0
  br i1 %.old.i, label %.lr.ph.preheader.i, label %_filter_by_node_feature.exit

.lr.ph.preheader.i:                               ; preds = %bb.ae, %bb.ad
  %wide.trip.count.i = zext nneg i32 %1 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ag ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = and i32 %i.bn, 2
  %.not13.i = icmp eq i32 %i.bo, 0
  br i1 %.not13.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i
  %i.bp = load ptr, ptr @avail_node_bitmap, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.br = load ptr, ptr %i.bq, align 8
  call void @bit_and_not(ptr noundef %i.bp, ptr noundef %i.br) #13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_filter_by_node_feature.exit, label %.lr.ph.i, !llvm.loop !38

_filter_by_node_feature.exit:                     ; preds = %bb.ag, %bb.ae, %bb.ad, %bb.ab, %bb.aa
  br i1 %8, label %.critedge388, label %bb.ah

bb.ah:                                            ; preds = %_filter_by_node_feature.exit
  %i.bs = call i32 @slurm_mcs_get_select(ptr noundef nonnull %3) #13
  %i.bt = load ptr, ptr @share_node_bitmap, align 8
  call void @filter_by_node_mcs(ptr noundef nonnull %3, i32 noundef %i.bs, ptr noundef %i.bt)
  %i.bu = load ptr, ptr @avail_node_bitmap, align 8
  %i.bv = call i32 @hres_filter(ptr noundef nonnull %3, ptr noundef %i.bu) #13 ; 0 uses
  br label %.critedge388

.critedge388:                                     ; preds = %_filter_by_node_feature.exit, %bb.ah
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 27 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 288
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 392
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %.not345 = icmp eq ptr %i.cb, null
  br i1 %.not345, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.critedge388
  store ptr %i.cb, ptr %i.d, align 8
  %i.cc = call ptr @bit_copy(ptr noundef nonnull %i.cb) #13
  %i.cd = load ptr, ptr %i.bw, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 392
  store ptr null, ptr %i.ce, align 8
  %.pre = load ptr, ptr %i.bw, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.critedge388
  %i.cf = phi ptr [ %.pre, %bb.ai ], [ %i.bx, %.critedge388 ]
  %.0305 = phi ptr [ %i.cc, %bb.ai ], [ null, %.critedge388 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 272 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8            ; 3 uses
  store i32 1, ptr %i.cg, align 8
  %i.ci = shl nsw i32 %1, 1
  %i.cj = sext i32 %i.ci to i64
  %i.ck = call ptr @slurm_xcalloc(i64 noundef %i.cj, i64 noundef 64, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 1146, ptr noundef nonnull @__func__._get_req_features) #13 ; 3 uses
  store ptr %i.ck, ptr %i.b, align 8
  %i.cl = call ptr @slurm_find_preemptable_jobs(ptr noundef nonnull %3) #13 ; 4 uses
  %i.cm = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 200
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not346 = icmp eq ptr %i.co, null
  br i1 %.not346, label %bb.cv, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  store ptr null, ptr %i.k, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 320
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = call ptr @list_iterator_create(ptr noundef nonnull %i.co) #13 ; 3 uses
  %i.cs = call ptr @list_next(ptr noundef %i.cr) #13 ; 2 uses
  %.not347422 = icmp eq ptr %i.cs, null
  br i1 %.not347422, label %.thread394, label %.lr.ph431

.lr.ph431:                                        ; preds = %bb.ak
  %i.ct = icmp sgt i32 %1, 0
  %.not6 = xor i1 %8, true
  %or.cond8 = and i1 %10, %.not6
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph431, %bb.cr
  %i.cu = phi ptr [ %i.ck, %.lr.ph431 ], [ %i.km, %bb.cr ] ; 5 uses
  %i.cv = phi ptr [ %i.ck, %.lr.ph431 ], [ %i.kn, %bb.cr ] ; 5 uses
  %i.cw = phi ptr [ %i.cs, %.lr.ph431 ], [ %i.ko, %bb.cr ] ; 11 uses
  %.0268429 = phi i8 [ 0, %.lr.ph431 ], [ %.2, %bb.cr ] ; 2 uses
  %.0270428 = phi i64 [ -1, %.lr.ph431 ], [ %.2272, %bb.cr ] ; 7 uses
  %.0274427 = phi i32 [ 1, %.lr.ph431 ], [ %.2276, %bb.cr ] ; 2 uses
  %.0277.shrunk426 = phi i16 [ 0, %.lr.ph431 ], [ %.2279.shrunk, %bb.cr ] ; 2 uses
  %.0282425 = phi i8 [ 0, %.lr.ph431 ], [ %.3, %bb.cr ] ; 7 uses
  %.0285424 = phi i8 [ 0, %.lr.ph431 ], [ %.3288, %bb.cr ] ; 8 uses
  %.0309423 = phi i32 [ %7, %.lr.ph431 ], [ %.1310, %bb.cr ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32 ; 3 uses
  %i.cy = load i16, ptr %i.cx, align 8
  %i.cz = icmp ult i16 %.0277.shrunk426, %i.cy
  br i1 %i.cz, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.da = load ptr, ptr %i.k, align 8
  %.not370 = icmp eq ptr %i.da, null
  br i1 %.not370, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = load ptr, ptr %i.bw, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 216
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__._get_req_features, i32 noundef 1167, ptr noundef nonnull %3, ptr noundef %i.dd) #13 ; 0 uses
  %i.df = load ptr, ptr %i.k, align 8
  %.not371 = icmp eq ptr %i.df, null
  br i1 %.not371, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #13
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store ptr null, ptr %i.k, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 10
  %i.dh = load i8, ptr %i.dg, align 2, !range !10, !noundef !11
  %i.di = or i8 %i.dh, %.0268429
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call ptr @bit_copy(ptr noundef %i.dk) #13
  store ptr %i.dl, ptr %i.k, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 14
  %i.dn = load i8, ptr %i.dm, align 2
  %i.do = zext i8 %i.dn to i32
  %i.dp = load i16, ptr %i.cx, align 8
  br label %bb.cr, !llvm.loop !39

bb.ar:                                            ; preds = %bb.al
  %.not372 = icmp eq i16 %.0277.shrunk426, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cw, i64 10
  %i.dr = load i8, ptr %i.dq, align 2, !range !10, !noundef !11 ; 2 uses
  br i1 %.not372, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ds = or i8 %i.dr, %.0268429                  ; 2 uses
  %i.dt = icmp eq i32 %.0274427, 1
  %i.du = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  br i1 %i.dt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @bit_and(ptr noundef %i.du, ptr noundef %i.dw) #13
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  call void @bit_or(ptr noundef %i.du, ptr noundef %i.dw) #13
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cw, i64 14
  %i.dy = load i8, ptr %i.dx, align 2
  %i.dz = zext i8 %i.dy to i32                    ; 2 uses
  %i.ea = load i16, ptr %i.cx, align 8            ; 2 uses
  %.not348 = icmp eq i16 %i.ea, 0
  br i1 %.not348, label %bb.ax, label %bb.cr, !llvm.loop !39

bb.aw:                                            ; preds = %bb.ar
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.1275 = phi i32 [ %.0274427, %bb.aw ], [ %i.dz, %bb.av ] ; 4 uses
  %.0273.in = phi ptr [ %i.eb, %bb.aw ], [ %i.k, %bb.av ]
  %.1269 = phi i8 [ %i.dr, %bb.aw ], [ %i.ds, %bb.av ] ; 6 uses
  %.0273 = load ptr, ptr %.0273.in, align 8       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cw, i64 12 ; 3 uses
  %i.ed = load i16, ptr %i.ec, align 4
  %i.ee = icmp eq i16 %i.ed, 0
  br i1 %i.ee, label %bb.ay, label %.preheader408

.preheader408:                                    ; preds = %bb.ax
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader408
  %i.ef = trunc nuw i8 %.0282425 to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  br label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.eh = load ptr, ptr %i.k, align 8
  %.not369 = icmp eq ptr %i.eh, null
  br i1 %.not369, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #13
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store ptr null, ptr %i.k, align 8
  br label %bb.cr, !llvm.loop !39

bb.bb:                                            ; preds = %.lr.ph, %bb.bl
  %i.ei = phi ptr [ %i.cu, %.lr.ph ], [ %i.hn, %bb.bl ]
  %i.ej = phi ptr [ %i.cv, %.lr.ph ], [ %i.ho, %bb.bl ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bl ] ; 2 uses
  %.0413 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.bl ] ; 5 uses
  %.0302411 = phi i32 [ 0, %.lr.ph ], [ %.1303, %bb.bl ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv ; 9 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 3 uses
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = call i32 @bit_overlap_any(ptr noundef %i.em, ptr noundef %.0273) #13
  %.not363 = icmp eq i32 %i.en, 0
  br i1 %.not363, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = load i16, ptr %i.ek, align 8
  %i.ep = sext i32 %.0302411 to i64               ; 2 uses
  %i.eq = getelementptr inbounds [64 x i8], ptr %i.ej, i64 %i.ep
  store i16 %i.eo, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 48 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8
  %i.et = load ptr, ptr %i.b, align 8             ; 8 uses
  %i.eu = getelementptr inbounds [64 x i8], ptr %i.et, i64 %i.ep ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
end_hunk_1
