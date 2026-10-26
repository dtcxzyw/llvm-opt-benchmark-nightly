Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/linenoise?download=true
inline.NumInlined: 56
inline.NumDeleted: 18
begin_hunk_0_@linenoise:bb.a
isUnsupportedTerm.exit:                           ; preds = %.preheader.i
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %0) #29 ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !43
  %i.ae = tail call i32 @fflush(ptr noundef %i.ad) #29 ; 0 uses
  %i.af = load ptr, ptr @stdin, align 8, !tbaa !43
  %i.ag = call ptr @fgets(ptr noundef nonnull %i.e, i32 noundef 4096, ptr noundef %i.af) #29
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %linenoiseNoTTY.exit, label %bb.m

bb.m:                                             ; preds = %isUnsupportedTerm.exit
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #25 ; 2 uses
  %.not1324 = icmp eq i64 %i.ai, 0
  br i1 %.not1324, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %.critedge2
  %.025 = phi i64 [ %i.am, %.critedge2 ], [ %i.ai, %bb.m ] ; 2 uses
  %i.aj = getelementptr i8, ptr %i.e, i64 %.025
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !25
  switch i8 %i.al, label %.critedge [
    i8 10, label %.critedge2
    i8 13, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  %i.am = add i64 %.025, -1                       ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am
  store i8 0, ptr %i.an, align 1, !tbaa !25
  %.not13 = icmp eq i64 %i.am, 0
  br i1 %.not13, label %.critedge, label %.lr.ph, !llvm.loop !59

.critedge:                                        ; preds = %.critedge2, %.lr.ph, %bb.m
  %i.ao = call noalias ptr @strdup(ptr noundef nonnull %i.e) #24
  br label %linenoiseNoTTY.exit

isUnsupportedTerm.exit.thread:                    ; preds = %bb.l, %bb.k, %bb.j
  %i.ap = tail call fastcc i32 @enableRawMode() #29
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %linenoiseNoTTY.exit, label %bb.n

bb.n:                                             ; preds = %isUnsupportedTerm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store <2 x i32> <i32 0, i32 1>, ptr %3, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr %i.e, ptr %i.ar, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  store ptr %0, ptr %i.at, align 8, !tbaa !33
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.au, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 35 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 21 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ay = call ptr @getenv(ptr noundef nonnull @.str.7) #24
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %bb.o, label %getColumns.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.az = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, ptr noundef nonnull %2) #24
  %i.ba = icmp eq i32 %i.az, -1
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.bc = load i16, ptr %i.bb, align 2            ; 2 uses
  %i.bd = icmp eq i16 %i.bc, 0
  %or.cond.i.i.i = select i1 %i.ba, i1 true, i1 %i.bd
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.be = call fastcc i32 @getCursorPosition() #29 ; 3 uses
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %getColumns.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = call i64 @write(i32 noundef 1, ptr noundef nonnull @.str.30, i64 noundef 6) #24
  %.not22.i.i.i = icmp eq i64 %i.bg, 6
  br i1 %.not22.i.i.i, label %bb.r, label %getColumns.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.bh = call fastcc i32 @getCursorPosition() #29 ; 5 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %getColumns.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = icmp sgt i32 %i.bh, %i.be
  br i1 %i.bj, label %bb.t, label %getColumns.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bk = sub nsw i32 %i.bh, %i.be
  %i.bl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 32, ptr noundef nonnull @.str.31, i32 noundef %i.bk) #24 ; 0 uses
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25
  %i.bn = call i64 @write(i32 noundef 1, ptr noundef nonnull %i.b, i64 noundef %i.bm) #24 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %getColumns.exit.i.i

bb.u:                                             ; preds = %bb.o
  %i.bo = zext i16 %i.bc to i32
  br label %getColumns.exit.i.i

getColumns.exit.i.i:                              ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.n
  %.1.i.i.i = phi i32 [ %i.bh, %bb.t ], [ %i.bo, %bb.u ], [ %i.bh, %bb.s ], [ 80, %bb.n ], [ 80, %bb.r ], [ 80, %bb.p ], [ 80, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bp = sext i32 %.1.i.i.i to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i64 0, ptr %i.br, align 8, !tbaa !34
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 0, ptr %i.bs, align 8, !tbaa !41
  store i8 0, ptr %i.e, align 16, !tbaa !25
  store i64 4095, ptr %i.as, align 8, !tbaa !29
  %i.bt = call i32 @linenoiseHistoryAdd(ptr noundef nonnull @.str.27, i32 noundef 0) #29 ; 0 uses
  %i.bu = call i64 @write(i32 noundef 1, ptr noundef nonnull %0, i64 noundef %i.au) #24
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %linenoiseEdit.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %getColumns.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.bw = call i64 @read(i32 noundef 0, ptr noundef nonnull %i.c, i64 noundef 1) #24
  %i.bx = trunc i64 %i.bw to i32
  %i.by = icmp slt i32 %i.bx, 1
  br i1 %i.by, label %.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  br label %bb.v

._crit_edge.loopexit.i.i:                         ; preds = %linenoiseEditMoveLeft.exit.i.i
  %.pre93.i.i = load i64, ptr %i.ax, align 8, !tbaa !22
  %i.cd = trunc i64 %.pre93.i.i to i32
  br label %.thread.i.i

bb.v:                                             ; preds = %linenoiseEditMoveLeft.exit.i.i, %.lr.ph.i.i
  %i.ce = load i8, ptr %i.c, align 1, !tbaa !25   ; 2 uses
  %i.cf = icmp ne i8 %i.ce, 9
  %i.cg = load ptr, ptr @completionCallback, align 8 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  %or.cond.not57.i.i = select i1 %i.cf, i1 true, i1 %i.ch
  %.b.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  %or.cond3.i.i = select i1 %or.cond.not57.i.i, i1 true, i1 %.b.i.i
  br i1 %or.cond3.i.i, label %thread-pre-split.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1, !tbaa !25
  %i.ci = load ptr, ptr %i.ar, align 8, !tbaa !24
  call void %i.cg(ptr noundef %i.ci, ptr noundef nonnull %1) #24, !inline_history !60
  %i.cj = load i64, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.x, label %.preheader.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !43
  %fputc.i.i.i.i = call i32 @fputc(i32 7, ptr %i.cl) ; 0 uses
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !43
  %i.cn = call i32 @fflush(ptr noundef %i.cm) #29 ; 0 uses
  br label %completeLine.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.w, %.preheader.i.i.i.backedge
  %i.co = phi i64 [ %.be, %.preheader.i.i.i.backedge ], [ %i.cj, %bb.w ]
  %.03338.i.i.i = phi i64 [ %.03338.i.i.i.be, %.preheader.i.i.i.backedge ], [ 0, %bb.w ] ; 6 uses
  %i.cp = icmp ult i64 %.03338.i.i.i, %i.co
  br i1 %i.cp, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.preheader.i.i.i
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !20
  %.sroa.41.0.copyload.i.i.i = load i64, ptr %i.aw, align 8, !tbaa !63
  %.sroa.52.0.copyload.i.i.i = load i64, ptr %i.ax, align 8, !tbaa !63
  %i.cq = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.03338.i.i.i
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !20 ; 2 uses
  %i.ct = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cs) #25 ; 2 uses
  store i64 %i.ct, ptr %i.aw, align 8, !tbaa !30
  store i64 %i.ct, ptr %i.ax, align 8, !tbaa !22
  store ptr %i.cs, ptr %i.ar, align 8, !tbaa !24
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  store i64 %.sroa.52.0.copyload.i.i.i, ptr %i.ax, align 8, !tbaa !22
  store i64 %.sroa.41.0.copyload.i.i.i, ptr %i.aw, align 8, !tbaa !30
  store ptr %.sroa.3.0.copyload.i.i.i, ptr %i.ar, align 8, !tbaa !24
  br label %bb.aa

bb.z:                                             ; preds = %.preheader.i.i.i
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cu = load i32, ptr %3, align 8, !tbaa !64
  %i.cv = call i64 @read(i32 noundef %i.cu, ptr noundef nonnull %i.a, i64 noundef 1) #24
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = icmp slt i32 %i.cw, 1
  br i1 %i.cx, label %completeLine.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load i8, ptr %i.a, align 1, !tbaa !25   ; 2 uses
  switch i8 %i.cy, label %bb.ag [
    i8 9, label %bb.ac
    i8 27, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cz = add i64 %.03338.i.i.i, 1
  %i.da = load i64, ptr %1, align 8, !tbaa !18    ; 4 uses
  %i.db = add i64 %i.da, 1
  %i.dc = urem i64 %i.cz, %i.db                   ; 2 uses
  %i.dd = icmp eq i64 %i.dc, %i.da
  br i1 %i.dd, label %bb.ad, label %.preheader.i.i.i.backedge

bb.ad:                                            ; preds = %bb.ac
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !43
  %fputc.i37.i.i.i = call i32 @fputc(i32 7, ptr %i.de) ; 0 uses
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !43
  %i.dg = call i32 @fflush(ptr noundef %i.df) #29 ; 0 uses
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !18
  br label %.preheader.i.i.i.backedge

.preheader.i.i.i.backedge:                        ; preds = %bb.ad, %bb.ac
  %.be = phi i64 [ %.pre.i.i, %bb.ad ], [ %i.da, %bb.ac ]
  %.03338.i.i.i.be = phi i64 [ %i.da, %bb.ad ], [ %i.dc, %bb.ac ]
  br label %.preheader.i.i.i, !llvm.loop !61

bb.ae:                                            ; preds = %bb.ab
  %i.dh = load i64, ptr %1, align 8, !tbaa !18
  %i.di = icmp ult i64 %.03338.i.i.i, %i.dh
  br i1 %i.di, label %bb.af, label %.critedge.loopexit.i.i.i

bb.af:                                            ; preds = %bb.ae
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %.critedge.loopexit.i.i.i

bb.ag:                                            ; preds = %bb.ab
  %i.dj = load i64, ptr %1, align 8, !tbaa !18
  %i.dk = icmp ult i64 %.03338.i.i.i, %i.dj
  br i1 %i.dk, label %bb.ah, label %.critedge.loopexit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.dl = load ptr, ptr %i.ar, align 8, !tbaa !24
  %i.dm = load i64, ptr %i.as, align 8, !tbaa !29
  %i.dn = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.03338.i.i.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !20
  %i.dq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.dl, i64 noundef %i.dm, ptr noundef nonnull @.str.8, ptr noundef %i.dp) #24
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  store i64 %i.dr, ptr %i.aw, align 8, !tbaa !30
  store i64 %i.dr, ptr %i.ax, align 8, !tbaa !22
  br label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.ds = sext i8 %i.cy to i32
  br label %completeLine.exit.i.i

completeLine.exit.i.i:                            ; preds = %bb.aa, %.critedge.loopexit.i.i.i, %bb.x
  %.1.i64.i.i = phi i32 [ 0, %bb.x ], [ %i.ds, %.critedge.loopexit.i.i.i ], [ -1, %bb.aa ] ; 3 uses
  %i.dt = load i64, ptr %1, align 8, !tbaa !18
  %.not8.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %completeLine.exit.i.i, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.i.i ], [ 0, %completeLine.exit.i.i ] ; 2 uses
  %i.du = load ptr, ptr %i.bz, align 8, !tbaa !17
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %.07.i.i.i
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !20
  call void @free(ptr noundef %i.dw) #24
  %i.dx = add nuw i64 %.07.i.i.i, 1               ; 2 uses
  %i.dy = load i64, ptr %1, align 8, !tbaa !18
  %i.dz = icmp ult i64 %i.dx, %i.dy
  br i1 %i.dz, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !62

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %completeLine.exit.i.i
  %i.ea = load ptr, ptr %i.bz, align 8, !tbaa !17 ; 2 uses
  %.not.i83.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i83.i.i, label %freeCompletions.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef nonnull %i.ea) #24
  br label %freeCompletions.exit.i.i

freeCompletions.exit.i.i:                         ; preds = %bb.ai, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.eb = trunc nsw i32 %.1.i64.i.i to i8         ; 2 uses
  store i8 %i.eb, ptr %i.c, align 1, !tbaa !25
  %i.ec = icmp slt i32 %.1.i64.i.i, 0
  br i1 %i.ec, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %freeCompletions.exit.i.i
  %i.ed = load i64, ptr %i.ax, align 8, !tbaa !22
  %i.ee = trunc i64 %i.ed to i32
  br label %.thread.i.i

bb.ak:                                            ; preds = %freeCompletions.exit.i.i
  %i.ef = icmp eq i32 %.1.i64.i.i, 0
  br i1 %i.ef, label %linenoiseEditMoveLeft.exit.i.i, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.ak, %bb.v
  %i.eg = phi i8 [ %i.eb, %bb.ak ], [ %i.ce, %bb.v ] ; 3 uses
  switch i8 %i.eg, label %bb.cn [
    i8 10, label %linenoiseEditMoveLeft.exit.i.i
    i8 9, label %bb.al
    i8 13, label %bb.an
    i8 3, label %bb.au
    i8 127, label %bb.ax
    i8 8, label %bb.ax
    i8 4, label %bb.ay
    i8 20, label %bb.bb
    i8 2, label %bb.bf
    i8 6, label %bb.bh
    i8 16, label %bb.bj
    i8 18, label %bb.bk
    i8 19, label %bb.bk
    i8 7, label %bb.bm
    i8 14, label %bb.bo
    i8 27, label %bb.bp
    i8 21, label %bb.co
    i8 11, label %bb.cp
    i8 1, label %bb.cq
    i8 5, label %bb.cs
    i8 12, label %bb.cu
    i8 23, label %bb.cv
  ]

bb.al:                                            ; preds = %thread-pre-split.i.i
  %.b55.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  br i1 %.b55.i.i, label %bb.am, label %linenoiseEditMoveLeft.exit.i.i

bb.am:                                            ; preds = %bb.al
  call fastcc void @disableReverseSearchMode(ptr noundef %3, ptr noundef nonnull %i.e, i32 noundef 0) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.an:                                            ; preds = %thread-pre-split.i.i
  %i.eh = load i32, ptr @history_len, align 4, !tbaa !10
  %i.ei = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ei, ptr @history_len, align 4, !tbaa !10
  %i.ej = load ptr, ptr @history, align 8, !tbaa !40
  %i.ek = sext i32 %i.ei to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !20
  call void @free(ptr noundef %i.em) #24
  %i.en = load i32, ptr @mlmode, align 4, !tbaa !10
  %.not60.i.i = icmp eq i32 %i.en, 0
  br i1 %.not60.i.i, label %linenoiseEditMoveEnd.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eo = load i64, ptr %i.aw, align 8, !tbaa !30
  %i.ep = load i64, ptr %i.ax, align 8, !tbaa !22 ; 2 uses
  %.not.i65.i.i = icmp eq i64 %i.eo, %i.ep
  br i1 %.not.i65.i.i, label %linenoiseEditMoveEnd.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i64 %i.ep, ptr %i.aw, align 8, !tbaa !30
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveEnd.exit.i.i

linenoiseEditMoveEnd.exit.i.i:                    ; preds = %bb.ap, %bb.ao, %bb.an
  %i.eq = load ptr, ptr @hintsCallback, align 8, !tbaa !12 ; 2 uses
  %.not61.i.i = icmp eq ptr %i.eq, null
  br i1 %.not61.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %linenoiseEditMoveEnd.exit.i.i
  store ptr null, ptr @hintsCallback, align 8, !tbaa !12
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  store ptr %i.eq, ptr @hintsCallback, align 8, !tbaa !12
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %linenoiseEditMoveEnd.exit.i.i
  %.b54.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  br i1 %.b54.i.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call fastcc void @disableReverseSearchMode(ptr noundef %3, ptr noundef nonnull %i.e, i32 noundef 0) #29
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.er = load i64, ptr %i.ax, align 8, !tbaa !22
  %i.es = trunc i64 %i.er to i32
  br label %.thread.i.i

bb.au:                                            ; preds = %thread-pre-split.i.i
  %.b53.i.i = load i1, ptr @reverse_search_mode_enabled, align 4
  br i1 %.b53.i.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i8 0, ptr %i.e, align 16, !tbaa !25
  store i64 0, ptr %i.ax, align 8, !tbaa !22
  store i64 0, ptr %i.aw, align 8, !tbaa !30
  store i1 false, ptr @reverse_search_mode_enabled, align 4
  %i.et = load ptr, ptr %i.cc, align 8, !tbaa !44
  store ptr %i.et, ptr %i.at, align 8, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result, i8 0, i64 4096, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @search_result_friendly, i8 0, i64 4096, i1 false)
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.aw:                                            ; preds = %bb.au
  %i.eu = tail call ptr @__errno_location() #31
  store i32 11, ptr %i.eu, align 4, !tbaa !10
  br label %.thread.i.i

bb.ax:                                            ; preds = %thread-pre-split.i.i, %thread-pre-split.i.i
  call void @linenoiseEditBackspace(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.ay:                                            ; preds = %thread-pre-split.i.i
  %i.ev = load i64, ptr %i.ax, align 8, !tbaa !22
  %.not59.i.i = icmp eq i64 %i.ev, 0
  br i1 %.not59.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @linenoiseEditDelete(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.ew = load i32, ptr @history_len, align 4, !tbaa !10
  %i.ex = add nsw i32 %i.ew, -1                   ; 2 uses
  store i32 %i.ex, ptr @history_len, align 4, !tbaa !10
  %i.ey = load ptr, ptr @history, align 8, !tbaa !40
  %i.ez = sext i32 %i.ex to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !20
  call void @free(ptr noundef %i.fb) #24
  br label %.thread.i.i

bb.bb:                                            ; preds = %thread-pre-split.i.i
  %i.fc = load i64, ptr %i.aw, align 8, !tbaa !30 ; 5 uses
  %.not.i.i = icmp ne i64 %i.fc, 0
  %i.fd = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.fe = icmp ult i64 %i.fc, %i.fd
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.fe, i1 false
  br i1 %or.cond.i.i, label %bb.bc, label %linenoiseEditMoveLeft.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.ff = getelementptr i8, ptr %i.e, i64 %i.fc   ; 3 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 -1     ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !25
  %i.fi = load i8, ptr %i.ff, align 1, !tbaa !25
  store i8 %i.fi, ptr %i.fg, align 1, !tbaa !25
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !25
  %i.fj = add i64 %i.fd, -1
  %.not58.i.i = icmp eq i64 %i.fc, %i.fj
  br i1 %.not58.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fk = add nuw i64 %i.fc, 1
  store i64 %i.fk, ptr %i.aw, align 8, !tbaa !30
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  call fastcc void @refreshLine(ptr noundef nonnull %3) #29
  br label %linenoiseEditMoveLeft.exit.i.i
end_hunk_0
