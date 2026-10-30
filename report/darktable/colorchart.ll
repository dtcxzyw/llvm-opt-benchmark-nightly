Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/colorchart?download=true
inline.NumInlined: 41
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@parse_cht:bb.a
  %1 = alloca %struct._GHashTableIter, align 8    ; 8 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 16 uses
  %i.g = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #13 ; 16 uses
  %i.h = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) ; 8 uses
  %.not = icmp eq ptr %i.h, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !26
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.1, ptr noundef %0) #14 ; 0 uses
  br label %.loopexit708

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.k = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef nonnull @g_free, ptr noundef nonnull @free) #12
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !18
  %i.m = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef nonnull @g_free, ptr noundef nonnull @free) #12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @g_str_equal, ptr noundef nonnull @g_free, ptr noundef nonnull @free_labels_list) #12
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !20
  %i.q = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef nonnull %i.h)
  %.not429856 = icmp eq ptr %i.q, null
  br i1 %.not429856, label %free_chart.exit.thread, label %.lr.ph865

.lr.ph865:                                        ; preds = %bb.c
  %i.r = ptrtoint ptr %i.a to i64                 ; 26 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph865, %.backedge
  %i.v = phi ptr [ %i.m, %.lr.ph865 ], [ %i.y, %.backedge ] ; 9 uses
  %.0411858 = phi i32 [ 0, %.lr.ph865 ], [ %.0411.be, %.backedge ] ; 9 uses
  %.0414857 = phi i32 [ 0, %.lr.ph865 ], [ %.0414.be, %.backedge ]
  %i.w = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0x00800000, float f0x00800000>, %.lr.ph865 ], [ %i.z, %.backedge ] ; 10 uses
  %i.x = load i8, ptr %i.a, align 16, !tbaa !27   ; 2 uses
  switch i8 %i.x, label %bb.e [
    i8 10, label %.backedge
    i8 0, label %.backedge
  ]

.backedge:                                        ; preds = %.thread, %bb.d, %bb.d, %bb.e, %.loopexit1004
  %i.y = phi ptr [ %i.v, %.loopexit1004 ], [ %i.v, %bb.e ], [ %i.v, %bb.d ], [ %i.v, %bb.d ], [ %.ph, %.thread ]
  %.0414.be = phi i32 [ 0, %.loopexit1004 ], [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %bb.d ], [ %.2416.ph, %.thread ]
  %.0411.be = phi i32 [ 6, %.loopexit1004 ], [ %.0411858, %bb.e ], [ %.0411858, %bb.d ], [ %.0411858, %bb.d ], [ %.2413.ph, %.thread ]
  %i.z = phi <4 x float> [ %i.w, %.loopexit1004 ], [ %i.w, %bb.e ], [ %i.w, %bb.d ], [ %i.w, %bb.d ], [ %i.rj, %.thread ]
  %i.aa = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef nonnull %i.h)
  %.not429 = icmp eq ptr %i.aa, null
  br i1 %.not429, label %free_chart.exit.thread, label %bb.d

bb.e:                                             ; preds = %bb.d
  %.not430 = icmp eq i32 %.0414857, 0
  br i1 %.not430, label %bb.f, label %.backedge

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15 ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i, %bb.f
  %i.ac = phi i8 [ %.pre, %.critedge.i ], [ %i.x, %bb.f ] ; 2 uses
  %.promoted18.i = phi ptr [ %i.ad, %.critedge.i ], [ %i.a, %bb.f ] ; 9 uses
  switch i8 %i.ac, label %.preheader.i [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.g, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted18.i, i64 1 ; 3 uses
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !29
  %.pre = load i8, ptr %i.ad, align 1, !tbaa !27
  br label %bb.g

.preheader.i:                                     ; preds = %bb.g, %bb.h
  %i.ae = phi i8 [ %.pre.i, %bb.h ], [ %i.ac, %bb.g ]
  %i.af = phi ptr [ %i.ag, %bb.h ], [ %.promoted18.i, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  switch i8 %i.ae, label %bb.h [
    i8 32, label %parse_string.exit
    i8 9, label %parse_string.exit
    i8 0, label %parse_string.exit
    i8 10, label %parse_string.exit
  ]

bb.h:                                             ; preds = %.preheader.i
  %.pre.i = load i8, ptr %i.ag, align 1, !tbaa !27
  br label %.preheader.i

parse_string.exit:                                ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  store ptr %i.ag, ptr %i.b, align 8, !tbaa !29
  store i8 0, ptr %i.af, align 1, !tbaa !27
  %i.ah = call i32 @g_strcmp0(ptr noundef nonnull %.promoted18.i, ptr noundef nonnull @.str.2) #12
  %i.ai = or i32 %i.ah, %.0411858
  %or.cond9 = icmp eq i32 %i.ai, 0
  br i1 %or.cond9, label %bb.i, label %bb.ay

bb.i:                                             ; preds = %parse_string.exit
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.r
  %.not443 = icmp slt i64 %i.al, %i.ab
  br i1 %.not443, label %.preheader703, label %.thread665

.preheader703:                                    ; preds = %bb.i, %.critedge.i488
  %i.am = phi ptr [ %i.ao, %.critedge.i488 ], [ %i.aj, %bb.i ] ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !27
  switch i8 %i.an, label %parse_double.exit [
    i8 32, label %.critedge.i488
    i8 9, label %.critedge.i488
  ]

.critedge.i488:                                   ; preds = %.preheader703, %.preheader703
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  store ptr %i.ao, ptr %i.b, align 8, !tbaa !29
  br label %.preheader703

parse_double.exit:                                ; preds = %.preheader703
  %i.ap = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.am, ptr noundef nonnull %i.b) #12
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !29
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -1
  store i8 0, ptr %i.ar, align 1, !tbaa !27
  %i.as = fptoui double %i.ap to i32
  %i.at = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 512, ptr noundef nonnull %i.h)
  %.not444820 = icmp eq ptr %i.at, null
  br i1 %.not444820, label %._crit_edge826, label %.lr.ph825

.lr.ph825:                                        ; preds = %parse_double.exit, %bb.aw
  %i.au = phi <4 x float> [ %i.ma, %bb.aw ], [ %i.w, %parse_double.exit ] ; 8 uses
  %i.av = load i8, ptr %i.a, align 16, !tbaa !27  ; 2 uses
  switch i8 %i.av, label %bb.j [
    i8 10, label %._crit_edge826
    i8 0, label %._crit_edge826
  ]

bb.j:                                             ; preds = %.lr.ph825
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.aw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #15 ; 18 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.ax = phi i8 [ %.pre952, %bb.l ], [ %i.av, %bb.j ] ; 4 uses
  %i.ay = phi ptr [ %i.az, %bb.l ], [ %i.a, %bb.j ] ; 4 uses
  switch i8 %i.ax, label %.thread651 [
    i8 32, label %bb.l
    i8 70, label %.preheader689
    i8 68, label %bb.o
    i8 88, label %bb.o
    i8 89, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.az, ptr %i.c, align 8, !tbaa !29
  %.pre952 = load i8, ptr %i.az, align 1, !tbaa !27
  br label %bb.k

.preheader689:                                    ; preds = %bb.k, %.preheader689
  %.pn = phi ptr [ %storemerge, %.preheader689 ], [ %i.ay, %bb.k ] ; 2 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.ba = load i8, ptr %storemerge, align 1, !tbaa !27
  switch i8 %i.ba, label %.thread651 [
    i8 32, label %.preheader689
    i8 95, label %.preheader688
  ]

.preheader688:                                    ; preds = %.preheader689
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !27  ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 32
  br i1 %i.bd, label %.lr.ph813, label %._crit_edge814

.lr.ph813:                                        ; preds = %.preheader688, %.lr.ph813
  %i.be = phi ptr [ %i.bf, %.lr.ph813 ], [ %i.bb, %.preheader688 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 3 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !27  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 32
  br i1 %i.bh, label %.lr.ph813, label %._crit_edge814

._crit_edge814:                                   ; preds = %.lr.ph813, %.preheader688
  %i.bi = phi i8 [ %i.bc, %.preheader688 ], [ %i.bg, %.lr.ph813 ]
  %.lcssa777 = phi ptr [ %i.bb, %.preheader688 ], [ %i.bf, %.lr.ph813 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa777, i64 1 ; 4 uses
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !29
  %.not463 = icmp eq i8 %i.bi, 95
  br i1 %.not463, label %.preheader687, label %.thread651

.preheader687:                                    ; preds = %._crit_edge814
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !27  ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 32
  br i1 %i.bl, label %.lr.ph817, label %._crit_edge818

.lr.ph817:                                        ; preds = %.preheader687, %.lr.ph817
  %i.bm = phi ptr [ %i.bn, %.lr.ph817 ], [ %i.bj, %.preheader687 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 4 uses
  store ptr %i.bn, ptr %i.c, align 8, !tbaa !29
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !27  ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 32
  br i1 %i.bp, label %.lr.ph817, label %._crit_edge818

._crit_edge818:                                   ; preds = %.lr.ph817, %.preheader687
  %i.bq = phi i8 [ %i.bk, %.preheader687 ], [ %i.bo, %.lr.ph817 ]
  %.lcssa778 = phi ptr [ %i.bj, %.preheader687 ], [ %i.bn, %.lr.ph817 ] ; 2 uses
  %i.br = ptrtoint ptr %.lcssa778 to i64
  %i.bs = sub i64 %i.br, %i.r
  %.not464 = icmp slt i64 %i.bs, %i.aw
  br i1 %.not464, label %.preheader686, label %.thread651

.preheader686:                                    ; preds = %._crit_edge818, %.critedge.i490
  %i.bt = phi i8 [ %.pre953, %.critedge.i490 ], [ %i.bq, %._crit_edge818 ]
  %i.bu = phi ptr [ %i.bv, %.critedge.i490 ], [ %.lcssa778, %._crit_edge818 ] ; 2 uses
  switch i8 %i.bt, label %parse_double.exit491 [
    i8 32, label %.critedge.i490
    i8 9, label %.critedge.i490
  ]

.critedge.i490:                                   ; preds = %.preheader686, %.preheader686
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 3 uses
  store ptr %i.bv, ptr %i.c, align 8, !tbaa !29
  %.pre953 = load i8, ptr %i.bv, align 1, !tbaa !27
  br label %.preheader686

parse_double.exit491:                             ; preds = %.preheader686
  %i.bw = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.c) #12
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -1
  store i8 0, ptr %i.by, align 1, !tbaa !27
  %i.bz = fptrunc reassoc nsz arcp contract afn double %i.bw to float ; 2 uses
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.r
  %.not465 = icmp slt i64 %i.cc, %i.aw
  br i1 %.not465, label %.preheader685, label %.thread651

.preheader685:                                    ; preds = %parse_double.exit491, %.critedge.i493
  %i.cd = phi ptr [ %i.cf, %.critedge.i493 ], [ %i.ca, %parse_double.exit491 ] ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !27
  switch i8 %i.ce, label %parse_double.exit494 [
    i8 32, label %.critedge.i493
    i8 9, label %.critedge.i493
  ]

.critedge.i493:                                   ; preds = %.preheader685, %.preheader685
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  store ptr %i.cf, ptr %i.c, align 8, !tbaa !29
  br label %.preheader685

parse_double.exit494:                             ; preds = %.preheader685
  %i.cg = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.c) #12
  %i.ch = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -1
  store i8 0, ptr %i.ci, align 1, !tbaa !27
  %i.cj = fptrunc reassoc nsz arcp contract afn double %i.cg to float ; 2 uses
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = sub i64 %i.cl, %i.r
  %.not466 = icmp slt i64 %i.cm, %i.aw
  br i1 %.not466, label %.preheader684, label %.thread651

.preheader684:                                    ; preds = %parse_double.exit494, %.critedge.i496
  %i.cn = phi ptr [ %i.cp, %.critedge.i496 ], [ %i.ck, %parse_double.exit494 ] ; 3 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !27
  switch i8 %i.co, label %parse_double.exit497 [
    i8 32, label %.critedge.i496
    i8 9, label %.critedge.i496
  ]

.critedge.i496:                                   ; preds = %.preheader684, %.preheader684
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  store ptr %i.cp, ptr %i.c, align 8, !tbaa !29
  br label %.preheader684

parse_double.exit497:                             ; preds = %.preheader684
  %i.cq = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.c) #12
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -1
  store i8 0, ptr %i.cs, align 1, !tbaa !27
  %i.ct = fptrunc reassoc nsz arcp contract afn double %i.cq to float ; 2 uses
  %i.cu = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = sub i64 %i.cv, %i.r
  %.not467 = icmp slt i64 %i.cw, %i.aw
  br i1 %.not467, label %.preheader683, label %.thread651

.preheader683:                                    ; preds = %parse_double.exit497, %.critedge.i499
  %i.cx = phi ptr [ %i.cz, %.critedge.i499 ], [ %i.cu, %parse_double.exit497 ] ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !27
  switch i8 %i.cy, label %parse_double.exit500 [
    i8 32, label %.critedge.i499
    i8 9, label %.critedge.i499
  ]

.critedge.i499:                                   ; preds = %.preheader683, %.preheader683
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 2 uses
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !29
  br label %.preheader683

parse_double.exit500:                             ; preds = %.preheader683
  %i.da = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.cx, ptr noundef nonnull %i.c) #12
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -1
  store i8 0, ptr %i.dc, align 1, !tbaa !27
  %i.dd = fptrunc reassoc nsz arcp contract afn double %i.da to float ; 2 uses
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.r
  %.not468 = icmp slt i64 %i.dg, %i.aw
  br i1 %.not468, label %.preheader682, label %.thread651

.preheader682:                                    ; preds = %parse_double.exit500, %.critedge.i502
  %i.dh = phi ptr [ %i.dj, %.critedge.i502 ], [ %i.de, %parse_double.exit500 ] ; 3 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !27
  switch i8 %i.di, label %parse_double.exit503 [
    i8 32, label %.critedge.i502
    i8 9, label %.critedge.i502
  ]

.critedge.i502:                                   ; preds = %.preheader682, %.preheader682
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 1 ; 2 uses
  store ptr %i.dj, ptr %i.c, align 8, !tbaa !29
  br label %.preheader682

parse_double.exit503:                             ; preds = %.preheader682
  %i.dk = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.dh, ptr noundef nonnull %i.c) #12
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -1
  store i8 0, ptr %i.dm, align 1, !tbaa !27
  %i.dn = fptrunc reassoc nsz arcp contract afn double %i.dk to float ; 2 uses
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.r
  %.not469 = icmp slt i64 %i.dq, %i.aw
  br i1 %.not469, label %.preheader, label %.thread651

.preheader:                                       ; preds = %parse_double.exit503, %.critedge.i505
  %i.dr = phi ptr [ %i.dt, %.critedge.i505 ], [ %i.do, %parse_double.exit503 ] ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !27
  switch i8 %i.ds, label %parse_double.exit506 [
    i8 32, label %.critedge.i505
    i8 9, label %.critedge.i505
  ]

.critedge.i505:                                   ; preds = %.preheader, %.preheader
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 1 ; 2 uses
  store ptr %i.dt, ptr %i.c, align 8, !tbaa !29
  br label %.preheader

parse_double.exit506:                             ; preds = %.preheader
  %i.du = call reassoc nsz arcp contract afn double @g_ascii_strtod(ptr noundef nonnull %i.dr, ptr noundef nonnull %i.c) #12
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -1
  store i8 0, ptr %i.dw, align 1, !tbaa !27
  %i.dx = fptrunc reassoc nsz arcp contract afn double %i.du to float ; 2 uses
  %i.dy = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.r
  %.not470 = icmp slt i64 %i.ea, %i.aw
  br i1 %.not470, label %bb.m, label %.thread651

bb.m:                                             ; preds = %parse_double.exit506
  %i.eb = call reassoc nsz arcp contract afn fastcc double @parse_double(ptr noundef %i.c)
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.r
  %.not471 = icmp slt i64 %i.ee, %i.aw
  br i1 %.not471, label %bb.n, label %.thread651

bb.n:                                             ; preds = %bb.m
  %i.ef = call reassoc nsz arcp contract afn fastcc double @parse_double(ptr noundef %i.c)
  %i.eg = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.cj, i64 1
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ej = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.au, %i.ei
  %i.ek = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.au, %i.ei
  %i.el = shufflevector <4 x i1> %i.ej, <4 x i1> %i.ek, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.em = insertelement <4 x double> poison, double %i.eb, i64 0
  %i.en = insertelement <4 x double> %i.em, double %i.ef, i64 1
  %i.eo = shufflevector <4 x double> %i.en, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ep = fptrunc <4 x double> %i.eo to <4 x float> ; 4 uses
  %i.eq = select <4 x i1> %i.el, <4 x float> %i.au, <4 x float> %i.ei ; 3 uses
  %i.er = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.dd, i64 1
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.eu = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.eq, %i.et
  %i.ev = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.eq, %i.et
  %i.ew = shufflevector <4 x i1> %i.eu, <4 x i1> %i.ev, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ex = select <4 x i1> %i.ew, <4 x float> %i.eq, <4 x float> %i.et ; 3 uses
  %i.ey = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %i.dx, i64 1
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.fb = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ex, %i.fa
  %i.fc = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ex, %i.fa
  %i.fd = shufflevector <4 x i1> %i.fb, <4 x i1> %i.fc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fe = select <4 x i1> %i.fd, <4 x float> %i.ex, <4 x float> %i.fa ; 3 uses
  %i.ff = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.fe, %i.ep
  %i.fg = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.fe, %i.ep
  %i.fh = shufflevector <4 x i1> %i.ff, <4 x i1> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fi = select <4 x i1> %i.fh, <4 x float> %i.fe, <4 x float> %i.ep
  %i.fj = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 8 uses
  store float %i.bz, ptr %i.fj, align 4, !tbaa !31
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store float %i.cj, ptr %i.fk, align 4, !tbaa !32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
end_hunk_0
