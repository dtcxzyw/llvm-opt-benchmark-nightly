Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.07?download=true
begin_hunk_0_@_RNvMs2_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4fillCs2NzvFoTxuAy_2rg:bb.a

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %.val1.i17, i64 noundef %.val1.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !dbg !1558
  unreachable, !dbg !1558

bb.g:                                             ; preds = %bb.e
  %i.ai = ptrtoint ptr %i.ag to i64, !dbg !1554
  %i.aj = load i64, ptr %i.c, align 8, !dbg !1559, !noundef !15
  %i.ak = add i64 %i.aj, %i.ai, !dbg !1559        ; 2 uses
  store i64 %i.ak, ptr %i.c, align 8, !dbg !1559
  %i.al = icmp eq i64 %i.ak, 0, !dbg !1560
  br i1 %i.al, label %bb.h, label %bb.i, !dbg !1560

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 146, !dbg !1561
  store i8 1, ptr %i.am, align 2, !dbg !1561
  br label %bb.i, !dbg !1562

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.0.0 = phi ptr [ %i.ag, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], !dbg !1524
  ret ptr %.sroa.0.0, !dbg !1563

bb.j:                                             ; preds = %.lr.ph
  %i.an = add i64 %.sroa.7.037, 1, !dbg !1540     ; 2 uses
  %i.ao = add nuw i64 %.sroa.0.02338, 1, !dbg !1564
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.02338, !dbg !1542
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !1542, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.7.037, !dbg !1536
  store i8 %i.aq, ptr %i.ar, align 1, !dbg !1536
  %exitcond40.not = icmp eq i64 %i.an, %i.k, !dbg !1567
  br i1 %exitcond40.not, label %bb.c, label %.lr.ph, !dbg !1543, !llvm.loop !1569

bb.k:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !dbg !1536
  unreachable, !dbg !1536
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs2_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRShQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4fillCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1570 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !1571 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !1571, !noundef !15 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !1572 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !1572, !noundef !15 ; 4 uses
  %i.e = icmp ult i64 %i.b, %i.d, !dbg !1571
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val15 = load ptr, ptr %i.f, align 8, !dbg !1573 ; 5 uses
  br i1 %i.e, label %bb.b, label %.thread, !dbg !1571

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val15, i64 16, !dbg !1574
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !dbg !1576
  %.val1.i1747 = load i64, ptr %i.g, align 8, !dbg !1574, !noundef !15
  br label %bb.e, !dbg !1577

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val15, i64 8, !dbg !1582
  %.val.i = load ptr, ptr %i.h, align 8, !dbg !1582, !nonnull !15, !noundef !15 ; 4 uses
  %i.i = getelementptr i8, ptr %.val15, i64 16, !dbg !1582
  %.val1.i = load i64, ptr %i.i, align 8, !dbg !1582, !noundef !15 ; 5 uses
  %i.j = icmp ult i64 %i.d, %.val1.i, !dbg !1584
  br i1 %i.j, label %.lr.ph.preheader, label %bb.d, !dbg !1584, !prof !95

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = sub i64 %i.d, %i.b, !dbg !1585           ; 5 uses
  %i.l = xor i64 %i.b, -1, !dbg !1585
  %i.m = add i64 %i.d, %i.l, !dbg !1585
  %i.n = tail call i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.m), !dbg !1585
  %i.o = add i64 %i.n, 1, !dbg !1585              ; 3 uses
  %min.iters.check = icmp ult i64 %i.o, 33, !dbg !1585
  %diff.check = icmp ugt i64 %i.b, -32, !dbg !1585
  %or.cond = or i1 %min.iters.check, %diff.check, !dbg !1585
  br i1 %or.cond, label %.lr.ph.preheader53, label %vector.ph, !dbg !1585

.lr.ph.preheader53:                               ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.0.02338.ph = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.s, %vector.body ]
  %.sroa.7.037.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph, !dbg !1585

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.p = and i64 %i.o, 31                         ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 32, i64 %i.p
  %n.vec = sub i64 %i.o, %i.r                     ; 3 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.b
  br label %vector.body, !dbg !1589

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !1589 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %index, !dbg !1591 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !1591
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !dbg !1591
  %wide.load51 = load <16 x i8>, ptr %i.v, align 1, !dbg !1591
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i, i64 %index, !dbg !1585 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !1585
  store <16 x i8> %wide.load, ptr %i.w, align 1, !dbg !1585
  store <16 x i8> %wide.load51, ptr %i.x, align 1, !dbg !1585
  %index.next = add nuw i64 %index, 32, !dbg !1589 ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !1592
  br i1 %i.y, label %.lr.ph.preheader53, label %vector.body, !dbg !1592, !llvm.loop !1595

bb.c:                                             ; preds = %bb.j
  store i64 %i.k, ptr %i.c, align 8, !dbg !1573
  store i64 0, ptr %i.a, align 8, !dbg !1576
  %i.z = getelementptr i8, ptr %.val15, i64 16, !dbg !1574
  %.val1.i17 = load i64, ptr %i.z, align 8, !dbg !1574, !noundef !15 ; 4 uses
  %i.aa = icmp ugt i64 %i.k, %.val1.i17, !dbg !1577
  br i1 %i.aa, label %bb.f, label %bb.e, !dbg !1577, !prof !1387

bb.d:                                             ; preds = %bb.b
  tail call void @_RINvNtCsG258MDvU3F_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14, !dbg !1596
  unreachable, !dbg !1596

.lr.ph:                                           ; preds = %.lr.ph.preheader53, %bb.j
  %.sroa.0.02338 = phi i64 [ %i.ao, %bb.j ], [ %.sroa.0.02338.ph, %.lr.ph.preheader53 ] ; 2 uses
  %.sroa.7.037 = phi i64 [ %i.an, %bb.j ], [ %.sroa.7.037.ph, %.lr.ph.preheader53 ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.7.037, %.val1.i, !dbg !1585
  br i1 %exitcond.not, label %bb.k, label %bb.j, !dbg !1585

bb.e:                                             ; preds = %.thread, %bb.c
  %.val1.i1750 = phi i64 [ %.val1.i1747, %.thread ], [ %.val1.i17, %bb.c ]
  %storemerge49 = phi i64 [ 0, %.thread ], [ %i.k, %bb.c ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.val15, i64 8, !dbg !1574
  %.val.i16 = load ptr, ptr %i.ab, align 8, !dbg !1574, !nonnull !15, !noundef !15
  %i.ac = sub nuw i64 %.val1.i1750, %storemerge49, !dbg !1597
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i16, i64 %storemerge49, !dbg !1598
  %i.ae = tail call { i64, ptr } @_RNvXs1_NtCs4h1mOclLn8u_14encoding_rs_io4utilINtB5_9BomPeekerRShENtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noalias nofree noundef nonnull %i.ad, i64 noundef %i.ac), !dbg !1603 ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ae, 0, !dbg !1603
  %i.ag = extractvalue { i64, ptr } %i.ae, 1, !dbg !1603 ; 2 uses
  %i.ah = trunc nuw i64 %i.af to i1, !dbg !1604
  br i1 %i.ah, label %bb.i, label %bb.g, !dbg !1604

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %.val1.i17, i64 noundef %.val1.i17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #14, !dbg !1607
  unreachable, !dbg !1607

bb.g:                                             ; preds = %bb.e
  %i.ai = ptrtoint ptr %i.ag to i64, !dbg !1603
  %i.aj = load i64, ptr %i.c, align 8, !dbg !1608, !noundef !15
  %i.ak = add i64 %i.aj, %i.ai, !dbg !1608        ; 2 uses
  store i64 %i.ak, ptr %i.c, align 8, !dbg !1608
  %i.al = icmp eq i64 %i.ak, 0, !dbg !1609
  br i1 %i.al, label %bb.h, label %bb.i, !dbg !1609

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 154, !dbg !1610
  store i8 1, ptr %i.am, align 2, !dbg !1610
  br label %bb.i, !dbg !1611

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.0.0 = phi ptr [ %i.ag, %bb.e ], [ null, %bb.g ], [ null, %bb.h ], !dbg !1573
  ret ptr %.sroa.0.0, !dbg !1612

bb.j:                                             ; preds = %.lr.ph
  %i.an = add i64 %.sroa.7.037, 1, !dbg !1589     ; 2 uses
  %i.ao = add nuw i64 %.sroa.0.02338, 1, !dbg !1613
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.02338, !dbg !1591
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !1591, !noundef !15
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.7.037, !dbg !1585
  store i8 %i.aq, ptr %i.ar, align 1, !dbg !1585
  %exitcond40.not = icmp eq i64 %i.an, %i.k, !dbg !1616
  br i1 %exitcond40.not, label %bb.c, label %.lr.ph, !dbg !1592, !llvm.loop !1618

bb.k:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val1.i, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14, !dbg !1585
  unreachable, !dbg !1585
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_pathCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1619 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !1621 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !1621, !nonnull !15, !align !519, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 240, !dbg !1621
  %i.d = load ptr, ptr %i.c, align 8, !dbg !1621, !nonnull !15, !align !519, !noundef !15 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184, !dbg !1624 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !1629, !noundef !15
  %i.g = icmp eq i64 %i.f, 0, !dbg !1635
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !1635, !prof !95

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.e, align 8, !dbg !1636
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 192, !dbg !1644 ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8, !dbg !1648, !nonnull !15, !align !519, !noundef !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240, !dbg !1648
  %i.k = load ptr, ptr %i.j, align 8, !dbg !1648, !nonnull !15, !align !519, !noundef !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 68, !dbg !1652
  %i.m = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(15) %i.l)
          to label %bb.d unwind label %bb.i, !dbg !1655 ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !dbg !1658
  unreachable, !dbg !1658

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.m, null, !dbg !1660
  br i1 %.not, label %bb.e, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !1664

bb.e:                                             ; preds = %bb.d
  %.sroa.3.0.in.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1665
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in.a, align 8, !dbg !1665, !noundef !15
  %.sroa.07.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1665
  %.sroa.07.0 = load ptr, ptr %.sroa.07.0.in, align 8, !dbg !1665, !nonnull !15, !noundef !15
  %i.n = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.07.0, i64 noundef %.sroa.3.0)
          to label %bb.f unwind label %bb.i, !dbg !1673 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not10 = icmp eq ptr %i.n, null, !dbg !1674
  br i1 %.not10, label %bb.g, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !1676

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.h, align 8, !dbg !1677, !range !109, !alias.scope !1682, !noundef !15
  %i.p = trunc nuw i64 %i.o to i1, !dbg !1685
  br i1 %i.p, label %bb.h, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !1685

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 200, !dbg !1686
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 4)
          to label %.noexc unwind label %bb.i, !dbg !1697

.noexc:                                           ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 216, !dbg !1717 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !1717, !alias.scope !1723, !noundef !15 ; 2 uses
  %i.t = icmp sgt i64 %i.s, -1, !dbg !1726
  tail call void @llvm.assume(i1 %i.t), !dbg !1728
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 208, !dbg !1729
  %i.v = load ptr, ptr %i.u, align 8, !dbg !1729, !alias.scope !1723, !nonnull !15, !noundef !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s, !dbg !1743
  store i32 1831885595, ptr %i.w, align 1, !dbg !1749
  %i.x = load i64, ptr %i.r, align 8, !dbg !1752, !alias.scope !1723, !noundef !15
  %i.y = add i64 %i.x, 4, !dbg !1752
  store i64 %i.y, ptr %i.r, align 8, !dbg !1752, !alias.scope !1723
  br label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !1753

_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit: ; preds = %bb.d, %bb.f, %bb.g, %.noexc
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ null, %.noexc ], [ %i.m, %bb.d ], [ %i.n, %bb.f ], !dbg !1754
  %storemerge.in = load i64, ptr %i.e, align 8, !dbg !1755, !noundef !15
  %storemerge = add i64 %storemerge.in, 1, !dbg !1765
  store i64 %storemerge, ptr %i.e, align 8, !dbg !1767
  ret ptr %.sroa.0.0, !dbg !1773

bb.i:                                             ; preds = %bb.b, %bb.e, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load i64, ptr %i.e, align 8, !dbg !1774, !noundef !15
  %i.ab = add i64 %i.aa, 1, !dbg !1779
  store i64 %i.ab, ptr %i.e, align 8, !dbg !1780
  resume { ptr, i32 } %i.z, !dbg !1783
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_specCs2NzvFoTxuAy_2rg(ptr nofree readonly captures(none) %.88.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1784 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 240, !dbg !1785
  %i.b = load ptr, ptr %i.a, align 8, !dbg !1785, !nonnull !15, !align !519, !noundef !15 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !1788 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !1793, !noundef !15
  %i.e = icmp eq i64 %i.d, 0, !dbg !1798
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !1798, !prof !95

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.c, align 8, !dbg !1799
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !1805 ; 3 uses
  %i.g = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(15) %0)
          to label %bb.d unwind label %bb.i, !dbg !1809 ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !1813
  unreachable, !dbg !1813

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.g, null, !dbg !1815
  br i1 %.not, label %bb.e, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !1819

bb.e:                                             ; preds = %bb.d
  %i.h = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.f unwind label %bb.i, !dbg !1820 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not11 = icmp eq ptr %i.h, null, !dbg !1821
  br i1 %.not11, label %bb.g, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !1823

bb.g:                                             ; preds = %bb.f
  %i.i = load i64, ptr %i.f, align 8, !dbg !1824, !range !109, !alias.scope !1828, !noundef !15
  %i.j = trunc nuw i64 %i.i to i1, !dbg !1831
  br i1 %i.j, label %bb.h, label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !1831

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !1832
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef 4)
          to label %.noexc unwind label %bb.i, !dbg !1836

.noexc:                                           ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 216, !dbg !1841 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !1841, !alias.scope !1844, !noundef !15 ; 2 uses
  %i.n = icmp sgt i64 %i.m, -1, !dbg !1847
  tail call void @llvm.assume(i1 %i.n), !dbg !1848
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 208, !dbg !1849
  %i.p = load ptr, ptr %i.o, align 8, !dbg !1849, !alias.scope !1844, !nonnull !15, !noundef !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m, !dbg !1854
  store i32 1831885595, ptr %i.q, align 1, !dbg !1856
  %i.r = load i64, ptr %i.l, align 8, !dbg !1858, !alias.scope !1844, !noundef !15
  %i.s = add i64 %i.r, 4, !dbg !1858
  store i64 %i.s, ptr %i.l, align 8, !dbg !1858, !alias.scope !1844
  br label %_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit, !dbg !1859

_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor5reset.exit: ; preds = %bb.d, %bb.f, %bb.g, %.noexc
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ null, %.noexc ], [ %i.g, %bb.d ], [ %i.h, %bb.f ], !dbg !1860
  %storemerge.in = load i64, ptr %i.c, align 8, !dbg !1861, !noundef !15
  %storemerge = add i64 %storemerge.in, 1, !dbg !1866
  store i64 %storemerge, ptr %i.c, align 8, !dbg !1867
  ret ptr %.sroa.0.0, !dbg !1870

bb.i:                                             ; preds = %bb.b, %bb.e, %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load i64, ptr %i.c, align 8, !dbg !1871, !noundef !15
  %i.v = add i64 %i.u, 1, !dbg !1876
  store i64 %i.v, ptr %i.c, align 8, !dbg !1877
  resume { ptr, i32 } %i.t, !dbg !1880
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg(ptr %.88.val, i1 noundef zeroext %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1881 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 240, !dbg !1882
  %i.b = load ptr, ptr %i.a, align 8, !dbg !1882, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !1885 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !1890, !noundef !15
  %i.e = icmp eq i64 %i.d, 0, !dbg !1895
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !1895, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.88.val, i64 248, !dbg !1896
  store i64 -1, ptr %i.c, align 8, !dbg !1897
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !1903
  %i.h = invoke noundef ptr @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator6finishQINtNtB8_7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %i.f, i1 noundef zeroext %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.d unwind label %bb.e, !dbg !1907

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !dbg !1908
  unreachable, !dbg !1908

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !dbg !1910, !noundef !15
  %i.j = add i64 %i.i, 1, !dbg !1915
  store i64 %i.j, ptr %i.c, align 8, !dbg !1916
  ret ptr %i.h, !dbg !1919

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %i.c, align 8, !dbg !1920, !noundef !15
  %i.m = add i64 %i.l, 1, !dbg !1925
  store i64 %i.m, ptr %i.c, align 8, !dbg !1926
  resume { ptr, i32 } %i.k, !dbg !1929
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15end_color_matchCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1930 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !1931 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !1936, !range !17, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1, !dbg !1936
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !1937

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !1938 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !1938, !nonnull !15, !align !519, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240, !dbg !1938
  %i.g = load ptr, ptr %i.f, align 8, !dbg !1938, !nonnull !15, !align !519, !noundef !15 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 135, !dbg !1943
  %i.i = load i8, ptr %i.h, align 1, !dbg !1943, !range !132, !alias.scope !1947, !noundef !15
  %.not.i = icmp eq i8 %i.i, -1, !dbg !1943
  br i1 %.not.i, label %bb.c, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, !dbg !1950

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 128, !dbg !1951
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 139, !dbg !1954
  %i.l = load i8, ptr %i.k, align 1, !dbg !1954, !range !132, !alias.scope !1947, !noundef !15
  %i.m = icmp ne i8 %i.l, -1, !dbg !1954
  %i.n = load i8, ptr %i.j, align 8, !range !17, !alias.scope !1947
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 129
  %i.q = load <4 x i8>, ptr %i.p, align 1, !alias.scope !1947
  %.fr = freeze <4 x i8> %i.q
  %i.r = trunc <4 x i8> %.fr to <4 x i1>
  %i.s = bitcast <4 x i1> %i.r to i4, !dbg !1957
  %i.t = icmp ne i4 %i.s, 0, !dbg !1957
  %i.u = or i1 %i.m, %i.t, !dbg !1957
  %op.rdx16 = select i1 %i.u, i1 true, i1 %i.o, !dbg !1957
  br i1 %op.rdx16, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit, !dbg !1957

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 134, !dbg !1958
  %i.w = load i8, ptr %i.v, align 2, !dbg !1958, !range !17, !alias.scope !1947, !noundef !15
  %i.x = trunc nuw i8 %i.w to i1, !dbg !1959
  br i1 %i.x, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %bb.e, !dbg !1960

bb.d:                                             ; preds = %bb.j, %bb.a, %bb.k
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.k ], [ %i.al, %bb.j ], !dbg !1961
end_hunk_0
begin_hunk_1_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE4sinkCs2NzvFoTxuAy_2rg:bb.a
  %.sroa.0.0.i150.i.i = phi ptr [ %i.avo, %bb.mz ], [ %i.avp, %bb.nb ], !dbg !7291
  %storemerge.in.i151.i.i = load i64, ptr %i.avk, align 8, !dbg !7292, !noundef !15
  %storemerge.i152.i.i = add i64 %storemerge.in.i151.i.i, 1, !dbg !7297
  store i64 %storemerge.i152.i.i, ptr %i.avk, align 8, !dbg !7298
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !7301

bb.nf:                                            ; preds = %bb.mv
  %i.awc = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE19write_exceeded_lineCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aji, i64 noundef %i.ajk, i64 noundef %i.auw, i64 noundef %..i121.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ajm, i64 noundef %i.ajn, ptr noalias nofree noundef align 8 dereferenceable(8) %i.bl), !dbg !7304 ; 2 uses
  %.not72.i.i = icmp eq ptr %i.awc, null, !dbg !7305
  %.pre581.i.i = load i64, ptr %i.bl, align 8, !dbg !6422
  br i1 %.not72.i.i, label %.backedge.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !7307

bb.ng:                                            ; preds = %.noexc.i154.i.i, %bb.nc
  %storemerge.in.i151234.i.i = load i64, ptr %i.avk, align 8, !dbg !7292, !noundef !15
  %storemerge.i152235.i.i = add i64 %storemerge.in.i151234.i.i, 1, !dbg !7297
  store i64 %storemerge.i152235.i.i, ptr %i.avk, align 8, !dbg !7298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !7308
  %i.awd = load ptr, ptr %i.he, align 8, !dbg !7308, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 56, !dbg !7311
  %i.awf = load i8, ptr %i.awe, align 8, !dbg !7311, !range !17, !noundef !15 ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awd, i64 57, !dbg !7311
  %i.awh = load i8, ptr %i.awg, align 1, !dbg !7311
  store i8 %i.awf, ptr %i.bd, align 1, !dbg !7311
  store i8 %i.awh, ptr %i.ajy, align 1, !dbg !7311
  %i.awi = trunc nuw i8 %i.awf to i1, !dbg !7313
  %.val114.i.i = load ptr, ptr %i.de, align 8, !dbg !7316, !nonnull !15, !align !519, !noundef !15
  %i.awj = getelementptr inbounds nuw i8, ptr %.val114.i.i, i64 240, !dbg !7317
  %i.awk = load ptr, ptr %i.awj, align 8, !dbg !7317, !noalias !15, !nonnull !15, !align !519, !noundef !15 ; 3 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 184, !dbg !7320 ; 7 uses
  %i.awm = load i64, ptr %i.awl, align 8, !dbg !7323, !noalias !15, !noundef !15
  %i.awn = icmp eq i64 %i.awm, 0, !dbg !7326      ; 2 uses
  br i1 %i.awi, label %.split49.i.i, label %.split.i.i50, !dbg !7327

.split49.i.i:                                     ; preds = %bb.ng
  br i1 %i.awn, label %bb.nh, label %bb.ni, !dbg !7328, !prof !95

bb.nh:                                            ; preds = %.split49.i.i
  store i64 -1, ptr %i.awl, align 8, !dbg !7333, !noalias !7336
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awk, i64 192, !dbg !7339
  %i.awp = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.awo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 2)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i unwind label %bb.nj, !dbg !7341

bb.ni:                                            ; preds = %.split49.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !7342, !noalias !7336
  unreachable, !dbg !7342

bb.nj:                                            ; preds = %bb.nh
  %i.awq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !7343

.split.i.i50:                                     ; preds = %bb.ng
  br i1 %i.awn, label %bb.nk, label %bb.nl, !dbg !7344, !prof !95

bb.nk:                                            ; preds = %.split.i.i50
  store i64 -1, ptr %i.awl, align 8, !dbg !7349, !noalias !7352
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awk, i64 192, !dbg !7355
  %i.aws = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.awr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajy, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i unwind label %bb.nm, !dbg !7357

bb.nl:                                            ; preds = %.split.i.i50
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !7358, !noalias !7352
  unreachable, !dbg !7358

bb.nm:                                            ; preds = %bb.nk
  %i.awt = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !7359

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i: ; preds = %bb.nk, %bb.nh
  %phi.call.i.i51 = phi ptr [ %i.awp, %bb.nh ], [ %i.aws, %bb.nk ], !dbg !7316 ; 2 uses
  %i.awu = load i64, ptr %i.awl, align 8, !dbg !7360, !noundef !15
  %i.awv = add i64 %i.awu, 1, !dbg !7365
  store i64 %i.awv, ptr %i.awl, align 8, !dbg !7366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !7369
  %.not71.i.i = icmp eq ptr %phi.call.i.i51, null, !dbg !7370
  br i1 %.not71.i.i, label %.backedge.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !7372

.backedge.i.i:                                    ; preds = %bb.no, %bb.nn, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i, %bb.nf
  %i.aww = phi i64 [ %i.akv, %bb.nn ], [ %i.akv, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i ], [ %.pre581.i.i, %bb.nf ], [ %i.alf, %bb.no ]
  %i.awx = load i64, ptr %i.aju, align 8, !dbg !6407, !noundef !15 ; 2 uses
  %i.awy = load i64, ptr %i.bi, align 8, !dbg !6412, !noundef !15 ; 2 uses
  %i.awz = icmp eq i64 %i.awx, %i.awy, !dbg !6420
  br i1 %i.awz, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !6421

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i, %bb.nf, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit157.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit141.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit132.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit128.i.i, %bb.jp, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit158.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit133.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit129.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_specCs2NzvFoTxuAy_2rg.exit155.i.i, %bb.ma, %bb.lf, %bb.kk, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i.i
  %.sroa.0.0.i91.i = phi ptr [ %.sroa.0.0.i150.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_specCs2NzvFoTxuAy_2rg.exit155.i.i ], [ %i.amx, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i.i ], [ %.sroa.0.0.i131.i.i, %bb.kk ], [ %.sroa.0.0.i143.i.i, %bb.ma ], [ %.sroa.0.0.i135.i.i, %bb.lf ], [ %i.aru, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit141.i.i ], [ %i.apt, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit132.i.i ], [ %i.anr, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit128.i.i ], [ %i.ats, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.anf, %bb.jp ], [ %i.auc, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit157.i ], [ %i.awc, %bb.nf ], [ %phi.call.i.i51, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i.i ], [ %i.aqg, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit133.i.i ], [ %i.ash, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit158.i ], [ %i.aus, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit156.i ], [ %i.aoe, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit129.i.i ], !dbg !7373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !6425
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i, !dbg !7377

bb.nn:                                            ; preds = %bb.jc
  %..i122.i.i = call noundef i64 @llvm.umin.i64(i64 %i.alh, i64 %i.akx), !dbg !7378
  store i64 %..i122.i.i, ptr %i.bi, align 8, !dbg !7381
  br label %.backedge.i.i, !dbg !7383

bb.no:                                            ; preds = %bb.jb
  store i64 %i.alf, ptr %i.bl, align 8, !dbg !7384
  br label %.backedge.i.i, !dbg !7385

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i: ; preds = %._crit_edge.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, %bb.it
  %.sroa.0.1.i89.i = phi ptr [ %.sroa.0.0.i91.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ null, %bb.it ], [ null, %._crit_edge.i.i ], !dbg !7387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !6426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !7388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !7389
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !7390

bb.np:                                            ; preds = %bb.iq
  br i1 %i.aiz, label %bb.tf, label %bb.te, !dbg !7391

bb.nq:                                            ; preds = %bb.iq
  br i1 %i.aiz, label %bb.ns, label %bb.nr, !dbg !7394

bb.nr:                                            ; preds = %bb.nq
  %i.axa = getelementptr inbounds nuw i8, ptr %i.aiw, i64 57, !dbg !7399
  %i.axb = load i8, ptr %i.axa, align 1, !dbg !7399
  br label %bb.ns, !dbg !7402

bb.ns:                                            ; preds = %bb.nr, %bb.nq
  %.sroa.01.0.i93.i = phi i8 [ %i.axb, %bb.nr ], [ 10, %bb.nq ], !dbg !7403
  %i.axc = getelementptr inbounds nuw i8, ptr %i.aip, i64 113, !dbg !7404
  %i.axd = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7408
  %i.axe = load ptr, ptr %i.axd, align 8, !dbg !7408, !nonnull !15, !noundef !15 ; 8 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7408
  %i.axg = load i64, ptr %i.axf, align 8, !dbg !7408, !noundef !15 ; 14 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !7412
  %i.axi = load ptr, ptr %i.axh, align 8, !dbg !7412, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.axj = load i64, ptr %i.hb, align 8, !dbg !7412, !noundef !15 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.axj, 4, !dbg !7416
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axi, i64 %.idx.i.i, !dbg !7416
  %i.axl = icmp eq i64 %i.axj, 0, !dbg !7427
  br i1 %i.axl, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE9sink_slowCs2NzvFoTxuAy_2rg.exit, label %.lr.ph462.i.i, !dbg !7436

.lr.ph462.i.i:                                    ; preds = %bb.ns
  %i.axm = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.axn = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.axo = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.axp = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.axq = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 8 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.axs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0..sroa_idx.i.i94.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.0..sroa_idx.i.i95.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.7.0..sroa_idx.i.i96.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.9.0..sroa_idx.i.i97.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.axt = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.axu = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.axv = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  br label %bb.nt, !dbg !7436

bb.nt:                                            ; preds = %._crit_edge459.i.i, %.lr.ph462.i.i
  %.sroa.02.0460.i.i = phi ptr [ %i.axi, %.lr.ph462.i.i ], [ %i.axw, %._crit_edge459.i.i ] ; 3 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %.sroa.02.0460.i.i, i64 16, !dbg !7437 ; 2 uses
  %i.axx = load i64, ptr %.sroa.02.0460.i.i, align 8, !dbg !7440, !noundef !15 ; 5 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %.sroa.02.0460.i.i, i64 8, !dbg !7440
  %i.axz = load i64, ptr %i.axy, align 8, !dbg !7440, !noundef !15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !7441
  store i8 %.sroa.01.0.i93.i, ptr %i.axm, align 8, !dbg !7444
  store i64 0, ptr %i.at, align 8, !dbg !7444
  store i64 %i.axg, ptr %i.axn, align 8, !dbg !7444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !7447
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.axe, i64 noundef %i.axg), !dbg !7450
  %i.aya = load i64, ptr %i.as, align 8, !dbg !7447, !range !109, !noundef !15
  %i.ayb = trunc nuw i64 %i.aya to i1, !dbg !7451
  br i1 %i.ayb, label %.lr.ph458.i.i, label %._crit_edge459.i.i, !dbg !7451

.lr.ph458.i.i:                                    ; preds = %bb.nt, %.backedge.i100.i
  %.sroa.04.0456.i.i = phi i64 [ %.sroa.04.0.be.i.i, %.backedge.i100.i ], [ 0, %bb.nt ] ; 2 uses
  %i.ayc = load i64, ptr %i.axo, align 8, !dbg !7452, !noundef !15 ; 5 uses
  %i.ayd = load i64, ptr %i.axp, align 8, !dbg !7453, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !7454
  %.not.i99.i = icmp ugt i64 %i.ayc, %i.ayd, !dbg !7455
  br i1 %.not.i99.i, label %bb.nu, label %bb.nv, !dbg !7455, !prof !2569

bb.nu:                                            ; preds = %.lr.ph458.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !dbg !7458
  unreachable, !dbg !7458

bb.nv:                                            ; preds = %.lr.ph458.i.i
  store i64 %i.ayc, ptr %i.ar, align 8, !dbg !7459
  store i64 %i.ayd, ptr %i.axq, align 8, !dbg !7459
  %.not93.i.i = icmp ult i64 %i.ayc, %i.axz, !dbg !7460
  br i1 %.not93.i.i, label %bb.nw, label %bb.td, !dbg !7460

bb.nw:                                            ; preds = %bb.nv
  %.not94.i.i = icmp ugt i64 %i.ayd, %i.axx, !dbg !7462
  br i1 %.not94.i.i, label %bb.nx, label %.backedge.i100.i, !dbg !7462

bb.nx:                                            ; preds = %bb.nw
  %i.aye = load i64, ptr %i.axr, align 8, !dbg !7463, !noundef !15
  %i.ayf = add i64 %i.aye, %i.ayc, !dbg !7466
  %i.ayg = load i64, ptr %0, align 8, !dbg !7467, !range !109, !noundef !15
  %i.ayh = trunc nuw i64 %i.ayg to i1, !dbg !7470
  br i1 %i.ayh, label %bb.ny, label %bb.nz, !dbg !7470

bb.ny:                                            ; preds = %bb.nx
  %i.ayi = load i64, ptr %i.axs, align 8, !dbg !7467
  %i.ayj = add i64 %i.ayi, %.sroa.04.0456.i.i, !dbg !7473
  br label %bb.nz, !dbg !7478

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %.sroa.010.0.i.i.a = phi i64 [ 1, %bb.ny ], [ 0, %bb.nx ], !dbg !7479 ; 2 uses
  %.sroa.5.0.i101.i = phi i64 [ %i.ayj, %bb.ny ], [ undef, %bb.nx ], !dbg !7479 ; 2 uses
  %i.ayk = call i64 @llvm.usub.sat.i64(i64 %i.axx, i64 %i.ayc), !dbg !7480
  %i.ayl = add nuw i64 %i.ayk, 1, !dbg !7483      ; 2 uses
  %i.aym = load ptr, ptr %i.ail, align 8, !dbg !7484, !noundef !15
  %.not.i160.i.i = icmp eq ptr %i.aym, null, !dbg !7490
  %i.ayn = load ptr, ptr %i.de, align 8, !dbg !7492, !nonnull !15, !align !519, !noundef !15 ; 4 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 240, !dbg !7492
  %i.ayp = load ptr, ptr %i.ayo, align 8, !dbg !7492, !nonnull !15, !align !519, !noundef !15 ; 5 uses
  %..i161.i.i = select i1 %.not.i160.i.i, i64 48, i64 56, !dbg !7494
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 %..i161.i.i, !dbg !7495
  %.pn.i.i102.i = load ptr, ptr %i.ayq, align 8, !dbg !7495, !nonnull !15, !noundef !15 ; 2 uses
  %.sroa.0.0.in.i.i103.i = getelementptr inbounds nuw i8, ptr %.pn.i.i102.i, i64 24, !dbg !7498
  %.sroa.0.0.i162.i.i = load ptr, ptr %.sroa.0.0.in.i.i103.i, align 8, !dbg !7498, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.3.0.in.i.i104.i = getelementptr inbounds nuw i8, ptr %.pn.i.i102.i, i64 32, !dbg !7505
  %.sroa.3.0.i.i105.i = load i64, ptr %.sroa.3.0.in.i.i104.i, align 8, !dbg !7505, !noundef !15 ; 4 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayn, i64 104, !dbg !7506 ; 2 uses
  %i.ays = load i64, ptr %i.ayr, align 8, !dbg !7506, !range !284, !noalias !7510, !noundef !15
  %.not.i140.i.i = icmp eq i64 %i.ays, -2, !dbg !7506
  br i1 %.not.i140.i.i, label %bb.oh, label %bb.oa, !dbg !7513

bb.oa:                                            ; preds = %bb.nz
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayp, i64 16, !dbg !7514
  %i.ayu = load ptr, ptr %i.ayt, align 8, !dbg !7514, !noalias !7510, !nonnull !15, !noundef !15
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 40, !dbg !7519
  %i.ayw = load i8, ptr %i.ayv, align 8, !dbg !7519, !range !17, !noalias !7510, !noundef !15
  %i.ayx = trunc nuw i8 %i.ayw to i1, !dbg !7519
  br i1 %i.ayx, label %bb.oc, label %bb.ob, !dbg !7521

bb.ob:                                            ; preds = %bb.oa
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayp, i64 144, !dbg !7522
  %i.ayz = load i8, ptr %i.ayy, align 8, !dbg !7522, !range !17, !noalias !7510, !noundef !15
  %i.aza = trunc nuw i8 %i.ayz to i1, !dbg !7522
  br i1 %i.aza, label %bb.oh, label %bb.oc, !dbg !7522

bb.oc:                                            ; preds = %bb.ob, %bb.oa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !7523, !noalias !7510
  %i.azb = call noundef align 8 ptr @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath12as_hyperlink(ptr noundef nonnull align 8 %i.ayr), !dbg !7524, !noalias !7526 ; 2 uses
  %.not.i163.i.i = icmp eq ptr %i.azb, null, !dbg !7529
  br i1 %.not.i163.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i, label %bb.od, !dbg !7530

bb.od:                                            ; preds = %bb.oc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !7531, !noalias !7526
  store i64 %.sroa.010.0.i.i.a, ptr %i.x, align 8, !dbg !7532, !noalias !7526
  store i64 %.sroa.5.0.i101.i, ptr %.sroa.3.0..sroa_idx.i.i94.i, align 8, !dbg !7532, !noalias !7526
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i95.i, align 8, !dbg !7532, !noalias !7526
  store i64 %i.ayl, ptr %.sroa.7.0..sroa_idx.i.i96.i, align 8, !dbg !7532, !noalias !7526
  store ptr %i.azb, ptr %.sroa.9.0..sroa_idx.i.i97.i, align 8, !dbg !7532, !noalias !7526
  %i.azc = load ptr, ptr %i.de, align 8, !dbg !7534, !noalias !7526, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azc, i64 240, !dbg !7535
  %i.aze = load ptr, ptr %i.azd, align 8, !dbg !7535, !noalias !7526, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 184, !dbg !7537 ; 5 uses
  %i.azg = load i64, ptr %i.azf, align 8, !dbg !7540, !noalias !7526, !noundef !15
  %i.azh = icmp eq i64 %i.azg, 0, !dbg !7543
  br i1 %i.azh, label %bb.oe, label %bb.of, !dbg !7543, !prof !95

bb.oe:                                            ; preds = %bb.od
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azc, i64 248, !dbg !7534
  store i64 -1, ptr %i.azf, align 8, !dbg !7544, !noalias !7526
  %i.azj = getelementptr inbounds nuw i8, ptr %i.aze, i64 192, !dbg !7547
  invoke void @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator5beginQINtNtB8_7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.y, ptr noundef nonnull align 8 %i.azi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.azj)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108.i unwind label %bb.og, !dbg !7549, !noalias !7510

bb.of:                                            ; preds = %bb.od
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !dbg !7550, !noalias !7526
  unreachable, !dbg !7550

bb.og:                                            ; preds = %bb.oe
  %i.azk = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !7551

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108.i: ; preds = %bb.oe
  %i.azl = load i64, ptr %i.azf, align 8, !dbg !7552, !noalias !7526, !noundef !15
  %i.azm = add i64 %i.azl, 1, !dbg !7557
  store i64 %i.azm, ptr %i.azf, align 8, !dbg !7558, !noalias !7526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !7561, !noalias !7526
  %.pre.i109.i = load i8, ptr %i.y, align 8, !dbg !7562, !range !17, !noalias !7510
  %i.azn = trunc nuw i8 %.pre.i109.i to i1, !dbg !7562
  br i1 %i.azn, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i136.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108._crit_edge.i, !dbg !7564

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108._crit_edge.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108.i
  %.pre986.i = load i8, ptr %i.axt, align 1, !dbg !7565, !range !17, !noalias !7510
  %i.azo = trunc nuw i8 %.pre986.i to i1, !dbg !7566
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i, !dbg !7564

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108._crit_edge.i, %bb.oc
  %i.azp = phi i1 [ %i.azo, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108._crit_edge.i ], [ false, %bb.oc ], !dbg !7565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !7569, !noalias !7510
  %.pre605.i.i = load ptr, ptr %i.de, align 8, !dbg !7570, !noalias !7574 ; 2 uses
  %.phi.trans.insert.i110.i = getelementptr inbounds nuw i8, ptr %.pre605.i.i, i64 240
  %.pre606.i.i = load ptr, ptr %.phi.trans.insert.i110.i, align 8, !dbg !7570, !noalias !7574
  br label %bb.oh, !dbg !7577

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i136.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i108.i
  %i.azq = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !7578
  %i.azr = load ptr, ptr %i.azq, align 8, !dbg !7578, !noalias !7510, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !7569, !noalias !7510
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !7579

bb.oh:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i, %bb.ob, %bb.nz
  %i.azs = phi ptr [ %i.ayp, %bb.ob ], [ %.pre606.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i ], [ %i.ayp, %bb.nz ], !dbg !7570 ; 3 uses
  %i.azt = phi ptr [ %i.ayn, %bb.ob ], [ %.pre605.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i ], [ %i.ayn, %bb.nz ], !dbg !7570 ; 3 uses
  %.sroa.52.0.ph.i111.i = phi i1 [ false, %bb.ob ], [ %i.azp, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i137.i ], [ false, %bb.nz ]
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azs, i64 144, !dbg !7581
  %i.azv = load i8, ptr %i.azu, align 8, !dbg !7581, !range !17, !noalias !7574, !noundef !15
  %i.azw = trunc nuw i8 %i.azv to i1, !dbg !7581
  br i1 %i.azw, label %bb.ol, label %bb.oi, !dbg !7581

bb.oi:                                            ; preds = %bb.oh
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azt, i64 104, !dbg !7582 ; 2 uses
  %i.azy = load i64, ptr %i.azx, align 8, !dbg !7582, !range !284, !noalias !7574, !noundef !15
  %.not.i111.i.i = icmp eq i64 %i.azy, -2, !dbg !7582
  br i1 %.not.i111.i.i, label %bb.ol, label %bb.oj, !dbg !7585

bb.oj:                                            ; preds = %bb.oi
  %i.azz = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_pathCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.azx), !dbg !7586 ; 2 uses
  %.not10.i.i112.i = icmp eq ptr %i.azz, null, !dbg !7587
  br i1 %.not10.i.i112.i, label %bb.ok, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !7589

bb.ok:                                            ; preds = %bb.oj
  %i.baa = load ptr, ptr %i.de, align 8, !dbg !7590, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 240, !dbg !7590
  %i.bac = load ptr, ptr %i.bab, align 8, !dbg !7590, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 66, !dbg !7593
  %i.bae = load i8, ptr %i.bad, align 2, !dbg !7593, !range !17, !noundef !15
  %..i.i115.i = add nuw nsw i8 %i.bae, 1, !dbg !7595
  br label %bb.ol, !dbg !7596

bb.ol:                                            ; preds = %bb.ok, %bb.oi, %bb.oh
  %i.baf = phi ptr [ %i.bac, %bb.ok ], [ %i.azs, %bb.oi ], [ %i.azs, %bb.oh ] ; 6 uses
  %.val145.i.i = phi ptr [ %i.baa, %bb.ok ], [ %i.azt, %bb.oi ], [ %i.azt, %bb.oh ]
  %.sroa.37.0.ph.i116.i = phi i8 [ %..i.i115.i, %bb.ok ], [ 0, %bb.oi ], [ 0, %bb.oh ] ; 2 uses
  %i.bag = trunc nuw i64 %.sroa.010.0.i.i.a to i1, !dbg !7597
  br i1 %i.bag, label %bb.om, label %bb.pg, !dbg !7597

bb.om:                                            ; preds = %bb.ol
  switch i8 %.sroa.37.0.ph.i116.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
    i8 1, label %bb.on
    i8 2, label %bb.or
  ], !dbg !7599

bb.on:                                            ; preds = %bb.om
  %i.bah = getelementptr inbounds nuw i8, ptr %i.baf, i64 184, !dbg !7601 ; 5 uses
  %i.bai = load i64, ptr %i.bah, align 8, !dbg !7605, !noalias !7608, !noundef !15
  %i.baj = icmp eq i64 %i.bai, 0, !dbg !7611
  br i1 %i.baj, label %bb.oo, label %bb.op, !dbg !7611, !prof !95

bb.oo:                                            ; preds = %bb.on
  store i64 -1, ptr %i.bah, align 8, !dbg !7612, !noalias !7608
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baf, i64 192, !dbg !7615
  %i.bal = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i162.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i105.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit165.i.i unwind label %bb.oq, !dbg !7617 ; 2 uses

bb.op:                                            ; preds = %bb.on
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !7618, !noalias !7608
  unreachable, !dbg !7618

bb.oq:                                            ; preds = %bb.oo
  %i.bam = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !7619

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit165.i.i: ; preds = %bb.oo
  %i.ban = load i64, ptr %i.bah, align 8, !dbg !7620, !noundef !15
  %i.bao = add i64 %i.ban, 1, !dbg !7625
  store i64 %i.bao, ptr %i.bah, align 8, !dbg !7626
  %.not7.i.i123.i.i = icmp eq ptr %i.bal, null, !dbg !7629
  br i1 %.not7.i.i123.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !7631

bb.or:                                            ; preds = %bb.om
  %i.bap = getelementptr inbounds nuw i8, ptr %i.baf, i64 66, !dbg !7632
  %i.baq = load i8, ptr %i.bap, align 2, !dbg !7632, !range !17, !noalias !7633, !noundef !15
  %i.bar = trunc nuw i8 %i.baq to i1, !dbg !7632
  br i1 %i.bar, label %bb.os, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, !dbg !7638

bb.os:                                            ; preds = %bb.or
  %i.bas = getelementptr inbounds nuw i8, ptr %i.baf, i64 67, !dbg !7632
  %i.bat = load i8, ptr %i.bas, align 1, !dbg !7639, !noalias !7633, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !7640, !noalias !7633
  store i8 %i.bat, ptr %i.ac, align 1, !dbg !7640, !noalias !7633
  %i.bau = getelementptr inbounds nuw i8, ptr %i.baf, i64 184, !dbg !7641 ; 5 uses
  %i.bav = load i64, ptr %i.bau, align 8, !dbg !7645, !noalias !7648, !noundef !15
  %i.baw = icmp eq i64 %i.bav, 0, !dbg !7651
  br i1 %i.baw, label %bb.ot, label %bb.ou, !dbg !7651, !prof !95

bb.ot:                                            ; preds = %bb.os
  store i64 -1, ptr %i.bau, align 8, !dbg !7652, !noalias !7648
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baf, i64 192, !dbg !7655
  %i.bay = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bax, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit166.i.i unwind label %bb.ov, !dbg !7657 ; 2 uses

bb.ou:                                            ; preds = %bb.os
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !7658, !noalias !7648
  unreachable, !dbg !7658

bb.ov:                                            ; preds = %bb.ot
  %i.baz = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !7659

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit166.i.i: ; preds = %bb.ot
  %i.bba = load i64, ptr %i.bau, align 8, !dbg !7660, !noundef !15
  %i.bbb = add i64 %i.bba, 1, !dbg !7665
  store i64 %i.bbb, ptr %i.bau, align 8, !dbg !7666
  %.not.i.i122.i.i = icmp eq ptr %i.bay, null, !dbg !7669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !7671, !noalias !7633
  br i1 %.not.i.i122.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !7672

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit166.i.i, %bb.or, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit165.i.i, %bb.om
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !7673, !noalias !7674
  call void @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, i64 noundef %.sroa.5.0.i101.i), !dbg !7675, !noalias !7674
  %i.bbc = load ptr, ptr %i.de, align 8, !dbg !7676, !noalias !7674, !nonnull !15, !align !519, !noundef !15
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 240, !dbg !7676
  %i.bbe = load ptr, ptr %i.bbd, align 8, !dbg !7676, !noalias !7674, !nonnull !15, !align !519, !noundef !15
  %i.bbf = call { ptr, i64 } @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter8as_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !dbg !7679, !noalias !7674 ; 2 uses
  %i.bbg = extractvalue { ptr, i64 } %i.bbf, 0, !dbg !7679
  %i.bbh = extractvalue { ptr, i64 } %i.bbf, 1, !dbg !7679
  %.val157.i.i = load ptr, ptr %i.de, align 8, !dbg !7680, !nonnull !15, !align !519, !noundef !15
  %i.bbi = getelementptr inbounds nuw i8, ptr %.val157.i.i, i64 240, !dbg !7681
  %i.bbj = load ptr, ptr %i.bbi, align 8, !dbg !7681, !noalias !7684, !nonnull !15, !align !519, !noundef !15 ; 5 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bbj, i64 184, !dbg !7688 ; 7 uses
  %i.bbl = load i64, ptr %i.bbk, align 8, !dbg !7691, !noalias !7684, !noundef !15
  %i.bbm = icmp eq i64 %i.bbl, 0, !dbg !7694
  br i1 %i.bbm, label %bb.ow, label %bb.ox, !dbg !7694, !prof !95

bb.ow:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbe, i64 83, !dbg !7695
  store i64 -1, ptr %i.bbk, align 8, !dbg !7697, !noalias !7684
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbj, i64 192, !dbg !7700 ; 3 uses
  %i.bbp = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bbo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.bbn)
          to label %bb.oy unwind label %bb.pd, !dbg !7702, !noalias !7704 ; 2 uses

bb.ox:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !7705, !noalias !7684
  unreachable, !dbg !7705

bb.oy:                                            ; preds = %bb.ow
  %.not.i167.i.i = icmp eq ptr %i.bbp, null, !dbg !7706
  br i1 %.not.i167.i.i, label %bb.oz, label %bb.pe, !dbg !7708

bb.oz:                                            ; preds = %bb.oy
  %i.bbq = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bbo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bbg, i64 noundef range(i64 0, -9223372036854775808) %i.bbh)
          to label %bb.pa unwind label %bb.pd, !dbg !7709 ; 2 uses

bb.pa:                                            ; preds = %bb.oz
  %.not11.i.i134.i = icmp eq ptr %i.bbq, null, !dbg !7710
  br i1 %.not11.i.i134.i, label %bb.pb, label %bb.pe, !dbg !7712

bb.pb:                                            ; preds = %bb.pa
  %i.bbr = load i64, ptr %i.bbo, align 8, !dbg !7713, !range !109, !alias.scope !7716, !noundef !15
  %i.bbs = trunc nuw i64 %i.bbr to i1, !dbg !7719
  br i1 %i.bbs, label %bb.pc, label %bb.pf, !dbg !7719

bb.pc:                                            ; preds = %bb.pb
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbj, i64 200, !dbg !7720
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bbt, i64 noundef 4)
          to label %.noexc.i.i135.i unwind label %bb.pd, !dbg !7724

.noexc.i.i135.i:                                  ; preds = %bb.pc
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbj, i64 216, !dbg !7729 ; 3 uses
  %i.bbv = load i64, ptr %i.bbu, align 8, !dbg !7729, !alias.scope !7732, !noundef !15 ; 2 uses
  %i.bbw = icmp sgt i64 %i.bbv, -1, !dbg !7735
  call void @llvm.assume(i1 %i.bbw), !dbg !7736
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbj, i64 208, !dbg !7737
  %i.bby = load ptr, ptr %i.bbx, align 8, !dbg !7737, !alias.scope !7732, !nonnull !15, !noundef !15
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 %i.bbv, !dbg !7742
  store i32 1831885595, ptr %i.bbz, align 1, !dbg !7744
  %i.bca = load i64, ptr %i.bbu, align 8, !dbg !7746, !alias.scope !7732, !noundef !15
  %i.bcb = add i64 %i.bca, 4, !dbg !7746
  store i64 %i.bcb, ptr %i.bbu, align 8, !dbg !7746, !alias.scope !7732
  br label %bb.pf, !dbg !7747

bb.pd:                                            ; preds = %bb.pc, %bb.oz, %bb.ow
  %i.bcc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !7748

bb.pe:                                            ; preds = %bb.pa, %bb.oy
  %.sroa.0.0.i168.i.i = phi ptr [ %i.bbp, %bb.oy ], [ %i.bbq, %bb.pa ], !dbg !7749
  %storemerge.in.i.i132.i = load i64, ptr %i.bbk, align 8, !dbg !7750, !noundef !15
  %storemerge.i.i133.i = add i64 %storemerge.in.i.i132.i, 1, !dbg !7755
  store i64 %storemerge.i.i133.i, ptr %i.bbk, align 8, !dbg !7756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !7759, !noalias !7674
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !7760

bb.pf:                                            ; preds = %.noexc.i.i135.i, %bb.pb
  %storemerge.in.i234.i.i = load i64, ptr %i.bbk, align 8, !dbg !7750, !noundef !15
  %storemerge.i235.i.i = add i64 %storemerge.in.i234.i.i, 1, !dbg !7755
  store i64 %storemerge.i235.i.i, ptr %i.bbk, align 8, !dbg !7756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !7759, !noalias !7674
  %.pre607.i.i = load ptr, ptr %i.de, align 8, !dbg !7761, !noalias !7765
  br label %bb.pg, !dbg !7768

bb.pg:                                            ; preds = %bb.pf, %bb.ol
  %i.bcd = phi ptr [ %.val145.i.i, %bb.ol ], [ %.pre607.i.i, %bb.pf ], !dbg !7761 ; 3 uses
  %.sroa.37.5.ph.i117.i = phi i8 [ %.sroa.37.0.ph.i116.i, %bb.ol ], [ 1, %bb.pf ] ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 240, !dbg !7761
  %i.bcf = load ptr, ptr %i.bce, align 8, !dbg !7761, !noalias !7765, !nonnull !15, !align !519, !noundef !15 ; 8 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 150, !dbg !7769
  %i.bch = load i8, ptr %i.bcg, align 2, !dbg !7769, !range !17, !noalias !7765, !noundef !15
  %i.bci = trunc nuw i8 %i.bch to i1, !dbg !7769
  br i1 %i.bci, label %bb.ph, label %bb.qb, !dbg !7769

bb.ph:                                            ; preds = %bb.pg
  switch i8 %.sroa.37.5.ph.i117.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i
    i8 1, label %bb.pi
    i8 2, label %bb.pm
  ], !dbg !7770

bb.pi:                                            ; preds = %bb.ph
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bcf, i64 184, !dbg !7772 ; 5 uses
  %i.bck = load i64, ptr %i.bcj, align 8, !dbg !7776, !noalias !7779, !noundef !15
  %i.bcl = icmp eq i64 %i.bck, 0, !dbg !7782
  br i1 %i.bcl, label %bb.pj, label %bb.pk, !dbg !7782, !prof !95

bb.pj:                                            ; preds = %bb.pi
  store i64 -1, ptr %i.bcj, align 8, !dbg !7783, !noalias !7779
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcf, i64 192, !dbg !7786
  %i.bcn = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bcm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i162.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i105.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit169.i.i unwind label %bb.pl, !dbg !7788 ; 2 uses

bb.pk:                                            ; preds = %bb.pi
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !7789, !noalias !7779
  unreachable, !dbg !7789

bb.pl:                                            ; preds = %bb.pj
  %i.bco = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !7790

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit169.i.i: ; preds = %bb.pj
  %i.bcp = load i64, ptr %i.bcj, align 8, !dbg !7791, !noundef !15
  %i.bcq = add i64 %i.bcp, 1, !dbg !7796
  store i64 %i.bcq, ptr %i.bcj, align 8, !dbg !7797
  %.not7.i.i131.i.i = icmp eq ptr %i.bcn, null, !dbg !7800
  br i1 %.not7.i.i131.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !7802

bb.pm:                                            ; preds = %bb.ph
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcf, i64 66, !dbg !7803
  %i.bcs = load i8, ptr %i.bcr, align 2, !dbg !7803, !range !17, !noalias !7804, !noundef !15
  %i.bct = trunc nuw i8 %i.bcs to i1, !dbg !7803
  br i1 %i.bct, label %bb.pn, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i, !dbg !7807

bb.pn:                                            ; preds = %bb.pm
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcf, i64 67, !dbg !7803
  %i.bcv = load i8, ptr %i.bcu, align 1, !dbg !7808, !noalias !7804, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !7809, !noalias !7804
  store i8 %i.bcv, ptr %i.aa, align 1, !dbg !7809, !noalias !7804
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bcd) ]
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcf, i64 184, !dbg !7810 ; 5 uses
  %i.bcx = load i64, ptr %i.bcw, align 8, !dbg !7814, !noalias !7817, !noundef !15
  %i.bcy = icmp eq i64 %i.bcx, 0, !dbg !7820
  br i1 %i.bcy, label %bb.po, label %bb.pp, !dbg !7820, !prof !95

bb.po:                                            ; preds = %bb.pn
  store i64 -1, ptr %i.bcw, align 8, !dbg !7821, !noalias !7817
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcf, i64 192, !dbg !7824
  %i.bda = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bcz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit170.i unwind label %bb.pq, !dbg !7826 ; 2 uses

bb.pp:                                            ; preds = %bb.pn
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !7827, !noalias !7817
  unreachable, !dbg !7827

bb.pq:                                            ; preds = %bb.po
  %i.bdb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !7828

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit170.i: ; preds = %bb.po
  %i.bdc = load i64, ptr %i.bcw, align 8, !dbg !7829, !noundef !15
  %i.bdd = add i64 %i.bdc, 1, !dbg !7834
  store i64 %i.bdd, ptr %i.bcw, align 8, !dbg !7835
  %.not.i.i130.i.i = icmp eq ptr %i.bda, null, !dbg !7838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !7840, !noalias !7804
  br i1 %.not.i.i130.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, !dbg !7841

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit170.i, %bb.pm, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit169.i.i, %bb.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !7842, !noalias !7765
  call void @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, i64 noundef %i.ayl), !dbg !7843, !noalias !7765
  %i.bde = load ptr, ptr %i.de, align 8, !dbg !7844, !noalias !7765, !nonnull !15, !align !519, !noundef !15
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 240, !dbg !7844
  %i.bdg = load ptr, ptr %i.bdf, align 8, !dbg !7844, !noalias !7765, !nonnull !15, !align !519, !noundef !15
  %i.bdh = call { ptr, i64 } @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter8as_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab), !dbg !7847, !noalias !7765 ; 2 uses
  %i.bdi = extractvalue { ptr, i64 } %i.bdh, 0, !dbg !7847
  %i.bdj = extractvalue { ptr, i64 } %i.bdh, 1, !dbg !7847
  %.val156.i.i = load ptr, ptr %i.de, align 8, !dbg !7848, !nonnull !15, !align !519, !noundef !15
  %i.bdk = getelementptr inbounds nuw i8, ptr %.val156.i.i, i64 240, !dbg !7849
  %i.bdl = load ptr, ptr %i.bdk, align 8, !dbg !7849, !noalias !7852, !nonnull !15, !align !519, !noundef !15 ; 5 uses
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 184, !dbg !7856 ; 7 uses
  %i.bdn = load i64, ptr %i.bdm, align 8, !dbg !7859, !noalias !7852, !noundef !15
  %i.bdo = icmp eq i64 %i.bdn, 0, !dbg !7862
  br i1 %i.bdo, label %bb.pr, label %bb.ps, !dbg !7862, !prof !95

bb.pr:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdg, i64 98, !dbg !7863
  store i64 -1, ptr %i.bdm, align 8, !dbg !7865, !noalias !7852
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdl, i64 192, !dbg !7868 ; 3 uses
  %i.bdr = invoke fastcc noundef ptr @_RNvXsp_Cs6Ur84ob3I15_9termcolorNtB5_6BufferNtB5_10WriteColor9set_color(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bdq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.bdp)
          to label %bb.pt unwind label %bb.py, !dbg !7870, !noalias !7872 ; 2 uses

bb.ps:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !7873, !noalias !7852
  unreachable, !dbg !7873

bb.pt:                                            ; preds = %bb.pr
  %.not.i170.i.i = icmp eq ptr %i.bdr, null, !dbg !7874
  br i1 %.not.i170.i.i, label %bb.pu, label %bb.pz, !dbg !7876

bb.pu:                                            ; preds = %bb.pt
end_hunk_1
begin_hunk_2_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE4sinkCs2NzvFoTxuAy_2rg:bb.a
bb.abs:                                           ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit158.i103
  %i.cpb = load ptr, ptr %i.he, align 8, !dbg !10529, !noalias !10473, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.cpc = getelementptr inbounds nuw i8, ptr %i.cpb, i64 56, !dbg !10531
  %i.cpd = load i8, ptr %i.cpc, align 8, !dbg !10531, !range !17, !noundef !15 ; 4 uses
  %i.cpe = getelementptr inbounds nuw i8, ptr %i.cpb, i64 57, !dbg !10531
  %i.cpf = load i8, ptr %i.cpe, align 1, !dbg !10531 ; 3 uses
  %.not33.i.i105 = icmp eq i64 %.sroa.11.0.i.i100, 0, !dbg !10533
  %i.cpg = getelementptr i8, ptr %.sroa.0.0.i.i101, i64 %.sroa.11.0.i.i100, !dbg !10533
  %i.cph = getelementptr i8, ptr %i.cpg, i64 -1, !dbg !10533 ; 2 uses
  %.not.i159268.i = icmp eq ptr %i.cph, null, !dbg !10536
  %.not.i159.i = select i1 %.not33.i.i105, i1 true, i1 %.not.i159268.i, !dbg !10533
  br i1 %.not.i159.i, label %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge.i113, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.i106, !dbg !10538

._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge.i113: ; preds = %bb.abs
  %.pre430.i = trunc nuw i8 %i.cpd to i1, !dbg !10539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10542, !noalias !10473
  store i8 %i.cpd, ptr %i.k, align 1, !dbg !10543, !noalias !10473
  store i8 %i.cpf, ptr %i.cei, align 1, !dbg !10543, !noalias !10473
  br i1 %.pre430.i, label %.split30.i.i112, label %.split.i.i109, !dbg !10545

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.i106: ; preds = %bb.abs
  %.val5.i.i107 = load i8, ptr %i.cph, align 1, !dbg !10546, !alias.scope !10547, !noundef !15
  %i.cpi = trunc nuw i8 %i.cpd to i1, !dbg !10550 ; 2 uses
  %.sroa.0.0.i.i160.i = select i1 %i.cpi, i8 10, i8 %i.cpf, !dbg !10553
  %i.cpj = icmp eq i8 %.val5.i.i107, %.sroa.0.0.i.i160.i, !dbg !10554
  br i1 %i.cpj, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_lineCs2NzvFoTxuAy_2rg.exit.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread.i108, !dbg !10555

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread.i108: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.i106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10542, !noalias !10473
  store i8 %i.cpd, ptr %i.k, align 1, !dbg !10543, !noalias !10473
  store i8 %i.cpf, ptr %i.cei, align 1, !dbg !10543, !noalias !10473
  br i1 %i.cpi, label %.split30.i.i112, label %.split.i.i109, !dbg !10545

.split30.i.i112:                                  ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread.i108, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge.i113
  %.val122.i = load ptr, ptr %i.de, align 8, !dbg !10556, !nonnull !15, !align !519, !noundef !15
  %i.cpk = getelementptr inbounds nuw i8, ptr %.val122.i, i64 240, !dbg !10557
  %i.cpl = load ptr, ptr %i.cpk, align 8, !dbg !10557, !noalias !10560, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.cpl, i64 184, !dbg !10563 ; 5 uses
  %i.cpn = load i64, ptr %i.cpm, align 8, !dbg !10566, !noalias !10560, !noundef !15
  %i.cpo = icmp eq i64 %i.cpn, 0, !dbg !10569
  br i1 %i.cpo, label %bb.abt, label %bb.abu, !dbg !10569, !prof !95

bb.abt:                                           ; preds = %.split30.i.i112
  store i64 -1, ptr %i.cpm, align 8, !dbg !10570, !noalias !10560
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpl, i64 192, !dbg !10573
  %i.cpq = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cpp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 2)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit162.i unwind label %bb.abv, !dbg !10575

bb.abu:                                           ; preds = %.split30.i.i112
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !10576, !noalias !10560
  unreachable, !dbg !10576

bb.abv:                                           ; preds = %bb.abt
  %i.cpr = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i91, !dbg !10577

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit162.i: ; preds = %bb.abt
  %i.cps = load i64, ptr %i.cpm, align 8, !dbg !10578, !noundef !15
  %i.cpt = add i64 %i.cps, 1, !dbg !10583
  store i64 %i.cpt, ptr %i.cpm, align 8, !dbg !10584
  br label %bb.abz, !dbg !10587

.split.i.i109:                                    ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread.i108, %._RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.thread_crit_edge.i113
  %.val123.i = load ptr, ptr %i.de, align 8, !dbg !10556, !nonnull !15, !align !519, !noundef !15
  %i.cpu = getelementptr inbounds nuw i8, ptr %.val123.i, i64 240, !dbg !10588
  %i.cpv = load ptr, ptr %i.cpu, align 8, !dbg !10588, !noalias !10591, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.cpw = getelementptr inbounds nuw i8, ptr %i.cpv, i64 184, !dbg !10594 ; 5 uses
  %i.cpx = load i64, ptr %i.cpw, align 8, !dbg !10597, !noalias !10591, !noundef !15
  %i.cpy = icmp eq i64 %i.cpx, 0, !dbg !10600
  br i1 %i.cpy, label %bb.abw, label %bb.abx, !dbg !10600, !prof !95

bb.abw:                                           ; preds = %.split.i.i109
  store i64 -1, ptr %i.cpw, align 8, !dbg !10601, !noalias !10591
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.cpv, i64 192, !dbg !10604
  %i.cqa = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.cpz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cei, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit163.i unwind label %bb.aby, !dbg !10606

bb.abx:                                           ; preds = %.split.i.i109
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !10607, !noalias !10591
  unreachable, !dbg !10607

bb.aby:                                           ; preds = %bb.abw
  %i.cqb = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i91, !dbg !10608

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit163.i: ; preds = %bb.abw
  %i.cqc = load i64, ptr %i.cpw, align 8, !dbg !10609, !noundef !15
  %i.cqd = add i64 %i.cqc, 1, !dbg !10614
  store i64 %i.cqd, ptr %i.cpw, align 8, !dbg !10615
  br label %bb.abz, !dbg !10618

bb.abz:                                           ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit163.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit162.i
  %phi.call.i.i110 = phi ptr [ %i.cqa, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit163.i ], [ %i.cpq, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit162.i ], !dbg !10556 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10619, !noalias !10473
  %.not34.i.i111 = icmp eq ptr %phi.call.i.i110, null, !dbg !10620
  br i1 %.not34.i.i111, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_lineCs2NzvFoTxuAy_2rg.exit.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20sink_fast_multi_lineCs2NzvFoTxuAy_2rg.exit, !dbg !10622

bb.aca:                                           ; preds = %bb.abk
  %i.cqe = load ptr, ptr %i.cej, align 8, !dbg !10623, !noalias !10473, !nonnull !15, !align !519, !noundef !15
  %i.cqf = load i64, ptr %i.hb, align 8, !dbg !10623, !noalias !10473, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !10625, !noalias !10473
  store i64 0, ptr %i.l, align 8, !dbg !10625, !noalias !10473
  %i.cqg = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE19write_exceeded_lineCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i101, i64 noundef %.sroa.11.0.i.i100, i64 noundef 0, i64 noundef %.sroa.11.0.i.i100, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cqe, i64 noundef %i.cqf, ptr noalias nofree noundef align 8 dereferenceable(8) %i.l), !dbg !10626 ; 2 uses
  %.not35.i.i114 = icmp eq ptr %i.cqg, null, !dbg !10627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !10629, !noalias !10473
  br i1 %.not35.i.i114, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_lineCs2NzvFoTxuAy_2rg.exit.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20sink_fast_multi_lineCs2NzvFoTxuAy_2rg.exit, !dbg !10630

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_lineCs2NzvFoTxuAy_2rg.exit.i: ; preds = %bb.aca, %bb.abz, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvMs2_Cs7LWxN68iDgu_12grep_matcherNtB11_14LineTerminator9is_suffix0ECs2NzvFoTxuAy_2rg.exit.i106
  %i.cqh = add i64 %i.cem, %.sroa.02.0341.i, !dbg !10631
  %i.cqi = call { ptr, i64 } @_RNvXs_NtCshqpdr3wwzuw_13grep_searcher5linesNtB4_8LineIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m), !dbg !9767, !noalias !9771 ; 2 uses
  %i.cqj = extractvalue { ptr, i64 } %i.cqi, 0, !dbg !9767 ; 2 uses
  %.not.i132.i = icmp eq ptr %i.cqj, null, !dbg !9774
  br i1 %.not.i132.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20sink_fast_multi_lineCs2NzvFoTxuAy_2rg.exit, label %bb.yn, !dbg !9778

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20sink_fast_multi_lineCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.yx, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit138.i, %bb.zr, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i131, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit160, %bb.aal, %bb.aap, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit157.i, %bb.abh, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit158.i103, %bb.abz, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_lineCs2NzvFoTxuAy_2rg.exit.i, %bb.aca, %bb.abj, %bb.aar, %bb.zs, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit139.i, %bb.ym, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit108.i, %bb.zp, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i121, %bb.aba
  %.sroa.0.0.i97 = phi ptr [ null, %bb.ym ], [ %i.cga, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit108.i ], [ %.sroa.0.0.i154, %bb.aba ], [ %.sroa.0.0.i141.i, %bb.zp ], [ %i.cky, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i121 ], [ null, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE10write_lineCs2NzvFoTxuAy_2rg.exit.i ], [ %i.cnh, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit157.i ], [ %i.cnl, %bb.abh ], [ %i.cio, %bb.zr ], [ %i.cgi, %bb.yx ], [ %i.cjd, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i131 ], [ %i.cjn, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit160 ], [ %i.cgt, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit138.i ], [ %i.clr, %bb.aap ], [ %phi.call.i.i110, %bb.abz ], [ %i.cox, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit158.i103 ], [ %i.clg, %bb.aal ], [ %i.cnu, %bb.abj ], [ %i.clx, %bb.aar ], [ %i.chd, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit139.i ], [ %i.cqg, %bb.aca ], [ %i.ciw, %bb.zs ], !dbg !10632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10633
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !10634

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE9sink_slowCs2NzvFoTxuAy_2rg.exit: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit142, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit150, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit241.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit237.i, %bb.ce, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit40.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit141, %bb.ea, %bb.di, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit238.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit136, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit140, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit273.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit264.i, %bb.fk, %bb.il, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit139, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit274.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit265.i, %._crit_edge459.i.i, %bb.q, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit23.i, %bb.yi, %.loopexit, %bb.yh, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit60.i, %bb.xx, %bb.xv, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit152, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i.i75, %bb.xo, %bb.xm, %bb.xi, %bb.wz, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit57.i, %bb.wq, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i82, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i, %._crit_edge.i10, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i, %bb.ns, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i, %bb.hv, %bb.ha, %bb.gf, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit177.i, %bb.ej, %bb.dr, %bb.cz, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit174.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit48.i, %bb.bs, %bb.bq, %bb.bo, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i.i, %bb.bm, %bb.bk, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i122.i, %bb.bg, %bb.be, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i96.i, %bb.ba, %bb.ay, %bb.au, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20write_search_preludeCs2NzvFoTxuAy_2rg.exit, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20sink_fast_multi_lineCs2NzvFoTxuAy_2rg.exit
  %.sroa.0.0 = phi ptr [ %i.bxv, %bb.wq ], [ %phi.call.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit23.i ], [ %.sroa.0.0.i97, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20sink_fast_multi_lineCs2NzvFoTxuAy_2rg.exit ], [ %i.cdq, %bb.yi ], [ %.sroa.0.0.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE20write_search_preludeCs2NzvFoTxuAy_2rg.exit ], [ %i.bys, %bb.wz ], [ %i.mf, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i122.i ], [ %i.nr, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit48.i ], [ %.sroa.0.1.i89.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i ], [ null, %._crit_edge.i10 ], [ %.sroa.0.0.i28, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i ], [ %i.mr, %bb.bm ], [ %i.lk, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i96.i ], [ %i.cax, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit152 ], [ %i.nb, %bb.bq ], [ %i.ko, %bb.au ], [ %i.lx, %bb.bg ], [ %i.kg, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i ], [ %i.lc, %bb.ba ], [ %i.mz, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.na, %bb.bo ], [ %i.kw, %bb.ay ], [ %i.lr, %bb.be ], [ %i.ml, %bb.bk ], [ %.sroa.0.0.i144, %bb.ej ], [ %.sroa.0.0.i114.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i113.i ], [ null, %bb.ns ], [ %phi.call.i.i70, %bb.yh ], [ %i.cbm, %bb.xx ], [ %.sroa.0.0.i243.i, %bb.dr ], [ %i.ph, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit174.i ], [ %.sroa.0.0.i240.i, %bb.cz ], [ null, %.loopexit ], [ %.sroa.0.0.i276.i, %bb.ha ], [ %i.zh, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit177.i ], [ %.sroa.0.0.i267.i, %bb.gf ], [ %i.nk, %bb.bs ], [ %.sroa.0.0.i138, %bb.hv ], [ %i.ahy, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit ], [ %i.cct, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit60.i ], [ %i.byh, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit57.i ], [ %i.cac, %bb.xm ], [ %i.fl, %bb.q ], [ %i.ee, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit.i ], [ %i.cai, %bb.xo ], [ %i.cbd, %bb.xv ], [ %i.bxn, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5startCs2NzvFoTxuAy_2rg.exit.i82 ], [ %.sroa.0.0.i59.i, %bb.xi ], [ %i.caq, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE15write_separatorCs2NzvFoTxuAy_2rg.exit.i.i75 ], [ null, %._crit_edge459.i.i ], [ %i.zp, %bb.fk ], [ %i.agu, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i ], [ %i.aab, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit264.i ], [ %i.acj, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit273.i ], [ %i.aeq, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit140 ], [ %i.aij, %bb.il ], [ %i.aaq, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit265.i ], [ %i.acy, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit274.i ], [ %i.aff, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit139 ], [ %i.ahg, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit136 ], [ %i.uh, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit150 ], [ %i.sj, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit241.i ], [ %i.xp, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13write_preludeCs2NzvFoTxuAy_2rg.exit40.i ], [ %i.us, %bb.ea ], [ %i.pp, %bb.ce ], [ %i.wp, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit142 ], [ %i.wd, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit ], [ %i.qq, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit238.i ], [ %i.qb, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit237.i ], [ %i.xh, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg.exit141 ], [ %i.su, %bb.di ], !dbg !3966
  ret ptr %.sroa.0.0, !dbg !10635
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferE5writeCs2NzvFoTxuAy_2rg(ptr nofree readonly captures(none) %.88.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2245 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 240, !dbg !10636
  %i.b = load ptr, ptr %i.a, align 8, !dbg !10636, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !10638 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !10641, !noundef !15
  %i.e = icmp eq i64 %i.d, 0, !dbg !10644
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !10644, !prof !95

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.c, align 8, !dbg !10645
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !10648
  %i.g = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
          to label %bb.d unwind label %bb.e, !dbg !10650

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !10651
  unreachable, !dbg !10651

bb.d:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !dbg !10652, !noundef !15
  %i.i = add i64 %i.h, 1, !dbg !10657
  store i64 %i.i, ptr %i.c, align 8, !dbg !10658
  ret ptr %i.g, !dbg !10661

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i64, ptr %i.c, align 8, !dbg !10662, !noundef !15
  %i.l = add i64 %i.k, 1, !dbg !10667
  store i64 %i.l, ptr %i.c, align 8, !dbg !10668
  resume { ptr, i32 } %i.j, !dbg !10671
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_pathCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10672 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !10673 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !dbg !10673, !nonnull !15, !align !519, !noundef !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 240, !dbg !10673
  %i.d = load ptr, ptr %i.c, align 8, !dbg !10673, !nonnull !15, !align !519, !noundef !15 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184, !dbg !10676 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !10681, !noundef !15
  %i.g = icmp eq i64 %i.f, 0, !dbg !10686
  br i1 %i.g, label %bb.b, label %bb.c, !dbg !10686, !prof !95

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.e, align 8, !dbg !10687
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 192, !dbg !10693
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 200, !dbg !10697 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !10697, !range !109, !alias.scope !10703, !noalias !10706, !noundef !15
  %i.k = trunc nuw i64 %i.j to i1, !dbg !10697
  br i1 %i.k, label %.sink.split.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, !dbg !10697

.sink.split.i:                                    ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !dbg !10708, !nonnull !15, !align !519, !noundef !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 240, !dbg !10708
  %i.n = load ptr, ptr %i.m, align 8, !dbg !10708, !nonnull !15, !align !519, !noundef !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 68, !dbg !10711
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 208, !dbg !10697
  %i.q = invoke fastcc noundef ptr @_RNvXsv_Cs6Ur84ob3I15_9termcolorINtB5_4AnsiNtB5_16IoStandardStreamENtB5_10WriteColor9set_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.o) #18
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit unwind label %bb.f, !dbg !10697 ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14, !dbg !10714
  unreachable, !dbg !10714

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit: ; preds = %.sink.split.i
  %.not = icmp eq ptr %i.q, null, !dbg !10716
  br i1 %.not, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit, !dbg !10720

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread: ; preds = %bb.b, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit
  %.sroa.3.0.in.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10721
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in.a, align 8, !dbg !10721, !noundef !15
  %.sroa.07.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10721
  %.sroa.07.0 = load ptr, ptr %.sroa.07.0.in, align 8, !dbg !10721, !nonnull !15, !noundef !15
  %i.r = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.07.0, i64 noundef %.sroa.3.0)
          to label %bb.d unwind label %bb.f, !dbg !10726 ; 2 uses

bb.d:                                             ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread
  %.not10 = icmp eq ptr %i.r, null, !dbg !10727
  br i1 %.not10, label %bb.e, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit, !dbg !10729

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.i, align 8, !dbg !10730, !range !109, !alias.scope !10735, !noundef !15
  %i.t = trunc nuw i64 %i.s to i1, !dbg !10730
  br i1 %i.t, label %.sink.split.i14, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit, !dbg !10730

.sink.split.i14:                                  ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 208, !dbg !10730
  %i.v = invoke noundef ptr @_RNvYNtCs6Ur84ob3I15_9termcolor16IoStandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4)
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit unwind label %bb.f, !dbg !10730

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit: ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit, %bb.d, %.sink.split.i14, %bb.e
  %.sroa.0.0 = phi ptr [ %i.v, %.sink.split.i14 ], [ null, %bb.e ], [ %i.q, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit ], [ %i.r, %bb.d ], !dbg !10738
  %storemerge.in = load i64, ptr %i.e, align 8, !dbg !10739, !noundef !15
  %storemerge = add i64 %storemerge.in, 1, !dbg !10745
  store i64 %storemerge, ptr %i.e, align 8, !dbg !10746
  ret ptr %.sroa.0.0, !dbg !10749

bb.f:                                             ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, %.sink.split.i, %.sink.split.i14
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load i64, ptr %i.e, align 8, !dbg !10750, !noundef !15
  %i.y = add i64 %i.x, 1, !dbg !10755
  store i64 %i.y, ptr %i.e, align 8, !dbg !10756
  resume { ptr, i32 } %i.w, !dbg !10759
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg(ptr nofree readonly captures(none) %.88.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10760 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 240, !dbg !10761
  %i.b = load ptr, ptr %i.a, align 8, !dbg !10761, !nonnull !15, !align !519, !noundef !15 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !10764 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !10769, !noundef !15
  %i.e = icmp eq i64 %i.d, 0, !dbg !10774
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !10774, !prof !95

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.c, align 8, !dbg !10775
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !10781
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 200, !dbg !10785 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !10785, !range !109, !alias.scope !10790, !noalias !10793, !noundef !15
  %i.i = trunc nuw i64 %i.h to i1, !dbg !10785
  br i1 %i.i, label %.sink.split.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, !dbg !10785

.sink.split.i:                                    ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 208, !dbg !10785
  %i.k = invoke fastcc noundef ptr @_RNvXsv_Cs6Ur84ob3I15_9termcolorINtB5_4AnsiNtB5_16IoStandardStreamENtB5_10WriteColor9set_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %0) #18
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit unwind label %bb.f, !dbg !10785 ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !10795
  unreachable, !dbg !10795

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit: ; preds = %.sink.split.i
  %.not = icmp eq ptr %i.k, null, !dbg !10797
  br i1 %.not, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread, !dbg !10801

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread: ; preds = %bb.b, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit
  %i.l = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.d unwind label %bb.f, !dbg !10802 ; 2 uses

bb.d:                                             ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread
  %.not11 = icmp eq ptr %i.l, null, !dbg !10803
  br i1 %.not11, label %bb.e, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread, !dbg !10805

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.g, align 8, !dbg !10806, !range !109, !alias.scope !10810, !noundef !15
  %i.n = trunc nuw i64 %i.m to i1, !dbg !10806
  br i1 %i.n, label %.sink.split.i16, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread, !dbg !10806

.sink.split.i16:                                  ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 208, !dbg !10806
  %i.p = invoke noundef ptr @_RNvYNtCs6Ur84ob3I15_9termcolor16IoStandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4)
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread unwind label %bb.f, !dbg !10806

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor5reset.exit.thread: ; preds = %.sink.split.i16, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.k, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit ], [ null, %bb.e ], [ %i.l, %bb.d ], [ %i.p, %.sink.split.i16 ], !dbg !10813
  %storemerge.in = load i64, ptr %i.c, align 8, !dbg !10814, !noundef !15
  %storemerge = add i64 %storemerge.in, 1, !dbg !10819
  store i64 %storemerge, ptr %i.c, align 8, !dbg !10820
  ret ptr %.sroa.0.0, !dbg !10823

bb.f:                                             ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread, %.sink.split.i, %.sink.split.i16
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i64, ptr %i.c, align 8, !dbg !10824, !noundef !15
  %i.s = add i64 %i.r, 1, !dbg !10829
  store i64 %i.s, ptr %i.c, align 8, !dbg !10830
  resume { ptr, i32 } %i.q, !dbg !10833
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg(ptr %.88.val, i1 noundef zeroext %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10834 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.88.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.88.val, i64 240, !dbg !10835
  %i.b = load ptr, ptr %i.a, align 8, !dbg !10835, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184, !dbg !10838 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !10843, !noundef !15
  %i.e = icmp eq i64 %i.d, 0, !dbg !10848
  br i1 %i.e, label %bb.b, label %bb.c, !dbg !10848, !prof !95

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.88.val, i64 248, !dbg !10849
  store i64 -1, ptr %i.c, align 8, !dbg !10850
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192, !dbg !10856
  %i.h = invoke noundef ptr @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator6finishQINtNtB8_7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %i.f, i1 noundef zeroext %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.g)
          to label %bb.d unwind label %bb.e, !dbg !10860

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14, !dbg !10861
  unreachable, !dbg !10861

bb.d:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !dbg !10863, !noundef !15
  %i.j = add i64 %i.i, 1, !dbg !10868
  store i64 %i.j, ptr %i.c, align 8, !dbg !10869
  ret ptr %i.h, !dbg !10872

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %i.c, align 8, !dbg !10873, !noundef !15
  %i.m = add i64 %i.l, 1, !dbg !10878
  store i64 %i.m, ptr %i.c, align 8, !dbg !10879
  resume { ptr, i32 } %i.k, !dbg !10882
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15end_color_matchCs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10883 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !10884 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !10889, !range !17, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1, !dbg !10889
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !10890

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !10891 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !10891, !nonnull !15, !align !519, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240, !dbg !10891
  %i.g = load ptr, ptr %i.f, align 8, !dbg !10891, !nonnull !15, !align !519, !noundef !15 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 135, !dbg !10896
  %i.i = load i8, ptr %i.h, align 1, !dbg !10896, !range !132, !alias.scope !10900, !noundef !15
  %.not.i = icmp eq i8 %i.i, -1, !dbg !10896
  br i1 %.not.i, label %bb.c, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, !dbg !10903

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 128, !dbg !10904
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 139, !dbg !10907
  %i.l = load i8, ptr %i.k, align 1, !dbg !10907, !range !132, !alias.scope !10900, !noundef !15
  %i.m = icmp ne i8 %i.l, -1, !dbg !10907
  %i.n = load i8, ptr %i.j, align 8, !range !17, !alias.scope !10900
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 129
  %i.q = load <4 x i8>, ptr %i.p, align 1, !alias.scope !10900
  %.fr = freeze <4 x i8> %i.q
  %i.r = trunc <4 x i8> %.fr to <4 x i1>
  %i.s = bitcast <4 x i1> %i.r to i4, !dbg !10910
  %i.t = icmp ne i4 %i.s, 0, !dbg !10910
  %i.u = or i1 %i.m, %i.t, !dbg !10910
  %op.rdx29 = select i1 %i.u, i1 true, i1 %i.o, !dbg !10910
  br i1 %op.rdx29, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit, !dbg !10910

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 134, !dbg !10911
  %i.w = load i8, ptr %i.v, align 2, !dbg !10911, !range !17, !alias.scope !10900, !noundef !15
  %i.x = trunc nuw i8 %i.w to i1, !dbg !10912
  br i1 %i.x, label %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread, label %bb.e, !dbg !10913

bb.d:                                             ; preds = %bb.a, %bb.j, %bb.p, %bb.k
  %.sroa.0.0 = phi ptr [ %i.az, %bb.p ], [ null, %bb.k ], [ %i.ao, %bb.j ], [ null, %bb.a ], !dbg !10914
  ret ptr %.sroa.0.0, !dbg !10915

_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !10916
  %i.z = load ptr, ptr %i.y, align 8, !dbg !10916, !noundef !15
  %.not = icmp eq ptr %i.z, null, !dbg !10921
  br i1 %.not, label %bb.f, label %bb.e, !dbg !10926

bb.e:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit, %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 184, !dbg !10927 ; 7 uses
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !10933, !noundef !15
  %i.ac = icmp eq i64 %i.ab, 0, !dbg !10940
  br i1 %i.ac, label %bb.m, label %bb.n, !dbg !10940, !prof !95

bb.f:                                             ; preds = %_RNvMsz_Cs6Ur84ob3I15_9termcolorNtB5_9ColorSpec7is_none.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 184, !dbg !10941 ; 7 uses
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !10944, !noundef !15
  %i.af = icmp eq i64 %i.ae, 0, !dbg !10947
  br i1 %i.af, label %bb.g, label %bb.h, !dbg !10947, !prof !95

bb.g:                                             ; preds = %bb.f
end_hunk_2
begin_hunk_3_@_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE4sinkCs2NzvFoTxuAy_2rg:bb.a
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !15919

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.i.i: ; preds = %.sink.split.i16.i160.i.i
  %storemerge.in.i158.i.i = load i64, ptr %i.auj, align 8, !dbg !15910, !noundef !15
  %storemerge.i159.i.i = add i64 %storemerge.in.i158.i.i, 1, !dbg !15915
  store i64 %storemerge.i159.i.i, ptr %i.auj, align 8, !dbg !15916
  %.not70.i.i = icmp eq ptr %i.auw, null, !dbg !15923
  br i1 %.not70.i.i, label %bb.lt, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !15919

bb.ls:                                            ; preds = %bb.ll
  %i.auy = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE19write_exceeded_lineCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aiq, i64 noundef %i.ais, i64 noundef %i.atv, i64 noundef %..i121.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.aiu, i64 noundef %i.aiv, ptr noalias nofree noundef align 8 dereferenceable(8) %i.bl), !dbg !15924 ; 2 uses
  %.not72.i.i = icmp eq ptr %i.auy, null, !dbg !15925
  %.pre642.i.i = load i64, ptr %i.bl, align 8, !dbg !15129
  br i1 %.not72.i.i, label %.backedge.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !15927

bb.lt:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.thread264.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !15928
  %i.auz = load ptr, ptr %i.he, align 8, !dbg !15928, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 56, !dbg !15931
  %i.avb = load i8, ptr %i.ava, align 8, !dbg !15931, !range !17, !noundef !15 ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auz, i64 57, !dbg !15931
  %i.avd = load i8, ptr %i.avc, align 1, !dbg !15931
  store i8 %i.avb, ptr %i.bd, align 1, !dbg !15931
  store i8 %i.avd, ptr %i.ajg, align 1, !dbg !15931
  %i.ave = trunc nuw i8 %i.avb to i1, !dbg !15933
  %.val114.i.i = load ptr, ptr %i.de, align 8, !dbg !15936, !nonnull !15, !align !519, !noundef !15
  %i.avf = getelementptr inbounds nuw i8, ptr %.val114.i.i, i64 240, !dbg !15937
  %i.avg = load ptr, ptr %i.avf, align 8, !dbg !15937, !noalias !15, !nonnull !15, !align !519, !noundef !15 ; 3 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 184, !dbg !15940 ; 7 uses
  %i.avi = load i64, ptr %i.avh, align 8, !dbg !15943, !noalias !15, !noundef !15
  %i.avj = icmp eq i64 %i.avi, 0, !dbg !15946     ; 2 uses
  br i1 %i.ave, label %.split49.i.i, label %.split.i.i57, !dbg !15947

.split49.i.i:                                     ; preds = %bb.lt
  br i1 %i.avj, label %bb.lu, label %bb.lv, !dbg !15948, !prof !95

bb.lu:                                            ; preds = %.split49.i.i
  store i64 -1, ptr %i.avh, align 8, !dbg !15953, !noalias !15956
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avg, i64 192, !dbg !15959
  %i.avl = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.avk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 2)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i unwind label %bb.lw, !dbg !15961

bb.lv:                                            ; preds = %.split49.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !15962, !noalias !15956
  unreachable, !dbg !15962

bb.lw:                                            ; preds = %bb.lu
  %i.avm = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !15963

.split.i.i57:                                     ; preds = %bb.lt
  br i1 %i.avj, label %bb.lx, label %bb.ly, !dbg !15964, !prof !95

bb.lx:                                            ; preds = %.split.i.i57
  store i64 -1, ptr %i.avh, align 8, !dbg !15969, !noalias !15972
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avg, i64 192, !dbg !15975
  %i.avo = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.avn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ajg, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i unwind label %bb.lz, !dbg !15977

bb.ly:                                            ; preds = %.split.i.i57
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !15978, !noalias !15972
  unreachable, !dbg !15978

bb.lz:                                            ; preds = %bb.lx
  %i.avp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !15979

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i: ; preds = %bb.lx, %bb.lu
  %phi.call.i.i58 = phi ptr [ %i.avl, %bb.lu ], [ %i.avo, %bb.lx ], !dbg !15936 ; 2 uses
  %i.avq = load i64, ptr %i.avh, align 8, !dbg !15980, !noundef !15
  %i.avr = add i64 %i.avq, 1, !dbg !15985
  store i64 %i.avr, ptr %i.avh, align 8, !dbg !15986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !15989
  %.not71.i.i = icmp eq ptr %phi.call.i.i58, null, !dbg !15990
  br i1 %.not71.i.i, label %.backedge.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, !dbg !15992

.backedge.i.i:                                    ; preds = %bb.mb, %bb.ma, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i, %bb.ls
  %i.avs = phi i64 [ %i.akd, %bb.ma ], [ %i.akd, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i ], [ %.pre642.i.i, %bb.ls ], [ %i.akn, %bb.mb ]
  %i.avt = load i64, ptr %i.ajc, align 8, !dbg !15114, !noundef !15 ; 2 uses
  %i.avu = load i64, ptr %i.bi, align 8, !dbg !15119, !noundef !15 ; 2 uses
  %i.avv = icmp eq i64 %i.avt, %i.avu, !dbg !15127
  br i1 %i.avv, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !15128

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i, %bb.ls, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit174.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit144.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit132.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit128.i.i, %bb.ir, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit173.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit175.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit133.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit129.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.thread.i.i, %.loopexit270.i.i, %.loopexit269.i.i, %.loopexit.i.i, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i.i
  %.sroa.0.0.i91.i = phi ptr [ %.sroa.0.0.i136231.i.i, %.loopexit269.i.i ], [ %i.amf, %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i.i ], [ %.sroa.0.0.i157.ph.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.thread.i.i ], [ %.sroa.0.0.i130214.i.i, %.loopexit.i.i ], [ %.sroa.0.0.i147248.i.i, %.loopexit270.i.i ], [ %i.aqw, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit144.i.i ], [ %i.aoy, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit132.i.i ], [ %i.amz, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit128.i.i ], [ %i.asr, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13end_hyperlinkCs2NzvFoTxuAy_2rg.exit.i.i ], [ %i.amn, %bb.ir ], [ %i.atb, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit174.i ], [ %i.auy, %bb.ls ], [ %phi.call.i.i58, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i.i ], [ %i.auw, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit164.i.i ], [ %i.apl, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit133.i.i ], [ %i.arj, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit175.i ], [ %i.atr, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit173.i ], [ %i.anm, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit129.i.i ], !dbg !15993
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !15132
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i, !dbg !15996

bb.ma:                                            ; preds = %bb.ie
  %..i122.i.i = call noundef i64 @llvm.umin.i64(i64 %i.akp, i64 %i.akf), !dbg !15997
  store i64 %..i122.i.i, ptr %i.bi, align 8, !dbg !16000
  br label %.backedge.i.i, !dbg !16002

bb.mb:                                            ; preds = %bb.id
  store i64 %i.akn, ptr %i.bl, align 8, !dbg !16003
  br label %.backedge.i.i, !dbg !16004

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE34sink_slow_multi_line_only_matchingCs2NzvFoTxuAy_2rg.exit.i: ; preds = %._crit_edge.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i, %bb.hv
  %.sroa.0.1.i89.i = phi ptr [ %.sroa.0.0.i91.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i.i ], [ null, %bb.hv ], [ null, %._crit_edge.i.i ], !dbg !16006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !15133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !16007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !dbg !16008
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE9sink_slowCs2NzvFoTxuAy_2rg.exit, !dbg !16009

bb.mc:                                            ; preds = %bb.hs
  br i1 %i.aih, label %bb.rd, label %bb.rc, !dbg !16010

bb.md:                                            ; preds = %bb.hs
  br i1 %i.aih, label %bb.mf, label %bb.me, !dbg !16013

bb.me:                                            ; preds = %bb.md
  %i.avw = getelementptr inbounds nuw i8, ptr %i.aie, i64 57, !dbg !16018
  %i.avx = load i8, ptr %i.avw, align 1, !dbg !16018
  br label %bb.mf, !dbg !16021

bb.mf:                                            ; preds = %bb.me, %bb.md
  %.sroa.01.0.i93.i = phi i8 [ %i.avx, %bb.me ], [ 10, %bb.md ], !dbg !16022
  %i.avy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 113, !dbg !16023
  %i.avz = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16027
  %i.awa = load ptr, ptr %i.avz, align 8, !dbg !16027, !nonnull !15, !noundef !15 ; 8 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16027
  %i.awc = load i64, ptr %i.awb, align 8, !dbg !16027, !noundef !15 ; 14 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16031
  %i.awe = load ptr, ptr %i.awd, align 8, !dbg !16031, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.awf = load i64, ptr %i.hb, align 8, !dbg !16031, !noundef !15 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.awf, 4, !dbg !16035
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awe, i64 %.idx.i.i, !dbg !16035
  %i.awh = icmp eq i64 %i.awf, 0, !dbg !16046
  br i1 %i.awh, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE9sink_slowCs2NzvFoTxuAy_2rg.exit, label %.lr.ph493.i.i, !dbg !16055

.lr.ph493.i.i:                                    ; preds = %bb.mf
  %i.awi = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.awj = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.awk = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.awl = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.awm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 8 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.awo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0..sroa_idx.i.i94.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.0..sroa_idx.i.i95.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.7.0..sroa_idx.i.i96.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.9.0..sroa_idx.i.i97.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.awp = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.awq = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  br label %bb.mg, !dbg !16055

bb.mg:                                            ; preds = %._crit_edge490.i.i, %.lr.ph493.i.i
  %.sroa.02.0491.i.i = phi ptr [ %i.awe, %.lr.ph493.i.i ], [ %i.aws, %._crit_edge490.i.i ] ; 3 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %.sroa.02.0491.i.i, i64 16, !dbg !16056 ; 2 uses
  %i.awt = load i64, ptr %.sroa.02.0491.i.i, align 8, !dbg !16059, !noundef !15 ; 5 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.sroa.02.0491.i.i, i64 8, !dbg !16059
  %i.awv = load i64, ptr %i.awu, align 8, !dbg !16059, !noundef !15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !16060
  store i8 %.sroa.01.0.i93.i, ptr %i.awi, align 8, !dbg !16063
  store i64 0, ptr %i.at, align 8, !dbg !16063
  store i64 %i.awc, ptr %i.awj, align 8, !dbg !16063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !16066
  call void @_RNvMs0_NtCshqpdr3wwzuw_13grep_searcher5linesNtB5_8LineStep4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.awa, i64 noundef %i.awc), !dbg !16069
  %i.aww = load i64, ptr %i.as, align 8, !dbg !16066, !range !109, !noundef !15
  %i.awx = trunc nuw i64 %i.aww to i1, !dbg !16070
  br i1 %i.awx, label %.lr.ph489.i.i, label %._crit_edge490.i.i, !dbg !16070

.lr.ph489.i.i:                                    ; preds = %bb.mg, %.backedge.i100.i
  %.sroa.04.0487.i.i = phi i64 [ %.sroa.04.0.be.i.i, %.backedge.i100.i ], [ 0, %bb.mg ] ; 2 uses
  %i.awy = load i64, ptr %i.awk, align 8, !dbg !16071, !noundef !15 ; 5 uses
  %i.awz = load i64, ptr %i.awl, align 8, !dbg !16072, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !16073
  %.not.i99.i = icmp ugt i64 %i.awy, %i.awz, !dbg !16074
  br i1 %.not.i99.i, label %bb.mh, label %bb.mi, !dbg !16074, !prof !2569

bb.mh:                                            ; preds = %.lr.ph489.i.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !dbg !16077
  unreachable, !dbg !16077

bb.mi:                                            ; preds = %.lr.ph489.i.i
  store i64 %i.awy, ptr %i.ar, align 8, !dbg !16078
  store i64 %i.awz, ptr %i.awm, align 8, !dbg !16078
  %.not93.i.i = icmp ult i64 %i.awy, %i.awv, !dbg !16079
  br i1 %.not93.i.i, label %bb.mj, label %bb.rb, !dbg !16079

bb.mj:                                            ; preds = %bb.mi
  %.not94.i.i = icmp ugt i64 %i.awz, %i.awt, !dbg !16081
  br i1 %.not94.i.i, label %bb.mk, label %.backedge.i100.i, !dbg !16081

bb.mk:                                            ; preds = %bb.mj
  %i.axa = load i64, ptr %i.awn, align 8, !dbg !16082, !noundef !15
  %i.axb = add i64 %i.axa, %i.awy, !dbg !16085
  %i.axc = load i64, ptr %0, align 8, !dbg !16086, !range !109, !noundef !15
  %i.axd = trunc nuw i64 %i.axc to i1, !dbg !16089
  br i1 %i.axd, label %bb.ml, label %bb.mm, !dbg !16089

bb.ml:                                            ; preds = %bb.mk
  %i.axe = load i64, ptr %i.awo, align 8, !dbg !16086
  %i.axf = add i64 %i.axe, %.sroa.04.0487.i.i, !dbg !16092
  br label %bb.mm, !dbg !16096

bb.mm:                                            ; preds = %bb.ml, %bb.mk
  %.sroa.010.0.i.i.a = phi i64 [ 1, %bb.ml ], [ 0, %bb.mk ], !dbg !16097 ; 2 uses
  %.sroa.5.0.i101.i = phi i64 [ %i.axf, %bb.ml ], [ undef, %bb.mk ], !dbg !16097 ; 2 uses
  %i.axg = call i64 @llvm.usub.sat.i64(i64 %i.awt, i64 %i.awy), !dbg !16098
  %i.axh = add nuw i64 %i.axg, 1, !dbg !16101     ; 2 uses
  %i.axi = load ptr, ptr %i.aht, align 8, !dbg !16102, !noundef !15
  %.not.i160.i.i = icmp eq ptr %i.axi, null, !dbg !16108
  %i.axj = load ptr, ptr %i.de, align 8, !dbg !16110, !nonnull !15, !align !519, !noundef !15 ; 4 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 240, !dbg !16110
  %i.axl = load ptr, ptr %i.axk, align 8, !dbg !16110, !nonnull !15, !align !519, !noundef !15 ; 5 uses
  %..i161.i.i = select i1 %.not.i160.i.i, i64 48, i64 56, !dbg !16112
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 %..i161.i.i, !dbg !16113
  %.pn.i.i102.i = load ptr, ptr %i.axm, align 8, !dbg !16113, !nonnull !15, !noundef !15 ; 2 uses
  %.sroa.0.0.in.i.i103.i = getelementptr inbounds nuw i8, ptr %.pn.i.i102.i, i64 24, !dbg !16116
  %.sroa.0.0.i162.i.i = load ptr, ptr %.sroa.0.0.in.i.i103.i, align 8, !dbg !16116, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.3.0.in.i.i104.i = getelementptr inbounds nuw i8, ptr %.pn.i.i102.i, i64 32, !dbg !16123
  %.sroa.3.0.i.i105.i = load i64, ptr %.sroa.3.0.in.i.i104.i, align 8, !dbg !16123, !noundef !15 ; 4 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axj, i64 104, !dbg !16124 ; 2 uses
  %i.axo = load i64, ptr %i.axn, align 8, !dbg !16124, !range !284, !noalias !16128, !noundef !15
  %.not.i140.i.i = icmp eq i64 %i.axo, -2, !dbg !16124
  br i1 %.not.i140.i.i, label %bb.mu, label %bb.mn, !dbg !16131

bb.mn:                                            ; preds = %bb.mm
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axl, i64 16, !dbg !16132
  %i.axq = load ptr, ptr %i.axp, align 8, !dbg !16132, !noalias !16128, !nonnull !15, !noundef !15
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 40, !dbg !16137
  %i.axs = load i8, ptr %i.axr, align 8, !dbg !16137, !range !17, !noalias !16128, !noundef !15
  %i.axt = trunc nuw i8 %i.axs to i1, !dbg !16137
  br i1 %i.axt, label %bb.mp, label %bb.mo, !dbg !16139

bb.mo:                                            ; preds = %bb.mn
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axl, i64 144, !dbg !16140
  %i.axv = load i8, ptr %i.axu, align 8, !dbg !16140, !range !17, !noalias !16128, !noundef !15
  %i.axw = trunc nuw i8 %i.axv to i1, !dbg !16140
  br i1 %i.axw, label %bb.mu, label %bb.mp, !dbg !16140

bb.mp:                                            ; preds = %bb.mo, %bb.mn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !16141, !noalias !16128
  %i.axx = call noundef align 8 ptr @_RNvMs1_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_11PrinterPath12as_hyperlink(ptr noundef nonnull align 8 %i.axn), !dbg !16142, !noalias !16144 ; 2 uses
  %.not.i163.i106.i = icmp eq ptr %i.axx, null, !dbg !16147
  br i1 %.not.i163.i106.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i, label %bb.mq, !dbg !16148

bb.mq:                                            ; preds = %bb.mp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !16149, !noalias !16144
  store i64 %.sroa.010.0.i.i.a, ptr %i.x, align 8, !dbg !16150, !noalias !16144
  store i64 %.sroa.5.0.i101.i, ptr %.sroa.3.0..sroa_idx.i.i94.i, align 8, !dbg !16150, !noalias !16144
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i95.i, align 8, !dbg !16150, !noalias !16144
  store i64 %i.axh, ptr %.sroa.7.0..sroa_idx.i.i96.i, align 8, !dbg !16150, !noalias !16144
  store ptr %i.axx, ptr %.sroa.9.0..sroa_idx.i.i97.i, align 8, !dbg !16150, !noalias !16144
  %i.axy = load ptr, ptr %i.de, align 8, !dbg !16152, !noalias !16144, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 240, !dbg !16153
  %i.aya = load ptr, ptr %i.axz, align 8, !dbg !16153, !noalias !16144, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 184, !dbg !16155 ; 5 uses
  %i.ayc = load i64, ptr %i.ayb, align 8, !dbg !16158, !noalias !16144, !noundef !15
  %i.ayd = icmp eq i64 %i.ayc, 0, !dbg !16161
  br i1 %i.ayd, label %bb.mr, label %bb.ms, !dbg !16161, !prof !95

bb.mr:                                            ; preds = %bb.mq
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axy, i64 248, !dbg !16152
  store i64 -1, ptr %i.ayb, align 8, !dbg !16162, !noalias !16144
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aya, i64 192, !dbg !16165
  invoke void @_RINvMsa_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB6_12Interpolator5beginQINtNtB8_7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.y, ptr noundef nonnull align 8 %i.aye, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.ayf)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109.i unwind label %bb.mt, !dbg !16167, !noalias !16128

bb.ms:                                            ; preds = %bb.mq
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #14, !dbg !16168, !noalias !16144
  unreachable, !dbg !16168

bb.mt:                                            ; preds = %bb.mr
  %i.ayg = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !16169

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109.i: ; preds = %bb.mr
  %i.ayh = load i64, ptr %i.ayb, align 8, !dbg !16170, !noalias !16144, !noundef !15
  %i.ayi = add i64 %i.ayh, 1, !dbg !16175
  store i64 %i.ayi, ptr %i.ayb, align 8, !dbg !16176, !noalias !16144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !16179, !noalias !16144
  %.pre.i110.i = load i8, ptr %i.y, align 8, !dbg !16180, !range !17, !noalias !16128
  %i.ayj = trunc nuw i8 %.pre.i110.i to i1, !dbg !16180
  br i1 %i.ayj, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i150.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109._crit_edge.i, !dbg !16182

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109._crit_edge.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109.i
  %.pre1064.i = load i8, ptr %i.awp, align 1, !dbg !16183, !range !17, !noalias !16128
  %i.ayk = trunc nuw i8 %.pre1064.i to i1, !dbg !16184
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i, !dbg !16182

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109._crit_edge.i, %bb.mp
  %i.ayl = phi i1 [ %i.ayk, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109._crit_edge.i ], [ false, %bb.mp ], !dbg !16183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !16187, !noalias !16128
  %.pre640.i.i = load ptr, ptr %i.de, align 8, !dbg !16188, !noalias !16192 ; 2 uses
  %.phi.trans.insert.i111.i = getelementptr inbounds nuw i8, ptr %.pre640.i.i, i64 240
  %.pre641.i112.i = load ptr, ptr %.phi.trans.insert.i111.i, align 8, !dbg !16188, !noalias !16192
  br label %bb.mu, !dbg !16195

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5startCs2NzvFoTxuAy_2rg.exit.i150.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.i109.i
  %i.aym = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !16196
  %i.ayn = load ptr, ptr %i.aym, align 8, !dbg !16196, !noalias !16128, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !16187, !noalias !16128
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !16197

bb.mu:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i, %bb.mo, %bb.mm
  %i.ayo = phi ptr [ %i.axl, %bb.mo ], [ %.pre641.i112.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i ], [ %i.axl, %bb.mm ], !dbg !16188 ; 3 uses
  %i.ayp = phi ptr [ %i.axj, %bb.mo ], [ %.pre640.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i ], [ %i.axj, %bb.mm ], !dbg !16188 ; 3 uses
  %.sroa.52.0.ph.i113.i = phi i1 [ false, %bb.mo ], [ %i.ayl, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15start_hyperlinkCs2NzvFoTxuAy_2rg.exit.thread.i151.i ], [ false, %bb.mm ]
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayo, i64 144, !dbg !16199
  %i.ayr = load i8, ptr %i.ayq, align 8, !dbg !16199, !range !17, !noalias !16192, !noundef !15
  %i.ays = trunc nuw i8 %i.ayr to i1, !dbg !16199
  br i1 %i.ays, label %bb.my, label %bb.mv, !dbg !16199

bb.mv:                                            ; preds = %bb.mu
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayp, i64 104, !dbg !16200 ; 2 uses
  %i.ayu = load i64, ptr %i.ayt, align 8, !dbg !16200, !range !284, !noalias !16192, !noundef !15
  %.not.i111.i.i = icmp eq i64 %i.ayu, -2, !dbg !16200
  br i1 %.not.i111.i.i, label %bb.my, label %bb.mw, !dbg !16203

bb.mw:                                            ; preds = %bb.mv
  %i.ayv = call fastcc noundef ptr @_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_pathCs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.ayt), !dbg !16204 ; 2 uses
  %.not10.i.i114.i = icmp eq ptr %i.ayv, null, !dbg !16205
  br i1 %.not10.i.i114.i, label %bb.mx, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !16207

bb.mx:                                            ; preds = %bb.mw
  %i.ayw = load ptr, ptr %i.de, align 8, !dbg !16208, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 240, !dbg !16208
  %i.ayy = load ptr, ptr %i.ayx, align 8, !dbg !16208, !nonnull !15, !align !519, !noundef !15 ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayy, i64 66, !dbg !16211
  %i.aza = load i8, ptr %i.ayz, align 2, !dbg !16211, !range !17, !noundef !15
  %..i.i117.i = add nuw nsw i8 %i.aza, 1, !dbg !16213
  br label %bb.my, !dbg !16214

bb.my:                                            ; preds = %bb.mx, %bb.mv, %bb.mu
  %i.azb = phi ptr [ %i.ayy, %bb.mx ], [ %i.ayo, %bb.mv ], [ %i.ayo, %bb.mu ] ; 6 uses
  %.val145.i.i = phi ptr [ %i.ayw, %bb.mx ], [ %i.ayp, %bb.mv ], [ %i.ayp, %bb.mu ]
  %.sroa.37.0.ph.i118.i = phi i8 [ %..i.i117.i, %bb.mx ], [ 0, %bb.mv ], [ 0, %bb.mu ] ; 2 uses
  %i.azc = trunc nuw i64 %.sroa.010.0.i.i.a to i1, !dbg !16215
  br i1 %i.azc, label %bb.mz, label %bb.np, !dbg !16215

bb.mz:                                            ; preds = %bb.my
  switch i8 %.sroa.37.0.ph.i118.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
    i8 1, label %bb.na
    i8 2, label %bb.ne
  ], !dbg !16217

bb.na:                                            ; preds = %bb.mz
  %i.azd = getelementptr inbounds nuw i8, ptr %i.azb, i64 184, !dbg !16219 ; 5 uses
  %i.aze = load i64, ptr %i.azd, align 8, !dbg !16223, !noalias !16226, !noundef !15
  %i.azf = icmp eq i64 %i.aze, 0, !dbg !16229
  br i1 %i.azf, label %bb.nb, label %bb.nc, !dbg !16229, !prof !95

bb.nb:                                            ; preds = %bb.na
  store i64 -1, ptr %i.azd, align 8, !dbg !16230, !noalias !16226
  %i.azg = getelementptr inbounds nuw i8, ptr %i.azb, i64 192, !dbg !16233
  %i.azh = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.azg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i162.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i105.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i149.i unwind label %bb.nd, !dbg !16235 ; 2 uses

bb.nc:                                            ; preds = %bb.na
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !16236, !noalias !16226
  unreachable, !dbg !16236

bb.nd:                                            ; preds = %bb.nb
  %i.azi = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !16237

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i149.i: ; preds = %bb.nb
  %i.azj = load i64, ptr %i.azd, align 8, !dbg !16238, !noundef !15
  %i.azk = add i64 %i.azj, 1, !dbg !16243
  store i64 %i.azk, ptr %i.azd, align 8, !dbg !16244
  %.not7.i.i123.i.i = icmp eq ptr %i.azh, null, !dbg !16247
  br i1 %.not7.i.i123.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !16249

bb.ne:                                            ; preds = %bb.mz
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azb, i64 66, !dbg !16250
  %i.azm = load i8, ptr %i.azl, align 2, !dbg !16250, !range !17, !noalias !16251, !noundef !15
  %i.azn = trunc nuw i8 %i.azm to i1, !dbg !16250
  br i1 %i.azn, label %bb.nf, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, !dbg !16256

bb.nf:                                            ; preds = %bb.ne
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azb, i64 67, !dbg !16250
  %i.azp = load i8, ptr %i.azo, align 1, !dbg !16257, !noalias !16251, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !16258, !noalias !16251
  store i8 %i.azp, ptr %i.ac, align 1, !dbg !16258, !noalias !16251
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azb, i64 184, !dbg !16259 ; 5 uses
  %i.azr = load i64, ptr %i.azq, align 8, !dbg !16263, !noalias !16266, !noundef !15
  %i.azs = icmp eq i64 %i.azr, 0, !dbg !16269
  br i1 %i.azs, label %bb.ng, label %bb.nh, !dbg !16269, !prof !95

bb.ng:                                            ; preds = %bb.nf
  store i64 -1, ptr %i.azq, align 8, !dbg !16270, !noalias !16266
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azb, i64 192, !dbg !16273
  %i.azu = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.azt, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit166.i.i unwind label %bb.ni, !dbg !16275 ; 2 uses

bb.nh:                                            ; preds = %bb.nf
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !16276, !noalias !16266
  unreachable, !dbg !16276

bb.ni:                                            ; preds = %bb.ng
  %i.azv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !16277

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit166.i.i: ; preds = %bb.ng
  %i.azw = load i64, ptr %i.azq, align 8, !dbg !16278, !noundef !15
  %i.azx = add i64 %i.azw, 1, !dbg !16283
  store i64 %i.azx, ptr %i.azq, align 8, !dbg !16284
  %.not.i.i122.i.i = icmp eq ptr %i.azu, null, !dbg !16287
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !16289, !noalias !16251
  br i1 %.not.i.i122.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !16290

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit166.i.i, %bb.ne, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit165.i149.i, %bb.mz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !16291, !noalias !16292
  call void @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, i64 noundef %.sroa.5.0.i101.i), !dbg !16293, !noalias !16292
  %i.azy = load ptr, ptr %i.de, align 8, !dbg !16294, !noalias !16292, !nonnull !15, !align !519, !noundef !15
  %i.azz = getelementptr inbounds nuw i8, ptr %i.azy, i64 240, !dbg !16294
  %i.baa = load ptr, ptr %i.azz, align 8, !dbg !16294, !noalias !16292, !nonnull !15, !align !519, !noundef !15
  %i.bab = getelementptr inbounds nuw i8, ptr %i.baa, i64 83, !dbg !16297
  %i.bac = call { ptr, i64 } @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter8as_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !dbg !16299, !noalias !16292 ; 2 uses
  %i.bad = extractvalue { ptr, i64 } %i.bac, 0, !dbg !16299
  %i.bae = extractvalue { ptr, i64 } %i.bac, 1, !dbg !16299
  %.val157.i.i = load ptr, ptr %i.de, align 8, !dbg !16300, !nonnull !15, !align !519, !noundef !15
  %i.baf = getelementptr inbounds nuw i8, ptr %.val157.i.i, i64 240, !dbg !16301
  %i.bag = load ptr, ptr %i.baf, align 8, !dbg !16301, !noalias !16304, !nonnull !15, !align !519, !noundef !15 ; 5 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %i.bag, i64 184, !dbg !16308 ; 9 uses
  %i.bai = load i64, ptr %i.bah, align 8, !dbg !16311, !noalias !16304, !noundef !15
  %i.baj = icmp eq i64 %i.bai, 0, !dbg !16314
  br i1 %i.baj, label %bb.nj, label %bb.nk, !dbg !16314, !prof !95

bb.nj:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
  store i64 -1, ptr %i.bah, align 8, !dbg !16315, !noalias !16304
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bag, i64 192, !dbg !16318
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bag, i64 200, !dbg !16320 ; 2 uses
  %i.bam = load i64, ptr %i.bal, align 8, !dbg !16320, !range !109, !alias.scope !16323, !noalias !16326, !noundef !15
  %i.ban = trunc nuw i64 %i.bam to i1, !dbg !16320
  br i1 %i.ban, label %.sink.split.i.i.i147.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i138.i, !dbg !16320

.sink.split.i.i.i147.i:                           ; preds = %bb.nj
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bag, i64 208, !dbg !16320
  %i.bap = invoke fastcc noundef ptr @_RNvXsv_Cs6Ur84ob3I15_9termcolorINtB5_4AnsiNtB5_16IoStandardStreamENtB5_10WriteColor9set_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(15) %i.bab) #18
          to label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i148.i unwind label %bb.nn, !dbg !16320, !noalias !16328 ; 2 uses

bb.nk:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i118.i.i
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #14, !dbg !16329, !noalias !16304
  unreachable, !dbg !16329

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i148.i: ; preds = %.sink.split.i.i.i147.i
  %.not.i168.i.i = icmp eq ptr %i.bap, null, !dbg !16330
  br i1 %.not.i168.i.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i138.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i140.i, !dbg !16332

_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i138.i: ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i148.i, %bb.nj
  %i.baq = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bad, i64 noundef range(i64 0, -9223372036854775808) %i.bae)
          to label %bb.nl unwind label %bb.nn, !dbg !16333 ; 2 uses

bb.nl:                                            ; preds = %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i138.i
  %.not11.i.i139.i = icmp eq ptr %i.baq, null, !dbg !16334
  br i1 %.not11.i.i139.i, label %bb.nm, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i140.i, !dbg !16336

bb.nm:                                            ; preds = %bb.nl
  %i.bar = load i64, ptr %i.bal, align 8, !dbg !16337, !range !109, !alias.scope !16340, !noundef !15
  %i.bas = trunc nuw i64 %i.bar to i1, !dbg !16337
  br i1 %i.bas, label %.sink.split.i16.i.i143.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread244.i.i, !dbg !16337

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread244.i.i: ; preds = %bb.nm
  %storemerge.in.i246.i.i = load i64, ptr %i.bah, align 8, !dbg !16343, !noundef !15
  %storemerge.i247.i.i = add i64 %storemerge.in.i246.i.i, 1, !dbg !16348
  store i64 %storemerge.i247.i.i, ptr %i.bah, align 8, !dbg !16349
  br label %bb.no, !dbg !16352

.sink.split.i16.i.i143.i:                         ; preds = %bb.nm
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bag, i64 208, !dbg !16337
  %i.bau = invoke noundef ptr @_RNvYNtCs6Ur84ob3I15_9termcolor16IoStandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bat, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i144.i unwind label %bb.nn, !dbg !16337 ; 2 uses

bb.nn:                                            ; preds = %.sink.split.i16.i.i143.i, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i.i138.i, %.sink.split.i.i.i147.i
  %i.bav = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !16354

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i140.i: ; preds = %bb.nl, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i148.i
  %.sroa.0.0.i167.ph.i.i = phi ptr [ %i.baq, %bb.nl ], [ %i.bap, %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.i.i148.i ]
  %storemerge.in.i240.i.i = load i64, ptr %i.bah, align 8, !dbg !16343, !noundef !15
  %storemerge.i241.i.i = add i64 %storemerge.in.i240.i.i, 1, !dbg !16348
  store i64 %storemerge.i241.i.i, ptr %i.bah, align 8, !dbg !16349
  br label %.loopexit.i141.i, !dbg !16352

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i144.i: ; preds = %.sink.split.i16.i.i143.i
  %storemerge.in.i.i145.i = load i64, ptr %i.bah, align 8, !dbg !16343, !noundef !15
  %storemerge.i.i146.i = add i64 %storemerge.in.i.i145.i, 1, !dbg !16348
  store i64 %storemerge.i.i146.i, ptr %i.bah, align 8, !dbg !16349
  %.not9.i121.i.i = icmp eq ptr %i.bau, null, !dbg !16355
  br i1 %.not9.i121.i.i, label %bb.no, label %.loopexit.i141.i, !dbg !16352

.loopexit.i141.i:                                 ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i144.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i140.i
  %.sroa.0.0.i167243.i.i = phi ptr [ %.sroa.0.0.i167.ph.i.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread.i140.i ], [ %i.bau, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i144.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !16356, !noalias !16292
  br label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !16357

bb.no:                                            ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.i144.i, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE10write_specCs2NzvFoTxuAy_2rg.exit.thread244.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !16356, !noalias !16292
  %.pre642.i142.i = load ptr, ptr %i.de, align 8, !dbg !16358, !noalias !16362
  br label %bb.np, !dbg !16365

bb.np:                                            ; preds = %bb.no, %bb.my
  %i.baw = phi ptr [ %.val145.i.i, %bb.my ], [ %.pre642.i142.i, %bb.no ], !dbg !16358 ; 3 uses
  %.sroa.37.5.ph.i119.i = phi i8 [ %.sroa.37.0.ph.i118.i, %bb.my ], [ 1, %bb.no ] ; 2 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 240, !dbg !16358
  %i.bay = load ptr, ptr %i.bax, align 8, !dbg !16358, !noalias !16362, !nonnull !15, !align !519, !noundef !15 ; 8 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 150, !dbg !16366
  %i.bba = load i8, ptr %i.baz, align 2, !dbg !16366, !range !17, !noalias !16362, !noundef !15
  %i.bbb = trunc nuw i8 %i.bba to i1, !dbg !16366
  br i1 %i.bbb, label %bb.nq, label %bb.og, !dbg !16366

bb.nq:                                            ; preds = %bb.np
  switch i8 %.sroa.37.5.ph.i119.i, label %default.unreachable [
    i8 0, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i
    i8 1, label %bb.nr
    i8 2, label %bb.nv
  ], !dbg !16367

bb.nr:                                            ; preds = %bb.nq
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.bay, i64 184, !dbg !16369 ; 5 uses
  %i.bbd = load i64, ptr %i.bbc, align 8, !dbg !16373, !noalias !16376, !noundef !15
  %i.bbe = icmp eq i64 %i.bbd, 0, !dbg !16379
  br i1 %i.bbe, label %bb.ns, label %bb.nt, !dbg !16379, !prof !95

bb.ns:                                            ; preds = %bb.nr
  store i64 -1, ptr %i.bbc, align 8, !dbg !16380, !noalias !16376
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bay, i64 192, !dbg !16383
  %i.bbg = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bbf, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i162.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i.i105.i)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit169.i.i unwind label %bb.nu, !dbg !16385 ; 2 uses

bb.nt:                                            ; preds = %bb.nr
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !16386, !noalias !16376
  unreachable, !dbg !16386

bb.nu:                                            ; preds = %bb.ns
  %i.bbh = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !16387

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit169.i.i: ; preds = %bb.ns
  %i.bbi = load i64, ptr %i.bbc, align 8, !dbg !16388, !noundef !15
  %i.bbj = add i64 %i.bbi, 1, !dbg !16393
  store i64 %i.bbj, ptr %i.bbc, align 8, !dbg !16394
  %.not7.i.i131.i.i = icmp eq ptr %i.bbg, null, !dbg !16397
  br i1 %.not7.i.i131.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !16399

bb.nv:                                            ; preds = %bb.nq
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.bay, i64 66, !dbg !16400
  %i.bbl = load i8, ptr %i.bbk, align 2, !dbg !16400, !range !17, !noalias !16401, !noundef !15
  %i.bbm = trunc nuw i8 %i.bbl to i1, !dbg !16400
  br i1 %i.bbm, label %bb.nw, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i, !dbg !16404

bb.nw:                                            ; preds = %bb.nv
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bay, i64 67, !dbg !16400
  %i.bbo = load i8, ptr %i.bbn, align 1, !dbg !16405, !noalias !16401, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !16406, !noalias !16401
  store i8 %i.bbo, ptr %i.aa, align 1, !dbg !16406, !noalias !16401
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.baw) ]
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bay, i64 184, !dbg !16407 ; 5 uses
  %i.bbq = load i64, ptr %i.bbp, align 8, !dbg !16411, !noalias !16414, !noundef !15
  %i.bbr = icmp eq i64 %i.bbq, 0, !dbg !16417
  br i1 %i.bbr, label %bb.nx, label %bb.ny, !dbg !16417, !prof !95

bb.nx:                                            ; preds = %bb.nw
  store i64 -1, ptr %i.bbp, align 8, !dbg !16418, !noalias !16414
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bay, i64 192, !dbg !16421
  %i.bbt = invoke noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bbs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef 1)
          to label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit190.i unwind label %bb.nz, !dbg !16423 ; 2 uses

bb.ny:                                            ; preds = %bb.nw
  call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #14, !dbg !16424, !noalias !16414
  unreachable, !dbg !16424

bb.nz:                                            ; preds = %bb.nx
  %i.bbu = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i21, !dbg !16425

_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit190.i: ; preds = %bb.nx
  %i.bbv = load i64, ptr %i.bbp, align 8, !dbg !16426, !noundef !15
  %i.bbw = add i64 %i.bbv, 1, !dbg !16431
  store i64 %i.bbw, ptr %i.bbp, align 8, !dbg !16432
  %.not.i.i130.i.i = icmp eq ptr %i.bbt, null, !dbg !16435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !16437, !noalias !16401
  br i1 %.not.i.i130.i.i, label %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i, label %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE13write_preludeCs2NzvFoTxuAy_2rg.exit.thread.i115.i, !dbg !16438

_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i: ; preds = %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit190.i, %bb.nv, %_RNvMs6_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_12StandardImplRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE5writeCs2NzvFoTxuAy_2rg.exit169.i.i, %bb.nq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !16439, !noalias !16362
  call void @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, i64 noundef %i.axh), !dbg !16440, !noalias !16362
  %i.bbx = load ptr, ptr %i.de, align 8, !dbg !16441, !noalias !16362, !nonnull !15, !align !519, !noundef !15
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 240, !dbg !16441
  %i.bbz = load ptr, ptr %i.bby, align 8, !dbg !16441, !noalias !16362, !nonnull !15, !align !519, !noundef !15
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 98, !dbg !16444
  %i.bcb = call { ptr, i64 } @_RNvMs5_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_16DecimalFormatter8as_bytes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab), !dbg !16446, !noalias !16362 ; 2 uses
  %i.bcc = extractvalue { ptr, i64 } %i.bcb, 0, !dbg !16446
  %i.bcd = extractvalue { ptr, i64 } %i.bcb, 1, !dbg !16446
  %.val156.i.i = load ptr, ptr %i.de, align 8, !dbg !16447, !nonnull !15, !align !519, !noundef !15
  %i.bce = getelementptr inbounds nuw i8, ptr %.val156.i.i, i64 240, !dbg !16448
  %i.bcf = load ptr, ptr %i.bce, align 8, !dbg !16448, !noalias !16451, !nonnull !15, !align !519, !noundef !15 ; 5 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 184, !dbg !16455 ; 9 uses
  %i.bch = load i64, ptr %i.bcg, align 8, !dbg !16458, !noalias !16451, !noundef !15
  %i.bci = icmp eq i64 %i.bch, 0, !dbg !16461
  br i1 %i.bci, label %bb.oa, label %bb.ob, !dbg !16461, !prof !95

bb.oa:                                            ; preds = %_RNvMs7_NtCshhHc5tDBDRu_12grep_printer8standardINtB5_13PreludeWriterRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamE15write_separatorCs2NzvFoTxuAy_2rg.exit.i126.i.i
  store i64 -1, ptr %i.bcg, align 8, !dbg !16462, !noalias !16451
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bcf, i64 192, !dbg !16465
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcf, i64 200, !dbg !16467 ; 2 uses
  %i.bcl = load i64, ptr %i.bck, align 8, !dbg !16467, !range !109, !alias.scope !16470, !noalias !16473, !noundef !15
  %i.bcm = trunc nuw i64 %i.bcl to i1, !dbg !16467
  br i1 %i.bcm, label %.sink.split.i.i176.i.i, label %_RNvXs_NtCsgwyS1EwTFAS_8grep_cli3wtrNtB4_14StandardStreamNtCs6Ur84ob3I15_9termcolor10WriteColor9set_color.exit.thread.i170.i.i, !dbg !16467

end_hunk_3
