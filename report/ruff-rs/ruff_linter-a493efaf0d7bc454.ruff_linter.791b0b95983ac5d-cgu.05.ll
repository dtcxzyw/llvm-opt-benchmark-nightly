Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.05?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1068
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports16organize_imports:bb.a
  br i1 %.not.i.i67, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i70, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ef = icmp eq i32 %i.eb, 0
  br i1 %i.ef, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.not5.i.i68 = icmp ugt i64 %.val40, %i.ed
  br i1 %.not5.i.i68, label %bb.bm, label %.split.i.i69

bb.bl:                                            ; preds = %bb.bm, %.split.i.i69, %bb.bj
  %i.eg = icmp eq i32 %i.ec, 0
  br i1 %i.eg, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit73, label %bb.bn

.split.i.i69:                                     ; preds = %bb.bk
  %i.eh = icmp eq i64 %.val40, %i.ed
  br i1 %i.eh, label %bb.bl, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i70

bb.bm:                                            ; preds = %bb.bk
  %i.ei = getelementptr inbounds nuw i8, ptr %.val39, i64 %i.ed
  %i.ej = load i8, ptr %i.ei, align 1, !alias.scope !6506, !noundef !4
  %i.ek = icmp sgt i8 %i.ej, -65
  br i1 %i.ek, label %bb.bl, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i70

bb.bn:                                            ; preds = %bb.bl
  %.not6.i.i71 = icmp ugt i64 %.val40, %i.ee
  br i1 %.not6.i.i71, label %bb.bo, label %.split7.i.i72

.split7.i.i72:                                    ; preds = %bb.bn
  %i.el = icmp eq i64 %.val40, %i.ee
  br i1 %i.el, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit73, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i70

bb.bo:                                            ; preds = %bb.bn
  %i.em = getelementptr inbounds nuw i8, ptr %.val39, i64 %i.ee
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !6506, !noundef !4
  %i.eo = icmp sgt i8 %i.en, -65
  br i1 %i.eo, label %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit73, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i70

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i70: ; preds = %bb.bo, %.split7.i.i72, %bb.bm, %.split.i.i69, %bb.bi
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val39, i64 noundef %.val40, i64 noundef %i.ed, i64 noundef %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #28
  unreachable

_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit73: ; preds = %bb.bl, %.split7.i.i72, %bb.bo
  %i.ep = getelementptr inbounds nuw i8, ptr %.val39, i64 %i.ed
  %i.eq = sub nuw nsw i64 %i.ee, %i.ed            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE4iterB1b_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.dj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.er = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBS_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t), !noalias !6509 ; 2 uses
  %i.es = extractvalue { ptr, ptr } %i.er, 0
  %.not.i9.i = icmp ne ptr %i.es, null
  %i.et = extractvalue { ptr, ptr } %i.er, 1      ; 2 uses
  %.not810.i = icmp ne ptr %i.et, null
  %.not11.i = select i1 %.not.i9.i, i1 %.not810.i, i1 false
  br i1 %.not11.i, label %.lr.ph.i, label %.loopexit135

.lr.ph.i:                                         ; preds = %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit73, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports16organize_importss_0E0B1Z_.exit.backedge.i
  %i.eu = phi ptr [ %i.fb, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports16organize_importss_0E0B1Z_.exit.backedge.i ], [ %i.et, %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit73 ] ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eu, i64 16
  %.val7.i = load i64, ptr %i.ev, align 8, !noalias !6509, !noundef !4
  %i.ew = icmp eq i64 %i.eq, %.val7.i
  br i1 %i.ew, label %.split.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports16organize_importss_0E0B1Z_.exit.backedge.i

.split.i:                                         ; preds = %.lr.ph.i
  %i.ex = getelementptr i8, ptr %i.eu, i64 8
  %.val6.i = load ptr, ptr %i.ex, align 8, !noalias !6509, !nonnull !4, !noundef !4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.ep, ptr nonnull readonly %.val6.i, i64 %i.eq), !noalias !6509
  %i.ey = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ey, label %bb.bp, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports16organize_importss_0E0B1Z_.exit.backedge.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports16organize_importss_0E0B1Z_.exit.backedge.i: ; preds = %.split.i, %.lr.ph.i
  %i.ez = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBS_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t), !noalias !6509 ; 2 uses
  %i.fa = extractvalue { ptr, ptr } %i.ez, 0
  %.not.i.i74 = icmp ne ptr %i.fa, null
  %i.fb = extractvalue { ptr, ptr } %i.ez, 1      ; 2 uses
  %.not8.i = icmp ne ptr %i.fb, null
  %.not.i75 = select i1 %.not.i.i74, i1 %.not8.i, i1 false
  br i1 %.not.i75, label %.lr.ph.i, label %.loopexit135

.loopexit135:                                     ; preds = %_RINvMNtCsEhZmuQNqkz_11ruff_linter7locatorNtB3_7Locator5sliceNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB5_.exit73, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports16organize_importss_0E0B1Z_.exit.backedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.loopexit136

bb.bp:                                            ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.val51 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %.val52 = load i64, ptr %i.bb, align 8, !noundef !4
  %i.fc = call noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges10line_start(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val51, i64 noundef %.val52, i32 noundef %i.eb) ; 2 uses
  %i.fd = icmp eq ptr %i.dp, %i.dx
  br i1 %i.fd, label %.loopexit136, label %.lr.ph

.loopexit136:                                     ; preds = %bb.bp, %.lr.ph, %bb.bh, %.loopexit135
  %.sroa.06.1187 = phi i32 [ %.sroa.06.1199, %.loopexit135 ], [ %i.ds, %bb.bh ], [ %i.fc, %bb.bp ], [ %.sroa.06.1199, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bf

bb.bq:                                            ; preds = %bb.bf
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @325) #28
  unreachable

bb.br:                                            ; preds = %bb.bf
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments16collect_comments(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, i32 noundef %.sroa.010.0, i32 noundef %i.du, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.fg = load i8, ptr %i.ff, align 1, !range !6440, !noundef !4
  %.not30 = icmp eq i8 %i.fg, -1
  br i1 %.not30, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %.val57 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %.val58 = load i64, ptr %i.bb, align 8, !noundef !4
  %i.fh = invoke noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges13full_line_end(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val57, i64 noundef %.val58, i32 noundef %.sroa.26.0.i7.i)
          to label %bb.bv unwind label %bb.dy

bb.bt:                                            ; preds = %bb.di, %bb.bx
  unreachable

bb.bu:                                            ; preds = %bb.br
  %i.fi = load ptr, ptr %i.cw, align 8, !nonnull !4, !align !10, !noundef !4
  %.val45 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %.val46 = load i64, ptr %i.bb, align 8, !noundef !4
  %i.fj = invoke noundef i32 @_RNvNtCskLngH8kgpZI_15ruff_python_ast10whitespace18trailing_lines_end(ptr noundef nonnull align 8 %i.fi, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val45, i64 noundef %.val46)
          to label %bb.bv unwind label %bb.dy

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %.sroa.013.0 = phi i32 [ %i.fj, %bb.bu ], [ %i.fh, %bb.bs ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 2404
  %i.fl = load i16, ptr %i.fk, align 4, !range !6512, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 2424
  %i.fn = load i8, ptr %i.fm, align 8, !range !5718, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 16, i1 false), !alias.scope !6513
  store i8 %i.fn, ptr %i.fo, align 8, !alias.scope !6513
  invoke void @_RNvMsg_NtCsEhZmuQNqkz_11ruff_linter10line_widthNtB5_16LineWidthBuilder7add_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef %i.bu)
          to label %bb.bw unwind label %bb.dx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.fq = load ptr, ptr %i.fp, align 8, !nonnull !4, !noundef !4
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.fs = load i64, ptr %i.fr, align 8, !noundef !4
  call void @_RNvNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort14format_imports(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 8 %1, i16 noundef %i.fl, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.fq, i64 noundef %i.fs, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, i8 noundef %6, i8 noundef %8, i8 noundef %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(384) %i.di, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not31 = icmp ugt i32 %.sroa.06.0, %.sroa.013.0
  br i1 %.not31, label %bb.bx, label %bb.by, !prof !207

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @231, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @326) #28
          to label %bb.bt unwind label %.loopexit.split-lp

bb.by:                                            ; preds = %bb.bw
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %.val38 = load i64, ptr %i.bb, align 8, !noundef !4 ; 8 uses
  %i.ft = zext i32 %.sroa.06.0 to i64             ; 9 uses
  %i.fu = zext i32 %.sroa.013.0 to i64            ; 8 uses
  %i.fv = icmp eq i32 %.sroa.06.0, 0
  br i1 %i.fv, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not5.i.i77 = icmp ugt i64 %.val38, %i.ft
  br i1 %.not5.i.i77, label %bb.cb, label %.split.i.i78

bb.ca:                                            ; preds = %bb.cb, %.split.i.i78, %bb.by
  %i.fw = icmp eq i32 %.sroa.013.0, 0
  br i1 %i.fw, label %bb.cf, label %bb.cc

.split.i.i78:                                     ; preds = %bb.bz
  %i.fx = icmp eq i64 %.val38, %i.ft
  br i1 %i.fx, label %bb.ca, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke

bb.cb:                                            ; preds = %bb.bz
  %i.fy = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ft
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !6516, !noundef !4
  %i.ga = icmp sgt i8 %i.fz, -65
  br i1 %i.ga, label %bb.ca, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke

bb.cc:                                            ; preds = %bb.ca
  %.not6.i.i80 = icmp ugt i64 %.val38, %i.fu
  br i1 %.not6.i.i80, label %bb.cd, label %.split7.i.i81

.split7.i.i81:                                    ; preds = %bb.cc
  %i.gb = icmp eq i64 %.val38, %i.fu
  br i1 %i.gb, label %bb.cf, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke

bb.cd:                                            ; preds = %bb.cc
  %i.gc = getelementptr inbounds nuw i8, ptr %.val, i64 %i.fu
  %i.gd = load i8, ptr %i.gc, align 1, !alias.scope !6516, !noundef !4
  %i.ge = icmp sgt i8 %i.gd, -65
  br i1 %i.ge, label %bb.cf, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke.sink.split: ; preds = %.split3.i.i.i, %bb.cx, %.split3.i.i12.i, %bb.co
  %.sroa.7.0.i1655.i.lcssa333.sink = phi ptr [ %.sroa.7.0.i1656.i, %.split3.i.i12.i ], [ %.sroa.7.0.i1656.i, %bb.co ], [ %.sroa.07.0.copyload.i29.i.i, %bb.cx ], [ %.sroa.07.0.copyload.i29.i.i, %.split3.i.i.i ]
  %.ph = phi ptr [ %.sroa.7.0.i1656.i, %.split3.i.i12.i ], [ %.sroa.7.0.i1656.i, %bb.co ], [ %.sroa.7.0.i66.i, %bb.cx ], [ %.sroa.7.0.i66.i, %.split3.i.i.i ]
  %.ph356 = phi i64 [ %.sroa.9.0.i1576.i, %.split3.i.i12.i ], [ %.sroa.9.0.i1576.i, %bb.co ], [ %i.gw, %bb.cx ], [ %i.gw, %.split3.i.i.i ]
  %.ph357 = phi i64 [ %i.ho, %.split3.i.i12.i ], [ %i.ho, %bb.co ], [ %i.ir, %bb.cx ], [ %i.ir, %.split3.i.i.i ]
  store ptr %.sroa.7.0.i1655.i.lcssa333.sink, ptr %i.g, align 8, !noalias !6519
  store ptr %.sroa.7.0.i66.i, ptr %i.gq, align 8, !noalias !6519
  br label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke: ; preds = %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke.sink.split, %.split.i.i78, %bb.cb, %.split7.i.i81, %bb.cd
  %i.gf = phi ptr [ %.val, %bb.cb ], [ %.val, %.split.i.i78 ], [ %.val, %bb.cd ], [ %.val, %.split7.i.i81 ], [ %.ph, %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke.sink.split ]
  %i.gg = phi i64 [ %.val38, %bb.cb ], [ %.val38, %.split.i.i78 ], [ %.val38, %bb.cd ], [ %.val38, %.split7.i.i81 ], [ %.ph356, %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke.sink.split ]
  %i.gh = phi i64 [ %i.ft, %bb.cb ], [ %i.ft, %.split.i.i78 ], [ %i.ft, %bb.cd ], [ %i.ft, %.split7.i.i81 ], [ 0, %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke.sink.split ]
  %i.gi = phi i64 [ %i.fu, %bb.cb ], [ %i.fu, %.split.i.i78 ], [ %i.fu, %bb.cd ], [ %i.fu, %.split7.i.i81 ], [ %.ph357, %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke.sink.split ]
  %i.gj = phi ptr [ @1, %bb.cb ], [ @1, %.split.i.i78 ], [ @1, %bb.cd ], [ @1, %.split7.i.i81 ], [ @693, %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke.sink.split ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gf, i64 noundef %i.gg, i64 noundef %i.gh, i64 noundef %i.gi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gj) #28
          to label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.cont unwind label %.loopexit.split-lp

_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.cont: ; preds = %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke
  unreachable

bb.ce:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body100
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body100 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #26
          to label %.thread119 unwind label %bb.dw

.loopexit:                                        ; preds = %bb.ci, %bb.cj, %bb.cr, %bb.cs, %.thread.i, %.noexc95, %.noexc96, %.noexc97
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp:                               ; preds = %.invoke, %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke, %bb.bx, %.loopexit134, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit, %bb.cf, %.noexc84, %.noexc85
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cf:                                            ; preds = %bb.cd, %.split7.i.i81, %bb.ca
  %i.gk = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ft
  %i.gl = sub nuw nsw i64 %i.fu, %i.ft
  %i.gm = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !nonnull !4, !noundef !4
  %i.go = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6523
  invoke void @_RNvXNtCs9BeaGo73rC4_16ruff_source_file8newlineseNtB2_17UniversalNewlines18universal_newlines(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gk, i64 noundef %i.gl)
          to label %.noexc84 unwind label %.loopexit.split-lp

.noexc84:                                         ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6519
  invoke void @_RNvXNtCs9BeaGo73rC4_16ruff_source_file8newlineseNtB2_17UniversalNewlines18universal_newlines(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gn, i64 noundef %i.gp)
          to label %.noexc85 unwind label %.loopexit.split-lp

.noexc85:                                         ; preds = %.noexc84
  invoke void @_RINvNtCs6Wt4yPw39th_9itertools11zip_longest11zip_longestNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorBS_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %.noexc86 unwind label %.loopexit.split-lp

.noexc86:                                         ; preds = %.noexc85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6519
  %i.gq = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.67.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.promoted.i = load ptr, ptr %i.g, align 8, !noalias !6528
  %.promoted64.i = load ptr, ptr %i.gq, align 8, !noalias !6519
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.13.i.sroa.5.0..sroa.67.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.promoted72.i = load i64, ptr %i.gr, align 8, !noalias !6519
  %.promoted75.i = load i32, ptr %i.gs, align 8, !noalias !6519
  %.promoted76.i = load i64, ptr %i.gt, align 8, !noalias !6519
  %.promoted77.i = load i32, ptr %i.gu, align 8, !noalias !6519
  br label %bb.cg

bb.cg:                                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.i.i, %.noexc86
  %i.gv = phi i32 [ %11, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.i.i ], [ %.promoted77.i, %.noexc86 ] ; 5 uses
  %i.gw = phi i64 [ %12, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.i.i ], [ %.promoted76.i, %.noexc86 ] ; 11 uses
  %i.gx = phi i32 [ %.sroa.9.0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.i.i ], [ %.promoted75.i, %.noexc86 ] ; 6 uses
  %.sroa.9.0.i1576.i = phi i64 [ %.sroa.7114.0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.i.i ], [ %.promoted72.i, %.noexc86 ] ; 12 uses
  %.sroa.7.0.i66.i = phi ptr [ %.sroa.7.0.i65.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.i.i ], [ %.promoted64.i, %.noexc86 ] ; 15 uses
  %.sroa.7.0.i1656.i = phi ptr [ %.sroa.07.0.copyload.i29.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.i.i ], [ %.promoted.i, %.noexc86 ] ; 16 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.7.0.i1656.i, null
  br i1 %.not.i.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !6531)
  %i.gy = icmp eq i64 %.sroa.9.0.i1576.i, 0
  br i1 %i.gy, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.experimental.noalias.scope.decl(metadata !6534), !noalias !6537
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i1656.i, i64 %.sroa.9.0.i1576.i
  %i.ha = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !6538, !nonnull !4, !noundef !4
  %i.hb = invoke { i64, ptr } %i.ha(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.7.0.i1656.i, ptr noundef nonnull readonly %i.gz)
          to label %.noexc87 unwind label %.loopexit, !inline_history !6542 ; 2 uses

.noexc87:                                         ; preds = %bb.ci
  %i.hc = extractvalue { i64, ptr } %i.hb, 0
  %i.hd = trunc nuw i64 %i.hc to i1
  br i1 %i.hd, label %bb.cj, label %bb.cp

bb.cj:                                            ; preds = %.noexc87
  %i.he = extractvalue { i64, ptr } %i.hb, 1
  %i.hf = invoke noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.he, ptr noundef nonnull readonly %.sroa.7.0.i1656.i)
          to label %.noexc88 unwind label %.loopexit ; 4 uses

.noexc88:                                         ; preds = %bb.cj
  %.not.i.i.i8.i = icmp ult i64 %i.hf, %.sroa.9.0.i1576.i
  call void @llvm.assume(i1 %.not.i.i.i8.i), !noalias !6537
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i1656.i, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !alias.scope !6534, !noalias !6543, !noundef !4
  %cond.i9.i = icmp eq i8 %i.hh, 13
  br i1 %cond.i9.i, label %bb.ck, label %.thread.i10.i

bb.ck:                                            ; preds = %.noexc88
  %i.hi = add nuw i64 %i.hf, 1                    ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %.sroa.9.0.i1576.i
  br i1 %i.hj, label %bb.cl, label %.thread.i10.i

bb.cl:                                            ; preds = %bb.ck
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i1656.i, i64 %i.hi
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !6534, !noalias !6543, !noundef !4
  %i.hm = icmp eq i8 %i.hl, 10
  br i1 %i.hm, label %bb.cm, label %.thread.i10.i

.thread.i10.i:                                    ; preds = %bb.cl, %bb.ck, %.noexc88
  br label %bb.cm

bb.cm:                                            ; preds = %.thread.i10.i, %bb.cl
  %i.hn = phi i64 [ 1, %.thread.i10.i ], [ 2, %bb.cl ]
  %i.ho = add i64 %i.hn, %i.hf                    ; 11 uses
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i14.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.not.i.i11.i = icmp ult i64 %i.ho, %.sroa.9.0.i1576.i
  br i1 %.not.i.i11.i, label %bb.co, label %.split3.i.i12.i

.split3.i.i12.i:                                  ; preds = %bb.cn
  %i.hq = icmp eq i64 %i.ho, %.sroa.9.0.i1576.i
  br i1 %i.hq, label %.split.i.i13.i, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke.sink.split

bb.co:                                            ; preds = %bb.cn
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i1656.i, i64 %i.ho
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !6544, !noalias !6547, !noundef !4
  %i.ht = icmp sgt i8 %i.hs, -65
  br i1 %i.ht, label %.split.i.i13.i, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke.sink.split

.split.i.i13.i:                                   ; preds = %bb.co, %.split3.i.i12.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i1656.i, i64 %i.ho
  %i.hv = sub i64 %.sroa.9.0.i1576.i, %i.ho
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i14.i

bb.cp:                                            ; preds = %.noexc87
  store i64 0, ptr %i.gr, align 8, !alias.scope !6531, !noalias !6549
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i14.i: ; preds = %.split.i.i13.i, %bb.cm
  %.sroa.9.0.i15.i = phi i64 [ %.sroa.9.0.i1576.i, %bb.cm ], [ %i.hv, %.split.i.i13.i ] ; 2 uses
  %.sroa.7.0.i16.i = phi ptr [ %.sroa.7.0.i1656.i, %bb.cm ], [ %i.hu, %.split.i.i13.i ]
  store i64 %.sroa.9.0.i15.i, ptr %i.gr, align 8, !alias.scope !6531, !noalias !6549
  %i.hw = icmp ugt i64 %i.ho, 4294967295
  %i.hx = shl nuw i64 %i.ho, 32
  %.sroa.09.0.insert.insert.i.i17.i = select i1 %i.hw, i64 513, i64 %i.hx ; 2 uses
  %i.hy = trunc i64 %.sroa.09.0.insert.insert.i.i17.i to i1
  br i1 %i.hy, label %bb.cq, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i18.i, !prof !207

bb.cq:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i14.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6550
  br label %.invoke

.invoke:                                          ; preds = %bb.cz, %bb.cq
  %.sink = phi ptr [ %i.b, %bb.cz ], [ %i.a, %bb.cq ] ; 2 uses
  store i8 2, ptr %.sink, align 1, !noalias !6528
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @218, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @217, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @742) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i18.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i14.i
  %.sroa.6.0.extract.shift.i.i.i19.i = lshr i64 %.sroa.09.0.insert.insert.i.i17.i, 32
  %.sroa.6.0.extract.trunc.i.i.i20.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i19.i to i32
  %i.hz = add i32 %i.gx, %.sroa.6.0.extract.trunc.i.i.i20.i ; 2 uses
  store i32 %i.hz, ptr %i.gs, align 8, !alias.scope !6531, !noalias !6549
  br label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i18.i, %bb.cp, %bb.ch, %bb.cg
  %.sroa.9.0 = phi i32 [ %i.gx, %bb.cp ], [ %i.gx, %bb.ch ], [ %i.hz, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i18.i ], [ %i.gx, %bb.cg ]
  %.sroa.7114.0 = phi i64 [ 0, %bb.cp ], [ 0, %bb.ch ], [ %.sroa.9.0.i15.i, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i18.i ], [ %.sroa.9.0.i1576.i, %bb.cg ]
  %.sroa.07.0.copyload.i29.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.cp ], [ %.sroa.7.0.i1656.i, %bb.ch ], [ %.sroa.7.0.i16.i, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i18.i ], [ null, %bb.cg ] ; 3 uses
  %i.ia = phi i32 [ %i.gx, %bb.cp ], [ undef, %bb.ch ], [ %i.gx, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i18.i ], [ undef, %bb.cg ]
  %.sroa.9.0.i1575.i = phi i64 [ %.sroa.9.0.i1576.i, %bb.cp ], [ undef, %bb.ch ], [ %i.ho, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i18.i ], [ undef, %bb.cg ]
  %.sroa.7.0.i1655.i = phi ptr [ %.sroa.7.0.i1656.i, %bb.cp ], [ null, %bb.ch ], [ %.sroa.7.0.i1656.i, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i18.i ], [ null, %bb.cg ] ; 3 uses
  %.not.i20.i.i.i = icmp eq ptr %.sroa.7.0.i66.i, null
  br i1 %.not.i20.i.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.thread.i.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6553)
  %i.ib = icmp eq i64 %i.gw, 0
  br i1 %i.ib, label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i, label %bb.cr

bb.cr:                                            ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !6556), !noalias !6537
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i66.i, i64 %i.gw
  %i.id = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !6559, !nonnull !4, !noundef !4
  %i.ie = invoke { i64, ptr } %i.id(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %.sroa.7.0.i66.i, ptr noundef nonnull readonly %i.ic)
          to label %.noexc91 unwind label %.loopexit, !inline_history !6542 ; 2 uses

.noexc91:                                         ; preds = %bb.cr
  %i.if = extractvalue { i64, ptr } %i.ie, 0
  %i.ig = trunc nuw i64 %i.if to i1
  br i1 %i.ig, label %bb.cs, label %bb.cy

bb.cs:                                            ; preds = %.noexc91
  %i.ih = extractvalue { i64, ptr } %i.ie, 1
  %i.ii = invoke noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCsEhZmuQNqkz_11ruff_linter(ptr noundef %i.ih, ptr noundef nonnull readonly %.sroa.7.0.i66.i)
          to label %.noexc92 unwind label %.loopexit ; 4 uses

.noexc92:                                         ; preds = %bb.cs
  %.not.i.i.i2.i = icmp ult i64 %i.ii, %i.gw
  call void @llvm.assume(i1 %.not.i.i.i2.i), !noalias !6537
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i66.i, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !6556, !noalias !6563, !noundef !4
  %cond.i.i = icmp eq i8 %i.ik, 13
  br i1 %cond.i.i, label %bb.ct, label %.thread.i.i

bb.ct:                                            ; preds = %.noexc92
  %i.il = add nuw i64 %i.ii, 1                    ; 2 uses
  %i.im = icmp ult i64 %i.il, %i.gw
  br i1 %i.im, label %bb.cu, label %.thread.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i66.i, i64 %i.il
  %i.io = load i8, ptr %i.in, align 1, !alias.scope !6556, !noalias !6563, !noundef !4
  %i.ip = icmp eq i8 %i.io, 10
  br i1 %i.ip, label %bb.cv, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cu, %bb.ct, %.noexc92
  br label %bb.cv

bb.cv:                                            ; preds = %.thread.i.i, %bb.cu
  %i.iq = phi i64 [ 1, %.thread.i.i ], [ 2, %bb.cu ]
  %i.ir = add i64 %i.iq, %i.ii                    ; 11 uses
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.not.i.i3.i = icmp ult i64 %i.ir, %i.gw
  br i1 %.not.i.i3.i, label %bb.cx, label %.split3.i.i.i

.split3.i.i.i:                                    ; preds = %bb.cw
  %i.it = icmp eq i64 %i.ir, %i.gw
  br i1 %i.it, label %.split.i.i.i, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke.sink.split

bb.cx:                                            ; preds = %bb.cw
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i66.i, i64 %i.ir
  %i.iv = load i8, ptr %i.iu, align 1, !alias.scope !6564, !noalias !6567, !noundef !4
  %i.iw = icmp sgt i8 %i.iv, -65
  br i1 %i.iw, label %.split.i.i.i, label %_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread.i79.invoke.sink.split

.split.i.i.i:                                     ; preds = %bb.cx, %.split3.i.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i66.i, i64 %i.ir
  %i.iy = sub i64 %i.gw, %i.ir
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i.i

bb.cy:                                            ; preds = %.noexc91
  store i64 0, ptr %i.gt, align 8, !alias.scope !6553, !noalias !6569
  br label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i.i: ; preds = %.split.i.i.i, %bb.cv
  %.sroa.9.0.i.i = phi i64 [ %i.gw, %bb.cv ], [ %i.iy, %.split.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i = phi ptr [ %.sroa.7.0.i66.i, %bb.cv ], [ %i.ix, %.split.i.i.i ]
  store i64 %.sroa.9.0.i.i, ptr %i.gt, align 8, !alias.scope !6553, !noalias !6569
  %i.iz = icmp ugt i64 %i.ir, 4294967295
  %i.ja = shl nuw i64 %i.ir, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.iz, i64 513, i64 %i.ja ; 2 uses
  %i.jb = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.jb, label %bb.cz, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, !prof !207

bb.cz:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6570
  br label %.invoke

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit.i.i
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  %i.jc = add i32 %i.gv, %.sroa.6.0.extract.trunc.i.i.i.i ; 2 uses
  store i32 %i.jc, ptr %i.gu, align 8, !alias.scope !6553, !noalias !6569
  br label %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i

_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i: ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, %bb.cy, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i
  %11 = phi i32 [ %i.gv, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i ], [ %i.jc, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %i.gv, %bb.cy ]
  %12 = phi i64 [ 0, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i ], [ %.sroa.9.0.i.i, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ 0, %bb.cy ]
  %.sroa.7.0.i65.i = phi ptr [ %.sroa.7.0.i66.i, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i ], [ %.sroa.7.0.i.i, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ inttoptr (i64 1 to ptr), %bb.cy ]
  %.sroa.9.0.i = phi i32 [ undef, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i ], [ %i.gv, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %i.gv, %bb.cy ]
  %.sroa.8.0.i = phi i64 [ undef, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i ], [ %i.ir, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %i.gw, %bb.cy ]
  %.sroa.022.0.i = phi ptr [ null, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.i.i ], [ %.sroa.7.0.i66.i, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ], [ %.sroa.7.0.i66.i, %bb.cy ] ; 2 uses
  %13 = icmp eq ptr %.sroa.022.0.i, null          ; 2 uses
  %.not.i.i140.i = icmp eq ptr %.sroa.7.0.i1655.i, null
  br i1 %.not.i.i140.i, label %15, label %14

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.thread.i.i: ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %.not.i30.i.i = icmp eq ptr %.sroa.7.0.i1655.i, null
  br i1 %.not.i30.i.i, label %bb.da, label %.loopexit134

14:                                               ; preds = %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i
  br i1 %13, label %.loopexit134, label %.thread.i

15:                                               ; preds = %_RNvXs0_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_24UniversalNewlineIteratorNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.thread.i
  br i1 %13, label %bb.da, label %.loopexit134

.thread.i:                                        ; preds = %14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6573
  store ptr %.sroa.022.0.i, ptr %i.c, align 8, !noalias !6580
  store i64 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !6580
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !6580
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6573
  store ptr %.sroa.7.0.i1655.i, ptr %i.d, align 8, !noalias !6580
  store i64 %.sroa.9.0.i1575.i, ptr %.sroa.67.8..sroa_idx.i.i, align 8, !noalias !6580
  store i32 %i.ia, ptr %.sroa.13.i.sroa.5.0..sroa.67.8..sroa_idx.i.sroa_idx.i, align 8, !noalias !6580
  %i.jd = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %.noexc95 unwind label %.loopexit ; 2 uses

.noexc95:                                         ; preds = %.thread.i
  %i.je = extractvalue { ptr, i64 } %i.jd, 0
  %i.jf = extractvalue { ptr, i64 } %i.jd, 1
  %i.jg = invoke { ptr, i64 } @_RNvXNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespaceeNtB2_16PythonWhitespace21trim_whitespace_start(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.je, i64 noundef %i.jf)
          to label %.noexc96 unwind label %.loopexit ; 2 uses

.noexc96:                                         ; preds = %.noexc95
  %i.jh = extractvalue { ptr, i64 } %i.jg, 1      ; 2 uses
  %i.ji = invoke { ptr, i64 } @_RNvXs7_NtCs9BeaGo73rC4_16ruff_source_file8newlinesNtB5_4LineNtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5deref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc97 unwind label %.loopexit ; 2 uses

.noexc97:                                         ; preds = %.noexc96
  %i.jj = extractvalue { ptr, i64 } %i.ji, 0
  %i.jk = extractvalue { ptr, i64 } %i.ji, 1
  %i.jl = invoke { ptr, i64 } @_RNvXNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespaceeNtB2_16PythonWhitespace21trim_whitespace_start(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.jj, i64 noundef %i.jk)
          to label %.noexc98 unwind label %.loopexit ; 2 uses

.noexc98:                                         ; preds = %.noexc97
  %i.jm = extractvalue { ptr, i64 } %i.jl, 1
  %i.jn = icmp eq i64 %i.jh, %i.jm
  br i1 %i.jn, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.thread17.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.thread17.i.i: ; preds = %.noexc98
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6573
  br label %.loopexit134

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.i.i: ; preds = %.noexc98
  %i.jo = extractvalue { ptr, i64 } %i.jl, 0
  %i.jp = extractvalue { ptr, i64 } %i.jg, 0
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.jp, ptr %i.jo, i64 %i.jh), !noalias !6581
  %.not.i.i83 = icmp eq i32 %bcmp.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6573
  br i1 %.not.i.i83, label %bb.cg, label %.loopexit134

.loopexit134:                                     ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.i.i, %14, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3all5checkINtNtCs6Wt4yPw39th_9itertools14either_or_both12EitherOrBothNtNtCs9BeaGo73rC4_16ruff_source_file8newlines4LineENCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5rules16organize_imports28matches_ignoring_indentation0E0B39_.exit.thread17.i.i, %15, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules5isort5rules16organize_imports15UnsortedImportsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull align 8 %10, i32 noundef %.sroa.0.0.i.i66, i32 noundef %.sroa.26.0.i7.i)
          to label %bb.dd unwind label %.loopexit.split-lp

bb.da:                                            ; preds = %15, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseNtNtCs9BeaGo73rC4_16ruff_source_file8newlines24UniversalNewlineIteratorEINtB5_8FuseImplBY_E4nextCsEhZmuQNqkz_11ruff_linter.exit21.i.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6519
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread119 unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.jr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.da
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.dv

bb.dd:                                            ; preds = %.loopexit134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.js = load ptr, ptr %i.gm, align 8, !nonnull !4, !noundef !4
  %i.jt = load i64, ptr %i.go, align 8, !noundef !4
  invoke void @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia8textwrap6indent(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.js, i64 noundef %i.jt, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bt, i64 noundef %i.bu)
          to label %bb.df unwind label %bb.de

.body100:                                         ; preds = %bb.dq, %bb.de, %bb.dg
  %.pn = phi { ptr, i32 } [ %i.jz, %bb.dg ], [ %i.ju, %bb.de ], [ %i.kk, %bb.dq ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.n) #26
          to label %bb.ce unwind label %bb.dw

bb.de:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.dd
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body100

bb.df:                                            ; preds = %bb.dd
  %i.jv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !nonnull !4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.jy = load i64, ptr %i.jx, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.jy, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.dh unwind label %bb.dg

bb.dg:                                            ; preds = %bb.dn, %bb.dm, %bb.dk, %bb.di, %bb.df
  %i.jz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.j) #26
          to label %.body100 unwind label %bb.dw

bb.dh:                                            ; preds = %bb.df
  %i.ka = load i64, ptr %i.h, align 8, !range !47, !noundef !4
  %i.kb = trunc nuw i64 %i.ka to i1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.kd = load i64, ptr %i.kc, align 8, !range !582, !noundef !4 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.kb, label %bb.di, label %bb.dj, !prof !207

bb.di:                                            ; preds = %bb.dh
  %i.kf = load i64, ptr %i.ke, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.kd, i64 %i.kf) #28
          to label %bb.bt unwind label %bb.dg

bb.dj:                                            ; preds = %bb.dh
  %i.kg = load ptr, ptr %i.ke, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.kh = icmp ule i64 %i.jy, %i.kd
  call void @llvm.assume(i1 %i.kh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not33 = icmp eq i64 %i.jy, 0
  br i1 %.not33, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dl, %bb.dj
  store i64 %i.kd, ptr %i.k, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.kg, ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.jy, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, i32 noundef %.sroa.06.0, i32 noundef %.sroa.013.0)
          to label %bb.dm unwind label %bb.dg

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kg, ptr nonnull align 1 %i.jw, i64 %i.jy, i1 false)
  br label %bb.dk

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.dn unwind label %bb.dg

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.m)
          to label %bb.do unwind label %bb.dg

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ki = load i64, ptr %i.j, align 8, !range !3, !alias.scope !6582, !noundef !4
  %i.kj = icmp eq i64 %i.ki, -1
  br i1 %i.kj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body100 unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.dp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.de

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.do, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.n)
          to label %bb.ds unwind label %.loopexit.split-lp

bb.ds:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i104 unwind label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.km = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %.thread119 unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.kn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i104: ; preds = %bb.ds
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.dv

bb.dv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.dz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i104
  ret void

bb.dw:                                            ; preds = %bb.dy, %bb.dx, %bb.dg, %.body100, %bb.ce
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.dx:                                            ; preds = %bb.bv
  %i.kp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.q) #26
          to label %.thread119 unwind label %bb.dw

.thread119:                                       ; preds = %bb.dx, %bb.ce, %bb.dt, %bb.db, %bb.dy
  %.pn36118 = phi { ptr, i32 } [ %i.km, %bb.dt ], [ %lpad.thr_comm, %bb.dy ], [ %.pn.pn, %bb.ce ], [ %i.jq, %bb.db ], [ %i.kp, %bb.dx ]
  resume { ptr, i32 } %.pn36118

bb.dy:                                            ; preds = %bb.bs, %bb.bu
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentEEB1f_(ptr noalias noundef align 8 dereferenceable(24) %i.s) #26
          to label %.thread119 unwind label %bb.dw

bb.dz:                                            ; preds = %bb.bb, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules5isort5rules16organize_imports15UnsortedImportsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.v, ptr noundef nonnull align 8 %10, i32 noundef %.sroa.0.0.i.i66, i32 noundef %.sroa.26.0.i7.i)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.dv
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules17too_many_branches17too_many_branches(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 104811045873349726) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules17too_many_branches12num_branches.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.sroa.04.0.i.i = phi i64 [ %i.e, %.preheader.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.0.i.i = phi i64 [ %i.d, %.preheader.i ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw [88 x i8], ptr %2, i64 %.sroa.04.0.i.i
  %i.d = tail call fastcc noundef i64 @_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtjjNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules17too_many_branches12num_branches0NCINvXsK_NtNtB8_6traits5accumjNtB3n_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1L_EE0E0B1X_(i64 noundef %.sroa.02.0.i.i, ptr noundef nonnull align 8 %i.c), !inline_history !6585 ; 3 uses
end_hunk_0
