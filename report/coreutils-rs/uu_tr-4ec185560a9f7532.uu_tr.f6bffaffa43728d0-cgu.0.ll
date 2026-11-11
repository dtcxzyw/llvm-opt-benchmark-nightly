Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tr-4ec185560a9f7532.uu_tr.f6bffaffa43728d0-cgu.0?download=true
inline.NumInlined: 1207
inline.NumDeleted: 660
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence8from_str:bb.a
_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i: ; preds = %bb.cu, %.split.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1541
  %.val.i.i.i.i93.i = load i64, ptr %i.ax, align 8, !range !17, !noalias !1541, !noundef !11 ; 2 uses
  %i.qo = icmp sgt i64 %.val.i.i.i.i93.i, 0
  br i1 %i.qo, label %bb.cv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECslbrwWrVtb7E_5uu_tr.exit50.i.i.i.i.i

bb.cv:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i
  %.val43.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !noalias !1541, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val43.i.i.i.i.i, i64 noundef %.val.i.i.i.i93.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1544
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECslbrwWrVtb7E_5uu_tr.exit50.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECslbrwWrVtb7E_5uu_tr.exit50.i.i.i.i.i: ; preds = %bb.cv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !1541
  %.sroa.529.8.copyload.i.i.i.i.i = load i8, ptr %i.ay, align 8, !noalias !1545
  %.sroa.730.8.copyload.i.i.i.i.i = load i8, ptr %.sroa.730.8..sroa_idx.i.i.i.i.i, align 1, !noalias !1545
  %.sroa.9.8.copyload.i.i.i.i.i = load i64, ptr %.sroa.9.8..sroa_idx.i.i.i.i.i, align 8, !noalias !1545
  %i.qp = zext i8 %.sroa.730.8.copyload.i.i.i.i.i to i64
  %i.qq = zext i8 %.sroa.529.8.copyload.i.i.i.i.i to i64
  br label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i

.thread.i78.i:                                    ; preds = %.loopexit.i.i.i92.i, %bb.cq, %.loopexit361.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1509
  br label %.thread235.thread.i

bb.cw:                                            ; preds = %.loopexit360.i.i.i.i
  %.sroa.7257.0.copyload.i.i.i.i = load i8, ptr %.sroa.7257.0..sroa_idx.i.i.i.i, align 1, !noalias !1527 ; 2 uses
  %.sroa.8258.0.copyload.i.i.i.i = load i48, ptr %.sroa.8258.0..sroa_idx.i.i.i.i, align 2, !noalias !1527 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !1527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1509
  switch i64 %i.pr, label %default.unreachable [
    i64 0, label %.thread.loopexit.i
    i64 1, label %.thread235.thread.i
    i64 2, label %bb.cx
  ]

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECslbrwWrVtb7E_5uu_tr.exit50.i.i.i.i.i, %bb.ct, %bb.cs
  %.sroa.6.sroa.6.0.i.i.i.i.i = phi i64 [ 0, %bb.cs ], [ %i.qp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECslbrwWrVtb7E_5uu_tr.exit50.i.i.i.i.i ], [ %.sroa.690.17.extract.shift.i.i.i.i, %bb.ct ]
  %.sroa.6.sroa.5.0.i.i.i.i.i = phi i64 [ 0, %bb.cs ], [ %i.qq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECslbrwWrVtb7E_5uu_tr.exit50.i.i.i.i.i ], [ 0, %bb.ct ]
  %.sroa.7.0.i.i.i.i.i = phi i64 [ undef, %bb.cs ], [ %.sroa.9.8.copyload.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECslbrwWrVtb7E_5uu_tr.exit50.i.i.i.i.i ], [ undef, %bb.ct ] ; 2 uses
  %.sroa.06.0.i.i.i.i.i = phi i32 [ 2, %bb.cs ], [ 12, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECslbrwWrVtb7E_5uu_tr.exit50.i.i.i.i.i ], [ -1, %bb.ct ]
  %.sroa.18.sroa.11.sroa.0.0.copyload43.i.i = load i48, ptr %i.cm, align 2, !noalias !1546
  %.sroa.25.34.copyload.i.i = load i64, ptr %.sroa.25.34..sroa_idx.i.i, align 8, !noalias !1546
  %.sroa.26.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.7.0.i.i.i.i.i to i8
  %.sroa.26.sroa.5.0.extract.shift.i.i = lshr i64 %.sroa.7.0.i.i.i.i.i, 8
  %.sroa.26.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.26.sroa.5.0.extract.shift.i.i to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !1509
  %.sroa.18.sroa.11.0.insert.ext.i.i = zext i48 %.sroa.18.sroa.11.sroa.0.0.copyload43.i.i to i64
  %.sroa.18.sroa.11.0.insert.shift.i.i = shl nuw i64 %.sroa.18.sroa.11.0.insert.ext.i.i, 16
  %.sroa.18.sroa.8.0.insert.shift.i94.i = shl nuw nsw i64 %.sroa.6.sroa.6.0.i.i.i.i.i, 8
  %.sroa.18.sroa.8.0.insert.insert.i95.i = or disjoint i64 %.sroa.6.sroa.5.0.i.i.i.i.i, %.sroa.18.sroa.8.0.insert.shift.i94.i
  %.sroa.18.sroa.0.0.insert.insert.i96.i = or i64 %.sroa.18.sroa.11.0.insert.shift.i.i, %.sroa.18.sroa.8.0.insert.insert.i95.i
  br label %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i

bb.cx:                                            ; preds = %bb.cw
  %i.qr = icmp ugt i8 %.fr.i, 56
  br i1 %i.qr, label %.thread235.i, label %.thread124.loopexit.split.loop.exit716.i

.thread235.i:                                     ; preds = %bb.cx
  %i.qs = icmp eq i8 %.fr.i, 58
  br i1 %i.qs, label %.thread235.thread.i, label %.thread124.loopexit.split.loop.exit676.i

.thread235.thread.i:                              ; preds = %.thread235.i, %bb.cw, %.thread.i78.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.experimental.noalias.scope.decl(metadata !1548), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1550), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1551), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1552), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1553), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1554), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1555), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1556), !noalias !1549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1557
  store ptr %.sroa.0.0.i, ptr %i.as, align 8, !noalias !1558
  store i64 %.sroa.3.0.i, ptr %i.da, align 8, !noalias !1558
  br i1 %i.ew, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %.loopexit137.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.thread235.thread.i, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i
  %i.qt = phi i64 [ %i.qv, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.thread235.thread.i ] ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.qt
  %.val7.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.qu, align 1, !alias.scope !1559, !noalias !1560, !noundef !11
  %.not.i.i14.i.i.i.i.i.i.i.i.i = icmp eq i8 %.val7.i.i.i.i.i.i.i.i.i.i, 92
  br i1 %.not.i.i14.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i, label %.loopexit137.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.qv = add nuw nsw i64 %i.qt, 1                ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.qv, %..i.i.i.i.i.i.i.i.i13.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8position5checkTRhB1h_ENCNvXse_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB1w_7CompareB1X_E7compare0E0CslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i
  %i.qw = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as, i64 noundef 1) #32, !noalias !1561 ; 2 uses
  %i.qx = extractvalue { ptr, i64 } %i.qw, 0      ; 23 uses
  %i.qy = extractvalue { ptr, i64 } %i.qw, 1      ; 23 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1557
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qx) ], !noalias !1549
  %i.qz = ptrtoint ptr %i.qx to i64               ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1562), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1563), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1564), !noalias !1549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1565
  store ptr @57, ptr %i.ar, align 8, !noalias !1565
  store i64 8, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1565
  store i64 1, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1565
  store i64 3, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1565
  store ptr %i.qx, ptr %i.db, align 8, !noalias !1565
  store i64 %i.qy, ptr %i.dc, align 8, !noalias !1565
  call void @llvm.experimental.noalias.scope.decl(metadata !1566), !noalias !1567
  call void @llvm.experimental.noalias.scope.decl(metadata !1568), !noalias !1567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1569
  store ptr %i.qx, ptr %i.aq, align 8, !noalias !1570
  store i64 %i.qy, ptr %i.dd, align 8, !noalias !1570
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.qy, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dg, label %bb.cy

.loopexit137.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.thread235.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !1557
  br label %bb.hw

bb.cy:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i
  %i.ra = load i8, ptr %i.qx, align 1, !alias.scope !1571, !noalias !1572, !noundef !11 ; 2 uses
  %i.rb = zext i8 %i.ra to i32
  %i.rc = call noundef zeroext i1 @_RNvXsn_NtCsiBsA9HK2Eg7_3nom6traitsReINtB5_9FindTokencE10find_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i32 noundef range(i32 0, 256) %i.rb) #32, !noalias !1573
  br i1 %i.rc, label %bb.cz, label %bb.dg

bb.cz:                                            ; preds = %bb.cy
  %i.rd = icmp sgt i8 %i.ra, -1
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.rd, i64 1, i64 2
  %i.re = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq, i64 noundef %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #32, !noalias !1573 ; 2 uses
  %i.rf = extractvalue { ptr, i64 } %i.re, 0      ; 5 uses
  %i.rg = extractvalue { ptr, i64 } %i.re, 1      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1569
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rf) ], !noalias !1567
  %i.rh = icmp eq i64 %i.rg, %i.qy
  br i1 %i.rh, label %.thread.i.i.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @llvm.experimental.noalias.scope.decl(metadata !1574), !noalias !1567
  call void @llvm.experimental.noalias.scope.decl(metadata !1575), !noalias !1567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1576
  store ptr %i.rf, ptr %i.aq, align 8, !noalias !1577
  store i64 %i.rg, ptr %i.dd, align 8, !noalias !1577
  %.not.i.i.i.i.1.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.rg, 0
  br i1 %.not.i.i.i.i.1.i.i.i.i.i.i.i.i.i, label %.thread112.i.i.i.i.i.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ri = load i8, ptr %i.rf, align 1, !alias.scope !1578, !noalias !1579, !noundef !11 ; 2 uses
  %i.rj = zext i8 %i.ri to i32
  %i.rk = call noundef zeroext i1 @_RNvXsn_NtCsiBsA9HK2Eg7_3nom6traitsReINtB5_9FindTokencE10find_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i32 noundef range(i32 0, 256) %i.rj) #32, !noalias !1573
  br i1 %i.rk, label %bb.dc, label %.thread112.i.i.i.i.i.i.i.i.i

bb.dc:                                            ; preds = %bb.db
  %i.rl = icmp sgt i8 %i.ri, -1
  %.sroa.013.0.i.i.i.i.i.1.i.i.i.i.i.i.i.i.i = select i1 %i.rl, i64 1, i64 2
  %i.rm = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq, i64 noundef %.sroa.013.0.i.i.i.i.i.1.i.i.i.i.i.i.i.i.i) #32, !noalias !1573 ; 2 uses
  %i.rn = extractvalue { ptr, i64 } %i.rm, 0      ; 5 uses
  %i.ro = extractvalue { ptr, i64 } %i.rm, 1      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1576
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rn) ], !noalias !1567
  %i.rp = icmp eq i64 %i.ro, %i.rg
  br i1 %i.rp, label %.thread.i.i.i.i.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.experimental.noalias.scope.decl(metadata !1580), !noalias !1567
  call void @llvm.experimental.noalias.scope.decl(metadata !1581), !noalias !1567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1582
  store ptr %i.rn, ptr %i.aq, align 8, !noalias !1583
  store i64 %i.ro, ptr %i.dd, align 8, !noalias !1583
  %.not.i.i.i.i.2.i.i.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ro, 0
  br i1 %.not.i.i.i.i.2.i.i.i.i.i.i.i.i.i, label %.thread112.i.i.i.i.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.rq = load i8, ptr %i.rn, align 1, !alias.scope !1584, !noalias !1579, !noundef !11 ; 2 uses
  %i.rr = zext i8 %i.rq to i32
  %i.rs = call noundef zeroext i1 @_RNvXsn_NtCsiBsA9HK2Eg7_3nom6traitsReINtB5_9FindTokencE10find_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar, i32 noundef range(i32 0, 256) %i.rr) #32, !noalias !1573
  br i1 %i.rs, label %bb.df, label %.thread112.i.i.i.i.i.i.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.rt = icmp sgt i8 %i.rq, -1
  %.sroa.013.0.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i = select i1 %i.rt, i64 1, i64 2
  %i.ru = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq, i64 noundef %.sroa.013.0.i.i.i.i.i.2.i.i.i.i.i.i.i.i.i) #32, !noalias !1573 ; 2 uses
  %i.rv = extractvalue { ptr, i64 } %i.ru, 0      ; 2 uses
  %i.rw = extractvalue { ptr, i64 } %i.ru, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1582
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rv) ], !noalias !1567
  %i.rx = icmp eq i64 %i.rw, %i.ro
  br i1 %i.rx, label %.thread.i.i.i.i.i.i, label %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i

.thread112.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.de, %bb.dd, %bb.db, %bb.da
  %.sroa.3.0.i.i.lcssa62.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ro, %bb.de ], [ 0, %bb.dd ], [ %i.rg, %bb.db ], [ 0, %bb.da ]
  %.sroa.0.0.i.i.lcssa58.ph.i.i.i.i.i.i.i.i.i = phi ptr [ %i.rn, %bb.de ], [ %i.rn, %bb.dd ], [ %i.rf, %bb.db ], [ %i.rf, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1569
  br label %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i

bb.dg:                                            ; preds = %bb.cy, %.loopexit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1569
  br label %bb.hg

_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread112.i.i.i.i.i.i.i.i.i, %bb.df
  %.sroa.3.0.i.i64.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.lcssa62.ph.i.i.i.i.i.i.i.i.i, %.thread112.i.i.i.i.i.i.i.i.i ], [ %i.rw, %bb.df ]
  %.sroa.0.0.i.i60.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.lcssa58.ph.i.i.i.i.i.i.i.i.i, %.thread112.i.i.i.i.i.i.i.i.i ], [ %i.rv, %bb.df ] ; 2 uses
  %i.ry = ptrtoint ptr %.sroa.0.0.i.i60.i.i.i.i.i.i.i.i.i to i64
  %i.rz = sub i64 %i.ry, %i.qz                    ; 3 uses
  %.not.i.i.i49.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.rz, %i.qy
  br i1 %.not.i.i.i49.i.i.i.i.i.i.i.i.i.i, label %bb.dh, label %bb.di, !prof !24

bb.dh:                                            ; preds = %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.rz, i64 noundef range(i64 0, -9223372036854775808) %i.qy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #33, !noalias !1585
  unreachable

bb.di:                                            ; preds = %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1586
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qx, i64 noundef range(i64 0, -9223372036854775808) %i.rz) #32, !noalias !1587
  call void @llvm.experimental.noalias.scope.decl(metadata !1588), !noalias !1549
  %i.sa = load i64, ptr %i.ap, align 8, !range !22, !alias.scope !1588, !noalias !1586, !noundef !11
  %i.sb = trunc nuw i64 %i.sa to i1
  br i1 %i.sb, label %bb.dj, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit37.i.i.i.i.i.i.i.i.i.i.i, !prof !24

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.de, i64 16, i1 false), !noalias !1590
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #33, !noalias !1591
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit37.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.di
  %i.sc = load ptr, ptr %i.de, align 8, !alias.scope !1588, !noalias !1586, !nonnull !11, !noundef !11 ; 3 uses
  %i.sd = load i64, ptr %i.df, align 8, !alias.scope !1588, !noalias !1586, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1586
  switch i64 %i.sd, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %.loopexit112.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.dk
  ]

bb.dk:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit37.i.i.i.i.i.i.i.i.i.i.i
  %i.se = load i8, ptr %i.sc, align 1, !alias.scope !1592, !noalias !1587, !noundef !11 ; 2 uses
  switch i8 %i.se, label %bb.dl [
    i8 43, label %.loopexit112.i.i.i.i.i.i.i.i.i.i.i
    i8 45, label %.loopexit112.i.i.i.i.i.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit37.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.sc, align 1, !alias.scope !1592, !noalias !1587
  br label %bb.dl

bb.dl:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dk
  %i.sf = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.se, %bb.dk ]
  %cond.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.sf, 43 ; 2 uses
  %i.sg = sext i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %i.sd, %i.sg ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.sc, i64 %.sroa.0.0.idx.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.sh = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.sh, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader57.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.dl
  %.not5465.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not5465.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.si = load i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !1592, !noalias !1587, !noundef !11
  %i.sj = zext i8 %i.si to i32
  %i.sk = add nsw i32 %i.sj, -48                  ; 2 uses
  %i.sl = icmp ugt i32 %i.sk, 7
  br i1 %i.sl, label %.loopexit112.i.i.i.i.i.i.i.i.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.sm = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.sn = trunc nuw nsw i32 %i.sk to i8           ; 2 uses
  br i1 %i.sm, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.dn:                                            ; preds = %bb.do
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0.164.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.sp = add nsw i64 %.sroa.15.163.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.sq = shl nuw i8 %.sroa.043.062.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.sr = trunc nuw nsw i32 %i.sw to i8
  %i.ss = or disjoint i8 %i.sq, %i.sr             ; 2 uses
  %.not53.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.sp, 0
  br i1 %.not53.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.preheader57.i.i.i.i.i.i.i.i.i.i.i.i

.preheader57.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.dl, %bb.dn
  %.sroa.0.164.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.so, %bb.dn ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dl ] ; 2 uses
  %.sroa.15.163.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sp, %bb.dn ], [ %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dl ]
  %.sroa.043.062.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ss, %bb.dn ], [ 0, %bb.dl ] ; 2 uses
  %i.st = icmp ugt i8 %.sroa.043.062.i.i.i.i.i.i.i.i.i.i.i.i, 31
  br i1 %i.st, label %.loopexit112.i.i.i.i.i.i.i.i.i.i.i, label %bb.do, !prof !24

bb.do:                                            ; preds = %.preheader57.i.i.i.i.i.i.i.i.i.i.i.i
  %i.su = load i8, ptr %.sroa.0.164.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !1592, !noalias !1587, !noundef !11
  %i.sv = zext i8 %i.su to i32
  %i.sw = add nsw i32 %i.sv, -48                  ; 2 uses
  %i.sx = icmp ugt i32 %i.sw, 7
  br i1 %i.sx, label %.loopexit112.i.i.i.i.i.i.i.i.i.i.i, label %bb.dn

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.dm
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 1
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.sy, align 1, !alias.scope !1592, !noalias !1587
  %i.sz = zext i8 %.pre.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.ta = add nsw i32 %i.sz, -48                  ; 2 uses
  %i.tb = icmp ugt i32 %i.ta, 7
  br i1 %i.tb, label %.loopexit112.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit113.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i

.loopexit112.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.do, %.preheader57.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dk, %bb.dk, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit37.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1586
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qx, i64 noundef range(i64 0, -9223372036854775808) %i.qy) #32, !noalias !1587
  %i.tc = load i64, ptr %i.ao, align 8, !range !22, !noalias !1586, !noundef !11
  %i.td = trunc nuw i64 %i.tc to i1
  br i1 %i.td, label %bb.dp, label %bb.el

.loopexit113.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.te = shl nuw nsw i8 %i.sn, 3
  %i.tf = trunc nuw nsw i32 %i.ta to i8
  %i.tg = or disjoint i8 %i.te, %i.tf
  br label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i

bb.dp:                                            ; preds = %.loopexit112.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1586
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.x, align 8, !noalias !1586
  %i.th = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x) #32, !noalias !1587
  store ptr %i.th, ptr %i.y, align 8, !noalias !1586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1586
  %i.ti = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #32, !noalias !1587 ; 2 uses
  %i.tj = extractvalue { ptr, i64 } %i.ti, 0
  %i.tk = extractvalue { ptr, i64 } %i.ti, 1
  store ptr %i.tj, ptr %i.w, align 8, !noalias !1586
  store i64 %i.tk, ptr %i.dv, align 8, !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1586
  store ptr %i.w, ptr %i.v, align 8, !noalias !1586
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCslbrwWrVtb7E_5uu_tr, ptr %.sroa.427.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1593
  store ptr %i.y, ptr %i.q, align 8, !noalias !1593
  store ptr null, ptr %i.dw, align 8, !noalias !1593
  %i.tl = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @5, ptr noundef nonnull @19, ptr noundef nonnull %i.v) #32, !noalias !1587
  %i.tm = load ptr, ptr %i.dw, align 8, !noalias !1593, !noundef !11 ; 7 uses
  %.not.i5.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.tm, null ; 2 uses
  br i1 %i.tl, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dv, label %bb.dw, !prof !24

bb.dr:                                            ; preds = %bb.dp
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1593
  %i.tn = ptrtoint ptr %i.tm to i64               ; 2 uses
  %i.to = and i64 %i.tn, 3
  switch i64 %i.to, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 3, label %bb.dt
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.du
  ], !prof !16

bb.dt:                                            ; preds = %bb.ds
  %i.tp = icmp ult ptr %i.tm, inttoptr (i64 188978561024 to ptr)
  %i.tq = and i64 %i.tn, 1095216660480
  %i.tr = icmp ne i64 %i.tq, 1095216660480
  call void @llvm.assume(i1 %i.tp), !noalias !1549
  call void @llvm.assume(i1 %i.tr), !noalias !1549
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.du:                                            ; preds = %bb.ds
  %i.ts = getelementptr i8, ptr %i.tm, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ts) ], !noalias !1549
  store ptr %i.ts, ptr %i.dx, align 8, !alias.scope !1594, !noalias !1593
  store i8 3, ptr %i.p, align 8, !alias.scope !1594, !noalias !1593
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dx) #32, !noalias !1587
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.du, %bb.dt, %bb.ds, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1593
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit.i.thread.i.i.i.i.i.i.i.i.i.i.i

bb.dv:                                            ; preds = %bb.dq
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #33, !noalias !1587
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit.i.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1593
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i.i

bb.dw:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1586
  %i.tt = ptrtoint ptr %i.tm to i64               ; 2 uses
  %i.tu = and i64 %i.tt, 3
  switch i64 %i.tu, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i.i.i
    i64 3, label %bb.dx
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.dy
  ], !prof !16

bb.dx:                                            ; preds = %bb.dw
  %i.tv = icmp ult ptr %i.tm, inttoptr (i64 188978561024 to ptr)
  %i.tw = and i64 %i.tt, 1095216660480
  %i.tx = icmp ne i64 %i.tw, 1095216660480
  call void @llvm.assume(i1 %i.tv), !noalias !1549
  call void @llvm.assume(i1 %i.tx), !noalias !1549
end_hunk_0
begin_hunk_1_@_RNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence8from_str:bb.a

.thread206.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph150.i141.preheader.i.thread.i.i.i.i.i.i.i.i.i.i
  %i.abi = zext nneg i32 %i.abg to i64
  br label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit148.i.i.i.i.i.i.i.i.i.i.i

bb.go:                                            ; preds = %.lr.ph150.i141.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.abj = zext nneg i32 %i.aav to i64
  br label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit148.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph150.i141.preheader.i.thread.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i, %.lr.ph150.i141.preheader.i.i.thread.i.i.i.i.i.i.i.i.i, %.lr.ph150.i141.preheader.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph141.i126.i.i.i.i.i.i.i.i.i.i.i, %bb.gn, %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1586
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aak, i64 noundef %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i) #31, !noalias !1587
  %i.abk = load i8, ptr %i.ac, align 8, !range !29, !noalias !1586, !noundef !11
  %i.abl = trunc nuw i8 %i.abk to i1
  br i1 %i.abl, label %bb.gq, label %bb.gr

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit148.i.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i.i.i
  %narrow.i.i.i.i.i.i.i.i.i = mul nuw nsw i32 %i.aay, 10
  %narrow35.i.i.i.i.i.i.i.i.i = add nuw nsw i32 %i.abc, %narrow.i.i.i.i.i.i.i.i.i
  %i.abm = zext nneg i32 %narrow35.i.i.i.i.i.i.i.i.i to i64
  br label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit148.i.i.i.i.i.i.i.i.i.i.i

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit148.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit148.i.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i, %bb.go, %.thread206.i.i.i.i.i.i.i.i.i.i, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit148.loopexit99.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.1519.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aat, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit148.loopexit99.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abj, %bb.go ], [ %i.abm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit148.i.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %i.abi, %.thread206.i.i.i.i.i.i.i.i.i.i ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 13, i64 noundef %.sroa.1519.0.i.i.i.i.i.i.i.i.i.i.i) #32, !noalias !1587
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gr, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit148.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !1586
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa) #32, !noalias !1587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1586
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aak, i64 noundef %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1617
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit151.i.i.i.i.i.i.i.i.i.i.i

bb.gq:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1586
  store i64 %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !noalias !1586
  store ptr %i.aak, ptr %.sroa.514.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1586
  store i64 %.sroa.0.05.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.815.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1586
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 13, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab) #32, !noalias !1587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !1586
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 33, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa) #32, !noalias !1587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1586
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit151.i.i.i.i.i.i.i.i.i.i.i

bb.gr:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  %i.abn = load double, ptr %i.dq, align 8, !noalias !1586, !noundef !11
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 13, double noundef %i.abn) #32, !noalias !1587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1586
  br label %bb.gp

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit151.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gq, %bb.gp
  br i1 %.sroa.04.0.not.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit154.i.i.i.i.i.i.i.i.i.i.i, label %bb.gs

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit154.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit151.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.sroa.05.0.not.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit172.i.i.i.i.i.i.i.i.i.i.i, label %bb.hf

bb.gs:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit151.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aaf, i64 noundef %i.va, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1618
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit154.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit172.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit154.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1586
  store ptr %i.ai, ptr %i.z, align 8, !noalias !1586
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1619
  store ptr %i.am, ptr %i.h, align 8, !noalias !1619
  store ptr null, ptr %i.dr, align 8, !noalias !1619
  %i.abo = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @5, ptr noundef nonnull @24, ptr noundef nonnull %i.z) #32, !noalias !1587
  %i.abp = load ptr, ptr %i.dr, align 8, !noalias !1619, !noundef !11 ; 7 uses
  %.not.i5.i156.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.abp, null ; 2 uses
  br i1 %i.abo, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit172.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i5.i156.i.i.i.i.i.i.i.i.i.i.i, label %bb.gy, label %bb.gz, !prof !24

bb.gu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit172.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i5.i156.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit.i158.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1619
  %i.abq = ptrtoint ptr %i.abp to i64             ; 2 uses
  %i.abr = and i64 %i.abq, 3
  switch i64 %i.abr, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i157.i.i.i.i.i.i.i.i.i.i.i
    i64 3, label %bb.gw
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i157.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.gx
  ], !prof !16

bb.gw:                                            ; preds = %bb.gv
  %i.abs = icmp ult ptr %i.abp, inttoptr (i64 188978561024 to ptr)
  %i.abt = and i64 %i.abq, 1095216660480
  %i.abu = icmp ne i64 %i.abt, 1095216660480
  call void @llvm.assume(i1 %i.abs), !noalias !1549
  call void @llvm.assume(i1 %i.abu), !noalias !1549
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i157.i.i.i.i.i.i.i.i.i.i.i

bb.gx:                                            ; preds = %bb.gv
  %i.abv = getelementptr i8, ptr %i.abp, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abv) ], !noalias !1549
  store ptr %i.abv, ptr %i.ds, align 8, !alias.scope !1620, !noalias !1619
  store i8 3, ptr %i.g, align 8, !alias.scope !1620, !noalias !1619
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ds) #32, !noalias !1587
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i157.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i157.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gx, %bb.gw, %bb.gv, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1619
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit.i158.thread.i.i.i.i.i.i.i.i.i.i.i

bb.gy:                                            ; preds = %bb.gt
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #33, !noalias !1587
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit.i158.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i.i.i157.i.i.i.i.i.i.i.i.i.i.i, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1619
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslbrwWrVtb7E_5uu_tr.exit165.i.i.i.i.i.i.i.i.i.i.i

bb.gz:                                            ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1586
  %i.abw = ptrtoint ptr %i.abp to i64             ; 2 uses
  %i.abx = and i64 %i.abw, 3
  switch i64 %i.abx, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i163.i.i.i.i.i.i.i.i.i.i.i
    i64 3, label %bb.ha
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i163.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.hb
  ], !prof !16

bb.ha:                                            ; preds = %bb.gz
  %i.aby = icmp ult ptr %i.abp, inttoptr (i64 188978561024 to ptr)
  %i.abz = and i64 %i.abw, 1095216660480
  %i.aca = icmp ne i64 %i.abz, 1095216660480
  call void @llvm.assume(i1 %i.aby), !noalias !1549
  call void @llvm.assume(i1 %i.aca), !noalias !1549
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i163.i.i.i.i.i.i.i.i.i.i.i

bb.hb:                                            ; preds = %bb.gz
  %i.acb = getelementptr i8, ptr %i.abp, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acb) ], !noalias !1549
  store ptr %i.acb, ptr %i.dt, align 8, !alias.scope !1621, !noalias !1586
  store i8 3, ptr %i.f, align 8, !alias.scope !1621, !noalias !1586
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dt) #32, !noalias !1587
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i163.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i163.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hb, %bb.ha, %bb.gz, %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1586
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslbrwWrVtb7E_5uu_tr.exit165.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslbrwWrVtb7E_5uu_tr.exit165.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECslbrwWrVtb7E_5uu_tr.exit.i163.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit.i158.thread.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1586
  call void @llvm.experimental.noalias.scope.decl(metadata !1622), !noalias !1549
  %.val.i166.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !range !12, !alias.scope !1622, !noalias !1586, !noundef !11 ; 2 uses
  %i.acc = icmp eq i64 %.val.i166.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.acc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit168.i.i.i.i.i.i.i.i.i.i.i, label %bb.hc

bb.hc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslbrwWrVtb7E_5uu_tr.exit165.i.i.i.i.i.i.i.i.i.i.i
  %.val1.i167.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.du, align 8, !alias.scope !1622, !noalias !1586, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i167.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i166.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1623
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit168.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit168.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECslbrwWrVtb7E_5uu_tr.exit165.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1586
  %.val41.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !1586, !nonnull !11, !align !13, !noundef !11 ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.val41.i.i.i.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 4, !noalias !1587, !noundef !11
  %i.acf = add i32 %i.ace, -1                     ; 2 uses
  store i32 %i.acf, ptr %i.acd, align 4, !noalias !1587
  %i.acg = icmp eq i32 %i.acf, 0
  br i1 %i.acg, label %bb.hd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit169.i.i.i.i.i.i.i.i.i.i.i

bb.hd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit168.i.i.i.i.i.i.i.i.i.i.i
  store atomic i64 0, ptr %.val41.i.i.i.i.i.i.i.i.i.i.i monotonic, align 8, !noalias !1587
  %i.ach = getelementptr inbounds nuw i8, ptr %.val41.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aci = atomicrmw xchg ptr %i.ach, i32 0 release, align 4, !noalias !1587
  %i.acj = icmp eq i32 %i.aci, 2
  br i1 %i.acj, label %bb.he, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit169.i.i.i.i.i.i.i.i.i.i.i, !prof !24

bb.he:                                            ; preds = %bb.hd
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ach) #32, !noalias !1587
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit169.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit169.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.he, %bb.hd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit168.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1586
  br label %bb.hg

bb.hf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit154.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xz, i64 noundef %i.uw, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1624
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit172.i.i.i.i.i.i.i.i.i.i.i

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i: ; preds = %bb.dn, %.loopexit113.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i, %bb.dm, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.3.0.i52.ph.i.i.i.i.i.i.i.i.i.i = phi i8 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.tg, %.loopexit113.loopexit.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sn, %bb.dm ], [ %i.ss, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1565
  br label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i.thread

.thread.i.i.i.i.i.i:                              ; preds = %bb.df, %bb.dc, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1625
  store ptr @57, ptr %i.e, align 8, !noalias !1625
  store i64 8, ptr %.sroa.42.0..sroa_idx.i.i.i4104.i.i.i.i.i.i, align 8, !noalias !1625
  store i64 2, ptr %.sroa.53.0..sroa_idx.i.i.i5105.i.i.i.i.i.i, align 8, !noalias !1625
  store i64 2, ptr %.sroa.64.0..sroa_idx.i.i.i6106.i.i.i.i.i.i, align 8, !noalias !1625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1626
  store ptr %i.qx, ptr %i.d, align 8, !noalias !1627
  store i64 %i.qy, ptr %i.ed, align 8, !noalias !1627
  br label %bb.hh

bb.hg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit169.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !1565
  call void @llvm.experimental.noalias.scope.decl(metadata !1628), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1629), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1630), !noalias !1549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1631
  store ptr @57, ptr %i.e, align 8, !noalias !1631
  store i64 8, ptr %.sroa.42.0..sroa_idx.i.i.i4104.i.i.i.i.i.i, align 8, !noalias !1631
  store i64 2, ptr %.sroa.53.0..sroa_idx.i.i.i5105.i.i.i.i.i.i, align 8, !noalias !1631
  store i64 2, ptr %.sroa.64.0..sroa_idx.i.i.i6106.i.i.i.i.i.i, align 8, !noalias !1631
  call void @llvm.experimental.noalias.scope.decl(metadata !1632), !noalias !1633
  call void @llvm.experimental.noalias.scope.decl(metadata !1634), !noalias !1633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1635
  store ptr %i.qx, ptr %i.d, align 8, !noalias !1636
  store i64 %i.qy, ptr %i.ed, align 8, !noalias !1636
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hm, label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.thread.i.i.i.i.i.i
  %i.ack = load i8, ptr %i.qx, align 1, !alias.scope !1637, !noalias !1638, !noundef !11 ; 2 uses
  %i.acl = zext i8 %i.ack to i32
  %i.acm = call noundef zeroext i1 @_RNvXsn_NtCsiBsA9HK2Eg7_3nom6traitsReINtB5_9FindTokencE10find_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i32 noundef range(i32 0, 256) %i.acl) #32, !noalias !1639
  br i1 %i.acm, label %bb.hi, label %bb.hm

bb.hi:                                            ; preds = %bb.hh
  %i.acn = icmp sgt i8 %i.ack, -1
  %.sroa.013.0.i.i.i.i.i.i.i.i15.i.i.i.i.i.i = select i1 %i.acn, i64 1, i64 2
  %i.aco = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef %.sroa.013.0.i.i.i.i.i.i.i.i15.i.i.i.i.i.i) #32, !noalias !1639 ; 2 uses
  %i.acp = extractvalue { ptr, i64 } %i.aco, 0    ; 6 uses
  %i.acq = extractvalue { ptr, i64 } %i.aco, 1    ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1635
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acp) ], !noalias !1633
  %i.acr = icmp eq i64 %i.acq, %i.qy
  br i1 %i.acr, label %.loopexit.i.i.i.i.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.experimental.noalias.scope.decl(metadata !1640), !noalias !1633
  call void @llvm.experimental.noalias.scope.decl(metadata !1641), !noalias !1633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1642
  store ptr %i.acp, ptr %i.d, align 8, !noalias !1643
  store i64 %i.acq, ptr %i.ed, align 8, !noalias !1643
  %.not.i.i.i.i.1.i.i.i16.i.i.i.i.i.i = icmp samesign eq i64 %i.acq, 0
  br i1 %.not.i.i.i.i.1.i.i.i16.i.i.i.i.i.i, label %bb.hm, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.acs = load i8, ptr %i.acp, align 1, !alias.scope !1644, !noalias !1645, !noundef !11 ; 2 uses
  %i.act = zext i8 %i.acs to i32
  %i.acu = call noundef zeroext i1 @_RNvXsn_NtCsiBsA9HK2Eg7_3nom6traitsReINtB5_9FindTokencE10find_token(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, i32 noundef range(i32 0, 256) %i.act) #32, !noalias !1639
  br i1 %i.acu, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.acv = icmp sgt i8 %i.acs, -1
  %.sroa.013.0.i.i.i.i.i.1.i.i.i17.i.i.i.i.i.i = select i1 %i.acv, i64 1, i64 2
  %i.acw = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, i64 noundef %.sroa.013.0.i.i.i.i.i.1.i.i.i17.i.i.i.i.i.i) #32, !noalias !1639 ; 2 uses
  %i.acx = extractvalue { ptr, i64 } %i.acw, 1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1642
  %i.acy = icmp eq i64 %i.acx, %i.acq
  br i1 %i.acy, label %.loopexit.i.i.i.i.i.i, label %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i18.i.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hk, %bb.hj, %bb.hh, %bb.hg
  %.sroa.3.0.i.i.lcssa16.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qy, %bb.hh ], [ 0, %bb.hg ], [ 0, %bb.hj ], [ %i.acq, %bb.hk ]
  %.sroa.0.0.i.i.lcssa13.i.i.i.i.i.i.i.i.i = phi ptr [ %i.qx, %bb.hh ], [ %i.qx, %bb.hg ], [ %i.acp, %bb.hj ], [ %i.acp, %bb.hk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1635
  br label %.loopexit.i.i.i.i.i.i

_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i18.i.i.i.i.i.i: ; preds = %bb.hl
  %i.acz = extractvalue { ptr, i64 } %i.acw, 0    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acz) ], !noalias !1633
  %i.ada = ptrtoint ptr %i.acz to i64
  %i.adb = sub i64 %i.ada, %i.qz                  ; 3 uses
  %.not.i.i.i47.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.adb, %i.qy
  br i1 %.not.i.i.i47.i.i.i.i.i.i.i.i.i.i, label %bb.hn, label %bb.ho, !prof !24

bb.hn:                                            ; preds = %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i18.i.i.i.i.i.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.adb, i64 noundef range(i64 0, -9223372036854775808) %i.qy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #33, !noalias !1646
  unreachable

bb.ho:                                            ; preds = %_RINvXs3_NtCsiBsA9HK2Eg7_3nom5multiINtB6_6ManyMNNCINvNtNtB8_9character8complete6one_ofRShReINtNtB8_5error5ErrorB1l_EE0EINtNtB8_8internal6ParserB1l_E7processINtB1V_7OutputMNtB1V_5CheckNtB1V_4EmitNtB1V_9StreamingEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i18.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1647
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.qx, i64 noundef range(i64 0, -9223372036854775808) %i.adb) #32, !noalias !1648
  call void @llvm.experimental.noalias.scope.decl(metadata !1649), !noalias !1549
  %i.adc = load i64, ptr %i.c, align 8, !range !22, !alias.scope !1649, !noalias !1647, !noundef !11
  %i.add = trunc nuw i64 %i.adc to i1
  br i1 %i.add, label %bb.hp, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i, !prof !24

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ee, i64 16, i1 false), !noalias !1651
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #33, !noalias !1652
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i: ; preds = %bb.ho
  %i.ade = load ptr, ptr %i.ee, align 8, !alias.scope !1649, !noalias !1647, !nonnull !11, !noundef !11 ; 3 uses
  %i.adf = load i64, ptr %i.ef, align 8, !alias.scope !1649, !noalias !1647, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1647
  switch i64 %i.adf, label %thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i [
    i64 0, label %.loopexit.i.i.i.i.i.i
    i64 1, label %bb.hq
  ]

bb.hq:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i
  %i.adg = load i8, ptr %i.ade, align 1, !alias.scope !1653, !noalias !1648, !noundef !11 ; 2 uses
  switch i8 %i.adg, label %bb.hr [
    i8 43, label %.loopexit.i.i.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i:       ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i38.i.i.i.i.i.i = load i8, ptr %i.ade, align 1, !alias.scope !1653, !noalias !1648
  br label %bb.hr

bb.hr:                                            ; preds = %thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i, %bb.hq
  %i.adh = phi i8 [ %.pr.i.i.i.i.i.i38.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i ], [ %i.adg, %bb.hq ]
  %cond.i.i.i.i.i.i20.i.i.i.i.i.i = icmp eq i8 %i.adh, 43 ; 2 uses
  %i.adi = sext i1 %cond.i.i.i.i.i.i20.i.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i = add nsw i64 %i.adf, %i.adi ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i.i22.i.i.i.i.i.i = zext i1 %cond.i.i.i.i.i.i20.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ade, i64 %.sroa.0.0.idx.i.i.i.i.i.i22.i.i.i.i.i.i ; 3 uses
  %i.adj = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, 3
  br i1 %i.adj, label %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i, label %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i

.preheader.i.i.i.i.i.i32.i.i.i.i.i.i:             ; preds = %bb.hr
  %.not5465.i.i.i.i.i.i33.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, 0
  br i1 %.not5465.i.i.i.i.i.i33.i.i.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i:       ; preds = %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i
  %i.adk = load i8, ptr %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i, align 1, !alias.scope !1653, !noalias !1648, !noundef !11
  %i.adl = zext i8 %i.adk to i32
  %i.adm = add nsw i32 %i.adl, -48                ; 2 uses
  %i.adn = icmp ugt i32 %i.adm, 7
  br i1 %i.adn, label %.loopexit.i.i.i.i.i.i, label %bb.hs

bb.hs:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i
  %i.ado = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, 1
  %i.adp = trunc nuw nsw i32 %i.adm to i8         ; 2 uses
  br i1 %i.ado, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i

bb.ht:                                            ; preds = %bb.hu
  %i.adq = getelementptr inbounds nuw i8, ptr %.sroa.0.164.i.i.i.i.i.i25.i.i.i.i.i.i, i64 1
  %i.adr = add nsw i64 %.sroa.15.163.i.i.i.i.i.i26.i.i.i.i.i.i, -1 ; 2 uses
  %i.ads = shl nuw i8 %.sroa.043.062.i.i.i.i.i.i27.i.i.i.i.i.i, 3
  %i.adt = trunc nuw nsw i32 %i.ady to i8
  %i.adu = or disjoint i8 %i.ads, %i.adt          ; 2 uses
  %.not53.i.i.i.i.i.i28.i.i.i.i.i.i = icmp eq i64 %i.adr, 0
  br i1 %.not53.i.i.i.i.i.i28.i.i.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i

.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i:           ; preds = %bb.hr, %bb.ht
  %.sroa.0.164.i.i.i.i.i.i25.i.i.i.i.i.i = phi ptr [ %i.adq, %bb.ht ], [ %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i, %bb.hr ] ; 2 uses
  %.sroa.15.163.i.i.i.i.i.i26.i.i.i.i.i.i = phi i64 [ %i.adr, %bb.ht ], [ %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, %bb.hr ]
  %.sroa.043.062.i.i.i.i.i.i27.i.i.i.i.i.i = phi i8 [ %i.adu, %bb.ht ], [ 0, %bb.hr ] ; 2 uses
  %i.adv = icmp ugt i8 %.sroa.043.062.i.i.i.i.i.i27.i.i.i.i.i.i, 31
  br i1 %i.adv, label %.loopexit.i.i.i.i.i.i, label %bb.hu, !prof !24

bb.hu:                                            ; preds = %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i
  %i.adw = load i8, ptr %.sroa.0.164.i.i.i.i.i.i25.i.i.i.i.i.i, align 1, !alias.scope !1653, !noalias !1648, !noundef !11
  %i.adx = zext i8 %i.adw to i32
  %i.ady = add nsw i32 %i.adx, -48                ; 2 uses
  %i.adz = icmp ugt i32 %i.ady, 7
  br i1 %i.adz, label %.loopexit.i.i.i.i.i.i, label %bb.ht

.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i:                 ; preds = %bb.hs
  %i.aea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i, i64 1
  %.pre.i.i.i.i.i36.i.i.i.i.i.i = load i8, ptr %i.aea, align 1, !alias.scope !1653, !noalias !1648
  %i.aeb = zext i8 %.pre.i.i.i.i.i36.i.i.i.i.i.i to i32
  %i.aec = add nsw i32 %i.aeb, -48                ; 2 uses
  %i.aed = icmp ult i32 %i.aec, 8
  br i1 %i.aed, label %bb.hv, label %.loopexit.i.i.i.i.i.i

bb.hv:                                            ; preds = %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i
  %i.aee = shl nuw nsw i8 %i.adp, 3
  %i.aef = trunc nuw nsw i32 %i.aec to i8
  %i.aeg = or disjoint i8 %i.aee, %i.aef
  br label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i: ; preds = %bb.ht, %bb.hv, %bb.hs, %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i
  %i.aeh = phi i8 [ %i.aeg, %bb.hv ], [ 0, %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i ], [ %i.adp, %bb.hs ], [ %i.adu, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1631
  br label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i.thread

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.hu, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i, %bb.hq, %bb.hq, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i, %bb.hm, %bb.hl, %bb.hi
  %.sroa.18.0.ph.i8.i.i.i.i.i.i = phi i8 [ 2, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i ], [ 2, %bb.hq ], [ 2, %bb.hq ], [ 2, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i ], [ 42, %bb.hi ], [ 42, %bb.hl ], [ 2, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i ], [ 27, %bb.hm ], [ 2, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i ], [ 2, %bb.hu ]
  %.sroa.13.0.ph.i9.i.i.i.i.i.i = phi i64 [ %i.qy, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i ], [ %i.qy, %bb.hq ], [ %i.qy, %bb.hq ], [ %i.qy, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i ], [ %i.qy, %bb.hi ], [ %i.acq, %bb.hl ], [ %i.qy, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i ], [ %.sroa.3.0.i.i.lcssa16.i.i.i.i.i.i.i.i.i, %bb.hm ], [ %i.qy, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i ], [ %i.qy, %bb.hu ]
  %.sroa.8.0.ph.i10.i.i.i.i.i.i = phi ptr [ %i.qx, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i ], [ %i.qx, %bb.hq ], [ %i.qx, %bb.hq ], [ %i.qx, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i ], [ %i.qx, %bb.hi ], [ %i.acp, %bb.hl ], [ %i.qx, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.lcssa13.i.i.i.i.i.i.i.i.i, %bb.hm ], [ %i.qx, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i ], [ %i.qx, %bb.hu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1631
  br label %bb.hw

_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i.thread: ; preds = %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i
  %.sroa.27.1.ph.i.i.i.i.i.i = phi i8 [ %i.aeh, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ], [ %.sroa.3.0.i52.ph.i.i.i.i.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ]
  %.sroa.21.1.ph.i.i.i.i.i.i = phi i64 [ %i.acx, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ], [ %.sroa.3.0.i.i64.i.i.i.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ]
  %.sroa.12.1.ph.i.i.i.i.i.i = phi ptr [ %i.acz, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i60.i.i.i.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ]
  %.pre-phi = ptrtoint ptr %.sroa.12.1.ph.i.i.i.i.i.i to i64
  br label %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i

bb.hw:                                            ; preds = %.loopexit.i.i.i.i.i.i, %.loopexit137.i.i.i.i.i.i
  %.sroa.18.0.ph.i.i.i.i10 = phi i8 [ 0, %.loopexit137.i.i.i.i.i.i ], [ %.sroa.18.0.ph.i8.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  %.sroa.13.0.ph.i.i.i.i11 = phi i64 [ %.sroa.3.0.i, %.loopexit137.i.i.i.i.i.i ], [ %.sroa.13.0.ph.i9.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  %.sroa.8.0.ph.in.i.i.i.i = phi ptr [ %.sroa.0.0.i, %.loopexit137.i.i.i.i.i.i ], [ %.sroa.8.0.ph.i10.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  store i64 1, ptr %i.at, align 8, !noalias !1654
  store ptr %.sroa.8.0.ph.in.i.i.i.i, ptr %i.eg, align 8, !noalias !1654
  store i64 %.sroa.13.0.ph.i.i.i.i11, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  store i8 %.sroa.18.0.ph.i.i.i.i10, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  store i56 0, ptr %.sroa.765.0..sroa_idx.i.i.i.i, align 1, !noalias !1654
  call fastcc void @_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_backslashINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2j_NtB6_9StreamingEEBH_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i) #32, !noalias !1655
  %i.aei = load i64, ptr %i.at, align 8, !range !25, !noalias !1654, !noundef !11 ; 2 uses
  %i.aej = icmp eq i64 %i.aei, 1
  br i1 %i.aej, label %bb.hx, label %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge

._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge: ; preds = %bb.hw
  %.sroa.044.0.copyload.i.pre.pre = load i64, ptr %i.eg, align 8, !noalias !1654
  br label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.experimental.noalias.scope.decl(metadata !1656), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1657), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1658), !noalias !1549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1659
  store ptr %.sroa.0.0.i, ptr %i.a, align 8, !noalias !1660
  store i64 %.sroa.3.0.i, ptr %i.eh, align 8, !noalias !1660
  br i1 %i.ew, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i, label %bb.hy

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i: ; preds = %bb.hx
  %i.aek = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef 1) #32, !noalias !1661 ; 2 uses
  %i.ael = extractvalue { ptr, i64 } %i.aek, 1
  %i.aem = extractvalue { ptr, i64 } %i.aek, 0    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1659
  %i.aen = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !1662, !noalias !1549, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aem) ], !noalias !1549
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1659
  store i56 0, ptr %.sroa.765.0..sroa_idx.i.i.i.i, align 1, !noalias !1654
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i
  %storemerge128.i.i.i = phi ptr [ %.sroa.0.0.i, %bb.hy ], [ %i.aem, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ] ; 2 uses
  %storemerge127.i.i.i = phi i64 [ 0, %bb.hy ], [ %i.ael, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ]
  %storemerge.i.i.i = phi i8 [ 24, %bb.hy ], [ %i.aen, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ 1, %bb.hy ], [ -1, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ]
  store ptr %storemerge128.i.i.i, ptr %i.eg, align 8, !noalias !1654
  store i64 %storemerge127.i.i.i, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  store i8 %storemerge.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  %i.aeo = ptrtoint ptr %storemerge128.i.i.i to i64
  br label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i

_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i: ; preds = %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge, %bb.hz
  %.sroa.044.0.copyload.i.pre = phi i64 [ %.sroa.044.0.copyload.i.pre.pre, %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge ], [ %i.aeo, %bb.hz ] ; 3 uses
  %i.aep = phi i64 [ %i.aei, %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge ], [ %.sink.i.i.i, %bb.hz ]
  switch i64 %i.aep, label %default.unreachable [
    i64 -1, label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge
    i64 0, label %.thread89
    i64 1, label %.thread
    i64 2, label %bb.ia
  ]

_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge: ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  %.sroa.445.0.copyload.i.pre = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  %.sroa.546.0.copyload.i.pre = load i8, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  br label %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i

.thread89:                                        ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %.thread.i

.thread:                                          ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit

_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i: ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i.thread
  %.sroa.546.0.copyload.i = phi i8 [ %.sroa.27.1.ph.i.i.i.i.i.i, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i.thread ], [ %.sroa.546.0.copyload.i.pre, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge ]
  %.sroa.445.0.copyload.i = phi i64 [ %.sroa.21.1.ph.i.i.i.i.i.i, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i.thread ], [ %.sroa.445.0.copyload.i.pre, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge ]
  %.sroa.044.0.copyload.i = phi i64 [ %.pre-phi, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i.thread ], [ %.sroa.044.0.copyload.i.pre, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge ] ; 2 uses
  %i.aeq = icmp ne i64 %.sroa.044.0.copyload.i, 0
  call void @llvm.assume(i1 %i.aeq), !noalias !1549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.aer = inttoptr i64 %.sroa.044.0.copyload.i to ptr
  %.sroa.582.9.insert.ext.i = zext i8 %.sroa.546.0.copyload.i to i64
  %.sroa.582.9.insert.shift.i = shl nuw nsw i64 %.sroa.582.9.insert.ext.i, 8
  br label %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i

bb.ia:                                            ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  %.sroa.7.sroa.5.0.copyload.i = load i8, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1654 ; 2 uses
  %.sroa.7.sroa.0.0.copyload.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1654
  %.sroa.731.i.sroa.0.0.copyload = load i56, ptr %.sroa.765.0..sroa_idx.i.i.i.i, align 1, !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.aes = icmp eq i8 %.sroa.7.sroa.5.0.copyload.i, 58
  br i1 %i.aes, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit, label %.thread124.i

.thread124.loopexit.split.loop.exit.i:            ; preds = %.thread110.i
  %i.aet = ptrtoint ptr %.sroa.7.0.ph.i.i.i.i to i64
  br label %.thread124.i

.thread124.loopexit.split.loop.exit656.i:         ; preds = %.thread147.i
  %i.aeu = ptrtoint ptr %.sroa.030.0.copyload.i.i.i.i.i to i64
  %.sroa.18.33.extract.shift.i.le.i = lshr i64 %.sroa.642.0.copyload.i.i.i.i.fr.i, 8
  %.sroa.18.33.extract.trunc.i.le761.i = trunc nuw i64 %.sroa.18.33.extract.shift.i.le.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit666.i:         ; preds = %.thread182.i
  %i.aev = ptrtoint ptr %.sroa.036.0.copyload.i8.i.i.i.i to i64
  %sh.diff.i.le.i = lshr i64 %.sroa.648.0.copyload.i.i.i.i.fr.i, 8
  %tr.sh.diff.i.le755.i = trunc nuw i64 %sh.diff.i.le.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit676.i:         ; preds = %.thread235.i
  %.sroa.11.0.ph.i.i.i90.le753.i = ptrtoint ptr %i.ps to i64
  %.sroa.734.sroa.4.0.insert.ext.i.le733.i = zext i48 %.sroa.8258.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.4.0.insert.shift.i.le.i = shl nuw i56 %.sroa.734.sroa.4.0.insert.ext.i.le733.i, 8
  %.sroa.734.sroa.0.0.insert.ext.i.le.i = zext i8 %.sroa.7257.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.0.0.insert.insert.i.le726.i = or disjoint i56 %.sroa.734.sroa.4.0.insert.shift.i.le.i, %.sroa.734.sroa.0.0.insert.ext.i.le.i
  br label %.thread124.i

.thread124.loopexit.split.loop.exit686.i:         ; preds = %bb.h
  %i.aew = ptrtoint ptr %.sroa.7.0.ph.i.i.i.i to i64
  br label %.thread124.i

.thread124.loopexit.split.loop.exit696.i:         ; preds = %bb.k
  %i.aex = ptrtoint ptr %.sroa.030.0.copyload.i.i.i.i.i to i64
  %.sroa.18.33.extract.shift.i.le763.i = lshr i64 %.sroa.642.0.copyload.i.i.i.i.fr.i, 8
  %.sroa.18.33.extract.trunc.i.le.i = trunc nuw i64 %.sroa.18.33.extract.shift.i.le763.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit706.i:         ; preds = %bb.ac
  %i.aey = ptrtoint ptr %.sroa.036.0.copyload.i8.i.i.i.i to i64
  %sh.diff.i.le757.i = lshr i64 %.sroa.648.0.copyload.i.i.i.i.fr.i, 8
  %tr.sh.diff.i.le.i = trunc nuw i64 %sh.diff.i.le757.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit716.i:         ; preds = %bb.cx
  %.sroa.11.0.ph.i.i.i90.le751.i = ptrtoint ptr %i.ps to i64
  %.sroa.734.sroa.4.0.insert.ext.i.le.i = zext i48 %.sroa.8258.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.4.0.insert.shift.i.le731.i = shl nuw i56 %.sroa.734.sroa.4.0.insert.ext.i.le.i, 8
  %.sroa.734.sroa.0.0.insert.ext.i.le729.i = zext i8 %.sroa.7257.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.0.0.insert.insert.i.le.i = or disjoint i56 %.sroa.734.sroa.4.0.insert.shift.i.le731.i, %.sroa.734.sroa.0.0.insert.ext.i.le729.i
  br label %.thread124.i

.thread124.i:                                     ; preds = %.thread124.loopexit.split.loop.exit716.i, %.thread124.loopexit.split.loop.exit706.i, %.thread124.loopexit.split.loop.exit696.i, %.thread124.loopexit.split.loop.exit686.i, %.thread124.loopexit.split.loop.exit676.i, %.thread124.loopexit.split.loop.exit666.i, %.thread124.loopexit.split.loop.exit656.i, %.thread124.loopexit.split.loop.exit.i, %bb.ia
  %.sroa.79.6.ph.i = phi i56 [ %.sroa.731.i.sroa.0.0.copyload, %bb.ia ], [ %tr.sh.diff.i.le.i, %.thread124.loopexit.split.loop.exit706.i ], [ %.sroa.18.33.extract.trunc.i.le761.i, %.thread124.loopexit.split.loop.exit656.i ], [ %.sroa.19.33.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit.i ], [ %.sroa.18.33.extract.trunc.i.le.i, %.thread124.loopexit.split.loop.exit696.i ], [ %tr.sh.diff.i.le755.i, %.thread124.loopexit.split.loop.exit666.i ], [ %.sroa.734.sroa.0.0.insert.insert.i.le726.i, %.thread124.loopexit.split.loop.exit676.i ], [ %.sroa.19.33.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit686.i ], [ %.sroa.734.sroa.0.0.insert.insert.i.le.i, %.thread124.loopexit.split.loop.exit716.i ]
  %.sroa.63.6.ph.i = phi i8 [ %.sroa.7.sroa.5.0.copyload.i, %bb.ia ], [ %.sroa.18.sroa.0.0.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit706.i ], [ %.sroa.18.32.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit656.i ], [ %.sroa.14.0.ph.i.i.i.fr.i, %.thread124.loopexit.split.loop.exit.i ], [ %.sroa.18.32.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit696.i ], [ %.sroa.18.sroa.0.0.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit666.i ], [ %.fr.i, %.thread124.loopexit.split.loop.exit676.i ], [ %.sroa.14.0.ph.i.i.i.fr.i, %.thread124.loopexit.split.loop.exit686.i ], [ %.fr.i, %.thread124.loopexit.split.loop.exit716.i ]
  %.sroa.56.6.ph.i = phi i64 [ %.sroa.7.sroa.0.0.copyload.i, %bb.ia ], [ %.sroa.437.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit706.i ], [ %.sroa.431.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit656.i ], [ %.sroa.11.0.ph.i.i.i.i, %.thread124.loopexit.split.loop.exit.i ], [ %.sroa.431.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit696.i ], [ %.sroa.437.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit666.i ], [ %i.pt, %.thread124.loopexit.split.loop.exit676.i ], [ %.sroa.11.0.ph.i.i.i.i, %.thread124.loopexit.split.loop.exit686.i ], [ %i.pt, %.thread124.loopexit.split.loop.exit716.i ]
  %.sroa.44.6.ph.i = phi i64 [ %.sroa.044.0.copyload.i.pre, %bb.ia ], [ %i.aey, %.thread124.loopexit.split.loop.exit706.i ], [ %i.aeu, %.thread124.loopexit.split.loop.exit656.i ], [ %i.aet, %.thread124.loopexit.split.loop.exit.i ], [ %i.aex, %.thread124.loopexit.split.loop.exit696.i ], [ %i.aev, %.thread124.loopexit.split.loop.exit666.i ], [ %.sroa.11.0.ph.i.i.i90.le753.i, %.thread124.loopexit.split.loop.exit676.i ], [ %i.aew, %.thread124.loopexit.split.loop.exit686.i ], [ %.sroa.11.0.ph.i.i.i90.le751.i, %.thread124.loopexit.split.loop.exit716.i ] ; 2 uses
  %.sroa.63.6.ph.fr.i = freeze i8 %.sroa.63.6.ph.i ; 3 uses
  %i.aez = icmp ugt i8 %.sroa.63.6.ph.fr.i, 56
  br i1 %i.aez, label %bb.ib, label %.thread303.i

bb.ib:                                            ; preds = %.thread124.i
  switch i8 %.sroa.63.6.ph.fr.i, label %bb.im [
    i8 57, label %.thread.i
    i8 58, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit
    i8 59, label %.thread303.i
  ]

_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i: ; preds = %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i
  %.sroa.79.6.i = phi i56 [ %.sroa.27.sroa.5.0.extract.trunc.i63.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.27.sroa.5.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.26.sroa.5.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.79.0.ph116528.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %.sroa.63.6.i = phi i8 [ %.sroa.27.sroa.0.0.extract.trunc.i61.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.27.sroa.0.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.26.sroa.0.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ 58, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %.sroa.56.6.i = phi i64 [ %.sroa.17.sroa.18.sroa.17.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.7.sroa.8.sroa.7.1.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.25.34.copyload.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.56.0.ph120527.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 2 uses
  %.sroa.44.6.i = phi i64 [ %.sroa.17.sroa.18.sroa.0.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.18.sroa.0.0.insert.insert.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.582.9.insert.shift.i, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.19.32.insert.ext.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.18.sroa.0.0.insert.insert.i96.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.18.33.insert.insert.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 5 uses
  %.sroa.40.5.i = phi i32 [ 0, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %i.et, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ 0, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ 0, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %.sroa.19.6.i = phi i32 [ %.sroa.0.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.0.1.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ -1, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.13.24.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.06.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ -1, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 2 uses
  %.sroa.1215.6.i = phi i64 [ %i.jr, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.gn, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.445.0.copyload.i, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.443.0.copyload.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.qh, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.fh, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 2 uses
  %.sroa.014.6.i = phi ptr [ %i.jq, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.gm, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.aer, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.042.0.copyload.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.qg, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.fg, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %i.afa = icmp eq i64 %.sroa.1215.6.i, %.sroa.3.0.i
  br i1 %i.afa, label %bb.ie, label %bb.ic

bb.ic:                                            ; preds = %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !1663
  store i64 %.sroa.02.0.i, ptr %i.bu, align 8, !noalias !1664
  store ptr %.sroa.9.0.i, ptr %.sroa.457.0..sroa_idx.i, align 8, !noalias !1664
  store i64 %.sroa.12.0.i, ptr %.sroa.558.0..sroa_idx.i, align 8, !noalias !1664
  store i32 %.sroa.19.6.i, ptr %i.cz, align 8, !noalias !1665
  store i32 %.sroa.40.5.i, ptr %.sroa.460.0..sroa_idx.i, align 4, !noalias !1665
  store i64 %.sroa.44.6.i, ptr %.sroa.561.0..sroa_idx.i, align 8, !noalias !1665
  store i64 %.sroa.56.6.i, ptr %.sroa.662.0..sroa_idx.i, align 8, !noalias !1665
  store i8 %.sroa.63.6.i, ptr %.sroa.763.0..sroa_idx.i, align 8, !noalias !1665
  store i56 %.sroa.79.6.i, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !1665
  call void @llvm.experimental.noalias.scope.decl(metadata !1666)
  call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  call void @llvm.experimental.noalias.scope.decl(metadata !1668), !noalias !1669
  %i.afb = icmp eq i64 %.sroa.12.0.i, %.sroa.02.0.i
  br i1 %i.afb, label %bb.id, label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i

bb.id:                                            ; preds = %bb.ic
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1q_11BadSequenceEE8grow_oneB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu) #31, !noalias !1670
  %.pre.i = load ptr, ptr %.sroa.457.0..sroa_idx.i, align 8, !alias.scope !1671, !noalias !1672
  %.sroa.053.0.copyload.pre.i = load i64, ptr %i.bu, align 8, !alias.scope !1673, !noalias !1672
  br label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i

_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i: ; preds = %bb.id, %bb.ic
  %.sroa.053.0.copyload.i = phi i64 [ %.sroa.02.0.i, %bb.ic ], [ %.sroa.053.0.copyload.pre.i, %bb.id ]
  %i.afc = phi ptr [ %.sroa.9.0.i, %bb.ic ], [ %.pre.i, %bb.id ] ; 2 uses
  %i.afd = getelementptr inbounds nuw [32 x i8], ptr %i.afc, i64 %.sroa.12.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.afd, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cz, i64 32, i1 false), !noalias !1674
  %i.afe = add i64 %.sroa.12.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !1663
  br label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.i

bb.ie:                                            ; preds = %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i
  %i.aff = ptrtoint ptr %.sroa.0.0.i to i64       ; 2 uses
  switch i32 %.sroa.19.6.i, label %bb.if [
    i32 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 1, label %bb.ig
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 5, label %bb.ih
    i32 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 8, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 9, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 10, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 11, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
  ]

bb.if:                                            ; preds = %bb.ie
  %i.afg = icmp eq i64 %.sroa.44.6.i, 0
  br i1 %i.afg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i: ; preds = %bb.ih, %bb.ig, %bb.if
  %i.afh = inttoptr i64 %.sroa.56.6.i to ptr
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afh, i64 noundef %.sroa.44.6.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1675
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i

bb.ig:                                            ; preds = %bb.ie
  %i.afi = icmp eq i64 %.sroa.44.6.i, 0
  br i1 %i.afi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i

bb.ih:                                            ; preds = %bb.ie
  %i.afj = icmp eq i64 %.sroa.44.6.i, 0
  br i1 %i.afj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i: ; preds = %bb.ih, %bb.ig, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i, %bb.if, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie, %bb.ie
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  %i.afk = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %i.afk, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.afm, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i ] ; 2 uses
  %i.afl = getelementptr inbounds nuw [32 x i8], ptr %.sroa.9.0.i, i64 %.sroa.0.03.i.i.i.i ; 5 uses
  %i.afm = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1677)
  %i.afn = load i32, ptr %i.afl, align 8, !range !26, !alias.scope !1678, !noalias !1679, !noundef !11 ; 2 uses
  %i.afo = icmp eq i32 %i.afn, -1
  br i1 %i.afo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %bb.ii

bb.ii:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  switch i32 %i.afn, label %bb.ij [
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 1, label %bb.ik
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 5, label %bb.il
    i32 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 8, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 9, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 10, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 11, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
  ]

bb.ij:                                            ; preds = %bb.ii
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %.val.i.i.i.i.i.i105.i = load i64, ptr %i.afp, align 8, !range !12, !alias.scope !1681, !noalias !1679, !noundef !11 ; 2 uses
  %i.afq = icmp eq i64 %.val.i.i.i.i.i.i105.i, 0
  br i1 %i.afq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.il, %bb.ik, %bb.ij
  %.val.i4.sink.i.i.i.i.i.i = phi i64 [ %.val.i1.i.i.i.i.i.i, %bb.ik ], [ %.val.i4.i.i.i.i.i.i, %bb.il ], [ %.val.i.i.i.i.i.i105.i, %bb.ij ]
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  %.val1.i5.i.i.i.i.i.i = load ptr, ptr %i.afr, align 8, !alias.scope !1682, !noalias !1679, !nonnull !11, !noundef !11
end_hunk_1
