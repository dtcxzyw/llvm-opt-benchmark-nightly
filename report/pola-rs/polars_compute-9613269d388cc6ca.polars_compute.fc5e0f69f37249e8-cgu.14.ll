Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_compute-9613269d388cc6ca.polars_compute.fc5e0f69f37249e8-cgu.14?download=true
inline.NumInlined: 1566
inline.NumDeleted: 498
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvNtNtCslFlrwjHoTci_14polars_compute6filter7boolean21filter_boolean_kernel:bb.a
  %.sink11.i = phi ptr [ %i.an, %bb.g ], [ %i.ba, %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECslFlrwjHoTci_14polars_compute.exit.i ]
  %.sink.i = phi i64 [ %i.z, %bb.g ], [ 0, %_RINvXs1_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECslFlrwjHoTci_14polars_compute.exit.i ]
  store ptr %.sink11.i, ptr %0, align 8, !dbg !23552, !alias.scope !23432
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23552
  store i64 0, ptr %i.bb, align 8, !dbg !23552, !alias.scope !23432
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23552
  store i64 %i.z, ptr %i.bc, align 8, !dbg !23552, !alias.scope !23432
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23552
  store i64 %.sink.i, ptr %i.bd, align 8, !dbg !23552, !alias.scope !23432
  br label %bb.at, !dbg !23553

bb.j:                                             ; preds = %bb.e
  %i.be = tail call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE5emptyCslFlrwjHoTci_14polars_compute(), !dbg !23554
  store ptr %i.be, ptr %0, align 8, !dbg !23442
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23442
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false), !dbg !23442
  br label %bb.at, !dbg !23555

bb.k:                                             ; preds = %bb.e
  %i.bg = load i64, ptr %i.v, align 8, !dbg !23556, !noundef !1214
  %i.bh = icmp eq i64 %i.z, %i.bg, !dbg !23557
  br i1 %i.bh, label %bb.m, label %bb.l, !dbg !23557

bb.l:                                             ; preds = %bb.k
  %i.bi = lshr i64 %i.z, 6, !dbg !23558
  %i.bj = and i64 %i.z, 63, !dbg !23559
  %.not = icmp ne i64 %i.bj, 0, !dbg !23560
  %i.bk = zext i1 %.not to i64, !dbg !23560
  %.sroa.01.0 = add nuw nsw i64 %i.bi, %i.bk, !dbg !23560
  %i.bl = shl nuw nsw i64 %.sroa.01.0, 3, !dbg !23561
  %i.bm = add nuw nsw i64 %i.bl, 8, !dbg !23561   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !23562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !23563
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef %i.bm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !23563
  %i.bn = load i64, ptr %i.o, align 8, !dbg !23563, !range !1282, !noundef !1214
  %i.bo = trunc nuw i64 %i.bn to i1, !dbg !23564
  %i.bp = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !23565
  %i.bq = load i64, ptr %i.bp, align 8, !dbg !23565, !range !1219, !noundef !1214 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !23565 ; 2 uses
  br i1 %i.bo, label %bb.o, label %bb.p, !dbg !23564, !prof !1291

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23450), !dbg !23566
  %i.bs = load ptr, ptr %1, align 8, !dbg !23567, !noalias !23450, !nonnull !1214, !noundef !1214 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !23568, !range !1320, !noalias !23450, !noundef !1214
  %i.bu = icmp eq i64 %i.bt, 3, !dbg !23569
  br i1 %i.bu, label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, label %bb.n, !dbg !23569

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24, !dbg !23570
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8, !dbg !23571, !noalias !23450 ; 0 uses
  br label %_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit, !dbg !23572

_RNvXs8_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB5_6BitmapNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit: ; preds = %bb.m, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23573
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !23574
  %i.bz = load atomic i64, ptr %i.by monotonic, align 8, !dbg !23575, !noalias !23450
  store ptr %i.bs, ptr %0, align 8, !dbg !23576, !alias.scope !23450
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23576
  %i.cb = load <2 x i64>, ptr %i.bx, align 8, !dbg !23573, !noalias !23450
  store <2 x i64> %i.cb, ptr %i.ca, align 8, !dbg !23576, !alias.scope !23450
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23576
  store i64 %i.bz, ptr %i.cc, align 8, !dbg !23576, !alias.scope !23450
  br label %bb.at, !dbg !23553

bb.o:                                             ; preds = %bb.l
  %i.cd = load i64, ptr %i.br, align 8, !dbg !23577
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bq, i64 %i.cd) #39, !dbg !23578
  unreachable, !dbg !23578

bb.p:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %i.br, align 8, !dbg !23579, !nonnull !1214, !noundef !1214 ; 6 uses
  %i.cf = icmp samesign ule i64 %i.bm, %i.bq, !dbg !23580
  tail call void @llvm.assume(i1 %i.cf), !dbg !23581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !23582
  store i64 %i.bq, ptr %i.q, align 8, !dbg !23583
  %i.cg = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !23583
  store ptr %i.ce, ptr %i.cg, align 8, !dbg !23583
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !23583 ; 2 uses
  store i64 0, ptr %i.ch, align 8, !dbg !23583
  %i.ci = load i64, ptr %i.v, align 8, !dbg !23584, !noundef !1214 ; 6 uses
  %i.cj = lshr i64 %i.ci, 8, !dbg !23585
  %.not12 = icmp ugt i64 %i.z, %i.cj, !dbg !23586
  br i1 %.not12, label %bb.q, label %bb.y, !dbg !23586

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !23587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !23587
  %i.ck = load i64, ptr %i.t, align 8, !dbg !23587, !noundef !1214 ; 2 uses
  store i64 %i.ck, ptr %i.i, align 8, !dbg !23587
  store i64 %i.ci, ptr %i.h, align 8, !dbg !23588
  %i.cl = icmp eq i64 %i.ck, %i.ci, !dbg !23589
  br i1 %i.cl, label %bb.s, label %bb.r, !dbg !23589, !prof !1327

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #39
          to label %.noexc unwind label %bb.au, !dbg !23590

.noexc:                                           ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !23591
  invoke void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap13fast_iter_u56(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noundef nonnull align 8 %1)
          to label %.noexc15 unwind label %bb.au, !dbg !23592

.noexc15:                                         ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !23593
  invoke void @_RNvMs_NtNtCs8774dFTUdNv_12polars_arrow6bitmap9immutableNtB4_6Bitmap13fast_iter_u56(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %2)
          to label %.noexc16 unwind label %bb.au, !dbg !23594

.noexc16:                                         ; preds = %.noexc15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !23595, !alias.scope !23456, !noundef !1214 ; 2 uses
  %i.co = icmp ugt i64 %i.cn, 63, !dbg !23595
  br i1 %i.co, label %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.lr.ph.i, label %.outer66._crit_edge.i, !dbg !23595

_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.lr.ph.i: ; preds = %.noexc16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  br label %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i, !dbg !23595

_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i: ; preds = %.outer66.i, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.lr.ph.i
  %i.ct = phi i64 [ %i.cn, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.lr.ph.i ], [ %i.fo, %.outer66.i ]
  %.sroa.0.0.ph85.i = phi ptr [ %i.ce, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.lr.ph.i ], [ %i.fk, %.outer66.i ]
  %.sroa.08.0.ph84.i = phi i64 [ 0, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.lr.ph.i ], [ %i.fn, %.outer66.i ] ; 4 uses
  %.sroa.018.0.ph83.i = phi i64 [ 0, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.lr.ph.i ], [ %i.fm, %.outer66.i ]
  %.pre120.i = load ptr, ptr %i.g, align 8, !dbg !23596, !alias.scope !23460
  %.pre122.i = load i32, ptr %i.cq, align 8, !dbg !23597, !alias.scope !23460
  %.pre126.i = load ptr, ptr %i.f, align 8, !dbg !23598, !alias.scope !23461
  %i.cu = load <2 x i64>, ptr %i.cr, align 8, !dbg !23599, !alias.scope !23461
  %.pre130.i = load i32, ptr %i.cs, align 8, !dbg !23600, !alias.scope !23461
  br label %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i, !dbg !23595

_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i: ; preds = %bb.w, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i
  %i.cv = phi i32 [ %.pre130.i, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i ], [ %i.es, %bb.w ], !dbg !23600 ; 2 uses
  %i.cw = phi ptr [ %.pre126.i, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i ], [ %i.et, %bb.w ], !dbg !23598 ; 2 uses
  %i.cx = phi i32 [ %.pre122.i, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i ], [ %i.eu, %bb.w ], !dbg !23597 ; 2 uses
  %i.cy = phi ptr [ %.pre120.i, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i ], [ %i.ev, %bb.w ], !dbg !23596 ; 2 uses
  %i.cz = phi i64 [ %i.ct, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i ], [ %i.er, %bb.w ]
  %.sroa.0.077.i = phi ptr [ %.sroa.0.0.ph85.i, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i ], [ %.sroa.0.3.i, %bb.w ] ; 5 uses
  %.sroa.018.076.i = phi i64 [ %.sroa.018.0.ph83.i, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i ], [ %.sroa.018.3.i, %bb.w ] ; 3 uses
  %i.da = phi <2 x i64> [ %i.cu, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i ], [ %i.ew, %bb.w ], !dbg !23599 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23460), !dbg !23601
  %i.db = load i64, ptr %i.cp, align 8, !dbg !23602, !alias.scope !23460, !noundef !1214
  %i.dc = add i64 %i.db, -7, !dbg !23603
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 7, !dbg !23604 ; 2 uses
  store ptr %i.dd, ptr %i.g, align 8, !dbg !23605, !alias.scope !23460
  store i64 %i.dc, ptr %i.cp, align 8, !dbg !23605, !alias.scope !23460
  %i.de = add i64 %i.cz, -56, !dbg !23606         ; 2 uses
  store i64 %i.de, ptr %i.cm, align 8, !dbg !23606, !alias.scope !23460
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.cy, align 1, !dbg !23607, !noalias !23460
  %i.df = and i32 %i.cx, 63, !dbg !23608
  %i.dg = zext nneg i32 %i.df to i64, !dbg !23608
  %i.dh = lshr i64 %.sroa.02.0.copyload.i.i, %i.dg, !dbg !23608
  %i.di = and i64 %i.dh, 72057594037927935, !dbg !23608 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23461), !dbg !23609
  %i.dj = extractelement <2 x i64> %i.da, i64 1, !dbg !23610
  %i.dk = icmp ugt i64 %i.dj, 63, !dbg !23610
  call void @llvm.assume(i1 %i.dk), !dbg !23610
  %i.dl = add <2 x i64> %i.da, <i64 -7, i64 -56>, !dbg !23611 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 7, !dbg !23612 ; 2 uses
  store ptr %i.dm, ptr %i.f, align 8, !dbg !23613, !alias.scope !23461
  store <2 x i64> %i.dl, ptr %i.cr, align 8, !dbg !23613, !alias.scope !23461
  %.sroa.02.0.copyload.i58.i = load i64, ptr %i.cw, align 1, !dbg !23614, !noalias !23461
  %i.dn = and i32 %i.cv, 63, !dbg !23615
  %i.do = zext nneg i32 %i.dn to i64, !dbg !23615
  %i.dp = lshr i64 %.sroa.02.0.copyload.i58.i, %i.do, !dbg !23615
  %i.dq = and i64 %i.dp, 72057594037927935, !dbg !23615 ; 3 uses
  switch i64 %i.dq, label %.outer66.i [
    i64 0, label %bb.w
    i64 72057594037927935, label %bb.x
  ], !dbg !23616

.outer66._crit_edge.i:                            ; preds = %.outer66.i, %bb.w, %.noexc16
  %.sroa.08.0.ph.lcssa.i = phi i64 [ %.sroa.08.0.ph84.i, %bb.w ], [ 0, %.noexc16 ], [ %i.fn, %.outer66.i ]
  %.sroa.018.0.lcssa.i = phi i64 [ %.sroa.018.3.i, %bb.w ], [ 0, %.noexc16 ], [ %i.fm, %.outer66.i ], !dbg !23617
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.0.3.i, %bb.w ], [ %i.ce, %.noexc16 ], [ %i.fk, %.outer66.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !23618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !dbg !23618
  %i.dr = invoke { i64, i64 } @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIter9remainder(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %.noexc17 unwind label %bb.au, !dbg !23619

.noexc17:                                         ; preds = %.outer66._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !23620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !23621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !dbg !23621
  %i.ds = invoke { i64, i64 } @_RNvMs4_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIter9remainder(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %.noexc18 unwind label %bb.au, !dbg !23622

.noexc18:                                         ; preds = %.noexc17
  %i.dt = extractvalue { i64, i64 } %i.ds, 0, !dbg !23621 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !23623
  %i.du = icmp eq i64 %i.dt, 0, !dbg !23624
  br i1 %i.du, label %_RINvNtNtCslFlrwjHoTci_14polars_compute6filter7boolean26filter_boolean_kernel_pextKb0_NvB2_15pext64_polyfillEB6_.exit, label %.lr.ph.preheader.i, !dbg !23624

.lr.ph.preheader.i:                               ; preds = %.noexc18
  %i.dv = extractvalue { i64, i64 } %i.dr, 0, !dbg !23618
  br label %bb.t, !dbg !23624

bb.t:                                             ; preds = %.outer.i, %.lr.ph.preheader.i
  %.sroa.0.192.i = phi ptr [ %i.em, %.outer.i ], [ %.sroa.0.0.lcssa.i, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.08.1.ph97.i = phi i64 [ %i.ep, %.outer.i ], [ %.sroa.08.0.ph.lcssa.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.018.191.i = phi i64 [ %i.eo, %.outer.i ], [ %.sroa.018.0.lcssa.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.039.090.i = phi i64 [ %.lcssa140, %.outer.i ], [ %i.dv, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.041.089.i = phi i64 [ %.lcssa, %.outer.i ], [ %i.dt, %.lr.ph.preheader.i ] ; 2 uses
  %i.dw = and i64 %.sroa.039.090.i, 72057594037927935, !dbg !23625 ; 2 uses
  %i.dx = and i64 %.sroa.041.089.i, 72057594037927935, !dbg !23626 ; 2 uses
  %i.dy = lshr i64 %.sroa.039.090.i, 56, !dbg !23627 ; 2 uses
  %i.dz = lshr i64 %.sroa.041.089.i, 56, !dbg !23628 ; 3 uses
  switch i64 %i.dx, label %.outer.i [
    i64 0, label %bb.u
    i64 72057594037927935, label %bb.v
  ], !dbg !23629

bb.u:                                             ; preds = %bb.v, %bb.t
  %.sroa.018.2.i = phi i64 [ %.sroa.018.191.i, %bb.t ], [ %i.ee, %bb.v ], !dbg !23617
  %.sroa.0.2.i = phi ptr [ %.sroa.0.192.i, %bb.t ], [ %i.ed, %bb.v ]
  %i.ea = icmp eq i64 %i.dz, 0, !dbg !23624
  br i1 %i.ea, label %_RINvNtNtCslFlrwjHoTci_14polars_compute6filter7boolean26filter_boolean_kernel_pextKb0_NvB2_15pext64_polyfillEB6_.exit, label %.outer.i, !dbg !23624

bb.v:                                             ; preds = %bb.t
  %i.eb = shl nuw nsw i64 %i.dw, %.sroa.08.1.ph97.i, !dbg !23630
  %i.ec = or i64 %i.eb, %.sroa.018.191.i, !dbg !23631 ; 2 uses
  store i64 %i.ec, ptr %.sroa.0.192.i, align 1, !dbg !23632
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.192.i, i64 7, !dbg !23633
  %i.ee = lshr i64 %i.ec, 56, !dbg !23634
  br label %bb.u, !dbg !23635

.outer.i:                                         ; preds = %bb.u, %bb.t
  %.sroa.0.192.i.lcssa = phi ptr [ %.sroa.0.192.i, %bb.t ], [ %.sroa.0.2.i, %bb.u ] ; 2 uses
  %.sroa.018.191.i.lcssa = phi i64 [ %.sroa.018.191.i, %bb.t ], [ %.sroa.018.2.i, %bb.u ]
  %.lcssa144 = phi i64 [ %i.dw, %bb.t ], [ %i.dy, %bb.u ], !dbg !23625
  %.lcssa142 = phi i64 [ %i.dx, %bb.t ], [ %i.dz, %bb.u ], !dbg !23626 ; 2 uses
  %.lcssa140 = phi i64 [ %i.dy, %bb.t ], [ 0, %bb.u ], !dbg !23627
  %.lcssa = phi i64 [ %i.dz, %bb.t ], [ 0, %bb.u ], !dbg !23628 ; 2 uses
  %i.ef = call range(i64 0, 57) i64 @llvm.ctpop.i64(i64 %.lcssa142), !dbg !23636 ; 2 uses
  %i.eg = trunc nuw nsw i64 %i.ef to i32, !dbg !23636
  %i.eh = call fastcc noundef i64 @_RNvYNvNtNtCslFlrwjHoTci_14polars_compute6filter7boolean15pext64_polyfillINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTyymEE4callB8_(i64 noundef %.lcssa144, i64 noundef %.lcssa142, i32 noundef %i.eg), !dbg !23637
  %i.ei = shl i64 %i.eh, %.sroa.08.1.ph97.i, !dbg !23638
  %i.ej = or i64 %i.ei, %.sroa.018.191.i.lcssa, !dbg !23639 ; 2 uses
  %i.ek = add nuw nsw i64 %i.ef, %.sroa.08.1.ph97.i, !dbg !23640 ; 3 uses
  store i64 %i.ej, ptr %.sroa.0.192.i.lcssa, align 1, !dbg !23641
  %i.el = lshr i64 %i.ek, 3, !dbg !23642
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.192.i.lcssa, i64 %i.el, !dbg !23643
  %i.en = and i64 %i.ek, -8, !dbg !23644
  %i.eo = lshr i64 %i.ej, %i.en, !dbg !23645
  %i.ep = and i64 %i.ek, 7, !dbg !23646
  %i.eq = icmp eq i64 %.lcssa, 0, !dbg !23624
  br i1 %i.eq, label %_RINvNtNtCslFlrwjHoTci_14polars_compute6filter7boolean26filter_boolean_kernel_pextKb0_NvB2_15pext64_polyfillEB6_.exit, label %bb.t, !dbg !23624

bb.w:                                             ; preds = %bb.x, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i
  %i.er = phi i64 [ %i.de, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i ], [ %.pre131.i, %bb.x ], !dbg !23595 ; 2 uses
  %i.es = phi i32 [ %i.cv, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i ], [ %.pre129.i, %bb.x ]
  %i.et = phi ptr [ %i.dm, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i ], [ %.pre125.i, %bb.x ]
  %i.eu = phi i32 [ %i.cx, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i ], [ %.pre121.i, %bb.x ]
  %i.ev = phi ptr [ %i.dd, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i ], [ %.pre.i, %bb.x ]
  %.sroa.018.3.i = phi i64 [ %.sroa.018.076.i, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i ], [ %i.fb, %bb.x ], !dbg !23617 ; 2 uses
  %.sroa.0.3.i = phi ptr [ %.sroa.0.077.i, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i ], [ %i.fa, %bb.x ] ; 2 uses
  %i.ew = phi <2 x i64> [ %i.dl, %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i ], [ %i.fc, %bb.x ]
  %i.ex = icmp ugt i64 %i.er, 63, !dbg !23595
  br i1 %i.ex, label %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i, label %.outer66._crit_edge.i, !dbg !23595

bb.x:                                             ; preds = %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i
  %i.ey = shl nuw nsw i64 %i.di, %.sroa.08.0.ph84.i, !dbg !23647
  %i.ez = or i64 %i.ey, %.sroa.018.076.i, !dbg !23648 ; 2 uses
  store i64 %i.ez, ptr %.sroa.0.077.i, align 1, !dbg !23649
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.077.i, i64 7, !dbg !23650
  %i.fb = lshr i64 %i.ez, 56, !dbg !23651
  %.pre.i = load ptr, ptr %i.g, align 8, !dbg !23596, !alias.scope !23460
  %.pre121.i = load i32, ptr %i.cq, align 8, !dbg !23597, !alias.scope !23460
  %.pre125.i = load ptr, ptr %i.f, align 8, !dbg !23598, !alias.scope !23461
  %i.fc = load <2 x i64>, ptr %i.cr, align 8, !dbg !23599, !alias.scope !23461
  %.pre129.i = load i32, ptr %i.cs, align 8, !dbg !23600, !alias.scope !23461
  %.pre131.i = load i64, ptr %i.cm, align 8, !dbg !23595, !alias.scope !23472
  br label %bb.w, !dbg !23652

.outer66.i:                                       ; preds = %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.i
  %i.fd = call range(i64 0, 57) i64 @llvm.ctpop.i64(i64 %i.dq), !dbg !23653 ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32, !dbg !23653
  %i.ff = call fastcc noundef i64 @_RNvYNvNtNtCslFlrwjHoTci_14polars_compute6filter7boolean15pext64_polyfillINtNtNtCscgRAwXFJnXP_4core3ops8function2FnTyymEE4callB8_(i64 noundef %i.di, i64 noundef %i.dq, i32 noundef %i.fe), !dbg !23654
  %i.fg = shl i64 %i.ff, %.sroa.08.0.ph84.i, !dbg !23655
  %i.fh = or i64 %i.fg, %.sroa.018.076.i, !dbg !23656 ; 2 uses
  %i.fi = add nuw nsw i64 %i.fd, %.sroa.08.0.ph84.i, !dbg !23657 ; 3 uses
  store i64 %i.fh, ptr %.sroa.0.077.i, align 1, !dbg !23658
  %i.fj = lshr i64 %i.fi, 3, !dbg !23659
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.077.i, i64 %i.fj, !dbg !23660 ; 2 uses
  %i.fl = and i64 %i.fi, 56, !dbg !23661
  %i.fm = lshr i64 %i.fh, %i.fl, !dbg !23661      ; 2 uses
  %i.fn = and i64 %i.fi, 7, !dbg !23662           ; 2 uses
  %i.fo = load i64, ptr %i.cm, align 8, !dbg !23595, !alias.scope !23476, !noundef !1214 ; 2 uses
  %i.fp = icmp ugt i64 %i.fo, 63, !dbg !23595
  br i1 %i.fp, label %_RNvXs5_NtNtCs8774dFTUdNv_12polars_arrow6bitmap8iteratorNtB5_17FastU56BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit59.lr.ph.i, label %.outer66._crit_edge.i, !dbg !23595

_RINvNtNtCslFlrwjHoTci_14polars_compute6filter7boolean26filter_boolean_kernel_pextKb0_NvB2_15pext64_polyfillEB6_.exit: ; preds = %bb.u, %.outer.i, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !23663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !23664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !23665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !23665
  br label %bb.an, !dbg !23665

bb.y:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !23666
  %i.fq = load i64, ptr %i.t, align 8, !dbg !23666, !noundef !1214 ; 2 uses
  store i64 %i.fq, ptr %i.c, align 8, !dbg !23666
  store i64 %i.ci, ptr %i.b, align 8, !dbg !23667
  %i.fr = icmp eq i64 %i.fq, %i.ci, !dbg !23668
  br i1 %i.fr, label %bb.aa, label %bb.z, !dbg !23668, !prof !1327

bb.z:                                             ; preds = %bb.y
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #40
          to label %.noexc24 unwind label %bb.au, !dbg !23669

.noexc24:                                         ; preds = %bb.z
  unreachable, !dbg !23669

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23670
  %i.fs = load ptr, ptr %2, align 8, !dbg !23671, !nonnull !1214, !noundef !1214 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40, !dbg !23672
  %i.fu = load i64, ptr %i.ft, align 8, !dbg !23672, !noundef !1214
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 32, !dbg !23673
  %i.fw = load ptr, ptr %i.fv, align 8, !dbg !23673, !noundef !1214
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23674
  %i.fy = load i64, ptr %i.fx, align 8, !dbg !23674, !noundef !1214
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7alignedINtB2_18AlignedBitmapSliceyE3newCslFlrwjHoTci_14polars_compute(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fw, i64 noundef %i.fu, i64 noundef %i.fy, i64 noundef %i.ci)
          to label %.noexc25 unwind label %bb.au, !dbg !23675

.noexc25:                                         ; preds = %bb.aa
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !23676
  %i.ga = load i32, ptr %i.fz, align 8, !dbg !23676, !noundef !1214 ; 2 uses
  %i.gb = zext i32 %i.ga to i64, !dbg !23676      ; 2 uses
  %.not.i19 = icmp eq i32 %i.ga, 0, !dbg !23677
  br i1 %.not.i19, label %.loopexit59.i, label %bb.ab, !dbg !23677

.loopexit59.i:                                    ; preds = %bb.am, %bb.ab, %.noexc25
  %.sroa.022.0.i = phi i64 [ 0, %.noexc25 ], [ 0, %bb.ab ], [ %.sroa.022.8.i, %bb.am ], !dbg !23678 ; 2 uses
  %.sroa.012.0.i = phi i64 [ 0, %.noexc25 ], [ 0, %bb.ab ], [ %.sroa.012.8.i, %bb.am ], !dbg !23679 ; 2 uses
  %.sroa.0.0.i21 = phi ptr [ %i.ce, %.noexc25 ], [ %i.ce, %bb.ab ], [ %.sroa.0.8.i, %bb.am ] ; 2 uses
  %i.gc = load ptr, ptr %i.a, align 8, !dbg !23680, !nonnull !1214, !align !1280, !noundef !1214 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23680
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !23680, !noundef !1214 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.ge, 3, !dbg !23681
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.idx.i, !dbg !23681
  %i.gg = icmp eq i64 %i.ge, 0, !dbg !23682
  br i1 %i.gg, label %._crit_edge83.i, label %.lr.ph82.i, !dbg !23683

.lr.ph82.i:                                       ; preds = %.loopexit59.i
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.ad, !dbg !23683

bb.ab:                                            ; preds = %.noexc25
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !23684
  %i.gj = load i64, ptr %i.gi, align 8, !dbg !23684, !noundef !1214 ; 2 uses
  %.not5460.i = icmp eq i64 %i.gj, 0, !dbg !23685
  br i1 %.not5460.i, label %.loopexit59.i, label %.lr.ph.i20, !dbg !23685

.lr.ph.i20:                                       ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre98.i = load ptr, ptr %1, align 8, !dbg !23686
  %.pre100.i = load i64, ptr %i.gk, align 8, !dbg !23687
  br label %bb.ac, !dbg !23685

bb.ac:                                            ; preds = %bb.am, %.lr.ph.i20
  %i.gl = phi i64 [ %.pre100.i, %.lr.ph.i20 ], [ %i.jv, %bb.am ], !dbg !23687 ; 2 uses
  %i.gm = phi ptr [ %.pre98.i, %.lr.ph.i20 ], [ %i.jw, %bb.am ], !dbg !23686 ; 3 uses
  %.sroa.0.164.i = phi ptr [ %i.ce, %.lr.ph.i20 ], [ %.sroa.0.8.i, %bb.am ] ; 3 uses
  %.sroa.012.163.i = phi i64 [ 0, %.lr.ph.i20 ], [ %.sroa.012.8.i, %bb.am ] ; 2 uses
  %.sroa.022.162.i = phi i64 [ 0, %.lr.ph.i20 ], [ %.sroa.022.8.i, %bb.am ]
  %.sroa.029.061.i = phi i64 [ %i.gj, %.lr.ph.i20 ], [ %i.jy, %bb.am ] ; 3 uses
  %i.gn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.029.061.i, i1 true), !dbg !23688
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 40, !dbg !23689
  %i.gp = load i64, ptr %i.go, align 8, !dbg !23689, !noundef !1214
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 32, !dbg !23690
  %i.gr = load ptr, ptr %i.gq, align 8, !dbg !23690, !noundef !1214
  %i.gs = add i64 %i.gn, %i.gl, !dbg !23687       ; 2 uses
  %i.gt = lshr i64 %i.gs, 3, !dbg !23691          ; 2 uses
  %i.gu = icmp ult i64 %i.gt, %i.gp, !dbg !23692
  tail call void @llvm.assume(i1 %i.gu), !dbg !23693
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gt, !dbg !23694
  %i.gw = load i8, ptr %i.gv, align 1, !dbg !23695, !noundef !1214
  %i.gx = trunc i64 %i.gs to i8, !dbg !23696
  %i.gy = and i8 %i.gx, 7, !dbg !23696
  %i.gz = lshr i8 %i.gw, %i.gy, !dbg !23696
  %i.ha = and i8 %i.gz, 1, !dbg !23697
  %i.hb = zext nneg i8 %i.ha to i64, !dbg !23697
  %i.hc = and i64 %.sroa.012.163.i, 63, !dbg !23697
  %i.hd = shl nuw i64 %i.hb, %i.hc, !dbg !23697
  %i.he = or i64 %i.hd, %.sroa.022.162.i, !dbg !23698 ; 2 uses
  %i.hf = add i64 %.sroa.012.163.i, 1, !dbg !23699 ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 64, !dbg !23700
  br i1 %i.hg, label %bb.al, label %bb.am, !dbg !23700

bb.ad:                                            ; preds = %._crit_edge.i, %.lr.ph82.i
  %.sroa.0.280.i = phi ptr [ %.sroa.0.0.i21, %.lr.ph82.i ], [ %.sroa.0.3.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.07.179.i = phi i64 [ %i.gb, %.lr.ph82.i ], [ %i.hl, %._crit_edge.i ] ; 2 uses
  %.sroa.012.278.i = phi i64 [ %.sroa.012.0.i, %.lr.ph82.i ], [ %.sroa.012.3.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.022.277.i = phi i64 [ %.sroa.022.0.i, %.lr.ph82.i ], [ %.sroa.022.3.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.034.076.i = phi ptr [ %i.gc, %.lr.ph82.i ], [ %i.hh, %._crit_edge.i ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.034.076.i, i64 8, !dbg !23701 ; 2 uses
  %i.hi = load i64, ptr %.sroa.034.076.i, align 8, !dbg !23702, !noundef !1214 ; 2 uses
  %.not5567.i = icmp eq i64 %i.hi, 0, !dbg !23703
  br i1 %.not5567.i, label %._crit_edge.i, label %.lr.ph72.preheader.i, !dbg !23703

.lr.ph72.preheader.i:                             ; preds = %bb.ad
  %.pre102.i = load ptr, ptr %1, align 8, !dbg !23704
  %.pre104.i = load i64, ptr %i.gh, align 8, !dbg !23705
  br label %.lr.ph72.i, !dbg !23706

._crit_edge83.i:                                  ; preds = %._crit_edge.i, %.loopexit59.i
  %.sroa.022.2.lcssa.i = phi i64 [ %.sroa.022.0.i, %.loopexit59.i ], [ %.sroa.022.3.lcssa.i, %._crit_edge.i ], !dbg !23678 ; 3 uses
  %.sroa.012.2.lcssa.i = phi i64 [ %.sroa.012.0.i, %.loopexit59.i ], [ %.sroa.012.3.lcssa.i, %._crit_edge.i ], !dbg !23679 ; 3 uses
  %.sroa.07.1.lcssa.i = phi i64 [ %i.gb, %.loopexit59.i ], [ %i.hl, %._crit_edge.i ], !dbg !23707
  %.sroa.0.2.lcssa.i = phi ptr [ %.sroa.0.0.i21, %.loopexit59.i ], [ %.sroa.0.3.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 36, !dbg !23708
  %i.hk = load i32, ptr %i.hj, align 4, !dbg !23708, !noundef !1214
  %.not56.i = icmp eq i32 %i.hk, 0, !dbg !23709
  br i1 %.not56.i, label %.loopexit.i, label %bb.ag, !dbg !23709

._crit_edge.i:                                    ; preds = %bb.af, %bb.ad
  %.sroa.022.3.lcssa.i = phi i64 [ %.sroa.022.277.i, %bb.ad ], [ %.sroa.022.4.i, %bb.af ], !dbg !23710 ; 2 uses
  %.sroa.012.3.lcssa.i = phi i64 [ %.sroa.012.278.i, %bb.ad ], [ %.sroa.012.4.i, %bb.af ], !dbg !23711 ; 2 uses
  %.sroa.0.3.lcssa.i = phi ptr [ %.sroa.0.280.i, %bb.ad ], [ %.sroa.0.4.i, %bb.af ] ; 2 uses
  %i.hl = add i64 %.sroa.07.179.i, 64, !dbg !23712 ; 2 uses
  %i.hm = icmp eq ptr %i.hh, %i.gf, !dbg !23682
  br i1 %i.hm, label %._crit_edge83.i, label %bb.ad, !dbg !23683

.lr.ph72.i:                                       ; preds = %bb.af, %.lr.ph72.preheader.i
  %i.hn = phi i64 [ %i.il, %bb.af ], [ %.pre104.i, %.lr.ph72.preheader.i ], !dbg !23705 ; 2 uses
  %i.ho = phi ptr [ %i.im, %bb.af ], [ %.pre102.i, %.lr.ph72.preheader.i ], !dbg !23704 ; 3 uses
  %.sroa.0.371.i = phi ptr [ %.sroa.0.4.i, %bb.af ], [ %.sroa.0.280.i, %.lr.ph72.preheader.i ] ; 3 uses
  %.sroa.012.370.i = phi i64 [ %.sroa.012.4.i, %bb.af ], [ %.sroa.012.278.i, %.lr.ph72.preheader.i ] ; 2 uses
  %.sroa.022.369.i = phi i64 [ %.sroa.022.4.i, %bb.af ], [ %.sroa.022.277.i, %.lr.ph72.preheader.i ]
  %.sroa.036.068.i = phi i64 [ %i.io, %bb.af ], [ %i.hi, %.lr.ph72.preheader.i ] ; 3 uses
  %i.hp = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.036.068.i, i1 true), !dbg !23713
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 40, !dbg !23714
  %i.hr = load i64, ptr %i.hq, align 8, !dbg !23714, !noundef !1214
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 32, !dbg !23715
  %i.ht = load ptr, ptr %i.hs, align 8, !dbg !23715, !noundef !1214
  %i.hu = add i64 %i.hn, %.sroa.07.179.i, !dbg !23716
  %i.hv = add i64 %i.hu, %i.hp, !dbg !23705       ; 2 uses
  %i.hw = lshr i64 %i.hv, 3, !dbg !23717          ; 2 uses
  %i.hx = icmp ult i64 %i.hw, %i.hr, !dbg !23718
  tail call void @llvm.assume(i1 %i.hx), !dbg !23719
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hw, !dbg !23720
  %i.hz = load i8, ptr %i.hy, align 1, !dbg !23721, !noundef !1214
  %i.ia = trunc i64 %i.hv to i8, !dbg !23722
  %i.ib = and i8 %i.ia, 7, !dbg !23722
  %i.ic = lshr i8 %i.hz, %i.ib, !dbg !23722
  %i.id = and i8 %i.ic, 1, !dbg !23723
  %i.ie = zext nneg i8 %i.id to i64, !dbg !23723
  %i.if = and i64 %.sroa.012.370.i, 63, !dbg !23723
  %i.ig = shl nuw i64 %i.ie, %i.if, !dbg !23723
  %i.ih = or i64 %i.ig, %.sroa.022.369.i, !dbg !23724 ; 2 uses
  %i.ii = add i64 %.sroa.012.370.i, 1, !dbg !23725 ; 2 uses
  %i.ij = icmp eq i64 %i.ii, 64, !dbg !23706
  br i1 %i.ij, label %bb.ae, label %bb.af, !dbg !23706

bb.ae:                                            ; preds = %.lr.ph72.i
  store i64 %i.ih, ptr %.sroa.0.371.i, align 1, !dbg !23726
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.371.i, i64 8, !dbg !23727
  %.pre101.i = load ptr, ptr %1, align 8, !dbg !23704
  %.pre103.i = load i64, ptr %i.gh, align 8, !dbg !23705
  br label %bb.af, !dbg !23728

bb.af:                                            ; preds = %bb.ae, %.lr.ph72.i
  %i.il = phi i64 [ %.pre103.i, %bb.ae ], [ %i.hn, %.lr.ph72.i ]
  %i.im = phi ptr [ %.pre101.i, %bb.ae ], [ %i.ho, %.lr.ph72.i ]
  %.sroa.022.4.i = phi i64 [ 0, %bb.ae ], [ %i.ih, %.lr.ph72.i ], !dbg !23729 ; 2 uses
  %.sroa.012.4.i = phi i64 [ 0, %bb.ae ], [ %i.ii, %.lr.ph72.i ], !dbg !23729 ; 2 uses
  %.sroa.0.4.i = phi ptr [ %i.ik, %bb.ae ], [ %.sroa.0.371.i, %.lr.ph72.i ] ; 2 uses
  %i.in = add i64 %.sroa.036.068.i, -1, !dbg !23730
  %i.io = and i64 %i.in, %.sroa.036.068.i, !dbg !23731 ; 2 uses
  %.not55.i = icmp eq i64 %i.io, 0, !dbg !23703
  br i1 %.not55.i, label %._crit_edge.i, label %.lr.ph72.i, !dbg !23703

bb.ag:                                            ; preds = %._crit_edge83.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !23732
  %i.iq = load i64, ptr %i.ip, align 8, !dbg !23732, !noundef !1214 ; 2 uses
  %.not5788.i = icmp eq i64 %i.iq, 0, !dbg !23733
  br i1 %.not5788.i, label %.loopexit.i, label %.lr.ph94.i, !dbg !23733

.lr.ph94.i:                                       ; preds = %bb.ag
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre106.i = load ptr, ptr %1, align 8, !dbg !23734
  %.pre108.i = load i64, ptr %i.ir, align 8, !dbg !23735
  br label %bb.ah, !dbg !23733

.loopexit.i:                                      ; preds = %bb.ak, %bb.ag, %._crit_edge83.i
  %.sroa.022.5.i = phi i64 [ %.sroa.022.2.lcssa.i, %._crit_edge83.i ], [ %.sroa.022.2.lcssa.i, %bb.ag ], [ %.sroa.022.7.i, %bb.ak ], !dbg !23678
  %.sroa.012.5.i = phi i64 [ %.sroa.012.2.lcssa.i, %._crit_edge83.i ], [ %.sroa.012.2.lcssa.i, %bb.ag ], [ %.sroa.012.7.i, %bb.ak ], !dbg !23679
  %.sroa.0.5.i = phi ptr [ %.sroa.0.2.lcssa.i, %._crit_edge83.i ], [ %.sroa.0.2.lcssa.i, %bb.ag ], [ %.sroa.0.7.i, %bb.ak ]
  %.not58.i = icmp eq i64 %.sroa.012.5.i, 0, !dbg !23736
  br i1 %.not58.i, label %_RNvNtNtCslFlrwjHoTci_14polars_compute6filter7boolean28filter_boolean_kernel_sparse.exit, label %bb.ai, !dbg !23736
end_hunk_0
