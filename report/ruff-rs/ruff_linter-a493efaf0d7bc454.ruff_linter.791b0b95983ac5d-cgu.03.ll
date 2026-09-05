Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.03?download=true
inline.NumInlined: 4272
inline.NumDeleted: 1863
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvMs9_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules16sequence_sortingNtB5_28MultilineStringSequenceValue23into_sorted_source_code:bb.a
bb.k:                                             ; preds = %bb.l, %.split.i.i.i, %bb.i
  %i.bq = icmp eq i32 %spec.select.i, 0
  br i1 %i.bq, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i, label %bb.m

.split.i.i.i:                                     ; preds = %bb.j
  %i.br = icmp eq i64 %.val20.i, %i.bn
  br i1 %i.br, label %bb.k, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.l:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bn
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !5604, !noalias !5602, !noundef !6
  %i.bu = icmp sgt i8 %i.bt, -65
  br i1 %i.bu, label %bb.k, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.m:                                             ; preds = %bb.k
  %.not6.i.i.i = icmp ugt i64 %.val20.i, %i.bo
  br i1 %.not6.i.i.i, label %bb.n, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.m
  %i.bv = icmp eq i64 %.val20.i, %i.bo
  br i1 %i.bv, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bo
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !5604, !noalias !5602, !noundef !6
  %i.by = icmp sgt i8 %i.bx, -65
  br i1 %i.by, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i: ; preds = %bb.n, %.split7.i.i.i, %bb.l, %.split.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val20.i, i64 noundef %i.bn, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #55
          to label %.noexc43 unwind label %bb.t

.noexc43:                                         ; preds = %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i
  unreachable

_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i: ; preds = %bb.n, %.split7.i.i.i, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bn ; 2 uses
  %i.ca = sub nuw nsw i64 %i.bo, %i.bn            ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bo ; 4 uses
  %i.cc = icmp eq i32 %spec.select.i, %i.aq
  br i1 %i.cc, label %.split.i, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 -1
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !5605, !noalias !5606, !noundef !6 ; 3 uses
  %i.cf = icmp sgt i8 %i.ce, -1
  br i1 %i.cf, label %bb.p, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.i.i: ; preds = %bb.o
  %i.cg = icmp ne i64 %i.ca, 1
  call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.cb, i64 -2
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !5605, !noalias !5606, !noundef !6 ; 3 uses
  %i.cj = and i8 %i.ci, 31
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = icmp slt i8 %i.ci, -64
  br i1 %i.cl, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.i.i, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cm = zext nneg i8 %i.ce to i32
  br label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.i.i
  %i.cn = icmp ne i64 %i.ca, 2
  call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds i8, ptr %i.cb, i64 -3
  %i.cp = load i8, ptr %i.co, align 1, !alias.scope !5605, !noalias !5606, !noundef !6 ; 3 uses
  %i.cq = and i8 %i.cp, 15
  %i.cr = zext nneg i8 %i.cq to i32
  %i.cs = icmp slt i8 %i.cp, -64
  br i1 %i.cs, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.i.i, label %bb.r

bb.q:                                             ; preds = %bb.r, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.i.i
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.dj, %bb.r ], [ %i.ck, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i.i.i.i ]
  %i.ct = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cu = and i8 %i.ce, 63
  %i.cv = zext nneg i8 %i.cu to i32
  %i.cw = or disjoint i32 %i.ct, %i.cv
  br label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.i.i
  %i.cx = icmp ne i64 %i.ca, 3
  call void @llvm.assume(i1 %i.cx)
  %i.cy = getelementptr inbounds i8, ptr %i.cb, i64 -4
  %i.cz = load i8, ptr %i.cy, align 1, !alias.scope !5605, !noalias !5606, !noundef !6
  %i.da = and i8 %i.cz, 7
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = shl nuw nsw i32 %i.db, 6
  %i.dd = and i8 %i.cp, 63
  %i.de = zext nneg i8 %i.dd to i32
  %i.df = or disjoint i32 %i.dc, %i.de
  br label %bb.r

bb.r:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.i.i
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.df, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i.i.i ], [ %i.cr, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i.i.i.i ]
  %i.dg = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.dh = and i8 %i.ci, 63
  %i.di = zext nneg i8 %i.dh to i32
  %i.dj = or disjoint i32 %i.dg, %i.di
  br label %bb.q

_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.q, %bb.p
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.cm, %bb.p ], [ %i.cw, %bb.q ] ; 2 uses
  %i.dk = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.dk)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %.split.i [
    i32 13, label %bb.s
    i32 10, label %bb.s
  ]

.split.i:                                         ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCsEhZmuQNqkz_11ruff_linter.exit.i, %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5603
  %i.dl = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.ca), !noalias !5602 ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dl, 0
  %i.dn = extractvalue { ptr, i64 } %i.dl, 1
  store ptr %i.dm, ptr %i.n, align 8, !noalias !5603
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.dn, ptr %i.do, align 8, !noalias !5603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5603
  store ptr %i.n, ptr %i.m, align 8, !noalias !5603
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !5603
  %i.dp = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.o, ptr %i.dp, align 8, !noalias !5603
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !5603
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @265, ptr noundef nonnull %i.m)
          to label %.noexc44 unwind label %bb.t

.noexc44:                                         ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5603
  %.pre = load ptr, ptr %3, align 8, !noalias !5607
  %.pre113 = load i64, ptr %i.bg, align 8, !noalias !5607
  br label %bb.u

bb.s:                                             ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_suffix_ofCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.bz, ptr %i.dq, align 8, !alias.scope !5602, !noalias !5608
  %i.dr = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.ca, ptr %i.dr, align 8, !alias.scope !5602, !noalias !5608
  store i64 -1, ptr %i.t, align 8, !alias.scope !5602, !noalias !5608
  br label %bb.u

.body84:                                          ; preds = %bb.dd, %bb.t, %.body79
  %.pn34 = phi { ptr, i32 } [ %.pn32, %.body79 ], [ %i.ds, %bb.t ], [ %i.sy, %bb.dd ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x) #57
          to label %.body90 unwind label %bb.dj

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i83, %.split.i, %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i, %bb.h, %.noexc, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body84

bb.u:                                             ; preds = %bb.s, %.noexc44
  %i.dt = phi i64 [ %.val20.i, %bb.s ], [ %.pre113, %.noexc44 ]
  %i.du = phi ptr [ %.val.i, %bb.s ], [ %.pre, %.noexc44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !6 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dz = load i32, ptr %i.dy, align 4, !noundef !6 ; 6 uses
  %i.ea = load ptr, ptr %i.y, align 8, !nonnull !6, !noundef !6
  %i.eb = load i64, ptr %i.ax, align 8, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !5609)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %switch.load189, ptr %i.l, align 8, !noalias !5607
  %i.ec = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %switch.ext, ptr %i.ec, align 8, !noalias !5607
  store ptr %i.ea, ptr %i.k, align 8, !noalias !5607
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.eb, ptr %i.ed, align 8, !noalias !5607
  %i.ee = invoke noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges8line_end(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.dt, i32 noundef %i.ak)
          to label %.noexc55 unwind label %bb.ay  ; 2 uses

.noexc55:                                         ; preds = %bb.u
  %i.ef = load ptr, ptr %3, align 8, !noalias !5607, !nonnull !6, !noundef !6
  %i.eg = load i64, ptr %i.bg, align 8, !noalias !5607, !noundef !6
  %i.eh = invoke noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges8line_end(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ef, i64 noundef %i.eg, i32 noundef %i.dz)
          to label %.noexc56 unwind label %bb.ay

.noexc56:                                         ; preds = %.noexc55
  %i.ei = icmp eq i32 %i.ee, %i.eh
  %spec.select.i45 = select i1 %i.ei, i32 %i.ak, i32 %i.ee ; 5 uses
  %.not.i46 = icmp ugt i32 %spec.select.i45, %i.dz
  br i1 %.not.i46, label %bb.v, label %bb.w, !prof !9

bb.v:                                             ; preds = %.noexc56
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @375) #55
          to label %.noexc57 unwind label %bb.ay

.noexc57:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %.noexc56
  %.val.i47 = load ptr, ptr %3, align 8, !noalias !5607, !nonnull !6, !noundef !6 ; 6 uses
  %.val60.i = load i64, ptr %i.bg, align 8, !noalias !5607, !noundef !6 ; 5 uses
  %i.ej = zext i32 %spec.select.i45 to i64        ; 7 uses
  %i.ek = zext i32 %i.dz to i64                   ; 8 uses
  %i.el = icmp eq i32 %spec.select.i45, 0
  br i1 %i.el, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not5.i.i.i48 = icmp ugt i64 %.val60.i, %i.ej
  br i1 %.not5.i.i.i48, label %bb.z, label %.split.i.i.i49

bb.y:                                             ; preds = %bb.z, %.split.i.i.i49, %bb.w
  %i.em = icmp eq i32 %i.dz, 0
  br i1 %i.em, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i53, label %bb.aa

.split.i.i.i49:                                   ; preds = %bb.x
  %i.en = icmp eq i64 %.val60.i, %i.ej
  br i1 %i.en, label %bb.y, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i50

bb.z:                                             ; preds = %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i47, i64 %i.ej
  %i.ep = load i8, ptr %i.eo, align 1, !alias.scope !5610, !noalias !5609, !noundef !6
  %i.eq = icmp sgt i8 %i.ep, -65
  br i1 %i.eq, label %bb.y, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i50

bb.aa:                                            ; preds = %bb.y
  %.not6.i.i.i51 = icmp ugt i64 %.val60.i, %i.ek
  br i1 %.not6.i.i.i51, label %bb.ab, label %.split7.i.i.i52

.split7.i.i.i52:                                  ; preds = %bb.aa
  %i.er = icmp eq i64 %.val60.i, %i.ek
  br i1 %i.er, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i53, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i50

bb.ab:                                            ; preds = %bb.aa
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i47, i64 %i.ek
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !5610, !noalias !5609, !noundef !6
  %i.eu = icmp sgt i8 %i.et, -65
  br i1 %i.eu, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i53, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i50

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i50: ; preds = %bb.ab, %.split7.i.i.i52, %bb.z, %.split.i.i.i49
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i47, i64 noundef %.val60.i, i64 noundef %i.ej, i64 noundef %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #55
          to label %.noexc58 unwind label %bb.ay

.noexc58:                                         ; preds = %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i.i50
  unreachable

_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i53: ; preds = %bb.ab, %.split7.i.i.i52, %bb.y
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.i47, i64 %i.ej ; 14 uses
  %i.ew = sub nuw nsw i64 %i.ek, %i.ej            ; 12 uses
  %i.ex = icmp samesign ult i64 %i.ew, 3
  br i1 %i.ex, label %bb.ad, label %.thread.i

_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.ap, %bb.ai, %bb.ad
  %i.ey = icmp samesign eq i64 %i.ew, 0
  br i1 %i.ey, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i, label %.thread.i

.thread.i:                                        ; preds = %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter.exit.i, %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i53
  %i.ez = load i8, ptr %i.ev, align 1, !alias.scope !5611, !noalias !5612, !noundef !6 ; 5 uses
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %bb.ac, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i: ; preds = %.thread.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.fc = and i8 %i.ez, 31
  %i.fd = zext nneg i8 %i.fc to i32               ; 3 uses
  %i.fe = icmp samesign ne i64 %i.ew, 1
  call void @llvm.assume(i1 %i.fe)
  %i.ff = load i8, ptr %i.fb, align 1, !alias.scope !5611, !noalias !5612, !noundef !6
  %i.fg = shl nuw nsw i32 %i.fd, 6
  %i.fh = and i8 %i.ff, 63
  %i.fi = zext nneg i8 %i.fh to i32               ; 2 uses
  %i.fj = or disjoint i32 %i.fg, %i.fi
  %i.fk = icmp samesign ugt i8 %i.ez, -33
  br i1 %i.fk, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.i

bb.ac:                                            ; preds = %.thread.i
  %i.fl = zext nneg i8 %i.ez to i32
  br label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.fn = icmp samesign ne i64 %i.ew, 2
  call void @llvm.assume(i1 %i.fn)
  %i.fo = load i8, ptr %i.fm, align 1, !alias.scope !5611, !noalias !5612, !noundef !6
  %i.fp = shl nuw nsw i32 %i.fi, 6
  %i.fq = and i8 %i.fo, 63
  %i.fr = zext nneg i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fp, %i.fr            ; 2 uses
  %i.ft = shl nuw nsw i32 %i.fd, 12
  %i.fu = or disjoint i32 %i.fs, %i.ft
  %i.fv = icmp samesign ugt i8 %i.ez, -17
  br i1 %i.fv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ev, i64 3
  %i.fx = icmp samesign ne i64 %i.ew, 3
  call void @llvm.assume(i1 %i.fx)
  %i.fy = load i8, ptr %i.fw, align 1, !alias.scope !5611, !noalias !5612, !noundef !6
  %i.fz = shl nuw nsw i32 %i.fd, 18
  %i.ga = and i32 %i.fz, 1835008
  %i.gb = shl nuw nsw i32 %i.fs, 6
  %i.gc = and i8 %i.fy, 63
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = or disjoint i32 %i.gb, %i.gd
  %i.gf = or disjoint i32 %i.ge, %i.ga
  br label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i, %bb.ac, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.fu, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i ], [ %i.gf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i ], [ %i.fj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i ], [ %i.fl, %bb.ac ] ; 2 uses
  %i.gg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.gg)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i [
    i32 13, label %bb.aq
    i32 10, label %bb.aq
  ]

bb.ad:                                            ; preds = %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit.i53
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i47, i64 %i.ek ; 4 uses
  %i.gi = icmp eq i32 %spec.select.i45, %i.dz
  br i1 %i.gi, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gj = getelementptr inbounds i8, ptr %i.gh, i64 -1 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !noalias !5613, !noundef !6 ; 3 uses
  %i.gl = icmp sgt i8 %i.gk, -1
  br i1 %i.gl, label %bb.af, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i: ; preds = %bb.ae
  %i.gm = add nsw i64 %i.ek, -1
  %i.gn = icmp ne i64 %i.gm, %i.ej
  call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds i8, ptr %i.gh, i64 -2 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !noalias !5613, !noundef !6 ; 3 uses
  %i.gq = and i8 %i.gp, 31
  %i.gr = zext nneg i8 %i.gq to i32
  %i.gs = icmp slt i8 %i.gp, -64
  br i1 %i.gs, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.gt = zext nneg i8 %i.gk to i32
  br label %bb.ai

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i
  %i.gu = getelementptr inbounds i8, ptr %i.gh, i64 -3 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !noalias !5613, !noundef !6 ; 3 uses
  %i.gw = and i8 %i.gv, 15
  %i.gx = zext nneg i8 %i.gw to i32
  %i.gy = icmp slt i8 %i.gv, -64
  br i1 %i.gy, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i
  %.sroa.6.0.i = phi ptr [ %.sroa.6.1.i, %bb.ah ], [ %i.go, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i ]
  %.sroa.010.0.i.i = phi i32 [ %i.ho, %bb.ah ], [ %i.gr, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i.i ]
  %i.gz = shl nuw nsw i32 %.sroa.010.0.i.i, 6
  %i.ha = and i8 %i.gk, 63
  %i.hb = zext nneg i8 %i.ha to i32
  %i.hc = or disjoint i32 %i.gz, %i.hb
  br label %bb.ai

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i
  %i.hd = getelementptr inbounds i8, ptr %i.gh, i64 -4 ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !noalias !5613, !noundef !6
  %i.hf = and i8 %i.he, 7
  %i.hg = zext nneg i8 %i.hf to i32
  %i.hh = shl nuw nsw i32 %i.hg, 6
  %i.hi = and i8 %i.gv, 63
  %i.hj = zext nneg i8 %i.hi to i32
  %i.hk = or disjoint i32 %i.hh, %i.hj
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i
  %.sroa.6.1.i = phi ptr [ %i.hd, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i ], [ %i.gu, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i ]
  %.sroa.010.1.i.i = phi i32 [ %i.hk, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i.i ], [ %i.gx, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i.i ]
  %i.hl = shl nuw nsw i32 %.sroa.010.1.i.i, 6
  %i.hm = and i8 %i.gp, 63
  %i.hn = zext nneg i8 %i.hm to i32
  %i.ho = or disjoint i32 %i.hl, %i.hn
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %.sroa.6.2.ph.i = phi ptr [ %.sroa.6.0.i, %bb.ag ], [ %i.gj, %bb.af ] ; 5 uses
  %.sroa.4.1.i.ph.i = phi i32 [ %i.hc, %bb.ag ], [ %i.gt, %bb.af ] ; 3 uses
  %i.hp = icmp samesign ult i32 %.sroa.4.1.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.hp)
  switch i32 %.sroa.4.1.i.ph.i, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter.exit.i [
    i32 41, label %bb.aj
    i32 125, label %bb.aj
    i32 93, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5607
  store i32 %.sroa.4.1.i.ph.i, ptr %i.j, align 4, !noalias !5607
  %i.hq = icmp eq ptr %i.ev, %.sroa.6.2.ph.i
  br i1 %i.hq, label %.split.i54, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hr = getelementptr inbounds i8, ptr %.sroa.6.2.ph.i, i64 -1 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !noalias !5614, !noundef !6 ; 3 uses
  %i.ht = icmp sgt i8 %i.hs, -1
  br i1 %i.ht, label %bb.al, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i65.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i65.i: ; preds = %bb.ak
  %i.hu = icmp ne ptr %i.ev, %i.hr
  call void @llvm.assume(i1 %i.hu)
  %i.hv = getelementptr inbounds i8, ptr %.sroa.6.2.ph.i, i64 -2 ; 2 uses
  %i.hw = load i8, ptr %i.hv, align 1, !noalias !5614, !noundef !6 ; 3 uses
  %i.hx = and i8 %i.hw, 31
  %i.hy = zext nneg i8 %i.hx to i32
  %i.hz = icmp slt i8 %i.hw, -64
  br i1 %i.hz, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i69.i, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ia = zext nneg i8 %i.hs to i32
  br label %bb.ao

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i69.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i65.i
  %i.ib = icmp ne ptr %i.ev, %i.hv
  call void @llvm.assume(i1 %i.ib)
  %i.ic = getelementptr inbounds i8, ptr %.sroa.6.2.ph.i, i64 -3 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !noalias !5614, !noundef !6 ; 3 uses
  %i.ie = and i8 %i.id, 15
  %i.if = zext nneg i8 %i.ie to i32
  %i.ig = icmp slt i8 %i.id, -64
  br i1 %i.ig, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i71.i, label %bb.an

bb.am:                                            ; preds = %bb.an, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i65.i
  %.sroa.010.0.i66.i = phi i32 [ %i.ix, %bb.an ], [ %i.hy, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit17.i65.i ]
  %i.ih = shl nuw nsw i32 %.sroa.010.0.i66.i, 6
  %i.ii = and i8 %i.hs, 63
  %i.ij = zext nneg i8 %i.ii to i32
  %i.ik = or disjoint i32 %i.ih, %i.ij
  br label %bb.ao

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i71.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i69.i
  %i.il = icmp ne ptr %i.ev, %i.ic
  call void @llvm.assume(i1 %i.il)
  %i.im = getelementptr inbounds i8, ptr %.sroa.6.2.ph.i, i64 -4
  %i.in = load i8, ptr %i.im, align 1, !noalias !5614, !noundef !6
  %i.io = and i8 %i.in, 7
  %i.ip = zext nneg i8 %i.io to i32
  %i.iq = shl nuw nsw i32 %i.ip, 6
  %i.ir = and i8 %i.id, 63
  %i.is = zext nneg i8 %i.ir to i32
  %i.it = or disjoint i32 %i.iq, %i.is
  br label %bb.an

bb.an:                                            ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i71.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i69.i
  %.sroa.010.1.i70.i = phi i32 [ %i.it, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit21.i71.i ], [ %i.if, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsEhZmuQNqkz_11ruff_linter.exit19.i69.i ]
  %i.iu = shl nuw nsw i32 %.sroa.010.1.i70.i, 6
  %i.iv = and i8 %i.hw, 63
  %i.iw = zext nneg i8 %i.iv to i32
  %i.ix = or disjoint i32 %i.iu, %i.iw
  br label %bb.am

bb.ao:                                            ; preds = %bb.am, %bb.al
  %.sroa.4.1.i67.ph.i = phi i32 [ %i.ia, %bb.al ], [ %i.ik, %bb.am ] ; 2 uses
  %i.iy = icmp samesign ult i32 %.sroa.4.1.i67.ph.i, 1114112
  call void @llvm.assume(i1 %i.iy)
  %i.iz = icmp eq i32 %.sroa.4.1.i67.ph.i, 44
  br i1 %i.iz, label %.split.i54, label %bb.ap

.split.i54:                                       ; preds = %bb.ao, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5607
  store ptr %i.l, ptr %i.i, align 8, !noalias !5607
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !5607
  %i.ja = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.ja, align 8, !noalias !5607
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !5607
  %i.jb = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.j, ptr %i.jb, align 8, !noalias !5607
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !5607
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noundef nonnull @376, ptr noundef nonnull %i.i)
          to label %.noexc59 unwind label %bb.ay

.noexc59:                                         ; preds = %.split.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5607
  br label %bb.az

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5607
  br label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter.exit.i

_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.thread.i: ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.i, %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ev, ptr %i.jc, align 8, !alias.scope !5609, !noalias !5615
  %i.jd = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.ew, ptr %i.jd, align 8, !alias.scope !5609, !noalias !5615
  store i64 -1, ptr %i.s, align 8, !alias.scope !5609, !noalias !5615
  br label %bb.az

bb.aq:                                            ; preds = %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.i, %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.je = getelementptr inbounds nuw i8, ptr %.val.i47, i64 %i.ek ; 4 uses
  %i.jf = icmp eq i32 %spec.select.i45, %i.dz
  br i1 %i.jf, label %_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchesAcj2_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aq, %.backedge.i
  %i.jg = phi ptr [ %i.kr, %.backedge.i ], [ %i.ev, %bb.aq ] ; 6 uses
  %i.jh = phi i64 [ %i.kv, %.backedge.i ], [ 0, %bb.aq ] ; 2 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 1 ; 3 uses
  %i.jk = load i8, ptr %i.jg, align 1, !alias.scope !5616, !noalias !5617, !noundef !6 ; 5 uses
  %i.jl = icmp sgt i8 %i.jk, -1
  br i1 %i.jl, label %bb.ar, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.jm = and i8 %i.jk, 31
  %i.jn = zext nneg i8 %i.jm to i32               ; 3 uses
  %i.jo = icmp ne ptr %i.jj, %i.je
  call void @llvm.assume(i1 %i.jo)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 2 ; 3 uses
  %i.jq = load i8, ptr %i.jj, align 1, !alias.scope !5616, !noalias !5617, !noundef !6
  %i.jr = shl nuw nsw i32 %i.jn, 6
  %i.js = and i8 %i.jq, 63
  %i.jt = zext nneg i8 %i.js to i32               ; 2 uses
  %i.ju = or disjoint i32 %i.jr, %i.jt
  %i.jv = icmp samesign ugt i8 %i.jk, -33
  br i1 %i.jv, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

bb.ar:                                            ; preds = %.lr.ph.i
  %i.jw = zext nneg i8 %i.jk to i32
  br label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i
  %i.jx = icmp ne ptr %i.jp, %i.je
  call void @llvm.assume(i1 %i.jx)
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jg, i64 3 ; 3 uses
  %i.jz = load i8, ptr %i.jp, align 1, !alias.scope !5616, !noalias !5617, !noundef !6
  %i.ka = shl nuw nsw i32 %i.jt, 6
  %i.kb = and i8 %i.jz, 63
  %i.kc = zext nneg i8 %i.kb to i32
  %i.kd = or disjoint i32 %i.ka, %i.kc            ; 2 uses
  %i.ke = shl nuw nsw i32 %i.jn, 12
  %i.kf = or disjoint i32 %i.kd, %i.ke
  %i.kg = icmp samesign ugt i8 %i.jk, -17
  br i1 %i.kg, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i
  %i.kh = icmp ne ptr %i.jy, %i.je
  call void @llvm.assume(i1 %i.kh)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.kj = load i8, ptr %i.jy, align 1, !alias.scope !5616, !noalias !5617, !noundef !6
  %i.kk = shl nuw nsw i32 %i.jn, 18
  %i.kl = and i32 %i.kk, 1835008
  %i.km = shl nuw nsw i32 %i.kd, 6
  %i.kn = and i8 %i.kj, 63
  %i.ko = zext nneg i8 %i.kn to i32
  %i.kp = or disjoint i32 %i.km, %i.ko
  %i.kq = or disjoint i32 %i.kp, %i.kl
  br label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i, %bb.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i
  %i.kr = phi ptr [ %i.jy, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i ], [ %i.ki, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i.i ], [ %i.jp, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i ], [ %i.jj, %bb.ar ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.kf, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit14.i.i.i.i.i.i.i ], [ %i.kq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit16.i.i.i.i.i.i.i ], [ %i.ju, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit12.i.i.i.i.i.i.i ], [ %i.jw, %bb.ar ] ; 2 uses
  %i.ks = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ks)
end_hunk_0
