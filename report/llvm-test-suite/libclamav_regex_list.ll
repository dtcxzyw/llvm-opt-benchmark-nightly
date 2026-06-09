inline.NumInlined: 60
inline.NumDeleted: 22
begin_hunk_0_@load_regex_matcher:bb.a
  %i.ch = icmp eq i64 %i.cf, %.034.i.i
  br i1 %i.ch, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.ci = add i64 %.034.i.i, 20                   ; 2 uses
  %i.cj = shl i64 %i.ci, 3
  %i.ck = call ptr @cli_realloc2(ptr noundef nonnull %.036.i.i, i64 noundef %i.cj) #16 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.ck, null
  br i1 %.not51.i.i, label %find_regex_start.exit.i, label %bb.al

bb.ai:                                            ; preds = %bb.ac, %.thread.i.i
  %i.cl = icmp eq i8 %i.bw, 3
  %i.cm = sext i1 %i.cl to i64
  %spec.select.i.i = add i64 %.0.i.i, %i.cm
  br label %bb.al

bb.aj:                                            ; preds = %.preheader.i.i
  %.not49.i.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not49.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cn = load ptr, ptr %.036.i.i, align 8, !tbaa !20
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.139.i.i = phi ptr [ %.040.i.i, %bb.af ], [ %.040.i.i, %bb.ah ], [ %.040.i.i, %bb.ag ], [ %.038.i.i, %bb.aj ], [ %.040.i.i, %bb.ai ], [ %i.cn, %bb.ak ] ; 2 uses
  %.137.i.i = phi ptr [ %.036.i.i, %bb.af ], [ %i.ck, %bb.ah ], [ %.036.i.i, %bb.ag ], [ %.036.i.i, %bb.aj ], [ %.036.i.i, %bb.ai ], [ %.036.i.i, %bb.ak ] ; 2 uses
  %.135.i.i = phi i64 [ %.034.i.i, %bb.af ], [ %i.ci, %bb.ah ], [ %.034.i.i, %bb.ag ], [ %.034.i.i, %bb.aj ], [ %.034.i.i, %bb.ai ], [ %.034.i.i, %bb.ak ]
  %.1.i.i = phi i64 [ %.0.i.i, %bb.af ], [ %.034.i.i, %bb.ah ], [ %i.cf, %bb.ag ], [ 0, %bb.aj ], [ %spec.select.i.i, %bb.ai ], [ %.0.i.i, %bb.ak ]
  %i.co = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.cp = icmp ne i8 %i.co, 0
  %i.cq = load i8, ptr %i.l, align 8
  %i.cr = icmp ne i8 %i.cq, 6
  %i.cs = select i1 %i.cp, i1 %i.cr, i1 false
  br i1 %i.cs, label %.preheader.i.i, label %bb.am, !llvm.loop !64

bb.am:                                            ; preds = %bb.al
  call void @free(ptr noundef %.137.i.i) #16
  %i.ct = load i8, ptr %i.bv, align 1, !tbaa !17
  %.not52.i.i = icmp eq i8 %i.ct, 0
  %.idx.i.i = zext i1 %.not52.i.i to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.139.i.i, i64 %.idx.i.i
  br label %find_regex_start.exit.i

find_regex_start.exit.i:                          ; preds = %bb.ah, %bb.am, %bb.aa
  %.041.i.i = phi ptr [ %i.cu, %bb.am ], [ null, %bb.aa ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %.in.v.i = select i1 %.not166, i64 16, i64 8
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i
  %i.cv = load ptr, ptr %.in.i, align 8, !tbaa !24 ; 3 uses
  store i64 0, ptr %i.n, align 8, !tbaa !53
  store i64 0, ptr %i.p, align 8, !tbaa !53
  %i.cw = load i64, ptr %i.q, align 8, !tbaa !54
  %i.cx = icmp eq i64 %i.cw, 0
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !55 ; 2 uses
  br i1 %i.cx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %find_regex_start.exit.i
  store i64 4096, ptr %i.q, align 8, !tbaa !54
  %i.cy = call ptr @cli_realloc2(ptr noundef %.pre.i.i, i64 noundef 32768) #16 ; 3 uses
  store ptr %i.cy, ptr %i.m, align 8, !tbaa !55
  %.not.i112.i = icmp eq ptr %i.cy, null
  br i1 %.not.i112.i, label %stack_push.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.an
  %.pre11.i.i = load i64, ptr %i.n, align 8, !tbaa !53
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge.i.i, %find_regex_start.exit.i
  %i.cz = phi i64 [ %.pre11.i.i, %._crit_edge.i.i ], [ 0, %find_regex_start.exit.i ] ; 2 uses
  %i.da = phi ptr [ %i.cy, %._crit_edge.i.i ], [ %.pre.i.i, %find_regex_start.exit.i ]
  %i.db = add i64 %i.cz, 1
  store i64 %i.db, ptr %i.n, align 8, !tbaa !53
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  store ptr %i.cv, ptr %i.dc, align 8, !tbaa !24
  br label %stack_push.exit.i

stack_push.exit.i:                                ; preds = %bb.ao, %bb.an
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !25
  %.not102196.i = icmp eq i32 %i.de, 4
  br i1 %.not102196.i, label %add_pattern.exit, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %stack_push.exit.i, %tree_node_char_binsearch.exit.i
  %i.df = phi ptr [ %i.pp, %tree_node_char_binsearch.exit.i ], [ %i.dd, %stack_push.exit.i ] ; 5 uses
  %.085198.i = phi ptr [ %i.di, %tree_node_char_binsearch.exit.i ], [ %i.bl, %stack_push.exit.i ] ; 4 uses
  %.088197.i = phi ptr [ %.492.i, %tree_node_char_binsearch.exit.i ], [ %i.cv, %stack_push.exit.i ] ; 26 uses
  %i.dg = icmp ult ptr %.085198.i, %.041.i.i
  br i1 %i.dg, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i109
  %i.dh = load i8, ptr %.085198.i, align 1, !tbaa !17
  %.not103.i = icmp eq i8 %i.dh, 0
  br i1 %.not103.i, label %.thread.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %.085198.i, ptr %5, align 8, !tbaa !17
  br label %.thread.i

bb.ar:                                            ; preds = %.lr.ph.i109
  %i.di = call fastcc ptr @getNextToken(ptr noundef %.085198.i, ptr noundef %5)
  %.pre.i = load i8, ptr %i.r, align 8, !tbaa !62 ; 2 uses
  switch i8 %.pre.i, label %tree_node_char_binsearch.exit.i [
    i8 0, label %bb.as
    i8 2, label %bb.bb
    i8 3, label %bb.bg
    i8 5, label %bb.bt
    i8 4, label %bb.bz
    i8 1, label %bb.cr
    i8 6, label %.thread.i.loopexit
    i8 7, label %.thread.i.loopexit
  ]

bb.as:                                            ; preds = %bb.ar
  %i.dj = load i8, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.dk = load i32, ptr %i.df, align 4, !tbaa !25
  %i.dl = icmp eq i32 %i.dk, 2                    ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.088197.i, i64 24 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !17 ; 4 uses
  %spec.select.idx.i.i = select i1 %i.dl, i64 8, i64 0
  %spec.select.i113.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 %spec.select.idx.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.088197.i, i64 16 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !33  ; 5 uses
  %.not2832.not.i.i = icmp sgt i8 %i.dp, 0
  br i1 %.not2832.not.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.as
  %i.dq = zext nneg i8 %i.dp to i32
  %i.dr = add nsw i32 %i.dq, -1
  %i.ds = sext i8 %i.dj to i32                    ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %.lr.ph.i.i
  %.0.i110 = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i111, %bb.au ]
  %.02233.i.i = phi i32 [ %i.dr, %.lr.ph.i.i ], [ %.224.i.i, %bb.au ] ; 2 uses
  %i.dt = phi i32 [ 0, %.lr.ph.i.i ], [ %i.eg, %bb.au ] ; 3 uses
  %i.du = sub nsw i32 %.02233.i.i, %i.dt
  %i.dv = lshr i32 %i.du, 1
  %i.dw = add nuw nsw i32 %i.dv, %i.dt            ; 3 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i113.i, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !24 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !29
  %i.ec = zext i8 %i.eb to i32                    ; 2 uses
  %.not29.i.i = icmp eq i32 %i.ec, %i.ds
  br i1 %.not29.i.i, label %tree_node_char_binsearch.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ed = icmp slt i32 %i.ec, %i.ds               ; 3 uses
  %i.ee = add nuw nsw i32 %i.dw, 1                ; 2 uses
  %i.ef = add nsw i32 %i.dw, -1
  %.1.i111 = select i1 %i.ed, i32 %i.ee, i32 %.0.i110 ; 2 uses
  %i.eg = select i1 %i.ed, i32 %i.ee, i32 %i.dt   ; 2 uses
  %.224.i.i = select i1 %i.ed, i32 %.02233.i.i, i32 %i.ef ; 2 uses
  %.not28.i.i = icmp sgt i32 %i.eg, %.224.i.i
  br i1 %.not28.i.i, label %.loopexit.i, label %bb.at

.loopexit.i:                                      ; preds = %bb.au, %bb.as
  %.2177.ph.i = phi i32 [ 0, %bb.as ], [ %.1.i111, %bb.au ] ; 2 uses
  br i1 %i.dl, label %bb.av, label %tree_node_get_children.exit.i.i.i

bb.av:                                            ; preds = %.loopexit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !24
  %.not.i.i.i.i = icmp eq ptr %i.ei, null
  %spec.select.i.i.i.i = select i1 %.not.i.i.i.i, ptr null, ptr %i.eh
  br label %tree_node_get_children.exit.i.i.i

tree_node_get_children.exit.i.i.i:                ; preds = %bb.av, %.loopexit.i
  %i.ej = phi ptr [ %spec.select.i.i.i.i, %bb.av ], [ %i.dn, %.loopexit.i ] ; 3 uses
  %i.ek = icmp eq i8 %i.dp, 0
  %i.el = icmp ne ptr %i.ej, null
  %or.cond.i.i.i = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond.i.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %tree_node_get_children.exit.i.i.i
  %i.em = load ptr, ptr %i.ej, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.em, null
  %spec.select.i.i.i = select i1 %.not.i.i.i, ptr %.088197.i, ptr %i.em
  br label %tree_get_next.exit.i.i

bb.ax:                                            ; preds = %tree_node_get_children.exit.i.i.i
  %i.en = icmp slt i8 %i.dp, 2
  br i1 %i.en, label %tree_get_next.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eo = load ptr, ptr %i.ej, align 8, !tbaa !24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !36
  br label %tree_get_next.exit.i.i

tree_get_next.exit.i.i:                           ; preds = %bb.ay, %bb.ax, %bb.aw
  %.0.i.i.i = phi ptr [ %i.ep, %bb.ay ], [ %spec.select.i.i.i, %bb.aw ], [ %.088197.i, %bb.ax ] ; 2 uses
  %i.eq = add i8 %i.dp, 1                         ; 2 uses
  store i8 %i.eq, ptr %i.do, align 8, !tbaa !33
  %i.er = sext i8 %i.eq to i64
  %i.es = zext i1 %i.dl to i64
  %i.et = add nsw i64 %i.er, %i.es
  %i.eu = shl nsw i64 %i.et, 3
  %i.ev = call ptr @cli_realloc2(ptr noundef %i.dn, i64 noundef %i.eu) #16 ; 3 uses
  store ptr %i.ev, ptr %i.dm, align 8, !tbaa !17
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ev) ]
  %i.ew = load i32, ptr %i.df, align 4, !tbaa !25
  %i.ex = icmp eq i32 %i.ew, 2
  %.idx.i116.i = select i1 %i.ex, i64 8, i64 0
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.idx.i116.i ; 2 uses
  %i.ez = call ptr @cli_malloc(i64 noundef 32) #16 ; 9 uses
  %.not.i33.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i33.i.i, label %tree_node_alloc.exit.thread.i.i, label %bb.az

bb.az:                                            ; preds = %tree_get_next.exit.i.i
  %i.fa = icmp eq ptr %.088197.i, %.0.i.i.i
  %i.fb = zext i1 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i8 0, ptr %i.fc, align 8, !tbaa !33
  store ptr %.0.i.i.i, ptr %i.ez, align 8, !tbaa !36
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 17
  store i8 %i.fb, ptr %i.fd, align 1, !tbaa !35
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store ptr null, ptr %i.fe, align 8, !tbaa !17
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !25
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i8 %i.dj, ptr %i.fg, align 8, !tbaa !29
  br label %tree_node_alloc.exit.thread.i.i

tree_node_alloc.exit.thread.i.i:                  ; preds = %bb.az, %tree_get_next.exit.i.i
  %i.fh = load i8, ptr %i.do, align 8, !tbaa !33
  %i.fi = sext i8 %i.fh to i32
  %i.fj = xor i32 %.2177.ph.i, -1
  %i.fk = add i32 %i.fi, %i.fj                    ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  %i.fm = zext nneg i32 %.2177.ph.i to i64        ; 2 uses
  br i1 %i.fl, label %bb.ba, label %tree_node_alloc.exit.thread._crit_edge.i.i

bb.ba:                                            ; preds = %tree_node_alloc.exit.thread.i.i
  %i.fn = getelementptr [8 x i8], ptr %i.ey, i64 %i.fm ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %i.fp = zext nneg i32 %i.fk to i64
  %i.fq = shl nuw nsw i64 %i.fp, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fo, ptr nonnull align 8 %i.fn, i64 %i.fq, i1 false)
  br label %tree_node_alloc.exit.thread._crit_edge.i.i

tree_node_alloc.exit.thread._crit_edge.i.i:       ; preds = %bb.ba, %tree_node_alloc.exit.thread.i.i
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fm
  store ptr %i.ez, ptr %i.fr, align 8, !tbaa !24
  br label %tree_node_char_binsearch.exit.i

bb.bb:                                            ; preds = %bb.ar
  %i.fs = load i64, ptr %i.p, align 8, !tbaa !53  ; 3 uses
  %i.ft = load i64, ptr %i.s, align 8, !tbaa !54
  %i.fu = icmp eq i64 %i.fs, %i.ft
  %.pre.i118.i = load ptr, ptr %i.o, align 8, !tbaa !55 ; 2 uses
  br i1 %i.fu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fv = add i64 %i.fs, 4096                     ; 2 uses
  store i64 %i.fv, ptr %i.s, align 8, !tbaa !54
  %i.fw = shl i64 %i.fv, 3
  %i.fx = call ptr @cli_realloc2(ptr noundef %.pre.i118.i, i64 noundef %i.fw) #16 ; 3 uses
  store ptr %i.fx, ptr %i.o, align 8, !tbaa !55
  %.not.i120.i = icmp eq ptr %i.fx, null
  br i1 %.not.i120.i, label %stack_push.exit123.i, label %._crit_edge.i121.i

._crit_edge.i121.i:                               ; preds = %bb.bc
  %.pre11.i122.i = load i64, ptr %i.p, align 8, !tbaa !53
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.i121.i, %bb.bb
  %i.fy = phi i64 [ %.pre11.i122.i, %._crit_edge.i121.i ], [ %i.fs, %bb.bb ] ; 2 uses
  %i.fz = phi ptr [ %i.fx, %._crit_edge.i121.i ], [ %.pre.i118.i, %bb.bb ]
  %i.ga = add i64 %i.fy, 1
  store i64 %i.ga, ptr %i.p, align 8, !tbaa !53
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fy
  store ptr null, ptr %i.gb, align 8, !tbaa !24
  br label %stack_push.exit123.i

stack_push.exit123.i:                             ; preds = %bb.bd, %bb.bc
  %i.gc = load i64, ptr %i.n, align 8, !tbaa !53  ; 3 uses
  %i.gd = load i64, ptr %i.q, align 8, !tbaa !54
  %i.ge = icmp eq i64 %i.gc, %i.gd
  %.pre.i124.i = load ptr, ptr %i.m, align 8, !tbaa !55 ; 2 uses
  br i1 %i.ge, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %stack_push.exit123.i
  %i.gf = add i64 %i.gc, 4096                     ; 2 uses
  store i64 %i.gf, ptr %i.q, align 8, !tbaa !54
  %i.gg = shl i64 %i.gf, 3
  %i.gh = call ptr @cli_realloc2(ptr noundef %.pre.i124.i, i64 noundef %i.gg) #16 ; 3 uses
  store ptr %i.gh, ptr %i.m, align 8, !tbaa !55
  %.not.i126.i = icmp eq ptr %i.gh, null
  br i1 %.not.i126.i, label %tree_node_char_binsearch.exit.i, label %._crit_edge.i127.i

._crit_edge.i127.i:                               ; preds = %bb.be
  %.pre11.i128.i = load i64, ptr %i.n, align 8, !tbaa !53
  br label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i127.i, %stack_push.exit123.i
  %i.gi = phi i64 [ %.pre11.i128.i, %._crit_edge.i127.i ], [ %i.gc, %stack_push.exit123.i ] ; 2 uses
  %i.gj = phi ptr [ %i.gh, %._crit_edge.i127.i ], [ %.pre.i124.i, %stack_push.exit123.i ]
  %i.gk = add i64 %i.gi, 1
  store i64 %i.gk, ptr %i.n, align 8, !tbaa !53
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gi
  store ptr %.088197.i, ptr %i.gl, align 8, !tbaa !24
  br label %tree_node_char_binsearch.exit.i

bb.bg:                                            ; preds = %bb.ar
  %i.gm = call ptr @cli_malloc(i64 noundef 32) #16 ; 19 uses
  %.not.i130.i = icmp eq ptr %i.gm, null
  br i1 %.not.i130.i, label %tree_node_alloc.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store i8 0, ptr %i.gn, align 8, !tbaa !33
  store ptr null, ptr %i.gm, align 8, !tbaa !36
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  store ptr null, ptr %i.go, align 8, !tbaa !17
  br label %tree_node_alloc.exit.i

tree_node_alloc.exit.i:                           ; preds = %bb.bh, %bb.bg
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  store i32 6, ptr %i.gp, align 4, !tbaa !25
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store i8 0, ptr %i.gq, align 8, !tbaa !29
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 17 ; 4 uses
  store i8 1, ptr %i.gr, align 1, !tbaa !35
  call fastcc void @tree_node_insert_nonbin(ptr noundef nonnull %.088197.i, ptr noundef %i.gm)
  %i.gs = load i64, ptr %i.p, align 8, !tbaa !53  ; 2 uses
  %.not.i131195.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i131195.i, label %stack_pop.exit.thread.i, label %stack_pop.exit.i

stack_pop.exit.i:                                 ; preds = %tree_node_alloc.exit.i, %tree_node_insert_nonbin.exit.i
  %i.gt = phi i64 [ %i.iw, %tree_node_insert_nonbin.exit.i ], [ %i.gs, %tree_node_alloc.exit.i ]
  %i.gu = load ptr, ptr %i.o, align 8, !tbaa !55
  %i.gv = add i64 %i.gt, -1                       ; 2 uses
  store i64 %i.gv, ptr %i.p, align 8, !tbaa !53
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.gv
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !24 ; 6 uses
  %.not109.i = icmp eq ptr %i.gx, null
  br i1 %.not109.i, label %stack_pop.exit.thread.i, label %bb.bi

bb.bi:                                            ; preds = %stack_pop.exit.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !25
  %i.ha = icmp eq i32 %i.gz, 2                    ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 24 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !17 ; 5 uses
  br i1 %i.ha, label %bb.bj, label %tree_node_get_children.exit.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !24
  %.not.i.i136.i = icmp eq ptr %i.he, null
  %spec.select.i.i137.i = select i1 %.not.i.i136.i, ptr null, ptr %i.hd
  br label %tree_node_get_children.exit.i.i

tree_node_get_children.exit.i.i:                  ; preds = %bb.bj, %bb.bi
  %i.hf = phi ptr [ %spec.select.i.i137.i, %bb.bj ], [ %i.hc, %bb.bi ] ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !33  ; 4 uses
  %.not.i132.i = icmp eq i8 %i.hh, 0
  br i1 %.not.i132.i, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %tree_node_get_children.exit.i.i
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !24
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !36 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.gx
  br i1 %i.hk, label %bb.bl, label %.preheader60.i.i

bb.bl:                                            ; preds = %bb.bk
  store i8 1, ptr %i.gr, align 1, !tbaa !35
  %i.hl = icmp sgt i8 %i.hh, 0
  br i1 %i.hl, label %.lr.ph.preheader.i.i, label %tree_node_insert_nonbin.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bl
  %wide.trip.count.i.i = zext nneg i8 %i.hh to i64 ; 2 uses
  %xtraiter427 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.hm = icmp ult i8 %i.hh, 4
  br i1 %i.hm, label %.lr.ph.i133.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 124
  br label %.lr.ph.i133.i

.lr.ph.i133.i:                                    ; preds = %.lr.ph.i133.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i133.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i133.i ]
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.i.i ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !24
  store ptr %i.gm, ptr %i.ho, align 8, !tbaa !36
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !24
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 17
  store i8 0, ptr %i.hq, align 1, !tbaa !35
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !24
  store ptr %i.gm, ptr %i.ht, align 8, !tbaa !36
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !24
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 17
  store i8 0, ptr %i.hv, align 1, !tbaa !35
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.i.i
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
end_hunk_0
