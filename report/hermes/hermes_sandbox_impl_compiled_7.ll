Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_7?download=true
inline.NumInlined: 10002
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@w2c_hermes_printf_core:bb.a

.backedge:                                        ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %w2c_hermes_pad.exit1533, %w2c_hermes_pad.exit1571, %bb.f, %bb.aq, %bb.at, %func_types_eq.exit.thread
  %.01314.be = phi i32 [ %.11315, %bb.f ], [ %i.eq, %bb.aq ], [ %i.eq, %w2c_hermes_pad.exit1533 ], [ %i.eq, %w2c_hermes_pad.exit1571 ], [ %i.eq, %func_types_eq.exit.thread ], [ %i.eq, %bb.at ], [ %i.eq, %bb.au ], [ %i.eq, %bb.av ], [ %i.eq, %bb.aw ], [ %i.eq, %bb.ax ], [ %i.eq, %bb.ay ], [ %i.eq, %bb.ba ], [ %i.eq, %bb.az ]
  %.01307.be = phi i32 [ %i.ah, %bb.f ], [ 0, %bb.aq ], [ %i.lg, %w2c_hermes_pad.exit1533 ], [ %i.ok, %w2c_hermes_pad.exit1571 ], [ %i.mg, %func_types_eq.exit.thread ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.av ], [ 0, %bb.aw ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 0, %bb.ba ], [ 0, %bb.az ] ; 2 uses
  %.01272.be = phi i32 [ %.012721621, %bb.f ], [ %.31275, %bb.aq ], [ %.31275, %w2c_hermes_pad.exit1533 ], [ %.31275, %w2c_hermes_pad.exit1571 ], [ %.31275, %func_types_eq.exit.thread ], [ %.31275, %bb.at ], [ %.31275, %bb.au ], [ %.31275, %bb.av ], [ %.31275, %bb.aw ], [ %.31275, %bb.ax ], [ %.31275, %bb.ay ], [ %.31275, %bb.ba ], [ %.31275, %bb.az ]
  %i.gc = icmp sgt i32 %.01307.be, %i.ai
  br i1 %i.gc, label %.loopexit, label %bb.b

bb.av:                                            ; preds = %bb.at
  %.val1402 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1402, i64 %i.e
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  %.0.copyload.i1507 = load i32, ptr %i.ge, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1507) #13, !srcloc !14
  %i.gf = zext i32 %.0.copyload.i1507 to i64
  %.val1416 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %.val1416, i64 %i.gf
  store i32 %i.w, ptr %i.gg, align 1
  br label %.backedge

bb.aw:                                            ; preds = %bb.at
  %.val1401 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %.val1401, i64 %i.e
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %.0.copyload.i1508 = load i32, ptr %i.gi, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1508) #13, !srcloc !14
  %i.gj = sext i32 %i.w to i64
  %i.gk = zext i32 %.0.copyload.i1508 to i64
  %.val1458 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gl = getelementptr inbounds nuw i8, ptr %.val1458, i64 %i.gk
  store i64 %i.gj, ptr %i.gl, align 1
  br label %.backedge

bb.ax:                                            ; preds = %bb.at
  %.val1400 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gm = getelementptr inbounds nuw i8, ptr %.val1400, i64 %i.e
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 64
  %.0.copyload.i1509 = load i32, ptr %i.gn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1509) #13, !srcloc !14
  %i.go = zext i32 %.0.copyload.i1509 to i64
  %.val1460 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gp = trunc i32 %i.w to i16
  %i.gq = getelementptr inbounds nuw i8, ptr %.val1460, i64 %i.go
  store i16 %i.gp, ptr %i.gq, align 1
  br label %.backedge

bb.ay:                                            ; preds = %bb.at
  %.val1399 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gr = getelementptr inbounds nuw i8, ptr %.val1399, i64 %i.e
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  %.0.copyload.i1510 = load i32, ptr %i.gs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1510) #13, !srcloc !14
  %i.gt = zext i32 %.0.copyload.i1510 to i64
  %.val1446 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gu = trunc i32 %i.w to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %.val1446, i64 %i.gt
  store i8 %i.gu, ptr %i.gv, align 1
  br label %.backedge

bb.az:                                            ; preds = %bb.at
  %.val1398 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1398, i64 %i.e
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 64
  %.0.copyload.i1511 = load i32, ptr %i.gx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1511) #13, !srcloc !14
  %i.gy = zext i32 %.0.copyload.i1511 to i64
  %.val1415 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.gz = getelementptr inbounds nuw i8, ptr %.val1415, i64 %i.gy
  store i32 %i.w, ptr %i.gz, align 1
  br label %.backedge

bb.ba:                                            ; preds = %bb.at
  %.val1397 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1397, i64 %i.e
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 64
  %.0.copyload.i1512 = load i32, ptr %i.hb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1512) #13, !srcloc !14
  %i.hc = sext i32 %i.w to i64
  %i.hd = zext i32 %.0.copyload.i1512 to i64
  %.val1457 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.he = getelementptr inbounds nuw i8, ptr %.val1457, i64 %i.hd
  store i64 %i.hc, ptr %i.he, align 1
  br label %.backedge

bb.bb:                                            ; preds = %bb.ar
  %i.hf = tail call i32 @llvm.umax.i32(i32 %.01296, i32 8)
  %i.hg = or i32 %i.fo, 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ar, %bb.ar, %bb.bb
  %.7 = phi i32 [ 120, %bb.bb ], [ %i.fv, %bb.ar ], [ %i.fv, %bb.ar ] ; 2 uses
  %.11297 = phi i32 [ %i.hf, %bb.bb ], [ %.01296, %bb.ar ], [ %.01296, %bb.ar ] ; 2 uses
  %.31286 = phi i32 [ %i.hg, %bb.bb ], [ %i.fo, %bb.ar ], [ %i.fo, %bb.ar ] ; 3 uses
  %.val1453 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1453, i64 %i.o
  %.0.copyload.i1513 = load i64, ptr %i.hh, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1513) #13, !srcloc !33
  %.not1373 = icmp eq i64 %.0.copyload.i1513, 0
  br i1 %.not1373, label %.loopexit1577, label %.preheader1576

.preheader1576:                                   ; preds = %bb.bc
  %i.hi = trunc nuw nsw i32 %.7 to i8
  %i.hj = and i8 %i.hi, 32
  br label %bb.bd

bb.bd:                                            ; preds = %.preheader1576, %bb.bd
  %.01288 = phi i32 [ %i.hk, %bb.bd ], [ %i.i, %.preheader1576 ]
  %.01267 = phi i64 [ %i.hs, %bb.bd ], [ %.0.copyload.i1513, %.preheader1576 ] ; 3 uses
  %i.hk = add i32 %.01288, -1                     ; 3 uses
  %i.hl = and i64 %.01267, 15
  %.val1434 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1434, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 67168
  %.0.copyload.i1514 = load i8, ptr %i.hn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1514) #13, !srcloc !31
  %i.ho = zext i32 %i.hk to i64
  %.val1445 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hp = or i8 %.0.copyload.i1514, %i.hj
  %i.hq = getelementptr inbounds nuw i8, ptr %.val1445, i64 %i.ho
  store i8 %i.hp, ptr %i.hq, align 1
  %i.hr = icmp ugt i64 %.01267, 15
  %i.hs = lshr i64 %.01267, 4
  br i1 %i.hr, label %bb.bd, label %.loopexit1577

.loopexit1577:                                    ; preds = %bb.bd, %bb.bc
  %.11289 = phi i32 [ %i.i, %bb.bc ], [ %i.hk, %bb.bd ] ; 2 uses
  %.val1452 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1452, i64 %i.o
  %.0.copyload.i1515 = load i64, ptr %i.ht, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1515) #13, !srcloc !33
  %.not1374 = icmp eq i64 %.0.copyload.i1515, 0
  %i.hu = and i32 %.31286, 8
  %.not1375 = icmp eq i32 %i.hu, 0
  %or.cond = select i1 %.not1374, i1 true, i1 %.not1375
  br i1 %or.cond, label %bb.bm, label %bb.be

bb.be:                                            ; preds = %.loopexit1577
  %i.hv = lshr i32 %.7, 4
  %i.hw = add nuw nsw i32 %i.hv, 18120
  br label %bb.bm

bb.bf:                                            ; preds = %bb.ar
  %.val1451 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hx = getelementptr inbounds nuw i8, ptr %.val1451, i64 %i.e
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 64
  %.0.copyload.i1516 = load i64, ptr %i.hy, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1516) #13, !srcloc !33
  %.not1369 = icmp eq i64 %.0.copyload.i1516, 0
  br i1 %.not1369, label %.loopexit1581, label %.preheader1580

.preheader1580:                                   ; preds = %bb.bf, %.preheader1580
  %.8 = phi i32 [ %i.hz, %.preheader1580 ], [ %i.i, %bb.bf ]
  %.11268 = phi i64 [ %i.ig, %.preheader1580 ], [ %.0.copyload.i1516, %bb.bf ] ; 3 uses
  %i.hz = add i32 %.8, -1                         ; 3 uses
  %i.ia = trunc i64 %.11268 to i8
  %i.ib = and i8 %i.ia, 7
  %i.ic = or disjoint i8 %i.ib, 48
  %i.id = zext i32 %i.hz to i64
  %.val1444 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ie = getelementptr inbounds nuw i8, ptr %.val1444, i64 %i.id
  store i8 %i.ic, ptr %i.ie, align 1
  %i.if = icmp ugt i64 %.11268, 7
  %i.ig = lshr i64 %.11268, 3
  br i1 %i.if, label %.preheader1580, label %.loopexit1581

.loopexit1581:                                    ; preds = %.preheader1580, %bb.bf
  %.9 = phi i32 [ %i.i, %bb.bf ], [ %i.hz, %.preheader1580 ] ; 3 uses
  %i.ih = and i32 %i.fo, 8
  %.not1370 = icmp eq i32 %i.ih, 0
  br i1 %.not1370, label %bb.bm, label %bb.bg

bb.bg:                                            ; preds = %.loopexit1581
  %i.ii = sub i32 %i.i, %.9                       ; 2 uses
  %i.ij = add i32 %i.ii, 1
  %i.ik = icmp slt i32 %i.ii, %.01296
  %i.il = select i1 %i.ik, i32 %.01296, i32 %i.ij
  br label %bb.bm

bb.bh:                                            ; preds = %bb.ar, %bb.ar
  %.val1450 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.im = getelementptr inbounds nuw i8, ptr %.val1450, i64 %i.o
  %.0.copyload.i1517 = load i64, ptr %i.im, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1517) #13, !srcloc !33
  %i.in = icmp slt i64 %.0.copyload.i1517, 0
  br i1 %i.in, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.io = sub i64 0, %.0.copyload.i1517           ; 2 uses
  %.val1456 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ip = getelementptr inbounds nuw i8, ptr %.val1456, i64 %i.o
  store i64 %i.io, ptr %i.ip, align 1
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bh
  %i.iq = and i32 %i.fo, 2048
  %.not1371 = icmp eq i32 %i.iq, 0
  br i1 %.not1371, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ir = and i32 %i.fo, 1                        ; 2 uses
  %8 = shl nuw nsw i32 %i.ir, 1
  %9 = or disjoint i32 %8, 18120
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %bb.bi, %bb.as
  %.11278 = phi i32 [ 1, %bb.bi ], [ 0, %bb.as ], [ %i.ir, %bb.bk ], [ 1, %bb.bj ]
  %.21269 = phi i64 [ %i.io, %bb.bi ], [ %.0.copyload.i1505, %bb.as ], [ %.0.copyload.i1517, %bb.bk ], [ %.0.copyload.i1517, %bb.bj ]
  %.3 = phi i32 [ 18120, %bb.bi ], [ 18120, %bb.as ], [ %9, %bb.bk ], [ 18121, %bb.bj ]
  %i.is = tail call i32 @w2c_hermes_fmt_u(ptr noundef nonnull %0, i64 noundef %.21269, i32 noundef %i.i) #13
  br label %bb.bm

bb.bm:                                            ; preds = %.loopexit1581, %.loopexit1577, %bb.bl, %bb.bg, %bb.be
  %.21298 = phi i32 [ %.01296, %bb.bl ], [ %.01296, %.loopexit1581 ], [ %i.il, %bb.bg ], [ %.11297, %.loopexit1577 ], [ %.11297, %bb.be ] ; 3 uses
  %.21290 = phi i32 [ %i.is, %bb.bl ], [ %.9, %.loopexit1581 ], [ %.9, %bb.bg ], [ %.11289, %.loopexit1577 ], [ %.11289, %bb.be ] ; 2 uses
  %.41287 = phi i32 [ %i.fo, %bb.bl ], [ %i.fo, %.loopexit1581 ], [ %i.fo, %bb.bg ], [ %.31286, %.loopexit1577 ], [ %.31286, %bb.be ] ; 2 uses
  %.21279 = phi i32 [ %.11278, %bb.bl ], [ 0, %.loopexit1581 ], [ 0, %bb.bg ], [ 0, %.loopexit1577 ], [ 2, %bb.be ] ; 2 uses
  %.01270 = phi i32 [ %.3, %bb.bl ], [ 18120, %.loopexit1581 ], [ 18120, %bb.bg ], [ 18120, %.loopexit1577 ], [ %i.hw, %bb.be ] ; 2 uses
  %i.it = icmp sgt i32 %.21298, -1
  %.not1376 = select i1 %i.it, i1 true, i1 %.2
  br i1 %.not1376, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.iu = and i32 %.41287, -65537
  %i.iv = select i1 %.2, i32 %.41287, i32 %i.iu   ; 2 uses
  %.val1449 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.iw = getelementptr inbounds nuw i8, ptr %.val1449, i64 %i.e
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 64
  %.0.copyload.i1518 = load i64, ptr %i.ix, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1518) #13, !srcloc !33
  %.not1379 = icmp eq i64 %.0.copyload.i1518, 0   ; 2 uses
  %.not1380 = icmp eq i32 %.21298, 0
  %or.cond1388 = and i1 %.not1380, %.not1379
  br i1 %or.cond1388, label %bb.cr, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iy = zext i1 %.not1379 to i32
  %i.iz = sub i32 %i.i, %.21290
  %i.ja = add i32 %i.iz, %i.iy
  %i.jb = tail call i32 @llvm.smax.i32(i32 %i.ja, i32 %.21298)
  br label %bb.cr

bb.bp:                                            ; preds = %bb.ar
  %.val1396 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jc = getelementptr inbounds nuw i8, ptr %.val1396, i64 %i.e
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 64
  %.0.copyload.i1519 = load i32, ptr %i.jd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1519) #13, !srcloc !14
  %.not1366 = icmp eq i32 %.0.copyload.i1519, 0
  %i.je = select i1 %.not1366, i32 62450, i32 %.0.copyload.i1519 ; 5 uses
  %i.jf = tail call i32 @llvm.umin.i32(i32 %.01296, i32 2147483647) ; 2 uses
  %i.jg = tail call i32 @w2c_hermes_memchr(ptr noundef nonnull %0, i32 noundef %i.je, i32 noundef 0, i32 noundef %i.jf) #13 ; 2 uses
  %i.jh = sub i32 %i.jg, %i.je
  %.not1367 = icmp eq i32 %i.jg, 0
  %i.ji = select i1 %.not1367, i32 %i.jf, i32 %i.jh ; 3 uses
  %i.jj = add i32 %i.ji, %i.je                    ; 3 uses
  %i.jk = icmp sgt i32 %.01296, -1
  br i1 %i.jk, label %bb.cr, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jl = zext i32 %i.jj to i64
  %.val1433 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %.val1433, i64 %i.jl
  %.0.copyload.i1520 = load i8, ptr %i.jm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i1520) #13, !srcloc !31
  %.not1368 = icmp eq i8 %.0.copyload.i1520, 0
  br i1 %.not1368, label %bb.cr, label %.loopexit

bb.br:                                            ; preds = %bb.ar
  %.not1384 = icmp eq i32 %.01296, 0
  br i1 %.not1384, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.val1395 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jn = getelementptr inbounds nuw i8, ptr %.val1395, i64 %i.e
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 64
  %.0.copyload.i1521 = load i32, ptr %i.jo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1521) #13, !srcloc !14
  br label %bb.bv

bb.bt:                                            ; preds = %bb.br
  tail call void @w2c_hermes_pad(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 32, i32 noundef %.01276, i32 noundef 0, i32 noundef %i.fo)
  %.pre = and i32 %i.fo, 73728
  br label %.loopexit1578

bb.bu:                                            ; preds = %bb.ar
  %.val1414 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jp = getelementptr inbounds nuw i8, ptr %.val1414, i64 %i.e
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  store i32 0, ptr %i.jq, align 1
  %.val1448 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %.val1448, i64 %i.o
  %.0.copyload.i1522 = load i64, ptr %i.jr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i1522) #13, !srcloc !33
  %.val1473 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.js = trunc i64 %.0.copyload.i1522 to i32
  %i.jt = getelementptr inbounds nuw i8, ptr %.val1473, i64 %i.e
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i32 %i.js, ptr %i.ju, align 1
  %.val1413 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jv = getelementptr inbounds nuw i8, ptr %.val1413, i64 %i.o
  store i32 %i.p, ptr %i.jv, align 1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %.31299 = phi i32 [ %.01296, %bb.bs ], [ -1, %bb.bu ] ; 2 uses
  %.4 = phi i32 [ %.0.copyload.i1521, %bb.bs ], [ %i.p, %bb.bu ]
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %bb.bv
  %.10 = phi i32 [ 0, %bb.bv ], [ %i.kd, %bb.by ] ; 4 uses
  %.51306 = phi i32 [ %.4, %bb.bv ], [ %i.kc, %bb.by ] ; 2 uses
  %i.jw = zext i32 %.51306 to i64
  %.val1394 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.jx = getelementptr inbounds nuw i8, ptr %.val1394, i64 %i.jw
  %.0.copyload.i1523 = load i32, ptr %i.jx, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1523) #13, !srcloc !14
  %.not1385 = icmp eq i32 %.0.copyload.i1523, 0
  br i1 %.not1385, label %.loopexit1579, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jy = tail call i32 @w2c_hermes_wctomb(ptr noundef nonnull %0, i32 noundef %i.v, i32 noundef %.0.copyload.i1523) ; 3 uses
  %i.jz = icmp slt i32 %i.jy, 0                   ; 2 uses
  %i.ka = sub i32 %.31299, %.10
  %i.kb = icmp ugt i32 %i.jy, %i.ka
  %or.cond1390 = select i1 %i.jz, i1 true, i1 %i.kb
  br i1 %or.cond1390, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.kc = add i32 %.51306, 4
  %i.kd = add i32 %i.jy, %.10                     ; 3 uses
  %i.ke = icmp ugt i32 %.31299, %i.kd
  br i1 %i.ke, label %bb.bw, label %.loopexit1579

bb.bz:                                            ; preds = %bb.bx
  br i1 %i.jz, label %.loopexit1573, label %.loopexit1579

.loopexit1579:                                    ; preds = %bb.by, %bb.bw, %bb.bz
  %.11 = phi i32 [ %.10, %bb.bz ], [ %i.kd, %bb.by ], [ %.10, %bb.bw ] ; 9 uses
  %i.kf = icmp slt i32 %.11, 0
  br i1 %i.kf, label %.loopexit, label %bb.ca

bb.ca:                                            ; preds = %.loopexit1579
  %i.kg = load i32, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.kh = add i32 %i.kg, -256                     ; 4 uses
  store i32 %i.kh, ptr %i.a, align 8, !tbaa !32
  %.not.i = icmp sgt i32 %.01276, %.11
  %i.ki = and i32 %i.fo, 73728                    ; 5 uses
  %.not65.i = icmp eq i32 %i.ki, 0
  %or.cond.i = and i1 %.not65.i, %.not.i
  br i1 %or.cond.i, label %bb.cb, label %w2c_hermes_pad.exit

bb.cb:                                            ; preds = %bb.ca
  %i.kj = sub nuw nsw i32 %.01276, %.11           ; 4 uses
  %i.kk = icmp samesign ugt i32 %i.kj, 255
  %i.kl = tail call i32 @llvm.umin.i32(i32 %i.kj, i32 256)
  %i.km = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.kh, i32 noundef 32, i32 noundef %i.kl) #13 ; 0 uses
  br i1 %i.kk, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.cb, %.preheader.i
  %.0.i = phi i32 [ %i.kn, %.preheader.i ], [ %i.kj, %bb.cb ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.kh, i32 noundef 256)
  %i.kn = add i32 %.0.i, -256                     ; 3 uses
  %i.ko = icmp ugt i32 %i.kn, 255
  br i1 %i.ko, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %bb.cb
  %.1.i = phi i32 [ %i.kj, %bb.cb ], [ %i.kn, %.preheader.i ]
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.kh, i32 noundef %.1.i)
  br label %w2c_hermes_pad.exit

w2c_hermes_pad.exit:                              ; preds = %bb.ca, %.loopexit.i
  store i32 %i.kg, ptr %i.a, align 8, !tbaa !32
  %.not1386 = icmp eq i32 %.11, 0
  br i1 %.not1386, label %.loopexit1578, label %bb.cc

bb.cc:                                            ; preds = %w2c_hermes_pad.exit
  %.val1393 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %.val1393, i64 %i.e
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 64
  %.0.copyload.i1524 = load i32, ptr %i.kq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1524) #13, !srcloc !14
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cf, %bb.cc
  %.6 = phi i32 [ %.0.copyload.i1524, %bb.cc ], [ %i.kw, %bb.cf ] ; 2 uses
  %.11293 = phi i32 [ 0, %bb.cc ], [ %i.ku, %bb.cf ]
  %i.kr = zext i32 %.6 to i64
  %.val1392 = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %.val1392, i64 %i.kr
  %.0.copyload.i1525 = load i32, ptr %i.ks, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i1525) #13, !srcloc !14
  %.not1387 = icmp eq i32 %.0.copyload.i1525, 0
  br i1 %.not1387, label %.loopexit1578, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kt = tail call i32 @w2c_hermes_wctomb(ptr noundef nonnull %0, i32 noundef %i.v, i32 noundef %.0.copyload.i1525) ; 2 uses
  %i.ku = add i32 %i.kt, %.11293                  ; 3 uses
  %i.kv = icmp ugt i32 %i.ku, %.11
  br i1 %i.kv, label %.loopexit1578, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @w2c_hermes_out(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.v, i32 noundef %i.kt)
  %i.kw = add i32 %.6, 4
  %i.kx = icmp ugt i32 %.11, %i.ku
  br i1 %i.kx, label %bb.cd, label %.loopexit1578

.loopexit1578:                                    ; preds = %bb.cf, %bb.ce, %bb.cd, %w2c_hermes_pad.exit, %bb.bt
  %.pre-phi = phi i32 [ %.pre, %bb.bt ], [ %i.ki, %w2c_hermes_pad.exit ], [ %i.ki, %bb.cd ], [ %i.ki, %bb.ce ], [ %i.ki, %bb.cf ]
end_hunk_0
