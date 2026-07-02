inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@DbRetrieve:bb.a
  %.not6599 = icmp eq ptr %.05798, %0
  br i1 %.not6599, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %.preheader86, %bb.g
  %.057101 = phi ptr [ %.057, %bb.g ], [ %.05798, %.preheader86 ] ; 3 uses
  %.0100 = phi i32 [ %.1, %bb.g ], [ 0, %.preheader86 ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.057.pn = phi ptr [ %.056, %bb.c ], [ %.057101, %.preheader ]
  %.056.in = getelementptr inbounds nuw i8, ptr %.057.pn, i64 16
  %.056 = load ptr, ptr %.056.in, align 8, !tbaa !8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.056, i64 32
  %i.l = load i8, ptr %i.k, align 8, !tbaa !8     ; 3 uses
  switch i8 %i.l, label %bb.d [
    i8 0, label %bb.c
    i8 -116, label %.loopexit
    i8 17, label %.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.056, i64 32
  %i.n = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.o = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.n, ptr noundef nonnull @.str.14) #11 ; 0 uses
  %.pr = load i8, ptr %i.m, align 8, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.c, %bb.d
  %i.p = phi i8 [ %.pr, %bb.d ], [ %i.l, %bb.c ], [ %i.l, %bb.c ]
  %.not66 = icmp eq i8 %i.p, -116
  br i1 %.not66, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.loopexit
  %i.q = getelementptr inbounds nuw i8, ptr %.056, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.s = icmp eq ptr %i.r, %2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.057101, i64 33
  %.pre108 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !8 ; 2 uses
  br i1 %i.s, label %.loopexit87, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = zext i8 %.pre108 to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0100, i32 %i.t)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %.1 = phi i32 [ %.0100, %.loopexit ], [ %spec.select, %bb.f ] ; 2 uses
  %.057.in = getelementptr inbounds nuw i8, ptr %.057101, i64 8
  %.057 = load ptr, ptr %.057.in, align 8, !tbaa !8 ; 2 uses
  %.not65 = icmp eq ptr %.057, %0
  br i1 %.not65, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !40

._crit_edge.loopexit:                             ; preds = %bb.g
  %i.u = trunc nuw i32 %.1 to i8
  %i.v = add i8 %i.u, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader86
  %.0.lcssa = phi i8 [ 1, %.preheader86 ], [ %i.v, %._crit_edge.loopexit ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  tail call void @CrossInit(ptr noundef nonnull %2) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.z = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  store i32 %i.aa, ptr @zz_size, align 4, !tbaa !4
  %i.ab = zext i8 %i.z to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ag = tail call ptr @GetMemory(i32 noundef %i.aa, ptr noundef %i.af) #11
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store ptr %i.ad, ptr @zz_hold, align 8, !tbaa !15
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !8
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !15
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ai = phi ptr [ %i.ag, %bb.j ], [ %i.ad, %bb.k ] ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i8 0, ptr %i.aj, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !8
  store ptr %i.ai, ptr %i.ai, align 8, !tbaa !8
  store ptr %i.ai, ptr @xx_link, align 8, !tbaa !15
  store ptr %i.ai, ptr @zz_res, align 8, !tbaa !15
  store ptr %0, ptr @zz_hold, align 8, !tbaa !15
  %i.an = icmp eq ptr %0, null
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %0, align 8, !tbaa !8
  store ptr %i.ao, ptr @zz_tmp, align 8, !tbaa !15
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !8
  store ptr %i.ap, ptr %0, align 8, !tbaa !8
  %i.aq = load ptr, ptr @zz_hold, align 8, !tbaa !15
  %i.ar = load ptr, ptr @zz_res, align 8, !tbaa !15 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !8
  %i.au = load ptr, ptr @zz_tmp, align 8, !tbaa !15 ; 2 uses
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !8
  %i.av = load ptr, ptr @zz_res, align 8, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !8
  %.pre = load ptr, ptr @xx_link, align 8, !tbaa !15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = phi ptr [ %.pre, %bb.m ], [ %i.ai, %bb.l ] ; 4 uses
  store ptr %i.ax, ptr @zz_res, align 8, !tbaa !15
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !8   ; 4 uses
  store ptr %i.ay, ptr @zz_hold, align 8, !tbaa !15
  %i.az = icmp eq ptr %i.ay, null
  %i.ba = icmp eq ptr %i.ax, null
  %or.cond3 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 3 uses
  store ptr %i.bc, ptr @zz_tmp, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8  ; 2 uses
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.ay, ptr %i.bf, align 8, !tbaa !8
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.ax, ptr %i.bg, align 8, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bh = load ptr, ptr %0, align 8, !tbaa !8     ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 33
  store i8 %.0.lcssa, ptr %i.bi, align 1, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 34
  store i8 0, ptr %i.bj, align 2, !tbaa !8
  br label %.loopexit87

.loopexit87:                                      ; preds = %bb.e, %bb.p
  %i.bk = phi i8 [ %.0.lcssa, %bb.p ], [ %.pre108, %bb.e ]
  %i.bl = zext i8 %i.bk to i32
  %.not67 = icmp eq i32 %1, 0
  %i.bm = select i1 %.not67, ptr @.str.12, ptr @.str.17
  %i.bn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) @.str.49, ptr noundef nonnull %i.bm, i32 noundef %i.bl, ptr noundef %3) #11 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !8
  %.not68 = icmp eq i8 %i.bp, 0
  %i.bq = load ptr, ptr %i.h, align 8, !tbaa !8   ; 4 uses
  br i1 %.not68, label %bb.x, label %bb.q

bb.q:                                             ; preds = %.loopexit87
  %i.br = load i16, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  switch i16 %i.br, label %.lr.ph.i [
    i16 0, label %SearchLines.exit.thread
    i16 1, label %._crit_edge.i
  ]

.lr.ph.i:                                         ; preds = %bb.q
  %i.bs = zext i16 %i.br to i32
  %i.bt = add nsw i32 %i.bs, -2                   ; 2 uses
  %i.bu = load i32, ptr @UseCollate, align 4, !tbaa !4
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.02331.us.i = phi i32 [ %.1.us.i, %.lr.ph.split.us.i ], [ %i.bt, %.lr.ph.i ] ; 2 uses
  %.02430.us.i = phi i32 [ %.125.us.i, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bw = add nsw i32 %.02430.us.i, %.02331.us.i
  %i.bx = sdiv i32 %i.bw, 2                       ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !41
  %i.cb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.ca) #13
  %i.cc = icmp slt i32 %i.cb, 1                   ; 2 uses
  %i.cd = add nsw i32 %i.bx, -1
  %i.ce = add nsw i32 %i.bx, 1
  %.125.us.i = select i1 %i.cc, i32 %.02430.us.i, i32 %i.ce ; 3 uses
  %.1.us.i = select i1 %i.cc, i32 %i.cd, i32 %.02331.us.i ; 2 uses
  %.not.us.i = icmp sgt i32 %.125.us.i, %.1.us.i
  br i1 %.not.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !43

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.v
  %i.cf = phi i32 [ %11, %bb.v ], [ 1, %.lr.ph.i ]
  %.02331.i = phi i32 [ %.1.i, %bb.v ], [ %i.bt, %.lr.ph.i ] ; 2 uses
  %.02430.i = phi i32 [ %.125.i, %bb.v ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.cg = add nsw i32 %.02430.i, %.02331.i
  %i.ch = sdiv i32 %i.cg, 2                       ; 3 uses
  %.not28.i = icmp eq i32 %i.cf, 0
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !41 ; 2 uses
  br i1 %.not28.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.i
  %i.cl = call i32 @strcollcmp(ptr noundef nonnull %i.d, ptr noundef %i.ck) #11
  %i.cm = icmp slt i32 %i.cl, 1
  %.pre.i = load i32, ptr @UseCollate, align 4, !tbaa !4 ; 2 uses
  br i1 %i.cm, label %bb.t, label %bb.u

bb.s:                                             ; preds = %.lr.ph.split.i
  %i.cn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.ck) #13
  %i.co = icmp slt i32 %i.cn, 1
  br i1 %i.co, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %9 = phi i32 [ 0, %bb.s ], [ %.pre.i, %bb.r ]
  %i.cp = add nsw i32 %i.ch, -1
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r
  %10 = phi i32 [ 0, %bb.s ], [ %.pre.i, %bb.r ]
  %i.cq = add nsw i32 %i.ch, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %11 = phi i32 [ %9, %bb.t ], [ %10, %bb.u ]
  %.125.i = phi i32 [ %.02430.i, %bb.t ], [ %i.cq, %bb.u ] ; 3 uses
  %.1.i = phi i32 [ %i.cp, %bb.t ], [ %.02331.i, %bb.u ] ; 2 uses
  %.not.i = icmp sgt i32 %.125.i, %.1.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %bb.v, %.lr.ph.split.us.i, %bb.q
  %.024.lcssa.i = phi i32 [ 0, %bb.q ], [ %.125.us.i, %.lr.ph.split.us.i ], [ %.125.i, %bb.v ] ; 2 uses
  %i.cr = sext i32 %.024.lcssa.i to i64           ; 2 uses
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !41
  %i.cu = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.ct, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.cv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.b) #13
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.w, label %SearchLines.exit.thread

SearchLines.exit.thread:                          ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.ar

bb.w:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cr
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !41
  %i.da = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.cz, ptr noundef nonnull @.str.50, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.db = add nsw i32 %.024.lcssa.i, 1
  %i.dc = sext i32 %i.db to i64
  br label %bb.an

bb.x:                                             ; preds = %.loopexit87
  %i.dd = tail call i32 @fseek(ptr noundef %i.bq, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.de = load ptr, ptr %i.h, align 8, !tbaa !8   ; 8 uses
  %i.df = load i16, ptr %i.e, align 8, !tbaa !8
  %i.dg = zext i16 %i.df to i32                   ; 3 uses
  %i.dh = tail call i64 @ftell(ptr noundef %i.de)
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not48.i.not = icmp sgt i32 %i.di, %i.dg
  br i1 %.not48.i.not, label %.lr.ph.i73, label %._crit_edge.i76

.lr.ph.i73:                                       ; preds = %bb.x, %bb.al
  %.03850.i = phi i32 [ %.1.i74, %bb.al ], [ %i.dg, %bb.x ] ; 5 uses
  %.04149.i = phi i32 [ %.142.i, %bb.al ], [ %i.dj, %bb.x ] ; 5 uses
  %i.dk = add nsw i32 %.04149.i, %.03850.i
  %i.dl = sdiv i32 %i.dk, 2                       ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = call i32 @fseek(ptr noundef %i.de, i64 noundef %i.dm, i32 noundef 0) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i73
  %.039.i = phi i32 [ %i.dl, %.lr.ph.i73 ], [ %i.do, %bb.y ] ; 2 uses
  %i.do = add nsw i32 %.039.i, 1                  ; 2 uses
  %i.dp = call i32 @getc(ptr noundef %i.de)
  %.not44.i = icmp eq i32 %i.dp, 10
  br i1 %.not44.i, label %bb.z, label %bb.y, !llvm.loop !46

bb.z:                                             ; preds = %bb.y
  %i.dq = icmp eq i32 %.039.i, %.04149.i
  br i1 %i.dq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = sext i32 %.03850.i to i64
  %i.ds = call i32 @fseek(ptr noundef %i.de, i64 noundef %i.dr, i32 noundef 0) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.140.i = phi i32 [ %.03850.i, %bb.aa ], [ %i.do, %bb.z ] ; 3 uses
  %i.dt = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef %i.de) ; 0 uses
  %i.du = call i64 @ftell(ptr noundef %i.de)
  %i.dv = trunc i64 %i.du to i32                  ; 3 uses
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  %.not45.i = icmp sgt i32 %.03850.i, %.140.i
  br i1 %.not45.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dx = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.dy = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.dx, ptr noundef nonnull @.str.59) #11 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dz = icmp slt i32 %.140.i, %i.dw
  br i1 %i.dz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ea = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.eb = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ea, ptr noundef nonnull @.str.60) #11 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not46.i = icmp sgt i32 %i.dw, %.04149.i
  br i1 %.not46.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ec = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ed = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ec, ptr noundef nonnull @.str.61) #11 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ee = load i32, ptr @UseCollate, align 4, !tbaa !4
  %.not47.i = icmp eq i32 %i.ee, 0
  br i1 %.not47.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ef = call i32 @strcollcmp(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #11
  %i.eg = icmp slt i32 %i.ef, 1
  br i1 %i.eg, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.eh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.ei = icmp slt i32 %i.eh, 1
  br i1 %i.ei, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ej = add nsw i32 %.140.i, -1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.142.i = phi i32 [ %i.ej, %bb.ak ], [ %.04149.i, %bb.aj ], [ %.04149.i, %bb.ai ] ; 2 uses
  %.1.i74 = phi i32 [ %.03850.i, %bb.ak ], [ %i.dv, %bb.aj ], [ %i.dv, %bb.ai ] ; 3 uses
  %.not.i75 = icmp sgt i32 %.1.i74, %.142.i
  br i1 %.not.i75, label %._crit_edge.i76, label %.lr.ph.i73, !llvm.loop !47

._crit_edge.i76:                                  ; preds = %bb.al, %bb.x
  %.038.lcssa.i = phi i32 [ %i.dg, %bb.x ], [ %.1.i74, %bb.al ] ; 2 uses
  %i.ek = icmp slt i32 %.038.lcssa.i, %i.dj
  br i1 %i.ek, label %SearchFile.exit, label %SearchFile.exit.thread

SearchFile.exit.thread:                           ; preds = %._crit_edge.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ar

SearchFile.exit:                                  ; preds = %._crit_edge.i76
  %i.el = sext i32 %.038.lcssa.i to i64
  %i.em = call i32 @fseek(ptr noundef %i.de, i64 noundef %i.el, i32 noundef 0) ; 0 uses
  %i.en = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef %i.de) ; 0 uses
  %i.eo = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.ep = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.a) #13
  %.not84 = icmp eq i32 %i.ep, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %.not84, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %SearchFile.exit
  %i.eq = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.50, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.er = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.es = call i64 @ftell(ptr noundef %i.er)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.w
  %storemerge = phi i64 [ %i.es, %bb.am ], [ %i.dc, %bb.w ]
  store i64 %storemerge, ptr %8, align 8, !tbaa !48
  %lhsv = load i16, ptr %i.d, align 16
  %.not72 = icmp eq i16 %lhsv, 46
  br i1 %.not72, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eu = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.et) #11 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ev = call zeroext i16 @FileNum(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.28) #11 ; 2 uses
  store i16 %i.ev, ptr %5, align 2, !tbaa !50
  %i.ew = icmp eq i16 %i.ev, 0
  br i1 %i.ew, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ey = call zeroext i16 @DefineFile(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.ex, i32 noundef 3, i32 noundef 0) #11
  store i16 %i.ey, ptr %5, align 2, !tbaa !50
  br label %bb.ar

bb.ar:                                            ; preds = %SearchFile.exit.thread, %SearchLines.exit.thread, %bb.ap, %bb.aq, %SearchFile.exit, %bb.a, %bb.b
  %.059 = phi i32 [ 0, %SearchLines.exit.thread ], [ 0, %SearchFile.exit ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.aq ], [ 1, %bb.ap ], [ 0, %SearchFile.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  ret i32 %.059
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i16 @FileNum(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @DbRetrieveNext(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 5 uses
  %i.b = alloca [512 x i8], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.f = load i8, ptr %i.e, align 2, !tbaa !8
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @no_fpos, align 8, !tbaa !9
end_hunk_0
