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
  %.lcssa162165.i = phi ptr [ %storemerge.i, %skip_space.exit91.preheader.i ], [ %i.gp, %skip_space_and_cr.exit.i ] ; 3 uses
  %.071.i = phi i32 [ 0, %skip_space.exit91.preheader.i ], [ %11, %skip_space_and_cr.exit.i ] ; 8 uses
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
  %10 = zext i32 %.071.i to i64
  %i.gr = getelementptr inbounds nuw [12 x i8], ptr %8, i64 %10 ; 2 uses
  store i64 %.sroa.040.0.insert.insert.i.i, ptr %i.gr, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i32 %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4
  %11 = add i32 %.071.i, 1
  %indvars.iv.next199.i = add i32 %indvars.iv198.i, 1
  %.pre.i = load i8, ptr %i.gp, align 1
  br label %skip_space.exit91.i

.critedge.i:                                      ; preds = %skip_space.exit91.i, %skip_space.exit91.i, %skip_space.exit91.i
  store i32 4, ptr %i.cq, align 4
  br i1 %.not.i445, label %.preheader.i, label %bb.au

.preheader.i:                                     ; preds = %.critedge.i
  %.not171.i = icmp eq i32 %.071.i, 0
  br i1 %.not171.i, label %._crit_edge170.i, label %.lr.ph169.i

.lr.ph169.i:                                      ; preds = %.preheader.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %12 = zext i32 %.071.i to i64
  %i.gt = mul nuw nsw i64 %12, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gs, ptr nonnull align 16 %8, i64 %i.gt, i1 false)
  br label %._crit_edge170.i

bb.au:                                            ; preds = %.critedge.i
  %i.gu = icmp ugt i32 %.071.i, 2
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
  store i32 %.071.i, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ch, i64 228
  store i32 %.071.i, ptr %i.hn, align 4
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
  %i.kv = phi i32 [ %.071.i, %._crit_edge170.i ], [ %i.hj, %._crit_edge.i ]
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
