inline.NumInlined: 1403
inline.NumDeleted: 810
begin_hunk_0_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a

vector.ph2113:                                    ; preds = %vector.main.loop.iter.check2111
  %n.mod.vf2114 = and i64 %i.th, 12
  %n.vec2115 = and i64 %i.th, 9223372036854775792 ; 6 uses
  %i.tx = shl nuw i64 %n.vec2115, 1
  %i.ty = getelementptr i8, ptr %i.tl, i64 %i.tx
  %14 = shl nuw i64 %n.vec2115, 1
  %i.tz = getelementptr i8, ptr %i.tq, i64 %14
  br label %vector.body2116

vector.body2116:                                  ; preds = %vector.body2116, %vector.ph2113
  %index2117 = phi i64 [ 0, %vector.ph2113 ], [ %index.next2124, %vector.body2116 ] ; 3 uses
  %offset.idx2118 = shl i64 %index2117, 1
  %next.gep2119 = getelementptr i8, ptr %i.tl, i64 %offset.idx2118 ; 2 uses
  %offset.idx2120 = shl i64 %index2117, 1
  %next.gep2121 = getelementptr i8, ptr %i.tq, i64 %offset.idx2120 ; 2 uses
  %i.ua = getelementptr i8, ptr %next.gep2121, i64 16
  %wide.load2122 = load <8 x i16>, ptr %next.gep2121, align 2, !tbaa !51
  %wide.load2123 = load <8 x i16>, ptr %i.ua, align 2, !tbaa !51
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a

vec.epilog.ph2134:                                ; preds = %vector.main.loop.iter.check2111, %vec.epilog.iter.check2132
  %vec.epilog.resume.val2127 = phi i64 [ %n.vec2115, %vec.epilog.iter.check2132 ], [ 0, %vector.main.loop.iter.check2111 ]
  %n.vec2136 = and i64 %i.th, 9223372036854775804 ; 5 uses
  %i.ud = shl nuw i64 %n.vec2136, 1
  %i.ue = getelementptr i8, ptr %i.tl, i64 %i.ud
  %15 = shl nuw i64 %n.vec2136, 1
  %i.uf = getelementptr i8, ptr %i.tq, i64 %15
  br label %vec.epilog.vector.body2137

vec.epilog.vector.body2137:                       ; preds = %vec.epilog.vector.body2137, %vec.epilog.ph2134
  %index2138 = phi i64 [ %vec.epilog.resume.val2127, %vec.epilog.ph2134 ], [ %index.next2142, %vec.epilog.vector.body2137 ] ; 3 uses
  %i.ug = shl i64 %index2138, 1
  %next.gep2139 = getelementptr i8, ptr %i.tl, i64 %i.ug
  %16 = shl i64 %index2138, 1
  %next.gep2140 = getelementptr i8, ptr %i.tq, i64 %16
  %wide.load2141 = load <4 x i16>, ptr %next.gep2140, align 2, !tbaa !51
  store <4 x i16> %wide.load2141, ptr %next.gep2139, align 2, !tbaa !51
  %index.next2142 = add nuw i64 %index2138, 4     ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  br i1 %diff.check1991, label %.lr.ph.i65.i101.preheader, label %vector.ph1994

vector.ph1994:                                    ; preds = %vector.memcheck1989
  %n.vec1996 = and i64 %i.aei, 9223372036854775800 ; 5 uses
  %i.aey = shl i64 %n.vec1996, 2
  %i.aez = getelementptr i8, ptr %i.aem, i64 %i.aey
  %17 = shl i64 %n.vec1996, 2
  %i.afa = getelementptr i8, ptr %i.aer, i64 %17
  br label %vector.body1997

vector.body1997:                                  ; preds = %vector.body1997, %vector.ph1994
  %index1998 = phi i64 [ 0, %vector.ph1994 ], [ %index.next2005, %vector.body1997 ] ; 3 uses
  %offset.idx1999 = shl i64 %index1998, 2
  %next.gep2000 = getelementptr i8, ptr %i.aem, i64 %offset.idx1999 ; 2 uses
  %offset.idx2001 = shl i64 %index1998, 2
  %next.gep2002 = getelementptr i8, ptr %i.aer, i64 %offset.idx2001 ; 2 uses
  %i.afb = getelementptr i8, ptr %next.gep2002, i64 16
  %wide.load2003 = load <4 x i32>, ptr %next.gep2002, align 4, !tbaa !3
  %wide.load2004 = load <4 x i32>, ptr %i.afb, align 4, !tbaa !3
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  br i1 %min.iters.check1971, label %.lr.ph.i76.i86.preheader, label %vector.ph1972

vector.ph1972:                                    ; preds = %.lr.ph.preheader.i75.i83
  %n.vec1974 = and i64 %i.ahc, 9223372036854775800 ; 5 uses
  %i.ahm = shl i64 %n.vec1974, 2
  %i.ahn = getelementptr i8, ptr %i.ahg, i64 %i.ahm
  %18 = shl i64 %n.vec1974, 2
  %i.aho = getelementptr i8, ptr %i.ahl, i64 %18
  br label %vector.body1975

vector.body1975:                                  ; preds = %vector.body1975, %vector.ph1972
  %index1976 = phi i64 [ 0, %vector.ph1972 ], [ %index.next1983, %vector.body1975 ] ; 3 uses
  %offset.idx1977 = shl i64 %index1976, 2
  %next.gep1978 = getelementptr i8, ptr %i.ahg, i64 %offset.idx1977 ; 2 uses
  %offset.idx1979 = shl i64 %index1976, 2
  %next.gep1980 = getelementptr i8, ptr %i.ahl, i64 %offset.idx1979 ; 2 uses
  %i.ahp = getelementptr i8, ptr %next.gep1980, i64 16
  %wide.load1981 = load <4 x i32>, ptr %next.gep1980, align 4, !tbaa !3
  %wide.load1982 = load <4 x i32>, ptr %i.ahp, align 4, !tbaa !3
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a

vector.ph1668:                                    ; preds = %vector.main.loop.iter.check
  %n.mod.vf1669 = and i64 %i.bkj, 12
  %n.vec1670 = and i64 %i.bkj, 9223372036854775792 ; 6 uses
  %i.bkz = shl nuw i64 %n.vec1670, 1
  %i.bla = getelementptr i8, ptr %i.bkn, i64 %i.bkz
  %19 = shl nuw i64 %n.vec1670, 1
  %i.blb = getelementptr i8, ptr %i.bks, i64 %19
  br label %vector.body1671

vector.body1671:                                  ; preds = %vector.body1671, %vector.ph1668
  %index1672 = phi i64 [ 0, %vector.ph1668 ], [ %index.next1679, %vector.body1671 ] ; 3 uses
  %offset.idx1673 = shl i64 %index1672, 1
  %next.gep1674 = getelementptr i8, ptr %i.bkn, i64 %offset.idx1673 ; 2 uses
  %offset.idx1675 = shl i64 %index1672, 1
  %next.gep1676 = getelementptr i8, ptr %i.bks, i64 %offset.idx1675 ; 2 uses
  %i.blc = getelementptr i8, ptr %next.gep1676, i64 16
  %wide.load1677 = load <8 x i16>, ptr %next.gep1676, align 2, !tbaa !51
  %wide.load1678 = load <8 x i16>, ptr %i.blc, align 2, !tbaa !51
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1670, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1685 = and i64 %i.bkj, 9223372036854775804 ; 5 uses
  %i.blf = shl nuw i64 %n.vec1685, 1
  %i.blg = getelementptr i8, ptr %i.bkn, i64 %i.blf
  %20 = shl nuw i64 %n.vec1685, 1
  %i.blh = getelementptr i8, ptr %i.bks, i64 %20
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1686 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1690, %vec.epilog.vector.body ] ; 3 uses
  %i.bli = shl i64 %index1686, 1
  %next.gep1687 = getelementptr i8, ptr %i.bkn, i64 %i.bli
  %21 = shl i64 %index1686, 1
  %next.gep1688 = getelementptr i8, ptr %i.bks, i64 %21
  %wide.load1689 = load <4 x i16>, ptr %next.gep1688, align 2, !tbaa !51
  store <4 x i16> %wide.load1689, ptr %next.gep1687, align 2, !tbaa !51
  %index.next1690 = add nuw i64 %index1686, 4     ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  br i1 %diff.check, label %.lr.ph.i49.i434.preheader, label %vector.ph1550

vector.ph1550:                                    ; preds = %vector.memcheck
  %n.vec1552 = and i64 %i.bvk, 9223372036854775800 ; 5 uses
  %i.bwa = shl i64 %n.vec1552, 2
  %i.bwb = getelementptr i8, ptr %i.bvo, i64 %i.bwa
  %22 = shl i64 %n.vec1552, 2
  %i.bwc = getelementptr i8, ptr %i.bvt, i64 %22
  br label %vector.body1553

vector.body1553:                                  ; preds = %vector.body1553, %vector.ph1550
  %index1554 = phi i64 [ 0, %vector.ph1550 ], [ %index.next1561, %vector.body1553 ] ; 3 uses
  %offset.idx1555 = shl i64 %index1554, 2
  %next.gep1556 = getelementptr i8, ptr %i.bvo, i64 %offset.idx1555 ; 2 uses
  %offset.idx1557 = shl i64 %index1554, 2
  %next.gep1558 = getelementptr i8, ptr %i.bvt, i64 %offset.idx1557 ; 2 uses
  %i.bwd = getelementptr i8, ptr %next.gep1558, i64 16
  %wide.load1559 = load <4 x i32>, ptr %next.gep1558, align 4, !tbaa !3
  %wide.load1560 = load <4 x i32>, ptr %i.bwd, align 4, !tbaa !3
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  br i1 %min.iters.check1510, label %.lr.ph.i76.i395.preheader, label %vector.ph1511

vector.ph1511:                                    ; preds = %.lr.ph.preheader.i75.i392
  %n.vec1513 = and i64 %i.cay, 9223372036854775800 ; 5 uses
  %i.cbi = shl i64 %n.vec1513, 2
  %i.cbj = getelementptr i8, ptr %i.cbc, i64 %i.cbi
  %23 = shl i64 %n.vec1513, 2
  %i.cbk = getelementptr i8, ptr %i.cbh, i64 %23
  br label %vector.body1514

vector.body1514:                                  ; preds = %vector.body1514, %vector.ph1511
  %index1515 = phi i64 [ 0, %vector.ph1511 ], [ %index.next1522, %vector.body1514 ] ; 3 uses
  %offset.idx1516 = shl i64 %index1515, 2
  %next.gep1517 = getelementptr i8, ptr %i.cbc, i64 %offset.idx1516 ; 2 uses
  %offset.idx1518 = shl i64 %index1515, 2
  %next.gep1519 = getelementptr i8, ptr %i.cbh, i64 %offset.idx1518 ; 2 uses
  %i.cbl = getelementptr i8, ptr %next.gep1519, i64 16
  %wide.load1520 = load <4 x i32>, ptr %next.gep1519, align 4, !tbaa !3
  %wide.load1521 = load <4 x i32>, ptr %i.cbl, align 4, !tbaa !3
end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  br i1 %min.iters.check1396, label %.lr.ph.i83.i464.preheader, label %vector.ph1397

vector.ph1397:                                    ; preds = %.lr.ph.preheader.i82.i461
  %n.vec1399 = and i64 %i.cky, 9223372036854775804 ; 5 uses
  %i.cli = shl i64 %n.vec1399, 3
  %i.clj = getelementptr i8, ptr %i.clc, i64 %i.cli
  %24 = shl i64 %n.vec1399, 3
  %i.clk = getelementptr i8, ptr %i.clh, i64 %24
  br label %vector.body1400

vector.body1400:                                  ; preds = %vector.body1400, %vector.ph1397
  %index1401 = phi i64 [ 0, %vector.ph1397 ], [ %index.next1408, %vector.body1400 ] ; 3 uses
  %offset.idx1402 = shl i64 %index1401, 3
  %next.gep1403 = getelementptr i8, ptr %i.clc, i64 %offset.idx1402 ; 2 uses
  %offset.idx1404 = shl i64 %index1401, 3
  %next.gep1405 = getelementptr i8, ptr %i.clh, i64 %offset.idx1404 ; 2 uses
  %i.cll = getelementptr i8, ptr %next.gep1405, i64 16
  %wide.load1406 = load <2 x i64>, ptr %next.gep1405, align 8, !tbaa !71
  %wide.load1407 = load <2 x i64>, ptr %i.cll, align 8, !tbaa !71
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  br i1 %min.iters.check1358, label %.lr.ph.i49.i586.preheader, label %vector.ph1359

vector.ph1359:                                    ; preds = %.lr.ph.preheader.i48.i583
  %n.vec1361 = and i64 %i.cog, 9223372036854775800 ; 5 uses
  %i.coq = shl i64 %n.vec1361, 2
  %i.cor = getelementptr i8, ptr %i.cok, i64 %i.coq
  %25 = shl i64 %n.vec1361, 2
  %i.cos = getelementptr i8, ptr %i.cop, i64 %25
  br label %vector.body1362

vector.body1362:                                  ; preds = %vector.body1362, %vector.ph1359
  %index1363 = phi i64 [ 0, %vector.ph1359 ], [ %index.next1370, %vector.body1362 ] ; 3 uses
  %offset.idx1364 = shl i64 %index1363, 2
  %next.gep1365 = getelementptr i8, ptr %i.cok, i64 %offset.idx1364 ; 2 uses
  %offset.idx1366 = shl i64 %index1363, 2
  %next.gep1367 = getelementptr i8, ptr %i.cop, i64 %offset.idx1366 ; 2 uses
  %i.cot = getelementptr i8, ptr %next.gep1367, i64 16
  %wide.load1368 = load <4 x float>, ptr %next.gep1367, align 4, !tbaa !95
  %wide.load1369 = load <4 x float>, ptr %i.cot, align 4, !tbaa !95
end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal24CastNumberToNumberUnsafeENS_4Type4typeES3_RKNS_9ArraySpanEPS4_:bb.a
  br i1 %min.iters.check1320, label %.lr.ph.i71.i556.preheader, label %vector.ph1321

vector.ph1321:                                    ; preds = %.lr.ph.preheader.i70.i553
  %n.vec1323 = and i64 %i.crn, 9223372036854775800 ; 5 uses
  %i.crx = shl i64 %n.vec1323, 2
  %i.cry = getelementptr i8, ptr %i.crr, i64 %i.crx
  %26 = shl i64 %n.vec1323, 2
  %i.crz = getelementptr i8, ptr %i.crw, i64 %26
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1321
  %index1325 = phi i64 [ 0, %vector.ph1321 ], [ %index.next1332, %vector.body1324 ] ; 3 uses
  %offset.idx1326 = shl i64 %index1325, 2
  %next.gep1327 = getelementptr i8, ptr %i.crr, i64 %offset.idx1326 ; 2 uses
  %offset.idx1328 = shl i64 %index1325, 2
  %next.gep1329 = getelementptr i8, ptr %i.crw, i64 %offset.idx1328 ; 2 uses
  %i.csa = getelementptr i8, ptr %next.gep1329, i64 16
  %wide.load1330 = load <4 x float>, ptr %next.gep1329, align 4, !tbaa !95
  %wide.load1331 = load <4 x float>, ptr %i.csa, align 4, !tbaa !95
end_hunk_10
