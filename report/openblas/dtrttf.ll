Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrttf?download=true
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@dtrttf_:bb.a

.loopexit1823.a:                                  ; preds = %vec.epilog.scalar.ph1666.prol.loopexit, %vec.epilog.scalar.ph1666, %vec.epilog.middle.block1676, %middle.block1658
  %indvars.iv913.lcssa = phi i32 [ %i.ago, %vec.epilog.middle.block1676 ], [ %i.agi, %middle.block1658 ], [ %indvars.iv913.lcssa1854.unr, %vec.epilog.scalar.ph1666.prol.loopexit ], [ %indvars.iv913.7, %vec.epilog.scalar.ph1666 ]
  %indvars.iv.next905.lcssa = phi i64 [ %i.agj, %vec.epilog.middle.block1676 ], [ %i.afu, %middle.block1658 ], [ %indvars.iv.next905.lcssa1853.unr, %vec.epilog.scalar.ph1666.prol.loopexit ], [ %indvars.iv.next905.7, %vec.epilog.scalar.ph1666 ]
  %i.ahz = sub nuw nsw i64 %indvars.iv.next927, %i.aex ; 2 uses
  %.not432.not606 = icmp slt i64 %i.ahz, %i.aex
  br i1 %.not432.not606, label %iter.check1626, label %._crit_edge611

iter.check1626:                                   ; preds = %.loopexit1823.a
  %i.aia = sext i32 %indvars.iv913.lcssa to i64   ; 7 uses
  %invariant.gep1043 = getelementptr [8 x i8], ptr %3, i64 %i.ahz ; 11 uses
  %min.iters.check1610 = icmp samesign ugt i64 %i.afh, 2
  %or.cond1835.a = select i1 %min.iters.check1610, i1 %ident.check1605.not, i1 false
  br i1 %or.cond1835.a, label %vector.memcheck1606, label %.lr.ph610.preheader

vector.memcheck1606:                              ; preds = %iter.check1626
  %i.aib = add i64 %i.afa, %i.afj
  %i.aic = add nsw i64 %i.aew, %i.afk
  %i.aid = shl nsw i64 %i.aic, 3
  %i.aie = add i64 %i.aid, %i.a
  %i.aif = sub i64 %i.aib, %i.aie
  %i.aig = shl nsw i64 %i.aia, 3
  %i.aih = add i64 %i.aif, %i.aig
  %i.aii = add i64 %i.aih, -1
  %diff.check1609 = icmp ult i64 %i.aii, 127
  br i1 %diff.check1609, label %.lr.ph610.preheader, label %vector.main.loop.iter.check1611

vector.main.loop.iter.check1611:                  ; preds = %vector.memcheck1606
  %min.iters.check1612 = icmp samesign ult i64 %i.afh, 15
  br i1 %min.iters.check1612, label %vec.epilog.ph1630, label %vector.ph1613

vector.ph1613:                                    ; preds = %vector.main.loop.iter.check1611
  %i.aij = and i64 %i.afi, 12
  %n.vec1614 = and i64 %i.afi, 8589934576         ; 5 uses
  %i.aik = add nsw i64 %n.vec1614, %i.afl
  %i.ail = add nsw i64 %n.vec1614, %i.aia         ; 2 uses
  %invariant.gep2053 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.afl
  %invariant.gep2055 = getelementptr [8 x i8], ptr %5, i64 %i.aia
  br label %vector.body1615

vector.body1615:                                  ; preds = %vector.body1615, %vector.ph1613
  %index1616 = phi i64 [ 0, %vector.ph1613 ], [ %index.next1621, %vector.body1615 ] ; 3 uses
  %gep2054 = getelementptr [8 x i8], ptr %invariant.gep2053, i64 %index1616 ; 4 uses
  %i.aim = getelementptr i8, ptr %gep2054, i64 32
  %i.ain = getelementptr i8, ptr %gep2054, i64 64
  %i.aio = getelementptr i8, ptr %gep2054, i64 96
  %wide.load1617.a = load <4 x double>, ptr %gep2054, align 8, !tbaa !108
  %wide.load1618.a = load <4 x double>, ptr %i.aim, align 8, !tbaa !108
  %wide.load1619.a = load <4 x double>, ptr %i.ain, align 8, !tbaa !108
  %wide.load1620 = load <4 x double>, ptr %i.aio, align 8, !tbaa !108
  %gep2056 = getelementptr [8 x i8], ptr %invariant.gep2055, i64 %index1616 ; 4 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %gep2056, i64 32
  %i.aiq = getelementptr inbounds nuw i8, ptr %gep2056, i64 64
  %i.air = getelementptr inbounds nuw i8, ptr %gep2056, i64 96
  store <4 x double> %wide.load1617.a, ptr %gep2056, align 8, !tbaa !108
  store <4 x double> %wide.load1618.a, ptr %i.aip, align 8, !tbaa !108
  store <4 x double> %wide.load1619.a, ptr %i.aiq, align 8, !tbaa !108
  store <4 x double> %wide.load1620, ptr %i.air, align 8, !tbaa !108
  %index.next1621 = add nuw i64 %index1616, 16    ; 2 uses
  %i.ais = icmp eq i64 %index.next1621, %n.vec1614
  br i1 %i.ais, label %middle.block1622, label %vector.body1615, !llvm.loop !67

middle.block1622:                                 ; preds = %vector.body1615
  %cmp.n1623 = icmp eq i64 %i.afi, %n.vec1614
  br i1 %cmp.n1623, label %._crit_edge611, label %vec.epilog.iter.check1628

vec.epilog.iter.check1628:                        ; preds = %middle.block1622
  %min.epilog.iters.check1629 = icmp eq i64 %i.aij, 0
  br i1 %min.epilog.iters.check1629, label %.lr.ph610.preheader, label %vec.epilog.ph1630, !prof !112

vec.epilog.ph1630:                                ; preds = %vector.main.loop.iter.check1611, %vec.epilog.iter.check1628
  %vec.epilog.resume.val1624 = phi i64 [ %n.vec1614, %vec.epilog.iter.check1628 ], [ 0, %vector.main.loop.iter.check1611 ]
  %n.vec1631 = and i64 %i.afi, 8589934588         ; 4 uses
  %i.ait = add nsw i64 %n.vec1631, %i.afl
  %i.aiu = add nsw i64 %n.vec1631, %i.aia         ; 2 uses
  %invariant.gep2057 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.afl
  %invariant.gep2059 = getelementptr [8 x i8], ptr %5, i64 %i.aia
  br label %vec.epilog.vector.body1632

vec.epilog.vector.body1632:                       ; preds = %vec.epilog.vector.body1632, %vec.epilog.ph1630
  %index1633 = phi i64 [ %vec.epilog.resume.val1624, %vec.epilog.ph1630 ], [ %index.next1635, %vec.epilog.vector.body1632 ] ; 3 uses
  %gep2058 = getelementptr [8 x i8], ptr %invariant.gep2057, i64 %index1633
  %wide.load1634 = load <4 x double>, ptr %gep2058, align 8, !tbaa !108
  %gep2060 = getelementptr [8 x i8], ptr %invariant.gep2059, i64 %index1633
  store <4 x double> %wide.load1634, ptr %gep2060, align 8, !tbaa !108
  %index.next1635 = add nuw i64 %index1633, 4     ; 2 uses
  %i.aiv = icmp eq i64 %index.next1635, %n.vec1631
  br i1 %i.aiv, label %vec.epilog.middle.block1636, label %vec.epilog.vector.body1632, !llvm.loop !68

vec.epilog.middle.block1636:                      ; preds = %vec.epilog.vector.body1632
  %cmp.n1637 = icmp eq i64 %i.afi, %n.vec1631
  br i1 %cmp.n1637, label %._crit_edge611, label %.lr.ph610.preheader

.lr.ph610.preheader:                              ; preds = %vector.memcheck1606, %iter.check1626, %vec.epilog.iter.check1628, %vec.epilog.middle.block1636
  %indvars.iv919.ph = phi i64 [ %i.afl, %iter.check1626 ], [ %i.afl, %vector.memcheck1606 ], [ %i.aik, %vec.epilog.iter.check1628 ], [ %i.ait, %vec.epilog.middle.block1636 ] ; 3 uses
  %indvars.iv915.ph = phi i64 [ %i.aia, %iter.check1626 ], [ %i.aia, %vector.memcheck1606 ], [ %i.ail, %vec.epilog.iter.check1628 ], [ %i.aiu, %vec.epilog.middle.block1636 ] ; 2 uses
  %i.aiw = trunc i64 %indvars.iv919.ph to i32     ; 2 uses
  %i.aix = sub i32 %i.v, %i.aiw
  %xtraiter1942 = and i32 %i.aix, 7               ; 2 uses
  %lcmp.mod1943.not = icmp eq i32 %xtraiter1942, 0
  br i1 %lcmp.mod1943.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol

.lr.ph610.prol:                                   ; preds = %.lr.ph610.preheader, %.lr.ph610.prol
  %indvars.iv919.prol = phi i64 [ %indvars.iv.next920.prol, %.lr.ph610.prol ], [ %indvars.iv919.ph, %.lr.ph610.preheader ] ; 2 uses
  %indvars.iv915.prol = phi i64 [ %indvars.iv.next916.prol, %.lr.ph610.prol ], [ %indvars.iv915.ph, %.lr.ph610.preheader ] ; 2 uses
  %prol.iter1944 = phi i32 [ %prol.iter1944.next, %.lr.ph610.prol ], [ 0, %.lr.ph610.preheader ]
  %i.aiy = mul nsw i64 %indvars.iv919.prol, %i.aev
  %gep1044.prol = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.aiy
  %i.aiz = load double, ptr %gep1044.prol, align 8, !tbaa !108
  %i.aja = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv915.prol
  store double %i.aiz, ptr %i.aja, align 8, !tbaa !108
  %indvars.iv.next916.prol = add nsw i64 %indvars.iv915.prol, 1 ; 3 uses
  %indvars.iv.next920.prol = add nsw i64 %indvars.iv919.prol, 1 ; 2 uses
  %prol.iter1944.next = add i32 %prol.iter1944, 1 ; 2 uses
  %prol.iter1944.cmp.not = icmp eq i32 %prol.iter1944.next, %xtraiter1942
  br i1 %prol.iter1944.cmp.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol, !llvm.loop !69

.lr.ph610.prol.loopexit:                          ; preds = %.lr.ph610.prol, %.lr.ph610.preheader
  %indvars.iv.next916.lcssa.unr = phi i64 [ poison, %.lr.ph610.preheader ], [ %indvars.iv.next916.prol, %.lr.ph610.prol ]
  %indvars.iv919.unr = phi i64 [ %indvars.iv919.ph, %.lr.ph610.preheader ], [ %indvars.iv.next920.prol, %.lr.ph610.prol ]
  %indvars.iv915.unr = phi i64 [ %indvars.iv915.ph, %.lr.ph610.preheader ], [ %indvars.iv.next916.prol, %.lr.ph610.prol ]
  %i.ajb = sub i32 %i.aiw, %i.v
  %i.ajc = icmp ugt i32 %i.ajb, -8
  br i1 %i.ajc, label %._crit_edge611, label %.lr.ph610

.lr.ph610:                                        ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610
  %indvars.iv919 = phi i64 [ %indvars.iv.next920.7, %.lr.ph610 ], [ %indvars.iv919.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %indvars.iv915 = phi i64 [ %indvars.iv.next916.7, %.lr.ph610 ], [ %indvars.iv915.unr, %.lr.ph610.prol.loopexit ] ; 9 uses
  %i.ajd = mul nsw i64 %indvars.iv919, %i.aev
  %gep1044 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.ajd
  %i.aje = load double, ptr %gep1044, align 8, !tbaa !108
  %i.ajf = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv915
  store double %i.aje, ptr %i.ajf, align 8, !tbaa !108
  %indvars.iv.next920 = add nsw i64 %indvars.iv919, 1
  %i.ajg = mul nsw i64 %indvars.iv.next920, %i.aev
  %gep1044.1 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.ajg
  %i.ajh = load double, ptr %gep1044.1, align 8, !tbaa !108
  %i.aji = getelementptr [8 x i8], ptr %5, i64 %indvars.iv915
  %i.ajj = getelementptr i8, ptr %i.aji, i64 8
  store double %i.ajh, ptr %i.ajj, align 8, !tbaa !108
  %indvars.iv.next920.1 = add nsw i64 %indvars.iv919, 2
  %i.ajk = mul nsw i64 %indvars.iv.next920.1, %i.aev
  %gep1044.2 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.ajk
  %i.ajl = load double, ptr %gep1044.2, align 8, !tbaa !108
  %i.ajm = getelementptr [8 x i8], ptr %5, i64 %indvars.iv915
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 16
  store double %i.ajl, ptr %i.ajn, align 8, !tbaa !108
  %indvars.iv.next920.2 = add nsw i64 %indvars.iv919, 3
  %i.ajo = mul nsw i64 %indvars.iv.next920.2, %i.aev
  %gep1044.3 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.ajo
  %i.ajp = load double, ptr %gep1044.3, align 8, !tbaa !108
  %i.ajq = getelementptr [8 x i8], ptr %5, i64 %indvars.iv915
  %i.ajr = getelementptr i8, ptr %i.ajq, i64 24
  store double %i.ajp, ptr %i.ajr, align 8, !tbaa !108
  %indvars.iv.next920.3 = add nsw i64 %indvars.iv919, 4
  %i.ajs = mul nsw i64 %indvars.iv.next920.3, %i.aev
  %gep1044.4 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.ajs
  %i.ajt = load double, ptr %gep1044.4, align 8, !tbaa !108
  %i.aju = getelementptr [8 x i8], ptr %5, i64 %indvars.iv915
  %i.ajv = getelementptr i8, ptr %i.aju, i64 32
  store double %i.ajt, ptr %i.ajv, align 8, !tbaa !108
  %indvars.iv.next920.4 = add nsw i64 %indvars.iv919, 5
  %i.ajw = mul nsw i64 %indvars.iv.next920.4, %i.aev
  %gep1044.5 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.ajw
  %i.ajx = load double, ptr %gep1044.5, align 8, !tbaa !108
  %i.ajy = getelementptr [8 x i8], ptr %5, i64 %indvars.iv915
  %i.ajz = getelementptr i8, ptr %i.ajy, i64 40
  store double %i.ajx, ptr %i.ajz, align 8, !tbaa !108
  %indvars.iv.next920.5 = add nsw i64 %indvars.iv919, 6
  %i.aka = mul nsw i64 %indvars.iv.next920.5, %i.aev
  %gep1044.6 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.aka
  %i.akb = load double, ptr %gep1044.6, align 8, !tbaa !108
  %i.akc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv915
  %i.akd = getelementptr i8, ptr %i.akc, i64 48
  store double %i.akb, ptr %i.akd, align 8, !tbaa !108
  %indvars.iv.next920.6 = add nsw i64 %indvars.iv919, 7
  %i.ake = mul nsw i64 %indvars.iv.next920.6, %i.aev
  %gep1044.7 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.ake
  %i.akf = load double, ptr %gep1044.7, align 8, !tbaa !108
  %i.akg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv915
  %i.akh = getelementptr i8, ptr %i.akg, i64 56
  store double %i.akf, ptr %i.akh, align 8, !tbaa !108
  %indvars.iv.next916.7 = add nsw i64 %indvars.iv915, 8 ; 2 uses
  %indvars.iv.next920.7 = add nsw i64 %indvars.iv919, 8 ; 2 uses
  %lftr.wideiv924.7 = trunc i64 %indvars.iv.next920.7 to i32
  %exitcond925.not.7 = icmp eq i32 %i.v, %lftr.wideiv924.7
  br i1 %exitcond925.not.7, label %._crit_edge611, label %.lr.ph610, !llvm.loop !70

._crit_edge611:                                   ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610, %middle.block1622, %vec.epilog.middle.block1636, %.loopexit1823.a
  %.21.lcssa.in = phi i64 [ %indvars.iv.next905.lcssa, %.loopexit1823.a ], [ %i.aiu, %vec.epilog.middle.block1636 ], [ %i.ail, %middle.block1622 ], [ %indvars.iv.next916.lcssa.unr, %.lr.ph610.prol.loopexit ], [ %indvars.iv.next916.7, %.lr.ph610 ]
  %.21.lcssa = trunc i64 %.21.lcssa.in to i32
  %.reass.reass = add i32 %.21.lcssa, %invariant.op
  %.not430.not = icmp sgt i64 %indvars.iv.next927, %i.aex
  %indvars.iv.next918 = add i32 %indvars.iv917, -1
  %indvar.next1608 = add i64 %indvar1607, 1
  br i1 %.not430.not, label %iter.check1665, label %.loopexit, !llvm.loop !71

iter.check1480:                                   ; preds = %.thread461
  %i.aki = mul nsw i32 %i.v, %i.d
  %i.akj = lshr exact i32 %i.i, 1
  %i.akk = zext nneg i32 %i.akj to i64            ; 10 uses
  %i.akl = sext i32 %i.aki to i64                 ; 2 uses
  %i.akm = zext nneg i32 %i.i to i64              ; 2 uses
  %invariant.gep1033 = getelementptr [8 x i8], ptr %3, i64 %i.akl ; 3 uses
  %i.akn = add nuw nsw i64 %i.akk, 1
  %umax1464 = tail call i64 @llvm.umax.i64(i64 %i.akn, i64 %i.akm)
  %i.ako = sub nsw i64 %umax1464, %i.akk          ; 7 uses
  %min.iters.check1465 = icmp ult i64 %i.ako, 4
  br i1 %min.iters.check1465, label %vec.epilog.scalar.ph1481.preheader, label %vector.memcheck1462

vector.memcheck1462:                              ; preds = %iter.check1480
  %i.akp = add nsw i64 %i.akk, %i.akl
  %i.akq = shl nsw i64 %i.akp, 3
  %i.akr = add i64 %i.akq, %i.a
  %i.aks = sub i64 %i.akr, %i.b
  %diff.check1463 = icmp ugt i64 %i.aks, -128
  br i1 %diff.check1463, label %vec.epilog.scalar.ph1481.preheader, label %vector.main.loop.iter.check1466

vector.main.loop.iter.check1466:                  ; preds = %vector.memcheck1462
  %min.iters.check1467 = icmp ult i64 %i.ako, 16
  br i1 %min.iters.check1467, label %vec.epilog.ph1484, label %vector.ph1468

vector.ph1468:                                    ; preds = %vector.main.loop.iter.check1466
  %i.akt = and i64 %i.ako, 12
  %n.vec1469 = and i64 %i.ako, -16                ; 6 uses
  %i.aku = add nsw i64 %n.vec1469, %i.akk
  %invariant.gep2037 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.akk
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %vector.ph1468
  %index1471 = phi i64 [ 0, %vector.ph1468 ], [ %index.next1476, %vector.body1470 ] ; 3 uses
  %gep2038 = getelementptr [8 x i8], ptr %invariant.gep2037, i64 %index1471 ; 4 uses
  %i.akv = getelementptr i8, ptr %gep2038, i64 32
  %i.akw = getelementptr i8, ptr %gep2038, i64 64
  %i.akx = getelementptr i8, ptr %gep2038, i64 96
  %wide.load1472.a = load <4 x double>, ptr %gep2038, align 8, !tbaa !108
  %wide.load1473.a = load <4 x double>, ptr %i.akv, align 8, !tbaa !108
  %wide.load1474.a = load <4 x double>, ptr %i.akw, align 8, !tbaa !108
  %wide.load1475 = load <4 x double>, ptr %i.akx, align 8, !tbaa !108
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index1471 ; 4 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 32
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aky, i64 64
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aky, i64 96
  store <4 x double> %wide.load1472.a, ptr %i.aky, align 8, !tbaa !108
  store <4 x double> %wide.load1473.a, ptr %i.akz, align 8, !tbaa !108
  store <4 x double> %wide.load1474.a, ptr %i.ala, align 8, !tbaa !108
  store <4 x double> %wide.load1475, ptr %i.alb, align 8, !tbaa !108
  %index.next1476 = add nuw i64 %index1471, 16    ; 2 uses
  %i.alc = icmp eq i64 %index.next1476, %n.vec1469
  br i1 %i.alc, label %middle.block1477, label %vector.body1470, !llvm.loop !72

middle.block1477:                                 ; preds = %vector.body1470
  %cmp.n1478 = icmp eq i64 %i.ako, %n.vec1469
  br i1 %cmp.n1478, label %._crit_edge579, label %vec.epilog.iter.check1482

vec.epilog.iter.check1482:                        ; preds = %middle.block1477
  %min.epilog.iters.check1483 = icmp eq i64 %i.akt, 0
  br i1 %min.epilog.iters.check1483, label %vec.epilog.scalar.ph1481.preheader, label %vec.epilog.ph1484, !prof !112

vec.epilog.ph1484:                                ; preds = %vector.main.loop.iter.check1466, %vec.epilog.iter.check1482
  %vec.epilog.resume.val1479 = phi i64 [ %n.vec1469, %vec.epilog.iter.check1482 ], [ 0, %vector.main.loop.iter.check1466 ]
  %n.vec1485 = and i64 %i.ako, -4                 ; 5 uses
  %i.ald = add nsw i64 %n.vec1485, %i.akk
  %invariant.gep2039 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.akk
  br label %vec.epilog.vector.body1486

vec.epilog.vector.body1486:                       ; preds = %vec.epilog.vector.body1486, %vec.epilog.ph1484
  %index1487 = phi i64 [ %vec.epilog.resume.val1479, %vec.epilog.ph1484 ], [ %index.next1489, %vec.epilog.vector.body1486 ] ; 3 uses
  %gep2040 = getelementptr [8 x i8], ptr %invariant.gep2039, i64 %index1487
  %wide.load1488 = load <4 x double>, ptr %gep2040, align 8, !tbaa !108
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index1487
  store <4 x double> %wide.load1488, ptr %i.ale, align 8, !tbaa !108
  %index.next1489 = add nuw i64 %index1487, 4     ; 2 uses
  %i.alf = icmp eq i64 %index.next1489, %n.vec1485
  br i1 %i.alf, label %vec.epilog.middle.block1490, label %vec.epilog.vector.body1486, !llvm.loop !73

vec.epilog.middle.block1490:                      ; preds = %vec.epilog.vector.body1486
  %cmp.n1491 = icmp eq i64 %i.ako, %n.vec1485
  br i1 %cmp.n1491, label %._crit_edge579, label %vec.epilog.scalar.ph1481.preheader

vec.epilog.scalar.ph1481.preheader:               ; preds = %vector.memcheck1462, %iter.check1480, %vec.epilog.iter.check1482, %vec.epilog.middle.block1490
  %indvars.iv852.ph = phi i64 [ %i.akk, %iter.check1480 ], [ %i.akk, %vector.memcheck1462 ], [ %i.aku, %vec.epilog.iter.check1482 ], [ %i.ald, %vec.epilog.middle.block1490 ]
  %indvars.iv850.ph = phi i64 [ 0, %iter.check1480 ], [ 0, %vector.memcheck1462 ], [ %n.vec1469, %vec.epilog.iter.check1482 ], [ %n.vec1485, %vec.epilog.middle.block1490 ]
  br label %vec.epilog.scalar.ph1481

vec.epilog.scalar.ph1481:                         ; preds = %vec.epilog.scalar.ph1481.preheader, %vec.epilog.scalar.ph1481
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %vec.epilog.scalar.ph1481 ], [ %indvars.iv852.ph, %vec.epilog.scalar.ph1481.preheader ] ; 2 uses
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %vec.epilog.scalar.ph1481 ], [ %indvars.iv850.ph, %vec.epilog.scalar.ph1481.preheader ] ; 2 uses
  %gep1034 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %indvars.iv852
  %i.alg = load double, ptr %gep1034, align 8, !tbaa !108
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv850
  store double %i.alg, ptr %i.alh, align 8, !tbaa !108
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1 ; 2 uses
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 1 ; 2 uses
  %.not424.not = icmp samesign ult i64 %indvars.iv.next853, %i.akm
  br i1 %.not424.not, label %vec.epilog.scalar.ph1481, label %._crit_edge579, !llvm.loop !74

._crit_edge579:                                   ; preds = %vec.epilog.scalar.ph1481, %vec.epilog.middle.block1490, %middle.block1477
  %indvars.iv.next851.lcssa = phi i64 [ %n.vec1485, %vec.epilog.middle.block1490 ], [ %n.vec1469, %middle.block1477 ], [ %indvars.iv.next851, %vec.epilog.scalar.ph1481 ] ; 2 uses
  %.not425590 = icmp samesign ult i32 %i.i, 4
  br i1 %.not425590, label %.preheader471.preheader, label %.preheader473.lr.ph

.preheader473.lr.ph:                              ; preds = %._crit_edge579
  %i.ali = add nuw nsw i32 %i.v, 1                ; 2 uses
  %i.alj = sext i32 %i.d to i64                   ; 8 uses
  %i.alk = zext nneg i32 %i.ali to i64            ; 2 uses
  %i.all = zext nneg i32 %i.i to i64
  %i.alm = add nsw i32 %i.v, -1
  %wide.trip.count887 = zext nneg i32 %i.alm to i64
  %i.aln = mul nsw i64 %i.alk, %i.alj
  %i.alo = mul nsw i64 %i.alj, -8
  %i.alp = add nsw i32 %i.i, -2
  %ident.check1527.not = icmp eq i32 %i.d, 1
  br label %iter.check1553

iter.check1553:                                   ; preds = %.preheader473.lr.ph, %._crit_edge588
  %indvars.iv882 = phi i64 [ 0, %.preheader473.lr.ph ], [ %indvars.iv.next883, %._crit_edge588 ] ; 7 uses
  %indvars.iv880 = phi i64 [ 1, %.preheader473.lr.ph ], [ %indvars.iv.next881, %._crit_edge588 ] ; 10 uses
  %indvars.iv871 = phi i32 [ %i.ali, %.preheader473.lr.ph ], [ %indvars.iv.next872, %._crit_edge588 ] ; 3 uses
  %.23592.in = phi i64 [ %indvars.iv.next851.lcssa, %.preheader473.lr.ph ], [ %.25.lcssa.in, %._crit_edge588 ] ; 2 uses
  %i.alq = trunc i64 %indvars.iv882 to i32
  %i.alr = add i32 %i.v, %i.alq
  %i.als = sub i32 %i.alp, %i.alr                 ; 3 uses
  %i.alt = zext i32 %i.als to i64
  %i.alu = add nuw nsw i64 %i.alt, 1              ; 5 uses
  %i.alv = mul i64 %i.alo, %indvars.iv882
  %i.alw = sext i32 %indvars.iv871 to i64
  %.23592 = trunc i64 %.23592.in to i32           ; 4 uses
  %i.alx = sext i32 %indvars.iv871 to i64         ; 6 uses
  %sext994 = shl i64 %.23592.in, 32               ; 2 uses
  %i.aly = ashr exact i64 %sext994, 32            ; 6 uses
  %invariant.gep1035 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv882 ; 7 uses
  %min.iters.check1530 = icmp samesign ugt i64 %indvars.iv880, 3
  %or.cond1836.a = select i1 %min.iters.check1530, i1 %ident.check1527.not, i1 false
  br i1 %or.cond1836.a, label %vector.memcheck1528, label %vec.epilog.scalar.ph1554.preheader

vector.memcheck1528:                              ; preds = %iter.check1553
  %i.alz = shl i64 %indvars.iv882, 3
  %i.ama = add i64 %i.alz, %i.a
  %i.amb = sub i64 %i.b, %i.ama
  %i.amc = ashr exact i64 %sext994, 29
  %i.amd = add i64 %i.amb, %i.amc
  %i.ame = add i64 %i.amd, -1
  %diff.check1529 = icmp ult i64 %i.ame, 127
  br i1 %diff.check1529, label %vec.epilog.scalar.ph1554.preheader, label %vector.main.loop.iter.check1531

vector.main.loop.iter.check1531:                  ; preds = %vector.memcheck1528
  %min.iters.check1532 = icmp samesign ult i64 %indvars.iv880, 16
  br i1 %min.iters.check1532, label %vec.epilog.ph1557, label %vector.ph1533

vector.ph1533:                                    ; preds = %vector.main.loop.iter.check1531
  %i.amf = and i64 %indvars.iv880, 12
  %n.vec1534 = and i64 %indvars.iv880, 9223372036854775792 ; 5 uses
  %i.amg = add i64 %i.aly, %n.vec1534             ; 2 uses
  %i.amh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.23592, i64 0
  %i.ami = getelementptr [8 x i8], ptr %5, i64 %i.aly
  br label %vector.body1535

vector.body1535:                                  ; preds = %vector.body1535, %vector.ph1533
  %index1536 = phi i64 [ 0, %vector.ph1533 ], [ %index.next1545, %vector.body1535 ] ; 3 uses
  %vec.phi1537.a = phi <4 x i32> [ %i.amh, %vector.ph1533 ], [ %i.amj, %vector.body1535 ]
  %vec.phi1538.a = phi <4 x i32> [ zeroinitializer, %vector.ph1533 ], [ %i.amk, %vector.body1535 ]
  %vec.phi1539.a = phi <4 x i32> [ zeroinitializer, %vector.ph1533 ], [ %i.aml, %vector.body1535 ]
  %vec.phi1540 = phi <4 x i32> [ zeroinitializer, %vector.ph1533 ], [ %i.amm, %vector.body1535 ]
  %i.amj = add <4 x i32> %vec.phi1537.a, splat (i32 1) ; 2 uses
  %i.amk = add <4 x i32> %vec.phi1538.a, splat (i32 1) ; 2 uses
  %i.aml = add <4 x i32> %vec.phi1539.a, splat (i32 1) ; 2 uses
  %i.amm = add <4 x i32> %vec.phi1540, splat (i32 1) ; 2 uses
  %i.amn = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %index1536 ; 4 uses
  %i.amo = getelementptr i8, ptr %i.amn, i64 32
  %i.amp = getelementptr i8, ptr %i.amn, i64 64
  %i.amq = getelementptr i8, ptr %i.amn, i64 96
  %wide.load1541.a = load <4 x double>, ptr %i.amn, align 8, !tbaa !108
  %wide.load1542.a = load <4 x double>, ptr %i.amo, align 8, !tbaa !108
  %wide.load1543.a = load <4 x double>, ptr %i.amp, align 8, !tbaa !108
  %wide.load1544 = load <4 x double>, ptr %i.amq, align 8, !tbaa !108
  %i.amr = getelementptr [8 x i8], ptr %i.ami, i64 %index1536 ; 4 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 32
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amr, i64 64
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amr, i64 96
  store <4 x double> %wide.load1541.a, ptr %i.amr, align 8, !tbaa !108
  store <4 x double> %wide.load1542.a, ptr %i.ams, align 8, !tbaa !108
  store <4 x double> %wide.load1543.a, ptr %i.amt, align 8, !tbaa !108
  store <4 x double> %wide.load1544, ptr %i.amu, align 8, !tbaa !108
  %index.next1545 = add nuw i64 %index1536, 16    ; 2 uses
  %i.amv = icmp eq i64 %index.next1545, %n.vec1534
  br i1 %i.amv, label %middle.block1546, label %vector.body1535, !llvm.loop !75

middle.block1546:                                 ; preds = %vector.body1535
  %bin.rdx1547.a = add <4 x i32> %i.amk, %i.amj
  %bin.rdx1548.a = add <4 x i32> %i.aml, %bin.rdx1547.a
  %bin.rdx1549 = add <4 x i32> %i.amm, %bin.rdx1548.a
  %i.amw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1549) ; 3 uses
  %cmp.n1550 = icmp eq i64 %indvars.iv880, %n.vec1534
  br i1 %cmp.n1550, label %.loopexit1824, label %vec.epilog.iter.check1555

vec.epilog.iter.check1555:                        ; preds = %middle.block1546
  %min.epilog.iters.check1556 = icmp eq i64 %i.amf, 0
  br i1 %min.epilog.iters.check1556, label %vec.epilog.scalar.ph1554.preheader, label %vec.epilog.ph1557, !prof !112

vec.epilog.ph1557:                                ; preds = %vector.main.loop.iter.check1531, %vec.epilog.iter.check1555
end_hunk_0
begin_hunk_1_@dtrttf_:bb.a
  %i.anv = mul nsw i64 %indvars.iv.next858.2, %i.alj
  %gep1036.3 = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %i.anv
  %i.anw = load double, ptr %gep1036.3, align 8, !tbaa !108
  %i.anx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv855
  %i.any = getelementptr i8, ptr %i.anx, i64 24
  store double %i.anw, ptr %i.any, align 8, !tbaa !108
  %indvars.iv.next856.3 = add nsw i64 %indvars.iv855, 4 ; 2 uses
  %indvars.iv.next858.3 = add nuw nsw i64 %indvars.iv857, 4 ; 2 uses
  %exitcond865.not.3 = icmp eq i64 %indvars.iv.next858.3, %indvars.iv880
  br i1 %exitcond865.not.3, label %.loopexit1824, label %vec.epilog.scalar.ph1554, !llvm.loop !78

.loopexit1824:                                    ; preds = %vec.epilog.scalar.ph1554.prol.loopexit, %vec.epilog.scalar.ph1554, %vec.epilog.middle.block1564, %middle.block1546
  %indvars.iv867.lcssa = phi i32 [ %i.ane, %vec.epilog.middle.block1564 ], [ %i.amw, %middle.block1546 ], [ %indvars.iv867.lcssa1863.unr, %vec.epilog.scalar.ph1554.prol.loopexit ], [ %indvars.iv867.3, %vec.epilog.scalar.ph1554 ]
  %indvars.iv.next856.lcssa = phi i64 [ %i.amx, %vec.epilog.middle.block1564 ], [ %i.amg, %middle.block1546 ], [ %indvars.iv.next856.lcssa1862.unr, %vec.epilog.scalar.ph1554.prol.loopexit ], [ %indvars.iv.next856.3, %vec.epilog.scalar.ph1554 ]
  %i.anz = add nuw nsw i64 %indvars.iv882, %i.alk ; 2 uses
  %.not429.not583 = icmp samesign ult i64 %i.anz, %i.all
  br i1 %.not429.not583, label %iter.check1512, label %._crit_edge588

iter.check1512:                                   ; preds = %.loopexit1824
  %i.aoa = mul nsw i64 %i.anz, %i.alj
  %i.aob = sext i32 %indvars.iv867.lcssa to i64   ; 7 uses
  %invariant.gep1037 = getelementptr [8 x i8], ptr %3, i64 %i.aoa ; 11 uses
  %min.iters.check1496 = icmp ult i32 %i.als, 3
  br i1 %min.iters.check1496, label %vec.epilog.scalar.ph1513.preheader, label %vector.memcheck1494

vector.memcheck1494:                              ; preds = %iter.check1512
  %i.aoc = add i64 %i.alv, %i.b
  %i.aod = add i64 %i.aln, %i.alw
  %i.aoe = shl i64 %i.aod, 3
  %i.aof = add i64 %i.aoe, %i.a
  %i.aog = sub i64 %i.aoc, %i.aof
  %i.aoh = shl nsw i64 %i.aob, 3
  %i.aoi = add i64 %i.aog, %i.aoh
  %i.aoj = add i64 %i.aoi, -1
  %diff.check1495 = icmp ult i64 %i.aoj, 127
  br i1 %diff.check1495, label %vec.epilog.scalar.ph1513.preheader, label %vector.main.loop.iter.check1497

vector.main.loop.iter.check1497:                  ; preds = %vector.memcheck1494
  %min.iters.check1498 = icmp ult i32 %i.als, 15
  br i1 %min.iters.check1498, label %vec.epilog.ph1516, label %vector.ph1499

vector.ph1499:                                    ; preds = %vector.main.loop.iter.check1497
  %i.aok = and i64 %i.alu, 12
  %n.vec1500 = and i64 %i.alu, 8589934576         ; 5 uses
  %i.aol = add nsw i64 %n.vec1500, %i.alx
  %i.aom = add nsw i64 %n.vec1500, %i.aob         ; 2 uses
  %invariant.gep2041 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.alx
  %invariant.gep2043 = getelementptr [8 x i8], ptr %5, i64 %i.aob
  br label %vector.body1501

vector.body1501:                                  ; preds = %vector.body1501, %vector.ph1499
  %index1502 = phi i64 [ 0, %vector.ph1499 ], [ %index.next1507, %vector.body1501 ] ; 3 uses
  %gep2042 = getelementptr [8 x i8], ptr %invariant.gep2041, i64 %index1502 ; 4 uses
  %i.aon = getelementptr i8, ptr %gep2042, i64 32
  %i.aoo = getelementptr i8, ptr %gep2042, i64 64
  %i.aop = getelementptr i8, ptr %gep2042, i64 96
  %wide.load1503.a = load <4 x double>, ptr %gep2042, align 8, !tbaa !108
  %wide.load1504.a = load <4 x double>, ptr %i.aon, align 8, !tbaa !108
  %wide.load1505.a = load <4 x double>, ptr %i.aoo, align 8, !tbaa !108
  %wide.load1506 = load <4 x double>, ptr %i.aop, align 8, !tbaa !108
  %gep2044 = getelementptr [8 x i8], ptr %invariant.gep2043, i64 %index1502 ; 4 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %gep2044, i64 32
  %i.aor = getelementptr inbounds nuw i8, ptr %gep2044, i64 64
  %i.aos = getelementptr inbounds nuw i8, ptr %gep2044, i64 96
  store <4 x double> %wide.load1503.a, ptr %gep2044, align 8, !tbaa !108
  store <4 x double> %wide.load1504.a, ptr %i.aoq, align 8, !tbaa !108
  store <4 x double> %wide.load1505.a, ptr %i.aor, align 8, !tbaa !108
  store <4 x double> %wide.load1506, ptr %i.aos, align 8, !tbaa !108
  %index.next1507 = add nuw i64 %index1502, 16    ; 2 uses
  %i.aot = icmp eq i64 %index.next1507, %n.vec1500
  br i1 %i.aot, label %middle.block1508, label %vector.body1501, !llvm.loop !79

middle.block1508:                                 ; preds = %vector.body1501
  %cmp.n1509 = icmp eq i64 %i.alu, %n.vec1500
  br i1 %cmp.n1509, label %._crit_edge588, label %vec.epilog.iter.check1514

vec.epilog.iter.check1514:                        ; preds = %middle.block1508
  %min.epilog.iters.check1515 = icmp eq i64 %i.aok, 0
  br i1 %min.epilog.iters.check1515, label %vec.epilog.scalar.ph1513.preheader, label %vec.epilog.ph1516, !prof !112

vec.epilog.ph1516:                                ; preds = %vector.main.loop.iter.check1497, %vec.epilog.iter.check1514
  %vec.epilog.resume.val1510 = phi i64 [ %n.vec1500, %vec.epilog.iter.check1514 ], [ 0, %vector.main.loop.iter.check1497 ]
  %n.vec1517 = and i64 %i.alu, 8589934588         ; 4 uses
  %i.aou = add nsw i64 %n.vec1517, %i.alx
  %i.aov = add nsw i64 %n.vec1517, %i.aob         ; 2 uses
  %invariant.gep2045 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.alx
  %invariant.gep2047 = getelementptr [8 x i8], ptr %5, i64 %i.aob
  br label %vec.epilog.vector.body1518

vec.epilog.vector.body1518:                       ; preds = %vec.epilog.vector.body1518, %vec.epilog.ph1516
  %index1519 = phi i64 [ %vec.epilog.resume.val1510, %vec.epilog.ph1516 ], [ %index.next1521, %vec.epilog.vector.body1518 ] ; 3 uses
  %gep2046 = getelementptr [8 x i8], ptr %invariant.gep2045, i64 %index1519
  %wide.load1520 = load <4 x double>, ptr %gep2046, align 8, !tbaa !108
  %gep2048 = getelementptr [8 x i8], ptr %invariant.gep2047, i64 %index1519
  store <4 x double> %wide.load1520, ptr %gep2048, align 8, !tbaa !108
  %index.next1521 = add nuw i64 %index1519, 4     ; 2 uses
  %i.aow = icmp eq i64 %index.next1521, %n.vec1517
  br i1 %i.aow, label %vec.epilog.middle.block1522, label %vec.epilog.vector.body1518, !llvm.loop !80

vec.epilog.middle.block1522:                      ; preds = %vec.epilog.vector.body1518
  %cmp.n1523 = icmp eq i64 %i.alu, %n.vec1517
  br i1 %cmp.n1523, label %._crit_edge588, label %vec.epilog.scalar.ph1513.preheader

vec.epilog.scalar.ph1513.preheader:               ; preds = %vector.memcheck1494, %iter.check1512, %vec.epilog.iter.check1514, %vec.epilog.middle.block1522
  %indvars.iv873.ph = phi i64 [ %i.alx, %iter.check1512 ], [ %i.alx, %vector.memcheck1494 ], [ %i.aol, %vec.epilog.iter.check1514 ], [ %i.aou, %vec.epilog.middle.block1522 ] ; 3 uses
  %indvars.iv869.ph = phi i64 [ %i.aob, %iter.check1512 ], [ %i.aob, %vector.memcheck1494 ], [ %i.aom, %vec.epilog.iter.check1514 ], [ %i.aov, %vec.epilog.middle.block1522 ] ; 2 uses
  %i.aox = trunc i64 %indvars.iv873.ph to i32     ; 2 uses
  %i.aoy = sub i32 %i.i, %i.aox
  %xtraiter1933 = and i32 %i.aoy, 7               ; 2 uses
  %lcmp.mod1934.not = icmp eq i32 %xtraiter1933, 0
  br i1 %lcmp.mod1934.not, label %vec.epilog.scalar.ph1513.prol.loopexit, label %vec.epilog.scalar.ph1513.prol

vec.epilog.scalar.ph1513.prol:                    ; preds = %vec.epilog.scalar.ph1513.preheader, %vec.epilog.scalar.ph1513.prol
  %indvars.iv873.prol = phi i64 [ %indvars.iv.next874.prol, %vec.epilog.scalar.ph1513.prol ], [ %indvars.iv873.ph, %vec.epilog.scalar.ph1513.preheader ] ; 2 uses
  %indvars.iv869.prol = phi i64 [ %indvars.iv.next870.prol, %vec.epilog.scalar.ph1513.prol ], [ %indvars.iv869.ph, %vec.epilog.scalar.ph1513.preheader ] ; 2 uses
  %prol.iter1935 = phi i32 [ %prol.iter1935.next, %vec.epilog.scalar.ph1513.prol ], [ 0, %vec.epilog.scalar.ph1513.preheader ]
  %gep1038.prol = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873.prol
  %i.aoz = load double, ptr %gep1038.prol, align 8, !tbaa !108
  %i.apa = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv869.prol
  store double %i.aoz, ptr %i.apa, align 8, !tbaa !108
  %indvars.iv.next870.prol = add nsw i64 %indvars.iv869.prol, 1 ; 3 uses
  %indvars.iv.next874.prol = add nsw i64 %indvars.iv873.prol, 1 ; 2 uses
  %prol.iter1935.next = add i32 %prol.iter1935, 1 ; 2 uses
  %prol.iter1935.cmp.not = icmp eq i32 %prol.iter1935.next, %xtraiter1933
  br i1 %prol.iter1935.cmp.not, label %vec.epilog.scalar.ph1513.prol.loopexit, label %vec.epilog.scalar.ph1513.prol, !llvm.loop !81

vec.epilog.scalar.ph1513.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1513.prol, %vec.epilog.scalar.ph1513.preheader
  %indvars.iv.next870.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1513.preheader ], [ %indvars.iv.next870.prol, %vec.epilog.scalar.ph1513.prol ]
  %indvars.iv873.unr = phi i64 [ %indvars.iv873.ph, %vec.epilog.scalar.ph1513.preheader ], [ %indvars.iv.next874.prol, %vec.epilog.scalar.ph1513.prol ]
  %indvars.iv869.unr = phi i64 [ %indvars.iv869.ph, %vec.epilog.scalar.ph1513.preheader ], [ %indvars.iv.next870.prol, %vec.epilog.scalar.ph1513.prol ]
  %i.apb = sub i32 %i.aox, %i.i
  %i.apc = icmp ugt i32 %i.apb, -8
  br i1 %i.apc, label %._crit_edge588, label %vec.epilog.scalar.ph1513

vec.epilog.scalar.ph1513:                         ; preds = %vec.epilog.scalar.ph1513.prol.loopexit, %vec.epilog.scalar.ph1513
  %indvars.iv873 = phi i64 [ %indvars.iv.next874.7, %vec.epilog.scalar.ph1513 ], [ %indvars.iv873.unr, %vec.epilog.scalar.ph1513.prol.loopexit ] ; 9 uses
  %indvars.iv869 = phi i64 [ %indvars.iv.next870.7, %vec.epilog.scalar.ph1513 ], [ %indvars.iv869.unr, %vec.epilog.scalar.ph1513.prol.loopexit ] ; 9 uses
  %gep1038 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %i.apd = load double, ptr %gep1038, align 8, !tbaa !108
  %i.ape = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv869
  store double %i.apd, ptr %i.ape, align 8, !tbaa !108
  %i.apf = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.1 = getelementptr i8, ptr %i.apf, i64 8
  %i.apg = load double, ptr %gep1038.1, align 8, !tbaa !108
  %i.aph = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.api = getelementptr i8, ptr %i.aph, i64 8
  store double %i.apg, ptr %i.api, align 8, !tbaa !108
  %i.apj = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.2 = getelementptr i8, ptr %i.apj, i64 16
  %i.apk = load double, ptr %gep1038.2, align 8, !tbaa !108
  %i.apl = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.apm = getelementptr i8, ptr %i.apl, i64 16
  store double %i.apk, ptr %i.apm, align 8, !tbaa !108
  %i.apn = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.3 = getelementptr i8, ptr %i.apn, i64 24
  %i.apo = load double, ptr %gep1038.3, align 8, !tbaa !108
  %i.app = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.apq = getelementptr i8, ptr %i.app, i64 24
  store double %i.apo, ptr %i.apq, align 8, !tbaa !108
  %i.apr = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.4 = getelementptr i8, ptr %i.apr, i64 32
  %i.aps = load double, ptr %gep1038.4, align 8, !tbaa !108
  %i.apt = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.apu = getelementptr i8, ptr %i.apt, i64 32
  store double %i.aps, ptr %i.apu, align 8, !tbaa !108
  %i.apv = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.5 = getelementptr i8, ptr %i.apv, i64 40
  %i.apw = load double, ptr %gep1038.5, align 8, !tbaa !108
  %i.apx = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.apy = getelementptr i8, ptr %i.apx, i64 40
  store double %i.apw, ptr %i.apy, align 8, !tbaa !108
  %i.apz = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.6 = getelementptr i8, ptr %i.apz, i64 48
  %i.aqa = load double, ptr %gep1038.6, align 8, !tbaa !108
  %i.aqb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.aqc = getelementptr i8, ptr %i.aqb, i64 48
  store double %i.aqa, ptr %i.aqc, align 8, !tbaa !108
  %i.aqd = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873
  %gep1038.7 = getelementptr i8, ptr %i.aqd, i64 56
  %i.aqe = load double, ptr %gep1038.7, align 8, !tbaa !108
  %i.aqf = getelementptr [8 x i8], ptr %5, i64 %indvars.iv869
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 56
  store double %i.aqe, ptr %i.aqg, align 8, !tbaa !108
  %indvars.iv.next870.7 = add nsw i64 %indvars.iv869, 8 ; 2 uses
  %indvars.iv.next874.7 = add nsw i64 %indvars.iv873, 8 ; 2 uses
  %lftr.wideiv878.7 = trunc i64 %indvars.iv.next874.7 to i32
  %exitcond879.not.7 = icmp eq i32 %i.i, %lftr.wideiv878.7
  br i1 %exitcond879.not.7, label %._crit_edge588, label %vec.epilog.scalar.ph1513, !llvm.loop !82

._crit_edge588:                                   ; preds = %vec.epilog.scalar.ph1513.prol.loopexit, %vec.epilog.scalar.ph1513, %middle.block1508, %vec.epilog.middle.block1522, %.loopexit1824
  %.25.lcssa.in = phi i64 [ %indvars.iv.next856.lcssa, %.loopexit1824 ], [ %i.aov, %vec.epilog.middle.block1522 ], [ %i.aom, %middle.block1508 ], [ %indvars.iv.next870.lcssa.unr, %vec.epilog.scalar.ph1513.prol.loopexit ], [ %indvars.iv.next870.7, %vec.epilog.scalar.ph1513 ] ; 2 uses
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 1 ; 2 uses
  %indvars.iv.next881 = add nuw nsw i64 %indvars.iv880, 1
  %indvars.iv.next872 = add nuw i32 %indvars.iv871, 1
  %exitcond888.not = icmp eq i64 %indvars.iv.next883, %wide.trip.count887
  br i1 %exitcond888.not, label %.preheader471.preheader, label %iter.check1553, !llvm.loop !83

.preheader471.preheader:                          ; preds = %._crit_edge588, %._crit_edge579
  %.23.lcssa = phi i64 [ %indvars.iv.next851.lcssa, %._crit_edge579 ], [ %.25.lcssa.in, %._crit_edge588 ]
  %i.aqh = sext i32 %i.d to i64                   ; 9 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.v, i32 1)
  %i.aqi = lshr exact i32 %i.i, 1                 ; 2 uses
  %i.aqj = zext nneg i32 %i.aqi to i64
  %i.aqk = add nsw i64 %i.aqj, -1
  %smax900 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.v)
  %i.aql = add nuw i32 %smax900, %i.aqi
  %i.aqm = sub i32 %i.aql, %i.v
  %wide.trip.count901 = zext i32 %i.aqm to i64
  %sext993 = shl i64 %.23.lcssa, 32
  %i.aqn = ashr exact i64 %sext993, 32
  %wide.trip.count896 = zext nneg i32 %umax to i64 ; 8 uses
  %i.aqo = add i64 %i.b, 8
  %min.iters.check1575 = icmp ugt i32 %i.i, 7
  %ident.check1570.not = icmp eq i32 %i.d, 1
  %or.cond1837.a = select i1 %min.iters.check1575, i1 %ident.check1570.not, i1 false
  %min.iters.check1577 = icmp ult i32 %i.i, 32
  %i.aqp = and i64 %wide.trip.count896, 12
  %n.vec1579 = and i64 %wide.trip.count896, 1073741808 ; 5 uses
  %cmp.n1588 = icmp eq i64 %n.vec1579, %wide.trip.count896
  %min.epilog.iters.check1593 = icmp eq i64 %i.aqp, 0
  %n.vec1595 = and i64 %wide.trip.count896, 1073741820 ; 4 uses
  %cmp.n1601 = icmp eq i64 %n.vec1595, %wide.trip.count896
  br label %iter.check1590

iter.check1590:                                   ; preds = %.preheader471.preheader, %._crit_edge599
  %indvar1572 = phi i64 [ 0, %.preheader471.preheader ], [ %indvar.next1573, %._crit_edge599 ] ; 2 uses
  %indvars.iv898 = phi i64 [ %i.aqk, %.preheader471.preheader ], [ %indvars.iv.next899, %._crit_edge599 ] ; 2 uses
  %.26603 = phi i64 [ %i.aqn, %.preheader471.preheader ], [ %indvars.iv.next890.lcssa, %._crit_edge599 ] ; 7 uses
  %invariant.gep1039 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv898 ; 11 uses
  br i1 %or.cond1837.a, label %vector.memcheck1571, label %vec.epilog.scalar.ph1591.preheader

vector.memcheck1571:                              ; preds = %iter.check1590
  %i.aqq = add i64 %indvar1572, %i.akk
  %i.aqr = shl i64 %i.aqq, 3
  %i.aqs = add i64 %i.aqr, %i.a
  %i.aqt = sub i64 %i.aqo, %i.aqs
  %i.aqu = shl i64 %.26603, 3
  %i.aqv = add i64 %i.aqt, %i.aqu
  %i.aqw = add i64 %i.aqv, -1
  %diff.check1574 = icmp ult i64 %i.aqw, 127
  br i1 %diff.check1574, label %vec.epilog.scalar.ph1591.preheader, label %vector.main.loop.iter.check1576

vector.main.loop.iter.check1576:                  ; preds = %vector.memcheck1571
  br i1 %min.iters.check1577, label %vec.epilog.ph1594, label %vector.ph1578

vector.ph1578:                                    ; preds = %vector.main.loop.iter.check1576
  %i.aqx = add i64 %.26603, %n.vec1579            ; 2 uses
  %i.aqy = getelementptr [8 x i8], ptr %5, i64 %.26603
  br label %vector.body1580

vector.body1580:                                  ; preds = %vector.body1580, %vector.ph1578
  %index1581 = phi i64 [ 0, %vector.ph1578 ], [ %index.next1586, %vector.body1580 ] ; 3 uses
  %i.aqz = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1581 ; 4 uses
  %i.ara = getelementptr i8, ptr %i.aqz, i64 32
  %i.arb = getelementptr i8, ptr %i.aqz, i64 64
  %i.arc = getelementptr i8, ptr %i.aqz, i64 96
  %wide.load1582.a = load <4 x double>, ptr %i.aqz, align 8, !tbaa !108
  %wide.load1583.a = load <4 x double>, ptr %i.ara, align 8, !tbaa !108
  %wide.load1584.a = load <4 x double>, ptr %i.arb, align 8, !tbaa !108
  %wide.load1585 = load <4 x double>, ptr %i.arc, align 8, !tbaa !108
  %i.ard = getelementptr [8 x i8], ptr %i.aqy, i64 %index1581 ; 4 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 32
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ard, i64 64
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ard, i64 96
  store <4 x double> %wide.load1582.a, ptr %i.ard, align 8, !tbaa !108
  store <4 x double> %wide.load1583.a, ptr %i.are, align 8, !tbaa !108
  store <4 x double> %wide.load1584.a, ptr %i.arf, align 8, !tbaa !108
  store <4 x double> %wide.load1585, ptr %i.arg, align 8, !tbaa !108
  %index.next1586 = add nuw i64 %index1581, 16    ; 2 uses
  %i.arh = icmp eq i64 %index.next1586, %n.vec1579
  br i1 %i.arh, label %middle.block1587, label %vector.body1580, !llvm.loop !84

middle.block1587:                                 ; preds = %vector.body1580
  br i1 %cmp.n1588, label %._crit_edge599, label %vec.epilog.iter.check1592

vec.epilog.iter.check1592:                        ; preds = %middle.block1587
  br i1 %min.epilog.iters.check1593, label %vec.epilog.scalar.ph1591.preheader, label %vec.epilog.ph1594, !prof !112

vec.epilog.ph1594:                                ; preds = %vector.main.loop.iter.check1576, %vec.epilog.iter.check1592
  %vec.epilog.resume.val1589 = phi i64 [ %n.vec1579, %vec.epilog.iter.check1592 ], [ 0, %vector.main.loop.iter.check1576 ]
  %i.ari = add i64 %.26603, %n.vec1595            ; 2 uses
  %i.arj = getelementptr [8 x i8], ptr %5, i64 %.26603
  br label %vec.epilog.vector.body1596

vec.epilog.vector.body1596:                       ; preds = %vec.epilog.vector.body1596, %vec.epilog.ph1594
  %index1597 = phi i64 [ %vec.epilog.resume.val1589, %vec.epilog.ph1594 ], [ %index.next1599, %vec.epilog.vector.body1596 ] ; 3 uses
  %i.ark = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1597
  %wide.load1598 = load <4 x double>, ptr %i.ark, align 8, !tbaa !108
  %i.arl = getelementptr [8 x i8], ptr %i.arj, i64 %index1597
  store <4 x double> %wide.load1598, ptr %i.arl, align 8, !tbaa !108
  %index.next1599 = add nuw i64 %index1597, 4     ; 2 uses
  %i.arm = icmp eq i64 %index.next1599, %n.vec1595
  br i1 %i.arm, label %vec.epilog.middle.block1600, label %vec.epilog.vector.body1596, !llvm.loop !85

vec.epilog.middle.block1600:                      ; preds = %vec.epilog.vector.body1596
  br i1 %cmp.n1601, label %._crit_edge599, label %vec.epilog.scalar.ph1591.preheader

vec.epilog.scalar.ph1591.preheader:               ; preds = %vector.memcheck1571, %iter.check1590, %vec.epilog.iter.check1592, %vec.epilog.middle.block1600
  %indvars.iv891.ph = phi i64 [ 0, %iter.check1590 ], [ 0, %vector.memcheck1571 ], [ %n.vec1579, %vec.epilog.iter.check1592 ], [ %n.vec1595, %vec.epilog.middle.block1600 ] ; 4 uses
  %indvars.iv889.ph = phi i64 [ %.26603, %iter.check1590 ], [ %.26603, %vector.memcheck1571 ], [ %i.aqx, %vec.epilog.iter.check1592 ], [ %i.ari, %vec.epilog.middle.block1600 ] ; 2 uses
  %i.arn = sub nsw i64 %wide.trip.count896, %indvars.iv891.ph
  %xtraiter1936 = and i64 %i.arn, 7               ; 2 uses
  %lcmp.mod1937.not = icmp eq i64 %xtraiter1936, 0
  br i1 %lcmp.mod1937.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol

vec.epilog.scalar.ph1591.prol:                    ; preds = %vec.epilog.scalar.ph1591.preheader, %vec.epilog.scalar.ph1591.prol
  %indvars.iv891.prol = phi i64 [ %indvars.iv.next892.prol, %vec.epilog.scalar.ph1591.prol ], [ %indvars.iv891.ph, %vec.epilog.scalar.ph1591.preheader ] ; 2 uses
  %indvars.iv889.prol = phi i64 [ %indvars.iv.next890.prol, %vec.epilog.scalar.ph1591.prol ], [ %indvars.iv889.ph, %vec.epilog.scalar.ph1591.preheader ] ; 2 uses
  %prol.iter1938 = phi i64 [ %prol.iter1938.next, %vec.epilog.scalar.ph1591.prol ], [ 0, %vec.epilog.scalar.ph1591.preheader ]
  %i.aro = mul nsw i64 %indvars.iv891.prol, %i.aqh
  %gep1040.prol = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.aro
  %i.arp = load double, ptr %gep1040.prol, align 8, !tbaa !108
  %i.arq = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv889.prol
  store double %i.arp, ptr %i.arq, align 8, !tbaa !108
  %indvars.iv.next890.prol = add nsw i64 %indvars.iv889.prol, 1 ; 3 uses
  %indvars.iv.next892.prol = add nuw nsw i64 %indvars.iv891.prol, 1 ; 2 uses
  %prol.iter1938.next = add i64 %prol.iter1938, 1 ; 2 uses
  %prol.iter1938.cmp.not = icmp eq i64 %prol.iter1938.next, %xtraiter1936
  br i1 %prol.iter1938.cmp.not, label %vec.epilog.scalar.ph1591.prol.loopexit, label %vec.epilog.scalar.ph1591.prol, !llvm.loop !86

vec.epilog.scalar.ph1591.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1591.prol, %vec.epilog.scalar.ph1591.preheader
  %indvars.iv.next890.lcssa1856.unr = phi i64 [ poison, %vec.epilog.scalar.ph1591.preheader ], [ %indvars.iv.next890.prol, %vec.epilog.scalar.ph1591.prol ]
  %indvars.iv891.unr = phi i64 [ %indvars.iv891.ph, %vec.epilog.scalar.ph1591.preheader ], [ %indvars.iv.next892.prol, %vec.epilog.scalar.ph1591.prol ]
  %indvars.iv889.unr = phi i64 [ %indvars.iv889.ph, %vec.epilog.scalar.ph1591.preheader ], [ %indvars.iv.next890.prol, %vec.epilog.scalar.ph1591.prol ]
  %i.arr = sub nsw i64 %indvars.iv891.ph, %wide.trip.count896
  %i.ars = icmp ugt i64 %i.arr, -8
  br i1 %i.ars, label %._crit_edge599, label %vec.epilog.scalar.ph1591

vec.epilog.scalar.ph1591:                         ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %vec.epilog.scalar.ph1591
  %indvars.iv891 = phi i64 [ %indvars.iv.next892.7, %vec.epilog.scalar.ph1591 ], [ %indvars.iv891.unr, %vec.epilog.scalar.ph1591.prol.loopexit ] ; 9 uses
  %indvars.iv889 = phi i64 [ %indvars.iv.next890.7, %vec.epilog.scalar.ph1591 ], [ %indvars.iv889.unr, %vec.epilog.scalar.ph1591.prol.loopexit ] ; 9 uses
  %i.art = mul nsw i64 %indvars.iv891, %i.aqh
  %gep1040 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.art
  %i.aru = load double, ptr %gep1040, align 8, !tbaa !108
  %i.arv = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv889
  store double %i.aru, ptr %i.arv, align 8, !tbaa !108
  %indvars.iv.next892 = add nuw nsw i64 %indvars.iv891, 1
  %i.arw = mul nsw i64 %indvars.iv.next892, %i.aqh
  %gep1040.1 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.arw
  %i.arx = load double, ptr %gep1040.1, align 8, !tbaa !108
  %i.ary = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.arz = getelementptr i8, ptr %i.ary, i64 8
  store double %i.arx, ptr %i.arz, align 8, !tbaa !108
  %indvars.iv.next892.1 = add nuw nsw i64 %indvars.iv891, 2
  %i.asa = mul nsw i64 %indvars.iv.next892.1, %i.aqh
  %gep1040.2 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.asa
  %i.asb = load double, ptr %gep1040.2, align 8, !tbaa !108
  %i.asc = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.asd = getelementptr i8, ptr %i.asc, i64 16
  store double %i.asb, ptr %i.asd, align 8, !tbaa !108
  %indvars.iv.next892.2 = add nuw nsw i64 %indvars.iv891, 3
  %i.ase = mul nsw i64 %indvars.iv.next892.2, %i.aqh
  %gep1040.3 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.ase
  %i.asf = load double, ptr %gep1040.3, align 8, !tbaa !108
  %i.asg = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.ash = getelementptr i8, ptr %i.asg, i64 24
  store double %i.asf, ptr %i.ash, align 8, !tbaa !108
  %indvars.iv.next892.3 = add nuw nsw i64 %indvars.iv891, 4
  %i.asi = mul nsw i64 %indvars.iv.next892.3, %i.aqh
  %gep1040.4 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.asi
  %i.asj = load double, ptr %gep1040.4, align 8, !tbaa !108
  %i.ask = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.asl = getelementptr i8, ptr %i.ask, i64 32
  store double %i.asj, ptr %i.asl, align 8, !tbaa !108
  %indvars.iv.next892.4 = add nuw nsw i64 %indvars.iv891, 5
  %i.asm = mul nsw i64 %indvars.iv.next892.4, %i.aqh
  %gep1040.5 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.asm
  %i.asn = load double, ptr %gep1040.5, align 8, !tbaa !108
  %i.aso = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.asp = getelementptr i8, ptr %i.aso, i64 40
  store double %i.asn, ptr %i.asp, align 8, !tbaa !108
  %indvars.iv.next892.5 = add nuw nsw i64 %indvars.iv891, 6
  %i.asq = mul nsw i64 %indvars.iv.next892.5, %i.aqh
  %gep1040.6 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.asq
  %i.asr = load double, ptr %gep1040.6, align 8, !tbaa !108
  %i.ass = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.ast = getelementptr i8, ptr %i.ass, i64 48
  store double %i.asr, ptr %i.ast, align 8, !tbaa !108
  %indvars.iv.next892.6 = add nuw nsw i64 %indvars.iv891, 7
  %i.asu = mul nsw i64 %indvars.iv.next892.6, %i.aqh
  %gep1040.7 = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.asu
  %i.asv = load double, ptr %gep1040.7, align 8, !tbaa !108
  %i.asw = getelementptr [8 x i8], ptr %5, i64 %indvars.iv889
  %i.asx = getelementptr i8, ptr %i.asw, i64 56
  store double %i.asv, ptr %i.asx, align 8, !tbaa !108
  %indvars.iv.next890.7 = add nsw i64 %indvars.iv889, 8 ; 2 uses
  %indvars.iv.next892.7 = add nuw nsw i64 %indvars.iv891, 8 ; 2 uses
  %exitcond897.not.7 = icmp eq i64 %indvars.iv.next892.7, %wide.trip.count896
  br i1 %exitcond897.not.7, label %._crit_edge599, label %vec.epilog.scalar.ph1591, !llvm.loop !87

._crit_edge599:                                   ; preds = %vec.epilog.scalar.ph1591.prol.loopexit, %vec.epilog.scalar.ph1591, %vec.epilog.middle.block1600, %middle.block1587
  %indvars.iv.next890.lcssa = phi i64 [ %i.ari, %vec.epilog.middle.block1600 ], [ %i.aqx, %middle.block1587 ], [ %indvars.iv.next890.lcssa1856.unr, %vec.epilog.scalar.ph1591.prol.loopexit ], [ %indvars.iv.next890.7, %vec.epilog.scalar.ph1591 ]
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, 1 ; 2 uses
  %exitcond902.not = icmp eq i64 %indvars.iv.next899, %wide.trip.count901
  %indvar.next1573 = add i64 %indvar1572, 1
  br i1 %exitcond902.not, label %.loopexit, label %iter.check1590, !llvm.loop !88

.preheader468.us.preheader:                       ; preds = %bb.p
  %i.asy = lshr exact i32 %i.i, 1
  %i.asz = zext nneg i32 %i.asy to i64            ; 9 uses
  %i.ata = sext i32 %i.d to i64                   ; 2 uses
  %i.atb = zext nneg i32 %i.i to i64              ; 2 uses
  %i.atc = add nuw nsw i32 %i.v, 1
  %wide.trip.count937 = zext nneg i32 %i.atc to i64 ; 2 uses
  %umax1685 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count937, i64 %i.atb)
  %i.atd = sub nsw i64 %umax1685, %i.asz          ; 7 uses
  %min.iters.check1686 = icmp ugt i64 %i.atd, 3
  %ident.check1682.not = icmp eq i32 %i.d, 1
  %or.cond1838.a = select i1 %min.iters.check1686, i1 %ident.check1682.not, i1 false
  %min.iters.check1688 = icmp ult i64 %i.atd, 16
  %i.ate = and i64 %i.atd, 12
  %n.vec1690 = and i64 %i.atd, -16                ; 5 uses
  %i.atf = add nsw i64 %n.vec1690, %i.asz
  %cmp.n1699 = icmp eq i64 %i.atd, %n.vec1690
  %min.epilog.iters.check1705 = icmp eq i64 %i.ate, 0
  %n.vec1707 = and i64 %i.atd, -4                 ; 4 uses
  %i.atg = add nsw i64 %n.vec1707, %i.asz
  %cmp.n1713 = icmp eq i64 %i.atd, %n.vec1707
  br label %iter.check1702

iter.check1702:                                   ; preds = %.preheader468.us.preheader, %._crit_edge622.us
  %indvars.iv934 = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next935, %._crit_edge622.us ] ; 3 uses
  %.28625.us = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next930.lcssa, %._crit_edge622.us ] ; 7 uses
  %invariant.gep1045 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv934 ; 3 uses
  br i1 %or.cond1838.a, label %vector.memcheck1683, label %vec.epilog.scalar.ph1703.preheader

vector.memcheck1683:                              ; preds = %iter.check1702
  %i.ath = add nuw i64 %indvars.iv934, %i.asz
  %i.ati = shl i64 %i.ath, 3
  %i.atj = add i64 %i.ati, %i.a
  %i.atk = sub i64 %i.b, %i.atj
  %i.atl = shl i64 %.28625.us, 3
  %i.atm = add i64 %i.atk, %i.atl
  %i.atn = add i64 %i.atm, -1
  %diff.check1684 = icmp ult i64 %i.atn, 127
  br i1 %diff.check1684, label %vec.epilog.scalar.ph1703.preheader, label %vector.main.loop.iter.check1687

vector.main.loop.iter.check1687:                  ; preds = %vector.memcheck1683
  br i1 %min.iters.check1688, label %vec.epilog.ph1706, label %vector.ph1689

vector.ph1689:                                    ; preds = %vector.main.loop.iter.check1687
  %i.ato = add i64 %.28625.us, %n.vec1690         ; 2 uses
  %invariant.gep2061 = getelementptr [8 x i8], ptr %invariant.gep1045, i64 %i.asz
  %i.atp = getelementptr [8 x i8], ptr %5, i64 %.28625.us
  br label %vector.body1691

vector.body1691:                                  ; preds = %vector.body1691, %vector.ph1689
  %index1692 = phi i64 [ 0, %vector.ph1689 ], [ %index.next1697, %vector.body1691 ] ; 3 uses
  %gep2062 = getelementptr [8 x i8], ptr %invariant.gep2061, i64 %index1692 ; 4 uses
  %i.atq = getelementptr i8, ptr %gep2062, i64 32
  %i.atr = getelementptr i8, ptr %gep2062, i64 64
  %i.ats = getelementptr i8, ptr %gep2062, i64 96
  %wide.load1693.a = load <4 x double>, ptr %gep2062, align 8, !tbaa !108
  %wide.load1694.a = load <4 x double>, ptr %i.atq, align 8, !tbaa !108
  %wide.load1695.a = load <4 x double>, ptr %i.atr, align 8, !tbaa !108
  %wide.load1696 = load <4 x double>, ptr %i.ats, align 8, !tbaa !108
  %i.att = getelementptr [8 x i8], ptr %i.atp, i64 %index1692 ; 4 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 32
  %i.atv = getelementptr inbounds nuw i8, ptr %i.att, i64 64
  %i.atw = getelementptr inbounds nuw i8, ptr %i.att, i64 96
  store <4 x double> %wide.load1693.a, ptr %i.att, align 8, !tbaa !108
  store <4 x double> %wide.load1694.a, ptr %i.atu, align 8, !tbaa !108
  store <4 x double> %wide.load1695.a, ptr %i.atv, align 8, !tbaa !108
  store <4 x double> %wide.load1696, ptr %i.atw, align 8, !tbaa !108
  %index.next1697 = add nuw i64 %index1692, 16    ; 2 uses
  %i.atx = icmp eq i64 %index.next1697, %n.vec1690
  br i1 %i.atx, label %middle.block1698, label %vector.body1691, !llvm.loop !89

middle.block1698:                                 ; preds = %vector.body1691
  br i1 %cmp.n1699, label %._crit_edge622.us, label %vec.epilog.iter.check1704

vec.epilog.iter.check1704:                        ; preds = %middle.block1698
  br i1 %min.epilog.iters.check1705, label %vec.epilog.scalar.ph1703.preheader, label %vec.epilog.ph1706, !prof !112

vec.epilog.ph1706:                                ; preds = %vector.main.loop.iter.check1687, %vec.epilog.iter.check1704
  %vec.epilog.resume.val1700 = phi i64 [ %n.vec1690, %vec.epilog.iter.check1704 ], [ 0, %vector.main.loop.iter.check1687 ]
  %i.aty = add i64 %.28625.us, %n.vec1707         ; 2 uses
  %invariant.gep2063 = getelementptr [8 x i8], ptr %invariant.gep1045, i64 %i.asz
  %i.atz = getelementptr [8 x i8], ptr %5, i64 %.28625.us
  br label %vec.epilog.vector.body1708

vec.epilog.vector.body1708:                       ; preds = %vec.epilog.vector.body1708, %vec.epilog.ph1706
  %index1709 = phi i64 [ %vec.epilog.resume.val1700, %vec.epilog.ph1706 ], [ %index.next1711, %vec.epilog.vector.body1708 ] ; 3 uses
  %gep2064 = getelementptr [8 x i8], ptr %invariant.gep2063, i64 %index1709
  %wide.load1710 = load <4 x double>, ptr %gep2064, align 8, !tbaa !108
  %i.aua = getelementptr [8 x i8], ptr %i.atz, i64 %index1709
  store <4 x double> %wide.load1710, ptr %i.aua, align 8, !tbaa !108
  %index.next1711 = add nuw i64 %index1709, 4     ; 2 uses
  %i.aub = icmp eq i64 %index.next1711, %n.vec1707
  br i1 %i.aub, label %vec.epilog.middle.block1712, label %vec.epilog.vector.body1708, !llvm.loop !90

vec.epilog.middle.block1712:                      ; preds = %vec.epilog.vector.body1708
  br i1 %cmp.n1713, label %._crit_edge622.us, label %vec.epilog.scalar.ph1703.preheader

vec.epilog.scalar.ph1703.preheader:               ; preds = %vector.memcheck1683, %iter.check1702, %vec.epilog.iter.check1704, %vec.epilog.middle.block1712
  %indvars.iv931.ph = phi i64 [ %i.asz, %iter.check1702 ], [ %i.asz, %vector.memcheck1683 ], [ %i.atf, %vec.epilog.iter.check1704 ], [ %i.atg, %vec.epilog.middle.block1712 ]
  %indvars.iv929.ph = phi i64 [ %.28625.us, %iter.check1702 ], [ %.28625.us, %vector.memcheck1683 ], [ %i.ato, %vec.epilog.iter.check1704 ], [ %i.aty, %vec.epilog.middle.block1712 ]
  br label %vec.epilog.scalar.ph1703

vec.epilog.scalar.ph1703:                         ; preds = %vec.epilog.scalar.ph1703.preheader, %vec.epilog.scalar.ph1703
  %indvars.iv931 = phi i64 [ %indvars.iv.next932, %vec.epilog.scalar.ph1703 ], [ %indvars.iv931.ph, %vec.epilog.scalar.ph1703.preheader ] ; 2 uses
  %indvars.iv929 = phi i64 [ %indvars.iv.next930, %vec.epilog.scalar.ph1703 ], [ %indvars.iv929.ph, %vec.epilog.scalar.ph1703.preheader ] ; 2 uses
  %i.auc = mul nsw i64 %indvars.iv931, %i.ata
  %gep1046 = getelementptr [8 x i8], ptr %invariant.gep1045, i64 %i.auc
  %i.aud = load double, ptr %gep1046, align 8, !tbaa !108
  %i.aue = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv929
  store double %i.aud, ptr %i.aue, align 8, !tbaa !108
  %indvars.iv.next930 = add nsw i64 %indvars.iv929, 1 ; 2 uses
  %indvars.iv.next932 = add nuw nsw i64 %indvars.iv931, 1 ; 2 uses
  %.not423.not.us = icmp samesign ult i64 %indvars.iv.next932, %i.atb
  br i1 %.not423.not.us, label %vec.epilog.scalar.ph1703, label %._crit_edge622.us, !llvm.loop !91

._crit_edge622.us:                                ; preds = %vec.epilog.scalar.ph1703, %vec.epilog.middle.block1712, %middle.block1698
  %indvars.iv.next930.lcssa = phi i64 [ %i.aty, %vec.epilog.middle.block1712 ], [ %i.ato, %middle.block1698 ], [ %indvars.iv.next930, %vec.epilog.scalar.ph1703 ] ; 3 uses
  %indvars.iv.next935 = add nuw nsw i64 %indvars.iv934, 1 ; 2 uses
  %exitcond938.not = icmp eq i64 %indvars.iv.next935, %wide.trip.count937
  br i1 %exitcond938.not, label %.split627.us, label %iter.check1702, !llvm.loop !92

.split627.us:                                     ; preds = %._crit_edge622.us
  %.not419638 = icmp ult i32 %i.i, 4
  br i1 %.not419638, label %iter.check1808, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.split627.us
  %i.auf = add nuw nsw i32 %i.v, 1                ; 2 uses
  %i.aug = sext i32 %i.d to i64                   ; 10 uses
end_hunk_1
