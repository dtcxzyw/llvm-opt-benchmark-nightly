Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_match_finder_lazy?download=true
inline.NumInlined: 186
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ZS_lz2_findBestMatch:bb.a
  br i1 %i.mo, label %bb.ar, label %bb.bd

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.mc, label %bb.as, label %.loopexit.i276

bb.as:                                            ; preds = %bb.ar
  %.val60.i291 = load i64, ptr %i.mi, align 1     ; 2 uses
  %.val.i292 = load i64, ptr %2, align 1          ; 2 uses
  %.not.i293 = icmp eq i64 %.val60.i291, %.val.i292
  br i1 %.not.i293, label %.preheader.i294, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mp = xor i64 %.val.i292, %.val60.i291
  %i.mq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.mp, i1 true)
  %i.mr = lshr i64 %i.mq, 3
  br label %ZS_count.exit303

.preheader.i294:                                  ; preds = %bb.as, %bb.au
  %.pn.i295 = phi ptr [ %.049.i298, %bb.au ], [ %2, %bb.as ]
  %.pn67.i296 = phi ptr [ %.045.i297, %bb.au ], [ %i.mi, %bb.as ]
  %.045.i297 = getelementptr inbounds nuw i8, ptr %.pn67.i296, i64 8 ; 3 uses
  %.049.i298 = getelementptr inbounds nuw i8, ptr %.pn.i295, i64 8 ; 5 uses
  %i.ms = icmp ult ptr %.049.i298, %i.mb
  br i1 %i.ms, label %bb.au, label %.loopexit.i276

bb.au:                                            ; preds = %.preheader.i294
  %.045.val.i299 = load i64, ptr %.045.i297, align 1 ; 2 uses
  %.049.val.i300 = load i64, ptr %.049.i298, align 1 ; 2 uses
  %.not59.i301 = icmp eq i64 %.045.val.i299, %.049.val.i300
  br i1 %.not59.i301, label %.preheader.i294, label %.thread63.i302

.thread63.i302:                                   ; preds = %bb.au
  %i.mt = xor i64 %.049.val.i300, %.045.val.i299
  %i.mu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.mt, i1 true)
  %i.mv = lshr i64 %i.mu, 3
  %i.mw = getelementptr inbounds nuw i8, ptr %.049.i298, i64 %i.mv
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = sub i64 %i.mx, %i.q
  br label %ZS_count.exit303

.loopexit.i276:                                   ; preds = %.preheader.i294, %bb.ar
  %.251.i277 = phi ptr [ %2, %bb.ar ], [ %.049.i298, %.preheader.i294 ] ; 5 uses
  %.247.i278 = phi ptr [ %i.mi, %bb.ar ], [ %.045.i297, %.preheader.i294 ] ; 4 uses
  %i.mz = icmp ult ptr %.251.i277, %i.md
  br i1 %i.mz, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %.loopexit.i276
  %.247.val.i289 = load i32, ptr %.247.i278, align 1
  %.251.val.i290 = load i32, ptr %.251.i277, align 1
  %i.na = icmp eq i32 %.247.val.i289, %.251.val.i290
  br i1 %i.na, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.nb = getelementptr inbounds nuw i8, ptr %.251.i277, i64 4
  %i.nc = getelementptr inbounds nuw i8, ptr %.247.i278, i64 4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %.loopexit.i276
  %.352.i279 = phi ptr [ %i.nb, %bb.aw ], [ %.251.i277, %bb.av ], [ %.251.i277, %.loopexit.i276 ] ; 5 uses
  %.348.i280 = phi ptr [ %i.nc, %bb.aw ], [ %.247.i278, %bb.av ], [ %.247.i278, %.loopexit.i276 ] ; 4 uses
  %i.nd = icmp ult ptr %.352.i279, %i.me
  br i1 %i.nd, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %.348.val.i287 = load i16, ptr %.348.i280, align 1
  %.352.val.i288 = load i16, ptr %.352.i279, align 1
  %i.ne = icmp eq i16 %.348.val.i287, %.352.val.i288
  br i1 %i.ne, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.nf = getelementptr inbounds nuw i8, ptr %.352.i279, i64 2
  %i.ng = getelementptr inbounds nuw i8, ptr %.348.i280, i64 2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.453.i281 = phi ptr [ %i.nf, %bb.az ], [ %.352.i279, %bb.ay ], [ %.352.i279, %bb.ax ] ; 4 uses
  %.4.i282 = phi ptr [ %i.ng, %bb.az ], [ %.348.i280, %bb.ay ], [ %.348.i280, %bb.ax ]
  %i.nh = icmp ult ptr %.453.i281, %3
  br i1 %i.nh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ni = load i8, ptr %.4.i282, align 1, !tbaa !35
  %i.nj = load i8, ptr %.453.i281, align 1, !tbaa !35
  %i.nk = icmp eq i8 %i.ni, %i.nj
  %spec.select.idx.i285 = zext i1 %i.nk to i64
  %spec.select.i286 = getelementptr inbounds nuw i8, ptr %.453.i281, i64 %spec.select.idx.i285
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.5.i283 = phi ptr [ %.453.i281, %bb.ba ], [ %spec.select.i286, %bb.bb ]
  %i.nl = ptrtoint ptr %.5.i283 to i64
  %i.nm = sub i64 %i.nl, %i.q
  br label %ZS_count.exit303

ZS_count.exit303:                                 ; preds = %bb.at, %.thread63.i302, %bb.bc
  %.3.i284 = phi i64 [ %i.my, %.thread63.i302 ], [ %i.nm, %bb.bc ], [ %i.mr, %bb.at ]
  %i.nn = trunc i64 %.3.i284 to i32
  br label %bb.bd

bb.bd:                                            ; preds = %ZS_count.exit303, %bb.aq
  %.0.i97 = phi i32 [ %i.nn, %ZS_count.exit303 ], [ 0, %bb.aq ] ; 3 uses
  %i.no = icmp ugt i32 %.0.i97, %.sroa.3.0.i88578 ; 2 uses
  %i.np = sub i32 %i.t, %i.mg
  %i.nq = zext i32 %.0.i97 to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 %i.nq
  %i.ns = icmp eq ptr %i.nr, %3
  %.sroa.3.2.i99 = tail call i32 @llvm.umax.i32(i32 %.0.i97, i32 %.sroa.3.0.i88578) ; 2 uses
  %.sroa.064.2.i100 = select i1 %i.no, i32 %i.np, i32 %.sroa.064.0.i89579 ; 2 uses
  %cond.i101.not758 = select i1 %i.no, i1 %i.ns, i1 false
  %i.nt = add nuw nsw i64 %.070.i90580, 1         ; 2 uses
  %exitcond625.not = icmp eq i64 %i.nt, %.074.i85.lcssa694
  %or.cond737 = select i1 %cond.i101.not758, i1 true, i1 %exitcond625.not
  br i1 %or.cond737, label %ZS_lz2_findBestMatch2.exit104.loopexit, label %bb.aq, !llvm.loop !89

ZS_lz2_findBestMatch2.exit104.loopexit:           ; preds = %bb.bd
  %i.nu = zext i32 %.sroa.3.2.i99 to i64
  %i.nv = shl nuw i64 %i.nu, 32
  %i.nw = zext i32 %.sroa.064.2.i100 to i64
  %i.nx = or disjoint i64 %i.nv, %i.nw
  br label %ZS_lz2_findBestMatch2.exit104

ZS_lz2_findBestMatch2.exit104:                    ; preds = %ZL_VecMask_rotateRight.exit.i82, %ZS_lz2_findBestMatch2.exit104.loopexit, %._crit_edge574
  %.sroa.064.0.insert.insert.i96 = phi i64 [ 0, %._crit_edge574 ], [ %i.nx, %ZS_lz2_findBestMatch2.exit104.loopexit ], [ 0, %ZL_VecMask_rotateRight.exit.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %bb.de

bb.be:                                            ; preds = %bb.a
  switch i32 %i.k, label %bb.cn [
    i32 5, label %bb.bf
    i32 6, label %bb.bw
  ]

bb.bf:                                            ; preds = %bb.be
  br i1 %i.y, label %.lr.ph485, label %ZS_lz2_update.exit163

.lr.ph485:                                        ; preds = %bb.bf
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !28
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ob = sub i32 56, %i.nz
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = zext i32 %i.x to i64
  %i.oe = and i64 %i.s, 4294967295
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph485, %bb.bg
  %indvars.iv606 = phi i64 [ %i.od, %.lr.ph485 ], [ %indvars.iv.next607, %bb.bg ] ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv606
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %.val24.i304 = load i64, ptr %i.og, align 1
  %i.oh = mul i64 %.val24.i304, -3523014627271114752
  %i.oi = lshr i64 %i.oh, %i.oc                   ; 2 uses
  %i.oj = lshr i64 %i.oi, 8
  %i.ok = trunc i64 %i.oj to i32
  %.sroa.0.0.extract.trunc.i181 = mul i32 %i.ok, 41 ; 2 uses
  %i.ol = trunc i64 %i.oi to i32
  %.sroa.5.0.extract.trunc.i183 = and i32 %i.ol, 255
  %i.om = trunc nuw i64 %indvars.iv606 to i32
  %i.on = and i64 %indvars.iv606, 7
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.on ; 3 uses
  %.sroa.010.0.copyload.i184 = load i64, ptr %i.oo, align 4, !tbaa !12 ; 2 uses
  %i.op = zext i32 %.sroa.0.0.extract.trunc.i181 to i64
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.op ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.oq, i32 0, i32 3, i32 1)
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.or, i32 0, i32 3, i32 1)
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.os, i32 0, i32 3, i32 1)
  store i32 %.sroa.0.0.extract.trunc.i181, ptr %i.oo, align 4, !tbaa !12
  %.sroa.5.0..sroa_idx.i185 = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  store i32 %.sroa.5.0.extract.trunc.i183, ptr %.sroa.5.0..sroa_idx.i185, align 4, !tbaa !12
  %.sroa.2.0.extract.shift.i214 = lshr i64 %.sroa.010.0.copyload.i184, 32
  %i.ot = and i64 %.sroa.010.0.copyload.i184, 4294967295
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ot ; 4 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !12
  %i.ow = add i32 %i.ov, 31
  %i.ox = and i32 %i.ow, 31                       ; 2 uses
  store i32 %i.ox, ptr %i.ou, align 4, !tbaa !12
  %i.oy = trunc i64 %.sroa.2.0.extract.shift.i214 to i8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.pa = zext nneg i32 %i.ox to i64              ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.pa
  store i8 %i.oy, ptr %i.pb, align 1, !tbaa !35
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.pa
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 36
  store i32 %i.om, ptr %i.pd, align 4, !tbaa !12
  %indvars.iv.next607 = add nuw nsw i64 %indvars.iv606, 1 ; 2 uses
  %i.pe = icmp samesign ult i64 %indvars.iv.next607, %i.oe
  br i1 %i.pe, label %bb.bg, label %ZS_lz2_update.exit163, !llvm.loop !87

ZS_lz2_update.exit163:                            ; preds = %bb.bg, %bb.bf
  store i32 %i.t, ptr %i.w, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.pg = and i64 %i.s, 7
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pg ; 2 uses
  %.sroa.0.0.copyload.i53 = load i32, ptr %i.ph, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx.i54 = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %.sroa.4.0.copyload.i55 = load i32, ptr %.sroa.4.0..sroa_idx.i54, align 4, !tbaa !12
  %i.pi = zext i32 %.sroa.0.0.copyload.i53 to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.pi ; 4 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !12 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.pj, i64 4
  %.val220447 = load <16 x i8>, ptr %4, align 4, !tbaa !35
  %i.pl = getelementptr i8, ptr %i.pj, i64 20
  %.val221448 = load <16 x i8>, ptr %i.pl, align 4, !tbaa !35
  %i.pm = trunc i32 %.sroa.4.0.copyload.i55 to i8
  %i.pn = insertelement <16 x i8> poison, i8 %i.pm, i64 0
  %5 = shufflevector <16 x i8> %.val220447, <16 x i8> %.val221448, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.po = shufflevector <16 x i8> %i.pn, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.pp = icmp eq <32 x i8> %5, %i.po
  %i.pq = bitcast <32 x i1> %i.pp to i32          ; 3 uses
  %i.pr = icmp ne i32 %i.pq, 0
  %i.ps = icmp ne i32 %i.v, 0
  %i.pt = select i1 %i.pr, i1 %i.ps, i1 false
  br i1 %i.pt, label %.lr.ph489.preheader, label %ZS_lz2_findBestMatch2.exit78

.lr.ph489.preheader:                              ; preds = %ZS_lz2_update.exit163
  %.0.i.i57 = tail call i32 @llvm.fshr.i32(i32 %i.pq, i32 %i.pq, i32 %i.pk)
  br label %.lr.ph489

.lr.ph489:                                        ; preds = %.lr.ph489.preheader, %bb.bh
  %.173.i60488 = phi i32 [ %i.qi, %bb.bh ], [ %.0.i.i57, %.lr.ph489.preheader ] ; 3 uses
  %.074.i59487 = phi i64 [ %i.qe, %bb.bh ], [ 0, %.lr.ph489.preheader ] ; 4 uses
  %.076.i58486 = phi i32 [ %i.qg, %bb.bh ], [ %i.v, %.lr.ph489.preheader ]
  %i.pu = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %.173.i60488, i1 true)
  %i.pv = add i32 %i.pu, %i.pk
  %i.pw = and i32 %i.pv, 31
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 36
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !12 ; 3 uses
  %i.qb = icmp ult i32 %i.qa, %i.p
  br i1 %i.qb, label %._crit_edge490, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph489
  %i.qc = zext i32 %i.qa to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.qc
  tail call void @llvm.prefetch.p0(ptr %i.qd, i32 0, i32 3, i32 1)
  %i.qe = add nuw nsw i64 %.074.i59487, 1         ; 2 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.074.i59487
  store i32 %i.qa, ptr %i.qf, align 4, !tbaa !12
  %i.qg = add i32 %.076.i58486, -1                ; 2 uses
  %i.qh = add i32 %.173.i60488, -1
  %i.qi = and i32 %i.qh, %.173.i60488             ; 2 uses
  %i.qj = icmp ne i32 %i.qi, 0
  %i.qk = icmp ne i32 %i.qg, 0
  %i.ql = select i1 %i.qj, i1 %i.qk, i1 false
  br i1 %i.ql, label %.lr.ph489, label %.lr.ph498, !llvm.loop !88

._crit_edge490:                                   ; preds = %.lr.ph489
  %.not588 = icmp eq i64 %.074.i59487, 0
  br i1 %.not588, label %ZS_lz2_findBestMatch2.exit78, label %.lr.ph498

.lr.ph498:                                        ; preds = %bb.bh, %._crit_edge490
  %.074.i59.lcssa700 = phi i64 [ %.074.i59487, %._crit_edge490 ], [ %i.qe, %bb.bh ]
  %i.qm = getelementptr inbounds i8, ptr %3, i64 -7 ; 2 uses
  %i.qn = icmp ult ptr %2, %i.qm
  %i.qo = getelementptr inbounds i8, ptr %3, i64 -3
  %i.qp = getelementptr inbounds i8, ptr %3, i64 -1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bv, %.lr.ph498
  %.070.i64496 = phi i64 [ 0, %.lr.ph498 ], [ %i.se, %bb.bv ] ; 2 uses
  %.sroa.064.0.i63495 = phi i32 [ 0, %.lr.ph498 ], [ %.sroa.064.2.i74, %bb.bv ]
  %.sroa.3.0.i62494 = phi i32 [ 0, %.lr.ph498 ], [ %.sroa.3.2.i73, %bb.bv ] ; 3 uses
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.070.i64496
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !12 ; 2 uses
  %i.qs = zext i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.qs ; 4 uses
  %i.qu = zext i32 %.sroa.3.0.i62494 to i64       ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qu
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !35
  %i.qx = getelementptr inbounds nuw i8, ptr %2, i64 %i.qu
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !35
  %i.qz = icmp eq i8 %i.qw, %i.qy
  br i1 %i.qz, label %bb.bj, label %bb.bv

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.qn, label %bb.bk, label %.loopexit.i306

bb.bk:                                            ; preds = %bb.bj
  %.val60.i321 = load i64, ptr %i.qt, align 1     ; 2 uses
  %.val.i322 = load i64, ptr %2, align 1          ; 2 uses
  %.not.i323 = icmp eq i64 %.val60.i321, %.val.i322
  br i1 %.not.i323, label %.preheader.i324, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ra = xor i64 %.val.i322, %.val60.i321
  %i.rb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ra, i1 true)
  %i.rc = lshr i64 %i.rb, 3
  br label %ZS_count.exit333

.preheader.i324:                                  ; preds = %bb.bk, %bb.bm
  %.pn.i325 = phi ptr [ %.049.i328, %bb.bm ], [ %2, %bb.bk ]
  %.pn67.i326 = phi ptr [ %.045.i327, %bb.bm ], [ %i.qt, %bb.bk ]
  %.045.i327 = getelementptr inbounds nuw i8, ptr %.pn67.i326, i64 8 ; 3 uses
  %.049.i328 = getelementptr inbounds nuw i8, ptr %.pn.i325, i64 8 ; 5 uses
  %i.rd = icmp ult ptr %.049.i328, %i.qm
  br i1 %i.rd, label %bb.bm, label %.loopexit.i306

bb.bm:                                            ; preds = %.preheader.i324
  %.045.val.i329 = load i64, ptr %.045.i327, align 1 ; 2 uses
  %.049.val.i330 = load i64, ptr %.049.i328, align 1 ; 2 uses
  %.not59.i331 = icmp eq i64 %.045.val.i329, %.049.val.i330
  br i1 %.not59.i331, label %.preheader.i324, label %.thread63.i332

.thread63.i332:                                   ; preds = %bb.bm
  %i.re = xor i64 %.049.val.i330, %.045.val.i329
  %i.rf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.re, i1 true)
  %i.rg = lshr i64 %i.rf, 3
  %i.rh = getelementptr inbounds nuw i8, ptr %.049.i328, i64 %i.rg
  %i.ri = ptrtoint ptr %i.rh to i64
  %i.rj = sub i64 %i.ri, %i.q
  br label %ZS_count.exit333

.loopexit.i306:                                   ; preds = %.preheader.i324, %bb.bj
  %.251.i307 = phi ptr [ %2, %bb.bj ], [ %.049.i328, %.preheader.i324 ] ; 5 uses
  %.247.i308 = phi ptr [ %i.qt, %bb.bj ], [ %.045.i327, %.preheader.i324 ] ; 4 uses
  %i.rk = icmp ult ptr %.251.i307, %i.qo
  br i1 %i.rk, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.loopexit.i306
  %.247.val.i319 = load i32, ptr %.247.i308, align 1
  %.251.val.i320 = load i32, ptr %.251.i307, align 1
  %i.rl = icmp eq i32 %.247.val.i319, %.251.val.i320
  br i1 %i.rl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.rm = getelementptr inbounds nuw i8, ptr %.251.i307, i64 4
  %i.rn = getelementptr inbounds nuw i8, ptr %.247.i308, i64 4
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %.loopexit.i306
  %.352.i309 = phi ptr [ %i.rm, %bb.bo ], [ %.251.i307, %bb.bn ], [ %.251.i307, %.loopexit.i306 ] ; 5 uses
  %.348.i310 = phi ptr [ %i.rn, %bb.bo ], [ %.247.i308, %bb.bn ], [ %.247.i308, %.loopexit.i306 ] ; 4 uses
  %i.ro = icmp ult ptr %.352.i309, %i.qp
  br i1 %i.ro, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %.348.val.i317 = load i16, ptr %.348.i310, align 1
  %.352.val.i318 = load i16, ptr %.352.i309, align 1
  %i.rp = icmp eq i16 %.348.val.i317, %.352.val.i318
  br i1 %i.rp, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.rq = getelementptr inbounds nuw i8, ptr %.352.i309, i64 2
  %i.rr = getelementptr inbounds nuw i8, ptr %.348.i310, i64 2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.453.i311 = phi ptr [ %i.rq, %bb.br ], [ %.352.i309, %bb.bq ], [ %.352.i309, %bb.bp ] ; 4 uses
  %.4.i312 = phi ptr [ %i.rr, %bb.br ], [ %.348.i310, %bb.bq ], [ %.348.i310, %bb.bp ]
  %i.rs = icmp ult ptr %.453.i311, %3
  br i1 %i.rs, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.rt = load i8, ptr %.4.i312, align 1, !tbaa !35
  %i.ru = load i8, ptr %.453.i311, align 1, !tbaa !35
  %i.rv = icmp eq i8 %i.rt, %i.ru
  %spec.select.idx.i315 = zext i1 %i.rv to i64
  %spec.select.i316 = getelementptr inbounds nuw i8, ptr %.453.i311, i64 %spec.select.idx.i315
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.5.i313 = phi ptr [ %.453.i311, %bb.bs ], [ %spec.select.i316, %bb.bt ]
  %i.rw = ptrtoint ptr %.5.i313 to i64
  %i.rx = sub i64 %i.rw, %i.q
  br label %ZS_count.exit333

ZS_count.exit333:                                 ; preds = %bb.bl, %.thread63.i332, %bb.bu
  %.3.i314 = phi i64 [ %i.rj, %.thread63.i332 ], [ %i.rx, %bb.bu ], [ %i.rc, %bb.bl ]
  %i.ry = trunc i64 %.3.i314 to i32
  br label %bb.bv

bb.bv:                                            ; preds = %ZS_count.exit333, %bb.bi
  %.0.i71 = phi i32 [ %i.ry, %ZS_count.exit333 ], [ 0, %bb.bi ] ; 3 uses
  %i.rz = icmp ugt i32 %.0.i71, %.sroa.3.0.i62494 ; 2 uses
  %i.sa = sub i32 %i.t, %i.qr
  %i.sb = zext i32 %.0.i71 to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 %i.sb
  %i.sd = icmp eq ptr %i.sc, %3
  %.sroa.3.2.i73 = tail call i32 @llvm.umax.i32(i32 %.0.i71, i32 %.sroa.3.0.i62494) ; 2 uses
  %.sroa.064.2.i74 = select i1 %i.rz, i32 %i.sa, i32 %.sroa.064.0.i63495 ; 2 uses
  %cond.i75.not746 = select i1 %i.rz, i1 %i.sd, i1 false
  %i.se = add nuw nsw i64 %.070.i64496, 1         ; 2 uses
  %exitcond609.not = icmp eq i64 %i.se, %.074.i59.lcssa700
  %or.cond738 = select i1 %cond.i75.not746, i1 true, i1 %exitcond609.not
  br i1 %or.cond738, label %ZS_lz2_findBestMatch2.exit78.loopexit, label %bb.bi, !llvm.loop !89

ZS_lz2_findBestMatch2.exit78.loopexit:            ; preds = %bb.bv
  %i.sf = zext i32 %.sroa.3.2.i73 to i64
  %i.sg = shl nuw i64 %i.sf, 32
  %i.sh = zext i32 %.sroa.064.2.i74 to i64
  %i.si = or disjoint i64 %i.sg, %i.sh
  br label %ZS_lz2_findBestMatch2.exit78

ZS_lz2_findBestMatch2.exit78:                     ; preds = %ZS_lz2_update.exit163, %ZS_lz2_findBestMatch2.exit78.loopexit, %._crit_edge490
  %.sroa.064.0.insert.insert.i70 = phi i64 [ 0, %._crit_edge490 ], [ %i.si, %ZS_lz2_findBestMatch2.exit78.loopexit ], [ 0, %ZS_lz2_update.exit163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.de

bb.bw:                                            ; preds = %bb.be
  br i1 %i.y, label %.lr.ph, label %ZS_lz2_update.exit165

.lr.ph:                                           ; preds = %bb.bw
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !28
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.sm = sub i32 56, %i.sk
  %i.sn = zext nneg i32 %i.sm to i64
  %i.so = zext i32 %i.x to i64
  %i.sp = and i64 %i.s, 4294967295
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph, %bb.bx
  %indvars.iv = phi i64 [ %i.so, %.lr.ph ], [ %indvars.iv.next, %bb.bx ] ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %.val25.i334 = load i64, ptr %i.sr, align 1
  %i.ss = mul i64 %.val25.i334, -3523014627193847808
  %i.st = lshr i64 %i.ss, %i.sn                   ; 2 uses
  %i.su = lshr i64 %i.st, 8
  %i.sv = trunc i64 %i.su to i32
  %.sroa.0.0.extract.trunc.i172 = mul i32 %i.sv, 41 ; 2 uses
  %i.sw = trunc i64 %i.st to i32
  %.sroa.5.0.extract.trunc.i174 = and i32 %i.sw, 255
  %i.sx = trunc nuw i64 %indvars.iv to i32
  %i.sy = and i64 %indvars.iv, 7
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.sl, i64 %i.sy ; 3 uses
  %.sroa.010.0.copyload.i175 = load i64, ptr %i.sz, align 4, !tbaa !12 ; 2 uses
  %i.ta = zext i32 %.sroa.0.0.extract.trunc.i172 to i64
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ta ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.tb, i32 0, i32 3, i32 1)
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.tc, i32 0, i32 3, i32 1)
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.td, i32 0, i32 3, i32 1)
  store i32 %.sroa.0.0.extract.trunc.i172, ptr %i.sz, align 4, !tbaa !12
  %.sroa.5.0..sroa_idx.i176 = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  store i32 %.sroa.5.0.extract.trunc.i174, ptr %.sroa.5.0..sroa_idx.i176, align 4, !tbaa !12
  %.sroa.2.0.extract.shift.i213 = lshr i64 %.sroa.010.0.copyload.i175, 32
  %i.te = and i64 %.sroa.010.0.copyload.i175, 4294967295
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.te ; 4 uses
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !12
  %i.th = add i32 %i.tg, 31
  %i.ti = and i32 %i.th, 31                       ; 2 uses
  store i32 %i.ti, ptr %i.tf, align 4, !tbaa !12
  %i.tj = trunc i64 %.sroa.2.0.extract.shift.i213 to i8
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  %i.tl = zext nneg i32 %i.ti to i64              ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tl
  store i8 %i.tj, ptr %i.tm, align 1, !tbaa !35
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %i.tl
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 36
  store i32 %i.sx, ptr %i.to, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.tp = icmp samesign ult i64 %indvars.iv.next, %i.sp
  br i1 %i.tp, label %bb.bx, label %ZS_lz2_update.exit165, !llvm.loop !87

ZS_lz2_update.exit165:                            ; preds = %bb.bx, %bb.bw
  store i32 %i.t, ptr %i.w, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.tq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.tr = and i64 %i.s, 7
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %i.tr ; 2 uses
  %.sroa.0.0.copyload.i27 = load i32, ptr %i.ts, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  %.sroa.4.0.copyload.i29 = load i32, ptr %.sroa.4.0..sroa_idx.i28, align 4, !tbaa !12
  %i.tt = zext i32 %.sroa.0.0.copyload.i27 to i64
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.tt ; 4 uses
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !12 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  %.val222445 = load <16 x i8>, ptr %6, align 4, !tbaa !35
  %i.tw = getelementptr i8, ptr %i.tu, i64 20
  %.val223446 = load <16 x i8>, ptr %i.tw, align 4, !tbaa !35
  %i.tx = trunc i32 %.sroa.4.0.copyload.i29 to i8
  %i.ty = insertelement <16 x i8> poison, i8 %i.tx, i64 0
  %7 = shufflevector <16 x i8> %.val222445, <16 x i8> %.val223446, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.tz = shufflevector <16 x i8> %i.ty, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.ua = icmp eq <32 x i8> %7, %i.tz
  %i.ub = bitcast <32 x i1> %i.ua to i32          ; 3 uses
  %i.uc = icmp ne i32 %i.ub, 0
  %i.ud = icmp ne i32 %i.v, 0
  %i.ue = select i1 %i.uc, i1 %i.ud, i1 false
  br i1 %i.ue, label %.lr.ph470.preheader, label %ZS_lz2_findBestMatch2.exit52

.lr.ph470.preheader:                              ; preds = %ZS_lz2_update.exit165
  %.0.i.i31 = tail call i32 @llvm.fshr.i32(i32 %i.ub, i32 %i.ub, i32 %i.tv)
  br label %.lr.ph470

.lr.ph470:                                        ; preds = %.lr.ph470.preheader, %bb.by
  %.173.i34469 = phi i32 [ %i.ut, %bb.by ], [ %.0.i.i31, %.lr.ph470.preheader ] ; 3 uses
  %.074.i33468 = phi i64 [ %i.up, %bb.by ], [ 0, %.lr.ph470.preheader ] ; 4 uses
  %.076.i32467 = phi i32 [ %i.ur, %bb.by ], [ %i.v, %.lr.ph470.preheader ]
  %i.uf = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %.173.i34469, i1 true)
  %i.ug = add i32 %i.uf, %i.tv
  %i.uh = and i32 %i.ug, 31
  %i.ui = zext nneg i32 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.ui
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 36
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !12 ; 3 uses
  %i.um = icmp ult i32 %i.ul, %i.p
  br i1 %i.um, label %._crit_edge, label %bb.by

bb.by:                                            ; preds = %.lr.ph470
  %i.un = zext i32 %i.ul to i64
  %i.uo = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.un
  tail call void @llvm.prefetch.p0(ptr %i.uo, i32 0, i32 3, i32 1)
  %i.up = add nuw nsw i64 %.074.i33468, 1         ; 2 uses
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.074.i33468
  store i32 %i.ul, ptr %i.uq, align 4, !tbaa !12
  %i.ur = add i32 %.076.i32467, -1                ; 2 uses
  %i.us = add i32 %.173.i34469, -1
  %i.ut = and i32 %i.us, %.173.i34469             ; 2 uses
  %i.uu = icmp ne i32 %i.ut, 0
  %i.uv = icmp ne i32 %i.ur, 0
  %i.uw = select i1 %i.uu, i1 %i.uv, i1 false
  br i1 %i.uw, label %.lr.ph470, label %.lr.ph477, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph470
  %.not = icmp eq i64 %.074.i33468, 0
  br i1 %.not, label %ZS_lz2_findBestMatch2.exit52, label %.lr.ph477

.lr.ph477:                                        ; preds = %bb.by, %._crit_edge
  %.074.i33.lcssa706 = phi i64 [ %.074.i33468, %._crit_edge ], [ %i.up, %bb.by ]
  %i.ux = getelementptr inbounds i8, ptr %3, i64 -7 ; 2 uses
  %i.uy = icmp ult ptr %2, %i.ux
  %i.uz = getelementptr inbounds i8, ptr %3, i64 -3
  %i.va = getelementptr inbounds i8, ptr %3, i64 -1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.cm, %.lr.ph477
  %.070.i38475 = phi i64 [ 0, %.lr.ph477 ], [ %i.wp, %bb.cm ] ; 2 uses
  %.sroa.064.0.i37474 = phi i32 [ 0, %.lr.ph477 ], [ %.sroa.064.2.i48, %bb.cm ]
  %.sroa.3.0.i36473 = phi i32 [ 0, %.lr.ph477 ], [ %.sroa.3.2.i47, %bb.cm ] ; 3 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.070.i38475
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !12 ; 2 uses
  %i.vd = zext i32 %i.vc to i64
  %i.ve = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.vd ; 4 uses
  %i.vf = zext i32 %.sroa.3.0.i36473 to i64       ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vf
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !35
  %i.vi = getelementptr inbounds nuw i8, ptr %2, i64 %i.vf
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !35
  %i.vk = icmp eq i8 %i.vh, %i.vj
  br i1 %i.vk, label %bb.ca, label %bb.cm

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.uy, label %bb.cb, label %.loopexit.i336

bb.cb:                                            ; preds = %bb.ca
  %.val60.i351 = load i64, ptr %i.ve, align 1     ; 2 uses
  %.val.i352 = load i64, ptr %2, align 1          ; 2 uses
  %.not.i353 = icmp eq i64 %.val60.i351, %.val.i352
  br i1 %.not.i353, label %.preheader.i354, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.vl = xor i64 %.val.i352, %.val60.i351
  %i.vm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.vl, i1 true)
  %i.vn = lshr i64 %i.vm, 3
  br label %ZS_count.exit363

.preheader.i354:                                  ; preds = %bb.cb, %bb.cd
  %.pn.i355 = phi ptr [ %.049.i358, %bb.cd ], [ %2, %bb.cb ]
  %.pn67.i356 = phi ptr [ %.045.i357, %bb.cd ], [ %i.ve, %bb.cb ]
  %.045.i357 = getelementptr inbounds nuw i8, ptr %.pn67.i356, i64 8 ; 3 uses
  %.049.i358 = getelementptr inbounds nuw i8, ptr %.pn.i355, i64 8 ; 5 uses
  %i.vo = icmp ult ptr %.049.i358, %i.ux
  br i1 %i.vo, label %bb.cd, label %.loopexit.i336

bb.cd:                                            ; preds = %.preheader.i354
  %.045.val.i359 = load i64, ptr %.045.i357, align 1 ; 2 uses
  %.049.val.i360 = load i64, ptr %.049.i358, align 1 ; 2 uses
  %.not59.i361 = icmp eq i64 %.045.val.i359, %.049.val.i360
  br i1 %.not59.i361, label %.preheader.i354, label %.thread63.i362

.thread63.i362:                                   ; preds = %bb.cd
  %i.vp = xor i64 %.049.val.i360, %.045.val.i359
  %i.vq = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.vp, i1 true)
  %i.vr = lshr i64 %i.vq, 3
  %i.vs = getelementptr inbounds nuw i8, ptr %.049.i358, i64 %i.vr
  %i.vt = ptrtoint ptr %i.vs to i64
  %i.vu = sub i64 %i.vt, %i.q
  br label %ZS_count.exit363

.loopexit.i336:                                   ; preds = %.preheader.i354, %bb.ca
  %.251.i337 = phi ptr [ %2, %bb.ca ], [ %.049.i358, %.preheader.i354 ] ; 5 uses
  %.247.i338 = phi ptr [ %i.ve, %bb.ca ], [ %.045.i357, %.preheader.i354 ] ; 4 uses
  %i.vv = icmp ult ptr %.251.i337, %i.uz
  br i1 %i.vv, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %.loopexit.i336
  %.247.val.i349 = load i32, ptr %.247.i338, align 1
  %.251.val.i350 = load i32, ptr %.251.i337, align 1
  %i.vw = icmp eq i32 %.247.val.i349, %.251.val.i350
  br i1 %i.vw, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.vx = getelementptr inbounds nuw i8, ptr %.251.i337, i64 4
  %i.vy = getelementptr inbounds nuw i8, ptr %.247.i338, i64 4
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %.loopexit.i336
  %.352.i339 = phi ptr [ %i.vx, %bb.cf ], [ %.251.i337, %bb.ce ], [ %.251.i337, %.loopexit.i336 ] ; 5 uses
  %.348.i340 = phi ptr [ %i.vy, %bb.cf ], [ %.247.i338, %bb.ce ], [ %.247.i338, %.loopexit.i336 ] ; 4 uses
  %i.vz = icmp ult ptr %.352.i339, %i.va
  br i1 %i.vz, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %.348.val.i347 = load i16, ptr %.348.i340, align 1
  %.352.val.i348 = load i16, ptr %.352.i339, align 1
  %i.wa = icmp eq i16 %.348.val.i347, %.352.val.i348
  br i1 %i.wa, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.wb = getelementptr inbounds nuw i8, ptr %.352.i339, i64 2
  %i.wc = getelementptr inbounds nuw i8, ptr %.348.i340, i64 2
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %.453.i341 = phi ptr [ %i.wb, %bb.ci ], [ %.352.i339, %bb.ch ], [ %.352.i339, %bb.cg ] ; 4 uses
  %.4.i342 = phi ptr [ %i.wc, %bb.ci ], [ %.348.i340, %bb.ch ], [ %.348.i340, %bb.cg ]
  %i.wd = icmp ult ptr %.453.i341, %3
  br i1 %i.wd, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.we = load i8, ptr %.4.i342, align 1, !tbaa !35
  %i.wf = load i8, ptr %.453.i341, align 1, !tbaa !35
  %i.wg = icmp eq i8 %i.we, %i.wf
  %spec.select.idx.i345 = zext i1 %i.wg to i64
  %spec.select.i346 = getelementptr inbounds nuw i8, ptr %.453.i341, i64 %spec.select.idx.i345
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.5.i343 = phi ptr [ %.453.i341, %bb.cj ], [ %spec.select.i346, %bb.ck ]
  %i.wh = ptrtoint ptr %.5.i343 to i64
  %i.wi = sub i64 %i.wh, %i.q
  br label %ZS_count.exit363

ZS_count.exit363:                                 ; preds = %bb.cc, %.thread63.i362, %bb.cl
  %.3.i344 = phi i64 [ %i.vu, %.thread63.i362 ], [ %i.wi, %bb.cl ], [ %i.vn, %bb.cc ]
  %i.wj = trunc i64 %.3.i344 to i32
  br label %bb.cm

bb.cm:                                            ; preds = %ZS_count.exit363, %bb.bz
  %.0.i45 = phi i32 [ %i.wj, %ZS_count.exit363 ], [ 0, %bb.bz ] ; 3 uses
  %i.wk = icmp ugt i32 %.0.i45, %.sroa.3.0.i36473 ; 2 uses
  %i.wl = sub i32 %i.t, %i.vc
  %i.wm = zext i32 %.0.i45 to i64
  %i.wn = getelementptr inbounds nuw i8, ptr %2, i64 %i.wm
  %i.wo = icmp eq ptr %i.wn, %3
  %.sroa.3.2.i47 = tail call i32 @llvm.umax.i32(i32 %.0.i45, i32 %.sroa.3.0.i36473) ; 2 uses
  %.sroa.064.2.i48 = select i1 %i.wk, i32 %i.wl, i32 %.sroa.064.0.i37474 ; 2 uses
  %cond.i49.not743 = select i1 %i.wk, i1 %i.wo, i1 false
  %i.wp = add nuw nsw i64 %.070.i38475, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.wp, %.074.i33.lcssa706
  %or.cond739 = select i1 %cond.i49.not743, i1 true, i1 %exitcond.not
  br i1 %or.cond739, label %ZS_lz2_findBestMatch2.exit52.loopexit, label %bb.bz, !llvm.loop !89

ZS_lz2_findBestMatch2.exit52.loopexit:            ; preds = %bb.cm
  %i.wq = zext i32 %.sroa.3.2.i47 to i64
  %i.wr = shl nuw i64 %i.wq, 32
  %i.ws = zext i32 %.sroa.064.2.i48 to i64
  %i.wt = or disjoint i64 %i.wr, %i.ws
  br label %ZS_lz2_findBestMatch2.exit52

ZS_lz2_findBestMatch2.exit52:                     ; preds = %ZS_lz2_update.exit165, %ZS_lz2_findBestMatch2.exit52.loopexit, %._crit_edge
  %.sroa.064.0.insert.insert.i44 = phi i64 [ 0, %._crit_edge ], [ %i.wt, %ZS_lz2_findBestMatch2.exit52.loopexit ], [ 0, %ZS_lz2_update.exit165 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.de

bb.cn:                                            ; preds = %bb.be
  br i1 %i.y, label %.lr.ph506, label %ZS_lz2_update.exit167

.lr.ph506:                                        ; preds = %bb.cn
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !28
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.wx = sub i32 56, %i.wv
  %i.wy = zext nneg i32 %i.wx to i64
  %i.wz = zext i32 %i.x to i64
  %i.xa = and i64 %i.s, 4294967295
  br label %bb.co

bb.co:                                            ; preds = %.lr.ph506, %bb.co
  %indvars.iv610 = phi i64 [ %i.wz, %.lr.ph506 ], [ %indvars.iv.next611, %bb.co ] ; 4 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv610
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %.val26.i364 = load i64, ptr %i.xc, align 1
  %i.xd = mul i64 %.val26.i364, -3523014627193167104
  %i.xe = lshr i64 %i.xd, %i.wy                   ; 2 uses
  %i.xf = lshr i64 %i.xe, 8
  %i.xg = trunc i64 %i.xf to i32
  %.sroa.0.0.extract.trunc.i = mul i32 %i.xg, 41  ; 2 uses
  %i.xh = trunc i64 %i.xe to i32
  %.sroa.5.0.extract.trunc.i = and i32 %i.xh, 255
  %i.xi = trunc nuw i64 %indvars.iv610 to i32
  %i.xj = and i64 %indvars.iv610, 7
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.ww, i64 %i.xj ; 3 uses
  %.sroa.010.0.copyload.i = load i64, ptr %i.xk, align 4, !tbaa !12 ; 2 uses
  %i.xl = zext i32 %.sroa.0.0.extract.trunc.i to i64
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.xl ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.xm, i32 0, i32 3, i32 1)
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 64
  tail call void @llvm.prefetch.p0(ptr nonnull %i.xn, i32 0, i32 3, i32 1)
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.xo, i32 0, i32 3, i32 1)
  store i32 %.sroa.0.0.extract.trunc.i, ptr %i.xk, align 4, !tbaa !12
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xk, i64 4
  store i32 %.sroa.5.0.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !12
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.010.0.copyload.i, 32
  %i.xp = and i64 %.sroa.010.0.copyload.i, 4294967295
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.xp ; 4 uses
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !12
  %i.xs = add i32 %i.xr, 31
  %i.xt = and i32 %i.xs, 31                       ; 2 uses
  store i32 %i.xt, ptr %i.xq, align 4, !tbaa !12
  %i.xu = trunc i64 %.sroa.2.0.extract.shift.i to i8
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xq, i64 4
  %i.xw = zext nneg i32 %i.xt to i64              ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.xw
  store i8 %i.xu, ptr %i.xx, align 1, !tbaa !35
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.xw
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 36
  store i32 %i.xi, ptr %i.xz, align 4, !tbaa !12
  %indvars.iv.next611 = add nuw nsw i64 %indvars.iv610, 1 ; 2 uses
  %i.ya = icmp samesign ult i64 %indvars.iv.next611, %i.xa
  br i1 %i.ya, label %bb.co, label %ZS_lz2_update.exit167, !llvm.loop !87

ZS_lz2_update.exit167:                            ; preds = %bb.co, %bb.cn
  store i32 %i.t, ptr %i.w, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.yb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.yc = and i64 %i.s, 7
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %i.yc ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.yd, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.yd, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !12
  %i.ye = zext i32 %.sroa.0.0.copyload.i to i64
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ye ; 4 uses
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !12 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  %.val224449 = load <16 x i8>, ptr %8, align 4, !tbaa !35
  %i.yh = getelementptr i8, ptr %i.yf, i64 20
  %.val225450 = load <16 x i8>, ptr %i.yh, align 4, !tbaa !35
  %i.yi = trunc i32 %.sroa.4.0.copyload.i to i8
  %i.yj = insertelement <16 x i8> poison, i8 %i.yi, i64 0
  %9 = shufflevector <16 x i8> %.val224449, <16 x i8> %.val225450, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.yk = shufflevector <16 x i8> %i.yj, <16 x i8> poison, <32 x i32> zeroinitializer
  %i.yl = icmp eq <32 x i8> %9, %i.yk
  %i.ym = bitcast <32 x i1> %i.yl to i32          ; 3 uses
  %i.yn = icmp ne i32 %i.ym, 0
  %i.yo = icmp ne i32 %i.v, 0
  %i.yp = select i1 %i.yn, i1 %i.yo, i1 false
  br i1 %i.yp, label %.lr.ph510.preheader, label %ZS_lz2_findBestMatch2.exit

.lr.ph510.preheader:                              ; preds = %ZS_lz2_update.exit167
  %.0.i.i = tail call i32 @llvm.fshr.i32(i32 %i.ym, i32 %i.ym, i32 %i.yg)
  br label %.lr.ph510

.lr.ph510:                                        ; preds = %.lr.ph510.preheader, %bb.cp
  %.173.i509 = phi i32 [ %i.ze, %bb.cp ], [ %.0.i.i, %.lr.ph510.preheader ] ; 3 uses
  %.074.i508 = phi i64 [ %i.za, %bb.cp ], [ 0, %.lr.ph510.preheader ] ; 4 uses
  %.076.i507 = phi i32 [ %i.zc, %bb.cp ], [ %i.v, %.lr.ph510.preheader ]
  %i.yq = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 1, 0) %.173.i509, i1 true)
  %i.yr = add i32 %i.yq, %i.yg
  %i.ys = and i32 %i.yr, 31
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %i.yt
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 36
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !12 ; 3 uses
  %i.yx = icmp ult i32 %i.yw, %i.p
  br i1 %i.yx, label %._crit_edge511, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph510
  %i.yy = zext i32 %i.yw to i64
  %i.yz = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.yy
  tail call void @llvm.prefetch.p0(ptr %i.yz, i32 0, i32 3, i32 1)
  %i.za = add nuw nsw i64 %.074.i508, 1           ; 2 uses
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.074.i508
  store i32 %i.yw, ptr %i.zb, align 4, !tbaa !12
  %i.zc = add i32 %.076.i507, -1                  ; 2 uses
  %i.zd = add i32 %.173.i509, -1
  %i.ze = and i32 %i.zd, %.173.i509               ; 2 uses
  %i.zf = icmp ne i32 %i.ze, 0
  %i.zg = icmp ne i32 %i.zc, 0
  %i.zh = select i1 %i.zf, i1 %i.zg, i1 false
  br i1 %i.zh, label %.lr.ph510, label %.lr.ph519, !llvm.loop !88

._crit_edge511:                                   ; preds = %.lr.ph510
  %.not589 = icmp eq i64 %.074.i508, 0
  br i1 %.not589, label %ZS_lz2_findBestMatch2.exit, label %.lr.ph519

.lr.ph519:                                        ; preds = %bb.cp, %._crit_edge511
  %.074.i.lcssa712 = phi i64 [ %.074.i508, %._crit_edge511 ], [ %i.za, %bb.cp ]
  %i.zi = getelementptr inbounds i8, ptr %3, i64 -7 ; 2 uses
  %i.zj = icmp ult ptr %2, %i.zi
  %i.zk = getelementptr inbounds i8, ptr %3, i64 -3
  %i.zl = getelementptr inbounds i8, ptr %3, i64 -1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.dd, %.lr.ph519
  %.070.i517 = phi i64 [ 0, %.lr.ph519 ], [ %i.aba, %bb.dd ] ; 2 uses
  %.sroa.064.0.i516 = phi i32 [ 0, %.lr.ph519 ], [ %.sroa.064.2.i, %bb.dd ]
  %.sroa.3.0.i515 = phi i32 [ 0, %.lr.ph519 ], [ %.sroa.3.2.i, %bb.dd ] ; 3 uses
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.070.i517
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !12 ; 2 uses
  %i.zo = zext i32 %i.zn to i64
  %i.zp = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.zo ; 4 uses
  %i.zq = zext i32 %.sroa.3.0.i515 to i64         ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 %i.zq
  %i.zs = load i8, ptr %i.zr, align 1, !tbaa !35
  %i.zt = getelementptr inbounds nuw i8, ptr %2, i64 %i.zq
  %i.zu = load i8, ptr %i.zt, align 1, !tbaa !35
  %i.zv = icmp eq i8 %i.zs, %i.zu
  br i1 %i.zv, label %bb.cr, label %bb.dd

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.zj, label %bb.cs, label %.loopexit.i366

bb.cs:                                            ; preds = %bb.cr
  %.val60.i381 = load i64, ptr %i.zp, align 1     ; 2 uses
  %.val.i382 = load i64, ptr %2, align 1          ; 2 uses
  %.not.i383 = icmp eq i64 %.val60.i381, %.val.i382
  br i1 %.not.i383, label %.preheader.i384, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.zw = xor i64 %.val.i382, %.val60.i381
  %i.zx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.zw, i1 true)
  %i.zy = lshr i64 %i.zx, 3
  br label %ZS_count.exit393

.preheader.i384:                                  ; preds = %bb.cs, %bb.cu
  %.pn.i385 = phi ptr [ %.049.i388, %bb.cu ], [ %2, %bb.cs ]
  %.pn67.i386 = phi ptr [ %.045.i387, %bb.cu ], [ %i.zp, %bb.cs ]
  %.045.i387 = getelementptr inbounds nuw i8, ptr %.pn67.i386, i64 8 ; 3 uses
  %.049.i388 = getelementptr inbounds nuw i8, ptr %.pn.i385, i64 8 ; 5 uses
  %i.zz = icmp ult ptr %.049.i388, %i.zi
  br i1 %i.zz, label %bb.cu, label %.loopexit.i366

bb.cu:                                            ; preds = %.preheader.i384
  %.045.val.i389 = load i64, ptr %.045.i387, align 1 ; 2 uses
  %.049.val.i390 = load i64, ptr %.049.i388, align 1 ; 2 uses
  %.not59.i391 = icmp eq i64 %.045.val.i389, %.049.val.i390
  br i1 %.not59.i391, label %.preheader.i384, label %.thread63.i392

.thread63.i392:                                   ; preds = %bb.cu
  %i.aaa = xor i64 %.049.val.i390, %.045.val.i389
  %i.aab = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.aaa, i1 true)
  %i.aac = lshr i64 %i.aab, 3
  %i.aad = getelementptr inbounds nuw i8, ptr %.049.i388, i64 %i.aac
  %i.aae = ptrtoint ptr %i.aad to i64
  %i.aaf = sub i64 %i.aae, %i.q
  br label %ZS_count.exit393

.loopexit.i366:                                   ; preds = %.preheader.i384, %bb.cr
  %.251.i367 = phi ptr [ %2, %bb.cr ], [ %.049.i388, %.preheader.i384 ] ; 5 uses
  %.247.i368 = phi ptr [ %i.zp, %bb.cr ], [ %.045.i387, %.preheader.i384 ] ; 4 uses
  %i.aag = icmp ult ptr %.251.i367, %i.zk
  br i1 %i.aag, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %.loopexit.i366
  %.247.val.i379 = load i32, ptr %.247.i368, align 1
  %.251.val.i380 = load i32, ptr %.251.i367, align 1
  %i.aah = icmp eq i32 %.247.val.i379, %.251.val.i380
  br i1 %i.aah, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.aai = getelementptr inbounds nuw i8, ptr %.251.i367, i64 4
  %i.aaj = getelementptr inbounds nuw i8, ptr %.247.i368, i64 4
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %.loopexit.i366
  %.352.i369 = phi ptr [ %i.aai, %bb.cw ], [ %.251.i367, %bb.cv ], [ %.251.i367, %.loopexit.i366 ] ; 5 uses
  %.348.i370 = phi ptr [ %i.aaj, %bb.cw ], [ %.247.i368, %bb.cv ], [ %.247.i368, %.loopexit.i366 ] ; 4 uses
  %i.aak = icmp ult ptr %.352.i369, %i.zl
  br i1 %i.aak, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %.348.val.i377 = load i16, ptr %.348.i370, align 1
  %.352.val.i378 = load i16, ptr %.352.i369, align 1
  %i.aal = icmp eq i16 %.348.val.i377, %.352.val.i378
  br i1 %i.aal, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aam = getelementptr inbounds nuw i8, ptr %.352.i369, i64 2
  %i.aan = getelementptr inbounds nuw i8, ptr %.348.i370, i64 2
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx
  %.453.i371 = phi ptr [ %i.aam, %bb.cz ], [ %.352.i369, %bb.cy ], [ %.352.i369, %bb.cx ] ; 4 uses
  %.4.i372 = phi ptr [ %i.aan, %bb.cz ], [ %.348.i370, %bb.cy ], [ %.348.i370, %bb.cx ]
  %i.aao = icmp ult ptr %.453.i371, %3
  br i1 %i.aao, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.aap = load i8, ptr %.4.i372, align 1, !tbaa !35
  %i.aaq = load i8, ptr %.453.i371, align 1, !tbaa !35
  %i.aar = icmp eq i8 %i.aap, %i.aaq
  %spec.select.idx.i375 = zext i1 %i.aar to i64
  %spec.select.i376 = getelementptr inbounds nuw i8, ptr %.453.i371, i64 %spec.select.idx.i375
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.5.i373 = phi ptr [ %.453.i371, %bb.da ], [ %spec.select.i376, %bb.db ]
  %i.aas = ptrtoint ptr %.5.i373 to i64
  %i.aat = sub i64 %i.aas, %i.q
  br label %ZS_count.exit393

ZS_count.exit393:                                 ; preds = %bb.ct, %.thread63.i392, %bb.dc
  %.3.i374 = phi i64 [ %i.aaf, %.thread63.i392 ], [ %i.aat, %bb.dc ], [ %i.zy, %bb.ct ]
  %i.aau = trunc i64 %.3.i374 to i32
  br label %bb.dd

bb.dd:                                            ; preds = %ZS_count.exit393, %bb.cq
  %.0.i = phi i32 [ %i.aau, %ZS_count.exit393 ], [ 0, %bb.cq ] ; 3 uses
  %i.aav = icmp ugt i32 %.0.i, %.sroa.3.0.i515    ; 2 uses
  %i.aaw = sub i32 %i.t, %i.zn
  %i.aax = zext i32 %.0.i to i64
  %i.aay = getelementptr inbounds nuw i8, ptr %2, i64 %i.aax
  %i.aaz = icmp eq ptr %i.aay, %3
  %.sroa.3.2.i = tail call i32 @llvm.umax.i32(i32 %.0.i, i32 %.sroa.3.0.i515) ; 2 uses
  %.sroa.064.2.i = select i1 %i.aav, i32 %i.aaw, i32 %.sroa.064.0.i516 ; 2 uses
  %cond.i.not749 = select i1 %i.aav, i1 %i.aaz, i1 false
  %i.aba = add nuw nsw i64 %.070.i517, 1          ; 2 uses
  %exitcond613.not = icmp eq i64 %i.aba, %.074.i.lcssa712
  %or.cond740 = select i1 %cond.i.not749, i1 true, i1 %exitcond613.not
  br i1 %or.cond740, label %ZS_lz2_findBestMatch2.exit.loopexit, label %bb.cq, !llvm.loop !89

ZS_lz2_findBestMatch2.exit.loopexit:              ; preds = %bb.dd
  %i.abb = zext i32 %.sroa.3.2.i to i64
  %i.abc = shl nuw i64 %i.abb, 32
  %i.abd = zext i32 %.sroa.064.2.i to i64
  %i.abe = or disjoint i64 %i.abc, %i.abd
  br label %ZS_lz2_findBestMatch2.exit

ZS_lz2_findBestMatch2.exit:                       ; preds = %ZS_lz2_update.exit167, %ZS_lz2_findBestMatch2.exit.loopexit, %._crit_edge511
  %.sroa.064.0.insert.insert.i = phi i64 [ 0, %._crit_edge511 ], [ %i.abe, %ZS_lz2_findBestMatch2.exit.loopexit ], [ 0, %ZS_lz2_update.exit167 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  br label %bb.de

bb.de:                                            ; preds = %ZS_lz2_findBestMatch2.exit, %ZS_lz2_findBestMatch2.exit52, %ZS_lz2_findBestMatch2.exit78, %ZS_lz2_findBestMatch2.exit104, %ZS_lz2_findBestMatch2.exit130, %ZS_lz2_findBestMatch2.exit156
  %.sroa.0.0 = phi i64 [ %.sroa.064.0.insert.insert.i96, %ZS_lz2_findBestMatch2.exit104 ], [ %.sroa.064.0.insert.insert.i148, %ZS_lz2_findBestMatch2.exit156 ], [ %.sroa.064.0.insert.insert.i122, %ZS_lz2_findBestMatch2.exit130 ], [ %.sroa.064.0.insert.insert.i, %ZS_lz2_findBestMatch2.exit ], [ %.sroa.064.0.insert.insert.i70, %ZS_lz2_findBestMatch2.exit78 ], [ %.sroa.064.0.insert.insert.i44, %ZS_lz2_findBestMatch2.exit52 ]
  ret i64 %.sroa.0.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
