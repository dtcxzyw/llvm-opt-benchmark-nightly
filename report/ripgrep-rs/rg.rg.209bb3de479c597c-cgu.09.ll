Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.09?download=true
inline.NumInlined: 430
inline.NumDeleted: 171
begin_hunk_0_@_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1J_6string6StringEE5force0E0Cs2NzvFoTxuAy_2rg:bb.a
  unreachable, !dbg !1474

_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBY_6string6StringEE5force0Cs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !dbg !1475, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1484
  call void %i.f(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !dbg !1487, !inline_history !1494
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !1495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1496
  ret void, !dbg !1497

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !dbg !1498
  unreachable, !dbg !1498
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0E0Cs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 !dbg !1499 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !1500, !nonnull !14, !align !856, !noundef !14 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !1501, !align !856, !noundef !14 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !1506
  %.not = icmp eq ptr %i.c, null, !dbg !1508
  br i1 %.not, label %bb.d, label %bb.b, !dbg !1511, !prof !337

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !1500
  %.val = load i8, ptr %i.d, align 4, !dbg !1500, !range !655, !noundef !14
  %i.e = trunc nuw i8 %.val to i1, !dbg !1512
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0Cs2NzvFoTxuAy_2rg.exit, !dbg !1519, !prof !337

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #28, !dbg !1520
  unreachable, !dbg !1520

_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0Cs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !dbg !1521, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1527
  call void %i.f(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !dbg !1530, !inline_history !1533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !1534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1535
  ret void, !dbg !1536

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !dbg !1537
  unreachable, !dbg !1537
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0E0Cs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 !dbg !1538 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !1539, !nonnull !14, !align !856, !noundef !14 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !1540, !align !856, !noundef !14 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !1545
  %.not = icmp eq ptr %i.c, null, !dbg !1547
  br i1 %.not, label %bb.d, label %bb.b, !dbg !1550, !prof !337

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !1539
  %.val = load i8, ptr %i.d, align 4, !dbg !1539, !range !655, !noundef !14
  %i.e = trunc nuw i8 %.val to i1, !dbg !1551
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0Cs2NzvFoTxuAy_2rg.exit, !dbg !1558, !prof !337

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #28, !dbg !1559
  unreachable, !dbg !1559

_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0Cs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !dbg !1560, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1566
  call void %i.f(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !dbg !1569, !inline_history !1572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !1573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1574
  ret void, !dbg !1575

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !dbg !1576
  unreachable, !dbg !1576
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1O_6string6StringEE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2NzvFoTxuAy_2rg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1577 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !1578, !nonnull !14, !align !856, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1579), !dbg !1578
  %i.c = load ptr, ptr %i.b, align 8, !dbg !1582, !alias.scope !1579, !noalias !1588, !align !856, !noundef !14 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !1591, !alias.scope !1579, !noalias !1588
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !1592
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !1594, !prof !337

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !1595
  %.val.i.i = load i8, ptr %i.d, align 4, !dbg !1595, !range !655, !noalias !1596, !noundef !14
  %i.e = trunc nuw i8 %.val.i.i to i1, !dbg !1597
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1M_6string6StringEE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2NzvFoTxuAy_2rg.exit, !dbg !1601, !prof !337

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #28, !dbg !1602, !noalias !1596
  unreachable, !dbg !1602

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !dbg !1603, !noalias !1596
  unreachable, !dbg !1603

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB1M_6string6StringEE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !dbg !1604, !noalias !1596, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1607, !noalias !1596
  call void %i.f(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !dbg !1608, !noalias !1596, !inline_history !1610
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !1611, !noalias !1596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1612, !noalias !1596
  ret void, !dbg !1578
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2NzvFoTxuAy_2rg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1613 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !1614, !nonnull !14, !align !856, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1615), !dbg !1614
  %i.c = load ptr, ptr %i.b, align 8, !dbg !1618, !alias.scope !1615, !noalias !1624, !align !856, !noundef !14 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !1627, !alias.scope !1615, !noalias !1624
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !1628
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !1630, !prof !337

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !1631
  %.val.i.i = load i8, ptr %i.d, align 4, !dbg !1631, !range !655, !noalias !1632, !noundef !14
  %i.e = trunc nuw i8 %.val.i.i to i1, !dbg !1633
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2NzvFoTxuAy_2rg.exit, !dbg !1637, !prof !337

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #28, !dbg !1638, !noalias !1632
  unreachable, !dbg !1638

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !dbg !1639, !noalias !1632
  unreachable, !dbg !1639

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockINtNtCsexYYUdYSQU6_5alloc3vec3VecReEE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !dbg !1640, !noalias !1632, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1643, !noalias !1632
  call void %i.f(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !dbg !1644, !noalias !1632, !inline_history !1646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !1647, !noalias !1632
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1648, !noalias !1632
  ret void, !dbg !1614
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2NzvFoTxuAy_2rg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1649 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !1650, !nonnull !14, !align !856, !noundef !14 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1651), !dbg !1650
  %i.c = load ptr, ptr %i.b, align 8, !dbg !1654, !alias.scope !1651, !noalias !1660, !align !856, !noundef !14 ; 3 uses
  store ptr null, ptr %i.b, align 8, !dbg !1663, !alias.scope !1651, !noalias !1660
  %.not.i.i = icmp eq ptr %i.c, null, !dbg !1664
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !1666, !prof !337

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4, !dbg !1667
  %.val.i.i = load i8, ptr %i.d, align 4, !dbg !1667, !range !655, !noalias !1668, !noundef !14
  %i.e = trunc nuw i8 %.val.i.i to i1, !dbg !1669
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2NzvFoTxuAy_2rg.exit, !dbg !1673, !prof !337

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #28, !dbg !1674, !noalias !1668
  unreachable, !dbg !1674

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #28, !dbg !1675, !noalias !1668
  unreachable, !dbg !1675

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockNtNtCsexYYUdYSQU6_5alloc6string6StringE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !dbg !1676, !noalias !1668, !nonnull !14, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1679, !noalias !1668
  call void %i.f(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !dbg !1680, !noalias !1668, !inline_history !1682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !1683, !noalias !1668
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1684, !noalias !1668
  ret void, !dbg !1650
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsexYYUdYSQU6_5alloc5sliceSh6repeatCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1685 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = icmp eq i64 %3, 0, !dbg !1686
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !1686

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !1687
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1687
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !dbg !1687
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1687
  store i64 0, ptr %i.e, align 8, !dbg !1687
  br label %bb.d, !dbg !1690

bb.c:                                             ; preds = %bb.a
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %3), !dbg !1691 ; 2 uses
  %4 = extractvalue { i64, i1 } %i.f, 0, !dbg !1691 ; 5 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1, !dbg !1691
  br i1 %i.g, label %bb.g, label %bb.e, !dbg !1698, !prof !337

bb.d:                                             ; preds = %bb.i, %bb.b
  ret void, !dbg !1690

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1704
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !1704
  %i.h = load i64, ptr %i.a, align 8, !dbg !1704, !range !415, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1, !dbg !1712
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1713
  %i.k = load i64, ptr %i.j, align 8, !dbg !1713, !range !418, !noundef !14 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1713 ; 2 uses
  br i1 %i.i, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit, !dbg !1712, !prof !337

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.l, align 8, !dbg !1714
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #26, !dbg !1715
  unreachable, !dbg !1715

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.e
  %i.n = load ptr, ptr %i.l, align 8, !dbg !1716, !nonnull !14, !noundef !14
  %i.o = icmp ule i64 %4, %i.k, !dbg !1717
  tail call void @llvm.assume(i1 %i.o), !dbg !1719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1721
  store i64 %i.k, ptr %i.b, align 8, !dbg !1722
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1722 ; 3 uses
  store ptr %i.n, ptr %i.p, align 8, !dbg !1722
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1722 ; 5 uses
  store i64 0, ptr %i.q, align 8, !dbg !1722
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !1723
  invoke void @_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.r)
          to label %.preheader unwind label %bb.h, !dbg !1739

.preheader:                                       ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit
  %.sroa.01.08 = lshr i64 %3, 1, !dbg !1740       ; 2 uses
  %.not9 = icmp eq i64 %.sroa.01.08, 0, !dbg !1741
  %.pre11 = load i64, ptr %i.q, align 8, !dbg !1743 ; 2 uses
  br i1 %.not9, label %._crit_edge, label %.lr.ph, !dbg !1741

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28, !dbg !1746
  unreachable, !dbg !1746

bb.h:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2NzvFoTxuAy_2rg.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %bb.l unwind label %bb.k, !dbg !1749

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.t = phi i64 [ %.pre11, %.preheader ], [ %i.ab, %.lr.ph ], !dbg !1743 ; 4 uses
  %i.u = icmp sgt i64 %i.t, -1, !dbg !1750
  call void @llvm.assume(i1 %i.u), !dbg !1752
  %.not7 = icmp eq i64 %4, %i.t, !dbg !1753
  br i1 %.not7, label %bb.i, label %bb.j, !dbg !1753

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.v = phi i64 [ %i.ab, %.lr.ph ], [ %.pre11, %.preheader ], !dbg !1755 ; 3 uses
  %.sroa.01.010 = phi i64 [ %.sroa.01.0, %.lr.ph ], [ %.sroa.01.08, %.preheader ]
  %i.w = load ptr, ptr %i.p, align 8, !dbg !1757, !nonnull !14, !noundef !14 ; 2 uses
  %i.x = icmp sgt i64 %i.v, -1, !dbg !1766
  call void @llvm.assume(i1 %i.x), !dbg !1768
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v, !dbg !1769
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.w, i64 %i.v, i1 false), !dbg !1771
  %i.z = load i64, ptr %i.q, align 8, !dbg !1774, !noundef !14 ; 2 uses
  %i.aa = icmp sgt i64 %i.z, -1, !dbg !1776
  call void @llvm.assume(i1 %i.aa), !dbg !1778
  %i.ab = shl nuw i64 %i.z, 1, !dbg !1779         ; 3 uses
  store i64 %i.ab, ptr %i.q, align 8, !dbg !1781
  %.sroa.01.0 = lshr i64 %.sroa.01.010, 1, !dbg !1740 ; 2 uses
  %.not = icmp eq i64 %.sroa.01.0, 0, !dbg !1741
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !1741

bb.i:                                             ; preds = %bb.j, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !1784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1749
  br label %bb.d, !dbg !1690

bb.j:                                             ; preds = %._crit_edge
  %i.ac = sub i64 %4, %i.t, !dbg !1785
  %i.ad = load ptr, ptr %i.p, align 8, !dbg !1786, !nonnull !14, !noundef !14 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.t, !dbg !1794
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.ad, i64 %i.ac, i1 false), !dbg !1796
  store i64 %4, ptr %i.q, align 8, !dbg !1798
  br label %bb.i, !dbg !1800

bb.k:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !1801
  unreachable, !dbg !1801

bb.l:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.s, !dbg !1801
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapINtNtCsexYYUdYSQU6_5alloc3vec3VechEjNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1802 {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1803 ; 2 uses
  %i.b = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %.loopexit.split-lp, !dbg !1804 ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEjEE7reserveNCINvNtB8_3map11make_hasherBQ_jNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp, !dbg !1807

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !dbg !1813, !alias.scope !1814, !noalias !1817, !nonnull !14, !noundef !14 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1813 ; 2 uses
  %.val5.i = load i64, ptr %i.c, align 8, !dbg !1813, !alias.scope !1814, !noalias !1817, !noundef !14 ; 3 uses
  %i.d = lshr i64 %i.b, 57, !dbg !1820
  %i.e = trunc nuw nsw i64 %i.d to i8, !dbg !1826 ; 3 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c, !dbg !1828

bb.c:                                             ; preds = %bb.f, %.noexc
  %.pn.i.i = phi i64 [ %i.b, %.noexc ], [ %i.ag, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.120.i.i, %bb.f ], !dbg !1831
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.122.i.i, %bb.f ], !dbg !1831
  %i.h = phi i64 [ 0, %.noexc ], [ %i.af, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i, !dbg !1832 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i, !dbg !1833
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.i, align 1, !dbg !1838, !noalias !1843 ; 3 uses
  %i.j = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.g, !dbg !1846
  %i.k = bitcast <16 x i1> %i.j to i16, !dbg !1852 ; 2 uses
  %.not28.i.i = icmp eq i16 %i.k, 0, !dbg !1855
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !1863

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.v, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true), !dbg !1864
  %i.m = zext nneg i16 %i.l to i64, !dbg !1869
  %i.n = add i64 %.sroa.0.017.i.i, %i.m, !dbg !1870
  %i.o = and i64 %i.n, %.val5.i, !dbg !1870
  %i.p = load ptr, ptr %0, align 8, !dbg !1872, !alias.scope !1814, !noalias !1881, !nonnull !14, !noundef !14
  %i.q = sub nsw i64 0, %i.o, !dbg !1884          ; 2 uses
  %i.r = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.q, !dbg !1889
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -32, !dbg !1890
  %i.t = invoke noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownINtNtCsexYYUdYSQU6_5alloc3vec3VechEINtB2_10EquivalentBq_E10equivalentCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc7 unwind label %.loopexit, !dbg !1896

.noexc7:                                          ; preds = %.lr.ph.i.i
  br i1 %i.t, label %bb.i, label %bb.d, !dbg !1899, !prof !1409

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1, !dbg !1902
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !dbg !1909, !prof !337

bb.d:                                             ; preds = %.noexc7
  %i.u = add i16 %.sroa.01.029.i.i, -1, !dbg !1911
  %i.v = and i16 %i.u, %.sroa.01.029.i.i, !dbg !1914 ; 2 uses
  %.not.i.i = icmp eq i16 %i.v, 0, !dbg !1855
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !dbg !1863

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.w = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer, !dbg !1918
  %i.x = bitcast <16 x i1> %i.w to i16, !dbg !1918 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.x, 0, !dbg !1925
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !dbg !1929, !prof !337

.thread24.i.i:                                    ; preds = %bb.e
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.x, i1 true), !dbg !1930
  %i.z = zext nneg i16 %i.y to i64, !dbg !1935
  %i.aa = add i64 %.sroa.0.017.i.i, %i.z, !dbg !1936
  %i.ab = and i64 %i.aa, %.val5.i, !dbg !1936
  br label %.thread.i.i, !dbg !1938

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ab, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1), !dbg !1940
  %i.ad = bitcast <16 x i1> %i.ac to i16, !dbg !1946
  %i.ae = icmp eq i16 %i.ad, 0, !dbg !1949
  br i1 %i.ae, label %bb.f, label %bb.g, !dbg !1949, !prof !337

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.af = add i64 %i.h, 16, !dbg !1951            ; 2 uses
  %i.ag = add i64 %i.af, %.sroa.0.017.i.i, !dbg !1954
  br label %bb.c, !dbg !1828

bb.g:                                             ; preds = %.thread.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i, !dbg !1955
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !1964, !noundef !14
  %i.aj = icmp sgt i8 %i.ai, -1, !dbg !1965
  br i1 %i.aj, label %bb.h, label %bb.m, !dbg !1968, !prof !337

bb.h:                                             ; preds = %bb.g
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !dbg !1971
  %i.ak = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer, !dbg !1974
  %i.al = bitcast <16 x i1> %i.ak to i16, !dbg !1974 ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.al, 0, !dbg !1979
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.al, i1 true), !dbg !1983
  %i.an = zext nneg i16 %i.am to i64, !dbg !1983
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs2NzvFoTxuAy_2rg5flags3doc7version14generate_pcre2:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4298 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4298
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4298 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4298
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 49)
          to label %bb.c unwind label %bb.b, !dbg !4300

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #24
          to label %bb.e unwind label %bb.d, !dbg !4308

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4309, !alias.scope !4312, !noundef !14 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1, !dbg !4315
  call void @llvm.assume(i1 %i.d), !dbg !4316
  %i.e = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4317, !alias.scope !4312, !nonnull !14, !noundef !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c, !dbg !4322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.f, ptr noundef nonnull align 1 dereferenceable(49) @170, i64 49, i1 false), !dbg !4324
  %i.g = add nuw i64 %i.c, 49, !dbg !4326
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4326, !alias.scope !4312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !4327
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4328
  store i8 0, ptr %i.h, align 8, !dbg !4328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4308
  ret void, !dbg !4329

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !4330
  unreachable, !dbg !4330

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !4330
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs2NzvFoTxuAy_2rg5flags3doc7version14generate_short(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4331 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !4332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4333, !noalias !4335
  store ptr @172, ptr %i.c, align 8, !dbg !4338, !noalias !4335, !captures !709
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4338
  store i64 6, ptr %i.f, align 8, !dbg !4338, !noalias !4335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4340, !noalias !4335
  store ptr @173, ptr %i.b, align 8, !dbg !4340, !noalias !4335, !captures !709
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4340
  store i64 10, ptr %i.g, align 8, !dbg !4340, !noalias !4335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4341, !noalias !4335
  store ptr %i.c, ptr %i.a, align 8, !dbg !4341, !noalias !4335
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4341
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !4341, !noalias !4335
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4341
  store ptr %i.b, ptr %i.h, align 8, !dbg !4341, !noalias !4335
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !4341
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !4341, !noalias !4335
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @174, ptr noundef nonnull %i.a), !dbg !4342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4346, !noalias !4335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4347, !noalias !4335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4348, !noalias !4335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !4349
  store ptr %i.e, ptr %i.d, align 8, !dbg !4349
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4349
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !4349
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @171, ptr noundef nonnull %i.d)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2NzvFoTxuAy_2rg.exit unwind label %bb.b, !dbg !4353

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #24
          to label %common.resume unwind label %bb.e, !dbg !4359

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !4360
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit unwind label %bb.c, !dbg !4361

bb.c:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2NzvFoTxuAy_2rg.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.d, !dbg !4364

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !4361
  unreachable, !dbg !4361

common.resume:                                    ; preds = %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !4366

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg.exit: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs2NzvFoTxuAy_2rg.exit
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e), !dbg !4367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !4359
  ret void, !dbg !4369

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !4370
  unreachable, !dbg !4370
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCs2NzvFoTxuAy_2rg5flags3doc7version15generate_digits(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2812 {
.split:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4371
  store ptr @172, ptr %i.c, align 8, !dbg !4372, !captures !709
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4372
  store i64 6, ptr %i.d, align 8, !dbg !4372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4374
  store ptr @173, ptr %i.b, align 8, !dbg !4374, !captures !709
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4374
  store i64 10, ptr %i.e, align 8, !dbg !4374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4375
  store ptr %i.c, ptr %i.a, align 8, !dbg !4375
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4375
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !4375
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4375
  store ptr %i.b, ptr %i.f, align 8, !dbg !4375
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !4375
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs2NzvFoTxuAy_2rg, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !4375
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @174, ptr noundef nonnull %i.a), !dbg !4376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4382
  ret void, !dbg !4383
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvNtNtNtCs2NzvFoTxuAy_2rg5flags4defs7convert3u64(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4384 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4388, !noalias !4397
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1), !dbg !4401, !noalias !4408
  %i.b = load i64, ptr %i.a, align 8, !dbg !4409, !range !415, !noalias !4397, !noundef !14
  %i.c = trunc nuw i64 %i.b to i1, !dbg !4412
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !4412, !prof !337

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4413, !noalias !4397
  %i.d = tail call noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 24), !dbg !4414, !noalias !4408
  br label %bb.j, !dbg !4416

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4417
  %i.f = load ptr, ptr %i.e, align 8, !dbg !4417, !noalias !4397, !nonnull !14, !noundef !14 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4417
  %i.h = load i64, ptr %i.g, align 8, !dbg !4417, !noalias !4397, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4413, !noalias !4397
  switch i64 %i.h, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ], !dbg !4418

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.f, align 1, !dbg !4430, !alias.scope !4432, !noalias !4435, !noundef !14 ; 2 uses
  switch i8 %i.i, label %bb.e [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ], !dbg !4430

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.f, align 1, !dbg !4430, !alias.scope !4432, !noalias !4435
  br label %bb.e, !dbg !4430

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.j = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.i, %bb.d ], !dbg !4430
  %cond.i = icmp eq i8 %i.j, 43, !dbg !4430       ; 2 uses
  %i.k = sext i1 %cond.i to i64, !dbg !4430
  %.sroa.15.0.i = add nsw i64 %i.h, %i.k, !dbg !4430 ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !4430
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.idx.i, !dbg !4430 ; 2 uses
  %i.l = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.l, label %.preheader.i, label %.preheader56.i.preheader, !dbg !4437

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !4442
  br i1 %.not5366.i, label %.loopexit15, label %.lr.ph.i, !dbg !4442

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.n, 0, !dbg !4444
  br i1 %.not52.i, label %.loopexit15, label %.preheader56.i.preheader, !dbg !4444

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i45 = phi ptr [ %i.m, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i44 = phi i64 [ %i.n, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i43 = phi i64 [ %i.v, %.preheader56.i ], [ 0, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i45, i64 1, !dbg !4446
  %i.n = add nsw i64 %.sroa.15.1.i44, -1, !dbg !4446 ; 2 uses
  %2 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i43, i64 10), !dbg !4447 ; 2 uses
  %3 = extractvalue { i64, i1 } %2, 0, !dbg !4447 ; 2 uses
  %4 = extractvalue { i64, i1 } %2, 1, !dbg !4447
  %i.o = load i8, ptr %.sroa.0.1.i45, align 1, !dbg !4453, !alias.scope !4432, !noalias !4435, !noundef !14 ; 2 uses
  br i1 %4, label %bb.g, label %bb.f, !dbg !4455, !prof !337

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.p = zext i8 %i.o to i32, !dbg !4459
  %i.q = add nsw i32 %i.p, -48, !dbg !4460        ; 2 uses
  %i.r = icmp ult i32 %i.q, 10, !dbg !4469
  br i1 %i.r, label %bb.h, label %.loopexit, !dbg !4471

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.s = add i8 %i.o, -48, !dbg !4472
  %i.t = icmp ult i8 %i.s, 10, !dbg !4472
  %spec.select = select i1 %i.t, i8 2, i8 1, !dbg !4471
  br label %.loopexit, !dbg !4471

bb.h:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %i.q to i64, !dbg !4474
  %i.v = add i64 %3, %i.u, !dbg !4475             ; 3 uses
  %i.w = icmp ult i64 %i.v, %3, !dbg !4475
  br i1 %i.w, label %.loopexit, label %.preheader56.i, !dbg !4479, !prof !337

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.0.269.i = phi ptr [ %i.ad, %bb.i ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.ac, %bb.i ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.af, %bb.i ], [ 0, %.preheader.i ]
  %i.x = load i8, ptr %.sroa.0.269.i, align 1, !dbg !4481, !alias.scope !4432, !noalias !4435, !noundef !14
  %i.y = zext i8 %i.x to i32, !dbg !4482
  %i.z = add nsw i32 %i.y, -48, !dbg !4483        ; 2 uses
  %i.aa = icmp ult i32 %i.z, 10, !dbg !4486
  br i1 %i.aa, label %bb.i, label %.loopexit, !dbg !4487

bb.i:                                             ; preds = %.lr.ph.i
  %i.ab = mul i64 %.sroa.042.267.i, 10, !dbg !4488
  %i.ac = add nsw i64 %.sroa.15.268.i, -1, !dbg !4489 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1, !dbg !4489
  %i.ae = zext nneg i32 %i.z to i64, !dbg !4490
  %i.af = add i64 %i.ab, %i.ae, !dbg !4492        ; 2 uses
  %.not53.i = icmp eq i64 %i.ac, 0, !dbg !4442
  br i1 %.not53.i, label %.loopexit15, label %.lr.ph.i, !dbg !4442

.loopexit:                                        ; preds = %bb.f, %bb.h, %.lr.ph.i, %bb.g, %bb.c, %bb.d, %bb.d
  %.sroa.5.0.ph = phi i8 [ 1, %bb.d ], [ %spec.select, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ 1, %.lr.ph.i ], [ 1, %bb.f ], [ 2, %bb.h ]
  %i.ag = tail call noundef nonnull ptr @_RINvXNtNtCseNfSUspcXaQ_6anyhow7context3extNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtB3_8StdError11ext_contextReECs2NzvFoTxuAy_2rg(i8 noundef %.sroa.5.0.ph, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 27), !dbg !4493, !noalias !4497
  br label %_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextyB1b_E7contextReECs2NzvFoTxuAy_2rg.exit, !dbg !4500

.loopexit15:                                      ; preds = %.preheader56.i, %bb.i, %.preheader.i
  %.sroa.124.0 = phi i64 [ %i.af, %bb.i ], [ 0, %.preheader.i ], [ %i.v, %.preheader56.i ], !dbg !4501
  %i.ah = inttoptr i64 %.sroa.124.0 to ptr, !dbg !4502
  br label %_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextyB1b_E7contextReECs2NzvFoTxuAy_2rg.exit, !dbg !4503

_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextyB1b_E7contextReECs2NzvFoTxuAy_2rg.exit: ; preds = %.loopexit, %.loopexit15
  %.sroa.3.0.i = phi ptr [ %i.ag, %.loopexit ], [ %i.ah, %.loopexit15 ], !dbg !4504
  %.sroa.0.0.i3 = phi i64 [ 1, %.loopexit ], [ 0, %.loopexit15 ], !dbg !4504
  %i.ai = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i3, 0, !dbg !4502
  br label %bb.j, !dbg !4416

bb.j:                                             ; preds = %_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextyB1b_E7contextReECs2NzvFoTxuAy_2rg.exit, %bb.b
  %.pn = phi { i64, ptr } [ { i64 1, ptr poison }, %bb.b ], [ %i.ai, %_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextyB1b_E7contextReECs2NzvFoTxuAy_2rg.exit ]
  %.pn14 = phi ptr [ %i.d, %bb.b ], [ %.sroa.3.0.i, %_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultyNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextyB1b_E7contextReECs2NzvFoTxuAy_2rg.exit ]
  %.merged = insertvalue { i64, ptr } %.pn, ptr %.pn14, 1, !dbg !4505
  ret { i64, ptr } %.merged, !dbg !4416
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvNtNtNtCs2NzvFoTxuAy_2rg5flags4defs7convert5usize(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4506 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4507, !noalias !4510
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1), !dbg !4514, !noalias !4516
  %i.b = load i64, ptr %i.a, align 8, !dbg !4517, !range !415, !noalias !4510, !noundef !14
  %i.c = trunc nuw i64 %i.b to i1, !dbg !4519
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !4519, !prof !337

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4520, !noalias !4510
  %i.d = tail call noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 24), !dbg !4521, !noalias !4516
  br label %bb.j, !dbg !4523

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4524
  %i.f = load ptr, ptr %i.e, align 8, !dbg !4524, !noalias !4510, !nonnull !14, !noundef !14 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !4524
  %i.h = load i64, ptr %i.g, align 8, !dbg !4524, !noalias !4510, !noundef !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4520, !noalias !4510
  switch i64 %i.h, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ], !dbg !4525

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %i.f, align 1, !dbg !4536, !alias.scope !4538, !noalias !4541, !noundef !14 ; 2 uses
  switch i8 %i.i, label %bb.e [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ], !dbg !4536

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.f, align 1, !dbg !4536, !alias.scope !4538, !noalias !4541
  br label %bb.e, !dbg !4536

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.j = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.i, %bb.d ], !dbg !4536
  %cond.i = icmp eq i8 %i.j, 43, !dbg !4536       ; 2 uses
  %i.k = sext i1 %cond.i to i64, !dbg !4536
  %.sroa.15.0.i = add nsw i64 %i.h, %i.k, !dbg !4536 ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64, !dbg !4536
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.idx.i, !dbg !4536 ; 2 uses
  %i.l = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.l, label %.preheader.i, label %.preheader56.i.preheader, !dbg !4543

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0, !dbg !4548
  br i1 %.not5366.i, label %.loopexit15, label %.lr.ph.i, !dbg !4548

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.n, 0, !dbg !4550
  br i1 %.not52.i, label %.loopexit15, label %.preheader56.i.preheader, !dbg !4550

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i45 = phi ptr [ %i.m, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i44 = phi i64 [ %i.n, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i43 = phi i64 [ %i.v, %.preheader56.i ], [ 0, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i45, i64 1, !dbg !4552
  %i.n = add nsw i64 %.sroa.15.1.i44, -1, !dbg !4552 ; 2 uses
  %2 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i43, i64 10), !dbg !4553 ; 2 uses
  %3 = extractvalue { i64, i1 } %2, 0, !dbg !4553 ; 2 uses
  %4 = extractvalue { i64, i1 } %2, 1, !dbg !4553
  %i.o = load i8, ptr %.sroa.0.1.i45, align 1, !dbg !4558, !alias.scope !4538, !noalias !4541, !noundef !14 ; 2 uses
  br i1 %4, label %bb.g, label %bb.f, !dbg !4560, !prof !337

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.p = zext i8 %i.o to i32, !dbg !4564
  %i.q = add nsw i32 %i.p, -48, !dbg !4565        ; 2 uses
  %i.r = icmp ult i32 %i.q, 10, !dbg !4568
  br i1 %i.r, label %bb.h, label %.loopexit, !dbg !4569

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.s = add i8 %i.o, -48, !dbg !4570
  %i.t = icmp ult i8 %i.s, 10, !dbg !4570
  %spec.select = select i1 %i.t, i8 2, i8 1, !dbg !4569
  br label %.loopexit, !dbg !4569

bb.h:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %i.q to i64, !dbg !4572
  %i.v = add i64 %3, %i.u, !dbg !4573             ; 3 uses
  %i.w = icmp ult i64 %i.v, %3, !dbg !4573
  br i1 %i.w, label %.loopexit, label %.preheader56.i, !dbg !4577, !prof !337

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.0.269.i = phi ptr [ %i.ad, %bb.i ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.ac, %bb.i ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.af, %bb.i ], [ 0, %.preheader.i ]
  %i.x = load i8, ptr %.sroa.0.269.i, align 1, !dbg !4579, !alias.scope !4538, !noalias !4541, !noundef !14
  %i.y = zext i8 %i.x to i32, !dbg !4580
  %i.z = add nsw i32 %i.y, -48, !dbg !4581        ; 2 uses
  %i.aa = icmp ult i32 %i.z, 10, !dbg !4584
  br i1 %i.aa, label %bb.i, label %.loopexit, !dbg !4585

bb.i:                                             ; preds = %.lr.ph.i
  %i.ab = mul i64 %.sroa.042.267.i, 10, !dbg !4586
  %i.ac = add nsw i64 %.sroa.15.268.i, -1, !dbg !4587 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1, !dbg !4587
  %i.ae = zext nneg i32 %i.z to i64, !dbg !4588
  %i.af = add i64 %i.ab, %i.ae, !dbg !4590        ; 2 uses
  %.not53.i = icmp eq i64 %i.ac, 0, !dbg !4548
  br i1 %.not53.i, label %.loopexit15, label %.lr.ph.i, !dbg !4548

.loopexit:                                        ; preds = %bb.f, %bb.h, %.lr.ph.i, %bb.g, %bb.c, %bb.d, %bb.d
  %.sroa.5.0.ph = phi i8 [ 1, %bb.d ], [ %spec.select, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ 1, %.lr.ph.i ], [ 1, %bb.f ], [ 2, %bb.h ]
  %i.ag = tail call noundef nonnull ptr @_RINvXNtNtCseNfSUspcXaQ_6anyhow7context3extNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtB3_8StdError11ext_contextReECs2NzvFoTxuAy_2rg(i8 noundef %.sroa.5.0.ph, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 27), !dbg !4591, !noalias !4595
  br label %_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextjB1b_E7contextReECs2NzvFoTxuAy_2rg.exit, !dbg !4598

.loopexit15:                                      ; preds = %.preheader56.i, %bb.i, %.preheader.i
  %.sroa.124.0 = phi i64 [ %i.af, %bb.i ], [ 0, %.preheader.i ], [ %i.v, %.preheader56.i ], !dbg !4599
  %i.ah = inttoptr i64 %.sroa.124.0 to ptr, !dbg !4600
  br label %_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextjB1b_E7contextReECs2NzvFoTxuAy_2rg.exit, !dbg !4601

_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextjB1b_E7contextReECs2NzvFoTxuAy_2rg.exit: ; preds = %.loopexit, %.loopexit15
  %.sroa.3.0.i = phi ptr [ %i.ag, %.loopexit ], [ %i.ah, %.loopexit15 ], !dbg !4602
  %.sroa.0.0.i3 = phi i64 [ 1, %.loopexit ], [ 0, %.loopexit15 ], !dbg !4602
  %i.ai = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i3, 0, !dbg !4600
  br label %bb.j, !dbg !4523

bb.j:                                             ; preds = %_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextjB1b_E7contextReECs2NzvFoTxuAy_2rg.exit, %bb.b
  %.pn = phi { i64, ptr } [ { i64 1, ptr poison }, %bb.b ], [ %i.ai, %_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextjB1b_E7contextReECs2NzvFoTxuAy_2rg.exit ]
  %.pn14 = phi ptr [ %i.d, %bb.b ], [ %.sroa.3.0.i, %_RINvXNtCseNfSUspcXaQ_6anyhow7contextINtNtCskKLDkoKarTP_4core6result6ResultjNtNtNtBD_3num5error13ParseIntErrorEINtB5_7ContextjB1b_E7contextReECs2NzvFoTxuAy_2rg.exit ]
  %.merged = insertvalue { i64, ptr } %.pn, ptr %.pn14, 1, !dbg !4603
  ret { i64, ptr } %.merged, !dbg !4523
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs2NzvFoTxuAy_2rg5flags4defs7convert6string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4604 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !4605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !4605
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4606), !dbg !4609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4616), !dbg !4609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4618, !noalias !4621
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4622
  %i.e = load ptr, ptr %i.d, align 8, !dbg !4622, !alias.scope !4616, !noalias !4606, !nonnull !14, !noundef !14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4635
  %i.g = load i64, ptr %i.f, align 8, !dbg !4635, !alias.scope !4616, !noalias !4606, !noundef !14 ; 4 uses
  %i.h = ptrtoint ptr %i.e to i64, !dbg !4618     ; 3 uses
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g)
          to label %bb.c unwind label %bb.b, !dbg !4618, !noalias !4621

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %bb.e unwind label %bb.d, !dbg !4636, !noalias !4606

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.a, align 8, !dbg !4618, !range !415, !noalias !4621, !noundef !14
  %i.k = trunc nuw i64 %i.j to i1, !dbg !4637
  br i1 %i.k, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit.thread, !dbg !4637

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit.thread: ; preds = %bb.c
  %.sroa.7.sroa.0.0.copyload14 = load i64, ptr %i.b, align 8, !dbg !4638, !alias.scope !4621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4639, !noalias !4621
  br label %bb.f, !dbg !4640

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !4643, !noalias !4606
  unreachable, !dbg !4643

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i, !dbg !4643

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4644
  %.sroa.6.24.copyload = load i64, ptr %i.m, align 8, !dbg !4644, !noalias !4621
  %.sroa.032.0.copyload = load i64, ptr %i.b, align 8, !dbg !4645, !noalias !4606 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4639, !noalias !4621
  %.not = icmp eq i64 %.sroa.032.0.copyload, -1, !dbg !4647
  br i1 %.not, label %bb.f, label %bb.h, !dbg !4640

bb.f:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit.thread, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit
  %.sroa.7.sroa.7.sroa.7.042 = phi i64 [ %i.g, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit.thread ], [ %.sroa.6.24.copyload, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit ]
  %.sroa.7.sroa.0.041 = phi i64 [ %.sroa.7.sroa.0.0.copyload14, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit.thread ], [ %i.h, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit ]
  %.sroa.7.sroa.7.sroa.0.040 = phi i64 [ %i.h, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit.thread ], [ %i.g, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4648
  store i64 %.sroa.7.sroa.0.041, ptr %i.n, align 8, !dbg !4648
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4648
  store i64 %.sroa.7.sroa.7.sroa.0.040, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4648
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4648
  store i64 %.sroa.7.sroa.7.sroa.7.042, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4652
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !4653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4654
  br label %bb.g, !dbg !4655

bb.g:                                             ; preds = %bb.h, %bb.f
  ret void, !dbg !4656

bb.h:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String9from_utf8.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4657
  store i64 %.sroa.032.0.copyload, ptr %i.p, align 8, !dbg !4657
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4657
  store i64 %i.h, ptr %.sroa.430.0..sroa_idx, align 8, !dbg !4657
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !4657
  store i64 %i.g, ptr %.sroa.531.0..sroa_idx, align 8, !dbg !4657
  store i64 1, ptr %i.c, align 8, !dbg !4659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4652
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c), !dbg !4654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4654
  %i.q = call noundef nonnull ptr @_RINvMNtCseNfSUspcXaQ_6anyhow5errorNtB5_5Error3msgReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 24), !dbg !4660
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4662
  store ptr %i.q, ptr %i.r, align 8, !dbg !4662
  store i64 -1, ptr %0, align 8, !dbg !4662
  br label %bb.g, !dbg !4655
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownShINtB2_10EquivalentINtNtCsexYYUdYSQU6_5alloc3vec3VechEE10equivalentCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #6 !dbg !4663 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !4664
  %.val1 = load i64, ptr %i.a, align 8, !dbg !4664, !noundef !14
  %i.b = icmp eq i64 %1, %.val1, !dbg !4665
  br i1 %i.b, label %bb.b, label %_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg.exit, !dbg !4665

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !4664
  %.val = load ptr, ptr %i.c, align 8, !dbg !4664, !nonnull !14, !noundef !14
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 range(i64 0, -9223372036854775808) %1), !dbg !4671, !alias.scope !4673
  %i.d = icmp eq i32 %bcmp.i.i, 0, !dbg !4671
  br label %_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg.exit, !dbg !4677

_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ], !dbg !4678
  ret i1 %.sroa.0.0.i, !dbg !4679
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentINtNtCsexYYUdYSQU6_5alloc4sync3ArceEE10equivalentCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #6 !dbg !4680 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !4681
  %.val1 = load i64, ptr %i.a, align 8, !dbg !4681, !noundef !14
  %i.b = icmp eq i64 %1, %.val1, !dbg !4682
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, !dbg !4682

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !dbg !4681, !nonnull !14, !noundef !14
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !4693
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %i.c, i64 %1), !dbg !4702, !alias.scope !4706
  %i.d = icmp eq i32 %bcmp.i, 0, !dbg !4702
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, !dbg !4710

_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ], !dbg !4711
  ret i1 %.sroa.0.0.i, !dbg !4712
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBL_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs8XVSHBVmna6_7globset3fnv6HasherEENtNtB2n_5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4713 {
bb.a:
  tail call void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_TjNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5RegexEEEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !dbg !4715
  ret void, !dbg !4716
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsjqcU1oJFKXj_9hashbrown3mapINtB2_7HashMapINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBL_jEINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtCs8XVSHBVmna6_7globset3fnv6HasherEENtNtB1u_5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4717 {
bb.a:
  tail call void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTINtNtCsexYYUdYSQU6_5alloc3vec3VechEIBQ_jEEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1), !dbg !4718
  ret void, !dbg !4719
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i1, i8 } @_RNvXNtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2_12AfterContextNtB4_4Flag10name_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !4720 {
bb.a:
  ret { i1, i8 } { i1 true, i8 65 }, !dbg !4722
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXNtNtCs2NzvFoTxuAy_2rg5flags4defsNtB2_12AfterContextNtB4_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #7 !dbg !4723 {
bb.a:
  ret i8 3, !dbg !4724
}

end_hunk_1
