Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/normalize_model?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6LibRaw18GetNormalizedModelEv:bb.a
  br i1 %.not129, label %.thread261, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aq = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(7) @.str.5, i64 noundef 6) #8
  %.not130 = icmp eq i32 %i.aq, 0
  br i1 %.not130, label %.thread261, label %thread-pre-split.thread

.thread261:                                       ; preds = %bb.y, %bb.z
  store i8 0, ptr %i.an, align 2, !tbaa !93
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.x, %bb.z, %.thread261
  %i.ar = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(7) @.str.5, i64 noundef 6) #8
  %.not134 = icmp eq i32 %i.ar, 0
  br i1 %.not134, label %bb.aa, label %.tail.thread

bb.aa:                                            ; preds = %thread-pre-split.thread
  store i8 0, ptr %i.an, align 2, !tbaa !93
  br label %.tail.thread

sub_0:                                            ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 7 uses
  %i.at = load i8, ptr %i.as, align 4
  %.not407 = icmp eq i8 %i.at, 71
  br i1 %.not407, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.av = load i8, ptr %i.au, align 1
  %.not408 = icmp eq i8 %i.av, 88
  br i1 %.not408, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.ax = load i8, ptr %i.aw, align 2
  %i.ay = icmp eq i8 %i.ax, 82
  br i1 %i.ay, label %bb.ab, label %.tail.thread

bb.ab:                                            ; preds = %.tail
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.ba, ptr noundef nonnull align 1 dereferenceable(10) @.str.42, i64 10, i1 false) #9
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 10 uses
  %i.bc = load i8, ptr %i.bb, align 4, !tbaa !93
  %.not122 = icmp eq i8 %i.bc, 0
  br i1 %.not122, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 153584 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !93
  %.not123 = icmp eq i8 %i.be, 0
  br i1 %.not123, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bf = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(1) %i.bd) #9 ; 0 uses
  tail call void @_ZN6LibRaw17remove_caseSubstrEPcS0_(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.43)
  tail call void @_ZN6LibRaw17remove_caseSubstrEPcS0_(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.44)
  tail call void @_ZN6LibRaw21removeExcessiveSpacesEPc(ptr noundef nonnull %i.bb)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !94
  switch i64 %i.bg, label %.tail.thread [
    i64 -1, label %bb.af
    i64 1, label %bb.ak
    i64 2, label %bb.al
    i64 3, label %bb.am
    i64 5, label %bb.an
    i64 6, label %bb.ao
    i64 8, label %bb.ap
  ]

bb.af:                                            ; preds = %bb.ae
  %i.bh = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(1) @.str.45) #8
  %.not124 = icmp eq ptr %i.bh, null
  br i1 %.not124, label %bb.ag, label %.thread264

.thread264:                                       ; preds = %bb.af
  store i64 1, ptr %i.az, align 8, !tbaa !94
  br label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.bi = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(1) @.str.46) #8
  %.not125 = icmp eq ptr %i.bi, null
  br i1 %.not125, label %bb.ah, label %.thread265

.thread265:                                       ; preds = %bb.ag
  store i64 2, ptr %i.az, align 8, !tbaa !94
  br label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.bj = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(1) @.str.47) #8
  %.not126 = icmp eq ptr %i.bj, null
  br i1 %.not126, label %bb.ai, label %.thread266

.thread266:                                       ; preds = %bb.ah
  store i64 3, ptr %i.az, align 8, !tbaa !94
  br label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.bk = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(1) @.str.48) #8
  %.not127 = icmp eq ptr %i.bk, null
  br i1 %.not127, label %bb.aj, label %.thread267

.thread267:                                       ; preds = %bb.ai
  store i64 5, ptr %i.az, align 8, !tbaa !94
  br label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.bl = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(1) @.str.49) #8
  %.not128 = icmp eq ptr %i.bl, null
  br i1 %.not128, label %.tail.thread, label %.thread268

.thread268:                                       ; preds = %bb.aj
  store i64 6, ptr %i.az, align 8, !tbaa !94
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ae, %.thread264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.as, ptr noundef nonnull align 1 dereferenceable(13) @.str.50, i64 13, i1 false) #9
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 1, ptr %i.bm, align 8, !tbaa !95
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 1, ptr %i.bn, align 8, !tbaa !96
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 35, ptr %i.bo, align 2, !tbaa !90
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 43, ptr %i.bp, align 2, !tbaa !97
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i16 1, ptr %i.bq, align 4, !tbaa !98
  br label %.tail.thread

bb.al:                                            ; preds = %bb.ae, %.thread265
  store i64 13565031976425543, ptr %i.as, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 7, ptr %i.br, align 8, !tbaa !95
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 7, ptr %i.bs, align 8, !tbaa !96
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 35, ptr %i.bt, align 2, !tbaa !90
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 43, ptr %i.bu, align 2, !tbaa !97
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i16 2, ptr %i.bv, align 4, !tbaa !98
  br label %.tail.thread

bb.am:                                            ; preds = %bb.ae, %.thread266
  store i64 13565019091523655, ptr %i.as, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 6, ptr %i.bw, align 8, !tbaa !95
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 6, ptr %i.bx, align 8, !tbaa !96
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 35, ptr %i.by, align 2, !tbaa !90
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 43, ptr %i.bz, align 2, !tbaa !97
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i16 2, ptr %i.ca, align 4, !tbaa !98
  br label %.tail.thread

bb.an:                                            ; preds = %bb.ae, %.thread267
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(13) %i.as, ptr noundef nonnull align 1 dereferenceable(13) @.str.53, i64 13, i1 false) #9
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 1, ptr %i.cb, align 8, !tbaa !95
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 1, ptr %i.cc, align 8, !tbaa !96
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 35, ptr %i.cd, align 2, !tbaa !90
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 43, ptr %i.ce, align 2, !tbaa !97
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i16 1, ptr %i.cf, align 4, !tbaa !98
  br label %.tail.thread

bb.ao:                                            ; preds = %bb.ae, %.thread268
  store i64 15253804527278151, ptr %i.as, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 1, ptr %i.cg, align 8, !tbaa !95
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 1, ptr %i.ch, align 8, !tbaa !96
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 35, ptr %i.ci, align 2, !tbaa !90
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 43, ptr %i.cj, align 2, !tbaa !97
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i16 2, ptr %i.ck, align 4, !tbaa !98
  br label %.tail.thread

bb.ap:                                            ; preds = %bb.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14) %i.as, ptr noundef nonnull align 1 dereferenceable(14) @.str.55, i64 14, i1 false) #9
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 1, ptr %i.cl, align 8, !tbaa !96
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 17, ptr %i.cm, align 2, !tbaa !90
  store i64 -1, ptr %i.az, align 8, !tbaa !94
  br label %.tail.thread

.tail.thread:                                     ; preds = %bb.ae, %bb.x, %bb.x, %bb.x, %bb.aj, %sub_1, %sub_0, %bb.s, %bb.aa, %thread-pre-split.thread, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %.tail, %bb.t, %bb.v, %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 64 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 73 uses
  %i.cp = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.co) #9 ; 0 uses
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !89  ; 3 uses
  switch i32 %i.cq, label %3 [
    i32 8, label %bb.aq
    i32 18, label %.preheader352.a
    i32 24, label %bb.bf
    i32 36, label %.preheader355.a
    i32 31, label %.preheader357.a
    i32 40, label %1
    i32 30, label %1
  ]

bb.aq:                                            ; preds = %.tail.thread
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 381696 ; 3 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !99 ; 10 uses
  switch i64 %i.cs, label %.preheader348.a [
    i64 0, label %bb.au
    i64 2147484960, label %.loopexit
    i64 2147485024, label %.loopexit
  ]

.preheader348.1.a:                                ; preds = %.preheader348.a
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE6unique, i64 %indvars.iv457 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load i64, ptr %i.cu, align 16, !tbaa !101
  %i.cw = icmp eq i64 %i.cs, %i.cv
  br i1 %i.cw, label %.split.loop.exit584, label %.preheader348.2.a

.preheader348.2.a:                                ; preds = %.preheader348.1.a
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE6unique, i64 %indvars.iv457 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load i64, ptr %i.cy, align 16, !tbaa !101
  %i.da = icmp eq i64 %i.cs, %i.cz
  br i1 %i.da, label %.split.loop.exit582.a, label %.preheader348.3.a

.preheader348.3.a:                                ; preds = %.preheader348.2.a
  %i.db = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE6unique, i64 %indvars.iv457 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  %i.dd = load i64, ptr %i.dc, align 16, !tbaa !101
  %i.de = icmp eq i64 %i.cs, %i.dd
  br i1 %i.de, label %.split.loop.exit580.a, label %.preheader348.4.a

.preheader348.4.a:                                ; preds = %.preheader348.3.a
  %i.df = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE6unique, i64 %indvars.iv457 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  %i.dh = load i64, ptr %i.dg, align 16, !tbaa !101
  %i.di = icmp eq i64 %i.cs, %i.dh
  br i1 %i.di, label %.split.loop.exit578.a, label %.preheader348.5.a

.preheader348.5.a:                                ; preds = %.preheader348.4.a
  %i.dj = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE6unique, i64 %indvars.iv457 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 160
  %i.dl = load i64, ptr %i.dk, align 16, !tbaa !101
  %i.dm = icmp eq i64 %i.cs, %i.dl
  br i1 %i.dm, label %.split.loop.exit576.a, label %.preheader348.6.a

.preheader348.6.a:                                ; preds = %.preheader348.5.a
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE6unique, i64 %indvars.iv457 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 192
  %i.dp = load i64, ptr %i.do, align 16, !tbaa !101
  %i.dq = icmp eq i64 %i.cs, %i.dp
  br i1 %i.dq, label %.split.loop.exit574.a, label %.preheader348.7

.preheader348.7:                                  ; preds = %.preheader348.6.a
  %i.dr = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE6unique, i64 %indvars.iv457 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 224
  %i.dt = load i64, ptr %i.ds, align 16, !tbaa !101
  %i.du = icmp eq i64 %i.cs, %i.dt
  br i1 %i.du, label %.split.loop.exit572.a, label %.preheader348.8

.preheader348.8:                                  ; preds = %.preheader348.7
  %i.dv = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE6unique, i64 %indvars.iv457 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 256
  %i.dx = load i64, ptr %i.dw, align 16, !tbaa !101
  %i.dy = icmp eq i64 %i.cs, %i.dx
  br i1 %i.dy, label %.split.loop.exit.a, label %bb.ar

bb.ar:                                            ; preds = %.preheader348.8
  %indvars.iv.next458.8 = add nuw nsw i64 %indvars.iv457, 9 ; 2 uses
  %exitcond460.not.8 = icmp eq i64 %indvars.iv.next458.8, 81
  br i1 %exitcond460.not.8, label %.loopexit, label %.preheader348.a, !llvm.loop !13

.preheader348.a:                                  ; preds = %bb.aq, %bb.ar
  %indvars.iv457 = phi i64 [ %indvars.iv.next458.8, %bb.ar ], [ 0, %bb.aq ] ; 10 uses
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE6unique, i64 %indvars.iv457 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 16, !tbaa !101
  %i.eb = icmp eq i64 %i.cs, %i.ea
  br i1 %i.eb, label %.split.loop.exit586, label %.preheader348.1.a

.split.loop.exit.a:                               ; preds = %.preheader348.8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 256
  br label %.split.loop.exit586

.split.loop.exit572.a:                            ; preds = %.preheader348.7
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dr, i64 224
  br label %.split.loop.exit586

.split.loop.exit574.a:                            ; preds = %.preheader348.6.a
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 192
  br label %.split.loop.exit586

.split.loop.exit576.a:                            ; preds = %.preheader348.5.a
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dj, i64 160
  br label %.split.loop.exit586

.split.loop.exit578.a:                            ; preds = %.preheader348.4.a
  %i.eg = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  br label %.split.loop.exit586

.split.loop.exit580.a:                            ; preds = %.preheader348.3.a
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  br label %.split.loop.exit586

.split.loop.exit582.a:                            ; preds = %.preheader348.2.a
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  br label %.split.loop.exit586

.split.loop.exit584:                              ; preds = %.preheader348.1.a
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  br label %.split.loop.exit586

.split.loop.exit586:                              ; preds = %.preheader348.a, %.split.loop.exit584, %.split.loop.exit582.a, %.split.loop.exit580.a, %.split.loop.exit578.a, %.split.loop.exit576.a, %.split.loop.exit574.a, %.split.loop.exit572.a, %.split.loop.exit.a
  %.lcssa560 = phi ptr [ %i.ej, %.split.loop.exit584 ], [ %i.ei, %.split.loop.exit582.a ], [ %i.eh, %.split.loop.exit580.a ], [ %i.eg, %.split.loop.exit578.a ], [ %i.ef, %.split.loop.exit576.a ], [ %i.ee, %.split.loop.exit574.a ], [ %i.ed, %.split.loop.exit572.a ], [ %i.ec, %.split.loop.exit.a ], [ %i.dz, %.preheader348.a ]
  %i.ek = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(7) @.str.56) #8
  %.not205 = icmp eq i32 %i.ek, 0
  br i1 %.not205, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.split.loop.exit586
  %i.el = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.co) #9 ; 0 uses
  br label %.loopexit

bb.at:                                            ; preds = %.split.loop.exit586
  %i.em = getelementptr inbounds nuw i8, ptr %.lcssa560, i64 8 ; 2 uses
  %i.en = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.em) #9 ; 0 uses
  %i.eo = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.em) #9 ; 0 uses
  br label %.loopexit

bb.au:                                            ; preds = %bb.aq
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !102
  %.not199 = icmp eq i32 %i.eq, 0
  br i1 %.not199, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 153584
  %i.es = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.er) #8
  %i.et = icmp ugt i64 %i.es, 6
  br i1 %i.et, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 153590 ; 2 uses
  %i.ev = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.eu, ptr noundef nonnull dereferenceable(10) @.str.57, i64 noundef 9) #8
  %.not200 = icmp eq i32 %i.ev, 0
  br i1 %.not200, label %.loopexit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ew = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(7) @.str.56) #8
  %.not201 = icmp eq i32 %i.ew, 0
  br i1 %.not201, label %bb.ay, label %.preheader350.a

bb.ay:                                            ; preds = %bb.ax
  store i64 2147484708, ptr %i.cr, align 8, !tbaa !99
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 2147484708, ptr %i.ex, align 8, !tbaa !103
  %i.ey = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.co) #9 ; 0 uses
  br label %.loopexit

bb.az:                                            ; preds = %.preheader350.a
  %indvars.iv.next454.a = add nuw nsw i64 %indvars.iv453.a, 1 ; 2 uses
  %exitcond456.not.a = icmp eq i64 %indvars.iv.next454.a, 81
  br i1 %exitcond456.not.a, label %.loopexit, label %.preheader350.a, !llvm.loop !14

.preheader350.a:                                  ; preds = %bb.ax, %bb.az
  %indvars.iv453.a = phi i64 [ %indvars.iv.next454.a, %bb.az ], [ 0, %bb.ax ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE6unique, i64 %indvars.iv453.a ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fa, ptr noundef nonnull dereferenceable(1) %i.eu) #8
  %.not202 = icmp eq i32 %i.fb, 0
  br i1 %.not202, label %bb.ba, label %bb.az

bb.ba:                                            ; preds = %.preheader350.a
  %i.fc = load i64, ptr %i.ez, align 16, !tbaa !101 ; 2 uses
  store i64 %i.fc, ptr %i.cr, align 8, !tbaa !99
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !103
  %i.fe = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.fa) #9 ; 0 uses
  br label %.loopexit

.preheader352.a:                                  ; preds = %.tail.thread, %.preheader352.backedge.a
  %.2368 = phi i32 [ %.2368.be, %.preheader352.backedge.a ], [ 0, %.tail.thread ] ; 4 uses
  %i.ff = zext nneg i32 %.2368 to i64             ; 2 uses
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE9fujialias, i64 %i.ff ; 2 uses
  %i.fh = shl nuw nsw i64 1, %i.ff
  %i.fi = and i64 %i.fh, 45812979029
  %.not195 = icmp eq i64 %i.fi, 0
  br i1 %.not195, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.preheader352.a
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 1 ; 2 uses
  store ptr %i.fj, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.fk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.fj) #8
  %.not197 = icmp ne i32 %i.fk, 0
  %i.fl = icmp samesign ult i32 %.2368, 36
  %or.cond382 = and i1 %.not197, %i.fl
  br i1 %or.cond382, label %.preheader352.backedge.a, label %.loopexit

bb.bc:                                            ; preds = %.preheader352.a
  %i.fm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.fg) #8
  %.not196 = icmp eq i32 %i.fm, 0
  br i1 %.not196, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fn = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.fo = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.fn) #9 ; 0 uses
  br label %.loopexit

bb.be:                                            ; preds = %bb.bc
  %.old381 = icmp samesign ult i32 %.2368, 36
  br i1 %.old381, label %.preheader352.backedge.a, label %.loopexit

.preheader352.backedge.a:                         ; preds = %bb.be, %bb.bb
  %.2368.be = add nuw nsw i32 %.2368, 1
  br label %.preheader352.a, !llvm.loop !15

bb.bf:                                            ; preds = %.tail.thread
  tail call void @_ZN6LibRaw15parseHassyModelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  br label %.loopexit

.preheader355.a:                                  ; preds = %.tail.thread, %bb.bj
  %indvars.iv.a = phi i64 [ %indvars.iv.next, %bb.bj ], [ 0, %.tail.thread ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE11phase1alias, i64 %indvars.iv.a ; 2 uses
  %i.fq = shl nuw nsw i64 1, %indvars.iv.a
  %i.fr = and i64 %i.fq, 11452885333
  %.not191 = icmp eq i64 %i.fr, 0
  br i1 %.not191, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.preheader355.a
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store ptr %i.fs, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  br label %bb.bj

bb.bh:                                            ; preds = %.preheader355.a
  %i.ft = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.fp) #8
  %.not192 = icmp eq i32 %i.ft, 0
  br i1 %.not192, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.fu = tail call noundef i32 @_ZN6LibRaw16setMakeFromIndexEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 50) ; 0 uses
  %i.fv = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.fw = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.fv) #9 ; 0 uses
  br label %.loopexit517

bb.bj:                                            ; preds = %bb.bg, %bb.bh
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 35
  br i1 %exitcond.not, label %.loopexit517, label %.preheader355.a, !llvm.loop !16

bb.bk:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %.loopexit517
  %i.fx = tail call noundef i32 @_ZN6LibRaw16setMakeFromIndexEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 31) ; 0 uses
  %i.fy = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.fz = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.fy) #9 ; 0 uses
  br label %.loopexit

.loopexit517:                                     ; preds = %bb.bj, %bb.bi
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE9leafalias, i64 1), ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.ga = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE9leafalias, i64 16)) #8
  %.not194.1 = icmp eq i32 %i.ga, 0
  br i1 %.not194.1, label %bb.bk, label %bb.bl

bb.bl:                                            ; preds = %.loopexit517
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE9leafalias, i64 33), ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.gb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE9leafalias, i64 48)) #8
  %.not194.3 = icmp eq i32 %i.gb, 0
  br i1 %.not194.3, label %bb.bk, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE9leafalias, i64 65), ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.gc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE9leafalias, i64 80)) #8
  %.not194.5 = icmp eq i32 %i.gc, 0
  br i1 %.not194.5, label %bb.bk, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE9leafalias, i64 97), ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.gd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE9leafalias, i64 112)) #8
  %.not194.7 = icmp eq i32 %i.gd, 0
  br i1 %.not194.7, label %bb.bk, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE9leafalias, i64 129), ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.ge = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE9leafalias, i64 144)) #8
  %.not194.9 = icmp eq i32 %i.ge, 0
  br i1 %.not194.9, label %bb.bk, label %.loopexit

.preheader357.a:                                  ; preds = %.tail.thread, %.preheader357.backedge.a
  %.5365 = phi i32 [ %.5365.be, %.preheader357.backedge.a ], [ 0, %.tail.thread ] ; 4 uses
  %i.gf = zext nneg i32 %.5365 to i64             ; 2 uses
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE9leafalias, i64 %i.gf ; 2 uses
  %i.gh = shl nuw nsw i64 1, %i.gf
  %i.gi = and i64 %i.gh, 341
  %.not187 = icmp eq i64 %i.gi, 0
  br i1 %.not187, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.preheader357.a
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 1 ; 2 uses
  store ptr %i.gj, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.gk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.gj) #8
  %.not189 = icmp ne i32 %i.gk, 0
  %i.gl = icmp samesign ult i32 %.5365, 9
  %or.cond385 = and i1 %.not189, %i.gl
  br i1 %or.cond385, label %.preheader357.backedge.a, label %.loopexit358

bb.bq:                                            ; preds = %.preheader357.a
  %i.gm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.gg) #8
  %.not188 = icmp eq i32 %i.gm, 0
  br i1 %.not188, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gn = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.go = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.gn) #9 ; 0 uses
  br label %.loopexit358

bb.bs:                                            ; preds = %bb.bq
  %.old384 = icmp samesign ult i32 %.5365, 9
  br i1 %.old384, label %.preheader357.backedge.a, label %.loopexit358

.preheader357.backedge.a:                         ; preds = %bb.bs, %bb.bp
  %.5365.be = add nuw nsw i32 %.5365, 1
  br label %.preheader357.a, !llvm.loop !17

.loopexit358:                                     ; preds = %bb.bp, %bb.bs, %bb.br
  %i.gp = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.cn, i32 noundef 40) #8 ; 2 uses
  %.not190 = icmp eq ptr %i.gp, null
  br i1 %.not190, label %.loopexit, label %bb.bt

bb.bt:                                            ; preds = %.loopexit358
  store i8 0, ptr %i.gp, align 1, !tbaa !93
  br label %.loopexit

1:                                                ; preds = %.tail.thread, %.tail.thread
  %2 = icmp eq i32 %i.cq, 30
  br i1 %2, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %1
  %i.gq = tail call i32 @strncasecmp(ptr noundef nonnull %i.co, ptr noundef nonnull @.str.58, i64 noundef 6) #8
  %.not184 = icmp eq i32 %i.gq, 0
  br i1 %.not184, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.gr = tail call noundef i32 @_ZN6LibRaw16setMakeFromIndexEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 40) ; 0 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i64 27431081815730509, ptr %i.gs, align 4
  br label %.loopexit

bb.bw:                                            ; preds = %1, %bb.bu
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE21KonicaMinolta_aliases, i64 1), ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.gt = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE21KonicaMinolta_aliases, i64 1)) #8
  %.not186 = icmp eq i32 %i.gt, 0
  br i1 %.not186, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.cd, %bb.bw
  %i.gu = tail call noundef i32 @_ZN6LibRaw16setMakeFromIndexEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 40) ; 0 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i64 27431081815730509, ptr %i.gv, align 4
  br label %.loopexit

bb.by:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %i.gw = tail call noundef i32 @_ZN6LibRaw16setMakeFromIndexEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 40) ; 0 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i64 27431081815730509, ptr %i.gx, align 4
  %i.gy = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.gz = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.gy) #9 ; 0 uses
  br label %.loopexit

bb.bz:                                            ; preds = %bb.bw
  %i.ha = tail call i32 @strcasecmp(ptr noundef nonnull %i.co, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE21KonicaMinolta_aliases, i64 24)) #8
  %.not185.1 = icmp eq i32 %i.ha, 0
  br i1 %.not185.1, label %bb.by, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hb = tail call i32 @strcasecmp(ptr noundef nonnull %i.co, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE21KonicaMinolta_aliases, i64 48)) #8
  %.not185.2 = icmp eq i32 %i.hb, 0
  br i1 %.not185.2, label %bb.by, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hc = tail call i32 @strcasecmp(ptr noundef nonnull %i.co, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE21KonicaMinolta_aliases, i64 72)) #8
  %.not185.3 = icmp eq i32 %i.hc, 0
  br i1 %.not185.3, label %bb.by, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hd = tail call i32 @strcasecmp(ptr noundef nonnull %i.co, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE21KonicaMinolta_aliases, i64 96)) #8
  %.not185.4 = icmp eq i32 %i.hd, 0
  br i1 %.not185.4, label %bb.by, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE21KonicaMinolta_aliases, i64 121), ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.he = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(6) getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE21KonicaMinolta_aliases, i64 121)) #8
  %.not186.5 = icmp eq i32 %i.he, 0
  br i1 %.not186.5, label %bb.bx, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hf = tail call i32 @strcasecmp(ptr noundef nonnull %i.co, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE21KonicaMinolta_aliases, i64 144)) #8
  %.not185.6 = icmp eq i32 %i.hf, 0
  br i1 %.not185.6, label %bb.by, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hg = tail call i32 @strcasecmp(ptr noundef nonnull %i.co, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE21KonicaMinolta_aliases, i64 168)) #8
  %.not185.7 = icmp eq i32 %i.hg, 0
  br i1 %.not185.7, label %bb.by, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hh = tail call i32 @strcasecmp(ptr noundef nonnull %i.co, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZZN6LibRaw18GetNormalizedModelEvE21KonicaMinolta_aliases, i64 192)) #8
  %.not185.8 = icmp eq i32 %i.hh, 0
  br i1 %.not185.8, label %bb.by, label %.loopexit

3:                                                ; preds = %.tail.thread
  switch i32 %i.cq, label %.loopexit [
    i32 43, label %.preheader
    i32 45, label %.preheader337
    i32 47, label %.preheader551
    i32 32, label %.preheader551
    i32 70, label %.preheader551
    i32 49, label %bb.cy
    i32 50, label %.preheader340
    i32 59, label %bb.dp
    i32 63, label %bb.ef
    i32 29, label %bb.ej
  ]

.preheader551:                                    ; preds = %3, %3, %3
  br label %bb.ct

.preheader:                                       ; preds = %3, %.preheader.backedge
  %.7379 = phi i32 [ %.7379.be, %.preheader.backedge ], [ 0, %3 ] ; 4 uses
  %i.hi = zext nneg i32 %.7379 to i64             ; 2 uses
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE10nikonalias, i64 %i.hi ; 2 uses
  %i.hk = shl nuw nsw i64 1, %i.hi
  %i.hl = and i64 %i.hk, 1466015503701
  %.not181 = icmp eq i64 %i.hl, 0
  br i1 %.not181, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.preheader
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 1 ; 2 uses
  store ptr %i.hm, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.hn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.hm) #8
  %.not183 = icmp ne i32 %i.hn, 0
  %i.ho = icmp samesign ult i32 %.7379, 41
  %or.cond388 = and i1 %.not183, %i.ho
  br i1 %or.cond388, label %.preheader.backedge, label %.loopexit

bb.ci:                                            ; preds = %.preheader
  %i.hp = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.hj) #8
  %.not182 = icmp eq i32 %i.hp, 0
  br i1 %.not182, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.hq = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.hr = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.hq) #9 ; 0 uses
  br label %.loopexit

bb.ck:                                            ; preds = %bb.ci
  %.old387 = icmp samesign ult i32 %.7379, 41
  br i1 %.old387, label %.preheader.backedge, label %.loopexit

.preheader.backedge:                              ; preds = %bb.ck, %bb.ch
  %.7379.be = add nuw nsw i32 %.7379, 1
  br label %.preheader, !llvm.loop !18

.preheader337:                                    ; preds = %3, %.preheader337.backedge
  %.8378 = phi i32 [ %.8378.be, %.preheader337.backedge ], [ 0, %3 ] ; 4 uses
  %i.hs = zext nneg i32 %.8378 to i64
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE8olyalias, i64 %i.hs ; 3 uses
  %i.hu = load i8, ptr %i.ht, align 16, !tbaa !93
  %i.hv = icmp eq i8 %i.hu, 64
  br i1 %i.hv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %.preheader337
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 1 ; 2 uses
  store ptr %i.hw, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.hx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.hw) #8
  %.not177 = icmp ne i32 %i.hx, 0
  %i.hy = icmp samesign ult i32 %.8378, 77
  %or.cond391 = and i1 %.not177, %i.hy
  br i1 %or.cond391, label %.preheader337.backedge, label %.loopexit338

bb.cm:                                            ; preds = %.preheader337
  %i.hz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.ht) #8
  %.not176 = icmp eq i32 %i.hz, 0
  br i1 %.not176, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ia = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.ib = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.ia) #9 ; 0 uses
  br label %.loopexit338

bb.co:                                            ; preds = %bb.cm
  %.old390 = icmp samesign ult i32 %.8378, 77
  br i1 %.old390, label %.preheader337.backedge, label %.loopexit338

.preheader337.backedge:                           ; preds = %bb.co, %bb.cl
  %.8378.be = add nuw nsw i32 %.8378, 1
  br label %.preheader337, !llvm.loop !19

.loopexit338:                                     ; preds = %bb.cl, %bb.co, %bb.cn
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 381704 ; 3 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !92
  %.not178 = icmp eq i64 %i.id, 0
  br i1 %.not178, label %bb.cp, label %.loopexit

bb.cp:                                            ; preds = %.loopexit338
  %i.ie = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(8) @.str.60) #8
  %.not179 = icmp eq i32 %i.ie, 0
  br i1 %.not179, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 381696
  store i64 357962298676, ptr %i.if, align 8, !tbaa !99
  store i64 357962298676, ptr %i.ic, align 8, !tbaa !92
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 357962298676, ptr %i.ig, align 8, !tbaa !103
  br label %.loopexit

bb.cr:                                            ; preds = %bb.cp
  %i.ih = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(8) @.str.62) #8
  %.not180 = icmp eq i32 %i.ih, 0
  br i1 %.not180, label %bb.cs, label %.loopexit

bb.cs:                                            ; preds = %bb.cr
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 381696
  store i64 357962299186, ptr %i.ii, align 8, !tbaa !99
  store i64 357962299186, ptr %i.ic, align 8, !tbaa !92
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 357962299186, ptr %i.ij, align 8, !tbaa !103
  br label %.loopexit

bb.ct:                                            ; preds = %.preheader551, %.backedge.a
  %.9377 = phi i32 [ %.9377.be, %.backedge.a ], [ 0, %.preheader551 ] ; 4 uses
  %i.ik = zext nneg i32 %.9377 to i64
  %i.il = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE8panalias, i64 %i.ik ; 3 uses
  %i.im = load i8, ptr %i.il, align 16, !tbaa !93
  %i.in = icmp eq i8 %i.im, 64
  br i1 %i.in, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 1 ; 2 uses
  store ptr %i.io, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.ip = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.io) #8
  %.not175 = icmp ne i32 %i.ip, 0
  %i.iq = icmp samesign ult i32 %.9377, 131
  %or.cond394 = and i1 %.not175, %i.iq
  br i1 %or.cond394, label %.backedge.a, label %.loopexit

bb.cv:                                            ; preds = %bb.ct
  %i.ir = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.il) #8
  %.not174 = icmp eq i32 %i.ir, 0
  br i1 %.not174, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.is = tail call noundef i32 @_ZN6LibRaw16setMakeFromIndexEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 47) ; 0 uses
  %i.it = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.iu = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.it) #9 ; 0 uses
  br label %.loopexit

bb.cx:                                            ; preds = %bb.cv
  %.old393 = icmp samesign ult i32 %.9377, 131
  br i1 %.old393, label %.backedge.a, label %.loopexit

.backedge.a:                                      ; preds = %bb.cx, %bb.cu
  %.9377.be = add nuw nsw i32 %.9377, 1
  br label %bb.ct, !llvm.loop !20

bb.cy:                                            ; preds = %3
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 381696 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !99
  %.not164 = icmp eq i64 %i.iw, 0
  br i1 %.not164, label %bb.cz, label %.preheader553

bb.cz:                                            ; preds = %bb.cy
  %i.ix = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(8) @.str.64) #8
  %.not165 = icmp eq i32 %i.ix, 0
  br i1 %.not165, label %.sink.split, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.iy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(14) @.str.65) #8
  %.not166 = icmp eq i32 %i.iy, 0
  br i1 %.not166, label %.sink.split, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.iz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(9) @.str.66) #8
  %.not167 = icmp eq i32 %i.iz, 0
  br i1 %.not167, label %.sink.split, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ja = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(11) @.str.67) #8
  %.not168 = icmp eq i32 %i.ja, 0
  br i1 %.not168, label %.sink.split, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(11) @.str.68) #8
  %.not169 = icmp eq i32 %i.jb, 0
  br i1 %.not169, label %.sink.split, label %.preheader553

.sink.split:                                      ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz
  %.sink527 = phi i64 [ 76140, %bb.cz ], [ 76145, %bb.da ], [ 76390, %bb.dc ], [ 76245, %bb.db ], [ 76230, %bb.dd ] ; 2 uses
  store i64 %.sink527, ptr %i.iv, align 8, !tbaa !99
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1344
  store i64 %.sink527, ptr %i.jc, align 8, !tbaa !103
  br label %.preheader553

.preheader553:                                    ; preds = %.sink.split, %bb.dd, %bb.cy
  br label %bb.de

bb.de:                                            ; preds = %.preheader553, %.backedge428
  %.10376 = phi i32 [ %.10376.be, %.backedge428 ], [ 0, %.preheader553 ] ; 4 uses
  %i.jd = zext nneg i32 %.10376 to i64            ; 2 uses
  %i.je = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE21SamsungPentax_aliases, i64 %i.jd ; 2 uses
  %i.jf = shl nuw nsw i64 1, %i.jd
  %i.jg = and i64 %i.jf, 300361
  %.not170 = icmp eq i64 %i.jg, 0
  br i1 %.not170, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.jh = getelementptr inbounds nuw i8, ptr %i.je, i64 1 ; 2 uses
  store ptr %i.jh, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.ji = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.jh) #8
  %.not172 = icmp ne i32 %i.ji, 0
  %i.jj = icmp samesign ult i32 %.10376, 19
  %or.cond397 = and i1 %.not172, %i.jj
  br i1 %or.cond397, label %.backedge428, label %sub_0281

bb.dg:                                            ; preds = %bb.de
  %i.jk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.je) #8
  %.not171 = icmp eq i32 %i.jk, 0
  br i1 %.not171, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.jl = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.jm = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.jl) #9 ; 0 uses
  br label %sub_0281

bb.di:                                            ; preds = %bb.dg
  %.old396 = icmp samesign ult i32 %.10376, 19
  br i1 %.old396, label %.backedge428, label %sub_0281

.backedge428:                                     ; preds = %bb.di, %bb.df
  %.10376.be = add nuw nsw i32 %.10376, 1
  br label %bb.de, !llvm.loop !21

sub_0281:                                         ; preds = %bb.di, %bb.df, %bb.dh
  %i.jn = load i8, ptr %i.co, align 4
  %.not411.a = icmp eq i8 %i.jn, 71
  br i1 %.not411.a, label %.tail280, label %.loopexit

.tail280:                                         ; preds = %sub_0281
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.jp = load i8, ptr %i.jo, align 1
  %i.jq = icmp eq i8 %i.jp, 82
  br i1 %i.jq, label %bb.dj, label %.loopexit

bb.dj:                                            ; preds = %.tail280
  %i.jr = tail call noundef i32 @_ZN6LibRaw16setMakeFromIndexEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 56) ; 0 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.js, ptr noundef nonnull align 1 dereferenceable(6) @.str.43, i64 6, i1 false) #9
  br label %.loopexit

.preheader340:                                    ; preds = %3, %.preheader340.backedge
  %.11375 = phi i32 [ %.11375.be, %.preheader340.backedge ], [ 0, %3 ] ; 4 uses
  %i.jt = zext nneg i32 %.11375 to i64            ; 2 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE11phase1alias, i64 %i.jt ; 2 uses
  %i.jv = shl nuw nsw i64 1, %i.jt
  %i.jw = and i64 %i.jv, 11452885333
  %.not160 = icmp eq i64 %i.jw, 0
  br i1 %.not160, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.preheader340
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 1 ; 2 uses
  store ptr %i.jx, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.jy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.jx) #8
  %.not162 = icmp ne i32 %i.jy, 0
  %i.jz = icmp samesign ult i32 %.11375, 34
  %or.cond400 = and i1 %.not162, %i.jz
  br i1 %or.cond400, label %.preheader340.backedge, label %.loopexit341

bb.dl:                                            ; preds = %.preheader340
  %i.ka = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.ju) #8
  %.not161 = icmp eq i32 %i.ka, 0
  br i1 %.not161, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.kb = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.kc = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.kb) #9 ; 0 uses
  br label %.loopexit341

bb.dn:                                            ; preds = %bb.dl
  %.old399 = icmp samesign ult i32 %.11375, 34
  br i1 %.old399, label %.preheader340.backedge, label %.loopexit341

.preheader340.backedge:                           ; preds = %bb.dn, %bb.dk
  %.11375.be = add nuw nsw i32 %.11375, 1
  br label %.preheader340, !llvm.loop !22

.loopexit341:                                     ; preds = %bb.dk, %bb.dn, %bb.dm
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 4260
  %i.ke = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.kd, ptr noundef nonnull dereferenceable(1) @.str.70) #8
  %.not163 = icmp eq ptr %i.ke, null
  br i1 %.not163, label %.loopexit, label %bb.do

bb.do:                                            ; preds = %.loopexit341
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i32 1, ptr %i.kf, align 4, !tbaa !105
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 0, ptr %i.kg, align 8, !tbaa !106
  br label %.loopexit

bb.dp:                                            ; preds = %3
  %i.kh = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.71) #8
  %.not148 = icmp eq ptr %i.kh, null
  br i1 %.not148, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.ki = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.72) #8
  %.not149 = icmp eq ptr %i.ki, null
  br i1 %.not149, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.co, ptr noundef nonnull align 1 dereferenceable(7) @.str.71, i64 7, i1 false) #9
  br label %.critedge

bb.ds:                                            ; preds = %bb.dq
  %i.kj = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.73) #8
  %.not150 = icmp eq ptr %i.kj, null
  br i1 %.not150, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.kk = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.74) #8
  %.not151 = icmp eq ptr %i.kk, null
  br i1 %.not151, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.co, ptr noundef nonnull align 1 dereferenceable(7) @.str.73, i64 7, i1 false) #9
  br label %.critedge

bb.dv:                                            ; preds = %bb.dt
  %i.kl = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.75) #8
  %.not152 = icmp eq ptr %i.kl, null
  br i1 %.not152, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.km = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.76) #8
  %.not153 = icmp eq ptr %i.km, null
  br i1 %.not153, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.co, ptr noundef nonnull align 1 dereferenceable(6) @.str.75, i64 6, i1 false) #9
  br label %.critedge

bb.dy:                                            ; preds = %bb.dw
  %i.kn = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.77) #8
  %.not154 = icmp eq ptr %i.kn, null
  br i1 %.not154, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.ko = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.78) #8
  %.not155 = icmp eq ptr %i.ko, null
  br i1 %.not155, label %.preheader342, label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.co, ptr noundef nonnull align 1 dereferenceable(6) @.str.77, i64 6, i1 false) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.ea, %bb.dx, %bb.du, %bb.dr
  %i.kp = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.co) #9 ; 0 uses
  br label %.loopexit

.preheader342:                                    ; preds = %bb.dz, %.preheader342.backedge
  %.12374 = phi i32 [ %.12374.be, %.preheader342.backedge ], [ 0, %bb.dz ] ; 4 uses
  %i.kq = zext nneg i32 %.12374 to i64            ; 2 uses
  %i.kr = getelementptr inbounds nuw [64 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE12samsungalias, i64 %i.kq ; 2 uses
  %i.ks = shl nuw nsw i64 1, %i.kq
  %i.kt = and i64 %i.ks, 1285
  %.not157 = icmp eq i64 %i.kt, 0
  br i1 %.not157, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %.preheader342
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 1 ; 2 uses
  store ptr %i.ku, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.kv = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.ku) #8
  %.not159 = icmp ne i32 %i.kv, 0
  %i.kw = icmp samesign ult i32 %.12374, 11
  %or.cond403 = and i1 %.not159, %i.kw
  br i1 %or.cond403, label %.preheader342.backedge, label %.loopexit

bb.ec:                                            ; preds = %.preheader342
  %i.kx = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.kr) #8
  %.not158 = icmp eq i32 %i.kx, 0
  br i1 %.not158, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.ky = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.kz = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.ky) #9 ; 0 uses
  br label %.loopexit

bb.ee:                                            ; preds = %bb.ec
  %.old402 = icmp samesign ult i32 %.12374, 11
  br i1 %.old402, label %.preheader342.backedge, label %.loopexit

.preheader342.backedge:                           ; preds = %bb.ee, %bb.eb
  %.12374.be = add nuw nsw i32 %.12374, 1
  br label %.preheader342, !llvm.loop !23

bb.ef:                                            ; preds = %3
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 381696
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !99 ; 8 uses
  %.not146 = icmp eq i64 %i.lb, 0
  br i1 %.not146, label %.loopexit, label %.preheader344

.preheader344.1:                                  ; preds = %.preheader344
  %i.lc = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE7sonique, i64 %indvars.iv465 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.le = load i64, ptr %i.ld, align 16, !tbaa !101
  %i.lf = icmp eq i64 %i.lb, %i.le
  br i1 %i.lf, label %.split.loop.exit605, label %.preheader344.2

.preheader344.2:                                  ; preds = %.preheader344.1
  %i.lg = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE7sonique, i64 %indvars.iv465 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  %i.li = load i64, ptr %i.lh, align 16, !tbaa !101
  %i.lj = icmp eq i64 %i.lb, %i.li
  br i1 %i.lj, label %.split.loop.exit603, label %.preheader344.3

.preheader344.3:                                  ; preds = %.preheader344.2
  %i.lk = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE7sonique, i64 %indvars.iv465 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 96
  %i.lm = load i64, ptr %i.ll, align 16, !tbaa !101
  %i.ln = icmp eq i64 %i.lb, %i.lm
  br i1 %i.ln, label %.split.loop.exit601, label %.preheader344.4

.preheader344.4:                                  ; preds = %.preheader344.3
  %i.lo = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE7sonique, i64 %indvars.iv465 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 128
  %i.lq = load i64, ptr %i.lp, align 16, !tbaa !101
  %i.lr = icmp eq i64 %i.lb, %i.lq
  br i1 %i.lr, label %.split.loop.exit599, label %.preheader344.5

.preheader344.5:                                  ; preds = %.preheader344.4
  %i.ls = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE7sonique, i64 %indvars.iv465 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 160
  %i.lu = load i64, ptr %i.lt, align 16, !tbaa !101
  %i.lv = icmp eq i64 %i.lb, %i.lu
  br i1 %i.lv, label %.split.loop.exit597, label %.preheader344.6

.preheader344.6:                                  ; preds = %.preheader344.5
  %i.lw = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE7sonique, i64 %indvars.iv465 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 192
  %i.ly = load i64, ptr %i.lx, align 16, !tbaa !101
  %i.lz = icmp eq i64 %i.lb, %i.ly
  br i1 %i.lz, label %.split.loop.exit596, label %bb.eg

bb.eg:                                            ; preds = %.preheader344.6
  %indvars.iv.next466.6 = add nuw nsw i64 %indvars.iv465, 7 ; 2 uses
  %exitcond468.not.6 = icmp eq i64 %indvars.iv.next466.6, 105
  br i1 %exitcond468.not.6, label %.loopexit, label %.preheader344, !llvm.loop !24

.preheader344:                                    ; preds = %bb.ef, %bb.eg
  %indvars.iv465 = phi i64 [ %indvars.iv.next466.6, %bb.eg ], [ 0, %bb.ef ] ; 8 uses
  %i.ma = getelementptr inbounds nuw [32 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE7sonique, i64 %indvars.iv465 ; 2 uses
  %i.mb = load i64, ptr %i.ma, align 16, !tbaa !101
  %i.mc = icmp eq i64 %i.lb, %i.mb
  br i1 %i.mc, label %.split.loop.exit607, label %.preheader344.1

.split.loop.exit596:                              ; preds = %.preheader344.6
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 192
  br label %.split.loop.exit607

.split.loop.exit597:                              ; preds = %.preheader344.5
  %i.me = getelementptr inbounds nuw i8, ptr %i.ls, i64 160
  br label %.split.loop.exit607

.split.loop.exit599:                              ; preds = %.preheader344.4
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lo, i64 128
  br label %.split.loop.exit607

.split.loop.exit601:                              ; preds = %.preheader344.3
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lk, i64 96
  br label %.split.loop.exit607

.split.loop.exit603:                              ; preds = %.preheader344.2
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lg, i64 64
  br label %.split.loop.exit607

.split.loop.exit605:                              ; preds = %.preheader344.1
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  br label %.split.loop.exit607

.split.loop.exit607:                              ; preds = %.preheader344, %.split.loop.exit605, %.split.loop.exit603, %.split.loop.exit601, %.split.loop.exit599, %.split.loop.exit597, %.split.loop.exit596
  %.lcssa556 = phi ptr [ %i.mi, %.split.loop.exit605 ], [ %i.mh, %.split.loop.exit603 ], [ %i.mg, %.split.loop.exit601 ], [ %i.mf, %.split.loop.exit599 ], [ %i.me, %.split.loop.exit597 ], [ %i.md, %.split.loop.exit596 ], [ %i.ma, %.preheader344 ] ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.mk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mj, ptr noundef nonnull dereferenceable(5) @.str.79) #8
  %.not147 = icmp eq i32 %i.mk, 0
  br i1 %.not147, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %.split.loop.exit607
  %i.ml = getelementptr inbounds nuw i8, ptr %.lcssa556, i64 8
  %i.mm = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.ml) #9 ; 0 uses
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.split.loop.exit607
  %i.mn = getelementptr inbounds nuw i8, ptr %.lcssa556, i64 8
  %i.mo = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.mn) #9 ; 0 uses
  br label %.loopexit

bb.ej:                                            ; preds = %3
  tail call void @_ZN6LibRaw17remove_caseSubstrEPcS0_(ptr noundef nonnull %i.cn, ptr noundef nonnull @.str.80)
  tail call void @_ZN6LibRaw17remove_caseSubstrEPcS0_(ptr noundef nonnull %i.cn, ptr noundef nonnull @.str.81)
  tail call void @_ZN6LibRaw21removeExcessiveSpacesEPc(ptr noundef nonnull %i.cn)
  br label %bb.ek

bb.ek:                                            ; preds = %.backedge432, %bb.ej
  %.14371 = phi i32 [ 0, %bb.ej ], [ %.14371.be, %.backedge432 ] ; 4 uses
  %i.mp = zext nneg i32 %.14371 to i64            ; 2 uses
  %i.mq = getelementptr inbounds nuw [16 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE10kodakalias, i64 %i.mp ; 2 uses
  %i.mr = shl nuw nsw i64 1, %i.mp
  %i.ms = and i64 %i.mr, 2397333
  %.not138 = icmp eq i64 %i.ms, 0
  br i1 %.not138, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mq, i64 1 ; 2 uses
  store ptr %i.mt, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.mu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.mt) #8
  %.not140 = icmp ne i32 %i.mu, 0
  %i.mv = icmp samesign ult i32 %.14371, 23
  %or.cond406 = and i1 %.not140, %i.mv
  br i1 %or.cond406, label %.backedge432, label %.loopexit347

bb.em:                                            ; preds = %bb.ek
  %i.mw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) %i.mq) #8
  %.not139 = icmp eq i32 %i.mw, 0
  br i1 %.not139, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.mx = load ptr, ptr @_ZZN6LibRaw18GetNormalizedModelEvE4orig, align 8, !tbaa !104
  %i.my = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.mx) #9 ; 0 uses
  br label %.loopexit347

bb.eo:                                            ; preds = %bb.em
  %.old405 = icmp samesign ult i32 %.14371, 23
  br i1 %.old405, label %.backedge432, label %.loopexit347

.backedge432:                                     ; preds = %bb.eo, %bb.el
  %.14371.be = add nuw nsw i32 %.14371, 1
  br label %bb.ek, !llvm.loop !25

.loopexit347:                                     ; preds = %bb.el, %bb.eo, %bb.en
  %i.mz = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.82) #8
  %.not141 = icmp eq ptr %i.mz, null
  br i1 %.not141, label %sub_0285, label %bb.ep

bb.ep:                                            ; preds = %.loopexit347
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.co, ptr noundef nonnull align 1 dereferenceable(5) @.str.82, i64 5, i1 false) #9
  br label %.sink.split528

sub_0285:                                         ; preds = %.loopexit347
  %i.na = load i8, ptr %i.co, align 4
  %.not409 = icmp eq i8 %i.na, 52
  br i1 %.not409, label %sub_1286, label %.tail284.thread

sub_1286:                                         ; preds = %sub_0285
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.nc = load i8, ptr %i.nb, align 1
  %.not410 = icmp eq i8 %i.nc, 48
  br i1 %.not410, label %.tail284, label %.tail284.thread

.tail284:                                         ; preds = %sub_1286
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 270
  %i.ne = load i8, ptr %i.nd, align 2
  %i.nf = icmp eq i8 %i.ne, 0
  br i1 %i.nf, label %bb.eq, label %.tail284.thread

bb.eq:                                            ; preds = %.tail284
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.co, ptr noundef nonnull align 1 dereferenceable(5) @.str.84, i64 5, i1 false) #9
  br label %.sink.split528

.tail284.thread:                                  ; preds = %sub_1286, %sub_0285, %.tail284
  %i.ng = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.85) #8
  %.not143 = icmp eq ptr %i.ng, null
  br i1 %.not143, label %bb.es, label %bb.er

bb.er:                                            ; preds = %.tail284.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.co, ptr noundef nonnull align 1 dereferenceable(5) @.str.85, i64 5, i1 false) #9
  br label %.sink.split528

bb.es:                                            ; preds = %.tail284.thread
  %i.nh = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.co, ptr noundef nonnull dereferenceable(1) @.str.86) #8
  %.not144 = icmp eq ptr %i.nh, null
  br i1 %.not144, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.co, ptr noundef nonnull align 1 dereferenceable(6) @.str.86, i64 6, i1 false) #9
  br label %.sink.split528

.sink.split528:                                   ; preds = %bb.ep, %bb.er, %bb.et, %bb.eq
  %i.ni = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cn, ptr noundef nonnull dereferenceable(1) %i.co) #9 ; 0 uses
  br label %bb.eu

bb.eu:                                            ; preds = %.sink.split528, %bb.es
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 544
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.ex
  %indvars.iv461 = phi i64 [ 0, %bb.eu ], [ %indvars.iv.next462, %bb.ex ] ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6LibRaw18GetNormalizedModelEvE15KodakMonochrome, i64 %indvars.iv461
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !104 ; 2 uses
  %i.nn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nm) #8
  %i.no = tail call i32 @strncmp(ptr noundef nonnull %i.co, ptr noundef nonnull %i.nm, i64 noundef %i.nn) #8
  %.not145 = icmp eq i32 %i.no, 0
  br i1 %.not145, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 1, ptr %i.nj, align 4, !tbaa !105
  store i32 0, ptr %i.nk, align 8, !tbaa !106
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ev, %bb.ew
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %exitcond464.not = icmp eq i64 %indvars.iv.next462, 23
  br i1 %exitcond464.not, label %.loopexit, label %bb.ev, !llvm.loop !26

.loopexit:                                        ; preds = %bb.bb, %bb.be, %bb.az, %bb.ar, %bb.ex, %bb.eg, %bb.ee, %bb.eb, %bb.cx, %bb.cu, %bb.ck, %bb.ch, %sub_0281, %bb.cg, %bb.bo, %3, %bb.aq, %bb.aq, %bb.bd, %bb.bk, %bb.bx, %bb.by, %bb.bv, %bb.cq, %bb.cs, %bb.cr, %.loopexit338, %bb.dj, %.tail280, %bb.ed, %.critedge, %bb.ef, %bb.ei, %.loopexit341, %bb.do, %bb.cw, %bb.cj, %.loopexit358, %bb.bt, %bb.bf, %bb.at, %bb.as, %bb.ay, %bb.ba, %bb.aw, %bb.av, %bb.au
  %i.np = phi i1 [ false, %bb.at ], [ false, %bb.as ], [ false, %bb.ee ], [ false, %bb.aq ], [ false, %bb.aq ], [ true, %bb.ba ], [ false, %bb.eg ], [ false, %bb.ay ], [ false, %bb.aw ], [ false, %bb.av ], [ false, %bb.au ], [ false, %bb.ei ], [ false, %bb.bd ], [ false, %bb.ex ], [ false, %bb.bf ], [ false, %bb.bk ], [ false, %bb.ar ], [ false, %bb.bt ], [ false, %.loopexit358 ], [ false, %bb.bx ], [ false, %bb.by ], [ false, %bb.bo ], [ false, %bb.bv ], [ false, %sub_0281 ], [ false, %bb.cj ], [ false, %3 ], [ false, %.loopexit338 ], [ false, %bb.cr ], [ false, %bb.cs ], [ false, %bb.cq ], [ false, %bb.ef ], [ false, %bb.cw ], [ false, %bb.az ], [ false, %.tail280 ], [ false, %bb.dj ], [ false, %bb.do ], [ false, %.loopexit341 ], [ false, %.critedge ], [ false, %bb.cx ], [ false, %bb.ed ], [ false, %bb.ck ], [ false, %bb.cg ], [ false, %bb.ch ], [ false, %bb.cu ], [ false, %bb.eb ], [ false, %bb.be ], [ false, %bb.bb ]
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 5 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 1356 ; 10 uses
  %i.ns = load i8, ptr %i.nr, align 4, !tbaa !93  ; 3 uses
  %.not206 = icmp eq i8 %i.ns, 0
  br i1 %.not206, label %.tail293.thread, label %bb.ey

bb.ey:                                            ; preds = %.loopexit
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 1354 ; 4 uses
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !90
  %.not207 = icmp eq i16 %i.nu, 15
  br i1 %.not207, label %sub_0290, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.nv = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.nr, ptr noundef nonnull dereferenceable(12) @.str.87, i64 noundef 11) #8
  %.not208 = icmp eq i32 %i.nv, 0
  br i1 %.not208, label %bb.fa, label %sub_0290

bb.fa:                                            ; preds = %bb.ez
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 1367
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !93
  switch i8 %i.nx, label %sub_0290 [
    i8 67, label %bb.fb
    i8 50, label %bb.fb
    i8 53, label %bb.fb
    i8 57, label %bb.fb
  ]

bb.fb:                                            ; preds = %bb.fa, %bb.fa, %bb.fa, %bb.fa
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 12, ptr %i.ny, align 8, !tbaa !96
  store i16 15, ptr %i.nt, align 2, !tbaa !90
  br label %.tail293.thread

sub_0290:                                         ; preds = %bb.ey, %bb.ez, %bb.fa
  %.not412 = icmp eq i8 %i.ns, 88
  br i1 %.not412, label %.tail289, label %.tail289.thread

.tail289:                                         ; preds = %sub_0290
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 1357
  %i.oa = load i8, ptr %i.nz, align 1
  %i.ob = icmp eq i8 %i.oa, 70
  br i1 %i.ob, label %bb.fc, label %.thread

.tail289.thread:                                  ; preds = %sub_0290
  %i.oc = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.nr, ptr noundef nonnull dereferenceable(6) @.str.89, i64 noundef 5) #8
  %.not210 = icmp eq i32 %i.oc, 0
  br i1 %.not210, label %bb.fc, label %sub_0294

.thread:                                          ; preds = %.tail289
  %i.od = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.nr, ptr noundef nonnull dereferenceable(6) @.str.89, i64 noundef 5) #8
  %.not210497 = icmp eq i32 %i.od, 0
  br i1 %.not210497, label %bb.fc, label %.tail293.thread

bb.fc:                                            ; preds = %.thread, %.tail289.thread, %.tail289
  store i16 24, ptr %i.nt, align 2, !tbaa !90
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 11, ptr %i.oe, align 8, !tbaa !96
  br label %.tail293.thread

sub_0294:                                         ; preds = %.tail289.thread
  %.not413 = icmp eq i8 %i.ns, 83
  br i1 %.not413, label %.tail293, label %.tail293.thread

.tail293:                                         ; preds = %sub_0294
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 1357
  %i.og = load i8, ptr %i.of, align 1
  %i.oh = icmp eq i8 %i.og, 105
  br i1 %i.oh, label %bb.fd, label %.tail293.thread

bb.fd:                                            ; preds = %.tail293
  store i16 41, ptr %i.nt, align 2, !tbaa !90
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 14, ptr %i.oi, align 8, !tbaa !96
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.nr)
  %endptr = getelementptr inbounds i8, ptr %i.nr, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %endptr, ptr noundef nonnull align 1 dereferenceable(16) @.str.91, i64 16, i1 false)
  br label %.tail293.thread

.tail293.thread:                                  ; preds = %.thread, %sub_0294, %bb.fb, %.tail293, %bb.fd, %bb.fc, %.loopexit
  %i.oj = load i32, ptr %i.a, align 4, !tbaa !89  ; 5 uses
  switch i32 %i.oj, label %.tail297.thread [
    i32 29, label %bb.fe
    i32 18, label %sub_0298
  ]

bb.fe:                                            ; preds = %.tail293.thread
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 1354 ; 4 uses
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !90
  switch i16 %i.ol, label %bb.fk [
    i16 42, label %bb.ff
    i16 0, label %bb.ff
  ]

bb.ff:                                            ; preds = %bb.fe, %bb.fe
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 153520
  %i.on = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.om, ptr noundef nonnull dereferenceable(6) @.str.92, i64 noundef 5) #8
  %.not213 = icmp eq i32 %i.on, 0
  br i1 %.not213, label %bb.fg, label %bb.fk

bb.fg:                                            ; preds = %bb.ff
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 11, ptr %i.oo, align 8, !tbaa !96
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 153525
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !93
  switch i8 %i.oq, label %.tail297.thread [
    i8 67, label %bb.fh
    i8 72, label %bb.fi
    i8 77, label %bb.fj
  ]

bb.fh:                                            ; preds = %bb.fg
  store i16 8, ptr %i.ok, align 2, !tbaa !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.nr, ptr noundef nonnull align 1 dereferenceable(11) @.str.93, i64 11, i1 false) #9
  br label %.tail297.thread

bb.fi:                                            ; preds = %bb.fg
  store i16 14, ptr %i.ok, align 2, !tbaa !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.nr, ptr noundef nonnull align 1 dereferenceable(17) @.str.94, i64 17, i1 false) #9
  br label %.tail297.thread

bb.fj:                                            ; preds = %bb.fg
  store i16 24, ptr %i.ok, align 2, !tbaa !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.nr, ptr noundef nonnull align 1 dereferenceable(11) @.str.95, i64 11, i1 false) #9
  br label %.tail297.thread

bb.fk:                                            ; preds = %bb.fe, %bb.ff
  %i.or = tail call i32 @strncasecmp(ptr noundef nonnull %i.co, ptr noundef nonnull @.str.96, i64 noundef 10) #8
  %.not214 = icmp eq i32 %i.or, 0
  br i1 %.not214, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 8, ptr %i.os, align 8, !tbaa !96
  br label %.tail297.thread

bb.fm:                                            ; preds = %bb.fk
  %i.ot = tail call i32 @strncasecmp(ptr noundef nonnull %i.co, ptr noundef nonnull @.str.97, i64 noundef 7) #8
  %.not215 = icmp eq i32 %i.ot, 0
  br i1 %.not215, label %bb.fn, label %.tail297.thread

bb.fn:                                            ; preds = %bb.fm
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 6, ptr %i.ou, align 8, !tbaa !96
  br label %.tail297.thread

sub_0298:                                         ; preds = %.tail293.thread
  %i.ov = load i8, ptr %i.cn, align 4
  %.not414 = icmp eq i8 %i.ov, 68
  br i1 %.not414, label %sub_1299, label %.tail297.thread

sub_1299:                                         ; preds = %sub_0298
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 461
  %i.ox = load i8, ptr %i.ow, align 1
  %.not415 = icmp eq i8 %i.ox, 66
  br i1 %.not415, label %.tail297, label %.tail297.thread

.tail297:                                         ; preds = %sub_1299
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 462
  %i.oz = load i8, ptr %i.oy, align 2
  %i.pa = icmp eq i8 %i.oz, 80
  br i1 %i.pa, label %bb.fo, label %.tail297.thread

bb.fo:                                            ; preds = %.tail297
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.nr, ptr noundef nonnull align 1 dereferenceable(15) @.str.99, i64 15, i1 false) #9
  br label %.tail297.thread

.tail297.thread:                                  ; preds = %sub_1299, %sub_0298, %.tail293.thread, %bb.fg, %bb.fo, %.tail297, %bb.fi, %bb.fj, %bb.fh, %bb.fm, %bb.fn, %bb.fl
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 1352 ; 23 uses
  %i.pc = load i16, ptr %i.pb, align 8, !tbaa !96
  %i.pd = icmp eq i16 %i.pc, 0
  br i1 %i.pd, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %.tail297.thread
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 1354
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !90
  switch i16 %i.pf, label %.thread273 [
    i16 0, label %bb.fq
    i16 44, label %bb.fq
  ]

bb.fq:                                            ; preds = %bb.fp, %bb.fp, %.tail297.thread
  switch i32 %i.oj, label %.thread273 [
    i32 8, label %sub_0303
    i32 43, label %bb.fr
    i32 47, label %bb.fu
    i32 18, label %bb.ge
    i32 59, label %bb.gn
    i32 29, label %bb.gu
    i32 40, label %bb.he
    i32 9, label %bb.hj
    i32 13, label %bb.hj
    i32 60, label %sub_0325
    i32 30, label %sub_0329
    i32 36, label %sub_0334
    i32 63, label %bb.ia
    i32 54, label %bb.if
    i32 57, label %bb.ih
    i32 49, label %bb.ij
    i32 16, label %bb.il
  ]
end_hunk_0
