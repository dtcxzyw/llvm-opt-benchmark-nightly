Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/redis-cli?download=true
inline.NumInlined: 395
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@repl:bb.a
  tail call void @cliLoadPreferences()
  br label %bb.n

bb.n:                                             ; preds = %getDotfilePath.exit.thread, %bb.e
  %.056 = phi ptr [ %.011.i92, %getDotfilePath.exit.thread ], [ null, %bb.e ] ; 4 uses
  %.not70 = phi i1 [ false, %getDotfilePath.exit.thread ], [ true, %bb.e ] ; 2 uses
  tail call fastcc void @cliRefreshPrompt()
  %i.u = icmp ne ptr %.056, null                  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.not78 = icmp eq ptr %.056, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.n
  %i.z = load ptr, ptr @context, align 8, !tbaa !215
  %.not68 = icmp eq ptr %i.z, null
  %i.aa = select i1 %.not68, ptr @.str.883, ptr getelementptr inbounds nuw (i8, ptr @config, i64 384)
  %i.ab = call ptr @linenoise(ptr noundef nonnull %i.aa) #32 ; 15 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.backedge
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 160), align 8, !tbaa !381
  %.not80 = icmp eq i32 %i.ad, 0
  br i1 %.not80, label %bb.du, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 160), align 8, !tbaa !381
  %i.ae = call fastcc i32 @cliConnect(i32 noundef 1)
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.backedge.backedge, label %bb.du

bb.q:                                             ; preds = %.backedge
  %i.ag = load i8, ptr %i.ab, align 1, !tbaa !73
  %.not69 = icmp eq i8 %i.ag, 0
  br i1 %.not69, label %bb.cj, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr null, ptr %i.c, align 8, !tbaa !29
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 520), align 8, !tbaa !289
  %.not.i81 = icmp eq i32 %i.ah, 0
  br i1 %.not.i81, label %cliSplitArgs.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %strncmp.i = call i32 @strncmp(ptr nonnull dereferenceable(1) %i.ab, ptr nonnull dereferenceable(6) @.str.896, i64 5)
  %cmp.i = icmp eq i32 %strncmp.i, 0
  br i1 %cmp.i, label %cliSplitArgs.exit.thread, label %sub_0.i

sub_0.i:                                          ; preds = %bb.s
  %i.ai = load i8, ptr %i.ab, align 1
  %.not21.i = icmp eq i8 %i.ai, 101
  br i1 %.not21.i, label %.tail.i, label %cliSplitArgs.exit

.tail.i:                                          ; preds = %sub_0.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ak, 32
  br i1 %i.al, label %cliSplitArgs.exit.thread, label %cliSplitArgs.exit

cliSplitArgs.exit.thread:                         ; preds = %bb.s, %.tail.i
  %i.am = call ptr @hi_sds_malloc(i64 noundef 16) #32 ; 3 uses
  store i32 2, ptr %i.b, align 4, !tbaa !9
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #34
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !73
  %i.ar = icmp eq i8 %i.aq, 32
  %i.as = select i1 %i.ar, i32 2, i32 5           ; 3 uses
  %i.at = add nsw i32 %i.as, -1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = call ptr @hi_sdsnewlen(ptr noundef nonnull %i.ab, i64 noundef %i.au) #32
  store ptr %i.av, ptr %i.am, align 8, !tbaa !29
  %i.aw = zext nneg i32 %i.as to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aw
  %i.ay = sub nsw i32 %i.ao, %i.as
  %i.az = sext i32 %i.ay to i64
  %i.ba = call ptr @hi_sdsnewlen(ptr noundef nonnull %i.ax, i64 noundef %i.az) #32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !29
  br label %bb.x

cliSplitArgs.exit:                                ; preds = %bb.r, %sub_0.i, %.tail.i
  %i.bc = call ptr @hi_sdssplitargs(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.b) #32 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.t, label %bb.x

bb.t:                                             ; preds = %cliSplitArgs.exit
  %puts76 = call i32 @puts(ptr nonnull dereferenceable(1) @str.40) ; 0 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bf = call i32 @fflush(ptr noundef %i.be)     ; 0 uses
  br i1 %.not70, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = call i32 @linenoiseHistoryAdd(ptr noundef nonnull %i.ab, i32 noundef 0) #32 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %.not78, label %bb.ci, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = call i32 @linenoiseHistorySave(ptr noundef nonnull %.056) #32 ; 0 uses
  br label %bb.ci

bb.x:                                             ; preds = %cliSplitArgs.exit.thread, %cliSplitArgs.exit
  %.0.i94 = phi ptr [ %i.am, %cliSplitArgs.exit.thread ], [ %i.bc, %cliSplitArgs.exit ] ; 11 uses
  %i.bi = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @hi_sdsfreesplitres(ptr noundef nonnull %.0.i94, i32 noundef 0) #32
  br label %bb.ci

bb.z:                                             ; preds = %bb.x
  %i.bk = tail call ptr @__errno_location() #38   ; 2 uses
  store i32 0, ptr %i.bk, align 4, !tbaa !9
  %i.bl = load ptr, ptr %.0.i94, align 8, !tbaa !29
  %i.bm = call i64 @__isoc23_strtol(ptr noundef %i.bl, ptr noundef nonnull %i.c, i32 noundef 10) #32 ; 2 uses
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !9   ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !73
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bs = load i32, ptr %i.bk, align 4, !tbaa !9  ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 34
  br i1 %i.bt, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bu = icmp eq i32 %i.bs, 22
  %i.bv = icmp slt i64 %i.bm, 1
  %or.cond = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bw = load ptr, ptr @stdout, align 8, !tbaa !13
  %i.bx = call i64 @fwrite(ptr nonnull @.str.885, i64 47, i64 1, ptr %i.bw) ; 0 uses
  %i.by = load i32, ptr %i.b, align 4, !tbaa !9
  call void @hi_sdsfreesplitres(ptr noundef nonnull %.0.i94, i32 noundef %i.by) #32
  br label %bb.ci

bb.ae:                                            ; preds = %bb.z, %bb.aa, %bb.ac
  %.054 = phi i64 [ %i.bm, %bb.ac ], [ 1, %bb.aa ], [ 1, %bb.z ]
  %.053 = phi i32 [ 1, %bb.ac ], [ 0, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.bz = sub nsw i32 %i.bn, %.053                ; 9 uses
  %i.ca = zext nneg i32 %.053 to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.0.i94, i64 %i.ca ; 11 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !29 ; 6 uses
  %i.cd = call i32 @strcasecmp(ptr noundef %i.cc, ptr noundef nonnull @.str.898) #34
  %.not.i82 = icmp eq i32 %i.cd, 0
  br i1 %.not.i82, label %isSensitiveCommand.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ce = icmp sgt i32 %i.bz, 1
  br i1 %i.ce, label %bb.ag, label %.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.cf = call i32 @strcasecmp(ptr noundef %i.cc, ptr noundef nonnull @.str.899) #34
  %.not88.i = icmp eq i32 %i.cf, 0
  br i1 %.not88.i, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !29 ; 3 uses
  %i.ci = call i32 @strcasecmp(ptr noundef %i.ch, ptr noundef nonnull @.str.900) #34
  %.not89.i = icmp eq i32 %i.ci, 0
  br i1 %.not89.i, label %isSensitiveCommand.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cj = call i32 @strcasecmp(ptr noundef %i.ch, ptr noundef nonnull @.str.901) #34
  %.not90.i = icmp eq i32 %i.cj, 0
  br i1 %.not90.i, label %isSensitiveCommand.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ck = call i32 @strcasecmp(ptr noundef %i.ch, ptr noundef nonnull @.str.902) #34
  %.not91.i = icmp eq i32 %i.ck, 0
  br i1 %.not91.i, label %isSensitiveCommand.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %.not135.i = icmp eq i32 %i.bz, 2
  br i1 %.not135.i, label %.thread.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cl = call i32 @strcasecmp(ptr noundef %i.cc, ptr noundef nonnull @.str.903) #34
  %.not92.i = icmp eq i32 %i.cl, 0
  br i1 %.not92.i, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !29
  %i.co = call i32 @strcasecmp(ptr noundef %i.cn, ptr noundef nonnull @.str.105) #34
  %.not93.i = icmp eq i32 %i.co, 0
  br i1 %.not93.i, label %.lr.ph148.preheader.i, label %bb.as

.lr.ph148.preheader.i:                            ; preds = %bb.am
  %sext170.i = zext nneg i32 %i.bz to i64
  br label %.lr.ph148.i

bb.an:                                            ; preds = %bb.ar
  %indvars.iv.next169.i = add nuw nsw i64 %indvars.iv168.i, 2 ; 2 uses
  %5 = icmp samesign ult i64 %indvars.iv.next169.i, %sext170.i
  br i1 %5, label %.lr.ph148.i, label %isSensitiveCommand.exit, !llvm.loop !394

.lr.ph148.i:                                      ; preds = %bb.an, %.lr.ph148.preheader.i
  %indvars.iv168.i = phi i64 [ 2, %.lr.ph148.preheader.i ], [ %indvars.iv.next169.i, %bb.an ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv168.i
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !29 ; 5 uses
  %i.cr = call i32 @strcasecmp(ptr noundef %i.cq, ptr noundef nonnull @.str.904) #34
  %.not94.i = icmp eq i32 %i.cr, 0
  br i1 %.not94.i, label %isSensitiveCommand.exit, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph148.i
  %i.cs = call i32 @strcasecmp(ptr noundef %i.cq, ptr noundef nonnull @.str.905) #34
  %.not95.i = icmp eq i32 %i.cs, 0
  br i1 %.not95.i, label %isSensitiveCommand.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ct = call i32 @strcasecmp(ptr noundef %i.cq, ptr noundef nonnull @.str.906) #34
  %.not96.i = icmp eq i32 %i.ct, 0
  br i1 %.not96.i, label %isSensitiveCommand.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cu = call i32 @strcasecmp(ptr noundef %i.cq, ptr noundef nonnull @.str.907) #34
  %.not97.i = icmp eq i32 %i.cu, 0
  br i1 %.not97.i, label %isSensitiveCommand.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cv = call i32 @strcasecmp(ptr noundef %i.cq, ptr noundef nonnull @.str.908) #34
  %.not98.i = icmp eq i32 %i.cv, 0
  br i1 %.not98.i, label %isSensitiveCommand.exit, label %bb.an

bb.as:                                            ; preds = %bb.am, %bb.al
  %i.cw = icmp samesign ugt i32 %i.bz, 4
  br i1 %i.cw, label %bb.at, label %.thread.i

bb.at:                                            ; preds = %bb.as
  %i.cx = call i32 @strcasecmp(ptr noundef %i.cc, ptr noundef nonnull @.str.909) #34
  %.not99.i = icmp eq i32 %i.cx, 0
  br i1 %.not99.i, label %.lr.ph146.preheader.i, label %bb.aw

.lr.ph146.preheader.i:                            ; preds = %bb.at
  %sext.i = zext nneg i32 %i.bz to i64
  br label %.lr.ph146.i

bb.au:                                            ; preds = %bb.av
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 2 ; 2 uses
  %6 = icmp samesign ult i64 %indvars.iv.next166.i, %sext.i
  br i1 %6, label %.lr.ph146.i, label %.thread.i, !llvm.loop !395

.lr.ph146.i:                                      ; preds = %bb.au, %.lr.ph146.preheader.i
  %indvars.iv165.i = phi i64 [ 2, %.lr.ph146.preheader.i ], [ %indvars.iv.next166.i, %bb.au ] ; 3 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv165.i to i32
  %i.cz = xor i32 %i.cy, -1
  %i.da = add i32 %i.bz, %i.cz                    ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv165.i
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !29 ; 2 uses
  %i.dd = call i32 @strcasecmp(ptr noundef %i.dc, ptr noundef nonnull @.str.339) #34
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = icmp sgt i32 %i.da, 1
  %or.cond.i = and i1 %i.df, %i.de
  br i1 %or.cond.i, label %isSensitiveCommand.exit, label %bb.av

bb.av:                                            ; preds = %.lr.ph146.i
  %i.dg = call i32 @strcasecmp(ptr noundef %i.dc, ptr noundef nonnull @.str.910) #34
  %i.dh = icmp eq i32 %i.dg, 0
  %i.di = icmp ne i32 %i.da, 0
  %or.cond4.i = and i1 %i.di, %i.dh
  br i1 %or.cond4.i, label %bb.au, label %isSensitiveCommand.exit

bb.aw:                                            ; preds = %bb.at
  %i.dj = icmp samesign ugt i32 %i.bz, 7
  br i1 %i.dj, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.dk = call i32 @strcasecmp(ptr noundef %i.cc, ptr noundef nonnull @.str.911) #34
  %.not100.i = icmp eq i32 %i.dk, 0
  br i1 %.not100.i, label %.lr.ph.preheader.i, label %bb.bb

.lr.ph.preheader.i:                               ; preds = %bb.ax
  %wide.trip.count.i = zext nneg i32 %i.bz to i64
  br label %.lr.ph.i

bb.ay:                                            ; preds = %bb.ba
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph.i, !llvm.loop !396

.lr.ph.i:                                         ; preds = %bb.ay, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 6, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ay ] ; 3 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dm = xor i32 %i.dl, -1
  %i.dn = add nsw i32 %i.bz, %i.dm                ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !29 ; 3 uses
  %i.dq = call i32 @strcasecmp(ptr noundef %i.dp, ptr noundef nonnull @.str.898) #34
  %i.dr = icmp eq i32 %i.dq, 0
  %i.ds = icmp ne i32 %i.dn, 0                    ; 2 uses
  %or.cond6.i = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond6.i, label %isSensitiveCommand.exit, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i
  %i.dt = call i32 @strcasecmp(ptr noundef %i.dp, ptr noundef nonnull @.str.912) #34
  %i.du = icmp eq i32 %i.dt, 0
  %i.dv = icmp sgt i32 %i.dn, 1
  %or.cond8.i = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond8.i, label %isSensitiveCommand.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dw = call i32 @strcasecmp(ptr noundef %i.dp, ptr noundef nonnull @.str.913) #34
  %i.dx = icmp eq i32 %i.dw, 0
  %or.cond10.i = select i1 %i.dx, i1 %i.ds, i1 false
  br i1 %or.cond10.i, label %isSensitiveCommand.exit, label %bb.ay

bb.bb:                                            ; preds = %bb.ax, %bb.aw
  %i.dy = call i32 @strcasecmp(ptr noundef %i.cc, ptr noundef nonnull @.str.914) #34
  %.not101.i = icmp eq i32 %i.dy, 0
  br i1 %.not101.i, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !29 ; 2 uses
  %i.eb = call i32 @strcasecmp(ptr noundef %i.ea, ptr noundef nonnull @.str.903) #34
  %.not102.i = icmp eq i32 %i.eb, 0
  br i1 %.not102.i, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !29
  %i.ee = call i32 @strcasecmp(ptr noundef %i.ed, ptr noundef nonnull @.str.105) #34
  %.not103.i = icmp eq i32 %i.ee, 0
  br i1 %.not103.i, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !29 ; 2 uses
  %i.eh = call i32 @strcasecmp(ptr noundef %i.eg, ptr noundef nonnull @.str.915) #34
  %.not104.i = icmp eq i32 %i.eh, 0
  br i1 %.not104.i, label %isSensitiveCommand.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ei = call i32 @strcasecmp(ptr noundef %i.eg, ptr noundef nonnull @.str.916) #34
  %.not105.i = icmp eq i32 %i.ei, 0
  br i1 %.not105.i, label %isSensitiveCommand.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd, %bb.bc
  %i.ej = call i32 @strcasecmp(ptr noundef %i.ea, ptr noundef nonnull @.str.105) #34
  %.not106.i = icmp eq i32 %i.ej, 0
  br i1 %.not106.i, label %bb.bh, label %.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !29 ; 2 uses
  %i.em = call i32 @strcasecmp(ptr noundef %i.el, ptr noundef nonnull @.str.917) #34
  %.not107.i = icmp eq i32 %i.em, 0
  br i1 %.not107.i, label %isSensitiveCommand.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.en = call i32 @strcasecmp(ptr noundef %i.el, ptr noundef nonnull @.str.918) #34
  %.not108.i = icmp eq i32 %i.en, 0
  br i1 %.not108.i, label %isSensitiveCommand.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.ay, %bb.au, %bb.bi, %bb.bg, %bb.bb, %bb.as, %bb.ak, %bb.af
  br label %isSensitiveCommand.exit

isSensitiveCommand.exit:                          ; preds = %.lr.ph.i, %bb.az, %bb.ba, %.lr.ph146.i, %bb.av, %bb.an, %.lr.ph148.i, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.ae, %bb.ah, %bb.ai, %bb.aj, %bb.be, %bb.bf, %bb.bh, %bb.bi, %.thread.i
  %or.cond3 = phi i1 [ %i.u, %.thread.i ], [ false, %bb.be ], [ false, %bb.bh ], [ false, %.lr.ph148.i ], [ false, %.lr.ph146.i ], [ false, %bb.ah ], [ false, %bb.bi ], [ false, %bb.ae ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.bf ], [ false, %bb.ao ], [ %i.u, %bb.an ], [ false, %bb.ar ], [ false, %bb.aq ], [ false, %bb.ap ], [ %i.u, %bb.av ], [ %i.u, %bb.ba ], [ false, %.lr.ph.i ], [ false, %bb.az ]
  %.7.i = phi i32 [ 0, %.thread.i ], [ 1, %bb.be ], [ 1, %bb.bh ], [ 1, %.lr.ph148.i ], [ 1, %.lr.ph146.i ], [ 1, %bb.ah ], [ 1, %bb.bi ], [ 1, %bb.ae ], [ 1, %bb.aj ], [ 1, %bb.ai ], [ 1, %bb.bf ], [ 1, %bb.ao ], [ 0, %bb.an ], [ 1, %bb.ar ], [ 1, %bb.aq ], [ 1, %bb.ap ], [ 0, %bb.av ], [ 0, %bb.ba ], [ 1, %.lr.ph.i ], [ 1, %bb.az ]
  br i1 %.not70, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %isSensitiveCommand.exit
  %i.eo = call i32 @linenoiseHistoryAdd(ptr noundef nonnull %i.ab, i32 noundef %.7.i) #32 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %isSensitiveCommand.exit
  br i1 %or.cond3, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ep = call i32 @linenoiseHistorySave(ptr noundef nonnull %.056) #32 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.eq = load ptr, ptr %.0.i94, align 8, !tbaa !29 ; 8 uses
  %i.er = call i32 @strcasecmp(ptr noundef %i.eq, ptr noundef nonnull @.str.886) #34
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.et = call i32 @strcasecmp(ptr noundef %i.eq, ptr noundef nonnull @.str.887) #34
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  call void @exit(i32 noundef 0) #37
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.ev = load i8, ptr %i.eq, align 1, !tbaa !73
  %i.ew = icmp eq i8 %i.ev, 58
  br i1 %i.ew, label %bb.bq, label %bb.bx

bb.bq:                                            ; preds = %bb.bp
  %i.ex = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ey = call i32 @strcasecmp(ptr noundef nonnull %i.eq, ptr noundef nonnull @.str.30) #34
  %i.ez = icmp eq i32 %i.ey, 0
  %i.fa = icmp sgt i32 %i.ex, 1
  %or.cond.i83 = and i1 %i.fa, %i.ez
  br i1 %or.cond.i83, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i94, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !29 ; 3 uses
  %i.fd = call i32 @strcasecmp(ptr noundef %i.fc, ptr noundef nonnull @.str.31) #34
  %.not8.i = icmp eq i32 %i.fd, 0
  br i1 %.not8.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i1 true, ptr @pref.0, align 4
  br label %cliSetPreferences.exit

bb.bt:                                            ; preds = %bb.br
  %i.fe = call i32 @strcasecmp(ptr noundef %i.fc, ptr noundef nonnull @.str.32) #34
  %.not9.i = icmp eq i32 %i.fe, 0
  br i1 %.not9.i, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i1 false, ptr @pref.0, align 4
  br label %cliSetPreferences.exit

bb.bv:                                            ; preds = %bb.bt
  %i.ff = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull @.str.34, ptr noundef %i.fc) ; 0 uses
  br label %cliSetPreferences.exit

bb.bw:                                            ; preds = %bb.bq
  %i.fg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.eq) ; 0 uses
  br label %cliSetPreferences.exit

cliSetPreferences.exit:                           ; preds = %bb.bs, %bb.bu, %bb.bv, %bb.bw
  %i.fh = load i32, ptr %i.b, align 4, !tbaa !9
  call void @hi_sdsfreesplitres(ptr noundef nonnull %.0.i94, i32 noundef %i.fh) #32
  br label %bb.ci

bb.bx:                                            ; preds = %bb.bp
  %i.fi = call i32 @strcasecmp(ptr noundef nonnull %i.eq, ptr noundef nonnull @.str.888) #34
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 512), align 8, !tbaa !288
  %.not75 = icmp eq ptr %i.fk, null
  br i1 %.not75, label %bb.bz, label %bb.dv

end_hunk_0
begin_hunk_1_@clusterManagerMoveSlot:bb.a
  %.not80 = icmp eq i32 %i.w, 0
  br i1 %.not80, label %.critedge90, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 592), align 8, !tbaa !122 ; 2 uses
  %i.y = and i32 %i.x, 64
  %.not.i = icmp samesign ult i32 %3, 128         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ab = trunc i32 %i.x to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = getelementptr i8, ptr %1, i64 8         ; 4 uses
  %.not126.i = icmp eq i32 %i.y, 0
  %.not134.i = icmp eq ptr %4, null               ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !88
  %i.ag = tail call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.af, ptr noundef nonnull @.str.304, i32 noundef %2, i32 noundef %i.q) #32 ; 2 uses
  %.not201.i109 = icmp eq ptr %i.ag, null
  br i1 %.not201.i109, label %clusterManagerMigrateKeysInSlot.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.backedge
  %i.ah = phi ptr [ %i.hc, %.backedge ], [ %i.ag, %bb.h ] ; 12 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !41
  switch i32 %i.ai, label %bb.k [
    i32 6, label %bb.i
    i32 2, label %bb.l
  ]

bb.i:                                             ; preds = %.lr.ph
  br i1 %.not134.i, label %clusterManagerMigrateKeysInSlot.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.al = add i64 %i.ak, 1
  %i.am = call noalias ptr @zmalloc(i64 noundef %i.al) #36 ; 2 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !70
  %i.aq = add i64 %i.ap, 1
  %i.ar = call i64 @redis_strlcpy(ptr noundef %i.am, ptr noundef %i.ao, i64 noundef %i.aq) #32 ; 0 uses
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.at = load i32, ptr %i.aa, align 8, !tbaa !83
  %i.au = load ptr, ptr %4, align 8, !tbaa !29
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.as, i32 noundef %i.at, ptr noundef %i.au)
  br label %clusterManagerMigrateKeysInSlot.exit.sink.split

bb.k:                                             ; preds = %.lr.ph
  call void @__assert_fail(ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.7, i32 noundef 5213, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerMigrateKeysInSlot) #37
  unreachable

bb.l:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 5 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !33 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %clusterManagerMigrateKeysInSlot.exit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = add i64 %i.aw, 1
  %i.az = call noalias ptr @zmalloc(i64 noundef %i.ay) #36
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0110.i = phi ptr [ %i.az, %bb.n ], [ null, %bb.m ] ; 6 uses
  %i.ba = call fastcc ptr @clusterManagerMigrateKeysInReply(ptr noundef nonnull readonly %0, ptr noundef readonly %1, ptr noundef %i.ah, i32 noundef 0, i32 noundef %i.r, ptr noundef %.0110.i) ; 8 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.thread187.i.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load i32, ptr %i.ba, align 8, !tbaa !41
  %i.bd = icmp eq i32 %i.bc, 6
  br i1 %i.bd, label %bb.q, label %bb.au

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42
  %i.bg = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(1) @.str.325) #34
  %i.bh = icmp ne ptr %i.bg, null                 ; 2 uses
  %i.bi = zext i1 %i.bh to i32
  br i1 %i.bh, label %bb.aa, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr null, ptr %i.c, align 8, !tbaa !29
  %i.bj = call fastcc ptr @clusterManagerGetSlotOwner(ptr noundef nonnull readonly %0, i32 noundef %2, ptr noundef %i.c)
  %.not125.i = icmp eq ptr %i.bj, null
  br i1 %.not125.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !29  ; 3 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.bn = load i32, ptr %i.aa, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.bm, i32 noundef %i.bn, ptr noundef nonnull %i.bk)
  call void @zfree(ptr noundef nonnull %i.bk) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br label %.thread158.i

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  br i1 %i.ab, label %bb.w, label %clusterManagerSetSlot.exit.i

bb.w:                                             ; preds = %bb.v
  %i.bo = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.bp = load i32, ptr %i.ad, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 2, ptr noundef nonnull @.str.326, ptr noundef %i.bo, i32 noundef %i.bp)
  %.val.i = load ptr, ptr %i.ae, align 8, !tbaa !115
  %i.bq = load ptr, ptr %0, align 8, !tbaa !88
  %i.br = call ptr (ptr, ptr, ...) @redisCommand(ptr noundef %i.bq, ptr noundef nonnull @.str.320, i32 noundef %2, ptr noundef nonnull @.str.295, ptr noundef %.val.i) #32 ; 4 uses
  %.not24.i.i = icmp eq ptr %i.br, null
  br i1 %.not24.i.i, label %clusterManagerSetSlot.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !41
  %i.bt = icmp eq i32 %i.bs, 6
  br i1 %i.bt, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bu = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.bv = load i32, ptr %i.aa, align 8, !tbaa !83
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.bu, i32 noundef %i.bv, ptr noundef %i.bx)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @freeReplyObject(ptr noundef nonnull %i.br) #32
  br label %clusterManagerSetSlot.exit.i

bb.aa:                                            ; preds = %bb.q
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 2, ptr noundef nonnull @.str.327)
  br i1 %.not126.i, label %bb.ab, label %bb.ar

bb.ab:                                            ; preds = %bb.aa
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 2, ptr noundef nonnull @.str.328)
  %i.by = call ptr @listCreate() #32              ; 6 uses
  %i.bz = load i64, ptr %i.av, align 8, !tbaa !33
  %i.ca = add i64 %i.bz, 2                        ; 2 uses
  %i.cb = shl i64 %i.ca, 3                        ; 2 uses
  %i.cc = call noalias ptr @zcalloc(i64 noundef %i.cb) #36 ; 8 uses
  %i.cd = call noalias ptr @zcalloc(i64 noundef %i.cb) #36 ; 9 uses
  store i64 5, ptr %i.cd, align 8, !tbaa !26
  store <2 x ptr> <ptr @.str.343, ptr @.str.344>, ptr %i.cc, align 8, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 12, ptr %i.ce, align 8, !tbaa !26
  %i.cf = load i64, ptr %i.av, align 8, !tbaa !33 ; 5 uses
  %.not109.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not109.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !38 ; 3 uses
  %xtraiter = and i64 %i.cf, 1
  %i.ci = icmp eq i64 %i.cf, 1
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.cf, -2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i.new
  %.069106.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.de, %bb.ac ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.ac ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.069106.i.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !39 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !42
  %i.cn = shl i64 %.069106.i.i, 32
  %sext.i.i = add i64 %i.cn, 8589934592
  %i.co = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.co
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !70
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.co
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !26
  %i.ct = or disjoint i64 %.069106.i.i, 1         ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !39 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !42
  %i.cy = shl i64 %i.ct, 32
  %sext.i.i.1 = add i64 %i.cy, 8589934592
  %i.cz = ashr exact i64 %sext.i.i.1, 32          ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cz
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !70
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cz
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !26
  %i.de = add nuw nsw i64 %.069106.i.i, 2         ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %bb.ac, !llvm.loop !523

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.069106.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.de, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod154 = trunc i64 %i.cf to i1
  call void @llvm.assume(i1 %lcmp.mod154)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.069106.i.i.epil.init
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !39 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !42
  %i.dj = shl i64 %.069106.i.i.epil.init, 32
  %sext.i.i.epil = add i64 %i.dj, 8589934592
  %i.dk = ashr exact i64 %sext.i.i.epil, 32       ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.dk
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !70
  %i.do = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.dk
  store i64 %i.dn, ptr %i.do, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr null, ptr %i.b, align 8, !tbaa !28
  %i.dp = load ptr, ptr %0, align 8, !tbaa !88
  %i.dq = trunc i64 %i.ca to i32                  ; 2 uses
  %i.dr = call i32 @redisAppendCommandArgv(ptr noundef %i.dp, i32 noundef %i.dq, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd) #32 ; 0 uses
  %i.ds = load ptr, ptr %0, align 8, !tbaa !88
  %i.dt = call i32 @redisGetReply(ptr noundef %i.ds, ptr noundef nonnull %i.a) #32
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !28  ; 8 uses
  %i.dw = load ptr, ptr %1, align 8, !tbaa !88
  %i.dx = call i32 @redisAppendCommandArgv(ptr noundef %i.dw, i32 noundef %i.dq, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.cd) #32 ; 0 uses
  %i.dy = load ptr, ptr %1, align 8, !tbaa !88
  %i.dz = call i32 @redisGetReply(ptr noundef %i.dy, ptr noundef nonnull %i.b) #32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ae, label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !28  ; 7 uses
  %i.ec = load i32, ptr %i.dv, align 8, !tbaa !41
  %.not.i.i = icmp eq i32 %i.ec, 6
  br i1 %.not.i.i, label %.thread.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = load i32, ptr %i.eb, align 8, !tbaa !41
  %i.ee = icmp eq i32 %i.ed, 6
  br i1 %i.ee, label %.thread76.i.i, label %bb.ag

.thread.i.i:                                      ; preds = %bb.ae
  %i.ef = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.eg = load i32, ptr %i.aa, align 8, !tbaa !83
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.ef, i32 noundef %i.eg, ptr noundef %i.ei)
  %.pr.i.i = load i32, ptr %i.eb, align 8, !tbaa !41
  %i.ej = icmp eq i32 %.pr.i.i, 6
  br i1 %i.ej, label %.thread76.i.i, label %.critedge203.i

.thread76.i.i:                                    ; preds = %.thread.i.i, %bb.af
  %i.ek = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.el = load i32, ptr %i.ad, align 8, !tbaa !83
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !42
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.182, ptr noundef %i.ek, i32 noundef %i.el, ptr noundef %i.en)
  br label %.critedge203.i

bb.ag:                                            ; preds = %bb.af
  %i.eo = load i64, ptr %i.av, align 8, !tbaa !33 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !33
  %i.er = icmp eq i64 %i.eo, %i.eq
  br i1 %i.er, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.es = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.et = load i64, ptr %i.es, align 8, !tbaa !33
  %i.eu = icmp eq i64 %i.eo, %i.et
  br i1 %i.eu, label %.preheader.i.i, label %bb.ai

.preheader.i.i:                                   ; preds = %bb.ah
  %.not110.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not110.i.i, label %.loopexit.i.i, label %.lr.ph108.i.i

.lr.ph108.i.i:                                    ; preds = %.preheader.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @__assert_fail(ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.7, i32 noundef 5081, ptr noundef nonnull @__PRETTY_FUNCTION__.clusterManagerCompareKeysValues) #37
  unreachable

bb.aj:                                            ; preds = %bb.an, %.lr.ph108.i.i
  %i.ey = phi i64 [ %i.eo, %.lr.ph108.i.i ], [ %i.fu, %bb.an ] ; 3 uses
  %.170107.i.i = phi i64 [ 0, %.lr.ph108.i.i ], [ %i.fv, %bb.an ] ; 4 uses
  %i.ez = load ptr, ptr %i.ev, align 8, !tbaa !38
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.170107.i.i
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !39
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !42
  %i.fe = load ptr, ptr %i.ew, align 8, !tbaa !38
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %.170107.i.i
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !39
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !42 ; 2 uses
  %i.fj = load ptr, ptr %i.ex, align 8, !tbaa !38
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.170107.i.i
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !39
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !42 ; 2 uses
  %i.fo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fi, ptr noundef nonnull dereferenceable(41) @.str.342) #34
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fn, ptr noundef nonnull dereferenceable(41) @.str.342) #34
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fi, ptr noundef nonnull dereferenceable(1) %i.fn) #34
  %.not75.i.i = icmp eq i32 %i.fs, 0
  br i1 %.not75.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ft = call ptr @listAddNodeTail(ptr noundef %i.by, ptr noundef %i.fd) #32 ; 0 uses
  %.pre.i.i = load i64, ptr %i.av, align 8, !tbaa !33
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.fu = phi i64 [ %i.ey, %bb.al ], [ %.pre.i.i, %bb.am ], [ %i.ey, %bb.aj ], [ %i.ey, %bb.ak ] ; 2 uses
  %i.fv = add nuw i64 %.170107.i.i, 1             ; 2 uses
  %i.fw = icmp ult i64 %i.fv, %i.fu
  br i1 %i.fw, label %bb.aj, label %.loopexit.i.i, !llvm.loop !524

bb.ao:                                            ; preds = %bb.ad
  %.not73.i.i = icmp eq ptr %i.dv, null
  br i1 %.not73.i.i, label %.critedge.i, label %.critedge.sink.split.i

.loopexit.i.i:                                    ; preds = %bb.an, %.preheader.i.i
  call void @freeReplyObject(ptr noundef nonnull %i.dv) #32
  call void @freeReplyObject(ptr noundef nonnull %i.eb) #32
  call void @zfree(ptr noundef nonnull %i.cc) #32
  call void @zfree(ptr noundef nonnull %i.cd) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !90 ; 2 uses
  %.not128.i = icmp eq i64 %i.fy, 0
  br i1 %.not128.i, label %bb.aq, label %bb.ap

.critedge203.i:                                   ; preds = %.thread76.i.i, %.thread.i.i
  call void @freeReplyObject(ptr noundef nonnull %i.dv) #32
  br label %.critedge.sink.split.i

.critedge.sink.split.i:                           ; preds = %.critedge203.i, %bb.ao
  %.sink227.i = phi ptr [ %i.eb, %.critedge203.i ], [ %i.dv, %bb.ao ]
  call void @freeReplyObject(ptr noundef nonnull %.sink227.i) #32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.sink.split.i, %bb.ao, %._crit_edge.i.i
  call void @zfree(ptr noundef nonnull %i.cc) #32
  call void @zfree(ptr noundef nonnull %i.cd) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.329)
  call void @listRelease(ptr noundef %i.by) #32
  br label %.thread179.i

bb.ap:                                            ; preds = %.loopexit.i.i
  %i.fz = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.ga = load i32, ptr %i.aa, align 8, !tbaa !83
  %i.gb = load ptr, ptr %i.ac, align 8, !tbaa !80
  %i.gc = load i32, ptr %i.ad, align 8, !tbaa !83
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.330, i64 noundef %i.fy, ptr noundef %i.fz, i32 noundef %i.ga, ptr noundef %i.gb, i32 noundef %i.gc)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @listRewind(ptr noundef nonnull %i.by, ptr noundef nonnull %5) #32
  %i.gd = call ptr @listNext(ptr noundef nonnull %5) #32 ; 2 uses
  %.not129207.i = icmp eq ptr %i.gd, null
  br i1 %.not129207.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap, %.lr.ph.i
  %i.ge = phi ptr [ %i.gh, %.lr.ph.i ], [ %i.gd, %bb.ap ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !102
  call void (i32, ptr, ...) @clusterManagerLog(i32 noundef 3, ptr noundef nonnull @.str.331, ptr noundef %i.gg)
  %i.gh = call ptr @listNext(ptr noundef nonnull %5) #32 ; 2 uses
  %.not129.i = icmp eq ptr %i.gh, null
end_hunk_1
begin_hunk_2_@cliFormatReplyRaw:bb.a
  switch i32 %i.b, label %bb.aj [
    i32 4, label %.loopexit
    i32 6, label %bb.b
    i32 5, label %bb.c
    i32 1, label %bb.c
    i32 14, label %bb.c
    i32 8, label %bb.h
    i32 3, label %bb.i
    i32 7, label %bb.j
    i32 10, label %bb.k
    i32 2, label %bb.k
    i32 12, label %bb.k
    i32 9, label %.preheader
  ]

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !33
  %.not67 = icmp eq i64 %i.d, 0
  br i1 %.not67, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !70
  %i.j = tail call ptr @hi_sdscatlen(ptr noundef %i.a, ptr noundef %i.g, i64 noundef %i.i) #32
  %i.k = tail call ptr @hi_sdscatlen(ptr noundef %i.j, ptr noundef nonnull @str.16, i64 noundef 1) #32
  br label %.loopexit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.l = icmp eq i32 %i.b, 5
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 520), align 8
  %i.n = icmp ne i32 %i.m, 0
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 3 uses
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %strncmp = tail call i32 @strncmp(ptr nonnull dereferenceable(1) %i.p, ptr nonnull dereferenceable(13) @.str.467, i64 12)
  %cmp = icmp eq i32 %strncmp, 0
  br i1 %cmp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 532), align 4, !tbaa !538
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 520), align 8, !tbaa !289
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @config, i64 528), align 8, !tbaa !397
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @config, i64 360), align 8, !tbaa !269
  tail call fastcc void @cliRefreshPrompt()
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !70
  %i.s = tail call ptr @sdsCatColorizedLdbReply(ptr noundef %i.a, ptr noundef nonnull %i.p, i64 noundef %i.r)
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !70
  %i.v = tail call ptr @hi_sdscatlen(ptr noundef %i.a, ptr noundef %i.p, i64 noundef %i.u) #32
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !176
  %.not55 = icmp eq i64 %i.x, 0
  %i.y = select i1 %.not55, ptr @.str.469, ptr @.str.468
  %i.z = tail call ptr @hi_sdscat(ptr noundef %i.a, ptr noundef nonnull %i.y) #32
  br label %.loopexit

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !176
  %i.ac = tail call ptr (ptr, ptr, ...) @hi_sdscatprintf(ptr noundef %i.a, ptr noundef nonnull @.str.171, i64 noundef %i.ab) #32
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42
  %i.af = tail call ptr (ptr, ptr, ...) @hi_sdscatprintf(ptr noundef %i.a, ptr noundef nonnull @.str.260, ptr noundef %i.ae) #32
  br label %.loopexit

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !33
  %.not68 = icmp eq i64 %i.ah, 0
  br i1 %.not68, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !38
  %.pre72 = load ptr, ptr %.pre, align 8, !tbaa !39
  %i.aj = tail call fastcc ptr @cliFormatReplyRaw(ptr noundef %.pre72) ; 7 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !73
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = and i32 %i.am, 7
  switch i32 %i.an, label %hi_sdslen.exit.peel [
    i32 0, label %bb.q
    i32 1, label %bb.p
    i32 2, label %bb.o
    i32 3, label %bb.n
    i32 4, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -17
  %i.ap = load i64, ptr %i.ao, align 1, !tbaa !26
  br label %hi_sdslen.exit.peel

bb.n:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds i8, ptr %i.aj, i64 -9
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !9
  %i.as = zext i32 %i.ar to i64
  br label %hi_sdslen.exit.peel

bb.o:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds i8, ptr %i.aj, i64 -5
  %i.au = load i16, ptr %i.at, align 1, !tbaa !74
  %i.av = zext i16 %i.au to i64
  br label %hi_sdslen.exit.peel

bb.p:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds i8, ptr %i.aj, i64 -3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !73
  %i.ay = zext i8 %i.ax to i64
  br label %hi_sdslen.exit.peel

bb.q:                                             ; preds = %bb.l
  %i.az = lshr i32 %i.am, 3
  %i.ba = zext nneg i32 %i.az to i64
  br label %hi_sdslen.exit.peel

hi_sdslen.exit.peel:                              ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.0.i.peel = phi i64 [ %i.ap, %bb.m ], [ %i.ba, %bb.q ], [ %i.ay, %bb.p ], [ %i.av, %bb.o ], [ %i.as, %bb.n ], [ 0, %bb.l ]
  %i.bb = tail call ptr @hi_sdscatlen(ptr noundef %i.a, ptr noundef nonnull %i.aj, i64 noundef %.0.i.peel) #32 ; 2 uses
  tail call void @hi_sdsfree(ptr noundef nonnull %i.aj) #32
  %i.bc = load i64, ptr %i.ag, align 8, !tbaa !33
  %i.bd = icmp ugt i64 %i.bc, 1
  br i1 %i.bd, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %hi_sdslen.exit.peel, %hi_sdslen.exit
  %.064 = phi i64 [ %i.cc, %hi_sdslen.exit ], [ 1, %hi_sdslen.exit.peel ] ; 2 uses
  %.05163 = phi ptr [ %i.cb, %hi_sdslen.exit ], [ %i.bb, %hi_sdslen.exit.peel ]
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 368), align 8, !tbaa !259
  %i.bf = tail call ptr @hi_sdscat(ptr noundef %.05163, ptr noundef %i.be) #32
  %i.bg = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.064
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39
  %i.bj = tail call fastcc ptr @cliFormatReplyRaw(ptr noundef %i.bi) ; 7 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !73
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = and i32 %i.bm, 7
  switch i32 %i.bn, label %hi_sdslen.exit [
    i32 0, label %bb.r
    i32 1, label %bb.s
    i32 2, label %bb.t
    i32 3, label %bb.u
    i32 4, label %bb.v
  ]

bb.r:                                             ; preds = %.peel.next
  %i.bo = lshr i32 %i.bm, 3
  %i.bp = zext nneg i32 %i.bo to i64
  br label %hi_sdslen.exit

bb.s:                                             ; preds = %.peel.next
  %i.bq = getelementptr inbounds i8, ptr %i.bj, i64 -3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !73
  %i.bs = zext i8 %i.br to i64
  br label %hi_sdslen.exit

bb.t:                                             ; preds = %.peel.next
  %i.bt = getelementptr inbounds i8, ptr %i.bj, i64 -5
  %i.bu = load i16, ptr %i.bt, align 1, !tbaa !74
  %i.bv = zext i16 %i.bu to i64
  br label %hi_sdslen.exit

bb.u:                                             ; preds = %.peel.next
  %i.bw = getelementptr inbounds i8, ptr %i.bj, i64 -9
  %i.bx = load i32, ptr %i.bw, align 1, !tbaa !9
  %i.by = zext i32 %i.bx to i64
  br label %hi_sdslen.exit

bb.v:                                             ; preds = %.peel.next
  %i.bz = getelementptr inbounds i8, ptr %i.bj, i64 -17
  %i.ca = load i64, ptr %i.bz, align 1, !tbaa !26
  br label %hi_sdslen.exit

hi_sdslen.exit:                                   ; preds = %.peel.next, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.0.i = phi i64 [ %i.ca, %bb.v ], [ %i.bp, %bb.r ], [ %i.bs, %bb.s ], [ %i.bv, %bb.t ], [ %i.by, %bb.u ], [ 0, %.peel.next ]
  %i.cb = tail call ptr @hi_sdscatlen(ptr noundef %i.bf, ptr noundef nonnull %i.bj, i64 noundef %.0.i) #32 ; 2 uses
  tail call void @hi_sdsfree(ptr noundef nonnull %i.bj) #32
  %i.cc = add nuw nsw i64 %.064, 1                ; 2 uses
  %i.cd = load i64, ptr %i.ag, align 8, !tbaa !33
  %i.ce = icmp ult i64 %i.cc, %i.cd
  br i1 %i.ce, label %.peel.next, label %.loopexit, !llvm.loop !539

bb.w:                                             ; preds = %.lr.ph, %hi_sdslen.exit59
  %.162 = phi i64 [ 0, %.lr.ph ], [ %i.eb, %hi_sdslen.exit59 ] ; 4 uses
  %.261 = phi ptr [ %i.a, %.lr.ph ], [ %i.ea, %hi_sdslen.exit59 ] ; 2 uses
  %.not = icmp eq i64 %.162, 0
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 368), align 8, !tbaa !259
  %i.cg = tail call ptr @hi_sdscat(ptr noundef %.261, ptr noundef %i.cf) #32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.3 = phi ptr [ %i.cg, %bb.x ], [ %.261, %bb.w ]
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.162
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !39
  %i.ck = tail call fastcc ptr @cliFormatReplyRaw(ptr noundef %i.cj) ; 7 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !73
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = and i32 %i.cn, 7
  switch i32 %i.co, label %hi_sdslen.exit57 [
    i32 0, label %bb.z
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 4, label %bb.ad
  ]

bb.z:                                             ; preds = %bb.y
  %i.cp = lshr i32 %i.cn, 3
  %i.cq = zext nneg i32 %i.cp to i64
  br label %hi_sdslen.exit57

bb.aa:                                            ; preds = %bb.y
  %i.cr = getelementptr inbounds i8, ptr %i.ck, i64 -3
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !73
  %i.ct = zext i8 %i.cs to i64
  br label %hi_sdslen.exit57

bb.ab:                                            ; preds = %bb.y
  %i.cu = getelementptr inbounds i8, ptr %i.ck, i64 -5
  %i.cv = load i16, ptr %i.cu, align 1, !tbaa !74
  %i.cw = zext i16 %i.cv to i64
  br label %hi_sdslen.exit57

bb.ac:                                            ; preds = %bb.y
  %i.cx = getelementptr inbounds i8, ptr %i.ck, i64 -9
  %i.cy = load i32, ptr %i.cx, align 1, !tbaa !9
  %i.cz = zext i32 %i.cy to i64
  br label %hi_sdslen.exit57

bb.ad:                                            ; preds = %bb.y
  %i.da = getelementptr inbounds i8, ptr %i.ck, i64 -17
  %i.db = load i64, ptr %i.da, align 1, !tbaa !26
  br label %hi_sdslen.exit57

hi_sdslen.exit57:                                 ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.0.i56 = phi i64 [ %i.db, %bb.ad ], [ %i.cq, %bb.z ], [ %i.ct, %bb.aa ], [ %i.cw, %bb.ab ], [ %i.cz, %bb.ac ], [ 0, %bb.y ]
  %i.dc = tail call ptr @hi_sdscatlen(ptr noundef %.3, ptr noundef nonnull %i.ck, i64 noundef %.0.i56) #32
  tail call void @hi_sdsfree(ptr noundef nonnull %i.ck) #32
  %i.dd = tail call ptr @hi_sdscatlen(ptr noundef %i.dc, ptr noundef nonnull @.str.150, i64 noundef 1) #32
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.162
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !39
  %i.di = tail call fastcc ptr @cliFormatReplyRaw(ptr noundef %i.dh) ; 7 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !73
  %i.dl = zext i8 %i.dk to i32                    ; 2 uses
  %i.dm = and i32 %i.dl, 7
  switch i32 %i.dm, label %hi_sdslen.exit59 [
    i32 0, label %bb.ae
    i32 1, label %bb.af
    i32 2, label %bb.ag
    i32 3, label %bb.ah
    i32 4, label %bb.ai
  ]

bb.ae:                                            ; preds = %hi_sdslen.exit57
  %i.dn = lshr i32 %i.dl, 3
  %i.do = zext nneg i32 %i.dn to i64
  br label %hi_sdslen.exit59

bb.af:                                            ; preds = %hi_sdslen.exit57
  %i.dp = getelementptr inbounds i8, ptr %i.di, i64 -3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !73
  %i.dr = zext i8 %i.dq to i64
  br label %hi_sdslen.exit59

bb.ag:                                            ; preds = %hi_sdslen.exit57
  %i.ds = getelementptr inbounds i8, ptr %i.di, i64 -5
  %i.dt = load i16, ptr %i.ds, align 1, !tbaa !74
  %i.du = zext i16 %i.dt to i64
  br label %hi_sdslen.exit59

bb.ah:                                            ; preds = %hi_sdslen.exit57
  %i.dv = getelementptr inbounds i8, ptr %i.di, i64 -9
  %i.dw = load i32, ptr %i.dv, align 1, !tbaa !9
  %i.dx = zext i32 %i.dw to i64
  br label %hi_sdslen.exit59

bb.ai:                                            ; preds = %hi_sdslen.exit57
  %i.dy = getelementptr inbounds i8, ptr %i.di, i64 -17
  %i.dz = load i64, ptr %i.dy, align 1, !tbaa !26
  br label %hi_sdslen.exit59

hi_sdslen.exit59:                                 ; preds = %hi_sdslen.exit57, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.0.i58 = phi i64 [ %i.dz, %bb.ai ], [ %i.do, %bb.ae ], [ %i.dr, %bb.af ], [ %i.du, %bb.ag ], [ %i.dx, %bb.ah ], [ 0, %hi_sdslen.exit57 ]
  %i.ea = tail call ptr @hi_sdscatlen(ptr noundef %i.dd, ptr noundef nonnull %i.di, i64 noundef %.0.i58) #32 ; 2 uses
  tail call void @hi_sdsfree(ptr noundef nonnull %i.di) #32
  %i.eb = add i64 %.162, 2                        ; 2 uses
  %i.ec = load i64, ptr %i.c, align 8, !tbaa !33
  %i.ed = icmp ult i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.w, label %.loopexit, !llvm.loop !540

bb.aj:                                            ; preds = %bb.a
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ef = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.470, i32 noundef %i.b) #39 ; 0 uses
  tail call void @exit(i32 noundef 1) #40
  unreachable

.loopexit:                                        ; preds = %hi_sdslen.exit59, %hi_sdslen.exit, %hi_sdslen.exit.peel, %.preheader, %bb.k, %bb.g, %bb.f, %bb.e, %bb.j, %bb.i, %bb.h, %bb.b, %bb.a
  %.4 = phi ptr [ %i.a, %bb.a ], [ %i.k, %bb.b ], [ %i.a, %bb.e ], [ %i.s, %bb.f ], [ %i.v, %bb.g ], [ %i.z, %bb.h ], [ %i.ac, %bb.i ], [ %i.af, %bb.j ], [ %i.cb, %hi_sdslen.exit ], [ %i.a, %bb.k ], [ %i.a, %.preheader ], [ %i.bb, %hi_sdslen.exit.peel ], [ %i.ea, %hi_sdslen.exit59 ]
  ret ptr %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cliRefreshPrompt() unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 520), align 8, !tbaa !289
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @hi_sdsempty() #32         ; 2 uses
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @config, i64 48), align 8, !tbaa !266 ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %i.c, ptr noundef nonnull @.str.471, ptr noundef nonnull %i.d) #32
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.f = load ptr, ptr @config, align 8, !tbaa !237 ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 8), align 8, !tbaa !238
  %i.h = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.f, i32 noundef 58) #34
  %.not.i = icmp eq ptr %i.h, null
  %i.i = select i1 %.not.i, ptr @.str.477, ptr @.str.476
  %i.j = call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 256, ptr noundef nonnull %i.i, ptr noundef nonnull %i.f, i32 noundef %i.g) #32 ; 0 uses
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #34
  %i.l = call ptr @hi_sdscatlen(ptr noundef %i.c, ptr noundef nonnull %i.a, i64 noundef %i.k) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi ptr [ %i.e, %bb.c ], [ %i.l, %bb.d ]  ; 2 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 144), align 8, !tbaa !383 ; 2 uses
  %.not11 = icmp eq i32 %i.m, 0
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %.0, ptr noundef nonnull @.str.472, i32 noundef %i.m) #32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %i.n, %bb.f ], [ %.0, %bb.e ]   ; 2 uses
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 704), align 8, !tbaa !256
  %.not12 = icmp eq i32 %i.o, 0
  br i1 %.not12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call ptr @hi_sdscatlen(ptr noundef %.1, ptr noundef nonnull @.str.473, i64 noundef 4) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi ptr [ %i.p, %bb.h ], [ %.1, %bb.g ]   ; 2 uses
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @config, i64 160), align 8, !tbaa !381
  %.not13 = icmp eq i32 %i.q, 0
  br i1 %.not13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = call ptr (ptr, ptr, ...) @hi_sdscatfmt(ptr noundef %.2, ptr noundef nonnull @.str.474) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3 = phi ptr [ %i.r, %bb.j ], [ %.2, %bb.i ]
  %i.s = call ptr @hi_sdscatlen(ptr noundef %.3, ptr noundef nonnull @.str.475, i64 noundef 2) #32 ; 2 uses
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) getelementptr inbounds nuw (i8, ptr @config, i64 384), i64 noundef 128, ptr noundef nonnull @.str.260, ptr noundef %i.s) #32 ; 0 uses
  call void @hi_sdsfree(ptr noundef %i.s) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
end_hunk_2
