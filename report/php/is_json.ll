Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/is_json?download=true
inline.NumInlined: 17
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@json_parse:bb.a

.lr.ph.preheader.i92:                             ; preds = %bb.p
  %i.az = ptrtoaddr ptr %storemerge.i49.pre.pre139 to i64
  %i.ba = sub i64 %i.ak, %i.az
  %scevgep.i93 = getelementptr i8, ptr %storemerge.i49.pre.pre139, i64 %i.ba
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %json_isspace.exit.i96, %.lr.ph.preheader.i92
  %.07.i95 = phi ptr [ %i.bc, %json_isspace.exit.i96 ], [ %storemerge.i49.pre.pre139, %.lr.ph.preheader.i92 ] ; 3 uses
  %i.bb = load i8, ptr %.07.i95, align 1, !tbaa !28
  switch i8 %i.bb, label %json_skip_space.exit98 [
    i8 32, label %json_isspace.exit.i96
    i8 10, label %json_isspace.exit.i96
    i8 13, label %json_isspace.exit.i96
    i8 9, label %json_isspace.exit.i96
  ]

json_isspace.exit.i96:                            ; preds = %.lr.ph.i94, %.lr.ph.i94, %.lr.ph.i94, %.lr.ph.i94
  %i.bc = getelementptr inbounds nuw i8, ptr %.07.i95, i64 1 ; 2 uses
  %exitcond.not.i97 = icmp eq ptr %i.bc, %1
  br i1 %exitcond.not.i97, label %json_skip_space.exit98, label %.lr.ph.i94, !llvm.loop !29

json_skip_space.exit98:                           ; preds = %.lr.ph.i94, %json_isspace.exit.i96, %bb.p
  %.0.lcssa.i91 = phi ptr [ %storemerge.i49.pre.pre139, %bb.p ], [ %scevgep.i93, %json_isspace.exit.i96 ], [ %.07.i95, %.lr.ph.i94 ] ; 5 uses
  %i.bd = icmp eq ptr %.0.lcssa.i91, %1
  br i1 %i.bd, label %json_parse_object.exit, label %bb.q

bb.q:                                             ; preds = %json_skip_space.exit98
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i91, i64 1
  store ptr %i.be, ptr %i.a, align 8, !tbaa !18
  %i.bf = load i8, ptr %.0.lcssa.i91, align 1, !tbaa !28
  %.not21.i = icmp eq i8 %i.bf, 58
  br i1 %.not21.i, label %bb.r, label %json_parse_object.exit.loopexit.split.loop.exit183

bb.r:                                             ; preds = %bb.q
  %i.bg = call fastcc i32 @json_parse(ptr noundef %i.a, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %i.al), !inline_history !34
  %.not22.i = icmp eq i32 %i.bg, 0
  %storemerge.i49.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %i.bh = icmp eq ptr %storemerge.i49.pre.pre, %1
  %or.cond202 = select i1 %.not22.i, i1 true, i1 %i.bh
  br i1 %or.cond202, label %json_parse_object.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge.i49.pre.pre, i64 1 ; 4 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !18
  %i.bj = load i8, ptr %storemerge.i49.pre.pre, align 1, !tbaa !28
  switch i8 %i.bj, label %bb.t [
    i8 44, label %bb.l
    i8 125, label %json_parse_object.exit
  ], !llvm.loop !35

bb.t:                                             ; preds = %bb.s
  store ptr %storemerge.i49.pre.pre, ptr %i.c, align 8, !tbaa !18
  br label %json_parse_object.exit

json_parse_object.exit.loopexit.split.loop.exit183: ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i91, i64 1
  br label %json_parse_object.exit

json_parse_object.exit.loopexit.split.loop.exit192: ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i99, i64 1
  br label %json_parse_object.exit

json_parse_object.exit:                           ; preds = %bb.s, %bb.r, %json_skip_space.exit98, %bb.o, %json_skip_space.exit106, %bb.l, %bb.m, %json_parse_object.exit.loopexit.split.loop.exit183, %json_parse_object.exit.loopexit.split.loop.exit192, %bb.t
  %storemerge.i49 = phi ptr [ %i.bi, %bb.t ], [ %i.bl, %json_parse_object.exit.loopexit.split.loop.exit192 ], [ %i.bk, %json_parse_object.exit.loopexit.split.loop.exit183 ], [ %storemerge.i49.pre.pre139, %bb.o ], [ %.0.lcssa.i99, %json_skip_space.exit106 ], [ %i.bi, %bb.s ], [ %i.am, %bb.l ], [ %storemerge.i49.pre.pre, %bb.r ], [ %.0.lcssa.i91, %json_skip_space.exit98 ], [ %i.av, %bb.m ]
  %.0.i48 = phi i32 [ 0, %bb.t ], [ 0, %json_parse_object.exit.loopexit.split.loop.exit192 ], [ 0, %json_parse_object.exit.loopexit.split.loop.exit183 ], [ 0, %bb.o ], [ 0, %json_skip_space.exit106 ], [ 1, %bb.s ], [ 0, %bb.l ], [ 0, %bb.r ], [ 0, %json_skip_space.exit98 ], [ 1, %bb.m ]
  store ptr %storemerge.i49, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %json_parse_const.exit

bb.u:                                             ; preds = %bb.c
  %i.bm = getelementptr i8, ptr %i.k, i64 4       ; 2 uses
  %i.bn = icmp ugt ptr %i.bm, %1
  %spec.select.i = select i1 %i.bn, ptr %1, ptr %i.bm
  store ptr %spec.select.i, ptr %i.c, align 8, !tbaa !18
  %i.bo = icmp ult ptr %i.n, %1
  br i1 %i.bo, label %bb.v, label %json_parse_const.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.bq = load i8, ptr %i.n, align 1, !tbaa !28
  %.not17.i = icmp eq i8 %i.bq, 114
  br i1 %.not17.i, label %bb.w, label %json_parse_const.exit.thread114

bb.w:                                             ; preds = %bb.v
  %i.br = icmp ult ptr %i.bp, %1
  br i1 %i.br, label %bb.x, label %json_parse_const.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !28
  %.not17.i.1 = icmp eq i8 %i.bt, 117
  br i1 %.not17.i.1, label %bb.y, label %json_parse_const.exit.thread114

bb.y:                                             ; preds = %bb.x
  %i.bu = icmp ult ptr %i.bs, %1
  br i1 %i.bu, label %bb.z, label %json_parse_const.exit.thread

bb.z:                                             ; preds = %bb.y
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !28
  %.not17.i.2 = icmp eq i8 %i.bv, 101
  br i1 %.not17.i.2, label %json_parse_const.exit.thread, label %json_parse_const.exit.thread114

bb.aa:                                            ; preds = %bb.c
  %i.bw = getelementptr i8, ptr %i.k, i64 5       ; 2 uses
  %i.bx = icmp ugt ptr %i.bw, %1
  %spec.select.i53 = select i1 %i.bx, ptr %1, ptr %i.bw
  store ptr %spec.select.i53, ptr %i.c, align 8, !tbaa !18
  %i.by = icmp ult ptr %i.n, %1
  br i1 %i.by, label %bb.ab, label %json_parse_const.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.ca = load i8, ptr %i.n, align 1, !tbaa !28
  %.not17.i59 = icmp eq i8 %i.ca, 97
  br i1 %.not17.i59, label %bb.ac, label %json_parse_const.exit.thread114

bb.ac:                                            ; preds = %bb.ab
  %i.cb = icmp ult ptr %i.bz, %1
  br i1 %i.cb, label %bb.ad, label %json_parse_const.exit.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  %i.cd = load i8, ptr %i.bz, align 1, !tbaa !28
  %.not17.i59.1 = icmp eq i8 %i.cd, 108
  br i1 %.not17.i59.1, label %bb.ae, label %json_parse_const.exit.thread114

bb.ae:                                            ; preds = %bb.ad
  %i.ce = icmp ult ptr %i.cc, %1
  br i1 %i.ce, label %bb.af, label %json_parse_const.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.cg = load i8, ptr %i.cc, align 1, !tbaa !28
  %.not17.i59.2 = icmp eq i8 %i.cg, 115
  br i1 %.not17.i59.2, label %bb.ag, label %json_parse_const.exit.thread114

bb.ag:                                            ; preds = %bb.af
  %i.ch = icmp ult ptr %i.cf, %1
  br i1 %i.ch, label %bb.ah, label %json_parse_const.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ci = load i8, ptr %i.cf, align 1, !tbaa !28
  %.not17.i59.3 = icmp eq i8 %i.ci, 101
  br i1 %.not17.i59.3, label %json_parse_const.exit.thread, label %json_parse_const.exit.thread114

bb.ai:                                            ; preds = %bb.c
  %i.cj = getelementptr i8, ptr %i.k, i64 4       ; 2 uses
  %i.ck = icmp ugt ptr %i.cj, %1
  %spec.select.i61 = select i1 %i.ck, ptr %1, ptr %i.cj
  store ptr %spec.select.i61, ptr %i.c, align 8, !tbaa !18
  %i.cl = icmp ult ptr %i.n, %1
  br i1 %i.cl, label %bb.aj, label %json_parse_const.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 2 ; 2 uses
  %i.cn = load i8, ptr %i.n, align 1, !tbaa !28
  %.not17.i67 = icmp eq i8 %i.cn, 117
  br i1 %.not17.i67, label %bb.ak, label %json_parse_const.exit.thread114

bb.ak:                                            ; preds = %bb.aj
  %i.co = icmp ult ptr %i.cm, %1
  br i1 %i.co, label %bb.al, label %json_parse_const.exit.thread

bb.al:                                            ; preds = %bb.ak
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  %i.cq = load i8, ptr %i.cm, align 1, !tbaa !28
  %.not17.i67.1 = icmp eq i8 %i.cq, 108
  br i1 %.not17.i67.1, label %bb.am, label %json_parse_const.exit.thread114

bb.am:                                            ; preds = %bb.al
  %i.cr = icmp ult ptr %i.cp, %1
  br i1 %i.cr, label %bb.an, label %json_parse_const.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.cs = load i8, ptr %i.cp, align 1, !tbaa !28
  %.not17.i67.2 = icmp eq i8 %i.cs, 108
  br i1 %.not17.i67.2, label %json_parse_const.exit.thread, label %json_parse_const.exit.thread114

bb.ao:                                            ; preds = %bb.c
  store ptr %i.k, ptr %i.c, align 8, !tbaa !18
  %i.ct = ptrtoaddr ptr %1 to i64                 ; 3 uses
  %i.cu = load i8, ptr %i.k, align 1, !tbaa !28
  %i.cv = icmp eq i8 %i.cu, 45
  %spec.select.idx.i = zext i1 %i.cv to i64
  %spec.select.i69 = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select.idx.i ; 5 uses
  %i.cw = icmp ult ptr %spec.select.i69, %1
  br i1 %i.cw, label %.lr.ph.preheader.i72, label %._crit_edge.i

.lr.ph.preheader.i72:                             ; preds = %bb.ao
  %i.cx = ptrtoaddr ptr %i.k to i64
  %i.cy = sub i64 %i.ct, %i.cx
  %scevgep.i73 = getelementptr i8, ptr %i.k, i64 %i.cy ; 2 uses
  %i.cz = load i8, ptr %spec.select.i69, align 1, !tbaa !28
  %i.da = add i8 %i.cz, -58
  %switch.i.peel.i = icmp ult i8 %i.da, -10
  br i1 %switch.i.peel.i, label %._crit_edge.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.preheader.i72
  %i.db = getelementptr inbounds nuw i8, ptr %spec.select.i69, i64 1 ; 2 uses
  %exitcond.peel.not.i = icmp eq ptr %i.db, %1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.ap, %bb.aq
  %.13857.i = phi ptr [ %i.de, %bb.aq ], [ %i.db, %bb.ap ] ; 3 uses
  %i.dc = load i8, ptr %.13857.i, align 1, !tbaa !28
  %i.dd = add i8 %i.dc, -58
  %switch.i.i = icmp ult i8 %i.dd, -10
  br i1 %switch.i.i, label %._crit_edge.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i74
  %i.de = getelementptr inbounds nuw i8, ptr %.13857.i, i64 1 ; 2 uses
  %exitcond.not.i74 = icmp eq ptr %i.de, %1
  br i1 %exitcond.not.i74, label %._crit_edge.i, label %.lr.ph.i74, !llvm.loop !36

._crit_edge.i:                                    ; preds = %bb.aq, %.lr.ph.i74, %bb.ap, %.lr.ph.preheader.i72, %bb.ao
  %.138.lcssa.i = phi ptr [ %spec.select.i69, %bb.ao ], [ %spec.select.i69, %.lr.ph.preheader.i72 ], [ %scevgep.i73, %bb.ap ], [ %.13857.i, %.lr.ph.i74 ], [ %scevgep.i73, %bb.aq ] ; 6 uses
  %.0.lcssa.i70 = phi i32 [ 0, %bb.ao ], [ 0, %.lr.ph.preheader.i72 ], [ 1, %bb.ap ], [ 1, %.lr.ph.i74 ], [ 1, %bb.aq ] ; 3 uses
  %.138.lcssa83.i = ptrtoaddr ptr %.138.lcssa.i to i64
  %i.df = icmp eq ptr %.138.lcssa.i, %1
  br i1 %i.df, label %json_parse_number.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge.i
  %i.dg = load i8, ptr %.138.lcssa.i, align 1, !tbaa !28
  %i.dh = icmp eq i8 %i.dg, 46
  %spec.select50.idx.i = zext i1 %i.dh to i64
  %spec.select50.i = getelementptr inbounds nuw i8, ptr %.138.lcssa.i, i64 %spec.select50.idx.i ; 5 uses
  %i.di = icmp ult ptr %spec.select50.i, %1
  br i1 %i.di, label %.lr.ph66.preheader.i, label %._crit_edge67.i

.lr.ph66.preheader.i:                             ; preds = %bb.ar
  %i.dj = sub i64 %i.ct, %.138.lcssa83.i
  %scevgep84.i = getelementptr i8, ptr %.138.lcssa.i, i64 %i.dj ; 2 uses
  %i.dk = load i8, ptr %spec.select50.i, align 1, !tbaa !28
  %i.dl = add i8 %i.dk, -58
  %switch.i52.peel.i = icmp ult i8 %i.dl, -10
  br i1 %switch.i52.peel.i, label %._crit_edge67.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph66.preheader.i
  %i.dm = getelementptr inbounds nuw i8, ptr %spec.select50.i, i64 1 ; 2 uses
  %exitcond85.peel.not.i = icmp eq ptr %i.dm, %1
  br i1 %exitcond85.peel.not.i, label %._crit_edge67.i, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %bb.as, %bb.at
  %.34063.i = phi ptr [ %i.dp, %bb.at ], [ %i.dm, %bb.as ] ; 3 uses
  %i.dn = load i8, ptr %.34063.i, align 1, !tbaa !28
  %i.do = add i8 %i.dn, -58
  %switch.i52.i = icmp ult i8 %i.do, -10
  br i1 %switch.i52.i, label %._crit_edge67.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph66.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.34063.i, i64 1 ; 2 uses
  %exitcond85.not.i = icmp eq ptr %i.dp, %1
  br i1 %exitcond85.not.i, label %._crit_edge67.i, label %.lr.ph66.i, !llvm.loop !38

._crit_edge67.i:                                  ; preds = %bb.at, %.lr.ph66.i, %bb.as, %.lr.ph66.preheader.i, %bb.ar
  %.340.lcssa.i = phi ptr [ %spec.select50.i, %bb.ar ], [ %spec.select50.i, %.lr.ph66.preheader.i ], [ %scevgep84.i, %bb.as ], [ %.34063.i, %.lr.ph66.i ], [ %scevgep84.i, %bb.at ] ; 6 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i70, %bb.ar ], [ %.0.lcssa.i70, %.lr.ph66.preheader.i ], [ 1, %bb.as ], [ 1, %.lr.ph66.i ], [ 1, %bb.at ] ; 2 uses
  %i.dq = icmp ne ptr %.340.lcssa.i, %1
  %i.dr = icmp ne i32 %.1.lcssa.i, 0
  %or.cond.i = and i1 %i.dq, %i.dr
  br i1 %or.cond.i, label %bb.au, label %json_parse_number.exit

bb.au:                                            ; preds = %._crit_edge67.i
  %i.ds = load i8, ptr %.340.lcssa.i, align 1, !tbaa !28
  switch i8 %i.ds, label %json_parse_number.exit [
    i8 101, label %bb.av
    i8 69, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.dt = getelementptr inbounds nuw i8, ptr %.340.lcssa.i, i64 1 ; 4 uses
  %i.du = icmp eq ptr %i.dt, %1
  br i1 %i.du, label %json_parse_number.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dv = load i8, ptr %i.dt, align 1, !tbaa !28
  switch i8 %i.dv, label %bb.ay [
    i8 43, label %bb.ax
    i8 45, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw
  %i.dw = getelementptr inbounds nuw i8, ptr %.340.lcssa.i, i64 2
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.4.i = phi ptr [ %i.dw, %bb.ax ], [ %i.dt, %bb.aw ] ; 7 uses
  %i.dx = icmp ult ptr %.4.i, %1
  br i1 %i.dx, label %.lr.ph76.preheader.i, label %json_parse_number.exit

.lr.ph76.preheader.i:                             ; preds = %bb.ay
  %.486.i = ptrtoaddr ptr %.4.i to i64
  %i.dy = sub i64 %i.ct, %.486.i
  %scevgep87.i = getelementptr i8, ptr %.4.i, i64 %i.dy ; 2 uses
  %i.dz = load i8, ptr %.4.i, align 1, !tbaa !28
  %i.ea = add i8 %i.dz, -58
  %switch.i55.peel.i = icmp ult i8 %i.ea, -10
  br i1 %switch.i55.peel.i, label %json_parse_number.exit, label %bb.az

bb.az:                                            ; preds = %.lr.ph76.preheader.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %exitcond.peel.not.i.a = icmp eq ptr %i.eb, %1
  br i1 %exitcond.peel.not.i.a, label %json_parse_number.exit, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %bb.az, %bb.ba
  %.573.i = phi ptr [ %i.ee, %bb.ba ], [ %i.eb, %bb.az ] ; 3 uses
  %i.ec = load i8, ptr %.573.i, align 1, !tbaa !28
  %i.ed = add i8 %i.ec, -58
  %switch.i55.i = icmp ult i8 %i.ed, -10
  br i1 %switch.i55.i, label %json_parse_number.exit, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph76.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.573.i, i64 1 ; 2 uses
  %exitcond.not.i71 = icmp eq ptr %i.ee, %1
  br i1 %exitcond.not.i71, label %json_parse_number.exit, label %.lr.ph76.i, !llvm.loop !39

json_parse_number.exit:                           ; preds = %.lr.ph76.i, %bb.ba, %._crit_edge.i, %._crit_edge67.i, %bb.au, %bb.av, %bb.ay, %.lr.ph76.preheader.i, %bb.az
  %.6.i = phi ptr [ %.138.lcssa.i, %._crit_edge.i ], [ %i.dt, %bb.av ], [ %.340.lcssa.i, %bb.au ], [ %.340.lcssa.i, %._crit_edge67.i ], [ %.4.i, %bb.ay ], [ %.4.i, %.lr.ph76.preheader.i ], [ %scevgep87.i, %bb.az ], [ %scevgep87.i, %bb.ba ], [ %.573.i, %.lr.ph76.i ]
  %.3.i = phi i32 [ %.0.lcssa.i70, %._crit_edge.i ], [ 0, %bb.av ], [ 1, %bb.au ], [ %.1.lcssa.i, %._crit_edge67.i ], [ 0, %bb.ay ], [ 0, %.lr.ph76.preheader.i ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %.lr.ph76.i ]
  store ptr %.6.i, ptr %i.c, align 8, !tbaa !18
  br label %json_parse_const.exit

json_parse_const.exit:                            ; preds = %json_parse_number.exit, %json_parse_object.exit, %json_parse_array.exit, %bb.d
  %.036 = phi i32 [ %.3.i, %json_parse_number.exit ], [ %i.p, %bb.d ], [ %.0.i, %json_parse_array.exit ], [ %.0.i48, %json_parse_object.exit ]
  %.0 = phi i64 [ 2, %json_parse_number.exit ], [ 4, %bb.d ], [ 0, %json_parse_array.exit ], [ 3, %json_parse_object.exit ]
  %.not = icmp eq i32 %.036, 0
  br i1 %.not, label %json_parse_const.exit.thread114, label %json_parse_const.exit.thread

json_parse_const.exit.thread:                     ; preds = %bb.an, %bb.ah, %bb.z, %bb.ai, %bb.ak, %bb.am, %bb.aa, %bb.ac, %bb.ae, %bb.ag, %bb.u, %bb.w, %bb.y, %json_parse_const.exit
  %.0112 = phi i64 [ %.0, %json_parse_const.exit ], [ 1, %bb.aa ], [ 1, %bb.u ], [ 1, %bb.ai ], [ 1, %bb.ah ], [ 1, %bb.y ], [ 1, %bb.w ], [ 1, %bb.ak ], [ 1, %bb.z ], [ 1, %bb.ag ], [ 1, %bb.ae ], [ 1, %bb.ac ], [ 1, %bb.am ], [ 1, %bb.an ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0112 ; 2 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !33
  %i.eh = add i64 %i.eg, 1
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !33
  br label %json_parse_const.exit.thread114

json_parse_const.exit.thread114:                  ; preds = %bb.aj, %bb.al, %bb.an, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.v, %bb.x, %bb.z, %json_parse_const.exit.thread, %json_parse_const.exit
  %.not43 = phi i1 [ false, %json_parse_const.exit.thread ], [ true, %json_parse_const.exit ], [ true, %bb.v ], [ true, %bb.ab ], [ true, %bb.z ], [ true, %bb.x ], [ true, %bb.ah ], [ true, %bb.af ], [ true, %bb.ad ], [ true, %bb.an ], [ true, %bb.al ], [ true, %bb.aj ]
  %.036111 = phi i32 [ 1, %json_parse_const.exit.thread ], [ 0, %json_parse_const.exit ], [ 0, %bb.v ], [ 0, %bb.ab ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %bb.ah ], [ 0, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.an ], [ 0, %bb.al ], [ 0, %bb.aj ]
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !18  ; 5 uses
  %i.ej = icmp ult ptr %i.ei, %1
  br i1 %i.ej, label %.lr.ph.preheader.i76, label %.loopexit

.lr.ph.preheader.i76:                             ; preds = %json_parse_const.exit.thread114
  %i.ek = ptrtoaddr ptr %1 to i64
  %i.el = ptrtoaddr ptr %i.ei to i64
  %i.em = sub i64 %i.ek, %i.el
  %scevgep.i77 = getelementptr i8, ptr %i.ei, i64 %i.em
  br label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %json_isspace.exit.i80, %.lr.ph.preheader.i76
  %.07.i79 = phi ptr [ %i.eo, %json_isspace.exit.i80 ], [ %i.ei, %.lr.ph.preheader.i76 ] ; 3 uses
  %i.en = load i8, ptr %.07.i79, align 1, !tbaa !28
  switch i8 %i.en, label %.loopexit [
    i8 32, label %json_isspace.exit.i80
    i8 10, label %json_isspace.exit.i80
    i8 13, label %json_isspace.exit.i80
    i8 9, label %json_isspace.exit.i80
  ]

json_isspace.exit.i80:                            ; preds = %.lr.ph.i78, %.lr.ph.i78, %.lr.ph.i78, %.lr.ph.i78
  %i.eo = getelementptr inbounds nuw i8, ptr %.07.i79, i64 1 ; 2 uses
  %exitcond.not.i81 = icmp eq ptr %i.eo, %1
  br i1 %exitcond.not.i81, label %.loopexit, label %.lr.ph.i78, !llvm.loop !29

.loopexit:                                        ; preds = %json_isspace.exit.i80, %.lr.ph.i78, %json_parse_const.exit.thread114
  %.0.lcssa.i75 = phi ptr [ %i.ei, %json_parse_const.exit.thread114 ], [ %scevgep.i77, %json_isspace.exit.i80 ], [ %.07.i79, %.lr.ph.i78 ] ; 4 uses
  store ptr %.0.lcssa.i75, ptr %i.c, align 8, !tbaa !18
  store ptr %.0.lcssa.i75, ptr %0, align 8, !tbaa !18
  %i.ep = icmp ne i64 %3, 0                       ; 2 uses
  %brmerge = or i1 %i.ep, %.not43
  %.036111.mux = select i1 %i.ep, i32 %.036111, i32 0
  br i1 %brmerge, label %.thread120, label %bb.bb

.thread:                                          ; preds = %json_skip_space.exit
  store ptr %i.k, ptr %0, align 8, !tbaa !18
  br label %.thread120

bb.bb:                                            ; preds = %.loopexit
  %i.eq = icmp eq ptr %.0.lcssa.i75, %1
  br i1 %i.eq, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.es = load i64, ptr %i.er, align 8, !tbaa !33
  %.not47 = icmp eq i64 %i.es, 0
  br i1 %.not47, label %bb.bd, label %.thread120

bb.bd:                                            ; preds = %bb.bc
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !33
  %i.ev = icmp ne i64 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  br label %.thread120

bb.be:                                            ; preds = %bb.bb
  %i.ex = load i8, ptr %i.k, align 1, !tbaa !28
  %i.ey = load i8, ptr %.0.lcssa.i75, align 1, !tbaa !28
  %i.ez = icmp eq i8 %i.ex, %i.ey
  br i1 %i.ez, label %bb.bf, label %.thread120

bb.bf:                                            ; preds = %bb.be
  %i.fa = call fastcc i32 @json_parse(ptr noundef %i.c, ptr noundef %1, ptr noundef %2, i64 noundef 1)
  %.not44 = icmp eq i32 %i.fa, 0
  br i1 %.not44, label %.thread120, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !33
  %.not45 = icmp eq i64 %i.fc, 0
  br i1 %.not45, label %bb.bh, label %.thread120

bb.bh:                                            ; preds = %bb.bg
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !33
  %.not46 = icmp eq i64 %i.fe, 0
  %i.ff = select i1 %.not46, i32 0, i32 2
  br label %.thread120

.thread120:                                       ; preds = %.loopexit, %.thread, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bc, %bb.bd, %bb.b
  %.037 = phi i32 [ 0, %.thread ], [ %i.ew, %bb.bd ], [ %i.ff, %bb.bh ], [ 0, %bb.b ], [ 0, %bb.be ], [ 1, %bb.bc ], [ 2, %bb.bg ], [ 0, %bb.bf ], [ %.036111.mux, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 %.037
}

declare hidden i32 @file_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @json_parse_string(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %i.b = icmp ult ptr %i.a, %1
  br i1 %i.b, label %.lr.ph, label %json_isxdigit.exit

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.01730 = phi ptr [ %i.a, %.lr.ph ], [ %.017.be, %.backedge ] ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01730, i64 1 ; 6 uses
  %i.e = load i8, ptr %.01730, align 1, !tbaa !28
  switch i8 %i.e, label %.backedge [
    i8 0, label %json_isxdigit.exit
    i8 92, label %bb.c
    i8 34, label %json_isxdigit.exit.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %i.d, %1
end_hunk_0
