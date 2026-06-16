inline.NumInlined: 60
inline.NumDeleted: 22
begin_hunk_0_@load_regex_matcher:bb.a
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.11, i32 noundef %i.bj) #16
  call void @regex_list_done(ptr noundef %0)
  store i32 -1, ptr %i.b, align 8, !tbaa !8
  br label %functionality_level_check.exit.thread157

bb.y:                                             ; preds = %bb.v
  %i.bo = load i8, ptr %i.a, align 16, !tbaa !17  ; 2 uses
  %.not164 = icmp eq i8 %i.bo, 82
  br i1 %.not164, label %bb.aa, label %.thread125

bb.z:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm ; 2 uses
  store i8 47, ptr %i.bp, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store i8 0, ptr %i.bq, align 1, !tbaa !17
  %i.br = load i8, ptr %i.a, align 16, !tbaa !17  ; 3 uses
  %i.bs = and i8 %i.br, -2
  %or.cond7 = icmp eq i8 %i.bs, 88
  br i1 %or.cond7, label %bb.aa, label %.thread125

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bt = phi i8 [ %i.br, %bb.z ], [ 82, %bb.y ]
  %.not166 = icmp eq i8 %i.bt, 89
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bu = call ptr @cli_malloc(i64 noundef 80) #16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %find_regex_start.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.aa, %bb.al
  %.040.i.i = phi ptr [ %i.bv, %bb.al ], [ %i.bl, %bb.aa ] ; 7 uses
  %.038.i.i = phi ptr [ %.139.i.i, %bb.al ], [ null, %bb.aa ]
  %.036.i.i = phi ptr [ %.137.i.i, %bb.al ], [ %i.bu, %bb.aa ] ; 9 uses
  %.034.i.i = phi i64 [ %.135.i.i, %bb.al ], [ 10, %bb.aa ] ; 8 uses
  %.0.i.i = phi i64 [ %.1.i.i, %bb.al ], [ 0, %bb.aa ] ; 8 uses
  %i.bv = call fastcc ptr @getNextToken(ptr noundef nonnull %.040.i.i, ptr noundef %4) ; 3 uses
  %i.bw = load i8, ptr %i.l, align 8, !tbaa !62   ; 4 uses
  %.not48.i.i = icmp eq i8 %i.bw, 6
  br i1 %.not48.i.i, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i
  %i.bx = icmp eq i8 %i.bw, 4
  %i.by = load ptr, ptr %4, align 8               ; 2 uses
  %i.bz = icmp ne ptr %i.by, null
  %or.cond.i.i = select i1 %i.bx, i1 %i.bz, i1 false
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.ac

.thread.i.i:                                      ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.by) #16
  br label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  switch i8 %i.bw, label %bb.ai [
    i8 5, label %bb.ad
    i8 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac
  %.not50.i.i = icmp eq i64 %.0.i.i, 0
  br i1 %.not50.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ca = getelementptr [8 x i8], ptr %.036.i.i, i64 %.0.i.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8     ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !17
  %i.ce = icmp eq i8 %i.cd, 124
  br i1 %i.ce, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr %.040.i.i, ptr %i.cb, align 8, !tbaa !20
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.cf = add i64 %.0.i.i, 1                      ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.036.i.i, i64 %.0.i.i
  store ptr %.040.i.i, ptr %i.cg, align 8, !tbaa !20
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
end_hunk_0
begin_hunk_1_@regex_list_done:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52
  tail call fastcc void @destroy_tree_internal(ptr noundef nonnull %0, ptr noundef %i.aa)
  %i.ab = load i64, ptr %i.e, align 8, !tbaa !102 ; 2 uses
  %.not11.i = icmp eq i64 %i.ab, 0
  br i1 %.not11.i, label %destroy_tree.exit, label %stack_pop.exit.i

stack_pop.exit.i:                                 ; preds = %bb.e, %stack_pop.exit.thread.i
  %i.ac = phi i64 [ %i.ah, %stack_pop.exit.thread.i ], [ %i.ab, %bb.e ]
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.ae = add i64 %i.ac, -1                       ; 3 uses
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %.not9.i = icmp eq ptr %i.ag, null
  br i1 %.not9.i, label %stack_pop.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %stack_pop.exit.i
  tail call void @free(ptr noundef nonnull %i.ag) #16
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !102
  br label %stack_pop.exit.thread.i

stack_pop.exit.thread.i:                          ; preds = %bb.f, %stack_pop.exit.i
  %i.ah = phi i64 [ %i.ae, %stack_pop.exit.i ], [ %.pre.i, %bb.f ] ; 2 uses
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %destroy_tree.exit, label %stack_pop.exit.i, !llvm.loop !103

destroy_tree.exit:                                ; preds = %stack_pop.exit.thread.i, %bb.e
  store i32 0, ptr %i.k, align 4, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %destroy_tree.exit, %regex_list_cleanup.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !8
  %.not18 = icmp eq i32 %i.aj, 0
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ai, align 8, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  %.not.i19 = icmp eq ptr %i.ak, null
  br i1 %.not.i19, label %stack_destroy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.ak) #16
  br label %stack_destroy.exit

stack_destroy.exit:                               ; preds = %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %.not.i20 = icmp eq ptr %i.al, null
  br i1 %.not.i20, label %stack_destroy.exit21, label %bb.k

bb.k:                                             ; preds = %stack_destroy.exit
  tail call void @free(ptr noundef nonnull %i.al) #16
  br label %stack_destroy.exit21

stack_destroy.exit21:                             ; preds = %stack_destroy.exit, %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret void
}

declare void @cli_ac_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @is_regex_ok(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp ne i32 %i.b, -1
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @cl_retflevel() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #11

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @cli_strdup(ptr noundef) local_unnamed_addr #3

declare i32 @cli_ac_addpatt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cli_ac_buildtrie(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @getNextToken(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !17
  switch i8 %i.c, label %bb.av [
    i8 92, label %bb.b
    i8 124, label %bb.h
    i8 42, label %bb.i
    i8 43, label %bb.i
    i8 63, label %bb.i
    i8 123, label %bb.i
    i8 125, label %bb.i
    i8 91, label %bb.j
    i8 93, label %bb.aw
    i8 46, label %bb.as
    i8 40, label %bb.at
    i8 41, label %bb.au
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i8 0, ptr %i.d, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17    ; 3 uses
  store i8 %i.f, ptr %1, align 8, !tbaa !17
  %i.g = tail call ptr @__ctype_b_loc() #18
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = zext i8 %i.f to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !27
  %i.l = and i16 %i.k, 512
  %.not107 = icmp eq i16 %i.l, 0
  br i1 %.not107, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 1 dereferenceable(3) @__const.getNextToken.fmt, i64 3, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.m, align 1, !tbaa !17
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 1, ptr noundef nonnull %i.a) #16
  %.not108 = icmp eq i32 %i.n, 1
  br i1 %.not108, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 6, ptr %i.d, align 8, !tbaa !62
  store ptr %i.e, ptr %1, align 8, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.b, align 1, !tbaa !17
  store i8 %i.o, ptr %1, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.p, align 8, !tbaa !105
  br label %bb.aw

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 5, ptr %i.q, align 8, !tbaa !62
  br label %bb.aw

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 6, ptr %i.r, align 8, !tbaa !62
  br label %bb.aw

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.t = tail call ptr @cli_malloc(i64 noundef 32) #16 ; 10 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.thread121, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load i8, ptr %i.s, align 1, !tbaa !17
  %i.v = icmp eq i8 %i.u, 94
  br i1 %i.v, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.t, i8 -1, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.087 = phi ptr [ %i.w, %bb.l ], [ %i.s, %bb.m ] ; 2 uses
  %.pr = load i8, ptr %.087, align 1, !tbaa !17
  br label %bb.o

bb.o:                                             ; preds = %bb.ar, %bb.n
  %i.x = phi i8 [ %i.dv, %bb.ar ], [ %.pr, %bb.n ] ; 4 uses
  %.096 = phi i32 [ %.298, %bb.ar ], [ 0, %bb.n ] ; 2 uses
  %.094 = phi i8 [ %.195, %bb.ar ], [ 0, %bb.n ]  ; 3 uses
  %.188 = phi ptr [ %.4, %bb.ar ], [ %.087, %bb.n ] ; 8 uses
  %i.y = icmp eq i8 %i.x, 45
  %i.z = icmp ne i32 %.096, 0
  %or.cond = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.188, i64 1 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17  ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 91
  br i1 %i.ac, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %.188, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !17
  %i.af = icmp eq i8 %i.ae, 46
  br i1 %i.af, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %.188, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !17
  %i.ai = icmp eq i8 %i.ah, 45
  br i1 %i.ai, label %bb.s, label %.thread117.sink.split

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %.188, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.t, label %.thread117.sink.split

bb.t:                                             ; preds = %bb.s
  %i.am = getelementptr inbounds nuw i8, ptr %.188, i64 5
  %i.an = load i8, ptr %i.am, align 1, !tbaa !17
  %i.ao = icmp eq i8 %i.an, 93
  br i1 %i.ao, label %bb.u, label %.thread117.sink.split

bb.u:                                             ; preds = %bb.p, %bb.q, %bb.t
  %.090 = phi i8 [ 91, %bb.q ], [ 45, %bb.t ], [ %i.ab, %bb.p ] ; 2 uses
  %i.ap = zext i8 %.090 to i32                    ; 3 uses
  %.not105.not128 = icmp ult i8 %.094, %.090
  br i1 %.not105.not128, label %.lr.ph.preheader, label %thread-pre-split

.lr.ph.preheader:                                 ; preds = %bb.u
  %2 = zext i8 %.094 to i32                       ; 4 uses
  %i.aq = sub nsw i32 %i.ap, %2
  %xtraiter = and i32 %i.aq, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.089.prol = add nuw nsw i32 %2, 1              ; 3 uses
  %i.ar = and i32 %.089.prol, 7
  %i.as = shl nuw nsw i32 1, %i.ar
  %i.at = lshr i32 %.089.prol, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !17
  %i.ax = trunc nuw i32 %i.as to i8
  %i.ay = xor i8 %i.aw, %i.ax
  store i8 %i.ay, ptr %i.av, align 1, !tbaa !17
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.089.in129.unr = phi i32 [ %2, %.lr.ph.preheader ], [ %.089.prol, %.lr.ph.prol ]
  %i.az = add nsw i32 %i.ap, -1
  %i.ba = icmp eq i32 %i.az, %2
  br i1 %i.ba, label %thread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.089.in129 = phi i32 [ %.089.1.a, %.lr.ph ], [ %.089.in129.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.089 = add nuw nsw i32 %.089.in129, 1          ; 2 uses
  %i.bb = and i32 %.089, 7
  %i.bc = shl nuw nsw i32 1, %i.bb
  %i.bd = lshr i32 %.089, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !17
  %i.bh = trunc nuw i32 %i.bc to i8
  %i.bi = xor i8 %i.bg, %i.bh
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !17
  %.089.1.a = add nuw nsw i32 %.089.in129, 2      ; 4 uses
  %i.bj = and i32 %.089.1.a, 7
  %i.bk = shl nuw nsw i32 1, %i.bj
  %i.bl = lshr i32 %.089.1.a, 3
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !17
  %i.bp = trunc nuw i32 %i.bk to i8
  %i.bq = xor i8 %i.bo, %i.bp
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !17
  %exitcond132.not.1 = icmp eq i32 %.089.1.a, %i.ap
  br i1 %exitcond132.not.1, label %thread-pre-split, label %.lr.ph, !llvm.loop !106

bb.v:                                             ; preds = %bb.o
  %i.br = icmp eq i8 %i.x, 91
  br i1 %i.br, label %bb.w, label %bb.aq

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %.188, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = icmp eq i8 %i.bt, 58
  br i1 %i.bu, label %bb.x, label %bb.aq

bb.x:                                             ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %.188, i64 2 ; 15 uses
  %i.bw = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(1) @.str.21) #15 ; 2 uses
  %.not101 = icmp eq ptr %i.bw, null
  br i1 %.not101, label %.thread117.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  %sext = shl i64 %i.bz, 32
  %i.ca = ashr exact i64 %sext, 32                ; 12 uses
  %i.cb = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.24, i64 noundef %i.ca) #15
  %.not102 = icmp eq i32 %i.cb, 0
  br i1 %.not102, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.25, i64 noundef %i.ca) #15
  %.not102.1 = icmp eq i32 %i.cc, 0
  br i1 %.not102.1, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cd = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.26, i64 noundef %i.ca) #15
  %.not102.2 = icmp eq i32 %i.cd, 0
  br i1 %.not102.2, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.27, i64 noundef %i.ca) #15
  %.not102.3 = icmp eq i32 %i.ce, 0
  br i1 %.not102.3, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.28, i64 noundef %i.ca) #15
  %.not102.4 = icmp eq i32 %i.cf, 0
  br i1 %.not102.4, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.29, i64 noundef %i.ca) #15
  %.not102.5 = icmp eq i32 %i.cg, 0
  br i1 %.not102.5, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ch = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.30, i64 noundef %i.ca) #15
  %.not102.6 = icmp eq i32 %i.ch, 0
  br i1 %.not102.6, label %bb.ak, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ci = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.31, i64 noundef %i.ca) #15
  %.not102.7 = icmp eq i32 %i.ci, 0
  br i1 %.not102.7, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cj = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.32, i64 noundef %i.ca) #15
  %.not102.8 = icmp eq i32 %i.cj, 0
  br i1 %.not102.8, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ck = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.33, i64 noundef %i.ca) #15
  %.not102.9 = icmp eq i32 %i.ck, 0
  br i1 %.not102.9, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.34, i64 noundef %i.ca) #15
  %.not102.10 = icmp eq i32 %i.cl, 0
  br i1 %.not102.10, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cm = tail call i32 @strncmp(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.35, i64 noundef %i.ca) #15
  %.not102.11 = icmp eq i32 %i.cm, 0
  br i1 %.not102.11, label %bb.ak, label %.thread117.sink.split

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.0126.lcssa = phi i32 [ 0, %bb.y ], [ 1, %bb.z ], [ 2, %bb.aa ], [ 3, %bb.ab ], [ 4, %bb.ac ], [ 5, %bb.ad ], [ 6, %bb.ae ], [ 7, %bb.af ], [ 8, %bb.ag ], [ 9, %bb.ah ], [ 10, %bb.ai ], [ 11, %bb.aj ]
  %i.cn = shl nuw nsw i32 1, %.0126.lcssa         ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ap, %bb.ak
  %.1127 = phi i64 [ 0, %bb.ak ], [ %i.dl, %bb.ap ] ; 6 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr @char_class, i64 %.1127
  %i.cp = load i16, ptr %i.co, align 4, !tbaa !27
  %i.cq = zext i16 %i.cp to i32
  %i.cr = and i32 %i.cn, %i.cq
  %.not104 = icmp eq i32 %i.cr, 0
  br i1 %.not104, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = trunc nuw i64 %.1127 to i8
  %i.ct = and i8 %i.cs, 6
  %i.cu = shl nuw nsw i8 1, %i.ct
  %i.cv = lshr i64 %.1127, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.cv ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !17
  %i.cy = xor i8 %i.cx, %i.cu
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !17
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.cz = or disjoint i64 %.1127, 1               ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr @char_class, i64 %i.cz
  %i.db = load i16, ptr %i.da, align 2, !tbaa !27
  %i.dc = zext i16 %i.db to i32
  %i.dd = and i32 %i.cn, %i.dc
  %.not104.1 = icmp eq i32 %i.dd, 0
  br i1 %.not104.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.de = trunc nuw i64 %i.cz to i8
  %i.df = and i8 %i.de, 7
  %i.dg = shl nuw i8 1, %i.df
  %i.dh = lshr i64 %.1127, 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dh ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17
  %i.dk = xor i8 %i.dj, %i.dg
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !17
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.dl = add nuw nsw i64 %.1127, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dl, 256
  br i1 %exitcond.not.1, label %thread-pre-split, label %bb.al, !llvm.loop !107

bb.aq:                                            ; preds = %bb.w, %bb.v
  %i.dm = and i8 %i.x, 7
  %i.dn = shl nuw i8 1, %i.dm
  %i.do = lshr i8 %i.x, 3
  %i.dp = zext nneg i8 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.dp ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !17
  %i.ds = xor i8 %i.dr, %i.dn
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %.188, i64 1 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !17  ; 2 uses
  br label %bb.ar

thread-pre-split:                                 ; preds = %bb.ap, %.lr.ph.prol.loopexit, %.lr.ph, %bb.u
  %.298.ph = phi i32 [ 0, %bb.u ], [ 0, %.lr.ph.prol.loopexit ], [ 0, %.lr.ph ], [ %.096, %bb.ap ]
  %.4.ph = phi ptr [ %i.aa, %bb.u ], [ %i.aa, %.lr.ph.prol.loopexit ], [ %i.aa, %.lr.ph ], [ %i.bv, %bb.ap ] ; 2 uses
  %.pr120 = load i8, ptr %.4.ph, align 1, !tbaa !17
  br label %bb.ar

bb.ar:                                            ; preds = %thread-pre-split, %bb.aq
  %i.dv = phi i8 [ %.pr120, %thread-pre-split ], [ %i.du, %bb.aq ] ; 2 uses
  %.298 = phi i32 [ %.298.ph, %thread-pre-split ], [ 1, %bb.aq ]
  %.195 = phi i8 [ %.094, %thread-pre-split ], [ %i.du, %bb.aq ]
  %.4 = phi ptr [ %.4.ph, %thread-pre-split ], [ %i.dt, %bb.aq ] ; 2 uses
  %.not106 = icmp eq i8 %i.dv, 93
  br i1 %.not106, label %.thread117, label %bb.o, !llvm.loop !108

.thread117.sink.split:                            ; preds = %bb.aj, %bb.x, %bb.t, %bb.s, %bb.r
  %.str.23.sink = phi ptr [ @.str.22, %bb.x ], [ @.str.20, %bb.t ], [ @.str.20, %bb.r ], [ @.str.20, %bb.s ], [ @.str.23, %bb.aj ]
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull %.str.23.sink) #16
  br label %.thread117

.thread117:                                       ; preds = %bb.ar, %.thread117.sink.split
  %.5 = phi ptr [ %0, %.thread117.sink.split ], [ %.4, %bb.ar ]
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 4, ptr %i.dw, align 8, !tbaa !62
  store ptr %i.t, ptr %1, align 8, !tbaa !17
  br label %bb.aw

bb.as:                                            ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.dx, align 8, !tbaa !62
  br label %bb.aw

bb.at:                                            ; preds = %bb.a
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 2, ptr %i.dy, align 8, !tbaa !62
  br label %bb.aw

bb.au:                                            ; preds = %bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 3, ptr %i.dz, align 8, !tbaa !62
  br label %bb.aw

bb.av:                                            ; preds = %bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.ea, align 8, !tbaa !62
  %i.eb = load i8, ptr %0, align 1, !tbaa !17
  store i8 %i.eb, ptr %1, align 8, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 1, ptr %i.ec, align 8, !tbaa !105
  br label %bb.aw

bb.aw:                                            ; preds = %.thread117, %bb.a, %bb.av, %bb.au, %bb.at, %bb.as, %bb.i, %bb.h, %bb.g
  %.7 = phi ptr [ %0, %bb.av ], [ %i.e, %bb.g ], [ %0, %bb.h ], [ %0, %bb.i ], [ %.5, %.thread117 ], [ %0, %bb.a ], [ %0, %bb.as ], [ %0, %bb.at ], [ %0, %bb.au ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.7, i64 1
end_hunk_1
