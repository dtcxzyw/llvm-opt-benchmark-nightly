Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/EncodedVectorCopy?download=true
inline.NumInlined: 11502
inline.NumDeleted: 2542
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8facebook5velox12_GLOBAL__N_18copyImplERKNS0_24EncodedVectorCopyOptionsERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS6_9CopyRangeEEERS7_b:bb.a
  %cmp.n = icmp eq i64 %n.vec1494, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %vec.epilog.iter.check1524

vec.epilog.iter.check1524:                        ; preds = %middle.block1516
  %min.epilog.iters.check1525 = icmp eq i64 %i.zj, 0
  br i1 %min.epilog.iters.check1525, label %.lr.ph.i74.i.preheader, label %vec.epilog.ph1526, !prof !150

vec.epilog.ph1526:                                ; preds = %vector.main.loop.iter.check1491, %vec.epilog.iter.check1524
  %vec.epilog.resume.val1520 = phi i64 [ %n.vec1494, %vec.epilog.iter.check1524 ], [ 0, %vector.main.loop.iter.check1491 ] ; 2 uses
  %bc.merge.rdx1521 = phi i32 [ %i.aaz, %vec.epilog.iter.check1524 ], [ 0, %vector.main.loop.iter.check1491 ]
  %n.vec1527 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert1528 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1521, i64 0
  %broadcast.splat1529 = shufflevector <4 x i32> %broadcast.splatinsert1528, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1530 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val1520, i64 0
  %broadcast.splat1531 = shufflevector <4 x i64> %broadcast.splatinsert1530, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat1531, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1532

vec.epilog.vector.body1532:                       ; preds = %vec.epilog.vector.body1532, %vec.epilog.ph1526
  %index1533 = phi i64 [ %vec.epilog.resume.val1520, %vec.epilog.ph1526 ], [ %index.next1540, %vec.epilog.vector.body1532 ] ; 3 uses
  %vec.ind1534 = phi <4 x i64> [ %induction, %vec.epilog.ph1526 ], [ %vec.ind.next1541, %vec.epilog.vector.body1532 ] ; 2 uses
  %vec.phi1535 = phi <4 x i32> [ %broadcast.splat1529, %vec.epilog.ph1526 ], [ %predphi1539, %vec.epilog.vector.body1532 ] ; 2 uses
  %i.aba = lshr i64 %index1533, 6
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.aba
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !149
  %broadcast.splatinsert1536 = insertelement <4 x i64> poison, i64 %i.abc, i64 0
  %broadcast.splat1537 = shufflevector <4 x i64> %broadcast.splatinsert1536, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.abd = and <4 x i64> %vec.ind1534, splat (i64 63)
  %i.abe = shl nuw <4 x i64> splat (i64 1), %i.abd
  %i.abf = and <4 x i64> %broadcast.splat1537, %i.abe
  %i.abg = icmp ne <4 x i64> %i.abf, zeroinitializer ; 2 uses
  %i.abh = getelementptr [4 x i8], ptr %i.zg, i64 %index1533
  %wide.masked.load1538 = call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 4 %i.abh, <4 x i1> %i.abg, <4 x i32> poison), !tbaa !101
  %i.abi = add nsw <4 x i32> %wide.masked.load1538, splat (i32 1)
  %i.abj = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1535, <4 x i32> %i.abi)
  %predphi1539 = select <4 x i1> %i.abg, <4 x i32> %i.abj, <4 x i32> %vec.phi1535 ; 2 uses
  %index.next1540 = add nuw i64 %index1533, 4     ; 2 uses
  %vec.ind.next1541 = add nuw nsw <4 x i64> %vec.ind1534, splat (i64 4)
  %i.abk = icmp eq i64 %index.next1540, %n.vec1527
  br i1 %i.abk, label %vec.epilog.middle.block1542, label %vec.epilog.vector.body1532, !llvm.loop !622

vec.epilog.middle.block1542:                      ; preds = %vec.epilog.vector.body1532
  %i.abl = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %predphi1539) ; 2 uses
  %cmp.n1543 = icmp eq i64 %n.vec1527, %wide.trip.count.i.i
  br i1 %cmp.n1543, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %.lr.ph.i74.i.preheader

.lr.ph.i74.i.preheader:                           ; preds = %iter.check1522, %vec.epilog.iter.check1524, %vec.epilog.middle.block1542
  %indvars.iv.i.i207.ph = phi i64 [ 0, %iter.check1522 ], [ %n.vec1494, %vec.epilog.iter.check1524 ], [ %n.vec1527, %vec.epilog.middle.block1542 ]
  %.02831.i.i.ph = phi i32 [ 0, %iter.check1522 ], [ %i.aaz, %vec.epilog.iter.check1524 ], [ %i.abl, %vec.epilog.middle.block1542 ]
  br label %.lr.ph.i74.i

.preheader.i.i209:                                ; preds = %_ZNK8facebook5velox13DecodedVector7indicesEv.exit.i.i
  br i1 %i.zi, label %iter.check1567, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i

iter.check1567:                                   ; preds = %.preheader.i.i209
  %wide.trip.count42.i.i = zext nneg i32 %i.zh to i64 ; 6 uses
  %min.iters.check1545 = icmp ult i32 %i.zh, 4
  br i1 %min.iters.check1545, label %.lr.ph35.i.i.preheader, label %vector.main.loop.iter.check1546

vector.main.loop.iter.check1546:                  ; preds = %iter.check1567
  %min.iters.check1547 = icmp ult i32 %i.zh, 32
  br i1 %min.iters.check1547, label %vec.epilog.ph1571, label %vector.ph1548

vector.ph1548:                                    ; preds = %vector.main.loop.iter.check1546
  %i.abm = and i64 %wide.trip.count42.i.i, 28
  %n.vec1549 = and i64 %wide.trip.count42.i.i, 2147483616 ; 4 uses
  br label %vector.body1550

vector.body1550:                                  ; preds = %vector.ph1548, %vector.body1550
  %index1551 = phi i64 [ 0, %vector.ph1548 ], [ %index.next1559, %vector.body1550 ] ; 2 uses
  %vec.phi1552 = phi <8 x i32> [ zeroinitializer, %vector.ph1548 ], [ %i.abv, %vector.body1550 ]
  %vec.phi1553 = phi <8 x i32> [ zeroinitializer, %vector.ph1548 ], [ %i.abw, %vector.body1550 ]
  %vec.phi1554 = phi <8 x i32> [ zeroinitializer, %vector.ph1548 ], [ %i.abx, %vector.body1550 ]
  %vec.phi1555 = phi <8 x i32> [ zeroinitializer, %vector.ph1548 ], [ %i.aby, %vector.body1550 ]
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %index1551 ; 4 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 32
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 64
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abn, i64 96
  %wide.load = load <8 x i32>, ptr %i.abn, align 4, !tbaa !101
  %wide.load1556 = load <8 x i32>, ptr %i.abo, align 4, !tbaa !101
  %wide.load1557 = load <8 x i32>, ptr %i.abp, align 4, !tbaa !101
  %wide.load1558 = load <8 x i32>, ptr %i.abq, align 4, !tbaa !101
  %i.abr = add nsw <8 x i32> %wide.load, splat (i32 1)
  %i.abs = add nsw <8 x i32> %wide.load1556, splat (i32 1)
  %i.abt = add nsw <8 x i32> %wide.load1557, splat (i32 1)
  %i.abu = add nsw <8 x i32> %wide.load1558, splat (i32 1)
  %i.abv = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1552, <8 x i32> %i.abr) ; 2 uses
  %i.abw = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1553, <8 x i32> %i.abs) ; 2 uses
  %i.abx = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1554, <8 x i32> %i.abt) ; 2 uses
  %i.aby = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1555, <8 x i32> %i.abu) ; 2 uses
  %index.next1559 = add nuw i64 %index1551, 32    ; 2 uses
  %i.abz = icmp eq i64 %index.next1559, %n.vec1549
  br i1 %i.abz, label %middle.block1560, label %vector.body1550, !llvm.loop !623

middle.block1560:                                 ; preds = %vector.body1550
  %rdx.minmax1561 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.abv, <8 x i32> %i.abw)
  %rdx.minmax1562 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1561, <8 x i32> %i.abx)
  %rdx.minmax1563 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1562, <8 x i32> %i.aby)
  %i.aca = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1563) ; 3 uses
  %cmp.n1564 = icmp eq i64 %n.vec1549, %wide.trip.count42.i.i
  br i1 %cmp.n1564, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %vec.epilog.iter.check1569

vec.epilog.iter.check1569:                        ; preds = %middle.block1560
  %min.epilog.iters.check1570 = icmp eq i64 %i.abm, 0
  br i1 %min.epilog.iters.check1570, label %.lr.ph35.i.i.preheader, label %vec.epilog.ph1571, !prof !806

vec.epilog.ph1571:                                ; preds = %vector.main.loop.iter.check1546, %vec.epilog.iter.check1569
  %vec.epilog.resume.val1565 = phi i64 [ %n.vec1549, %vec.epilog.iter.check1569 ], [ 0, %vector.main.loop.iter.check1546 ]
  %bc.merge.rdx1566 = phi i32 [ %i.aca, %vec.epilog.iter.check1569 ], [ 0, %vector.main.loop.iter.check1546 ]
  %n.vec1572 = and i64 %wide.trip.count42.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert1573 = insertelement <4 x i32> poison, i32 %bc.merge.rdx1566, i64 0
  %broadcast.splat1574 = shufflevector <4 x i32> %broadcast.splatinsert1573, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1575

vec.epilog.vector.body1575:                       ; preds = %vec.epilog.vector.body1575, %vec.epilog.ph1571
  %index1576 = phi i64 [ %vec.epilog.resume.val1565, %vec.epilog.ph1571 ], [ %index.next1579, %vec.epilog.vector.body1575 ] ; 2 uses
  %vec.phi1577 = phi <4 x i32> [ %broadcast.splat1574, %vec.epilog.ph1571 ], [ %i.acd, %vec.epilog.vector.body1575 ]
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %index1576
  %wide.load1578 = load <4 x i32>, ptr %i.acb, align 4, !tbaa !101
  %i.acc = add nsw <4 x i32> %wide.load1578, splat (i32 1)
  %i.acd = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1577, <4 x i32> %i.acc) ; 2 uses
  %index.next1579 = add nuw i64 %index1576, 4     ; 2 uses
  %i.ace = icmp eq i64 %index.next1579, %n.vec1572
  br i1 %i.ace, label %vec.epilog.middle.block1580, label %vec.epilog.vector.body1575, !llvm.loop !624

vec.epilog.middle.block1580:                      ; preds = %vec.epilog.vector.body1575
  %i.acf = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %i.acd) ; 2 uses
  %cmp.n1581 = icmp eq i64 %n.vec1572, %wide.trip.count42.i.i
  br i1 %cmp.n1581, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %.lr.ph35.i.i.preheader

.lr.ph35.i.i.preheader:                           ; preds = %iter.check1567, %vec.epilog.iter.check1569, %vec.epilog.middle.block1580
  %indvars.iv39.i.i.ph = phi i64 [ 0, %iter.check1567 ], [ %n.vec1549, %vec.epilog.iter.check1569 ], [ %n.vec1572, %vec.epilog.middle.block1580 ]
  %.233.i.i.ph = phi i32 [ 0, %iter.check1567 ], [ %i.aca, %vec.epilog.iter.check1569 ], [ %i.acf, %vec.epilog.middle.block1580 ]
  br label %.lr.ph35.i.i

.lr.ph.i74.i:                                     ; preds = %.lr.ph.i74.i.preheader, %bb.fb
  %indvars.iv.i.i207 = phi i64 [ %indvars.iv.next.i.i208, %bb.fb ], [ %indvars.iv.i.i207.ph, %.lr.ph.i74.i.preheader ] ; 4 uses
  %.02831.i.i = phi i32 [ %.1.i.i, %bb.fb ], [ %.02831.i.i.ph, %.lr.ph.i74.i.preheader ] ; 2 uses
  %i.acg = lshr i64 %indvars.iv.i.i207, 6
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.acg
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !149
  %i.acj = and i64 %indvars.iv.i.i207, 63
  %i.ack = shl nuw i64 1, %i.acj
  %i.acl = and i64 %i.aci, %i.ack
  %.not.i16.i.i = icmp eq i64 %i.acl, 0
  br i1 %.not.i16.i.i, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %.lr.ph.i74.i
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %indvars.iv.i.i207
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !101
  %i.aco = add nsw i32 %i.acn, 1
  %.sroa.speculated20.i.i = call i32 @llvm.smax.i32(i32 %.02831.i.i, i32 %i.aco)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %.lr.ph.i74.i
  %.1.i.i = phi i32 [ %.02831.i.i, %.lr.ph.i74.i ], [ %.sroa.speculated20.i.i, %bb.fa ] ; 2 uses
  %indvars.iv.next.i.i208 = add nuw nsw i64 %indvars.iv.i.i207, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i208, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %.lr.ph.i74.i, !llvm.loop !625

.lr.ph35.i.i:                                     ; preds = %.lr.ph35.i.i.preheader, %.lr.ph35.i.i
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i, %.lr.ph35.i.i ], [ %indvars.iv39.i.i.ph, %.lr.ph35.i.i.preheader ] ; 2 uses
  %.233.i.i = phi i32 [ %.sroa.speculated.i75.i, %.lr.ph35.i.i ], [ %.233.i.i.ph, %.lr.ph35.i.i.preheader ]
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %indvars.iv39.i.i
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !101
  %i.acr = add nsw i32 %i.acq, 1
  %.sroa.speculated.i75.i = call i32 @llvm.smax.i32(i32 %.233.i.i, i32 %i.acr) ; 2 uses
  %indvars.iv.next40.i.i = add nuw nsw i64 %indvars.iv39.i.i, 1 ; 2 uses
  %exitcond43.not.i.i = icmp eq i64 %indvars.iv.next40.i.i, %wide.trip.count42.i.i
  br i1 %exitcond43.not.i.i, label %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i, label %.lr.ph35.i.i, !llvm.loop !626

_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i: ; preds = %bb.fb, %.lr.ph35.i.i, %middle.block1516, %vec.epilog.middle.block1542, %middle.block1560, %vec.epilog.middle.block1580, %.preheader29.i.i, %.preheader.i.i209, %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i171
  %i.acs = phi i32 [ -1, %_ZN8facebook5velox12_GLOBAL__N_110targetSizeEiRKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEE.exit.i171 ], [ %.sroa.speculated.i75.i, %.lr.ph35.i.i ], [ 0, %.preheader.i.i209 ], [ 0, %.preheader29.i.i ], [ %i.acf, %vec.epilog.middle.block1580 ], [ %i.aca, %middle.block1560 ], [ %i.abl, %vec.epilog.middle.block1542 ], [ %i.aaz, %middle.block1516 ], [ %.1.i.i, %bb.fb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #30
  store ptr null, ptr %44, align 8, !tbaa !132
  %i.act = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %120, ptr noundef null)
          to label %bb.fc unwind label %bb.fm, !inline_history !620 ; 3 uses

bb.fc:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i
  %i.acu = invoke noundef ptr @_ZN8facebook5velox13DecodedVector5nullsEPKNS0_17SelectivityVectorE(ptr noundef nonnull align 8 dereferenceable(120) %128, ptr noundef null)
          to label %bb.fd unwind label %bb.fn, !inline_history !620 ; 2 uses

bb.fd:                                            ; preds = %bb.fc
  %i.acv = icmp ne ptr %i.act, null               ; 3 uses
  %i.acw = icmp ne ptr %i.acu, null               ; 2 uses
  %or.cond.i = or i1 %i.acv, %i.acw
  br i1 %or.cond.i, label %bb.fe, label %_ZN8facebook5velox12_GLOBAL__N_114setSourceNullsEPKmS3_RKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEPm.exit.i

bb.fe:                                            ; preds = %bb.fd
  br i1 %4, label %bb.ff, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split

bb.ff:                                            ; preds = %bb.fe
  %i.acx = load ptr, ptr %3, align 8, !tbaa !67
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 32 ; 3 uses
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !132 ; 3 uses
  %.not702 = icmp eq ptr %i.acz, null
  br i1 %.not702, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ada = sext i32 %.05.lcssa.i.i172 to i64
  %139 = shl nsw i64 %i.ada, 26
  %i.adb = add nsw i64 %139, 4227858432
  %i.adc = ashr i64 %i.adb, 29
  %i.add = and i64 %i.adc, -8                     ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acz, i64 44
  %i.adf = load i8, ptr %i.ade, align 4, !tbaa !138, !noalias !807
  %i.adg = and i8 %i.adf, 2
  %.not.i.i76.i = icmp eq i8 %i.adg, 0
  br i1 %.not.i.i76.i, label %_ZNK8facebook5velox6Buffer9isMutableEv.exit.i.i, label %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i

_ZNK8facebook5velox6Buffer9isMutableEv.exit.i.i:  ; preds = %bb.fg
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acz, i64 40
  %i.adi = load atomic i32, ptr %i.adh acquire, align 4, !noalias !807
  %i.adj = icmp eq i32 %i.adi, 1
  br i1 %i.adj, label %bb.fh, label %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i

bb.fh:                                            ; preds = %_ZNK8facebook5velox6Buffer9isMutableEv.exit.i.i
  %i.adk = load ptr, ptr %i.acy, align 8, !tbaa !132, !noalias !807 ; 3 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 32
  %i.adm = load i64, ptr %i.adl, align 8, !tbaa !151, !noalias !807
  %.not.i77.i = icmp ugt i64 %i.add, %i.adm
  br i1 %.not.i77.i, label %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.adn = load ptr, ptr %i.adk, align 8, !tbaa !88, !noalias !807
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  %i.adp = load ptr, ptr %i.ado, align 8, !noalias !807
  invoke void %i.adp(ptr noundef nonnull align 8 dereferenceable(64) %i.adk, i64 noundef %i.add)
          to label %.noexc.i205 unwind label %bb.fo, !inline_history !629

.noexc.i205:                                      ; preds = %bb.fi
  %i.adq = load ptr, ptr %i.acy, align 8, !tbaa !132, !noalias !807 ; 3 uses
  %.not.i6.i.i = icmp eq ptr %i.adq, null
  br i1 %.not.i6.i.i, label %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i, label %bb.fj

bb.fj:                                            ; preds = %.noexc.i205
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 40
  %i.ads = atomicrmw add ptr %i.adr, i32 1 acq_rel, align 4, !noalias !807 ; 0 uses
  br label %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i

_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i: ; preds = %bb.fg, %_ZNK8facebook5velox6Buffer9isMutableEv.exit.i.i, %bb.fh, %bb.fj, %.noexc.i205
  %.sroa.0603.0 = phi ptr [ %i.adq, %bb.fj ], [ null, %.noexc.i205 ], [ null, %bb.fh ], [ null, %_ZNK8facebook5velox6Buffer9isMutableEv.exit.i.i ], [ null, %bb.fg ] ; 2 uses
  %i.adt = load ptr, ptr %44, align 8, !tbaa !132 ; 7 uses
  store ptr %.sroa.0603.0, ptr %44, align 8, !tbaa !132
  %.not.i.i78.i = icmp eq ptr %i.adt, null
  br i1 %.not.i.i78.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196, label %bb.fk

bb.fk:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 40
  %i.adv = atomicrmw sub ptr %i.adu, i32 1 acq_rel, align 4
  %i.adw = icmp eq i32 %i.adv, 1
  br i1 %i.adw, label %.sink.split.i.i.i.i201, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split

.sink.split.i.i.i.i201:                           ; preds = %bb.fk
  %i.adx = load ptr, ptr %i.adt, align 8, !tbaa !88
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 64
  %i.adz = load ptr, ptr %i.ady, align 8
  invoke void %i.adz(ptr noundef nonnull align 8 dereferenceable(64) %i.adt)
          to label %.noexc.i.i.i202 unwind label %bb.fl, !inline_history !630

.noexc.i.i.i202:                                  ; preds = %.sink.split.i.i.i.i201
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adt, i64 8
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !148
  %.not.i.i.i.i203 = icmp eq ptr %i.aeb, null
  %i.aec = load ptr, ptr %i.adt, align 8, !tbaa !88
  %..i.i.i.i204 = select i1 %.not.i.i.i.i203, i64 8, i64 48
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 %..i.i.i.i204
  %i.aee = load ptr, ptr %i.aed, align 8
  invoke void %i.aee(ptr noundef nonnull align 8 dereferenceable(64) %i.adt)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split unwind label %bb.fl, !inline_history !630

bb.fl:                                            ; preds = %.noexc.i.i.i202, %.sink.split.i.i.i.i201
  %i.aef = landingpad { ptr, i32 }
          catch ptr null
  %i.aeg = extractvalue { ptr, i32 } %i.aef, 0
  call void @__clang_call_terminate(ptr %i.aeg) #35, !inline_history !620
  unreachable

bb.fm:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_18baseSizeERNS0_13DecodedVectorE.exit.i
  %i.aeh = landingpad { ptr, i32 }
          cleanup
  br label %bb.lo

bb.fn:                                            ; preds = %bb.fc
  %i.aei = landingpad { ptr, i32 }
          cleanup
  br label %bb.lo

bb.fo:                                            ; preds = %bb.fi
  %i.aej = landingpad { ptr, i32 }
          cleanup
  br label %bb.lo

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split: ; preds = %bb.fe, %bb.ff, %bb.fk, %.noexc.i.i.i202
  %.pr692 = load ptr, ptr %44, align 8, !tbaa !132
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split, %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i
  %i.aek = phi ptr [ %.pr692, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196thread-pre-split ], [ %.sroa.0603.0, %_ZN8facebook5velox12_GLOBAL__N_18tryReuseImEEN5boost13intrusive_ptrINS0_6BufferEEERKS6_i.exit.i ] ; 2 uses
  %i.ael = icmp eq ptr %i.aek, null
  br i1 %i.ael, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #30
  %i.aem = load ptr, ptr %0, align 8, !tbaa !84
  %i.aen = sext i32 %.05.lcssa.i.i172 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #30, !noalias !808
  store i8 -1, ptr %43, align 1, !tbaa !100, !noalias !808
  %i.aeo = getelementptr inbounds nuw i8, ptr %43, i64 1
  store i8 1, ptr %i.aeo, align 1, !tbaa !143, !noalias !808
  %i.aep = add nsw i64 %i.aen, 7
  %i.aeq = lshr i64 %i.aep, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %45, i64 noundef %i.aeq, ptr noundef %i.aem, ptr noundef nonnull align 1 dereferenceable(2) %43, i1 noundef zeroext false)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit93.i unwind label %bb.fq, !inline_history !620

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit93.i: ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #30, !noalias !808
  %i.aer = load ptr, ptr %45, align 8, !tbaa !132 ; 2 uses
  store ptr %i.aer, ptr %44, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.aes = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #30
  br label %bb.lo

bb.fr:                                            ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit93.i, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196
  %i.aet = phi ptr [ %i.aer, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit93.i ], [ %i.aek, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit.i196 ] ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 44
  %i.aev = load i8, ptr %i.aeu, align 4, !tbaa !138
  %i.aew = and i8 %i.aev, 2
  %.not.i94.i = icmp eq i8 %i.aew, 0
  br i1 %.not.i94.i, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i, label %bb.fs, !prof !85

bb.fs:                                            ; preds = %bb.fr
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #33
          to label %.noexc95.i unwind label %bb.fu, !inline_history !620

.noexc95.i:                                       ; preds = %bb.fs
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i: ; preds = %bb.fr
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aet, i64 16
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !139 ; 4 uses
  %.not.i192 = icmp ne ptr %i.aey, %i.act
  %or.cond70.i.not = and i1 %i.acv, %.not.i192
  br i1 %or.cond70.i.not, label %bb.ft, label %bb.fv

bb.ft:                                            ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i
  %i.aez = load i32, ptr %120, align 8, !tbaa !789
  %i.afa = sext i32 %i.aez to i64
  %i.afb = add nsw i64 %i.afa, 7
  %i.afc = lshr i64 %i.afb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aey, ptr nonnull align 8 %i.act, i64 %i.afc, i1 false)
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fy, %bb.fw, %bb.fs
  %i.afd = landingpad { ptr, i32 }
          cleanup
  br label %bb.lo

bb.fv:                                            ; preds = %bb.ft, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit.i
  br i1 %i.acw, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  invoke void @_ZN8facebook5velox10BaseVector9copyNullsEPmPKmRKN5folly5RangeIPKNS1_9CopyRangeEEE(ptr noundef %i.aey, ptr noundef nonnull %i.acu, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN8facebook5velox12_GLOBAL__N_114setSourceNullsEPKmS3_RKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEPm.exit.i unwind label %bb.fu, !inline_history !620

bb.fx:                                            ; preds = %bb.fv
  br i1 %i.acv, label %bb.fy, label %_ZN8facebook5velox12_GLOBAL__N_114setSourceNullsEPKmS3_RKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEPm.exit.i

bb.fy:                                            ; preds = %bb.fx
  invoke void @_ZN8facebook5velox10BaseVector8setNullsEPmRKN5folly5RangeIPKNS1_9CopyRangeEEEb(ptr noundef %i.aey, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false)
          to label %_ZN8facebook5velox12_GLOBAL__N_114setSourceNullsEPKmS3_RKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEPm.exit.i unwind label %bb.fu, !inline_history !620

_ZN8facebook5velox12_GLOBAL__N_114setSourceNullsEPKmS3_RKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEPm.exit.i: ; preds = %bb.fx, %bb.fw, %bb.fy, %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #30
  store ptr null, ptr %46, align 8, !tbaa !132
  br i1 %4, label %bb.fz, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit116.i.thread

bb.fz:                                            ; preds = %_ZN8facebook5velox12_GLOBAL__N_114setSourceNullsEPKmS3_RKN5folly5RangeIPKNS0_10BaseVector9CopyRangeEEEPm.exit.i
  %i.afe = load ptr, ptr %3, align 8, !tbaa !67   ; 3 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 28
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !152
  %i.afh = icmp eq i32 %i.afg, 2
  br i1 %i.afh, label %bb.ga, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit116.ithread-pre-split

bb.ga:                                            ; preds = %bb.fz
  %i.afi = load ptr, ptr %i.afe, align 8, !tbaa !88
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 312
  %i.afk = load ptr, ptr %i.afj, align 8
  %i.afl = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.afk(ptr noundef nonnull align 8 dereferenceable(94) %i.afe)
          to label %bb.gb unwind label %bb.gh, !inline_history !620 ; 3 uses

bb.gb:                                            ; preds = %bb.ga
  %i.afm = sext i32 %.05.lcssa.i.i172 to i64
  %i.afn = shl nsw i64 %i.afm, 2                  ; 2 uses
  %i.afo = load ptr, ptr %i.afl, align 8, !tbaa !132, !noalias !809 ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 44
  %i.afq = load i8, ptr %i.afp, align 4, !tbaa !138, !noalias !809
  %i.afr = and i8 %i.afq, 2
end_hunk_0
