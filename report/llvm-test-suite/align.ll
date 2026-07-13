inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@align_path:bb.a

bb.h:                                             ; preds = %bb.g
  %i.p = sub nsw i32 %3, %2
  %i.q = sub nsw i32 %5, %4
  %i.r = icmp eq i32 %i.q, %i.p
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = tail call ptr @xmalloc(i64 noundef 16) #11 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i8 3, ptr %i.t, align 4, !tbaa !11
  %i.u = sub nsw i32 %4, %2
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.u, ptr %i.v, align 8, !tbaa !13
  store ptr null, ptr %i.s, align 8, !tbaa !14
  store ptr %i.s, ptr %8, align 8, !tbaa !8
  store ptr %i.s, ptr %7, align 8, !tbaa !8
  br label %bb.bf

bb.j:                                             ; preds = %bb.h
  %i.w = sub nsw i32 %5, %3                       ; 2 uses
  %i.x = sub nsw i32 %4, %2                       ; 2 uses
  %i.y = add nsw i32 %i.x, 1
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp sgt i32 %2, -1
  %i.ab = icmp slt i32 %2, %4
  %or.cond = and i1 %i.aa, %i.ab
  br i1 %or.cond, label %.lr.ph.preheader.i, label %snake.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.ac = sext i32 %3 to i64
  %i.ad = sext i32 %5 to i64
  %i.ae = zext nneg i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.preheader.i
  %indvars.iv23.i = phi i64 [ %i.ae, %.lr.ph.preheader.i ], [ %indvars.iv.next24.i, %bb.l ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.ac, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv23.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !15
  %i.aj = icmp eq i8 %i.ag, %i.ai
  br i1 %i.aj, label %bb.l, label %.critedge.loopexit.split.loop.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %indvars26.i = trunc i64 %indvars.iv.next24.i to i32 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = icmp sgt i32 %4, %indvars26.i
  %i.al = icmp slt i64 %indvars.iv.next.i, %i.ad
  %or.cond.i = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %snake.exit, !llvm.loop !16

.critedge.loopexit.split.loop.exit.i:             ; preds = %.lr.ph.i
  %i.am = trunc nuw i64 %indvars.iv23.i to i32
  br label %snake.exit

snake.exit:                                       ; preds = %bb.l, %.critedge.loopexit.split.loop.exit.i
  %.015.i = phi i32 [ %i.am, %.critedge.loopexit.split.loop.exit.i ], [ %indvars26.i, %bb.l ] ; 4 uses
  %i.an = icmp sgt i32 %.015.i, %2
  br i1 %i.an, label %bb.m, label %snake.exit.thread

bb.m:                                             ; preds = %snake.exit
  %i.ao = tail call ptr @xmalloc(i64 noundef 16) #11 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i8 3, ptr %i.ap, align 4, !tbaa !11
  %i.aq = sub nsw i32 %.015.i, %2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !13
  store ptr %i.ao, ptr %7, align 8, !tbaa !8
  br label %snake.exit.thread

snake.exit.thread:                                ; preds = %bb.k, %bb.m, %snake.exit
  %i.as = phi ptr [ undef, %snake.exit ], [ %i.ao, %bb.m ], [ undef, %bb.k ]
  %.015.i469 = phi i32 [ %.015.i, %snake.exit ], [ %.015.i, %bb.m ], [ %2, %bb.k ] ; 2 uses
  %i.at = tail call ptr @xmalloc(i64 noundef 16) #11 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i8 2, ptr %i.au, align 4, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 1, ptr %i.av, align 8, !tbaa !13
  %i.aw = load ptr, ptr %7, align 8, !tbaa !8
  %.not415 = icmp eq ptr %i.aw, null
  %.613 = select i1 %.not415, ptr %7, ptr %i.as
  store ptr %i.at, ptr %.613, align 8, !tbaa !8
  store ptr %i.at, ptr %8, align 8, !tbaa !8
  store ptr null, ptr %i.at, align 8, !tbaa !14
  %.not416 = icmp eq i32 %4, %.015.i469
  br i1 %.not416, label %bb.bf, label %bb.n

bb.n:                                             ; preds = %snake.exit.thread
  %i.ax = sub nsw i32 %4, %.015.i469
  %i.ay = tail call ptr @xmalloc(i64 noundef 16) #11 ; 5 uses
  store ptr %i.ay, ptr %8, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i8 3, ptr %i.az, align 4, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i32 %i.ax, ptr %i.ba, align 8, !tbaa !13
  store ptr null, ptr %i.ay, align 8, !tbaa !14
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !14
  br label %bb.bf

bb.o:                                             ; preds = %bb.j
  %i.bb = add nsw i32 %i.w, 1
  %i.bc = icmp eq i32 %i.bb, %i.x
  br i1 %i.bc, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bd = icmp sgt i32 %2, -1
  %i.be = icmp slt i32 %3, %5
  %or.cond520 = and i1 %i.bd, %i.be
  br i1 %or.cond520, label %.lr.ph.preheader.i422, label %snake.exit431.thread

.lr.ph.preheader.i422:                            ; preds = %bb.p
  %i.bf = sext i32 %3 to i64
  %i.bg = sext i32 %5 to i64
  %i.bh = zext nneg i32 %2 to i64
  br label %.lr.ph.i423

.lr.ph.i423:                                      ; preds = %bb.q, %.lr.ph.preheader.i422
  %indvars.iv23.i424 = phi i64 [ %i.bh, %.lr.ph.preheader.i422 ], [ %indvars.iv.next24.i427, %bb.q ] ; 3 uses
  %indvars.iv.i425 = phi i64 [ %i.bf, %.lr.ph.preheader.i422 ], [ %indvars.iv.next.i429, %bb.q ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv23.i424
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bk = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i425
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15
  %i.bm = icmp eq i8 %i.bj, %i.bl
  br i1 %i.bm, label %bb.q, label %.critedge.loopexit.split.loop.exit.i426

bb.q:                                             ; preds = %.lr.ph.i423
  %indvars.iv.next24.i427 = add nuw nsw i64 %indvars.iv23.i424, 1 ; 2 uses
  %indvars26.i428 = trunc i64 %indvars.iv.next24.i427 to i32 ; 2 uses
  %indvars.iv.next.i429 = add nsw i64 %indvars.iv.i425, 1 ; 2 uses
  %i.bn = icmp sgt i32 %4, %indvars26.i428
  %i.bo = icmp slt i64 %indvars.iv.next.i429, %i.bg
  %or.cond.i430 = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %or.cond.i430, label %.lr.ph.i423, label %snake.exit431, !llvm.loop !16

.critedge.loopexit.split.loop.exit.i426:          ; preds = %.lr.ph.i423
  %i.bp = trunc nuw i64 %indvars.iv23.i424 to i32
  br label %snake.exit431

snake.exit431:                                    ; preds = %bb.q, %.critedge.loopexit.split.loop.exit.i426
  %.015.i421 = phi i32 [ %i.bp, %.critedge.loopexit.split.loop.exit.i426 ], [ %indvars26.i428, %bb.q ] ; 4 uses
  %i.bq = icmp sgt i32 %.015.i421, %2
  br i1 %i.bq, label %bb.r, label %snake.exit431.thread

bb.r:                                             ; preds = %snake.exit431
  %i.br = tail call ptr @xmalloc(i64 noundef 16) #11 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12
  store i8 3, ptr %i.bs, align 4, !tbaa !11
  %i.bt = sub nsw i32 %.015.i421, %2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !13
  store ptr %i.br, ptr %7, align 8, !tbaa !8
  br label %snake.exit431.thread

snake.exit431.thread:                             ; preds = %bb.p, %bb.r, %snake.exit431
  %i.bv = phi ptr [ undef, %snake.exit431 ], [ %i.br, %bb.r ], [ undef, %bb.p ]
  %.015.i421471 = phi i32 [ %.015.i421, %snake.exit431 ], [ %.015.i421, %bb.r ], [ %2, %bb.p ] ; 2 uses
  %i.bw = tail call ptr @xmalloc(i64 noundef 16) #11 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i8 1, ptr %i.bx, align 4, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 1, ptr %i.by, align 8, !tbaa !13
  %i.bz = load ptr, ptr %7, align 8, !tbaa !8
  %.not414 = icmp eq ptr %i.bz, null
  %.614 = select i1 %.not414, ptr %7, ptr %i.bv
  store ptr %i.bw, ptr %.614, align 8, !tbaa !8
  store ptr %i.bw, ptr %8, align 8, !tbaa !8
  store ptr null, ptr %i.bw, align 8, !tbaa !14
  %i.ca = add nsw i32 %.015.i421471, 1
  %i.cb = icmp sgt i32 %4, %i.ca
  br i1 %i.cb, label %bb.s, label %bb.bf

bb.s:                                             ; preds = %snake.exit431.thread
  %i.cc = tail call ptr @xmalloc(i64 noundef 16) #11 ; 5 uses
  store ptr %i.cc, ptr %8, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i8 3, ptr %i.cd, align 4, !tbaa !11
  %i.ce = xor i32 %.015.i421471, -1
  %i.cf = add i32 %4, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !13
  store ptr null, ptr %i.cc, align 8, !tbaa !14
  store ptr %i.cc, ptr %i.bw, align 8, !tbaa !14
  br label %bb.bf

bb.t:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ci = tail call i64 @fwrite(ptr nonnull @.str, i64 48, i64 1, ptr %i.ch) #12 ; 0 uses
  br label %bb.bf

bb.u:                                             ; preds = %bb.g
  %i.cj = lshr i32 %6, 1                          ; 6 uses
  %i.ck = sub nsw i32 %6, %i.cj                   ; 4 uses
  %i.cl = sub nsw i32 %3, %2                      ; 5 uses
  %i.cm = sub nsw i32 %3, %4                      ; 9 uses
  %i.cn = sub nsw i32 %i.cl, %i.cj                ; 5 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 %i.cn) ; 5 uses
  %i.co = sub nsw i32 %5, %2                      ; 4 uses
  %i.cp = add nsw i32 %i.cj, %i.cl                ; 2 uses
  %i.cq = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %i.cp) ; 4 uses
  %i.cr = sub i32 %5, %4                          ; 5 uses
  %i.cs = sub i32 %i.cr, %i.ck                    ; 5 uses
  %i.ct = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 %i.cs) ; 8 uses
  %i.cu = add i32 %i.ck, %i.cr                    ; 2 uses
  %i.cv = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %i.cu) ; 6 uses
  %reass.sub = sub i32 %i.cq, %.                  ; 2 uses
  %i.cw = add i32 %reass.sub, 1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = shl nsw i64 %i.cx, 2                    ; 2 uses
  %i.cz = tail call ptr @xmalloc(i64 noundef %i.cy) #11 ; 5 uses
  %i.da = ptrtoaddr ptr %i.cz to i64
  %i.db = sext i32 %. to i64
  %i.dc = sub nsw i64 0, %i.db                    ; 2 uses
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dc ; 6 uses
  %i.de = tail call ptr @xmalloc(i64 noundef %i.cy) #11 ; 4 uses
  %i.df = ptrtoaddr ptr %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dc ; 3 uses
  %.not482 = icmp sgt i32 %., %i.cq
  br i1 %.not482, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %i.dh = zext i32 %reass.sub to i64
  %i.di = shl nuw nsw i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cz, i8 -1, i64 %i.dj, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.u
  %i.dk = icmp slt i32 %2, 0
  br i1 %i.dk, label %.lr.ph494, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.dl = icmp slt i32 %2, %4
  %i.dm = icmp slt i32 %3, %5
  %or.cond18.i432 = and i1 %i.dl, %i.dm
  br i1 %or.cond18.i432, label %.lr.ph.preheader.i434, label %.lr.ph494

.lr.ph.preheader.i434:                            ; preds = %bb.v
  %i.dn = sext i32 %3 to i64
  %i.do = sext i32 %5 to i64
  %i.dp = zext nneg i32 %2 to i64
  br label %.lr.ph.i435

.lr.ph.i435:                                      ; preds = %bb.w, %.lr.ph.preheader.i434
  %indvars.iv23.i436 = phi i64 [ %i.dp, %.lr.ph.preheader.i434 ], [ %indvars.iv.next24.i439, %bb.w ] ; 3 uses
  %indvars.iv.i437 = phi i64 [ %i.dn, %.lr.ph.preheader.i434 ], [ %indvars.iv.next.i441, %bb.w ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv23.i436
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !15
  %i.ds = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i437
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !15
  %i.du = icmp eq i8 %i.dr, %i.dt
  br i1 %i.du, label %bb.w, label %.critedge.loopexit.split.loop.exit.i438

bb.w:                                             ; preds = %.lr.ph.i435
  %indvars.iv.next24.i439 = add nuw nsw i64 %indvars.iv23.i436, 1 ; 2 uses
  %indvars26.i440 = trunc i64 %indvars.iv.next24.i439 to i32 ; 2 uses
  %indvars.iv.next.i441 = add nsw i64 %indvars.iv.i437, 1 ; 2 uses
  %i.dv = icmp sgt i32 %4, %indvars26.i440
  %i.dw = icmp slt i64 %indvars.iv.next.i441, %i.do
  %or.cond.i442 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond.i442, label %.lr.ph.i435, label %.lr.ph494, !llvm.loop !16

.critedge.loopexit.split.loop.exit.i438:          ; preds = %.lr.ph.i435
  %i.dx = trunc nuw i64 %indvars.iv23.i436 to i32
  br label %.lr.ph494

.lr.ph494:                                        ; preds = %bb.w, %.critedge.loopexit.split.loop.exit.i438, %bb.v, %._crit_edge
  %.015.i433 = phi i32 [ %2, %._crit_edge ], [ %2, %bb.v ], [ %i.dx, %.critedge.loopexit.split.loop.exit.i438 ], [ %indvars26.i440, %bb.w ]
  %i.dy = sext i32 %i.cl to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.dy
  store i32 %.015.i433, ptr %i.dz, align 4, !tbaa !4
  %i.ea = sext i32 %5 to i64
  %i.eb = xor i32 %2, -1
  %11 = add i32 %3, %i.eb
  %i.ec = add i32 %3, 1
  %12 = sub i32 %i.ec, %2
  %i.ed = sub i64 %i.df, %i.da
  %diff.check = icmp ugt i64 %i.ed, -32
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph494, %._crit_edge491
  %indvar = phi i32 [ 0, %.lr.ph494 ], [ %indvar.next, %._crit_edge491 ] ; 2 uses
  %indvars.iv = phi i32 [ %11, %.lr.ph494 ], [ %indvars.iv.next, %._crit_edge491 ] ; 4 uses
  %.0356493 = phi i32 [ 1, %.lr.ph494 ], [ %i.ge, %._crit_edge491 ] ; 4 uses
  %13 = add i32 %12, %indvar
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 %i.cp)
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %i.co)
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 %indvars.iv)
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 %i.cn)
  %18 = tail call i32 @llvm.smax.i32(i32 %17, i32 %i.cm)
  %smax639 = sext i32 %18 to i64
  %19 = add nsw i64 %smax639, 1
  %20 = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 %i.cn)
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 %i.cm)
  %smax641 = sext i32 %21 to i64
  %22 = sub nsw i64 %19, %smax641                 ; 3 uses
  %i.ee = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 %i.cn)
  %i.ef = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 %i.cm)
  %smax539 = sext i32 %i.ef to i64                ; 4 uses
  %i.eg = sub nsw i32 %i.cl, %.0356493
  %i.eh = tail call i32 @llvm.smax.i32(i32 %., i32 %i.eg) ; 2 uses
  %i.ei = add nsw i32 %.0356493, %i.cl
  %i.ej = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.ei) ; 4 uses
  %.not408484 = icmp sgt i32 %i.eh, %i.ej
  br i1 %.not408484, label %._crit_edge491, label %.lr.ph487.preheader

.lr.ph487.preheader:                              ; preds = %bb.x
  %i.ek = sext i32 %i.ej to i64
  br label %.lr.ph487

.lr.ph490.preheader:                              ; preds = %snake.exit455
  %i.el = sext i32 %i.ej to i64
  %min.iters.check = icmp ult i64 %22, 8
  %or.cond678 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond678, label %.lr.ph490.preheader691, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph490.preheader
  %n.vec = and i64 %22, -8                        ; 3 uses
  %i.em = add nsw i64 %n.vec, %smax539
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.en = add i64 %index, %smax539                ; 2 uses
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load = load <4 x i32>, ptr %i.eo, align 4, !tbaa !4
  %wide.load642 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !4
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.en ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %wide.load, ptr %i.eq, align 4, !tbaa !4
  store <4 x i32> %wide.load642, ptr %i.er, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %22, %n.vec
  br i1 %cmp.n, label %._crit_edge491, label %.lr.ph490.preheader691

.lr.ph490.preheader691:                           ; preds = %.lr.ph490.preheader, %middle.block
  %indvars.iv540.ph = phi i64 [ %smax539, %.lr.ph490.preheader ], [ %i.em, %middle.block ]
  br label %.lr.ph490

.lr.ph487:                                        ; preds = %.lr.ph487.preheader, %snake.exit455
  %indvars.iv531 = phi i64 [ %smax539, %.lr.ph487.preheader ], [ %indvars.iv.next532, %snake.exit455 ] ; 6 uses
  %i.et = trunc nsw i64 %indvars.iv531 to i32     ; 3 uses
  %i.eu = icmp eq i32 %i.eh, %i.et
  br i1 %i.eu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph487
  %i.ev = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv531
  %i.ew = getelementptr i8, ptr %i.ev, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4
  %i.ey = add nsw i32 %i.ex, 1
  br label %bb.ae

bb.z:                                             ; preds = %.lr.ph487
  %i.ez = icmp eq i32 %i.ej, %i.et
  %i.fa = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv531 ; 5 uses
  br i1 %i.ez, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr i8, ptr %i.fa, i64 -4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.fd = load i32, ptr %i.fa, align 4, !tbaa !4  ; 3 uses
  %i.fe = getelementptr i8, ptr %i.fa, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !4  ; 3 uses
  %.not410 = icmp slt i32 %i.fd, %i.ff
  br i1 %.not410, label %._crit_edge567, label %bb.ac

._crit_edge567:                                   ; preds = %bb.ab
  %.phi.trans.insert = getelementptr i8, ptr %i.fa, i64 -4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fg = add nsw i32 %i.fd, 1                    ; 2 uses
  %i.fh = getelementptr i8, ptr %i.fa, i64 -4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  %.not411 = icmp slt i32 %i.fg, %i.fi
  br i1 %.not411, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge567, %bb.ac
  %i.fj = phi i32 [ %.pre, %._crit_edge567 ], [ %i.fi, %bb.ac ] ; 2 uses
  %i.fk = add nsw i32 %i.ff, 1
  %.not413 = icmp slt i32 %i.ff, %i.fd
  %i.fl = tail call i32 @llvm.smax.i32(i32 %i.fk, i32 %i.fj)
  %spec.select = select i1 %.not413, i32 %i.fj, i32 %i.fl
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y
  %.0352 = phi i32 [ %i.ey, %bb.y ], [ %i.fc, %bb.aa ], [ %spec.select, %bb.ad ], [ %i.fg, %bb.ac ] ; 6 uses
  %i.fm = icmp slt i32 %.0352, 0
  br i1 %i.fm, label %snake.exit455, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fn = add i32 %.0352, %i.et                   ; 2 uses
  %i.fo = icmp slt i32 %.0352, %4
  %i.fp = icmp slt i32 %i.fn, %5
  %or.cond18.i444 = and i1 %i.fo, %i.fp
  br i1 %or.cond18.i444, label %.lr.ph.preheader.i446, label %snake.exit455

.lr.ph.preheader.i446:                            ; preds = %bb.af
  %i.fq = sext i32 %i.fn to i64
  %i.fr = zext nneg i32 %.0352 to i64
  br label %.lr.ph.i447

.lr.ph.i447:                                      ; preds = %bb.ag, %.lr.ph.preheader.i446
  %indvars.iv23.i448 = phi i64 [ %i.fr, %.lr.ph.preheader.i446 ], [ %indvars.iv.next24.i451, %bb.ag ] ; 3 uses
  %indvars.iv.i449 = phi i64 [ %i.fq, %.lr.ph.preheader.i446 ], [ %indvars.iv.next.i453, %bb.ag ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv23.i448
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !15
  %i.fu = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i449
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !15
  %i.fw = icmp eq i8 %i.ft, %i.fv
  br i1 %i.fw, label %bb.ag, label %.critedge.loopexit.split.loop.exit.i450

bb.ag:                                            ; preds = %.lr.ph.i447
  %indvars.iv.next24.i451 = add nuw nsw i64 %indvars.iv23.i448, 1 ; 2 uses
  %indvars26.i452 = trunc i64 %indvars.iv.next24.i451 to i32 ; 2 uses
  %indvars.iv.next.i453 = add nsw i64 %indvars.iv.i449, 1 ; 2 uses
  %i.fx = icmp sgt i32 %4, %indvars26.i452
  %i.fy = icmp slt i64 %indvars.iv.next.i453, %i.ea
  %or.cond.i454 = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %or.cond.i454, label %.lr.ph.i447, label %snake.exit455, !llvm.loop !16

.critedge.loopexit.split.loop.exit.i450:          ; preds = %.lr.ph.i447
  %i.fz = trunc nuw i64 %indvars.iv23.i448 to i32
  br label %snake.exit455

snake.exit455:                                    ; preds = %bb.ag, %bb.ae, %bb.af, %.critedge.loopexit.split.loop.exit.i450
  %.015.i445 = phi i32 [ %.0352, %bb.ae ], [ %.0352, %bb.af ], [ %i.fz, %.critedge.loopexit.split.loop.exit.i450 ], [ %indvars26.i452, %bb.ag ]
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv531
  store i32 %.015.i445, ptr %i.ga, align 4, !tbaa !4
  %indvars.iv.next532 = add nsw i64 %indvars.iv531, 1
  %.not408.not = icmp slt i64 %indvars.iv531, %i.ek
  br i1 %.not408.not, label %.lr.ph487, label %.lr.ph490.preheader, !llvm.loop !23

.lr.ph490:                                        ; preds = %.lr.ph490.preheader691, %.lr.ph490
  %indvars.iv540 = phi i64 [ %indvars.iv.next541, %.lr.ph490 ], [ %indvars.iv540.ph, %.lr.ph490.preheader691 ] ; 4 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv540
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !4
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %indvars.iv540
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !4
  %indvars.iv.next541 = add nsw i64 %indvars.iv540, 1
  %.not409.not = icmp slt i64 %indvars.iv540, %i.el
  br i1 %.not409.not, label %.lr.ph490, label %._crit_edge491, !llvm.loop !24

._crit_edge491:                                   ; preds = %.lr.ph490, %middle.block, %bb.x
  %i.ge = add nuw i32 %.0356493, 1
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond.not = icmp eq i32 %.0356493, %i.cj
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge495, label %bb.x, !llvm.loop !25

._crit_edge495:                                   ; preds = %._crit_edge491
  %reass.sub521 = sub i32 %i.cv, %i.ct
  %i.gf = add i32 %reass.sub521, 1
  %i.gg = sext i32 %i.gf to i64
  %i.gh = shl nsw i64 %i.gg, 2                    ; 2 uses
  %i.gi = tail call ptr @xmalloc(i64 noundef %i.gh) #11 ; 5 uses
  %i.gj = ptrtoaddr ptr %i.gi to i64
  %i.gk = sext i32 %i.ct to i64                   ; 3 uses
  %i.gl = sub nsw i64 0, %i.gk                    ; 2 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %i.gl ; 7 uses
  %i.gn = tail call ptr @xmalloc(i64 noundef %i.gh) #11 ; 4 uses
  %i.go = ptrtoaddr ptr %i.gn to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.gl ; 3 uses
  %.not394496 = icmp sgt i32 %i.ct, %i.cv
  br i1 %.not394496, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %._crit_edge495
  %i.gq = add nsw i32 %4, 1                       ; 2 uses
  %i.gr = add i32 %i.cv, %i.ct
  %i.gs = add i32 %i.gr, 1
  %i.gt = sub i32 %i.gs, %i.ct
  %i.gu = sub i32 %i.cv, %i.ct                    ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check644 = icmp ult i32 %i.gu, 7
  br i1 %min.iters.check644, label %scalar.ph643.preheader, label %vector.ph645

vector.ph645:                                     ; preds = %.lr.ph499
  %n.vec647 = and i64 %i.gw, 8589934584           ; 3 uses
  %i.gx = add nsw i64 %n.vec647, %i.gk
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body648

vector.body648:                                   ; preds = %vector.body648, %vector.ph645
  %index649 = phi i64 [ 0, %vector.ph645 ], [ %index.next650, %vector.body648 ] ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gi, i64 %index649 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.gy, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.gz, align 4, !tbaa !4
  %index.next650 = add nuw i64 %index649, 8       ; 2 uses
  %i.ha = icmp eq i64 %index.next650, %n.vec647
  br i1 %i.ha, label %middle.block651, label %vector.body648, !llvm.loop !26

middle.block651:                                  ; preds = %vector.body648
  %cmp.n652 = icmp eq i64 %i.gw, %n.vec647
  br i1 %cmp.n652, label %._crit_edge500, label %scalar.ph643.preheader

scalar.ph643.preheader:                           ; preds = %.lr.ph499, %middle.block651
  %indvars.iv542.ph = phi i64 [ %i.gk, %.lr.ph499 ], [ %i.gx, %middle.block651 ]
  br label %scalar.ph643

scalar.ph643:                                     ; preds = %scalar.ph643.preheader, %scalar.ph643
  %indvars.iv542 = phi i64 [ %indvars.iv.next543, %scalar.ph643 ], [ %indvars.iv542.ph, %scalar.ph643.preheader ] ; 2 uses
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %indvars.iv542
  store i32 %i.gq, ptr %i.hb, align 4, !tbaa !4
  %indvars.iv.next543 = add nsw i64 %indvars.iv542, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next543 to i32
  %exitcond544.not = icmp eq i32 %i.gt, %lftr.wideiv
  br i1 %exitcond544.not, label %._crit_edge500, label %scalar.ph643, !llvm.loop !27

._crit_edge500:                                   ; preds = %scalar.ph643, %middle.block651, %._crit_edge495
  %i.hc = icmp sgt i32 %4, %9
  br i1 %i.hc, label %rsnake.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge500
  %i.hd = or i32 %3, %2
  %or.cond.not.i = icmp sgt i32 %i.hd, -1
  br i1 %or.cond.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.hf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.he, ptr noundef nonnull @.str.8, i32 noundef %2, i32 noundef %3) #13 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hg = icmp sgt i32 %5, %10
  br i1 %i.hg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.hi = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hh, ptr noundef nonnull @.str.9, i32 noundef %4, i32 noundef %5) #13 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hj = sext i32 %4 to i64                      ; 2 uses
  %i.hk = sext i32 %2 to i64
  %i.hl = sext i32 %3 to i64
  %i.hm = icmp sgt i32 %4, %2
  %i.hn = icmp sgt i32 %5, %3
  %or.cond.i457623 = and i1 %i.hn, %i.hm
  br i1 %or.cond.i457623, label %.lr.ph, label %.critedge.loopexit.i

.lr.ph:                                           ; preds = %bb.al
  %i.ho = sext i32 %5 to i64
  br label %bb.an

bb.am:                                            ; preds = %bb.an
  %i.hp = icmp sgt i64 %indvars.iv.next.i458, %i.hk
  %i.hq = icmp sgt i64 %indvars.iv.next32.i, %i.hl
  %or.cond.i457 = and i1 %i.hq, %i.hp
  br i1 %or.cond.i457, label %bb.an, label %.critedge.loopexit.i, !llvm.loop !28

bb.an:                                            ; preds = %.lr.ph, %bb.am
  %indvars.iv.i456625 = phi i64 [ %i.hj, %.lr.ph ], [ %indvars.iv.next.i458, %bb.am ] ; 2 uses
  %indvars.iv31.i624 = phi i64 [ %i.ho, %.lr.ph ], [ %indvars.iv.next32.i, %bb.am ]
  %indvars.iv.next.i458 = add nsw i64 %indvars.iv.i456625, -1 ; 4 uses
  %i.hr = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next.i458
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !15
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i624, -1 ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next32.i
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !15
  %i.hv = icmp eq i8 %i.hs, %i.hu
  br i1 %i.hv, label %bb.am, label %..critedge.loopexit.i_crit_edge, !llvm.loop !28

..critedge.loopexit.i_crit_edge:                  ; preds = %bb.an
  br label %.critedge.loopexit.i, !llvm.loop !28

.critedge.loopexit.i:                             ; preds = %bb.am, %..critedge.loopexit.i_crit_edge, %bb.al
  %indvars.iv.i456.lcssa = phi i64 [ %indvars.iv.i456625, %..critedge.loopexit.i_crit_edge ], [ %i.hj, %bb.al ], [ %indvars.iv.next.i458, %bb.am ]
  %i.hw = trunc nsw i64 %indvars.iv.i456.lcssa to i32
  br label %rsnake.exit

rsnake.exit:                                      ; preds = %._crit_edge500, %.critedge.loopexit.i
  %.027.i = phi i32 [ %4, %._crit_edge500 ], [ %i.hw, %.critedge.loopexit.i ]
  %i.hx = sext i32 %i.cr to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.hx
  store i32 %.027.i, ptr %i.hy, align 4, !tbaa !4
  %.not395509 = icmp slt i32 %i.ck, 1
  br i1 %.not395509, label %._crit_edge512, label %.lr.ph511

.lr.ph511:                                        ; preds = %rsnake.exit
  %i.hz = or i32 %3, %2
  %or.cond.not.i459 = icmp sgt i32 %i.hz, -1
  %i.ia = sext i32 %2 to i64
  %i.ib = sext i32 %3 to i64
  %i.ic = xor i32 %4, -1
  %i.id = add i32 %5, %i.ic
  %i.ie = add nuw i32 %6, 1
  %23 = sub i32 %i.ie, %i.cj
  %24 = add i32 %5, 1
  %i.if = sub i32 %24, %4
  %i.ig = sub i64 %i.go, %i.gj
  %diff.check655 = icmp ugt i64 %i.ig, -32
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph511, %._crit_edge508
  %indvar656 = phi i32 [ 0, %.lr.ph511 ], [ %indvar.next657, %._crit_edge508 ] ; 2 uses
  %indvars.iv545 = phi i32 [ %i.id, %.lr.ph511 ], [ %indvars.iv.next546, %._crit_edge508 ] ; 4 uses
  %.1357510 = phi i32 [ 1, %.lr.ph511 ], [ %i.kj, %._crit_edge508 ] ; 3 uses
  %25 = add i32 %i.if, %indvar656
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 %i.cu)
  %27 = tail call i32 @llvm.smin.i32(i32 %26, i32 %i.co)
  %28 = tail call i32 @llvm.smax.i32(i32 %27, i32 %indvars.iv545)
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 %i.cs)
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 %i.cm)
  %smax662 = sext i32 %30 to i64
  %31 = add nsw i64 %smax662, 1
  %32 = tail call i32 @llvm.smax.i32(i32 %indvars.iv545, i32 %i.cs)
  %33 = tail call i32 @llvm.smax.i32(i32 %32, i32 %i.cm)
  %smax664 = sext i32 %33 to i64
  %34 = sub nsw i64 %31, %smax664                 ; 3 uses
  %i.ih = tail call i32 @llvm.smax.i32(i32 %indvars.iv545, i32 %i.cs)
  %i.ii = tail call i32 @llvm.smax.i32(i32 %i.ih, i32 %i.cm)
  %smax557 = sext i32 %i.ii to i64                ; 4 uses
  %i.ij = sub nsw i32 %i.cr, %.1357510
  %i.ik = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 %i.ij) ; 2 uses
  %i.il = add nsw i32 %.1357510, %i.cr
  %i.im = tail call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.il) ; 4 uses
  %.not402501 = icmp sgt i32 %i.ik, %i.im
  br i1 %.not402501, label %._crit_edge508, label %.lr.ph504.preheader

.lr.ph504.preheader:                              ; preds = %bb.ao
  %i.in = sext i32 %i.im to i64
  br label %.lr.ph504

.lr.ph507.preheader:                              ; preds = %rsnake.exit467
  %i.io = sext i32 %i.im to i64
  %min.iters.check666 = icmp ult i64 %34, 8
  %or.cond679 = select i1 %min.iters.check666, i1 true, i1 %diff.check655
  br i1 %or.cond679, label %.lr.ph507.preheader686, label %vector.ph667

vector.ph667:                                     ; preds = %.lr.ph507.preheader
  %n.vec669 = and i64 %34, -8                     ; 3 uses
  %i.ip = add nsw i64 %n.vec669, %smax557
  br label %vector.body670

vector.body670:                                   ; preds = %vector.body670, %vector.ph667
  %index671 = phi i64 [ 0, %vector.ph667 ], [ %index.next674, %vector.body670 ] ; 2 uses
  %i.iq = add i64 %index671, %smax557             ; 2 uses
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.iq ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %wide.load672 = load <4 x i32>, ptr %i.ir, align 4, !tbaa !4
  %wide.load673 = load <4 x i32>, ptr %i.is, align 4, !tbaa !4
  %i.it = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %i.iq ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store <4 x i32> %wide.load672, ptr %i.it, align 4, !tbaa !4
  store <4 x i32> %wide.load673, ptr %i.iu, align 4, !tbaa !4
  %index.next674 = add nuw i64 %index671, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next674, %n.vec669
  br i1 %i.iv, label %middle.block675, label %vector.body670, !llvm.loop !29

middle.block675:                                  ; preds = %vector.body670
  %cmp.n676 = icmp eq i64 %34, %n.vec669
  br i1 %cmp.n676, label %._crit_edge508, label %.lr.ph507.preheader686

.lr.ph507.preheader686:                           ; preds = %.lr.ph507.preheader, %middle.block675
  %indvars.iv558.ph = phi i64 [ %smax557, %.lr.ph507.preheader ], [ %i.ip, %middle.block675 ]
  br label %.lr.ph507

.lr.ph504:                                        ; preds = %.lr.ph504.preheader, %rsnake.exit467
  %indvars.iv549 = phi i64 [ %smax557, %.lr.ph504.preheader ], [ %indvars.iv.next550, %rsnake.exit467 ] ; 6 uses
  %i.iw = trunc nsw i64 %indvars.iv549 to i32     ; 3 uses
  %i.ix = icmp eq i32 %i.ik, %i.iw
  br i1 %i.ix, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph504
  %i.iy = getelementptr [4 x i8], ptr %i.gm, i64 %indvars.iv549
  %i.iz = getelementptr i8, ptr %i.iy, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !4
  br label %bb.at

bb.aq:                                            ; preds = %.lr.ph504
  %i.jb = icmp eq i32 %i.im, %i.iw
  %i.jc = getelementptr [4 x i8], ptr %i.gm, i64 %indvars.iv549 ; 4 uses
  br i1 %i.jb, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jd = getelementptr i8, ptr %i.jc, i64 -4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !4
  %i.jf = add nsw i32 %i.je, -1
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !4  ; 3 uses
  %i.jh = add nsw i32 %i.jg, -1                   ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jc, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !4  ; 3 uses
  %.not404 = icmp sgt i32 %i.jh, %i.jj
  %.phi.trans.insert569 = getelementptr i8, ptr %i.jc, i64 -4
  %.pre570 = load i32, ptr %.phi.trans.insert569, align 4, !tbaa !4 ; 3 uses
  %.not405 = icmp sgt i32 %i.jg, %.pre570
  %or.cond612 = select i1 %.not404, i1 true, i1 %.not405
  br i1 %or.cond612, label %._crit_edge568, label %bb.at

._crit_edge568:                                   ; preds = %bb.as
  %i.jk = add nsw i32 %.pre570, -1
  %.not407 = icmp sgt i32 %.pre570, %i.jg
  %i.jl = tail call i32 @llvm.smin.i32(i32 %i.jk, i32 %i.jj)
  %spec.select473 = select i1 %.not407, i32 %i.jj, i32 %i.jl
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge568, %bb.ar, %bb.ap
  %.1353 = phi i32 [ %i.ja, %bb.ap ], [ %i.jf, %bb.ar ], [ %spec.select473, %._crit_edge568 ], [ %i.jh, %bb.as ] ; 6 uses
  %i.jm = icmp sgt i32 %.1353, %9
  br i1 %i.jm, label %rsnake.exit467, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %or.cond.not.i459, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jn = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.jo = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jn, ptr noundef nonnull @.str.8, i32 noundef %2, i32 noundef %3) #13 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jp = add nsw i32 %.1353, %i.iw               ; 4 uses
  %i.jq = icmp sgt i32 %i.jp, %10
  br i1 %i.jq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jr = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.js = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jr, ptr noundef nonnull @.str.9, i32 noundef %.1353, i32 noundef %i.jp) #13 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.jt = sext i32 %.1353 to i64                  ; 2 uses
  %i.ju = icmp sgt i32 %.1353, %2
  %i.jv = icmp sgt i32 %i.jp, %3
  %or.cond.i462629 = and i1 %i.jv, %i.ju
  br i1 %or.cond.i462629, label %.lr.ph633, label %.critedge.loopexit.i463

.lr.ph633:                                        ; preds = %bb.ay
  %i.jw = sext i32 %i.jp to i64
  br label %bb.ba

bb.az:                                            ; preds = %bb.ba
  %i.jx = icmp sgt i64 %indvars.iv.next.i465, %i.ia
  %i.jy = icmp sgt i64 %indvars.iv.next32.i466, %i.ib
  %or.cond.i462 = and i1 %i.jy, %i.jx
  br i1 %or.cond.i462, label %bb.ba, label %.critedge.loopexit.i463, !llvm.loop !28

bb.ba:                                            ; preds = %.lr.ph633, %bb.az
  %indvars.iv.i461631 = phi i64 [ %i.jt, %.lr.ph633 ], [ %indvars.iv.next.i465, %bb.az ] ; 2 uses
  %indvars.iv31.i460630 = phi i64 [ %i.jw, %.lr.ph633 ], [ %indvars.iv.next32.i466, %bb.az ]
  %indvars.iv.next.i465 = add nsw i64 %indvars.iv.i461631, -1 ; 4 uses
  %i.jz = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next.i465
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !15
  %indvars.iv.next32.i466 = add nsw i64 %indvars.iv31.i460630, -1 ; 3 uses
  %i.kb = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next32.i466
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !15
  %i.kd = icmp eq i8 %i.ka, %i.kc
  br i1 %i.kd, label %bb.az, label %..critedge.loopexit.i463_crit_edge, !llvm.loop !28

..critedge.loopexit.i463_crit_edge:               ; preds = %bb.ba
  br label %.critedge.loopexit.i463, !llvm.loop !28

.critedge.loopexit.i463:                          ; preds = %bb.az, %..critedge.loopexit.i463_crit_edge, %bb.ay
  %indvars.iv.i461.lcssa = phi i64 [ %indvars.iv.i461631, %..critedge.loopexit.i463_crit_edge ], [ %i.jt, %bb.ay ], [ %indvars.iv.next.i465, %bb.az ]
  %i.ke = trunc nsw i64 %indvars.iv.i461.lcssa to i32
  br label %rsnake.exit467

rsnake.exit467:                                   ; preds = %bb.at, %.critedge.loopexit.i463
  %.027.i464 = phi i32 [ %.1353, %bb.at ], [ %i.ke, %.critedge.loopexit.i463 ]
  %i.kf = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %indvars.iv549
  store i32 %.027.i464, ptr %i.kf, align 4, !tbaa !4
  %indvars.iv.next550 = add nsw i64 %indvars.iv549, 1
  %.not402.not = icmp slt i64 %indvars.iv549, %i.in
  br i1 %.not402.not, label %.lr.ph504, label %.lr.ph507.preheader, !llvm.loop !30

.lr.ph507:                                        ; preds = %.lr.ph507.preheader686, %.lr.ph507
  %indvars.iv558 = phi i64 [ %indvars.iv.next559, %.lr.ph507 ], [ %indvars.iv558.ph, %.lr.ph507.preheader686 ] ; 4 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %indvars.iv558
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !4
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %indvars.iv558
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !4
  %indvars.iv.next559 = add nsw i64 %indvars.iv558, 1
  %.not403.not = icmp slt i64 %indvars.iv558, %i.io
  br i1 %.not403.not, label %.lr.ph507, label %._crit_edge508, !llvm.loop !31

._crit_edge508:                                   ; preds = %.lr.ph507, %middle.block675, %bb.ao
  %i.kj = add nuw i32 %.1357510, 1                ; 2 uses
  %indvars.iv.next546 = add i32 %indvars.iv545, -1
  %exitcond560.not = icmp eq i32 %i.kj, %23
  %indvar.next657 = add i32 %indvar656, 1
  br i1 %exitcond560.not, label %._crit_edge512, label %bb.ao, !llvm.loop !32

._crit_edge512:                                   ; preds = %._crit_edge508, %rsnake.exit
  %i.kk = tail call i32 @llvm.smax.i32(i32 %., i32 %i.ct) ; 2 uses
  %i.kl = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cv) ; 2 uses
  %.not396513 = icmp sgt i32 %i.kk, %i.kl
  br i1 %.not396513, label %._crit_edge517, label %.lr.ph516.preheader

.lr.ph516.preheader:                              ; preds = %._crit_edge512
  %i.km = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 %i.cn)
  %i.kn = tail call i32 @llvm.smax.i32(i32 %i.km, i32 %i.cm) ; 2 uses
  %smax562 = sext i32 %i.kn to i64
  %i.ko = add i32 %i.kl, %i.kn
  %i.kp = add i32 %i.ko, 1
  %i.kq = sub i32 %i.kp, %i.kk
  br label %.lr.ph516

.lr.ph516:                                        ; preds = %.lr.ph516.preheader, %bb.bb
  %indvars.iv563 = phi i64 [ %smax562, %.lr.ph516.preheader ], [ %indvars.iv.next564, %bb.bb ] ; 4 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %indvars.iv563
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !4  ; 3 uses
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.gm, i64 %indvars.iv563
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !4  ; 3 uses
  %.not397 = icmp slt i32 %i.ks, %i.ku
  br i1 %.not397, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph516
  %indvars.iv.next564 = add nsw i64 %indvars.iv563, 1 ; 2 uses
  %lftr.wideiv565 = trunc i64 %indvars.iv.next564 to i32
  %exitcond566.not = icmp eq i32 %i.kq, %lftr.wideiv565
  br i1 %exitcond566.not, label %._crit_edge517, label %.lr.ph516, !llvm.loop !33

bb.bc:                                            ; preds = %.lr.ph516
  %i.kv = trunc nsw i64 %indvars.iv563 to i32
  %i.kw = sub nsw i32 %i.ks, %2
  %i.kx = sub nsw i32 %4, %i.ku
  %.not398 = icmp slt i32 %i.kw, %i.kx
  %.418 = select i1 %.not398, i32 %i.ku, i32 %i.ks ; 3 uses
  %.0349 = add nsw i32 %.418, %i.kv               ; 2 uses
  tail call void @free(ptr noundef nonnull %i.cz) #11
  tail call void @free(ptr noundef nonnull %i.gi) #11
  tail call void @free(ptr noundef %i.de) #11
  tail call void @free(ptr noundef %i.gn) #11
  call void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %.418, i32 noundef %.0349, i32 noundef %i.cj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %9, i32 noundef %10)
  call void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %.418, i32 noundef %.0349, i32 noundef %4, i32 noundef %5, i32 noundef %i.ck, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %9, i32 noundef %10)
  %i.ky = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %.not400 = icmp eq ptr %i.ky, null
  %i.kz = load ptr, ptr %i.c, align 8, !tbaa !8   ; 4 uses
  %.val.pre = load ptr, ptr %i.b, align 8         ; 3 uses
  br i1 %.not400, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.kz, ptr %.val.pre, align 8, !tbaa !14
  br label %bb.be

._crit_edge517:                                   ; preds = %bb.bb, %._crit_edge512
  tail call void @free(ptr noundef %i.cz) #11
  tail call void @free(ptr noundef %i.gi) #11
  tail call void @free(ptr noundef %i.de) #11
  tail call void @free(ptr noundef %i.gn) #11
  %i.la = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.lb = tail call i64 @fwrite(ptr nonnull @.str.1, i64 48, i64 1, ptr %i.la) #12 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %._crit_edge517
  %.val = phi ptr [ %.val.pre, %bb.bd ], [ undef, %._crit_edge517 ], [ %.val.pre, %bb.bc ]
  %i.lc = phi ptr [ %i.kz, %bb.bd ], [ undef, %._crit_edge517 ], [ %i.kz, %bb.bc ]
  %i.ld = phi ptr [ %i.ky, %bb.bd ], [ null, %._crit_edge517 ], [ %i.kz, %bb.bc ]
  store ptr %i.ld, ptr %7, align 8, !tbaa !8
  %.not401 = icmp eq ptr %i.lc, null
  %.val474 = load ptr, ptr %i.d, align 8
  %storemerge = select i1 %.not401, ptr %.val, ptr %.val474
  store ptr %storemerge, ptr %8, align 8, !tbaa !8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.i, %bb.t, %bb.s, %snake.exit431.thread, %snake.exit.thread, %bb.n, %bb.be, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @align_get_dist(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 %3, %2                       ; 5 uses
  %i.b = sub i32 %3, %4                           ; 4 uses
  %i.c = sub i32 %i.a, %6                         ; 4 uses
  %. = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.c) ; 8 uses
  %i.d = sub nsw i32 %5, %2                       ; 2 uses
  %i.e = add nsw i32 %6, %i.a                     ; 2 uses
  %i.f = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.e) ; 6 uses
  %i.g = sub nsw i32 %5, %4                       ; 3 uses
  %i.h = icmp sgt i32 %i.g, %i.f
  %i.i = icmp slt i32 %i.g, %.
  %or.cond = or i1 %i.h, %i.i
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub = sub i32 %i.f, %.
  %i.j = add i32 %reass.sub, 1
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2                      ; 2 uses
  %i.m = tail call ptr @xmalloc(i64 noundef %i.l) #11 ; 4 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = sext i32 %. to i64                       ; 3 uses
  %i.p = sub nsw i64 0, %i.o                      ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.p ; 7 uses
  %i.r = tail call ptr @xmalloc(i64 noundef %i.l) #11 ; 3 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.p ; 3 uses
  %.not166 = icmp sgt i32 %., %i.f
  br i1 %.not166, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.u = add i32 %i.f, %.
  %i.v = add i32 %i.u, 1
  %i.w = sub i32 %i.v, %.
  %i.x = sub i32 %i.f, %.                         ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.x, 7
  br i1 %min.iters.check, label %.lr.ph.preheader242, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.z, 8589934584               ; 3 uses
  %i.aa = add nsw i64 %n.vec, %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %i.ab, align 4, !tbaa !4
  store <4 x i32> splat (i32 -2147483648), ptr %i.ac, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader242

.lr.ph.preheader242:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.o, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader242, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader242 ] ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv
  store i32 -2147483648, ptr %i.ae, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %i.af = icmp slt i32 %2, 0
  br i1 %i.af, label %snake.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ag = icmp slt i32 %2, %4
  %i.ah = icmp slt i32 %3, %5
  %or.cond18.i = and i1 %i.ag, %i.ah
  br i1 %or.cond18.i, label %.lr.ph.preheader.i, label %snake.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.ai = sext i32 %3 to i64
  %i.aj = sext i32 %5 to i64
  %i.ak = zext nneg i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv23.i = phi i64 [ %i.ak, %.lr.ph.preheader.i ], [ %indvars.iv.next24.i, %bb.d ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.ai, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv23.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !15
  %i.ap = icmp eq i8 %i.am, %i.ao
  br i1 %i.ap, label %bb.d, label %.critedge.loopexit.split.loop.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %indvars26.i = trunc i64 %indvars.iv.next24.i to i32 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = icmp sgt i32 %4, %indvars26.i
  %i.ar = icmp slt i64 %indvars.iv.next.i, %i.aj
  %or.cond.i = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %snake.exit, !llvm.loop !16

.critedge.loopexit.split.loop.exit.i:             ; preds = %.lr.ph.i
  %i.as = trunc nuw i64 %indvars.iv23.i to i32
  br label %snake.exit

snake.exit:                                       ; preds = %bb.d, %._crit_edge, %bb.c, %.critedge.loopexit.split.loop.exit.i
  %.015.i = phi i32 [ %2, %._crit_edge ], [ %2, %bb.c ], [ %i.as, %.critedge.loopexit.split.loop.exit.i ], [ %indvars26.i, %bb.d ]
  %i.at = sext i32 %i.a to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.at
  store i32 %.015.i, ptr %i.au, align 4, !tbaa !4
  %i.av = sext i32 %i.g to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %.not140 = icmp slt i32 %i.ax, %4
  br i1 %.not140, label %.preheader162, label %.loopexit.sink.split

.preheader162:                                    ; preds = %snake.exit
  %.not141176 = icmp slt i32 %6, 1
  br i1 %.not141176, label %.loopexit, label %.lr.ph178

.lr.ph178:                                        ; preds = %.preheader162
  %i.ay = sext i32 %5 to i64
  %i.az = xor i32 %2, -1
  %7 = add i32 %3, %i.az
  %i.ba = add i32 %3, 1
  %8 = sub i32 %i.ba, %2
  %i.bb = sub i64 %i.s, %i.n
  %diff.check = icmp ugt i64 %i.bb, -32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph178, %bb.o
  %indvar = phi i32 [ 0, %.lr.ph178 ], [ %indvar.next, %bb.o ] ; 2 uses
  %indvars.iv182 = phi i32 [ %7, %.lr.ph178 ], [ %indvars.iv.next183, %bb.o ] ; 4 uses
  %.0124177 = phi i32 [ 1, %.lr.ph178 ], [ %i.dd, %bb.o ] ; 5 uses
  %9 = add i32 %8, %indvar
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %i.e)
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %i.d)
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 %indvars.iv182)
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 %i.c)
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 %i.b)
  %smax222 = sext i32 %14 to i64
  %15 = add nsw i64 %smax222, 1
  %16 = tail call i32 @llvm.smax.i32(i32 %indvars.iv182, i32 %i.c)
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 %i.b)
  %smax224 = sext i32 %17 to i64
  %18 = sub nsw i64 %15, %smax224                 ; 3 uses
  %i.bc = tail call i32 @llvm.smax.i32(i32 %indvars.iv182, i32 %i.c)
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 %i.b)
  %smax193 = sext i32 %i.bd to i64                ; 4 uses
  %i.be = sub nsw i32 %i.a, %.0124177
  %i.bf = tail call i32 @llvm.smax.i32(i32 %., i32 %i.be) ; 2 uses
  %i.bg = add nsw i32 %.0124177, %i.a
  %i.bh = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.bg) ; 4 uses
  %.not142168 = icmp sgt i32 %i.bf, %i.bh
  br i1 %.not142168, label %._crit_edge175, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %bb.e
  %i.bi = sext i32 %i.bh to i64
  br label %.lr.ph171

.lr.ph174.preheader:                              ; preds = %snake.exit160
  %i.bj = sext i32 %i.bh to i64
  %min.iters.check226 = icmp ult i64 %18, 8
  %or.cond237 = select i1 %min.iters.check226, i1 true, i1 %diff.check
  br i1 %or.cond237, label %.lr.ph174.preheader238, label %vector.ph227

vector.ph227:                                     ; preds = %.lr.ph174.preheader
  %n.vec229 = and i64 %18, -8                     ; 3 uses
  %i.bk = add nsw i64 %n.vec229, %smax193
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph227
  %index231 = phi i64 [ 0, %vector.ph227 ], [ %index.next233, %vector.body230 ] ; 2 uses
  %i.bl = add i64 %index231, %smax193             ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load = load <4 x i32>, ptr %i.bm, align 4, !tbaa !4
  %wide.load232 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !4
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.bl ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %wide.load, ptr %i.bo, align 4, !tbaa !4
  store <4 x i32> %wide.load232, ptr %i.bp, align 4, !tbaa !4
  %index.next233 = add nuw i64 %index231, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next233, %n.vec229
  br i1 %i.bq, label %middle.block234, label %vector.body230, !llvm.loop !36

middle.block234:                                  ; preds = %vector.body230
  %cmp.n235 = icmp eq i64 %18, %n.vec229
  br i1 %cmp.n235, label %._crit_edge175, label %.lr.ph174.preheader238

.lr.ph174.preheader238:                           ; preds = %.lr.ph174.preheader, %middle.block234
  %indvars.iv194.ph = phi i64 [ %smax193, %.lr.ph174.preheader ], [ %i.bk, %middle.block234 ]
  br label %.lr.ph174

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %snake.exit160
  %indvars.iv185 = phi i64 [ %smax193, %.lr.ph171.preheader ], [ %indvars.iv.next186, %snake.exit160 ] ; 6 uses
  %i.br = trunc nsw i64 %indvars.iv185 to i32     ; 3 uses
  %i.bs = icmp eq i32 %i.bf, %i.br
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph171
  %i.bt = getelementptr [4 x i8], ptr %i.q, i64 %indvars.iv185
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = add nsw i32 %i.bv, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph171
  %i.bx = icmp eq i32 %i.bh, %i.br
  %i.by = getelementptr [4 x i8], ptr %i.q, i64 %indvars.iv185 ; 5 uses
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cb = load i32, ptr %i.by, align 4, !tbaa !4  ; 3 uses
  %i.cc = getelementptr i8, ptr %i.by, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4  ; 3 uses
  %.not145 = icmp slt i32 %i.cb, %i.cd
  br i1 %.not145, label %._crit_edge197, label %bb.j

._crit_edge197:                                   ; preds = %bb.i
  %.phi.trans.insert = getelementptr i8, ptr %i.by, i64 -4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ce = add nsw i32 %i.cb, 1                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.by, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4  ; 2 uses
  %.not146 = icmp slt i32 %i.ce, %i.cg
  br i1 %.not146, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge197, %bb.j
  %i.ch = phi i32 [ %.pre, %._crit_edge197 ], [ %i.cg, %bb.j ] ; 2 uses
  %i.ci = add nsw i32 %i.cd, 1
  %.not148 = icmp slt i32 %i.cd, %i.cb
  %i.cj = tail call i32 @llvm.smax.i32(i32 %i.ci, i32 %i.ch)
  %spec.select = select i1 %.not148, i32 %i.ch, i32 %i.cj
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.0126 = phi i32 [ %i.bw, %bb.f ], [ %i.ca, %bb.h ], [ %spec.select, %bb.k ], [ %i.ce, %bb.j ] ; 6 uses
  %i.ck = icmp slt i32 %.0126, 0
  br i1 %i.ck, label %snake.exit160, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = add i32 %.0126, %i.br                   ; 2 uses
  %i.cm = icmp slt i32 %.0126, %4
  %i.cn = icmp slt i32 %i.cl, %5
  %or.cond18.i149 = and i1 %i.cm, %i.cn
  br i1 %or.cond18.i149, label %.lr.ph.preheader.i151, label %snake.exit160

.lr.ph.preheader.i151:                            ; preds = %bb.m
  %i.co = sext i32 %i.cl to i64
  %i.cp = zext nneg i32 %.0126 to i64
  br label %.lr.ph.i152

.lr.ph.i152:                                      ; preds = %bb.n, %.lr.ph.preheader.i151
  %indvars.iv23.i153 = phi i64 [ %i.cp, %.lr.ph.preheader.i151 ], [ %indvars.iv.next24.i156, %bb.n ] ; 3 uses
  %indvars.iv.i154 = phi i64 [ %i.co, %.lr.ph.preheader.i151 ], [ %indvars.iv.next.i158, %bb.n ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv23.i153
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15
  %i.cs = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i154
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !15
  %i.cu = icmp eq i8 %i.cr, %i.ct
  br i1 %i.cu, label %bb.n, label %.critedge.loopexit.split.loop.exit.i155

bb.n:                                             ; preds = %.lr.ph.i152
  %indvars.iv.next24.i156 = add nuw nsw i64 %indvars.iv23.i153, 1 ; 2 uses
  %indvars26.i157 = trunc i64 %indvars.iv.next24.i156 to i32 ; 2 uses
  %indvars.iv.next.i158 = add nsw i64 %indvars.iv.i154, 1 ; 2 uses
  %i.cv = icmp sgt i32 %4, %indvars26.i157
  %i.cw = icmp slt i64 %indvars.iv.next.i158, %i.ay
  %or.cond.i159 = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond.i159, label %.lr.ph.i152, label %snake.exit160, !llvm.loop !16

.critedge.loopexit.split.loop.exit.i155:          ; preds = %.lr.ph.i152
  %i.cx = trunc nuw i64 %indvars.iv23.i153 to i32
  br label %snake.exit160

snake.exit160:                                    ; preds = %bb.n, %bb.l, %bb.m, %.critedge.loopexit.split.loop.exit.i155
  %.015.i150 = phi i32 [ %.0126, %bb.l ], [ %.0126, %bb.m ], [ %i.cx, %.critedge.loopexit.split.loop.exit.i155 ], [ %indvars26.i157, %bb.n ]
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv185
  store i32 %.015.i150, ptr %i.cy, align 4, !tbaa !4
  %indvars.iv.next186 = add nsw i64 %indvars.iv185, 1
  %.not142.not = icmp slt i64 %indvars.iv185, %i.bi
  br i1 %.not142.not, label %.lr.ph171, label %.lr.ph174.preheader, !llvm.loop !37

.lr.ph174:                                        ; preds = %.lr.ph174.preheader238, %.lr.ph174
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %.lr.ph174 ], [ %indvars.iv194.ph, %.lr.ph174.preheader238 ] ; 4 uses
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv194
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv194
  store i32 %i.da, ptr %i.db, align 4, !tbaa !4
  %indvars.iv.next195 = add nsw i64 %indvars.iv194, 1
  %.not143.not = icmp slt i64 %indvars.iv194, %i.bj
  br i1 %.not143.not, label %.lr.ph174, label %._crit_edge175, !llvm.loop !38

._crit_edge175:                                   ; preds = %.lr.ph174, %middle.block234, %bb.e
  %i.dc = load i32, ptr %i.aw, align 4, !tbaa !4
  %.not144 = icmp slt i32 %i.dc, %4
  br i1 %.not144, label %bb.o, label %.loopexit.sink.split

bb.o:                                             ; preds = %._crit_edge175
  %i.dd = add nuw i32 %.0124177, 1
  %indvars.iv.next183 = add i32 %indvars.iv182, -1
  %exitcond196.not = icmp eq i32 %.0124177, %6
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond196.not, label %.loopexit, label %bb.e, !llvm.loop !39

.loopexit.sink.split:                             ; preds = %._crit_edge175, %snake.exit
  %.0.ph = phi i32 [ 0, %snake.exit ], [ %.0124177, %._crit_edge175 ]
  tail call void @free(ptr noundef nonnull %i.m) #11
  tail call void @free(ptr noundef %i.r) #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.loopexit.sink.split, %.preheader162, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %.preheader162 ], [ %.0.ph, %.loopexit.sink.split ], [ -1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @Condense_both_Ends(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !8
  %.not22 = icmp eq ptr %i.a, null
  br i1 %.not22, label %._crit_edge25, label %.preheader

.preheader:                                       ; preds = %bb.a, %.critedge
  %.023 = phi ptr [ %i.p, %.critedge ], [ %i.a, %bb.a ] ; 7 uses
  %i.b = load ptr, ptr %.023, align 8, !tbaa !14  ; 2 uses
  %.not1921 = icmp eq ptr %i.b, null
  br i1 %.not1921, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %.023, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %.023, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.e = phi ptr [ %i.b, %.lr.ph ], [ %i.o, %bb.c ] ; 4 uses
  %i.f = load i8, ptr %i.c, align 4, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.h = load i8, ptr %i.g, align 4, !tbaa !11
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.d, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !13
  %i.m = add nsw i32 %i.l, %i.j
  store i32 %i.m, ptr %i.d, align 8, !tbaa !13
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !14
  store ptr %i.n, ptr %.023, align 8, !tbaa !14
  tail call void @free(ptr noundef nonnull %i.e) #11
  %i.o = load ptr, ptr %.023, align 8, !tbaa !14  ; 2 uses
  %.not19 = icmp eq ptr %i.o, null
  br i1 %.not19, label %.critedge, label %bb.b, !llvm.loop !40

.critedge:                                        ; preds = %bb.c, %bb.b, %.preheader
  %.sink = phi ptr [ %1, %.preheader ], [ %2, %bb.b ], [ %1, %bb.c ]
  store ptr %.023, ptr %.sink, align 8, !tbaa !8
  %i.p = load ptr, ptr %.023, align 8, !tbaa !14  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %._crit_edge25, label %.preheader, !llvm.loop !41

._crit_edge25:                                    ; preds = %.critedge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @S2A(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not27 = icmp eq ptr %0, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.a
  %.not24 = icmp eq i32 %2, 0
  br i1 %.not24, label %.lr.ph31.split.us.split.us, label %.lr.ph31.split.split

.lr.ph31.split.us.split.us:                       ; preds = %.lr.ph31, %.loopexit.us.us
  %.02030.us.us = phi ptr [ %.2.us.us, %.loopexit.us.us ], [ %1, %.lr.ph31 ] ; 4 uses
  %.02128.us.us = phi ptr [ %i.k, %.loopexit.us.us ], [ %0, %.lr.ph31 ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.02128.us.us, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %.02128.us.us, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  switch i8 %i.b, label %bb.b [
    i8 3, label %.preheader.us.us
    i8 2, label %.loopexit.us.us.sink.split
  ]

.lr.ph.us.us:                                     ; preds = %.preheader.us.us, %.lr.ph.us.us
  %.026.us.us = phi i32 [ %i.f, %.lr.ph.us.us ], [ 0, %.preheader.us.us ]
  %.125.us.us = phi ptr [ %i.e, %.lr.ph.us.us ], [ %.02030.us.us, %.preheader.us.us ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.125.us.us, i64 4 ; 2 uses
  store i32 0, ptr %.125.us.us, align 4, !tbaa !4
  %i.f = add nuw nsw i32 %.026.us.us, 1           ; 2 uses
  %i.g = load i32, ptr %i.c, align 8, !tbaa !13
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.us.us, label %.loopexit.us.us, !llvm.loop !42

bb.b:                                             ; preds = %.lr.ph31.split.us.split.us
  %i.i = sub nsw i32 0, %i.d
  br label %.loopexit.us.us.sink.split

.loopexit.us.us.sink.split:                       ; preds = %.lr.ph31.split.us.split.us, %bb.b
  %.sink = phi i32 [ %i.i, %bb.b ], [ %i.d, %.lr.ph31.split.us.split.us ]
  %i.j = getelementptr inbounds nuw i8, ptr %.02030.us.us, i64 4
  store i32 %.sink, ptr %.02030.us.us, align 4, !tbaa !4
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.lr.ph.us.us, %.loopexit.us.us.sink.split, %.preheader.us.us
  %.2.us.us = phi ptr [ %.02030.us.us, %.preheader.us.us ], [ %i.j, %.loopexit.us.us.sink.split ], [ %i.e, %.lr.ph.us.us ] ; 2 uses
  %i.k = load ptr, ptr %.02128.us.us, align 8, !tbaa !14 ; 2 uses
  %.not.us.us = icmp eq ptr %i.k, null
  br i1 %.not.us.us, label %._crit_edge, label %.lr.ph31.split.us.split.us, !llvm.loop !43

.preheader.us.us:                                 ; preds = %.lr.ph31.split.us.split.us
  %i.l = icmp sgt i32 %i.d, 0
  br i1 %i.l, label %.lr.ph.us.us, label %.loopexit.us.us

.lr.ph31.split.split:                             ; preds = %.lr.ph31, %.loopexit
  %.02030 = phi ptr [ %.2, %.loopexit ], [ %1, %.lr.ph31 ] ; 4 uses
  %.02128 = phi ptr [ %i.x, %.loopexit ], [ %0, %.lr.ph31 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02128, i64 12
  %i.n = load i8, ptr %i.m, align 4, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %.02128, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !13   ; 3 uses
  switch i8 %i.n, label %.loopexit.sink.split [
    i8 3, label %.preheader
    i8 2, label %bb.c
  ]

.preheader:                                       ; preds = %.lr.ph31.split.split
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.026 = phi i32 [ %i.s, %.lr.ph ], [ 0, %.preheader ]
  %.125 = phi ptr [ %i.r, %.lr.ph ], [ %.02030, %.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.125, i64 4 ; 2 uses
  store i32 0, ptr %.125, align 4, !tbaa !4
  %i.s = add nuw nsw i32 %.026, 1                 ; 2 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !13
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.loopexit, !llvm.loop !42

bb.c:                                             ; preds = %.lr.ph31.split.split
  %i.v = sub nsw i32 0, %i.p
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.lr.ph31.split.split, %bb.c
  %.sink54 = phi i32 [ %i.v, %bb.c ], [ %i.p, %.lr.ph31.split.split ]
  %i.w = getelementptr inbounds nuw i8, ptr %.02030, i64 4
  store i32 %.sink54, ptr %.02030, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %.preheader
  %.2 = phi ptr [ %.02030, %.preheader ], [ %i.w, %.loopexit.sink.split ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.x = load ptr, ptr %.02128, align 8, !tbaa !14 ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %._crit_edge, label %.lr.ph31.split.split, !llvm.loop !43

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us.us, %bb.a
  %.020.lcssa = phi ptr [ %1, %bb.a ], [ %.2.us.us, %.loopexit.us.us ], [ %.2, %.loopexit ]
  %i.y = ptrtoint ptr %.020.lcssa to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 2
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IDISPLAY(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.a = getelementptr i8, ptr %7, i64 8          ; 2 uses
  %.val198 = load i32, ptr %i.a, align 8, !tbaa !44 ; 3 uses
  %i.b = add i32 %.val198, -1                     ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !48
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 68), align 4, !tbaa !50
  %i.i = add i32 %i.h, %i.g                       ; 2 uses
  %.not1.i = icmp ult i32 %i.i, 10
  br i1 %.not1.i, label %get_pos_width.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.03.i = phi i32 [ %i.k, %.lr.ph.i ], [ 1, %bb.a ]
  %.052.i = phi i32 [ %i.j, %.lr.ph.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.j = udiv i32 %.052.i, 10
  %i.k = add i32 %.03.i, 1                        ; 2 uses
  %.not.i = icmp ult i32 %.052.i, 100
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !54

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.l = tail call i32 @llvm.umax.i32(i32 %i.k, i32 7)
  br label %get_pos_width.exit

get_pos_width.exit:                               ; preds = %bb.a, %._crit_edge.loopexit.i
end_hunk_0
