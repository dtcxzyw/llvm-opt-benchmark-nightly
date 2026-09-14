Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/putkey?download=true
inline.NumInlined: 105
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ffphbn:bb.a

ffi2c.exit.i222:                                  ; preds = %bb.r, %bb.q
  %i.cg = call i32 @ffmkky(ptr noundef nonnull @.str.86, ptr noundef nonnull %i.ak, ptr noundef nonnull @.str.139, ptr noundef nonnull %i.al, ptr noundef nonnull %8) #17 ; 0 uses
  %i.ch = call i32 @ffprec(ptr noundef nonnull %0, ptr noundef nonnull %i.al, ptr noundef nonnull %8) ; 0 uses
  br label %ffpkyj.exit224

ffpkyj.exit224:                                   ; preds = %ffpkyj.exit.thread, %ffpkyj.exit, %ffi2c.exit.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #17
  %.not396 = icmp eq i32 %2, 0
  br i1 %.not396, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %ffpkyj.exit224
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %.0154395 = phi i64 [ 0, %.lr.ph.preheader ], [ %.1155, %bb.y ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !33
  %i.ck = call i32 @ffbnfm(ptr noundef %i.cj, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %8) #17 ; 0 uses
  %i.cl = load i32, ptr %i.aq, align 4, !tbaa !12 ; 3 uses
  switch i32 %i.cl, label %bb.u [
    i32 16, label %bb.s
    i32 1, label %bb.t
  ]

bb.s:                                             ; preds = %.lr.ph
  %i.cm = load i64, ptr %i.ar, align 8, !tbaa !34
  br label %bb.x

bb.t:                                             ; preds = %.lr.ph
  %i.cn = load i64, ptr %i.ar, align 8, !tbaa !34
  %i.co = add nsw i64 %i.cn, 7
  %i.cp = sdiv i64 %i.co, 8
  br label %bb.x

bb.u:                                             ; preds = %.lr.ph
  %i.cq = icmp sgt i32 %i.cl, 0
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cr = load i64, ptr %i.ar, align 8, !tbaa !34
  %i.cs = udiv i32 %i.cl, 10
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.cr, %i.ct
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !33 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !31
  %.fr = freeze i8 %i.cw
  switch i8 %.fr, label %switch.early.test [
    i8 80, label %bb.x
    i8 112, label %bb.x
  ]

switch.early.test:                                ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !31
  %i.cz = add i8 %i.cy, -80
  %switch.and = and i8 %i.cz, -33
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %i.da = select i1 %switch.selectcmp, i64 8, i64 16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.w, %switch.early.test, %bb.t, %bb.v, %bb.s
  %.pn = phi i64 [ %i.cm, %bb.s ], [ %i.cp, %bb.t ], [ %i.cu, %bb.v ], [ %i.da, %switch.early.test ], [ 8, %bb.w ], [ 8, %bb.w ]
  %i.db = load i32, ptr %8, align 4, !tbaa !12
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.thread, label %bb.y

.thread:                                          ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #17
  br label %ffpkyj.exit227.thread

bb.y:                                             ; preds = %bb.x
  %.1155 = add nsw i64 %.pn, %.0154395            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !49

._crit_edge.thread:                               ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #17
  br label %bb.z

._crit_edge:                                      ; preds = %ffpkyj.exit224
  %.pr380.pre = load i32, ptr %8, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #17
  %i.dd = icmp sgt i32 %.pr380.pre, 0
  br i1 %i.dd, label %ffpkyj.exit227.thread, label %bb.z

bb.z:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0154.lcssa459 = phi i64 [ %.1155, %._crit_edge.thread ], [ 0, %._crit_edge ]
  store i8 0, ptr %i.ai, align 16, !tbaa !31
  %i.de = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) @.str.169, i64 noundef %.0154.lcssa459) #17
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.aa, label %ffpkyj.exit227

bb.aa:                                            ; preds = %bb.z
  call void @ffpmsg(ptr noundef nonnull @.str.170) #17
  store i32 401, ptr %8, align 4, !tbaa !12
  br label %ffpkyj.exit227

ffpkyj.exit227.thread:                            ; preds = %.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #17
  br label %ffpkyj.exit230.thread

ffpkyj.exit227:                                   ; preds = %bb.z, %bb.aa
  %i.dg = call i32 @ffmkky(ptr noundef nonnull @.str.117, ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.140, ptr noundef nonnull %i.aj, ptr noundef nonnull %8) #17 ; 0 uses
  %i.dh = call i32 @ffprec(ptr noundef nonnull %0, ptr noundef nonnull %i.aj, ptr noundef nonnull %8) ; 0 uses
  %.pr382 = load i32, ptr %8, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #17
  %i.di = icmp sgt i32 %.pr382, 0
  br i1 %i.di, label %ffpkyj.exit230.thread, label %bb.ab

bb.ab:                                            ; preds = %ffpkyj.exit227
  store i8 0, ptr %i.ag, align 16, !tbaa !31
  %i.dj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) @.str.169, i64 noundef %1) #17
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.ac, label %ffpkyj.exit230

bb.ac:                                            ; preds = %bb.ab
  call void @ffpmsg(ptr noundef nonnull @.str.170) #17
  store i32 401, ptr %8, align 4, !tbaa !12
  br label %ffpkyj.exit230

ffpkyj.exit230.thread:                            ; preds = %ffpkyj.exit227.thread, %ffpkyj.exit227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #17
  br label %ffpkyj.exit233.thread

ffpkyj.exit230:                                   ; preds = %bb.ab, %bb.ac
  %i.dl = call i32 @ffmkky(ptr noundef nonnull @.str.119, ptr noundef nonnull %i.ag, ptr noundef nonnull @.str.120, ptr noundef nonnull %i.ah, ptr noundef nonnull %8) #17 ; 0 uses
  %i.dm = call i32 @ffprec(ptr noundef nonnull %0, ptr noundef nonnull %i.ah, ptr noundef nonnull %8) ; 0 uses
  %.pre414.a = load i32, ptr %8, align 4, !tbaa !12
  %i.dn = icmp sgt i32 %.pre414.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #17
  br i1 %i.dn, label %ffpkyj.exit233.thread, label %bb.ad

ffpkyj.exit233.thread:                            ; preds = %ffpkyj.exit230.thread, %ffpkyj.exit230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #17
  br label %ffpkyj.exit236.thread

bb.ad:                                            ; preds = %ffpkyj.exit230
  store i8 0, ptr %i.ae, align 16, !tbaa !31
  %i.do = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) @.str.169, i64 noundef 0) #17
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %ffpkyj.exit233

bb.ae:                                            ; preds = %bb.ad
  call void @ffpmsg(ptr noundef nonnull @.str.170) #17
  store i32 401, ptr %8, align 4, !tbaa !12
  br label %ffpkyj.exit233

ffpkyj.exit233:                                   ; preds = %bb.ad, %bb.ae
  %i.dq = call i32 @ffmkky(ptr noundef nonnull @.str.97, ptr noundef nonnull %i.ae, ptr noundef nonnull @.str.141, ptr noundef nonnull %i.af, ptr noundef nonnull %8) #17 ; 0 uses
  %i.dr = call i32 @ffprec(ptr noundef nonnull %0, ptr noundef nonnull %i.af, ptr noundef nonnull %8) ; 0 uses
  %.pr383 = load i32, ptr %8, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #17
  %i.ds = icmp sgt i32 %.pr383, 0
  br i1 %i.ds, label %ffpkyj.exit236.thread, label %bb.af

bb.af:                                            ; preds = %ffpkyj.exit233
  store i8 0, ptr %i.ac, align 16, !tbaa !31
  %i.dt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) @.str.169, i64 noundef 1) #17
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.ag, label %ffpkyj.exit236

bb.ag:                                            ; preds = %bb.af
  call void @ffpmsg(ptr noundef nonnull @.str.170) #17
  store i32 401, ptr %8, align 4, !tbaa !12
  br label %ffpkyj.exit236

ffpkyj.exit236.thread:                            ; preds = %ffpkyj.exit233.thread, %ffpkyj.exit233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #17
  br label %ffpkyj.exit236.ffpkyj.exit239_crit_edge

ffpkyj.exit236:                                   ; preds = %bb.af, %bb.ag
  %i.dv = call i32 @ffmkky(ptr noundef nonnull @.str.99, ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.122, ptr noundef nonnull %i.ad, ptr noundef nonnull %8) #17 ; 0 uses
  %i.dw = call i32 @ffprec(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, ptr noundef nonnull %8) ; 0 uses
  %.pre415.a = load i32, ptr %8, align 4, !tbaa !12
  %i.dx = icmp sgt i32 %.pre415.a, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #17
  br i1 %i.dx, label %ffpkyj.exit236.ffpkyj.exit239_crit_edge, label %bb.ah

ffpkyj.exit236.ffpkyj.exit239_crit_edge:          ; preds = %ffpkyj.exit236.thread, %ffpkyj.exit236
  %.pre421 = zext nneg i32 %2 to i64
  br label %ffpkyj.exit239

bb.ah:                                            ; preds = %ffpkyj.exit236
  %i.dy = zext nneg i32 %2 to i64                 ; 2 uses
  store i8 0, ptr %i.aa, align 16, !tbaa !31
  %i.dz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.aa, ptr noundef nonnull dereferenceable(1) @.str.169, i64 noundef %i.dy) #17
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.ai, label %ffi2c.exit.i237

bb.ai:                                            ; preds = %bb.ah
  call void @ffpmsg(ptr noundef nonnull @.str.170) #17
  store i32 401, ptr %8, align 4, !tbaa !12
  br label %ffi2c.exit.i237

ffi2c.exit.i237:                                  ; preds = %bb.ai, %bb.ah
  %i.eb = call i32 @ffmkky(ptr noundef nonnull @.str.123, ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.124, ptr noundef nonnull %i.ab, ptr noundef nonnull %8) #17 ; 0 uses
  %i.ec = call i32 @ffprec(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %8) ; 0 uses
  br label %ffpkyj.exit239

ffpkyj.exit239:                                   ; preds = %ffpkyj.exit236.ffpkyj.exit239_crit_edge, %ffi2c.exit.i237
  %wide.trip.count407.pre-phi = phi i64 [ %.pre421, %ffpkyj.exit236.ffpkyj.exit239_crit_edge ], [ %i.dy, %ffi2c.exit.i237 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #17
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 69
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 69
  %i.eg = getelementptr inbounds nuw i8, ptr %i.s, i64 69
  %i.eh = getelementptr inbounds nuw i8, ptr %i.y, i64 69
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 69
  %.not215 = icmp eq ptr %5, null
  %exitcond409.not478 = icmp eq i64 %wide.trip.count407.pre-phi, 0
  br i1 %exitcond409.not478, label %..loopexit.loopexit_crit_edge, label %.lr.ph480

bb.aj:                                            ; preds = %bb.eg
  %exitcond409.not = icmp eq i64 %indvars.iv.next405, %wide.trip.count407.pre-phi
  br i1 %exitcond409.not, label %..loopexit.loopexit_crit_edge, label %.lr.ph480, !llvm.loop !50

..loopexit.loopexit_crit_edge:                    ; preds = %bb.aj, %ffpkyj.exit239
  %.pre417.pre.pre = load i32, ptr %8, align 4, !tbaa !12
  br label %.loopexit

.lr.ph480:                                        ; preds = %ffpkyj.exit239, %bb.aj
  %indvars.iv404479 = phi i64 [ %indvars.iv.next405, %bb.aj ], [ 0, %ffpkyj.exit239 ] ; 5 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv404479 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !33
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !31
  %.not178 = icmp eq i8 %i.el, 0
  br i1 %.not178, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph480
  %i.em = trunc i64 %indvars.iv404479 to i32
  %i.en = add i32 %i.em, 1                        ; 2 uses
  %i.eo = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.av, i64 noundef 73, ptr noundef nonnull @.str.125, i32 noundef %i.en) #17 ; 0 uses
  %i.ep = call i32 @ffkeyn(ptr noundef nonnull @.str.126, i32 noundef %i.en, ptr noundef nonnull %i.au, ptr noundef nonnull %8) #17 ; 0 uses
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !33
  %i.er = call i32 @ffpkys(ptr noundef nonnull %0, ptr noundef nonnull %i.au, ptr noundef %i.eq, ptr noundef nonnull %i.av, ptr noundef nonnull %8) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph480
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv404479
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !33 ; 2 uses
  %i.eu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.et) #18
  %i.ev = icmp ugt i64 %i.eu, 29
  br i1 %i.ev, label %.loopexit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ew = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull dereferenceable(1) %i.et) #17 ; 0 uses
  call void @ffupch(ptr noundef nonnull %i.at) #17
  %indvars.iv.next405 = add nuw nsw i64 %indvars.iv404479, 1 ; 3 uses
  %i.ex = trunc nuw i64 %indvars.iv.next405 to i32 ; 10 uses
  %i.ey = call i32 @ffkeyn(ptr noundef nonnull @.str.68, i32 noundef %i.ex, ptr noundef nonnull %i.au, ptr noundef nonnull %8) #17 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(21) %i.av, ptr noundef nonnull align 1 dereferenceable(21) @.str.143, i64 21, i1 false) #17
  %i.ez = call i32 @ffbnfm(ptr noundef nonnull %i.at, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %8) #17 ; 0 uses
  %i.fa = load i32, ptr %i.aq, align 4, !tbaa !12 ; 2 uses
  switch i32 %i.fa, label %bb.bf [
    i32 16, label %bb.an
    i32 1, label %bb.as
    i32 11, label %bb.at
    i32 14, label %bb.au
    i32 21, label %bb.av
    i32 20, label %bb.aw
    i32 41, label %bb.ax
    i32 81, label %bb.ay
    i32 40, label %bb.az
    i32 80, label %bb.ba
    i32 42, label %bb.bb
    i32 82, label %bb.bc
    i32 83, label %bb.bd
    i32 163, label %bb.be
  ]

bb.an:                                            ; preds = %bb.am
  %strlen205 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr206 = getelementptr inbounds i8, ptr %i.av, i64 %strlen205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %endptr206, ptr noundef nonnull align 1 dereferenceable(18) @.str.144, i64 18, i1 false)
  %i.fb = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.at, i32 noundef 65) #18
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.fc, ptr noundef nonnull @.str.66, ptr noundef nonnull %i.as) #17
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.ao, label %bb.bh

bb.ao:                                            ; preds = %bb.an
  %i.ff = load i64, ptr %i.as, align 8, !tbaa !34
  %i.fg = load i64, ptr %i.ar, align 8, !tbaa !34 ; 2 uses
  %i.fh = icmp sgt i64 %i.ff, %i.fg
  br i1 %i.fh, label %bb.ap, label %bb.bh

bb.ap:                                            ; preds = %bb.ao
  %i.fi = icmp eq i64 %i.fg, 1
  br i1 %i.fi, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(47) %i.av, ptr noundef nonnull align 1 dereferenceable(47) @.str.145, i64 47, i1 false) #17
  br label %bb.bh

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.av, ptr noundef nonnull align 1 dereferenceable(48) @.str.146, i64 48, i1 false) #17
  br label %bb.bh

bb.as:                                            ; preds = %bb.am
  %strlen203 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr204 = getelementptr inbounds i8, ptr %i.av, i64 %strlen203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr204, ptr noundef nonnull align 1 dereferenceable(6) @.str.147, i64 6, i1 false)
  br label %bb.bh

bb.at:                                            ; preds = %bb.am
  %strlen201 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr202 = getelementptr inbounds i8, ptr %i.av, i64 %strlen201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %endptr202, ptr noundef nonnull align 1 dereferenceable(7) @.str.148, i64 7, i1 false)
  br label %bb.bh

bb.au:                                            ; preds = %bb.am
  %strlen199 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr200 = getelementptr inbounds i8, ptr %i.av, i64 %strlen199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %endptr200, ptr noundef nonnull align 1 dereferenceable(17) @.str.149, i64 17, i1 false)
  br label %bb.bh

bb.av:                                            ; preds = %bb.am
  %strlen197 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr198 = getelementptr inbounds i8, ptr %i.av, i64 %strlen197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %endptr198, ptr noundef nonnull align 1 dereferenceable(17) @.str.150, i64 17, i1 false)
  br label %bb.bh

bb.aw:                                            ; preds = %bb.am
  %strlen195 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr196 = getelementptr inbounds i8, ptr %i.av, i64 %strlen195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %endptr196, ptr noundef nonnull align 1 dereferenceable(17) @.str.150, i64 17, i1 false)
  br label %bb.bh

bb.ax:                                            ; preds = %bb.am
  %strlen193 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr194 = getelementptr inbounds i8, ptr %i.av, i64 %strlen193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %endptr194, ptr noundef nonnull align 1 dereferenceable(17) @.str.151, i64 17, i1 false)
  br label %bb.bh

bb.ay:                                            ; preds = %bb.am
  %strlen191 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr192 = getelementptr inbounds i8, ptr %i.av, i64 %strlen191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %endptr192, ptr noundef nonnull align 1 dereferenceable(17) @.str.152, i64 17, i1 false)
  br label %bb.bh

bb.az:                                            ; preds = %bb.am
  %strlen189 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr190 = getelementptr inbounds i8, ptr %i.av, i64 %strlen189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %endptr190, ptr noundef nonnull align 1 dereferenceable(17) @.str.151, i64 17, i1 false)
  br label %bb.bh

bb.ba:                                            ; preds = %bb.am
  %strlen187 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr188 = getelementptr inbounds i8, ptr %i.av, i64 %strlen187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %endptr188, ptr noundef nonnull align 1 dereferenceable(17) @.str.152, i64 17, i1 false)
  br label %bb.bh

bb.bb:                                            ; preds = %bb.am
  %strlen185 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr186 = getelementptr inbounds i8, ptr %i.av, i64 %strlen185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %endptr186, ptr noundef nonnull align 1 dereferenceable(14) @.str.153, i64 14, i1 false)
  br label %bb.bh

bb.bc:                                            ; preds = %bb.am
  %strlen183 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr184 = getelementptr inbounds i8, ptr %i.av, i64 %strlen183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %endptr184, ptr noundef nonnull align 1 dereferenceable(16) @.str.154, i64 16, i1 false)
  br label %bb.bh

bb.bd:                                            ; preds = %bb.am
  %strlen181 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr182 = getelementptr inbounds i8, ptr %i.av, i64 %strlen181
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %endptr182, ptr noundef nonnull align 1 dereferenceable(10) @.str.155, i64 10, i1 false)
  br label %bb.bh

bb.be:                                            ; preds = %bb.am
  %strlen179 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr180 = getelementptr inbounds i8, ptr %i.av, i64 %strlen179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %endptr180, ptr noundef nonnull align 1 dereferenceable(17) @.str.156, i64 17, i1 false)
  br label %bb.bh

bb.bf:                                            ; preds = %bb.am
  %i.fj = icmp slt i32 %i.fa, 0
  br i1 %i.fj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.av)
  %endptr = getelementptr inbounds i8, ptr %i.av, i64 %strlen
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %endptr, ptr noundef nonnull align 1 dereferenceable(24) @.str.157, i64 24, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.as, %bb.au, %bb.aw, %bb.ay, %bb.ba, %bb.bc, %bb.be, %bb.bg, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.an, %bb.ao, %bb.ar, %bb.aq
  %i.fk = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.fl = call i32 @llvm.abs.i32(i32 %i.fk, i1 true)
  %i.fm = add nsw i32 %i.fl, -12                  ; 2 uses
  %i.fn = call i32 @llvm.fshl.i32(i32 %i.fm, i32 %i.fm, i32 30)
  switch i32 %i.fn, label %bb.dw [
    i32 0, label %.preheader
    i32 2, label %.preheader384
    i32 7, label %.preheader385
    i32 17, label %.preheader386
  ]

.preheader:                                       ; preds = %bb.bh, %.preheader
  %.0 = phi ptr [ %i.fp, %.preheader ], [ %i.at, %bb.bh ] ; 3 uses
  %i.fo = load i8, ptr %.0, align 1, !tbaa !31
  %.not214 = icmp eq i8 %i.fo, 83
  %i.fp = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %.not214, label %bb.bi, label %.preheader, !llvm.loop !51

bb.bi:                                            ; preds = %.preheader
  store i8 66, ptr %.0, align 1, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #17
  %i.fq = load i32, ptr %8, align 4, !tbaa !12
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %ffpkys.exit254, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
end_hunk_0
