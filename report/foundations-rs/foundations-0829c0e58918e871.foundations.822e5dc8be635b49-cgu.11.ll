Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.11?download=true
inline.NumInlined: 1161
inline.NumDeleted: 602
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchescECsbaWXNhtWAp9_11foundations:_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %i.aj = and i32 %i.ai, 1835008, !dbg !1527
  %i.ak = shl nuw nsw i32 %i.aa, 6, !dbg !1528
  %i.al = and i8 %i.ah, 63, !dbg !1529
  %i.am = zext nneg i8 %i.al to i32, !dbg !1529
  %i.an = or disjoint i32 %i.ak, %i.am, !dbg !1528
  %i.ao = or disjoint i32 %i.an, %i.aj, !dbg !1530
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i, !dbg !1531

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i
  %.sroa.0.0.ph.i.i = phi ptr [ %i.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i ], [ %i.e, %bb.c ]
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i ], [ %i.ao, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112, !dbg !1532
  tail call void @llvm.assume(i1 %i.ap), !dbg !1532
  %i.aq = ptrtoint ptr %.sroa.0.0.ph.i.i to i64, !dbg !1533
  %.reass.i = add i64 %invariant.op.i, %i.aq      ; 3 uses
  %.not.i = icmp eq i32 %.sroa.4.0.i.ph.i.i, %2, !dbg !1534
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit, !dbg !1535

_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i
  %.sroa.6.122 = phi i64 [ %.reass.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.sroa.02.0 = phi i64 [ %.reass.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ 0, %bb.a ], !dbg !1536
  %.sroa.0.0 = phi i64 [ %.sroa.6.0, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ 0, %bb.a ], !dbg !1537 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.6.122
  %i.as = ptrtoint ptr %i.ar to i64
  %invariant.op.i3 = sub i64 %.sroa.6.122, %i.as, !dbg !1538
  br label %bb.d, !dbg !1538

bb.d:                                             ; preds = %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, %_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit
  %.reass5.i5 = phi i64 [ %.reass.i6, %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %1, %_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit ] ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i5, !dbg !1539 ; 4 uses
  %i.au = icmp samesign eq i64 %.sroa.6.122, %.reass5.i5, !dbg !1540
  br i1 %i.au, label %_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations.exit, label %bb.e, !dbg !1541

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -1, !dbg !1542 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !dbg !1543, !noalias !1492, !noundef !631 ; 3 uses
  %i.ax = icmp sgt i8 %i.aw, -1, !dbg !1543
  br i1 %i.ax, label %bb.f, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i, !dbg !1543

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i: ; preds = %bb.e
  %i.ay = add nsw i64 %.reass5.i5, -1, !dbg !1544
  %i.az = icmp ne i64 %.sroa.6.122, %i.ay, !dbg !1544
  tail call void @llvm.assume(i1 %i.az), !dbg !1545
  %i.ba = getelementptr inbounds i8, ptr %i.at, i64 -2, !dbg !1546 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !dbg !1547, !noalias !1492, !noundef !631 ; 3 uses
  %i.bc = and i8 %i.bb, 31, !dbg !1548
  %i.bd = zext nneg i8 %i.bc to i32, !dbg !1548
  %i.be = icmp slt i8 %i.bb, -64, !dbg !1549
  br i1 %i.be, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i, label %bb.g, !dbg !1550

bb.f:                                             ; preds = %bb.e
  %i.bf = zext nneg i8 %i.aw to i32, !dbg !1551
  br label %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, !dbg !1552

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i
  %i.bg = add nsw i64 %.reass5.i5, -2, !dbg !1553
  %i.bh = icmp ne i64 %.sroa.6.122, %i.bg, !dbg !1553
  tail call void @llvm.assume(i1 %i.bh), !dbg !1554
  %i.bi = getelementptr inbounds i8, ptr %i.at, i64 -3, !dbg !1555 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !dbg !1556, !noalias !1492, !noundef !631 ; 3 uses
  %i.bk = and i8 %i.bj, 15, !dbg !1557
  %i.bl = zext nneg i8 %i.bk to i32, !dbg !1557
  %i.bm = icmp slt i8 %i.bj, -64, !dbg !1558
  br i1 %i.bm, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i, label %bb.h, !dbg !1559

bb.g:                                             ; preds = %bb.h, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.h ], [ %i.ba, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i ], !dbg !1560
  %.sroa.010.0.i.i.i = phi i32 [ %i.ce, %bb.h ], [ %i.bd, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i ], !dbg !1561
  %i.bn = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6, !dbg !1562
  %i.bo = and i8 %i.aw, 63, !dbg !1563
  %i.bp = zext nneg i8 %i.bo to i32, !dbg !1563
  %i.bq = or disjoint i32 %i.bn, %i.bp, !dbg !1562
  br label %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, !dbg !1564

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i
  %i.br = add nsw i64 %.reass5.i5, -3, !dbg !1565
  %i.bs = icmp ne i64 %.sroa.6.122, %i.br, !dbg !1565
  tail call void @llvm.assume(i1 %i.bs), !dbg !1566
  %i.bt = getelementptr inbounds i8, ptr %i.at, i64 -4, !dbg !1567 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !1568, !noalias !1492, !noundef !631
  %i.bv = and i8 %i.bu, 7, !dbg !1569
  %i.bw = zext nneg i8 %i.bv to i32, !dbg !1569
  %i.bx = shl nuw nsw i32 %i.bw, 6, !dbg !1570
  %i.by = and i8 %i.bj, 63, !dbg !1571
  %i.bz = zext nneg i8 %i.by to i32, !dbg !1571
  %i.ca = or disjoint i32 %i.bx, %i.bz, !dbg !1570
  br label %bb.h, !dbg !1572

bb.h:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.bt, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i ], [ %i.bi, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i ], !dbg !1573
  %.sroa.010.1.i.i.i = phi i32 [ %i.ca, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i ], [ %i.bl, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i ], !dbg !1574
  %i.cb = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6, !dbg !1575
  %i.cc = and i8 %i.bb, 63, !dbg !1576
  %i.cd = zext nneg i8 %i.cc to i32, !dbg !1576
  %i.ce = or disjoint i32 %i.cb, %i.cd, !dbg !1575
  br label %bb.g, !dbg !1577

_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.6.2.ph.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.g ], [ %i.av, %bb.f ]
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.bq, %bb.g ], [ %i.bf, %bb.f ] ; 2 uses
  %i.cf = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112, !dbg !1578
  tail call void @llvm.assume(i1 %i.cf), !dbg !1578
  %i.cg = ptrtoint ptr %.sroa.6.2.ph.i.i to i64, !dbg !1579
  %.reass.i6 = add i64 %invariant.op.i3, %i.cg
  %.not.i7 = icmp eq i32 %.sroa.4.1.i.ph.i.i, %2, !dbg !1580
  br i1 %.not.i7, label %bb.d, label %_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations.exit, !dbg !1581

_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.d, %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
  %.sroa.02.1 = phi i64 [ %.reass5.i5, %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %.sroa.02.0, %bb.d ], !dbg !1582
  %i.ch = sub nuw i64 %.sroa.02.1, %.sroa.0.0, !dbg !1583
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0, !dbg !1584
  %i.cj = insertvalue { ptr, i64 } poison, ptr %i.ci, 0, !dbg !1585
  %i.ck = insertvalue { ptr, i64 } %i.cj, i64 %i.ch, 1, !dbg !1585
  ret { ptr, i64 } %i.ck, !dbg !1585
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre16trim_end_matchescECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1586 {
_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern13into_searcher.exit:
  %i.a = ptrtoint ptr %0 to i64
  br label %bb.a, !dbg !1653

bb.a:                                             ; preds = %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.reass5.i = phi i64 [ %.reass.i, %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ], [ %1, %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern13into_searcher.exit ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i, !dbg !1654 ; 4 uses
  %i.c = icmp samesign eq i64 %.reass5.i, 0, !dbg !1655
  br i1 %i.c, label %_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !1656

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -1, !dbg !1657 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !dbg !1658, !noalias !1652, !noundef !631 ; 3 uses
  %i.f = icmp sgt i8 %i.e, -1, !dbg !1658
  br i1 %i.f, label %bb.c, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i, !dbg !1658

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i: ; preds = %bb.b
  %i.g = icmp ne i64 %.reass5.i, 1, !dbg !1659
  tail call void @llvm.assume(i1 %i.g), !dbg !1660
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -2, !dbg !1661 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !dbg !1662, !noalias !1652, !noundef !631 ; 3 uses
  %i.j = and i8 %i.i, 31, !dbg !1663
  %i.k = zext nneg i8 %i.j to i32, !dbg !1663
  %i.l = icmp slt i8 %i.i, -64, !dbg !1664
  br i1 %i.l, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i, label %bb.d, !dbg !1665

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i8 %i.e to i32, !dbg !1666
  br label %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, !dbg !1667

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i
  %i.n = icmp ne i64 %.reass5.i, 2, !dbg !1668
  tail call void @llvm.assume(i1 %i.n), !dbg !1669
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 -3, !dbg !1670 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !dbg !1671, !noalias !1652, !noundef !631 ; 3 uses
  %i.q = and i8 %i.p, 15, !dbg !1672
  %i.r = zext nneg i8 %i.q to i32, !dbg !1672
  %i.s = icmp slt i8 %i.p, -64, !dbg !1673
  br i1 %i.s, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i, label %bb.e, !dbg !1674

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i
  %.sroa.6.0.i.i = phi ptr [ %.sroa.6.1.i.i, %bb.e ], [ %i.h, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i ], !dbg !1675
  %.sroa.010.0.i.i.i = phi i32 [ %i.aj, %bb.e ], [ %i.k, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit17.i.i.i ], !dbg !1676
  %i.t = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6, !dbg !1677
  %i.u = and i8 %i.e, 63, !dbg !1678
  %i.v = zext nneg i8 %i.u to i32, !dbg !1678
  %i.w = or disjoint i32 %i.t, %i.v, !dbg !1677
  br label %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i, !dbg !1679

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i
  %i.x = icmp ne i64 %.reass5.i, 3, !dbg !1680
  tail call void @llvm.assume(i1 %i.x), !dbg !1681
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -4, !dbg !1682 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !dbg !1683, !noalias !1652, !noundef !631
  %i.aa = and i8 %i.z, 7, !dbg !1684
  %i.ab = zext nneg i8 %i.aa to i32, !dbg !1684
  %i.ac = shl nuw nsw i32 %i.ab, 6, !dbg !1685
  %i.ad = and i8 %i.p, 63, !dbg !1686
  %i.ae = zext nneg i8 %i.ad to i32, !dbg !1686
  %i.af = or disjoint i32 %i.ac, %i.ae, !dbg !1685
  br label %bb.e, !dbg !1687

bb.e:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i
  %.sroa.6.1.i.i = phi ptr [ %i.y, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i ], [ %i.o, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i ], !dbg !1688
  %.sroa.010.1.i.i.i = phi i32 [ %i.af, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit21.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsbaWXNhtWAp9_11foundations.exit19.i.i.i ], !dbg !1689
  %i.ag = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6, !dbg !1690
  %i.ah = and i8 %i.i, 63, !dbg !1691
  %i.ai = zext nneg i8 %i.ah to i32, !dbg !1691
  %i.aj = or disjoint i32 %i.ag, %i.ai, !dbg !1690
  br label %bb.d, !dbg !1692

_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.6.2.ph.i.i = phi ptr [ %.sroa.6.0.i.i, %bb.d ], [ %i.d, %bb.c ]
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.w, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.ak = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112, !dbg !1693
  tail call void @llvm.assume(i1 %i.ak), !dbg !1693
  %i.al = ptrtoint ptr %.sroa.6.2.ph.i.i to i64, !dbg !1694
  %.reass.i = sub i64 %i.al, %i.a
  %.not.i = icmp eq i32 %.sroa.4.1.i.ph.i.i, %2, !dbg !1695
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations.exit, !dbg !1696

_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_15ReverseSearcher16next_reject_backCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a, %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i
  %.reass5.i.lcssa = phi i64 [ 0, %bb.a ], [ %.reass5.i, %_RNvXs0_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_12CharSearcherNtB5_15ReverseSearcher9next_back.exit.i ]
  %i.am = insertvalue { ptr, i64 } poison, ptr %0, 0, !dbg !1697
  %i.an = insertvalue { ptr, i64 } %i.am, i64 %.reass5.i.lcssa, 1, !dbg !1697
  ret { ptr, i64 } %i.an, !dbg !1697
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre18trim_start_matchescECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !1698 {
_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern13into_searcher.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = ptrtoint ptr %i.a to i64
  %invariant.op.i = sub i64 %1, %i.b, !dbg !1750
  br label %bb.a, !dbg !1750

bb.a:                                             ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i, %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern13into_searcher.exit
  %.reass5.i = phi i64 [ %.reass.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ 0, %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern13into_searcher.exit ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.reass5.i, !dbg !1751 ; 5 uses
  %i.d = icmp samesign eq i64 %.reass5.i, %1, !dbg !1752
  br i1 %i.d, label %_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit, label %bb.b, !dbg !1753

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !1754 ; 2 uses
  %i.f = load i8, ptr %i.c, align 1, !dbg !1755, !noalias !1746, !noundef !631 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1, !dbg !1756
  br i1 %i.g, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i, !dbg !1756

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i: ; preds = %bb.b
  %i.h = and i8 %i.f, 31, !dbg !1757
  %i.i = zext nneg i8 %i.h to i32, !dbg !1757     ; 3 uses
  %i.j = add nuw nsw i64 %.reass5.i, 1, !dbg !1758
  %i.k = icmp samesign ne i64 %i.j, %1, !dbg !1758
  tail call void @llvm.assume(i1 %i.k), !dbg !1759
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2, !dbg !1760 ; 2 uses
  %i.m = load i8, ptr %i.e, align 1, !dbg !1761, !noalias !1746, !noundef !631
  %i.n = shl nuw nsw i32 %i.i, 6, !dbg !1762
  %i.o = and i8 %i.m, 63, !dbg !1763
  %i.p = zext nneg i8 %i.o to i32, !dbg !1763     ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p, !dbg !1762
  %i.r = icmp samesign ugt i8 %i.f, -33, !dbg !1764
  br i1 %i.r, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i, !dbg !1764

bb.c:                                             ; preds = %bb.b
  %i.s = zext nneg i8 %i.f to i32, !dbg !1765
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i, !dbg !1766

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i
  %i.t = add nuw nsw i64 %.reass5.i, 2, !dbg !1767
  %i.u = icmp samesign ne i64 %i.t, %1, !dbg !1767
  tail call void @llvm.assume(i1 %i.u), !dbg !1768
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 3, !dbg !1769 ; 2 uses
  %i.w = load i8, ptr %i.l, align 1, !dbg !1770, !noalias !1746, !noundef !631
  %i.x = shl nuw nsw i32 %i.p, 6, !dbg !1771
  %i.y = and i8 %i.w, 63, !dbg !1772
  %i.z = zext nneg i8 %i.y to i32, !dbg !1772
  %i.aa = or disjoint i32 %i.x, %i.z, !dbg !1771  ; 2 uses
  %i.ab = shl nuw nsw i32 %i.i, 12, !dbg !1773
  %i.ac = or disjoint i32 %i.aa, %i.ab, !dbg !1774
  %i.ad = icmp samesign ugt i8 %i.f, -17, !dbg !1775
  br i1 %i.ad, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i, !dbg !1775

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i
  %i.ae = add nuw nsw i64 %.reass5.i, 3, !dbg !1776
  %i.af = icmp samesign ne i64 %i.ae, %1, !dbg !1776
  tail call void @llvm.assume(i1 %i.af), !dbg !1777
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 4, !dbg !1778
  %i.ah = load i8, ptr %i.v, align 1, !dbg !1779, !noalias !1746, !noundef !631
  %i.ai = shl nuw nsw i32 %i.i, 18, !dbg !1780
  %i.aj = and i32 %i.ai, 1835008, !dbg !1780
  %i.ak = shl nuw nsw i32 %i.aa, 6, !dbg !1781
  %i.al = and i8 %i.ah, 63, !dbg !1782
  %i.am = zext nneg i8 %i.al to i32, !dbg !1782
  %i.an = or disjoint i32 %i.ak, %i.am, !dbg !1781
  %i.ao = or disjoint i32 %i.an, %i.aj, !dbg !1783
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i, !dbg !1784

_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i
  %.sroa.0.0.ph.i.i = phi ptr [ %i.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i ], [ %i.v, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i ], [ %i.e, %bb.c ]
  %.sroa.4.0.i.ph.i.i = phi i32 [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit12.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit14.i.i.i ], [ %i.ao, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit16.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i, 1114112, !dbg !1785
  tail call void @llvm.assume(i1 %i.ap), !dbg !1785
  %i.aq = ptrtoint ptr %.sroa.0.0.ph.i.i to i64, !dbg !1786
  %.reass.i = add i64 %invariant.op.i, %i.aq
  %.not.i = icmp eq i32 %.sroa.4.0.i.ph.i.i, %2, !dbg !1787
  br i1 %.not.i, label %bb.a, label %_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit, !dbg !1788

_RNvYNtNtNtCs3oUPovFnLWP_4core3str7pattern12CharSearcherNtB4_8Searcher11next_rejectCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i
  %.sroa.0.0 = phi i64 [ %.reass5.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i ], [ %1, %bb.a ], !dbg !1789 ; 2 uses
  %i.ar = sub nuw i64 %1, %.sroa.0.0, !dbg !1790
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0, !dbg !1791
  %i.at = insertvalue { ptr, i64 } poison, ptr %i.as, 0, !dbg !1792
  %i.au = insertvalue { ptr, i64 } %i.at, i64 %i.ar, 1, !dbg !1792
  ret { ptr, i64 } %i.au, !dbg !1792
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEE4bindINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB18_5boxed3BoxDNtNtNtB2t_6future6future6Futurep6OutputuNtNtB2t_6marker4SendEL_EEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1793 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1796
  call void @_RINvNtNtCs3zuhHmEJ01l_5tokio7runtime4task8new_taskINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtNtBR_6future6future6Futurep6OutputuNtNtBR_6marker4SendEL_EEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noundef nonnull %3, i64 noundef %4), !dbg !1796
  %i.c = load ptr, ptr %i.a, align 8, !dbg !1797, !nonnull !631, !noundef !631
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1798
  %i.e = load ptr, ptr %i.d, align 8, !dbg !1798, !nonnull !631, !noundef !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1799
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1799
  %i.g = load ptr, ptr %i.f, align 8, !dbg !1799, !nonnull !631, !noundef !631 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !dbg !1799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1800
  %i.h = invoke fastcc noundef ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.b, !dbg !1801

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4join10JoinHandleuEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.d, !dbg !1802

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1803
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.g, 0, !dbg !1804
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.h, 1, !dbg !1804
  ret { ptr, ptr } %i.k, !dbg !1804

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !1805
  unreachable, !dbg !1805

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4join10JoinHandleuEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i, !dbg !1805
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEE4bindINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB18_5boxed3BoxIB2p_IB2V_DNtNtNtB2t_6future6future6Futurep6OutputuNtNtB2t_6marker4SendEL_EEEEECsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1806 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1809
  call void @_RINvNtNtCs3zuhHmEJ01l_5tokio7runtime4task8new_taskINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxIBN_IB1j_DNtNtNtBR_6future6future6Futurep6OutputuNtNtBR_6marker4SendEL_EEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef %3), !dbg !1809
  %i.c = load ptr, ptr %i.a, align 8, !dbg !1810, !nonnull !631, !noundef !631
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1811
  %i.e = load ptr, ptr %i.d, align 8, !dbg !1811, !nonnull !631, !noundef !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1812
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1812
  %i.g = load ptr, ptr %i.f, align 8, !dbg !1812, !nonnull !631, !noundef !631 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !dbg !1812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1813
  %i.h = invoke fastcc noundef ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.b, !dbg !1814

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4joinINtB5_10JoinHandleuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4join10JoinHandleuEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.d, !dbg !1815

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1816
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.g, 0, !dbg !1817
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.h, 1, !dbg !1817
  ret { ptr, ptr } %i.k, !dbg !1817

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !1818
  unreachable, !dbg !1818

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4join10JoinHandleuEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i, !dbg !1818
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvMNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4listINtB3_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB7_9scheduler14current_thread6HandleEE4bindINtNtCs3oUPovFnLWP_4core3pin3PinINtNtB18_5boxed3BoxINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB5b_6router6RouterEEEEB5f_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1819 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1822
  call void @_RINvNtNtCs3zuhHmEJ01l_5tokio7runtime4task8new_taskINtNtCs3oUPovFnLWP_4core3pin3PinINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaCYLheajBls_5hyper6server4conn5http121UpgradeableConnectionINtNtNtCsgrxNvLvgM5Z_10hyper_util2rt5tokio7TokioIoNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server15TelemetryStreamENtNtB3P_6router6RouterEEEINtNtB1n_4sync3ArcNtNtNtB4_9scheduler14current_thread6HandleEEB3T_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull %2, i64 noundef %3), !dbg !1822
  %i.c = load ptr, ptr %i.a, align 8, !dbg !1823, !nonnull !631, !noundef !631
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1824
  %i.e = load ptr, ptr %i.d, align 8, !dbg !1824, !nonnull !631, !noundef !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1825
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1825
  %i.g = load ptr, ptr %i.f, align 8, !dbg !1825, !nonnull !631, !noundef !631 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !dbg !1825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1826
  %i.h = invoke fastcc noundef ptr @_RNvMNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
          to label %bb.c unwind label %bb.b, !dbg !1827

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtCsaCYLheajBls_5hyper5error5ErrorEENtNtNtB1a_3ops4drop4Drop4dropCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs3zuhHmEJ01l_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCsaCYLheajBls_5hyper5error5ErrorEEECsbaWXNhtWAp9_11foundations.exit unwind label %bb.d, !dbg !1828

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1829
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.g, 0, !dbg !1830
  %i.k = insertvalue { ptr, ptr } %i.j, ptr %i.h, 1, !dbg !1830
  ret { ptr, ptr } %i.k, !dbg !1830
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfQLOxWbF12_10prometools5serde5error5ErrorECsbaWXNhtWAp9_11foundations:bb.a
  ], !dbg !4236, !prof !846

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr), !dbg !4237
  %i.e = and i64 %i.b, 1095216660480, !dbg !4238
  %i.f = icmp ne i64 %i.e, 1095216660480, !dbg !4238
  tail call void @llvm.assume(i1 %i.d), !dbg !4239
  tail call void @llvm.assume(i1 %i.f), !dbg !4239
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit, !dbg !4240

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1, !dbg !4241 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ], !dbg !4242
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4243 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !dbg !4243, !alias.scope !4232
  store i8 3, ptr %i.a, align 8, !dbg !4244, !alias.scope !4232
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h), !dbg !4245
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit, !dbg !4246

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4247
  ret void, !dbg !4248
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtCs5brsvYHD4Ou_12erased_serde3ser9serializeDNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics8internal16ErasedInfoMetricEL_NtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerEBT_(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4249 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4276
  store ptr %2, ptr %i.b, align 8, !dbg !4277
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4277
  store ptr %3, ptr %i.c, align 8, !dbg !4277
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4277 ; 4 uses
  store i8 2, ptr %i.d, align 8, !dbg !4277
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !4278
  %i.f = load ptr, ptr %i.e, align 8, !dbg !4278, !invariant.load !631, !nonnull !631
  %i.g = invoke { i64, ptr } %i.f(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) @5)
          to label %bb.c unwind label %bb.b, !dbg !4279 ; 2 uses

bb.b:                                             ; preds = %bb.f, %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i8, ptr %i.d, align 8, !dbg !4280, !range !861, !noundef !631 ; 3 uses
  %i.j = icmp ne i8 %i.i, 8, !dbg !4280
  call void @llvm.assume(i1 %i.j), !dbg !4280
  %i.k = add nsw i8 %i.i, -2, !dbg !4280
  %i.l = icmp samesign ugt i8 %i.i, 1, !dbg !4280
  %narrow6 = select i1 %i.l, i8 %i.k, i8 6, !dbg !4280
  switch i8 %narrow6, label %bb.m [
    i8 8, label %bb.n
    i8 9, label %bb.p
  ], !dbg !4280

bb.c:                                             ; preds = %bb.a
  %i.m = extractvalue { i64, ptr } %i.g, 0, !dbg !4278
  %i.n = extractvalue { i64, ptr } %i.g, 1, !dbg !4278 ; 2 uses
  %i.o = trunc nuw i64 %i.m to i1, !dbg !4281
  %.not = icmp ne ptr %i.n, null
  %or.cond.not = select i1 %i.o, i1 %.not, i1 false, !dbg !4281
  br i1 %or.cond.not, label %bb.e, label %bb.d, !dbg !4281

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.d, align 8, !dbg !4282, !range !861, !noundef !631 ; 3 uses
  %i.q = icmp ne i8 %i.p, 8, !dbg !4282
  call void @llvm.assume(i1 %i.q), !dbg !4282
  %i.r = add nsw i8 %i.p, -2, !dbg !4282
  %i.s = icmp samesign ugt i8 %i.p, 1, !dbg !4282
  %narrow = select i1 %i.s, i8 %i.r, i8 6, !dbg !4282
  switch i8 %narrow, label %bb.f [
    i8 8, label %bb.g
    i8 9, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerEECsbaWXNhtWAp9_11foundations.exit11
  ], !dbg !4283, !prof !869

bb.e:                                             ; preds = %bb.c
  %i.t = invoke noundef nonnull ptr @_RINvXs2_NtNtCskfQLOxWbF12_10prometools5serde5errorNtB6_5ErrorNtNtCs5FjQZcNRzHx_10serde_core3ser5Error6customINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtB1N_6string6StringEECsbaWXNhtWAp9_11foundations(ptr noalias noundef nonnull align 8 %i.n)
          to label %bb.i unwind label %bb.b, !dbg !4284 ; 2 uses

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28
          to label %bb.h unwind label %bb.b, !dbg !4285

bb.g:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.b, align 8, !dbg !4286, !nonnull !631, !noundef !631
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerEECsbaWXNhtWAp9_11foundations.exit11, !dbg !4287

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerEECsbaWXNhtWAp9_11foundations.exit11: ; preds = %bb.d, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfQLOxWbF12_10prometools5serde5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i9, %bb.i
  %.sroa.0.1 = phi ptr [ %i.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfQLOxWbF12_10prometools5serde5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i9 ], [ %i.t, %bb.i ], [ %i.u, %bb.g ], [ null, %bb.d ], !dbg !4288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4280
  ret ptr %.sroa.0.1, !dbg !4289

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !4274), !dbg !4280
  %i.v = load i8, ptr %i.d, align 8, !dbg !4290, !range !861, !alias.scope !4274, !noundef !631 ; 2 uses
  %i.w = icmp ne i8 %i.v, 8, !dbg !4290
  call void @llvm.assume(i1 %i.w), !dbg !4290
  %i.x = icmp eq i8 %i.v, 10, !dbg !4290
  br i1 %i.x, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerEECsbaWXNhtWAp9_11foundations.exit11, !dbg !4290

bb.j:                                             ; preds = %bb.i
  %.val.i8 = load ptr, ptr %i.b, align 8, !dbg !4290, !alias.scope !4274, !nonnull !631, !noundef !631 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4291, !noalias !4274
  %i.y = ptrtoint ptr %.val.i8 to i64, !dbg !4292 ; 2 uses
  %i.z = and i64 %i.y, 3, !dbg !4293
  switch i64 %i.z, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfQLOxWbF12_10prometools5serde5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i9
    i64 3, label %bb.k
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfQLOxWbF12_10prometools5serde5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i9
    i64 1, label %bb.l
  ], !dbg !4294, !prof !846

default.unreachable:                              ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp ult ptr %.val.i8, inttoptr (i64 188978561024 to ptr), !dbg !4295
  %i.ab = and i64 %i.y, 1095216660480, !dbg !4296
  %i.ac = icmp ne i64 %i.ab, 1095216660480, !dbg !4296
  call void @llvm.assume(i1 %i.aa), !dbg !4297
  call void @llvm.assume(i1 %i.ac), !dbg !4297
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfQLOxWbF12_10prometools5serde5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i9, !dbg !4298

bb.l:                                             ; preds = %bb.j
  %i.ad = getelementptr i8, ptr %.val.i8, i64 -1, !dbg !4299 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ], !dbg !4300
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4301 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !4301, !alias.scope !4275, !noalias !4274
  store i8 3, ptr %i.a, align 8, !dbg !4302, !alias.scope !4275, !noalias !4274
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae), !dbg !4303, !noalias !4274
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfQLOxWbF12_10prometools5serde5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i9, !dbg !4304

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfQLOxWbF12_10prometools5serde5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i9: ; preds = %bb.l, %bb.k, %bb.j, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4305, !noalias !4274
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerEECsbaWXNhtWAp9_11foundations.exit11, !dbg !4290

bb.m:                                             ; preds = %bb.b
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs5brsvYHD4Ou_12erased_serde3ser5erase10SerializerNtNtNtCskfQLOxWbF12_10prometools5serde3top13TopSerializerEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %bb.p unwind label %bb.o, !dbg !4280

bb.n:                                             ; preds = %bb.b
  %.val = load ptr, ptr %i.b, align 8, !dbg !4280, !nonnull !631, !noundef !631
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskfQLOxWbF12_10prometools5serde5error5ErrorECsbaWXNhtWAp9_11foundations(ptr nonnull %.val) #26
          to label %bb.p unwind label %bb.o, !dbg !4280

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !4306
  unreachable, !dbg !4306

bb.p:                                             ; preds = %bb.n, %bb.b, %bb.m
  resume { ptr, i32 } %i.h, !dbg !4306
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtCsduyiHOaxwSq_10serde_json3ser18format_escaped_strQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations(ptr %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 !dbg !4307 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [6 x i8], align 4                 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4469), !dbg !4498
  %i.c = load i64, ptr %.0.val, align 8, !dbg !4499, !range !877, !alias.scope !4469, !noalias !4470, !noundef !631
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !4500 ; 12 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !4500, !alias.scope !4469, !noalias !4470, !noundef !631 ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1, !dbg !4501
  tail call void @llvm.assume(i1 %i.f), !dbg !4502
  %i.g = sub nsw i64 %i.c, %i.e, !dbg !4503
  %i.h = icmp ugt i64 %i.g, 1, !dbg !4504
  br i1 %i.h, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.thread, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4504, !prof !732

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.thread: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4471), !dbg !4505
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !4506
  %i.j = load ptr, ptr %i.i, align 8, !dbg !4506, !alias.scope !4472, !noalias !4470, !nonnull !631, !noundef !631
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e, !dbg !4507
  store i8 34, ptr %i.k, align 1, !dbg !4508, !noalias !4472
  %i.l = add nuw i64 %i.e, 1, !dbg !4509
  store i64 %i.l, ptr %i.d, align 8, !dbg !4510, !alias.scope !4472, !noalias !4470
  br label %bb.b, !dbg !4511

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  %i.m = tail call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef range(i64 0, -9223372036854775808) 1) #27, !dbg !4512 ; 2 uses
  %.not = icmp eq ptr %i.m, null, !dbg !4513
  br i1 %.not, label %bb.b, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4511

bb.b:                                             ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.thread, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4474), !dbg !4514
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br label %.outer.i, !dbg !4515

.outer.i:                                         ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %.sroa.5.0.ph.i = phi i64 [ %i.aj, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i ], [ %1, %bb.b ] ; 4 uses
  %.sroa.05.0.ph.i = phi ptr [ %i.ah, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i ], [ %0, %bb.b ] ; 6 uses
  %exitcond.not.i31 = icmp eq i64 %.sroa.5.0.ph.i, 0, !dbg !4516
  br i1 %exitcond.not.i31, label %.outer.i._crit_edge, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i, !dbg !4516

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i
  %i.r = add i64 %.sroa.010.0.i32, 1, !dbg !4517  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %.sroa.5.0.ph.i, !dbg !4516
  br i1 %exitcond.not.i, label %.outer.i._crit_edge, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i, !dbg !4516

.outer.i._crit_edge:                              ; preds = %.outer.i, %bb.c
  %.sroa.5.0.ph.i46 = phi i64 [ %.sroa.5.0.ph.i, %bb.c ], [ 0, %.outer.i ] ; 5 uses
  %i.s = icmp eq i64 %.sroa.5.0.ph.i46, 0, !dbg !4518
  %.pre18 = load i64, ptr %i.d, align 8, !dbg !4519, !noalias !631 ; 5 uses
  br i1 %i.s, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit.thread, label %bb.d, !dbg !4520

bb.d:                                             ; preds = %.outer.i._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !4475), !dbg !4521
  %i.t = load i64, ptr %.0.val, align 8, !dbg !4522, !range !877, !alias.scope !4475, !noalias !4476, !noundef !631
  %i.u = icmp sgt i64 %.pre18, -1, !dbg !4523
  call void @llvm.assume(i1 %i.u), !dbg !4524
  %i.v = sub nsw i64 %i.t, %.pre18, !dbg !4525
  %i.w = icmp ult i64 %.sroa.5.0.ph.i46, %i.v, !dbg !4526
  br i1 %i.w, label %bb.e, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit, !dbg !4526, !prof !732

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !4477), !dbg !4527
  %i.x = load ptr, ptr %i.n, align 8, !dbg !4528, !alias.scope !4478, !noalias !4476, !nonnull !631, !noundef !631
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre18, !dbg !4529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i, i64 range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i46, i1 false), !dbg !4530, !noalias !4478
  %i.z = add nuw i64 %.pre18, %.sroa.5.0.ph.i46, !dbg !4531 ; 2 uses
  store i64 %i.z, ptr %i.d, align 8, !dbg !4532, !alias.scope !4478, !noalias !4476
  br label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit.thread, !dbg !4533

_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %.outer.i, %bb.c
  %.sroa.010.0.i32 = phi i64 [ %i.r, %bb.c ], [ 0, %.outer.i ] ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i, i64 %.sroa.010.0.i32, !dbg !4534
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !4535, !alias.scope !4474, !noundef !631 ; 3 uses
  %i.ac = zext i8 %i.ab to i64, !dbg !4536
  %i.ad = getelementptr inbounds nuw i8, ptr @_RNvNtCsduyiHOaxwSq_10serde_json3ser6ESCAPE, i64 %i.ac, !dbg !4537
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !4537, !noalias !4474, !noundef !631 ; 3 uses
  %i.af = icmp eq i8 %i.ae, 0, !dbg !4538
  br i1 %i.af, label %bb.c, label %bb.f, !dbg !4538

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i, i64 %.sroa.010.0.i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = xor i64 %.sroa.010.0.i32, -1
  %i.aj = add i64 %.sroa.5.0.ph.i, %i.ai
  %i.ak = icmp eq i64 %.sroa.010.0.i32, 0, !dbg !4539
  br i1 %i.ak, label %bb.h, label %bb.g, !dbg !4540

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !4479), !dbg !4541
  %i.al = load i64, ptr %.0.val, align 8, !dbg !4542, !range !877, !alias.scope !4479, !noalias !4480, !noundef !631
  %i.am = load i64, ptr %i.d, align 8, !dbg !4543, !alias.scope !4479, !noalias !4480, !noundef !631 ; 4 uses
  %i.an = icmp sgt i64 %i.am, -1, !dbg !4544
  call void @llvm.assume(i1 %i.an), !dbg !4545
  %i.ao = sub nsw i64 %i.al, %i.am, !dbg !4546
  %i.ap = icmp ult i64 %.sroa.010.0.i32, %i.ao, !dbg !4547
  br i1 %i.ap, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.thread.i, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.i, !dbg !4547, !prof !732

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.thread.i: ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !4481), !dbg !4548
  %i.aq = load ptr, ptr %i.n, align 8, !dbg !4549, !alias.scope !4482, !noalias !4480, !nonnull !631, !noundef !631
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am, !dbg !4550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i, i64 range(i64 1, -9223372036854775808) %.sroa.010.0.i32, i1 false), !dbg !4551, !noalias !4482
  %i.as = add nuw i64 %i.am, %.sroa.010.0.i32, !dbg !4552
  store i64 %i.as, ptr %i.d, align 8, !dbg !4553, !alias.scope !4482, !noalias !4480
  br label %bb.h, !dbg !4554

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.i: ; preds = %bb.g
  %i.at = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i32) #27, !dbg !4555 ; 2 uses
  %.not20.i = icmp eq ptr %i.at, null, !dbg !4556
  br i1 %.not20.i, label %bb.h, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4554

bb.h:                                             ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.thread.i, %bb.f
  %i.au = icmp eq i8 %i.ae, 117, !dbg !4557
  br i1 %i.au, label %bb.i, label %bb.l, !dbg !4557

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4558, !noalias !4474
  %i.av = and i8 %i.ab, 15, !dbg !4559
  %i.aw = zext nneg i8 %i.av to i64, !dbg !4559
  %i.ax = lshr i8 %i.ab, 4, !dbg !4560
  %i.ay = zext nneg i8 %i.ax to i64, !dbg !4560
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsduyiHOaxwSq_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.ay, !dbg !4561
  %i.ba = load i8, ptr %i.az, align 1, !dbg !4561, !noalias !4474, !noundef !631
  %i.bb = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsduyiHOaxwSq_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.aw, !dbg !4562
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !4562, !noalias !4474, !noundef !631
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !dbg !4558, !noalias !4474
  store i8 %i.ba, ptr %i.p, align 4, !dbg !4558, !noalias !4474
  store i8 %i.bc, ptr %i.q, align 1, !dbg !4558, !noalias !4474
  call void @llvm.experimental.noalias.scope.decl(metadata !4484), !dbg !4563
  %i.bd = load i64, ptr %.0.val, align 8, !dbg !4564, !range !877, !alias.scope !4484, !noalias !4485, !noundef !631
  %i.be = load i64, ptr %i.d, align 8, !dbg !4565, !alias.scope !4484, !noalias !4485, !noundef !631 ; 4 uses
  %i.bf = icmp sgt i64 %i.be, -1, !dbg !4566
  call void @llvm.assume(i1 %i.bf), !dbg !4567
  %i.bg = sub nsw i64 %i.bd, %i.be, !dbg !4568
  %i.bh = icmp ugt i64 %i.bg, 6, !dbg !4569
  br i1 %i.bh, label %bb.k, label %bb.j, !dbg !4569, !prof !732

bb.j:                                             ; preds = %bb.i
  %i.bi = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 6) #27, !dbg !4570
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !4570

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4486), !dbg !4571
  %i.bj = load ptr, ptr %i.n, align 8, !dbg !4572, !alias.scope !4487, !noalias !4485, !nonnull !631, !noundef !631
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be, !dbg !4573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bk, ptr noundef nonnull readonly align 4 dereferenceable(6) %i.b, i64 range(i64 0, -9223372036854775808) 6, i1 false), !dbg !4574, !noalias !4487
  %i.bl = add nuw i64 %i.be, 6, !dbg !4575
  store i64 %i.bl, ptr %i.d, align 8, !dbg !4576, !alias.scope !4487, !noalias !4485
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !4577

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i26.i = phi ptr [ null, %bb.k ], [ %i.bi, %bb.j ], !dbg !4578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4579, !noalias !4474
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !4580

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4581, !noalias !4474
  store i8 92, ptr %i.a, align 2, !dbg !4581, !noalias !4474
  store i8 %i.ae, ptr %i.o, align 1, !dbg !4581, !noalias !4474
  call void @llvm.experimental.noalias.scope.decl(metadata !4488), !dbg !4582
  %i.bm = load i64, ptr %.0.val, align 8, !dbg !4583, !range !877, !alias.scope !4488, !noalias !4489, !noundef !631
  %i.bn = load i64, ptr %i.d, align 8, !dbg !4584, !alias.scope !4488, !noalias !4489, !noundef !631 ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, -1, !dbg !4585
  call void @llvm.assume(i1 %i.bo), !dbg !4586
  %i.bp = sub nsw i64 %i.bm, %i.bn, !dbg !4587
  %i.bq = icmp ugt i64 %i.bp, 2, !dbg !4588
  br i1 %i.bq, label %bb.n, label %bb.m, !dbg !4588, !prof !732

bb.m:                                             ; preds = %bb.l
  %i.br = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 2) #27, !dbg !4589
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit7.i.i, !dbg !4589

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !4490), !dbg !4590
  %i.bs = load ptr, ptr %i.n, align 8, !dbg !4591, !alias.scope !4491, !noalias !4489, !nonnull !631, !noundef !631
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bn, !dbg !4592
  %i.bu = load i16, ptr %i.a, align 2, !dbg !4593, !noalias !4492
  store i16 %i.bu, ptr %i.bt, align 1, !dbg !4593, !noalias !4491
  %i.bv = add nuw i64 %i.bn, 2, !dbg !4594
  store i64 %i.bv, ptr %i.d, align 8, !dbg !4595, !alias.scope !4491, !noalias !4489
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit7.i.i, !dbg !4596

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit7.i.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i6.i.i = phi ptr [ null, %bb.n ], [ %i.br, %bb.m ], !dbg !4597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4598, !noalias !4474
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !4598

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit7.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit.i.i
  %.sroa.02.0.i.i = phi ptr [ %.sroa.0.0.i.i6.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit7.i.i ], [ %.sroa.0.0.i.i.i26.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit.i.i ], !dbg !4599 ; 2 uses
  %.not21.i = icmp eq ptr %.sroa.02.0.i.i, null, !dbg !4600
  br i1 %.not21.i, label %.outer.i, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4601

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.d
  %i.bw = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i46) #27, !dbg !4602 ; 2 uses
  %.not5 = icmp eq ptr %i.bw, null, !dbg !4514
  br i1 %.not5, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit.thread_crit_edge, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4511

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit.thread_crit_edge: ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit
  %.pre = load i64, ptr %i.d, align 8, !dbg !4519, !alias.scope !4494, !noalias !4495
  br label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit.thread, !dbg !4511

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit.thread: ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit.thread_crit_edge, %.outer.i._crit_edge, %bb.e
  %i.bx = phi i64 [ %.pre, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit.thread_crit_edge ], [ %.pre18, %.outer.i._crit_edge ], [ %i.z, %bb.e ], !dbg !4519 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4494), !dbg !4603
  %i.by = load i64, ptr %.0.val, align 8, !dbg !4604, !range !877, !alias.scope !4494, !noalias !4495, !noundef !631
  %i.bz = icmp sgt i64 %i.bx, -1, !dbg !4605
  call void @llvm.assume(i1 %i.bz), !dbg !4606
  %i.ca = sub nsw i64 %i.by, %i.bx, !dbg !4607
  %i.cb = icmp ugt i64 %i.ca, 1, !dbg !4608
  br i1 %i.cb, label %bb.p, label %bb.o, !dbg !4608, !prof !732

bb.o:                                             ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit.thread
  %i.cc = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef range(i64 0, -9223372036854775808) 1) #27, !dbg !4609
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4609

bb.p:                                             ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !4496), !dbg !4610
  %i.cd = load ptr, ptr %i.n, align 8, !dbg !4611, !alias.scope !4497, !noalias !4495, !nonnull !631, !noundef !631
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bx, !dbg !4612
  store i8 34, ptr %i.ce, align 1, !dbg !4613, !noalias !4497
  %i.cf = add nuw i64 %i.bx, 1, !dbg !4614
  store i64 %i.cf, ptr %i.d, align 8, !dbg !4615, !alias.scope !4497, !noalias !4495
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4616

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.i, %bb.p, %bb.o, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit
  %.sroa.0.0 = phi ptr [ %i.cc, %bb.o ], [ %i.m, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit ], [ %i.bw, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_15PrettyFormatterECsbaWXNhtWAp9_11foundations.exit ], [ null, %bb.p ], [ %i.at, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.i ], [ %.sroa.02.0.i.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i ], !dbg !4617
  ret ptr %.sroa.0.0, !dbg !4618
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtCsduyiHOaxwSq_10serde_json3ser18format_escaped_strQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations(ptr %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 !dbg !4619 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [6 x i8], align 4                 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4781), !dbg !4810
  %i.c = load i64, ptr %.0.val, align 8, !dbg !4811, !range !877, !alias.scope !4781, !noalias !4782, !noundef !631
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !4812 ; 12 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !4812, !alias.scope !4781, !noalias !4782, !noundef !631 ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1, !dbg !4813
  tail call void @llvm.assume(i1 %i.f), !dbg !4814
  %i.g = sub nsw i64 %i.c, %i.e, !dbg !4815
  %i.h = icmp ugt i64 %i.g, 1, !dbg !4816
  br i1 %i.h, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.thread, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4816, !prof !732

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.thread: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4783), !dbg !4817
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !4818
  %i.j = load ptr, ptr %i.i, align 8, !dbg !4818, !alias.scope !4784, !noalias !4782, !nonnull !631, !noundef !631
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e, !dbg !4819
  store i8 34, ptr %i.k, align 1, !dbg !4820, !noalias !4784
  %i.l = add nuw i64 %i.e, 1, !dbg !4821
  store i64 %i.l, ptr %i.d, align 8, !dbg !4822, !alias.scope !4784, !noalias !4782
  br label %bb.b, !dbg !4823

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.a
  %i.m = tail call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef range(i64 0, -9223372036854775808) 1) #27, !dbg !4824 ; 2 uses
  %.not = icmp eq ptr %i.m, null, !dbg !4825
  br i1 %.not, label %bb.b, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4823

bb.b:                                             ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.thread, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4786), !dbg !4826
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br label %.outer.i, !dbg !4827

.outer.i:                                         ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i, %bb.b
  %.sroa.5.0.ph.i = phi i64 [ %i.aj, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i ], [ %1, %bb.b ] ; 4 uses
  %.sroa.05.0.ph.i = phi ptr [ %i.ah, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i ], [ %0, %bb.b ] ; 6 uses
  %exitcond.not.i31 = icmp eq i64 %.sroa.5.0.ph.i, 0, !dbg !4828
  br i1 %exitcond.not.i31, label %.outer.i._crit_edge, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i, !dbg !4828

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i
  %i.r = add i64 %.sroa.010.0.i32, 1, !dbg !4829  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %.sroa.5.0.ph.i, !dbg !4828
  br i1 %exitcond.not.i, label %.outer.i._crit_edge, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i, !dbg !4828

.outer.i._crit_edge:                              ; preds = %.outer.i, %bb.c
  %.sroa.5.0.ph.i46 = phi i64 [ %.sroa.5.0.ph.i, %bb.c ], [ 0, %.outer.i ] ; 5 uses
  %i.s = icmp eq i64 %.sroa.5.0.ph.i46, 0, !dbg !4830
  %.pre18 = load i64, ptr %i.d, align 8, !dbg !4831, !noalias !631 ; 5 uses
  br i1 %i.s, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit.thread, label %bb.d, !dbg !4832

bb.d:                                             ; preds = %.outer.i._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !4787), !dbg !4833
  %i.t = load i64, ptr %.0.val, align 8, !dbg !4834, !range !877, !alias.scope !4787, !noalias !4788, !noundef !631
  %i.u = icmp sgt i64 %.pre18, -1, !dbg !4835
  call void @llvm.assume(i1 %i.u), !dbg !4836
  %i.v = sub nsw i64 %i.t, %.pre18, !dbg !4837
  %i.w = icmp ult i64 %.sroa.5.0.ph.i46, %i.v, !dbg !4838
  br i1 %i.w, label %bb.e, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit, !dbg !4838, !prof !732

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !4789), !dbg !4839
  %i.x = load ptr, ptr %i.n, align 8, !dbg !4840, !alias.scope !4790, !noalias !4788, !nonnull !631, !noundef !631
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre18, !dbg !4841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i, i64 range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i46, i1 false), !dbg !4842, !noalias !4790
  %i.z = add nuw i64 %.pre18, %.sroa.5.0.ph.i46, !dbg !4843 ; 2 uses
  store i64 %i.z, ptr %i.d, align 8, !dbg !4844, !alias.scope !4790, !noalias !4788
  br label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit.thread, !dbg !4845

_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %.outer.i, %bb.c
  %.sroa.010.0.i32 = phi i64 [ %i.r, %bb.c ], [ 0, %.outer.i ] ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i, i64 %.sroa.010.0.i32, !dbg !4846
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !4847, !alias.scope !4786, !noundef !631 ; 3 uses
  %i.ac = zext i8 %i.ab to i64, !dbg !4848
  %i.ad = getelementptr inbounds nuw i8, ptr @_RNvNtCsduyiHOaxwSq_10serde_json3ser6ESCAPE, i64 %i.ac, !dbg !4849
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !4849, !noalias !4786, !noundef !631 ; 3 uses
  %i.af = icmp eq i8 %i.ae, 0, !dbg !4850
  br i1 %i.af, label %bb.c, label %bb.f, !dbg !4850

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i, i64 %.sroa.010.0.i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = xor i64 %.sroa.010.0.i32, -1
  %i.aj = add i64 %.sroa.5.0.ph.i, %i.ai
  %i.ak = icmp eq i64 %.sroa.010.0.i32, 0, !dbg !4851
  br i1 %i.ak, label %bb.h, label %bb.g, !dbg !4852

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !4791), !dbg !4853
  %i.al = load i64, ptr %.0.val, align 8, !dbg !4854, !range !877, !alias.scope !4791, !noalias !4792, !noundef !631
  %i.am = load i64, ptr %i.d, align 8, !dbg !4855, !alias.scope !4791, !noalias !4792, !noundef !631 ; 4 uses
  %i.an = icmp sgt i64 %i.am, -1, !dbg !4856
  call void @llvm.assume(i1 %i.an), !dbg !4857
  %i.ao = sub nsw i64 %i.al, %i.am, !dbg !4858
  %i.ap = icmp ult i64 %.sroa.010.0.i32, %i.ao, !dbg !4859
  br i1 %i.ap, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.thread.i, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.i, !dbg !4859, !prof !732

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.thread.i: ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !4793), !dbg !4860
  %i.aq = load ptr, ptr %i.n, align 8, !dbg !4861, !alias.scope !4794, !noalias !4792, !nonnull !631, !noundef !631
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am, !dbg !4862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i, i64 range(i64 1, -9223372036854775808) %.sroa.010.0.i32, i1 false), !dbg !4863, !noalias !4794
  %i.as = add nuw i64 %i.am, %.sroa.010.0.i32, !dbg !4864
  store i64 %i.as, ptr %i.d, align 8, !dbg !4865, !alias.scope !4794, !noalias !4792
  br label %bb.h, !dbg !4866

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.i: ; preds = %bb.g
  %i.at = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i32) #27, !dbg !4867 ; 2 uses
  %.not20.i = icmp eq ptr %i.at, null, !dbg !4868
  br i1 %.not20.i, label %bb.h, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4866

bb.h:                                             ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.thread.i, %bb.f
  %i.au = icmp eq i8 %i.ae, 117, !dbg !4869
  br i1 %i.au, label %bb.i, label %bb.l, !dbg !4869

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4870, !noalias !4786
  %i.av = and i8 %i.ab, 15, !dbg !4871
  %i.aw = zext nneg i8 %i.av to i64, !dbg !4871
  %i.ax = lshr i8 %i.ab, 4, !dbg !4872
  %i.ay = zext nneg i8 %i.ax to i64, !dbg !4872
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsduyiHOaxwSq_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.ay, !dbg !4873
  %i.ba = load i8, ptr %i.az, align 1, !dbg !4873, !noalias !4786, !noundef !631
  %i.bb = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsduyiHOaxwSq_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.aw, !dbg !4874
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !4874, !noalias !4786, !noundef !631
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !dbg !4870, !noalias !4786
  store i8 %i.ba, ptr %i.p, align 4, !dbg !4870, !noalias !4786
  store i8 %i.bc, ptr %i.q, align 1, !dbg !4870, !noalias !4786
  call void @llvm.experimental.noalias.scope.decl(metadata !4796), !dbg !4875
  %i.bd = load i64, ptr %.0.val, align 8, !dbg !4876, !range !877, !alias.scope !4796, !noalias !4797, !noundef !631
  %i.be = load i64, ptr %i.d, align 8, !dbg !4877, !alias.scope !4796, !noalias !4797, !noundef !631 ; 4 uses
  %i.bf = icmp sgt i64 %i.be, -1, !dbg !4878
  call void @llvm.assume(i1 %i.bf), !dbg !4879
  %i.bg = sub nsw i64 %i.bd, %i.be, !dbg !4880
  %i.bh = icmp ugt i64 %i.bg, 6, !dbg !4881
  br i1 %i.bh, label %bb.k, label %bb.j, !dbg !4881, !prof !732

bb.j:                                             ; preds = %bb.i
  %i.bi = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 6) #27, !dbg !4882
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !4882

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4798), !dbg !4883
  %i.bj = load ptr, ptr %i.n, align 8, !dbg !4884, !alias.scope !4799, !noalias !4797, !nonnull !631, !noundef !631
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be, !dbg !4885
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bk, ptr noundef nonnull readonly align 4 dereferenceable(6) %i.b, i64 range(i64 0, -9223372036854775808) 6, i1 false), !dbg !4886, !noalias !4799
  %i.bl = add nuw i64 %i.be, 6, !dbg !4887
  store i64 %i.bl, ptr %i.d, align 8, !dbg !4888, !alias.scope !4799, !noalias !4797
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !4889

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i26.i = phi ptr [ null, %bb.k ], [ %i.bi, %bb.j ], !dbg !4890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4891, !noalias !4786
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !4892

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4893, !noalias !4786
  store i8 92, ptr %i.a, align 2, !dbg !4893, !noalias !4786
  store i8 %i.ae, ptr %i.o, align 1, !dbg !4893, !noalias !4786
  call void @llvm.experimental.noalias.scope.decl(metadata !4800), !dbg !4894
  %i.bm = load i64, ptr %.0.val, align 8, !dbg !4895, !range !877, !alias.scope !4800, !noalias !4801, !noundef !631
  %i.bn = load i64, ptr %i.d, align 8, !dbg !4896, !alias.scope !4800, !noalias !4801, !noundef !631 ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, -1, !dbg !4897
  call void @llvm.assume(i1 %i.bo), !dbg !4898
  %i.bp = sub nsw i64 %i.bm, %i.bn, !dbg !4899
  %i.bq = icmp ugt i64 %i.bp, 2, !dbg !4900
  br i1 %i.bq, label %bb.n, label %bb.m, !dbg !4900, !prof !732

bb.m:                                             ; preds = %bb.l
  %i.br = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 2) #27, !dbg !4901
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit7.i.i, !dbg !4901

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !4802), !dbg !4902
  %i.bs = load ptr, ptr %i.n, align 8, !dbg !4903, !alias.scope !4803, !noalias !4801, !nonnull !631, !noundef !631
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bn, !dbg !4904
  %i.bu = load i16, ptr %i.a, align 2, !dbg !4905, !noalias !4804
  store i16 %i.bu, ptr %i.bt, align 1, !dbg !4905, !noalias !4803
  %i.bv = add nuw i64 %i.bn, 2, !dbg !4906
  store i64 %i.bv, ptr %i.d, align 8, !dbg !4907, !alias.scope !4803, !noalias !4801
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit7.i.i, !dbg !4908

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit7.i.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i6.i.i = phi ptr [ null, %bb.n ], [ %i.br, %bb.m ], !dbg !4909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4910, !noalias !4786
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !4910

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit7.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit.i.i
  %.sroa.02.0.i.i = phi ptr [ %.sroa.0.0.i.i6.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit7.i.i ], [ %.sroa.0.0.i.i.i26.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtB6_5write5Write9write_allCsbaWXNhtWAp9_11foundations.exit.i.i ], !dbg !4911 ; 2 uses
  %.not21.i = icmp eq ptr %.sroa.02.0.i.i, null, !dbg !4912
  br i1 %.not21.i, label %.outer.i, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4913

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.d
  %i.bw = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i46) #27, !dbg !4914 ; 2 uses
  %.not5 = icmp eq ptr %i.bw, null, !dbg !4826
  br i1 %.not5, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit.thread_crit_edge, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4823

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit.thread_crit_edge: ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit
  %.pre = load i64, ptr %i.d, align 8, !dbg !4831, !alias.scope !4806, !noalias !4807
  br label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit.thread, !dbg !4823

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit.thread: ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit.thread_crit_edge, %.outer.i._crit_edge, %bb.e
  %i.bx = phi i64 [ %.pre, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit.thread_crit_edge ], [ %.pre18, %.outer.i._crit_edge ], [ %i.z, %bb.e ], !dbg !4831 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4806), !dbg !4915
  %i.by = load i64, ptr %.0.val, align 8, !dbg !4916, !range !877, !alias.scope !4806, !noalias !4807, !noundef !631
  %i.bz = icmp sgt i64 %i.bx, -1, !dbg !4917
  call void @llvm.assume(i1 %i.bz), !dbg !4918
  %i.ca = sub nsw i64 %i.by, %i.bx, !dbg !4919
  %i.cb = icmp ugt i64 %i.ca, 1, !dbg !4920
  br i1 %i.cb, label %bb.p, label %bb.o, !dbg !4920, !prof !732

bb.o:                                             ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit.thread
  %i.cc = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef range(i64 0, -9223372036854775808) 1) #27, !dbg !4921
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4921

bb.p:                                             ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !4808), !dbg !4922
  %i.cd = load ptr, ptr %i.n, align 8, !dbg !4923, !alias.scope !4809, !noalias !4807, !nonnull !631, !noundef !631
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bx, !dbg !4924
  store i8 34, ptr %i.ce, align 1, !dbg !4925, !noalias !4809
  %i.cf = add nuw i64 %i.bx, 1, !dbg !4926
  store i64 %i.cf, ptr %i.d, align 8, !dbg !4927, !alias.scope !4809, !noalias !4807
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit, !dbg !4928

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.i, %bb.p, %bb.o, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit
  %.sroa.0.0 = phi ptr [ %i.cc, %bb.o ], [ %i.m, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit ], [ %i.bw, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileENtB2_16CompactFormatterECsbaWXNhtWAp9_11foundations.exit ], [ null, %bb.p ], [ %i.at, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit25.i ], [ %.sroa.02.0.i.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtCsaL1QbXo9JQH_3std2fs4FileEECsbaWXNhtWAp9_11foundations.exit.i ], !dbg !4929
  ret ptr %.sroa.0.0, !dbg !4930
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtCsduyiHOaxwSq_10serde_json3ser18format_escaped_strQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB20_(ptr %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 !dbg !4931 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [6 x i8], align 4                 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5093), !dbg !5122
  %i.c = load i64, ptr %.0.val, align 8, !dbg !5123, !range !877, !alias.scope !5093, !noalias !5094, !noundef !631
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !5124 ; 12 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !5124, !alias.scope !5093, !noalias !5094, !noundef !631 ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1, !dbg !5125
  tail call void @llvm.assume(i1 %i.f), !dbg !5126
  %i.g = sub nsw i64 %i.c, %i.e, !dbg !5127
  %i.h = icmp ugt i64 %i.g, 1, !dbg !5128
  br i1 %i.h, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2t_.exit.thread, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2t_.exit, !dbg !5128, !prof !732

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2t_.exit.thread: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5095), !dbg !5129
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !5130
  %i.j = load ptr, ptr %i.i, align 8, !dbg !5130, !alias.scope !5096, !noalias !5094, !nonnull !631, !noundef !631
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e, !dbg !5131
  store i8 34, ptr %i.k, align 1, !dbg !5132, !noalias !5096
  %i.l = add nuw i64 %i.e, 1, !dbg !5133
  store i64 %i.l, ptr %i.d, align 8, !dbg !5134, !alias.scope !5096, !noalias !5094
  br label %bb.b, !dbg !5135

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2t_.exit: ; preds = %bb.a
  %i.m = tail call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef range(i64 0, -9223372036854775808) 1) #27, !dbg !5136 ; 2 uses
  %.not = icmp eq ptr %i.m, null, !dbg !5137
  br i1 %.not, label %bb.b, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2r_.exit, !dbg !5135

bb.b:                                             ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2t_.exit.thread, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2t_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5098), !dbg !5138
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br label %.outer.i, !dbg !5139

.outer.i:                                         ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2y_.exit.i, %bb.b
  %.sroa.5.0.ph.i = phi i64 [ %i.aj, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2y_.exit.i ], [ %1, %bb.b ] ; 4 uses
  %.sroa.05.0.ph.i = phi ptr [ %i.ah, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2y_.exit.i ], [ %0, %bb.b ] ; 6 uses
  %exitcond.not.i31 = icmp eq i64 %.sroa.5.0.ph.i, 0, !dbg !5140
  br i1 %exitcond.not.i31, label %.outer.i._crit_edge, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i, !dbg !5140

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i
  %i.r = add i64 %.sroa.010.0.i32, 1, !dbg !5141  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %.sroa.5.0.ph.i, !dbg !5140
  br i1 %exitcond.not.i, label %.outer.i._crit_edge, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i, !dbg !5140

.outer.i._crit_edge:                              ; preds = %.outer.i, %bb.c
  %.sroa.5.0.ph.i46 = phi i64 [ %.sroa.5.0.ph.i, %bb.c ], [ 0, %.outer.i ] ; 5 uses
  %i.s = icmp eq i64 %.sroa.5.0.ph.i46, 0, !dbg !5142
  %.pre18 = load i64, ptr %i.d, align 8, !dbg !5143, !noalias !631 ; 5 uses
  br i1 %i.s, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit.thread, label %bb.d, !dbg !5144

bb.d:                                             ; preds = %.outer.i._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !5099), !dbg !5145
  %i.t = load i64, ptr %.0.val, align 8, !dbg !5146, !range !877, !alias.scope !5099, !noalias !5100, !noundef !631
  %i.u = icmp sgt i64 %.pre18, -1, !dbg !5147
  call void @llvm.assume(i1 %i.u), !dbg !5148
  %i.v = sub nsw i64 %i.t, %.pre18, !dbg !5149
  %i.w = icmp ult i64 %.sroa.5.0.ph.i46, %i.v, !dbg !5150
  br i1 %i.w, label %bb.e, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit, !dbg !5150, !prof !732

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !5101), !dbg !5151
  %i.x = load ptr, ptr %i.n, align 8, !dbg !5152, !alias.scope !5102, !noalias !5100, !nonnull !631, !noundef !631
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre18, !dbg !5153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i, i64 range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i46, i1 false), !dbg !5154, !noalias !5102
  %i.z = add nuw i64 %.pre18, %.sroa.5.0.ph.i46, !dbg !5155 ; 2 uses
  store i64 %i.z, ptr %i.d, align 8, !dbg !5156, !alias.scope !5102, !noalias !5100
  br label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit.thread, !dbg !5157

_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %.outer.i, %bb.c
  %.sroa.010.0.i32 = phi i64 [ %i.r, %bb.c ], [ 0, %.outer.i ] ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i, i64 %.sroa.010.0.i32, !dbg !5158
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !5159, !alias.scope !5098, !noundef !631 ; 3 uses
  %i.ac = zext i8 %i.ab to i64, !dbg !5160
  %i.ad = getelementptr inbounds nuw i8, ptr @_RNvNtCsduyiHOaxwSq_10serde_json3ser6ESCAPE, i64 %i.ac, !dbg !5161
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !5161, !noalias !5098, !noundef !631 ; 3 uses
  %i.af = icmp eq i8 %i.ae, 0, !dbg !5162
  br i1 %i.af, label %bb.c, label %bb.f, !dbg !5162

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i, i64 %.sroa.010.0.i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = xor i64 %.sroa.010.0.i32, -1
  %i.aj = add i64 %.sroa.5.0.ph.i, %i.ai
  %i.ak = icmp eq i64 %.sroa.010.0.i32, 0, !dbg !5163
  br i1 %i.ak, label %bb.h, label %bb.g, !dbg !5164

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !5103), !dbg !5165
  %i.al = load i64, ptr %.0.val, align 8, !dbg !5166, !range !877, !alias.scope !5103, !noalias !5104, !noundef !631
  %i.am = load i64, ptr %i.d, align 8, !dbg !5167, !alias.scope !5103, !noalias !5104, !noundef !631 ; 4 uses
  %i.an = icmp sgt i64 %i.am, -1, !dbg !5168
  call void @llvm.assume(i1 %i.an), !dbg !5169
  %i.ao = sub nsw i64 %i.al, %i.am, !dbg !5170
  %i.ap = icmp ult i64 %.sroa.010.0.i32, %i.ao, !dbg !5171
  br i1 %i.ap, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2C_.exit25.thread.i, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2C_.exit25.i, !dbg !5171, !prof !732

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2C_.exit25.thread.i: ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !5105), !dbg !5172
  %i.aq = load ptr, ptr %i.n, align 8, !dbg !5173, !alias.scope !5106, !noalias !5104, !nonnull !631, !noundef !631
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am, !dbg !5174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i, i64 range(i64 1, -9223372036854775808) %.sroa.010.0.i32, i1 false), !dbg !5175, !noalias !5106
  %i.as = add nuw i64 %i.am, %.sroa.010.0.i32, !dbg !5176
  store i64 %i.as, ptr %i.d, align 8, !dbg !5177, !alias.scope !5106, !noalias !5104
  br label %bb.h, !dbg !5178

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2C_.exit25.i: ; preds = %bb.g
  %i.at = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i32) #27, !dbg !5179 ; 2 uses
  %.not20.i = icmp eq ptr %i.at, null, !dbg !5180
  br i1 %.not20.i, label %bb.h, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2r_.exit, !dbg !5178

bb.h:                                             ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2C_.exit25.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2C_.exit25.thread.i, %bb.f
  %i.au = icmp eq i8 %i.ae, 117, !dbg !5181
  br i1 %i.au, label %bb.i, label %bb.l, !dbg !5181

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5182, !noalias !5098
  %i.av = and i8 %i.ab, 15, !dbg !5183
  %i.aw = zext nneg i8 %i.av to i64, !dbg !5183
  %i.ax = lshr i8 %i.ab, 4, !dbg !5184
  %i.ay = zext nneg i8 %i.ax to i64, !dbg !5184
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsduyiHOaxwSq_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.ay, !dbg !5185
  %i.ba = load i8, ptr %i.az, align 1, !dbg !5185, !noalias !5098, !noundef !631
  %i.bb = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsduyiHOaxwSq_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.aw, !dbg !5186
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !5186, !noalias !5098, !noundef !631
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !dbg !5182, !noalias !5098
  store i8 %i.ba, ptr %i.p, align 4, !dbg !5182, !noalias !5098
  store i8 %i.bc, ptr %i.q, align 1, !dbg !5182, !noalias !5098
  call void @llvm.experimental.noalias.scope.decl(metadata !5108), !dbg !5187
  %i.bd = load i64, ptr %.0.val, align 8, !dbg !5188, !range !877, !alias.scope !5108, !noalias !5109, !noundef !631
  %i.be = load i64, ptr %i.d, align 8, !dbg !5189, !alias.scope !5108, !noalias !5109, !noundef !631 ; 4 uses
  %i.bf = icmp sgt i64 %i.be, -1, !dbg !5190
  call void @llvm.assume(i1 %i.bf), !dbg !5191
  %i.bg = sub nsw i64 %i.bd, %i.be, !dbg !5192
  %i.bh = icmp ugt i64 %i.bg, 6, !dbg !5193
  br i1 %i.bh, label %bb.k, label %bb.j, !dbg !5193, !prof !732

bb.j:                                             ; preds = %bb.i
  %i.bi = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 6) #27, !dbg !5194
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit.i.i, !dbg !5194

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5110), !dbg !5195
  %i.bj = load ptr, ptr %i.n, align 8, !dbg !5196, !alias.scope !5111, !noalias !5109, !nonnull !631, !noundef !631
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be, !dbg !5197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bk, ptr noundef nonnull readonly align 4 dereferenceable(6) %i.b, i64 range(i64 0, -9223372036854775808) 6, i1 false), !dbg !5198, !noalias !5111
  %i.bl = add nuw i64 %i.be, 6, !dbg !5199
  store i64 %i.bl, ptr %i.d, align 8, !dbg !5200, !alias.scope !5111, !noalias !5109
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit.i.i, !dbg !5201

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i26.i = phi ptr [ null, %bb.k ], [ %i.bi, %bb.j ], !dbg !5202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5203, !noalias !5098
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2y_.exit.i, !dbg !5204

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5205, !noalias !5098
  store i8 92, ptr %i.a, align 2, !dbg !5205, !noalias !5098
  store i8 %i.ae, ptr %i.o, align 1, !dbg !5205, !noalias !5098
  call void @llvm.experimental.noalias.scope.decl(metadata !5112), !dbg !5206
  %i.bm = load i64, ptr %.0.val, align 8, !dbg !5207, !range !877, !alias.scope !5112, !noalias !5113, !noundef !631
  %i.bn = load i64, ptr %i.d, align 8, !dbg !5208, !alias.scope !5112, !noalias !5113, !noundef !631 ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, -1, !dbg !5209
  call void @llvm.assume(i1 %i.bo), !dbg !5210
  %i.bp = sub nsw i64 %i.bm, %i.bn, !dbg !5211
  %i.bq = icmp ugt i64 %i.bp, 2, !dbg !5212
  br i1 %i.bq, label %bb.n, label %bb.m, !dbg !5212, !prof !732

bb.m:                                             ; preds = %bb.l
  %i.br = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 2) #27, !dbg !5213
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit7.i.i, !dbg !5213

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !5114), !dbg !5214
  %i.bs = load ptr, ptr %i.n, align 8, !dbg !5215, !alias.scope !5115, !noalias !5113, !nonnull !631, !noundef !631
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bn, !dbg !5216
  %i.bu = load i16, ptr %i.a, align 2, !dbg !5217, !noalias !5116
  store i16 %i.bu, ptr %i.bt, align 1, !dbg !5217, !noalias !5115
  %i.bv = add nuw i64 %i.bn, 2, !dbg !5218
  store i64 %i.bv, ptr %i.d, align 8, !dbg !5219, !alias.scope !5115, !noalias !5113
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit7.i.i, !dbg !5220

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit7.i.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i6.i.i = phi ptr [ null, %bb.n ], [ %i.br, %bb.m ], !dbg !5221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5222, !noalias !5098
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2y_.exit.i, !dbg !5222

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2y_.exit.i: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit7.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit.i.i
  %.sroa.02.0.i.i = phi ptr [ %.sroa.0.0.i.i6.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit7.i.i ], [ %.sroa.0.0.i.i.i26.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit.i.i ], !dbg !5223 ; 2 uses
  %.not21.i = icmp eq ptr %.sroa.02.0.i.i, null, !dbg !5224
  br i1 %.not21.i, label %.outer.i, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2r_.exit, !dbg !5225

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit: ; preds = %bb.d
  %i.bw = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i46) #27, !dbg !5226 ; 2 uses
  %.not5 = icmp eq ptr %i.bw, null, !dbg !5138
  br i1 %.not5, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit.thread_crit_edge, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2r_.exit, !dbg !5135

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit.thread_crit_edge: ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit
  %.pre = load i64, ptr %i.d, align 8, !dbg !5143, !alias.scope !5118, !noalias !5119
  br label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit.thread, !dbg !5135

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit.thread: ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit.thread_crit_edge, %.outer.i._crit_edge, %bb.e
  %i.bx = phi i64 [ %.pre, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit.thread_crit_edge ], [ %.pre18, %.outer.i._crit_edge ], [ %i.z, %bb.e ], !dbg !5143 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5118), !dbg !5227
  %i.by = load i64, ptr %.0.val, align 8, !dbg !5228, !range !877, !alias.scope !5118, !noalias !5119, !noundef !631
  %i.bz = icmp sgt i64 %i.bx, -1, !dbg !5229
  call void @llvm.assume(i1 %i.bz), !dbg !5230
  %i.ca = sub nsw i64 %i.by, %i.bx, !dbg !5231
  %i.cb = icmp ugt i64 %i.ca, 1, !dbg !5232
  br i1 %i.cb, label %bb.p, label %bb.o, !dbg !5232, !prof !732

bb.o:                                             ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit.thread
  %i.cc = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef range(i64 0, -9223372036854775808) 1) #27, !dbg !5233
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2r_.exit, !dbg !5233

bb.p:                                             ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !5120), !dbg !5234
  %i.cd = load ptr, ptr %i.n, align 8, !dbg !5235, !alias.scope !5121, !noalias !5119, !nonnull !631, !noundef !631
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bx, !dbg !5236
  store i8 34, ptr %i.ce, align 1, !dbg !5237, !noalias !5121
  %i.cf = add nuw i64 %i.bx, 1, !dbg !5238
  store i64 %i.cf, ptr %i.d, align 8, !dbg !5239, !alias.scope !5121, !noalias !5119
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2r_.exit, !dbg !5240

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2r_.exit: ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2y_.exit.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2C_.exit25.i, %bb.p, %bb.o, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2t_.exit
  %.sroa.0.0 = phi ptr [ %i.cc, %bb.o ], [ %i.m, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2t_.exit ], [ %i.bw, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_15PrettyFormatterEB29_.exit ], [ null, %bb.p ], [ %i.at, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2C_.exit25.i ], [ %.sroa.02.0.i.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser15PrettyFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2y_.exit.i ], !dbg !5241
  ret ptr %.sroa.0.0, !dbg !5242
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtCsduyiHOaxwSq_10serde_json3ser18format_escaped_strQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB20_(ptr %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 !dbg !5243 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [6 x i8], align 4                 ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5405), !dbg !5434
  %i.c = load i64, ptr %.0.val, align 8, !dbg !5435, !range !877, !alias.scope !5405, !noalias !5406, !noundef !631
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !5436 ; 12 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !5436, !alias.scope !5405, !noalias !5406, !noundef !631 ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1, !dbg !5437
  tail call void @llvm.assume(i1 %i.f), !dbg !5438
  %i.g = sub nsw i64 %i.c, %i.e, !dbg !5439
  %i.h = icmp ugt i64 %i.g, 1, !dbg !5440
  br i1 %i.h, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2u_.exit.thread, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2u_.exit, !dbg !5440, !prof !732

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2u_.exit.thread: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5407), !dbg !5441
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !5442
  %i.j = load ptr, ptr %i.i, align 8, !dbg !5442, !alias.scope !5408, !noalias !5406, !nonnull !631, !noundef !631
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e, !dbg !5443
  store i8 34, ptr %i.k, align 1, !dbg !5444, !noalias !5408
  %i.l = add nuw i64 %i.e, 1, !dbg !5445
  store i64 %i.l, ptr %i.d, align 8, !dbg !5446, !alias.scope !5408, !noalias !5406
  br label %bb.b, !dbg !5447

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2u_.exit: ; preds = %bb.a
  %i.m = tail call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef range(i64 0, -9223372036854775808) 1) #27, !dbg !5448 ; 2 uses
  %.not = icmp eq ptr %i.m, null, !dbg !5449
  br i1 %.not, label %bb.b, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2s_.exit, !dbg !5447

bb.b:                                             ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2u_.exit.thread, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2u_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5410), !dbg !5450
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br label %.outer.i, !dbg !5451

.outer.i:                                         ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2z_.exit.i, %bb.b
  %.sroa.5.0.ph.i = phi i64 [ %i.aj, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2z_.exit.i ], [ %1, %bb.b ] ; 4 uses
  %.sroa.05.0.ph.i = phi ptr [ %i.ah, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2z_.exit.i ], [ %0, %bb.b ] ; 6 uses
  %exitcond.not.i31 = icmp eq i64 %.sroa.5.0.ph.i, 0, !dbg !5452
  br i1 %exitcond.not.i31, label %.outer.i._crit_edge, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i, !dbg !5452

bb.c:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i
  %i.r = add i64 %.sroa.010.0.i32, 1, !dbg !5453  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %.sroa.5.0.ph.i, !dbg !5452
  br i1 %exitcond.not.i, label %.outer.i._crit_edge, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i, !dbg !5452

.outer.i._crit_edge:                              ; preds = %.outer.i, %bb.c
  %.sroa.5.0.ph.i46 = phi i64 [ %.sroa.5.0.ph.i, %bb.c ], [ 0, %.outer.i ] ; 5 uses
  %i.s = icmp eq i64 %.sroa.5.0.ph.i46, 0, !dbg !5454
  %.pre18 = load i64, ptr %i.d, align 8, !dbg !5455, !noalias !631 ; 5 uses
  br i1 %i.s, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit.thread, label %bb.d, !dbg !5456

bb.d:                                             ; preds = %.outer.i._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !5411), !dbg !5457
  %i.t = load i64, ptr %.0.val, align 8, !dbg !5458, !range !877, !alias.scope !5411, !noalias !5412, !noundef !631
  %i.u = icmp sgt i64 %.pre18, -1, !dbg !5459
  call void @llvm.assume(i1 %i.u), !dbg !5460
  %i.v = sub nsw i64 %i.t, %.pre18, !dbg !5461
  %i.w = icmp ult i64 %.sroa.5.0.ph.i46, %i.v, !dbg !5462
  br i1 %i.w, label %bb.e, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit, !dbg !5462, !prof !732

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !5413), !dbg !5463
  %i.x = load ptr, ptr %i.n, align 8, !dbg !5464, !alias.scope !5414, !noalias !5412, !nonnull !631, !noundef !631
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.pre18, !dbg !5465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i, i64 range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i46, i1 false), !dbg !5466, !noalias !5414
  %i.z = add nuw i64 %.pre18, %.sroa.5.0.ph.i46, !dbg !5467 ; 2 uses
  store i64 %i.z, ptr %i.d, align 8, !dbg !5468, !alias.scope !5414, !noalias !5412
  br label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit.thread, !dbg !5469

_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %.outer.i, %bb.c
  %.sroa.010.0.i32 = phi i64 [ %i.r, %bb.c ], [ 0, %.outer.i ] ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i, i64 %.sroa.010.0.i32, !dbg !5470
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !5471, !alias.scope !5410, !noundef !631 ; 3 uses
  %i.ac = zext i8 %i.ab to i64, !dbg !5472
  %i.ad = getelementptr inbounds nuw i8, ptr @_RNvNtCsduyiHOaxwSq_10serde_json3ser6ESCAPE, i64 %i.ac, !dbg !5473
  %i.ae = load i8, ptr %i.ad, align 1, !dbg !5473, !noalias !5410, !noundef !631 ; 3 uses
  %i.af = icmp eq i8 %i.ae, 0, !dbg !5474
  br i1 %i.af, label %bb.c, label %bb.f, !dbg !5474

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCsbaWXNhtWAp9_11foundations.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i, i64 %.sroa.010.0.i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ai = xor i64 %.sroa.010.0.i32, -1
  %i.aj = add i64 %.sroa.5.0.ph.i, %i.ai
  %i.ak = icmp eq i64 %.sroa.010.0.i32, 0, !dbg !5475
  br i1 %i.ak, label %bb.h, label %bb.g, !dbg !5476

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !5415), !dbg !5477
  %i.al = load i64, ptr %.0.val, align 8, !dbg !5478, !range !877, !alias.scope !5415, !noalias !5416, !noundef !631
  %i.am = load i64, ptr %i.d, align 8, !dbg !5479, !alias.scope !5415, !noalias !5416, !noundef !631 ; 4 uses
  %i.an = icmp sgt i64 %i.am, -1, !dbg !5480
  call void @llvm.assume(i1 %i.an), !dbg !5481
  %i.ao = sub nsw i64 %i.al, %i.am, !dbg !5482
  %i.ap = icmp ult i64 %.sroa.010.0.i32, %i.ao, !dbg !5483
  br i1 %i.ap, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2D_.exit25.thread.i, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2D_.exit25.i, !dbg !5483, !prof !732

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2D_.exit25.thread.i: ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !5417), !dbg !5484
  %i.aq = load ptr, ptr %i.n, align 8, !dbg !5485, !alias.scope !5418, !noalias !5416, !nonnull !631, !noundef !631
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am, !dbg !5486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.05.0.ph.i, i64 range(i64 1, -9223372036854775808) %.sroa.010.0.i32, i1 false), !dbg !5487, !noalias !5418
  %i.as = add nuw i64 %i.am, %.sroa.010.0.i32, !dbg !5488
  store i64 %i.as, ptr %i.d, align 8, !dbg !5489, !alias.scope !5418, !noalias !5416
  br label %bb.h, !dbg !5490

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2D_.exit25.i: ; preds = %bb.g
  %i.at = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i32) #27, !dbg !5491 ; 2 uses
  %.not20.i = icmp eq ptr %i.at, null, !dbg !5492
  br i1 %.not20.i, label %bb.h, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2s_.exit, !dbg !5490

bb.h:                                             ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2D_.exit25.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2D_.exit25.thread.i, %bb.f
  %i.au = icmp eq i8 %i.ae, 117, !dbg !5493
  br i1 %i.au, label %bb.i, label %bb.l, !dbg !5493

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5494, !noalias !5410
  %i.av = and i8 %i.ab, 15, !dbg !5495
  %i.aw = zext nneg i8 %i.av to i64, !dbg !5495
  %i.ax = lshr i8 %i.ab, 4, !dbg !5496
  %i.ay = zext nneg i8 %i.ax to i64, !dbg !5496
  %i.az = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsduyiHOaxwSq_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.ay, !dbg !5497
  %i.ba = load i8, ptr %i.az, align 1, !dbg !5497, !noalias !5410, !noundef !631
  %i.bb = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCsduyiHOaxwSq_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.aw, !dbg !5498
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !5498, !noalias !5410, !noundef !631
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !dbg !5494, !noalias !5410
  store i8 %i.ba, ptr %i.p, align 4, !dbg !5494, !noalias !5410
  store i8 %i.bc, ptr %i.q, align 1, !dbg !5494, !noalias !5410
  call void @llvm.experimental.noalias.scope.decl(metadata !5420), !dbg !5499
  %i.bd = load i64, ptr %.0.val, align 8, !dbg !5500, !range !877, !alias.scope !5420, !noalias !5421, !noundef !631
  %i.be = load i64, ptr %i.d, align 8, !dbg !5501, !alias.scope !5420, !noalias !5421, !noundef !631 ; 4 uses
  %i.bf = icmp sgt i64 %i.be, -1, !dbg !5502
  call void @llvm.assume(i1 %i.bf), !dbg !5503
  %i.bg = sub nsw i64 %i.bd, %i.be, !dbg !5504
  %i.bh = icmp ugt i64 %i.bg, 6, !dbg !5505
  br i1 %i.bh, label %bb.k, label %bb.j, !dbg !5505, !prof !732

bb.j:                                             ; preds = %bb.i
  %i.bi = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 6) #27, !dbg !5506
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit.i.i, !dbg !5506

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5422), !dbg !5507
  %i.bj = load ptr, ptr %i.n, align 8, !dbg !5508, !alias.scope !5423, !noalias !5421, !nonnull !631, !noundef !631
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.be, !dbg !5509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bk, ptr noundef nonnull readonly align 4 dereferenceable(6) %i.b, i64 range(i64 0, -9223372036854775808) 6, i1 false), !dbg !5510, !noalias !5423
  %i.bl = add nuw i64 %i.be, 6, !dbg !5511
  store i64 %i.bl, ptr %i.d, align 8, !dbg !5512, !alias.scope !5423, !noalias !5421
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit.i.i, !dbg !5513

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit.i.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i.i26.i = phi ptr [ null, %bb.k ], [ %i.bi, %bb.j ], !dbg !5514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5515, !noalias !5410
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2z_.exit.i, !dbg !5516

bb.l:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5517, !noalias !5410
  store i8 92, ptr %i.a, align 2, !dbg !5517, !noalias !5410
  store i8 %i.ae, ptr %i.o, align 1, !dbg !5517, !noalias !5410
  call void @llvm.experimental.noalias.scope.decl(metadata !5424), !dbg !5518
  %i.bm = load i64, ptr %.0.val, align 8, !dbg !5519, !range !877, !alias.scope !5424, !noalias !5425, !noundef !631
  %i.bn = load i64, ptr %i.d, align 8, !dbg !5520, !alias.scope !5424, !noalias !5425, !noundef !631 ; 4 uses
  %i.bo = icmp sgt i64 %i.bn, -1, !dbg !5521
  call void @llvm.assume(i1 %i.bo), !dbg !5522
  %i.bp = sub nsw i64 %i.bm, %i.bn, !dbg !5523
  %i.bq = icmp ugt i64 %i.bp, 2, !dbg !5524
  br i1 %i.bq, label %bb.n, label %bb.m, !dbg !5524, !prof !732

bb.m:                                             ; preds = %bb.l
  %i.br = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 2) #27, !dbg !5525
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit7.i.i, !dbg !5525

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !5426), !dbg !5526
  %i.bs = load ptr, ptr %i.n, align 8, !dbg !5527, !alias.scope !5427, !noalias !5425, !nonnull !631, !noundef !631
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bn, !dbg !5528
  %i.bu = load i16, ptr %i.a, align 2, !dbg !5529, !noalias !5428
  store i16 %i.bu, ptr %i.bt, align 1, !dbg !5529, !noalias !5427
  %i.bv = add nuw i64 %i.bn, 2, !dbg !5530
  store i64 %i.bv, ptr %i.d, align 8, !dbg !5531, !alias.scope !5427, !noalias !5425
  br label %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit7.i.i, !dbg !5532

_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit7.i.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i6.i.i = phi ptr [ null, %bb.n ], [ %i.br, %bb.m ], !dbg !5533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5534, !noalias !5410
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2z_.exit.i, !dbg !5534

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2z_.exit.i: ; preds = %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit7.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit.i.i
  %.sroa.02.0.i.i = phi ptr [ %.sroa.0.0.i.i6.i.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit7.i.i ], [ %.sroa.0.0.i.i.i26.i, %_RNvXs_NtNtCs3oUPovFnLWP_4core2io5implsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtNtB6_5write5Write9write_allB1I_.exit.i.i ], !dbg !5535 ; 2 uses
  %.not21.i = icmp eq ptr %.sroa.02.0.i.i, null, !dbg !5536
  br i1 %.not21.i, label %.outer.i, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2s_.exit, !dbg !5537

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit: ; preds = %bb.d
  %i.bw = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.5.0.ph.i46) #27, !dbg !5538 ; 2 uses
  %.not5 = icmp eq ptr %i.bw, null, !dbg !5450
  br i1 %.not5, label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit.thread_crit_edge, label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2s_.exit, !dbg !5447

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit.thread_crit_edge: ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit
  %.pre = load i64, ptr %i.d, align 8, !dbg !5455, !alias.scope !5430, !noalias !5431
  br label %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit.thread, !dbg !5447

_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit.thread: ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit.thread_crit_edge, %.outer.i._crit_edge, %bb.e
  %i.bx = phi i64 [ %.pre, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit._RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit.thread_crit_edge ], [ %.pre18, %.outer.i._crit_edge ], [ %i.z, %bb.e ], !dbg !5455 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5430), !dbg !5539
  %i.by = load i64, ptr %.0.val, align 8, !dbg !5540, !range !877, !alias.scope !5430, !noalias !5431, !noundef !631
  %i.bz = icmp sgt i64 %i.bx, -1, !dbg !5541
  call void @llvm.assume(i1 %i.bz), !dbg !5542
  %i.ca = sub nsw i64 %i.by, %i.bx, !dbg !5543
  %i.cb = icmp ugt i64 %i.ca, 1, !dbg !5544
  br i1 %i.cb, label %bb.p, label %bb.o, !dbg !5544, !prof !732

bb.o:                                             ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit.thread
  %i.cc = call noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterE14write_all_coldB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef range(i64 0, -9223372036854775808) 1) #27, !dbg !5545
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2s_.exit, !dbg !5545

bb.p:                                             ; preds = %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !5432), !dbg !5546
  %i.cd = load ptr, ptr %i.n, align 8, !dbg !5547, !alias.scope !5433, !noalias !5431, !nonnull !631, !noundef !631
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bx, !dbg !5548
  store i8 34, ptr %i.ce, align 1, !dbg !5549, !noalias !5433
  %i.cf = add nuw i64 %i.bx, 1, !dbg !5550
  store i64 %i.cf, ptr %i.d, align 8, !dbg !5551, !alias.scope !5433, !noalias !5431
  br label %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2s_.exit, !dbg !5552

_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2s_.exit: ; preds = %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2z_.exit.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2D_.exit25.i, %bb.p, %bb.o, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2u_.exit
  %.sroa.0.0 = phi ptr [ %i.cc, %bb.o ], [ %i.m, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter12begin_stringQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2u_.exit ], [ %i.bw, %_RINvNtCsduyiHOaxwSq_10serde_json3ser27format_escaped_str_contentsQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterENtB2_16CompactFormatterEB29_.exit ], [ null, %bb.p ], [ %i.at, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter21write_string_fragmentQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2D_.exit25.i ], [ %.sroa.02.0.i.i, %_RINvYNtNtCsduyiHOaxwSq_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriter9BufWriterNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB2z_.exit.i ], !dbg !5553
  ret ptr %.sroa.0.0, !dbg !5554
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsk0CWu4ZZ5RA_9backtrace9symbolize7resolveNCNCNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry6server12pprof_symbol12pprof_symbol0s_0EBW_(ptr noundef %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5555 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5584
  %i.c = tail call { ptr, i8 } @_RNvNtCsk0CWu4ZZ5RA_9backtrace4lock4lock(), !dbg !5585 ; 2 uses
  %i.d = extractvalue { ptr, i8 } %i.c, 0, !dbg !5585
  %i.e = extractvalue { ptr, i8 } %i.c, 1, !dbg !5585
  store ptr %i.d, ptr %i.b, align 8, !dbg !5585
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !5585 ; 3 uses
  store i8 %i.e, ptr %i.f, align 8, !dbg !5585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !5582
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.g, align 8, !noalias !5582
  invoke void @_RNvNtNtCsk0CWu4ZZ5RA_9backtrace9symbolize5gimli7resolve(i64 noundef 0, ptr noundef %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @10)
          to label %bb.c unwind label %bb.b, !dbg !5586

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk0CWu4ZZ5RA_9backtrace4lock9LockGuardECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #26
          to label %common.resume unwind label %bb.l, !dbg !5587

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5588
  call void @llvm.experimental.noalias.scope.decl(metadata !5583), !dbg !5587
  invoke void @_RNvXNtCsk0CWu4ZZ5RA_9backtrace4lockNtB2_9LockGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d, !dbg !5589

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load ptr, ptr %i.b, align 8, !dbg !5589, !alias.scope !5583
  %.val3.i = load i8, ptr %i.f, align 8, !dbg !5589, !range !746, !alias.scope !5583, !noundef !631
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuarduEEECsbaWXNhtWAp9_11foundations(ptr %.val2.i, i8 %.val3.i) #26
          to label %common.resume unwind label %bb.k, !dbg !5589

bb.e:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !5589, !alias.scope !5583 ; 4 uses
  %.val1.i = load i8, ptr %i.f, align 8, !dbg !5589, !range !746, !alias.scope !5583, !noundef !631 ; 2 uses
  %i.j = icmp eq i8 %.val1.i, 2, !dbg !5590
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk0CWu4ZZ5RA_9backtrace4lock9LockGuardECsbaWXNhtWAp9_11foundations.exit, label %bb.f, !dbg !5590

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 4, !dbg !5591
  %i.l = trunc nuw i8 %.val1.i to i1, !dbg !5592
  br i1 %i.l, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.g, !dbg !5592

bb.g:                                             ; preds = %bb.f
  %i.m = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !5593, !noalias !5583
  %i.n = and i64 %i.m, 9223372036854775807, !dbg !5594
  %i.o = icmp eq i64 %i.n, 0, !dbg !5594
  br i1 %i.o, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.h, !dbg !5594, !prof !732

bb.h:                                             ; preds = %bb.g
  %i.p = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #27, !dbg !5595
  br i1 %i.p, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.i, !dbg !5596

bb.i:                                             ; preds = %bb.h
  store atomic i8 1, ptr %i.k monotonic, align 1, !dbg !5597
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, !dbg !5598

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.q = atomicrmw xchg ptr %.val.i, i32 0 release, align 4, !dbg !5599
  %i.r = icmp eq i32 %i.q, 2, !dbg !5600
  br i1 %i.r, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk0CWu4ZZ5RA_9backtrace4lock9LockGuardECsbaWXNhtWAp9_11foundations.exit, !dbg !5600, !prof !739

bb.j:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i), !dbg !5601
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk0CWu4ZZ5RA_9backtrace4lock9LockGuardECsbaWXNhtWAp9_11foundations.exit, !dbg !5601

bb.k:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !5589
  unreachable, !dbg !5589

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.h, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !5602

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsk0CWu4ZZ5RA_9backtrace4lock9LockGuardECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.e, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5587
  ret void, !dbg !5603

bb.l:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25, !dbg !5604
  unreachable, !dbg !5604
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtCsgwhc9xWyoN8_9slog_term20PlainRecordDecoratorNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEB1M_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5605 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5625
  store ptr %0, ptr %i.b, align 8, !dbg !5626
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !5626 ; 2 uses
  store ptr null, ptr %i.c, align 8, !dbg !5626
  %i.d = invoke noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @11, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b, !dbg !5627

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtCsgwhc9xWyoN8_9slog_term20PlainRecordDecoratorNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log12retry_writer15RetryPipeWriterEEEB2i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #26
          to label %bb.l unwind label %bb.k, !dbg !5628

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !dbg !5629, !noundef !631 ; 5 uses
  %.not = icmp eq ptr %i.f, null, !dbg !5629      ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e, !dbg !5630

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, !dbg !5631, !prof !739

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, label %bb.f, !dbg !5632

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5633
  %i.g = ptrtoint ptr %i.f to i64, !dbg !5634     ; 2 uses
  %i.h = and i64 %i.g, 3, !dbg !5635
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i
    i64 1, label %bb.h
  ], !dbg !5636, !prof !846

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr), !dbg !5637
  %i.j = and i64 %i.g, 1095216660480, !dbg !5638
  %i.k = icmp ne i64 %i.j, 1095216660480, !dbg !5638
  call void @llvm.assume(i1 %i.i), !dbg !5639
  call void @llvm.assume(i1 %i.k), !dbg !5639
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i, !dbg !5640

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 -1, !dbg !5641 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ], !dbg !5642
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5643 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !dbg !5643, !alias.scope !5624
  store i8 3, ptr %i.a, align 8, !dbg !5644, !alias.scope !5624
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m), !dbg !5645
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i, !dbg !5646

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5647
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit, !dbg !5632

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbaWXNhtWAp9_11foundations.exit.i ], !dbg !5648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5628
  ret ptr %.sroa.0.0, !dbg !5649

bb.i:                                             ; preds = %bb.d
end_hunk_1
