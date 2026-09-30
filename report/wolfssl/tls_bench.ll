Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/tls_bench?download=true
inline.NumInlined: 42
inline.NumDeleted: 17
begin_hunk_0_@bench_tls:bb.a
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  store ptr %i.av, ptr @myoptarg, align 8, !tbaa !20
  %i.aw = add nsw i32 %i.ah, 1
  store i32 %i.aw, ptr @myoptind, align 4, !tbaa !9
  br label %mygetopt.exit

bb.r:                                             ; preds = %bb.m
  store ptr @.str.33, ptr @myoptarg, align 8, !tbaa !20
  %i.ax = load i8, ptr %i.ak, align 1, !tbaa !71
  %.not46.i = icmp eq i8 %i.ax, 0
  br i1 %.not46.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.ak, ptr @myoptarg, align 8, !tbaa !20
  store ptr null, ptr @mygetopt.next, align 8, !tbaa !20
  br label %mygetopt.exit

bb.t:                                             ; preds = %bb.r
  %i.ay = icmp slt i32 %i.ah, %i.d
  br i1 %i.ay, label %bb.u, label %mygetopt.exit

bb.u:                                             ; preds = %bb.t
  %i.az = sext i32 %i.ah to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20 ; 3 uses
  %.not47.i = icmp eq ptr %i.bb, null
  br i1 %.not47.i, label %mygetopt.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !71
  %.not48.i = icmp eq i8 %i.bc, 45
  br i1 %.not48.i, label %mygetopt.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bb, ptr @myoptarg, align 8, !tbaa !20
  %i.bd = add nsw i32 %i.ah, 1
  store i32 %i.bd, ptr @myoptind, align 4, !tbaa !9
  br label %mygetopt.exit

mygetopt.exit:                                    ; preds = %bb.m, %bb.o, %bb.q, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w
  switch i8 %i.ai, label %bb.an [
    i8 -1, label %mygetopt.exit.thread
    i8 63, label %mygetopt.exit.thread257
    i8 115, label %bb.x
    i8 99, label %bb.y
    i8 104, label %bb.z
    i8 80, label %bb.aa
    i8 100, label %.lr.ph.backedge
    i8 101, label %bb.ab
    i8 103, label %bb.ad
    i8 105, label %bb.ae
    i8 108, label %bb.af
    i8 112, label %bb.ag
    i8 83, label %bb.ai
    i8 116, label %bb.aj
    i8 118, label %bb.ak
    i8 84, label %bb.al
    i8 109, label %bb.am
    i8 117, label %.lr.ph.backedge
  ]

.lr.ph.backedge:                                  ; preds = %mygetopt.exit, %mygetopt.exit, %bb.ag, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af, %bb.ae, %bb.ad, %bb.aa, %bb.z, %bb.y, %bb.x
  %.0169423.be = phi i32 [ %.0169423, %mygetopt.exit ], [ %.0169423, %bb.x ], [ %.0169423, %bb.y ], [ %.0169423, %bb.z ], [ %.0169423, %bb.aa ], [ 1, %bb.ad ], [ %.0169423, %bb.ae ], [ %.0169423, %bb.af ], [ %.0169423, %bb.ag ], [ %.0169423, %bb.ai ], [ %.0169423, %bb.aj ], [ %.0169423, %bb.ak ], [ %.0169423, %bb.al ], [ %.0169423, %bb.am ], [ %.0169423, %mygetopt.exit ]
  %.0171422.be = phi i32 [ %.0171422, %mygetopt.exit ], [ %.0171422, %bb.x ], [ %.0171422, %bb.y ], [ %.0171422, %bb.z ], [ %.0171422, %bb.aa ], [ %.0171422, %bb.ad ], [ %.0171422, %bb.ae ], [ %.0171422, %bb.af ], [ %.0171422, %bb.ag ], [ %.0171422, %bb.ai ], [ %.0171422, %bb.aj ], [ %.0171422, %bb.ak ], [ %.0171422, %bb.al ], [ 1, %bb.am ], [ %.0171422, %mygetopt.exit ]
  %.0175421.be = phi i32 [ %.0175421, %mygetopt.exit ], [ %.0175421, %bb.x ], [ %.0175421, %bb.y ], [ %.0175421, %bb.z ], [ %.0175421, %bb.aa ], [ %.0175421, %bb.ad ], [ 1, %bb.ae ], [ %.0175421, %bb.af ], [ %.0175421, %bb.ag ], [ %.0175421, %bb.ai ], [ %.0175421, %bb.aj ], [ %.0175421, %bb.ak ], [ %.0175421, %bb.al ], [ %.0175421, %bb.am ], [ %.0175421, %mygetopt.exit ]
  %.0177420.be = phi i32 [ %.0177420, %mygetopt.exit ], [ %.0177420, %bb.x ], [ %.0177420, %bb.y ], [ %.0177420, %bb.z ], [ %i.bh, %bb.aa ], [ %.0177420, %bb.ad ], [ %.0177420, %bb.ae ], [ %.0177420, %bb.af ], [ %.0177420, %bb.ag ], [ %.0177420, %bb.ai ], [ %.0177420, %bb.aj ], [ %.0177420, %bb.ak ], [ %.0177420, %bb.al ], [ %.0177420, %bb.am ], [ %.0177420, %mygetopt.exit ]
  %.0179419.be = phi ptr [ %.0179419, %mygetopt.exit ], [ %.0179419, %bb.x ], [ %.0179419, %bb.y ], [ %i.be, %bb.z ], [ %.0179419, %bb.aa ], [ %.0179419, %bb.ad ], [ %.0179419, %bb.ae ], [ %.0179419, %bb.af ], [ %.0179419, %bb.ag ], [ %.0179419, %bb.ai ], [ %.0179419, %bb.aj ], [ %.0179419, %bb.ak ], [ %.0179419, %bb.al ], [ %.0179419, %bb.am ], [ %.0179419, %mygetopt.exit ]
  %.0181418.be = phi i32 [ %.0181418, %mygetopt.exit ], [ 1, %bb.x ], [ %.0181418, %bb.y ], [ %.0181418, %bb.z ], [ %.0181418, %bb.aa ], [ %.0181418, %bb.ad ], [ %.0181418, %bb.ae ], [ %.0181418, %bb.af ], [ %.0181418, %bb.ag ], [ %.0181418, %bb.ai ], [ %.0181418, %bb.aj ], [ %.0181418, %bb.ak ], [ %.0181418, %bb.al ], [ %.0181418, %bb.am ], [ %.0181418, %mygetopt.exit ]
  %.0183417.be = phi i32 [ %.0183417, %mygetopt.exit ], [ %.0183417, %bb.x ], [ 1, %bb.y ], [ %.0183417, %bb.z ], [ %.0183417, %bb.aa ], [ %.0183417, %bb.ad ], [ %.0183417, %bb.ae ], [ %.0183417, %bb.af ], [ %.0183417, %bb.ag ], [ %.0183417, %bb.ai ], [ %.0183417, %bb.aj ], [ %.0183417, %bb.ak ], [ %.0183417, %bb.al ], [ %.0183417, %bb.am ], [ %.0183417, %mygetopt.exit ]
  %.0185416.be = phi i32 [ %.0185416, %mygetopt.exit ], [ %.0185416, %bb.x ], [ %.0185416, %bb.y ], [ %.0185416, %bb.z ], [ %.0185416, %bb.aa ], [ %.0185416, %bb.ad ], [ %.0185416, %bb.ae ], [ %.0185416, %bb.af ], [ %.0185416, %bb.ag ], [ %.0185416, %bb.ai ], [ %.0185416, %bb.aj ], [ 1, %bb.ak ], [ %.0185416, %bb.al ], [ %.0185416, %bb.am ], [ %.0185416, %mygetopt.exit ]
  %.0187415.be = phi i32 [ %.0187415, %mygetopt.exit ], [ %.0187415, %bb.x ], [ %.0187415, %bb.y ], [ %.0187415, %bb.z ], [ %.0187415, %bb.aa ], [ %.0187415, %bb.ad ], [ %.0187415, %bb.ae ], [ %.0187415, %bb.af ], [ %.0187415, %bb.ag ], [ %.0187415, %bb.ai ], [ %.0187415, %bb.aj ], [ %.0187415, %bb.ak ], [ %i.cb, %bb.al ], [ %.0187415, %bb.am ], [ %.0187415, %mygetopt.exit ]
  %.0189414.be = phi i32 [ %.0189414, %mygetopt.exit ], [ %.0189414, %bb.x ], [ %.0189414, %bb.y ], [ %.0189414, %bb.z ], [ %.0189414, %bb.aa ], [ %.0189414, %bb.ad ], [ %.0189414, %bb.ae ], [ %.0189414, %bb.af ], [ %.0189414, %bb.ag ], [ %i.bv, %bb.ai ], [ %.0189414, %bb.aj ], [ %.0189414, %bb.ak ], [ %.0189414, %bb.al ], [ %.0189414, %bb.am ], [ %.0189414, %mygetopt.exit ]
  %.0191413.be = phi i32 [ %.0191413, %mygetopt.exit ], [ %.0191413, %bb.x ], [ %.0191413, %bb.y ], [ %.0191413, %bb.z ], [ %.0191413, %bb.aa ], [ %.0191413, %bb.ad ], [ %.0191413, %bb.ae ], [ %.0191413, %bb.af ], [ %i.bp, %bb.ag ], [ %.0191413, %bb.ai ], [ %.0191413, %bb.aj ], [ %.0191413, %bb.ak ], [ %.0191413, %bb.al ], [ %.0191413, %bb.am ], [ %.0191413, %mygetopt.exit ]
  %.0193412.be = phi ptr [ %.0193412, %mygetopt.exit ], [ %.0193412, %bb.x ], [ %.0193412, %bb.y ], [ %.0193412, %bb.z ], [ %.0193412, %bb.aa ], [ %.0193412, %bb.ad ], [ %.0193412, %bb.ae ], [ %i.bm, %bb.af ], [ %.0193412, %bb.ag ], [ %.0193412, %bb.ai ], [ %.0193412, %bb.aj ], [ %.0193412, %bb.ak ], [ %.0193412, %bb.al ], [ %.0193412, %bb.am ], [ %.0193412, %mygetopt.exit ]
  %.0195411.be = phi i32 [ %.0195411, %mygetopt.exit ], [ %.0195411, %bb.x ], [ %.0195411, %bb.y ], [ %.0195411, %bb.z ], [ %.0195411, %bb.aa ], [ %.0195411, %bb.ad ], [ %.0195411, %bb.ae ], [ %.0195411, %bb.af ], [ %.0195411, %bb.ag ], [ %.0195411, %bb.ai ], [ %i.by, %bb.aj ], [ %.0195411, %bb.ak ], [ %.0195411, %bb.al ], [ %.0195411, %bb.am ], [ %.0195411, %mygetopt.exit ]
  br label %.lr.ph

mygetopt.exit.thread257:                          ; preds = %bb.p, %bb.l, %mygetopt.exit
  tail call fastcc void @Usage()
  br label %.critedge

bb.x:                                             ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.y:                                             ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.z:                                             ; preds = %mygetopt.exit
  %i.be = load ptr, ptr @myoptarg, align 8, !tbaa !20
  br label %.lr.ph.backedge

bb.aa:                                            ; preds = %mygetopt.exit
  %i.bf = load ptr, ptr @myoptarg, align 8, !tbaa !20
  %i.bg = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bf, ptr noundef null, i32 noundef 10) #16, !inline_history !64
  %i.bh = trunc i64 %i.bg to i32
  br label %.lr.ph.backedge

bb.ab:                                            ; preds = %mygetopt.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.bi = call i32 @wolfSSL_get_ciphers(ptr noundef nonnull %i.a, i32 noundef 4096) #16
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.ac, label %ShowCiphers.exit

bb.ac:                                            ; preds = %bb.ab
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.a) #17 ; 0 uses
  br label %ShowCiphers.exit

ShowCiphers.exit:                                 ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.critedge

bb.ad:                                            ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.ae:                                            ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.af:                                            ; preds = %mygetopt.exit
  %i.bm = load ptr, ptr @myoptarg, align 8, !tbaa !20
  br label %.lr.ph.backedge

bb.ag:                                            ; preds = %mygetopt.exit
  %i.bn = load ptr, ptr @myoptarg, align 8, !tbaa !20
  %i.bo = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bn, ptr noundef null, i32 noundef 10) #16, !inline_history !64
  %i.bp = trunc i64 %i.bo to i32                  ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 16384
  br i1 %i.bq, label %bb.ah, label %.lr.ph.backedge

bb.ah:                                            ; preds = %bb.ag
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.2, i32 noundef %i.bp) #17 ; 0 uses
  tail call fastcc void @Usage()
  br label %.critedge

bb.ai:                                            ; preds = %mygetopt.exit
  %i.bt = load ptr, ptr @myoptarg, align 8, !tbaa !20
  %i.bu = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bt, ptr noundef null, i32 noundef 10) #16, !inline_history !64
  %i.bv = trunc i64 %i.bu to i32
  br label %.lr.ph.backedge

bb.aj:                                            ; preds = %mygetopt.exit
  %i.bw = load ptr, ptr @myoptarg, align 8, !tbaa !20
  %i.bx = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bw, ptr noundef null, i32 noundef 10) #16, !inline_history !64
  %i.by = trunc i64 %i.bx to i32
  br label %.lr.ph.backedge

bb.ak:                                            ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.al:                                            ; preds = %mygetopt.exit
  %i.bz = load ptr, ptr @myoptarg, align 8, !tbaa !20
  %i.ca = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.bz, ptr noundef null, i32 noundef 10) #16, !inline_history !64
  %i.cb = trunc i64 %i.ca to i32
  br label %.lr.ph.backedge

bb.am:                                            ; preds = %mygetopt.exit
  br label %.lr.ph.backedge

bb.an:                                            ; preds = %mygetopt.exit
  tail call fastcc void @Usage()
  br label %.critedge

mygetopt.exit.thread.sink.split:                  ; preds = %.thread1.i, %bb.i, %bb.k
  %.sink = phi ptr [ %i.af, %bb.k ], [ %i.x, %bb.i ], [ null, %.thread1.i ]
  store ptr %.sink, ptr @myoptarg, align 8, !tbaa !20
  br label %mygetopt.exit.thread

mygetopt.exit.thread:                             ; preds = %mygetopt.exit, %mygetopt.exit.thread.sink.split, %bb.j
  store i32 0, ptr @myoptind, align 4, !tbaa !9
  %.not229 = icmp eq ptr %.0193412, null
  %i.cc = insertelement <4 x i32> poison, i32 %.0191413, i64 0
  %i.cd = insertelement <4 x i32> %i.cc, i32 %.0189414, i64 1
  %i.ce = insertelement <4 x i32> %i.cd, i32 %.0195411, i64 2
  %i.cf = insertelement <4 x i32> %i.ce, i32 %.0175421, i64 3 ; 2 uses
  br i1 %.not229, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %mygetopt.exit.thread.thread, %mygetopt.exit.thread
  %.0169297713 = phi i32 [ 0, %mygetopt.exit.thread.thread ], [ %.0169423, %mygetopt.exit.thread ]
  %.0171306711 = phi i32 [ 0, %mygetopt.exit.thread.thread ], [ %.0171422, %mygetopt.exit.thread ] ; 2 uses
  %.0177325707 = phi i32 [ 11112, %mygetopt.exit.thread.thread ], [ %.0177420, %mygetopt.exit.thread ]
  %.0179334705 = phi ptr [ @.str, %mygetopt.exit.thread.thread ], [ %.0179419, %mygetopt.exit.thread ]
  %.0181343703 = phi i32 [ 0, %mygetopt.exit.thread.thread ], [ %.0181418, %mygetopt.exit.thread ] ; 2 uses
  %.0183353701 = phi i32 [ 0, %mygetopt.exit.thread.thread ], [ %.0183417, %mygetopt.exit.thread ]
  %.0185362698 = phi i32 [ 0, %mygetopt.exit.thread.thread ], [ %.0185416, %mygetopt.exit.thread ]
  %.0187372696 = phi i32 [ 1, %mygetopt.exit.thread.thread ], [ %.0187415, %mygetopt.exit.thread ]
  %i.cg = phi <4 x i32> [ <i32 16384, i32 131072, i32 1, i32 0>, %mygetopt.exit.thread.thread ], [ %i.cf, %mygetopt.exit.thread ]
  %i.ch = tail call ptr @wolfSSL_Malloc(i64 noundef 4096) #16 ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cj = tail call i32 @wolfSSL_get_ciphers(ptr noundef nonnull %i.ch, i32 noundef 4096) #16 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %mygetopt.exit.thread, %bb.ap
  %.0169297712 = phi i32 [ %.0169297713, %bb.ap ], [ %.0169423, %mygetopt.exit.thread ]
  %.0171306710 = phi i32 [ %.0171306711, %bb.ap ], [ %.0171422, %mygetopt.exit.thread ] ; 6 uses
  %.0177325706 = phi i32 [ %.0177325707, %bb.ap ], [ %.0177420, %mygetopt.exit.thread ] ; 2 uses
  %.0179334704 = phi ptr [ %.0179334705, %bb.ap ], [ %.0179419, %mygetopt.exit.thread ]
  %.0181343702 = phi i32 [ %.0181343703, %bb.ap ], [ %.0181418, %mygetopt.exit.thread ] ; 9 uses
  %.0183353700 = phi i32 [ %.0183353701, %bb.ap ], [ %.0183417, %mygetopt.exit.thread ] ; 3 uses
  %.0185362697 = phi i32 [ %.0185362698, %bb.ap ], [ %.0185416, %mygetopt.exit.thread ] ; 3 uses
  %.0187372695 = phi i32 [ %.0187372696, %bb.ap ], [ %.0187415, %mygetopt.exit.thread ]
  %.0201 = phi ptr [ %i.ch, %bb.ap ], [ %.0193412, %mygetopt.exit.thread ]
  %.0199 = phi ptr [ %i.ch, %bb.ap ], [ null, %mygetopt.exit.thread ] ; 5 uses
  %i.ck = phi <4 x i32> [ %i.cg, %bb.ap ], [ %i.cf, %mygetopt.exit.thread ]
  %.not230 = icmp eq i32 %.0169297712, 0          ; 4 uses
  br i1 %.not230, label %bb.bf, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cl = tail call ptr @wolfTLSv1_3_client_method() #16
  %i.cm = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.cl) #16 ; 3 uses
  %.not.i253 = icmp eq ptr %i.cm, null            ; 2 uses
  br i1 %.not.i253, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cn = tail call ptr @wolfSSL_new(ptr noundef nonnull %i.cm) #16 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  %spec.select36.i = sext i1 %i.co to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.023.i = phi ptr [ null, %bb.ar ], [ %i.cn, %bb.as ] ; 4 uses
  %.1.i = phi i32 [ -1, %bb.ar ], [ %spec.select36.i, %bb.as ] ; 3 uses
  %i.cp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @groups, i64 8), align 8, !tbaa !73
  %.not3137.i = icmp eq ptr %i.cp, null
  br i1 %.not3137.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.at
  %.not34.i = icmp eq i32 %.0185362697, 0
  br i1 %.not34.i, label %.lr.ph.split.us.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.i, %bb.ax
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i, %bb.ax ], [ 0, %.lr.ph.i ] ; 2 uses
  %.239.us.us.i = phi i32 [ %.4.us.us.i, %bb.ax ], [ %.1.i, %.lr.ph.i ]
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr @groups, i64 %indvars.iv50.i ; 2 uses
  %i.cr = icmp eq i32 %.239.us.us.i, 0
  br i1 %i.cr, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %.lr.ph.split.us.split.us.i
  %i.cs = load i16, ptr %i.cq, align 16, !tbaa !74
  %i.ct = tail call i32 @wolfSSL_UseKeyShare(ptr noundef %.023.i, i16 noundef zeroext %i.cs) #16 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cv = and i32 %i.ct, -2
  %or.cond.us.us.i = icmp eq i32 %i.cv, -174
  br i1 %or.cond.us.us.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i16 0, ptr %i.cq, align 16, !tbaa !74
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %.lr.ph.split.us.split.us.i
  %.4.us.us.i = phi i32 [ -1, %.lr.ph.split.us.split.us.i ], [ 0, %bb.aw ], [ -1, %bb.av ], [ 0, %bb.au ] ; 2 uses
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @groups, i64 %indvars.iv.next51.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !73
  %.not31.us.us.i = icmp eq ptr %i.cy, null
  br i1 %.not31.us.us.i, label %._crit_edge.i, label %.lr.ph.split.us.split.us.i, !llvm.loop !65

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i, %bb.bb
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bb ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.cz = phi ptr [ %i.dj, %bb.bb ], [ getelementptr inbounds nuw (i8, ptr @groups, i64 8), %.lr.ph.i ]
  %.239.i = phi i32 [ %.4.i, %bb.bb ], [ %.1.i, %.lr.ph.i ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr @groups, i64 %indvars.iv.i ; 2 uses
  %i.db = icmp eq i32 %.239.i, 0
  br i1 %i.db, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %.lr.ph.split.split.i
  %i.dc = load i16, ptr %i.da, align 16, !tbaa !74
  %i.dd = tail call i32 @wolfSSL_UseKeyShare(ptr noundef %.023.i, i16 noundef zeroext %i.dc) #16 ; 2 uses
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %.sink.split.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.df = and i32 %i.dd, -2
  %or.cond.i = icmp eq i32 %i.df, -174
  br i1 %or.cond.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i16 0, ptr %i.da, align 16, !tbaa !74
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ba, %bb.ay
  %.str.51.sink.i = phi ptr [ @.str.52, %bb.ba ], [ @.str.51, %bb.ay ]
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !73
  %i.dh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.51.sink.i, ptr noundef %i.dg) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split.i, %bb.az, %.lr.ph.split.split.i
  %.4.i = phi i32 [ -1, %.lr.ph.split.split.i ], [ -1, %bb.az ], [ 0, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [16 x i8], ptr @groups, i64 %indvars.iv.next.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !73
  %.not31.i = icmp eq ptr %i.dk, null
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.split.split.i, !llvm.loop !65

._crit_edge.i:                                    ; preds = %bb.bb, %bb.ax, %bb.at
  %.2.lcssa.i = phi i32 [ %.1.i, %bb.at ], [ %.4.us.us.i, %bb.ax ], [ %.4.i, %bb.bb ]
  %.not32.i = icmp eq ptr %.023.i, null
  br i1 %.not32.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.i
  tail call void @wolfSSL_free(ptr noundef nonnull %.023.i) #16
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %._crit_edge.i
  br i1 %.not.i253, label %SetupSupportedGroups.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  tail call void @wolfSSL_CTX_free(ptr noundef nonnull %i.cm) #16
  br label %SetupSupportedGroups.exit

SetupSupportedGroups.exit:                        ; preds = %bb.bd, %bb.be
  %.not231 = icmp eq i32 %.2.lcssa.i, 0
  br i1 %.not231, label %bb.bf, label %.critedge

bb.bf:                                            ; preds = %SetupSupportedGroups.exit, %bb.aq
  %.not1002 = icmp eq i32 %.0181343702, 0         ; 3 uses
  %.not1003 = icmp eq i32 %.0183353700, 0         ; 3 uses
  %i.dl = or i32 %.0181343702, %.0183353700
  %or.cond.not = icmp eq i32 %i.dl, 0
  %spec.select = select i1 %or.cond.not, i32 %.0187372695, i32 1 ; 8 uses
  %i.dm = sext i32 %spec.select to i64
  %i.dn = mul nsw i64 %i.dm, 33368                ; 2 uses
  %i.do = tail call ptr @wolfSSL_Malloc(i64 noundef %i.dn) #16 ; 13 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.critedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.do, i8 0, i64 %i.dn, i1 false)
  %i.dq = icmp eq i32 %.0181343702, 0
  %4 = icmp ne i32 %.0171306710, 0
  %or.cond3 = or i1 %i.dq, %4
  br i1 %or.cond3, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dr = call fastcc i32 @SetupSocketAndListen(ptr noundef nonnull %i.b, i32 noundef %.0177325706)
  %.not232 = icmp eq i32 %i.dr, 0
  br i1 %.not232, label %bb.bi, label %.critedge

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.ds = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.3, i64 26, i64 1, ptr %i.ds) #18 ; 0 uses
  %.not236 = icmp eq i32 %.0185362697, 0          ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.du = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.dv = or i32 %.0181343702, %.0183353700
  %or.cond5.not = icmp eq i32 %i.dv, 0            ; 2 uses
  %i.dw = icmp slt i32 %spec.select, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count = zext nneg i32 %spec.select to i64
  %wide.trip.count629 = zext nneg i32 %spec.select to i64
  %brmerge = or i1 %.not236, %i.dw
  %wide.trip.count634 = zext nneg i32 %spec.select to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count639 = zext nneg i32 %spec.select to i64
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.thread
  %.1202491 = phi ptr [ %.0201, %bb.bi ], [ %i.iw, %.thread ] ; 6 uses
  %.1208490 = phi i32 [ 0, %bb.bi ], [ %.6, %.thread ] ; 3 uses
  %i.eh = load i8, ptr %.1202491, align 1, !tbaa !71
  %.not234 = icmp eq i8 %i.eh, 0
  br i1 %.not234, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ei = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1202491, i32 noundef 58) #19 ; 3 uses
  %.not235 = icmp eq ptr %i.ei, null              ; 2 uses
  br i1 %.not235, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %.1202491 to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = getelementptr inbounds i8, ptr %.1202491, i64 %i.el
  store i8 0, ptr %i.em, align 1, !tbaa !71
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %.not236, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.eo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.en, ptr noundef nonnull @.str.4, ptr noundef nonnull %.1202491) #17 ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @groups, i64 8), align 8, !tbaa !73 ; 2 uses
  %.not237480 = icmp eq ptr %i.ep, null
  br i1 %.not237480, label %.thread, label %.lr.ph484

.lr.ph484:                                        ; preds = %bb.bo
  %i.eq = load i32, ptr %i.b, align 4
  %.pre = load i16, ptr %i.dt, align 8, !tbaa !31
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph484, %bb.da
  %i.er = phi i16 [ %.pre, %.lr.ph484 ], [ %i.is, %bb.da ] ; 2 uses
  %indvars.iv641 = phi i64 [ 0, %.lr.ph484 ], [ %indvars.iv.next642, %bb.da ] ; 2 uses
  %i.es = phi ptr [ %i.ep, %.lr.ph484 ], [ %i.iv, %bb.da ]
  %.2209481 = phi i32 [ %.1208490, %.lr.ph484 ], [ %.5, %bb.da ] ; 4 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr @groups, i64 %indvars.iv641 ; 2 uses
  %i.eu = icmp eq i16 %i.er, 0
  %spec.select249 = select i1 %i.eu, ptr @.str.5, ptr %i.es ; 4 uses
  br i1 %.not230, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ev = load i16, ptr %i.et, align 16, !tbaa !74
  %i.ew = icmp eq i16 %i.ev, 0
  br i1 %i.ew, label %bb.da, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.du, label %.lr.ph439, label %._crit_edge440.thread

.lr.ph439:                                        ; preds = %bb.br, %bb.cg
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.cg ], [ 0, %bb.br ] ; 3 uses
  %.3210436 = phi i32 [ %.4, %bb.cg ], [ %.2209481, %bb.br ]
  %i.ex = getelementptr inbounds nuw [33368 x i8], ptr %i.do, i64 %indvars.iv ; 18 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33360) %i.ey, i8 0, i64 33360, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store ptr %.0179334704, ptr %i.ez, align 8, !tbaa !32
  %i.fa = trunc nuw nsw i64 %indvars.iv to i32
  %i.fb = add i32 %.0177325706, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !33
  store ptr %.1202491, ptr %i.ex, align 8, !tbaa !34
  br i1 %.not230, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph439
  %i.fd = load ptr, ptr %i.do, align 8, !tbaa !34
  %i.fe = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.fd, ptr noundef nonnull dereferenceable(6) @.str.6, i64 noundef 5) #19
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.fg = load i16, ptr %i.et, align 16, !tbaa !74
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i16 %i.fg, ptr %i.fh, align 8, !tbaa !31
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph439, %bb.bs, %bb.bt
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ex, i64 28
  store <4 x i32> %i.ck, ptr %i.fi, align 4, !tbaa !9
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ex, i64 44
  store i32 %.0185362697, ptr %i.fj, align 4, !tbaa !35
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  store i32 %i.eq, ptr %i.fk, align 8, !tbaa !36
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  store i32 -1, ptr %i.fl, align 8, !tbaa !37
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ex, i64 68
  store i32 -1, ptr %i.fm, align 4, !tbaa !38
  br i1 %.not1003, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 33280
  store i32 1, ptr %i.fn, align 8, !tbaa !39
  %i.fo = call fastcc i32 @bench_tls_client(ptr noundef nonnull %i.ex)
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bu
  br i1 %.not1002, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fp = call fastcc i32 @bench_tls_server(ptr noundef nonnull %i.ex)
  br label %bb.cg

bb.by:                                            ; preds = %bb.bw
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 76
  store i32 %.0171306710, ptr %i.fq, align 4, !tbaa !40
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ex, i64 16584
  %i.fs = call i32 @wolfSSL_CondInit(ptr noundef nonnull %i.fr) #16 ; 3 uses
  %.not243 = icmp eq i32 %i.fs, 0
  br i1 %.not243, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ft = tail call ptr @__errno_location() #20
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !9
  %i.fu = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.fv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fu, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2224, i32 noundef %i.fs, ptr noundef nonnull @.str.9) #17 ; 0 uses
  call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ex, i64 33184
  %i.fx = call i32 @wolfSSL_CondInit(ptr noundef nonnull %i.fw) #16 ; 3 uses
  %.not244 = icmp eq i32 %i.fx, 0
  br i1 %.not244, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fy = tail call ptr @__errno_location() #20
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !9
  %i.fz = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ga = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fz, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2225, i32 noundef %i.fx, ptr noundef nonnull @.str.11) #17 ; 0 uses
  call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.gb = call i32 @wolfSSL_NewThreadNoJoin(ptr noundef nonnull @server_thread, ptr noundef nonnull %i.ex) #16 ; 3 uses
  %.not245 = icmp eq i32 %i.gb, 0
  br i1 %.not245, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gc = tail call ptr @__errno_location() #20
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !9
  %i.gd = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ge = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gd, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2228, i32 noundef %i.gb, ptr noundef nonnull @.str.12) #17 ; 0 uses
  call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.gf = call i32 @wolfSSL_NewThreadNoJoin(ptr noundef nonnull @client_thread, ptr noundef nonnull %i.ex) #16 ; 3 uses
  %.not246 = icmp eq i32 %i.gf, 0
  br i1 %.not246, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gg = tail call ptr @__errno_location() #20
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !9
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.gi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gh, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 2230, i32 noundef %i.gf, ptr noundef nonnull @.str.13) #17 ; 0 uses
  call fastcc void @err_sys(ptr noundef nonnull @.str.10) #21
  unreachable

bb.cg:                                            ; preds = %bb.ce, %bb.bv, %bb.bx
  %.4 = phi i32 [ %i.fo, %bb.bv ], [ %i.fp, %bb.bx ], [ %.3210436, %bb.ce ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge440, label %.lr.ph439, !llvm.loop !66

._crit_edge440:                                   ; preds = %bb.cg
  br i1 %or.cond5.not, label %.lr.ph445.us, label %bb.cn

._crit_edge440.thread:                            ; preds = %bb.br
  br i1 %or.cond5.not, label %.split449.us, label %.critedge251.thread

.critedge251.thread:                              ; preds = %._crit_edge440.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ed, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, i8 0, i64 32, i1 false)
  br label %bb.cs

.lr.ph445.us:                                     ; preds = %._crit_edge440, %.lr.ph445.us.backedge
  %indvars.iv626 = phi i64 [ %indvars.iv626.be, %.lr.ph445.us.backedge ], [ 0, %._crit_edge440 ] ; 2 uses
  %.0173443.us = phi i32 [ %.0173443.us.be, %.lr.ph445.us.backedge ], [ 1, %._crit_edge440 ]
  %i.gj = getelementptr inbounds nuw [33368 x i8], ptr %i.do, i64 %indvars.iv626 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 33272
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !41
  %.not240.us = icmp eq i32 %i.gl, 0
  br i1 %.not240.us, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph445.us
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 16672
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !42
  %.not241.us = icmp eq i32 %i.gn, 0
  br i1 %.not241.us, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch, %.lr.ph445.us
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) @__const.bench_tls.tv, i64 16, i1 false)
  %i.go = call i32 @select(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #16
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.gq = tail call ptr @__errno_location() #20
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !9
  %.not242.us = icmp eq i32 %i.gr, 4
  br i1 %.not242.us, label %bb.ck, label %.split.us

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ch
  %.1174.us = phi i32 [ %.0173443.us, %bb.ch ], [ 0, %bb.ck ] ; 2 uses
  %indvars.iv.next627 = add nuw nsw i64 %indvars.iv626, 1 ; 2 uses
  %exitcond630.not = icmp eq i64 %indvars.iv.next627, %wide.trip.count629
  br i1 %exitcond630.not, label %._crit_edge446.us, label %.lr.ph445.us.backedge

.lr.ph445.us.backedge:                            ; preds = %bb.cl, %._crit_edge446.us
  %indvars.iv626.be = phi i64 [ %indvars.iv.next627, %bb.cl ], [ 0, %._crit_edge446.us ]
  %.0173443.us.be = phi i32 [ %.1174.us, %bb.cl ], [ 1, %._crit_edge446.us ]
  br label %.lr.ph445.us, !llvm.loop !67

._crit_edge446.us:                                ; preds = %bb.cl
  %.not238.us = icmp eq i32 %.1174.us, 0
  br i1 %.not238.us, label %.lr.ph445.us.backedge, label %.split449.us

.split.us:                                        ; preds = %bb.cj
  call fastcc void @err_sys(ptr noundef nonnull @.str.14) #21
  unreachable

.split449.us:                                     ; preds = %._crit_edge446.us, %._crit_edge440.thread
  %.3210.lcssa717719 = phi i32 [ %.2209481, %._crit_edge440.thread ], [ %.4, %._crit_edge446.us ] ; 2 uses
  br i1 %.not236, label %.critedge251, label %bb.cm

bb.cm:                                            ; preds = %.split449.us
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite239 = call i64 @fwrite(ptr nonnull @.str.15, i64 18, i64 1, ptr %i.gs) #18 ; 0 uses
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %._crit_edge440
  %.3210.lcssa716 = phi i32 [ %.4, %._crit_edge440 ], [ %.3210.lcssa717719, %bb.cm ] ; 2 uses
  br i1 %brmerge, label %.critedge251, label %.lr.ph451

.lr.ph451:                                        ; preds = %bb.cn, %bb.cr
  %indvars.iv631 = phi i64 [ %indvars.iv.next632, %bb.cr ], [ 0, %bb.cn ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [33368 x i8], ptr %i.do, i64 %indvars.iv631 ; 4 uses
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.gv = trunc nuw nsw i64 %indvars.iv631 to i32
  %i.gw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gu, ptr noundef nonnull @.str.16, i32 noundef %i.gv) #17 ; 0 uses
  br i1 %.not1003, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.lr.ph451
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 33288
  %i.gy = load ptr, ptr %i.gt, align 8, !tbaa !34
  call fastcc void @print_stats(ptr noundef %i.gx, ptr noundef nonnull @.str.17, ptr noundef %i.gy, ptr noundef nonnull %spec.select249, i32 noundef 1)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %.lr.ph451
  br i1 %.not1002, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 33328
  %i.ha = load ptr, ptr %i.gt, align 8, !tbaa !34
  call fastcc void @print_stats(ptr noundef %i.gz, ptr noundef nonnull @.str.18, ptr noundef %i.ha, ptr noundef nonnull %spec.select249, i32 noundef 1)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq
  %indvars.iv.next632 = add nuw nsw i64 %indvars.iv631, 1 ; 2 uses
  %exitcond635.not = icmp eq i64 %indvars.iv.next632, %wide.trip.count634
  br i1 %exitcond635.not, label %.critedge251, label %.lr.ph451, !llvm.loop !68

.critedge251:                                     ; preds = %bb.cr, %bb.cn, %.split449.us
  %.3210.lcssa715 = phi i32 [ %.3210.lcssa717719, %.split449.us ], [ %.3210.lcssa716, %bb.cn ], [ %.3210.lcssa716, %bb.cr ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, i8 0, i64 32, i1 false)
  br i1 %i.du, label %.lr.ph456, label %bb.cs

.lr.ph456:                                        ; preds = %.critedge251, %.lr.ph456
  %indvars.iv636 = phi i64 [ %indvars.iv.next637, %.lr.ph456 ], [ 0, %.critedge251 ] ; 2 uses
  %i.hb = phi i32 [ %i.id, %.lr.ph456 ], [ 0, %.critedge251 ]
  %i.hc = phi i32 [ %i.ia, %.lr.ph456 ], [ 0, %.critedge251 ]
  %i.hd = phi <2 x double> [ %i.hr, %.lr.ph456 ], [ zeroinitializer, %.critedge251 ]
  %i.he = phi <2 x double> [ %i.if, %.lr.ph456 ], [ zeroinitializer, %.critedge251 ]
  %i.hf = phi <2 x i32> [ %i.ht, %.lr.ph456 ], [ zeroinitializer, %.critedge251 ]
  %i.hg = phi <2 x double> [ %i.ih, %.lr.ph456 ], [ zeroinitializer, %.critedge251 ]
  %i.hh = phi <2 x i32> [ %i.hv, %.lr.ph456 ], [ zeroinitializer, %.critedge251 ]
  %i.hi = getelementptr inbounds nuw [33368 x i8], ptr %i.do, i64 %indvars.iv636 ; 8 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 33328
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 33352
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 33288
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 33312
  %i.hn = load double, ptr %i.hj, align 8, !tbaa !43
  %i.ho = load double, ptr %i.hl, align 8, !tbaa !44
  %i.hp = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.hn, i64 1
  %i.hr = fadd <2 x double> %i.hq, %i.hd          ; 2 uses
  %i.hs = load <2 x i32>, ptr %i.hk, align 8, !tbaa !9
  %i.ht = add nsw <2 x i32> %i.hf, %i.hs          ; 2 uses
  %i.hu = load <2 x i32>, ptr %i.hm, align 8, !tbaa !9
  %i.hv = add nsw <2 x i32> %i.hh, %i.hu          ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hi, i64 33336
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hi, i64 33296
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hi, i64 33360
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !45
  %i.ia = add nsw i32 %i.hc, %i.hz                ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hi, i64 33320
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !46
  %i.id = add nsw i32 %i.hb, %i.ic                ; 2 uses
  %i.ie = load <2 x double>, ptr %i.hw, align 8, !tbaa !47
  %i.if = fadd <2 x double> %i.ie, %i.he          ; 2 uses
  %i.ig = load <2 x double>, ptr %i.hx, align 8, !tbaa !47
  %i.ih = fadd <2 x double> %i.ig, %i.hg          ; 2 uses
  %indvars.iv.next637 = add nuw nsw i64 %indvars.iv636, 1 ; 2 uses
  %exitcond640.not = icmp eq i64 %indvars.iv.next637, %wide.trip.count639
  br i1 %exitcond640.not, label %._crit_edge457, label %.lr.ph456, !llvm.loop !69

._crit_edge457:                                   ; preds = %.lr.ph456
  store <2 x i32> %i.ht, ptr %i.dx, align 8, !tbaa !9
  store <2 x i32> %i.hv, ptr %i.dy, align 8, !tbaa !9
  store i32 %i.ia, ptr %i.eb, align 8, !tbaa !75
  store i32 %i.id, ptr %i.ec, align 8, !tbaa !75
  store <2 x double> %i.if, ptr %i.dz, align 8, !tbaa !47
  store <2 x double> %i.ih, ptr %i.ea, align 8, !tbaa !47
  br label %bb.cs

bb.cs:                                            ; preds = %.critedge251.thread, %._crit_edge457, %.critedge251
  %.3210.lcssa715724 = phi i32 [ %.3210.lcssa715, %._crit_edge457 ], [ %.3210.lcssa715, %.critedge251 ], [ %.2209481, %.critedge251.thread ] ; 3 uses
  %i.ii = phi <2 x double> [ %i.hr, %._crit_edge457 ], [ zeroinitializer, %.critedge251 ], [ zeroinitializer, %.critedge251.thread ] ; 2 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 1
  store double %i.ij, ptr %1, align 8
  %i.ik = extractelement <2 x double> %i.ii, i64 0
  store double %i.ik, ptr %2, align 8
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !22 ; 2 uses
  br i1 %.not236, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.im = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.il, ptr noundef nonnull @.str.19, i32 noundef %spec.select) #17 ; 0 uses
  br label %bb.cy

bb.cu:                                            ; preds = %bb.cs
  %i.in = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.il, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #17 ; 0 uses
  br i1 %.not1003, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.io = load ptr, ptr %i.do, align 8, !tbaa !34
  call fastcc void @print_stats(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef %i.io, ptr noundef nonnull %spec.select249, i32 noundef 0)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  br i1 %.not1002, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ip = load ptr, ptr %i.do, align 8, !tbaa !34
  call fastcc void @print_stats(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %i.ip, ptr noundef nonnull %spec.select249, i32 noundef 0)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cx, %bb.ct
  br i1 %.not230, label %.thread, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.iq = load i16, ptr %i.dt, align 8, !tbaa !31 ; 2 uses
  %i.ir = icmp eq i16 %i.iq, 0
  br i1 %i.ir, label %.thread, label %bb.da

bb.da:                                            ; preds = %bb.bq, %bb.cz
  %i.is = phi i16 [ %i.iq, %bb.cz ], [ %i.er, %bb.bq ]
  %.5 = phi i32 [ %.3210.lcssa715724, %bb.cz ], [ %.2209481, %bb.bq ] ; 2 uses
  %indvars.iv.next642 = add nuw nsw i64 %indvars.iv641, 1 ; 2 uses
  %i.it = getelementptr inbounds nuw [16 x i8], ptr @groups, i64 %indvars.iv.next642
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !73 ; 2 uses
  %.not237 = icmp eq ptr %i.iv, null
  br i1 %.not237, label %.thread, label %bb.bp, !llvm.loop !70

.thread:                                          ; preds = %bb.da, %bb.cy, %bb.cz, %bb.bo
  %.6 = phi i32 [ %.1208490, %bb.bo ], [ %.3210.lcssa715724, %bb.cy ], [ %.3210.lcssa715724, %bb.cz ], [ %.5, %bb.da ] ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  br i1 %.not235, label %.critedge, label %bb.bj

.critedge:                                        ; preds = %bb.bj, %.thread, %bb.bf, %bb.bh, %SetupSupportedGroups.exit, %bb.ao, %bb.an, %bb.ah, %ShowCiphers.exit, %mygetopt.exit.thread257
  %.0181344 = phi i32 [ %.0181418, %bb.an ], [ %.0181418, %mygetopt.exit.thread257 ], [ %.0181418, %ShowCiphers.exit ], [ %.0181418, %bb.ah ], [ %.0181343702, %SetupSupportedGroups.exit ], [ %.0181343703, %bb.ao ], [ %.0181343702, %bb.bh ], [ %.0181343702, %bb.bf ], [ %.0181343702, %.thread ], [ %.0181343702, %bb.bj ]
  %.0171307 = phi i32 [ %.0171422, %bb.an ], [ %.0171422, %mygetopt.exit.thread257 ], [ %.0171422, %ShowCiphers.exit ], [ %.0171422, %bb.ah ], [ %.0171306710, %SetupSupportedGroups.exit ], [ %.0171306711, %bb.ao ], [ 0, %bb.bh ], [ %.0171306710, %bb.bf ], [ %.0171306710, %.thread ], [ %.0171306710, %bb.bj ]
  %.7 = phi i32 [ 2, %bb.an ], [ 0, %mygetopt.exit.thread257 ], [ 0, %ShowCiphers.exit ], [ 2, %bb.ah ], [ 0, %SetupSupportedGroups.exit ], [ 0, %bb.ao ], [ -1, %bb.bh ], [ -125, %bb.bf ], [ %.1208490, %bb.bj ], [ %.6, %.thread ] ; 2 uses
  %.0206 = phi ptr [ null, %bb.an ], [ null, %mygetopt.exit.thread257 ], [ null, %ShowCiphers.exit ], [ null, %bb.ah ], [ null, %SetupSupportedGroups.exit ], [ null, %bb.ao ], [ %i.do, %bb.bh ], [ null, %bb.bf ], [ %i.do, %.thread ], [ %i.do, %bb.bj ] ; 2 uses
  %.1200 = phi ptr [ null, %bb.an ], [ null, %mygetopt.exit.thread257 ], [ null, %ShowCiphers.exit ], [ null, %bb.ah ], [ %.0199, %SetupSupportedGroups.exit ], [ null, %bb.ao ], [ %.0199, %bb.bh ], [ %.0199, %bb.bf ], [ %.0199, %.thread ], [ %.0199, %bb.bj ] ; 2 uses
  %i.ix = icmp eq i32 %.0181344, 0
  %i.iy = icmp ne i32 %.0171307, 0
  %or.cond7 = or i1 %i.ix, %i.iy
  br i1 %or.cond7, label %CloseAndCleanupListenSocket.exit, label %bb.db

bb.db:                                            ; preds = %.critedge
  %i.iz = load i32, ptr %i.b, align 4, !tbaa !9   ; 2 uses
  %.not.i254 = icmp eq i32 %i.iz, -1
  br i1 %.not.i254, label %CloseAndCleanupListenSocket.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ja = call i32 @close(i32 noundef %i.iz) #16  ; 0 uses
  store i32 -1, ptr %i.b, align 4, !tbaa !9
  br label %CloseAndCleanupListenSocket.exit

CloseAndCleanupListenSocket.exit:                 ; preds = %bb.dc, %bb.db, %.critedge
  %i.jb = call i32 @wolfSSL_Cleanup() #16         ; 0 uses
  %.not247 = icmp eq ptr %.0206, null
  br i1 %.not247, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %CloseAndCleanupListenSocket.exit
  call void @wolfSSL_Free(ptr noundef nonnull %.0206) #16
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %CloseAndCleanupListenSocket.exit
  %.not248 = icmp eq ptr %.1200, null
  br i1 %.not248, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @wolfSSL_Free(ptr noundef nonnull %.1200) #16
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  br i1 %.not, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.7, ptr %i.jc, align 8, !tbaa !18
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i32 %.7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @wolfSSL_Init() local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @Usage() unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.34, i64 61, i64 1, ptr %i.a) #18 ; 0 uses
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite1 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 35, i64 1, ptr %i.b) #18 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite2 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 62, i64 1, ptr %i.c) #18 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite3 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 62, i64 1, ptr %i.d) #18 ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str) #17 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.39, i32 noundef 11112) #17 ; 0 uses
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite4 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 46, i64 1, ptr %i.i) #18 ; 0 uses
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite5 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 27, i64 1, ptr %i.j) #18 ; 0 uses
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite6 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 70, i64 1, ptr %i.k) #18 ; 0 uses
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite7 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 44, i64 1, ptr %i.l) #18 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.44, i32 noundef 1) #17 ; 0 uses
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.45, i32 noundef 16384) #17 ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.46, i32 noundef 131072) #17 ; 0 uses
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite8 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 32, i64 1, ptr %i.s) #18 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.48, i32 noundef 1) #17 ; 0 uses
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite9 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 41, i64 1, ptr %i.v) #18 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @wolfSSL_Malloc(i64 noundef) local_unnamed_addr #2

declare i32 @wolfSSL_get_ciphers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @SetupSocketAndListen(ptr nofree noundef captures(none) initializes((0, 4)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sockaddr_in, align 4        ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 1, ptr %i.a, align 4, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 4
  store i16 2, ptr %2, align 4, !tbaa !50
  %i.c = trunc i32 %1 to i16
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %rev.i, ptr %i.d, align 2, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !52
  %i.f = tail call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 0) #16 ; 3 uses
  store i32 %i.f, ptr %0, align 4, !tbaa !9
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite8 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 35, i64 1, ptr %i.h) #18 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = call i32 @setsockopt(i32 noundef %i.f, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %i.a, i32 noundef 4) #16
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite7 = call i64 @fwrite(ptr nonnull @.str.54, i64 31, i64 1, ptr %i.k) #18 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.l = load i32, ptr %0, align 4, !tbaa !9
  %i.m = call i32 @bind(i32 noundef %i.l, ptr noundef nonnull %2, i32 noundef 16) #16
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite6 = call i64 @fwrite(ptr nonnull @.str.55, i64 22, i64 1, ptr %i.o) #18 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = load i32, ptr %0, align 4, !tbaa !9
  %i.q = call i32 @listen(i32 noundef %i.p, i32 noundef 5) #16
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite = call i64 @fwrite(ptr nonnull @.str.56, i64 24, i64 1, ptr %i.r) #18 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @bench_tls_client(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timeval, align 8            ; 5 uses
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timeval, align 8            ; 5 uses
  %7 = alloca %struct.timeval, align 8            ; 5 uses
  %8 = alloca %struct.sockaddr_in, align 4        ; 7 uses
  %9 = alloca %struct.timeval, align 8            ; 4 uses
  %10 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !34
  %i.b = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str.6, i64 noundef 5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.c = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #16
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %gettime_secs.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.f = tail call ptr @__errno_location() #20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
end_hunk_0
