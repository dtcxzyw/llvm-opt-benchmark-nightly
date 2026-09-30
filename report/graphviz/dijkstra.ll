Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/dijkstra?download=true
inline.NumInlined: 64
inline.NumDeleted: 25
begin_hunk_0_@main:bb.a

bb.c:                                             ; preds = %bb.b
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.e = load i32, ptr @optopt, align 4, !tbaa !44 ; 2 uses
  switch i32 %i.e, label %bb.g [
    i32 63, label %bb.f
    i32 0, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %puts.i.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 0) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.g = load ptr, ptr @CmdName, align 8, !tbaa !43
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.2, ptr noundef %i.g, i32 noundef %i.e) #20 ; 0 uses
  %puts.i28.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 261) #20 ; 0 uses
  tail call void @abort() #21
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %doPath.sink.i = phi ptr [ @doPath, %bb.d ], [ @doDirected, %bb.c ], [ @setall, %bb.b ]
  store i1 true, ptr %doPath.sink.i, align 1
  br label %bb.b, !llvm.loop !30

bb.j:                                             ; preds = %bb.b
  %i.k = load i32, ptr @optind, align 4, !tbaa !44 ; 4 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %i.l ; 2 uses
  %i.n = icmp eq i32 %0, %i.k
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.p = load ptr, ptr @CmdName, align 8, !tbaa !43
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.5, ptr noundef %i.p) #20 ; 0 uses
  %puts.i30.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.r = sub nsw i32 %0, %i.k                     ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = lshr i64 %i.s, 1
  %i.u = add nuw i64 %i.t, 2                      ; 5 uses
  %mul.ov.i.i = icmp slt i32 %i.r, 0
  br i1 %mul.ov.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.9, i64 noundef %i.u, i64 noundef 8) #20 ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.x = tail call noalias ptr @calloc(i64 noundef %i.u, i64 noundef 8) #22 ; 6 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.aa = shl nuw nsw i64 %i.u, 3
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.10, i64 noundef %i.aa) #20 ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

bb.p:                                             ; preds = %bb.n
  store ptr %i.x, ptr @Files, align 8, !tbaa !48
  %i.ac = tail call noalias ptr @calloc(i64 noundef %i.u, i64 noundef 8) #22 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.q, label %.lr.ph.preheader.i

bb.q:                                             ; preds = %bb.p
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.af = shl nuw nsw i64 %i.u, 3
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.10, i64 noundef %i.af) #20 ; 0 uses
  tail call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.p
  store ptr %i.ac, ptr @Nodes, align 8, !tbaa !48
  %i.ah = xor i32 %i.k, -1
  %i.ai = add i32 %0, %i.ah
  %i.aj = lshr i32 %i.ai, 1                       ; 2 uses
  %i.ak = add nuw i32 %i.aj, 1
  %wide.trip.count.i = zext i32 %i.ak to i64      ; 5 uses
  %min.iters.check = icmp eq i32 %i.aj, 0
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 4294967294 ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %.idx = shl nuw i64 %index, 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %wide.vec = load <4 x ptr>, ptr %i.am, align 8, !tbaa !43 ; 2 uses
  %strided.vec = shufflevector <4 x ptr> %wide.vec, <4 x ptr> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec141 = shufflevector <4 x ptr> %wide.vec, <4 x ptr> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index
  store <2 x ptr> %strided.vec, ptr %i.an, align 8, !tbaa !43
  %i.ao = icmp eq <2 x ptr> %strided.vec141, splat (ptr null)
  %i.ap = select <2 x i1> %i.ao, <2 x ptr> <ptr @.str.6, ptr @.str.6>, <2 x ptr> %strided.vec141
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x ptr> %i.ap, ptr %i.aq, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %init.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv37.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.al, %middle.block ]
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %.lr.ph.i ], [ %indvars.iv37.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv37.i ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  store ptr %i.at, ptr %i.au, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43 ; 2 uses
  %.not27.i = icmp eq ptr %i.aw, null
  %spec.select.i = select i1 %.not27.i, ptr @.str.6, ptr %i.aw
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  store ptr %spec.select.i, ptr %i.ax, align 8, !tbaa !43
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 2
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %init.exit, label %.lr.ph.i, !llvm.loop !32

init.exit:                                        ; preds = %.lr.ph.i, %middle.block
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %wide.trip.count.i
  store ptr null, ptr %i.ay, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %wide.trip.count.i
  store ptr null, ptr %i.az, align 8, !tbaa !43
  %i.ba = call ptr @newIngraph(ptr noundef nonnull %4, ptr noundef nonnull %i.x) #18 ; 0 uses
  %i.bb = load ptr, ptr @Dtoset, align 8, !tbaa !51
  %i.bc = call ptr @dtopen(ptr noundef nonnull @MyDisc, ptr noundef %i.bb) #18 ; 24 uses
  %i.bd = call ptr @nextGraph(ptr noundef nonnull %4) #18 ; 2 uses
  %.not85 = icmp eq ptr %i.bd, null
  br i1 %.not85, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %init.exit
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 31 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 31 ; 19 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 18 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %bb.cp
  %i.bk = phi ptr [ %i.bd, %.lr.ph ], [ %i.kw, %bb.cp ] ; 20 uses
  %.087 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.cp ]
  %.01486 = phi i64 [ 0, %.lr.ph ], [ %i.kv, %bb.cp ] ; 3 uses
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.bm = call ptr %i.bl(ptr noundef nonnull %i.bc, ptr noundef null, i32 noundef 64) #18 ; 0 uses
  %i.bn = load ptr, ptr @Nodes, align 8, !tbaa !48
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.01486
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bq = call ptr @agnode(ptr noundef nonnull %i.bk, ptr noundef %i.bp, i32 noundef 0) #18 ; 3 uses
  %.not17 = icmp eq ptr %i.bq, null
  br i1 %.not17, label %bb.co, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = call ptr @agattr_text(ptr noundef nonnull %i.bk, i32 noundef 2, ptr noundef nonnull @.str.12, ptr noundef null) #18
  store ptr %i.br, ptr @len_sym, align 8, !tbaa !58
  call void @aginit(ptr noundef nonnull %i.bk, i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef 40, i32 noundef 1) #18
  %i.bs = getelementptr i8, ptr %i.bq, i64 16
  %.val.i = load ptr, ptr %i.bs, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  store double 1.000000e+00, ptr %i.bt, align 8, !tbaa !28
  %i.bu = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.bv = call ptr %i.bu(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bq, i32 noundef 1) #18, !inline_history !33 ; 0 uses
  %.b.i = load i1, ptr @doDirected, align 1
  %i.bw = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.bx = call ptr %i.bw(ptr noundef nonnull %i.bc, ptr noundef null, i32 noundef 128) #18, !inline_history !33 ; 4 uses
  %i.by = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.bz = call ptr %i.by(ptr noundef nonnull %i.bc, ptr noundef %i.bx, i32 noundef 2) #18, !inline_history !33 ; 0 uses
  %.not3468.i = icmp eq ptr %i.bx, null           ; 2 uses
  br i1 %.b.i, label %.preheader.i, label %.preheader57.i

.preheader57.i:                                   ; preds = %bb.s
  br i1 %.not3468.i, label %.loopexit55.i, label %.lr.ph63.i

.preheader.i:                                     ; preds = %bb.s
  br i1 %.not3468.i, label %.loopexit55.i, label %.lr.ph69.i

.loopexit.i:                                      ; preds = %update.exit.i, %.lr.ph69.i
  %i.ca = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.cb = call ptr %i.ca(ptr noundef nonnull %i.bc, ptr noundef null, i32 noundef 128) #18, !inline_history !34 ; 3 uses
  %i.cc = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.cd = call ptr %i.cc(ptr noundef nonnull %i.bc, ptr noundef %i.cb, i32 noundef 2) #18, !inline_history !34 ; 0 uses
  %.not34.i = icmp eq ptr %i.cb, null
  br i1 %.not34.i, label %.loopexit55.i, label %.lr.ph69.i, !llvm.loop !35

.lr.ph69.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %i.ce = phi ptr [ %i.cb, %.loopexit.i ], [ %i.bx, %.preheader.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i8 1, ptr %i.ch, align 8, !tbaa !59
  %i.ci = call ptr @agfstout(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.ce) #18 ; 2 uses
  %.not3564.i = icmp eq ptr %i.ci, null
  br i1 %.not3564.i, label %.loopexit.i, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph69.i, %update.exit.i
  %.065.i = phi ptr [ %i.di, %update.exit.i ], [ %i.ci, %.lr.ph69.i ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.065.i, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !61 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !23
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !59, !range !62, !noundef !63
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %update.exit.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph67.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cq = load ptr, ptr @len_sym, align 8, !tbaa !58 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i, label %getlength.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = call ptr @agxget(ptr noundef nonnull %.065.i, ptr noundef nonnull %i.cq) #18 ; 3 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !29
  %.not7.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not7.i.i, label %getlength.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = call double @strtod(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.b) #18 ; 2 uses
  %i.cu = fcmp olt double %i.ct, 0.000000e+00
  %i.cv = load ptr, ptr %i.b, align 8
  %i.cw = icmp eq ptr %i.cv, %i.cr
  %or.cond.i.i = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %or.cond.i.i, label %bb.w, label %getlength.exit.i

bb.w:                                             ; preds = %bb.v
  br label %getlength.exit.i

getlength.exit.i:                                 ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.0.i.i = phi double [ 1.000000e+00, %bb.w ], [ %i.ct, %bb.v ], [ 1.000000e+00, %bb.u ], [ 1.000000e+00, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.val26.i.i = load ptr, ptr %i.cf, align 8, !tbaa !23
  %i.cx = getelementptr i8, ptr %.val26.i.i, i64 16
  %.val26.val.i.i = load double, ptr %i.cx, align 8, !tbaa !28
  %i.cy = fadd double %.0.i.i, %.val26.val.i.i    ; 3 uses
  %.val25.i.i = load ptr, ptr %i.cl, align 8, !tbaa !23 ; 2 uses
  %i.cz = getelementptr i8, ptr %.val25.i.i, i64 16 ; 2 uses
  %.val25.val.i.i = load double, ptr %i.cz, align 8, !tbaa !28 ; 2 uses
  %i.da = call noundef i1 @llvm.is.fpclass.f64(double %.val25.val.i.i, /* (pzero) */ i32 64)
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %getlength.exit.i
  store double %i.cy, ptr %i.cz, align 8, !tbaa !28
  %.b23.i.i = load i1, ptr @doPath, align 1
  br i1 %.b23.i.i, label %.sink.split.sink.split.i.i, label %.sink.split.i.i

bb.y:                                             ; preds = %getlength.exit.i
  %i.db = fcmp olt double %i.cy, %.val25.val.i.i
  br i1 %i.db, label %bb.z, label %update.exit.i

bb.z:                                             ; preds = %bb.y
  %i.dc = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.dd = call ptr %i.dc(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ck, i32 noundef 2) #18, !inline_history !36 ; 0 uses
  %.val.i.i = load ptr, ptr %i.cl, align 8, !tbaa !23 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  store double %i.cy, ptr %i.de, align 8, !tbaa !28
  %.b.i.i = load i1, ptr @doPath, align 1
  br i1 %.b.i.i, label %.sink.split.sink.split.i.i, label %.sink.split.i.i

.sink.split.sink.split.i.i:                       ; preds = %bb.z, %bb.x
  %.val.sink.i.i = phi ptr [ %.val25.i.i, %bb.x ], [ %.val.i.i, %bb.z ]
  %i.df = getelementptr inbounds nuw i8, ptr %.val.sink.i.i, i64 24
  store ptr %i.ce, ptr %i.df, align 8, !tbaa !64
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.sink.split.sink.split.i.i, %bb.z, %bb.x
  %i.dg = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.dh = call ptr %i.dg(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ck, i32 noundef 1) #18, !inline_history !36 ; 0 uses
  br label %update.exit.i

update.exit.i:                                    ; preds = %.sink.split.i.i, %bb.y, %.lr.ph67.i
  %i.di = call ptr @agnxtout(ptr noundef nonnull %i.bk, ptr noundef nonnull %.065.i) #18 ; 2 uses
  %.not35.i = icmp eq ptr %i.di, null
  br i1 %.not35.i, label %.loopexit.i, label %.lr.ph67.i, !llvm.loop !37

.loopexit56.i:                                    ; preds = %update.exit51.i, %.lr.ph63.i
  %i.dj = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.dk = call ptr %i.dj(ptr noundef nonnull %i.bc, ptr noundef null, i32 noundef 128) #18, !inline_history !34 ; 3 uses
  %i.dl = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.dm = call ptr %i.dl(ptr noundef nonnull %i.bc, ptr noundef %i.dk, i32 noundef 2) #18, !inline_history !34 ; 0 uses
  %.not.i = icmp eq ptr %i.dk, null
  br i1 %.not.i, label %.loopexit55.i, label %.lr.ph63.i, !llvm.loop !38

.lr.ph63.i:                                       ; preds = %.preheader57.i, %.loopexit56.i
  %i.dn = phi ptr [ %i.dk, %.loopexit56.i ], [ %i.bx, %.preheader57.i ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !23
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store i8 1, ptr %i.dq, align 8, !tbaa !59
  %i.dr = call ptr @agfstedge(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.dn) #18 ; 2 uses
  %.not3359.i = icmp eq ptr %i.dr, null
  br i1 %.not3359.i, label %.loopexit56.i, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %.lr.ph63.i, %update.exit51.i
  %.160.i = phi ptr [ %i.er, %update.exit51.i ], [ %i.dr, %.lr.ph63.i ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.160.i, i64 56
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !61 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !23
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !59, !range !62, !noundef !63
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %update.exit51.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.dz = load ptr, ptr @len_sym, align 8, !tbaa !58 ; 2 uses
  %.not.i36.i = icmp eq ptr %i.dz, null
  br i1 %.not.i36.i, label %getlength.exit40.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = call ptr @agxget(ptr noundef nonnull %.160.i, ptr noundef nonnull %i.dz) #18 ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !29
  %.not7.i37.i = icmp eq i8 %i.eb, 0
  br i1 %.not7.i37.i, label %getlength.exit40.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = call double @strtod(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.ed = fcmp olt double %i.ec, 0.000000e+00
  %i.ee = load ptr, ptr %i.a, align 8
  %i.ef = icmp eq ptr %i.ee, %i.ea
  %or.cond.i38.i = select i1 %i.ed, i1 true, i1 %i.ef
  br i1 %or.cond.i38.i, label %bb.ad, label %getlength.exit40.i

bb.ad:                                            ; preds = %bb.ac
  br label %getlength.exit40.i

getlength.exit40.i:                               ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.0.i39.i = phi double [ 1.000000e+00, %bb.ad ], [ %i.ec, %bb.ac ], [ 1.000000e+00, %bb.ab ], [ 1.000000e+00, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.val26.i41.i = load ptr, ptr %i.do, align 8, !tbaa !23
  %i.eg = getelementptr i8, ptr %.val26.i41.i, i64 16
  %.val26.val.i42.i = load double, ptr %i.eg, align 8, !tbaa !28
  %i.eh = fadd double %.0.i39.i, %.val26.val.i42.i ; 3 uses
  %.val25.i43.i = load ptr, ptr %i.du, align 8, !tbaa !23 ; 2 uses
  %i.ei = getelementptr i8, ptr %.val25.i43.i, i64 16 ; 2 uses
  %.val25.val.i44.i = load double, ptr %i.ei, align 8, !tbaa !28 ; 2 uses
  %i.ej = call noundef i1 @llvm.is.fpclass.f64(double %.val25.val.i44.i, /* (pzero) */ i32 64)
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %getlength.exit40.i
  store double %i.eh, ptr %i.ei, align 8, !tbaa !28
  %.b23.i50.i = load i1, ptr @doPath, align 1
  br i1 %.b23.i50.i, label %.sink.split.sink.split.i48.i, label %.sink.split.i47.i

bb.af:                                            ; preds = %getlength.exit40.i
  %i.ek = fcmp olt double %i.eh, %.val25.val.i44.i
  br i1 %i.ek, label %bb.ag, label %update.exit51.i

bb.ag:                                            ; preds = %bb.af
  %i.el = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.em = call ptr %i.el(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.dt, i32 noundef 2) #18, !inline_history !36 ; 0 uses
  %.val.i45.i = load ptr, ptr %i.du, align 8, !tbaa !23 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val.i45.i, i64 16
  store double %i.eh, ptr %i.en, align 8, !tbaa !28
  %.b.i46.i = load i1, ptr @doPath, align 1
  br i1 %.b.i46.i, label %.sink.split.sink.split.i48.i, label %.sink.split.i47.i

.sink.split.sink.split.i48.i:                     ; preds = %bb.ag, %bb.ae
  %.val.sink.i49.i = phi ptr [ %.val25.i43.i, %bb.ae ], [ %.val.i45.i, %bb.ag ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.sink.i49.i, i64 24
  store ptr %i.dn, ptr %i.eo, align 8, !tbaa !64
  br label %.sink.split.i47.i

.sink.split.i47.i:                                ; preds = %.sink.split.sink.split.i48.i, %bb.ag, %bb.ae
  %i.ep = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.eq = call ptr %i.ep(ptr noundef nonnull %i.bc, ptr noundef nonnull %i.dt, i32 noundef 1) #18, !inline_history !36 ; 0 uses
  br label %update.exit51.i

update.exit51.i:                                  ; preds = %.sink.split.i47.i, %bb.af, %.lr.ph.i18
  %i.er = call ptr @agnxtedge(ptr noundef nonnull %i.bk, ptr noundef nonnull %.160.i, ptr noundef nonnull %i.dn) #18 ; 2 uses
  %.not33.i = icmp eq ptr %i.er, null
  br i1 %.not33.i, label %.loopexit56.i, label %.lr.ph.i18, !llvm.loop !39

.loopexit55.i:                                    ; preds = %.loopexit56.i, %.loopexit.i, %.preheader.i, %.preheader57.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.es = call ptr @agattr_text(ptr noundef nonnull %i.bk, i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #18 ; 2 uses
  %.b45.i.i = load i1, ptr @doPath, align 1
  br i1 %.b45.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.loopexit55.i
  %i.et = call ptr @agattr_text(ptr noundef nonnull %i.bk, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15) #18
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit55.i
  %.036.i.i = phi ptr [ %i.et, %bb.ah ], [ null, %.loopexit55.i ]
  %.b43.i.i = load i1, ptr @setall, align 1
  br i1 %.b43.i.i, label %bb.aj, label %agxblen.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %3, ptr nonnull poison, double noundef +inf)
  %.val.i.pre.i.i = load i8, ptr %i.be, align 1, !tbaa !29 ; 2 uses
  switch i8 %.val.i.pre.i.i, label %agxblen.exit.i.i.i.i [
    i8 -1, label %bb.ak
    i8 31, label %agxbclear.exit.thread.i.i.i
  ]

agxblen.exit.i.i.i.i:                             ; preds = %bb.ai, %bb.aj
  %.val.i108.i.i = phi i8 [ %.val.i.pre.i.i, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.eu = zext i8 %.val.i108.i.i to i64
  br label %agxbsizeof.exit.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.ev = load i64, ptr %i.bf, align 8, !tbaa !29
  %i.ew = load i64, ptr %i.bg, align 8, !tbaa !29
  br label %agxbsizeof.exit.i.i.i.i

agxbsizeof.exit.i.i.i.i:                          ; preds = %bb.ak, %agxblen.exit.i.i.i.i
  %.val.i107.i.i = phi i8 [ -1, %bb.ak ], [ %.val.i108.i.i, %agxblen.exit.i.i.i.i ] ; 2 uses
  %.0.i20.i.i.i.i = phi i64 [ %i.ev, %bb.ak ], [ %i.eu, %agxblen.exit.i.i.i.i ]
  %.0.i14.i.i.i.i = phi i64 [ %i.ew, %bb.ak ], [ 31, %agxblen.exit.i.i.i.i ]
  %.not.i5.i.i.i = icmp ult i64 %.0.i20.i.i.i.i, %.0.i14.i.i.i.i
  br i1 %.not.i5.i.i.i, label %bb.at, label %bb.al

bb.al:                                            ; preds = %agxbsizeof.exit.i.i.i.i
  %.val.i.i41 = load i8, ptr %i.be, align 1, !tbaa !29 ; 2 uses
  %.not.i.i42 = icmp eq i8 %.val.i.i41, -1
  br i1 %.not.i.i42, label %agxbsizeof.exit.i46, label %bb.ar

agxbsizeof.exit.i46:                              ; preds = %bb.al
  %i.ex = load i64, ptr %i.bg, align 8, !tbaa !29
  %.fr.i47 = freeze i64 %i.ex                     ; 6 uses
  %i.ey = icmp eq i64 %.fr.i47, 0
  %i.ez = shl i64 %.fr.i47, 1
  %spec.select45.i48 = select i1 %i.ey, i64 8192, i64 %i.ez
  %i.fa = add i64 %.fr.i47, 1
  %spec.select34.i49 = call i64 @llvm.umax.i64(i64 %i.fa, i64 %spec.select45.i48) ; 7 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !29    ; 2 uses
  %i.fc = icmp eq i64 %spec.select34.i49, 0
  br i1 %i.fc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %agxbsizeof.exit.i46
  call void @free(ptr noundef %i.fb) #18
  br label %.thread

bb.an:                                            ; preds = %agxbsizeof.exit.i46
  %i.fd = call ptr @realloc(ptr noundef %i.fb, i64 noundef %spec.select34.i49) #23 ; 4 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ff = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.fg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ff, ptr noundef nonnull @.str.10, i64 noundef %spec.select34.i49) #20 ; 0 uses
  call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.fh = icmp ugt i64 %spec.select34.i49, %.fr.i47
  br i1 %i.fh, label %bb.aq, label %.thread

bb.aq:                                            ; preds = %bb.ap
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.fr.i47
  %i.fj = sub nuw i64 %spec.select34.i49, %.fr.i47
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.fi, i8 0, i64 %i.fj, i1 false)
  br label %.thread

bb.ar:                                            ; preds = %bb.al
  %i.fk = call noalias dereferenceable_or_null(62) ptr @calloc(i64 noundef 62, i64 noundef 1) #22 ; 3 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.as, label %gv_calloc.exit.i43

bb.as:                                            ; preds = %bb.ar
  %i.fm = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.fn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fm, ptr noundef nonnull @.str.10, i64 noundef 62) #20 ; 0 uses
  call fastcc void @graphviz_exit(i32 noundef 1) #19
  unreachable

gv_calloc.exit.i43:                               ; preds = %bb.ar
  %i.fo = zext i8 %.val.i.i41 to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr nonnull align 8 %3, i64 %i.fo, i1 false)
  store i64 %i.fo, ptr %i.bf, align 8, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %gv_calloc.exit.i43, %bb.aq, %bb.ap, %bb.am
  %spec.select3742.i44 = phi i64 [ 62, %gv_calloc.exit.i43 ], [ 0, %bb.am ], [ %spec.select34.i49, %bb.ap ], [ %spec.select34.i49, %bb.aq ]
  %.0.i45 = phi ptr [ %i.fk, %gv_calloc.exit.i43 ], [ null, %bb.am ], [ %i.fd, %bb.ap ], [ %i.fd, %bb.aq ]
  store ptr %.0.i45, ptr %3, align 8, !tbaa !29
  store i64 %spec.select3742.i44, ptr %i.bg, align 8, !tbaa !29
  store i8 -1, ptr %i.be, align 1, !tbaa !29
  br label %bb.av

bb.at:                                            ; preds = %agxbsizeof.exit.i.i.i.i
  %.not.i16.i.i.i.i = icmp eq i8 %.val.i107.i.i, -1
  br i1 %.not.i16.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fp = zext i8 %.val.i107.i.i to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 %i.fp
  store i8 0, ptr %i.fq, align 1, !tbaa !29
  %i.fr = load i8, ptr %i.be, align 1, !tbaa !29
  %i.fs = add i8 %i.fr, 1                         ; 2 uses
  store i8 %i.fs, ptr %i.be, align 1, !tbaa !29
  br label %agxbputc.exit.i.i.i

bb.av:                                            ; preds = %.thread, %bb.at
  %i.ft = load i64, ptr %i.bf, align 8, !tbaa !29
  %i.fu = load ptr, ptr %3, align 8, !tbaa !29
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  store i8 0, ptr %i.fv, align 1, !tbaa !29
  %i.fw = load i64, ptr %i.bf, align 8, !tbaa !29
  %i.fx = add i64 %i.fw, 1
  store i64 %i.fx, ptr %i.bf, align 8, !tbaa !29
  %.val.i6.pr.i.i.i = load i8, ptr %i.be, align 1, !tbaa !29
  br label %agxbputc.exit.i.i.i

agxbputc.exit.i.i.i:                              ; preds = %bb.av, %bb.au
  %.val.i8.pr.i.i.i = phi i8 [ %.val.i6.pr.i.i.i, %bb.av ], [ %i.fs, %bb.au ]
  %.not.i7.i.i.i = icmp eq i8 %.val.i8.pr.i.i.i, -1
  br i1 %.not.i7.i.i.i, label %bb.aw, label %agxbclear.exit.thread.i.i.i

agxbclear.exit.thread.i.i.i:                      ; preds = %agxbputc.exit.i.i.i, %bb.aj
  store i8 0, ptr %i.be, align 1, !tbaa !29
  br label %agxbuse.exit.i.i

bb.aw:                                            ; preds = %agxbputc.exit.i.i.i
  store i64 0, ptr %i.bf, align 8, !tbaa !29
  %i.fy = load ptr, ptr %3, align 8, !tbaa !29
  br label %agxbuse.exit.i.i

agxbuse.exit.i.i:                                 ; preds = %bb.aw, %agxbclear.exit.thread.i.i.i
  %i.fz = phi ptr [ %i.fy, %bb.aw ], [ %3, %agxbclear.exit.thread.i.i.i ]
  %i.ga = call ptr @agfstnode(ptr noundef nonnull %i.bk) #18 ; 2 uses
  %.not97.i.i = icmp eq ptr %i.ga, null
  br i1 %.not97.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %agxbuse.exit.i.i, %bb.bn
  %.099.i.i = phi double [ %.1.i.i, %bb.bn ], [ 0.000000e+00, %agxbuse.exit.i.i ] ; 4 uses
  %.03798.i.i = phi ptr [ %i.hr, %bb.bn ], [ %i.ga, %agxbuse.exit.i.i ] ; 5 uses
  %i.gb = getelementptr i8, ptr %.03798.i.i, i64 16 ; 2 uses
  %.037.val.i.i = load ptr, ptr %i.gb, align 8, !tbaa !23
  %i.gc = getelementptr i8, ptr %.037.val.i.i, i64 16
  %.037.val.val.i.i = load double, ptr %i.gc, align 8, !tbaa !28 ; 2 uses
  %i.gd = call noundef i1 @llvm.is.fpclass.f64(double %.037.val.val.i.i, /* (pzero) */ i32 64)
  br i1 %i.gd, label %bb.bl, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i.i
  %i.ge = fadd double %.037.val.val.i.i, -1.000000e+00 ; 3 uses
  call void (ptr, ptr, ...) @agxbprint(ptr noundef %2, ptr nonnull poison, double noundef %i.ge)
  %.val.i51.i.i = load i8, ptr %i.bh, align 1, !tbaa !29 ; 4 uses
  switch i8 %.val.i51.i.i, label %agxbsizeof.exit.i.i53.i.i [
    i8 -1, label %agxbsizeof.exit.i.i53.i.i.thread
    i8 31, label %agxbclear.exit.thread.i52.i.i
  ]

agxbsizeof.exit.i.i53.i.i:                        ; preds = %bb.ax
  %.not.i5.i56.i.i = icmp ult i8 %.val.i51.i.i, 31
  br i1 %.not.i5.i56.i.i, label %bb.bf, label %bb.bd

agxbsizeof.exit.i.i53.i.i.thread:                 ; preds = %bb.ax
  %i.gf = load i64, ptr %i.bi, align 8, !tbaa !29 ; 2 uses
  %i.gg = load i64, ptr %i.bj, align 8, !tbaa !29
  %.fr.i37 = freeze i64 %i.gg                     ; 7 uses
  %.not.i5.i56.i.i53 = icmp ult i64 %i.gf, %.fr.i37
  br i1 %.not.i5.i56.i.i53, label %agxbsizeof.exit.i.i53.i.i.thread..thread55_crit_edge, label %agxbsizeof.exit.i36

agxbsizeof.exit.i.i53.i.i.thread..thread55_crit_edge: ; preds = %agxbsizeof.exit.i.i53.i.i.thread
  %.pre90 = load ptr, ptr %2, align 8, !tbaa !29
  br label %.thread55

agxbsizeof.exit.i36:                              ; preds = %agxbsizeof.exit.i.i53.i.i.thread
  %i.gh = icmp eq i64 %.fr.i37, 0
  %i.gi = shl i64 %.fr.i37, 1
  %spec.select45.i38 = select i1 %i.gh, i64 8192, i64 %i.gi
  %i.gj = add i64 %.fr.i37, 1
  %spec.select34.i39 = call i64 @llvm.umax.i64(i64 %i.gj, i64 %spec.select45.i38) ; 7 uses
  %i.gk = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.gl = icmp eq i64 %spec.select34.i39, 0
  br i1 %i.gl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %agxbsizeof.exit.i36
  call void @free(ptr noundef %i.gk) #18
  br label %agxbmore.exit40
end_hunk_0
