Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cff_face_init:bb.a
  %i.ho = call ptr %i.hn(i32 noundef %i.ha) #18, !inline_history !0
  br label %cff_index_get_sid_string.exit

cff_index_get_sid_string.exit:                    ; preds = %bb.au, %bb.aw
  %.0.i = phi ptr [ %i.ho, %bb.aw ], [ %i.hk, %bb.au ] ; 2 uses
  %.not397 = icmp eq ptr %.0.i, null
  br i1 %.not397, label %cff_index_get_sid_string.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %cff_index_get_sid_string.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.hp = call ptr @ft_mem_strdup(ptr noundef %i.ar, ptr noundef nonnull %.0.i, ptr noundef nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !336
  br label %cff_index_get_sid_string.exit.thread

cff_index_get_sid_string.exit.thread:             ; preds = %bb.ar, %bb.ar, %bb.at, %bb.av, %cff_index_get_sid_string.exit, %bb.ax
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !336 ; 2 uses
  %.not398 = icmp eq ptr %i.hs, null
  br i1 %.not398, label %bb.ay, label %.thread450

bb.ay:                                            ; preds = %cff_index_get_sid_string.exit.thread
  %i.ht = call fastcc ptr @cff_index_get_name(ptr noundef nonnull %i.as, i32 noundef %i.bd) ; 3 uses
  store ptr %i.ht, ptr %i.hr, align 8, !tbaa !336
  %.not399 = icmp eq ptr %i.ht, null
  br i1 %.not399, label %.thread448, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call fastcc void @remove_subset_prefix(ptr noundef %i.ht)
  %.pr447 = load ptr, ptr %i.hr, align 8, !tbaa !336 ; 2 uses
  %.not400 = icmp eq ptr %.pr447, null
  br i1 %.not400, label %.thread448, label %.thread450

.thread450:                                       ; preds = %cff_index_get_sid_string.exit.thread, %bb.az
  %i.hu = phi ptr [ %i.hs, %cff_index_get_sid_string.exit.thread ], [ %.pr447, %bb.az ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.as, i64 1652
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !129 ; 4 uses
  %i.hx = icmp eq i32 %i.hw, 65535
  br i1 %i.hx, label %cff_index_get_sid_string.exit433.thread, label %bb.ba

bb.ba:                                            ; preds = %.thread450
  %i.hy = icmp ugt i32 %i.hw, 390
  br i1 %i.hy, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.hz = add i32 %i.hw, -391                     ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.as, i64 1608
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !125
  %i.ic = icmp ult i32 %i.hz, %i.ib
  br i1 %i.ic, label %bb.bc, label %cff_index_get_sid_string.exit433.thread

bb.bc:                                            ; preds = %bb.bb
  %i.id = getelementptr inbounds nuw i8, ptr %i.as, i64 1616
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !126
  %i.if = zext i32 %i.hz to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.if
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !127
  br label %cff_index_get_sid_string.exit433

bb.bd:                                            ; preds = %bb.ba
  %i.ii = load ptr, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %.not.i431 = icmp eq ptr %i.ii, null
  br i1 %.not.i431, label %cff_index_get_sid_string.exit433.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !128
  %i.il = call ptr %i.ik(i32 noundef %i.hw) #18, !inline_history !0
  %.pre525 = load ptr, ptr %i.hr, align 8, !tbaa !336
  br label %cff_index_get_sid_string.exit433

cff_index_get_sid_string.exit433:                 ; preds = %bb.bc, %bb.be
  %i.im = phi ptr [ %.pre525, %bb.be ], [ %i.hu, %bb.bc ] ; 2 uses
  %.0.i432 = phi ptr [ %i.il, %bb.be ], [ %i.ih, %bb.bc ] ; 3 uses
  %i.in = icmp ne ptr %.0.i432, null
  %i.io = icmp ne ptr %i.im, null
  %or.cond4 = select i1 %i.in, i1 %i.io, i1 false
  br i1 %or.cond4, label %.preheader, label %cff_index_get_sid_string.exit433.thread

.preheader:                                       ; preds = %cff_index_get_sid_string.exit433
  %i.ip = load i8, ptr %.0.i432, align 1, !tbaa !130 ; 2 uses
  %.not402501 = icmp eq i8 %i.ip, 0
  br i1 %.not402501, label %cff_index_get_sid_string.exit433.thread, label %.lr.ph484

.lr.ph484:                                        ; preds = %.preheader, %.outer.backedge
  %i.iq = phi i8 [ %i.iu, %.outer.backedge ], [ %i.ip, %.preheader ]
  %.0325.ph505 = phi ptr [ %.0325.ph.be, %.outer.backedge ], [ %i.im, %.preheader ] ; 5 uses
  %.0326.ph502 = phi ptr [ %.0326.ph.be, %.outer.backedge ], [ %.0.i432, %.preheader ] ; 2 uses
  %.fr = freeze i8 %i.iq                          ; 3 uses
  %i.ir = load i8, ptr %.0325.ph505, align 1, !tbaa !130 ; 2 uses
  %i.is = icmp eq i8 %.fr, %i.ir                  ; 2 uses
  switch i8 %.fr, label %.lr.ph484.split.split [
    i8 32, label %.lr.ph484.split.us
    i8 45, label %.lr.ph484.split.us
  ]

.lr.ph484.split.us:                               ; preds = %.lr.ph484, %.lr.ph484
  br i1 %i.is, label %.split.us, label %.outer.backedge

.lr.ph484.split.split:                            ; preds = %.lr.ph484
  br i1 %i.is, label %.split.us, label %.lr.ph500

.split.us:                                        ; preds = %bb.bf, %.lr.ph484.split.split, %.lr.ph484.split.us
  %.us-phi = phi ptr [ %.0325.ph505, %.lr.ph484.split.us ], [ %.0325.ph505, %.lr.ph484.split.split ], [ %i.iw, %bb.bf ]
  %i.it = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.lr.ph484.split.us, %.split.us
  %.0325.ph.be = phi ptr [ %i.it, %.split.us ], [ %.0325.ph505, %.lr.ph484.split.us ]
  %.0326.ph.be = getelementptr inbounds nuw i8, ptr %.0326.ph502, i64 1 ; 2 uses
  %i.iu = load i8, ptr %.0326.ph.be, align 1, !tbaa !130 ; 2 uses
  %.not402 = icmp eq i8 %i.iu, 0
  br i1 %.not402, label %cff_index_get_sid_string.exit433.thread, label %.lr.ph484, !llvm.loop !310

.lr.ph500:                                        ; preds = %.lr.ph484.split.split, %bb.bf
  %i.iv = phi i8 [ %i.ix, %bb.bf ], [ %i.ir, %.lr.ph484.split.split ]
  %.0325483499 = phi ptr [ %i.iw, %bb.bf ], [ %.0325.ph505, %.lr.ph484.split.split ]
  switch i8 %i.iv, label %cff_index_get_sid_string.exit433.thread [
    i8 32, label %bb.bf
    i8 45, label %bb.bf
    i8 0, label %.split493.us
  ]

bb.bf:                                            ; preds = %.lr.ph500, %.lr.ph500
  %i.iw = getelementptr inbounds nuw i8, ptr %.0325483499, i64 1 ; 3 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !130 ; 2 uses
  %i.iy = icmp eq i8 %.fr, %i.ix
  br i1 %i.iy, label %.split.us, label %.lr.ph500

.split493.us:                                     ; preds = %.lr.ph500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.iz = call ptr @ft_mem_strdup(ptr noundef %i.ar, ptr noundef nonnull %.0326.ph502, ptr noundef nonnull %i.c) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.not404 = icmp eq ptr %i.iz, null
  br i1 %.not404, label %cff_index_get_sid_string.exit433.thread, label %bb.bm

.thread448:                                       ; preds = %bb.ay, %bb.az
  %i.ja = getelementptr inbounds nuw i8, ptr %i.as, i64 1936
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !131 ; 4 uses
  %i.jc = icmp eq i32 %i.jb, 65535
  br i1 %i.jc, label %cff_index_get_sid_string.exit433.thread, label %bb.bg

bb.bg:                                            ; preds = %.thread448
  %i.jd = icmp ugt i32 %i.jb, 390
  br i1 %i.jd, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.je = add i32 %i.jb, -391                     ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.as, i64 1608
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !125
  %i.jh = icmp ult i32 %i.je, %i.jg
  br i1 %i.jh, label %bb.bi, label %cff_index_get_sid_string.exit433.thread

bb.bi:                                            ; preds = %bb.bh
  %i.ji = getelementptr inbounds nuw i8, ptr %i.as, i64 1616
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !126
  %i.jk = zext i32 %i.je to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jk
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !127
  br label %cff_index_get_sid_string.exit436

bb.bj:                                            ; preds = %bb.bg
  %i.jn = load ptr, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %.not.i434 = icmp eq ptr %i.jn, null
  br i1 %.not.i434, label %cff_index_get_sid_string.exit433.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 40
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !128
  %i.jq = call ptr %i.jp(i32 noundef %i.jb) #18, !inline_history !0
  br label %cff_index_get_sid_string.exit436

cff_index_get_sid_string.exit436:                 ; preds = %bb.bi, %bb.bk
  %.0.i435 = phi ptr [ %i.jq, %bb.bk ], [ %i.jm, %bb.bi ] ; 2 uses
  %.not401 = icmp eq ptr %.0.i435, null
  br i1 %.not401, label %cff_index_get_sid_string.exit433.thread, label %bb.bl

bb.bl:                                            ; preds = %cff_index_get_sid_string.exit436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.jr = call ptr @ft_mem_strdup(ptr noundef %i.ar, ptr noundef nonnull %.0.i435, ptr noundef nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  store ptr %i.jr, ptr %i.hr, align 8, !tbaa !336
  br label %cff_index_get_sid_string.exit433.thread

bb.bm:                                            ; preds = %.split493.us
  %i.js = load ptr, ptr %i.hr, align 8, !tbaa !336
  call fastcc void @remove_style(ptr noundef %i.js, ptr noundef %i.iz)
  br label %bb.bn

cff_index_get_sid_string.exit433.thread:          ; preds = %.outer.backedge, %.lr.ph500, %.preheader, %bb.bh, %bb.bj, %.thread448, %bb.bb, %bb.bd, %.thread450, %.split493.us, %cff_index_get_sid_string.exit433, %bb.bl, %cff_index_get_sid_string.exit436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.jt = call ptr @ft_mem_strdup(ptr noundef %i.ar, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bn

bb.bn:                                            ; preds = %cff_index_get_sid_string.exit433.thread, %bb.bm
  %.sink581 = phi ptr [ %i.jt, %cff_index_get_sid_string.exit433.thread ], [ %i.iz, %bb.bm ]
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %.sink581, ptr %i.ju, align 8, !tbaa !337
  %spec.select = select i1 %.not376.not, i32 2073, i32 2065 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.as, i64 1664
  %i.jw = load i8, ptr %i.jv, align 8, !tbaa !132
  %.not407 = icmp eq i8 %i.jw, 0
  %6 = or disjoint i32 %spec.select, 4
  %.1331 = select i1 %.not407, i32 %spec.select, i32 %6
  %7 = zext nneg i32 %.1331 to i64
  %i.jx = load i64, ptr %i.bo, align 8, !tbaa !111
  %i.jy = or i64 %i.jx, %7
  store i64 %i.jy, ptr %i.bo, align 8, !tbaa !111
  %i.jz = getelementptr inbounds nuw i8, ptr %i.as, i64 1672
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !133
  %.not408 = icmp ne i64 %i.ka, 0
  %.2 = zext i1 %.not408 to i32                   ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.as, i64 1660
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !134 ; 4 uses
  %i.kd = icmp eq i32 %i.kc, 65535
  br i1 %i.kd, label %cff_index_get_sid_string.exit439.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ke = icmp ugt i32 %i.kc, 390
  br i1 %i.ke, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.kf = add i32 %i.kc, -391                     ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.as, i64 1608
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !125
  %i.ki = icmp ult i32 %i.kf, %i.kh
  br i1 %i.ki, label %bb.bq, label %cff_index_get_sid_string.exit439.thread

bb.bq:                                            ; preds = %bb.bp
  %i.kj = getelementptr inbounds nuw i8, ptr %i.as, i64 1616
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !126
  %i.kl = zext i32 %i.kf to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !127
  br label %cff_index_get_sid_string.exit439

bb.br:                                            ; preds = %bb.bo
  %i.ko = load ptr, ptr %i.bb, align 8, !tbaa !92 ; 2 uses
  %.not.i437 = icmp eq ptr %i.ko, null
  br i1 %.not.i437, label %cff_index_get_sid_string.exit439.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 40
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !128
  %i.kr = call ptr %i.kq(i32 noundef %i.kc) #18, !inline_history !0
  br label %cff_index_get_sid_string.exit439

cff_index_get_sid_string.exit439:                 ; preds = %bb.bq, %bb.bs
  %.0.i438 = phi ptr [ %i.kr, %bb.bs ], [ %i.kn, %bb.bq ] ; 3 uses
  %.not409 = icmp eq ptr %.0.i438, null
  br i1 %.not409, label %cff_index_get_sid_string.exit439.thread, label %bb.bt

bb.bt:                                            ; preds = %cff_index_get_sid_string.exit439
  %i.ks = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.i438, ptr noundef nonnull dereferenceable(5) @.str.20) #19
  %.not410 = icmp eq i32 %i.ks, 0
  br i1 %.not410, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kt = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.i438, ptr noundef nonnull dereferenceable(6) @.str.21) #19
  %.not411 = icmp eq i32 %i.kt, 0
  br i1 %.not411, label %bb.bv, label %cff_index_get_sid_string.exit439.thread

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ku = or disjoint i32 %.2, 2
  br label %cff_index_get_sid_string.exit439.thread

cff_index_get_sid_string.exit439.thread:          ; preds = %bb.bp, %bb.br, %bb.bn, %bb.bu, %bb.bv, %cff_index_get_sid_string.exit439
  %.3 = phi i32 [ %.2, %bb.bu ], [ %i.ku, %bb.bv ], [ %.2, %cff_index_get_sid_string.exit439 ], [ %.2, %bb.bn ], [ %.2, %bb.br ], [ %.2, %bb.bp ] ; 5 uses
  %i.kv = and i32 %.3, 2
  %.not412 = icmp eq i32 %i.kv, 0
  br i1 %.not412, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %cff_index_get_sid_string.exit439.thread
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !337 ; 3 uses
  %.not413 = icmp eq ptr %i.kx, null
  br i1 %.not413, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ky = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.kx, ptr noundef nonnull dereferenceable(5) @.str.20, i64 noundef 4) #19
  %.not414 = icmp eq i32 %i.ky, 0
  br i1 %.not414, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kz = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.kx, ptr noundef nonnull dereferenceable(6) @.str.21, i64 noundef 5) #19
  %.not415 = icmp eq i32 %i.kz, 0
  br i1 %.not415, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.la = or disjoint i32 %.3, 2
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz, %bb.bw, %cff_index_get_sid_string.exit439.thread
  %.4 = phi i32 [ %.3, %cff_index_get_sid_string.exit439.thread ], [ %.3, %bb.by ], [ %i.la, %bb.bz ], [ %.3, %bb.bw ]
  %i.lb = zext nneg i32 %.4 to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !338
  %.pre526 = load i32, ptr %i.bk, align 4, !tbaa !110
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge
  %i.ld = phi i32 [ %.pre526, %bb.ca ], [ %.pre527, %._crit_edge ]
  %i.le = icmp ne i32 %i.ld, 65535                ; 3 uses
  %or.cond6 = or i1 %i.ap, %i.le
  br i1 %or.cond6, label %bb.cc, label %.thread461

.thread461:                                       ; preds = %bb.cb
  %i.lf = load i64, ptr %i.bo, align 8, !tbaa !111
  %i.lg = or i64 %i.lf, 512
  store i64 %i.lg, ptr %i.bo, align 8, !tbaa !111
  %i.lh = icmp ne i8 %.1341, 0
  br label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.li = icmp ne i8 %.1341, 0                    ; 2 uses
  %or.cond9 = and i1 %i.li, %i.le
  br i1 %or.cond9, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.lj = load i64, ptr %i.bo, align 8, !tbaa !111
  %i.lk = or i64 %i.lj, 4096
  store i64 %i.lk, ptr %i.bo, align 8, !tbaa !111
  br label %bb.ce

bb.ce:                                            ; preds = %.thread461, %bb.cd, %bb.cc
  %i.ll = phi i1 [ %i.lh, %.thread461 ], [ true, %bb.cd ], [ %i.li, %bb.cc ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !339 ; 4 uses
  %i.lo = icmp sgt i32 %i.ln, 0
  br i1 %i.lo, label %.lr.ph509, label %._crit_edge510

.lr.ph509:                                        ; preds = %bb.ce
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !340
  %wide.trip.count = zext nneg i32 %i.ln to i64
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph509, %.thread463
  %indvars.iv518 = phi i64 [ 0, %.lr.ph509 ], [ %indvars.iv.next519, %.thread463 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv518
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !341 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  %i.lu = load i16, ptr %i.lt, align 4, !tbaa !342
  switch i16 %i.lu, label %.thread463 [
    i16 3, label %bb.cg
    i16 0, label %.loopexit
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 14
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !343
  %i.lx = icmp eq i16 %i.lw, 1
  br i1 %i.lx, label %.loopexit, label %.thread463

.thread463:                                       ; preds = %bb.cf, %bb.cg
  %indvars.iv.next519 = add nuw nsw i64 %indvars.iv518, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next519, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge510, label %bb.cf, !llvm.loop !311

._crit_edge510:                                   ; preds = %.thread463, %bb.ce
  %or.cond470.not = and i1 %i.le, %i.ll
  br i1 %or.cond470.not, label %bb.cq, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge510
  store ptr %1, ptr %5, align 8, !tbaa !344
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 3, ptr %i.ly, align 4, !tbaa !342
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1, ptr %i.lz, align 2, !tbaa !343
  %i.ma = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1970170211, ptr %i.ma, align 8, !tbaa !345
  %i.mb = call i32 @FT_CMap_New(ptr noundef nonnull @cff_cmap_unicode_class_rec, ptr noundef null, ptr noundef nonnull %5, ptr noundef null) #18 ; 3 uses
  store i32 %i.mb, ptr %i.e, align 4, !tbaa !67
  %.not417 = icmp eq i32 %i.mb, 0
  br i1 %.not417, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %trunc472 = trunc i32 %i.mb to i8
  switch i8 %trunc472, label %bb.cq [
    i8 -93, label %bb.cj
    i8 7, label %bb.cj
  ]

bb.cj:                                            ; preds = %bb.ci, %bb.ci, %bb.ch
  store i32 0, ptr %i.e, align 4, !tbaa !67
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !346
  %.not420 = icmp eq ptr %i.md, null
  br i1 %.not420, label %bb.ck, label %.loopexit

bb.ck:                                            ; preds = %bb.cj
  %i.me = load i32, ptr %i.lm, align 8, !tbaa !339
  %.not421 = icmp eq i32 %i.ln, %i.me
  br i1 %.not421, label %.loopexit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !340
  %i.mh = sext i32 %i.ln to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mg, i64 %i.mh
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !341
  store ptr %i.mj, ptr %i.mc, align 8, !tbaa !346
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cf, %bb.cg, %bb.cj, %bb.ck, %bb.cl
  %i.mk = getelementptr inbounds nuw i8, ptr %i.as, i64 264
end_hunk_0
begin_hunk_1_@cff_glyph_load:bb.a
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !407
  %i.em = call i32 %i.el(ptr noundef nonnull %0, i32 noundef %.0291.i) #18, !inline_history !365
  %.not331.i = icmp eq i32 %i.em, 0
  br i1 %.not331.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !408
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1398163232, ptr %i.er, align 8, !tbaa !393
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 336 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !194
  call void %i.et(ptr noundef nonnull %i.m, i8 noundef zeroext 0, i32 noundef %.0291.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #18, !inline_history !365
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !194
  call void %i.eu(ptr noundef nonnull %i.m, i8 noundef zeroext 1, i32 noundef %.0291.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #18, !inline_history !365
  %i.ev = load i16, ptr %i.d, align 2, !tbaa !66
  %i.ew = zext i16 %i.ev to i64                   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !396
  %i.ey = load i16, ptr %i.e, align 2, !tbaa !66
  %i.ez = zext i16 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !398
  %i.fb = mul i64 %i.eo, %i.ew                    ; 2 uses
  %i.fc = ashr i64 %i.fb, 63
  %i.fd = add i64 %i.fb, 32768
  %i.fe = add i64 %i.fd, %i.fc
  %i.ff = ashr i64 %i.fe, 16
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !386
  %i.fh = mul i64 %i.eq, %i.ez                    ; 2 uses
  %i.fi = ashr i64 %i.fh, 63
  %i.fj = add i64 %i.fh, 32768
  %i.fk = add i64 %i.fj, %i.fi
  %i.fl = ashr i64 %i.fk, 16
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %cff_slot_load.exit

bb.w:                                             ; preds = %bb.u, %bb.r, %bb.q
  %i.fn = and i32 %3, 2
  %i.fo = icmp eq i32 %i.fn, 0                    ; 2 uses
  %i.fp = zext i1 %i.fo to i8                     ; 2 uses
  %i.fq = trunc i32 %3 to i8
  %i.fr = and i8 %i.fq, 1                         ; 2 uses
  %i.fs = xor i8 %i.fr, 1
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store i8 %i.fp, ptr %i.ft, align 8, !tbaa !410
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 305
  store i8 %i.fs, ptr %i.fu, align 1, !tbaa !411
  %.not332.not.i = icmp eq i8 %i.fr, 0            ; 2 uses
  br i1 %.not332.not.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fw = load <2 x i64>, ptr %i.fv, align 8, !tbaa !116
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fx = phi <2 x i64> [ %i.fw, %bb.x ], [ splat (i64 65536), %bb.w ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store <2 x i64> %i.fx, ptr %i.fy, align 8, !tbaa !116
  %i.ga = getelementptr inbounds nuw i8, ptr %i.o, i64 2856
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !120 ; 3 uses
  %.not333.i = icmp eq i32 %i.gb, 0
  br i1 %.not333.i, label %bb.ak, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gc = getelementptr inbounds nuw i8, ptr %i.o, i64 4920
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !149 ; 6 uses
  %.not.i360.i = icmp eq ptr %i.gd, null
  br i1 %.not.i360.i, label %cff_fd_select_get.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ge = getelementptr inbounds nuw i8, ptr %i.o, i64 4912
  %i.gf = load i8, ptr %i.ge, align 8, !tbaa !151
  switch i8 %i.gf, label %cff_fd_select_get.exit.i [
    i8 0, label %bb.ab
    i8 3, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.gg = zext i32 %.0291.i to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !130
  br label %cff_fd_select_get.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.gj = getelementptr inbounds nuw i8, ptr %i.o, i64 4932 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !196
  %i.gl = sub i32 %.0291.i, %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.o, i64 4936 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !197
  %i.go = icmp ult i32 %i.gl, %i.gn
  br i1 %i.go, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gp = getelementptr inbounds nuw i8, ptr %i.o, i64 4940
  %i.gq = load i8, ptr %i.gp, align 4, !tbaa !198
  br label %cff_fd_select_get.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.gr = getelementptr inbounds nuw i8, ptr %i.o, i64 4928
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !150
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %i.gw = load i8, ptr %i.gd, align 1, !tbaa !130
  %i.gx = zext i8 %i.gw to i32
  %i.gy = shl nuw nsw i32 %i.gx, 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !130
  %i.hb = zext i8 %i.ha to i32
  %i.hc = or disjoint i32 %i.gy, %i.hb
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %bb.ae
  %.033.i.i = phi ptr [ %i.gv, %bb.ae ], [ %i.hq, %bb.ai ] ; 4 uses
  %.0.i361.i = phi i32 [ %i.hc, %bb.ae ], [ %i.hl, %bb.ai ] ; 3 uses
  %i.hd = icmp ult i32 %.0291.i, %.0.i361.i
  br i1 %i.hd, label %cff_fd_select_get.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.he = getelementptr inbounds nuw i8, ptr %.033.i.i, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !130
  %i.hg = zext i8 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hg, 8
  %i.hi = getelementptr inbounds nuw i8, ptr %.033.i.i, i64 2
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !130
  %i.hk = zext i8 %i.hj to i32
  %i.hl = or disjoint i32 %i.hh, %i.hk            ; 3 uses
  %i.hm = icmp ult i32 %.0291.i, %i.hl
  br i1 %i.hm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hn = load i8, ptr %.033.i.i, align 1, !tbaa !130 ; 2 uses
  store i32 %.0.i361.i, ptr %i.gj, align 4, !tbaa !196
  %i.ho = sub nuw nsw i32 %i.hl, %.0.i361.i
  store i32 %i.ho, ptr %i.gm, align 8, !tbaa !197
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 4940
  store i8 %i.hn, ptr %i.hp, align 4, !tbaa !198
  br label %cff_fd_select_get.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.hq = getelementptr inbounds nuw i8, ptr %.033.i.i, i64 3 ; 2 uses
  %i.hr = icmp ult ptr %i.hq, %i.gu
  br i1 %i.hr, label %bb.af, label %cff_fd_select_get.exit.i, !llvm.loop !2

cff_fd_select_get.exit.i:                         ; preds = %bb.ai, %bb.af, %bb.ah, %bb.ad, %bb.ab, %bb.aa, %bb.z
  %.1.i.i = phi i8 [ 0, %bb.aa ], [ %i.gi, %bb.ab ], [ %i.gq, %bb.ad ], [ 0, %bb.z ], [ %i.hn, %bb.ah ], [ 0, %bb.af ], [ 0, %bb.ai ] ; 2 uses
  %i.hs = zext i8 %.1.i.i to i32
  %.not334.i = icmp ugt i32 %i.gb, %i.hs
  %i.ht = trunc i32 %i.gb to i8
  %i.hu = add i8 %i.ht, -1
  %.0290.i = select i1 %.not334.i, i8 %.1.i.i, i8 %i.hu
  %i.hv = getelementptr inbounds nuw i8, ptr %i.o, i64 1736
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !199 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.o, i64 2864
  %i.hy = zext i8 %.0290.i to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hy
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !121 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 96
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !200 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.id, i64 32, i1 false), !tbaa.struct !122
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %.sroa.0.0.copyload.i = load i64, ptr %i.ie, align 8, !tbaa !116 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ia, i64 112
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !116 ; 2 uses
  %.not335.i = icmp eq i64 %i.hw, %i.ic
  br i1 %.not335.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %cff_fd_select_get.exit.i
  %i.if = extractelement <2 x i64> %i.fx, i64 0
  %i.ig = call i64 @FT_MulDiv(i64 noundef %i.if, i64 noundef %i.hw, i64 noundef %i.ic) #18
  store i64 %i.ig, ptr %i.fy, align 8, !tbaa !412
  %i.ih = load i64, ptr %i.fz, align 8, !tbaa !413
  %i.ii = call i64 @FT_MulDiv(i64 noundef %i.ih, i64 noundef %i.hw, i64 noundef %i.ic) #18
  store i64 %i.ii, ptr %i.fz, align 8, !tbaa !413
  br label %bb.al

bb.ak:                                            ; preds = %bb.y
  %i.ij = getelementptr inbounds nuw i8, ptr %i.o, i64 1696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 32, i1 false), !tbaa.struct !122
  %i.ik = getelementptr inbounds nuw i8, ptr %i.o, i64 1744
  %.sroa.0.0.copyload94.i = load i64, ptr %i.ik, align 8, !tbaa !116
  %.sroa.8.0..sroa_idx96.i = getelementptr inbounds nuw i8, ptr %i.o, i64 1752
  %.sroa.8.0.copyload97.i = load i64, ptr %.sroa.8.0..sroa_idx96.i, align 8, !tbaa !116
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %cff_fd_select_get.exit.i
  %.1299.i = phi i8 [ 0, %bb.ak ], [ 1, %bb.aj ], [ 0, %cff_fd_select_get.exit.i ]
  %.sroa.8.0.i = phi i64 [ %.sroa.8.0.copyload97.i, %bb.ak ], [ %.sroa.8.0.copyload.i, %bb.aj ], [ %.sroa.8.0.copyload.i, %cff_fd_select_get.exit.i ] ; 4 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload94.i, %bb.ak ], [ %.sroa.0.0.copyload.i, %bb.aj ], [ %.sroa.0.0.copyload.i, %cff_fd_select_get.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.il = load ptr, ptr %i.s, align 8, !tbaa !415
  %i.im = lshr i32 %3, 16
  %i.in = and i32 %i.im, 15
  call void %i.il(ptr noundef nonnull %6, ptr noundef %i.m, ptr noundef nonnull %1, ptr noundef %0, i8 noundef zeroext %i.fp, i32 noundef %i.in, ptr noundef nonnull @cff_get_glyph_data, ptr noundef nonnull @cff_free_glyph_data) #18, !inline_history !365
  %i.io = and i32 %3, 256
  %.not336.i = icmp eq i32 %i.io, 0
  br i1 %.not336.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ip = getelementptr inbounds nuw i8, ptr %6, i64 1177
  store i8 1, ptr %i.ip, align 1, !tbaa !423
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.iq = and i32 %3, 1024                        ; 2 uses
  %.not337.i = icmp eq i32 %i.iq, 0
  %.lobit.i = lshr exact i32 %i.iq, 10
  %i.ir = trunc nuw nsw i32 %.lobit.i to i8
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 130
  store i8 %i.ir, ptr %i.is, align 2, !tbaa !424
  %i.it = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !425
  %i.iv = call i32 %i.iu(ptr noundef nonnull %6, ptr noundef nonnull %1, i32 noundef %.0291.i) #18, !inline_history !365 ; 2 uses
  %.not338.i = icmp eq i32 %i.iv, 0
  br i1 %.not338.i, label %bb.ao, label %.thread391.i

bb.ao:                                            ; preds = %bb.an
  %i.iw = getelementptr inbounds nuw i8, ptr %i.m, i64 240 ; 4 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !201
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 104
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !205 ; 3 uses
  %.not.i362.i = icmp eq ptr %i.iz, null
  br i1 %.not.i362.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !209
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !211
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !212
  %i.je = call i32 %i.jb(ptr noundef %i.jd, i32 noundef %.0291.i, ptr noundef nonnull %5) #18, !inline_history !366
  %i.jf = load ptr, ptr %5, align 8, !tbaa !214
  store ptr %i.jf, ptr %i.f, align 8, !tbaa !127
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !215
  %i.ji = zext i32 %i.jh to i64
  store i64 %i.ji, ptr %i.g, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %cff_get_glyph_data.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.jj = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1336
  %i.jl = call fastcc i32 @cff_index_access_element(ptr noundef nonnull %i.jk, i32 noundef %.0291.i, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %cff_get_glyph_data.exit.i

cff_get_glyph_data.exit.i:                        ; preds = %bb.aq, %bb.ap
  %.0.i363.i = phi i32 [ %i.je, %bb.ap ], [ %i.jl, %bb.aq ] ; 2 uses
  %.not339.i = icmp eq i32 %.0.i363.i, 0
  br i1 %.not339.i, label %bb.ar, label %.thread391.i

bb.ar:                                            ; preds = %cff_get_glyph_data.exit.i
  %i.jm = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !426
  call void %i.jn(ptr noundef nonnull %7, ptr noundef nonnull %6, i8 noundef zeroext 0) #18, !inline_history !365
  %i.jo = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !427
  %i.jq = load ptr, ptr %i.f, align 8, !tbaa !127
  %i.jr = load i64, ptr %i.g, align 8, !tbaa !116 ; 4 uses
  %i.js = call i32 %i.jp(ptr noundef nonnull %7, ptr noundef %i.jq, i64 noundef %i.jr) #18, !inline_history !365 ; 2 uses
  %i.jt = and i32 %i.js, 255
  %i.ju = icmp eq i32 %i.jt, 164
  br i1 %i.ju, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i8 0, ptr %i.ft, align 8, !tbaa !410
  %i.jv = load ptr, ptr %i.jo, align 8, !tbaa !427
  %i.jw = load ptr, ptr %i.f, align 8, !tbaa !127
  %i.jx = call i32 %i.jv(ptr noundef nonnull %7, ptr noundef %i.jw, i64 noundef %i.jr) #18, !inline_history !365
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0302.i = phi i1 [ false, %bb.as ], [ %i.fo, %bb.ar ]
  %.2300.i = phi i8 [ 1, %bb.as ], [ %.1299.i, %bb.ar ]
  %.0292.i = phi i32 [ %i.jx, %bb.as ], [ %i.js, %bb.ar ] ; 2 uses
  %i.jy = load ptr, ptr %i.iw, align 8, !tbaa !201
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 104
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !205 ; 3 uses
  %.not.i6 = icmp eq ptr %i.ka, null
  br i1 %.not.i6, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.kb = load ptr, ptr %i.f, align 8, !tbaa !127
  store ptr %i.kb, ptr %4, align 8, !tbaa !214
  %i.kc = trunc i64 %i.jr to i32
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.kc, ptr %i.kd, align 8, !tbaa !215
  %i.ke = load ptr, ptr %i.ka, align 8, !tbaa !209
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !216
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !212
  call void %i.kg(ptr noundef %i.ki, ptr noundef nonnull %4) #18, !inline_history !428
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %cff_free_glyph_data.exit

bb.av:                                            ; preds = %bb.at
  %i.kj = load ptr, ptr %i.n, align 8, !tbaa !63  ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 1392
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !142
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %bb.aw, label %cff_free_glyph_data.exit

bb.aw:                                            ; preds = %bb.av
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 1336
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !139
  call void @FT_Stream_ReleaseFrame(ptr noundef %i.ko, ptr noundef nonnull %i.f) #18
  br label %cff_free_glyph_data.exit

cff_free_glyph_data.exit:                         ; preds = %bb.au, %bb.av, %bb.aw
  %.not340.i = icmp eq i32 %.0292.i, 0
  br i1 %.not340.i, label %bb.ax, label %.thread391.i

bb.ax:                                            ; preds = %cff_free_glyph_data.exit
  %i.kp = load ptr, ptr %i.iw, align 8, !tbaa !201
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 104
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !205
  %.not341.i = icmp eq ptr %i.kr, null
  br i1 %.not341.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, i8 0, i64 16, i1 false)
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  %i.kt = getelementptr inbounds nuw i8, ptr %i.o, i64 1384
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !143 ; 2 uses
  %.not342.i = icmp eq ptr %i.ku, null
  br i1 %.not342.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kv = getelementptr inbounds nuw i8, ptr %i.o, i64 1392
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !142
  %i.kx = zext i32 %.0291.i to i64
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kx
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !116
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.kz
  %i.lb = getelementptr inbounds i8, ptr %i.la, i64 -1
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !429
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.jr, ptr %i.ld, align 8, !tbaa !430
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !431
  call void %i.lf(ptr noundef nonnull %6) #18, !inline_history !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %i.lg = load ptr, ptr %i.iw, align 8, !tbaa !201
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 104
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !205 ; 3 uses
  %.not344.i = icmp eq ptr %i.li, null
  br i1 %.not344.i, label %.thread383.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !209
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !432 ; 2 uses
  %.not345.i = icmp eq ptr %i.ll, null
  br i1 %.not345.i, label %.thread383.i, label %bb.bd

.thread391.i:                                     ; preds = %cff_free_glyph_data.exit, %cff_get_glyph_data.exit.i, %bb.an
  %.1293.i = phi i32 [ %i.iv, %bb.an ], [ %.0.i363.i, %cff_get_glyph_data.exit.i ], [ %.0292.i, %cff_free_glyph_data.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %cff_slot_load.exit

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.lm = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !433
  store i64 %i.ln, ptr %10, align 8, !tbaa !435
  %i.lo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.lo, align 8, !tbaa !436
  %i.lp = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.lr = load <2 x i64>, ptr %i.lp, align 8, !tbaa !116
  store <2 x i64> %i.lr, ptr %i.lq, align 8, !tbaa !116
  %i.ls = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !212
  %i.lu = call i32 %i.ll(ptr noundef %i.lt, i32 noundef %.0291.i, i8 noundef zeroext 0, ptr noundef nonnull %10) #18, !inline_history !365 ; 2 uses
  %i.lv = load i64, ptr %10, align 8, !tbaa !435
  store i64 %i.lv, ptr %i.lm, align 8, !tbaa !433
  %i.lw = load <2 x i64>, ptr %i.lq, align 8, !tbaa !116
  store <2 x i64> %i.lw, ptr %i.lp, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.not346.i = icmp eq i32 %i.lu, 0
  br i1 %.not346.i, label %.thread383.i, label %cff_slot_load.exit

.thread383.i:                                     ; preds = %bb.bd, %bb.bc, %bb.bb
  br i1 %.not337.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.thread383.i
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !437 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !433
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ma, ptr %i.mb, align 8, !tbaa !382
  %i.mc = getelementptr inbounds nuw i8, ptr %6, i64 1160
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !438
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.md, ptr %i.me, align 8, !tbaa !386
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !122
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ly, i64 48
  store i64 %.sroa.0.0.i, ptr %i.mg, align 8, !tbaa !116
  %.sroa.8.0..sroa_idx98.i = getelementptr inbounds nuw i8, ptr %i.ly, i64 56
  store i64 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx98.i, align 8, !tbaa !116
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  store i8 1, ptr %i.mh, align 4, !tbaa !439
  br label %cff_slot_load.exit

bb.bf:                                            ; preds = %.thread383.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1869968492, ptr %i.mj, align 8, !tbaa !393
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !406
  %i.mo = icmp ult i16 %i.mn, 24
  %spec.store.select.i = select i1 %i.mo, i32 260, i32 4
  store i32 %spec.store.select.i, ptr %i.ml, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.m, i64 438
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !217
  %.not347.i = icmp eq i16 %i.mq, 0
  br i1 %.not347.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store i16 0, ptr %i.h, align 2, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store i16 0, ptr %i.i, align 2, !tbaa !66
  %i.mr = getelementptr inbounds nuw i8, ptr %i.m, i64 880
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !137
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 336
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !194
  call void %i.mu(ptr noundef nonnull %i.m, i8 noundef zeroext 0, i32 noundef %.0291.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #18, !inline_history !365
  %i.mv = load i16, ptr %i.i, align 2, !tbaa !66
  %i.mw = zext i16 %i.mv to i64
  %i.mx = load i16, ptr %i.h, align 2, !tbaa !66
  %i.my = sext i16 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.my, ptr %i.mz, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.na = getelementptr inbounds nuw i8, ptr %6, i64 1160
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !438
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sink411.i = phi i64 [ %i.nb, %bb.bh ], [ %i.mw, %bb.bg ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  store i64 %.sink411.i, ptr %i.nc, align 8, !tbaa !441
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sink411.i, ptr %i.nd, align 8, !tbaa !396
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !437
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  store i8 0, ptr %i.ng, align 4, !tbaa !439
  %i.nh = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  %i.ni = load i8, ptr %i.nh, align 8, !tbaa !195
  %.not348.i = icmp eq i8 %i.ni, 0
  br i1 %.not348.i, label %.thread396.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.nj = getelementptr inbounds nuw i8, ptr %i.m, i64 542
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !397
  %.not350.i = icmp eq i16 %i.nk, 0
  br i1 %.not350.i, label %.thread396.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  store i16 0, ptr %i.j, align 2, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i16 0, ptr %i.k, align 2, !tbaa !66
  %i.nl = getelementptr inbounds nuw i8, ptr %i.m, i64 880
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !137
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 336
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !194
  call void %i.no(ptr noundef nonnull %i.m, i8 noundef zeroext 1, i32 noundef %.0291.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #18, !inline_history !365
  %i.np = load i16, ptr %i.j, align 2, !tbaa !66
  %i.nq = sext i16 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.nq, ptr %i.nr, align 8, !tbaa !442
  %i.ns = load i16, ptr %i.k, align 2, !tbaa !66
  %i.nt = zext i16 %i.ns to i64                   ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.nt, ptr %i.nu, align 8, !tbaa !443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  br label %bb.bn

.thread396.i:                                     ; preds = %bb.bj, %bb.bi
  %i.nv = getelementptr inbounds nuw i8, ptr %i.m, i64 616
  %i.nw = load i16, ptr %i.nv, align 8, !tbaa !399
  %.not351.i = icmp eq i16 %i.nw, -1
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br i1 %.not351.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.thread396.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.m, i64 706
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !400
  %i.oa = sext i16 %i.nz to i64
  %i.ob = getelementptr inbounds nuw i8, ptr %i.m, i64 708
  %i.oc = load i16, ptr %i.ob, align 4, !tbaa !401
  %i.od = sext i16 %i.oc to i64
  %i.oe = sub nsw i64 %i.oa, %i.od                ; 2 uses
  store i64 %i.oe, ptr %i.nx, align 8, !tbaa !443
  br label %bb.bn

bb.bm:                                            ; preds = %.thread396.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.m, i64 408
  %i.og = load i16, ptr %i.of, align 8, !tbaa !402
  %i.oh = sext i16 %i.og to i64
  %i.oi = getelementptr inbounds nuw i8, ptr %i.m, i64 410
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !403
  %i.ok = sext i16 %i.oj to i64
  %i.ol = sub nsw i64 %i.oh, %i.ok                ; 2 uses
  store i64 %i.ol, ptr %i.nx, align 8, !tbaa !443
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.om = phi i64 [ %i.oe, %bb.bl ], [ %i.ol, %bb.bm ], [ %i.nt, %bb.bk ] ; 2 uses
  %.not349398.i = phi i1 [ true, %bb.bl ], [ true, %bb.bm ], [ false, %bb.bk ]
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.om, ptr %i.oo, align 8, !tbaa !398
  %i.op = load i64, ptr %8, align 8, !tbaa !117
  %i.oq = icmp ne i64 %i.op, 65536
  %i.or = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.os = load i64, ptr %i.or, align 8
  %i.ot = icmp ne i64 %i.os, 65536
  %or.cond.i = select i1 %i.oq, i1 true, i1 %i.ot
  %i.ou = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ov = load i64, ptr %i.ou, align 8
  %i.ow = icmp ne i64 %i.ov, 0
  %or.cond7.i = select i1 %or.cond.i, i1 true, i1 %i.ow
  %i.ox = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.oy = load i64, ptr %i.ox, align 8
  %i.oz = icmp ne i64 %i.oy, 0
  %or.cond10.i = select i1 %or.cond7.i, i1 true, i1 %i.oz
  br i1 %or.cond10.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @FT_Outline_Transform(ptr noundef nonnull %i.mk, ptr noundef nonnull %8) #18
  %i.pa = load i64, ptr %i.nc, align 8, !tbaa !441
  %i.pb = load i64, ptr %8, align 8, !tbaa !117
  %i.pc = mul i64 %i.pb, %i.pa                    ; 2 uses
  %i.pd = ashr i64 %i.pc, 63
  %i.pe = add i64 %i.pc, 32768
  %i.pf = add i64 %i.pe, %i.pd
  %i.pg = ashr i64 %i.pf, 16
  store i64 %i.pg, ptr %i.nc, align 8, !tbaa !441
  %i.ph = load i64, ptr %i.on, align 8, !tbaa !443
  %i.pi = load i64, ptr %i.or, align 8, !tbaa !113
  %i.pj = mul i64 %i.pi, %i.ph                    ; 2 uses
  %i.pk = ashr i64 %i.pj, 63
  %i.pl = add i64 %i.pj, 32768
  %i.pm = add i64 %i.pl, %i.pk
  %i.pn = ashr i64 %i.pm, 16                      ; 2 uses
  store i64 %i.pn, ptr %i.on, align 8, !tbaa !443
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.po = phi i64 [ %i.om, %bb.bn ], [ %i.pn, %bb.bo ]
  %i.pp = icmp ne i64 %.sroa.0.0.i, 0
  %i.pq = icmp ne i64 %.sroa.8.0.i, 0
  %or.cond13.i = select i1 %i.pp, i1 true, i1 %i.pq
  br i1 %or.cond13.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @FT_Outline_Translate(ptr noundef nonnull %i.mk, i64 noundef %.sroa.0.0.i, i64 noundef %.sroa.8.0.i) #18
  %i.pr = load i64, ptr %i.nc, align 8, !tbaa !441
  %i.ps = add nsw i64 %i.pr, %.sroa.0.0.i
  store i64 %i.ps, ptr %i.nc, align 8, !tbaa !441
  %i.pt = load i64, ptr %i.on, align 8, !tbaa !443
  %i.pu = add nsw i64 %i.pt, %.sroa.8.0.i         ; 2 uses
  store i64 %i.pu, ptr %i.on, align 8, !tbaa !443
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.pv = phi i64 [ %i.po, %bb.bp ], [ %i.pu, %bb.bq ]
  %i.pw = icmp ne i8 %.2300.i, 0
  %or.cond16.i = or i1 %.not332.not.i, %i.pw
  br i1 %or.cond16.i, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.px = load <2 x i64>, ptr %i.fy, align 8, !tbaa !116 ; 5 uses
  %i.py = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.pz = load ptr, ptr %i.py, align 8
  %i.qa = icmp ne ptr %i.pz, null
  %or.cond20.i = select i1 %.0302.i, i1 %i.qa, i1 false
  br i1 %or.cond20.i, label %.loopexit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 202
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !444 ; 4 uses
  %.not404.i = icmp eq i16 %i.qc, 0
  br i1 %.not404.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bt
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !445 ; 2 uses
  %i.qf = zext i16 %i.qc to i64
  %min.iters.check = icmp eq i16 %i.qc, 1
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.body

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i
  %i.qg = zext i16 %i.qc to i32
  %i.qh = extractelement <2 x i64> %i.px, i64 0
  %i.qi = extractelement <2 x i64> %i.px, i64 1
  br label %.lr.ph.i

vector.body:                                      ; preds = %.lr.ph.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.qj = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.qe, i64 %i.qj ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8
  %i.qk = mul <2 x i64> %wide.load, %i.px         ; 2 uses
  %i.ql = ashr <2 x i64> %i.qk, splat (i64 63)
  %i.qm = add <2 x i64> %i.qk, splat (i64 32768)
  %i.qn = add <2 x i64> %i.qm, %i.ql
  %i.qo = ashr <2 x i64> %i.qn, splat (i64 16)
  store <2 x i64> %i.qo, ptr %next.gep, align 8
  %index.next = add nuw i64 %index, 1             ; 2 uses
  %i.qp = icmp eq i64 %index.next, %i.qf
  br i1 %i.qp, label %.loopexit.i, label %vector.body, !llvm.loop !367

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0403.i = phi ptr [ %i.re, %.lr.ph.i ], [ %i.qe, %.lr.ph.i.preheader ] ; 4 uses
  %.0288402.i = phi i32 [ %i.rd, %.lr.ph.i ], [ %i.qg, %.lr.ph.i.preheader ] ; 2 uses
  %i.qq = load i64, ptr %.0403.i, align 8, !tbaa !119
  %i.qr = mul i64 %i.qq, %i.qh                    ; 2 uses
  %i.qs = ashr i64 %i.qr, 63
  %i.qt = add i64 %i.qr, 32768
  %i.qu = add i64 %i.qt, %i.qs
  %i.qv = ashr i64 %i.qu, 16
  store i64 %i.qv, ptr %.0403.i, align 8, !tbaa !119
  %i.qw = getelementptr inbounds nuw i8, ptr %.0403.i, i64 8 ; 2 uses
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !115
  %i.qy = mul i64 %i.qx, %i.qi                    ; 2 uses
  %i.qz = ashr i64 %i.qy, 63
  %i.ra = add i64 %i.qy, 32768
  %i.rb = add i64 %i.ra, %i.qz
  %i.rc = ashr i64 %i.rb, 16
  store i64 %i.rc, ptr %i.qw, align 8, !tbaa !115
  %i.rd = add nsw i32 %.0288402.i, -1
  %i.re = getelementptr inbounds nuw i8, ptr %.0403.i, i64 16
  %i.rf = icmp samesign ugt i32 %.0288402.i, 1
  br i1 %i.rf, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !368

.loopexit.i:                                      ; preds = %vector.body, %.lr.ph.i, %bb.bt, %bb.bs
  %i.rg = load i64, ptr %i.nc, align 8, !tbaa !441
  %i.rh = extractelement <2 x i64> %i.px, i64 0
  %i.ri = mul i64 %i.rg, %i.rh                    ; 2 uses
  %i.rj = ashr i64 %i.ri, 63
  %i.rk = add i64 %i.ri, 32768
  %i.rl = add i64 %i.rk, %i.rj
  %i.rm = ashr i64 %i.rl, 16
  store i64 %i.rm, ptr %i.nc, align 8, !tbaa !441
  %i.rn = extractelement <2 x i64> %i.px, i64 1
  %i.ro = mul i64 %i.rn, %i.pv                    ; 2 uses
  %i.rp = ashr i64 %i.ro, 63
  %i.rq = add i64 %i.ro, 32768
  %i.rr = add i64 %i.rq, %i.rp
  %i.rs = ashr i64 %i.rr, 16
  store i64 %i.rs, ptr %i.on, align 8, !tbaa !443
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.i, %bb.br
  call void @FT_Outline_Get_CBox(ptr noundef nonnull %i.mk, ptr noundef nonnull %11) #18
  %i.rt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ru = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !220
  %i.rw = load <2 x i64>, ptr %i.rt, align 16, !tbaa !116
  %i.rx = load <2 x i64>, ptr %11, align 16, !tbaa !116
  %i.ry = load i64, ptr %11, align 16, !tbaa !221 ; 2 uses
  %i.rz = sub nsw <2 x i64> %i.rw, %i.rx
  store <2 x i64> %i.rz, ptr %i.mi, align 8, !tbaa !116
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ry, ptr %i.sa, align 8, !tbaa !440
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.rv, ptr %i.sb, align 8, !tbaa !446
  br i1 %.not349398.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sc = load i64, ptr %i.nc, align 8, !tbaa !441
  %.neg.i = sdiv i64 %i.sc, -2
  %i.sd = add i64 %.neg.i, %i.ry
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.sd, ptr %i.se, align 8, !tbaa !447
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !442
  %i.sh = load i64, ptr %i.fz, align 8, !tbaa !413
  %i.si = mul i64 %i.sh, %i.sg                    ; 2 uses
  %i.sj = ashr i64 %i.si, 63
  %i.sk = add i64 %i.si, 32768
  %i.sl = add i64 %i.sk, %i.sj
  %i.sm = ashr i64 %i.sl, 16
  store i64 %i.sm, ptr %i.sf, align 8, !tbaa !442
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %i.sn = and i32 %3, 16
  %.not352.i = icmp eq i32 %i.sn, 0
  br i1 %.not352.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.so = load i64, ptr %i.on, align 8, !tbaa !443
  call void @ft_synthesize_vertical_metrics(ptr noundef nonnull %i.mi, i64 noundef %i.so) #18
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %cff_slot_load.exit

cff_slot_load.exit:                               ; preds = %bb.d, %cff_charset_cid_to_gindex.exit.i, %bb.e, %bb.o, %bb.p, %bb.s, %bb.t, %bb.v, %.thread391.i, %bb.bd, %bb.be, %bb.by
  %.4.i = phi i32 [ 6, %cff_charset_cid_to_gindex.exit.i ], [ 6, %bb.e ], [ 6, %bb.p ], [ 6, %bb.d ], [ 0, %bb.o ], [ 0, %bb.be ], [ 0, %bb.by ], [ %i.lu, %bb.bd ], [ %.1293.i, %.thread391.i ], [ 36, %bb.t ], [ 36, %bb.s ], [ 0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret i32 %.4.i
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cff_get_kerning(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1372
  %i.d = load i32, ptr %i.c, align 4, !tbaa !448
  %.not10 = icmp eq i32 %i.d, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !449
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) #18
  %i.h = sext i32 %i.g to i64
  store i64 %i.h, ptr %3, align 8, !tbaa !119
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @cff_get_advances(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) #4 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !111  ; 3 uses
  %i.e = and i64 %i.d, 8
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %3, 16                           ; 2 uses
  %.not23.not = icmp eq i32 %i.f, 0
  br i1 %.not23.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 438
  %i.h = load i16, ptr %i.g, align 2, !tbaa !217
  %.not28 = icmp eq i16 %i.h, 0
  br i1 %.not28, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !109
  %i.k = and i64 %i.j, 2147418112
  %i.l = and i64 %i.d, 32768
  %i.m = or disjoint i64 %i.k, %i.l
  %or.cond = icmp eq i64 %i.m, 0
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_1
