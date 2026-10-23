Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc3?download=true
inline.NumInlined: 116
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@Ptngc_pack_array_xtc3:bb.a
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 96 ; 2 uses
  %wide.load1552 = load <8 x i32>, ptr %i.rv, align 16, !tbaa !10 ; 4 uses
  %wide.load1553 = load <8 x i32>, ptr %i.rw, align 16, !tbaa !10 ; 4 uses
  %wide.load1554 = load <8 x i32>, ptr %i.rx, align 16, !tbaa !10 ; 4 uses
  %wide.load1555 = load <8 x i32>, ptr %i.ry, align 16, !tbaa !10 ; 4 uses
  %i.rz = icmp slt <8 x i32> %wide.load1552, zeroinitializer
  %i.sa = icmp slt <8 x i32> %wide.load1553, zeroinitializer
  %i.sb = icmp slt <8 x i32> %wide.load1554, zeroinitializer
  %i.sc = icmp slt <8 x i32> %wide.load1555, zeroinitializer
  %i.sd = xor <8 x i32> %wide.load1552, splat (i32 -1)
  %i.se = xor <8 x i32> %wide.load1553, splat (i32 -1)
  %i.sf = xor <8 x i32> %wide.load1554, splat (i32 -1)
  %i.sg = xor <8 x i32> %wide.load1555, splat (i32 -1)
  %i.sh = shl nuw nsw <8 x i32> %i.sd, splat (i32 1)
  %i.si = shl nuw nsw <8 x i32> %i.se, splat (i32 1)
  %i.sj = shl nuw nsw <8 x i32> %i.sf, splat (i32 1)
  %i.sk = shl nuw nsw <8 x i32> %i.sg, splat (i32 1)
  %i.sl = add nuw nsw <8 x i32> %i.sh, splat (i32 2)
  %i.sm = add nuw nsw <8 x i32> %i.si, splat (i32 2)
  %i.sn = add nuw nsw <8 x i32> %i.sj, splat (i32 2)
  %i.so = add nuw nsw <8 x i32> %i.sk, splat (i32 2)
  %i.sp = shl nuw <8 x i32> %wide.load1552, splat (i32 1)
  %i.sq = shl nuw <8 x i32> %wide.load1553, splat (i32 1)
  %i.sr = shl nuw <8 x i32> %wide.load1554, splat (i32 1)
  %i.ss = shl nuw <8 x i32> %wide.load1555, splat (i32 1)
  %i.st = add <8 x i32> %i.sp, splat (i32 -1)
  %i.su = add <8 x i32> %i.sq, splat (i32 -1)
  %i.sv = add <8 x i32> %i.sr, splat (i32 -1)
  %i.sw = add <8 x i32> %i.ss, splat (i32 -1)
  %.inv1743 = icmp sgt <8 x i32> %wide.load1552, zeroinitializer
  %predphi1556 = select <8 x i1> %.inv1743, <8 x i32> %i.st, <8 x i32> zeroinitializer
  %predphi1557 = select <8 x i1> %i.rz, <8 x i32> %i.sl, <8 x i32> %predphi1556
  %.inv1744 = icmp sgt <8 x i32> %wide.load1553, zeroinitializer
  %predphi1558 = select <8 x i1> %.inv1744, <8 x i32> %i.su, <8 x i32> zeroinitializer
  %predphi1559 = select <8 x i1> %i.sa, <8 x i32> %i.sm, <8 x i32> %predphi1558
  %.inv1745 = icmp sgt <8 x i32> %wide.load1554, zeroinitializer
  %predphi1560 = select <8 x i1> %.inv1745, <8 x i32> %i.sv, <8 x i32> zeroinitializer
  %predphi1561 = select <8 x i1> %i.sb, <8 x i32> %i.sn, <8 x i32> %predphi1560
  %.inv1746 = icmp sgt <8 x i32> %wide.load1555, zeroinitializer
  %predphi1562 = select <8 x i1> %.inv1746, <8 x i32> %i.sw, <8 x i32> zeroinitializer
  %predphi1563 = select <8 x i1> %i.sc, <8 x i32> %i.so, <8 x i32> %predphi1562
  store <8 x i32> %predphi1557, ptr %i.rv, align 16, !tbaa !10
  store <8 x i32> %predphi1559, ptr %i.rw, align 16, !tbaa !10
  store <8 x i32> %predphi1561, ptr %i.rx, align 16, !tbaa !10
  store <8 x i32> %predphi1563, ptr %i.ry, align 16, !tbaa !10
  %index.next1564 = add nuw i64 %index1551, 32    ; 2 uses
  %i.sx = icmp eq i64 %index.next1564, %n.vec1549
  br i1 %i.sx, label %middle.block1565, label %vector.body1550, !llvm.loop !41

middle.block1565:                                 ; preds = %vector.body1550
  %cmp.n1566 = icmp eq i64 %n.vec1549, %wide.trip.count1025
  br i1 %cmp.n1566, label %.preheader893, label %vec.epilog.iter.check1570

vec.epilog.iter.check1570:                        ; preds = %middle.block1565
  %min.epilog.iters.check1571 = icmp eq i64 %i.ru, 0
  br i1 %min.epilog.iters.check1571, label %.lr.ph915.preheader, label %vec.epilog.ph1572, !prof !77

vec.epilog.ph1572:                                ; preds = %vector.main.loop.iter.check1546, %vec.epilog.iter.check1570
  %vec.epilog.resume.val1567 = phi i64 [ %n.vec1549, %vec.epilog.iter.check1570 ], [ 0, %vector.main.loop.iter.check1546 ]
  %n.vec1573 = and i64 %wide.trip.count1025, 4294967288 ; 3 uses
  br label %vec.epilog.vector.body1574

vec.epilog.vector.body1574:                       ; preds = %vec.epilog.vector.body1574, %vec.epilog.ph1572
  %index1575 = phi i64 [ %vec.epilog.resume.val1567, %vec.epilog.ph1572 ], [ %index.next1579, %vec.epilog.vector.body1574 ] ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1575 ; 2 uses
  %wide.load1576 = load <8 x i32>, ptr %i.sy, align 16, !tbaa !10 ; 4 uses
  %i.sz = icmp slt <8 x i32> %wide.load1576, zeroinitializer
  %i.ta = xor <8 x i32> %wide.load1576, splat (i32 -1)
  %i.tb = shl nuw nsw <8 x i32> %i.ta, splat (i32 1)
  %i.tc = add nuw nsw <8 x i32> %i.tb, splat (i32 2)
  %i.td = shl nuw <8 x i32> %wide.load1576, splat (i32 1)
  %i.te = add <8 x i32> %i.td, splat (i32 -1)
  %.inv1747 = icmp sgt <8 x i32> %wide.load1576, zeroinitializer
  %predphi1577 = select <8 x i1> %.inv1747, <8 x i32> %i.te, <8 x i32> zeroinitializer
  %predphi1578 = select <8 x i1> %i.sz, <8 x i32> %i.tc, <8 x i32> %predphi1577
  store <8 x i32> %predphi1578, ptr %i.sy, align 16, !tbaa !10
  %index.next1579 = add nuw i64 %index1575, 8     ; 2 uses
  %i.tf = icmp eq i64 %index.next1579, %n.vec1573
  br i1 %i.tf, label %vec.epilog.middle.block1580, label %vec.epilog.vector.body1574, !llvm.loop !42

vec.epilog.middle.block1580:                      ; preds = %vec.epilog.vector.body1574
  %cmp.n1581 = icmp eq i64 %n.vec1573, %wide.trip.count1025
  br i1 %cmp.n1581, label %.preheader893, label %.lr.ph915.preheader

.lr.ph915.preheader:                              ; preds = %iter.check1568, %vec.epilog.iter.check1570, %vec.epilog.middle.block1580
  %indvars.iv1022.ph = phi i64 [ 0, %iter.check1568 ], [ %n.vec1549, %vec.epilog.iter.check1570 ], [ %n.vec1573, %vec.epilog.middle.block1580 ]
  br label %.lr.ph915

.preheader893:                                    ; preds = %positive_int.exit632, %vec.epilog.middle.block1580, %middle.block1565
  %.not984 = icmp eq i32 %.1460, 0                ; 2 uses
  br i1 %.not984, label %.preheader892, label %iter.check1528

iter.check1528:                                   ; preds = %.preheader893
  %i.tg = mul nuw nsw i32 %.1460, 3
  %wide.trip.count1030 = zext nneg i32 %i.tg to i64 ; 3 uses
  %n.vec1533 = and i64 %wide.trip.count1030, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body1536

vec.epilog.vector.body1536:                       ; preds = %vec.epilog.vector.body1536, %iter.check1528
  %index1537 = phi i64 [ 0, %iter.check1528 ], [ %index.next1540, %vec.epilog.vector.body1536 ] ; 2 uses
  %vec.phi1538 = phi <4 x i32> [ zeroinitializer, %iter.check1528 ], [ %i.ti, %vec.epilog.vector.body1536 ]
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1537
  %wide.load1539 = load <4 x i32>, ptr %i.th, align 16, !tbaa !10
  %i.ti = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1539, <4 x i32> %vec.phi1538) ; 2 uses
  %index.next1540 = add nuw i64 %index1537, 4     ; 2 uses
  %i.tj = icmp eq i64 %index.next1540, %n.vec1533
  br i1 %i.tj, label %vec.epilog.middle.block1541, label %vec.epilog.vector.body1536, !llvm.loop !43

vec.epilog.middle.block1541:                      ; preds = %vec.epilog.vector.body1536
  %i.tk = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.ti) ; 2 uses
  %cmp.n1542 = icmp eq i64 %n.vec1533, %wide.trip.count1030
  br i1 %cmp.n1542, label %.preheader892, label %.lr.ph918

.lr.ph915:                                        ; preds = %.lr.ph915.preheader, %positive_int.exit632
  %indvars.iv1022 = phi i64 [ %indvars.iv.next1023, %positive_int.exit632 ], [ %indvars.iv1022.ph, %.lr.ph915.preheader ] ; 2 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1022 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !10 ; 4 uses
  %i.tn = icmp sgt i32 %i.tm, 0
  br i1 %i.tn, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.lr.ph915
  %i.to = shl nuw i32 %i.tm, 1
  %i.tp = add i32 %i.to, -1
  br label %positive_int.exit632

bb.ct:                                            ; preds = %.lr.ph915
  %i.tq = icmp slt i32 %i.tm, 0
  br i1 %i.tq, label %bb.cu, label %positive_int.exit632

bb.cu:                                            ; preds = %bb.ct
  %i.tr = xor i32 %i.tm, -1
  %i.ts = shl nuw nsw i32 %i.tr, 1
  %i.tt = add nuw nsw i32 %i.ts, 2
  br label %positive_int.exit632

positive_int.exit632:                             ; preds = %bb.cs, %bb.ct, %bb.cu
  %.0.i631 = phi i32 [ %i.tp, %bb.cs ], [ %i.tt, %bb.cu ], [ 0, %bb.ct ]
  store i32 %.0.i631, ptr %i.tl, align 4, !tbaa !10
  %indvars.iv.next1023 = add nuw nsw i64 %indvars.iv1022, 1 ; 2 uses
  %exitcond1026.not = icmp eq i64 %indvars.iv.next1023, %wide.trip.count1025
  br i1 %exitcond1026.not, label %.preheader893, label %.lr.ph915, !llvm.loop !44

.preheader892:                                    ; preds = %.lr.ph918, %vec.epilog.middle.block1541, %.preheader893
  %.0457.lcssa = phi i32 [ 0, %.preheader893 ], [ %i.tk, %vec.epilog.middle.block1541 ], [ %spec.select566, %.lr.ph918 ]
  %i.tu = mul nuw nsw i32 %.0481975, 3
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %i.tu, i32 %.0863) ; 4 uses
  %i.tv = icmp sgt i32 %invariant.smin, 0
  br i1 %i.tv, label %iter.check1488, label %._crit_edge923

iter.check1488:                                   ; preds = %.preheader892
  %wide.trip.count1035 = zext nneg i32 %invariant.smin to i64 ; 6 uses
  %min.iters.check1465 = icmp ult i32 %invariant.smin, 4
  br i1 %min.iters.check1465, label %.lr.ph922.preheader, label %vector.main.loop.iter.check1466

vector.main.loop.iter.check1466:                  ; preds = %iter.check1488
  %min.iters.check1467 = icmp ult i32 %invariant.smin, 32
  br i1 %min.iters.check1467, label %vec.epilog.ph1492, label %vector.ph1468

vector.ph1468:                                    ; preds = %vector.main.loop.iter.check1466
  %i.tw = and i64 %wide.trip.count1035, 28
  %n.vec1469 = and i64 %wide.trip.count1035, 2147483616 ; 4 uses
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.ph1468, %vector.body1470
  %index1471 = phi i64 [ 0, %vector.ph1468 ], [ %index.next1480, %vector.body1470 ] ; 2 uses
  %vec.phi1472 = phi <8 x i32> [ zeroinitializer, %vector.ph1468 ], [ %i.ub, %vector.body1470 ]
  %vec.phi1473 = phi <8 x i32> [ zeroinitializer, %vector.ph1468 ], [ %i.uc, %vector.body1470 ]
  %vec.phi1474 = phi <8 x i32> [ zeroinitializer, %vector.ph1468 ], [ %i.ud, %vector.body1470 ]
  %vec.phi1475 = phi <8 x i32> [ zeroinitializer, %vector.ph1468 ], [ %i.ue, %vector.body1470 ]
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1471 ; 4 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 64
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 96
  %wide.load1476 = load <8 x i32>, ptr %i.tx, align 16, !tbaa !10
  %wide.load1477 = load <8 x i32>, ptr %i.ty, align 16, !tbaa !10
  %wide.load1478 = load <8 x i32>, ptr %i.tz, align 16, !tbaa !10
  %wide.load1479 = load <8 x i32>, ptr %i.ua, align 16, !tbaa !10
  %i.ub = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1476, <8 x i32> %vec.phi1472) ; 2 uses
  %i.uc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1477, <8 x i32> %vec.phi1473) ; 2 uses
  %i.ud = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1478, <8 x i32> %vec.phi1474) ; 2 uses
  %i.ue = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1479, <8 x i32> %vec.phi1475) ; 2 uses
  %index.next1480 = add nuw i64 %index1471, 32    ; 2 uses
  %i.uf = icmp eq i64 %index.next1480, %n.vec1469
  br i1 %i.uf, label %middle.block1481, label %vector.body1470, !llvm.loop !45

middle.block1481:                                 ; preds = %vector.body1470
  %rdx.minmax1482 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ub, <8 x i32> %i.uc)
  %rdx.minmax1483 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1482, <8 x i32> %i.ud)
  %rdx.minmax1484 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1483, <8 x i32> %i.ue)
  %i.ug = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1484) ; 3 uses
  %cmp.n1485 = icmp eq i64 %n.vec1469, %wide.trip.count1035
  br i1 %cmp.n1485, label %._crit_edge923, label %vec.epilog.iter.check1490

vec.epilog.iter.check1490:                        ; preds = %middle.block1481
  %min.epilog.iters.check1491 = icmp eq i64 %i.tw, 0
  br i1 %min.epilog.iters.check1491, label %.lr.ph922.preheader, label %vec.epilog.ph1492, !prof !78

vec.epilog.ph1492:                                ; preds = %vector.main.loop.iter.check1466, %vec.epilog.iter.check1490
  %vec.epilog.resume.val1486 = phi i64 [ %n.vec1469, %vec.epilog.iter.check1490 ], [ 0, %vector.main.loop.iter.check1466 ]
  %bc.merge.rdx1487 = phi i32 [ %i.ug, %vec.epilog.iter.check1490 ], [ 0, %vector.main.loop.iter.check1466 ]
  %n.vec1493 = and i64 %wide.trip.count1035, 2147483644 ; 3 uses
  %broadcast.splatinsert1494 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1487, i64 0
  %broadcast.splat1495 = shufflevector <4 x i32> %broadcast.splatinsert1494, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1496

vec.epilog.vector.body1496:                       ; preds = %vec.epilog.vector.body1496, %vec.epilog.ph1492
  %index1497 = phi i64 [ %vec.epilog.resume.val1486, %vec.epilog.ph1492 ], [ %index.next1500, %vec.epilog.vector.body1496 ] ; 2 uses
  %vec.phi1498 = phi <4 x i32> [ %broadcast.splat1495, %vec.epilog.ph1492 ], [ %i.ui, %vec.epilog.vector.body1496 ]
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1497
  %wide.load1499 = load <4 x i32>, ptr %i.uh, align 16, !tbaa !10
  %i.ui = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1499, <4 x i32> %vec.phi1498) ; 2 uses
  %index.next1500 = add nuw i64 %index1497, 4     ; 2 uses
  %i.uj = icmp eq i64 %index.next1500, %n.vec1493
  br i1 %i.uj, label %vec.epilog.middle.block1501, label %vec.epilog.vector.body1496, !llvm.loop !46

vec.epilog.middle.block1501:                      ; preds = %vec.epilog.vector.body1496
  %i.uk = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.ui) ; 2 uses
  %cmp.n1502 = icmp eq i64 %n.vec1493, %wide.trip.count1035
  br i1 %cmp.n1502, label %._crit_edge923, label %.lr.ph922.preheader

.lr.ph922.preheader:                              ; preds = %iter.check1488, %vec.epilog.iter.check1490, %vec.epilog.middle.block1501
  %indvars.iv1032.ph = phi i64 [ 0, %iter.check1488 ], [ %n.vec1469, %vec.epilog.iter.check1490 ], [ %n.vec1493, %vec.epilog.middle.block1501 ]
  %.0453921.ph = phi i32 [ 0, %iter.check1488 ], [ %i.ug, %vec.epilog.iter.check1490 ], [ %i.uk, %vec.epilog.middle.block1501 ]
  br label %.lr.ph922

.lr.ph918:                                        ; preds = %vec.epilog.middle.block1541, %.lr.ph918
  %indvars.iv1027 = phi i64 [ %indvars.iv.next1028, %.lr.ph918 ], [ %n.vec1533, %vec.epilog.middle.block1541 ] ; 2 uses
  %.0457917 = phi i32 [ %spec.select566, %.lr.ph918 ], [ %i.tk, %vec.epilog.middle.block1541 ]
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1027
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !10
  %spec.select566 = tail call i32 @llvm.smax.i32(i32 %i.um, i32 %.0457917) ; 2 uses
  %indvars.iv.next1028 = add nuw nsw i64 %indvars.iv1027, 1 ; 2 uses
  %exitcond1031.not = icmp eq i64 %indvars.iv.next1028, %wide.trip.count1030
  br i1 %exitcond1031.not, label %.preheader892, label %.lr.ph918, !llvm.loop !47

.lr.ph922:                                        ; preds = %.lr.ph922.preheader, %.lr.ph922
  %indvars.iv1032 = phi i64 [ %indvars.iv.next1033, %.lr.ph922 ], [ %indvars.iv1032.ph, %.lr.ph922.preheader ] ; 2 uses
  %.0453921 = phi i32 [ %spec.select567, %.lr.ph922 ], [ %.0453921.ph, %.lr.ph922.preheader ]
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1032
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !10
  %spec.select567 = tail call i32 @llvm.smax.i32(i32 %i.uo, i32 %.0453921) ; 2 uses
  %indvars.iv.next1033 = add nuw nsw i64 %indvars.iv1032, 1 ; 2 uses
  %exitcond1036.not = icmp eq i64 %indvars.iv.next1033, %wide.trip.count1035
  br i1 %exitcond1036.not, label %._crit_edge923, label %.lr.ph922, !llvm.loop !48

._crit_edge923:                                   ; preds = %.lr.ph922, %middle.block1481, %vec.epilog.middle.block1501, %.preheader892
  %.0453.lcssa = phi i32 [ 0, %.preheader892 ], [ %i.uk, %vec.epilog.middle.block1501 ], [ %i.ug, %middle.block1481 ], [ %spec.select567, %.lr.ph922 ]
  %i.up = tail call i32 @Ptngc_find_magic_index(i32 noundef %.0457.lcssa) #12 ; 2 uses
  %i.uq = tail call i32 @Ptngc_find_magic_index(i32 noundef %.0453.lcssa) #12 ; 2 uses
  %i.ur = icmp slt i32 %i.up, %i.uq
  %. = tail call i32 @llvm.smin.i32(i32 %i.up, i32 %i.uq)
  %i.us = tail call i32 @llvm.smax.i32(i32 %.0481975, i32 %.1460)
  %.1450 = select i1 %i.ur, i32 %.1460, i32 %i.us
  %.2451 = tail call i32 @llvm.smin.i32(i32 %.1450, i32 %.2471) ; 2 uses
  %i.ut = icmp eq i32 %.2451, 0
  %.3452 = tail call i32 @llvm.umax.i32(i32 %.2451, i32 1)
  %.1448 = select i1 %i.ut, i32 %.0489974, i32 %.
  %invariant.smin925 = tail call i32 @llvm.smin.i32(i32 %.0863, i32 36) ; 2 uses
  %wide.trip.count1040 = zext nneg i32 %invariant.smin925 to i64
  br label %.lr.ph928.preheader

.lr.ph928.preheader:                              ; preds = %._crit_edge923, %._crit_edge937
  %.0445 = phi i32 [ %.3452, %._crit_edge923 ], [ %spec.select569, %._crit_edge937 ] ; 15 uses
  %.0443 = phi i32 [ %.1448, %._crit_edge923 ], [ %i.vs, %._crit_edge937 ] ; 10 uses
  br label %.lr.ph928

.lr.ph928:                                        ; preds = %.lr.ph928.preheader, %bb.cv
  %indvars.iv1037 = phi i64 [ 0, %.lr.ph928.preheader ], [ %indvars.iv.next1038, %bb.cv ] ; 3 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1037
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !10
  %i.uw = tail call i32 @Ptngc_find_magic_index(i32 noundef %i.uv) #12
  %i.ux = icmp sgt i32 %i.uw, %.0443
  br i1 %i.ux, label %.lr.ph936.preheader.split.loop.exit, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph928
  %indvars.iv.next1038 = add nuw nsw i64 %indvars.iv1037, 1 ; 2 uses
  %exitcond1041.not = icmp eq i64 %indvars.iv.next1038, %wide.trip.count1040
  br i1 %exitcond1041.not, label %iter.check1450, label %.lr.ph928, !llvm.loop !49

.lr.ph936.preheader.split.loop.exit:              ; preds = %.lr.ph928
  %i.uy = trunc nuw nsw i64 %indvars.iv1037 to i32
  br label %iter.check1450

iter.check1450:                                   ; preds = %bb.cv, %.lr.ph936.preheader.split.loop.exit
  %.7.lcssa.ph = phi i32 [ %i.uy, %.lr.ph936.preheader.split.loop.exit ], [ %invariant.smin925, %bb.cv ]
  %i.uz = udiv i32 %.7.lcssa.ph, 3                ; 2 uses
  %spec.select569 = tail call i32 @llvm.smax.i32(i32 %i.uz, i32 %.0445) ; 4 uses
  %i.va = mul nuw i32 %spec.select569, 3
  %wide.trip.count1046 = zext i32 %i.va to i64    ; 6 uses
  %min.iters.check1429 = icmp samesign ult i32 %spec.select569, 2
  br i1 %min.iters.check1429, label %.lr.ph936.preheader, label %vector.main.loop.iter.check1430

vector.main.loop.iter.check1430:                  ; preds = %iter.check1450
  %min.iters.check1431 = icmp samesign ult i32 %spec.select569, 11
  br i1 %min.iters.check1431, label %vec.epilog.ph1454, label %vector.ph1432

vector.ph1432:                                    ; preds = %vector.main.loop.iter.check1430
  %i.vb = and i64 %wide.trip.count1046, 28
  %n.vec1433 = and i64 %wide.trip.count1046, 4294967264 ; 4 uses
  br label %vector.body1434

vector.body1434:                                  ; preds = %vector.ph1432, %vector.body1434
  %index1435 = phi i64 [ 0, %vector.ph1432 ], [ %index.next1443, %vector.body1434 ] ; 2 uses
  %vec.phi1436 = phi <8 x i32> [ zeroinitializer, %vector.ph1432 ], [ %i.vg, %vector.body1434 ]
  %vec.phi1437 = phi <8 x i32> [ zeroinitializer, %vector.ph1432 ], [ %i.vh, %vector.body1434 ]
  %vec.phi1438 = phi <8 x i32> [ zeroinitializer, %vector.ph1432 ], [ %i.vi, %vector.body1434 ]
  %vec.phi1439 = phi <8 x i32> [ zeroinitializer, %vector.ph1432 ], [ %i.vj, %vector.body1434 ]
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1435 ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 32
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 96
  %wide.load = load <8 x i32>, ptr %i.vc, align 16, !tbaa !10
  %wide.load1440 = load <8 x i32>, ptr %i.vd, align 16, !tbaa !10
  %wide.load1441 = load <8 x i32>, ptr %i.ve, align 16, !tbaa !10
  %wide.load1442 = load <8 x i32>, ptr %i.vf, align 16, !tbaa !10
  %i.vg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load, <8 x i32> %vec.phi1436) ; 2 uses
  %i.vh = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1440, <8 x i32> %vec.phi1437) ; 2 uses
  %i.vi = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1441, <8 x i32> %vec.phi1438) ; 2 uses
  %i.vj = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %wide.load1442, <8 x i32> %vec.phi1439) ; 2 uses
  %index.next1443 = add nuw i64 %index1435, 32    ; 2 uses
  %i.vk = icmp eq i64 %index.next1443, %n.vec1433
  br i1 %i.vk, label %middle.block1444, label %vector.body1434, !llvm.loop !50

middle.block1444:                                 ; preds = %vector.body1434
  %rdx.minmax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.vg, <8 x i32> %i.vh)
  %rdx.minmax1445 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.vi)
  %rdx.minmax1446 = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1445, <8 x i32> %i.vj)
  %i.vl = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1446) ; 3 uses
  %cmp.n1447 = icmp eq i64 %n.vec1433, %wide.trip.count1046
  br i1 %cmp.n1447, label %._crit_edge937, label %vec.epilog.iter.check1452

vec.epilog.iter.check1452:                        ; preds = %middle.block1444
  %min.epilog.iters.check1453 = icmp eq i64 %i.vb, 0
  br i1 %min.epilog.iters.check1453, label %.lr.ph936.preheader, label %vec.epilog.ph1454, !prof !78

vec.epilog.ph1454:                                ; preds = %vector.main.loop.iter.check1430, %vec.epilog.iter.check1452
  %vec.epilog.resume.val1448 = phi i64 [ %n.vec1433, %vec.epilog.iter.check1452 ], [ 0, %vector.main.loop.iter.check1430 ]
  %bc.merge.rdx1449 = phi i32 [ %i.vl, %vec.epilog.iter.check1452 ], [ 0, %vector.main.loop.iter.check1430 ]
  %n.vec1455 = and i64 %wide.trip.count1046, 4294967292 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %bc.merge.rdx1449, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1456

vec.epilog.vector.body1456:                       ; preds = %vec.epilog.vector.body1456, %vec.epilog.ph1454
  %index1457 = phi i64 [ %vec.epilog.resume.val1448, %vec.epilog.ph1454 ], [ %index.next1460, %vec.epilog.vector.body1456 ] ; 2 uses
  %vec.phi1458 = phi <4 x i32> [ %broadcast.splat, %vec.epilog.ph1454 ], [ %i.vn, %vec.epilog.vector.body1456 ]
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index1457
  %wide.load1459 = load <4 x i32>, ptr %i.vm, align 16, !tbaa !10
  %i.vn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1459, <4 x i32> %vec.phi1458) ; 2 uses
  %index.next1460 = add nuw i64 %index1457, 4     ; 2 uses
  %i.vo = icmp eq i64 %index.next1460, %n.vec1455
  br i1 %i.vo, label %vec.epilog.middle.block1461, label %vec.epilog.vector.body1456, !llvm.loop !51

vec.epilog.middle.block1461:                      ; preds = %vec.epilog.vector.body1456
  %i.vp = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.vn) ; 2 uses
  %cmp.n1462 = icmp eq i64 %n.vec1455, %wide.trip.count1046
  br i1 %cmp.n1462, label %._crit_edge937, label %.lr.ph936.preheader

.lr.ph936.preheader:                              ; preds = %iter.check1450, %vec.epilog.iter.check1452, %vec.epilog.middle.block1461
  %indvars.iv1042.ph = phi i64 [ 0, %iter.check1450 ], [ %n.vec1433, %vec.epilog.iter.check1452 ], [ %n.vec1455, %vec.epilog.middle.block1461 ]
  %.2455934.ph = phi i32 [ 0, %iter.check1450 ], [ %i.vl, %vec.epilog.iter.check1452 ], [ %i.vp, %vec.epilog.middle.block1461 ]
  br label %.lr.ph936

.lr.ph936:                                        ; preds = %.lr.ph936.preheader, %.lr.ph936
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %.lr.ph936 ], [ %indvars.iv1042.ph, %.lr.ph936.preheader ] ; 2 uses
  %.2455934 = phi i32 [ %spec.select570, %.lr.ph936 ], [ %.2455934.ph, %.lr.ph936.preheader ]
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1042
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !10
  %spec.select570 = tail call i32 @llvm.smax.i32(i32 %i.vr, i32 %.2455934) ; 2 uses
  %indvars.iv.next1043 = add nuw nsw i64 %indvars.iv1042, 1 ; 2 uses
  %exitcond1047.not = icmp eq i64 %indvars.iv.next1043, %wide.trip.count1046
  br i1 %exitcond1047.not, label %._crit_edge937, label %.lr.ph936, !llvm.loop !52

._crit_edge937:                                   ; preds = %.lr.ph936, %vec.epilog.middle.block1461, %middle.block1444
  %spec.select570.lcssa = phi i32 [ %i.vp, %vec.epilog.middle.block1461 ], [ %i.vl, %middle.block1444 ], [ %spec.select570, %.lr.ph936 ]
  %i.vs = tail call i32 @Ptngc_find_magic_index(i32 noundef %spec.select570.lcssa) #12 ; 2 uses
  %i.vt = icmp slt i32 %.0445, %i.uz
  %i.vu = icmp ne i32 %.0443, %i.vs
  %i.vv = select i1 %i.vt, i1 true, i1 %i.vu
  br i1 %i.vv, label %.lr.ph928.preheader, label %bb.cw, !llvm.loop !53

bb.cw:                                            ; preds = %._crit_edge937
  br i1 %.not984, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.vw = icmp samesign ult i32 %.0445, 3
  %i.vx = icmp samesign ult i32 %.0445, 6
  %spec.select572 = select i1 %i.vx, i32 3, i32 0
  %.0442 = select i1 %i.vw, i32 6, i32 %spec.select572
  %i.vy = add nsw i32 %.0489974, 6
  %i.vz = icmp slt i32 %.0443, %i.vy
  %i.wa = add nsw i32 %.0442, %.0443
  %i.wb = icmp slt i32 %i.wa, %.1488
  %or.cond574 = select i1 %i.vz, i1 %i.wb, i1 false
  %i.wc = add nsw i32 %.0443, 6
  %i.wd = icmp slt i32 %i.wc, %.1488
  %or.cond576 = select i1 %or.cond574, i1 true, i1 %i.wd
  br i1 %or.cond576, label %bb.cy, label %bb.em

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.we = sdiv i32 %.2475, %i.ec
  %i.wf = icmp eq i32 %.2860, 0                   ; 3 uses
  %i.wg = icmp sgt i32 %i.we, 0
  %or.cond7 = select i1 %i.wf, i1 %i.wg, i1 false
  br i1 %or.cond7, label %iter.check1391, label %.loopexit891

iter.check1391:                                   ; preds = %bb.cy
  %i.wh = sub i32 %.2475, %i.ec
  %i.wi = sext i32 %.2475 to i64
  %i.wj = sext i32 %i.wh to i64
  %wide.trip.count1052 = zext i32 %.0445 to i64   ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.wi ; 4 uses
  %invariant.gep1264 = getelementptr [4 x i8], ptr %0, i64 %i.wj ; 4 uses
  %min.iters.check1329 = icmp ult i32 %.0445, 8
  br i1 %min.iters.check1329, label %vec.epilog.scalar.ph1392.preheader, label %vector.main.loop.iter.check1330

vector.main.loop.iter.check1330:                  ; preds = %iter.check1391
  %min.iters.check1331 = icmp ult i32 %.0445, 16
  br i1 %min.iters.check1331, label %vec.epilog.ph1395, label %vector.ph1332

vector.ph1332:                                    ; preds = %vector.main.loop.iter.check1330
  %i.wk = and i64 %wide.trip.count1052, 8
  %n.vec1333 = and i64 %wide.trip.count1052, 4294967280 ; 4 uses
  br label %vector.body1334

vector.body1334:                                  ; preds = %vector.ph1332, %vector.body1334
  %index1335 = phi i64 [ 0, %vector.ph1332 ], [ %index.next1385, %vector.body1334 ] ; 3 uses
  %vec.phi1336 = phi <8 x i32> [ zeroinitializer, %vector.ph1332 ], [ %i.aam, %vector.body1334 ]
  %vec.phi1337 = phi <8 x i32> [ zeroinitializer, %vector.ph1332 ], [ %i.aan, %vector.body1334 ]
  %i.wl = mul nuw nsw i64 %index1335, 3           ; 3 uses
  %i.wm = mul nuw i64 %index1335, 3
  %i.wn = add nuw i64 %i.wm, 24                   ; 3 uses
  %i.wo = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.wl
  %i.wp = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.wn
  %wide.vec1338 = load <24 x i32>, ptr %i.wo, align 4, !tbaa !10 ; 3 uses
  %strided.vec1339 = shufflevector <24 x i32> %wide.vec1338, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1340 = shufflevector <24 x i32> %wide.vec1338, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1341 = shufflevector <24 x i32> %wide.vec1338, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec1342 = load <24 x i32>, ptr %i.wp, align 4, !tbaa !10 ; 3 uses
  %strided.vec1343 = shufflevector <24 x i32> %wide.vec1342, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1344 = shufflevector <24 x i32> %wide.vec1342, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1345 = shufflevector <24 x i32> %wide.vec1342, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.wq = getelementptr [4 x i8], ptr %invariant.gep1264, i64 %i.wl
  %i.wr = getelementptr [4 x i8], ptr %invariant.gep1264, i64 %i.wn
  %wide.vec1346 = load <24 x i32>, ptr %i.wq, align 4, !tbaa !10 ; 3 uses
  %strided.vec1347 = shufflevector <24 x i32> %wide.vec1346, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1348 = shufflevector <24 x i32> %wide.vec1346, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1349 = shufflevector <24 x i32> %wide.vec1346, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec1350 = load <24 x i32>, ptr %i.wr, align 4, !tbaa !10 ; 3 uses
  %strided.vec1351 = shufflevector <24 x i32> %wide.vec1350, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec1352 = shufflevector <24 x i32> %wide.vec1350, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec1353 = shufflevector <24 x i32> %wide.vec1350, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ws = sub nsw <8 x i32> %strided.vec1339, %strided.vec1347 ; 4 uses
  %i.wt = sub nsw <8 x i32> %strided.vec1343, %strided.vec1351 ; 4 uses
  %i.wu = icmp slt <8 x i32> %i.ws, zeroinitializer
  %i.wv = icmp slt <8 x i32> %i.wt, zeroinitializer
  %i.ww = xor <8 x i32> %i.ws, splat (i32 -1)
  %i.wx = xor <8 x i32> %i.wt, splat (i32 -1)
  %i.wy = shl nuw nsw <8 x i32> %i.ww, splat (i32 1)
  %i.wz = shl nuw nsw <8 x i32> %i.wx, splat (i32 1)
  %i.xa = add nuw nsw <8 x i32> %i.wy, splat (i32 2)
  %i.xb = add nuw nsw <8 x i32> %i.wz, splat (i32 2)
  %i.xc = shl nuw <8 x i32> %i.ws, splat (i32 1)
  %i.xd = shl nuw <8 x i32> %i.wt, splat (i32 1)
  %i.xe = add <8 x i32> %i.xc, splat (i32 -1)
  %i.xf = add <8 x i32> %i.xd, splat (i32 -1)
  %.inv1748 = icmp sgt <8 x i32> %i.ws, zeroinitializer
  %predphi = select <8 x i1> %.inv1748, <8 x i32> %i.xe, <8 x i32> zeroinitializer
  %predphi1354 = select <8 x i1> %i.wu, <8 x i32> %i.xa, <8 x i32> %predphi
  %.inv1749 = icmp sgt <8 x i32> %i.wt, zeroinitializer
  %predphi1355 = select <8 x i1> %.inv1749, <8 x i32> %i.xf, <8 x i32> zeroinitializer
  %predphi1356 = select <8 x i1> %i.wv, <8 x i32> %i.xb, <8 x i32> %predphi1355
  %i.xg = sub nsw <8 x i32> %strided.vec1340, %strided.vec1348 ; 4 uses
  %i.xh = sub nsw <8 x i32> %strided.vec1344, %strided.vec1352 ; 4 uses
  %i.xi = icmp slt <8 x i32> %i.xg, zeroinitializer
  %i.xj = icmp slt <8 x i32> %i.xh, zeroinitializer
  %i.xk = xor <8 x i32> %i.xg, splat (i32 -1)
  %i.xl = xor <8 x i32> %i.xh, splat (i32 -1)
  %i.xm = shl nuw nsw <8 x i32> %i.xk, splat (i32 1)
  %i.xn = shl nuw nsw <8 x i32> %i.xl, splat (i32 1)
  %i.xo = add nuw nsw <8 x i32> %i.xm, splat (i32 2)
  %i.xp = add nuw nsw <8 x i32> %i.xn, splat (i32 2)
  %i.xq = shl nuw <8 x i32> %i.xg, splat (i32 1)
  %i.xr = shl nuw <8 x i32> %i.xh, splat (i32 1)
  %i.xs = add <8 x i32> %i.xq, splat (i32 -1)
  %i.xt = add <8 x i32> %i.xr, splat (i32 -1)
  %.inv1750 = icmp sgt <8 x i32> %i.xg, zeroinitializer
  %predphi1357 = select <8 x i1> %.inv1750, <8 x i32> %i.xs, <8 x i32> zeroinitializer
  %predphi1358 = select <8 x i1> %i.xi, <8 x i32> %i.xo, <8 x i32> %predphi1357
  %.inv1751 = icmp sgt <8 x i32> %i.xh, zeroinitializer
  %predphi1359 = select <8 x i1> %.inv1751, <8 x i32> %i.xt, <8 x i32> zeroinitializer
  %predphi1360 = select <8 x i1> %i.xj, <8 x i32> %i.xp, <8 x i32> %predphi1359
  %i.xu = sub nsw <8 x i32> %strided.vec1341, %strided.vec1349 ; 4 uses
  %i.xv = sub nsw <8 x i32> %strided.vec1345, %strided.vec1353 ; 4 uses
  %i.xw = icmp slt <8 x i32> %i.xu, zeroinitializer
  %i.xx = icmp slt <8 x i32> %i.xv, zeroinitializer
  %i.xy = xor <8 x i32> %i.xu, splat (i32 -1)
  %i.xz = xor <8 x i32> %i.xv, splat (i32 -1)
  %i.ya = shl nuw nsw <8 x i32> %i.xy, splat (i32 1)
  %i.yb = shl nuw nsw <8 x i32> %i.xz, splat (i32 1)
  %i.yc = add nuw nsw <8 x i32> %i.ya, splat (i32 2)
  %i.yd = add nuw nsw <8 x i32> %i.yb, splat (i32 2)
  %i.ye = shl nuw <8 x i32> %i.xu, splat (i32 1)
  %i.yf = shl nuw <8 x i32> %i.xv, splat (i32 1)
  %i.yg = add <8 x i32> %i.ye, splat (i32 -1)
  %i.yh = add <8 x i32> %i.yf, splat (i32 -1)
  %.inv1752 = icmp sgt <8 x i32> %i.xu, zeroinitializer
  %predphi1361 = select <8 x i1> %.inv1752, <8 x i32> %i.yg, <8 x i32> zeroinitializer
  %predphi1362 = select <8 x i1> %i.xw, <8 x i32> %i.yc, <8 x i32> %predphi1361
  %.inv1753 = icmp sgt <8 x i32> %i.xv, zeroinitializer
  %predphi1363 = select <8 x i1> %.inv1753, <8 x i32> %i.yh, <8 x i32> zeroinitializer
  %predphi1364 = select <8 x i1> %i.xx, <8 x i32> %i.yd, <8 x i32> %predphi1363
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.wl
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.wn
  %wide.vec1365 = load <24 x i32>, ptr %i.yi, align 16, !tbaa !10 ; 3 uses
  %strided.vec1366 = shufflevector <24 x i32> %wide.vec1365, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 4 uses
  %strided.vec1367 = shufflevector <24 x i32> %wide.vec1365, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 4 uses
  %strided.vec1368 = shufflevector <24 x i32> %wide.vec1365, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 4 uses
  %wide.vec1369 = load <24 x i32>, ptr %i.yj, align 16, !tbaa !10 ; 3 uses
  %strided.vec1370 = shufflevector <24 x i32> %wide.vec1369, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 4 uses
  %strided.vec1371 = shufflevector <24 x i32> %wide.vec1369, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 4 uses
  %strided.vec1372 = shufflevector <24 x i32> %wide.vec1369, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 4 uses
  %i.yk = icmp slt <8 x i32> %strided.vec1366, zeroinitializer
  %i.yl = icmp slt <8 x i32> %strided.vec1370, zeroinitializer
  %i.ym = xor <8 x i32> %strided.vec1366, splat (i32 -1)
  %i.yn = xor <8 x i32> %strided.vec1370, splat (i32 -1)
  %i.yo = shl nuw nsw <8 x i32> %i.ym, splat (i32 1)
  %i.yp = shl nuw nsw <8 x i32> %i.yn, splat (i32 1)
  %i.yq = add nuw nsw <8 x i32> %i.yo, splat (i32 2)
  %i.yr = add nuw nsw <8 x i32> %i.yp, splat (i32 2)
  %i.ys = shl nuw <8 x i32> %strided.vec1366, splat (i32 1)
  %i.yt = shl nuw <8 x i32> %strided.vec1370, splat (i32 1)
  %i.yu = add <8 x i32> %i.ys, splat (i32 -1)
  %i.yv = add <8 x i32> %i.yt, splat (i32 -1)
  %.inv1754 = icmp sgt <8 x i32> %strided.vec1366, zeroinitializer
  %predphi1373 = select <8 x i1> %.inv1754, <8 x i32> %i.yu, <8 x i32> zeroinitializer
  %predphi1374 = select <8 x i1> %i.yk, <8 x i32> %i.yq, <8 x i32> %predphi1373
  %.inv1755 = icmp sgt <8 x i32> %strided.vec1370, zeroinitializer
  %predphi1375 = select <8 x i1> %.inv1755, <8 x i32> %i.yv, <8 x i32> zeroinitializer
  %predphi1376 = select <8 x i1> %i.yl, <8 x i32> %i.yr, <8 x i32> %predphi1375
  %i.yw = icmp slt <8 x i32> %strided.vec1367, zeroinitializer
end_hunk_0
