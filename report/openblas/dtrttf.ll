Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrttf?download=true
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@dtrttf_:bb.a

.loopexit1827.a:                                  ; preds = %vec.epilog.scalar.ph1668.prol.loopexit, %vec.epilog.scalar.ph1668, %vec.epilog.middle.block1678, %middle.block1660
  %indvars.iv913.lcssa = phi i32 [ %i.ago, %vec.epilog.middle.block1678 ], [ %i.agi, %middle.block1660 ], [ %indvars.iv913.lcssa1858.unr, %vec.epilog.scalar.ph1668.prol.loopexit ], [ %indvars.iv913.7, %vec.epilog.scalar.ph1668 ]
  %indvars.iv.next905.lcssa = phi i64 [ %i.agj, %vec.epilog.middle.block1678 ], [ %i.afu, %middle.block1660 ], [ %indvars.iv.next905.lcssa1857.unr, %vec.epilog.scalar.ph1668.prol.loopexit ], [ %indvars.iv.next905.7, %vec.epilog.scalar.ph1668 ]
  %i.ahz = sub nuw nsw i64 %indvars.iv.next927, %i.aex ; 2 uses
  %.not432.not606 = icmp slt i64 %i.ahz, %i.aex
  br i1 %.not432.not606, label %iter.check1628, label %._crit_edge611

iter.check1628:                                   ; preds = %.loopexit1827.a
  %i.aia = sext i32 %indvars.iv913.lcssa to i64   ; 7 uses
  %invariant.gep1043 = getelementptr [8 x i8], ptr %3, i64 %i.ahz ; 11 uses
  %min.iters.check1612 = icmp samesign ugt i64 %i.afh, 2
  %or.cond1839.a = select i1 %min.iters.check1612, i1 %ident.check1607.not, i1 false
  br i1 %or.cond1839.a, label %vector.memcheck1608, label %.lr.ph610.preheader

vector.memcheck1608:                              ; preds = %iter.check1628
  %i.aib = add i64 %i.afa, %i.afj
  %i.aic = add nsw i64 %i.aew, %i.afk
  %i.aid = shl nsw i64 %i.aic, 3
  %i.aie = add i64 %i.aid, %i.a
  %i.aif = sub i64 %i.aib, %i.aie
  %i.aig = shl nsw i64 %i.aia, 3
  %i.aih = add i64 %i.aif, %i.aig
  %i.aii = add i64 %i.aih, -1
  %diff.check1611 = icmp ult i64 %i.aii, 127
  br i1 %diff.check1611, label %.lr.ph610.preheader, label %vector.main.loop.iter.check1613

vector.main.loop.iter.check1613:                  ; preds = %vector.memcheck1608
  %min.iters.check1614 = icmp samesign ult i64 %i.afh, 15
  br i1 %min.iters.check1614, label %vec.epilog.ph1632, label %vector.ph1615

vector.ph1615:                                    ; preds = %vector.main.loop.iter.check1613
  %i.aij = and i64 %i.afi, 12
  %n.vec1616 = and i64 %i.afi, 8589934576         ; 5 uses
  %i.aik = add nsw i64 %n.vec1616, %i.afl
  %i.ail = add nsw i64 %n.vec1616, %i.aia         ; 2 uses
  %invariant.gep2057 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.afl
  %invariant.gep2059 = getelementptr [8 x i8], ptr %5, i64 %i.aia
  br label %vector.body1617

vector.body1617:                                  ; preds = %vector.ph1615, %vector.body1617
  %index1618 = phi i64 [ 0, %vector.ph1615 ], [ %index.next1623, %vector.body1617 ] ; 3 uses
  %gep2058 = getelementptr [8 x i8], ptr %invariant.gep2057, i64 %index1618 ; 4 uses
  %i.aim = getelementptr i8, ptr %gep2058, i64 32
  %i.ain = getelementptr i8, ptr %gep2058, i64 64
  %i.aio = getelementptr i8, ptr %gep2058, i64 96
  %wide.load1619.a = load <4 x double>, ptr %gep2058, align 8, !tbaa !108
  %wide.load1620.a = load <4 x double>, ptr %i.aim, align 8, !tbaa !108
  %wide.load1621.a = load <4 x double>, ptr %i.ain, align 8, !tbaa !108
  %wide.load1622 = load <4 x double>, ptr %i.aio, align 8, !tbaa !108
  %gep2060 = getelementptr [8 x i8], ptr %invariant.gep2059, i64 %index1618 ; 4 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %gep2060, i64 32
  %i.aiq = getelementptr inbounds nuw i8, ptr %gep2060, i64 64
  %i.air = getelementptr inbounds nuw i8, ptr %gep2060, i64 96
  store <4 x double> %wide.load1619.a, ptr %gep2060, align 8, !tbaa !108
  store <4 x double> %wide.load1620.a, ptr %i.aip, align 8, !tbaa !108
  store <4 x double> %wide.load1621.a, ptr %i.aiq, align 8, !tbaa !108
  store <4 x double> %wide.load1622, ptr %i.air, align 8, !tbaa !108
  %index.next1623 = add nuw i64 %index1618, 16    ; 2 uses
  %i.ais = icmp eq i64 %index.next1623, %n.vec1616
  br i1 %i.ais, label %middle.block1624, label %vector.body1617, !llvm.loop !67

middle.block1624:                                 ; preds = %vector.body1617
  %cmp.n1625 = icmp eq i64 %i.afi, %n.vec1616
  br i1 %cmp.n1625, label %._crit_edge611, label %vec.epilog.iter.check1630

vec.epilog.iter.check1630:                        ; preds = %middle.block1624
  %min.epilog.iters.check1631 = icmp eq i64 %i.aij, 0
  br i1 %min.epilog.iters.check1631, label %.lr.ph610.preheader, label %vec.epilog.ph1632, !prof !112

vec.epilog.ph1632:                                ; preds = %vector.main.loop.iter.check1613, %vec.epilog.iter.check1630
  %vec.epilog.resume.val1626 = phi i64 [ %n.vec1616, %vec.epilog.iter.check1630 ], [ 0, %vector.main.loop.iter.check1613 ]
  %n.vec1633 = and i64 %i.afi, 8589934588         ; 4 uses
  %i.ait = add nsw i64 %n.vec1633, %i.afl
  %i.aiu = add nsw i64 %n.vec1633, %i.aia         ; 2 uses
  %invariant.gep2061 = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.afl
  %invariant.gep2063 = getelementptr [8 x i8], ptr %5, i64 %i.aia
  br label %vec.epilog.vector.body1634

vec.epilog.vector.body1634:                       ; preds = %vec.epilog.vector.body1634, %vec.epilog.ph1632
  %index1635 = phi i64 [ %vec.epilog.resume.val1626, %vec.epilog.ph1632 ], [ %index.next1637, %vec.epilog.vector.body1634 ] ; 3 uses
  %gep2062 = getelementptr [8 x i8], ptr %invariant.gep2061, i64 %index1635
  %wide.load1636 = load <4 x double>, ptr %gep2062, align 8, !tbaa !108
  %gep2064 = getelementptr [8 x i8], ptr %invariant.gep2063, i64 %index1635
  store <4 x double> %wide.load1636, ptr %gep2064, align 8, !tbaa !108
  %index.next1637 = add nuw i64 %index1635, 4     ; 2 uses
  %i.aiv = icmp eq i64 %index.next1637, %n.vec1633
  br i1 %i.aiv, label %vec.epilog.middle.block1638, label %vec.epilog.vector.body1634, !llvm.loop !68

vec.epilog.middle.block1638:                      ; preds = %vec.epilog.vector.body1634
  %cmp.n1639 = icmp eq i64 %i.afi, %n.vec1633
  br i1 %cmp.n1639, label %._crit_edge611, label %.lr.ph610.preheader

.lr.ph610.preheader:                              ; preds = %iter.check1628, %vector.memcheck1608, %vec.epilog.iter.check1630, %vec.epilog.middle.block1638
  %indvars.iv919.ph = phi i64 [ %i.afl, %iter.check1628 ], [ %i.afl, %vector.memcheck1608 ], [ %i.aik, %vec.epilog.iter.check1630 ], [ %i.ait, %vec.epilog.middle.block1638 ] ; 3 uses
  %indvars.iv915.ph = phi i64 [ %i.aia, %iter.check1628 ], [ %i.aia, %vector.memcheck1608 ], [ %i.ail, %vec.epilog.iter.check1630 ], [ %i.aiu, %vec.epilog.middle.block1638 ] ; 2 uses
  %i.aiw = trunc i64 %indvars.iv919.ph to i32     ; 2 uses
  %i.aix = sub i32 %i.v, %i.aiw
  %xtraiter1946 = and i32 %i.aix, 7               ; 2 uses
  %lcmp.mod1947.not = icmp eq i32 %xtraiter1946, 0
  br i1 %lcmp.mod1947.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol

.lr.ph610.prol:                                   ; preds = %.lr.ph610.preheader, %.lr.ph610.prol
  %indvars.iv919.prol = phi i64 [ %indvars.iv.next920.prol, %.lr.ph610.prol ], [ %indvars.iv919.ph, %.lr.ph610.preheader ] ; 2 uses
  %indvars.iv915.prol = phi i64 [ %indvars.iv.next916.prol, %.lr.ph610.prol ], [ %indvars.iv915.ph, %.lr.ph610.preheader ] ; 2 uses
  %prol.iter1948 = phi i32 [ %prol.iter1948.next, %.lr.ph610.prol ], [ 0, %.lr.ph610.preheader ]
  %i.aiy = mul nsw i64 %indvars.iv919.prol, %i.aev
  %gep1044.prol = getelementptr [8 x i8], ptr %invariant.gep1043, i64 %i.aiy
  %i.aiz = load double, ptr %gep1044.prol, align 8, !tbaa !108
  %i.aja = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv915.prol
  store double %i.aiz, ptr %i.aja, align 8, !tbaa !108
  %indvars.iv.next916.prol = add nsw i64 %indvars.iv915.prol, 1 ; 3 uses
  %indvars.iv.next920.prol = add nsw i64 %indvars.iv919.prol, 1 ; 2 uses
  %prol.iter1948.next = add i32 %prol.iter1948, 1 ; 2 uses
  %prol.iter1948.cmp.not = icmp eq i32 %prol.iter1948.next, %xtraiter1946
  br i1 %prol.iter1948.cmp.not, label %.lr.ph610.prol.loopexit, label %.lr.ph610.prol, !llvm.loop !69

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

._crit_edge611:                                   ; preds = %.lr.ph610.prol.loopexit, %.lr.ph610, %middle.block1624, %vec.epilog.middle.block1638, %.loopexit1827.a
  %.21.lcssa.in = phi i64 [ %indvars.iv.next905.lcssa, %.loopexit1827.a ], [ %i.aiu, %vec.epilog.middle.block1638 ], [ %i.ail, %middle.block1624 ], [ %indvars.iv.next916.lcssa.unr, %.lr.ph610.prol.loopexit ], [ %indvars.iv.next916.7, %.lr.ph610 ]
  %.21.lcssa = trunc i64 %.21.lcssa.in to i32
  %.reass.reass = add i32 %.21.lcssa, %invariant.op
  %.not430.not = icmp sgt i64 %indvars.iv.next927, %i.aex
  %indvars.iv.next918 = add i32 %indvars.iv917, -1
  %indvar.next1610 = add i64 %indvar1609, 1
  br i1 %.not430.not, label %iter.check1667, label %.loopexit, !llvm.loop !71

iter.check1482:                                   ; preds = %.thread461
  %i.aki = mul nsw i32 %i.v, %i.d
  %i.akj = lshr exact i32 %i.i, 1
  %i.akk = zext nneg i32 %i.akj to i64            ; 17 uses
  %i.akl = sext i32 %i.aki to i64                 ; 2 uses
  %i.akm = zext nneg i32 %i.i to i64              ; 2 uses
  %invariant.gep1033 = getelementptr [8 x i8], ptr %3, i64 %i.akl ; 3 uses
  %i.akn = add nuw nsw i64 %i.akk, 1
  %umax1464 = tail call i64 @llvm.umax.i64(i64 %i.akn, i64 %i.akm)
  %i.ako = sub nsw i64 %umax1464, %i.akk          ; 7 uses
  %min.iters.check1465 = icmp ult i64 %i.ako, 4
  br i1 %min.iters.check1465, label %vec.epilog.scalar.ph1483.preheader, label %vector.memcheck1466

vector.memcheck1466:                              ; preds = %iter.check1482
  %i.akp = add nsw i64 %i.akk, %i.akl
  %i.akq = shl nsw i64 %i.akp, 3
  %i.akr = add i64 %i.akq, %i.a
  %i.aks = sub i64 %i.akr, %i.b
  %diff.check1467 = icmp ugt i64 %i.aks, -128
  br i1 %diff.check1467, label %vec.epilog.scalar.ph1483.preheader, label %vector.main.loop.iter.check1468

vector.main.loop.iter.check1468:                  ; preds = %vector.memcheck1466
  %min.iters.check1469 = icmp ult i64 %i.ako, 16
  br i1 %min.iters.check1469, label %vec.epilog.ph1486, label %vector.ph1470

vector.ph1470:                                    ; preds = %vector.main.loop.iter.check1468
  %i.akt = and i64 %i.ako, 12
  %n.vec1471 = and i64 %i.ako, -16                ; 6 uses
  %i.aku = add nsw i64 %n.vec1471, %i.akk
  %invariant.gep2041 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.akk
  br label %vector.body1472

vector.body1472:                                  ; preds = %vector.ph1470, %vector.body1472
  %index1473 = phi i64 [ 0, %vector.ph1470 ], [ %index.next1478, %vector.body1472 ] ; 3 uses
  %gep2042 = getelementptr [8 x i8], ptr %invariant.gep2041, i64 %index1473 ; 4 uses
  %i.akv = getelementptr i8, ptr %gep2042, i64 32
  %i.akw = getelementptr i8, ptr %gep2042, i64 64
  %i.akx = getelementptr i8, ptr %gep2042, i64 96
  %wide.load1474.a = load <4 x double>, ptr %gep2042, align 8, !tbaa !108
  %wide.load1475.a = load <4 x double>, ptr %i.akv, align 8, !tbaa !108
  %wide.load1476.a = load <4 x double>, ptr %i.akw, align 8, !tbaa !108
  %wide.load1477 = load <4 x double>, ptr %i.akx, align 8, !tbaa !108
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index1473 ; 4 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 32
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aky, i64 64
  %i.alb = getelementptr inbounds nuw i8, ptr %i.aky, i64 96
  store <4 x double> %wide.load1474.a, ptr %i.aky, align 8, !tbaa !108
  store <4 x double> %wide.load1475.a, ptr %i.akz, align 8, !tbaa !108
  store <4 x double> %wide.load1476.a, ptr %i.ala, align 8, !tbaa !108
  store <4 x double> %wide.load1477, ptr %i.alb, align 8, !tbaa !108
  %index.next1478 = add nuw i64 %index1473, 16    ; 2 uses
  %i.alc = icmp eq i64 %index.next1478, %n.vec1471
  br i1 %i.alc, label %middle.block1479, label %vector.body1472, !llvm.loop !72

middle.block1479:                                 ; preds = %vector.body1472
  %cmp.n1480 = icmp eq i64 %i.ako, %n.vec1471
  br i1 %cmp.n1480, label %._crit_edge579, label %vec.epilog.iter.check1484

vec.epilog.iter.check1484:                        ; preds = %middle.block1479
  %min.epilog.iters.check1485 = icmp eq i64 %i.akt, 0
  br i1 %min.epilog.iters.check1485, label %vec.epilog.scalar.ph1483.preheader, label %vec.epilog.ph1486, !prof !112

vec.epilog.ph1486:                                ; preds = %vector.main.loop.iter.check1468, %vec.epilog.iter.check1484
  %vec.epilog.resume.val1481 = phi i64 [ %n.vec1471, %vec.epilog.iter.check1484 ], [ 0, %vector.main.loop.iter.check1468 ]
  %n.vec1487 = and i64 %i.ako, -4                 ; 5 uses
  %i.ald = add nsw i64 %n.vec1487, %i.akk
  %invariant.gep2043 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %i.akk
  br label %vec.epilog.vector.body1488

vec.epilog.vector.body1488:                       ; preds = %vec.epilog.vector.body1488, %vec.epilog.ph1486
  %index1489 = phi i64 [ %vec.epilog.resume.val1481, %vec.epilog.ph1486 ], [ %index.next1491, %vec.epilog.vector.body1488 ] ; 3 uses
  %gep2044 = getelementptr [8 x i8], ptr %invariant.gep2043, i64 %index1489
  %wide.load1490 = load <4 x double>, ptr %gep2044, align 8, !tbaa !108
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index1489
  store <4 x double> %wide.load1490, ptr %i.ale, align 8, !tbaa !108
  %index.next1491 = add nuw i64 %index1489, 4     ; 2 uses
  %i.alf = icmp eq i64 %index.next1491, %n.vec1487
  br i1 %i.alf, label %vec.epilog.middle.block1492, label %vec.epilog.vector.body1488, !llvm.loop !73

vec.epilog.middle.block1492:                      ; preds = %vec.epilog.vector.body1488
  %cmp.n1493 = icmp eq i64 %i.ako, %n.vec1487
  br i1 %cmp.n1493, label %._crit_edge579, label %vec.epilog.scalar.ph1483.preheader

vec.epilog.scalar.ph1483.preheader:               ; preds = %iter.check1482, %vector.memcheck1466, %vec.epilog.iter.check1484, %vec.epilog.middle.block1492
  %indvars.iv852.ph = phi i64 [ %i.akk, %iter.check1482 ], [ %i.akk, %vector.memcheck1466 ], [ %i.aku, %vec.epilog.iter.check1484 ], [ %i.ald, %vec.epilog.middle.block1492 ]
  %indvars.iv850.ph = phi i64 [ 0, %iter.check1482 ], [ 0, %vector.memcheck1466 ], [ %n.vec1471, %vec.epilog.iter.check1484 ], [ %n.vec1487, %vec.epilog.middle.block1492 ]
  br label %vec.epilog.scalar.ph1483

vec.epilog.scalar.ph1483:                         ; preds = %vec.epilog.scalar.ph1483.preheader, %vec.epilog.scalar.ph1483
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %vec.epilog.scalar.ph1483 ], [ %indvars.iv852.ph, %vec.epilog.scalar.ph1483.preheader ] ; 2 uses
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %vec.epilog.scalar.ph1483 ], [ %indvars.iv850.ph, %vec.epilog.scalar.ph1483.preheader ] ; 2 uses
  %gep1034 = getelementptr [8 x i8], ptr %invariant.gep1033, i64 %indvars.iv852
  %i.alg = load double, ptr %gep1034, align 8, !tbaa !108
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv850
  store double %i.alg, ptr %i.alh, align 8, !tbaa !108
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 1 ; 2 uses
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 1 ; 2 uses
  %.not424.not = icmp samesign ult i64 %indvars.iv.next853, %i.akm
  br i1 %.not424.not, label %vec.epilog.scalar.ph1483, label %._crit_edge579, !llvm.loop !74

._crit_edge579:                                   ; preds = %vec.epilog.scalar.ph1483, %vec.epilog.middle.block1492, %middle.block1479
  %indvars.iv.next851.lcssa = phi i64 [ %n.vec1487, %vec.epilog.middle.block1492 ], [ %n.vec1471, %middle.block1479 ], [ %indvars.iv.next851, %vec.epilog.scalar.ph1483 ] ; 2 uses
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
  %ident.check1529.not = icmp eq i32 %i.d, 1
  br label %iter.check1555

iter.check1555:                                   ; preds = %.preheader473.lr.ph, %._crit_edge588
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
  %min.iters.check1532 = icmp samesign ugt i64 %indvars.iv880, 3
  %or.cond1840.a = select i1 %min.iters.check1532, i1 %ident.check1529.not, i1 false
  br i1 %or.cond1840.a, label %vector.memcheck1530, label %vec.epilog.scalar.ph1556.preheader

vector.memcheck1530:                              ; preds = %iter.check1555
  %i.alz = shl i64 %indvars.iv882, 3
  %i.ama = add i64 %i.alz, %i.a
  %i.amb = sub i64 %i.b, %i.ama
  %i.amc = ashr exact i64 %sext994, 29
  %i.amd = add i64 %i.amb, %i.amc
  %i.ame = add i64 %i.amd, -1
  %diff.check1531 = icmp ult i64 %i.ame, 127
  br i1 %diff.check1531, label %vec.epilog.scalar.ph1556.preheader, label %vector.main.loop.iter.check1533

vector.main.loop.iter.check1533:                  ; preds = %vector.memcheck1530
  %min.iters.check1534 = icmp samesign ult i64 %indvars.iv880, 16
  br i1 %min.iters.check1534, label %vec.epilog.ph1559, label %vector.ph1535

vector.ph1535:                                    ; preds = %vector.main.loop.iter.check1533
  %i.amf = and i64 %indvars.iv880, 12
  %n.vec1536 = and i64 %indvars.iv880, 9223372036854775792 ; 5 uses
  %i.amg = add i64 %i.aly, %n.vec1536             ; 2 uses
  %i.amh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.23592, i64 0
  %i.ami = getelementptr [8 x i8], ptr %5, i64 %i.aly
  br label %vector.body1537

vector.body1537:                                  ; preds = %vector.ph1535, %vector.body1537
  %index1538 = phi i64 [ 0, %vector.ph1535 ], [ %index.next1547, %vector.body1537 ] ; 3 uses
  %vec.phi1539.a = phi <4 x i32> [ %i.amh, %vector.ph1535 ], [ %i.amj, %vector.body1537 ]
  %vec.phi1540.a = phi <4 x i32> [ zeroinitializer, %vector.ph1535 ], [ %i.amk, %vector.body1537 ]
  %vec.phi1541.a = phi <4 x i32> [ zeroinitializer, %vector.ph1535 ], [ %i.aml, %vector.body1537 ]
  %vec.phi1542 = phi <4 x i32> [ zeroinitializer, %vector.ph1535 ], [ %i.amm, %vector.body1537 ]
  %i.amj = add <4 x i32> %vec.phi1539.a, splat (i32 1) ; 2 uses
  %i.amk = add <4 x i32> %vec.phi1540.a, splat (i32 1) ; 2 uses
  %i.aml = add <4 x i32> %vec.phi1541.a, splat (i32 1) ; 2 uses
  %i.amm = add <4 x i32> %vec.phi1542, splat (i32 1) ; 2 uses
  %i.amn = getelementptr [8 x i8], ptr %invariant.gep1035, i64 %index1538 ; 4 uses
  %i.amo = getelementptr i8, ptr %i.amn, i64 32
  %i.amp = getelementptr i8, ptr %i.amn, i64 64
  %i.amq = getelementptr i8, ptr %i.amn, i64 96
  %wide.load1543.a = load <4 x double>, ptr %i.amn, align 8, !tbaa !108
  %wide.load1544.a = load <4 x double>, ptr %i.amo, align 8, !tbaa !108
  %wide.load1545.a = load <4 x double>, ptr %i.amp, align 8, !tbaa !108
  %wide.load1546 = load <4 x double>, ptr %i.amq, align 8, !tbaa !108
  %i.amr = getelementptr [8 x i8], ptr %i.ami, i64 %index1538 ; 4 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 32
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amr, i64 64
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amr, i64 96
  store <4 x double> %wide.load1543.a, ptr %i.amr, align 8, !tbaa !108
  store <4 x double> %wide.load1544.a, ptr %i.ams, align 8, !tbaa !108
  store <4 x double> %wide.load1545.a, ptr %i.amt, align 8, !tbaa !108
  store <4 x double> %wide.load1546, ptr %i.amu, align 8, !tbaa !108
  %index.next1547 = add nuw i64 %index1538, 16    ; 2 uses
  %i.amv = icmp eq i64 %index.next1547, %n.vec1536
  br i1 %i.amv, label %middle.block1548, label %vector.body1537, !llvm.loop !75

middle.block1548:                                 ; preds = %vector.body1537
  %bin.rdx1549.a = add <4 x i32> %i.amk, %i.amj
  %bin.rdx1550.a = add <4 x i32> %i.aml, %bin.rdx1549.a
  %bin.rdx1551 = add <4 x i32> %i.amm, %bin.rdx1550.a
  %i.amw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1551) ; 3 uses
  %cmp.n1552 = icmp eq i64 %indvars.iv880, %n.vec1536
  br i1 %cmp.n1552, label %.loopexit1828, label %vec.epilog.iter.check1557

vec.epilog.iter.check1557:                        ; preds = %middle.block1548
  %min.epilog.iters.check1558 = icmp eq i64 %i.amf, 0
  br i1 %min.epilog.iters.check1558, label %vec.epilog.scalar.ph1556.preheader, label %vec.epilog.ph1559, !prof !112

vec.epilog.ph1559:                                ; preds = %vector.main.loop.iter.check1533, %vec.epilog.iter.check1557
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
  br i1 %exitcond865.not.3, label %.loopexit1828, label %vec.epilog.scalar.ph1556, !llvm.loop !78

.loopexit1828:                                    ; preds = %vec.epilog.scalar.ph1556.prol.loopexit, %vec.epilog.scalar.ph1556, %vec.epilog.middle.block1566, %middle.block1548
  %indvars.iv867.lcssa = phi i32 [ %i.ane, %vec.epilog.middle.block1566 ], [ %i.amw, %middle.block1548 ], [ %indvars.iv867.lcssa1867.unr, %vec.epilog.scalar.ph1556.prol.loopexit ], [ %indvars.iv867.3, %vec.epilog.scalar.ph1556 ]
  %indvars.iv.next856.lcssa = phi i64 [ %i.amx, %vec.epilog.middle.block1566 ], [ %i.amg, %middle.block1548 ], [ %indvars.iv.next856.lcssa1866.unr, %vec.epilog.scalar.ph1556.prol.loopexit ], [ %indvars.iv.next856.3, %vec.epilog.scalar.ph1556 ]
  %i.anz = add nuw nsw i64 %indvars.iv882, %i.alk ; 2 uses
  %.not429.not583 = icmp samesign ult i64 %i.anz, %i.all
  br i1 %.not429.not583, label %iter.check1514, label %._crit_edge588

iter.check1514:                                   ; preds = %.loopexit1828
  %i.aoa = mul nsw i64 %i.anz, %i.alj
  %i.aob = sext i32 %indvars.iv867.lcssa to i64   ; 7 uses
  %invariant.gep1037 = getelementptr [8 x i8], ptr %3, i64 %i.aoa ; 11 uses
  %min.iters.check1498 = icmp ult i32 %i.als, 3
  br i1 %min.iters.check1498, label %vec.epilog.scalar.ph1515.preheader, label %vector.memcheck1496

vector.memcheck1496:                              ; preds = %iter.check1514
  %i.aoc = add i64 %i.alv, %i.b
  %i.aod = add i64 %i.aln, %i.alw
  %i.aoe = shl i64 %i.aod, 3
  %i.aof = add i64 %i.aoe, %i.a
  %i.aog = sub i64 %i.aoc, %i.aof
  %i.aoh = shl nsw i64 %i.aob, 3
  %i.aoi = add i64 %i.aog, %i.aoh
  %i.aoj = add i64 %i.aoi, -1
  %diff.check1497 = icmp ult i64 %i.aoj, 127
  br i1 %diff.check1497, label %vec.epilog.scalar.ph1515.preheader, label %vector.main.loop.iter.check1499

vector.main.loop.iter.check1499:                  ; preds = %vector.memcheck1496
  %min.iters.check1500 = icmp ult i32 %i.als, 15
  br i1 %min.iters.check1500, label %vec.epilog.ph1518, label %vector.ph1501

vector.ph1501:                                    ; preds = %vector.main.loop.iter.check1499
  %i.aok = and i64 %i.alu, 12
  %n.vec1502 = and i64 %i.alu, 8589934576         ; 5 uses
  %i.aol = add nsw i64 %n.vec1502, %i.alx
  %i.aom = add nsw i64 %n.vec1502, %i.aob         ; 2 uses
  %invariant.gep2045 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.alx
  %invariant.gep2047 = getelementptr [8 x i8], ptr %5, i64 %i.aob
  br label %vector.body1503

vector.body1503:                                  ; preds = %vector.ph1501, %vector.body1503
  %index1504 = phi i64 [ 0, %vector.ph1501 ], [ %index.next1509, %vector.body1503 ] ; 3 uses
  %gep2046 = getelementptr [8 x i8], ptr %invariant.gep2045, i64 %index1504 ; 4 uses
  %i.aon = getelementptr i8, ptr %gep2046, i64 32
  %i.aoo = getelementptr i8, ptr %gep2046, i64 64
  %i.aop = getelementptr i8, ptr %gep2046, i64 96
  %wide.load1505.a = load <4 x double>, ptr %gep2046, align 8, !tbaa !108
  %wide.load1506.a = load <4 x double>, ptr %i.aon, align 8, !tbaa !108
  %wide.load1507.a = load <4 x double>, ptr %i.aoo, align 8, !tbaa !108
  %wide.load1508 = load <4 x double>, ptr %i.aop, align 8, !tbaa !108
  %gep2048 = getelementptr [8 x i8], ptr %invariant.gep2047, i64 %index1504 ; 4 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %gep2048, i64 32
  %i.aor = getelementptr inbounds nuw i8, ptr %gep2048, i64 64
  %i.aos = getelementptr inbounds nuw i8, ptr %gep2048, i64 96
  store <4 x double> %wide.load1505.a, ptr %gep2048, align 8, !tbaa !108
  store <4 x double> %wide.load1506.a, ptr %i.aoq, align 8, !tbaa !108
  store <4 x double> %wide.load1507.a, ptr %i.aor, align 8, !tbaa !108
  store <4 x double> %wide.load1508, ptr %i.aos, align 8, !tbaa !108
  %index.next1509 = add nuw i64 %index1504, 16    ; 2 uses
  %i.aot = icmp eq i64 %index.next1509, %n.vec1502
  br i1 %i.aot, label %middle.block1510, label %vector.body1503, !llvm.loop !79

middle.block1510:                                 ; preds = %vector.body1503
  %cmp.n1511 = icmp eq i64 %i.alu, %n.vec1502
  br i1 %cmp.n1511, label %._crit_edge588, label %vec.epilog.iter.check1516

vec.epilog.iter.check1516:                        ; preds = %middle.block1510
  %min.epilog.iters.check1517 = icmp eq i64 %i.aok, 0
  br i1 %min.epilog.iters.check1517, label %vec.epilog.scalar.ph1515.preheader, label %vec.epilog.ph1518, !prof !112

vec.epilog.ph1518:                                ; preds = %vector.main.loop.iter.check1499, %vec.epilog.iter.check1516
  %vec.epilog.resume.val1512 = phi i64 [ %n.vec1502, %vec.epilog.iter.check1516 ], [ 0, %vector.main.loop.iter.check1499 ]
  %n.vec1519 = and i64 %i.alu, 8589934588         ; 4 uses
  %i.aou = add nsw i64 %n.vec1519, %i.alx
  %i.aov = add nsw i64 %n.vec1519, %i.aob         ; 2 uses
  %invariant.gep2049 = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %i.alx
  %invariant.gep2051 = getelementptr [8 x i8], ptr %5, i64 %i.aob
  br label %vec.epilog.vector.body1520

vec.epilog.vector.body1520:                       ; preds = %vec.epilog.vector.body1520, %vec.epilog.ph1518
  %index1521 = phi i64 [ %vec.epilog.resume.val1512, %vec.epilog.ph1518 ], [ %index.next1523, %vec.epilog.vector.body1520 ] ; 3 uses
  %gep2050 = getelementptr [8 x i8], ptr %invariant.gep2049, i64 %index1521
  %wide.load1522 = load <4 x double>, ptr %gep2050, align 8, !tbaa !108
  %gep2052 = getelementptr [8 x i8], ptr %invariant.gep2051, i64 %index1521
  store <4 x double> %wide.load1522, ptr %gep2052, align 8, !tbaa !108
  %index.next1523 = add nuw i64 %index1521, 4     ; 2 uses
  %i.aow = icmp eq i64 %index.next1523, %n.vec1519
  br i1 %i.aow, label %vec.epilog.middle.block1524, label %vec.epilog.vector.body1520, !llvm.loop !80

vec.epilog.middle.block1524:                      ; preds = %vec.epilog.vector.body1520
  %cmp.n1525 = icmp eq i64 %i.alu, %n.vec1519
  br i1 %cmp.n1525, label %._crit_edge588, label %vec.epilog.scalar.ph1515.preheader

vec.epilog.scalar.ph1515.preheader:               ; preds = %iter.check1514, %vector.memcheck1496, %vec.epilog.iter.check1516, %vec.epilog.middle.block1524
  %indvars.iv873.ph = phi i64 [ %i.alx, %iter.check1514 ], [ %i.alx, %vector.memcheck1496 ], [ %i.aol, %vec.epilog.iter.check1516 ], [ %i.aou, %vec.epilog.middle.block1524 ] ; 3 uses
  %indvars.iv869.ph = phi i64 [ %i.aob, %iter.check1514 ], [ %i.aob, %vector.memcheck1496 ], [ %i.aom, %vec.epilog.iter.check1516 ], [ %i.aov, %vec.epilog.middle.block1524 ] ; 2 uses
  %i.aox = trunc i64 %indvars.iv873.ph to i32     ; 2 uses
  %i.aoy = sub i32 %i.i, %i.aox
  %xtraiter1937 = and i32 %i.aoy, 7               ; 2 uses
  %lcmp.mod1938.not = icmp eq i32 %xtraiter1937, 0
  br i1 %lcmp.mod1938.not, label %vec.epilog.scalar.ph1515.prol.loopexit, label %vec.epilog.scalar.ph1515.prol

vec.epilog.scalar.ph1515.prol:                    ; preds = %vec.epilog.scalar.ph1515.preheader, %vec.epilog.scalar.ph1515.prol
  %indvars.iv873.prol = phi i64 [ %indvars.iv.next874.prol, %vec.epilog.scalar.ph1515.prol ], [ %indvars.iv873.ph, %vec.epilog.scalar.ph1515.preheader ] ; 2 uses
  %indvars.iv869.prol = phi i64 [ %indvars.iv.next870.prol, %vec.epilog.scalar.ph1515.prol ], [ %indvars.iv869.ph, %vec.epilog.scalar.ph1515.preheader ] ; 2 uses
  %prol.iter1939 = phi i32 [ %prol.iter1939.next, %vec.epilog.scalar.ph1515.prol ], [ 0, %vec.epilog.scalar.ph1515.preheader ]
  %gep1038.prol = getelementptr [8 x i8], ptr %invariant.gep1037, i64 %indvars.iv873.prol
  %i.aoz = load double, ptr %gep1038.prol, align 8, !tbaa !108
  %i.apa = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv869.prol
  store double %i.aoz, ptr %i.apa, align 8, !tbaa !108
  %indvars.iv.next870.prol = add nsw i64 %indvars.iv869.prol, 1 ; 3 uses
  %indvars.iv.next874.prol = add nsw i64 %indvars.iv873.prol, 1 ; 2 uses
  %prol.iter1939.next = add i32 %prol.iter1939, 1 ; 2 uses
  %prol.iter1939.cmp.not = icmp eq i32 %prol.iter1939.next, %xtraiter1937
  br i1 %prol.iter1939.cmp.not, label %vec.epilog.scalar.ph1515.prol.loopexit, label %vec.epilog.scalar.ph1515.prol, !llvm.loop !81

vec.epilog.scalar.ph1515.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1515.prol, %vec.epilog.scalar.ph1515.preheader
  %indvars.iv.next870.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph1515.preheader ], [ %indvars.iv.next870.prol, %vec.epilog.scalar.ph1515.prol ]
  %indvars.iv873.unr = phi i64 [ %indvars.iv873.ph, %vec.epilog.scalar.ph1515.preheader ], [ %indvars.iv.next874.prol, %vec.epilog.scalar.ph1515.prol ]
  %indvars.iv869.unr = phi i64 [ %indvars.iv869.ph, %vec.epilog.scalar.ph1515.preheader ], [ %indvars.iv.next870.prol, %vec.epilog.scalar.ph1515.prol ]
  %i.apb = sub i32 %i.aox, %i.i
  %i.apc = icmp ugt i32 %i.apb, -8
  br i1 %i.apc, label %._crit_edge588, label %vec.epilog.scalar.ph1515

vec.epilog.scalar.ph1515:                         ; preds = %vec.epilog.scalar.ph1515.prol.loopexit, %vec.epilog.scalar.ph1515
  %indvars.iv873 = phi i64 [ %indvars.iv.next874.7, %vec.epilog.scalar.ph1515 ], [ %indvars.iv873.unr, %vec.epilog.scalar.ph1515.prol.loopexit ] ; 9 uses
  %indvars.iv869 = phi i64 [ %indvars.iv.next870.7, %vec.epilog.scalar.ph1515 ], [ %indvars.iv869.unr, %vec.epilog.scalar.ph1515.prol.loopexit ] ; 9 uses
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
  br i1 %exitcond879.not.7, label %._crit_edge588, label %vec.epilog.scalar.ph1515, !llvm.loop !82

._crit_edge588:                                   ; preds = %vec.epilog.scalar.ph1515.prol.loopexit, %vec.epilog.scalar.ph1515, %middle.block1510, %vec.epilog.middle.block1524, %.loopexit1828
  %.25.lcssa.in = phi i64 [ %indvars.iv.next856.lcssa, %.loopexit1828 ], [ %i.aov, %vec.epilog.middle.block1524 ], [ %i.aom, %middle.block1510 ], [ %indvars.iv.next870.lcssa.unr, %vec.epilog.scalar.ph1515.prol.loopexit ], [ %indvars.iv.next870.7, %vec.epilog.scalar.ph1515 ] ; 2 uses
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 1 ; 2 uses
  %indvars.iv.next881 = add nuw nsw i64 %indvars.iv880, 1
  %indvars.iv.next872 = add nuw i32 %indvars.iv871, 1
  %exitcond888.not = icmp eq i64 %indvars.iv.next883, %wide.trip.count887
  br i1 %exitcond888.not, label %.preheader471.preheader, label %iter.check1555, !llvm.loop !83

.preheader471.preheader:                          ; preds = %._crit_edge588, %._crit_edge579
  %.23.lcssa = phi i64 [ %indvars.iv.next851.lcssa, %._crit_edge579 ], [ %.25.lcssa.in, %._crit_edge588 ]
  %i.aqh = sext i32 %i.d to i64                   ; 9 uses
  %i.aqi = lshr exact i32 %i.i, 1                 ; 2 uses
  %i.aqj = zext nneg i32 %i.aqi to i64
  %i.aqk = add nsw i64 %i.aqj, -1
  %smax900 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 %i.v)
  %i.aql = add nuw i32 %smax900, %i.aqi
  %i.aqm = sub i32 %i.aql, %i.v
  %wide.trip.count901 = zext i32 %i.aqm to i64
  %sext993 = shl i64 %.23.lcssa, 32
  %i.aqn = ashr exact i64 %sext993, 32
  %wide.trip.count896 = zext nneg i32 %i.v to i64
  %i.aqo = add i64 %i.b, 8
  %min.iters.check1577 = icmp ugt i32 %i.i, 7
  %ident.check1572.not = icmp eq i32 %i.d, 1
  %or.cond1841.a = select i1 %min.iters.check1577, i1 %ident.check1572.not, i1 false
  %min.iters.check1579 = icmp ult i32 %i.i, 32
  %i.aqp = and i64 %i.akk, 12
  %n.vec1581 = and i64 %i.akk, 1073741808         ; 5 uses
  %cmp.n1590 = icmp eq i64 %n.vec1581, %i.akk
  %min.epilog.iters.check1595 = icmp eq i64 %i.aqp, 0
  %n.vec1597 = and i64 %i.akk, 1073741820         ; 4 uses
  %cmp.n1603 = icmp eq i64 %n.vec1597, %i.akk
  br label %iter.check1592

iter.check1592:                                   ; preds = %.preheader471.preheader, %._crit_edge599
  %indvar1574 = phi i64 [ 0, %.preheader471.preheader ], [ %indvar.next1575, %._crit_edge599 ] ; 2 uses
  %indvars.iv898 = phi i64 [ %i.aqk, %.preheader471.preheader ], [ %indvars.iv.next899, %._crit_edge599 ] ; 2 uses
  %.26603 = phi i64 [ %i.aqn, %.preheader471.preheader ], [ %indvars.iv.next890.lcssa, %._crit_edge599 ] ; 7 uses
  %invariant.gep1039 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv898 ; 11 uses
  br i1 %or.cond1841.a, label %vector.memcheck1573, label %vec.epilog.scalar.ph1593.preheader

vector.memcheck1573:                              ; preds = %iter.check1592
  %i.aqq = add i64 %indvar1574, %i.akk
  %i.aqr = shl i64 %i.aqq, 3
  %i.aqs = add i64 %i.aqr, %i.a
  %i.aqt = sub i64 %i.aqo, %i.aqs
  %i.aqu = shl i64 %.26603, 3
  %i.aqv = add i64 %i.aqt, %i.aqu
  %i.aqw = add i64 %i.aqv, -1
  %diff.check1576 = icmp ult i64 %i.aqw, 127
  br i1 %diff.check1576, label %vec.epilog.scalar.ph1593.preheader, label %vector.main.loop.iter.check1578

vector.main.loop.iter.check1578:                  ; preds = %vector.memcheck1573
  br i1 %min.iters.check1579, label %vec.epilog.ph1596, label %vector.ph1580

vector.ph1580:                                    ; preds = %vector.main.loop.iter.check1578
  %i.aqx = add i64 %.26603, %n.vec1581            ; 2 uses
  %i.aqy = getelementptr [8 x i8], ptr %5, i64 %.26603
  br label %vector.body1582

vector.body1582:                                  ; preds = %vector.ph1580, %vector.body1582
  %index1583 = phi i64 [ 0, %vector.ph1580 ], [ %index.next1588, %vector.body1582 ] ; 3 uses
  %i.aqz = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1583 ; 4 uses
  %i.ara = getelementptr i8, ptr %i.aqz, i64 32
  %i.arb = getelementptr i8, ptr %i.aqz, i64 64
  %i.arc = getelementptr i8, ptr %i.aqz, i64 96
  %wide.load1584.a = load <4 x double>, ptr %i.aqz, align 8, !tbaa !108
  %wide.load1585.a = load <4 x double>, ptr %i.ara, align 8, !tbaa !108
  %wide.load1586.a = load <4 x double>, ptr %i.arb, align 8, !tbaa !108
  %wide.load1587 = load <4 x double>, ptr %i.arc, align 8, !tbaa !108
  %i.ard = getelementptr [8 x i8], ptr %i.aqy, i64 %index1583 ; 4 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 32
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ard, i64 64
  %i.arg = getelementptr inbounds nuw i8, ptr %i.ard, i64 96
  store <4 x double> %wide.load1584.a, ptr %i.ard, align 8, !tbaa !108
  store <4 x double> %wide.load1585.a, ptr %i.are, align 8, !tbaa !108
  store <4 x double> %wide.load1586.a, ptr %i.arf, align 8, !tbaa !108
  store <4 x double> %wide.load1587, ptr %i.arg, align 8, !tbaa !108
  %index.next1588 = add nuw i64 %index1583, 16    ; 2 uses
  %i.arh = icmp eq i64 %index.next1588, %n.vec1581
  br i1 %i.arh, label %middle.block1589, label %vector.body1582, !llvm.loop !84

middle.block1589:                                 ; preds = %vector.body1582
  br i1 %cmp.n1590, label %._crit_edge599, label %vec.epilog.iter.check1594

vec.epilog.iter.check1594:                        ; preds = %middle.block1589
  br i1 %min.epilog.iters.check1595, label %vec.epilog.scalar.ph1593.preheader, label %vec.epilog.ph1596, !prof !112

vec.epilog.ph1596:                                ; preds = %vector.main.loop.iter.check1578, %vec.epilog.iter.check1594
  %vec.epilog.resume.val1591 = phi i64 [ %n.vec1581, %vec.epilog.iter.check1594 ], [ 0, %vector.main.loop.iter.check1578 ]
  %i.ari = add i64 %.26603, %n.vec1597            ; 2 uses
  %i.arj = getelementptr [8 x i8], ptr %5, i64 %.26603
  br label %vec.epilog.vector.body1598

vec.epilog.vector.body1598:                       ; preds = %vec.epilog.vector.body1598, %vec.epilog.ph1596
  %index1599 = phi i64 [ %vec.epilog.resume.val1591, %vec.epilog.ph1596 ], [ %index.next1601, %vec.epilog.vector.body1598 ] ; 3 uses
  %i.ark = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %index1599
  %wide.load1600 = load <4 x double>, ptr %i.ark, align 8, !tbaa !108
  %i.arl = getelementptr [8 x i8], ptr %i.arj, i64 %index1599
  store <4 x double> %wide.load1600, ptr %i.arl, align 8, !tbaa !108
  %index.next1601 = add nuw i64 %index1599, 4     ; 2 uses
  %i.arm = icmp eq i64 %index.next1601, %n.vec1597
  br i1 %i.arm, label %vec.epilog.middle.block1602, label %vec.epilog.vector.body1598, !llvm.loop !85

vec.epilog.middle.block1602:                      ; preds = %vec.epilog.vector.body1598
  br i1 %cmp.n1603, label %._crit_edge599, label %vec.epilog.scalar.ph1593.preheader

vec.epilog.scalar.ph1593.preheader:               ; preds = %iter.check1592, %vector.memcheck1573, %vec.epilog.iter.check1594, %vec.epilog.middle.block1602
  %indvars.iv891.ph = phi i64 [ 0, %iter.check1592 ], [ 0, %vector.memcheck1573 ], [ %n.vec1581, %vec.epilog.iter.check1594 ], [ %n.vec1597, %vec.epilog.middle.block1602 ] ; 4 uses
  %indvars.iv889.ph = phi i64 [ %.26603, %iter.check1592 ], [ %.26603, %vector.memcheck1573 ], [ %i.aqx, %vec.epilog.iter.check1594 ], [ %i.ari, %vec.epilog.middle.block1602 ] ; 2 uses
  %i.arn = sub nsw i64 %i.akk, %indvars.iv891.ph
  %xtraiter1940 = and i64 %i.arn, 7               ; 2 uses
  %lcmp.mod1941.not = icmp eq i64 %xtraiter1940, 0
  br i1 %lcmp.mod1941.not, label %vec.epilog.scalar.ph1593.prol.loopexit, label %vec.epilog.scalar.ph1593.prol

vec.epilog.scalar.ph1593.prol:                    ; preds = %vec.epilog.scalar.ph1593.preheader, %vec.epilog.scalar.ph1593.prol
  %indvars.iv891.prol = phi i64 [ %indvars.iv.next892.prol, %vec.epilog.scalar.ph1593.prol ], [ %indvars.iv891.ph, %vec.epilog.scalar.ph1593.preheader ] ; 2 uses
  %indvars.iv889.prol = phi i64 [ %indvars.iv.next890.prol, %vec.epilog.scalar.ph1593.prol ], [ %indvars.iv889.ph, %vec.epilog.scalar.ph1593.preheader ] ; 2 uses
  %prol.iter1942 = phi i64 [ %prol.iter1942.next, %vec.epilog.scalar.ph1593.prol ], [ 0, %vec.epilog.scalar.ph1593.preheader ]
  %i.aro = mul nsw i64 %indvars.iv891.prol, %i.aqh
  %gep1040.prol = getelementptr [8 x i8], ptr %invariant.gep1039, i64 %i.aro
  %i.arp = load double, ptr %gep1040.prol, align 8, !tbaa !108
  %i.arq = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv889.prol
  store double %i.arp, ptr %i.arq, align 8, !tbaa !108
  %indvars.iv.next890.prol = add nsw i64 %indvars.iv889.prol, 1 ; 3 uses
  %indvars.iv.next892.prol = add nuw nsw i64 %indvars.iv891.prol, 1 ; 2 uses
  %prol.iter1942.next = add i64 %prol.iter1942, 1 ; 2 uses
  %prol.iter1942.cmp.not = icmp eq i64 %prol.iter1942.next, %xtraiter1940
  br i1 %prol.iter1942.cmp.not, label %vec.epilog.scalar.ph1593.prol.loopexit, label %vec.epilog.scalar.ph1593.prol, !llvm.loop !86

vec.epilog.scalar.ph1593.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1593.prol, %vec.epilog.scalar.ph1593.preheader
  %indvars.iv.next890.lcssa1860.unr = phi i64 [ poison, %vec.epilog.scalar.ph1593.preheader ], [ %indvars.iv.next890.prol, %vec.epilog.scalar.ph1593.prol ]
  %indvars.iv891.unr = phi i64 [ %indvars.iv891.ph, %vec.epilog.scalar.ph1593.preheader ], [ %indvars.iv.next892.prol, %vec.epilog.scalar.ph1593.prol ]
  %indvars.iv889.unr = phi i64 [ %indvars.iv889.ph, %vec.epilog.scalar.ph1593.preheader ], [ %indvars.iv.next890.prol, %vec.epilog.scalar.ph1593.prol ]
  %i.arr = sub nsw i64 %indvars.iv891.ph, %i.akk
  %i.ars = icmp ugt i64 %i.arr, -8
  br i1 %i.ars, label %._crit_edge599, label %vec.epilog.scalar.ph1593

vec.epilog.scalar.ph1593:                         ; preds = %vec.epilog.scalar.ph1593.prol.loopexit, %vec.epilog.scalar.ph1593
  %indvars.iv891 = phi i64 [ %indvars.iv.next892.7, %vec.epilog.scalar.ph1593 ], [ %indvars.iv891.unr, %vec.epilog.scalar.ph1593.prol.loopexit ] ; 9 uses
  %indvars.iv889 = phi i64 [ %indvars.iv.next890.7, %vec.epilog.scalar.ph1593 ], [ %indvars.iv889.unr, %vec.epilog.scalar.ph1593.prol.loopexit ] ; 9 uses
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
  br i1 %exitcond897.not.7, label %._crit_edge599, label %vec.epilog.scalar.ph1593, !llvm.loop !87

._crit_edge599:                                   ; preds = %vec.epilog.scalar.ph1593.prol.loopexit, %vec.epilog.scalar.ph1593, %vec.epilog.middle.block1602, %middle.block1589
  %indvars.iv.next890.lcssa = phi i64 [ %i.ari, %vec.epilog.middle.block1602 ], [ %i.aqx, %middle.block1589 ], [ %indvars.iv.next890.lcssa1860.unr, %vec.epilog.scalar.ph1593.prol.loopexit ], [ %indvars.iv.next890.7, %vec.epilog.scalar.ph1593 ]
  %indvars.iv.next899 = add nsw i64 %indvars.iv898, 1 ; 2 uses
  %exitcond902.not = icmp eq i64 %indvars.iv.next899, %wide.trip.count901
  %indvar.next1575 = add i64 %indvar1574, 1
  br i1 %exitcond902.not, label %.loopexit, label %iter.check1592, !llvm.loop !88

.preheader468.us.preheader:                       ; preds = %bb.p
  %i.asy = lshr exact i32 %i.i, 1
  %i.asz = zext nneg i32 %i.asy to i64            ; 9 uses
  %i.ata = sext i32 %i.d to i64                   ; 2 uses
  %i.atb = zext nneg i32 %i.i to i64              ; 2 uses
  %i.atc = add nuw nsw i32 %i.v, 1
  %wide.trip.count937 = zext nneg i32 %i.atc to i64 ; 2 uses
  %umax1687 = tail call i64 @llvm.umax.i64(i64 %wide.trip.count937, i64 %i.atb)
  %i.atd = sub nsw i64 %umax1687, %i.asz          ; 7 uses
  %min.iters.check1688 = icmp ugt i64 %i.atd, 3
  %ident.check1684.not = icmp eq i32 %i.d, 1
  %or.cond1842.a = select i1 %min.iters.check1688, i1 %ident.check1684.not, i1 false
  %min.iters.check1690 = icmp ult i64 %i.atd, 16
  %i.ate = and i64 %i.atd, 12
  %n.vec1692 = and i64 %i.atd, -16                ; 5 uses
  %i.atf = add nsw i64 %n.vec1692, %i.asz
  %cmp.n1701 = icmp eq i64 %i.atd, %n.vec1692
  %min.epilog.iters.check1707 = icmp eq i64 %i.ate, 0
  %n.vec1709 = and i64 %i.atd, -4                 ; 4 uses
  %i.atg = add nsw i64 %n.vec1709, %i.asz
  %cmp.n1715 = icmp eq i64 %i.atd, %n.vec1709
  br label %iter.check1704

iter.check1704:                                   ; preds = %.preheader468.us.preheader, %._crit_edge622.us
  %indvars.iv934 = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next935, %._crit_edge622.us ] ; 3 uses
  %.28625.us = phi i64 [ 0, %.preheader468.us.preheader ], [ %indvars.iv.next930.lcssa, %._crit_edge622.us ] ; 7 uses
  %invariant.gep1045 = getelementptr [8 x i8], ptr %3, i64 %indvars.iv934 ; 3 uses
  br i1 %or.cond1842.a, label %vector.memcheck1685, label %vec.epilog.scalar.ph1705.preheader

vector.memcheck1685:                              ; preds = %iter.check1704
  %i.ath = add nuw i64 %indvars.iv934, %i.asz
  %i.ati = shl i64 %i.ath, 3
  %i.atj = add i64 %i.ati, %i.a
  %i.atk = sub i64 %i.b, %i.atj
  %i.atl = shl i64 %.28625.us, 3
  %i.atm = add i64 %i.atk, %i.atl
  %i.atn = add i64 %i.atm, -1
  %diff.check1686 = icmp ult i64 %i.atn, 127
  br i1 %diff.check1686, label %vec.epilog.scalar.ph1705.preheader, label %vector.main.loop.iter.check1689

vector.main.loop.iter.check1689:                  ; preds = %vector.memcheck1685
  br i1 %min.iters.check1690, label %vec.epilog.ph1708, label %vector.ph1691

vector.ph1691:                                    ; preds = %vector.main.loop.iter.check1689
  %i.ato = add i64 %.28625.us, %n.vec1692         ; 2 uses
  %invariant.gep2065 = getelementptr [8 x i8], ptr %invariant.gep1045, i64 %i.asz
  %i.atp = getelementptr [8 x i8], ptr %5, i64 %.28625.us
  br label %vector.body1693

vector.body1693:                                  ; preds = %vector.ph1691, %vector.body1693
  %index1694 = phi i64 [ 0, %vector.ph1691 ], [ %index.next1699, %vector.body1693 ] ; 3 uses
  %gep2066 = getelementptr [8 x i8], ptr %invariant.gep2065, i64 %index1694 ; 4 uses
  %i.atq = getelementptr i8, ptr %gep2066, i64 32
  %i.atr = getelementptr i8, ptr %gep2066, i64 64
  %i.ats = getelementptr i8, ptr %gep2066, i64 96
  %wide.load1695.a = load <4 x double>, ptr %gep2066, align 8, !tbaa !108
  %wide.load1696.a = load <4 x double>, ptr %i.atq, align 8, !tbaa !108
  %wide.load1697.a = load <4 x double>, ptr %i.atr, align 8, !tbaa !108
  %wide.load1698 = load <4 x double>, ptr %i.ats, align 8, !tbaa !108
  %i.att = getelementptr [8 x i8], ptr %i.atp, i64 %index1694 ; 4 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 32
  %i.atv = getelementptr inbounds nuw i8, ptr %i.att, i64 64
  %i.atw = getelementptr inbounds nuw i8, ptr %i.att, i64 96
  store <4 x double> %wide.load1695.a, ptr %i.att, align 8, !tbaa !108
  store <4 x double> %wide.load1696.a, ptr %i.atu, align 8, !tbaa !108
  store <4 x double> %wide.load1697.a, ptr %i.atv, align 8, !tbaa !108
  store <4 x double> %wide.load1698, ptr %i.atw, align 8, !tbaa !108
  %index.next1699 = add nuw i64 %index1694, 16    ; 2 uses
  %i.atx = icmp eq i64 %index.next1699, %n.vec1692
  br i1 %i.atx, label %middle.block1700, label %vector.body1693, !llvm.loop !89

middle.block1700:                                 ; preds = %vector.body1693
  br i1 %cmp.n1701, label %._crit_edge622.us, label %vec.epilog.iter.check1706

vec.epilog.iter.check1706:                        ; preds = %middle.block1700
  br i1 %min.epilog.iters.check1707, label %vec.epilog.scalar.ph1705.preheader, label %vec.epilog.ph1708, !prof !112

vec.epilog.ph1708:                                ; preds = %vector.main.loop.iter.check1689, %vec.epilog.iter.check1706
  %vec.epilog.resume.val1702 = phi i64 [ %n.vec1692, %vec.epilog.iter.check1706 ], [ 0, %vector.main.loop.iter.check1689 ]
  %i.aty = add i64 %.28625.us, %n.vec1709         ; 2 uses
  %invariant.gep2067 = getelementptr [8 x i8], ptr %invariant.gep1045, i64 %i.asz
  %i.atz = getelementptr [8 x i8], ptr %5, i64 %.28625.us
  br label %vec.epilog.vector.body1710

vec.epilog.vector.body1710:                       ; preds = %vec.epilog.vector.body1710, %vec.epilog.ph1708
  %index1711 = phi i64 [ %vec.epilog.resume.val1702, %vec.epilog.ph1708 ], [ %index.next1713, %vec.epilog.vector.body1710 ] ; 3 uses
  %gep2068 = getelementptr [8 x i8], ptr %invariant.gep2067, i64 %index1711
  %wide.load1712 = load <4 x double>, ptr %gep2068, align 8, !tbaa !108
  %i.aua = getelementptr [8 x i8], ptr %i.atz, i64 %index1711
  store <4 x double> %wide.load1712, ptr %i.aua, align 8, !tbaa !108
  %index.next1713 = add nuw i64 %index1711, 4     ; 2 uses
  %i.aub = icmp eq i64 %index.next1713, %n.vec1709
  br i1 %i.aub, label %vec.epilog.middle.block1714, label %vec.epilog.vector.body1710, !llvm.loop !90

vec.epilog.middle.block1714:                      ; preds = %vec.epilog.vector.body1710
  br i1 %cmp.n1715, label %._crit_edge622.us, label %vec.epilog.scalar.ph1705.preheader

vec.epilog.scalar.ph1705.preheader:               ; preds = %iter.check1704, %vector.memcheck1685, %vec.epilog.iter.check1706, %vec.epilog.middle.block1714
  %indvars.iv931.ph = phi i64 [ %i.asz, %iter.check1704 ], [ %i.asz, %vector.memcheck1685 ], [ %i.atf, %vec.epilog.iter.check1706 ], [ %i.atg, %vec.epilog.middle.block1714 ]
  %indvars.iv929.ph = phi i64 [ %.28625.us, %iter.check1704 ], [ %.28625.us, %vector.memcheck1685 ], [ %i.ato, %vec.epilog.iter.check1706 ], [ %i.aty, %vec.epilog.middle.block1714 ]
  br label %vec.epilog.scalar.ph1705

vec.epilog.scalar.ph1705:                         ; preds = %vec.epilog.scalar.ph1705.preheader, %vec.epilog.scalar.ph1705
  %indvars.iv931 = phi i64 [ %indvars.iv.next932, %vec.epilog.scalar.ph1705 ], [ %indvars.iv931.ph, %vec.epilog.scalar.ph1705.preheader ] ; 2 uses
  %indvars.iv929 = phi i64 [ %indvars.iv.next930, %vec.epilog.scalar.ph1705 ], [ %indvars.iv929.ph, %vec.epilog.scalar.ph1705.preheader ] ; 2 uses
  %i.auc = mul nsw i64 %indvars.iv931, %i.ata
  %gep1046 = getelementptr [8 x i8], ptr %invariant.gep1045, i64 %i.auc
  %i.aud = load double, ptr %gep1046, align 8, !tbaa !108
  %i.aue = getelementptr inbounds [8 x i8], ptr %5, i64 %indvars.iv929
  store double %i.aud, ptr %i.aue, align 8, !tbaa !108
  %indvars.iv.next930 = add nsw i64 %indvars.iv929, 1 ; 2 uses
  %indvars.iv.next932 = add nuw nsw i64 %indvars.iv931, 1 ; 2 uses
  %.not423.not.us = icmp samesign ult i64 %indvars.iv.next932, %i.atb
  br i1 %.not423.not.us, label %vec.epilog.scalar.ph1705, label %._crit_edge622.us, !llvm.loop !91

._crit_edge622.us:                                ; preds = %vec.epilog.scalar.ph1705, %vec.epilog.middle.block1714, %middle.block1700
  %indvars.iv.next930.lcssa = phi i64 [ %i.aty, %vec.epilog.middle.block1714 ], [ %i.ato, %middle.block1700 ], [ %indvars.iv.next930, %vec.epilog.scalar.ph1705 ] ; 3 uses
  %indvars.iv.next935 = add nuw nsw i64 %indvars.iv934, 1 ; 2 uses
  %exitcond938.not = icmp eq i64 %indvars.iv.next935, %wide.trip.count937
  br i1 %exitcond938.not, label %.split627.us, label %iter.check1704, !llvm.loop !92

.split627.us:                                     ; preds = %._crit_edge622.us
  %.not419638 = icmp ult i32 %i.i, 4
  br i1 %.not419638, label %iter.check1812, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.split627.us
  %i.auf = add nuw nsw i32 %i.v, 1                ; 2 uses
  %i.aug = sext i32 %i.d to i64                   ; 10 uses
end_hunk_1
