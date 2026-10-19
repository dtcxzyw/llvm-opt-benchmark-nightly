Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/hostlist?download=true
inline.NumInlined: 142
inline.NumDeleted: 36
begin_hunk_0_@hostlist_ranged_string_dims:bb.a
  %.not136 = icmp eq i32 %i.d, 0
  br i1 %.not136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @__errno_location() #22
  store i32 %i.d, ptr %i.e, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_ranged_string_dims) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp sgt i32 %.0113, 1
  br i1 %i.f, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4
  %.not137 = icmp eq i32 %i.h, 0
  br i1 %.not137, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @multi_dim_lock) #21 ; 2 uses
  %.not138 = icmp eq i32 %i.i, 0
  br i1 %.not138, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = tail call ptr @__errno_location() #22
  store i32 %i.i, ptr %i.j, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.hostlist_ranged_string_dims) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = load i32, ptr @hostlist_ranged_string_dims.last_dims, align 4
  %i.l = icmp ne i32 %i.k, %.0113
  %i.m = load i32, ptr @dim_grid_size, align 4
  %i.n = icmp eq i32 %i.m, -1
  %or.cond = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit183

.lr.ph.preheader:                                 ; preds = %bb.i
  store i32 %.0113, ptr @hostlist_ranged_string_dims.last_dims, align 4
  %i.o = shl i32 %.0113, 2
  store i32 %i.o, ptr @dim_grid_size, align 4
  %i.p = zext nneg i32 %.0113 to i64
  %i.q = getelementptr [4 x i8], ptr @offset, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  store i32 1, ptr %i.r, align 4
  %i.s = add nsw i32 %.0113, -2
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = getelementptr i8, ptr @offset, i64 %i.u
  %scevgep = getelementptr i8, ptr %i.v, i64 4
  %load_initial = load i32, ptr %scevgep, align 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %store_forwarded = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.x, %.lr.ph ]
  %indvars.iv = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @offset, i64 %indvars.iv
  %i.x = mul nsw i32 %store_forwarded, 36         ; 2 uses
  store i32 %i.x, ptr %i.w, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not297 = icmp eq i64 %indvars.iv, 0
  br i1 %.not297, label %.loopexit183, label %.lr.ph, !llvm.loop !30

.loopexit183:                                     ; preds = %.lr.ph, %bb.i
  %i.y = load i32, ptr @hostlist_ranged_string_dims.max_dims, align 4
  %i.z = icmp slt i32 %i.y, %.0113
  br i1 %i.z, label %.lr.ph193.preheader, label %bb.m

.lr.ph193.preheader:                              ; preds = %.loopexit183
  store i32 %.0113, ptr @hostlist_ranged_string_dims.max_dims, align 4
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.lr.ph193.preheader, %.lr.ph193
  %storemerge139192 = phi i32 [ %i.ac, %.lr.ph193 ], [ 0, %.lr.ph193.preheader ]
  %i.aa = phi i64 [ %i.ab, %.lr.ph193 ], [ 1, %.lr.ph193.preheader ]
  %i.ab = mul i64 %i.aa, 36                       ; 3 uses
  %i.ac = add nuw nsw i32 %storemerge139192, 1    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %.0113
  br i1 %exitcond.not, label %bb.j, label %.lr.ph193, !llvm.loop !31

bb.j:                                             ; preds = %.lr.ph193
  store i64 %i.ab, ptr @grid_size, align 8
  %i.ad = load ptr, ptr @bit_grid, align 8
  %.not140 = icmp eq ptr %i.ad, null
  br i1 %.not140, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @slurm_bit_free(ptr noundef nonnull @bit_grid) #21
  %.pre = load i64, ptr @grid_size, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ae = phi i64 [ %.pre, %bb.k ], [ %i.ab, %bb.j ]
  store ptr null, ptr @bit_grid, align 8
  %i.af = tail call ptr @bit_alloc(i64 noundef %i.ae) #21
  store ptr %i.af, ptr @bit_grid, align 8
  br label %bb.n

bb.m:                                             ; preds = %.loopexit183
  %i.ag = load ptr, ptr @bit_grid, align 8
  tail call void @bit_clear_all(ptr noundef %i.ag) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ah = load i32, ptr @dim_grid_size, align 4
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @grid_start, i8 36, i64 %i.ai, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @grid_end, i8 -1, i64 %i.ai, i1 false)
  %i.aj = load i32, ptr %i.g, align 4
  %.not181195 = icmp sgt i32 %i.aj, 0
  br i1 %.not181195, label %.lr.ph199, label %._crit_edge200

.lr.ph199:                                        ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph199, %bb.u
  %indvars.iv235 = phi i64 [ 0, %.lr.ph199 ], [ %indvars.iv.next236, %bb.u ] ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv235
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8
  %.not151 = icmp eq i32 %i.ap, %.0113
  br i1 %.not151, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = trunc nuw nsw i64 %indvars.iv235 to i32 ; 2 uses
  %i.ar = load ptr, ptr %i.an, align 8
  %i.as = load i8, ptr %i.ar, align 1
  %.not152 = icmp eq i8 %i.as, 0
  %i.at = tail call i32 @get_log_level() #21      ; 2 uses
  br i1 %.not152, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = icmp sgt i32 %i.at, 7
  br i1 %i.au, label %bb.r, label %bb.ag

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %i.ak, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv235
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ba = load i32, ptr %i.az, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 8, ptr noundef nonnull @.str.11, i32 noundef %.0113, i32 noundef %i.aq, ptr noundef %i.ay, i32 noundef %i.ba) #21
  br label %bb.ag

bb.s:                                             ; preds = %bb.p
  %i.bb = icmp sgt i32 %i.at, 6
  br i1 %i.bb, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.ak, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv235
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.bf, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 7, ptr noundef nonnull @.str.12, i32 noundef %.0113, i32 noundef %i.aq, i32 noundef %i.bg) #21
  br label %bb.ag

bb.u:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bk = load i64, ptr %i.bj, align 8
  tail call fastcc void @_set_grid(i64 noundef %i.bi, i64 noundef %i.bk, i32 noundef %.0113)
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %i.bl = load i32, ptr %i.g, align 4
  %i.bm = sext i32 %i.bl to i64
  %.not181 = icmp slt i64 %indvars.iv.next236, %i.bm
  br i1 %.not181, label %bb.o, label %._crit_edge200.loopexit, !llvm.loop !32

._crit_edge200.loopexit:                          ; preds = %bb.u
  %.pre268 = load i32, ptr @dim_grid_size, align 4
  %.pre269 = sext i32 %.pre268 to i64
  br label %._crit_edge200

._crit_edge200:                                   ; preds = %._crit_edge200.loopexit, %bb.n
  %.pre-phi = phi i64 [ %.pre269, %._crit_edge200.loopexit ], [ %i.ai, %bb.n ]
  %bcmp = tail call i32 @bcmp(ptr nonnull @grid_start, ptr nonnull @grid_end, i64 %.pre-phi)
  %.not142 = icmp eq i32 %bcmp, 0
  br i1 %.not142, label %bb.v, label %.preheader.preheader.i

bb.v:                                             ; preds = %._crit_edge200
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %1, ptr noundef nonnull @.str.13, ptr noundef %i.bq) #21 ; 3 uses
  %i.bs = icmp sgt i32 %i.br, -1
  %i.bt = add nuw nsw i32 %i.br, %.0113
  %i.bu = zext nneg i32 %i.bt to i64
  %.not143 = icmp ugt i64 %1, %i.bu
  %or.cond160 = select i1 %i.bs, i1 %.not143, i1 false
  br i1 %or.cond160, label %.lr.ph217.preheader, label %bb.af

.lr.ph217.preheader:                              ; preds = %bb.v
  %i.bv = zext nneg i32 %i.br to i64
  %wide.trip.count265 = zext nneg i32 %.0113 to i64
  br label %.lr.ph217

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %.lr.ph217
  %indvars.iv259 = phi i64 [ 0, %.lr.ph217.preheader ], [ %indvars.iv.next260, %.lr.ph217 ] ; 2 uses
  %indvars.iv257 = phi i64 [ %i.bv, %.lr.ph217.preheader ], [ %indvars.iv.next258, %.lr.ph217 ] ; 2 uses
  %i.bw = load ptr, ptr @alpha_num, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @grid_start, i64 %indvars.iv259
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv257
  store i8 %i.cb, ptr %i.cc, align 1
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next260, %wide.trip.count265
  br i1 %exitcond266.not, label %.loopexit182.loopexit, label %.lr.ph217, !llvm.loop !33

.preheader.preheader.i:                           ; preds = %._crit_edge200
  %wide.trip.count.i = zext nneg i32 %.0113 to i64
  br label %.preheader.i

bb.w:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_test_box.exit, label %.preheader.i, !llvm.loop !34

.preheader.i:                                     ; preds = %bb.w, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.w ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @grid_start, i64 %indvars.iv.i
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr @grid_end, i64 %indvars.iv.i
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp sgt i32 %i.ce, %i.cg
  br i1 %i.ch, label %_test_box.exit.thread, label %bb.w

_test_box.exit:                                   ; preds = %bb.w
  %i.ci = tail call fastcc zeroext i1 @_test_box_in_grid(i32 noundef 0, i32 noundef 0, i32 noundef range(i32 2, -2147483648) %.0113)
  br i1 %i.ci, label %bb.aa, label %_test_box.exit.thread

_test_box.exit.thread:                            ; preds = %.preheader.i, %_test_box.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %1, ptr noundef nonnull @.str.13, ptr noundef %i.cm) #21 ; 5 uses
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %bb.af, label %bb.x

bb.x:                                             ; preds = %_test_box.exit.thread
  %i.cp = add nuw nsw i32 %i.cn, 1                ; 3 uses
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %.not145 = icmp ugt i64 %1, %i.cq
  br i1 %.not145, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %.not146 = icmp eq i32 %4, 0
  %i.cr = zext nneg i32 %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr ; 2 uses
  br i1 %.not146, label %.split, label %.split115

.split:                                           ; preds = %bb.y
  %i.ct = trunc i64 %1 to i32
  %i.cu = sub i32 %i.ct, %i.cn
  %i.cv = tail call fastcc i32 @_get_boxes(ptr noundef %i.cs, i32 noundef %i.cu, i32 noundef %.0113, i32 noundef 0)
  br label %bb.z

.split115:                                        ; preds = %bb.y
  store i8 91, ptr %i.cs, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 %i.cq
  %i.cx = trunc i64 %1 to i32
  %i.cy = sub i32 %i.cx, %i.cp
  %i.cz = tail call fastcc i32 @_get_boxes(ptr noundef nonnull %i.cw, i32 noundef %i.cy, i32 noundef %.0113, i32 noundef %4)
  br label %bb.z

bb.z:                                             ; preds = %.split, %.split115
  %phi.call = phi i32 [ %i.cv, %.split ], [ %i.cz, %.split115 ]
  %.1112 = phi i32 [ %i.cn, %.split ], [ %i.cp, %.split115 ]
  %i.da = add nsw i32 %.1112, %phi.call
  br label %.loopexit182

bb.aa:                                            ; preds = %_test_box.exit
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %2, i64 noundef %1, ptr noundef nonnull @.str.13, ptr noundef %i.de) #21 ; 5 uses
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = shl nuw nsw i32 %.0113, 1
  %i.di = add nuw nsw i32 %i.dh, 3
  %i.dj = add nuw nsw i32 %i.di, %i.df
  %i.dk = zext nneg i32 %i.dj to i64
  %.not147 = icmp ugt i64 %1, %i.dk
  br i1 %.not147, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not148 = icmp eq i32 %4, 0                    ; 2 uses
  br i1 %.not148, label %.lr.ph204.preheader, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = add nuw nsw i32 %i.df, 1
  %i.dm = zext nneg i32 %i.df to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 %i.dm
  store i8 91, ptr %i.dn, align 1
  br label %.lr.ph204.preheader

.lr.ph204.preheader:                              ; preds = %bb.ac, %bb.ad
  %.2 = phi i32 [ %i.dl, %bb.ad ], [ %i.df, %bb.ac ]
  %i.do = zext nneg i32 %.2 to i64
  %smax245 = tail call i32 @llvm.smax.i32(i32 %.0113, i32 1)
  %wide.trip.count = zext nneg i32 %smax245 to i64
  br label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %.lr.ph204
  %indvars.iv240 = phi i64 [ 0, %.lr.ph204.preheader ], [ %indvars.iv.next241, %.lr.ph204 ] ; 2 uses
  %indvars.iv238 = phi i64 [ %i.do, %.lr.ph204.preheader ], [ %indvars.iv.next239, %.lr.ph204 ] ; 3 uses
  %i.dp = load ptr, ptr @alpha_num, align 8
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @grid_start, i64 %indvars.iv240
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv238
  store i8 %i.du, ptr %i.dv, align 1
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count
  br i1 %exitcond246.not, label %.lr.ph211.preheader, label %.lr.ph204, !llvm.loop !35

.lr.ph211.preheader:                              ; preds = %.lr.ph204
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next239
  store i8 120, ptr %i.dw, align 1
  %.4207 = add nuw i64 %indvars.iv238, 2
  %i.dx = and i64 %.4207, 4294967295
  %smax254 = tail call i32 @llvm.smax.i32(i32 %.0113, i32 1)
  %wide.trip.count255 = zext nneg i32 %smax254 to i64
  br label %.lr.ph211

.lr.ph211:                                        ; preds = %.lr.ph211.preheader, %.lr.ph211
  %indvars.iv249 = phi i64 [ 0, %.lr.ph211.preheader ], [ %indvars.iv.next250, %.lr.ph211 ] ; 2 uses
  %indvars.iv247 = phi i64 [ %i.dx, %.lr.ph211.preheader ], [ %indvars.iv.next248, %.lr.ph211 ] ; 3 uses
  %i.dy = load ptr, ptr @alpha_num, align 8
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @grid_end, i64 %indvars.iv249
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.dy, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv247
  store i8 %i.ed, ptr %i.ee, align 1
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 3 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count255
  br i1 %exitcond256.not, label %._crit_edge212, label %.lr.ph211, !llvm.loop !36

._crit_edge212:                                   ; preds = %.lr.ph211
  %i.ef = trunc nuw i64 %indvars.iv.next248 to i32
  br i1 %.not148, label %.loopexit182, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge212
  %i.eg = trunc nuw i64 %indvars.iv247 to i32
  %i.eh = add nuw nsw i32 %i.eg, 2
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next248
  store i8 93, ptr %i.ei, align 1
  br label %.loopexit182

.loopexit182.loopexit:                            ; preds = %.lr.ph217
  %i.ej = trunc nuw i64 %indvars.iv.next258 to i32
  br label %.loopexit182

.loopexit182:                                     ; preds = %.loopexit182.loopexit, %bb.z, %bb.ae, %._crit_edge212
  %.5 = phi i32 [ %i.eh, %bb.ae ], [ %i.ef, %._crit_edge212 ], [ %i.da, %bb.z ], [ %i.ej, %.loopexit182.loopexit ] ; 3 uses
  %i.ek = icmp slt i32 %.5, 0
  %i.el = zext nneg i32 %.5 to i64
  %i.em = icmp ult i64 %1, %i.el
  %or.cond162 = select i1 %i.ek, i1 true, i1 %i.em
  br i1 %or.cond162, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit182, %bb.aa, %bb.ab, %_test_box.exit.thread, %bb.x, %bb.v
  %i.en = trunc i64 %1 to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit182, %bb.s, %bb.t, %bb.q, %bb.r
  %.not181186 = phi i1 [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.t ], [ true, %bb.s ], [ false, %bb.af ], [ false, %.loopexit182 ]
  %.7 = phi i32 [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %bb.s ], [ %i.en, %bb.af ], [ %.5, %.loopexit182 ] ; 2 uses
  %i.eo = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @multi_dim_lock) #21 ; 2 uses
  %.not153 = icmp eq i32 %i.eo, 0
  br i1 %.not153, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ep = tail call ptr @__errno_location() #22
  store i32 %i.eo, ptr %i.ep, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.hostlist_ranged_string_dims) #23
  unreachable

bb.ai:                                            ; preds = %bb.ag
  br i1 %.not181186, label %.thread, label %.loopexit

end_hunk_0
