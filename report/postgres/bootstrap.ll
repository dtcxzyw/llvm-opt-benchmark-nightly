Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/bootstrap?download=true
inline.NumInlined: 24
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@DefineAttr:bb.a

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1 ; 2 uses
  %exitcond86.not.i = icmp eq i64 %indvars.iv.next83.i, %wide.trip.count85.i
  br i1 %exitcond86.not.i, label %._crit_edge72.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph74.i
  %indvars.iv82.i = phi i64 [ 0, %.lr.ph74.i ], [ %indvars.iv.next83.i, %bb.l ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv82.i
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 64) #13, !inline_history !11
  %.not52.i = icmp eq i32 %i.ao, 0
  br i1 %.not52.i, label %.loopexit, label %bb.l

bb.n:                                             ; preds = %.preheader61.i
  %i.ap = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 92), i64 noundef 64) #13, !inline_history !11
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.ao, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 184), i64 noundef 64) #13, !inline_history !11
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.ao, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 276), i64 noundef 64) #13, !inline_history !11
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.ao, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 368), i64 noundef 64) #13, !inline_history !11
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.ao, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 460), i64 noundef 64) #13, !inline_history !11
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.ao, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 552), i64 noundef 64) #13, !inline_history !11
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.ao, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 644), i64 noundef 64) #13, !inline_history !11
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.ao, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 736), i64 noundef 64) #13, !inline_history !11
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.ao, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 828), i64 noundef 64) #13, !inline_history !11
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.ao, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 920), i64 noundef 64) #13, !inline_history !11
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.ao, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bj = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 1012), i64 noundef 64) #13, !inline_history !11
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 1104), i64 noundef 64) #13, !inline_history !11
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.ao, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 1196), i64 noundef 64) #13, !inline_history !11
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.ao, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 1288), i64 noundef 64) #13, !inline_history !11
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ao, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 1380), i64 noundef 64) #13, !inline_history !11
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.ao, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bt = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 1472), i64 noundef 64) #13, !inline_history !11
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 1564), i64 noundef 64) #13, !inline_history !11
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bx = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 1656), i64 noundef 64) #13, !inline_history !11
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bz = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 1748), i64 noundef 64) #13, !inline_history !11
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cb = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 1840), i64 noundef 64) #13, !inline_history !11
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cd = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 1932), i64 noundef 64) #13, !inline_history !11
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cf = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) getelementptr inbounds nuw (i8, ptr @TypInfo, i64 2024), i64 noundef 64) #13, !inline_history !11
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = tail call zeroext i1 @errstart(i32 noundef 11, ptr noundef null) #10, !inline_history !11
  br i1 %i.ch, label %bb.ak, label %tailrecurse.i

bb.ak:                                            ; preds = %bb.aj
  %i.ci = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.38, ptr noundef nonnull %1) #10, !inline_history !11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 990, ptr noundef nonnull @__func__.gettype) #10, !inline_history !11
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.ak, %bb.aj
  tail call fastcc void @populate_typ_list(), !inline_history !11
  %i.cj = load ptr, ptr @Typ, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.cj, null
  br i1 %.not.i, label %.preheader61.i, label %.preheader.i

._crit_edge72.i:                                  ; preds = %bb.l, %.lr.ph71.i, %.critedge.i
  %i.ck = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11, !inline_history !11 ; 0 uses
  %i.cl = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.39, ptr noundef %1) #10, !inline_history !11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 994, ptr noundef nonnull @__func__.gettype) #10, !inline_history !11
  unreachable

.loopexit:                                        ; preds = %bb.k, %bb.m
  %.lcssa92.sink95.i = phi ptr [ %i.am, %bb.m ], [ %i.ac, %bb.k ] ; 8 uses
  store ptr %.lcssa92.sink95.i, ptr @Ap, align 8
  %i.cm = load i32, ptr %.lcssa92.sink95.i, align 4
  %i.cn = load ptr, ptr %i.e, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 68
  store i32 %i.cm, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.lcssa92.sink95.i, i64 80 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 4
  %i.cr = load ptr, ptr %i.e, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 72
  store i16 %i.cq, ptr %i.cs, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.lcssa92.sink95.i, i64 82
  %i.cu = load i8, ptr %i.ct, align 2, !range !5, !noundef !6
  %i.cv = load ptr, ptr %i.e, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 82
  store i8 %i.cu, ptr %i.cw, align 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.lcssa92.sink95.i, i64 132
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = load ptr, ptr %i.e, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 83
  store i8 %i.cy, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %.lcssa92.sink95.i, i64 133
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = load ptr, ptr %i.e, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 84
  store i8 %i.dc, ptr %i.de, align 4
  %i.df = load ptr, ptr %i.e, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 85
  store i8 0, ptr %i.dg, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.lcssa92.sink95.i, i64 148
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = load ptr, ptr %i.e, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 96
  store i32 %i.di, ptr %i.dk, align 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.lcssa92.sink95.i, i64 96
  %i.dm = load i32, ptr %i.dl, align 4
  %.not72 = icmp eq i32 %i.dm, 0
  br i1 %.not72, label %bb.an, label %bb.al

bb.al:                                            ; preds = %.loopexit
  %i.dn = load i16, ptr %i.cp, align 4
  %i.do = icmp slt i16 %i.dn, 0
  br i1 %i.do, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dp = load ptr, ptr %i.e, align 8
  br label %bb.ar

bb.an:                                            ; preds = %bb.al, %.loopexit
  %i.dq = load ptr, ptr %i.e, align 8
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %.preheader61.i
  %.8.i.ph = phi i64 [ 2, %bb.o ], [ 3, %bb.p ], [ 4, %bb.q ], [ 5, %bb.r ], [ 6, %bb.s ], [ 7, %bb.t ], [ 8, %bb.u ], [ 9, %bb.v ], [ 10, %bb.w ], [ 11, %bb.x ], [ 12, %bb.y ], [ 13, %bb.z ], [ 14, %bb.aa ], [ 15, %bb.ab ], [ 16, %bb.ac ], [ 17, %bb.ad ], [ 18, %bb.ae ], [ 19, %bb.af ], [ 20, %bb.ag ], [ 21, %bb.ah ], [ 22, %bb.ai ], [ 0, %.preheader61.i ], [ 1, %bb.n ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [92 x i8], ptr @TypInfo, i64 %.8.i.ph ; 5 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = load ptr, ptr %i.e, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 68
  store i32 %i.dt, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.dx = load i16, ptr %i.dw, align 4
  %i.dy = load ptr, ptr %i.e, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 72
  store i16 %i.dx, ptr %i.dz, align 4
  %4 = lshr i64 9717, %.8.i.ph
  %5 = trunc i64 %4 to i8
  %i.ea = load ptr, ptr %i.e, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 82
  %6 = and i8 %5, 1
  store i8 %6, ptr %i.eb, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dr, i64 75
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = load ptr, ptr %i.e, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 83
  store i8 %i.ed, ptr %i.ef, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dr, i64 76
  %i.eh = load i8, ptr %i.eg, align 4
  %i.ei = load ptr, ptr %i.e, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 84
  store i8 %i.eh, ptr %i.ej, align 4
  %i.ek = load ptr, ptr %i.e, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 85
  store i8 0, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = load ptr, ptr %i.e, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  store i32 %i.en, ptr %i.ep, align 4
  %i.eq = shl nuw nsw i64 1, %.8.i.ph
  %i.er = and i64 %i.eq, 65023
  %.not71.not = icmp eq i64 %i.er, 0
  %.pre = load ptr, ptr %i.e, align 8             ; 3 uses
  br i1 %.not71.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.es = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.et = load i16, ptr %i.es, align 4
  %i.eu = icmp slt i16 %i.et, 0
  br i1 %i.eu, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.am, %bb.an
  %.pre.sink = phi ptr [ %i.dq, %bb.an ], [ %.pre, %bb.aq ], [ %i.dp, %bb.am ], [ %.pre, %bb.ap ]
  %.sink = phi i16 [ 0, %bb.an ], [ 0, %bb.aq ], [ 1, %bb.am ], [ 1, %bb.ap ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre.sink, i64 80
  store i16 %.sink, ptr %i.ev, align 4
  %i.ew = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 96 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %.not73 = icmp eq i32 %i.ey, 0
  br i1 %.not73, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 950, ptr %i.ex, align 4
  %.pre90 = load ptr, ptr %i.e, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ez = phi ptr [ %.pre90, %bb.as ], [ %i.ew, %bb.ar ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 76
  store i32 -1, ptr %i.fa, align 4
  %i.fb = load ptr, ptr %i.e, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 92
  store i8 1, ptr %i.fc, align 4
  %i.fd = load ptr, ptr %i.e, align 8             ; 2 uses
  switch i32 %3, label %bb.av [
    i32 3, label %.sink.split
    i32 2, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  br label %.sink.split

bb.av:                                            ; preds = %bb.at
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 72
  %i.ff = load i16, ptr %i.fe, align 4
  %i.fg = icmp sgt i16 %i.ff, 0
  br i1 %i.fg, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %bb.av
  %i.fh = icmp sgt i32 %2, 0
  br i1 %i.fh, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ax
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ax ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr @attrtypes, i64 %indvars.iv
  %i.fj = load ptr, ptr %i.fi, align 8            ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  %i.fl = load i16, ptr %i.fk, align 4
  %i.fm = icmp slt i16 %i.fl, 1
  br i1 %i.fm, label %._crit_edge.loopexit, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 86
  %i.fo = load i8, ptr %i.fn, align 2, !range !5, !noundef !6
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.ax, label %._crit_edge.loopexit

bb.ax:                                            ; preds = %bb.aw
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.sink.split, label %.lr.ph, !llvm.loop !13

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.aw
  %i.fq = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.fq, %._crit_edge.loopexit ]
  %i.fr = icmp eq i32 %.0.lcssa, %2
  br i1 %i.fr, label %.sink.split, label %bb.ay

.sink.split:                                      ; preds = %bb.ax, %._crit_edge, %bb.at, %bb.au
  %.sink109 = phi i8 [ 1, %bb.at ], [ 0, %bb.au ], [ 1, %._crit_edge ], [ 1, %bb.ax ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 86
  store i8 %.sink109, ptr %i.fs, align 2
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split, %._crit_edge, %bb.av
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @namestrcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @InsertOneTuple() local_unnamed_addr #6 {
bb.a:
  %i.a = tail call zeroext i1 @errstart(i32 noundef 11, ptr noundef null) #10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @numattr, align 4
  %i.c = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.24, i32 noundef %i.b) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 679, ptr noundef nonnull @__func__.InsertOneTuple) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr @numattr, align 4
  %i.e = tail call ptr @CreateTupleDesc(i32 noundef %i.d, ptr noundef nonnull @attrtypes) #10 ; 2 uses
  %i.f = tail call ptr @heap_form_tuple(ptr noundef %i.e, ptr noundef nonnull @values, ptr noundef nonnull @Nulls) #10 ; 2 uses
  tail call void @pfree(ptr noundef %i.e) #10
  %i.g = load ptr, ptr @boot_reldesc, align 8
  tail call void @simple_heap_insert(ptr noundef %i.g, ptr noundef %i.f) #10
  tail call void @heap_freetuple(ptr noundef %i.f) #10
  %i.h = tail call zeroext i1 @errstart(i32 noundef 11, ptr noundef null) #10
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.25) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @__func__.InsertOneTuple) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = load i32, ptr @numattr, align 4          ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.l = zext nneg i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @Nulls, i8 0, i64 %i.l, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.e
  ret void
}

declare ptr @CreateTupleDesc(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @heap_form_tuple(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @simple_heap_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @heap_freetuple(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @InsertOneValue(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 3 uses
  %i.g = alloca i8, align 1                       ; 3 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i16, align 2                      ; 3 uses
  %i.m = alloca i8, align 1                       ; 3 uses
  %i.n = alloca i8, align 1                       ; 3 uses
  %i.o = alloca i8, align 1                       ; 3 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #10
end_hunk_0
begin_hunk_1_@InsertOneValue:bb.a
  %i.db = tail call i64 @OidInputFunctionCall(i32 noundef %i.cz, ptr noundef %0, i32 noundef %i.da, i32 noundef -1) #10
  %i.dc = getelementptr inbounds [8 x i8], ptr @values, i64 %i.ad
  store i64 %i.db, ptr %i.dc, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %InsertOneProargdefaultsValue.exit
  %i.dd = call zeroext i1 @errstart(i32 noundef 11, ptr noundef null) #10
  br i1 %i.dd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.de = load i32, ptr %i.r, align 4
  %i.df = getelementptr inbounds [8 x i8], ptr @values, i64 %i.ad
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = call ptr @OidOutputFunctionCall(i32 noundef %i.de, i64 noundef %i.dg) #10
  %i.di = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.28, ptr noundef %i.dh) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 755, ptr noundef nonnull @__func__.InsertOneValue) #10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @boot_get_type_io_data(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef writeonly captures(none) %8) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @Typ, align 8              ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.preheader.preheader, label %.preheader70

.preheader.preheader:                             ; preds = %bb.a
  switch i32 %0, label %bb.d [
    i32 16, label %bb.e
    i32 17, label %.fold.split
    i32 18, label %.fold.split92
    i32 2275, label %.fold.split93
    i32 21, label %.fold.split94
    i32 23, label %.fold.split95
    i32 20, label %.fold.split96
    i32 700, label %.fold.split97
    i32 701, label %.fold.split98
    i32 19, label %.fold.split99
    i32 24, label %.fold.split100
    i32 25, label %.fold.split101
    i32 3802, label %.fold.split102
    i32 26, label %.fold.split103
    i32 1033, label %.fold.split104
    i32 194, label %.fold.split105
    i32 22, label %.fold.split106
    i32 30, label %.fold.split107
    i32 1007, label %.fold.split108
    i32 1009, label %.fold.split109
    i32 1028, label %.fold.split110
    i32 1002, label %.fold.split111
    i32 1034, label %.fold.split112
  ]

.preheader70:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not6273 = icmp sgt i32 %i.c, 0
  br i1 %.not6273, label %.lr.ph, label %.critedge.thread85

.lr.ph:                                           ; preds = %.preheader70
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %bb.c, !llvm.loop !15

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8              ; 10 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, %0
  br i1 %i.i, label %.critedge.thread.thread, label %bb.b

.critedge.thread:                                 ; preds = %bb.b
  %.pre = load i32, ptr %i.g, align 4
  %i.j = icmp eq i32 %.pre, %0
  br i1 %i.j, label %.critedge.thread.thread, label %.critedge.thread85

.critedge.thread85:                               ; preds = %.preheader70, %.critedge.thread
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.31, i32 noundef %0) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1035, ptr noundef nonnull @__func__.boot_get_type_io_data) #10
  unreachable

.critedge.thread.thread:                          ; preds = %bb.c, %.critedge.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.n = load i16, ptr %i.m, align 4
  store i16 %i.n, ptr %1, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 82
  %i.p = load i8, ptr %i.o, align 2, !range !5, !noundef !6
  store i8 %i.p, ptr %2, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  %i.r = load i8, ptr %i.q, align 4
  store i8 %i.r, ptr %3, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 87
  %i.t = load i8, ptr %i.s, align 1
  store i8 %i.t, ptr %4, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %.not65 = icmp eq i32 %i.v, 0
  %. = select i1 %.not65, i32 %0, i32 %i.v
  store i32 %., ptr %5, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.x = load i32, ptr %i.w, align 4
  store i32 %i.x, ptr %6, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.z = load i32, ptr %i.y, align 4
  store i32 %i.z, ptr %7, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 148
  br label %bb.h

bb.d:                                             ; preds = %.preheader.preheader
  %i.ab = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.ac = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.32, i32 noundef %0) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1064, ptr noundef nonnull @__func__.boot_get_type_io_data) #10
  unreachable

.fold.split:                                      ; preds = %.preheader.preheader
  br label %bb.e

.fold.split92:                                    ; preds = %.preheader.preheader
  br label %bb.e

.fold.split93:                                    ; preds = %.preheader.preheader
  br label %bb.e

.fold.split94:                                    ; preds = %.preheader.preheader
  br label %bb.e

.fold.split95:                                    ; preds = %.preheader.preheader
  br label %bb.e

.fold.split96:                                    ; preds = %.preheader.preheader
  br label %bb.e

.fold.split97:                                    ; preds = %.preheader.preheader
  br label %bb.e

.fold.split98:                                    ; preds = %.preheader.preheader
  br label %bb.e

.fold.split99:                                    ; preds = %.preheader.preheader
  br label %bb.e

.fold.split100:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split101:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split102:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split103:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split104:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split105:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split106:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split107:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split108:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split109:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split110:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split111:                                   ; preds = %.preheader.preheader
  br label %bb.e

.fold.split112:                                   ; preds = %.preheader.preheader
  br label %bb.e

bb.e:                                             ; preds = %.preheader.preheader, %.fold.split112, %.fold.split111, %.fold.split110, %.fold.split109, %.fold.split108, %.fold.split107, %.fold.split106, %.fold.split105, %.fold.split104, %.fold.split103, %.fold.split102, %.fold.split101, %.fold.split100, %.fold.split99, %.fold.split98, %.fold.split97, %.fold.split96, %.fold.split95, %.fold.split94, %.fold.split93, %.fold.split92, %.fold.split
  %.075.lcssa.wide = phi i64 [ 0, %.preheader.preheader ], [ 21, %.fold.split111 ], [ 1, %.fold.split ], [ 2, %.fold.split92 ], [ 3, %.fold.split93 ], [ 4, %.fold.split94 ], [ 5, %.fold.split95 ], [ 6, %.fold.split96 ], [ 7, %.fold.split97 ], [ 8, %.fold.split98 ], [ 9, %.fold.split99 ], [ 10, %.fold.split100 ], [ 11, %.fold.split101 ], [ 12, %.fold.split102 ], [ 13, %.fold.split103 ], [ 14, %.fold.split104 ], [ 15, %.fold.split105 ], [ 16, %.fold.split106 ], [ 17, %.fold.split107 ], [ 18, %.fold.split108 ], [ 19, %.fold.split109 ], [ 20, %.fold.split110 ], [ 22, %.fold.split112 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [92 x i8], ptr @TypInfo, i64 %.075.lcssa.wide ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load i16, ptr %i.ae, align 4
  store i16 %i.af, ptr %1, align 2
  %9 = lshr i64 9717, %.075.lcssa.wide
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, ptr %2, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 75
  %i.ah = load i8, ptr %i.ag, align 1
  store i8 %i.ah, ptr %3, align 1
  store i8 44, ptr %4, align 1
  %i.ai = shl nuw nsw i64 1, %.075.lcssa.wide
  %i.aj = and i64 %i.ai, 65023
  %.not59.not = icmp eq i64 %i.aj, 0
  br i1 %.not59.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 68
  %i.al = load i32, ptr %i.ak, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %storemerge = phi i32 [ %i.al, %bb.f ], [ %0, %bb.e ]
  store i32 %storemerge, ptr %5, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 84
  %i.an = load i32, ptr %i.am, align 4
  store i32 %i.an, ptr %6, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %7, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge.thread.thread
  %storemerge60.in = phi ptr [ %i.aq, %bb.g ], [ %i.aa, %.critedge.thread.thread ]
  %storemerge60 = load i32, ptr %storemerge60.in, align 4
  store i32 %storemerge60, ptr %8, align 4
  ret void
}

declare i64 @OidInputFunctionCall(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OidOutputFunctionCall(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @InsertOneNull(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call zeroext i1 @errstart(i32 noundef 11, ptr noundef null) #10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.29, i32 noundef %0) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 870, ptr noundef nonnull @__func__.InsertOneNull) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr @boot_reldesc, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = getelementptr i8, ptr %i.e, i64 %i.h
  %i.j = sext i32 %0 to i64                       ; 4 uses
  %i.k = getelementptr [100 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 118
  %i.m = load i8, ptr %i.l, align 2, !range !5, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.p = load ptr, ptr @boot_reldesc, align 8     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = getelementptr i8, ptr %i.r, i64 %i.u
  %i.w = getelementptr [100 x i8], ptr %i.v, i64 %i.j
  %i.x = getelementptr i8, ptr %i.w, i64 36
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.30, ptr noundef nonnull %i.x, ptr noundef nonnull %i.aa) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 876, ptr noundef nonnull @__func__.InsertOneNull) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds [8 x i8], ptr @values, i64 %i.j
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds i8, ptr @Nulls, i64 %i.j
  store i8 1, ptr %i.ad, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @boot_get_role_oid(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.40, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(18) @.str.41, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(17) @.str.42, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(18) @.str.43, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.44, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.45, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(18) @.str.46, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(20) @.str.47, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.48, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(22) @.str.49, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(26) @.str.50, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(18) @.str.51, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.52, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.53, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(28) @.str.54, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(23) @.str.55, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(28) @.str.56, ptr noundef nonnull dereferenceable(1) %0) #13
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ @RolInfo, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 16), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 32), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 48), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 64), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 80), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 96), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 112), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 128), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 144), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 160), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 176), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 192), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 208), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 224), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 240), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @RolInfo, i64 256), %bb.q ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.r
  %i.ak = phi i32 [ %i.aj, %bb.r ], [ 0, %bb.q ]
  ret i32 %i.ak
}

; Function Attrs: nounwind uwtable
define dso_local void @index_register(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @nogc, align 8             ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @AllocSetContextCreateInternal(ptr noundef null, ptr noundef nonnull @.str.33, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #10 ; 2 uses
  store ptr %i.c, ptr @nogc, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_1
