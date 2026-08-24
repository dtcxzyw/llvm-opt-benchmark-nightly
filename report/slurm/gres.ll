Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/gres?download=true
inline.NumInlined: 191
inline.NumDeleted: 74
begin_hunk_0_@llvm.memset.p0.i64
; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_fill_in_gres_devices(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %i.c = load i32, ptr %0, align 8
  %i.d = and i32 %i.c, 2
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not42 = icmp eq ptr %i.f, null
  br i1 %.not42, label %bb.aa, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @xstrcmp(ptr noundef %i.h, ptr noundef %i.j) #26
  %.not43 = icmp eq i32 %i.k, 0
  br i1 %.not43, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = tail call ptr @hostlist_create(ptr noundef %i.l) #26 ; 4 uses
  %.not44 = icmp eq ptr %i.m, null
  br i1 %.not44, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.n = tail call ptr @hostlist_shift(ptr noundef nonnull %i.m) #26 ; 2 uses
  %.not4560 = icmp eq ptr %i.n, null
  br i1 %.not4560, label %._crit_edge, label %.lr.ph61

.lr.ph61:                                         ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.e, align 8
  %i.y = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.106, ptr noundef %i.x) #26 ; 0 uses
  br label %bb.aa

bb.f:                                             ; preds = %.lr.ph61, %.backedge
  %i.z = phi ptr [ %i.n, %.lr.ph61 ], [ %i.cy, %.backedge ] ; 10 uses
  %i.aa = load i8, ptr %i.o, align 8, !range !13, !noundef !14
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.p, align 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not47 = icmp eq ptr %i.ad, null
  br i1 %.not47, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = call ptr @list_create(ptr noundef nonnull @destroy_gres_device) #26
  %i.af = load ptr, ptr %i.p, align 8
  store ptr %i.ae, ptr %i.af, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = load i32, ptr %i.q, align 8
  %i.ah = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.ai = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 48, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 2718, ptr noundef nonnull @__func__._init_gres_device) #26 ; 9 uses
  store ptr %i.ai, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20 ; 2 uses
  store i32 -1, ptr %i.aj, align 4
  store i32 %i.ag, ptr %i.ai, align 8
  %i.ak = call ptr @xstrdup(ptr noundef nonnull %i.z) #26
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 5 uses
  store ptr %i.ak, ptr %i.al, align 8
  %i.am = call ptr @xstrdup(ptr noundef %i.ah) #26
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %i.am, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  store i32 0, ptr %i.ap, align 8
  store i32 -2, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 3 uses
  store i32 -2, ptr %i.aq, align 4
  %i.ar = load ptr, ptr %i.al, align 8
  %i.as = call i32 @stat(ptr noundef %i.ar, ptr noundef nonnull %2) #26
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.al, align 8
  %i.av = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.108, ptr noundef nonnull @__func__._set_gres_device_desc, ptr noundef %i.au) #26 ; 0 uses
  br label %_init_gres_device.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.aw = load i64, ptr %i.s, align 8             ; 4 uses
  %i.ax = lshr i64 %i.aw, 8
  %i.ay = and i64 %i.ax, 4095
  %i.az = lshr i64 %i.aw, 32
  %i.ba = and i64 %i.az, 4294963200
  %i.bb = or disjoint i64 %i.ay, %i.ba
  %i.bc = trunc nuw i64 %i.bb to i32
  store i32 %i.bc, ptr %i.ao, align 8
  %i.bd = and i64 %i.aw, 255
  %i.be = lshr i64 %i.aw, 12
  %i.bf = and i64 %i.be, 4294967040
  %i.bg = or disjoint i64 %i.bf, %i.bd
  %i.bh = trunc nuw i64 %i.bg to i32
  store i32 %i.bh, ptr %i.aq, align 4
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.bj = and i64 %i.bi, 64
  %.not.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = call i32 @get_log_level() #26
  %i.bl = icmp sgt i32 %i.bk, 3
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.al, align 8
  %i.bn = load i32, ptr %i.ao, align 8
  %i.bo = load i32, ptr %i.aq, align 4
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.109, ptr noundef nonnull @__func__._set_gres_device_desc, ptr noundef %i.bm, i32 noundef %i.bn, i32 noundef %i.bo) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.bp = load i32, ptr %i.t, align 8
  %i.bq = trunc i32 %i.bp to i16
  %trunc.i.i = and i16 %i.bq, -4096
  switch i16 %trunc.i.i, label %bb.p [
    i16 24576, label %bb.q
    i16 8192, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.al, align 8
  %i.bs = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.110, ptr noundef %i.br) #26 ; 0 uses
  br label %_init_gres_device.exit.thread

_init_gres_device.exit.thread:                    ; preds = %bb.j, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @slurm_xfree(ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @free(ptr noundef nonnull %i.z) #26
  br label %.backedge

bb.q:                                             ; preds = %bb.o, %bb.n
  %storemerge.i.i = phi i32 [ 2, %bb.o ], [ 1, %bb.n ]
  store i32 %storemerge.i.i, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.bt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #29 ; 3 uses
  %i.bu = trunc i64 %i.bt to i32
  %.not1822.i = icmp slt i32 %i.bu, 1
  br i1 %.not1822.i, label %_init_gres_device.exit.thread53, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.bv = tail call ptr @__ctype_b_loc() #27
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = and i64 %i.bt, 2147483647               ; 2 uses
  %i.by = add nuw nsw i64 %i.bt, 1
  %wide.trip.count.i = and i64 %i.by, 4294967295  ; 2 uses
  %i.bz = add nsw i64 %i.bx, -1                   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = sext i8 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = and i16 %i.ce, 2048
  %.not19.i58 = icmp eq i16 %i.cf, 0
  br i1 %.not19.i58, label %_init_gres_device.exit.thread53, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i
  %exitcond.not.i68 = icmp eq i64 %wide.trip.count.i, 2
  br i1 %exitcond.not.i68, label %._crit_edge.thread.i, label %.lr.ph70, !llvm.loop !29

.lr.ph70:                                         ; preds = %.lr.ph.preheader
  br label %bb.r, !llvm.loop !29

.lr.ph:                                           ; preds = %bb.r
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i69, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.._crit_edge.thread.i.loopexit_crit_edge, label %bb.r, !llvm.loop !29

bb.r:                                             ; preds = %.lr.ph70, %.lr.ph
  %indvars.iv.next.i69 = phi i64 [ 2, %.lr.ph70 ], [ %indvars.iv.next.i, %.lr.ph ] ; 2 uses
  %i.cg = phi i64 [ %i.bz, %.lr.ph70 ], [ %i.ch, %.lr.ph ] ; 2 uses
  %i.ch = sub nsw i64 %i.bx, %indvars.iv.next.i69 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = sext i8 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = and i16 %i.cm, 2048
  %.not19.i = icmp eq i16 %i.cn, 0
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph, !llvm.loop !29

._crit_edge.i:                                    ; preds = %bb.r
  %i.co = icmp sgt i64 %i.cg, -1
  br i1 %i.co, label %._crit_edge.thread.i, label %_init_gres_device.exit.thread53

.lr.ph.._crit_edge.thread.i.loopexit_crit_edge:   ; preds = %.lr.ph
  br label %._crit_edge.thread.i, !llvm.loop !29

._crit_edge.thread.i:                             ; preds = %.lr.ph.preheader, %.lr.ph.._crit_edge.thread.i.loopexit_crit_edge, %._crit_edge.i
  %.015.lcssa29.i = phi i64 [ %i.cg, %._crit_edge.i ], [ 0, %.lr.ph.._crit_edge.thread.i.loopexit_crit_edge ], [ 0, %.lr.ph.preheader ]
  %3 = and i64 %.015.lcssa29.i, 4294967295
  %i.cp = getelementptr inbounds nuw i8, ptr %i.z, i64 %3
  %i.cq = call i64 @__isoc23_strtol(ptr noundef nonnull %i.cp, ptr noundef null, i32 noundef 10) #26, !inline_history !30
  %i.cr = trunc i64 %i.cq to i32
  br label %_init_gres_device.exit.thread53

_init_gres_device.exit.thread53:                  ; preds = %._crit_edge.thread.i, %._crit_edge.i, %.lr.ph.i, %bb.q
  %storemerge.i.sink = phi i32 [ -1, %bb.q ], [ %i.cr, %._crit_edge.thread.i ], [ -1, %._crit_edge.i ], [ -1, %.lr.ph.i ] ; 3 uses
  store i32 %storemerge.i.sink, ptr %i.aj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.cs = load i32, ptr %i.u, align 4
  %i.ct = icmp sgt i32 %storemerge.i.sink, %i.cs
  br i1 %i.ct, label %bb.s, label %.thread

bb.s:                                             ; preds = %_init_gres_device.exit.thread53
  store i32 %storemerge.i.sink, ptr %i.u, align 4
  br label %.thread

.thread:                                          ; preds = %_init_gres_device.exit.thread53, %bb.s
  %i.cu = load ptr, ptr %i.p, align 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void @list_append(ptr noundef %i.cv, ptr noundef nonnull %i.ai) #26
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.f
  %i.cw = load i32, ptr %0, align 8
  %i.cx = and i32 %i.cw, 1
  %.not49 = icmp eq i32 %i.cx, 0
  br i1 %.not49, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.z) #26
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.y, %_init_gres_device.exit.thread
  %i.cy = call ptr @hostlist_shift(ptr noundef nonnull %i.m) #26 ; 2 uses
  %.not45 = icmp eq ptr %i.cy, null
  br i1 %.not45, label %._crit_edge, label %bb.f, !llvm.loop !31

bb.v:                                             ; preds = %bb.t
  %i.cz = load i32, ptr %i.v, align 8
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.db = load ptr, ptr %i.w, align 8
  %i.dc = call ptr @list_find_first(ptr noundef %i.db, ptr noundef nonnull @slurm_find_char_exact_in_list, ptr noundef nonnull %i.z) #26
  %.not50 = icmp eq ptr %i.dc, null
  br i1 %.not50, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = load ptr, ptr %i.i, align 8
  %i.de = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.107, ptr noundef %i.dd, ptr noundef nonnull %i.z) #26 ; 0 uses
  store i32 -1, ptr %i.v, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.df = load ptr, ptr %i.w, align 8
  call void @list_append(ptr noundef %i.df, ptr noundef nonnull %i.z) #26
  %i.dg = load i32, ptr %i.q, align 8
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.q, align 8
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %.preheader
  call void @hostlist_destroy(ptr noundef nonnull %i.m) #26
  %i.di = load i32, ptr %0, align 8
  %i.dj = and i32 %i.di, 1
  %.not46 = icmp eq i32 %i.dj, 0
  br i1 %.not46, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %._crit_edge
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %bb.z, %bb.a, %bb.b, %bb.c, %bb.e
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_fill_in_gres_devices_dev_id(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  store i32 %i.h, ptr %i.f, align 4
  store i32 %i.h, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.j = and i64 %i.i, 64
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr null, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 1
  %i.o = select i1 %i.n, i32 98, i32 99
  %i.p = load i32, ptr %i.k, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.77, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.r) #26
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  store ptr %i.s, ptr %i.b, align 8
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.u = and i64 %i.t, 64
  %.not9 = icmp eq i64 %i.u, 0
  br i1 %.not9, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = call i32 @get_log_level() #26
  %i.w = icmp sgt i32 %i.v, 3
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = load i32, ptr %i.c, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.111, ptr noundef %i.z, i32 noundef %i.aa, ptr noundef %i.ac, ptr noundef %i.s) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  call void @slurm_xfree(ptr noundef nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2123) i32 @gres_parse_conf(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.41, ptr noundef nonnull @__func__.gres_parse_conf, ptr noundef %0) #26 ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @gres_context_lock) #26 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @__errno_location() #27
  store i32 %i.c, ptr %i.d, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.gres_parse_conf) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = load i32, ptr @gres_context_cnt, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.g = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @gres_context_lock) #26 ; 2 uses
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = tail call ptr @__errno_location() #27
  store i32 %i.g, ptr %i.h, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.gres_parse_conf) #28
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.i = tail call fastcc i32 @_parse_gres_conf_locked(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i1 true, ptr @gres_conf_parsed_early, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.k = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @gres_context_lock) #26 ; 2 uses
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.l, label %bb.k

end_hunk_0
begin_hunk_1_@_get_usable_gres:bb.a
  %i.cm = add nuw i32 %1, 1
  %wide.trip.count.i = zext i32 %i.cm to i64
  br label %.lr.ph.i.i

_filter_shared_gres_per_task.exit68.us.preheader.i: ; preds = %.lr.ph.i
  %i.cn = add nuw i32 %1, 1
  %wide.trip.count151.i = zext i32 %i.cn to i64
  br label %_filter_shared_gres_per_task.exit68.us.i

_filter_shared_gres_per_task.exit68.us.i:         ; preds = %bb.ao, %_filter_shared_gres_per_task.exit68.us.preheader.i
  %indvars.iv148.i = phi i64 [ 0, %_filter_shared_gres_per_task.exit68.us.preheader.i ], [ %indvars.iv.next149.i, %bb.ao ] ; 2 uses
  %i.co = load ptr, ptr %i.ck, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv148.i
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = call fastcc ptr @_get_closest_usable_gres(i32 noundef %i.cd, ptr noundef nonnull %4, ptr noundef %i.cs) ; 2 uses
  store ptr %i.ct, ptr %i.a, align 8
  %.not32.us.i = icmp eq ptr %i.ct, null
  br i1 %.not32.us.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_filter_shared_gres_per_task.exit68.us.i
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #26
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_filter_shared_gres_per_task.exit68.us.i
  store ptr null, ptr %i.a, align 8
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count151.i
  br i1 %exitcond152.not.i, label %_get_shared_gres_per_task.exit, label %_filter_shared_gres_per_task.exit68.us.i, !llvm.loop !161

bb.ap:                                            ; preds = %bb.bd
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_get_shared_gres_per_task.exit, label %.lr.ph.i.i, !llvm.loop !161

.lr.ph.i.i:                                       ; preds = %bb.ap, %.lr.ph.i.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.i ], [ %indvars.iv.next.i, %bb.ap ] ; 3 uses
  %i.cu = load ptr, ptr %i.ck, align 8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call fastcc ptr @_get_closest_usable_gres(i32 noundef %i.cd, ptr noundef nonnull %4, ptr noundef %i.cy) ; 4 uses
  store ptr %i.cz, ptr %i.a, align 8
  %i.da = icmp eq i64 %indvars.iv.i, %i.cl        ; 4 uses
  %i.db = call i64 @bit_ffs_from_bit(ptr noundef %i.cz, i64 noundef 0) #26 ; 3 uses
  %i.dc = and i64 %i.db, 2147483648
  %i.dd = icmp eq i64 %i.dc, 0                    ; 2 uses
  br i1 %i.da, label %.lr.ph.split.us.split.us.i.preheader.i, label %.lr.ph.split.split.us.i.preheader.i

.lr.ph.split.split.us.i.preheader.i:              ; preds = %.lr.ph.i.i
  br i1 %i.dd, label %.lr.ph.split.split.us.backedge.i.i, label %.lr.ph.split.split.us.i37.preheader.i

.lr.ph.split.us.split.us.i.preheader.i:           ; preds = %.lr.ph.i.i
  br i1 %i.dd, label %.lr.ph.split.us.split.us.backedge.i.i, label %.lr.ph.split.us.split.us.i43.preheader.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.split.us.backedge.i.i
  %.025.us.us.be.i.i = add nuw nsw i64 %i.di, 1
  %i.de = and i64 %.025.us.us.be.i.i, 4294967295
  %i.df = call i64 @bit_ffs_from_bit(ptr noundef %i.cz, i64 noundef %i.de) #26 ; 2 uses
  %i.dg = and i64 %i.df, 2147483648
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.split.us.split.us.backedge.i.i, label %.lr.ph.i35.i, !llvm.loop !162

.lr.ph.split.us.split.us.backedge.i.i:            ; preds = %.lr.ph.split.us.split.us.i.preheader.i, %.lr.ph.split.us.split.us.i.i
  %i.di = phi i64 [ %i.df, %.lr.ph.split.us.split.us.i.i ], [ %i.db, %.lr.ph.split.us.split.us.i.preheader.i ] ; 2 uses
  %i.dj = and i64 %i.di, 2147483647               ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dj
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.cc
  br i1 %i.dm, label %.lr.ph.split.us.split.us.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %.lr.ph.split.us.split.us.backedge.i.i
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dj
  %i.do = sub nuw i64 %i.dl, %i.cc
  store i64 %i.do, ptr %i.dn, align 8
  call void @bit_set(ptr noundef %i.cf, i64 noundef %i.dj) #26
  br label %_filter_shared_gres_per_task.exit68thread-pre-split.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.backedge.i.i
  %.025.us27.be.i.i = add nuw nsw i64 %i.dt, 1
  %i.dp = and i64 %.025.us27.be.i.i, 4294967295
  %i.dq = call i64 @bit_ffs_from_bit(ptr noundef %i.cz, i64 noundef %i.dp) #26 ; 2 uses
  %i.dr = and i64 %i.dq, 2147483648
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %.lr.ph.split.split.us.backedge.i.i, label %.lr.ph.i35.i, !llvm.loop !162

.lr.ph.split.split.us.backedge.i.i:               ; preds = %.lr.ph.split.split.us.i.preheader.i, %.lr.ph.split.split.us.i.i
  %i.dt = phi i64 [ %i.dq, %.lr.ph.split.split.us.i.i ], [ %i.db, %.lr.ph.split.split.us.i.preheader.i ] ; 2 uses
  %i.du = and i64 %i.dt, 2147483647               ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8            ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.cc
  br i1 %i.dx, label %.lr.ph.split.split.us.i.i, label %.split38.i.i

.split38.i.i:                                     ; preds = %.lr.ph.split.split.us.backedge.i.i
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.du
  %i.dz = sub nuw i64 %i.dw, %i.cc
  store i64 %i.dz, ptr %i.dy, align 8
  br label %_filter_shared_gres_per_task.exit68thread-pre-split.i

.lr.ph.i35.i:                                     ; preds = %.lr.ph.split.split.us.i.i, %.lr.ph.split.us.split.us.i.i
  br i1 %i.da, label %.lr.ph.split.us.split.us.i43.preheader.i, label %.lr.ph.split.split.us.i37.preheader.i

.lr.ph.split.split.us.i37.preheader.i:            ; preds = %.lr.ph.i35.i, %.lr.ph.split.split.us.i.preheader.i
  %i.ea = call i64 @bit_ffs_from_bit(ptr noundef nonnull %4, i64 noundef 0) #26 ; 2 uses
  %i.eb = and i64 %i.ea, 2147483648
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.lr.ph.split.split.us.backedge.i40.i, label %.lr.ph.i51.thread163.i

.lr.ph.i51.thread163.i:                           ; preds = %.lr.ph.split.split.us.i37.preheader.i
  %i.ed = load ptr, ptr %i.a, align 8
  br label %.lr.ph.split.split.i.preheader.i

.lr.ph.split.us.split.us.i43.preheader.i:         ; preds = %.lr.ph.i35.i, %.lr.ph.split.us.split.us.i.preheader.i
  %i.ee = call i64 @bit_ffs_from_bit(ptr noundef nonnull %4, i64 noundef 0) #26 ; 2 uses
  %i.ef = and i64 %i.ee, 2147483648
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.split.us.split.us.backedge.i47.i, label %.lr.ph.i51.thread.i

.lr.ph.i51.thread.i:                              ; preds = %.lr.ph.split.us.split.us.i43.preheader.i
  %i.eh = load ptr, ptr %i.a, align 8
  br label %.lr.ph.split.us.split.i.preheader.i

.lr.ph.split.us.split.us.i43.i:                   ; preds = %.lr.ph.split.us.split.us.backedge.i47.i
  %.025.us.us.be.i48.i = add nuw nsw i64 %i.em, 1
  %i.ei = and i64 %.025.us.us.be.i48.i, 4294967295
  %i.ej = call i64 @bit_ffs_from_bit(ptr noundef nonnull %4, i64 noundef %i.ei) #26 ; 2 uses
  %i.ek = and i64 %i.ej, 2147483648
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %.lr.ph.split.us.split.us.backedge.i47.i, label %.lr.ph.i51.i, !llvm.loop !162

.lr.ph.split.us.split.us.backedge.i47.i:          ; preds = %.lr.ph.split.us.split.us.i43.preheader.i, %.lr.ph.split.us.split.us.i43.i
  %i.em = phi i64 [ %i.ej, %.lr.ph.split.us.split.us.i43.i ], [ %i.ee, %.lr.ph.split.us.split.us.i43.preheader.i ] ; 2 uses
  %i.en = and i64 %i.em, 2147483647               ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8            ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.cc
  br i1 %i.eq, label %.lr.ph.split.us.split.us.i43.i, label %.split.i45.i

.split.i45.i:                                     ; preds = %.lr.ph.split.us.split.us.backedge.i47.i
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.en
  %i.es = sub nuw i64 %i.ep, %i.cc
  store i64 %i.es, ptr %i.er, align 8
  call void @bit_set(ptr noundef %i.cf, i64 noundef %i.en) #26
  br label %_filter_shared_gres_per_task.exit68thread-pre-split.i

.lr.ph.split.split.us.i37.i:                      ; preds = %.lr.ph.split.split.us.backedge.i40.i
  %.025.us27.be.i41.i = add nuw nsw i64 %i.ex, 1
  %i.et = and i64 %.025.us27.be.i41.i, 4294967295
  %i.eu = call i64 @bit_ffs_from_bit(ptr noundef nonnull %4, i64 noundef %i.et) #26 ; 2 uses
  %i.ev = and i64 %i.eu, 2147483648
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.split.split.us.backedge.i40.i, label %.lr.ph.i51.i, !llvm.loop !162

.lr.ph.split.split.us.backedge.i40.i:             ; preds = %.lr.ph.split.split.us.i37.preheader.i, %.lr.ph.split.split.us.i37.i
  %i.ex = phi i64 [ %i.eu, %.lr.ph.split.split.us.i37.i ], [ %i.ea, %.lr.ph.split.split.us.i37.preheader.i ] ; 2 uses
  %i.ey = and i64 %i.ex, 2147483647               ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ey
  %i.fa = load i64, ptr %i.ez, align 8            ; 2 uses
  %i.fb = icmp ult i64 %i.fa, %i.cc
  br i1 %i.fb, label %.lr.ph.split.split.us.i37.i, label %.split38.i39.i

.split38.i39.i:                                   ; preds = %.lr.ph.split.split.us.backedge.i40.i
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ey
  %i.fd = sub nuw i64 %i.fa, %i.cc
  store i64 %i.fd, ptr %i.fc, align 8
  br label %_filter_shared_gres_per_task.exit68thread-pre-split.i

.lr.ph.i51.i:                                     ; preds = %.lr.ph.split.split.us.i37.i, %.lr.ph.split.us.split.us.i43.i
  %i.fe = load ptr, ptr %i.a, align 8             ; 2 uses
  br i1 %i.da, label %.lr.ph.split.us.split.i.preheader.i, label %.lr.ph.split.split.i.preheader.i

.lr.ph.split.split.i.preheader.i:                 ; preds = %.lr.ph.i51.i, %.lr.ph.i51.thread163.i
  %i.ff = phi ptr [ %i.ed, %.lr.ph.i51.thread163.i ], [ %i.fe, %.lr.ph.i51.i ]
  br label %.lr.ph.split.split.i.i

.lr.ph.split.us.split.i.preheader.i:              ; preds = %.lr.ph.i51.i, %.lr.ph.i51.thread.i
  %i.fg = phi ptr [ %i.eh, %.lr.ph.i51.thread.i ], [ %i.fe, %.lr.ph.i51.i ]
  br label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.i.i:                        ; preds = %bb.as, %.lr.ph.split.us.split.i.preheader.i
  %.16.i = phi i64 [ %.17.i, %bb.as ], [ %i.cc, %.lr.ph.split.us.split.i.preheader.i ] ; 4 uses
  %.025.us.i.i = phi i64 [ %i.fr, %bb.as ], [ 0, %.lr.ph.split.us.split.i.preheader.i ]
  %i.fh = and i64 %.025.us.i.i, 4294967295
  %i.fi = call i64 @bit_ffs_from_bit(ptr noundef %i.fg, i64 noundef %i.fh) #26 ; 3 uses
  %i.fj = and i64 %i.fi, 2147483648
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %bb.aq, label %_filter_shared_gres_per_task.exit54.i

bb.aq:                                            ; preds = %.lr.ph.split.us.split.i.i
  %i.fl = and i64 %i.fi, 2147483647               ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.fl ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8            ; 3 uses
  %i.fo = icmp eq i64 %i.fn, 0
  br i1 %i.fo, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %..us.i.i = call i64 @llvm.umin.i64(i64 %i.fn, i64 %.16.i) ; 2 uses
  %i.fp = sub i64 %i.fn, %..us.i.i
  store i64 %i.fp, ptr %i.fm, align 8
  %i.fq = sub i64 %.16.i, %..us.i.i
  call void @bit_set(ptr noundef %i.cf, i64 noundef %i.fl) #26
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.17.i = phi i64 [ %.16.i, %bb.aq ], [ %i.fq, %bb.ar ] ; 2 uses
  %i.fr = add nuw nsw i64 %i.fi, 1
  %.not.us.i.i = icmp eq i64 %.17.i, 0
  br i1 %.not.us.i.i, label %_filter_shared_gres_per_task.exit68thread-pre-split.i, label %.lr.ph.split.us.split.i.i, !llvm.loop !162

.lr.ph.split.split.i.i:                           ; preds = %bb.av, %.lr.ph.split.split.i.preheader.i
  %.14.i = phi i64 [ %.15.i, %bb.av ], [ %i.cc, %.lr.ph.split.split.i.preheader.i ] ; 4 uses
  %.025.i.i = phi i64 [ %i.gc, %bb.av ], [ 0, %.lr.ph.split.split.i.preheader.i ]
  %i.fs = and i64 %.025.i.i, 4294967295
  %i.ft = call i64 @bit_ffs_from_bit(ptr noundef %i.ff, i64 noundef %i.fs) #26 ; 3 uses
  %i.fu = and i64 %i.ft, 2147483648
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %bb.at, label %_filter_shared_gres_per_task.exit54.i

bb.at:                                            ; preds = %.lr.ph.split.split.i.i
  %i.fw = and i64 %i.ft, 2147483647
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.fw ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8            ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %..i.i = call i64 @llvm.umin.i64(i64 %i.fy, i64 %.14.i) ; 2 uses
  %i.ga = sub i64 %i.fy, %..i.i
  store i64 %i.ga, ptr %i.fx, align 8
  %i.gb = sub i64 %.14.i, %..i.i
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.15.i = phi i64 [ %.14.i, %bb.at ], [ %i.gb, %bb.au ] ; 2 uses
  %i.gc = add nuw nsw i64 %i.ft, 1
  %.not.i.i = icmp eq i64 %.15.i, 0
  br i1 %.not.i.i, label %_filter_shared_gres_per_task.exit68thread-pre-split.i, label %.lr.ph.split.split.i.i, !llvm.loop !162

_filter_shared_gres_per_task.exit54.i:            ; preds = %.lr.ph.split.split.i.i, %.lr.ph.split.us.split.i.i
  %.2.i = phi i64 [ %.16.i, %.lr.ph.split.us.split.i.i ], [ %.14.i, %.lr.ph.split.split.i.i ] ; 2 uses
  br i1 %i.da, label %.lr.ph.split.us.split.i63.i, label %.lr.ph.split.split.i58.i

.lr.ph.split.us.split.i63.i:                      ; preds = %_filter_shared_gres_per_task.exit54.i, %bb.ay
  %.21.i = phi i64 [ %.22.i, %bb.ay ], [ %.2.i, %_filter_shared_gres_per_task.exit54.i ] ; 3 uses
  %.025.us.i64.i = phi i64 [ %i.gn, %bb.ay ], [ 0, %_filter_shared_gres_per_task.exit54.i ]
  %i.gd = and i64 %.025.us.i64.i, 4294967295
  %i.ge = call i64 @bit_ffs_from_bit(ptr noundef nonnull %4, i64 noundef %i.gd) #26 ; 3 uses
  %i.gf = and i64 %i.ge, 2147483648
  %i.gg = icmp eq i64 %i.gf, 0                    ; 3 uses
  br i1 %i.gg, label %bb.aw, label %_filter_shared_gres_per_task.exit68thread-pre-split.i

bb.aw:                                            ; preds = %.lr.ph.split.us.split.i63.i
  %i.gh = and i64 %i.ge, 2147483647               ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.gh ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8            ; 3 uses
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %..us.i65.i = call i64 @llvm.umin.i64(i64 %i.gj, i64 %.21.i) ; 2 uses
  %i.gl = sub i64 %i.gj, %..us.i65.i
  store i64 %i.gl, ptr %i.gi, align 8
  %i.gm = sub i64 %.21.i, %..us.i65.i
  call void @bit_set(ptr noundef %i.cf, i64 noundef %i.gh) #26
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.22.i = phi i64 [ %.21.i, %bb.aw ], [ %i.gm, %bb.ax ] ; 2 uses
  %i.gn = add nuw nsw i64 %i.ge, 1
  %.not.us.i67.i = icmp eq i64 %.22.i, 0
  br i1 %.not.us.i67.i, label %_filter_shared_gres_per_task.exit68thread-pre-split.i, label %.lr.ph.split.us.split.i63.i, !llvm.loop !162

.lr.ph.split.split.i58.i:                         ; preds = %_filter_shared_gres_per_task.exit54.i, %bb.bb
  %.19.i = phi i64 [ %.20.i, %bb.bb ], [ %.2.i, %_filter_shared_gres_per_task.exit54.i ] ; 3 uses
  %.025.i59.i = phi i64 [ %i.gy, %bb.bb ], [ 0, %_filter_shared_gres_per_task.exit54.i ]
  %i.go = and i64 %.025.i59.i, 4294967295
  %i.gp = call i64 @bit_ffs_from_bit(ptr noundef nonnull %4, i64 noundef %i.go) #26 ; 3 uses
  %i.gq = and i64 %i.gp, 2147483648
  %i.gr = icmp eq i64 %i.gq, 0                    ; 3 uses
  br i1 %i.gr, label %bb.az, label %_filter_shared_gres_per_task.exit68thread-pre-split.i

bb.az:                                            ; preds = %.lr.ph.split.split.i58.i
  %i.gs = and i64 %i.gp, 2147483647
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.gs ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8            ; 3 uses
  %i.gv = icmp eq i64 %i.gu, 0
  br i1 %i.gv, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %..i60.i = call i64 @llvm.umin.i64(i64 %i.gu, i64 %.19.i) ; 2 uses
  %i.gw = sub i64 %i.gu, %..i60.i
  store i64 %i.gw, ptr %i.gt, align 8
  %i.gx = sub i64 %.19.i, %..i60.i
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.20.i = phi i64 [ %.19.i, %bb.az ], [ %i.gx, %bb.ba ] ; 2 uses
  %i.gy = add nuw nsw i64 %i.gp, 1
  %.not.i61.i = icmp eq i64 %.20.i, 0
  br i1 %.not.i61.i, label %_filter_shared_gres_per_task.exit68thread-pre-split.i, label %.lr.ph.split.split.i58.i, !llvm.loop !162

_filter_shared_gres_per_task.exit68thread-pre-split.i: ; preds = %bb.av, %bb.as, %bb.bb, %.lr.ph.split.split.i58.i, %bb.ay, %.lr.ph.split.us.split.i63.i, %.split38.i39.i, %.split.i45.i, %.split38.i.i, %.split.i.i
  %.3.ph.i = phi i1 [ true, %.split.i.i ], [ true, %.split38.i.i ], [ true, %.split.i45.i ], [ true, %.split38.i39.i ], [ %i.gr, %bb.bb ], [ %i.gg, %bb.ay ], [ true, %bb.as ], [ %i.gg, %.lr.ph.split.us.split.i63.i ], [ %i.gr, %.lr.ph.split.split.i58.i ], [ true, %bb.av ]
  %.pr.i = load ptr, ptr %i.a, align 8
  %.not32.i = icmp eq ptr %.pr.i, null
  br i1 %.not32.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_filter_shared_gres_per_task.exit68thread-pre-split.i
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #26
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_filter_shared_gres_per_task.exit68thread-pre-split.i
  store ptr null, ptr %i.a, align 8
  br i1 %.3.ph.i, label %bb.ap, label %.split.i

.split.i:                                         ; preds = %bb.bd
  %i.gz = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.359, i64 noundef %i.cc) #26 ; 0 uses
  br label %_get_shared_gres_per_task.exit

_get_shared_gres_per_task.exit:                   ; preds = %bb.ap, %bb.ao, %bb.am, %.split.i
  call void @slurm_xfree(ptr noundef nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br i1 %5, label %bb.bl, label %bb.be

bb.be:                                            ; preds = %_get_shared_gres_per_task.exit
  %.b.i = load i1, ptr @dev_index_mode_set, align 1
  br i1 %.b.i, label %gres_use_local_device_index.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i1 true, ptr @dev_index_mode_set, align 1
  %i.ha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1512), align 8 ; 2 uses
  %.not.i110 = icmp eq ptr %i.ha, null
  br i1 %.not.i110, label %gres_use_local_device_index.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hb = call ptr @xstrstr(ptr noundef nonnull %i.ha, ptr noundef nonnull @.str) #26
  %.not7.not.i = icmp eq ptr %i.hb, null
  br i1 %.not7.not.i, label %gres_use_local_device_index.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hc = call i32 @cgroup_conf_init() #26        ; 0 uses
  %i.hd = load i8, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 49), align 1, !range !13, !noundef !14
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %gres_use_local_device_index.exit.thread, label %gres_use_local_device_index.exit

gres_use_local_device_index.exit.thread:          ; preds = %bb.bh
  store i1 true, ptr @use_local_index, align 1
  br label %bb.bi

gres_use_local_device_index.exit:                 ; preds = %bb.be, %bb.bf, %bb.bg, %bb.bh
  %.01.i.pr = load i1, ptr @use_local_index, align 1
  br i1 %.01.i.pr, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %gres_use_local_device_index.exit.thread, %gres_use_local_device_index.exit
  call void @bit_consolidate(ptr noundef %i.cf) #26
  br label %bb.bl

bb.bj:                                            ; preds = %bb.al
  %i.hf = call i32 @xstrncasecmp(ptr noundef nonnull %.087, ptr noundef nonnull @.str.348, i64 noundef 4) #26
  %.not107 = icmp eq i32 %i.hf, 0
  br i1 %.not107, label %bb.bk, label %bb.bu

bb.bk:                                            ; preds = %bb.bj
  %i.hg = call ptr @bit_copy(ptr noundef nonnull %4) #26
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi, %gres_use_local_device_index.exit, %_get_shared_gres_per_task.exit, %bb.o, %bb.s, %bb.z, %bb.y, %bb.ak, %bb.ai, %bb.ah, %bb.ab, %bb.ac, %bb.ad, %bb.u, %bb.q
  %.0 = phi ptr [ %i.hg, %bb.bk ], [ %i.cf, %_get_shared_gres_per_task.exit ], [ %i.cf, %bb.bi ], [ %i.cf, %gres_use_local_device_index.exit ], [ %i.bz, %bb.ak ], [ %i.bx, %bb.ai ], [ %i.br, %bb.ah ], [ %i.bm, %bb.ab ], [ %i.bm, %bb.ad ], [ %i.bm, %bb.ac ], [ %i.bd, %bb.z ], [ %i.az, %bb.y ], [ %i.av, %bb.u ], [ %i.as, %bb.s ], [ %i.ap, %bb.q ], [ %i.am, %bb.o ] ; 4 uses
  %.not108 = icmp eq ptr %.0, null
  br i1 %.not108, label %bb.bt, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hh = call i32 @bit_set_count(ptr noundef nonnull %.0) #26
  %.not109 = icmp eq i32 %i.hh, 0
  br i1 %.not109, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  %i.hi = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.349, ptr noundef nonnull %2, i32 noundef %1) #26 ; 0 uses
  br i1 %5, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.b.i111 = load i1, ptr @dev_index_mode_set, align 1
  br i1 %.b.i111, label %gres_use_local_device_index.exit115, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  store i1 true, ptr @dev_index_mode_set, align 1
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1512), align 8 ; 2 uses
  %.not.i112 = icmp eq ptr %i.hj, null
  br i1 %.not.i112, label %gres_use_local_device_index.exit115, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hk = call ptr @xstrstr(ptr noundef nonnull %i.hj, ptr noundef nonnull @.str) #26
  %.not7.not.i113 = icmp eq ptr %i.hk, null
  br i1 %.not7.not.i113, label %gres_use_local_device_index.exit115, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hl = call i32 @cgroup_conf_init() #26        ; 0 uses
  %i.hm = load i8, ptr getelementptr inbounds nuw (i8, ptr @slurm_cgroup_conf, i64 49), align 1, !range !13, !noundef !14
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %gres_use_local_device_index.exit115.thread, label %gres_use_local_device_index.exit115

gres_use_local_device_index.exit115.thread:       ; preds = %bb.br
  store i1 true, ptr @use_local_index, align 1
  br label %.sink.split

gres_use_local_device_index.exit115:              ; preds = %bb.bo, %bb.bp, %bb.bq, %bb.br
  %.01.i114.pr = load i1, ptr @use_local_index, align 1
  br i1 %.01.i114.pr, label %.sink.split, label %bb.bs

bb.bs:                                            ; preds = %gres_use_local_device_index.exit115, %bb.bn
  %i.ho = call i64 @bit_ffs(ptr noundef nonnull %4) #26
  br label %.sink.split

.sink.split:                                      ; preds = %gres_use_local_device_index.exit115, %gres_use_local_device_index.exit115.thread, %bb.bs
  %.sink = phi i64 [ %i.ho, %bb.bs ], [ 0, %gres_use_local_device_index.exit115.thread ], [ 0, %gres_use_local_device_index.exit115 ]
  call void @bit_set(ptr noundef nonnull %.0, i64 noundef %.sink) #26
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split, %bb.bm, %bb.bl
  store ptr %.0, ptr %3, align 8
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bj, %bb.aj, %bb.h, %bb.a, %bb.bt, %bb.c
  %.088 = phi i32 [ 0, %bb.a ], [ -1, %bb.aj ], [ 0, %bb.bt ], [ 0, %bb.h ], [ 0, %bb.c ], [ -1, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  ret i32 %.088
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @_foreach_alloc_gres_device(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %0, align 8
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i32 @slurm_bit_test(ptr noundef %i.b, i64 noundef %i.d) #26
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = tail call i32 @slurm_bit_test(ptr noundef nonnull %i.g, i64 noundef %i.i) #26
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %1, align 8
  %i.l = tail call ptr @list_find_first(ptr noundef %i.k, ptr noundef nonnull @_find_device, ptr noundef nonnull %0) #26 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.m, align 4
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 1, ptr %i.n, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local void @gres_step_list_delete(ptr noundef %0) #2 {
_gres_state_delete_members.exit:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call fastcc void @_step_state_delete(ptr noundef %i.c)
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr %0, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.d) #26
  call void @slurm_xfree(ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_step_state_delete(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr %0, ptr %i.a, align 8
end_hunk_1
