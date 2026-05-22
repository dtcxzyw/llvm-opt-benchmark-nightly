inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@align_path:bb.a
  store ptr %i.s, ptr %8, align 8, !tbaa !8
  store ptr %i.s, ptr %7, align 8, !tbaa !8
  br label %bb.bg

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
  %.616 = select i1 %.not415, ptr %7, ptr %i.as
  store ptr %i.at, ptr %.616, align 8, !tbaa !8
  store ptr %i.at, ptr %8, align 8, !tbaa !8
  store ptr null, ptr %i.at, align 8, !tbaa !14
  %.not416 = icmp eq i32 %4, %.015.i469
  br i1 %.not416, label %bb.bg, label %bb.n

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
  br label %bb.bg

bb.o:                                             ; preds = %bb.j
  %i.bb = add nsw i32 %i.w, 1
  %i.bc = icmp eq i32 %i.bb, %i.x
  br i1 %i.bc, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bd = icmp sgt i32 %2, -1
  %i.be = icmp slt i32 %3, %5
  %or.cond522 = and i1 %i.bd, %i.be
  br i1 %or.cond522, label %.lr.ph.preheader.i422, label %snake.exit431.thread

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
  %.617 = select i1 %.not414, ptr %7, ptr %i.bv
  store ptr %i.bw, ptr %.617, align 8, !tbaa !8
  store ptr %i.bw, ptr %8, align 8, !tbaa !8
  store ptr null, ptr %i.bw, align 8, !tbaa !14
  %i.ca = add nsw i32 %.015.i421471, 1
  %i.cb = icmp sgt i32 %4, %i.ca
  br i1 %i.cb, label %bb.s, label %bb.bg

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
  br label %bb.bg

bb.t:                                             ; preds = %bb.o
  %i.ch = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.ci = tail call i64 @fwrite(ptr nonnull @.str, i64 48, i64 1, ptr %i.ch) #12 ; 0 uses
  br label %bb.bg

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
  %.not484 = icmp sgt i32 %., %i.cq
  br i1 %.not484, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.u
  %i.dh = zext i32 %reass.sub to i64
  %i.di = shl nuw nsw i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cz, i8 -1, i64 %i.dj, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.u
  %i.dk = icmp slt i32 %2, 0
  br i1 %i.dk, label %.lr.ph496, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.dl = icmp slt i32 %2, %4
  %i.dm = icmp slt i32 %3, %5
  %or.cond18.i432 = and i1 %i.dl, %i.dm
  br i1 %or.cond18.i432, label %.lr.ph.preheader.i434, label %.lr.ph496

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
  br i1 %or.cond.i442, label %.lr.ph.i435, label %.lr.ph496, !llvm.loop !16

.critedge.loopexit.split.loop.exit.i438:          ; preds = %.lr.ph.i435
  %i.dx = trunc nuw i64 %indvars.iv23.i436 to i32
  br label %.lr.ph496

.lr.ph496:                                        ; preds = %bb.w, %.critedge.loopexit.split.loop.exit.i438, %bb.v, %._crit_edge
  %.015.i433 = phi i32 [ %2, %._crit_edge ], [ %2, %bb.v ], [ %i.dx, %.critedge.loopexit.split.loop.exit.i438 ], [ %indvars26.i440, %bb.w ]
  %i.dy = sext i32 %i.cl to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.dy
  store i32 %.015.i433, ptr %i.dz, align 4, !tbaa !4
  %i.ea = sext i32 %5 to i64
  %i.eb = xor i32 %2, -1
  %i.ec = add i32 %3, %i.eb
  %i.ed = sub i64 %i.da, %i.df
  %i.ee = add i32 %3, 1
  %i.ef = sub i32 %i.ee, %2
  %diff.check = icmp ult i64 %i.ed, 32
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph496, %._crit_edge493
  %indvar = phi i32 [ 0, %.lr.ph496 ], [ %indvar.next, %._crit_edge493 ] ; 2 uses
  %indvars.iv = phi i32 [ %i.ec, %.lr.ph496 ], [ %indvars.iv.next, %._crit_edge493 ] ; 4 uses
  %.0356495 = phi i32 [ 1, %.lr.ph496 ], [ %i.gq, %._crit_edge493 ] ; 4 uses
  %i.eg = add i32 %i.ef, %indvar
  %i.eh = tail call i32 @llvm.smin.i32(i32 %i.eg, i32 %i.cp)
  %i.ei = tail call i32 @llvm.smin.i32(i32 %i.eh, i32 %i.co)
  %i.ej = tail call i32 @llvm.smax.i32(i32 %i.ei, i32 %indvars.iv)
  %i.ek = tail call i32 @llvm.smax.i32(i32 %i.ej, i32 %i.cn)
  %i.el = tail call i32 @llvm.smax.i32(i32 %i.ek, i32 %i.cm)
  %smax642 = sext i32 %i.el to i64
  %i.em = add nsw i64 %smax642, 1
  %i.en = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 %i.cn)
  %i.eo = tail call i32 @llvm.smax.i32(i32 %i.en, i32 %i.cm)
  %smax644 = sext i32 %i.eo to i64
  %i.ep = sub nsw i64 %i.em, %smax644             ; 3 uses
  %i.eq = tail call i32 @llvm.smax.i32(i32 %indvars.iv, i32 %i.cn)
  %i.er = tail call i32 @llvm.smax.i32(i32 %i.eq, i32 %i.cm)
  %smax541 = sext i32 %i.er to i64                ; 4 uses
  %i.es = sub nsw i32 %i.cl, %.0356495
  %i.et = tail call i32 @llvm.smax.i32(i32 %., i32 %i.es) ; 2 uses
  %i.eu = add nsw i32 %.0356495, %i.cl
  %i.ev = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.eu) ; 4 uses
  %.not408486 = icmp sgt i32 %i.et, %i.ev
  br i1 %.not408486, label %._crit_edge493, label %.lr.ph489.preheader

.lr.ph489.preheader:                              ; preds = %bb.x
  %i.ew = sext i32 %i.ev to i64
  br label %.lr.ph489

.lr.ph492.preheader:                              ; preds = %snake.exit455
  %i.ex = sext i32 %i.ev to i64
  %min.iters.check = icmp ult i64 %i.ep, 8
  %or.cond681 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond681, label %.lr.ph492.preheader694, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph492.preheader
  %n.vec = and i64 %i.ep, -8                      ; 3 uses
  %i.ey = add nsw i64 %n.vec, %smax541
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ez = add i64 %index, %smax541                ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load = load <4 x i32>, ptr %i.fa, align 4, !tbaa !4
  %wide.load645 = load <4 x i32>, ptr %i.fb, align 4, !tbaa !4
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.ez ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <4 x i32> %wide.load, ptr %i.fc, align 4, !tbaa !4
  store <4 x i32> %wide.load645, ptr %i.fd, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec
  br i1 %i.fe, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ep, %n.vec
  br i1 %cmp.n, label %._crit_edge493, label %.lr.ph492.preheader694

.lr.ph492.preheader694:                           ; preds = %.lr.ph492.preheader, %middle.block
  %indvars.iv542.ph.a = phi i64 [ %smax541, %.lr.ph492.preheader ], [ %i.ey, %middle.block ]
  br label %.lr.ph492

.lr.ph489:                                        ; preds = %.lr.ph489.preheader, %snake.exit455
  %indvars.iv533 = phi i64 [ %smax541, %.lr.ph489.preheader ], [ %indvars.iv.next534, %snake.exit455 ] ; 6 uses
  %i.ff = trunc nsw i64 %indvars.iv533 to i32     ; 3 uses
  %i.fg = icmp eq i32 %i.et, %i.ff
  br i1 %i.fg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph489
  %i.fh = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv533
  %i.fi = getelementptr i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  %i.fk = add nsw i32 %i.fj, 1
  br label %bb.ae

bb.z:                                             ; preds = %.lr.ph489
  %i.fl = icmp eq i32 %i.ev, %i.ff
  %i.fm = getelementptr [4 x i8], ptr %i.dd, i64 %indvars.iv533 ; 5 uses
  br i1 %i.fl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fn = getelementptr i8, ptr %i.fm, i64 -4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4
  br label %bb.ae

bb.ab:                                            ; preds = %bb.z
  %i.fp = load i32, ptr %i.fm, align 4, !tbaa !4  ; 3 uses
  %i.fq = getelementptr i8, ptr %i.fm, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4  ; 3 uses
  %.not410 = icmp slt i32 %i.fp, %i.fr
  br i1 %.not410, label %._crit_edge569, label %bb.ac

._crit_edge569:                                   ; preds = %bb.ab
  %.phi.trans.insert = getelementptr i8, ptr %i.fm, i64 -4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !4
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fs = add nsw i32 %i.fp, 1                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fm, i64 -4
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4  ; 2 uses
  %.not411 = icmp slt i32 %i.fs, %i.fu
  br i1 %.not411, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge569, %bb.ac
  %i.fv = phi i32 [ %.pre, %._crit_edge569 ], [ %i.fu, %bb.ac ] ; 2 uses
  %i.fw = add nsw i32 %i.fr, 1
  %.not413 = icmp slt i32 %i.fr, %i.fp
  %i.fx = tail call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.fv)
  %spec.select = select i1 %.not413, i32 %i.fv, i32 %i.fx
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y
  %.0352 = phi i32 [ %i.fk, %bb.y ], [ %i.fo, %bb.aa ], [ %spec.select, %bb.ad ], [ %i.fs, %bb.ac ] ; 6 uses
  %i.fy = icmp slt i32 %.0352, 0
  br i1 %i.fy, label %snake.exit455, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fz = add i32 %.0352, %i.ff                   ; 2 uses
  %i.ga = icmp slt i32 %.0352, %4
  %i.gb = icmp slt i32 %i.fz, %5
  %or.cond18.i444 = and i1 %i.ga, %i.gb
  br i1 %or.cond18.i444, label %.lr.ph.preheader.i446, label %snake.exit455

.lr.ph.preheader.i446:                            ; preds = %bb.af
  %i.gc = sext i32 %i.fz to i64
  %i.gd = zext nneg i32 %.0352 to i64
  br label %.lr.ph.i447

.lr.ph.i447:                                      ; preds = %bb.ag, %.lr.ph.preheader.i446
  %indvars.iv23.i448 = phi i64 [ %i.gd, %.lr.ph.preheader.i446 ], [ %indvars.iv.next24.i451, %bb.ag ] ; 3 uses
  %indvars.iv.i449 = phi i64 [ %i.gc, %.lr.ph.preheader.i446 ], [ %indvars.iv.next.i453, %bb.ag ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv23.i448
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !15
  %i.gg = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i449
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !15
  %i.gi = icmp eq i8 %i.gf, %i.gh
  br i1 %i.gi, label %bb.ag, label %.critedge.loopexit.split.loop.exit.i450

bb.ag:                                            ; preds = %.lr.ph.i447
  %indvars.iv.next24.i451 = add nuw nsw i64 %indvars.iv23.i448, 1 ; 2 uses
  %indvars26.i452 = trunc i64 %indvars.iv.next24.i451 to i32 ; 2 uses
  %indvars.iv.next.i453 = add nsw i64 %indvars.iv.i449, 1 ; 2 uses
  %i.gj = icmp sgt i32 %4, %indvars26.i452
  %i.gk = icmp slt i64 %indvars.iv.next.i453, %i.ea
  %or.cond.i454 = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %or.cond.i454, label %.lr.ph.i447, label %snake.exit455, !llvm.loop !16

.critedge.loopexit.split.loop.exit.i450:          ; preds = %.lr.ph.i447
  %i.gl = trunc nuw i64 %indvars.iv23.i448 to i32
  br label %snake.exit455

snake.exit455:                                    ; preds = %bb.ag, %bb.ae, %bb.af, %.critedge.loopexit.split.loop.exit.i450
  %.015.i445 = phi i32 [ %.0352, %bb.ae ], [ %.0352, %bb.af ], [ %i.gl, %.critedge.loopexit.split.loop.exit.i450 ], [ %indvars26.i452, %bb.ag ]
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv533
  store i32 %.015.i445, ptr %i.gm, align 4, !tbaa !4
  %indvars.iv.next534 = add nsw i64 %indvars.iv533, 1
  %.not408.not = icmp slt i64 %indvars.iv533, %i.ew
  br i1 %.not408.not, label %.lr.ph489, label %.lr.ph492.preheader, !llvm.loop !23

.lr.ph492:                                        ; preds = %.lr.ph492.preheader694, %.lr.ph492
  %indvars.iv542.a = phi i64 [ %indvars.iv.next543.a, %.lr.ph492 ], [ %indvars.iv542.ph.a, %.lr.ph492.preheader694 ] ; 4 uses
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv542.a
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !4
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %indvars.iv542.a
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !4
  %indvars.iv.next543.a = add nsw i64 %indvars.iv542.a, 1
  %.not409.not = icmp slt i64 %indvars.iv542.a, %i.ex
  br i1 %.not409.not, label %.lr.ph492, label %._crit_edge493, !llvm.loop !24

._crit_edge493:                                   ; preds = %.lr.ph492, %middle.block, %bb.x
  %i.gq = add nuw i32 %.0356495, 1
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond.not = icmp eq i32 %.0356495, %i.cj
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond.not, label %._crit_edge497, label %bb.x, !llvm.loop !25

._crit_edge497:                                   ; preds = %._crit_edge493
  %reass.sub523 = sub i32 %i.cv, %i.ct
  %i.gr = add i32 %reass.sub523, 1
  %i.gs = sext i32 %i.gr to i64
  %i.gt = shl nsw i64 %i.gs, 2                    ; 2 uses
  %i.gu = tail call ptr @xmalloc(i64 noundef %i.gt) #11 ; 5 uses
  %i.gv = ptrtoaddr ptr %i.gu to i64
  %i.gw = sext i32 %i.ct to i64                   ; 3 uses
  %i.gx = sub nsw i64 0, %i.gw                    ; 2 uses
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.gx ; 7 uses
  %i.gz = tail call ptr @xmalloc(i64 noundef %i.gt) #11 ; 4 uses
  %i.ha = ptrtoaddr ptr %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %i.gx ; 3 uses
  %.not394498 = icmp sgt i32 %i.ct, %i.cv
  br i1 %.not394498, label %._crit_edge502, label %.lr.ph501

.lr.ph501:                                        ; preds = %._crit_edge497
  %i.hc = add nsw i32 %4, 1                       ; 2 uses
  %i.hd = add i32 %i.cv, %i.ct
  %i.he = add i32 %i.hd, 1
  %i.hf = sub i32 %i.he, %i.ct
  %i.hg = sub i32 %i.cv, %i.ct                    ; 2 uses
  %i.hh = zext i32 %i.hg to i64
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %min.iters.check647 = icmp ult i32 %i.hg, 7
  br i1 %min.iters.check647, label %scalar.ph646.preheader, label %vector.ph648

vector.ph648:                                     ; preds = %.lr.ph501
  %n.vec650 = and i64 %i.hi, 8589934584           ; 3 uses
  %i.hj = add nsw i64 %n.vec650, %i.gw
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hc, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body651

vector.body651:                                   ; preds = %vector.body651, %vector.ph648
  %index652 = phi i64 [ 0, %vector.ph648 ], [ %index.next653, %vector.body651 ] ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %index652 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.hk, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.hl, align 4, !tbaa !4
  %index.next653 = add nuw i64 %index652, 8       ; 2 uses
  %i.hm = icmp eq i64 %index.next653, %n.vec650
  br i1 %i.hm, label %middle.block654, label %vector.body651, !llvm.loop !26

middle.block654:                                  ; preds = %vector.body651
  %cmp.n655 = icmp eq i64 %i.hi, %n.vec650
  br i1 %cmp.n655, label %._crit_edge502, label %scalar.ph646.preheader

scalar.ph646.preheader:                           ; preds = %.lr.ph501, %middle.block654
  %indvars.iv544.ph = phi i64 [ %i.gw, %.lr.ph501 ], [ %i.hj, %middle.block654 ]
  br label %scalar.ph646

scalar.ph646:                                     ; preds = %scalar.ph646.preheader, %scalar.ph646
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %scalar.ph646 ], [ %indvars.iv544.ph, %scalar.ph646.preheader ] ; 2 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %indvars.iv544
  store i32 %i.hc, ptr %i.hn, align 4, !tbaa !4
  %indvars.iv.next545 = add nsw i64 %indvars.iv544, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next545 to i32
  %exitcond546.not = icmp eq i32 %i.hf, %lftr.wideiv
  br i1 %exitcond546.not, label %._crit_edge502, label %scalar.ph646, !llvm.loop !27

._crit_edge502:                                   ; preds = %scalar.ph646, %middle.block654, %._crit_edge497
  %i.ho = icmp sgt i32 %4, %9
  br i1 %i.ho, label %rsnake.exit, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge502
  %i.hp = or i32 %3, %2
  %or.cond.not.i = icmp sgt i32 %i.hp, -1
  br i1 %or.cond.not.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.hr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hq, ptr noundef nonnull @.str.8, i32 noundef %2, i32 noundef %3) #13 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hs = icmp sgt i32 %5, %10
  br i1 %i.hs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ht = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.hu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ht, ptr noundef nonnull @.str.9, i32 noundef %4, i32 noundef %5) #13 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hv = sext i32 %4 to i64                      ; 2 uses
  %i.hw = sext i32 %2 to i64
  %i.hx = sext i32 %3 to i64
  %i.hy = icmp sgt i32 %4, %2
  %i.hz = icmp sgt i32 %5, %3
  %or.cond.i457626 = and i1 %i.hz, %i.hy
  br i1 %or.cond.i457626, label %.lr.ph, label %.critedge.loopexit.i

.lr.ph:                                           ; preds = %bb.al
  %i.ia = sext i32 %5 to i64
  br label %bb.an

bb.am:                                            ; preds = %bb.an
  %i.ib = icmp sgt i64 %indvars.iv.next.i458, %i.hw
  %i.ic = icmp sgt i64 %indvars.iv.next32.i, %i.hx
  %or.cond.i457 = and i1 %i.ic, %i.ib
  br i1 %or.cond.i457, label %bb.an, label %.critedge.loopexit.i, !llvm.loop !28

bb.an:                                            ; preds = %.lr.ph, %bb.am
  %indvars.iv.i456628 = phi i64 [ %i.hv, %.lr.ph ], [ %indvars.iv.next.i458, %bb.am ] ; 2 uses
  %indvars.iv31.i627 = phi i64 [ %i.ia, %.lr.ph ], [ %indvars.iv.next32.i, %bb.am ]
  %indvars.iv.next.i458 = add nsw i64 %indvars.iv.i456628, -1 ; 4 uses
  %i.id = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next.i458
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !15
  %indvars.iv.next32.i = add nsw i64 %indvars.iv31.i627, -1 ; 3 uses
  %i.if = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next32.i
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !15
  %i.ih = icmp eq i8 %i.ie, %i.ig
  br i1 %i.ih, label %bb.am, label %..critedge.loopexit.i_crit_edge, !llvm.loop !28

..critedge.loopexit.i_crit_edge:                  ; preds = %bb.an
  br label %.critedge.loopexit.i, !llvm.loop !28

.critedge.loopexit.i:                             ; preds = %bb.am, %..critedge.loopexit.i_crit_edge, %bb.al
  %indvars.iv.i456.lcssa = phi i64 [ %indvars.iv.i456628, %..critedge.loopexit.i_crit_edge ], [ %i.hv, %bb.al ], [ %indvars.iv.next.i458, %bb.am ]
  %i.ii = trunc nsw i64 %indvars.iv.i456.lcssa to i32
  br label %rsnake.exit

rsnake.exit:                                      ; preds = %._crit_edge502, %.critedge.loopexit.i
  %.027.i = phi i32 [ %4, %._crit_edge502 ], [ %i.ii, %.critedge.loopexit.i ]
  %i.ij = sext i32 %i.cr to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ij
  store i32 %.027.i, ptr %i.ik, align 4, !tbaa !4
  %.not395511 = icmp slt i32 %i.ck, 1
  br i1 %.not395511, label %._crit_edge514, label %.lr.ph513

.lr.ph513:                                        ; preds = %rsnake.exit
  %i.il = or i32 %3, %2
  %or.cond.not.i459 = icmp sgt i32 %i.il, -1
  %i.im = sext i32 %2 to i64
  %i.in = sext i32 %3 to i64
  %i.io = xor i32 %4, -1
  %i.ip = add i32 %5, %i.io
  %i.iq = add nuw i32 %6, 1
  %i.ir = sub i32 %i.iq, %i.cj
  %i.is = sub i64 %i.gv, %i.ha
  %i.it = add i32 %5, 1
  %i.iu = sub i32 %i.it, %4
  %diff.check658 = icmp ult i64 %i.is, 32
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph513, %._crit_edge510
  %indvar659 = phi i32 [ 0, %.lr.ph513 ], [ %indvar.next660, %._crit_edge510 ] ; 2 uses
  %indvars.iv547 = phi i32 [ %i.ip, %.lr.ph513 ], [ %indvars.iv.next548, %._crit_edge510 ] ; 4 uses
  %.1357512 = phi i32 [ 1, %.lr.ph513 ], [ %i.lh, %._crit_edge510 ] ; 3 uses
  %i.iv = add i32 %i.iu, %indvar659
  %i.iw = tail call i32 @llvm.smin.i32(i32 %i.iv, i32 %i.cu)
  %i.ix = tail call i32 @llvm.smin.i32(i32 %i.iw, i32 %i.co)
  %i.iy = tail call i32 @llvm.smax.i32(i32 %i.ix, i32 %indvars.iv547)
  %i.iz = tail call i32 @llvm.smax.i32(i32 %i.iy, i32 %i.cs)
  %i.ja = tail call i32 @llvm.smax.i32(i32 %i.iz, i32 %i.cm)
  %smax665 = sext i32 %i.ja to i64
  %i.jb = add nsw i64 %smax665, 1
  %i.jc = tail call i32 @llvm.smax.i32(i32 %indvars.iv547, i32 %i.cs)
  %i.jd = tail call i32 @llvm.smax.i32(i32 %i.jc, i32 %i.cm)
  %smax667 = sext i32 %i.jd to i64
  %i.je = sub nsw i64 %i.jb, %smax667             ; 3 uses
  %i.jf = tail call i32 @llvm.smax.i32(i32 %indvars.iv547, i32 %i.cs)
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 %i.cm)
  %smax559 = sext i32 %i.jg to i64                ; 4 uses
  %i.jh = sub nsw i32 %i.cr, %.1357512
  %i.ji = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 %i.jh) ; 2 uses
  %i.jj = add nsw i32 %.1357512, %i.cr
  %i.jk = tail call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.jj) ; 4 uses
  %.not402503 = icmp sgt i32 %i.ji, %i.jk
  br i1 %.not402503, label %._crit_edge510, label %.lr.ph506.preheader

.lr.ph506.preheader:                              ; preds = %bb.ao
  %i.jl = sext i32 %i.jk to i64
  br label %.lr.ph506

.lr.ph509.preheader:                              ; preds = %rsnake.exit467
  %i.jm = sext i32 %i.jk to i64
  %min.iters.check669 = icmp ult i64 %i.je, 8
  %or.cond682 = select i1 %min.iters.check669, i1 true, i1 %diff.check658
  br i1 %or.cond682, label %.lr.ph509.preheader689, label %vector.ph670

vector.ph670:                                     ; preds = %.lr.ph509.preheader
  %n.vec672 = and i64 %i.je, -8                   ; 3 uses
  %i.jn = add nsw i64 %n.vec672, %smax559
  br label %vector.body673

vector.body673:                                   ; preds = %vector.body673, %vector.ph670
  %index674 = phi i64 [ 0, %vector.ph670 ], [ %index.next677, %vector.body673 ] ; 2 uses
  %i.jo = add i64 %index674, %smax559             ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.jo ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load675 = load <4 x i32>, ptr %i.jp, align 4, !tbaa !4
  %wide.load676 = load <4 x i32>, ptr %i.jq, align 4, !tbaa !4
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.jo ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  store <4 x i32> %wide.load675, ptr %i.jr, align 4, !tbaa !4
  store <4 x i32> %wide.load676, ptr %i.js, align 4, !tbaa !4
  %index.next677 = add nuw i64 %index674, 8       ; 2 uses
  %i.jt = icmp eq i64 %index.next677, %n.vec672
  br i1 %i.jt, label %middle.block678, label %vector.body673, !llvm.loop !29

middle.block678:                                  ; preds = %vector.body673
  %cmp.n679 = icmp eq i64 %i.je, %n.vec672
  br i1 %cmp.n679, label %._crit_edge510, label %.lr.ph509.preheader689

.lr.ph509.preheader689:                           ; preds = %.lr.ph509.preheader, %middle.block678
  %indvars.iv560.ph = phi i64 [ %smax559, %.lr.ph509.preheader ], [ %i.jn, %middle.block678 ]
  br label %.lr.ph509

.lr.ph506:                                        ; preds = %.lr.ph506.preheader, %rsnake.exit467
  %indvars.iv551 = phi i64 [ %smax559, %.lr.ph506.preheader ], [ %indvars.iv.next552, %rsnake.exit467 ] ; 6 uses
  %i.ju = trunc nsw i64 %indvars.iv551 to i32     ; 3 uses
  %i.jv = icmp eq i32 %i.ji, %i.ju
  br i1 %i.jv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph506
  %i.jw = getelementptr [4 x i8], ptr %i.gy, i64 %indvars.iv551
  %i.jx = getelementptr i8, ptr %i.jw, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !4
  br label %bb.at

bb.aq:                                            ; preds = %.lr.ph506
  %i.jz = icmp eq i32 %i.jk, %i.ju
  %i.ka = getelementptr [4 x i8], ptr %i.gy, i64 %indvars.iv551 ; 4 uses
  br i1 %i.jz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.kb = getelementptr i8, ptr %i.ka, i64 -4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !4
  %i.kd = add nsw i32 %i.kc, -1
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ke = load i32, ptr %i.ka, align 4, !tbaa !4  ; 3 uses
  %i.kf = add nsw i32 %i.ke, -1                   ; 2 uses
  %i.kg = getelementptr i8, ptr %i.ka, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !4  ; 3 uses
  %.not404 = icmp sgt i32 %i.kf, %i.kh
  %.phi.trans.insert571 = getelementptr i8, ptr %i.ka, i64 -4
  %.pre572 = load i32, ptr %.phi.trans.insert571, align 4, !tbaa !4 ; 3 uses
  %.not405 = icmp sgt i32 %i.ke, %.pre572
  %or.cond615 = select i1 %.not404, i1 true, i1 %.not405
  br i1 %or.cond615, label %._crit_edge570, label %bb.at

._crit_edge570:                                   ; preds = %bb.as
  %i.ki = add nsw i32 %.pre572, -1
  %.not407 = icmp sgt i32 %.pre572, %i.ke
  %i.kj = tail call i32 @llvm.smin.i32(i32 %i.ki, i32 %i.kh)
  %spec.select473 = select i1 %.not407, i32 %i.kh, i32 %i.kj
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge570, %bb.ar, %bb.ap
  %.1353 = phi i32 [ %i.jy, %bb.ap ], [ %i.kd, %bb.ar ], [ %spec.select473, %._crit_edge570 ], [ %i.kf, %bb.as ] ; 6 uses
  %i.kk = icmp sgt i32 %.1353, %9
  br i1 %i.kk, label %rsnake.exit467, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %or.cond.not.i459, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kl = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.km = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kl, ptr noundef nonnull @.str.8, i32 noundef %2, i32 noundef %3) #13 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.kn = add nsw i32 %.1353, %i.ju               ; 4 uses
  %i.ko = icmp sgt i32 %i.kn, %10
  br i1 %i.ko, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.kp = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.kq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kp, ptr noundef nonnull @.str.9, i32 noundef %.1353, i32 noundef %i.kn) #13 ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.kr = sext i32 %.1353 to i64                  ; 2 uses
  %i.ks = icmp sgt i32 %.1353, %2
  %i.kt = icmp sgt i32 %i.kn, %3
  %or.cond.i462632 = and i1 %i.kt, %i.ks
  br i1 %or.cond.i462632, label %.lr.ph636, label %.critedge.loopexit.i463

.lr.ph636:                                        ; preds = %bb.ay
  %i.ku = sext i32 %i.kn to i64
  br label %bb.ba

bb.az:                                            ; preds = %bb.ba
  %i.kv = icmp sgt i64 %indvars.iv.next.i465, %i.im
  %i.kw = icmp sgt i64 %indvars.iv.next32.i466, %i.in
  %or.cond.i462 = and i1 %i.kw, %i.kv
  br i1 %or.cond.i462, label %bb.ba, label %.critedge.loopexit.i463, !llvm.loop !28

bb.ba:                                            ; preds = %.lr.ph636, %bb.az
  %indvars.iv.i461634 = phi i64 [ %i.kr, %.lr.ph636 ], [ %indvars.iv.next.i465, %bb.az ] ; 2 uses
  %indvars.iv31.i460633 = phi i64 [ %i.ku, %.lr.ph636 ], [ %indvars.iv.next32.i466, %bb.az ]
  %indvars.iv.next.i465 = add nsw i64 %indvars.iv.i461634, -1 ; 4 uses
  %i.kx = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next.i465
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !15
  %indvars.iv.next32.i466 = add nsw i64 %indvars.iv31.i460633, -1 ; 3 uses
  %i.kz = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.next32.i466
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !15
  %i.lb = icmp eq i8 %i.ky, %i.la
  br i1 %i.lb, label %bb.az, label %..critedge.loopexit.i463_crit_edge, !llvm.loop !28

..critedge.loopexit.i463_crit_edge:               ; preds = %bb.ba
  br label %.critedge.loopexit.i463, !llvm.loop !28

.critedge.loopexit.i463:                          ; preds = %bb.az, %..critedge.loopexit.i463_crit_edge, %bb.ay
  %indvars.iv.i461.lcssa = phi i64 [ %indvars.iv.i461634, %..critedge.loopexit.i463_crit_edge ], [ %i.kr, %bb.ay ], [ %indvars.iv.next.i465, %bb.az ]
  %i.lc = trunc nsw i64 %indvars.iv.i461.lcssa to i32
  br label %rsnake.exit467

rsnake.exit467:                                   ; preds = %bb.at, %.critedge.loopexit.i463
  %.027.i464 = phi i32 [ %.1353, %bb.at ], [ %i.lc, %.critedge.loopexit.i463 ]
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %indvars.iv551
  store i32 %.027.i464, ptr %i.ld, align 4, !tbaa !4
  %indvars.iv.next552 = add nsw i64 %indvars.iv551, 1
  %.not402.not = icmp slt i64 %indvars.iv551, %i.jl
  br i1 %.not402.not, label %.lr.ph506, label %.lr.ph509.preheader, !llvm.loop !30

.lr.ph509:                                        ; preds = %.lr.ph509.preheader689, %.lr.ph509
  %indvars.iv560 = phi i64 [ %indvars.iv.next561, %.lr.ph509 ], [ %indvars.iv560.ph, %.lr.ph509.preheader689 ] ; 4 uses
  %i.le = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %indvars.iv560
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !4
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %indvars.iv560
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !4
  %indvars.iv.next561 = add nsw i64 %indvars.iv560, 1
  %.not403.not = icmp slt i64 %indvars.iv560, %i.jm
  br i1 %.not403.not, label %.lr.ph509, label %._crit_edge510, !llvm.loop !31

._crit_edge510:                                   ; preds = %.lr.ph509, %middle.block678, %bb.ao
  %i.lh = add nuw i32 %.1357512, 1                ; 2 uses
  %indvars.iv.next548 = add i32 %indvars.iv547, -1
  %exitcond562.not = icmp eq i32 %i.lh, %i.ir
  %indvar.next660 = add i32 %indvar659, 1
  br i1 %exitcond562.not, label %._crit_edge514, label %bb.ao, !llvm.loop !32

._crit_edge514:                                   ; preds = %._crit_edge510, %rsnake.exit
  %i.li = tail call i32 @llvm.smax.i32(i32 %., i32 %i.ct) ; 2 uses
  %i.lj = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cv) ; 2 uses
  %.not396515 = icmp sgt i32 %i.li, %i.lj
  br i1 %.not396515, label %bb.be, label %.lr.ph519.preheader

.lr.ph519.preheader:                              ; preds = %._crit_edge514
  %i.lk = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 %i.cn)
  %i.ll = tail call i32 @llvm.smax.i32(i32 %i.lk, i32 %i.cm) ; 2 uses
  %smax564 = sext i32 %i.ll to i64
  %i.lm = add i32 %i.lj, %i.ll
  %i.ln = add i32 %i.lm, 1
  %i.lo = sub i32 %i.ln, %i.li
  br label %.lr.ph519

.lr.ph519:                                        ; preds = %.lr.ph519.preheader, %bb.bb
  %indvars.iv565 = phi i64 [ %smax564, %.lr.ph519.preheader ], [ %indvars.iv.next566, %bb.bb ] ; 4 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %indvars.iv565
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !4  ; 3 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %indvars.iv565
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !4  ; 3 uses
  %.not397 = icmp slt i32 %i.lq, %i.ls
  br i1 %.not397, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph519
  %indvars.iv.next566 = add nsw i64 %indvars.iv565, 1 ; 2 uses
  %lftr.wideiv567 = trunc i64 %indvars.iv.next566 to i32
  %exitcond568.not = icmp eq i32 %i.lo, %lftr.wideiv567
  br i1 %exitcond568.not, label %bb.be, label %.lr.ph519, !llvm.loop !33

bb.bc:                                            ; preds = %.lr.ph519
  %11 = trunc nsw i64 %indvars.iv565 to i32
  %12 = sub nsw i32 %i.lq, %2
  %13 = sub nsw i32 %4, %i.ls
  %.not398 = icmp slt i32 %12, %13
  %.418 = select i1 %.not398, i32 %i.ls, i32 %i.lq ; 3 uses
  %.0349 = add nsw i32 %.418, %11                 ; 2 uses
  tail call void @free(ptr noundef nonnull %i.cz) #11
  tail call void @free(ptr noundef nonnull %i.gu) #11
  tail call void @free(ptr noundef %i.de) #11
  tail call void @free(ptr noundef %i.gz) #11
  call void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %.418, i32 noundef %.0349, i32 noundef %i.cj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %9, i32 noundef %10)
  call void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %.418, i32 noundef %.0349, i32 noundef %4, i32 noundef %5, i32 noundef %i.ck, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %9, i32 noundef %10)
  %i.lt = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %.not400 = icmp eq ptr %i.lt, null
  %i.lu = load ptr, ptr %i.c, align 8, !tbaa !8   ; 4 uses
  %.val.pre = load ptr, ptr %i.b, align 8         ; 3 uses
  br i1 %.not400, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.lu, ptr %.val.pre, align 8, !tbaa !14
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb, %._crit_edge514
  tail call void @free(ptr noundef %i.cz) #11
  tail call void @free(ptr noundef %i.gu) #11
  tail call void @free(ptr noundef %i.de) #11
  tail call void @free(ptr noundef %i.gz) #11
  %i.lv = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.lw = tail call i64 @fwrite(ptr nonnull @.str.1, i64 48, i64 1, ptr %i.lv) #12 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.bd, %bb.be
  %.val = phi ptr [ %.val.pre, %bb.bd ], [ undef, %bb.be ], [ %.val.pre, %bb.bc ]
  %i.lx = phi ptr [ %i.lu, %bb.bd ], [ undef, %bb.be ], [ %i.lu, %bb.bc ]
  %i.ly = phi ptr [ %i.lt, %bb.bd ], [ null, %bb.be ], [ %i.lu, %bb.bc ]
  store ptr %i.ly, ptr %7, align 8, !tbaa !8
  %.not401 = icmp eq ptr %i.lx, null
  %.val474 = load ptr, ptr %i.d, align 8
  %storemerge = select i1 %.not401, ptr %.val, ptr %.val474
  store ptr %storemerge, ptr %8, align 8, !tbaa !8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.i, %bb.t, %bb.s, %snake.exit431.thread, %snake.exit.thread, %bb.n, %bb.bf, %bb.f, %bb.d
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
define dso_local i32 @align_get_dist(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
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
  %i.ba = add i32 %3, %i.az
  %i.bb = sub i64 %i.n, %i.s
  %i.bc = add i32 %3, 1
  %i.bd = sub i32 %i.bc, %2
  %diff.check = icmp ult i64 %i.bb, 32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph178, %bb.o
  %indvar = phi i32 [ 0, %.lr.ph178 ], [ %indvar.next, %bb.o ] ; 2 uses
  %indvars.iv182 = phi i32 [ %i.ba, %.lr.ph178 ], [ %indvars.iv.next183, %bb.o ] ; 4 uses
  %.0124177 = phi i32 [ 1, %.lr.ph178 ], [ %i.dp, %bb.o ] ; 5 uses
  %i.be = add i32 %i.bd, %indvar
  %i.bf = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.e)
  %i.bg = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.d)
  %i.bh = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 %indvars.iv182)
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 %i.c)
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 %i.b)
  %smax222 = sext i32 %i.bj to i64
  %i.bk = add nsw i64 %smax222, 1
  %i.bl = tail call i32 @llvm.smax.i32(i32 %indvars.iv182, i32 %i.c)
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 %i.b)
  %smax224 = sext i32 %i.bm to i64
  %i.bn = sub nsw i64 %i.bk, %smax224             ; 3 uses
  %i.bo = tail call i32 @llvm.smax.i32(i32 %indvars.iv182, i32 %i.c)
  %i.bp = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 %i.b)
  %smax193 = sext i32 %i.bp to i64                ; 4 uses
  %i.bq = sub nsw i32 %i.a, %.0124177
  %i.br = tail call i32 @llvm.smax.i32(i32 %., i32 %i.bq) ; 2 uses
  %i.bs = add nsw i32 %.0124177, %i.a
  %i.bt = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.bs) ; 4 uses
  %.not142168 = icmp sgt i32 %i.br, %i.bt
  br i1 %.not142168, label %._crit_edge175, label %.lr.ph171.preheader
end_hunk_0
