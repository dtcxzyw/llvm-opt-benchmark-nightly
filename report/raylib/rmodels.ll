Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@tinyobj_parse_obj:bb.a
bb.o:                                             ; preds = %bb.n
  %i.bo = add i32 %i.bi, -1
  store i32 %i.bo, ptr %i.bj, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bp = add nuw nsw i64 %indvars.iv631, 1       ; 2 uses
  %i.bq = add i32 %.0371550, 1
  %i.br = trunc nuw i64 %i.bp to i32
  br label %is_line_ending.exit444

is_line_ending.exit444:                           ; preds = %.lr.ph552.is_line_ending.exit444_crit_edge, %bb.m, %bb.l, %bb.p
  %indvars.iv.next632.pre-phi = phi i64 [ %.pre668, %.lr.ph552.is_line_ending.exit444_crit_edge ], [ %i.bb, %bb.m ], [ %i.bb, %bb.l ], [ %i.bp, %bb.p ] ; 2 uses
  %.1374 = phi i32 [ %.0373549, %.lr.ph552.is_line_ending.exit444_crit_edge ], [ %.0373549, %bb.m ], [ %.0373549, %bb.l ], [ %i.br, %bb.p ] ; 2 uses
  %.1372 = phi i32 [ %.0371550, %.lr.ph552.is_line_ending.exit444_crit_edge ], [ %.0371550, %bb.m ], [ %.0371550, %bb.l ], [ %i.bq, %bb.p ] ; 2 uses
  %exitcond635.not = icmp eq i64 %indvars.iv.next632.pre-phi, %i.at
  br i1 %exitcond635.not, label %._crit_edge553, label %.lr.ph552, !llvm.loop !18

._crit_edge553:                                   ; preds = %is_line_ending.exit444, %is_line_ending.exit444.peel
  %.1374.lcssa = phi i32 [ %.1374.peel, %is_line_ending.exit444.peel ], [ %.1374, %is_line_ending.exit444 ]
  %.1372.lcssa = phi i32 [ %.1374.peel, %is_line_ending.exit444.peel ], [ %.1372, %is_line_ending.exit444 ]
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge553
  %i.bs = zext i32 %.1372.lcssa to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bs ; 2 uses
  store i32 %.1374.lcssa, ptr %i.bt, align 4
  %i.bu = xor i32 %.lcssa850, -1
  %i.bv = add i32 %6, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bv, ptr %i.bw, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge553
  %i.bx = mul nuw nsw i64 %i.aq, 360
  %i.by = tail call noalias ptr @malloc(i64 noundef %i.bx) #56 ; 14 uses
  %i.bz = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #56
  store ptr %i.bz, ptr %9, align 8
  %i.ca = tail call noalias dereferenceable_or_null(320) ptr @calloc(i64 noundef 10, i64 noundef 32) #57 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i32 10, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 0, ptr %i.cd, align 4
  %i.ce = and i32 %7, 1
  %.not.i445 = icmp eq i32 %i.ce, 0
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cg = ptrtoint ptr %i.a to i64                ; 8 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread701
  %indvars.iv637 = phi i64 [ 0, %bb.r ], [ %indvars.iv.next638, %.thread701 ] ; 4 uses
  %.0346564 = phi i32 [ 0, %bb.r ], [ %.2348, %.thread701 ] ; 6 uses
  %.0349563 = phi i32 [ 0, %bb.r ], [ %.2351, %.thread701 ] ; 6 uses
  %.0378559 = phi i32 [ -1, %bb.r ], [ %.1379, %.thread701 ] ; 6 uses
  %.0380558 = phi i32 [ 0, %bb.r ], [ %.2382, %.thread701 ] ; 6 uses
  %.0383557 = phi i32 [ 0, %bb.r ], [ %.2385, %.thread701 ] ; 6 uses
  %.0386556 = phi i32 [ 0, %bb.r ], [ %.2388, %.thread701 ] ; 6 uses
  %i.ch = getelementptr inbounds nuw [360 x i8], ptr %i.by, i64 %indvars.iv637 ; 22 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv637 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 %i.ck ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cn = load i32, ptr %i.cm, align 4            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %i.cl, i64 %i.co, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.co
  store i8 0, ptr %i.cp, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 356 ; 7 uses
  store i32 0, ptr %i.cq, align 4
  br label %bb.t

bb.t:                                             ; preds = %.critedge.i.i, %bb.s
  %i.cr = phi ptr [ %i.ct, %.critedge.i.i ], [ %i.a, %bb.s ] ; 20 uses
  %i.cs = load i8, ptr %i.cr, align 1             ; 2 uses
  switch i8 %i.cs, label %.thread130.i [
    i8 32, label %.critedge.i.i
    i8 9, label %.critedge.i.i
    i8 0, label %parseLine.exit
    i8 35, label %parseLine.exit
    i8 118, label %bb.u
    i8 102, label %bb.x
  ]

.critedge.i.i:                                    ; preds = %bb.t, %bb.t
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  br label %bb.t

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.cv = load i8, ptr %i.cu, align 1
  switch i8 %i.cv, label %.thread130.i [
    i8 32, label %.thread493
    i8 9, label %.thread493
    i8 110, label %bb.v
    i8 116, label %bb.w
  ]

.thread493:                                       ; preds = %bb.u, %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store ptr %i.cw, ptr %i.b, align 8
  %i.cx = call fastcc float @parseFloat(ptr noundef nonnull %i.b)
  %i.cy = call fastcc float @parseFloat(ptr noundef nonnull %i.b)
  %i.cz = call fastcc float @parseFloat(ptr noundef nonnull %i.b)
  store float %i.cx, ptr %i.ch, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store float %i.cy, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store float %i.cz, ptr %i.db, align 8
  store i32 1, ptr %i.cq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.bz

bb.v:                                             ; preds = %bb.u
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.dd = load i8, ptr %i.dc, align 1
  switch i8 %i.dd, label %.thread130.i [
    i8 32, label %.thread494
    i8 9, label %.thread494
  ]

.thread494:                                       ; preds = %bb.v, %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  store ptr %i.de, ptr %i.b, align 8
  %i.df = call fastcc float @parseFloat(ptr noundef nonnull %i.b)
  %i.dg = call fastcc float @parseFloat(ptr noundef nonnull %i.b)
  %i.dh = call fastcc float @parseFloat(ptr noundef nonnull %i.b)
  %i.di = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store float %i.df, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store float %i.dg, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  store float %i.dh, ptr %i.dk, align 4
  store i32 2, ptr %i.cq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.ca

bb.w:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  %i.dm = load i8, ptr %i.dl, align 1
  switch i8 %i.dm, label %.thread130.i [
    i8 32, label %.thread495
    i8 9, label %.thread495
  ]

.thread495:                                       ; preds = %bb.w, %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  store ptr %i.dn, ptr %i.b, align 8
  %i.do = call fastcc float @parseFloat(ptr noundef nonnull %i.b)
  %i.dp = call fastcc float @parseFloat(ptr noundef nonnull %i.b)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store float %i.do, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ch, i64 28
  store float %i.dp, ptr %i.dr, align 4
  store i32 3, ptr %i.cq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.cb

bb.x:                                             ; preds = %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1
  switch i8 %i.dt, label %.thread130.i [
    i8 32, label %bb.y
    i8 9, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  br label %bb.z

bb.z:                                             ; preds = %.critedge.i90.i, %bb.y
  %storemerge.i = phi ptr [ %i.du, %bb.y ], [ %i.dw, %.critedge.i90.i ] ; 4 uses
  %i.dv = load i8, ptr %storemerge.i, align 1     ; 2 uses
  switch i8 %i.dv, label %skip_space.exit91.preheader.i [
    i8 32, label %.critedge.i90.i
    i8 9, label %.critedge.i90.i
  ]

skip_space.exit91.preheader.i:                    ; preds = %bb.z
  store ptr %storemerge.i, ptr %i.b, align 8
  br label %skip_space.exit91.i

.critedge.i90.i:                                  ; preds = %bb.z, %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %bb.z

skip_space.exit91.i:                              ; preds = %skip_space_and_cr.exit.i, %skip_space.exit91.preheader.i
  %i.dx = phi i8 [ %i.dv, %skip_space.exit91.preheader.i ], [ %.pre.i, %skip_space_and_cr.exit.i ] ; 4 uses
  %indvars.iv198.i = phi i32 [ -2, %skip_space.exit91.preheader.i ], [ %indvars.iv.next199.i, %skip_space_and_cr.exit.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %skip_space.exit91.preheader.i ], [ %indvars.iv.next.i, %skip_space_and_cr.exit.i ] ; 6 uses
  %.lcssa162165.i = phi ptr [ %storemerge.i, %skip_space.exit91.preheader.i ], [ %i.gp, %skip_space_and_cr.exit.i ] ; 3 uses
  switch i8 %i.dx, label %bb.ab [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %.critedge.i
    i8 43, label %bb.aa
    i8 45, label %bb.aa
  ]

bb.aa:                                            ; preds = %skip_space.exit91.i, %skip_space.exit91.i
  %i.dy = icmp eq i8 %i.dx, 45
  %spec.select.i.i.i = select i1 %i.dy, i32 -1, i32 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.lcssa162165.i, i64 1 ; 2 uses
  %.pre.i.i.i = load i8, ptr %i.dz, align 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %skip_space.exit91.i
  %i.ea = phi i8 [ %.pre.i.i.i, %bb.aa ], [ %i.dx, %skip_space.exit91.i ] ; 2 uses
  %.012.i.i.i = phi ptr [ %i.dz, %bb.aa ], [ %.lcssa162165.i, %skip_space.exit91.i ]
  %.1.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.aa ], [ 1, %skip_space.exit91.i ]
  %i.eb = add i8 %i.ea, -48
  %or.cond16.i.i.i = icmp ult i8 %i.eb, 10
  br i1 %or.cond16.i.i.i, label %.lr.ph.i.i.i, label %my_atoi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %.lr.ph.i.i.i
  %i.ec = phi i8 [ %i.eh, %.lr.ph.i.i.i ], [ %i.ea, %bb.ab ]
  %.01118.i.i.i = phi i32 [ %i.ef, %.lr.ph.i.i.i ], [ 0, %bb.ab ]
  %.11317.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i ], [ %.012.i.i.i, %bb.ab ]
  %i.ed = mul nsw i32 %.01118.i.i.i, 10
  %narrow.i.i.i = add nsw i8 %i.ec, -48
  %i.ee = zext nneg i8 %narrow.i.i.i to i32
  %i.ef = add nsw i32 %i.ed, %i.ee                ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.11317.i.i.i, i64 1 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1             ; 2 uses
  %i.ei = add i8 %i.eh, -48
  %or.cond.i.i.i = icmp ult i8 %i.ei, 10
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.ej = mul nsw i32 %i.ef, %.1.i.i.i
  %i.ek = zext i32 %i.ej to i64
  br label %my_atoi.exit.i.i

my_atoi.exit.i.i:                                 ; preds = %.critedge.loopexit.i.i.i, %bb.ab
  %.011.lcssa.i.i.i = phi i64 [ 0, %bb.ab ], [ %i.ek, %.critedge.loopexit.i.i.i ]
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %my_atoi.exit.i.i
  %i.el = phi ptr [ %i.en, %bb.ad ], [ %.lcssa162165.i, %my_atoi.exit.i.i ] ; 9 uses
  %i.em = phi i8 [ %.pre.i.i, %bb.ad ], [ %i.dx, %my_atoi.exit.i.i ] ; 5 uses
  switch i8 %i.em, label %bb.ad [
    i8 47, label %bb.ae
    i8 0, label %parseRawTriple.exit.i
    i8 9, label %parseRawTriple.exit.i
    i8 13, label %parseRawTriple.exit.i
    i8 32, label %parseRawTriple.exit.i
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 2 uses
  %.pre.i.i = load i8, ptr %i.en, align 1
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ac
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 3 uses
  %i.ep = load i8, ptr %i.eo, align 1             ; 4 uses
  switch i8 %i.ep, label %bb.al [
    i8 47, label %bb.af
    i8 43, label %bb.ak
    i8 45, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 2 ; 3 uses
  %i.er = load i8, ptr %i.eq, align 1             ; 4 uses
  switch i8 %i.er, label %bb.ah [
    i8 43, label %bb.ag
    i8 45, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.es = icmp eq i8 %i.er, 45
  %spec.select.i65.i.i = select i1 %i.es, i32 -1, i32 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.el, i64 3 ; 2 uses
  %.pre.i66.i.i = load i8, ptr %i.et, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.eu = phi i8 [ %.pre.i66.i.i, %bb.ag ], [ %i.er, %bb.af ] ; 2 uses
  %.012.i67.i.i = phi ptr [ %i.et, %bb.ag ], [ %i.eq, %bb.af ]
  %.1.i68.i.i = phi i32 [ %spec.select.i65.i.i, %bb.ag ], [ 1, %bb.af ]
  %i.ev = add i8 %i.eu, -48
  %or.cond16.i69.i.i = icmp ult i8 %i.ev, 10
  br i1 %or.cond16.i69.i.i, label %.lr.ph.i71.i.i, label %my_atoi.exit77.i.i

.lr.ph.i71.i.i:                                   ; preds = %bb.ah, %.lr.ph.i71.i.i
  %i.ew = phi i8 [ %i.fb, %.lr.ph.i71.i.i ], [ %i.eu, %bb.ah ]
  %.01118.i72.i.i = phi i32 [ %i.ez, %.lr.ph.i71.i.i ], [ 0, %bb.ah ]
  %.11317.i73.i.i = phi ptr [ %i.fa, %.lr.ph.i71.i.i ], [ %.012.i67.i.i, %bb.ah ]
  %i.ex = mul nsw i32 %.01118.i72.i.i, 10
  %narrow.i74.i.i = add nsw i8 %i.ew, -48
  %i.ey = zext nneg i8 %narrow.i74.i.i to i32
  %i.ez = add nsw i32 %i.ex, %i.ey                ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.11317.i73.i.i, i64 1 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1             ; 2 uses
  %i.fc = add i8 %i.fb, -48
  %or.cond.i75.i.i = icmp ult i8 %i.fc, 10
  br i1 %or.cond.i75.i.i, label %.lr.ph.i71.i.i, label %.critedge.loopexit.i76.i.i

.critedge.loopexit.i76.i.i:                       ; preds = %.lr.ph.i71.i.i
  %i.fd = mul nsw i32 %i.ez, %.1.i68.i.i
  br label %my_atoi.exit77.i.i

my_atoi.exit77.i.i:                               ; preds = %.critedge.loopexit.i76.i.i, %bb.ah
  %.011.lcssa.i70.i.i = phi i32 [ 0, %bb.ah ], [ %i.fd, %.critedge.loopexit.i76.i.i ] ; 5 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %my_atoi.exit77.i.i
  %i.fe = phi ptr [ %i.fg, %bb.aj ], [ %i.eq, %my_atoi.exit77.i.i ] ; 6 uses
  %i.ff = phi i8 [ %.pre127.i.i, %bb.aj ], [ %i.er, %my_atoi.exit77.i.i ] ; 6 uses
  switch i8 %i.ff, label %bb.aj [
    i8 0, label %parseRawTriple.exit.i
    i8 47, label %parseRawTriple.exit.i
    i8 32, label %parseRawTriple.exit.i
    i8 9, label %parseRawTriple.exit.i
    i8 13, label %parseRawTriple.exit.i
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 2 uses
  %.pre127.i.i = load i8, ptr %i.fg, align 1
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ae, %bb.ae
  %i.fh = icmp eq i8 %i.ep, 45
  %spec.select.i78.i.i = select i1 %i.fh, i32 -1, i32 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.el, i64 2 ; 2 uses
  %.pre.i79.i.i = load i8, ptr %i.fi, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ae
  %i.fj = phi i8 [ %.pre.i79.i.i, %bb.ak ], [ %i.ep, %bb.ae ] ; 2 uses
  %.012.i80.i.i = phi ptr [ %i.fi, %bb.ak ], [ %i.eo, %bb.ae ]
  %.1.i81.i.i = phi i32 [ %spec.select.i78.i.i, %bb.ak ], [ 1, %bb.ae ]
  %i.fk = add i8 %i.fj, -48
  %or.cond16.i82.i.i = icmp ult i8 %i.fk, 10
  br i1 %or.cond16.i82.i.i, label %.lr.ph.i84.i.i, label %my_atoi.exit90.i.i

.lr.ph.i84.i.i:                                   ; preds = %bb.al, %.lr.ph.i84.i.i
  %i.fl = phi i8 [ %i.fq, %.lr.ph.i84.i.i ], [ %i.fj, %bb.al ]
  %.01118.i85.i.i = phi i32 [ %i.fo, %.lr.ph.i84.i.i ], [ 0, %bb.al ]
  %.11317.i86.i.i = phi ptr [ %i.fp, %.lr.ph.i84.i.i ], [ %.012.i80.i.i, %bb.al ]
  %i.fm = mul nsw i32 %.01118.i85.i.i, 10
  %narrow.i87.i.i = add nsw i8 %i.fl, -48
  %i.fn = zext nneg i8 %narrow.i87.i.i to i32
  %i.fo = add nsw i32 %i.fm, %i.fn                ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.11317.i86.i.i, i64 1 ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1             ; 2 uses
  %i.fr = add i8 %i.fq, -48
  %or.cond.i88.i.i = icmp ult i8 %i.fr, 10
  br i1 %or.cond.i88.i.i, label %.lr.ph.i84.i.i, label %.critedge.loopexit.i89.i.i

.critedge.loopexit.i89.i.i:                       ; preds = %.lr.ph.i84.i.i
  %i.fs = mul nsw i32 %i.fo, %.1.i81.i.i
  br label %my_atoi.exit90.i.i

my_atoi.exit90.i.i:                               ; preds = %.critedge.loopexit.i89.i.i, %bb.al
  %.011.lcssa.i83.i.i = phi i32 [ 0, %bb.al ], [ %i.fs, %.critedge.loopexit.i89.i.i ] ; 9 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %my_atoi.exit90.i.i
  %i.ft = phi ptr [ %i.fv, %bb.an ], [ %i.eo, %my_atoi.exit90.i.i ] ; 7 uses
  %i.fu = phi i8 [ %.pre128.i.i, %bb.an ], [ %i.ep, %my_atoi.exit90.i.i ] ; 5 uses
  switch i8 %i.fu, label %bb.an [
    i8 47, label %bb.ao
    i8 0, label %parseRawTriple.exit.i
    i8 9, label %parseRawTriple.exit.i
    i8 13, label %parseRawTriple.exit.i
    i8 32, label %parseRawTriple.exit.i
  ]

bb.an:                                            ; preds = %bb.am
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 1 ; 2 uses
  %.pre128.i.i = load i8, ptr %i.fv, align 1
  br label %bb.am

bb.ao:                                            ; preds = %bb.am
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 1 ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 1             ; 4 uses
  switch i8 %i.fx, label %bb.aq [
    i8 43, label %bb.ap
    i8 45, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  %i.fy = icmp eq i8 %i.fx, 45
  %spec.select.i91.i.i = select i1 %i.fy, i32 -1, i32 1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 2 ; 2 uses
  %.pre.i92.i.i = load i8, ptr %i.fz, align 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ga = phi i8 [ %.pre.i92.i.i, %bb.ap ], [ %i.fx, %bb.ao ] ; 2 uses
  %.012.i93.i.i = phi ptr [ %i.fz, %bb.ap ], [ %i.fw, %bb.ao ]
  %.1.i94.i.i = phi i32 [ %spec.select.i91.i.i, %bb.ap ], [ 1, %bb.ao ]
  %i.gb = add i8 %i.ga, -48
  %or.cond16.i95.i.i = icmp ult i8 %i.gb, 10
  br i1 %or.cond16.i95.i.i, label %.lr.ph.i97.i.i, label %my_atoi.exit103.i.i

.lr.ph.i97.i.i:                                   ; preds = %bb.aq, %.lr.ph.i97.i.i
  %i.gc = phi i8 [ %i.gh, %.lr.ph.i97.i.i ], [ %i.ga, %bb.aq ]
  %.01118.i98.i.i = phi i32 [ %i.gf, %.lr.ph.i97.i.i ], [ 0, %bb.aq ]
  %.11317.i99.i.i = phi ptr [ %i.gg, %.lr.ph.i97.i.i ], [ %.012.i93.i.i, %bb.aq ]
  %i.gd = mul nsw i32 %.01118.i98.i.i, 10
  %narrow.i100.i.i = add nsw i8 %i.gc, -48
  %i.ge = zext nneg i8 %narrow.i100.i.i to i32
  %i.gf = add nsw i32 %i.gd, %i.ge                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.11317.i99.i.i, i64 1 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1             ; 2 uses
  %i.gi = add i8 %i.gh, -48
  %or.cond.i101.i.i = icmp ult i8 %i.gi, 10
  br i1 %or.cond.i101.i.i, label %.lr.ph.i97.i.i, label %.critedge.loopexit.i102.i.i

.critedge.loopexit.i102.i.i:                      ; preds = %.lr.ph.i97.i.i
  %i.gj = mul nsw i32 %i.gf, %.1.i94.i.i
  br label %my_atoi.exit103.i.i

my_atoi.exit103.i.i:                              ; preds = %.critedge.loopexit.i102.i.i, %bb.aq
  %.011.lcssa.i96.i.i = phi i32 [ 0, %bb.aq ], [ %i.gj, %.critedge.loopexit.i102.i.i ] ; 5 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %my_atoi.exit103.i.i
  %i.gk = phi ptr [ %i.gm, %bb.as ], [ %i.fw, %my_atoi.exit103.i.i ] ; 6 uses
  %i.gl = phi i8 [ %.pre129.i.i, %bb.as ], [ %i.fx, %my_atoi.exit103.i.i ] ; 6 uses
  switch i8 %i.gl, label %bb.as [
    i8 0, label %parseRawTriple.exit.i
    i8 47, label %parseRawTriple.exit.i
    i8 32, label %parseRawTriple.exit.i
    i8 9, label %parseRawTriple.exit.i
    i8 13, label %parseRawTriple.exit.i
  ]

bb.as:                                            ; preds = %bb.ar
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 1 ; 2 uses
  %.pre129.i.i = load i8, ptr %i.gm, align 1
  br label %bb.ar

parseRawTriple.exit.i:                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.am, %bb.am, %bb.am, %bb.am, %bb.ar, %bb.ar, %bb.ar, %bb.ar, %bb.ar
  %i.gn = phi i8 [ %i.fu, %bb.am ], [ %i.ff, %bb.ai ], [ %i.gl, %bb.ar ], [ %i.gl, %bb.ar ], [ %i.gl, %bb.ar ], [ %i.gl, %bb.ar ], [ %i.gl, %bb.ar ], [ %i.fu, %bb.am ], [ %i.fu, %bb.am ], [ %i.fu, %bb.am ], [ %i.ff, %bb.ai ], [ %i.ff, %bb.ai ], [ %i.ff, %bb.ai ], [ %i.ff, %bb.ai ], [ %i.em, %bb.ac ], [ %i.em, %bb.ac ], [ %i.em, %bb.ac ], [ %i.em, %bb.ac ]
  %.lcssa162164.i = phi ptr [ %i.ft, %bb.am ], [ %i.fe, %bb.ai ], [ %i.gk, %bb.ar ], [ %i.gk, %bb.ar ], [ %i.gk, %bb.ar ], [ %i.gk, %bb.ar ], [ %i.gk, %bb.ar ], [ %i.ft, %bb.am ], [ %i.ft, %bb.am ], [ %i.ft, %bb.am ], [ %i.fe, %bb.ai ], [ %i.fe, %bb.ai ], [ %i.fe, %bb.ai ], [ %i.fe, %bb.ai ], [ %i.el, %bb.ac ], [ %i.el, %bb.ac ], [ %i.el, %bb.ac ], [ %i.el, %bb.ac ]
  %.sroa.3.0.i.i = phi i32 [ %.011.lcssa.i83.i.i, %bb.am ], [ -2147483648, %bb.ai ], [ %.011.lcssa.i83.i.i, %bb.ar ], [ %.011.lcssa.i83.i.i, %bb.ar ], [ %.011.lcssa.i83.i.i, %bb.ar ], [ %.011.lcssa.i83.i.i, %bb.ar ], [ %.011.lcssa.i83.i.i, %bb.ar ], [ %.011.lcssa.i83.i.i, %bb.am ], [ %.011.lcssa.i83.i.i, %bb.am ], [ %.011.lcssa.i83.i.i, %bb.am ], [ -2147483648, %bb.ai ], [ -2147483648, %bb.ai ], [ -2147483648, %bb.ai ], [ -2147483648, %bb.ai ], [ -2147483648, %bb.ac ], [ -2147483648, %bb.ac ], [ -2147483648, %bb.ac ], [ -2147483648, %bb.ac ]
  %.sroa.5.0.i.i = phi i32 [ -2147483648, %bb.am ], [ %.011.lcssa.i70.i.i, %bb.ai ], [ %.011.lcssa.i96.i.i, %bb.ar ], [ %.011.lcssa.i96.i.i, %bb.ar ], [ %.011.lcssa.i96.i.i, %bb.ar ], [ %.011.lcssa.i96.i.i, %bb.ar ], [ %.011.lcssa.i96.i.i, %bb.ar ], [ -2147483648, %bb.am ], [ -2147483648, %bb.am ], [ -2147483648, %bb.am ], [ %.011.lcssa.i70.i.i, %bb.ai ], [ %.011.lcssa.i70.i.i, %bb.ai ], [ %.011.lcssa.i70.i.i, %bb.ai ], [ %.011.lcssa.i70.i.i, %bb.ai ], [ -2147483648, %bb.ac ], [ -2147483648, %bb.ac ], [ -2147483648, %bb.ac ], [ -2147483648, %bb.ac ]
  br label %bb.at

bb.at:                                            ; preds = %.critedge.i93.i, %parseRawTriple.exit.i
  %i.go = phi i8 [ %.pre203.i, %.critedge.i93.i ], [ %i.gn, %parseRawTriple.exit.i ]
  %i.gp = phi ptr [ %i.gq, %.critedge.i93.i ], [ %.lcssa162164.i, %parseRawTriple.exit.i ] ; 3 uses
  switch i8 %i.go, label %skip_space_and_cr.exit.i [
    i8 32, label %.critedge.i93.i
    i8 9, label %.critedge.i93.i
    i8 13, label %.critedge.i93.i
  ]

.critedge.i93.i:                                  ; preds = %bb.at, %bb.at, %bb.at
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1 ; 2 uses
  %.pre203.i = load i8, ptr %i.gq, align 1
  br label %bb.at

skip_space_and_cr.exit.i:                         ; preds = %bb.at
  %.sroa.3.0.insert.ext.i.i = zext i32 %.sroa.3.0.i.i to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.040.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, %.011.lcssa.i.i.i
  %i.gr = getelementptr inbounds nuw [12 x i8], ptr %8, i64 %indvars.iv.i ; 2 uses
  store i64 %.sroa.040.0.insert.insert.i.i, ptr %i.gr, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i32 %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %indvars.iv.next199.i = add i32 %indvars.iv198.i, 1
  %.pre.i = load i8, ptr %i.gp, align 1
  br label %skip_space.exit91.i

.critedge.i:                                      ; preds = %skip_space.exit91.i, %skip_space.exit91.i, %skip_space.exit91.i
  %10 = trunc nuw i64 %indvars.iv.i to i32        ; 3 uses
  store i32 4, ptr %i.cq, align 4
  br i1 %.not.i445, label %.preheader.i, label %bb.au

.preheader.i:                                     ; preds = %.critedge.i
  %.not171.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not171.i, label %._crit_edge170.i, label %.lr.ph169.i

.lr.ph169.i:                                      ; preds = %.preheader.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.gt = mul i64 %indvars.iv.i, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gs, ptr nonnull align 16 %8, i64 %i.gt, i1 false)
  br label %._crit_edge170.i

bb.au:                                            ; preds = %.critedge.i
  %i.gu = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.gu, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.au
  %.sroa.0.0.copyload = load <3 x i32>, ptr %i.cf, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ch, i64 228
  %wide.trip.count.i = zext i32 %indvars.iv198.i to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i
  %.sroa.0.0 = phi <3 x i32> [ %.sroa.0.0.copyload, %.lr.ph.i ], [ %.sroa.0.0.copyload855, %bb.av ]
  %indvars.iv193.i = phi i64 [ 2, %.lr.ph.i ], [ %indvars.iv.next194.i, %bb.av ] ; 2 uses
  %indvars.iv.i.a = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.a, %bb.av ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [12 x i8], ptr %8, i64 %indvars.iv193.i ; 2 uses
  %.sroa.0.0.copyload855 = load <3 x i32>, ptr %i.gx, align 4
  %i.gy = trunc nuw i64 %indvars.iv.i.a to i32
  %i.gz = mul i32 %i.gy, 3                        ; 3 uses
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [12 x i8], ptr %i.gv, i64 %i.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hb, ptr noundef nonnull align 16 dereferenceable(12) %8, i64 12, i1 false)
  %i.hc = add i32 %i.gz, 1
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [12 x i8], ptr %i.gv, i64 %i.hd
  store <3 x i32> %.sroa.0.0, ptr %i.he, align 4
  %i.hf = add i32 %i.gz, 2
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %i.gv, i64 %i.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hh, ptr noundef nonnull align 4 dereferenceable(12) %i.gx, i64 12, i1 false)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.i.a
  store i32 3, ptr %i.hi, align 4
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %indvars.iv.next194.i = add nuw nsw i64 %indvars.iv193.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.a, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.av

._crit_edge.i:                                    ; preds = %bb.av, %bb.au
  %.068.lcssa.i = phi i32 [ 0, %bb.au ], [ %indvars.iv198.i, %bb.av ] ; 3 uses
  %i.hj = mul i32 %.068.lcssa.i, 3                ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ch, i64 224
  store i32 %i.hj, ptr %i.hk, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ch, i64 292
  store i32 %.068.lcssa.i, ptr %i.hl, align 4
  br label %bb.by

._crit_edge170.i:                                 ; preds = %.lr.ph169.i, %.preheader.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ch, i64 224
  store i32 %10, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ch, i64 228
  store i32 %10, ptr %i.hn, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ch, i64 292
  store i32 1, ptr %i.ho, align 4
  br label %bb.by

.thread130.i:                                     ; preds = %bb.t, %bb.x, %bb.w, %bb.v, %bb.u
  %i.hp = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.cr, ptr noundef nonnull dereferenceable(7) @.str.118, i64 noundef 6) #51
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %.thread130.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  %i.hs = load i8, ptr %i.hr, align 1
  switch i8 %i.hs, label %bb.bd [
    i8 32, label %bb.ax
    i8 9, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cr, i64 7
  br label %bb.ay

bb.ay:                                            ; preds = %.critedge.i95.i, %bb.ax
  %storemerge132.i = phi ptr [ %i.ht, %bb.ax ], [ %i.hv, %.critedge.i95.i ] ; 4 uses
  %i.hu = load i8, ptr %storemerge132.i, align 1
  switch i8 %i.hu, label %skip_space.exit96.i [
    i8 32, label %.critedge.i95.i
    i8 9, label %.critedge.i95.i
  ]

.critedge.i95.i:                                  ; preds = %bb.ay, %bb.ay
  %i.hv = getelementptr inbounds nuw i8, ptr %storemerge132.i, i64 1
  br label %bb.ay

skip_space.exit96.i:                              ; preds = %bb.ay
  %i.hw = ptrtoint ptr %storemerge132.i to i64    ; 2 uses
  %i.hx = sub i64 %i.hw, %i.cg
  %i.hy = getelementptr inbounds i8, ptr %i.cl, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ch, i64 328
  store ptr %i.hy, ptr %i.hz, align 8
  %.neg87.i = sub i64 %i.cg, %i.hw
  %.neg88.i = trunc i64 %.neg87.i to i32
  %i.ia = add i32 %i.cn, %.neg88.i                ; 4 uses
  %.not17.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not17.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %skip_space.exit96.i
  %i.ib = add i32 %i.ia, -1
  %i.ic = zext i32 %i.ib to i64
  %wide.trip.count.i.i = zext i32 %i.ia to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.bc, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bc ] ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %storemerge132.i, i64 %indvars.iv.i.i ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1
  switch i8 %i.ie, label %bb.bc [
    i8 10, label %._crit_edge.loopexit.split.loop.exit.i.i
    i8 13, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.if = icmp samesign ult i64 %indvars.iv.i.i, %i.ic
  br i1 %i.if, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.ih = load i8, ptr %i.ig, align 1
  %.not.i.i = icmp eq i8 %i.ih, 10
  br i1 %.not.i.i, label %bb.bc, label %._crit_edge.loopexit.split.loop.exit19.i.i

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.thread, label %bb.az

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %bb.az
  %i.ii = trunc nuw i64 %indvars.iv.i.i to i32
  br label %.thread

._crit_edge.loopexit.split.loop.exit19.i.i:       ; preds = %bb.bb
  %i.ij = trunc nuw i64 %indvars.iv.i.i to i32
  br label %.thread

bb.bd:                                            ; preds = %bb.aw, %.thread130.i
  %i.ik = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.cr, ptr noundef nonnull dereferenceable(7) @.str.119, i64 noundef 6) #51
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %bb.be, label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.im = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  %i.in = load i8, ptr %i.im, align 1
  switch i8 %i.in, label %bb.bl [
    i8 32, label %bb.bf
    i8 9, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be, %bb.be
  %i.io = getelementptr inbounds nuw i8, ptr %i.cr, i64 7
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge.i98.i, %bb.bf
  %storemerge133.i = phi ptr [ %i.io, %bb.bf ], [ %i.iq, %.critedge.i98.i ] ; 4 uses
  %i.ip = load i8, ptr %storemerge133.i, align 1
  switch i8 %i.ip, label %skip_space.exit99.i [
    i8 32, label %.critedge.i98.i
    i8 9, label %.critedge.i98.i
  ]

.critedge.i98.i:                                  ; preds = %bb.bg, %bb.bg
  %i.iq = getelementptr inbounds nuw i8, ptr %storemerge133.i, i64 1
  br label %bb.bg

skip_space.exit99.i:                              ; preds = %bb.bg
  %i.ir = ptrtoint ptr %storemerge133.i to i64    ; 2 uses
  %i.is = sub i64 %i.ir, %i.cg
  %i.it = getelementptr inbounds i8, ptr %i.cl, i64 %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ch, i64 344
  store ptr %i.it, ptr %i.iu, align 8
  %.neg85.i = sub i64 %i.cg, %i.ir
  %.neg86.i = trunc i64 %.neg85.i to i32
  %i.iv = add i32 %i.cn, %.neg86.i                ; 2 uses
  %i.iw = add i32 %i.iv, -1                       ; 3 uses
  %.not17.i100.i = icmp eq i32 %i.iw, 0
  br i1 %.not17.i100.i, label %length_until_newline.exit110.i, label %.lr.ph.i101.i

.lr.ph.i101.i:                                    ; preds = %skip_space.exit99.i
  %i.ix = add i32 %i.iv, -2
  %i.iy = zext i32 %i.ix to i64
  %wide.trip.count.i102.i = zext i32 %i.iw to i64
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bk, %.lr.ph.i101.i
  %indvars.iv.i103.i = phi i64 [ 0, %.lr.ph.i101.i ], [ %indvars.iv.next.i104.i, %bb.bk ] ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %storemerge133.i, i64 %indvars.iv.i103.i ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1
  switch i8 %i.ja, label %bb.bk [
    i8 10, label %._crit_edge.loopexit.split.loop.exit.i109.i
    i8 13, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.jb = icmp samesign ult i64 %indvars.iv.i103.i, %i.iy
  br i1 %i.jb, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.jd = load i8, ptr %i.jc, align 1
  %.not.i107.i = icmp eq i8 %i.jd, 10
  br i1 %.not.i107.i, label %bb.bk, label %._crit_edge.loopexit.split.loop.exit19.i108.i

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %indvars.iv.next.i104.i = add nuw nsw i64 %indvars.iv.i103.i, 1 ; 2 uses
  %exitcond.not.i105.i = icmp eq i64 %indvars.iv.next.i104.i, %wide.trip.count.i102.i
  br i1 %exitcond.not.i105.i, label %length_until_newline.exit110.i, label %bb.bh

._crit_edge.loopexit.split.loop.exit.i109.i:      ; preds = %bb.bh
  %i.je = trunc nuw i64 %indvars.iv.i103.i to i32
  br label %length_until_newline.exit110.i

._crit_edge.loopexit.split.loop.exit19.i108.i:    ; preds = %bb.bj
  %i.jf = trunc nuw i64 %indvars.iv.i103.i to i32
  br label %length_until_newline.exit110.i

length_until_newline.exit110.i:                   ; preds = %bb.bk, %._crit_edge.loopexit.split.loop.exit19.i108.i, %._crit_edge.loopexit.split.loop.exit.i109.i, %skip_space.exit99.i
  %.0.lcssa.i106.i = phi i32 [ 0, %skip_space.exit99.i ], [ %i.jf, %._crit_edge.loopexit.split.loop.exit19.i108.i ], [ %i.je, %._crit_edge.loopexit.split.loop.exit.i109.i ], [ %i.iw, %bb.bk ]
  %i.jg = add i32 %.0.lcssa.i106.i, 1
  br label %.thread

bb.bl:                                            ; preds = %bb.be, %bb.bd
  switch i8 %i.cs, label %parseLine.exit [
    i8 103, label %bb.bm
    i8 111, label %bb.bs
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.jh = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ji = load i8, ptr %i.jh, align 1
  switch i8 %i.ji, label %parseLine.exit [
    i8 32, label %bb.bn
    i8 9, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm, %bb.bm
  %i.jj = getelementptr inbounds nuw i8, ptr %i.cr, i64 2 ; 2 uses
  %i.jk = ptrtoint ptr %i.jj to i64               ; 2 uses
  %i.jl = sub i64 %i.jk, %i.cg
  %i.jm = getelementptr inbounds i8, ptr %i.cl, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ch, i64 296
  store ptr %i.jm, ptr %i.jn, align 8
  %.neg83.i = sub i64 %i.cg, %i.jk
  %.neg84.i = trunc i64 %.neg83.i to i32
  %i.jo = add i32 %i.cn, %.neg84.i                ; 2 uses
  %i.jp = add i32 %i.jo, -1                       ; 3 uses
  %.not17.i111.i = icmp eq i32 %i.jp, 0
  br i1 %.not17.i111.i, label %length_until_newline.exit121.i, label %.lr.ph.i112.i

.lr.ph.i112.i:                                    ; preds = %bb.bn
  %i.jq = add i32 %i.jo, -2
  %i.jr = zext i32 %i.jq to i64
  %wide.trip.count.i113.i = zext i32 %i.jp to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.br, %.lr.ph.i112.i
  %indvars.iv.i114.i = phi i64 [ 0, %.lr.ph.i112.i ], [ %indvars.iv.next.i115.i, %bb.br ] ; 5 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jj, i64 %indvars.iv.i114.i ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1
  switch i8 %i.jt, label %bb.br [
    i8 10, label %._crit_edge.loopexit.split.loop.exit.i120.i
    i8 13, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.ju = icmp samesign ult i64 %indvars.iv.i114.i, %i.jr
  br i1 %i.ju, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.jw = load i8, ptr %i.jv, align 1
  %.not.i118.i = icmp eq i8 %i.jw, 10
  br i1 %.not.i118.i, label %bb.br, label %._crit_edge.loopexit.split.loop.exit19.i119.i

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %indvars.iv.next.i115.i = add nuw nsw i64 %indvars.iv.i114.i, 1 ; 2 uses
  %exitcond.not.i116.i = icmp eq i64 %indvars.iv.next.i115.i, %wide.trip.count.i113.i
  br i1 %exitcond.not.i116.i, label %length_until_newline.exit121.i, label %bb.bo

._crit_edge.loopexit.split.loop.exit.i120.i:      ; preds = %bb.bo
  %i.jx = trunc nuw i64 %indvars.iv.i114.i to i32
  br label %length_until_newline.exit121.i

._crit_edge.loopexit.split.loop.exit19.i119.i:    ; preds = %bb.bq
  %i.jy = trunc nuw i64 %indvars.iv.i114.i to i32
  br label %length_until_newline.exit121.i

length_until_newline.exit121.i:                   ; preds = %bb.br, %._crit_edge.loopexit.split.loop.exit19.i119.i, %._crit_edge.loopexit.split.loop.exit.i120.i, %bb.bn
  %.0.lcssa.i117.i = phi i32 [ 0, %bb.bn ], [ %i.jy, %._crit_edge.loopexit.split.loop.exit19.i119.i ], [ %i.jx, %._crit_edge.loopexit.split.loop.exit.i120.i ], [ %i.jp, %bb.br ]
  %i.jz = add i32 %.0.lcssa.i117.i, 1
  br label %.thread

bb.bs:                                            ; preds = %bb.bl
  %i.ka = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.kb = load i8, ptr %i.ka, align 1
  switch i8 %i.kb, label %parseLine.exit [
    i8 32, label %bb.bt
    i8 9, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs, %bb.bs
  %i.kc = getelementptr inbounds nuw i8, ptr %i.cr, i64 2 ; 2 uses
  %i.kd = ptrtoint ptr %i.kc to i64               ; 2 uses
  %i.ke = sub i64 %i.kd, %i.cg
  %i.kf = getelementptr inbounds i8, ptr %i.cl, i64 %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ch, i64 312
  store ptr %i.kf, ptr %i.kg, align 8
  %.neg.i = sub i64 %i.cg, %i.kd
  %.neg82.i = trunc i64 %.neg.i to i32
  %i.kh = add i32 %i.cn, %.neg82.i                ; 2 uses
  %i.ki = add i32 %i.kh, -1                       ; 3 uses
  %.not17.i = icmp eq i32 %i.ki, 0
  br i1 %.not17.i, label %length_until_newline.exit, label %.lr.ph.i482

.lr.ph.i482:                                      ; preds = %bb.bt
  %i.kj = add i32 %i.kh, -2
  %i.kk = zext i32 %i.kj to i64
  %wide.trip.count.i483 = zext i32 %i.ki to i64
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bx, %.lr.ph.i482
  %indvars.iv.i484 = phi i64 [ 0, %.lr.ph.i482 ], [ %indvars.iv.next.i485, %bb.bx ] ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 %indvars.iv.i484 ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1
  switch i8 %i.km, label %bb.bx [
    i8 10, label %._crit_edge.loopexit.split.loop.exit.i
    i8 13, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.kn = icmp samesign ult i64 %indvars.iv.i484, %i.kk
  br i1 %i.kn, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 1
  %i.kp = load i8, ptr %i.ko, align 1
  %.not.i488 = icmp eq i8 %i.kp, 10
  br i1 %.not.i488, label %bb.bx, label %._crit_edge.loopexit.split.loop.exit19.i

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bu
  %indvars.iv.next.i485 = add nuw nsw i64 %indvars.iv.i484, 1 ; 2 uses
  %exitcond.not.i486 = icmp eq i64 %indvars.iv.next.i485, %wide.trip.count.i483
  br i1 %exitcond.not.i486, label %length_until_newline.exit, label %bb.bu

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.bu
  %i.kq = trunc nuw i64 %indvars.iv.i484 to i32
  br label %length_until_newline.exit

._crit_edge.loopexit.split.loop.exit19.i:         ; preds = %bb.bw
  %i.kr = trunc nuw i64 %indvars.iv.i484 to i32
  br label %length_until_newline.exit

length_until_newline.exit:                        ; preds = %bb.bx, %bb.bt, %._crit_edge.loopexit.split.loop.exit.i, %._crit_edge.loopexit.split.loop.exit19.i
  %.0.lcssa.i = phi i32 [ 0, %bb.bt ], [ %i.kr, %._crit_edge.loopexit.split.loop.exit19.i ], [ %i.kq, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.ki, %bb.bx ]
  %i.ks = add i32 %.0.lcssa.i, 1
  br label %.thread

parseLine.exit:                                   ; preds = %bb.t, %bb.t, %bb.bl, %bb.bm, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %.thread701

.thread:                                          ; preds = %bb.bc, %skip_space.exit96.i, %._crit_edge.loopexit.split.loop.exit.i.i, %._crit_edge.loopexit.split.loop.exit19.i.i, %length_until_newline.exit110.i, %length_until_newline.exit121.i, %length_until_newline.exit
  %.sink756 = phi i64 [ 320, %length_until_newline.exit ], [ 352, %length_until_newline.exit110.i ], [ 304, %length_until_newline.exit121.i ], [ 336, %skip_space.exit96.i ], [ 336, %._crit_edge.loopexit.split.loop.exit19.i.i ], [ 336, %._crit_edge.loopexit.split.loop.exit.i.i ], [ 336, %bb.bc ]
  %.0.lcssa.i.i.sink = phi i32 [ %i.ks, %length_until_newline.exit ], [ %i.jg, %length_until_newline.exit110.i ], [ %i.jz, %length_until_newline.exit121.i ], [ 0, %skip_space.exit96.i ], [ %i.ij, %._crit_edge.loopexit.split.loop.exit19.i.i ], [ %i.ii, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.ia, %bb.bc ]
  %.sink = phi i32 [ 6, %length_until_newline.exit ], [ 8, %length_until_newline.exit110.i ], [ 5, %length_until_newline.exit121.i ], [ 7, %skip_space.exit96.i ], [ 7, %._crit_edge.loopexit.split.loop.exit19.i.i ], [ 7, %._crit_edge.loopexit.split.loop.exit.i.i ], [ 7, %bb.bc ] ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sink756
  store i32 %.0.lcssa.i.i.sink, ptr %i.kt, align 8
  store i32 %.sink, ptr %i.cq, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.cd

bb.by:                                            ; preds = %._crit_edge170.i, %._crit_edge.i
  %i.ku = phi i32 [ 1, %._crit_edge170.i ], [ %.068.lcssa.i, %._crit_edge.i ]
  %i.kv = phi i32 [ %10, %._crit_edge170.i ], [ %i.hj, %._crit_edge.i ]
  %.pr = load i32, ptr %i.cq, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  switch i32 %.pr, label %bb.cd [
    i32 1, label %bb.bz
    i32 2, label %bb.ca
    i32 3, label %bb.cb
    i32 4, label %bb.cc
  ]

bb.bz:                                            ; preds = %.thread493, %bb.by
  %i.kw = add i32 %.0346564, 1
  br label %.thread701

bb.ca:                                            ; preds = %.thread494, %bb.by
  %i.kx = add i32 %.0349563, 1
  br label %.thread701

bb.cb:                                            ; preds = %.thread495, %bb.by
  %i.ky = add i32 %.0386556, 1
  br label %.thread701

bb.cc:                                            ; preds = %bb.by
  %i.kz = add i32 %i.kv, %.0383557
  %i.la = add i32 %i.ku, %.0380558
  br label %.thread701

bb.cd:                                            ; preds = %.thread, %bb.by
  %i.lb = phi i32 [ %.pr, %bb.by ], [ %.sink, %.thread ]
  %i.lc = icmp eq i32 %i.lb, 8
  %i.ld = trunc nuw i64 %indvars.iv637 to i32
  %spec.select = select i1 %i.lc, i32 %i.ld, i32 %.0378559
  br label %.thread701

.thread701:                                       ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %parseLine.exit
  %.2388 = phi i32 [ %.0386556, %parseLine.exit ], [ %.0386556, %bb.bz ], [ %.0386556, %bb.cd ], [ %.0386556, %bb.cc ], [ %i.ky, %bb.cb ], [ %.0386556, %bb.ca ] ; 3 uses
  %.2385 = phi i32 [ %.0383557, %parseLine.exit ], [ %.0383557, %bb.bz ], [ %.0383557, %bb.cd ], [ %i.kz, %bb.cc ], [ %.0383557, %bb.cb ], [ %.0383557, %bb.ca ] ; 3 uses
  %.2382 = phi i32 [ %.0380558, %parseLine.exit ], [ %.0380558, %bb.bz ], [ %.0380558, %bb.cd ], [ %i.la, %bb.cc ], [ %.0380558, %bb.cb ], [ %.0380558, %bb.ca ] ; 3 uses
  %.1379 = phi i32 [ %.0378559, %parseLine.exit ], [ %.0378559, %bb.bz ], [ %spec.select, %bb.cd ], [ %.0378559, %bb.cc ], [ %.0378559, %bb.cb ], [ %.0378559, %bb.ca ] ; 3 uses
  %.2351 = phi i32 [ %.0349563, %parseLine.exit ], [ %.0349563, %bb.bz ], [ %.0349563, %bb.cd ], [ %.0349563, %bb.cc ], [ %.0349563, %bb.cb ], [ %i.kx, %bb.ca ] ; 3 uses
  %.2348 = phi i32 [ %.0346564, %parseLine.exit ], [ %i.kw, %bb.bz ], [ %.0346564, %bb.cd ], [ %.0346564, %bb.cc ], [ %.0346564, %bb.cb ], [ %.0346564, %bb.ca ] ; 3 uses
  %indvars.iv.next638 = add nuw nsw i64 %indvars.iv637, 1 ; 2 uses
  %exitcond641.not = icmp eq i64 %indvars.iv.next638, %i.aq
  br i1 %exitcond641.not, label %bb.ce, label %bb.s

bb.ce:                                            ; preds = %.thread701
  %.not411 = icmp eq ptr %i.as, null
  br i1 %.not411, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @free(ptr noundef nonnull %i.as) #54
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.le = icmp sgt i32 %.1379, -1
  br i1 %i.le, label %bb.ch, label %bb.cn

bb.ch:                                            ; preds = %bb.cg
  %i.lf = zext nneg i32 %.1379 to i64
  %i.lg = getelementptr inbounds nuw [360 x i8], ptr %i.by, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 344
  %i.li = load ptr, ptr %i.lh, align 8            ; 4 uses
  %.not412 = icmp eq ptr %i.li, null
  br i1 %.not412, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 352
  %i.lk = load i32, ptr %i.lj, align 8            ; 3 uses
  %.not413 = icmp eq i32 %i.lk, 0
  br i1 %.not413, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ll = zext i32 %i.lk to i64
  %i.lm = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %i.li, i32 noundef 0, i64 noundef %i.ll) #51 ; 2 uses
  %.not.i.i446 = icmp eq ptr %i.lm, null
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = ptrtoint ptr %i.li to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = trunc i64 %i.lp to i32
  %i.lr = select i1 %.not.i.i446, i32 %i.lk, i32 %i.lq ; 2 uses
  %i.ls = add i32 %i.lr, 1
  %i.lt = zext i32 %i.ls to i64
  %i.lu = call noalias ptr @malloc(i64 noundef %i.lt) #56 ; 6 uses
  %.not.i447 = icmp eq ptr %i.lu, null
  br i1 %.not.i447, label %my_strndup.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lv = zext i32 %i.lr to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lu, ptr nonnull align 1 %i.li, i64 %i.lv, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lv
  store i8 0, ptr %i.lw, align 1
  br label %my_strndup.exit

my_strndup.exit:                                  ; preds = %bb.cj, %bb.ck
  %i.lx = call fastcc i32 @tinyobj_parse_and_index_mtl_file(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %i.lu, ptr noundef nonnull %9) ; 2 uses
  %.not414 = icmp eq i32 %i.lx, 0
  br i1 %.not414, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %my_strndup.exit
  %i.ly = load ptr, ptr @stderr, align 8
  %i.lz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ly, ptr noundef nonnull @.str, ptr noundef %i.lu, i32 noundef %i.lx) #55 ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %my_strndup.exit
  call void @free(ptr noundef %i.lu) #54
  %.val.pre = load ptr, ptr %i.cb, align 8
  %.val437.pre = load i32, ptr %i.cc, align 8
  %i.ma = zext i32 %.val437.pre to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.ci, %bb.ch, %bb.cg
  %.val437 = phi i64 [ %i.ma, %bb.cm ], [ 10, %bb.ci ], [ 10, %bb.ch ], [ 10, %bb.cg ] ; 2 uses
  %.val441 = phi ptr [ %.val.pre, %bb.cm ], [ %i.ca, %bb.ci ], [ %i.ca, %bb.ch ], [ %i.ca, %bb.cg ] ; 4 uses
  %i.mb = zext i32 %.2348 to i64
  %i.mc = mul nuw nsw i64 %i.mb, 12
  %i.md = call noalias ptr @malloc(i64 noundef %i.mc) #56
  store ptr %i.md, ptr %i.o, align 8
  store i32 %.2348, ptr %0, align 8
  %i.me = zext i32 %.2351 to i64
  %i.mf = mul nuw nsw i64 %i.me, 12
  %i.mg = call noalias ptr @malloc(i64 noundef %i.mf) #56
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  store ptr %i.mg, ptr %i.mh, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.2351, ptr %i.mi, align 4
  %i.mj = zext i32 %.2388 to i64
  %i.mk = shl nuw nsw i64 %i.mj, 3
  %i.ml = call noalias ptr @malloc(i64 noundef %i.mk) #56
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.ml, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.2388, ptr %i.mn, align 8
  %i.mo = zext i32 %.2385 to i64
  %i.mp = mul nuw nsw i64 %i.mo, 12
  %i.mq = call noalias ptr @malloc(i64 noundef %i.mp) #56
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.mq, ptr %i.mr, align 8
  %i.ms = zext i32 %.2382 to i64
  %i.mt = shl nuw nsw i64 %i.ms, 2                ; 2 uses
  %i.mu = call noalias ptr @malloc(i64 noundef %i.mt) #56
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.mu, ptr %i.mv, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.2382, ptr %i.mw, align 4
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.2385, ptr %i.mx, align 8
  %i.my = call noalias ptr @malloc(i64 noundef %i.mt) #56
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.my, ptr %i.mz, align 8
  %.not1.i.i = icmp eq ptr %.val441, null
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.db
  %indvars.iv648 = phi i64 [ 0, %bb.cn ], [ %indvars.iv.next649, %bb.db ] ; 2 uses
  %.0355576 = phi i32 [ -1, %bb.cn ], [ %.2357, %bb.db ] ; 8 uses
  %.0358575 = phi i32 [ 0, %bb.cn ], [ %.1359, %bb.db ] ; 9 uses
  %.0360574 = phi i32 [ 0, %bb.cn ], [ %.1361, %bb.db ] ; 9 uses
  %.0362573 = phi i32 [ 0, %bb.cn ], [ %.1363, %bb.db ] ; 10 uses
  %.0364572 = phi i32 [ 0, %bb.cn ], [ %.1365, %bb.db ] ; 10 uses
  %.0366571 = phi i32 [ 0, %bb.cn ], [ %.1367, %bb.db ] ; 10 uses
  %i.na = getelementptr inbounds nuw [360 x i8], ptr %i.by, i64 %indvars.iv648 ; 15 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 356
  %i.nc = load i32, ptr %i.nb, align 4
  switch i32 %i.nc, label %bb.db [
    i32 4, label %.preheader502
    i32 7, label %bb.cp
    i32 1, label %bb.cw
    i32 2, label %bb.cx
    i32 3, label %bb.cy
  ]

.preheader502:                                    ; preds = %bb.co
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 224 ; 3 uses
  %i.ne = load i32, ptr %i.nd, align 8
  %.not589 = icmp eq i32 %i.ne, 0
  br i1 %.not589, label %.preheader501, label %.lr.ph566

.lr.ph566:                                        ; preds = %.preheader502
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  br label %bb.cz

bb.cp:                                            ; preds = %bb.co
  %i.ng = getelementptr inbounds nuw i8, ptr %i.na, i64 328
  %i.nh = load ptr, ptr %i.ng, align 8            ; 2 uses
  %.not419 = icmp eq ptr %i.nh, null
  br i1 %.not419, label %bb.db, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 336
  %i.nj = load i32, ptr %i.ni, align 8            ; 3 uses
  %.not420 = icmp eq i32 %i.nj, 0
  br i1 %.not420, label %bb.db, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nk = add i32 %i.nj, 1
  %i.nl = zext i32 %i.nk to i64
  %i.nm = call noalias ptr @malloc(i64 noundef %i.nl) #56 ; 6 uses
  %i.nn = zext i32 %i.nj to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nm, ptr nonnull align 1 %i.nh, i64 %i.nn, i1 false)
end_hunk_0
begin_hunk_1_@cgltf_parse_json_root:bb.a
  %i.aqj = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.aqi ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 32
  %i.aql = load i32, ptr %i.aqk, align 8
  %.not138.i.i.i = icmp eq i32 %i.aql, 1
  br i1 %.not138.i.i.i, label %bb.gh, label %cgltf_parse_json_asset.exit.thread

bb.gh:                                            ; preds = %bb.gg
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqj, i64 56
  %i.aqn = load i32, ptr %i.aqm, align 8          ; 2 uses
  %i.aqo = add nuw nsw i32 %.0127252.i.i.i, 2     ; 2 uses
  %.not140246.i.i.i = icmp sgt i32 %i.aqn, 0
  br i1 %.not140246.i.i.i, label %.lr.ph249.i.i.i, label %cgltf_skip_json.exit194.thread227.i.i.i

.lr.ph249.i.i.i:                                  ; preds = %bb.gh, %cgltf_skip_json.exit.thread.i.i.i
  %.0121248.i.i.i = phi i32 [ %i.atu, %cgltf_skip_json.exit.thread.i.i.i ], [ 0, %bb.gh ]
  %.1128247.i.i.i = phi i32 [ %.2129201.i.i.i, %cgltf_skip_json.exit.thread.i.i.i ], [ %i.aqo, %bb.gh ] ; 9 uses
  %i.aqp = zext nneg i32 %.1128247.i.i.i to i64
  %i.aqq = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.aqp ; 4 uses
  %i.aqr = load i32, ptr %i.aqq, align 8
  %.not139.i.i.i = icmp eq i32 %i.aqr, 3
  br i1 %.not139.i.i.i, label %bb.gi, label %cgltf_parse_json_asset.exit.thread

bb.gi:                                            ; preds = %.lr.ph249.i.i.i
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqq, i64 24
  %i.aqt = load i32, ptr %i.aqs, align 8
  %i.aqu = icmp eq i32 %i.aqt, 0
  br i1 %i.aqu, label %cgltf_parse_json_asset.exit.thread, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqq, i64 16
  %i.aqw = load i64, ptr %i.aqv, align 8
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8
  %i.aqy = load i64, ptr %i.aqx, align 8          ; 3 uses
  %i.aqz = sub nsw i64 %i.aqw, %i.aqy
  switch i64 %i.aqz, label %cgltf_json_strcmp.exit162.thread.i.i.i [
    i64 10, label %cgltf_json_strcmp.exit149.i.i.i
    i64 13, label %cgltf_json_strcmp.exit162.i.i.i
  ]

cgltf_json_strcmp.exit149.i.i.i:                  ; preds = %bb.gj
  %i.ara = getelementptr inbounds i8, ptr %2, i64 %i.aqy ; 2 uses
  %i.arb = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ara, ptr noundef nonnull dereferenceable(11) @.str.165, i64 noundef 10) #51
  %i.arc = icmp eq i32 %i.arb, 0
  br i1 %i.arc, label %bb.gk, label %cgltf_json_strcmp.exit155.i.i.i

bb.gk:                                            ; preds = %cgltf_json_strcmp.exit149.i.i.i
  %i.ard = sext i32 %.1128247.i.i.i to i64
  %i.are = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ard ; 3 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.are, i64 32
  %i.arg = load i32, ptr %i.arf, align 8
  %.not.i150.i.i.i = icmp eq i32 %i.arg, 4
  br i1 %.not.i150.i.i.i, label %bb.gl, label %cgltf_json_to_int.exit.i244.i.i

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #54
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 48
  %i.ari = load i64, ptr %i.arh, align 8
  %i.arj = getelementptr inbounds nuw i8, ptr %i.are, i64 40
  %i.ark = load i64, ptr %i.arj, align 8          ; 2 uses
  %i.arl = sub nsw i64 %i.ari, %i.ark
  %spec.select.i152.i.i.i = call i64 @llvm.umin.i64(i64 %i.arl, i64 127) ; 2 uses
  %i.arm = getelementptr inbounds i8, ptr %2, i64 %i.ark
  %i.arn = call ptr @strncpy(ptr noundef nonnull %i.aq, ptr noundef readonly %i.arm, i64 noundef %spec.select.i152.i.i.i) #54 ; 0 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aq, i64 %spec.select.i152.i.i.i
  store i8 0, ptr %i.aro, align 1
  %i.arp = call i64 @strtol(ptr noundef nonnull captures(none) %i.aq, ptr noundef null, i32 noundef 10) #54, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #54
  %sext232.i.i.i = shl i64 %i.arp, 32
  %i.arq = ashr exact i64 %sext232.i.i.i, 32
  %i.arr = add nsw i64 %i.arq, 1
  %i.ars = inttoptr i64 %i.arr to ptr
  br label %cgltf_json_to_int.exit.i244.i.i

cgltf_json_to_int.exit.i244.i.i:                  ; preds = %bb.gl, %bb.gk
  %.0.i151.i.i.i = phi ptr [ %i.ars, %bb.gl ], [ null, %bb.gk ]
  store ptr %.0.i151.i.i.i, ptr %i.agy, align 8
  %i.art = add nuw nsw i32 %.1128247.i.i.i, 2
  br label %cgltf_skip_json.exit.thread.i.i.i

cgltf_json_strcmp.exit155.i.i.i:                  ; preds = %cgltf_json_strcmp.exit149.i.i.i
  %i.aru = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ara, ptr noundef nonnull dereferenceable(11) @.str.167, i64 noundef 10) #51
  %i.arv = icmp eq i32 %i.aru, 0
  br i1 %i.arv, label %bb.gm, label %cgltf_json_strcmp.exit162.thread.i.i.i

bb.gm:                                            ; preds = %cgltf_json_strcmp.exit155.i.i.i
  %i.arw = sext i32 %.1128247.i.i.i to i64
  %i.arx = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.arw ; 3 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 32
  %i.arz = load i32, ptr %i.ary, align 8
  %.not.i156.i.i.i = icmp eq i32 %i.arz, 4
  br i1 %.not.i156.i.i.i, label %bb.gn, label %cgltf_json_to_size.exit159.i.i.i

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap) #54
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arx, i64 48
  %i.asb = load i64, ptr %i.asa, align 8
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arx, i64 40
  %i.asd = load i64, ptr %i.asc, align 8          ; 2 uses
  %i.ase = sub nsw i64 %i.asb, %i.asd
  %spec.select.i158.i.i.i = call i64 @llvm.umin.i64(i64 %i.ase, i64 127) ; 2 uses
  %i.asf = getelementptr inbounds i8, ptr %2, i64 %i.asd
  %i.asg = call ptr @strncpy(ptr noundef nonnull %i.ap, ptr noundef readonly %i.asf, i64 noundef %spec.select.i158.i.i.i) #54 ; 0 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ap, i64 %spec.select.i158.i.i.i
  store i8 0, ptr %i.ash, align 1
  %i.asi = call i64 @strtoll(ptr noundef nonnull captures(none) %i.ap, ptr noundef null, i32 noundef 10) #54, !inline_history !2
  %i.asj = call i64 @llvm.smax.i64(i64 %i.asi, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap) #54
  br label %cgltf_json_to_size.exit159.i.i.i

cgltf_json_to_size.exit159.i.i.i:                 ; preds = %bb.gn, %bb.gm
  %.0.i157.i.i.i = phi i64 [ %i.asj, %bb.gn ], [ 0, %bb.gm ]
  store i64 %.0.i157.i.i.i, ptr %i.agx, align 8
  %i.ask = add nuw nsw i32 %.1128247.i.i.i, 2
  br label %cgltf_skip_json.exit.thread.i.i.i

cgltf_json_strcmp.exit162.i.i.i:                  ; preds = %bb.gj
  %i.asl = getelementptr inbounds i8, ptr %2, i64 %i.aqy
  %i.asm = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.asl, ptr noundef nonnull dereferenceable(14) @.str.168, i64 noundef 13) #51
  %i.asn = icmp eq i32 %i.asm, 0
  br i1 %i.asn, label %bb.go, label %cgltf_json_strcmp.exit162.thread.i.i.i

bb.go:                                            ; preds = %cgltf_json_strcmp.exit162.i.i.i
  %i.aso = sext i32 %.1128247.i.i.i to i64
  %i.asp = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.aso ; 3 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 32
  %i.asr = load i32, ptr %i.asq, align 8
  %.not.i.i.i.i.i342 = icmp eq i32 %i.asr, 4
  br i1 %.not.i.i.i.i.i342, label %cgltf_json_to_int.exit.i.i.i.i343, label %cgltf_json_to_component_type.exit.i.i.i

cgltf_json_to_int.exit.i.i.i.i343:                ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #54
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asp, i64 48
  %i.ast = load i64, ptr %i.ass, align 8
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asp, i64 40
  %i.asv = load i64, ptr %i.asu, align 8          ; 2 uses
  %i.asw = sub nsw i64 %i.ast, %i.asv
  %spec.select.i.i.i.i.i344 = call i64 @llvm.umin.i64(i64 %i.asw, i64 127) ; 2 uses
  %i.asx = getelementptr inbounds i8, ptr %2, i64 %i.asv
  %i.asy = call ptr @strncpy(ptr noundef nonnull %i.ao, ptr noundef readonly %i.asx, i64 noundef %spec.select.i.i.i.i.i344) #54 ; 0 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.ao, i64 %spec.select.i.i.i.i.i344
  store i8 0, ptr %i.asz, align 1
  %i.ata = call i64 @strtol(ptr noundef nonnull captures(none) %i.ao, ptr noundef null, i32 noundef 10) #54, !inline_history !0
  %i.atb = trunc i64 %i.ata to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #54
  %switch.tableidx403 = add i32 %i.atb, -5120     ; 2 uses
  %i.atc = icmp ult i32 %switch.tableidx403, 7
  br i1 %i.atc, label %switch.lookup404, label %cgltf_json_to_component_type.exit.i.i.i

switch.lookup404:                                 ; preds = %cgltf_json_to_int.exit.i.i.i.i343
  %i.atd = zext nneg i32 %switch.tableidx403 to i64
  %switch.gep405 = getelementptr inbounds nuw i8, ptr @switch.table.cgltf_parse_json_root.32, i64 %i.atd
  %switch.load406 = load i8, ptr %switch.gep405, align 1
  %switch.ext407 = zext i8 %switch.load406 to i32
  br label %cgltf_json_to_component_type.exit.i.i.i

cgltf_json_to_component_type.exit.i.i.i:          ; preds = %bb.go, %cgltf_json_to_int.exit.i.i.i.i343, %switch.lookup404
  %.0.i163.i.i.i = phi i32 [ %switch.ext407, %switch.lookup404 ], [ 0, %cgltf_json_to_int.exit.i.i.i.i343 ], [ 0, %bb.go ]
  store i32 %.0.i163.i.i.i, ptr %i.agw, align 8
  %i.ate = add nuw nsw i32 %.1128247.i.i.i, 2
  br label %cgltf_skip_json.exit.thread.i.i.i

cgltf_json_strcmp.exit162.thread.i.i.i:           ; preds = %cgltf_json_strcmp.exit162.i.i.i, %cgltf_json_strcmp.exit155.i.i.i, %bb.gj
  %i.atf = add nuw nsw i32 %.1128247.i.i.i, 1
  %i.atg = add nuw nsw i32 %.1128247.i.i.i, 2
  %i.ath = zext nneg i32 %i.atf to i64
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gs, %cgltf_json_strcmp.exit162.thread.i.i.i
  %indvars.iv.i.i.i.i339 = phi i64 [ %i.ath, %cgltf_json_strcmp.exit162.thread.i.i.i ], [ %indvars.iv.next.i.i.i.i341, %bb.gs ] ; 2 uses
  %.016.i.i.i.i340 = phi i32 [ %i.atg, %cgltf_json_strcmp.exit162.thread.i.i.i ], [ %.1.i.i.i.i, %bb.gs ] ; 4 uses
  %i.ati = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i.i.i.i339 ; 3 uses
  %i.atj = load i32, ptr %i.ati, align 8
  switch i32 %i.atj, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.gq
    i32 2, label %bb.gr
    i32 4, label %bb.gs
    i32 3, label %bb.gs
  ]

bb.gq:                                            ; preds = %bb.gp
  %i.atk = getelementptr inbounds nuw i8, ptr %i.ati, i64 24
  %i.atl = load i32, ptr %i.atk, align 8
  %i.atm = shl nsw i32 %i.atl, 1
  %i.atn = add nsw i32 %i.atm, %.016.i.i.i.i340
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  %i.ato = getelementptr inbounds nuw i8, ptr %i.ati, i64 24
  %i.atp = load i32, ptr %i.ato, align 8
  %i.atq = add nsw i32 %i.atp, %.016.i.i.i.i340
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq, %bb.gp, %bb.gp
  %.1.i.i.i.i = phi i32 [ %i.atn, %bb.gq ], [ %i.atq, %bb.gr ], [ %.016.i.i.i.i340, %bb.gp ], [ %.016.i.i.i.i340, %bb.gp ] ; 2 uses
  %indvars.iv.next.i.i.i.i341 = add nuw nsw i64 %indvars.iv.i.i.i.i339, 1 ; 3 uses
  %i.atr = sext i32 %.1.i.i.i.i to i64
  %i.ats = icmp slt i64 %indvars.iv.next.i.i.i.i341, %i.atr
  br i1 %i.ats, label %bb.gp, label %cgltf_skip_json.exit.i.i.i

cgltf_skip_json.exit.i.i.i:                       ; preds = %bb.gs
  %i.att = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i341 to i32
  br label %cgltf_skip_json.exit.thread.i.i.i

cgltf_skip_json.exit.thread.i.i.i:                ; preds = %cgltf_skip_json.exit.i.i.i, %cgltf_json_to_component_type.exit.i.i.i, %cgltf_json_to_size.exit159.i.i.i, %cgltf_json_to_int.exit.i244.i.i
  %.2129201.i.i.i = phi i32 [ %i.att, %cgltf_skip_json.exit.i.i.i ], [ %i.ate, %cgltf_json_to_component_type.exit.i.i.i ], [ %i.ask, %cgltf_json_to_size.exit159.i.i.i ], [ %i.art, %cgltf_json_to_int.exit.i244.i.i ] ; 2 uses
  %i.atu = add nuw nsw i32 %.0121248.i.i.i, 1     ; 2 uses
  %exitcond271.not.i.i.i = icmp eq i32 %i.atu, %i.aqn
  br i1 %exitcond271.not.i.i.i, label %cgltf_skip_json.exit194.thread227.i.i.i, label %.lr.ph249.i.i.i

cgltf_json_strcmp.exit166.i.i.i:                  ; preds = %bb.gd
  %i.atv = getelementptr inbounds i8, ptr %2, i64 %i.apl
  %i.atw = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.atv, ptr noundef nonnull dereferenceable(7) @.str.183, i64 noundef 6) #51
  %i.atx = icmp eq i32 %i.atw, 0
  br i1 %i.atx, label %bb.gt, label %cgltf_json_strcmp.exit166.thread.i.i.i

bb.gt:                                            ; preds = %cgltf_json_strcmp.exit166.i.i.i
  %i.aty = sext i32 %.0127252.i.i.i to i64
  %i.atz = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.aty ; 2 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.atz, i64 32
  %i.aub = load i32, ptr %i.aua, align 8
  %.not135.i.i.i = icmp eq i32 %i.aub, 1
  br i1 %.not135.i.i.i, label %bb.gu, label %cgltf_parse_json_asset.exit.thread

bb.gu:                                            ; preds = %bb.gt
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atz, i64 56
  %i.aud = load i32, ptr %i.auc, align 8          ; 2 uses
  %i.aue = add nuw nsw i32 %.0127252.i.i.i, 2     ; 2 uses
  %.not137243.i.i.i = icmp sgt i32 %i.aud, 0
  br i1 %.not137243.i.i.i, label %.lr.ph.i241.i.i, label %cgltf_skip_json.exit194.thread227.i.i.i

.lr.ph.i241.i.i:                                  ; preds = %bb.gu, %cgltf_skip_json.exit187.thread.i.i.i
  %.0245.i.i.i = phi i32 [ %i.awr, %cgltf_skip_json.exit187.thread.i.i.i ], [ 0, %bb.gu ]
  %.4131244.i.i.i = phi i32 [ %.5132213.i.i.i, %cgltf_skip_json.exit187.thread.i.i.i ], [ %i.aue, %bb.gu ] ; 7 uses
  %i.auf = zext nneg i32 %.4131244.i.i.i to i64
  %i.aug = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.auf ; 4 uses
  %i.auh = load i32, ptr %i.aug, align 8
  %.not136.i.i.i = icmp eq i32 %i.auh, 3
  br i1 %.not136.i.i.i, label %bb.gv, label %cgltf_parse_json_asset.exit.thread

bb.gv:                                            ; preds = %.lr.ph.i241.i.i
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aug, i64 24
  %i.auj = load i32, ptr %i.aui, align 8
  %i.auk = icmp eq i32 %i.auj, 0
  br i1 %i.auk, label %cgltf_parse_json_asset.exit.thread, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aul = getelementptr inbounds nuw i8, ptr %i.aug, i64 16
  %i.aum = load i64, ptr %i.aul, align 8
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aug, i64 8
  %i.auo = load i64, ptr %i.aun, align 8          ; 2 uses
  %i.aup = sub nsw i64 %i.aum, %i.auo
  %i.auq = icmp eq i64 %i.aup, 10
  br i1 %i.auq, label %cgltf_json_strcmp.exit169.i.i.i, label %cgltf_json_strcmp.exit176.thread.i.i.i

cgltf_json_strcmp.exit169.i.i.i:                  ; preds = %bb.gw
  %i.aur = getelementptr inbounds i8, ptr %2, i64 %i.auo ; 2 uses
  %i.aus = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.aur, ptr noundef nonnull dereferenceable(11) @.str.165, i64 noundef 10) #51
  %i.aut = icmp eq i32 %i.aus, 0
  br i1 %i.aut, label %bb.gx, label %cgltf_json_strcmp.exit176.i.i.i335

bb.gx:                                            ; preds = %cgltf_json_strcmp.exit169.i.i.i
  %i.auu = sext i32 %.4131244.i.i.i to i64
  %i.auv = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.auu ; 3 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 32
  %i.aux = load i32, ptr %i.auw, align 8
  %.not.i170.i.i.i = icmp eq i32 %i.aux, 4
  br i1 %.not.i170.i.i.i, label %bb.gy, label %cgltf_json_to_int.exit173.i.i.i

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an) #54
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auv, i64 48
  %i.auz = load i64, ptr %i.auy, align 8
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auv, i64 40
  %i.avb = load i64, ptr %i.ava, align 8          ; 2 uses
  %i.avc = sub nsw i64 %i.auz, %i.avb
  %spec.select.i172.i.i.i = call i64 @llvm.umin.i64(i64 %i.avc, i64 127) ; 2 uses
  %i.avd = getelementptr inbounds i8, ptr %2, i64 %i.avb
  %i.ave = call ptr @strncpy(ptr noundef nonnull %i.an, ptr noundef readonly %i.avd, i64 noundef %spec.select.i172.i.i.i) #54 ; 0 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.an, i64 %spec.select.i172.i.i.i
  store i8 0, ptr %i.avf, align 1
  %i.avg = call i64 @strtol(ptr noundef nonnull captures(none) %i.an, ptr noundef null, i32 noundef 10) #54, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an) #54
  %sext.i243.i.i = shl i64 %i.avg, 32
  %i.avh = ashr exact i64 %sext.i243.i.i, 32
  %i.avi = add nsw i64 %i.avh, 1
  %i.avj = inttoptr i64 %i.avi to ptr
  br label %cgltf_json_to_int.exit173.i.i.i

cgltf_json_to_int.exit173.i.i.i:                  ; preds = %bb.gy, %bb.gx
  %.0.i171.i.i.i = phi ptr [ %i.avj, %bb.gy ], [ null, %bb.gx ]
  store ptr %.0.i171.i.i.i, ptr %i.agv, align 8
  %i.avk = add nuw nsw i32 %.4131244.i.i.i, 2
  br label %cgltf_skip_json.exit187.thread.i.i.i

cgltf_json_strcmp.exit176.i.i.i335:               ; preds = %cgltf_json_strcmp.exit169.i.i.i
  %i.avl = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.aur, ptr noundef nonnull dereferenceable(11) @.str.167, i64 noundef 10) #51
  %i.avm = icmp eq i32 %i.avl, 0
  br i1 %i.avm, label %bb.gz, label %cgltf_json_strcmp.exit176.thread.i.i.i

bb.gz:                                            ; preds = %cgltf_json_strcmp.exit176.i.i.i335
  %i.avn = sext i32 %.4131244.i.i.i to i64
  %i.avo = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.avn ; 3 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 32
  %i.avq = load i32, ptr %i.avp, align 8
  %.not.i177.i.i.i336 = icmp eq i32 %i.avq, 4
  br i1 %.not.i177.i.i.i336, label %bb.ha, label %cgltf_json_to_size.exit180.i.i.i

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #54
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avo, i64 48
  %i.avs = load i64, ptr %i.avr, align 8
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avo, i64 40
  %i.avu = load i64, ptr %i.avt, align 8          ; 2 uses
  %i.avv = sub nsw i64 %i.avs, %i.avu
  %spec.select.i179.i.i.i338 = call i64 @llvm.umin.i64(i64 %i.avv, i64 127) ; 2 uses
  %i.avw = getelementptr inbounds i8, ptr %2, i64 %i.avu
  %i.avx = call ptr @strncpy(ptr noundef nonnull %i.am, ptr noundef readonly %i.avw, i64 noundef %spec.select.i179.i.i.i338) #54 ; 0 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.am, i64 %spec.select.i179.i.i.i338
  store i8 0, ptr %i.avy, align 1
  %i.avz = call i64 @strtoll(ptr noundef nonnull captures(none) %i.am, ptr noundef null, i32 noundef 10) #54, !inline_history !2
  %i.awa = call i64 @llvm.smax.i64(i64 %i.avz, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #54
  br label %cgltf_json_to_size.exit180.i.i.i

cgltf_json_to_size.exit180.i.i.i:                 ; preds = %bb.ha, %bb.gz
  %.0.i178.i.i.i337 = phi i64 [ %i.awa, %bb.ha ], [ 0, %bb.gz ]
  store i64 %.0.i178.i.i.i337, ptr %i.agu, align 8
  %i.awb = add nuw nsw i32 %.4131244.i.i.i, 2
  br label %cgltf_skip_json.exit187.thread.i.i.i

cgltf_json_strcmp.exit176.thread.i.i.i:           ; preds = %cgltf_json_strcmp.exit176.i.i.i335, %bb.gw
  %i.awc = add nuw nsw i32 %.4131244.i.i.i, 1
  %i.awd = add nuw nsw i32 %.4131244.i.i.i, 2
  %i.awe = zext nneg i32 %i.awc to i64
  br label %bb.hb

bb.hb:                                            ; preds = %bb.he, %cgltf_json_strcmp.exit176.thread.i.i.i
  %indvars.iv.i181.i.i.i = phi i64 [ %i.awe, %cgltf_json_strcmp.exit176.thread.i.i.i ], [ %indvars.iv.next.i184.i.i.i, %bb.he ] ; 2 uses
  %.016.i182.i.i.i = phi i32 [ %i.awd, %cgltf_json_strcmp.exit176.thread.i.i.i ], [ %.1.i183.i.i.i, %bb.he ] ; 4 uses
  %i.awf = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i181.i.i.i ; 3 uses
  %i.awg = load i32, ptr %i.awf, align 8
  switch i32 %i.awg, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.hc
    i32 2, label %bb.hd
    i32 4, label %bb.he
    i32 3, label %bb.he
  ]

bb.hc:                                            ; preds = %bb.hb
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awf, i64 24
  %i.awi = load i32, ptr %i.awh, align 8
  %i.awj = shl nsw i32 %i.awi, 1
  %i.awk = add nsw i32 %i.awj, %.016.i182.i.i.i
  br label %bb.he

bb.hd:                                            ; preds = %bb.hb
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awf, i64 24
  %i.awm = load i32, ptr %i.awl, align 8
  %i.awn = add nsw i32 %i.awm, %.016.i182.i.i.i
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.hb
  %.1.i183.i.i.i = phi i32 [ %i.awk, %bb.hc ], [ %i.awn, %bb.hd ], [ %.016.i182.i.i.i, %bb.hb ], [ %.016.i182.i.i.i, %bb.hb ] ; 2 uses
  %indvars.iv.next.i184.i.i.i = add nuw nsw i64 %indvars.iv.i181.i.i.i, 1 ; 3 uses
  %i.awo = sext i32 %.1.i183.i.i.i to i64
  %i.awp = icmp slt i64 %indvars.iv.next.i184.i.i.i, %i.awo
  br i1 %i.awp, label %bb.hb, label %cgltf_skip_json.exit187.i.i.i

cgltf_skip_json.exit187.i.i.i:                    ; preds = %bb.he
  %i.awq = trunc nuw nsw i64 %indvars.iv.next.i184.i.i.i to i32
  br label %cgltf_skip_json.exit187.thread.i.i.i

cgltf_skip_json.exit187.thread.i.i.i:             ; preds = %cgltf_skip_json.exit187.i.i.i, %cgltf_json_to_size.exit180.i.i.i, %cgltf_json_to_int.exit173.i.i.i
  %.5132213.i.i.i = phi i32 [ %i.awq, %cgltf_skip_json.exit187.i.i.i ], [ %i.awb, %cgltf_json_to_size.exit180.i.i.i ], [ %i.avk, %cgltf_json_to_int.exit173.i.i.i ] ; 2 uses
  %i.awr = add nuw nsw i32 %.0245.i.i.i, 1        ; 2 uses
  %exitcond.not.i242.i.i = icmp eq i32 %i.awr, %i.aud
  br i1 %exitcond.not.i242.i.i, label %cgltf_skip_json.exit194.thread227.i.i.i, label %.lr.ph.i241.i.i

cgltf_json_strcmp.exit166.thread.i.i.i:           ; preds = %cgltf_json_strcmp.exit166.i.i.i, %cgltf_json_strcmp.exit146.i.i.i, %cgltf_json_strcmp.exit.i.i.i345, %bb.gd
  %i.aws = add nuw nsw i32 %.0127252.i.i.i, 1
  %i.awt = add nuw nsw i32 %.0127252.i.i.i, 2
  %i.awu = zext nneg i32 %i.aws to i64
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hi, %cgltf_json_strcmp.exit166.thread.i.i.i
  %indvars.iv.i188.i.i.i = phi i64 [ %i.awu, %cgltf_json_strcmp.exit166.thread.i.i.i ], [ %indvars.iv.next.i191.i.i.i, %bb.hi ] ; 2 uses
  %.016.i189.i.i.i = phi i32 [ %i.awt, %cgltf_json_strcmp.exit166.thread.i.i.i ], [ %.1.i190.i.i.i, %bb.hi ] ; 4 uses
  %i.awv = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i188.i.i.i ; 3 uses
  %i.aww = load i32, ptr %i.awv, align 8
  switch i32 %i.aww, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.hg
    i32 2, label %bb.hh
    i32 4, label %bb.hi
    i32 3, label %bb.hi
  ]

bb.hg:                                            ; preds = %bb.hf
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awv, i64 24
  %i.awy = load i32, ptr %i.awx, align 8
  %i.awz = shl nsw i32 %i.awy, 1
  %i.axa = add nsw i32 %i.awz, %.016.i189.i.i.i
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hf
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awv, i64 24
  %i.axc = load i32, ptr %i.axb, align 8
  %i.axd = add nsw i32 %i.axc, %.016.i189.i.i.i
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hh, %bb.hg, %bb.hf, %bb.hf
  %.1.i190.i.i.i = phi i32 [ %i.axa, %bb.hg ], [ %i.axd, %bb.hh ], [ %.016.i189.i.i.i, %bb.hf ], [ %.016.i189.i.i.i, %bb.hf ] ; 2 uses
  %indvars.iv.next.i191.i.i.i = add nuw nsw i64 %indvars.iv.i188.i.i.i, 1 ; 3 uses
  %i.axe = sext i32 %.1.i190.i.i.i to i64
  %i.axf = icmp slt i64 %indvars.iv.next.i191.i.i.i, %i.axe
  br i1 %i.axf, label %bb.hf, label %.split.loop.exit.i192.i.i.i

.split.loop.exit.i192.i.i.i:                      ; preds = %bb.hi
  %i.axg = trunc nuw nsw i64 %indvars.iv.next.i191.i.i.i to i32
  br label %cgltf_skip_json.exit194.i.i.i

cgltf_skip_json.exit194.i.i.i:                    ; preds = %.split.loop.exit.i192.i.i.i, %cgltf_json_to_size.exit.i.i.i
  %.7.i.i.i = phi i32 [ %i.aqe, %cgltf_json_to_size.exit.i.i.i ], [ %i.axg, %.split.loop.exit.i192.i.i.i ] ; 3 uses
  %i.axh = icmp slt i32 %.7.i.i.i, 0
  br i1 %i.axh, label %cgltf_parse_json_asset.exit.thread, label %cgltf_skip_json.exit194.thread227.i.i.i

cgltf_skip_json.exit194.thread227.i.i.i:          ; preds = %cgltf_skip_json.exit187.thread.i.i.i, %cgltf_skip_json.exit.thread.i.i.i, %cgltf_skip_json.exit194.i.i.i, %bb.gu, %bb.gh
  %.7230.i.i.i = phi i32 [ %.7.i.i.i, %cgltf_skip_json.exit194.i.i.i ], [ %.2129201.i.i.i, %cgltf_skip_json.exit.thread.i.i.i ], [ %i.aqo, %bb.gh ], [ %i.aue, %bb.gu ], [ %.5132213.i.i.i, %cgltf_skip_json.exit187.thread.i.i.i ] ; 2 uses
  %i.axi = add nuw nsw i32 %.0123253.i.i.i, 1     ; 2 uses
  %exitcond272.not.i.i.i = icmp eq i32 %i.axi, %i.apa
  br i1 %exitcond272.not.i.i.i, label %cgltf_parse_json_string.exit.i.i328, label %.lr.ph254.i.i.i

cgltf_json_strcmp.exit248.i.i:                    ; preds = %cgltf_json_strcmp.exit239.i.i
  %i.axj = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.aou, ptr noundef nonnull dereferenceable(7) @.str.136, i64 noundef 6) #51
  %i.axk = icmp eq i32 %i.axj, 0
  br i1 %i.axk, label %bb.hj, label %cgltf_json_strcmp.exit251.thread.i.i

bb.hj:                                            ; preds = %cgltf_json_strcmp.exit248.i.i
  %i.axl = load ptr, ptr %i.ahj, align 8
  %.not.i37.i = icmp eq ptr %i.axl, null
  br i1 %.not.i37.i, label %bb.hk, label %cgltf_parse_json_asset.exit.thread

bb.hk:                                            ; preds = %bb.hj
  %i.axm = add nuw nsw i32 %.0159296.i.i, 1
  %i.axn = zext nneg i32 %i.axm to i64            ; 2 uses
  %i.axo = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.axn ; 2 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axo, i64 8 ; 2 uses
  %i.axq = load i64, ptr %i.axp, align 8
  store i64 %i.axq, ptr %i.agr, align 8
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axo, i64 16
  %i.axs = load i64, ptr %i.axr, align 8          ; 2 uses
  store i64 %i.axs, ptr %i.ahk, align 8
  %i.axt = load i64, ptr %i.axp, align 8          ; 2 uses
  %i.axu = sub i64 %i.axs, %i.axt                 ; 3 uses
  %i.axv = load ptr, ptr %i.bn, align 8
  %i.axw = load ptr, ptr %i.bo, align 8
  %i.axx = add i64 %i.axu, 1
  %i.axy = call ptr %i.axv(ptr noundef %i.axw, i64 noundef %i.axx) #54, !inline_history !227 ; 3 uses
  store ptr %i.axy, ptr %i.ahj, align 8
  %.not27.i.i331 = icmp eq ptr %i.axy, null
  br i1 %.not27.i.i331, label %cgltf_parse_json_asset.exit.thread, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.axz = getelementptr inbounds nuw i8, ptr %2, i64 %i.axt
  %i.aya = call ptr @strncpy(ptr noundef nonnull %i.axy, ptr noundef readonly %i.axz, i64 noundef %i.axu) #54 ; 0 uses
  %i.ayb = load ptr, ptr %i.ahj, align 8
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.ayb, i64 %i.axu
  store i8 0, ptr %i.ayc, align 1
  %i.ayd = add nuw nsw i32 %.0159296.i.i, 2
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hp, %bb.hl
  %indvars.iv.i.i39.i = phi i64 [ %i.axn, %bb.hl ], [ %indvars.iv.next.i.i40.i, %bb.hp ] ; 2 uses
  %.016.i.i.i332 = phi i32 [ %i.ayd, %bb.hl ], [ %.1.i.i.i333, %bb.hp ] ; 4 uses
  %i.aye = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i.i39.i ; 3 uses
  %i.ayf = load i32, ptr %i.aye, align 8
  switch i32 %i.ayf, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.hn
    i32 2, label %bb.ho
    i32 4, label %bb.hp
    i32 3, label %bb.hp
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.aye, i64 24
  %i.ayh = load i32, ptr %i.ayg, align 8
  %i.ayi = shl nsw i32 %i.ayh, 1
  %i.ayj = add nsw i32 %i.ayi, %.016.i.i.i332
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.aye, i64 24
  %i.ayl = load i32, ptr %i.ayk, align 8
  %i.aym = add nsw i32 %i.ayl, %.016.i.i.i332
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn, %bb.hm, %bb.hm
  %.1.i.i.i333 = phi i32 [ %i.ayj, %bb.hn ], [ %i.aym, %bb.ho ], [ %.016.i.i.i332, %bb.hm ], [ %.016.i.i.i332, %bb.hm ] ; 2 uses
  %indvars.iv.next.i.i40.i = add nuw nsw i64 %indvars.iv.i.i39.i, 1 ; 3 uses
  %i.ayn = sext i32 %.1.i.i.i333 to i64
  %i.ayo = icmp slt i64 %indvars.iv.next.i.i40.i, %i.ayn
  br i1 %i.ayo, label %bb.hm, label %.split.loop.exit.i.i.i334

.split.loop.exit.i.i.i334:                        ; preds = %bb.hp
  %i.ayp = trunc nuw nsw i64 %indvars.iv.next.i.i40.i to i32
  br label %cgltf_parse_json_string.exit.i.i328

cgltf_json_strcmp.exit251.i.i:                    ; preds = %cgltf_json_strcmp.exit187.i.i
  %i.ayq = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ais, ptr noundef nonnull dereferenceable(11) @.str.137, i64 noundef 10) #51
  %i.ayr = icmp eq i32 %i.ayq, 0
  br i1 %i.ayr, label %bb.hq, label %cgltf_json_strcmp.exit251.thread.i.i

bb.hq:                                            ; preds = %cgltf_json_strcmp.exit251.i.i
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ahm, i64 32
  %i.ayt = load i32, ptr %i.ays, align 8
  %.not.i31.i = icmp eq i32 %i.ayt, 1
  br i1 %.not.i31.i, label %bb.hr, label %cgltf_parse_json_asset.exit.thread

bb.hr:                                            ; preds = %bb.hq
  %i.ayu = load ptr, ptr %i.agq, align 8
  %.not39.i.i360 = icmp eq ptr %i.ayu, null
  br i1 %.not39.i.i360, label %bb.hs, label %cgltf_parse_json_asset.exit.thread

bb.hs:                                            ; preds = %bb.hr
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ahm, i64 56
  %i.ayw = load i32, ptr %i.ayv, align 8          ; 4 uses
  store i64 0, ptr %i.agp, align 8
  %mul.ov.i.i32.i = icmp slt i32 %i.ayw, 0
  br i1 %mul.ov.i.i32.i, label %cgltf_calloc.exit.thread.i.i365, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ayx = zext nneg i32 %i.ayw to i64
  %i.ayy = load ptr, ptr %i.bn, align 8
  %i.ayz = load ptr, ptr %i.bo, align 8
  %i.aza = shl nuw nsw i64 %i.ayx, 4              ; 2 uses
  %i.azb = call ptr %i.ayy(ptr noundef %i.ayz, i64 noundef %i.aza) #54, !inline_history !228 ; 3 uses
  %.not.i.i33.i = icmp eq ptr %i.azb, null
  br i1 %.not.i.i33.i, label %cgltf_calloc.exit.thread.i.i365, label %bb.hu

cgltf_calloc.exit.thread.i.i365:                  ; preds = %bb.ht, %bb.hs
  store ptr null, ptr %i.agq, align 8
  br label %cgltf_parse_json_asset.exit.thread

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.azb, i8 0, i64 %i.aza, i1 false)
  store ptr %i.azb, ptr %i.agq, align 8
  %i.azc = add nuw nsw i32 %.0159296.i.i, 2       ; 2 uses
  %.not4245.not.i.i361 = icmp eq i32 %i.ayw, 0
  br i1 %.not4245.not.i.i361, label %cgltf_parse_json_string.exit.i.i328, label %.lr.ph.i34.i

.lr.ph.i34.i:                                     ; preds = %bb.hu, %bb.hw
  %.047.i.i362 = phi i32 [ %i.azp, %bb.hw ], [ 0, %bb.hu ]
  %.03646.i.i363 = phi i32 [ %i.azn, %bb.hw ], [ %i.azc, %bb.hu ] ; 2 uses
  %i.azd = zext nneg i32 %.03646.i.i363 to i64
  %i.aze = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.azd ; 2 uses
  %i.azf = load i32, ptr %i.aze, align 8
  %.not41.i.i364 = icmp eq i32 %i.azf, 3
  br i1 %.not41.i.i364, label %bb.hv, label %cgltf_parse_json_asset.exit.thread

bb.hv:                                            ; preds = %.lr.ph.i34.i
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aze, i64 24
  %i.azh = load i32, ptr %i.azg, align 8
  %i.azi = icmp eq i32 %i.azh, 0
  br i1 %i.azi, label %cgltf_parse_json_asset.exit.thread, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.azj = load i64, ptr %i.agp, align 8          ; 2 uses
  %i.azk = add i64 %i.azj, 1
  store i64 %i.azk, ptr %i.agp, align 8
  %i.azl = load ptr, ptr %i.agq, align 8
  %i.azm = getelementptr inbounds nuw [16 x i8], ptr %i.azl, i64 %i.azj
  %i.azn = call fastcc i32 @cgltf_parse_json_unprocessed_extension(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %.03646.i.i363, ptr noundef nonnull readonly %2, ptr noundef %i.azm) ; 3 uses
  %i.azo = icmp slt i32 %i.azn, 0
  %i.azp = add nuw nsw i32 %.047.i.i362, 1        ; 2 uses
  %exitcond.not.i35.i = icmp eq i32 %i.azp, %i.ayw
  %or.cond.i36.i = select i1 %i.azo, i1 true, i1 %exitcond.not.i35.i
  br i1 %or.cond.i36.i, label %cgltf_parse_json_string.exit.i.i328, label %.lr.ph.i34.i

cgltf_json_strcmp.exit251.thread.i.i:             ; preds = %cgltf_json_strcmp.exit251.i.i, %cgltf_json_strcmp.exit248.i.i, %cgltf_json_strcmp.exit219.tail.i.i, %cgltf_json_strcmp.exit212.tail.i.i, %sub_1.i.i, %cgltf_json_strcmp.exit212.i.i, %cgltf_json_strcmp.exit197.i.i, %cgltf_json_strcmp.exit190.i.i, %cgltf_json_strcmp.exit183.i.i, %bb.fi
  %i.azq = add nuw nsw i32 %.0159296.i.i, 1
  %i.azr = add nuw nsw i32 %.0159296.i.i, 2
  %i.azs = zext nneg i32 %i.azq to i64
  br label %bb.hx

bb.hx:                                            ; preds = %bb.ia, %cgltf_json_strcmp.exit251.thread.i.i
  %indvars.iv.i.i324 = phi i64 [ %i.azs, %cgltf_json_strcmp.exit251.thread.i.i ], [ %indvars.iv.next.i.i326, %bb.ia ] ; 2 uses
  %.016.i.i325 = phi i32 [ %i.azr, %cgltf_json_strcmp.exit251.thread.i.i ], [ %.1.i30.i, %bb.ia ] ; 4 uses
  %i.azt = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i.i324 ; 3 uses
  %i.azu = load i32, ptr %i.azt, align 8
  switch i32 %i.azu, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.hy
    i32 2, label %bb.hz
    i32 4, label %bb.ia
    i32 3, label %bb.ia
  ]

bb.hy:                                            ; preds = %bb.hx
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azt, i64 24
  %i.azw = load i32, ptr %i.azv, align 8
  %i.azx = shl nsw i32 %i.azw, 1
  %i.azy = add nsw i32 %i.azx, %.016.i.i325
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hx
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azt, i64 24
  %i.baa = load i32, ptr %i.azz, align 8
  %i.bab = add nsw i32 %i.baa, %.016.i.i325
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %bb.hx, %bb.hx
  %.1.i30.i = phi i32 [ %i.azy, %bb.hy ], [ %i.bab, %bb.hz ], [ %.016.i.i325, %bb.hx ], [ %.016.i.i325, %bb.hx ] ; 2 uses
  %indvars.iv.next.i.i326 = add nuw nsw i64 %indvars.iv.i.i324, 1 ; 3 uses
  %i.bac = sext i32 %.1.i30.i to i64
  %i.bad = icmp slt i64 %indvars.iv.next.i.i326, %i.bac
  br i1 %i.bad, label %bb.hx, label %.split.loop.exit.i.i327

.split.loop.exit.i.i327:                          ; preds = %bb.ia
  %i.bae = trunc nuw nsw i64 %indvars.iv.next.i.i326 to i32
  br label %cgltf_parse_json_string.exit.i.i328
end_hunk_1
begin_hunk_2_@cgltf_parse_json_root:bb.a
  %i.cri = call fastcc i32 @cgltf_parse_json_texture_view(ptr noundef nonnull %1, i32 noundef %i.crh, ptr noundef nonnull readonly %2, ptr noundef nonnull %i.bum)
  br label %cgltf_skip_json.exit.i165.i

cgltf_json_strcmp.exit84.i.i481:                  ; preds = %bb.oe
  %i.crj = getelementptr inbounds i8, ptr %2, i64 %i.cpr
  %i.crk = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.crj, ptr noundef nonnull dereferenceable(23) @.str.244, i64 noundef 22) #51
  %i.crl = icmp eq i32 %i.crk, 0
  br i1 %i.crl, label %bb.ol, label %cgltf_json_strcmp.exit84.thread.i.i

bb.ol:                                            ; preds = %cgltf_json_strcmp.exit84.i.i481
  %i.crm = add nuw nsw i32 %.06212.i.i, 1
  %i.crn = call fastcc i32 @cgltf_parse_json_texture_view(ptr noundef nonnull %1, i32 noundef %i.crm, ptr noundef nonnull readonly %2, ptr noundef nonnull %i.bul)
  br label %cgltf_skip_json.exit.i165.i

cgltf_json_strcmp.exit84.thread.i.i:              ; preds = %cgltf_json_strcmp.exit84.i.i481, %cgltf_json_strcmp.exit81.i.i, %cgltf_json_strcmp.exit78.i.i, %cgltf_json_strcmp.exit71.i.i, %cgltf_json_strcmp.exit.i167.i, %bb.oe
  %i.cro = add nuw nsw i32 %.06212.i.i, 1
  %i.crp = add nuw nsw i32 %.06212.i.i, 2
  %i.crq = zext nneg i32 %i.cro to i64
  br label %bb.om

bb.om:                                            ; preds = %bb.op, %cgltf_json_strcmp.exit84.thread.i.i
  %indvars.iv.i.i160.i = phi i64 [ %i.crq, %cgltf_json_strcmp.exit84.thread.i.i ], [ %indvars.iv.next.i.i163.i, %bb.op ] ; 2 uses
  %.016.i.i161.i = phi i32 [ %i.crp, %cgltf_json_strcmp.exit84.thread.i.i ], [ %.1.i.i162.i, %bb.op ] ; 4 uses
  %i.crr = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i.i160.i ; 3 uses
  %i.crs = load i32, ptr %i.crr, align 8
  switch i32 %i.crs, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.on
    i32 2, label %bb.oo
    i32 4, label %bb.op
    i32 3, label %bb.op
  ]

bb.on:                                            ; preds = %bb.om
  %i.crt = getelementptr inbounds nuw i8, ptr %i.crr, i64 24
  %i.cru = load i32, ptr %i.crt, align 8
  %i.crv = shl nsw i32 %i.cru, 1
  %i.crw = add nsw i32 %i.crv, %.016.i.i161.i
  br label %bb.op

bb.oo:                                            ; preds = %bb.om
  %i.crx = getelementptr inbounds nuw i8, ptr %i.crr, i64 24
  %i.cry = load i32, ptr %i.crx, align 8
  %i.crz = add nsw i32 %i.cry, %.016.i.i161.i
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %bb.on, %bb.om, %bb.om
  %.1.i.i162.i = phi i32 [ %i.crw, %bb.on ], [ %i.crz, %bb.oo ], [ %.016.i.i161.i, %bb.om ], [ %.016.i.i161.i, %bb.om ] ; 2 uses
  %indvars.iv.next.i.i163.i = add nuw nsw i64 %indvars.iv.i.i160.i, 1 ; 3 uses
  %i.csa = sext i32 %.1.i.i162.i to i64
  %i.csb = icmp slt i64 %indvars.iv.next.i.i163.i, %i.csa
  br i1 %i.csb, label %bb.om, label %.split.loop.exit.i.i164.i

.split.loop.exit.i.i164.i:                        ; preds = %bb.op
  %i.csc = trunc nuw nsw i64 %indvars.iv.next.i.i163.i to i32
  br label %cgltf_skip_json.exit.i165.i

cgltf_skip_json.exit.i165.i:                      ; preds = %.split.loop.exit.i.i164.i, %bb.ol, %bb.ok, %bb.oj
  %.163.i.i482 = phi i32 [ %i.csc, %.split.loop.exit.i.i164.i ], [ %i.crn, %bb.ol ], [ %i.crd, %bb.oj ], [ %i.cri, %bb.ok ] ; 3 uses
  %i.csd = icmp slt i32 %.163.i.i482, 0
  br i1 %i.csd, label %cgltf_parse_json_asset.exit.thread, label %cgltf_skip_json.exit.thread.i.i

cgltf_skip_json.exit.thread.i.i:                  ; preds = %cgltf_skip_json.exit.i165.i, %cgltf_json_to_float.exit75.i.i, %cgltf_json_to_float.exit.i168.i
  %.1637.i.i = phi i32 [ %.163.i.i482, %cgltf_skip_json.exit.i165.i ], [ %i.cqy, %cgltf_json_to_float.exit75.i.i ], [ %i.cqi, %cgltf_json_to_float.exit.i168.i ] ; 2 uses
  %i.cse = add nuw nsw i32 %.06013.i.i, 1         ; 2 uses
  %exitcond.not.i166.i = icmp eq i32 %i.cse, %i.cpg
  br i1 %exitcond.not.i166.i, label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i, label %.lr.ph.i159.i

cgltf_json_strcmp.exit156.i:                      ; preds = %bb.ne
  %i.csf = getelementptr inbounds i8, ptr %2, i64 %i.chz
  %i.csg = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.csf, ptr noundef nonnull dereferenceable(18) @.str.213, i64 noundef 17) #51
  %i.csh = icmp eq i32 %i.csg, 0
  br i1 %i.csh, label %bb.oq, label %cgltf_json_strcmp.exit.thread.i472

bb.oq:                                            ; preds = %cgltf_json_strcmp.exit156.i
  store i32 1, ptr %i.btr, align 4
  %i.csi = getelementptr inbounds nuw i8, ptr %i.chr, i64 32
  %i.csj = load i32, ptr %i.csi, align 8
  %.not.i134.i = icmp eq i32 %i.csj, 1
  br i1 %.not.i134.i, label %bb.or, label %cgltf_parse_json_asset.exit.thread

bb.or:                                            ; preds = %bb.oq
  %i.csk = getelementptr inbounds nuw i8, ptr %i.chr, i64 56
  %i.csl = load i32, ptr %i.csk, align 8          ; 2 uses
  %i.csm = add nuw nsw i32 %.1269447.i.i, 2       ; 2 uses
  store float 1.500000e+00, ptr %i.bts, align 8
  %.not3443.i136.i = icmp sgt i32 %i.csl, 0
  br i1 %.not3443.i136.i, label %.lr.ph.i137.i, label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i

.lr.ph.i137.i:                                    ; preds = %bb.or, %bb.pa
  %.02845.i138.i = phi i32 [ %i.cuk, %bb.pa ], [ 0, %bb.or ]
  %.03044.i139.i = phi i32 [ %.13141.i147.i, %bb.pa ], [ %i.csm, %bb.or ] ; 5 uses
  %i.csn = zext nneg i32 %.03044.i139.i to i64
  %i.cso = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.csn ; 4 uses
  %i.csp = load i32, ptr %i.cso, align 8
  %.not33.i140.i = icmp eq i32 %i.csp, 3
  br i1 %.not33.i140.i, label %bb.os, label %cgltf_parse_json_asset.exit.thread

bb.os:                                            ; preds = %.lr.ph.i137.i
  %i.csq = getelementptr inbounds nuw i8, ptr %i.cso, i64 24
  %i.csr = load i32, ptr %i.csq, align 8
  %i.css = icmp eq i32 %i.csr, 0
  br i1 %i.css, label %cgltf_parse_json_asset.exit.thread, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.cst = getelementptr inbounds nuw i8, ptr %i.cso, i64 16
  %i.csu = load i64, ptr %i.cst, align 8
  %i.csv = getelementptr inbounds nuw i8, ptr %i.cso, i64 8
  %i.csw = load i64, ptr %i.csv, align 8          ; 2 uses
  %i.csx = sub nsw i64 %i.csu, %i.csw
  %i.csy = icmp eq i64 %i.csx, 3
  br i1 %i.csy, label %cgltf_json_strcmp.exit.i149.i, label %cgltf_json_strcmp.exit.thread.i141.i

cgltf_json_strcmp.exit.i149.i:                    ; preds = %bb.ot
  %i.csz = getelementptr inbounds i8, ptr %2, i64 %i.csw ; 3 uses
  %i.cta = load i8, ptr %i.csz, align 1
  %.not50.i.i = icmp eq i8 %i.cta, 105
  br i1 %.not50.i.i, label %sub_1.i.i479, label %cgltf_json_strcmp.exit.thread.i141.i

sub_1.i.i479:                                     ; preds = %cgltf_json_strcmp.exit.i149.i
  %i.ctb = getelementptr inbounds nuw i8, ptr %i.csz, i64 1
  %i.ctc = load i8, ptr %i.ctb, align 1
  %.not51.i.i = icmp eq i8 %i.ctc, 111
  br i1 %.not51.i.i, label %cgltf_json_strcmp.exit.tail.i.i, label %cgltf_json_strcmp.exit.thread.i141.i

cgltf_json_strcmp.exit.tail.i.i:                  ; preds = %sub_1.i.i479
  %i.ctd = getelementptr inbounds nuw i8, ptr %i.csz, i64 2
  %i.cte = load i8, ptr %i.ctd, align 1
  %i.ctf = icmp eq i8 %i.cte, 114
  br i1 %i.ctf, label %bb.ou, label %cgltf_json_strcmp.exit.thread.i141.i

bb.ou:                                            ; preds = %cgltf_json_strcmp.exit.tail.i.i
  %i.ctg = sext i32 %.03044.i139.i to i64
  %i.cth = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ctg ; 3 uses
  %i.cti = getelementptr inbounds nuw i8, ptr %i.cth, i64 32
  %i.ctj = load i32, ptr %i.cti, align 8
  %.not.i35.i150.i = icmp eq i32 %i.ctj, 4
  br i1 %.not.i35.i150.i, label %bb.ov, label %cgltf_skip_json.exit.thread39.i151.i

bb.ov:                                            ; preds = %bb.ou
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #54
  %i.ctk = getelementptr inbounds nuw i8, ptr %i.cth, i64 48
  %i.ctl = load i64, ptr %i.ctk, align 8
  %i.ctm = getelementptr inbounds nuw i8, ptr %i.cth, i64 40
  %i.ctn = load i64, ptr %i.ctm, align 8          ; 2 uses
  %i.cto = sub nsw i64 %i.ctl, %i.ctn
  %spec.select.i.i153.i = call i64 @llvm.umin.i64(i64 %i.cto, i64 127) ; 2 uses
  %i.ctp = getelementptr inbounds i8, ptr %2, i64 %i.ctn
  %i.ctq = call ptr @strncpy(ptr noundef nonnull %i.o, ptr noundef readonly %i.ctp, i64 noundef %spec.select.i.i153.i) #54 ; 0 uses
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.o, i64 %spec.select.i.i153.i
  store i8 0, ptr %i.ctr, align 1
  %i.cts = call double @strtod(ptr noundef nonnull captures(none) %i.o, ptr noundef null) #54, !inline_history !1
  %i.ctt = fptrunc double %i.cts to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #54
  br label %cgltf_skip_json.exit.thread39.i151.i

cgltf_skip_json.exit.thread39.i151.i:             ; preds = %bb.ov, %bb.ou
  %.0.i36.i152.i = phi float [ %i.ctt, %bb.ov ], [ -1.000000e+00, %bb.ou ]
  store float %.0.i36.i152.i, ptr %i.bts, align 8
  %i.ctu = add nuw nsw i32 %.03044.i139.i, 2
  br label %bb.pa

cgltf_json_strcmp.exit.thread.i141.i:             ; preds = %cgltf_json_strcmp.exit.tail.i.i, %sub_1.i.i479, %cgltf_json_strcmp.exit.i149.i, %bb.ot
  %i.ctv = add nuw nsw i32 %.03044.i139.i, 1
  %i.ctw = add nuw nsw i32 %.03044.i139.i, 2
  %i.ctx = zext nneg i32 %i.ctv to i64
  br label %bb.ow

bb.ow:                                            ; preds = %bb.oz, %cgltf_json_strcmp.exit.thread.i141.i
  %indvars.iv.i.i142.i = phi i64 [ %i.ctx, %cgltf_json_strcmp.exit.thread.i141.i ], [ %indvars.iv.next.i.i145.i, %bb.oz ] ; 2 uses
  %.016.i.i143.i = phi i32 [ %i.ctw, %cgltf_json_strcmp.exit.thread.i141.i ], [ %.1.i.i144.i, %bb.oz ] ; 4 uses
  %i.cty = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i.i142.i ; 3 uses
  %i.ctz = load i32, ptr %i.cty, align 8
  switch i32 %i.ctz, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.ox
    i32 2, label %bb.oy
    i32 4, label %bb.oz
    i32 3, label %bb.oz
  ]

bb.ox:                                            ; preds = %bb.ow
  %i.cua = getelementptr inbounds nuw i8, ptr %i.cty, i64 24
  %i.cub = load i32, ptr %i.cua, align 8
  %i.cuc = shl nsw i32 %i.cub, 1
  %i.cud = add nsw i32 %i.cuc, %.016.i.i143.i
  br label %bb.oz

bb.oy:                                            ; preds = %bb.ow
  %i.cue = getelementptr inbounds nuw i8, ptr %i.cty, i64 24
  %i.cuf = load i32, ptr %i.cue, align 8
  %i.cug = add nsw i32 %i.cuf, %.016.i.i143.i
  br label %bb.oz

bb.oz:                                            ; preds = %bb.oy, %bb.ox, %bb.ow, %bb.ow
  %.1.i.i144.i = phi i32 [ %i.cud, %bb.ox ], [ %i.cug, %bb.oy ], [ %.016.i.i143.i, %bb.ow ], [ %.016.i.i143.i, %bb.ow ] ; 2 uses
  %indvars.iv.next.i.i145.i = add nuw nsw i64 %indvars.iv.i.i142.i, 1 ; 3 uses
  %i.cuh = sext i32 %.1.i.i144.i to i64
  %i.cui = icmp slt i64 %indvars.iv.next.i.i145.i, %i.cuh
  br i1 %i.cui, label %bb.ow, label %cgltf_skip_json.exit.i146.i

cgltf_skip_json.exit.i146.i:                      ; preds = %bb.oz
  %i.cuj = trunc nuw nsw i64 %indvars.iv.next.i.i145.i to i32
  br label %bb.pa

bb.pa:                                            ; preds = %cgltf_skip_json.exit.i146.i, %cgltf_skip_json.exit.thread39.i151.i
  %.13141.i147.i = phi i32 [ %i.ctu, %cgltf_skip_json.exit.thread39.i151.i ], [ %i.cuj, %cgltf_skip_json.exit.i146.i ] ; 2 uses
  %i.cuk = add nuw nsw i32 %.02845.i138.i, 1      ; 2 uses
  %exitcond.not.i148.i = icmp eq i32 %i.cuk, %i.csl
  br i1 %exitcond.not.i148.i, label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i, label %.lr.ph.i137.i

cgltf_json_strcmp.exit133.i:                      ; preds = %bb.ne
  %i.cul = getelementptr inbounds i8, ptr %2, i64 %i.chz
  %i.cum = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.cul, ptr noundef nonnull dereferenceable(23) @.str.214, i64 noundef 22) #51
  %i.cun = icmp eq i32 %i.cum, 0
  br i1 %i.cun, label %bb.pb, label %cgltf_json_strcmp.exit.thread.i472

bb.pb:                                            ; preds = %cgltf_json_strcmp.exit133.i
  store i32 1, ptr %i.btp, align 8
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.chr, i64 32
  %i.cup = load i32, ptr %i.cuo, align 8
  %.not.i103.i = icmp eq i32 %i.cup, 1
  br i1 %.not.i103.i, label %cgltf_fill_float_array.exit.preheader.i.i, label %cgltf_parse_json_asset.exit.thread

cgltf_fill_float_array.exit.preheader.i.i:        ; preds = %bb.pb
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.chr, i64 56
  %i.cur = load i32, ptr %i.cuq, align 8          ; 2 uses
  store <4 x float> splat (float 1.000000e+00), ptr %i.bux, align 8
  %i.cus = add nuw nsw i32 %.1269447.i.i, 2       ; 2 uses
  %.not5811.i.i = icmp sgt i32 %i.cur, 0
  br i1 %.not5811.i.i, label %.lr.ph.i105.i, label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i

.lr.ph.i105.i:                                    ; preds = %cgltf_fill_float_array.exit.preheader.i.i, %cgltf_fill_float_array.exit.i112.i
  %.05213.i.i = phi i32 [ %i.cyn, %cgltf_fill_float_array.exit.i112.i ], [ 0, %cgltf_fill_float_array.exit.preheader.i.i ]
  %.05412.i.i = phi i32 [ %.1558.i.i, %cgltf_fill_float_array.exit.i112.i ], [ %i.cus, %cgltf_fill_float_array.exit.preheader.i.i ] ; 8 uses
  %i.cut = zext nneg i32 %.05412.i.i to i64
  %i.cuu = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.cut ; 9 uses
  %i.cuv = load i32, ptr %i.cuu, align 8
  %.not57.i.i = icmp eq i32 %i.cuv, 3
  br i1 %.not57.i.i, label %bb.pc, label %cgltf_parse_json_asset.exit.thread

bb.pc:                                            ; preds = %.lr.ph.i105.i
  %i.cuw = getelementptr inbounds nuw i8, ptr %i.cuu, i64 24
  %i.cux = load i32, ptr %i.cuw, align 8
  %i.cuy = icmp eq i32 %i.cux, 0
  br i1 %i.cuy, label %cgltf_parse_json_asset.exit.thread, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.cuz = getelementptr inbounds nuw i8, ptr %i.cuu, i64 16
  %i.cva = load i64, ptr %i.cuz, align 8
  %i.cvb = getelementptr inbounds nuw i8, ptr %i.cuu, i64 8
  %i.cvc = load i64, ptr %i.cvb, align 8          ; 5 uses
  %i.cvd = sub nsw i64 %i.cva, %i.cvc
  switch i64 %i.cvd, label %cgltf_json_strcmp.exit73.thread.i.i [
    i64 14, label %cgltf_json_strcmp.exit.i128.i
    i64 19, label %cgltf_json_strcmp.exit63.i114.i
    i64 15, label %cgltf_json_strcmp.exit70.i.i478
    i64 20, label %cgltf_json_strcmp.exit73.i.i
  ]

cgltf_json_strcmp.exit.i128.i:                    ; preds = %bb.pd
  %i.cve = getelementptr inbounds i8, ptr %2, i64 %i.cvc
  %i.cvf = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.cve, ptr noundef nonnull dereferenceable(15) @.str.236, i64 noundef 14) #51
  %i.cvg = icmp eq i32 %i.cvf, 0
  br i1 %i.cvg, label %bb.pe, label %cgltf_json_strcmp.exit73.thread.i.i

bb.pe:                                            ; preds = %cgltf_json_strcmp.exit.i128.i
  %i.cvh = getelementptr inbounds nuw i8, ptr %i.cuu, i64 32
  %i.cvi = load i32, ptr %i.cvh, align 8
  %.not.i59.i.i = icmp eq i32 %i.cvi, 4
  br i1 %.not.i59.i.i, label %bb.pf, label %cgltf_parse_json_float_array.exit.thread6.i129.i

bb.pf:                                            ; preds = %bb.pe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #54
  %i.cvj = getelementptr inbounds nuw i8, ptr %i.cuu, i64 48
  %i.cvk = load i64, ptr %i.cvj, align 8
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cuu, i64 40
  %i.cvm = load i64, ptr %i.cvl, align 8          ; 2 uses
  %i.cvn = sub nsw i64 %i.cvk, %i.cvm
  %spec.select.i.i130.i = call i64 @llvm.umin.i64(i64 %i.cvn, i64 127) ; 2 uses
  %i.cvo = getelementptr inbounds i8, ptr %2, i64 %i.cvm
  %i.cvp = call ptr @strncpy(ptr noundef nonnull %i.q, ptr noundef readonly %i.cvo, i64 noundef %spec.select.i.i130.i) #54 ; 0 uses
  %i.cvq = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select.i.i130.i
  store i8 0, ptr %i.cvq, align 1
  %i.cvr = call double @strtod(ptr noundef nonnull captures(none) %i.q, ptr noundef null) #54, !inline_history !1
  %i.cvs = fptrunc double %i.cvr to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #54
  br label %cgltf_parse_json_float_array.exit.thread6.i129.i

cgltf_parse_json_float_array.exit.thread6.i129.i: ; preds = %bb.pf, %bb.pe
  %.0.i60.i.i = phi float [ %i.cvs, %bb.pf ], [ -1.000000e+00, %bb.pe ]
  store float %.0.i60.i.i, ptr %i.buw, align 4
  %i.cvt = add nuw nsw i32 %.05412.i.i, 2
  br label %cgltf_fill_float_array.exit.i112.i

cgltf_json_strcmp.exit63.i114.i:                  ; preds = %bb.pd
  %i.cvu = getelementptr inbounds i8, ptr %2, i64 %i.cvc
  %i.cvv = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.cvu, ptr noundef nonnull dereferenceable(20) @.str.246, i64 noundef 19) #51
  %i.cvw = icmp eq i32 %i.cvv, 0
  br i1 %i.cvw, label %bb.pg, label %cgltf_json_strcmp.exit73.thread.i.i

bb.pg:                                            ; preds = %cgltf_json_strcmp.exit63.i114.i
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.cuu, i64 32
  %i.cvy = load i32, ptr %i.cvx, align 8
  %.not.i64.i115.i = icmp eq i32 %i.cvy, 2
  br i1 %.not.i64.i115.i, label %bb.ph, label %cgltf_parse_json_asset.exit.thread

bb.ph:                                            ; preds = %bb.pg
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cuu, i64 56
  %i.cwa = load i32, ptr %i.cvz, align 8
  %.not23.i.i116.i = icmp eq i32 %i.cwa, 3
  br i1 %.not23.i.i116.i, label %.preheader.i.i117.i, label %cgltf_parse_json_asset.exit.thread

.preheader.i.i117.i:                              ; preds = %bb.ph
  %.02126.i.i118.i = add nuw i32 %.05412.i.i, 2
  %i.cwb = zext i32 %.02126.i.i118.i to i64
  %i.cwc = add nuw i32 %.05412.i.i, 5
  %i.cwd = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.cwb ; 9 uses
  %i.cwe = load i32, ptr %i.cwd, align 8
  %.not24.i.i119.i = icmp eq i32 %i.cwe, 4
  br i1 %.not24.i.i119.i, label %cgltf_json_to_float.exit.i.i120.i, label %cgltf_parse_json_asset.exit.thread

cgltf_json_to_float.exit.i.i120.i:                ; preds = %.preheader.i.i117.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #54
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cwd, i64 16
  %i.cwg = load i64, ptr %i.cwf, align 8
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cwd, i64 8
  %i.cwi = load i64, ptr %i.cwh, align 8          ; 2 uses
  %i.cwj = sub nsw i64 %i.cwg, %i.cwi
  %spec.select.i.i.i121.i = call i64 @llvm.umin.i64(i64 %i.cwj, i64 127) ; 2 uses
  %i.cwk = getelementptr inbounds i8, ptr %2, i64 %i.cwi
  %i.cwl = call ptr @strncpy(ptr noundef nonnull %i.p, ptr noundef readonly %i.cwk, i64 noundef %spec.select.i.i.i121.i) #54 ; 0 uses
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.i.i.i121.i
  store i8 0, ptr %i.cwm, align 1
  %i.cwn = call double @strtod(ptr noundef nonnull captures(none) %i.p, ptr noundef null) #54, !inline_history !1
  %i.cwo = fptrunc double %i.cwn to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #54
  store float %i.cwo, ptr %i.bux, align 8
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwd, i64 32
  %i.cwq = load i32, ptr %i.cwp, align 8
  %.not24.i.1.i122.i = icmp eq i32 %i.cwq, 4
  br i1 %.not24.i.1.i122.i, label %cgltf_json_to_float.exit.i.1.i123.i, label %cgltf_parse_json_asset.exit.thread

cgltf_json_to_float.exit.i.1.i123.i:              ; preds = %cgltf_json_to_float.exit.i.i120.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #54
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cwd, i64 48
  %i.cws = load i64, ptr %i.cwr, align 8
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cwd, i64 40
  %i.cwu = load i64, ptr %i.cwt, align 8          ; 2 uses
  %i.cwv = sub nsw i64 %i.cws, %i.cwu
  %spec.select.i.i.1.i124.i = call i64 @llvm.umin.i64(i64 %i.cwv, i64 127) ; 2 uses
  %i.cww = getelementptr inbounds i8, ptr %2, i64 %i.cwu
  %i.cwx = call ptr @strncpy(ptr noundef nonnull %i.p, ptr noundef readonly %i.cww, i64 noundef %spec.select.i.i.1.i124.i) #54 ; 0 uses
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.i.i.1.i124.i
  store i8 0, ptr %i.cwy, align 1
  %i.cwz = call double @strtod(ptr noundef nonnull captures(none) %i.p, ptr noundef null) #54, !inline_history !1
  %i.cxa = fptrunc double %i.cwz to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #54
  store float %i.cxa, ptr %i.buy, align 4
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cwd, i64 64
  %i.cxc = load i32, ptr %i.cxb, align 8
  %.not24.i.2.i125.i = icmp eq i32 %i.cxc, 4
  br i1 %.not24.i.2.i125.i, label %cgltf_json_to_float.exit.i.2.i126.i, label %cgltf_parse_json_asset.exit.thread

cgltf_json_to_float.exit.i.2.i126.i:              ; preds = %cgltf_json_to_float.exit.i.1.i123.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #54
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cwd, i64 80
  %i.cxe = load i64, ptr %i.cxd, align 8
  %i.cxf = getelementptr inbounds nuw i8, ptr %i.cwd, i64 72
  %i.cxg = load i64, ptr %i.cxf, align 8          ; 2 uses
  %i.cxh = sub nsw i64 %i.cxe, %i.cxg
  %spec.select.i.i.2.i127.i = call i64 @llvm.umin.i64(i64 %i.cxh, i64 127) ; 2 uses
  %i.cxi = getelementptr inbounds i8, ptr %2, i64 %i.cxg
  %i.cxj = call ptr @strncpy(ptr noundef nonnull %i.p, ptr noundef readonly %i.cxi, i64 noundef %spec.select.i.i.2.i127.i) #54 ; 0 uses
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.i.i.2.i127.i
  store i8 0, ptr %i.cxk, align 1
  %i.cxl = call double @strtod(ptr noundef nonnull captures(none) %i.p, ptr noundef null) #54, !inline_history !1
  %i.cxm = fptrunc double %i.cxl to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #54
  store float %i.cxm, ptr %i.buz, align 8
  br label %cgltf_parse_json_float_array.exit.i111.i

cgltf_json_strcmp.exit70.i.i478:                  ; preds = %bb.pd
  %i.cxn = getelementptr inbounds i8, ptr %2, i64 %i.cvc
  %i.cxo = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.cxn, ptr noundef nonnull dereferenceable(16) @.str.247, i64 noundef 15) #51
  %i.cxp = icmp eq i32 %i.cxo, 0
  br i1 %i.cxp, label %bb.pi, label %cgltf_json_strcmp.exit73.thread.i.i

bb.pi:                                            ; preds = %cgltf_json_strcmp.exit70.i.i478
  %i.cxq = add nuw nsw i32 %.05412.i.i, 1
  %i.cxr = call fastcc i32 @cgltf_parse_json_texture_view(ptr noundef nonnull %1, i32 noundef %i.cxq, ptr noundef nonnull readonly %2, ptr noundef nonnull %i.btq)
  br label %cgltf_parse_json_float_array.exit.i111.i

cgltf_json_strcmp.exit73.i.i:                     ; preds = %bb.pd
  %i.cxs = getelementptr inbounds i8, ptr %2, i64 %i.cvc
  %i.cxt = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.cxs, ptr noundef nonnull dereferenceable(21) @.str.248, i64 noundef 20) #51
  %i.cxu = icmp eq i32 %i.cxt, 0
  br i1 %i.cxu, label %bb.pj, label %cgltf_json_strcmp.exit73.thread.i.i

bb.pj:                                            ; preds = %cgltf_json_strcmp.exit73.i.i
  %i.cxv = add nuw nsw i32 %.05412.i.i, 1
  %i.cxw = call fastcc i32 @cgltf_parse_json_texture_view(ptr noundef nonnull %1, i32 noundef %i.cxv, ptr noundef nonnull readonly %2, ptr noundef nonnull %i.bva)
  br label %cgltf_parse_json_float_array.exit.i111.i
end_hunk_2
begin_hunk_3_@cgltf_parse_json_root:bb.a
  %i.dig = getelementptr inbounds i8, ptr %2, i64 %i.die
  %i.dih = call ptr @strncpy(ptr noundef nonnull %i.v, ptr noundef readonly %i.dig, i64 noundef %spec.select.i.i50.i) #54 ; 0 uses
  %i.dii = getelementptr inbounds nuw i8, ptr %i.v, i64 %spec.select.i.i50.i
  store i8 0, ptr %i.dii, align 1
  %i.dij = call double @strtod(ptr noundef nonnull captures(none) %i.v, ptr noundef null) #54, !inline_history !1
  %i.dik = fptrunc double %i.dij to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #54
  br label %cgltf_parse_json_float_array.exit.thread6.i.i

cgltf_parse_json_float_array.exit.thread6.i.i:    ; preds = %bb.qx, %bb.qw
  %.0.i65.i.i = phi float [ %i.dik, %bb.qx ], [ -1.000000e+00, %bb.qw ]
  store float %.0.i65.i.i, ptr %i.buq, align 8
  %i.dil = add nuw nsw i32 %.05212.i.i, 2
  br label %bb.rd

cgltf_json_strcmp.exit68.i.i:                     ; preds = %bb.qs
  %i.dim = getelementptr inbounds i8, ptr %2, i64 %i.dfw
  %i.din = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.dim, ptr noundef nonnull dereferenceable(22) @.str.258, i64 noundef 21) #51
  %i.dio = icmp eq i32 %i.din, 0
  br i1 %i.dio, label %bb.qy, label %cgltf_json_strcmp.exit68.thread.i.i

bb.qy:                                            ; preds = %cgltf_json_strcmp.exit68.i.i
  %i.dip = add nuw nsw i32 %.05212.i.i, 1
  %i.diq = call fastcc i32 @cgltf_parse_json_texture_view(ptr noundef nonnull %1, i32 noundef %i.dip, ptr noundef nonnull readonly %2, ptr noundef nonnull %i.bup)
  br label %cgltf_parse_json_float_array.exit.i.i

cgltf_json_strcmp.exit68.thread.i.i:              ; preds = %cgltf_json_strcmp.exit68.i.i, %cgltf_json_strcmp.exit63.i.i, %cgltf_json_strcmp.exit60.i.i, %cgltf_json_strcmp.exit.i51.i, %bb.qs
  %i.dir = add nuw nsw i32 %.05212.i.i, 1
  %i.dis = add nuw nsw i32 %.05212.i.i, 2
  %i.dit = zext nneg i32 %i.dir to i64
  br label %bb.qz

bb.qz:                                            ; preds = %bb.rc, %cgltf_json_strcmp.exit68.thread.i.i
  %indvars.iv.i69.i.i = phi i64 [ %i.dit, %cgltf_json_strcmp.exit68.thread.i.i ], [ %indvars.iv.next.i71.i.i, %bb.rc ] ; 2 uses
  %.016.i.i47.i = phi i32 [ %i.dis, %cgltf_json_strcmp.exit68.thread.i.i ], [ %.1.i70.i.i, %bb.rc ] ; 4 uses
  %i.diu = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i69.i.i ; 3 uses
  %i.div = load i32, ptr %i.diu, align 8
  switch i32 %i.div, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.ra
    i32 2, label %bb.rb
    i32 4, label %bb.rc
    i32 3, label %bb.rc
  ]

bb.ra:                                            ; preds = %bb.qz
  %i.diw = getelementptr inbounds nuw i8, ptr %i.diu, i64 24
  %i.dix = load i32, ptr %i.diw, align 8
  %i.diy = shl nsw i32 %i.dix, 1
  %i.diz = add nsw i32 %i.diy, %.016.i.i47.i
  br label %bb.rc

bb.rb:                                            ; preds = %bb.qz
  %i.dja = getelementptr inbounds nuw i8, ptr %i.diu, i64 24
  %i.djb = load i32, ptr %i.dja, align 8
  %i.djc = add nsw i32 %i.djb, %.016.i.i47.i
  br label %bb.rc

bb.rc:                                            ; preds = %bb.rb, %bb.ra, %bb.qz, %bb.qz
  %.1.i70.i.i = phi i32 [ %i.diz, %bb.ra ], [ %i.djc, %bb.rb ], [ %.016.i.i47.i, %bb.qz ], [ %.016.i.i47.i, %bb.qz ] ; 2 uses
  %indvars.iv.next.i71.i.i = add nuw nsw i64 %indvars.iv.i69.i.i, 1 ; 3 uses
  %i.djd = sext i32 %.1.i70.i.i to i64
  %i.dje = icmp slt i64 %indvars.iv.next.i71.i.i, %i.djd
  br i1 %i.dje, label %bb.qz, label %.split.loop.exit.i.i48.i

.split.loop.exit.i.i48.i:                         ; preds = %bb.rc
  %i.djf = trunc nuw nsw i64 %indvars.iv.next.i71.i.i to i32
  br label %cgltf_parse_json_float_array.exit.i.i

cgltf_parse_json_float_array.exit.i.i:            ; preds = %.split.loop.exit.i.i48.i, %bb.qy, %bb.qv, %cgltf_json_to_float.exit.i.2.i.i
  %.153.i.i = phi i32 [ %i.diq, %bb.qy ], [ %i.dhv, %bb.qv ], [ %i.djf, %.split.loop.exit.i.i48.i ], [ %i.dgg, %cgltf_json_to_float.exit.i.2.i.i ] ; 3 uses
  %i.djg = icmp slt i32 %.153.i.i, 0
  br i1 %i.djg, label %cgltf_parse_json_asset.exit.thread, label %bb.rd

bb.rd:                                            ; preds = %cgltf_parse_json_float_array.exit.i.i, %cgltf_parse_json_float_array.exit.thread6.i.i
  %.1538.i.i = phi i32 [ %i.dil, %cgltf_parse_json_float_array.exit.thread6.i.i ], [ %.153.i.i, %cgltf_parse_json_float_array.exit.i.i ] ; 2 uses
  %i.djh = add nuw nsw i32 %.05013.i.i, 1         ; 2 uses
  %exitcond.not.i49.i = icmp eq i32 %i.djh, %i.dfl
  br i1 %exitcond.not.i49.i, label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i, label %.lr.ph.i46.i

cgltf_json_strcmp.exit43.i:                       ; preds = %bb.ne
  %i.dji = getelementptr inbounds i8, ptr %2, i64 %i.chz
  %i.djj = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.dji, ptr noundef nonnull dereferenceable(32) @.str.218, i64 noundef 31) #51
  %i.djk = icmp eq i32 %i.djj, 0
  br i1 %i.djk, label %bb.re, label %cgltf_json_strcmp.exit.thread.i472

bb.re:                                            ; preds = %cgltf_json_strcmp.exit43.i
  store i32 1, ptr %i.bti, align 8
  %i.djl = getelementptr inbounds nuw i8, ptr %i.chr, i64 32
  %i.djm = load i32, ptr %i.djl, align 8
  %.not.i35.i = icmp eq i32 %i.djm, 1
  br i1 %.not.i35.i, label %bb.rf, label %cgltf_parse_json_asset.exit.thread

bb.rf:                                            ; preds = %bb.re
  %i.djn = getelementptr inbounds nuw i8, ptr %i.chr, i64 56
  %i.djo = load i32, ptr %i.djn, align 8          ; 2 uses
  %i.djp = add nuw nsw i32 %.1269447.i.i, 2       ; 2 uses
  store float 1.000000e+00, ptr %i.btj, align 8
  %.not3443.i.i = icmp sgt i32 %i.djo, 0
  br i1 %.not3443.i.i, label %.lr.ph.i36.i, label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i

.lr.ph.i36.i:                                     ; preds = %bb.rf, %bb.ro
  %.02845.i.i = phi i32 [ %i.dlj, %bb.ro ], [ 0, %bb.rf ]
  %.03044.i.i = phi i32 [ %.13141.i.i, %bb.ro ], [ %i.djp, %bb.rf ] ; 5 uses
  %i.djq = zext nneg i32 %.03044.i.i to i64
  %i.djr = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.djq ; 4 uses
  %i.djs = load i32, ptr %i.djr, align 8
  %.not33.i.i = icmp eq i32 %i.djs, 3
  br i1 %.not33.i.i, label %bb.rg, label %cgltf_parse_json_asset.exit.thread

bb.rg:                                            ; preds = %.lr.ph.i36.i
  %i.djt = getelementptr inbounds nuw i8, ptr %i.djr, i64 24
  %i.dju = load i32, ptr %i.djt, align 8
  %i.djv = icmp eq i32 %i.dju, 0
  br i1 %i.djv, label %cgltf_parse_json_asset.exit.thread, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.djw = getelementptr inbounds nuw i8, ptr %i.djr, i64 16
  %i.djx = load i64, ptr %i.djw, align 8
  %i.djy = getelementptr inbounds nuw i8, ptr %i.djr, i64 8
  %i.djz = load i64, ptr %i.djy, align 8          ; 2 uses
  %i.dka = sub nsw i64 %i.djx, %i.djz
  %i.dkb = icmp eq i64 %i.dka, 16
  br i1 %i.dkb, label %cgltf_json_strcmp.exit.i39.i, label %cgltf_json_strcmp.exit.thread.i.i

cgltf_json_strcmp.exit.i39.i:                     ; preds = %bb.rh
  %i.dkc = getelementptr inbounds i8, ptr %2, i64 %i.djz
  %i.dkd = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.dkc, ptr noundef nonnull dereferenceable(17) @.str.259, i64 noundef 16) #51
  %i.dke = icmp eq i32 %i.dkd, 0
  br i1 %i.dke, label %bb.ri, label %cgltf_json_strcmp.exit.thread.i.i

bb.ri:                                            ; preds = %cgltf_json_strcmp.exit.i39.i
  %i.dkf = sext i32 %.03044.i.i to i64
  %i.dkg = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.dkf ; 3 uses
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.dkg, i64 32
  %i.dki = load i32, ptr %i.dkh, align 8
  %.not.i35.i.i = icmp eq i32 %i.dki, 4
  br i1 %.not.i35.i.i, label %bb.rj, label %cgltf_skip_json.exit.thread39.i.i

bb.rj:                                            ; preds = %bb.ri
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #54
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.dkg, i64 48
  %i.dkk = load i64, ptr %i.dkj, align 8
  %i.dkl = getelementptr inbounds nuw i8, ptr %i.dkg, i64 40
  %i.dkm = load i64, ptr %i.dkl, align 8          ; 2 uses
  %i.dkn = sub nsw i64 %i.dkk, %i.dkm
  %spec.select.i.i40.i = call i64 @llvm.umin.i64(i64 %i.dkn, i64 127) ; 2 uses
  %i.dko = getelementptr inbounds i8, ptr %2, i64 %i.dkm
  %i.dkp = call ptr @strncpy(ptr noundef nonnull %i.x, ptr noundef readonly %i.dko, i64 noundef %spec.select.i.i40.i) #54 ; 0 uses
  %i.dkq = getelementptr inbounds nuw i8, ptr %i.x, i64 %spec.select.i.i40.i
  store i8 0, ptr %i.dkq, align 1
  %i.dkr = call double @strtod(ptr noundef nonnull captures(none) %i.x, ptr noundef null) #54, !inline_history !1
  %i.dks = fptrunc double %i.dkr to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #54
  br label %cgltf_skip_json.exit.thread39.i.i

cgltf_skip_json.exit.thread39.i.i:                ; preds = %bb.rj, %bb.ri
  %.0.i36.i.i = phi float [ %i.dks, %bb.rj ], [ -1.000000e+00, %bb.ri ]
  store float %.0.i36.i.i, ptr %i.btj, align 8
  %i.dkt = add nuw nsw i32 %.03044.i.i, 2
  br label %bb.ro

cgltf_json_strcmp.exit.thread.i.i:                ; preds = %cgltf_json_strcmp.exit.i39.i, %bb.rh
  %i.dku = add nuw nsw i32 %.03044.i.i, 1
  %i.dkv = add nuw nsw i32 %.03044.i.i, 2
  %i.dkw = zext nneg i32 %i.dku to i64
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rn, %cgltf_json_strcmp.exit.thread.i.i
  %indvars.iv.i.i.i474 = phi i64 [ %i.dkw, %cgltf_json_strcmp.exit.thread.i.i ], [ %indvars.iv.next.i.i.i476, %bb.rn ] ; 2 uses
  %.016.i.i37.i = phi i32 [ %i.dkv, %cgltf_json_strcmp.exit.thread.i.i ], [ %.1.i.i.i475, %bb.rn ] ; 4 uses
  %i.dkx = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i.i.i474 ; 3 uses
  %i.dky = load i32, ptr %i.dkx, align 8
  switch i32 %i.dky, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.rl
    i32 2, label %bb.rm
    i32 4, label %bb.rn
    i32 3, label %bb.rn
  ]

bb.rl:                                            ; preds = %bb.rk
  %i.dkz = getelementptr inbounds nuw i8, ptr %i.dkx, i64 24
  %i.dla = load i32, ptr %i.dkz, align 8
  %i.dlb = shl nsw i32 %i.dla, 1
  %i.dlc = add nsw i32 %i.dlb, %.016.i.i37.i
  br label %bb.rn

bb.rm:                                            ; preds = %bb.rk
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dkx, i64 24
  %i.dle = load i32, ptr %i.dld, align 8
  %i.dlf = add nsw i32 %i.dle, %.016.i.i37.i
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %bb.rl, %bb.rk, %bb.rk
  %.1.i.i.i475 = phi i32 [ %i.dlc, %bb.rl ], [ %i.dlf, %bb.rm ], [ %.016.i.i37.i, %bb.rk ], [ %.016.i.i37.i, %bb.rk ] ; 2 uses
  %indvars.iv.next.i.i.i476 = add nuw nsw i64 %indvars.iv.i.i.i474, 1 ; 3 uses
  %i.dlg = sext i32 %.1.i.i.i475 to i64
  %i.dlh = icmp slt i64 %indvars.iv.next.i.i.i476, %i.dlg
  br i1 %i.dlh, label %bb.rk, label %cgltf_skip_json.exit.i.i477

cgltf_skip_json.exit.i.i477:                      ; preds = %bb.rn
  %i.dli = trunc nuw nsw i64 %indvars.iv.next.i.i.i476 to i32
  br label %bb.ro

bb.ro:                                            ; preds = %cgltf_skip_json.exit.i.i477, %cgltf_skip_json.exit.thread39.i.i
  %.13141.i.i = phi i32 [ %i.dkt, %cgltf_skip_json.exit.thread39.i.i ], [ %i.dli, %cgltf_skip_json.exit.i.i477 ] ; 2 uses
  %i.dlj = add nuw nsw i32 %.02845.i.i, 1         ; 2 uses
  %exitcond.not.i38.i = icmp eq i32 %i.dlj, %i.djo
  br i1 %exitcond.not.i38.i, label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i, label %.lr.ph.i36.i

cgltf_json_strcmp.exit34.i:                       ; preds = %bb.ne
  %i.dlk = getelementptr inbounds i8, ptr %2, i64 %i.chz
  %i.dll = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.dlk, ptr noundef nonnull dereferenceable(26) @.str.219, i64 noundef 25) #51
  %i.dlm = icmp eq i32 %i.dll, 0
  br i1 %i.dlm, label %bb.rp, label %cgltf_json_strcmp.exit.thread.i472

bb.rp:                                            ; preds = %cgltf_json_strcmp.exit34.i
  store i32 1, ptr %i.btg, align 4
  %i.dln = add nuw nsw i32 %.1269447.i.i, 1
  %i.dlo = call fastcc i32 @cgltf_parse_json_iridescence(ptr noundef nonnull %1, i32 noundef %i.dln, ptr noundef nonnull readonly %2, ptr noundef nonnull %i.bth)
  br label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i

cgltf_json_strcmp.exit.i471:                      ; preds = %bb.ne
  %i.dlp = getelementptr inbounds i8, ptr %2, i64 %i.chz
  %i.dlq = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.dlp, ptr noundef nonnull dereferenceable(35) @.str.220, i64 noundef 34) #51
  %i.dlr = icmp eq i32 %i.dlq, 0
  br i1 %i.dlr, label %bb.rq, label %cgltf_json_strcmp.exit.thread.i472

bb.rq:                                            ; preds = %cgltf_json_strcmp.exit.i471
  store i32 1, ptr %i.bte, align 8
  %i.dls = add nuw nsw i32 %.1269447.i.i, 1
  %i.dlt = call fastcc i32 @cgltf_parse_json_diffuse_transmission(ptr noundef nonnull %1, i32 noundef %i.dls, ptr noundef nonnull readonly %2, ptr noundef nonnull %i.btf)
  br label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i

cgltf_json_strcmp.exit.thread.i472:               ; preds = %cgltf_json_strcmp.exit.i471, %cgltf_json_strcmp.exit34.i, %cgltf_json_strcmp.exit43.i, %cgltf_json_strcmp.exit62.i, %cgltf_json_strcmp.exit87.i, %cgltf_json_strcmp.exit102.i, %cgltf_json_strcmp.exit133.i, %cgltf_json_strcmp.exit156.i, %cgltf_json_strcmp.exit387.i.i, %cgltf_json_strcmp.exit356.i.i, %bb.ne
  %i.dlu = call fastcc i32 @cgltf_json_strcmp(ptr noundef %i.chr, ptr noundef readonly %2, ptr noundef nonnull @.str.221)
  %i.dlv = icmp eq i32 %i.dlu, 0
  br i1 %i.dlv, label %bb.rr, label %bb.rs

bb.rr:                                            ; preds = %cgltf_json_strcmp.exit.thread.i472
  store i32 1, ptr %i.btc, align 4
  %i.dlw = add nuw nsw i32 %.1269447.i.i, 1
  %i.dlx = call fastcc i32 @cgltf_parse_json_anisotropy(ptr noundef nonnull %1, i32 noundef %i.dlw, ptr noundef readonly %2, ptr noundef nonnull %i.btd)
  br label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i

bb.rs:                                            ; preds = %cgltf_json_strcmp.exit.thread.i472
  %i.dly = call fastcc i32 @cgltf_json_strcmp(ptr noundef %i.chr, ptr noundef readonly %2, ptr noundef nonnull @.str.222)
  %i.dlz = icmp eq i32 %i.dly, 0
  br i1 %i.dlz, label %bb.rt, label %bb.ru

bb.rt:                                            ; preds = %bb.rs
  store i32 1, ptr %i.bta, align 8
  %i.dma = add nuw nsw i32 %.1269447.i.i, 1
  %i.dmb = call fastcc i32 @cgltf_parse_json_dispersion(ptr noundef nonnull %1, i32 noundef %i.dma, ptr noundef readonly %2, ptr noundef nonnull %i.btb)
  br label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i

bb.ru:                                            ; preds = %bb.rs
  %i.dmc = load ptr, ptr %i.bsy, align 8
  %i.dmd = load i64, ptr %i.bsz, align 8          ; 2 uses
  %i.dme = add i64 %i.dmd, 1
  store i64 %i.dme, ptr %i.bsz, align 8
  %i.dmf = getelementptr inbounds nuw [16 x i8], ptr %i.dmc, i64 %i.dmd
  %i.dmg = call fastcc i32 @cgltf_parse_json_unprocessed_extension(ptr noundef nonnull readonly %0, ptr noundef nonnull %1, i32 noundef %.1269447.i.i, ptr noundef readonly %2, ptr noundef %i.dmf)
  br label %cgltf_parse_json_pbr_specular_glossiness.exit.i.i

cgltf_parse_json_pbr_specular_glossiness.exit.i.i: ; preds = %bb.ro, %cgltf_parse_json_float_array.exit.thread7.i.i, %bb.pz, %cgltf_fill_float_array.exit.i112.i, %bb.pa, %cgltf_skip_json.exit.thread.i.i, %bb.rd, %bb.nv, %bb.ru, %bb.rt, %bb.rr, %bb.rq, %bb.rp, %bb.rf, %bb.qq, %bb.qb, %bb.pp, %cgltf_fill_float_array.exit.preheader.i.i, %bb.or, %bb.oc, %.split.loop.exit.i.i487, %bb.ng
  %.2270.i.i = phi i32 [ %i.dmg, %bb.ru ], [ %i.djp, %bb.rf ], [ %i.csm, %bb.or ], [ %.1609.i.i.i, %bb.nv ], [ %.1538.i.i, %bb.rd ], [ %.13141.i147.i, %bb.pa ], [ %.1637.i.i, %cgltf_skip_json.exit.thread.i.i ], [ %.1558.i.i, %cgltf_fill_float_array.exit.i112.i ], [ %.1386.i.i, %bb.pz ], [ %i.dlo, %bb.rp ], [ %i.dlt, %bb.rq ], [ %i.dlx, %bb.rr ], [ %i.dmb, %bb.rt ], [ %i.cii, %bb.ng ], [ %i.coz, %.split.loop.exit.i.i487 ], [ %i.cyv, %bb.pp ], [ %i.dba, %bb.qb ], [ %i.cph, %bb.oc ], [ %.1549.i.i, %cgltf_parse_json_float_array.exit.thread7.i.i ], [ %i.dfm, %bb.qq ], [ %i.cus, %cgltf_fill_float_array.exit.preheader.i.i ], [ %.13141.i.i, %bb.ro ] ; 4 uses
  %i.dmh = icmp slt i32 %.2270.i.i, 0
  br i1 %i.dmh, label %cgltf_parse_json_asset.exit.thread, label %bb.nc

cgltf_json_strcmp.exit351.thread.i.i:             ; preds = %cgltf_json_strcmp.exit351.i.i, %cgltf_json_strcmp.exit344.i.i, %cgltf_json_strcmp.exit341.i.i, %cgltf_json_strcmp.exit324.i.i, %cgltf_json_strcmp.exit321.i.i, %cgltf_json_strcmp.exit318.i.i, %cgltf_json_strcmp.exit315.i.i, %cgltf_json_strcmp.exit303.i.i, %cgltf_json_strcmp.exit298.i.i, %cgltf_json_strcmp.exit.i.i508, %bb.ll
  %i.dmi = add nuw nsw i32 %.0268450.i.i, 1
  %i.dmj = add nuw nsw i32 %.0268450.i.i, 2
  %i.dmk = zext nneg i32 %i.dmi to i64
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ry, %cgltf_json_strcmp.exit351.thread.i.i
  %indvars.iv.i388.i.i = phi i64 [ %i.dmk, %cgltf_json_strcmp.exit351.thread.i.i ], [ %indvars.iv.next.i390.i.i, %bb.ry ] ; 2 uses
  %.016.i.i.i466 = phi i32 [ %i.dmj, %cgltf_json_strcmp.exit351.thread.i.i ], [ %.1.i389.i.i, %bb.ry ] ; 4 uses
  %i.dml = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i388.i.i ; 3 uses
  %i.dmm = load i32, ptr %i.dml, align 8
  switch i32 %i.dmm, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.rw
    i32 2, label %bb.rx
    i32 4, label %bb.ry
    i32 3, label %bb.ry
  ]

bb.rw:                                            ; preds = %bb.rv
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.dml, i64 24
  %i.dmo = load i32, ptr %i.dmn, align 8
  %i.dmp = shl nsw i32 %i.dmo, 1
  %i.dmq = add nsw i32 %i.dmp, %.016.i.i.i466
  br label %bb.ry

bb.rx:                                            ; preds = %bb.rv
  %i.dmr = getelementptr inbounds nuw i8, ptr %i.dml, i64 24
  %i.dms = load i32, ptr %i.dmr, align 8
  %i.dmt = add nsw i32 %i.dms, %.016.i.i.i466
  br label %bb.ry

bb.ry:                                            ; preds = %bb.rx, %bb.rw, %bb.rv, %bb.rv
  %.1.i389.i.i = phi i32 [ %i.dmq, %bb.rw ], [ %i.dmt, %bb.rx ], [ %.016.i.i.i466, %bb.rv ], [ %.016.i.i.i466, %bb.rv ] ; 2 uses
  %indvars.iv.next.i390.i.i = add nuw nsw i64 %indvars.iv.i388.i.i, 1 ; 3 uses
  %i.dmu = sext i32 %.1.i389.i.i to i64
  %i.dmv = icmp slt i64 %indvars.iv.next.i390.i.i, %i.dmu
  br i1 %i.dmv, label %bb.rv, label %.split.loop.exit.i.i.i467

.split.loop.exit.i.i.i467:                        ; preds = %bb.ry
  %i.dmw = trunc nuw nsw i64 %indvars.iv.next.i390.i.i to i32
  br label %cgltf_parse_json_string.exit.i.i468

cgltf_parse_json_string.exit.i.i468:              ; preds = %cgltf_parse_json_float_array.exit.thread8.i.i.i, %.split.loop.exit.i.i.i467, %cgltf_calloc.exit.i.i, %.split.loop.exit.i.i348.i.i, %cgltf_json_to_bool.exit.i.i494, %cgltf_json_to_float.exit.i.i, %cgltf_json_strcmp.exit333.thread.i.i, %bb.mk, %bb.mj, %bb.mi, %cgltf_json_to_float.exit.i309.2.i.i
  %.5273.i.i = phi i32 [ %i.cbu, %cgltf_json_to_float.exit.i309.2.i.i ], [ %i.dmw, %.split.loop.exit.i.i.i467 ], [ %i.cha, %.split.loop.exit.i.i348.i.i ], [ %i.cdj, %bb.mi ], [ %i.cdo, %bb.mj ], [ %i.cdt, %bb.mk ], [ %i.cen, %cgltf_json_strcmp.exit333.thread.i.i ], [ %i.cfd, %cgltf_json_to_float.exit.i.i ], [ %i.cfs, %cgltf_json_to_bool.exit.i.i494 ], [ %i.chj, %cgltf_calloc.exit.i.i ], [ %.16210.i.i.i, %cgltf_parse_json_float_array.exit.thread8.i.i.i ] ; 3 uses
  %i.dmx = icmp slt i32 %.5273.i.i, 0
  br i1 %i.dmx, label %cgltf_parse_json_asset.exit.thread, label %cgltf_parse_json_string.exit.thread422.i.i

cgltf_parse_json_string.exit.thread422.i.i:       ; preds = %bb.nc, %cgltf_parse_json_string.exit.i.i468, %bb.lr, %bb.lp
  %.5273425.i.i = phi i32 [ %.5273.i.i, %cgltf_parse_json_string.exit.i.i468 ], [ %i.bwp, %bb.lr ], [ %i.bwh, %bb.lp ], [ %.2270.i.i, %bb.nc ] ; 2 uses
  %i.dmy = add nuw nsw i32 %.0264451.i.i, 1       ; 2 uses
  %exitcond492.not.i.i = icmp eq i32 %i.dmy, %i.bsw
  br i1 %exitcond492.not.i.i, label %cgltf_parse_json_material.exit.thread182.i, label %bb.lj

cgltf_parse_json_material.exit.thread182.i:       ; preds = %cgltf_parse_json_string.exit.thread422.i.i, %cgltf_fill_float_array.exit.i.i
  %.6.i184.i = phi i32 [ %i.bsx, %cgltf_fill_float_array.exit.i.i ], [ %.5273425.i.i, %cgltf_parse_json_string.exit.thread422.i.i ] ; 2 uses
  %i.dmz = add nuw i64 %.021251.i, 1              ; 2 uses
  %i.dna = load i64, ptr %i.ca, align 8
  %i.dnb = icmp ult i64 %i.dmz, %i.dna
  br i1 %i.dnb, label %.lr.ph.i464, label %cgltf_parse_json_asset.exit

cgltf_json_strcmp.exit514:                        ; preds = %cgltf_json_strcmp.exit300
  %i.dnc = getelementptr inbounds i8, ptr %2, i64 %i.db
  %i.dnd = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.dnc, ptr noundef nonnull dereferenceable(7) @.str.127, i64 noundef 6) #51
  %i.dne = icmp eq i32 %i.dnd, 0
  br i1 %i.dne, label %bb.rz, label %cgltf_json_strcmp.exit700.thread

bb.rz:                                            ; preds = %cgltf_json_strcmp.exit514
  %i.dnf = zext nneg i32 %.02741181 to i64
  %i.dng = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.dnf ; 2 uses
  %i.dnh = getelementptr inbounds nuw i8, ptr %i.dng, i64 32
  %i.dni = load i32, ptr %i.dnh, align 8          ; 2 uses
  %.not.i.i515 = icmp eq i32 %i.dni, 2
  br i1 %.not.i.i515, label %bb.sb, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.dnj = icmp eq i32 %i.dni, 1
  %i.dnk = select i1 %i.dnj, i32 -3, i32 -1
  br label %cgltf_parse_json_asset.exit.thread

bb.sb:                                            ; preds = %bb.rz
  %i.dnl = load ptr, ptr %i.bx, align 8
  %.not18.i.i517 = icmp eq ptr %i.dnl, null
  br i1 %.not18.i.i517, label %bb.sc, label %cgltf_parse_json_asset.exit.thread

bb.sc:                                            ; preds = %bb.sb
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.dng, i64 56
  %i.dnn = load i32, ptr %i.dnm, align 8          ; 3 uses
  %i.dno = sext i32 %i.dnn to i64                 ; 3 uses
  %mul.ov.i.i.i518 = icmp slt i32 %i.dnn, 0
  br i1 %mul.ov.i.i.i518, label %cgltf_parse_json_asset.exit.thread, label %bb.sd

bb.sd:                                            ; preds = %bb.sc
  %i.dnp = load ptr, ptr %i.bn, align 8
  %i.dnq = load ptr, ptr %i.bo, align 8
  %i.dnr = mul nuw nsw i64 %i.dno, 72             ; 2 uses
  %i.dns = call ptr %i.dnp(ptr noundef %i.dnq, i64 noundef %i.dnr) #54, !inline_history !241 ; 3 uses
  %.not.i.i.i519 = icmp eq ptr %i.dns, null
  br i1 %.not.i.i.i519, label %cgltf_parse_json_asset.exit.thread, label %cgltf_parse_json_array.exit.i520

cgltf_parse_json_array.exit.i520:                 ; preds = %bb.sd
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dns, i8 0, i64 %i.dnr, i1 false)
  store ptr %i.dns, ptr %i.bx, align 8
  store i64 %i.dno, ptr %i.by, align 8
  %i.dnt = add nuw nsw i32 %.02741181, 2          ; 2 uses
  %.not.i521 = icmp eq i32 %i.dnn, 0
  br i1 %.not.i521, label %cgltf_parse_json_asset.exit.thread747, label %.lr.ph.i522

.lr.ph.i522:                                      ; preds = %cgltf_parse_json_array.exit.i520, %cgltf_parse_json_image.exit.thread32.i
  %i.dnu = phi i64 [ %i.dvf, %cgltf_parse_json_image.exit.thread32.i ], [ %i.dno, %cgltf_parse_json_array.exit.i520 ]
  %.02149.i523 = phi i64 [ %i.dvg, %cgltf_parse_json_image.exit.thread32.i ], [ 0, %cgltf_parse_json_array.exit.i520 ] ; 2 uses
  %.02348.i524 = phi i32 [ %.2.i34.i526, %cgltf_parse_json_image.exit.thread32.i ], [ %i.dnt, %cgltf_parse_json_array.exit.i520 ] ; 2 uses
  %i.dnv = load ptr, ptr %i.bx, align 8
  %i.dnw = getelementptr inbounds nuw [72 x i8], ptr %i.dnv, i64 %.02149.i523 ; 10 uses
  %i.dnx = zext nneg i32 %.02348.i524 to i64
  %i.dny = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.dnx ; 2 uses
  %i.dnz = load i32, ptr %i.dny, align 8
  %.not.i29.i525 = icmp eq i32 %i.dnz, 1
  br i1 %.not.i29.i525, label %bb.se, label %cgltf_parse_json_asset.exit.thread

bb.se:                                            ; preds = %.lr.ph.i522
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dny, i64 24
  %i.dob = load i32, ptr %i.doa, align 8          ; 2 uses
  %i.doc = add nuw nsw i32 %.02348.i524, 1        ; 2 uses
  %.not74126.i.i = icmp sgt i32 %i.dob, 0
  br i1 %.not74126.i.i, label %.lr.ph.i.i527, label %cgltf_parse_json_image.exit.thread32.i

.lr.ph.i.i527:                                    ; preds = %bb.se
  %i.dod = getelementptr inbounds nuw i8, ptr %i.dnw, i64 56 ; 3 uses
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dnw, i64 64 ; 4 uses
  %i.dof = getelementptr inbounds nuw i8, ptr %i.dnw, i64 48 ; 3 uses
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dnw, i64 32
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dnw, i64 40
end_hunk_3
begin_hunk_4_@cgltf_parse_json_root:bb.a
  %i.eaw = icmp slt i64 %indvars.iv.next.i.i.i.i591, %i.eav
  br i1 %i.eaw, label %bb.ui, label %cgltf_parse_json_string.exit.i.i574

cgltf_json_strcmp.exit208.i.i:                    ; preds = %bb.tw
  %i.eax = getelementptr inbounds i8, ptr %2, i64 %i.dxd
  %i.eay = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.eax, ptr noundef nonnull dereferenceable(11) @.str.137, i64 noundef 10) #51
  %i.eaz = icmp eq i32 %i.eay, 0
  br i1 %i.eaz, label %bb.um, label %cgltf_json_strcmp.exit208.thread.i.i

bb.um:                                            ; preds = %cgltf_json_strcmp.exit208.i.i
  %i.eba = sext i32 %.0165349.i.i to i64
  %i.ebb = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.eba ; 2 uses
  %i.ebc = getelementptr inbounds nuw i8, ptr %i.ebb, i64 32
  %i.ebd = load i32, ptr %i.ebc, align 8
  %.not177.i.i = icmp eq i32 %i.ebd, 1
  br i1 %.not177.i.i, label %bb.un, label %cgltf_parse_json_asset.exit.thread

bb.un:                                            ; preds = %bb.um
  %i.ebe = load ptr, ptr %i.dwj, align 8
  %.not178.i.i = icmp eq ptr %i.ebe, null
  br i1 %.not178.i.i, label %bb.uo, label %cgltf_parse_json_asset.exit.thread

bb.uo:                                            ; preds = %bb.un
  %i.ebf = getelementptr inbounds nuw i8, ptr %i.ebb, i64 56
  %i.ebg = load i32, ptr %i.ebf, align 8          ; 4 uses
  %i.ebh = add nuw nsw i32 %.0165349.i.i, 2       ; 2 uses
  %mul.ov.i.i30.i576 = icmp slt i32 %i.ebg, 0
  br i1 %mul.ov.i.i30.i576, label %.thread292.i.i, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.ebi = zext nneg i32 %i.ebg to i64
  %i.ebj = load ptr, ptr %i.bn, align 8
  %i.ebk = load ptr, ptr %i.bo, align 8
  %i.ebl = shl nuw nsw i64 %i.ebi, 4              ; 2 uses
  %i.ebm = call ptr %i.ebj(ptr noundef %i.ebk, i64 noundef %i.ebl) #54, !inline_history !248 ; 3 uses
  %.not.i209.i.i = icmp eq ptr %i.ebm, null
  br i1 %.not.i209.i.i, label %.thread292.i.i, label %cgltf_calloc.exit.i.i577

.thread292.i.i:                                   ; preds = %bb.up, %bb.uo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dwk, i8 0, i64 16, i1 false)
  br label %cgltf_parse_json_asset.exit.thread

cgltf_calloc.exit.i.i577:                         ; preds = %bb.up
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ebm, i8 0, i64 %i.ebl, i1 false)
  store ptr %i.ebm, ptr %i.dwj, align 8
  store i64 0, ptr %i.dwk, align 8
  %.not372.i.i = icmp eq i32 %i.ebg, 0
  br i1 %.not372.i.i, label %cgltf_parse_json_string.exit.thread305.i.i, label %.lr.ph346.i.i

.lr.ph346.i.i:                                    ; preds = %cgltf_calloc.exit.i.i577, %.thread287.i.i
  %.0157345.i.i = phi i32 [ %i.egq, %.thread287.i.i ], [ 0, %cgltf_calloc.exit.i.i577 ]
  %.1166344.i.i = phi i32 [ %.8173290.i.i, %.thread287.i.i ], [ %i.ebh, %cgltf_calloc.exit.i.i577 ] ; 6 uses
  %i.ebn = zext nneg i32 %.1166344.i.i to i64
  %i.ebo = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ebn ; 4 uses
  %i.ebp = load i32, ptr %i.ebo, align 8
  %.not180.i.i = icmp eq i32 %i.ebp, 3
  br i1 %.not180.i.i, label %bb.uq, label %cgltf_parse_json_asset.exit.thread

bb.uq:                                            ; preds = %.lr.ph346.i.i
  %i.ebq = getelementptr inbounds nuw i8, ptr %i.ebo, i64 24
  %i.ebr = load i32, ptr %i.ebq, align 8
  %i.ebs = icmp eq i32 %i.ebr, 0
  br i1 %i.ebs, label %cgltf_parse_json_asset.exit.thread, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  %i.ebt = getelementptr inbounds nuw i8, ptr %i.ebo, i64 16
  %i.ebu = load i64, ptr %i.ebt, align 8
  %i.ebv = getelementptr inbounds nuw i8, ptr %i.ebo, i64 8
  %i.ebw = load i64, ptr %i.ebv, align 8          ; 3 uses
  %i.ebx = sub nsw i64 %i.ebu, %i.ebw
  switch i64 %i.ebx, label %cgltf_json_strcmp.exit224.thread.i.i [
    i64 18, label %cgltf_json_strcmp.exit213.i.i
    i64 16, label %cgltf_json_strcmp.exit224.i.i
  ]

cgltf_json_strcmp.exit213.i.i:                    ; preds = %bb.ur
  %i.eby = getelementptr inbounds i8, ptr %2, i64 %i.ebw
  %i.ebz = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.eby, ptr noundef nonnull dereferenceable(19) @.str.277, i64 noundef 18) #51
  %i.eca = icmp eq i32 %i.ebz, 0
  br i1 %i.eca, label %bb.us, label %cgltf_json_strcmp.exit224.thread.i.i

bb.us:                                            ; preds = %cgltf_json_strcmp.exit213.i.i
  store i32 1, ptr %i.dwn, align 8
  %i.ecb = sext i32 %.1166344.i.i to i64
  %i.ecc = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ecb ; 2 uses
  %i.ecd = getelementptr inbounds nuw i8, ptr %i.ecc, i64 32
  %i.ece = load i32, ptr %i.ecd, align 8
  %.not184.i.i = icmp eq i32 %i.ece, 1
  br i1 %.not184.i.i, label %bb.ut, label %cgltf_parse_json_asset.exit.thread

bb.ut:                                            ; preds = %bb.us
  %i.ecf = getelementptr inbounds nuw i8, ptr %i.ecc, i64 56
  %i.ecg = load i32, ptr %i.ecf, align 8          ; 2 uses
  %i.ech = add nuw nsw i32 %.1166344.i.i, 2       ; 2 uses
  %.not186339.i.i = icmp sgt i32 %i.ecg, 0
  br i1 %.not186339.i.i, label %.lr.ph342.i.i, label %.thread287.i.i

.lr.ph342.i.i:                                    ; preds = %bb.ut, %bb.vc
  %.0156341.i.i = phi i32 [ %i.eed, %bb.vc ], [ 0, %bb.ut ]
  %.2167340.i.i = phi i32 [ %.3168258.i.i, %bb.vc ], [ %i.ech, %bb.ut ] ; 5 uses
  %i.eci = zext nneg i32 %.2167340.i.i to i64
  %i.ecj = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.eci ; 4 uses
  %i.eck = load i32, ptr %i.ecj, align 8
  %.not185.i.i = icmp eq i32 %i.eck, 3
  br i1 %.not185.i.i, label %bb.uu, label %cgltf_parse_json_asset.exit.thread

bb.uu:                                            ; preds = %.lr.ph342.i.i
  %i.ecl = getelementptr inbounds nuw i8, ptr %i.ecj, i64 24
  %i.ecm = load i32, ptr %i.ecl, align 8
  %i.ecn = icmp eq i32 %i.ecm, 0
  br i1 %i.ecn, label %cgltf_parse_json_asset.exit.thread, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.eco = getelementptr inbounds nuw i8, ptr %i.ecj, i64 16
  %i.ecp = load i64, ptr %i.eco, align 8
  %i.ecq = getelementptr inbounds nuw i8, ptr %i.ecj, i64 8
  %i.ecr = load i64, ptr %i.ecq, align 8          ; 2 uses
  %i.ecs = sub nsw i64 %i.ecp, %i.ecr
  %i.ect = icmp eq i64 %i.ecs, 6
  br i1 %i.ect, label %cgltf_json_strcmp.exit216.i.i, label %cgltf_json_strcmp.exit216.thread.i.i

cgltf_json_strcmp.exit216.i.i:                    ; preds = %bb.uv
  %i.ecu = getelementptr inbounds i8, ptr %2, i64 %i.ecr
  %i.ecv = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ecu, ptr noundef nonnull dereferenceable(7) @.str.276, i64 noundef 6) #51
  %i.ecw = icmp eq i32 %i.ecv, 0
  br i1 %i.ecw, label %bb.uw, label %cgltf_json_strcmp.exit216.thread.i.i

bb.uw:                                            ; preds = %cgltf_json_strcmp.exit216.i.i
  %i.ecx = sext i32 %.2167340.i.i to i64
  %i.ecy = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ecx ; 3 uses
  %i.ecz = getelementptr inbounds nuw i8, ptr %i.ecy, i64 32
  %i.eda = load i32, ptr %i.ecz, align 8
  %.not.i217.i.i = icmp eq i32 %i.eda, 4
  br i1 %.not.i217.i.i, label %bb.ux, label %cgltf_skip_json.exit.thread256.i.i

bb.ux:                                            ; preds = %bb.uw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #54
  %i.edb = getelementptr inbounds nuw i8, ptr %i.ecy, i64 48
  %i.edc = load i64, ptr %i.edb, align 8
  %i.edd = getelementptr inbounds nuw i8, ptr %i.ecy, i64 40
  %i.ede = load i64, ptr %i.edd, align 8          ; 2 uses
  %i.edf = sub nsw i64 %i.edc, %i.ede
  %spec.select.i219.i.i = call i64 @llvm.umin.i64(i64 %i.edf, i64 127) ; 2 uses
  %i.edg = getelementptr inbounds i8, ptr %2, i64 %i.ede
  %i.edh = call ptr @strncpy(ptr noundef nonnull %i.i, ptr noundef readonly %i.edg, i64 noundef %spec.select.i219.i.i) #54 ; 0 uses
  %i.edi = getelementptr inbounds nuw i8, ptr %i.i, i64 %spec.select.i219.i.i
  store i8 0, ptr %i.edi, align 1
  %i.edj = call i64 @strtol(ptr noundef nonnull captures(none) %i.i, ptr noundef null, i32 noundef 10) #54, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #54
  %sext310.i.i = shl i64 %i.edj, 32
  %i.edk = ashr exact i64 %sext310.i.i, 32
  %i.edl = add nsw i64 %i.edk, 1
  %i.edm = inttoptr i64 %i.edl to ptr
  br label %cgltf_skip_json.exit.thread256.i.i

cgltf_skip_json.exit.thread256.i.i:               ; preds = %bb.ux, %bb.uw
  %.0.i218.i.i = phi ptr [ %i.edm, %bb.ux ], [ null, %bb.uw ]
  store ptr %.0.i218.i.i, ptr %i.dwo, align 8
  %i.edn = add nuw nsw i32 %.2167340.i.i, 2
  br label %bb.vc

cgltf_json_strcmp.exit216.thread.i.i:             ; preds = %cgltf_json_strcmp.exit216.i.i, %bb.uv
  %i.edo = add nuw nsw i32 %.2167340.i.i, 1
  %i.edp = add nuw nsw i32 %.2167340.i.i, 2
  %i.edq = zext nneg i32 %i.edo to i64
  br label %bb.uy

bb.uy:                                            ; preds = %bb.vb, %cgltf_json_strcmp.exit216.thread.i.i
  %indvars.iv.i.i.i581 = phi i64 [ %i.edq, %cgltf_json_strcmp.exit216.thread.i.i ], [ %indvars.iv.next.i.i.i583, %bb.vb ] ; 2 uses
  %.016.i.i.i582 = phi i32 [ %i.edp, %cgltf_json_strcmp.exit216.thread.i.i ], [ %.1.i221.i.i, %bb.vb ] ; 4 uses
  %i.edr = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i.i.i581 ; 3 uses
  %i.eds = load i32, ptr %i.edr, align 8
  switch i32 %i.eds, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.uz
    i32 2, label %bb.va
    i32 4, label %bb.vb
    i32 3, label %bb.vb
  ]

bb.uz:                                            ; preds = %bb.uy
  %i.edt = getelementptr inbounds nuw i8, ptr %i.edr, i64 24
  %i.edu = load i32, ptr %i.edt, align 8
  %i.edv = shl nsw i32 %i.edu, 1
  %i.edw = add nsw i32 %i.edv, %.016.i.i.i582
  br label %bb.vb

bb.va:                                            ; preds = %bb.uy
  %i.edx = getelementptr inbounds nuw i8, ptr %i.edr, i64 24
  %i.edy = load i32, ptr %i.edx, align 8
  %i.edz = add nsw i32 %i.edy, %.016.i.i.i582
  br label %bb.vb

bb.vb:                                            ; preds = %bb.va, %bb.uz, %bb.uy, %bb.uy
  %.1.i221.i.i = phi i32 [ %i.edw, %bb.uz ], [ %i.edz, %bb.va ], [ %.016.i.i.i582, %bb.uy ], [ %.016.i.i.i582, %bb.uy ] ; 2 uses
  %indvars.iv.next.i.i.i583 = add nuw nsw i64 %indvars.iv.i.i.i581, 1 ; 3 uses
  %i.eea = sext i32 %.1.i221.i.i to i64
  %i.eeb = icmp slt i64 %indvars.iv.next.i.i.i583, %i.eea
  br i1 %i.eeb, label %bb.uy, label %cgltf_skip_json.exit.i.i584

cgltf_skip_json.exit.i.i584:                      ; preds = %bb.vb
  %i.eec = trunc nuw nsw i64 %indvars.iv.next.i.i.i583 to i32
  br label %bb.vc

bb.vc:                                            ; preds = %cgltf_skip_json.exit.i.i584, %cgltf_skip_json.exit.thread256.i.i
  %.3168258.i.i = phi i32 [ %i.edn, %cgltf_skip_json.exit.thread256.i.i ], [ %i.eec, %cgltf_skip_json.exit.i.i584 ] ; 2 uses
  %i.eed = add nuw nsw i32 %.0156341.i.i, 1       ; 2 uses
  %exitcond382.not.i.i = icmp eq i32 %i.eed, %i.ecg
  br i1 %exitcond382.not.i.i, label %.thread287.i.i, label %.lr.ph342.i.i

cgltf_json_strcmp.exit224.i.i:                    ; preds = %bb.ur
  %i.eee = getelementptr inbounds i8, ptr %2, i64 %i.ebw
  %i.eef = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.eee, ptr noundef nonnull dereferenceable(17) @.str.278, i64 noundef 16) #51
  %i.eeg = icmp eq i32 %i.eef, 0
  br i1 %i.eeg, label %bb.vd, label %cgltf_json_strcmp.exit224.thread.i.i

bb.vd:                                            ; preds = %cgltf_json_strcmp.exit224.i.i
  store i32 1, ptr %i.dwl, align 8
  %i.eeh = sext i32 %.1166344.i.i to i64
  %i.eei = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.eeh ; 2 uses
  %i.eej = getelementptr inbounds nuw i8, ptr %i.eei, i64 32
  %i.eek = load i32, ptr %i.eej, align 8
  %.not181.i.i = icmp eq i32 %i.eek, 1
  br i1 %.not181.i.i, label %bb.ve, label %cgltf_parse_json_asset.exit.thread

bb.ve:                                            ; preds = %bb.vd
  %i.eel = getelementptr inbounds nuw i8, ptr %i.eei, i64 56
  %i.eem = load i32, ptr %i.eel, align 8          ; 2 uses
  %i.een = add nuw nsw i32 %.1166344.i.i, 2       ; 2 uses
  %.not183336.i.i = icmp sgt i32 %i.eem, 0
  br i1 %.not183336.i.i, label %.lr.ph.i.i578, label %.thread287.i.i

.lr.ph.i.i578:                                    ; preds = %bb.ve, %bb.vn
  %.0338.i.i = phi i32 [ %i.egj, %bb.vn ], [ 0, %bb.ve ]
  %.5170337.i.i = phi i32 [ %.6171271.i.i, %bb.vn ], [ %i.een, %bb.ve ] ; 5 uses
  %i.eeo = zext nneg i32 %.5170337.i.i to i64
  %i.eep = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.eeo ; 4 uses
  %i.eeq = load i32, ptr %i.eep, align 8
  %.not182.i.i = icmp eq i32 %i.eeq, 3
  br i1 %.not182.i.i, label %bb.vf, label %cgltf_parse_json_asset.exit.thread

bb.vf:                                            ; preds = %.lr.ph.i.i578
  %i.eer = getelementptr inbounds nuw i8, ptr %i.eep, i64 24
  %i.ees = load i32, ptr %i.eer, align 8
  %i.eet = icmp eq i32 %i.ees, 0
  br i1 %i.eet, label %cgltf_parse_json_asset.exit.thread, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.eeu = getelementptr inbounds nuw i8, ptr %i.eep, i64 16
  %i.eev = load i64, ptr %i.eeu, align 8
  %i.eew = getelementptr inbounds nuw i8, ptr %i.eep, i64 8
  %i.eex = load i64, ptr %i.eew, align 8          ; 2 uses
  %i.eey = sub nsw i64 %i.eev, %i.eex
  %i.eez = icmp eq i64 %i.eey, 6
  br i1 %i.eez, label %cgltf_json_strcmp.exit227.i.i, label %cgltf_json_strcmp.exit227.thread.i.i

cgltf_json_strcmp.exit227.i.i:                    ; preds = %bb.vg
  %i.efa = getelementptr inbounds i8, ptr %2, i64 %i.eex
  %i.efb = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.efa, ptr noundef nonnull dereferenceable(7) @.str.276, i64 noundef 6) #51
  %i.efc = icmp eq i32 %i.efb, 0
  br i1 %i.efc, label %bb.vh, label %cgltf_json_strcmp.exit227.thread.i.i

bb.vh:                                            ; preds = %cgltf_json_strcmp.exit227.i.i
  %i.efd = sext i32 %.5170337.i.i to i64
  %i.efe = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.efd ; 3 uses
  %i.eff = getelementptr inbounds nuw i8, ptr %i.efe, i64 32
  %i.efg = load i32, ptr %i.eff, align 8
  %.not.i228.i.i = icmp eq i32 %i.efg, 4
  br i1 %.not.i228.i.i, label %bb.vi, label %cgltf_skip_json.exit238.thread269.i.i

bb.vi:                                            ; preds = %bb.vh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #54
  %i.efh = getelementptr inbounds nuw i8, ptr %i.efe, i64 48
  %i.efi = load i64, ptr %i.efh, align 8
  %i.efj = getelementptr inbounds nuw i8, ptr %i.efe, i64 40
  %i.efk = load i64, ptr %i.efj, align 8          ; 2 uses
  %i.efl = sub nsw i64 %i.efi, %i.efk
  %spec.select.i230.i.i = call i64 @llvm.umin.i64(i64 %i.efl, i64 127) ; 2 uses
  %i.efm = getelementptr inbounds i8, ptr %2, i64 %i.efk
  %i.efn = call ptr @strncpy(ptr noundef nonnull %i.h, ptr noundef readonly %i.efm, i64 noundef %spec.select.i230.i.i) #54 ; 0 uses
  %i.efo = getelementptr inbounds nuw i8, ptr %i.h, i64 %spec.select.i230.i.i
  store i8 0, ptr %i.efo, align 1
  %i.efp = call i64 @strtol(ptr noundef nonnull captures(none) %i.h, ptr noundef null, i32 noundef 10) #54, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #54
  %sext.i.i580 = shl i64 %i.efp, 32
  %i.efq = ashr exact i64 %sext.i.i580, 32
  %i.efr = add nsw i64 %i.efq, 1
  %i.efs = inttoptr i64 %i.efr to ptr
  br label %cgltf_skip_json.exit238.thread269.i.i

cgltf_skip_json.exit238.thread269.i.i:            ; preds = %bb.vi, %bb.vh
  %.0.i229.i.i = phi ptr [ %i.efs, %bb.vi ], [ null, %bb.vh ]
  store ptr %.0.i229.i.i, ptr %i.dwm, align 8
  %i.eft = add nuw nsw i32 %.5170337.i.i, 2
  br label %bb.vn

cgltf_json_strcmp.exit227.thread.i.i:             ; preds = %cgltf_json_strcmp.exit227.i.i, %bb.vg
  %i.efu = add nuw nsw i32 %.5170337.i.i, 1
  %i.efv = add nuw nsw i32 %.5170337.i.i, 2
  %i.efw = zext nneg i32 %i.efu to i64
  br label %bb.vj

bb.vj:                                            ; preds = %bb.vm, %cgltf_json_strcmp.exit227.thread.i.i
  %indvars.iv.i232.i.i = phi i64 [ %i.efw, %cgltf_json_strcmp.exit227.thread.i.i ], [ %indvars.iv.next.i235.i.i, %bb.vm ] ; 2 uses
  %.016.i233.i.i = phi i32 [ %i.efv, %cgltf_json_strcmp.exit227.thread.i.i ], [ %.1.i234.i.i, %bb.vm ] ; 4 uses
  %i.efx = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i232.i.i ; 3 uses
  %i.efy = load i32, ptr %i.efx, align 8
  switch i32 %i.efy, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.vk
    i32 2, label %bb.vl
    i32 4, label %bb.vm
    i32 3, label %bb.vm
  ]

bb.vk:                                            ; preds = %bb.vj
  %i.efz = getelementptr inbounds nuw i8, ptr %i.efx, i64 24
  %i.ega = load i32, ptr %i.efz, align 8
  %i.egb = shl nsw i32 %i.ega, 1
  %i.egc = add nsw i32 %i.egb, %.016.i233.i.i
  br label %bb.vm

bb.vl:                                            ; preds = %bb.vj
  %i.egd = getelementptr inbounds nuw i8, ptr %i.efx, i64 24
  %i.ege = load i32, ptr %i.egd, align 8
  %i.egf = add nsw i32 %i.ege, %.016.i233.i.i
  br label %bb.vm

bb.vm:                                            ; preds = %bb.vl, %bb.vk, %bb.vj, %bb.vj
  %.1.i234.i.i = phi i32 [ %i.egc, %bb.vk ], [ %i.egf, %bb.vl ], [ %.016.i233.i.i, %bb.vj ], [ %.016.i233.i.i, %bb.vj ] ; 2 uses
  %indvars.iv.next.i235.i.i = add nuw nsw i64 %indvars.iv.i232.i.i, 1 ; 3 uses
  %i.egg = sext i32 %.1.i234.i.i to i64
  %i.egh = icmp slt i64 %indvars.iv.next.i235.i.i, %i.egg
  br i1 %i.egh, label %bb.vj, label %cgltf_skip_json.exit238.i.i

cgltf_skip_json.exit238.i.i:                      ; preds = %bb.vm
  %i.egi = trunc nuw nsw i64 %indvars.iv.next.i235.i.i to i32
  br label %bb.vn

bb.vn:                                            ; preds = %cgltf_skip_json.exit238.i.i, %cgltf_skip_json.exit238.thread269.i.i
  %.6171271.i.i = phi i32 [ %i.eft, %cgltf_skip_json.exit238.thread269.i.i ], [ %i.egi, %cgltf_skip_json.exit238.i.i ] ; 2 uses
  %i.egj = add nuw nsw i32 %.0338.i.i, 1          ; 2 uses
  %exitcond.not.i.i579 = icmp eq i32 %i.egj, %i.eem
  br i1 %exitcond.not.i.i579, label %.thread287.i.i, label %.lr.ph.i.i578

cgltf_json_strcmp.exit224.thread.i.i:             ; preds = %cgltf_json_strcmp.exit224.i.i, %cgltf_json_strcmp.exit213.i.i, %bb.ur
  %i.egk = load ptr, ptr %i.dwj, align 8
  %i.egl = load i64, ptr %i.dwk, align 8          ; 2 uses
  %i.egm = add i64 %i.egl, 1
  store i64 %i.egm, ptr %i.dwk, align 8
  %i.egn = getelementptr inbounds nuw [16 x i8], ptr %i.egk, i64 %i.egl
  %i.ego = call fastcc i32 @cgltf_parse_json_unprocessed_extension(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %.1166344.i.i, ptr noundef readonly %2, ptr noundef %i.egn) ; 3 uses
  %i.egp = icmp slt i32 %i.ego, 0
  br i1 %i.egp, label %cgltf_parse_json_asset.exit.thread, label %.thread287.i.i

.thread287.i.i:                                   ; preds = %bb.vn, %bb.vc, %cgltf_json_strcmp.exit224.thread.i.i, %bb.ve, %bb.ut
  %.8173290.i.i = phi i32 [ %i.ego, %cgltf_json_strcmp.exit224.thread.i.i ], [ %.3168258.i.i, %bb.vc ], [ %i.ech, %bb.ut ], [ %i.een, %bb.ve ], [ %.6171271.i.i, %bb.vn ] ; 2 uses
  %i.egq = add nuw nsw i32 %.0157345.i.i, 1       ; 2 uses
  %exitcond383.not.i.i = icmp eq i32 %i.egq, %i.ebg
  br i1 %exitcond383.not.i.i, label %cgltf_parse_json_string.exit.thread305.i.i, label %.lr.ph346.i.i

cgltf_json_strcmp.exit208.thread.i.i:             ; preds = %cgltf_json_strcmp.exit208.i.i, %cgltf_json_strcmp.exit203.i.i586, %cgltf_json_strcmp.exit191.i.i593, %cgltf_json_strcmp.exit.i.i597, %bb.tw
  %i.egr = add nuw nsw i32 %.0165349.i.i, 1
  %i.egs = add nsw i32 %.0165349.i.i, 2
  %i.egt = sext i32 %i.egr to i64
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vr, %cgltf_json_strcmp.exit208.thread.i.i
  %indvars.iv.i239.i.i = phi i64 [ %i.egt, %cgltf_json_strcmp.exit208.thread.i.i ], [ %indvars.iv.next.i242.i.i, %bb.vr ] ; 2 uses
  %.016.i240.i.i = phi i32 [ %i.egs, %cgltf_json_strcmp.exit208.thread.i.i ], [ %.1.i241.i.i, %bb.vr ] ; 4 uses
  %i.egu = getelementptr inbounds [32 x i8], ptr %1, i64 %indvars.iv.i239.i.i ; 3 uses
  %i.egv = load i32, ptr %i.egu, align 8
  switch i32 %i.egv, label %cgltf_parse_json_asset.exit.thread [
    i32 1, label %bb.vp
    i32 2, label %bb.vq
    i32 4, label %bb.vr
    i32 3, label %bb.vr
  ]

bb.vp:                                            ; preds = %bb.vo
  %i.egw = getelementptr inbounds nuw i8, ptr %i.egu, i64 24
  %i.egx = load i32, ptr %i.egw, align 8
  %i.egy = shl nsw i32 %i.egx, 1
  %i.egz = add nsw i32 %i.egy, %.016.i240.i.i
  br label %bb.vr

bb.vq:                                            ; preds = %bb.vo
  %i.eha = getelementptr inbounds nuw i8, ptr %i.egu, i64 24
  %i.ehb = load i32, ptr %i.eha, align 8
  %i.ehc = add nsw i32 %i.ehb, %.016.i240.i.i
  br label %bb.vr

bb.vr:                                            ; preds = %bb.vq, %bb.vp, %bb.vo, %bb.vo
  %.1.i241.i.i = phi i32 [ %i.egz, %bb.vp ], [ %i.ehc, %bb.vq ], [ %.016.i240.i.i, %bb.vo ], [ %.016.i240.i.i, %bb.vo ] ; 2 uses
  %indvars.iv.next.i242.i.i = add nsw i64 %indvars.iv.i239.i.i, 1 ; 3 uses
  %i.ehd = sext i32 %.1.i241.i.i to i64
  %i.ehe = icmp slt i64 %indvars.iv.next.i242.i.i, %i.ehd
  br i1 %i.ehe, label %bb.vo, label %cgltf_parse_json_string.exit.i.i574

cgltf_parse_json_string.exit.i.i574:              ; preds = %bb.ul, %bb.vr
  %.11.in.i.i = phi i64 [ %indvars.iv.next.i242.i.i, %bb.vr ], [ %indvars.iv.next.i.i.i.i591, %bb.ul ]
  %.11.i.i = trunc i64 %.11.in.i.i to i32         ; 3 uses
  %i.ehf = icmp slt i32 %.11.i.i, 0
  br i1 %i.ehf, label %cgltf_parse_json_asset.exit.thread, label %cgltf_parse_json_string.exit.thread305.i.i

cgltf_parse_json_string.exit.thread305.i.i:       ; preds = %.thread287.i.i, %cgltf_parse_json_string.exit.i.i574, %cgltf_calloc.exit.i.i577, %cgltf_json_to_int.exit200.i.i, %cgltf_json_to_int.exit.i.i595, %bb.ua
  %.11308.i.i = phi i32 [ %.11.i.i, %cgltf_parse_json_string.exit.i.i574 ], [ %i.dyc, %bb.ua ], [ %i.dzq, %cgltf_json_to_int.exit200.i.i ], [ %i.dyw, %cgltf_json_to_int.exit.i.i595 ], [ %i.ebh, %cgltf_calloc.exit.i.i577 ], [ %.8173290.i.i, %.thread287.i.i ] ; 4 uses
  %i.ehg = add nuw nsw i32 %.0159350.i.i, 1       ; 2 uses
  %exitcond384.not.i.i = icmp eq i32 %i.ehg, %i.dwh
  br i1 %exitcond384.not.i.i, label %cgltf_parse_json_texture.exit.i, label %bb.tu

cgltf_parse_json_texture.exit.i:                  ; preds = %cgltf_parse_json_string.exit.thread305.i.i
  %i.ehh = icmp slt i32 %.11308.i.i, 0
  br i1 %i.ehh, label %cgltf_parse_json_asset.exit.thread, label %cgltf_parse_json_texture.exit.cgltf_parse_json_texture.exit.thread33_crit_edge.i

cgltf_parse_json_texture.exit.cgltf_parse_json_texture.exit.thread33_crit_edge.i: ; preds = %cgltf_parse_json_texture.exit.i
  %.pre.i575 = load i64, ptr %i.bw, align 8
  br label %cgltf_parse_json_texture.exit.thread33.i

cgltf_parse_json_texture.exit.thread33.i:         ; preds = %cgltf_parse_json_texture.exit.cgltf_parse_json_texture.exit.thread33_crit_edge.i, %bb.tt
  %i.ehi = phi i64 [ %.pre.i575, %cgltf_parse_json_texture.exit.cgltf_parse_json_texture.exit.thread33_crit_edge.i ], [ %i.dwa, %bb.tt ] ; 2 uses
  %.10.i35.i = phi i32 [ %.11308.i.i, %cgltf_parse_json_texture.exit.cgltf_parse_json_texture.exit.thread33_crit_edge.i ], [ %i.dwi, %bb.tt ] ; 2 uses
  %i.ehj = add nuw i64 %.02160.i, 1               ; 2 uses
  %i.ehk = icmp ult i64 %i.ehj, %i.ehi
  br i1 %i.ehk, label %.lr.ph.i572, label %cgltf_parse_json_asset.exit

cgltf_json_strcmp.exit603:                        ; preds = %cgltf_json_strcmp.exit564
  %i.ehl = getelementptr inbounds i8, ptr %2, i64 %i.db
  %i.ehm = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ehl, ptr noundef nonnull dereferenceable(9) @.str.129, i64 noundef 8) #51
  %i.ehn = icmp eq i32 %i.ehm, 0
  br i1 %i.ehn, label %bb.vs, label %cgltf_json_strcmp.exit703.thread

bb.vs:                                            ; preds = %cgltf_json_strcmp.exit603
  %i.eho = zext nneg i32 %.02741181 to i64
  %i.ehp = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.eho ; 2 uses
  %i.ehq = getelementptr inbounds nuw i8, ptr %i.ehp, i64 32
  %i.ehr = load i32, ptr %i.ehq, align 8          ; 2 uses
  %.not.i.i604 = icmp eq i32 %i.ehr, 2
  br i1 %.not.i.i604, label %bb.vu, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.ehs = icmp eq i32 %i.ehr, 1
  %i.eht = select i1 %i.ehs, i32 -3, i32 -1
  br label %cgltf_parse_json_asset.exit.thread

bb.vu:                                            ; preds = %bb.vs
  %i.ehu = load ptr, ptr %i.bt, align 8
  %.not18.i.i606 = icmp eq ptr %i.ehu, null
  br i1 %.not18.i.i606, label %bb.vv, label %cgltf_parse_json_asset.exit.thread

bb.vv:                                            ; preds = %bb.vu
  %i.ehv = getelementptr inbounds nuw i8, ptr %i.ehp, i64 56
  %i.ehw = load i32, ptr %i.ehv, align 8          ; 3 uses
  %i.ehx = sext i32 %i.ehw to i64                 ; 2 uses
  %mul.ov.i.i.i607 = icmp slt i32 %i.ehw, 0
  br i1 %mul.ov.i.i.i607, label %cgltf_parse_json_asset.exit.thread, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.ehy = load ptr, ptr %i.bn, align 8
  %i.ehz = load ptr, ptr %i.bo, align 8
  %i.eia = shl nuw nsw i64 %i.ehx, 6              ; 2 uses
  %i.eib = call ptr %i.ehy(ptr noundef %i.ehz, i64 noundef %i.eia) #54, !inline_history !249 ; 3 uses
  %.not.i.i.i608 = icmp eq ptr %i.eib, null
  br i1 %.not.i.i.i608, label %cgltf_parse_json_asset.exit.thread, label %cgltf_parse_json_array.exit.i609

cgltf_parse_json_array.exit.i609:                 ; preds = %bb.vw
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eib, i8 0, i64 %i.eia, i1 false)
  store ptr %i.eib, ptr %i.bt, align 8
  store i64 %i.ehx, ptr %i.bu, align 8
  %i.eic = add nuw nsw i32 %.02741181, 2          ; 2 uses
  %.not.i610 = icmp eq i32 %i.ehw, 0
  br i1 %.not.i610, label %cgltf_parse_json_asset.exit.thread747, label %.lr.ph.i611

.lr.ph.i611:                                      ; preds = %cgltf_parse_json_array.exit.i609, %cgltf_parse_json_sampler.exit.thread32.i
  %.02149.i612 = phi i64 [ %i.epl, %cgltf_parse_json_sampler.exit.thread32.i ], [ 0, %cgltf_parse_json_array.exit.i609 ] ; 2 uses
  %.02348.i613 = phi i32 [ %.2.i34.i615, %cgltf_parse_json_sampler.exit.thread32.i ], [ %i.eic, %cgltf_parse_json_array.exit.i609 ] ; 2 uses
  %i.eid = load ptr, ptr %i.bt, align 8
  %i.eie = getelementptr inbounds nuw [64 x i8], ptr %i.eid, i64 %.02149.i612 ; 11 uses
  %i.eif = zext nneg i32 %.02348.i613 to i64
  %i.eig = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.eif ; 2 uses
  %i.eih = load i32, ptr %i.eig, align 8
  %.not.i29.i614 = icmp eq i32 %i.eih, 1
  br i1 %.not.i29.i614, label %bb.vx, label %cgltf_parse_json_asset.exit.thread

bb.vx:                                            ; preds = %.lr.ph.i611
  %i.eii = getelementptr inbounds nuw i8, ptr %i.eie, i64 16 ; 2 uses
  store i32 10497, ptr %i.eii, align 8
  %i.eij = getelementptr inbounds nuw i8, ptr %i.eie, i64 20 ; 2 uses
  store i32 10497, ptr %i.eij, align 4
  %i.eik = getelementptr inbounds nuw i8, ptr %i.eig, i64 24
  %i.eil = load i32, ptr %i.eik, align 8          ; 2 uses
  %i.eim = add nuw nsw i32 %.02348.i613, 1        ; 2 uses
  %.not87143.i.i = icmp sgt i32 %i.eil, 0
  br i1 %.not87143.i.i, label %.lr.ph.i.i616, label %cgltf_parse_json_sampler.exit.thread32.i

.lr.ph.i.i616:                                    ; preds = %bb.vx
  %i.ein = getelementptr inbounds nuw i8, ptr %i.eie, i64 48 ; 3 uses
  %i.eio = getelementptr inbounds nuw i8, ptr %i.eie, i64 56 ; 4 uses
  %i.eip = getelementptr inbounds nuw i8, ptr %i.eie, i64 40 ; 3 uses
  %i.eiq = getelementptr inbounds nuw i8, ptr %i.eie, i64 24
  %i.eir = getelementptr inbounds nuw i8, ptr %i.eie, i64 32
  %i.eis = getelementptr inbounds nuw i8, ptr %i.eie, i64 12
  %i.eit = getelementptr inbounds nuw i8, ptr %i.eie, i64 8
  br label %bb.vy

bb.vy:                                            ; preds = %cgltf_parse_json_string.exit.thread135.i.i, %.lr.ph.i.i616
  %.081145.i.i = phi i32 [ 0, %.lr.ph.i.i616 ], [ %i.epk, %cgltf_parse_json_string.exit.thread135.i.i ]
  %.083144.i.i = phi i32 [ %i.eim, %.lr.ph.i.i616 ], [ %.184137.i.i, %cgltf_parse_json_string.exit.thread135.i.i ] ; 11 uses
  %i.eiu = zext nneg i32 %.083144.i.i to i64
  %i.eiv = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.eiu ; 21 uses
  %i.eiw = load i32, ptr %i.eiv, align 8
  %.not86.i.i = icmp eq i32 %i.eiw, 3
  br i1 %.not86.i.i, label %bb.vz, label %cgltf_parse_json_asset.exit.thread

bb.vz:                                            ; preds = %bb.vy
  %i.eix = getelementptr inbounds nuw i8, ptr %i.eiv, i64 24
  %i.eiy = load i32, ptr %i.eix, align 8
  %i.eiz = icmp eq i32 %i.eiy, 0
  br i1 %i.eiz, label %cgltf_parse_json_asset.exit.thread, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.eja = getelementptr inbounds nuw i8, ptr %i.eiv, i64 16
  %i.ejb = load i64, ptr %i.eja, align 8
  %i.ejc = getelementptr inbounds nuw i8, ptr %i.eiv, i64 8
  %i.ejd = load i64, ptr %i.ejc, align 8          ; 6 uses
  %i.eje = sub nsw i64 %i.ejb, %i.ejd
  switch i64 %i.eje, label %cgltf_json_strcmp.exit122.thread.i.i [
    i64 4, label %cgltf_json_strcmp.exit.i.i642
    i64 9, label %cgltf_json_strcmp.exit91.i.i
    i64 5, label %cgltf_json_strcmp.exit103.i.i
    i64 6, label %cgltf_json_strcmp.exit117.i.i
    i64 10, label %cgltf_json_strcmp.exit122.i.i
  ]

cgltf_json_strcmp.exit.i.i642:                    ; preds = %bb.wa
  %i.ejf = getelementptr inbounds i8, ptr %2, i64 %i.ejd
  %i.ejg = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ejf, ptr noundef nonnull dereferenceable(5) @.str.148, i64 noundef 4) #51
end_hunk_4
begin_hunk_5_@cgltf_parse_json_nodes:bb.a
  %i.qe = sext i32 %.1.i.i49 to i64
  %i.qf = icmp slt i64 %indvars.iv.next.i.i50, %i.qe
  br i1 %i.qf, label %bb.ao, label %.split.loop.exit.i.i51

.split.loop.exit.i.i51:                           ; preds = %bb.ar
  %i.qg = trunc nuw nsw i64 %indvars.iv.next.i.i50 to i32
  br label %cgltf_parse_json_string.exit.i

cgltf_json_strcmp.exit43:                         ; preds = %bb.i
  %i.qh = getelementptr inbounds i8, ptr %3, i64 %i.cb
  %i.qi = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.qh, ptr noundef nonnull dereferenceable(11) @.str.137, i64 noundef 10) #51
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %bb.as, label %cgltf_json_strcmp.exit43.thread

bb.as:                                            ; preds = %cgltf_json_strcmp.exit43
  %i.qk = sext i32 %.0230457.i to i64
  %i.ql = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.qk ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %i.qn = load i32, ptr %i.qm, align 8
  %.not245.i = icmp eq i32 %i.qn, 1
  br i1 %.not245.i, label %bb.at, label %cgltf_parse_json_array.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.qo = load ptr, ptr %i.at, align 8
  %.not246.i = icmp eq ptr %i.qo, null
  br i1 %.not246.i, label %bb.au, label %cgltf_parse_json_array.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ql, i64 56
  %i.qq = load i32, ptr %i.qp, align 8            ; 4 uses
  store i64 0, ptr %i.au, align 8
  %mul.ov.i.i30 = icmp slt i32 %i.qq, 0
  br i1 %mul.ov.i.i30, label %.thread402.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = load ptr, ptr %i.v, align 8
  %i.qt = load ptr, ptr %i.x, align 8
  %i.qu = shl nuw nsw i64 %i.qr, 4                ; 2 uses
  %i.qv = call ptr %i.qs(ptr noundef %i.qt, i64 noundef %i.qu) #54, !inline_history !263 ; 3 uses
  %.not.i352.i = icmp eq ptr %i.qv, null
  br i1 %.not.i352.i, label %.thread402.i, label %bb.aw

.thread402.i:                                     ; preds = %bb.av, %bb.au
  store ptr null, ptr %i.at, align 8
  br label %cgltf_parse_json_array.exit.thread

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.qv, i8 0, i64 %i.qu, i1 false)
  store ptr %i.qv, ptr %i.at, align 8
  %i.qw = add nuw nsw i32 %.0230457.i, 2          ; 2 uses
  %.not506.i = icmp eq i32 %i.qq, 0
  br i1 %.not506.i, label %cgltf_parse_json_string.exit.thread415.i, label %.lr.ph450.i

.lr.ph450.i:                                      ; preds = %bb.aw, %.thread397.i
  %.0222449.i = phi i32 [ %i.vm, %.thread397.i ], [ 0, %bb.aw ]
  %.2232448.i = phi i32 [ %.6236400.i, %.thread397.i ], [ %i.qw, %bb.aw ] ; 6 uses
  %i.qx = zext nneg i32 %.2232448.i to i64
  %i.qy = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.qx ; 4 uses
  %i.qz = load i32, ptr %i.qy, align 8
  %.not248.i = icmp eq i32 %i.qz, 3
  br i1 %.not248.i, label %bb.ax, label %cgltf_parse_json_array.exit.thread

bb.ax:                                            ; preds = %.lr.ph450.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.rb = load i32, ptr %i.ra, align 8
  %i.rc = icmp eq i32 %i.rb, 0
  br i1 %i.rc, label %cgltf_parse_json_array.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %i.re = load i64, ptr %i.rd, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.rg = load i64, ptr %i.rf, align 8            ; 3 uses
  %i.rh = sub nsw i64 %i.re, %i.rg
  switch i64 %i.rh, label %cgltf_json_strcmp.exit.thread [
    i64 19, label %cgltf_json_strcmp.exit356.i
    i64 23, label %cgltf_json_strcmp.exit
  ]

cgltf_json_strcmp.exit356.i:                      ; preds = %bb.ay
  %i.ri = getelementptr inbounds i8, ptr %3, i64 %i.rg
  %i.rj = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ri, ptr noundef nonnull dereferenceable(20) @.str.138, i64 noundef 19) #51
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %bb.az, label %cgltf_json_strcmp.exit.thread

bb.az:                                            ; preds = %cgltf_json_strcmp.exit356.i
  %i.rl = sext i32 %.2232448.i to i64
  %i.rm = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.rl ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 32
  %i.ro = load i32, ptr %i.rn, align 8
  %.not249.i = icmp eq i32 %i.ro, 1
  br i1 %.not249.i, label %bb.ba, label %cgltf_parse_json_array.exit.thread

bb.ba:                                            ; preds = %bb.az
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 56
  %i.rq = load i32, ptr %i.rp, align 8            ; 2 uses
  %i.rr = add nuw nsw i32 %.2232448.i, 2          ; 2 uses
  %.not252445.i = icmp sgt i32 %i.rq, 0
  br i1 %.not252445.i, label %.lr.ph.i, label %.thread397.i

.lr.ph.i:                                         ; preds = %bb.ba, %bb.bi
  %.0447.i = phi i32 [ %i.tn, %bb.bi ], [ 0, %bb.ba ]
  %.3233446.i = phi i32 [ %.4234386.i, %bb.bi ], [ %i.rr, %bb.ba ] ; 5 uses
  %i.rs = zext nneg i32 %.3233446.i to i64
  %i.rt = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.rs ; 4 uses
  %i.ru = load i32, ptr %i.rt, align 8
  %.not250.i = icmp eq i32 %i.ru, 3
  br i1 %.not250.i, label %bb.bb, label %cgltf_parse_json_array.exit.thread

bb.bb:                                            ; preds = %.lr.ph.i
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  %i.rw = load i32, ptr %i.rv, align 8
  %i.rx = icmp eq i32 %i.rw, 0
  br i1 %i.rx, label %cgltf_parse_json_array.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.rz = load i64, ptr %i.ry, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.sb = load i64, ptr %i.sa, align 8            ; 2 uses
  %i.sc = sub nsw i64 %i.rz, %i.sb
  %i.sd = icmp eq i64 %i.sc, 5
  br i1 %i.sd, label %cgltf_json_strcmp.exit359.i, label %cgltf_json_strcmp.exit359.thread.i

cgltf_json_strcmp.exit359.i:                      ; preds = %bb.bc
  %i.se = getelementptr inbounds i8, ptr %3, i64 %i.sb
  %i.sf = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.se, ptr noundef nonnull dereferenceable(6) @.str.300, i64 noundef 5) #51
  %i.sg = icmp eq i32 %i.sf, 0
  br i1 %i.sg, label %bb.bd, label %cgltf_json_strcmp.exit359.thread.i

bb.bd:                                            ; preds = %cgltf_json_strcmp.exit359.i
  %i.sh = sext i32 %.3233446.i to i64
  %i.si = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.sh ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 32
  %i.sk = load i32, ptr %i.sj, align 8
  %.not251.i = icmp eq i32 %i.sk, 4
  br i1 %.not251.i, label %cgltf_skip_json.exit.thread384.i, label %cgltf_parse_json_array.exit.thread

cgltf_skip_json.exit.thread384.i:                 ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 48
  %i.sm = load i64, ptr %i.sl, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.si, i64 40
  %i.so = load i64, ptr %i.sn, align 8            ; 2 uses
  %i.sp = sub nsw i64 %i.sm, %i.so
  %spec.select.i362.i = call i64 @llvm.umin.i64(i64 %i.sp, i64 127) ; 2 uses
  %i.sq = getelementptr inbounds i8, ptr %3, i64 %i.so
  %i.sr = call ptr @strncpy(ptr noundef nonnull %i.b, ptr noundef readonly %i.sq, i64 noundef %spec.select.i362.i) #54 ; 0 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.i362.i
  store i8 0, ptr %i.ss, align 1
  %i.st = call i64 @strtol(ptr noundef nonnull captures(none) %i.b, ptr noundef null, i32 noundef 10) #54, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  %sext.i = shl i64 %i.st, 32
  %i.su = ashr exact i64 %sext.i, 32
  %i.sv = add nsw i64 %i.su, 1
  %i.sw = inttoptr i64 %i.sv to ptr
  store ptr %i.sw, ptr %i.ax, align 8
  %i.sx = add nuw nsw i32 %.3233446.i, 2
  br label %bb.bi

cgltf_json_strcmp.exit359.thread.i:               ; preds = %cgltf_json_strcmp.exit359.i, %bb.bc
  %i.sy = add nuw nsw i32 %.3233446.i, 1
  %i.sz = add nuw nsw i32 %.3233446.i, 2
  %i.ta = zext nneg i32 %i.sy to i64
  br label %bb.be

bb.be:                                            ; preds = %bb.bh, %cgltf_json_strcmp.exit359.thread.i
  %indvars.iv.i364.i = phi i64 [ %i.ta, %cgltf_json_strcmp.exit359.thread.i ], [ %indvars.iv.next.i366.i, %bb.bh ] ; 2 uses
  %.016.i.i = phi i32 [ %i.sz, %cgltf_json_strcmp.exit359.thread.i ], [ %.1.i365.i, %bb.bh ] ; 4 uses
  %i.tb = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i364.i ; 3 uses
  %i.tc = load i32, ptr %i.tb, align 8
  switch i32 %i.tc, label %cgltf_parse_json_array.exit.thread [
    i32 1, label %bb.bf
    i32 2, label %bb.bg
    i32 4, label %bb.bh
    i32 3, label %bb.bh
  ]

bb.bf:                                            ; preds = %bb.be
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.te = load i32, ptr %i.td, align 8
  %i.tf = shl nsw i32 %i.te, 1
  %i.tg = add nsw i32 %i.tf, %.016.i.i
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  %i.ti = load i32, ptr %i.th, align 8
  %i.tj = add nsw i32 %i.ti, %.016.i.i
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %bb.be
  %.1.i365.i = phi i32 [ %i.tg, %bb.bf ], [ %i.tj, %bb.bg ], [ %.016.i.i, %bb.be ], [ %.016.i.i, %bb.be ] ; 2 uses
  %indvars.iv.next.i366.i = add nuw nsw i64 %indvars.iv.i364.i, 1 ; 3 uses
  %i.tk = sext i32 %.1.i365.i to i64
  %i.tl = icmp slt i64 %indvars.iv.next.i366.i, %i.tk
  br i1 %i.tl, label %bb.be, label %cgltf_skip_json.exit.i

cgltf_skip_json.exit.i:                           ; preds = %bb.bh
  %i.tm = trunc nuw nsw i64 %indvars.iv.next.i366.i to i32
  br label %bb.bi

bb.bi:                                            ; preds = %cgltf_skip_json.exit.i, %cgltf_skip_json.exit.thread384.i
  %.4234386.i = phi i32 [ %i.sx, %cgltf_skip_json.exit.thread384.i ], [ %i.tm, %cgltf_skip_json.exit.i ] ; 2 uses
  %i.tn = add nuw nsw i32 %.0447.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.tn, %i.rq
  br i1 %exitcond.not.i, label %.thread397.i, label %.lr.ph.i

cgltf_json_strcmp.exit:                           ; preds = %bb.ay
  %i.to = getelementptr inbounds i8, ptr %3, i64 %i.rg
  %i.tp = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.to, ptr noundef nonnull dereferenceable(24) @.str.301, i64 noundef 23) #51
  %i.tq = icmp eq i32 %i.tp, 0
  br i1 %i.tq, label %bb.bj, label %cgltf_json_strcmp.exit.thread

bb.bj:                                            ; preds = %cgltf_json_strcmp.exit
  store i32 1, ptr %i.av, align 8
  %i.tr = sext i32 %.2232448.i to i64
  %i.ts = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.tr ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 32
  %i.tu = load i32, ptr %i.tt, align 8
  %.not.i34 = icmp eq i32 %i.tu, 1
  br i1 %.not.i34, label %bb.bk, label %cgltf_parse_json_array.exit.thread

bb.bk:                                            ; preds = %bb.bj
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 56
  %i.tw = load i32, ptr %i.tv, align 8            ; 2 uses
  %i.tx = add nuw nsw i32 %.2232448.i, 2          ; 2 uses
  %.not3337.i = icmp sgt i32 %i.tw, 0
  br i1 %.not3337.i, label %.lr.ph.i35, label %cgltf_parse_json_mesh_gpu_instancing.exit

.lr.ph.i35:                                       ; preds = %bb.bk, %cgltf_skip_json.exit.i37
  %.02739.i = phi i32 [ %i.vf, %cgltf_skip_json.exit.i37 ], [ 0, %bb.bk ]
  %.02938.i = phi i32 [ %.130.i, %cgltf_skip_json.exit.i37 ], [ %i.tx, %bb.bk ] ; 4 uses
  %i.ty = zext nneg i32 %.02938.i to i64
  %i.tz = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ty ; 4 uses
  %i.ua = load i32, ptr %i.tz, align 8
  %.not32.i = icmp eq i32 %i.ua, 3
  br i1 %.not32.i, label %bb.bl, label %cgltf_parse_json_array.exit.thread

bb.bl:                                            ; preds = %.lr.ph.i35
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 24
  %i.uc = load i32, ptr %i.ub, align 8
  %i.ud = icmp eq i32 %i.uc, 0
  br i1 %i.ud, label %cgltf_parse_json_array.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tz, i64 16
  %i.uf = load i64, ptr %i.ue, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.uh = load i64, ptr %i.ug, align 8            ; 2 uses
  %i.ui = sub nsw i64 %i.uf, %i.uh
  %i.uj = icmp eq i64 %i.ui, 10
  br i1 %i.uj, label %cgltf_json_strcmp.exit.i39, label %cgltf_json_strcmp.exit.thread.i

cgltf_json_strcmp.exit.i39:                       ; preds = %bb.bm
  %i.uk = getelementptr inbounds i8, ptr %3, i64 %i.uh
  %i.ul = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.uk, ptr noundef nonnull dereferenceable(11) @.str.155, i64 noundef 10) #51
  %i.um = icmp eq i32 %i.ul, 0
  br i1 %i.um, label %bb.bn, label %cgltf_json_strcmp.exit.thread.i

bb.bn:                                            ; preds = %cgltf_json_strcmp.exit.i39
  %i.un = add nuw nsw i32 %.02938.i, 1
  %i.uo = call fastcc i32 @cgltf_parse_json_attribute_list(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %i.un, ptr noundef nonnull readonly %3, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.br)
  br label %cgltf_skip_json.exit.i37

cgltf_json_strcmp.exit.thread.i:                  ; preds = %cgltf_json_strcmp.exit.i39, %bb.bm
  %i.up = add nuw nsw i32 %.02938.i, 1
  %i.uq = add nuw nsw i32 %.02938.i, 2
  %i.ur = zext nneg i32 %i.up to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.br, %cgltf_json_strcmp.exit.thread.i
  %indvars.iv.i.i = phi i64 [ %i.ur, %cgltf_json_strcmp.exit.thread.i ], [ %indvars.iv.next.i.i, %bb.br ] ; 2 uses
  %.016.i.i36 = phi i32 [ %i.uq, %cgltf_json_strcmp.exit.thread.i ], [ %.1.i.i, %bb.br ] ; 4 uses
  %i.us = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i.i ; 3 uses
  %i.ut = load i32, ptr %i.us, align 8
  switch i32 %i.ut, label %cgltf_parse_json_array.exit.thread [
    i32 1, label %bb.bp
    i32 2, label %bb.bq
    i32 4, label %bb.br
    i32 3, label %bb.br
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 24
  %i.uv = load i32, ptr %i.uu, align 8
  %i.uw = shl nsw i32 %i.uv, 1
  %i.ux = add nsw i32 %i.uw, %.016.i.i36
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.uy = getelementptr inbounds nuw i8, ptr %i.us, i64 24
  %i.uz = load i32, ptr %i.uy, align 8
  %i.va = add nsw i32 %i.uz, %.016.i.i36
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bo
  %.1.i.i = phi i32 [ %i.ux, %bb.bp ], [ %i.va, %bb.bq ], [ %.016.i.i36, %bb.bo ], [ %.016.i.i36, %bb.bo ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.vb = sext i32 %.1.i.i to i64
  %i.vc = icmp slt i64 %indvars.iv.next.i.i, %i.vb
  br i1 %i.vc, label %bb.bo, label %.split.loop.exit.i.i

.split.loop.exit.i.i:                             ; preds = %bb.br
  %i.vd = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %cgltf_skip_json.exit.i37

cgltf_skip_json.exit.i37:                         ; preds = %.split.loop.exit.i.i, %bb.bn
  %.130.i = phi i32 [ %i.uo, %bb.bn ], [ %i.vd, %.split.loop.exit.i.i ] ; 3 uses
  %i.ve = icmp slt i32 %.130.i, 0
  %i.vf = add nuw nsw i32 %.02739.i, 1            ; 2 uses
  %exitcond.not.i38 = icmp eq i32 %i.vf, %i.tw
  %or.cond.i = select i1 %i.ve, i1 true, i1 %exitcond.not.i38
  br i1 %or.cond.i, label %cgltf_parse_json_mesh_gpu_instancing.exit, label %.lr.ph.i35

cgltf_json_strcmp.exit.thread:                    ; preds = %cgltf_json_strcmp.exit356.i, %bb.ay, %cgltf_json_strcmp.exit
  %i.vg = load ptr, ptr %i.at, align 8
  %i.vh = load i64, ptr %i.au, align 8            ; 2 uses
  %i.vi = add i64 %i.vh, 1
  store i64 %i.vi, ptr %i.au, align 8
  %i.vj = getelementptr inbounds nuw [16 x i8], ptr %i.vg, i64 %i.vh
  %i.vk = call fastcc i32 @cgltf_parse_json_unprocessed_extension(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %.2232448.i, ptr noundef readonly %3, ptr noundef %i.vj)
  br label %cgltf_parse_json_mesh_gpu_instancing.exit

cgltf_parse_json_mesh_gpu_instancing.exit:        ; preds = %cgltf_skip_json.exit.i37, %bb.bk, %cgltf_json_strcmp.exit.thread
  %.6236.i = phi i32 [ %i.vk, %cgltf_json_strcmp.exit.thread ], [ %i.tx, %bb.bk ], [ %.130.i, %cgltf_skip_json.exit.i37 ] ; 3 uses
  %i.vl = icmp slt i32 %.6236.i, 0
  br i1 %i.vl, label %cgltf_parse_json_array.exit.thread, label %.thread397.i

.thread397.i:                                     ; preds = %bb.bi, %cgltf_parse_json_mesh_gpu_instancing.exit, %bb.ba
  %.6236400.i = phi i32 [ %.6236.i, %cgltf_parse_json_mesh_gpu_instancing.exit ], [ %i.rr, %bb.ba ], [ %.4234386.i, %bb.bi ] ; 2 uses
  %i.vm = add nuw nsw i32 %.0222449.i, 1          ; 2 uses
  %exitcond521.not.i = icmp eq i32 %i.vm, %i.qq
  br i1 %exitcond521.not.i, label %cgltf_parse_json_string.exit.thread415.i, label %.lr.ph450.i

cgltf_json_strcmp.exit43.thread:                  ; preds = %cgltf_json_strcmp.exit351.i, %cgltf_json_strcmp.exit288.i, %cgltf_json_strcmp.exit274.i, %cgltf_json_strcmp.exit348.i, %cgltf_json_strcmp.exit294.i, %cgltf_json_strcmp.exit312.i, %bb.i, %cgltf_json_strcmp.exit43
  %i.vn = add nuw nsw i32 %.0230457.i, 1
  %i.vo = add nsw i32 %.0230457.i, 2
  %i.vp = sext i32 %i.vn to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bv, %cgltf_json_strcmp.exit43.thread
  %indvars.iv.i31 = phi i64 [ %i.vp, %cgltf_json_strcmp.exit43.thread ], [ %indvars.iv.next.i33, %bb.bv ] ; 2 uses
  %.016.i = phi i32 [ %i.vo, %cgltf_json_strcmp.exit43.thread ], [ %.1.i32, %bb.bv ] ; 4 uses
  %i.vq = getelementptr inbounds [32 x i8], ptr %1, i64 %indvars.iv.i31 ; 3 uses
  %i.vr = load i32, ptr %i.vq, align 8
  switch i32 %i.vr, label %cgltf_parse_json_array.exit.thread [
    i32 1, label %bb.bt
    i32 2, label %bb.bu
    i32 4, label %bb.bv
    i32 3, label %bb.bv
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vq, i64 24
  %i.vt = load i32, ptr %i.vs, align 8
  %i.vu = shl nsw i32 %i.vt, 1
  %i.vv = add nsw i32 %i.vu, %.016.i
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vq, i64 24
  %i.vx = load i32, ptr %i.vw, align 8
  %i.vy = add nsw i32 %i.vx, %.016.i
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bs, %bb.bs
  %.1.i32 = phi i32 [ %i.vv, %bb.bt ], [ %i.vy, %bb.bu ], [ %.016.i, %bb.bs ], [ %.016.i, %bb.bs ] ; 2 uses
  %indvars.iv.next.i33 = add nsw i64 %indvars.iv.i31, 1 ; 3 uses
  %i.vz = sext i32 %.1.i32 to i64
  %i.wa = icmp slt i64 %indvars.iv.next.i33, %i.vz
  br i1 %i.wa, label %bb.bs, label %.split.loop.exit.i

.split.loop.exit.i:                               ; preds = %bb.bv
  %i.wb = trunc nsw i64 %indvars.iv.next.i33 to i32
  br label %cgltf_parse_json_string.exit.i

cgltf_parse_json_string.exit.loopexit.i:          ; preds = %cgltf_json_to_int.exit.i
  %i.wc = trunc nuw i64 %indvars.iv.next.i to i32
  br label %cgltf_parse_json_string.exit.i

cgltf_parse_json_string.exit.i:                   ; preds = %cgltf_json_to_float.exit.i, %cgltf_json_to_float.exit.i340.i, %.split.loop.exit.i, %.split.loop.exit.i.i51, %cgltf_parse_json_string.exit.loopexit.i, %cgltf_json_to_float.exit.i322.2.i, %cgltf_json_to_float.exit.i304.3.i, %cgltf_json_to_float.exit.i.2.i, %cgltf_parse_json_array.exit.i
  %.9239.i = phi i32 [ %i.le, %cgltf_json_to_float.exit.i322.2.i ], [ %i.wb, %.split.loop.exit.i ], [ %i.wc, %cgltf_parse_json_string.exit.loopexit.i ], [ %i.qg, %.split.loop.exit.i.i51 ], [ %i.my, %cgltf_json_to_float.exit.i340.i ], [ %i.hd, %cgltf_json_to_float.exit.i.2.i ], [ %i.ix, %cgltf_json_to_float.exit.i304.3.i ], [ %i.ds, %cgltf_parse_json_array.exit.i ], [ %i.om, %cgltf_json_to_float.exit.i ] ; 3 uses
  %i.wd = icmp slt i32 %.9239.i, 0
  br i1 %i.wd, label %cgltf_parse_json_array.exit.thread, label %cgltf_parse_json_string.exit.thread415.i

cgltf_parse_json_string.exit.thread415.i:         ; preds = %.thread397.i, %.preheader.i, %cgltf_parse_json_string.exit.i, %bb.aw, %cgltf_json_to_int.exit285.i, %cgltf_json_to_int.exit278.i, %cgltf_json_to_int.exit271.i, %bb.m
  %.9239418.i = phi i32 [ %.9239.i, %cgltf_parse_json_string.exit.i ], [ %i.da, %bb.m ], [ %i.ff, %cgltf_json_to_int.exit271.i ], [ %i.gs, %cgltf_json_to_int.exit285.i ], [ %i.fy, %cgltf_json_to_int.exit278.i ], [ %i.qw, %bb.aw ], [ %i.od, %.preheader.i ], [ %.6236400.i, %.thread397.i ] ; 4 uses
  %i.we = add nuw nsw i32 %.0225458.i, 1          ; 2 uses
  %exitcond523.not.i = icmp eq i32 %i.we, %i.ar
  br i1 %exitcond523.not.i, label %cgltf_parse_json_node.exit, label %bb.g

cgltf_parse_json_node.exit:                       ; preds = %cgltf_parse_json_string.exit.thread415.i
  %i.wf = icmp slt i32 %.9239418.i, 0
  br i1 %i.wf, label %cgltf_parse_json_array.exit.thread, label %cgltf_parse_json_node.exit.thread78

cgltf_parse_json_node.exit.thread78:              ; preds = %bb.f, %cgltf_parse_json_node.exit
  %.9.i80 = phi i32 [ %.9239418.i, %cgltf_parse_json_node.exit ], [ %i.as, %bb.f ] ; 2 uses
  %i.wg = add nuw i64 %.021113, 1                 ; 2 uses
  %i.wh = load i64, ptr %i.l, align 8
end_hunk_5
begin_hunk_6_@cgltf_parse_json_lights:bb.a
  %.sink.i = phi i32 [ 1, %cgltf_json_strcmp.exit156.i ], [ 2, %cgltf_json_strcmp.exit159.i ], [ 3, %cgltf_json_strcmp.exit162.i ]
  store i32 %.sink.i, ptr %i.ap, align 8
  br label %cgltf_json_strcmp.exit162.thread.i

cgltf_json_strcmp.exit162.thread.i:               ; preds = %cgltf_json_strcmp.exit162.thread.sink.split.i, %cgltf_json_strcmp.exit162.i, %cgltf_json_strcmp.exit159.i, %cgltf_json_strcmp.exit156.i, %bb.s, %bb.r
  %i.fg = add nuw nsw i32 %.0128247.i, 2
  br label %cgltf_parse_json_string.exit.thread231.i

cgltf_json_strcmp.exit165.thread288.i:            ; preds = %cgltf_json_strcmp.exit142.i
  %i.fh = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.bz, ptr noundef nonnull dereferenceable(6) @.str.316, i64 noundef 5) #51
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.t, label %cgltf_json_strcmp.exit192.thread.i

bb.t:                                             ; preds = %cgltf_json_strcmp.exit165.thread288.i
  %i.fj = sext i32 %.0128247.i to i64
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.fj ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.fm = load i32, ptr %i.fl, align 8
  %.not.i166.i = icmp eq i32 %i.fm, 4
  br i1 %.not.i166.i, label %bb.u, label %cgltf_json_to_float.exit169.i

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #54
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fq = load i64, ptr %i.fp, align 8            ; 2 uses
  %i.fr = sub nsw i64 %i.fo, %i.fq
  %spec.select.i168.i = call i64 @llvm.umin.i64(i64 %i.fr, i64 127) ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %3, i64 %i.fq
  %i.ft = call ptr @strncpy(ptr noundef nonnull %i.c, ptr noundef readonly %i.fs, i64 noundef %spec.select.i168.i) #54 ; 0 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 %spec.select.i168.i
  store i8 0, ptr %i.fu, align 1
  %i.fv = call double @strtod(ptr noundef nonnull captures(none) %i.c, ptr noundef null) #54, !inline_history !1
  %i.fw = fptrunc double %i.fv to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #54
  br label %cgltf_json_to_float.exit169.i

cgltf_json_to_float.exit169.i:                    ; preds = %bb.u, %bb.t
  %.0.i167.i = phi float [ %i.fw, %bb.u ], [ -1.000000e+00, %bb.t ]
  store float %.0.i167.i, ptr %i.ao, align 4
  %i.fx = add nuw nsw i32 %.0128247.i, 2
  br label %cgltf_parse_json_string.exit.thread231.i

cgltf_json_strcmp.exit172.i:                      ; preds = %cgltf_json_strcmp.exit153.i
  %i.fy = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(5) @.str.315, i64 noundef 4) #51
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.v, label %cgltf_json_strcmp.exit192.thread.i

bb.v:                                             ; preds = %cgltf_json_strcmp.exit172.i
  %i.ga = sext i32 %.0128247.i to i64
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load i32, ptr %i.gc, align 8
  %.not135.i = icmp eq i32 %i.gd, 1
  br i1 %.not135.i, label %bb.w, label %cgltf_parse_json_array.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 56
  %i.gf = load i32, ptr %i.ge, align 8            ; 2 uses
  %i.gg = add nuw nsw i32 %.0128247.i, 2          ; 2 uses
  %.not137243.i = icmp sgt i32 %i.gf, 0
  br i1 %.not137243.i, label %.lr.ph.i, label %cgltf_parse_json_string.exit.thread231.i

.lr.ph.i:                                         ; preds = %bb.w, %cgltf_skip_json.exit.thread.i
  %.0245.i = phi i32 [ %i.ir, %cgltf_skip_json.exit.thread.i ], [ 0, %bb.w ]
  %.1129244.i = phi i32 [ %.2130217.i, %cgltf_skip_json.exit.thread.i ], [ %i.gg, %bb.w ] ; 7 uses
  %i.gh = zext nneg i32 %.1129244.i to i64
  %i.gi = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.gh ; 4 uses
  %i.gj = load i32, ptr %i.gi, align 8
  %.not136.i = icmp eq i32 %i.gj, 3
  br i1 %.not136.i, label %bb.x, label %cgltf_parse_json_array.exit.thread

bb.x:                                             ; preds = %.lr.ph.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %cgltf_parse_json_array.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.go = load i64, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gq = load i64, ptr %i.gp, align 8            ; 2 uses
  %i.gr = sub nsw i64 %i.go, %i.gq
  %i.gs = icmp eq i64 %i.gr, 14
  br i1 %i.gs, label %cgltf_json_strcmp.exit175.i, label %cgltf_json_strcmp.exit182.thread.i

cgltf_json_strcmp.exit175.i:                      ; preds = %bb.y
  %i.gt = getelementptr inbounds i8, ptr %3, i64 %i.gq ; 2 uses
  %i.gu = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(15) @.str.317, i64 noundef 14) #51
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.z, label %cgltf_json_strcmp.exit182.i

bb.z:                                             ; preds = %cgltf_json_strcmp.exit175.i
  %i.gw = sext i32 %.1129244.i to i64
  %i.gx = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.gw ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load i32, ptr %i.gy, align 8
  %.not.i176.i = icmp eq i32 %i.gz, 4
  br i1 %.not.i176.i, label %bb.aa, label %cgltf_json_to_float.exit179.i

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 40
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = sub nsw i64 %i.hb, %i.hd
  %spec.select.i178.i = call i64 @llvm.umin.i64(i64 %i.he, i64 127) ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %3, i64 %i.hd
  %i.hg = call ptr @strncpy(ptr noundef nonnull %i.b, ptr noundef readonly %i.hf, i64 noundef %spec.select.i178.i) #54 ; 0 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.i178.i
  store i8 0, ptr %i.hh, align 1
  %i.hi = call double @strtod(ptr noundef nonnull captures(none) %i.b, ptr noundef null) #54, !inline_history !1
  %i.hj = fptrunc double %i.hi to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #54
  br label %cgltf_json_to_float.exit179.i

cgltf_json_to_float.exit179.i:                    ; preds = %bb.aa, %bb.z
  %.0.i177.i = phi float [ %i.hj, %bb.aa ], [ -1.000000e+00, %bb.z ]
  store float %.0.i177.i, ptr %i.ag, align 8
  %i.hk = add nuw nsw i32 %.1129244.i, 2
  br label %cgltf_skip_json.exit.thread.i

cgltf_json_strcmp.exit182.i:                      ; preds = %cgltf_json_strcmp.exit175.i
  %i.hl = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.gt, ptr noundef nonnull dereferenceable(15) @.str.318, i64 noundef 14) #51
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.ab, label %cgltf_json_strcmp.exit182.thread.i

bb.ab:                                            ; preds = %cgltf_json_strcmp.exit182.i
  %i.hn = sext i32 %.1129244.i to i64
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.hn ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8
  %.not.i183.i = icmp eq i32 %i.hq, 4
  br i1 %.not.i183.i, label %bb.ac, label %cgltf_json_to_float.exit186.i

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 48
  %i.hs = load i64, ptr %i.hr, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 40
  %i.hu = load i64, ptr %i.ht, align 8            ; 2 uses
  %i.hv = sub nsw i64 %i.hs, %i.hu
  %spec.select.i185.i = call i64 @llvm.umin.i64(i64 %i.hv, i64 127) ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %3, i64 %i.hu
  %i.hx = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef readonly %i.hw, i64 noundef %spec.select.i185.i) #54 ; 0 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.i185.i
  store i8 0, ptr %i.hy, align 1
  %i.hz = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #54, !inline_history !1
  %i.ia = fptrunc double %i.hz to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %cgltf_json_to_float.exit186.i

cgltf_json_to_float.exit186.i:                    ; preds = %bb.ac, %bb.ab
  %.0.i184.i = phi float [ %i.ia, %bb.ac ], [ -1.000000e+00, %bb.ab ]
  store float %.0.i184.i, ptr %i.ah, align 4
  %i.ib = add nuw nsw i32 %.1129244.i, 2
  br label %cgltf_skip_json.exit.thread.i

cgltf_json_strcmp.exit182.thread.i:               ; preds = %cgltf_json_strcmp.exit182.i, %bb.y
  %i.ic = add nuw nsw i32 %.1129244.i, 1
  %i.id = add nuw nsw i32 %.1129244.i, 2
  %i.ie = zext nneg i32 %i.ic to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ag, %cgltf_json_strcmp.exit182.thread.i
  %indvars.iv.i187.i = phi i64 [ %i.ie, %cgltf_json_strcmp.exit182.thread.i ], [ %indvars.iv.next.i189.i, %bb.ag ] ; 2 uses
  %.016.i.i = phi i32 [ %i.id, %cgltf_json_strcmp.exit182.thread.i ], [ %.1.i188.i, %bb.ag ] ; 4 uses
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i187.i ; 3 uses
  %i.ig = load i32, ptr %i.if, align 8
  switch i32 %i.ig, label %cgltf_parse_json_array.exit.thread [
    i32 1, label %bb.ae
    i32 2, label %bb.af
    i32 4, label %bb.ag
    i32 3, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ii = load i32, ptr %i.ih, align 8
  %i.ij = shl nsw i32 %i.ii, 1
  %i.ik = add nsw i32 %i.ij, %.016.i.i
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.im = load i32, ptr %i.il, align 8
  %i.in = add nsw i32 %i.im, %.016.i.i
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ad
  %.1.i188.i = phi i32 [ %i.ik, %bb.ae ], [ %i.in, %bb.af ], [ %.016.i.i, %bb.ad ], [ %.016.i.i, %bb.ad ] ; 2 uses
  %indvars.iv.next.i189.i = add nuw nsw i64 %indvars.iv.i187.i, 1 ; 3 uses
  %i.io = sext i32 %.1.i188.i to i64
  %i.ip = icmp slt i64 %indvars.iv.next.i189.i, %i.io
  br i1 %i.ip, label %bb.ad, label %cgltf_skip_json.exit.i

cgltf_skip_json.exit.i:                           ; preds = %bb.ag
  %i.iq = trunc nuw nsw i64 %indvars.iv.next.i189.i to i32
  br label %cgltf_skip_json.exit.thread.i

cgltf_skip_json.exit.thread.i:                    ; preds = %cgltf_skip_json.exit.i, %cgltf_json_to_float.exit186.i, %cgltf_json_to_float.exit179.i
  %.2130217.i = phi i32 [ %i.iq, %cgltf_skip_json.exit.i ], [ %i.ib, %cgltf_json_to_float.exit186.i ], [ %i.hk, %cgltf_json_to_float.exit179.i ] ; 2 uses
  %i.ir = add nuw nsw i32 %.0245.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ir, %i.gf
  br i1 %exitcond.not.i, label %cgltf_parse_json_string.exit.thread231.i, label %.lr.ph.i

cgltf_json_strcmp.exit192.i:                      ; preds = %bb.i
  %i.is = getelementptr inbounds i8, ptr %3, i64 %i.az
  %i.it = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.is, ptr noundef nonnull dereferenceable(7) @.str.136, i64 noundef 6) #51
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %bb.ah, label %cgltf_json_strcmp.exit192.thread.i

bb.ah:                                            ; preds = %cgltf_json_strcmp.exit192.i
  %i.iv = load ptr, ptr %i.al, align 8
  %.not.i193.i = icmp eq ptr %i.iv, null
  br i1 %.not.i193.i, label %bb.ai, label %cgltf_parse_json_array.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.iw = add nuw nsw i32 %.0128247.i, 1
  %i.ix = zext nneg i32 %i.iw to i64              ; 2 uses
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.ix ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8
  store i64 %i.ja, ptr %i.am, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.jc = load i64, ptr %i.jb, align 8            ; 2 uses
  store i64 %i.jc, ptr %i.an, align 8
  %i.jd = load i64, ptr %i.iz, align 8            ; 2 uses
  %i.je = sub i64 %i.jc, %i.jd                    ; 3 uses
  %i.jf = load ptr, ptr %i.q, align 8
  %i.jg = load ptr, ptr %i.s, align 8
  %i.jh = add i64 %i.je, 1
  %i.ji = call ptr %i.jf(ptr noundef %i.jg, i64 noundef %i.jh) #54, !inline_history !277 ; 3 uses
  store ptr %i.ji, ptr %i.al, align 8
  %.not27.i.i = icmp eq ptr %i.ji, null
  br i1 %.not27.i.i, label %cgltf_parse_json_array.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 %i.jd
  %i.jk = call ptr @strncpy(ptr noundef nonnull %i.ji, ptr noundef readonly %i.jj, i64 noundef %i.je) #54 ; 0 uses
  %i.jl = load ptr, ptr %i.al, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.je
  store i8 0, ptr %i.jm, align 1
  %i.jn = add nuw nsw i32 %.0128247.i, 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.an, %bb.aj
  %indvars.iv.i.i.i = phi i64 [ %i.ix, %bb.aj ], [ %indvars.iv.next.i.i.i, %bb.an ] ; 2 uses
  %.016.i.i.i = phi i32 [ %i.jn, %bb.aj ], [ %.1.i.i.i, %bb.an ] ; 4 uses
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i.i.i ; 3 uses
  %i.jp = load i32, ptr %i.jo, align 8
  switch i32 %i.jp, label %cgltf_parse_json_array.exit.thread [
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 4, label %bb.an
    i32 3, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jr = load i32, ptr %i.jq, align 8
  %i.js = shl nsw i32 %i.jr, 1
  %i.jt = add nsw i32 %i.js, %.016.i.i.i
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jv = load i32, ptr %i.ju, align 8
  %i.jw = add nsw i32 %i.jv, %.016.i.i.i
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ak
  %.1.i.i.i = phi i32 [ %i.jt, %bb.al ], [ %i.jw, %bb.am ], [ %.016.i.i.i, %bb.ak ], [ %.016.i.i.i, %bb.ak ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.jx = sext i32 %.1.i.i.i to i64
  %i.jy = icmp slt i64 %indvars.iv.next.i.i.i, %i.jx
  br i1 %i.jy, label %bb.ak, label %.split.loop.exit.i.i.i

.split.loop.exit.i.i.i:                           ; preds = %bb.an
  %i.jz = trunc nuw nsw i64 %indvars.iv.next.i.i.i to i32
  br label %cgltf_parse_json_string.exit.i

cgltf_json_strcmp.exit192.thread.i:               ; preds = %cgltf_json_strcmp.exit192.i, %cgltf_json_strcmp.exit172.i, %cgltf_json_strcmp.exit165.thread288.i, %cgltf_json_strcmp.exit148.i, %bb.i
  %i.ka = add nuw nsw i32 %.0128247.i, 1
  %i.kb = add nsw i32 %.0128247.i, 2
  %i.kc = sext i32 %i.ka to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %cgltf_json_strcmp.exit192.thread.i
  %indvars.iv.i195.i = phi i64 [ %i.kc, %cgltf_json_strcmp.exit192.thread.i ], [ %indvars.iv.next.i198.i, %bb.ar ] ; 2 uses
  %.016.i196.i = phi i32 [ %i.kb, %cgltf_json_strcmp.exit192.thread.i ], [ %.1.i197.i, %bb.ar ] ; 4 uses
  %i.kd = getelementptr inbounds [32 x i8], ptr %1, i64 %indvars.iv.i195.i ; 3 uses
  %i.ke = load i32, ptr %i.kd, align 8
  switch i32 %i.ke, label %cgltf_parse_json_array.exit.thread [
    i32 1, label %bb.ap
    i32 2, label %bb.aq
    i32 4, label %bb.ar
    i32 3, label %bb.ar
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kg = load i32, ptr %i.kf, align 8
  %i.kh = shl nsw i32 %i.kg, 1
  %i.ki = add nsw i32 %i.kh, %.016.i196.i
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 24
  %i.kk = load i32, ptr %i.kj, align 8
  %i.kl = add nsw i32 %i.kk, %.016.i196.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.ao
  %.1.i197.i = phi i32 [ %i.ki, %bb.ap ], [ %i.kl, %bb.aq ], [ %.016.i196.i, %bb.ao ], [ %.016.i196.i, %bb.ao ] ; 2 uses
  %indvars.iv.next.i198.i = add nsw i64 %indvars.iv.i195.i, 1 ; 3 uses
  %i.km = sext i32 %.1.i197.i to i64
  %i.kn = icmp slt i64 %indvars.iv.next.i198.i, %i.km
  br i1 %i.kn, label %bb.ao, label %.split.loop.exit.i199.i

.split.loop.exit.i199.i:                          ; preds = %bb.ar
  %i.ko = trunc nsw i64 %indvars.iv.next.i198.i to i32
  br label %cgltf_parse_json_string.exit.i

cgltf_parse_json_string.exit.i:                   ; preds = %.split.loop.exit.i199.i, %.split.loop.exit.i.i.i, %cgltf_json_to_float.exit.i.2.i
  %.4132.i = phi i32 [ %i.ko, %.split.loop.exit.i199.i ], [ %i.jz, %.split.loop.exit.i.i.i ], [ %i.cj, %cgltf_json_to_float.exit.i.2.i ] ; 3 uses
  %i.kp = icmp slt i32 %.4132.i, 0
  br i1 %i.kp, label %cgltf_parse_json_array.exit.thread, label %cgltf_parse_json_string.exit.thread231.i

cgltf_parse_json_string.exit.thread231.i:         ; preds = %cgltf_skip_json.exit.thread.i, %cgltf_parse_json_string.exit.i, %bb.w, %cgltf_json_to_float.exit169.i, %cgltf_json_strcmp.exit162.thread.i, %cgltf_json_to_float.exit.i, %bb.m
  %.4132234.i = phi i32 [ %.4132.i, %cgltf_parse_json_string.exit.i ], [ %i.by, %bb.m ], [ %i.fx, %cgltf_json_to_float.exit169.i ], [ %i.fg, %cgltf_json_strcmp.exit162.thread.i ], [ %i.el, %cgltf_json_to_float.exit.i ], [ %i.gg, %bb.w ], [ %.2130217.i, %cgltf_skip_json.exit.thread.i ] ; 4 uses
  %i.kq = add nuw nsw i32 %.0125248.i, 1          ; 2 uses
  %exitcond277.not.i = icmp eq i32 %i.kq, %i.aj
  br i1 %exitcond277.not.i, label %cgltf_parse_json_light.exit, label %bb.g

cgltf_parse_json_light.exit:                      ; preds = %cgltf_parse_json_string.exit.thread231.i
  %i.kr = icmp slt i32 %.4132234.i, 0
  br i1 %i.kr, label %cgltf_parse_json_array.exit.thread, label %cgltf_parse_json_light.exit.thread32

cgltf_parse_json_light.exit.thread32:             ; preds = %bb.f, %cgltf_parse_json_light.exit
  %.5.i34 = phi i32 [ %.4132234.i, %cgltf_parse_json_light.exit ], [ %i.ak, %bb.f ] ; 2 uses
  %i.ks = add nuw i64 %.02145, 1                  ; 2 uses
  %i.kt = load i64, ptr %i.g, align 8
  %i.ku = icmp ult i64 %i.ks, %i.kt
  br i1 %i.ku, label %.lr.ph, label %cgltf_parse_json_array.exit.thread

cgltf_parse_json_array.exit.thread:               ; preds = %cgltf_parse_json_light.exit.thread32, %cgltf_parse_json_light.exit, %.lr.ph, %bb.h, %.preheader.i.i, %cgltf_json_to_float.exit.i.1.i, %cgltf_json_to_float.exit.i.i, %cgltf_parse_json_string.exit.i, %bb.v, %bb.g, %bb.l, %bb.k, %bb.ai, %bb.ah, %bb.n, %bb.o, %bb.j, %bb.ak, %bb.x, %.lr.ph.i, %bb.ao, %bb.ad, %cgltf_parse_json_array.exit, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ -1, %bb.ad ], [ -1, %bb.x ], [ %i.l, %bb.b ], [ -2, %bb.e ], [ -2, %bb.d ], [ -1, %bb.c ], [ -1, %bb.ao ], [ -1, %bb.ak ], [ %i.w, %cgltf_parse_json_array.exit ], [ -1, %bb.h ], [ -1, %.lr.ph.i ], [ -1, %bb.j ], [ -1, %bb.o ], [ -1, %bb.n ], [ -1, %bb.ah ], [ -2, %bb.ai ], [ -1, %bb.k ], [ -2, %bb.l ], [ -1, %bb.g ], [ -1, %bb.v ], [ %.4132.i, %cgltf_parse_json_string.exit.i ], [ -1, %cgltf_json_to_float.exit.i.i ], [ -1, %cgltf_json_to_float.exit.i.1.i ], [ -1, %.preheader.i.i ], [ %.4132234.i, %cgltf_parse_json_light.exit ], [ -1, %.lr.ph ], [ %.5.i34, %cgltf_parse_json_light.exit.thread32 ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -2147483646, -2147483647) i32 @cgltf_skip_json(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -2147483647, -2147483648) %1) unnamed_addr #44 {
bb.a:
  %i.a = add nsw i32 %1, 1
  %i.b = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ %i.b, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.016 = phi i32 [ %i.a, %bb.a ], [ %.1, %bb.e ] ; 4 uses
  %i.c = getelementptr inbounds [32 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  switch i32 %i.d, label %.split.loop.exit18 [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
    i32 3, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, %.016
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add nsw i32 %i.j, %.016
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.d, %bb.c
  %.1 = phi i32 [ %i.h, %bb.c ], [ %i.k, %bb.d ], [ %.016, %bb.b ], [ %.016, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.l = sext i32 %.1 to i64
  %i.m = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.e
  %i.n = trunc nsw i64 %indvars.iv.next to i32
  br label %.split.loop.exit18

.split.loop.exit18:                               ; preds = %bb.b, %.split.loop.exit
  %.014 = phi i32 [ %i.n, %.split.loop.exit ], [ -1, %bb.b ]
  ret i32 %.014
}
end_hunk_6
begin_hunk_7_@cgltf_parse_json_meshopt_compression:bb.a

cgltf_json_to_size.exit133:                       ; preds = %bb.l, %bb.m
  %.0.i131 = phi i64 [ %i.cw, %bb.m ], [ 0, %bb.l ]
  store i64 %.0.i131, ptr %i.o, align 8
  %i.cx = add nuw nsw i32 %.010730, 2
  br label %cgltf_skip_json.exit.thread

cgltf_json_strcmp.exit136:                        ; preds = %bb.e
  %i.cy = getelementptr inbounds i8, ptr %2, i64 %i.aa
  %i.cz = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.cy, ptr noundef nonnull dereferenceable(6) @.str.170, i64 noundef 5) #51
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.n, label %cgltf_json_strcmp.exit155.thread

bb.n:                                             ; preds = %cgltf_json_strcmp.exit136
  %i.db = sext i32 %.010730 to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.db ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load i32, ptr %i.dd, align 8
  %.not.i137 = icmp eq i32 %i.de, 4
  br i1 %.not.i137, label %bb.o, label %cgltf_json_to_size.exit140

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.di = load i64, ptr %i.dh, align 8            ; 2 uses
  %i.dj = sub nsw i64 %i.dg, %i.di
  %spec.select.i139 = call i64 @llvm.umin.i64(i64 %i.dj, i64 127) ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %2, i64 %i.di
  %i.dl = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef readonly %i.dk, i64 noundef %spec.select.i139) #54 ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.i139
  store i8 0, ptr %i.dm, align 1
  %i.dn = call i64 @strtoll(ptr noundef nonnull captures(none) %i.a, ptr noundef null, i32 noundef 10) #54, !inline_history !2
  %i.do = call i64 @llvm.smax.i64(i64 %i.dn, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %cgltf_json_to_size.exit140

cgltf_json_to_size.exit140:                       ; preds = %bb.n, %bb.o
  %.0.i138 = phi i64 [ %i.do, %bb.o ], [ 0, %bb.n ]
  store i64 %.0.i138, ptr %i.n, align 8
  %i.dp = add nuw nsw i32 %.010730, 2
  br label %cgltf_skip_json.exit.thread

cgltf_json_strcmp.exit143:                        ; preds = %bb.e
  %i.dq = getelementptr inbounds i8, ptr %2, i64 %i.aa
  %i.dr = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.dq, ptr noundef nonnull dereferenceable(5) @.str.152, i64 noundef 4) #51
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.p, label %cgltf_json_strcmp.exit155.thread

bb.p:                                             ; preds = %cgltf_json_strcmp.exit143
  %i.dt = sext i32 %.010730 to i64
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.dt ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load i32, ptr %i.dv, align 8
  %.not.i144 = icmp eq i32 %i.dw, 3
  br i1 %.not.i144, label %bb.q, label %cgltf_json_strcmp.exit152.thread

bb.q:                                             ; preds = %bb.p
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 48
  %i.dy = load i64, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.ea = load i64, ptr %i.dz, align 8            ; 4 uses
  %i.eb = sub nsw i64 %i.dy, %i.ea
  switch i64 %i.eb, label %cgltf_json_strcmp.exit152.thread [
    i64 10, label %cgltf_json_strcmp.exit146
    i64 9, label %cgltf_json_strcmp.exit149
    i64 7, label %cgltf_json_strcmp.exit152
  ]

cgltf_json_strcmp.exit146:                        ; preds = %bb.q
  %i.ec = getelementptr inbounds i8, ptr %2, i64 %i.ea
  %i.ed = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ec, ptr noundef nonnull dereferenceable(11) @.str.190, i64 noundef 10) #51
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %cgltf_json_strcmp.exit152.thread.sink.split, label %cgltf_json_strcmp.exit152.thread

cgltf_json_strcmp.exit149:                        ; preds = %bb.q
  %i.ef = getelementptr inbounds i8, ptr %2, i64 %i.ea
  %i.eg = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ef, ptr noundef nonnull dereferenceable(10) @.str.191, i64 noundef 9) #51
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %cgltf_json_strcmp.exit152.thread.sink.split, label %cgltf_json_strcmp.exit152.thread

cgltf_json_strcmp.exit152:                        ; preds = %bb.q
  %i.ei = getelementptr inbounds i8, ptr %2, i64 %i.ea
  %i.ej = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ei, ptr noundef nonnull dereferenceable(8) @.str.192, i64 noundef 7) #51
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %cgltf_json_strcmp.exit152.thread.sink.split, label %cgltf_json_strcmp.exit152.thread

cgltf_json_strcmp.exit152.thread.sink.split:      ; preds = %cgltf_json_strcmp.exit152, %cgltf_json_strcmp.exit149, %cgltf_json_strcmp.exit146
  %.sink = phi i32 [ 1, %cgltf_json_strcmp.exit146 ], [ 2, %cgltf_json_strcmp.exit149 ], [ 3, %cgltf_json_strcmp.exit152 ]
  store i32 %.sink, ptr %i.m, align 8
  br label %cgltf_json_strcmp.exit152.thread

cgltf_json_strcmp.exit152.thread:                 ; preds = %cgltf_json_strcmp.exit152.thread.sink.split, %bb.q, %cgltf_json_strcmp.exit146, %cgltf_json_strcmp.exit149, %bb.p, %cgltf_json_strcmp.exit152
  %i.el = add nuw nsw i32 %.010730, 2
  br label %cgltf_skip_json.exit.thread

cgltf_json_strcmp.exit155:                        ; preds = %cgltf_json_strcmp.exit
  %i.em = getelementptr inbounds i8, ptr %2, i64 %i.aa
  %i.en = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.em, ptr noundef nonnull dereferenceable(7) @.str.193, i64 noundef 6) #51
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.r, label %cgltf_json_strcmp.exit155.thread

bb.r:                                             ; preds = %cgltf_json_strcmp.exit155
  %i.ep = sext i32 %.010730 to i64
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ep ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 2 uses
  %i.es = load i32, ptr %i.er, align 8
  %.not.i156 = icmp eq i32 %i.es, 3
  br i1 %.not.i156, label %bb.s, label %cgltf_json_strcmp.exit167.thread

bb.s:                                             ; preds = %bb.r
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.ew = load i64, ptr %i.ev, align 8            ; 5 uses
  %i.ex = sub nsw i64 %i.eu, %i.ew
  switch i64 %i.ex, label %cgltf_json_strcmp.exit167.thread [
    i64 4, label %cgltf_json_strcmp.exit158
    i64 10, label %cgltf_json_strcmp.exit161
    i64 11, label %cgltf_json_strcmp.exit167
  ]

cgltf_json_strcmp.exit158:                        ; preds = %bb.s
  %i.ey = getelementptr inbounds i8, ptr %2, i64 %i.ew
  %i.ez = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.ey, ptr noundef nonnull dereferenceable(5) @.str.194, i64 noundef 4) #51
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %.sink.split, label %cgltf_json_strcmp.exit167.thread

cgltf_json_strcmp.exit161:                        ; preds = %bb.s
  %i.fb = getelementptr inbounds i8, ptr %2, i64 %i.ew
  %i.fc = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.fb, ptr noundef nonnull dereferenceable(11) @.str.195, i64 noundef 10) #51
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %.sink.split, label %cgltf_json_strcmp.exit164

cgltf_json_strcmp.exit164:                        ; preds = %cgltf_json_strcmp.exit161
  %i.fe = getelementptr inbounds i8, ptr %2, i64 %i.ew
  %i.ff = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.fe, ptr noundef nonnull dereferenceable(11) @.str.196, i64 noundef 10) #51
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %.sink.split, label %cgltf_json_strcmp.exit167.thread

cgltf_json_strcmp.exit167:                        ; preds = %bb.s
  %i.fh = getelementptr inbounds i8, ptr %2, i64 %i.ew
  %i.fi = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.fh, ptr noundef nonnull dereferenceable(12) @.str.197, i64 noundef 11) #51
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %.sink.split, label %cgltf_json_strcmp.exit167.thread

cgltf_json_strcmp.exit167.thread:                 ; preds = %bb.s, %cgltf_json_strcmp.exit164, %cgltf_json_strcmp.exit158, %bb.r, %cgltf_json_strcmp.exit167
  %i.fk = call fastcc i32 @cgltf_json_strcmp(ptr noundef %i.er, ptr noundef nonnull %2, ptr noundef nonnull @.str.162)
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %.sink.split, label %bb.t

.sink.split:                                      ; preds = %cgltf_json_strcmp.exit167.thread, %cgltf_json_strcmp.exit167, %cgltf_json_strcmp.exit164, %cgltf_json_strcmp.exit161, %cgltf_json_strcmp.exit158
  %.sink44 = phi i32 [ 0, %cgltf_json_strcmp.exit158 ], [ 2, %cgltf_json_strcmp.exit164 ], [ 3, %cgltf_json_strcmp.exit167 ], [ 1, %cgltf_json_strcmp.exit161 ], [ 4, %cgltf_json_strcmp.exit167.thread ]
  store i32 %.sink44, ptr %i.l, align 4
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %cgltf_json_strcmp.exit167.thread
  %i.fm = add nuw nsw i32 %.010730, 2
  br label %cgltf_skip_json.exit.thread

cgltf_json_strcmp.exit155.thread:                 ; preds = %bb.e, %cgltf_json_strcmp.exit129, %cgltf_json_strcmp.exit136, %cgltf_json_strcmp.exit143, %cgltf_json_strcmp.exit155
  %i.fn = add nuw nsw i32 %.010730, 1
  %i.fo = add nuw nsw i32 %.010730, 2
  %i.fp = zext nneg i32 %i.fn to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %cgltf_json_strcmp.exit155.thread
  %indvars.iv.i = phi i64 [ %i.fp, %cgltf_json_strcmp.exit155.thread ], [ %indvars.iv.next.i, %bb.x ] ; 2 uses
  %.016.i = phi i32 [ %i.fo, %cgltf_json_strcmp.exit155.thread ], [ %.1.i, %bb.x ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 8
  switch i32 %i.fr, label %cgltf_skip_json.exit.thread26 [
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 4, label %bb.x
    i32 3, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.ft = load i32, ptr %i.fs, align 8
  %i.fu = shl nsw i32 %i.ft, 1
  %i.fv = add nsw i32 %i.fu, %.016.i
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fx = load i32, ptr %i.fw, align 8
  %i.fy = add nsw i32 %i.fx, %.016.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  %.1.i = phi i32 [ %i.fv, %bb.v ], [ %i.fy, %bb.w ], [ %.016.i, %bb.u ], [ %.016.i, %bb.u ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.fz = sext i32 %.1.i to i64
  %i.ga = icmp slt i64 %indvars.iv.next.i, %i.fz
  br i1 %i.ga, label %bb.u, label %cgltf_skip_json.exit

cgltf_skip_json.exit:                             ; preds = %bb.x
  %i.gb = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %cgltf_skip_json.exit.thread

cgltf_skip_json.exit.thread:                      ; preds = %cgltf_skip_json.exit, %bb.t, %cgltf_json_strcmp.exit152.thread, %cgltf_json_to_size.exit140, %cgltf_json_to_size.exit133, %cgltf_json_to_size.exit126, %cgltf_json_to_size.exit, %cgltf_json_to_int.exit
  %.110825 = phi i32 [ %i.gb, %cgltf_skip_json.exit ], [ %i.fm, %bb.t ], [ %i.el, %cgltf_json_strcmp.exit152.thread ], [ %i.dp, %cgltf_json_to_size.exit140 ], [ %i.cx, %cgltf_json_to_size.exit133 ], [ %i.cf, %cgltf_json_to_size.exit126 ], [ %i.bn, %cgltf_json_to_size.exit ], [ %i.av, %cgltf_json_to_int.exit ] ; 2 uses
  %i.gc = add nuw nsw i32 %.010531, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gc, %i.j
  br i1 %exitcond.not, label %cgltf_skip_json.exit.thread26, label %bb.c

cgltf_skip_json.exit.thread26:                    ; preds = %bb.c, %bb.d, %cgltf_skip_json.exit.thread, %bb.u, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ %i.k, %bb.b ], [ -1, %bb.u ], [ -1, %bb.c ], [ -1, %bb.d ], [ %.110825, %cgltf_skip_json.exit.thread ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal fastcc i32 @cgltf_parse_json_texture_view(ptr nofree noundef nonnull readonly %0, i32 noundef range(i32 1, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #45 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 10 uses
  %i.c = alloca [128 x i8], align 16              ; 5 uses
  %i.d = alloca [128 x i8], align 16              ; 10 uses
  %i.e = alloca [128 x i8], align 16              ; 5 uses
  %i.f = alloca [128 x i8], align 16              ; 5 uses
  %i.g = alloca [128 x i8], align 16              ; 5 uses
  %i.h = alloca [128 x i8], align 16              ; 5 uses
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %.not = icmp eq i32 %i.k, 1
  br i1 %.not, label %cgltf_fill_float_array.exit, label %.thread

cgltf_fill_float_array.exit:                      ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  store float 1.000000e+00, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = add nuw nsw i32 %1, 1                    ; 2 uses
  %.not10239 = icmp sgt i32 %i.p, 0
  br i1 %.not10239, label %.lr.ph42, label %.thread

.lr.ph42:                                         ; preds = %cgltf_fill_float_array.exit
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph42, %cgltf_skip_json.exit141.thread18
  %.08941 = phi i32 [ 0, %.lr.ph42 ], [ %i.kn, %cgltf_skip_json.exit141.thread18 ]
  %.09240 = phi i32 [ %i.q, %.lr.ph42 ], [ %.49621, %cgltf_skip_json.exit141.thread18 ] ; 13 uses
  %i.y = zext nneg i32 %.09240 to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.y ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8
  %.not98 = icmp eq i32 %i.aa, 3
  br i1 %.not98, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = load i64, ptr %i.ag, align 8            ; 6 uses
  %i.ai = sub nsw i64 %i.af, %i.ah
  switch i64 %i.ai, label %cgltf_json_strcmp.exit127.thread [
    i64 5, label %cgltf_json_strcmp.exit
    i64 8, label %cgltf_json_strcmp.exit107
    i64 10, label %cgltf_json_strcmp.exit127
  ]

cgltf_json_strcmp.exit:                           ; preds = %bb.d
  %i.aj = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.ak = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(6) @.str.228, i64 noundef 5) #51
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.e, label %cgltf_json_strcmp.exit114

bb.e:                                             ; preds = %cgltf_json_strcmp.exit
  %i.am = zext nneg i32 %.09240 to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i32, ptr %i.ao, align 8
  %.not.i103 = icmp eq i32 %i.ap, 4
  br i1 %.not.i103, label %bb.f, label %cgltf_json_to_int.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.at = load i64, ptr %i.as, align 8            ; 2 uses
  %i.au = sub nsw i64 %i.ar, %i.at
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.au, i64 127) ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.at
  %i.aw = call ptr @strncpy(ptr noundef nonnull %i.h, ptr noundef readonly %i.av, i64 noundef %spec.select.i) #54 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 %spec.select.i
  store i8 0, ptr %i.ax, align 1
  %i.ay = call i64 @strtol(ptr noundef nonnull captures(none) %i.h, ptr noundef null, i32 noundef 10) #54, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #54
  %sext = shl i64 %i.ay, 32
  %i.az = ashr exact i64 %sext, 32
  %i.ba = add nsw i64 %i.az, 1
  %i.bb = inttoptr i64 %i.ba to ptr
  br label %cgltf_json_to_int.exit

cgltf_json_to_int.exit:                           ; preds = %bb.e, %bb.f
  %.0.i104 = phi ptr [ %i.bb, %bb.f ], [ null, %bb.e ]
  store ptr %.0.i104, ptr %3, align 8
  %i.bc = add nuw nsw i32 %.09240, 2
  br label %cgltf_skip_json.exit141

cgltf_json_strcmp.exit107:                        ; preds = %bb.d
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.be = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.bd, ptr noundef nonnull dereferenceable(9) @.str.229, i64 noundef 8) #51
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.g, label %cgltf_json_strcmp.exit120

bb.g:                                             ; preds = %cgltf_json_strcmp.exit107
  %i.bg = zext nneg i32 %.09240 to i64
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load i32, ptr %i.bi, align 8
  %.not.i108 = icmp eq i32 %i.bj, 4
  br i1 %.not.i108, label %bb.h, label %cgltf_json_to_int.exit111

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #54
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = sub nsw i64 %i.bl, %i.bn
  %spec.select.i110 = call i64 @llvm.umin.i64(i64 %i.bo, i64 127) ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bn
  %i.bq = call ptr @strncpy(ptr noundef nonnull %i.g, ptr noundef readonly %i.bp, i64 noundef %spec.select.i110) #54 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 %spec.select.i110
  store i8 0, ptr %i.br, align 1
  %i.bs = call i64 @strtol(ptr noundef nonnull captures(none) %i.g, ptr noundef null, i32 noundef 10) #54, !inline_history !0
  %i.bt = trunc i64 %i.bs to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #54
  br label %cgltf_json_to_int.exit111

cgltf_json_to_int.exit111:                        ; preds = %bb.g, %bb.h
  %.0.i109 = phi i32 [ %i.bt, %bb.h ], [ -1, %bb.g ]
  store i32 %.0.i109, ptr %i.x, align 8
  %i.bu = add nuw nsw i32 %.09240, 2
  br label %cgltf_skip_json.exit141

cgltf_json_strcmp.exit114:                        ; preds = %cgltf_json_strcmp.exit
  %i.bv = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.bw = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(6) @.str.230, i64 noundef 5) #51
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.i, label %cgltf_json_strcmp.exit127.thread

bb.i:                                             ; preds = %cgltf_json_strcmp.exit114
  %i.by = zext nneg i32 %.09240 to i64
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.by ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load i32, ptr %i.ca, align 8
  %.not.i115 = icmp eq i32 %i.cb, 4
  br i1 %.not.i115, label %bb.j, label %cgltf_json_to_float.exit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #54
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cg = sub nsw i64 %i.cd, %i.cf
  %spec.select.i117 = call i64 @llvm.umin.i64(i64 %i.cg, i64 127) ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %2, i64 %i.cf
  %i.ci = call ptr @strncpy(ptr noundef nonnull %i.f, ptr noundef readonly %i.ch, i64 noundef %spec.select.i117) #54 ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.i117
  store i8 0, ptr %i.cj, align 1
  %i.ck = call double @strtod(ptr noundef nonnull captures(none) %i.f, ptr noundef null) #54, !inline_history !1
  %i.cl = fptrunc double %i.ck to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #54
  br label %cgltf_json_to_float.exit

cgltf_json_to_float.exit:                         ; preds = %bb.i, %bb.j
  %.0.i116 = phi float [ %i.cl, %bb.j ], [ -1.000000e+00, %bb.i ]
  store float %.0.i116, ptr %i.l, align 4
  %i.cm = add nuw nsw i32 %.09240, 2
  br label %cgltf_skip_json.exit141

cgltf_json_strcmp.exit120:                        ; preds = %cgltf_json_strcmp.exit107
  %i.cn = getelementptr inbounds i8, ptr %2, i64 %i.ah
  %i.co = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(9) @.str.231, i64 noundef 8) #51
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.k, label %cgltf_json_strcmp.exit127.thread

bb.k:                                             ; preds = %cgltf_json_strcmp.exit120
end_hunk_7
begin_hunk_8_@cgltf_parse_json_anisotropy:bb.a
  %i.ba = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef readonly %i.az, i64 noundef %spec.select.i58) #54 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.i58
  store i8 0, ptr %i.bb, align 1
  %i.bc = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #54, !inline_history !1
  %i.bd = fptrunc double %i.bc to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %cgltf_json_to_float.exit59

cgltf_json_to_float.exit59:                       ; preds = %bb.h, %bb.i
  %.0.i57 = phi float [ %i.bd, %bb.i ], [ -1.000000e+00, %bb.h ]
  store float %.0.i57, ptr %i.j, align 4
  %i.be = add nuw nsw i32 %.04610, 2
  br label %cgltf_skip_json.exit.thread

cgltf_json_strcmp.exit62:                         ; preds = %bb.e
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.t
  %i.bg = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(18) @.str.272, i64 noundef 17) #51
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %cgltf_json_strcmp.exit62.thread

bb.j:                                             ; preds = %cgltf_json_strcmp.exit62
  %i.bi = add nuw nsw i32 %.04610, 1
  %i.bj = call fastcc i32 @cgltf_parse_json_texture_view(ptr noundef %0, i32 noundef %i.bi, ptr noundef nonnull %2, ptr noundef nonnull %i.i)
  br label %cgltf_skip_json.exit

cgltf_json_strcmp.exit62.thread:                  ; preds = %bb.e, %cgltf_json_strcmp.exit55, %cgltf_json_strcmp.exit62
  %i.bk = add nuw nsw i32 %.04610, 1
  %i.bl = add nuw nsw i32 %.04610, 2
  %i.bm = zext nneg i32 %i.bk to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %cgltf_json_strcmp.exit62.thread
  %indvars.iv.i = phi i64 [ %i.bm, %cgltf_json_strcmp.exit62.thread ], [ %indvars.iv.next.i, %bb.n ] ; 2 uses
  %.016.i = phi i32 [ %i.bl, %cgltf_json_strcmp.exit62.thread ], [ %.1.i, %bb.n ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8
  switch i32 %i.bo, label %cgltf_skip_json.exit.thread6 [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.n
    i32 3, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = shl nsw i32 %i.bq, 1
  %i.bs = add nsw i32 %i.br, %.016.i
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = add nsw i32 %i.bu, %.016.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  %.1.i = phi i32 [ %i.bs, %bb.l ], [ %i.bv, %bb.m ], [ %.016.i, %bb.k ], [ %.016.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bw = sext i32 %.1.i to i64
  %i.bx = icmp slt i64 %indvars.iv.next.i, %i.bw
  br i1 %i.bx, label %bb.k, label %.split.loop.exit.i

.split.loop.exit.i:                               ; preds = %bb.n
  %i.by = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %cgltf_skip_json.exit

cgltf_skip_json.exit:                             ; preds = %.split.loop.exit.i, %bb.j
  %.147 = phi i32 [ %i.by, %.split.loop.exit.i ], [ %i.bj, %bb.j ] ; 3 uses
  %i.bz = icmp slt i32 %.147, 0
  br i1 %i.bz, label %cgltf_skip_json.exit.thread6, label %cgltf_skip_json.exit.thread

cgltf_skip_json.exit.thread:                      ; preds = %cgltf_json_to_float.exit59, %cgltf_json_to_float.exit, %cgltf_skip_json.exit
  %.1475 = phi i32 [ %.147, %cgltf_skip_json.exit ], [ %i.be, %cgltf_json_to_float.exit59 ], [ %i.am, %cgltf_json_to_float.exit ] ; 2 uses
  %i.ca = add nuw nsw i32 %.04411, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.g
  br i1 %exitcond.not, label %cgltf_skip_json.exit.thread6, label %bb.c

cgltf_skip_json.exit.thread6:                     ; preds = %cgltf_skip_json.exit, %bb.c, %bb.d, %cgltf_skip_json.exit.thread, %bb.k, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.k ], [ %i.h, %bb.b ], [ -1, %bb.c ], [ %.147, %cgltf_skip_json.exit ], [ -1, %bb.d ], [ %.1475, %cgltf_skip_json.exit.thread ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal fastcc i32 @cgltf_parse_json_dispersion(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 1, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #45 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 5 uses
  %i.b = zext nneg i32 %1 to i64
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.b, label %cgltf_skip_json.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = add nuw nsw i32 %1, 1                    ; 2 uses
  %.not3342 = icmp sgt i32 %i.f, 0
  br i1 %.not3342, label %.lr.ph, label %cgltf_skip_json.exit.thread

.lr.ph:                                           ; preds = %bb.b, %bb.k
  %.02744 = phi i32 [ %i.ba, %bb.k ], [ 0, %bb.b ]
  %.02943 = phi i32 [ %.13040, %bb.k ], [ %i.g, %bb.b ] ; 5 uses
  %i.h = zext nneg i32 %.02943 to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.h ; 4 uses
  %i.j = load i32, ptr %i.i, align 8
  %.not32 = icmp eq i32 %i.j, 3
  br i1 %.not32, label %bb.c, label %cgltf_skip_json.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %cgltf_skip_json.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = sub nsw i64 %i.o, %i.q
  %i.s = icmp eq i64 %i.r, 10
  br i1 %i.s, label %cgltf_json_strcmp.exit, label %cgltf_json_strcmp.exit.thread

cgltf_json_strcmp.exit:                           ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.q
  %i.u = call i32 @strncmp(ptr noundef nonnull readonly dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(11) @.str.273, i64 noundef 10) #51
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %cgltf_json_strcmp.exit.thread

bb.e:                                             ; preds = %cgltf_json_strcmp.exit
  %i.w = sext i32 %.02943 to i64
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %.not.i34 = icmp eq i32 %i.z, 4
  br i1 %.not.i34, label %bb.f, label %cgltf_skip_json.exit.thread38

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = sub nsw i64 %i.ab, %i.ad
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ae, i64 127) ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.ad
  %i.ag = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef readonly %i.af, i64 noundef %spec.select.i) #54 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.i
  store i8 0, ptr %i.ah, align 1
  %i.ai = call double @strtod(ptr noundef nonnull captures(none) %i.a, ptr noundef null) #54, !inline_history !1
  %i.aj = fptrunc double %i.ai to float
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #54
  br label %cgltf_skip_json.exit.thread38

cgltf_skip_json.exit.thread38:                    ; preds = %bb.f, %bb.e
  %.0.i35 = phi float [ %i.aj, %bb.f ], [ -1.000000e+00, %bb.e ]
  store float %.0.i35, ptr %3, align 4
  %i.ak = add nuw nsw i32 %.02943, 2
  br label %bb.k

cgltf_json_strcmp.exit.thread:                    ; preds = %bb.d, %cgltf_json_strcmp.exit
  %i.al = add nuw nsw i32 %.02943, 1
  %i.am = add nuw nsw i32 %.02943, 2
  %i.an = zext nneg i32 %i.al to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %cgltf_json_strcmp.exit.thread
  %indvars.iv.i = phi i64 [ %i.an, %cgltf_json_strcmp.exit.thread ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %.016.i = phi i32 [ %i.am, %cgltf_json_strcmp.exit.thread ], [ %.1.i, %bb.j ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv.i ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8
  switch i32 %i.ap, label %cgltf_skip_json.exit.thread [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 4, label %bb.j
    i32 3, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = shl nsw i32 %i.ar, 1
  %i.at = add nsw i32 %i.as, %.016.i
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = add nsw i32 %i.av, %.016.i
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.g
  %.1.i = phi i32 [ %i.at, %bb.h ], [ %i.aw, %bb.i ], [ %.016.i, %bb.g ], [ %.016.i, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ax = sext i32 %.1.i to i64
  %i.ay = icmp slt i64 %indvars.iv.next.i, %i.ax
  br i1 %i.ay, label %bb.g, label %cgltf_skip_json.exit

cgltf_skip_json.exit:                             ; preds = %bb.j
  %i.az = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %bb.k

bb.k:                                             ; preds = %cgltf_skip_json.exit, %cgltf_skip_json.exit.thread38
  %.13040 = phi i32 [ %i.ak, %cgltf_skip_json.exit.thread38 ], [ %i.az, %cgltf_skip_json.exit ] ; 2 uses
  %i.ba = add nuw nsw i32 %.02744, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %i.f
  br i1 %exitcond.not, label %cgltf_skip_json.exit.thread, label %.lr.ph

cgltf_skip_json.exit.thread:                      ; preds = %.lr.ph, %bb.c, %bb.k, %bb.g, %bb.b, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ %i.g, %bb.b ], [ -1, %bb.g ], [ -1, %.lr.ph ], [ -1, %bb.c ], [ %.13040, %bb.k ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @_m3dstbi__zbuild_huffman(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #46 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !280

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %i.al = icmp sgt i32 %.pre, 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 4
  %or.cond103 = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond103, label %.loopexit70, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  %.old = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.old101 = load i32, ptr %.old, align 8
  %.old102 = icmp sgt i32 %.old101, 4
  br i1 %.old102, label %.loopexit70, label %bb.b

bb.b:                                             ; preds = %._crit_edge, %._crit_edge.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aq = load <8 x i32>, ptr %i.ap, align 4
  %.fr = freeze <8 x i32> %i.aq
  %i.ar = icmp sgt <8 x i32> %.fr, <i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024> ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.at = load <4 x i32>, ptr %i.as, align 4
  %.fr152 = freeze <4 x i32> %i.at
  %i.au = icmp sgt <4 x i32> %.fr152, <i32 2048, i32 4096, i32 8192, i32 16384>
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = icmp sgt i32 %i.aw, 32768
  %i.ay = shufflevector <8 x i1> %i.ar, <8 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or <4 x i1> %i.ay, %i.au
  %i.az = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ba = shufflevector <8 x i1> %i.az, <8 x i1> %i.ar, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bb = bitcast <8 x i1> %i.ba to i8
  %i.bc = icmp ne i8 %i.bb, 0
  %op.rdx = select i1 %i.bc, i1 true, i1 %i.ax
  br i1 %op.rdx, label %.loopexit70, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %indvars.iv87 = phi i64 [ 1, %.preheader ], [ %indvars.iv.next88, %bb.d ] ; 8 uses
  %.06275 = phi i32 [ 0, %.preheader ], [ %i.bu, %bb.d ] ; 3 uses
  %.06374 = phi i32 [ 0, %.preheader ], [ %i.bv, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87
  store i32 %.06275, ptr %i.bg, align 4
  %i.bh = trunc i32 %.06275 to i16
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %indvars.iv87
  store i16 %i.bh, ptr %i.bi, align 2
  %i.bj = trunc i32 %.06374 to i16
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv87
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv87
  %i.bm = load i32, ptr %i.bl, align 4            ; 3 uses
  %i.bn = add nsw i32 %i.bm, %.06275              ; 3 uses
  %.not68 = icmp ne i32 %i.bm, 0
  %i.bo = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.bp = shl nuw nsw i32 1, %i.bo
  %.not69.not = icmp sgt i32 %i.bn, %i.bp
  %or.cond = select i1 %.not68, i1 %.not69.not, i1 false
  br i1 %or.cond, label %.loopexit70, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = trunc i64 %indvars.iv87 to i32
  %i.br = sub i32 16, %i.bq
  %i.bs = shl i32 %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv87
  store i32 %i.bs, ptr %i.bt, align 4
  %i.bu = shl i32 %i.bn, 1
  %i.bv = add nsw i32 %i.bm, %.06374
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 16
  br i1 %exitcond90.not, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 65536, ptr %i.bw, align 4
  br i1 %i.c, label %.lr.ph81, label %.loopexit70

.lr.ph81:                                         ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %wide.trip.count97 = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph81, %bb.i
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next95, %bb.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv94
  %i.ca = load i8, ptr %i.bz, align 1             ; 5 uses
  %i.cb = zext i8 %i.ca to i32                    ; 3 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = zext i8 %i.ca to i64                    ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4            ; 3 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.cc
end_hunk_8
