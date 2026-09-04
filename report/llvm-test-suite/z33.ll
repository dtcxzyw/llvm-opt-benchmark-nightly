Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z33?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@DbRetrieve:bb.a
bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.z = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.aa = zext i8 %i.z to i32                     ; 2 uses
  store i32 %i.aa, ptr @zz_size, align 4, !tbaa !7
  %i.ab = zext i8 %i.z to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr @no_fpos, align 8, !tbaa !10
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
  %i.bu = load i32, ptr @UseCollate, align 4, !tbaa !7
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.lr.ph.split.us.i
  %.02231.us.i = phi i32 [ %.1.us.i, %.lr.ph.split.us.i ], [ %i.bt, %.lr.ph.i ] ; 2 uses
  %.02330.us.i = phi i32 [ %.124.us.i, %.lr.ph.split.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bw = add nsw i32 %.02330.us.i, %.02231.us.i
  %i.bx = sdiv i32 %i.bw, 2                       ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.by
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.cb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.ca) #13
  %i.cc = icmp slt i32 %i.cb, 1                   ; 2 uses
  %i.cd = add nsw i32 %i.bx, -1
  %i.ce = add nsw i32 %i.bx, 1
  %.124.us.i = select i1 %i.cc, i32 %.02330.us.i, i32 %i.ce ; 3 uses
  %.1.us.i = select i1 %i.cc, i32 %i.cd, i32 %.02231.us.i ; 2 uses
  %.not.us.i = icmp sgt i32 %.124.us.i, %.1.us.i
  br i1 %.not.us.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !47

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.v
  %i.cf = phi i32 [ %i.ct, %bb.v ], [ 1, %.lr.ph.i ]
  %.02231.i = phi i32 [ %.1.i, %bb.v ], [ %i.bt, %.lr.ph.i ] ; 2 uses
  %.02330.i = phi i32 [ %.124.i, %bb.v ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.cg = add nsw i32 %.02330.i, %.02231.i
  %i.ch = sdiv i32 %i.cg, 2                       ; 3 uses
  %.not28.i = icmp eq i32 %i.cf, 0
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !17 ; 2 uses
  br i1 %.not28.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.i
  %i.cl = call i32 @strcollcmp(ptr noundef nonnull %i.d, ptr noundef %i.ck) #11
  %i.cm = icmp slt i32 %i.cl, 1
  %.pre.i = load i32, ptr @UseCollate, align 4, !tbaa !7 ; 2 uses
  br i1 %i.cm, label %bb.t, label %bb.u

bb.s:                                             ; preds = %.lr.ph.split.i
  %i.cn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.ck) #13
  %i.co = icmp slt i32 %i.cn, 1
  br i1 %i.co, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cp = phi i32 [ 0, %bb.s ], [ %.pre.i, %bb.r ]
  %i.cq = add nsw i32 %i.ch, -1
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.cr = phi i32 [ 0, %bb.s ], [ %.pre.i, %bb.r ]
  %i.cs = add nsw i32 %i.ch, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ct = phi i32 [ %i.cp, %bb.t ], [ %i.cr, %bb.u ]
  %.124.i = phi i32 [ %.02330.i, %bb.t ], [ %i.cs, %bb.u ] ; 3 uses
  %.1.i = phi i32 [ %i.cq, %bb.t ], [ %.02231.i, %bb.u ] ; 2 uses
  %.not.i = icmp sgt i32 %.124.i, %.1.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !48

._crit_edge.i:                                    ; preds = %bb.v, %.lr.ph.split.us.i, %bb.q
  %.023.lcssa.i = phi i32 [ 0, %bb.q ], [ %.124.us.i, %.lr.ph.split.us.i ], [ %.124.i, %bb.v ] ; 2 uses
  %i.cu = sext i32 %.023.lcssa.i to i64           ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !17
  %i.cx = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.cw, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.cy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.b) #13
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.w, label %SearchLines.exit.thread

SearchLines.exit.thread:                          ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.ar

bb.w:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cu
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !17
  %i.dd = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.dc, ptr noundef nonnull @.str.50, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.de = add nsw i32 %.023.lcssa.i, 1
  %i.df = sext i32 %i.de to i64
  br label %bb.an

bb.x:                                             ; preds = %.loopexit87
  %i.dg = tail call i32 @fseek(ptr noundef %i.bq, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !8   ; 8 uses
  %i.di = load i16, ptr %i.e, align 8, !tbaa !8
  %i.dj = zext i16 %i.di to i32                   ; 3 uses
  %i.dk = tail call i64 @ftell(ptr noundef %i.dh)
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %i.dm = add nsw i32 %i.dl, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not48.i.not = icmp sgt i32 %i.dl, %i.dj
  br i1 %.not48.i.not, label %.lr.ph.i73, label %._crit_edge.i76

.lr.ph.i73:                                       ; preds = %bb.x, %bb.al
  %.03950.i = phi i32 [ %.140.i, %bb.al ], [ %i.dm, %bb.x ] ; 5 uses
  %.04149.i = phi i32 [ %.142.i, %bb.al ], [ %i.dj, %bb.x ] ; 5 uses
  %i.dn = add nsw i32 %.04149.i, %.03950.i
  %i.do = sdiv i32 %i.dn, 2                       ; 2 uses
  %i.dp = sext i32 %i.do to i64
  %i.dq = call i32 @fseek(ptr noundef %i.dh, i64 noundef %i.dp, i32 noundef 0) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph.i73
  %.038.i = phi i32 [ %i.do, %.lr.ph.i73 ], [ %i.dr, %bb.y ] ; 2 uses
  %i.dr = add nsw i32 %.038.i, 1                  ; 2 uses
  %i.ds = call i32 @getc(ptr noundef %i.dh)
  %.not44.i = icmp eq i32 %i.ds, 10
  br i1 %.not44.i, label %bb.z, label %bb.y, !llvm.loop !49

bb.z:                                             ; preds = %bb.y
  %i.dt = icmp eq i32 %.038.i, %.03950.i
  br i1 %i.dt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.du = sext i32 %.04149.i to i64
  %i.dv = call i32 @fseek(ptr noundef %i.dh, i64 noundef %i.du, i32 noundef 0) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1.i74 = phi i32 [ %.04149.i, %bb.aa ], [ %i.dr, %bb.z ] ; 3 uses
  %i.dw = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef %i.dh) ; 0 uses
  %i.dx = call i64 @ftell(ptr noundef %i.dh)
  %i.dy = trunc i64 %i.dx to i32                  ; 3 uses
  %i.dz = add nsw i32 %i.dy, -1                   ; 2 uses
  %.not45.i = icmp sgt i32 %.04149.i, %.1.i74
  br i1 %.not45.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ea = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.eb = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ea, ptr noundef nonnull @.str.59) #11 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ec = icmp slt i32 %.1.i74, %i.dz
  br i1 %i.ec, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.ee = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ed, ptr noundef nonnull @.str.60) #11 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not46.i = icmp sgt i32 %i.dz, %.03950.i
  br i1 %.not46.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ef = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.eg = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.ef, ptr noundef nonnull @.str.61) #11 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eh = load i32, ptr @UseCollate, align 4, !tbaa !7
  %.not47.i = icmp eq i32 %i.eh, 0
  br i1 %.not47.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ei = call i32 @strcollcmp(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #11
  %i.ej = icmp slt i32 %i.ei, 1
  br i1 %i.ej, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.ek = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.c) #13
  %i.el = icmp slt i32 %i.ek, 1
  br i1 %i.el, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.em = add nsw i32 %.1.i74, -1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.142.i = phi i32 [ %.04149.i, %bb.ak ], [ %i.dy, %bb.aj ], [ %i.dy, %bb.ai ] ; 3 uses
  %.140.i = phi i32 [ %i.em, %bb.ak ], [ %.03950.i, %bb.aj ], [ %.03950.i, %bb.ai ] ; 2 uses
  %.not.i75 = icmp sgt i32 %.142.i, %.140.i
  br i1 %.not.i75, label %._crit_edge.i76, label %.lr.ph.i73, !llvm.loop !50

._crit_edge.i76:                                  ; preds = %bb.al, %bb.x
  %.041.lcssa.i = phi i32 [ %i.dj, %bb.x ], [ %.142.i, %bb.al ] ; 2 uses
  %i.en = icmp slt i32 %.041.lcssa.i, %i.dm
  br i1 %i.en, label %SearchFile.exit, label %SearchFile.exit.thread

SearchFile.exit.thread:                           ; preds = %._crit_edge.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ar

SearchFile.exit:                                  ; preds = %._crit_edge.i76
  %i.eo = sext i32 %.041.lcssa.i to i64
  %i.ep = call i32 @fseek(ptr noundef %i.dh, i64 noundef %i.eo, i32 noundef 0) ; 0 uses
  %i.eq = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 512, ptr noundef %i.dh) ; 0 uses
  %i.er = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.es = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.a) #13
  %.not84 = icmp eq i32 %i.es, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %.not84, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %SearchFile.exit
  %i.et = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.50, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.eu = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.ev = call i64 @ftell(ptr noundef %i.eu)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.w
  %storemerge = phi i64 [ %i.ev, %bb.am ], [ %i.df, %bb.w ]
  store i64 %storemerge, ptr %8, align 8, !tbaa !19
  %lhsv = load i16, ptr %i.d, align 16
  %.not72 = icmp eq i16 %lhsv, 46
  br i1 %.not72, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ex = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.ew) #11 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ey = call zeroext i16 @FileNum(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.28) #11 ; 2 uses
  store i16 %i.ey, ptr %5, align 2, !tbaa !21
  %i.ez = icmp eq i16 %i.ey, 0
  br i1 %i.ez, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fb = call zeroext i16 @DefineFile(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.fa, i32 noundef 3, i32 noundef 0) #11
  store i16 %i.fb, ptr %5, align 2, !tbaa !21
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
  %i.g = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.h = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.g, ptr noundef nonnull @.str.51) #11 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8    ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.s, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %.not55 = icmp eq i8 %i.m, 0
  %i.n = load i64, ptr %8, align 8, !tbaa !19     ; 4 uses
  br i1 %.not55, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i16, ptr %i.d, align 8, !tbaa !8
  %i.p = zext i16 %i.o to i64
  %.not56 = icmp slt i64 %i.n, %i.p
  br i1 %.not56, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.n
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = icmp eq i8 %i.s, 48                      ; 2 uses
  %i.u = zext i1 %i.t to i32
  store i32 %i.u, ptr %1, align 4, !tbaa !7
  %i.v = zext i1 %i.t to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v
  %i.x = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.y = load i64, ptr %8, align 8, !tbaa !19
  %i.z = add nsw i64 %i.y, 1
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.aa = icmp eq i64 %i.n, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load i16, ptr %i.d, align 8, !tbaa !8
  %i.ac = zext i16 %i.ab to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %i.ac, %bb.h ], [ %i.n, %bb.g ]
  %i.ae = tail call i32 @fseek(ptr noundef nonnull %i.j, i64 noundef %i.ad, i32 noundef 0) ; 0 uses
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.ag = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef %i.af)
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = load i8, ptr %i.a, align 16, !tbaa !8
  %i.aj = icmp eq i8 %i.ai, 48                    ; 2 uses
  %i.ak = zext i1 %i.aj to i32
  store i32 %i.ak, ptr %1, align 4, !tbaa !7
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %i.aj to i64
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.al = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %.sroa.sel.idx.sroa.sel.idx.sroa.sel, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.c, ptr noundef %3, ptr noundef %4, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.an = call i64 @ftell(ptr noundef %i.am)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %storemerge = phi i64 [ %i.an, %bb.j ], [ %i.z, %bb.f ]
  store i64 %storemerge, ptr %8, align 8, !tbaa !19
  %lhsv = load i16, ptr %i.b, align 16
  %.not58 = icmp eq i16 %lhsv, 46
  br i1 %.not58, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.ao) #11 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = call zeroext i16 @FileNum(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.28) #11 ; 2 uses
  store i16 %i.aq, ptr %5, align 2, !tbaa !21
  %i.ar = icmp eq i16 %i.aq, 0
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = call zeroext i16 @DefineFile(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.as, i32 noundef 3, i32 noundef 0) #11
  store i16 %i.at, ptr %5, align 2, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.049.in68 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.04969 = load ptr, ptr %.049.in68, align 8, !tbaa !8 ; 2 uses
  %.not5970 = icmp eq ptr %.04969, %0
  br i1 %.not5970, label %.loopexit64, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.au = load i32, ptr %i.c, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.04971 = phi ptr [ %.04969, %.preheader.lr.ph ], [ %.049, %.loopexit ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.p
  %.049.pn = phi ptr [ %.1, %bb.p ], [ %.04971, %.preheader ]
  %.1.in = getelementptr inbounds nuw i8, ptr %.049.pn, i64 16
  %.1 = load ptr, ptr %.1.in, align 8, !tbaa !8   ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !8
  switch i8 %i.aw, label %.loopexit [
    i8 0, label %bb.p
    i8 -116, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.04971, i64 33
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.az = zext i8 %i.ay to i32
  %i.ba = icmp eq i32 %i.au, %i.az
  br i1 %i.ba, label %.loopexit64.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.q
  %.049.in = getelementptr inbounds nuw i8, ptr %.04971, i64 8
  %.049 = load ptr, ptr %.049.in, align 8, !tbaa !8 ; 2 uses
  %.not59 = icmp eq ptr %.049, %0
  br i1 %.not59, label %.loopexit64, label %.preheader, !llvm.loop !52

.loopexit64:                                      ; preds = %.loopexit, %bb.o
  %.0.lcssa = phi ptr [ undef, %bb.o ], [ %.1, %.loopexit ] ; 3 uses
  %i.bb = load ptr, ptr @no_fpos, align 8, !tbaa !10
end_hunk_0
