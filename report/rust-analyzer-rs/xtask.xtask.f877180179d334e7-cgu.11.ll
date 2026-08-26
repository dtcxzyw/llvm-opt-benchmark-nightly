Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/xtask.xtask.f877180179d334e7-cgu.11?download=true
inline.NumInlined: 657
inline.NumDeleted: 240
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtNtCslkzCjlEuW1f_5xtask7publish5notes28convert_asciidoc_to_markdownINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEEB6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.al

bb.bd:                                            ; preds = %bb.av
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE23process_document_headerB6_.exit.i: ; preds = %bb.ao, %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.et = invoke fastcc noundef ptr @_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE16skip_blank_linesB6_(ptr nonnull %i.bb)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc18:                                         ; preds = %_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE23process_document_headerB6_.exit.i
  %.not51.i = icmp eq ptr %i.et, null
  br i1 %.not51.i, label %bb.be, label %.loopexit81

bb.be:                                            ; preds = %.noexc18
  %i.eu = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !258, !noundef !5 ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, -1
  call void @llvm.assume(i1 %i.ev)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef 1)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %bb.be
  %i.ew = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !258, !nonnull !5, !noundef !5
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  store i8 10, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i87.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 8 uses
  %.sroa.5.0..sroa_idx.i.i88.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 8 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5112.0..sroa_idx113.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.750.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.454.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.555.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5100.0..sroa_idx101.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.4.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5.0..sroa_idx.i90.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.4108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.5109.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.551.0..sroa_idx52.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i220.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5.0..sroa_idx.i221.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.459.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.560.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.431.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.532.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.497.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.446.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc42, %.noexc19
  %storemerge.in.i = phi i64 [ %i.eu, %.noexc19 ], [ %i.sh, %.noexc42 ]
  %storemerge.i = add nuw i64 %storemerge.in.i, 1
  store i64 %storemerge.i, ptr %.sroa.5.0..sroa_idx, align 8
  %i.fo = load i64, ptr %i.bb, align 8, !range !6, !noundef !5 ; 2 uses
  %.not.i85.i = icmp eq i64 %i.fo, -3
  br i1 %.not.i85.i, label %bb.bg, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !261
  invoke void @_RNvXs8_NtNtCsbSS6DM8SDEO_5alloc2io4utilINtB5_5LinesINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtB9_6string6StringEENtNtNtNtBU_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !261
  %i.fp = load i64, ptr %i.bb, align 8, !range !6, !noundef !5 ; 2 uses
  %i.fq = icmp ne i64 %i.fp, -3
  call void @llvm.assume(i1 %i.fq)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i: ; preds = %.noexc20, %bb.bf
  %i.fr = phi i64 [ %i.fo, %bb.bf ], [ %i.fp, %.noexc20 ] ; 2 uses
  switch i64 %i.fr, label %bb.bj [
    i64 -2, label %bb.bh
    i64 -1, label %bb.bi
  ], !prof !266

bb.bh:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #23
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store ptr %.sroa.520.0..sroa_idx.i.i, ptr %i.ax, align 8, !captures !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr %i.ax, ptr %i.aw, align 8
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCslkzCjlEuW1f_5xtask, ptr %.sroa.441.0..sroa_idx.i, align 8
  %i.fs = invoke fastcc noundef nonnull ptr @_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err(ptr noundef nonnull @2, ptr noundef nonnull %i.aw) #22
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %.loopexit81

bb.bj:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i
  %i.ft = load ptr, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !nonnull !5, !noundef !5 ; 11 uses
  %i.fu = load i64, ptr %i.ey, align 8, !noundef !5 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call fastcc void @_RNvNtNtCslkzCjlEuW1f_5xtask7publish5notes19strip_prefix_symbol(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ft, i64 noundef %i.fu, i32 noundef 61)
  %i.fv = load ptr, ptr %i.ez, align 8, !noundef !5
  %.not53.i = icmp eq ptr %i.fv, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br i1 %.not53.i, label %bb.bk, label %bb.ha

bb.bk:                                            ; preds = %bb.bj
  %i.fw = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ft, i64 noundef %i.fu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 2)
          to label %.noexc23 unwind label %.loopexit

.noexc23:                                         ; preds = %bb.bk
  br i1 %i.fw, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %.noexc23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !267
  call fastcc void @_RNvNtNtCslkzCjlEuW1f_5xtask7publish5notes19strip_prefix_symbol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ft, i64 noundef %i.fu, i32 noundef 42), !noalias !271
  %i.fx = load ptr, ptr %i.fc, align 8, !noalias !267, !noundef !5
  %.not.i86.i = icmp eq ptr %i.fx, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !267
  br i1 %.not.i86.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !267
  call fastcc void @_RNvNtNtCslkzCjlEuW1f_5xtask7publish5notes19strip_prefix_symbol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ft, i64 noundef %i.fu, i32 noundef 46), !noalias !271
  %i.fy = load ptr, ptr %i.fd, align 8, !noalias !267, !noundef !5
  %.not11.i.i = icmp eq ptr %i.fy, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !267
  br i1 %.not11.i.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i32 91, ptr %i.av, align 4
  %i.fz = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ft, i64 noundef %i.fu, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef 1)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br i1 %i.fz, label %bb.gq, label %bb.gp

bb.bo:                                            ; preds = %bb.bm, %bb.bl, %.noexc23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !272
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef 6, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %bb.bo
  %i.ga = load i64, ptr %i.s, align 8, !range !275, !noalias !272, !noundef !5
  %i.gb = trunc nuw i64 %i.ga to i1
  %i.gc = load i64, ptr %i.fe, align 8, !range !276, !noalias !272, !noundef !5 ; 3 uses
  br i1 %i.gb, label %bb.bp, label %_RNvXs0_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB5_11ListNestingNtNtCshzWfHUSfYae_4core7default7Default7default.exit.i.i, !prof !31

bb.bp:                                            ; preds = %.noexc25
  %i.gd = load i64, ptr %i.ff, align 8, !noalias !272
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.gc, i64 %i.gd) #27
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc26:                                         ; preds = %bb.bp
  unreachable

_RNvXs0_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB5_11ListNestingNtNtCshzWfHUSfYae_4core7default7Default7default.exit.i.i: ; preds = %.noexc25
  %i.ge = load ptr, ptr %i.ff, align 8, !noalias !272, !nonnull !5, !noundef !5
  %i.gf = icmp samesign ugt i64 %i.gc, 5
  call void @llvm.assume(i1 %i.gf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !272
  store i64 %i.gc, ptr %i.ag, align 8, !alias.scope !272
  store ptr %i.ge, ptr %.sroa.4.0..sroa_idx.i.i87.i, align 8, !alias.scope !272
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i88.i, align 8, !alias.scope !272
  br label %bb.bq

bb.bq:                                            ; preds = %bb.gh, %_RNvXs0_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB5_11ListNestingNtNtCshzWfHUSfYae_4core7default7Default7default.exit.i.i
  %i.gg = load i64, ptr %i.bb, align 8, !range !6, !noundef !5 ; 2 uses
  %.not.i.i91.i = icmp eq i64 %i.gg, -3
  br i1 %.not.i.i91.i, label %bb.br, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !277
  invoke void @_RNvXs8_NtNtCsbSS6DM8SDEO_5alloc2io4utilINtB5_5LinesINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtB9_6string6StringEENtNtNtNtBU_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd)
          to label %.noexc.i111.i unwind label %.loopexit34.i.i.a

.noexc.i111.i:                                    ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !277
  %i.gh = load i64, ptr %i.bb, align 8, !range !6, !noundef !5 ; 2 uses
  %i.gi = icmp ne i64 %i.gh, -3
  call void @llvm.assume(i1 %i.gi)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i

.body.i.i:                                        ; preds = %bb.gl, %bb.gf, %.body241.i.i, %bb.ck, %.loopexit.split-lp35.i.loopexit.split-lp.i, %.loopexit.split-lp35.i.loopexit.i, %.loopexit34.i.i.a
  %.pn147.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body241.i.i ], [ %i.ql, %bb.gf ], [ %i.gy, %bb.ck ], [ %i.qp, %bb.gl ], [ %lpad.loopexit36.i.i, %.loopexit34.i.i.a ], [ %lpad.loopexit18.i, %.loopexit.split-lp35.i.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp35.i.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCslkzCjlEuW1f_5xtask7publish5notes11ListNestingEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #24
          to label %.body unwind label %bb.gn

.loopexit34.i.i.a:                                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i245.i.i, %bb.dw, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dd, %bb.db, %bb.da, %.noexc188.i.i, %bb.cy, %bb.cx, %bb.cv, %.noexc185.i.i, %bb.cu, %.noexc183.i.i, %bb.cs, %bb.cr, %.loopexit33.i.i, %bb.cm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i.i, %bb.ce, %bb.bw, %bb.br
  %lpad.loopexit36.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp35.i.loopexit.i:                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i253.i.i, %bb.dz, %bb.co, %bb.cn, %bb.ci, %bb.bv
  %lpad.loopexit18.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp35.i.loopexit.split-lp.i:       ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i: ; preds = %.noexc.i111.i, %bb.bq
  %i.gj = phi i64 [ %i.gh, %.noexc.i111.i ], [ %i.gg, %bb.bq ]
  switch i64 %i.gj, label %bb.bw [
    i64 -2, label %bb.bs
    i64 -1, label %bb.bv
  ], !prof !13

bb.bs:                                            ; preds = %bb.cb, %bb.bz, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE12process_listB6_.exit.thread.i unwind label %bb.bt

_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE12process_listB6_.exit.thread.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.noexc27 unwind label %.loopexit

.noexc27:                                         ; preds = %_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE12process_listB6_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.gz

bb.bt:                                            ; preds = %bb.bs
  %i.gk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.bv:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %.sroa.520.0..sroa_idx.i.i, ptr %i.y, align 8, !captures !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.y, ptr %i.x, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCslkzCjlEuW1f_5xtask, ptr %.sroa.497.0..sroa_idx.i.i, align 8
  %i.gm = invoke fastcc noundef nonnull ptr @_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err(ptr noundef nonnull @2, ptr noundef nonnull %i.x)
          to label %bb.go unwind label %.loopexit.split-lp35.i.loopexit.i

bb.bw:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i
  %i.gn = load ptr, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.go = load i64, ptr %i.ey, align 8, !noundef !5 ; 4 uses
  %i.gp = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gn, i64 noundef %i.go, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 2)
          to label %.noexc177.i.i unwind label %.loopexit34.i.i.a

.noexc177.i.i:                                    ; preds = %bb.bw
  br i1 %i.gp, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %.noexc177.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !282
  call fastcc void @_RNvNtNtCslkzCjlEuW1f_5xtask7publish5notes19strip_prefix_symbol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gn, i64 noundef %i.go, i32 noundef 42), !noalias !286
  %i.gq = load ptr, ptr %i.fg, align 8, !noalias !282, !noundef !5
  %.not.i176.i.i = icmp eq ptr %i.gq, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !282
  br i1 %.not.i176.i.i, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !282
  call fastcc void @_RNvNtNtCslkzCjlEuW1f_5xtask7publish5notes19strip_prefix_symbol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gn, i64 noundef %i.go, i32 noundef 46), !noalias !286
  %i.gr = load ptr, ptr %i.fh, align 8, !noalias !282, !noundef !5
  %.not11.i.i.i = icmp eq ptr %i.gr, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !282
  br i1 %.not11.i.i.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.gs = icmp eq i64 %i.go, 1
  br i1 %i.gs, label %bb.cb, label %bb.bs

bb.ca:                                            ; preds = %bb.by, %bb.bx, %.noexc177.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %.sroa.098.0.copyload.i.i = load i64, ptr %i.bb, align 8 ; 3 uses
  store i64 -3, ptr %i.bb, align 8
  %.not140.i.i = icmp eq i64 %.sroa.098.0.copyload.i.i, -3
  br i1 %.not140.i.i, label %bb.dw, label %bb.dv

bb.cb:                                            ; preds = %bb.bz
  %lhsc.i.i = load i8, ptr %i.gn, align 1
  %i.gt = icmp eq i8 %lhsc.i.i, 43
  br i1 %i.gt, label %bb.cc, label %bb.bs

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.sroa.0110.0.copyload.i.i = load i64, ptr %i.bb, align 8 ; 3 uses
  store i64 -3, ptr %i.bb, align 8
  %.not130.i.i = icmp eq i64 %.sroa.0110.0.copyload.i.i, -3
  br i1 %.not130.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store i64 %.sroa.0110.0.copyload.i.i, ptr %i.aa, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5112.0..sroa_idx113.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx.i.i, i64 16, i1 false)
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  invoke void @_RNvXs8_NtNtCsbSS6DM8SDEO_5alloc2io4utilINtB5_5LinesINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtB9_6string6StringEENtNtNtNtBU_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd)
          to label %thread-pre-split.i.i unwind label %.loopexit34.i.i.a

thread-pre-split.i.i:                             ; preds = %bb.ce
  %.pr.i110.i = load i64, ptr %i.aa, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %thread-pre-split.i.i, %bb.cd
  %i.gu = phi i64 [ %.pr.i110.i, %thread-pre-split.i.i ], [ %.sroa.0110.0.copyload.i.i, %bb.cd ] ; 3 uses
  %.not131.i.i = icmp eq i64 %i.gu, -2
  br i1 %.not131.i.i, label %.invoke.i.i, label %bb.cg, !prof !31

bb.cg:                                            ; preds = %bb.cf
  %.sroa.647.0.copyload.i.i = load ptr, ptr %.sroa.5112.0..sroa_idx113.i.i, align 8 ; 3 uses
  %.sroa.750.0.copyload.i.i = load i64, ptr %.sroa.750.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.gv = icmp eq i64 %i.gu, -1
  br i1 %i.gv, label %bb.ci, label %bb.cj

.invoke.i.i:                                      ; preds = %bb.dx, %bb.df, %bb.cf
  %i.gw = phi ptr [ @27, %bb.df ], [ @22, %bb.cf ], [ @28, %bb.dx ]
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gw) #27
          to label %.cont.i.i unwind label %.loopexit.split-lp35.i.loopexit.split-lp.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ch:                                            ; preds = %bb.el
  unreachable

bb.ci:                                            ; preds = %bb.cg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.647.0.copyload.i.i) ]
  %i.gx = invoke noundef nonnull ptr @_RNvXs_NtCsdRkQxkTxnTp_6anyhow5errorNtB6_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCslkzCjlEuW1f_5xtask(ptr noundef nonnull %.sroa.647.0.copyload.i.i)
          to label %bb.du unwind label %.loopexit.split-lp35.i.loopexit.i

bb.cj:                                            ; preds = %bb.cg
  store i64 %i.gu, ptr %i.ab, align 8
  store ptr %.sroa.647.0.copyload.i.i, ptr %.sroa.454.0..sroa_idx.i.i, align 8
  store i64 %.sroa.750.0.copyload.i.i, ptr %.sroa.555.0..sroa_idx.i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i.i unwind label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body.i.i unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i.i: ; preds = %bb.cj
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i109.i unwind label %.loopexit34.i.i.a

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i109.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECslkzCjlEuW1f_5xtask.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ha = load i64, ptr %i.bb, align 8, !range !6, !noundef !5 ; 2 uses
  %.not.i179.i.i = icmp eq i64 %i.ha, -3
  br i1 %.not.i179.i.i, label %bb.cm, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit181.i.i

bb.cm:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i109.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !287
  invoke void @_RNvXs8_NtNtCsbSS6DM8SDEO_5alloc2io4utilINtB5_5LinesINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtB9_6string6StringEENtNtNtNtBU_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd)
end_hunk_0
begin_hunk_1_@_RINvNtNtCslkzCjlEuW1f_5xtask7publish5notes28convert_asciidoc_to_markdownINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEEB6_:bb.a
  %..i.i.i.i.i.i.2 = select i1 %i.ht, i64 3, i64 2
  %i.hu = add i64 %..i.i.i.i.i.i.2, %i.hq
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %.val157.i.i, i64 %.sroa.04.0.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 48
  %.val.i.i.i.i.3 = load i64, ptr %i.hw, align 8, !range !23, !noundef !5
  %i.hx = icmp eq i64 %.val.i.i.i.i.3, 2
  %..i.i.i.i.i.i.3 = select i1 %i.hx, i64 3, i64 2
  %i.hy = add i64 %..i.i.i.i.i.i.3, %i.hu         ; 3 uses
  %i.hz = add nuw i64 %.sroa.04.0.i.i.i.i, 4      ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit33.i.i.loopexit.unr-lcssa, label %.preheader.i.i.i

.loopexit33.i.i.loopexit.unr-lcssa:               ; preds = %.preheader.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit33.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %.loopexit33.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.hz, %.loopexit33.i.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.hy, %.loopexit33.i.i.loopexit.unr-lcssa ]
  %lcmp.mod549 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod549)
  br label %.preheader.i.i.i.epil

.preheader.i.i.i.epil:                            ; preds = %.preheader.i.i.i.epil, %.preheader.i.i.i.epil.preheader
  %.sroa.04.0.i.i.i.i.epil = phi i64 [ %i.id, %.preheader.i.i.i.epil ], [ %.sroa.04.0.i.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi i64 [ %i.ic, %.preheader.i.i.i.epil ], [ %.sroa.02.0.i.i.i.i.epil.init, %.preheader.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.epil ], [ 0, %.preheader.i.i.i.epil.preheader ]
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %.val157.i.i, i64 %.sroa.04.0.i.i.i.i.epil
  %.val.i.i.i.i.epil = load i64, ptr %i.ia, align 8, !range !23, !noundef !5
  %i.ib = icmp eq i64 %.val.i.i.i.i.epil, 2
  %..i.i.i.i.i.i.epil = select i1 %i.ib, i64 3, i64 2
  %i.ic = add i64 %..i.i.i.i.i.i.epil, %.sroa.02.0.i.i.i.i.epil ; 2 uses
  %i.id = add nuw i64 %.sroa.04.0.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit33.i.i, label %.preheader.i.i.i.epil, !llvm.loop !292

.loopexit33.i.i:                                  ; preds = %.loopexit33.i.i.loopexit.unr-lcssa, %.preheader.i.i.i.epil, %bb.cp
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.cp ], [ %i.hy, %.loopexit33.i.i.loopexit.unr-lcssa ], [ %i.ic, %.preheader.i.i.i.epil ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i32 91, ptr %i.u, align 4
  %i.ie = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hg, i64 noundef %i.hh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef 1)
          to label %bb.cq unwind label %.loopexit34.i.i.a

bb.cq:                                            ; preds = %.loopexit33.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.ie, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.if = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hg, i64 noundef %i.hh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4)
          to label %bb.ct unwind label %.loopexit34.i.i.a

bb.cs:                                            ; preds = %bb.cq
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef 0)
          to label %.noexc183.i.i unwind label %.loopexit34.i.i.a

.noexc183.i.i:                                    ; preds = %bb.cs
  %i.ig = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !294, !noalias !297, !noundef !5 ; 3 uses
  %i.ih = icmp sgt i64 %i.ig, -1
  call void @llvm.assume(i1 %i.ih)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef 1)
          to label %bb.dq unwind label %.loopexit34.i.i.a

bb.ct:                                            ; preds = %bb.cr
  br i1 %i.if, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef 0)
          to label %.noexc185.i.i unwind label %.loopexit34.i.i.a

.noexc185.i.i:                                    ; preds = %bb.cu
  %i.ii = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !300, !noalias !303, !noundef !5 ; 3 uses
  %i.ij = icmp sgt i64 %i.ii, -1
  call void @llvm.assume(i1 %i.ij)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef 1)
          to label %bb.do unwind label %.loopexit34.i.i.a

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i32 46, ptr %i.t, align 4
  %i.ik = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hg, i64 noundef %i.hh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef 1)
          to label %bb.cw unwind label %.loopexit34.i.i.a

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %i.ik, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.il = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hg, i64 noundef %i.hh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 7)
          to label %bb.cz unwind label %.loopexit34.i.i.a

bb.cy:                                            ; preds = %bb.cw
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef 0)
          to label %.noexc188.i.i unwind label %.loopexit34.i.i.a

.noexc188.i.i:                                    ; preds = %bb.cy
  %i.im = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !306, !noalias !309, !noundef !5 ; 3 uses
  %i.in = icmp sgt i64 %i.im, -1
  call void @llvm.assume(i1 %i.in)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef 1)
          to label %bb.dm unwind label %.loopexit34.i.i.a

bb.cz:                                            ; preds = %bb.cx
  br i1 %i.il, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.io = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hg, i64 noundef %i.hh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 7)
          to label %bb.dc unwind label %.loopexit34.i.i.a

bb.db:                                            ; preds = %bb.cz
  invoke fastcc void @_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE10write_lineB6_(ptr nonnull %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i64 noundef 0)
          to label %bb.dk unwind label %.loopexit34.i.i.a

bb.dc:                                            ; preds = %bb.da
  br i1 %i.io, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke fastcc void @_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE10write_lineB6_(ptr nonnull %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i64 noundef 0)
          to label %bb.df unwind label %.loopexit34.i.i.a

bb.de:                                            ; preds = %bb.dc
  invoke fastcc void @_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE10write_lineB6_(ptr nonnull %i.bc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0, i64 noundef 0)
          to label %bb.di unwind label %.loopexit34.i.i.a

bb.df:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ip = load i64, ptr %.sroa.5.0..sroa_idx.i.i88.i, align 8, !noundef !5 ; 2 uses
  %.not133.i.i = icmp eq i64 %i.ip, 0
  br i1 %.not133.i.i, label %.invoke.i.i, label %bb.dg, !prof !31

bb.dg:                                            ; preds = %bb.df
  %i.iq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i87.i, align 8, !nonnull !5, !noundef !5
  %i.ir = getelementptr [16 x i8], ptr %i.iq, i64 %i.ip
  %i.is = getelementptr i8, ptr %i.ir, i64 -16
  store ptr %i.is, ptr %i.z, align 8, !captures !14
  %i.it = invoke fastcc noundef ptr @_RINvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB3_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE17process_paragraphNCNvB2_12process_lists2_0EB7_(ptr nonnull %i.bb, ptr nonnull %i.bc, i64 noundef %.sroa.0.0.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.z)
          to label %bb.dh unwind label %.loopexit34.i.i.a ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %.not134.i.i = icmp eq ptr %i.it, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br i1 %.not134.i.i, label %bb.ds, label %_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err.exit.i.i

bb.di:                                            ; preds = %bb.de
  %i.iu = invoke fastcc noundef ptr @_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE19process_video_blockB6_(ptr nonnull %i.bb, ptr nonnull %i.bc, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.dj unwind label %.loopexit34.i.i.a ; 2 uses

bb.dj:                                            ; preds = %bb.di
  %.not135.i.i = icmp eq ptr %i.iu, null
  br i1 %.not135.i.i, label %bb.ds, label %_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err.exit.i.i

bb.dk:                                            ; preds = %bb.db
  %i.iv = invoke fastcc noundef ptr @_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE19process_image_blockB6_(ptr nonnull %i.bb, ptr nonnull %i.bc, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.dl unwind label %.loopexit34.i.i.a ; 2 uses

bb.dl:                                            ; preds = %bb.dk
  %.not136.i.i = icmp eq ptr %i.iv, null
  br i1 %.not136.i.i, label %bb.ds, label %_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err.exit.i.i

bb.dm:                                            ; preds = %.noexc188.i.i
  %i.iw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !312, !noalias !309, !nonnull !5, !noundef !5
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.im
  store i8 10, ptr %i.ix, align 1, !noalias !309
  %i.iy = add nuw i64 %i.im, 1
  store i64 %i.iy, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !312, !noalias !309
  %i.iz = invoke fastcc noundef ptr @_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE24process_block_with_titleB6_(ptr nonnull %i.bb, ptr nonnull %i.bc, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.dn unwind label %.loopexit34.i.i.a ; 2 uses

bb.dn:                                            ; preds = %bb.dm
  %.not137.i.i = icmp eq ptr %i.iz, null
  br i1 %.not137.i.i, label %bb.ds, label %_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err.exit.i.i

bb.do:                                            ; preds = %.noexc185.i.i
  %i.ja = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !315, !noalias !303, !nonnull !5, !noundef !5
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.ii
  store i8 10, ptr %i.jb, align 1, !noalias !303
  %i.jc = add nuw i64 %i.ii, 1
  store i64 %i.jc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !315, !noalias !303
  %i.jd = invoke fastcc noundef ptr @_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE21process_listing_blockB6_(ptr nonnull %i.bb, ptr nonnull %i.bc, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.dp unwind label %.loopexit34.i.i.a ; 2 uses

bb.dp:                                            ; preds = %bb.do
  %.not138.i.i = icmp eq ptr %i.jd, null
  br i1 %.not138.i.i, label %bb.ds, label %_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err.exit.i.i

bb.dq:                                            ; preds = %.noexc183.i.i
  %i.je = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !318, !noalias !297, !nonnull !5, !noundef !5
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.ig
  store i8 10, ptr %i.jf, align 1, !noalias !297
  %i.jg = add nuw i64 %i.ig, 1
  store i64 %i.jg, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !318, !noalias !297
  %i.jh = invoke fastcc noundef ptr @_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE25process_source_code_blockB6_(ptr nonnull %i.bb, ptr nonnull %i.bc, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.dr unwind label %.loopexit34.i.i.a ; 2 uses

bb.dr:                                            ; preds = %bb.dq
  %.not139.i.i = icmp eq ptr %i.jh, null
  br i1 %.not139.i.i, label %bb.ds, label %_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err.exit.i.i

bb.ds:                                            ; preds = %bb.dh, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit249.i.i, %bb.dr, %bb.dp, %bb.dn, %bb.dl, %bb.dj
  %i.ji = invoke fastcc noundef ptr @_RNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB2_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE16skip_blank_linesB6_(ptr nonnull %i.bb)
          to label %bb.gh unwind label %.loopexit34.i.i.a ; 2 uses

bb.dt:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err.exit.i.i

bb.du:                                            ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err.exit.i.i

bb.dv:                                            ; preds = %bb.ca
  store i64 %.sroa.098.0.copyload.i.i, ptr %i.ae, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5100.0..sroa_idx101.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.520.0..sroa_idx.i.i, i64 16, i1 false)
  br label %bb.dx

bb.dw:                                            ; preds = %bb.ca
  invoke void @_RNvXs8_NtNtCsbSS6DM8SDEO_5alloc2io4utilINtB5_5LinesINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtB9_6string6StringEENtNtNtNtBU_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd)
          to label %thread-pre-split6.i.i unwind label %.loopexit34.i.i.a

thread-pre-split6.i.i:                            ; preds = %bb.dw
  %.pr7.i.i = load i64, ptr %i.ae, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %thread-pre-split6.i.i, %bb.dv
  %i.jj = phi i64 [ %.pr7.i.i, %thread-pre-split6.i.i ], [ %.sroa.098.0.copyload.i.i, %bb.dv ] ; 3 uses
  %.not141.i.i = icmp eq i64 %i.jj, -2
  br i1 %.not141.i.i, label %.invoke.i.i, label %bb.dy, !prof !31

bb.dy:                                            ; preds = %bb.dx
  %.sroa.616.0.copyload.i.i = load ptr, ptr %.sroa.5100.0..sroa_idx101.i.i, align 8 ; 4 uses
  %.sroa.7.0.copyload.i95.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.jk = icmp eq i64 %i.jj, -1
  br i1 %i.jk, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.616.0.copyload.i.i) ]
  %i.jl = invoke noundef nonnull ptr @_RNvXs_NtCsdRkQxkTxnTp_6anyhow5errorNtB6_5ErrorINtNtCshzWfHUSfYae_4core7convert4FromNtNtNtBN_2io5error5ErrorE4fromCslkzCjlEuW1f_5xtask(ptr noundef nonnull %.sroa.616.0.copyload.i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit257.i.i unwind label %.loopexit.split-lp35.i.loopexit.i

bb.ea:                                            ; preds = %bb.dy
  store i64 %i.jj, ptr %i.af, align 8
  store ptr %.sroa.616.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i89.i, align 8
  store i64 %.sroa.7.0.copyload.i95.i, ptr %.sroa.5.0..sroa_idx.i90.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke fastcc void @_RNvNtNtCslkzCjlEuW1f_5xtask7publish5notes21process_inline_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.616.0.copyload.i.i, i64 noundef %.sroa.7.0.copyload.i95.i)
          to label %bb.eb unwind label %.loopexit39.i.i

.body241.i.i:                                     ; preds = %bb.gd, %.body236.i.i, %.loopexit.split-lp40.i.i, %.loopexit39.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body237.i.i, %.body236.i.i ], [ %i.qj, %bb.gd ], [ %lpad.loopexit41.i.i, %.loopexit39.i.i ], [ %lpad.loopexit.split-lp42.i.i, %.loopexit.split-lp40.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.af) #24
          to label %.body.i.i unwind label %bb.gn

.loopexit39.i.i:                                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i240.i.i, %bb.ea
  %lpad.loopexit41.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body241.i.i

.loopexit.split-lp40.i.i:                         ; preds = %.loopexit47.i.i
  %lpad.loopexit.split-lp42.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body241.i.i

bb.eb:                                            ; preds = %bb.ea
  %i.jm = load i64, ptr %i.ac, align 8, !range !32, !noundef !5 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, -2
  %i.jo = load ptr, ptr %.sroa.4108.0..sroa_idx.i.i, align 8 ; 6 uses
  br i1 %i.jn, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.gk

bb.ed:                                            ; preds = %bb.eb
  %.sroa.5109.0.copyload.i.i = load i64, ptr %.sroa.5109.0..sroa_idx.i.i, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  store i64 %i.jm, ptr %i.ad, align 8
  store ptr %i.jo, ptr %.sroa.431.0..sroa_idx.i.i, align 8
  store i64 %.sroa.5109.0.copyload.i.i, ptr %.sroa.532.0..sroa_idx.i.i, align 8
  %i.jp = invoke noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jo, i64 noundef %.sroa.5109.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 2)
          to label %.noexc201.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc201.i.i:                                    ; preds = %bb.ed
  br i1 %i.jp, label %.thread.i.i, label %bb.ee

bb.ee:                                            ; preds = %.noexc201.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !321
  call fastcc void @_RNvNtNtCslkzCjlEuW1f_5xtask7publish5notes19strip_prefix_symbol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jo, i64 noundef %.sroa.5109.0.copyload.i.i, i32 noundef 42), !noalias !325
  %i.jq = load ptr, ptr %i.fi, align 8, !noalias !321, !noundef !5 ; 2 uses
  %.not.i191.i.i = icmp eq ptr %i.jq, null
  br i1 %.not.i191.i.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.jr = load i64, ptr %i.n, align 8, !noalias !321, !noundef !5
  %i.js = load i64, ptr %i.fj, align 8, !noalias !321, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !321
  br label %bb.ei

bb.eg:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !321
  call fastcc void @_RNvNtNtCslkzCjlEuW1f_5xtask7publish5notes19strip_prefix_symbol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jo, i64 noundef %.sroa.5109.0.copyload.i.i, i32 noundef 46), !noalias !325
  %i.jt = load ptr, ptr %i.fk, align 8, !noalias !321, !noundef !5 ; 2 uses
  %.not11.i195.i.i = icmp eq ptr %i.jt, null
  br i1 %.not11.i195.i.i, label %bb.el, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ju = load i64, ptr %i.m, align 8, !noalias !321, !noundef !5
  %i.jv = load i64, ptr %i.fl, align 8, !noalias !321, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !321
  br label %bb.ei

.loopexit.i.i:                                    ; preds = %_RNCNvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB4_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE12process_lists_0B8_.exit.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body236.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit78.i.i.i, %bb.fa, %bb.ev, %bb.es
  %lpad.loopexit26.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body236.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ep
  %lpad.loopexit29.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body236.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslkzCjlEuW1f_5xtask.exit.i.i106.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask.exit6.i.i.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask.exit.i.i100.i, %._crit_edge.i.i.i, %bb.ek, %.split.us.i.i.i, %bb.ed
  %lpad.loopexit44.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body236.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i: ; preds = %bb.fe, %bb.et
  %lpad.loopexit20.i = landingpad { ptr, i32 }
          cleanup
  br label %.body236.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i: ; preds = %bb.fd, %bb.el
  %lpad.loopexit.split-lp21.i = landingpad { ptr, i32 }
          cleanup
  br label %.body236.i.i

.body236.i.i:                                     ; preds = %bb.fz, %bb.fk, %.body.i.i101.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %eh.lpad-body237.i.i = phi { ptr, i32 } [ %.pn.i.i102.i, %.body.i.i101.i ], [ %i.qe, %bb.fz ], [ %i.oz, %bb.fk ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit26.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit29.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit44.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit20.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i ], [ %lpad.loopexit.split-lp21.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc6borrow3CoweEECslkzCjlEuW1f_5xtask(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #24
          to label %.body241.i.i unwind label %bb.gn

bb.ei:                                            ; preds = %bb.eh, %bb.ef
  %.sroa.14.0.ph.i.i = phi i64 [ %i.js, %bb.ef ], [ %i.jv, %bb.eh ] ; 3 uses
  %.sroa.102.0.ph.i.i = phi ptr [ %i.jq, %bb.ef ], [ %i.jt, %bb.eh ] ; 3 uses
  %.sroa.7.0.ph.i.i = phi i64 [ %i.jr, %bb.ef ], [ %i.ju, %bb.eh ] ; 3 uses
  %.sroa.01.0.ph.i.i = phi i64 [ 0, %bb.ef ], [ 2, %bb.eh ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !326)
  %i.jw = load ptr, ptr %.sroa.4.0..sroa_idx.i.i87.i, align 8, !alias.scope !326, !nonnull !5, !noundef !5 ; 4 uses
  %i.jx = load i64, ptr %.sroa.5.0..sroa_idx.i.i88.i, align 8, !alias.scope !326, !noundef !5 ; 4 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.jx, 4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx.i.i.i
  %i.jz = icmp eq i64 %i.jx, 0
  br i1 %i.jz, label %.loopexit.i.i96.i, label %.lr.ph.i.split.i.i.i

.thread.i.i:                                      ; preds = %.noexc201.i.i
  %i.ka = add i64 %.sroa.5109.0.copyload.i.i, -2  ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jo, i64 2 ; 3 uses
  %i.kc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i87.i, align 8, !alias.scope !329, !nonnull !5, !noundef !5 ; 4 uses
  %i.kd = load i64, ptr %.sroa.5.0..sroa_idx.i.i88.i, align 8, !alias.scope !329, !noundef !5 ; 4 uses
  %.idx.i184.i.i = shl nuw nsw i64 %i.kd, 4
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 %.idx.i184.i.i
  %i.kf = icmp eq i64 %i.kd, 0
  br i1 %i.kf, label %.loopexit.i.i96.i, label %.lr.ph.i.split.us.i.i.i

.lr.ph.i.split.us.i.i.i:                          ; preds = %.thread.i.i, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i
  %.sroa.02.013.i.us.i.i.i = phi i64 [ %i.kj, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i ], [ 0, %.thread.i.i ] ; 2 uses
  %i.kg = phi ptr [ %i.ki, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i ], [ %i.kc, %.thread.i.i ] ; 2 uses
  %.val6.i.us.i.i.i = load i64, ptr %i.kg, align 8, !range !23, !noalias !331, !noundef !5
  %i.kh = icmp eq i64 %.val6.i.us.i.i.i, 1
  br i1 %i.kh, label %.split.us.i.i.i, label %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i

_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i: ; preds = %.lr.ph.i.split.us.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = add nuw nsw i64 %.sroa.02.013.i.us.i.i.i, 1
  %i.kk = icmp eq ptr %i.ki, %i.ke
  br i1 %i.kk, label %.loopexit.i.i96.i, label %.lr.ph.i.split.us.i.i.i

.lr.ph.i.split.i.i.i:                             ; preds = %bb.ei, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i
  %.sroa.02.013.i.i.i.i = phi i64 [ %i.kq, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i ], [ 0, %bb.ei ] ; 2 uses
  %i.kl = phi ptr [ %i.km, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i ], [ %i.jw, %bb.ei ] ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %.val6.i.i.i.i = load i64, ptr %i.kl, align 8, !range !23, !noalias !331, !noundef !5
  %i.kn = icmp eq i64 %.val6.i.i.i.i, %.sroa.01.0.ph.i.i
  br i1 %i.kn, label %bb.ej, label %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i

bb.ej:                                            ; preds = %.lr.ph.i.split.i.i.i
  %i.ko = getelementptr i8, ptr %i.kl, i64 8
  %.val7.i.i.i.i = load i64, ptr %i.ko, align 8, !noalias !331
  %i.kp = icmp eq i64 %.val7.i.i.i.i, %.sroa.7.0.ph.i.i
  br i1 %i.kp, label %.split.us.i.i.i, label %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i

_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i: ; preds = %bb.ej, %.lr.ph.i.split.i.i.i
  %i.kq = add nuw nsw i64 %.sroa.02.013.i.i.i.i, 1
  %i.kr = icmp eq ptr %i.km, %i.jy
  br i1 %i.kr, label %.loopexit.i.i96.i, label %.lr.ph.i.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.ej, %.lr.ph.i.split.us.i.i.i
  %.sroa.14.0.ph186204.i.i = phi i64 [ %i.ka, %.lr.ph.i.split.us.i.i.i ], [ %.sroa.14.0.ph.i.i, %bb.ej ]
  %.sroa.102.0.ph189202.i.i = phi ptr [ %i.kb, %.lr.ph.i.split.us.i.i.i ], [ %.sroa.102.0.ph.i.i, %bb.ej ]
  %i.ks = phi i64 [ %i.kd, %.lr.ph.i.split.us.i.i.i ], [ %i.jx, %bb.ej ]
  %.us-phi.i.i.i = phi i64 [ %.sroa.02.013.i.us.i.i.i, %.lr.ph.i.split.us.i.i.i ], [ %.sroa.02.013.i.i.i.i, %bb.ej ] ; 2 uses
  %i.kt = icmp ult i64 %.us-phi.i.i.i, %i.ks
  call void @llvm.assume(i1 %i.kt)
  %i.ku = add nuw i64 %.us-phi.i.i.i, 1
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerE8truncateBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.ku)
          to label %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exitthread-pre-split.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.loopexit.i.i96.i:                                ; preds = %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i, %.thread.i.i, %bb.ei
  %i.kv = phi i64 [ 0, %.thread.i.i ], [ %i.kd, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i ], [ 0, %bb.ei ], [ %i.jx, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i ] ; 3 uses
  %i.kw = phi ptr [ %i.kc, %.thread.i.i ], [ %i.kc, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i ], [ %i.jw, %bb.ei ], [ %i.jw, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i ]
  %.sroa.01.0.ph194.i.i = phi i64 [ 1, %.thread.i.i ], [ 1, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i ], [ %.sroa.01.0.ph.i.i, %bb.ei ], [ %.sroa.01.0.ph.i.i, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i ]
  %.sroa.7.0.ph192.i.i = phi i64 [ undef, %.thread.i.i ], [ undef, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i ], [ %.sroa.7.0.ph.i.i, %bb.ei ], [ %.sroa.7.0.ph.i.i, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i ]
  %.sroa.102.0.ph190.i.i = phi ptr [ %i.kb, %.thread.i.i ], [ %i.kb, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i ], [ %.sroa.102.0.ph.i.i, %bb.ei ], [ %.sroa.102.0.ph.i.i, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i ]
  %.sroa.14.0.ph187.i.i = phi i64 [ %i.ka, %.thread.i.i ], [ %i.ka, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.us.i.i.i ], [ %.sroa.14.0.ph.i.i, %bb.ei ], [ %.sroa.14.0.ph.i.i, %_RNCNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB6_11ListNesting11set_current0Ba_.exit.thread9.i.i.i.i ]
  %i.kx = load i64, ptr %i.ag, align 8, !range !335, !alias.scope !336, !noundef !5
  %i.ky = icmp eq i64 %i.kv, %i.kx
  br i1 %i.ky, label %bb.ek, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerE8push_mutBL_.exit.i.i.i

bb.ek:                                            ; preds = %.loopexit.i.i96.i
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #28
          to label %.noexc204.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc204.i.i:                                    ; preds = %bb.ek
  %.pre.i.i108.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i87.i, align 8, !alias.scope !336
  br label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerE8push_mutBL_.exit.i.i.i

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerE8push_mutBL_.exit.i.i.i: ; preds = %.noexc204.i.i, %.loopexit.i.i96.i
  %i.kz = phi ptr [ %i.kw, %.loopexit.i.i96.i ], [ %.pre.i.i108.i, %.noexc204.i.i ]
  %i.la = getelementptr inbounds nuw [16 x i8], ptr %i.kz, i64 %i.kv ; 2 uses
  store i64 %.sroa.01.0.ph194.i.i, ptr %i.la, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store i64 %.sroa.7.0.ph192.i.i, ptr %i.lb, align 8
  %i.lc = add i64 %i.kv, 1                        ; 2 uses
  store i64 %i.lc, ptr %.sroa.5.0..sroa_idx.i.i88.i, align 8, !alias.scope !336
  br label %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exit.i.i

bb.el:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !321
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i

_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exitthread-pre-split.i.i: ; preds = %.split.us.i.i.i
  %.val173.pr.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i88.i, align 8
  br label %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exit.i.i

_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exit.i.i: ; preds = %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exitthread-pre-split.i.i, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerE8push_mutBL_.exit.i.i.i
  %.sroa.102.0.ph188.i.i = phi ptr [ %.sroa.102.0.ph189202.i.i, %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exitthread-pre-split.i.i ], [ %.sroa.102.0.ph190.i.i, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerE8push_mutBL_.exit.i.i.i ]
  %.sroa.14.0.ph185.i.i = phi i64 [ %.sroa.14.0.ph186204.i.i, %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exitthread-pre-split.i.i ], [ %.sroa.14.0.ph187.i.i, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerE8push_mutBL_.exit.i.i.i ] ; 4 uses
  %.val173.i.i = phi i64 [ %.val173.pr.i.i, %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exitthread-pre-split.i.i ], [ %i.lc, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerE8push_mutBL_.exit.i.i.i ] ; 5 uses
  %.val172.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i87.i, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %.val172.i.i, i64 %.val173.i.i
  %i.le = icmp ult i64 %.val173.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.le)
  %i.lf = add nsw i64 %.val173.i.i, -1
  %..i.i.i.i205.i.i = call noundef i64 @llvm.umin.i64(i64 %.val173.i.i, i64 %i.lf) ; 4 uses
  %.not.i.i.i.i97.i = icmp eq i64 %..i.i.i.i205.i.i, 0
  br i1 %.not.i.i.i.i97.i, label %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exit.i.i
  %xtraiter550 = and i64 %..i.i.i.i205.i.i, 3     ; 3 uses
  %i.lg = icmp samesign ult i64 %..i.i.i.i205.i.i, 4
  br i1 %i.lg, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter555 = and i64 %..i.i.i.i205.i.i, 576460752303423484
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %.sroa.0.011.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.lw, %.lr.ph.i.i.i.i.i ]
  %.sroa.02.010.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %i.ls, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %niter556 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter556.next.3, %.lr.ph.i.i.i.i.i ]
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %.val172.i.i, i64 %.sroa.02.010.i.i.i.i.i
  %.val9.i.i.i.i.i = load i64, ptr %i.lh, align 8, !range !23, !noalias !339, !noundef !5
  %i.li = icmp eq i64 %.val9.i.i.i.i.i, 2
  %..i.i.i.i.i.i.i = select i1 %i.li, i64 3, i64 2
  %i.lj = add i64 %..i.i.i.i.i.i.i, %.sroa.0.011.i.i.i.i.i
  %i.lk = getelementptr inbounds nuw [16 x i8], ptr %.val172.i.i, i64 %.sroa.02.010.i.i.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %.val9.i.i.i.i.i.1 = load i64, ptr %i.ll, align 8, !range !23, !noalias !339, !noundef !5
  %i.lm = icmp eq i64 %.val9.i.i.i.i.i.1, 2
  %..i.i.i.i.i.i.i.1 = select i1 %i.lm, i64 3, i64 2
  %i.ln = add i64 %..i.i.i.i.i.i.i.1, %i.lj
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %.val172.i.i, i64 %.sroa.02.010.i.i.i.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %.val9.i.i.i.i.i.2 = load i64, ptr %i.lp, align 8, !range !23, !noalias !339, !noundef !5
  %i.lq = icmp eq i64 %.val9.i.i.i.i.i.2, 2
  %..i.i.i.i.i.i.i.2 = select i1 %i.lq, i64 3, i64 2
  %i.lr = add i64 %..i.i.i.i.i.i.i.2, %i.ln
  %i.ls = add nuw nsw i64 %.sroa.02.010.i.i.i.i.i, 4 ; 2 uses
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %.val172.i.i, i64 %.sroa.02.010.i.i.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 48
  %.val9.i.i.i.i.i.3 = load i64, ptr %i.lu, align 8, !range !23, !noalias !339, !noundef !5
  %i.lv = icmp eq i64 %.val9.i.i.i.i.i.3, 2
  %..i.i.i.i.i.i.i.3 = select i1 %i.lv, i64 3, i64 2
  %i.lw = add i64 %..i.i.i.i.i.i.i.3, %i.lr       ; 3 uses
  %niter556.next.3 = add i64 %niter556, 4         ; 2 uses
  %niter556.ncmp.3 = icmp eq i64 %niter556.next.3, %unroll_iter555
  br i1 %niter556.ncmp.3, label %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod552.not = icmp eq i64 %xtraiter550, 0
  br i1 %lcmp.mod552.not, label %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.011.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.lw, %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.02.010.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ls, %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod554 = icmp ne i64 %xtraiter550, 0
  call void @llvm.assume(i1 %lcmp.mod554)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.sroa.0.011.i.i.i.i.i.epil = phi i64 [ %i.ma, %.lr.ph.i.i.i.i.i.epil ], [ %.sroa.0.011.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %.sroa.02.010.i.i.i.i.i.epil = phi i64 [ %i.lx, %.lr.ph.i.i.i.i.i.epil ], [ %.sroa.02.010.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter551 = phi i64 [ %epil.iter551.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %i.lx = add nuw nsw i64 %.sroa.02.010.i.i.i.i.i.epil, 1
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %.val172.i.i, i64 %.sroa.02.010.i.i.i.i.i.epil
  %.val9.i.i.i.i.i.epil = load i64, ptr %i.ly, align 8, !range !23, !noalias !339, !noundef !5
  %i.lz = icmp eq i64 %.val9.i.i.i.i.i.epil, 2
  %..i.i.i.i.i.i.i.epil = select i1 %i.lz, i64 3, i64 2
  %i.ma = add i64 %..i.i.i.i.i.i.i.epil, %.sroa.0.011.i.i.i.i.i.epil ; 2 uses
  %epil.iter551.next = add i64 %epil.iter551, 1   ; 2 uses
  %epil.iter551.cmp.not = icmp eq i64 %epil.iter551.next, %xtraiter550
  br i1 %epil.iter551.cmp.not, label %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !346

_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i: ; preds = %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exit.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting11set_current.exit.i.i ], [ %i.lw, %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i.loopexit.unr-lcssa ], [ %i.ma, %.lr.ph.i.i.i.i.i.epil ] ; 2 uses
  %.not.i.i.i98.i = icmp eq i64 %.val173.i.i, 0
  br i1 %.not.i.i.i98.i, label %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6marker.exit.i.i.i, label %bb.em

bb.em:                                            ; preds = %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i
  %i.mb = getelementptr i8, ptr %i.ld, i64 -16
  %i.mc = load i64, ptr %i.mb, align 8, !range !23, !noalias !347, !noundef !5
  %i.md = icmp eq i64 %i.mc, 2                    ; 2 uses
  %..i.i.i.i = select i1 %i.md, i64 3, i64 2
  %.2.i.i.i.i = select i1 %i.md, ptr @15, ptr @14
  br label %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6marker.exit.i.i.i

_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6marker.exit.i.i.i: ; preds = %bb.em, %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i
  %.sroa.5.0.i.i.i.i = phi i64 [ %..i.i.i.i, %bb.em ], [ 0, %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i ] ; 4 uses
  %.sroa.01.0.i.i.i.i = phi ptr [ %.2.i.i.i.i, %bb.em ], [ inttoptr (i64 1 to ptr), %_RINvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB6_4TakeINtNtNtBc_5slice4iter4IterNtNtNtCslkzCjlEuW1f_5xtask7publish5notes10ListMarkerEENtB6_8SpecTake9spec_foldjNCINvNtB8_3map8map_foldRB1p_jjNCNvMs_B1r_NtB1r_11ListNesting6marker0NCINvXsK_NtNtBa_6traits5accumjNtB3V_3Sum3sumINtB2L_3MapBO_B3a_EE0E0EB1v_.exit.i.i.i.i ]
  %.not.i206.i.i = icmp eq i64 %.sroa.0.0.lcssa.i.i.i.i.i, 0
  br i1 %.not.i206.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6marker.exit.i.i.i
  %.pre.i207.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !348, !noalias !351
  br label %bb.ep

._crit_edge.i.i.i:                                ; preds = %.noexc211.i.i, %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6marker.exit.i.i.i
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %.sroa.5.0.i.i.i.i)
          to label %.noexc208.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc208.i.i:                                    ; preds = %._crit_edge.i.i.i
  %i.me = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !352, !noalias !351, !noundef !5 ; 3 uses
  %i.mf = icmp sgt i64 %i.me, -1
  call void @llvm.assume(i1 %i.mf)
  %.not.i3.i.i.i = icmp eq i64 %.sroa.5.0.i.i.i.i, 0
  br i1 %.not.i3.i.i.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask.exit.i.i100.i, label %bb.en

bb.en:                                            ; preds = %.noexc208.i.i
  %i.mg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !352, !noalias !351, !nonnull !5, !noundef !5
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.me
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mh, ptr nonnull readonly align 1 %.sroa.01.0.i.i.i.i, i64 %.sroa.5.0.i.i.i.i, i1 false), !noalias !351
  %.pre.i.i.i99.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !352, !noalias !351
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask.exit.i.i100.i

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask.exit.i.i100.i: ; preds = %bb.en, %.noexc208.i.i
  %i.mi = phi i64 [ %.pre.i.i.i99.i, %bb.en ], [ %i.me, %.noexc208.i.i ]
  %i.mj = add i64 %i.mi, %.sroa.5.0.i.i.i.i
  store i64 %i.mj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !352, !noalias !351
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %.sroa.14.0.ph185.i.i)
          to label %.noexc209.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc209.i.i:                                    ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask.exit.i.i100.i
  %i.mk = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !355, !noalias !351, !noundef !5 ; 3 uses
  %i.ml = icmp sgt i64 %i.mk, -1
  call void @llvm.assume(i1 %i.ml)
  %.not.i4.i.i.i = icmp eq i64 %.sroa.14.0.ph185.i.i, 0
  br i1 %.not.i4.i.i.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask.exit6.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %.noexc209.i.i
  %i.mm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !355, !noalias !351, !nonnull !5, !noundef !5
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mn, ptr nonnull readonly align 1 %.sroa.102.0.ph188.i.i, i64 %.sroa.14.0.ph185.i.i, i1 false)
  %.pre.i5.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !355, !noalias !351
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask.exit6.i.i.i

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask.exit6.i.i.i: ; preds = %bb.eo, %.noexc209.i.i
  %i.mo = phi i64 [ %.pre.i5.i.i.i, %bb.eo ], [ %i.mk, %.noexc209.i.i ]
  %i.mp = add i64 %i.mo, %.sroa.14.0.ph185.i.i    ; 4 uses
  store i64 %i.mp, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !355, !noalias !351
  %i.mq = icmp sgt i64 %i.mp, -1
  call void @llvm.assume(i1 %i.mq)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef 1)
          to label %bb.eq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

bb.ep:                                            ; preds = %.noexc211.i.i, %.lr.ph.i.i.i
  %i.mr = phi i64 [ %.pre.i207.i.i, %.lr.ph.i.i.i ], [ %i.mw, %.noexc211.i.i ] ; 3 uses
  %.sroa.0.03.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.mt, %.noexc211.i.i ]
  %i.ms = icmp sgt i64 %i.mr, -1
  call void @llvm.assume(i1 %i.ms)
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef 1)
          to label %.noexc211.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i

.noexc211.i.i:                                    ; preds = %bb.ep
  %i.mt = add nuw i64 %.sroa.0.03.i.i.i, 1        ; 2 uses
  %i.mu = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !348, !noalias !351, !nonnull !5, !noundef !5
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mr
  store i8 32, ptr %i.mv, align 1, !noalias !351
  %i.mw = add nuw i64 %i.mr, 1                    ; 2 uses
  store i64 %i.mw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !348, !noalias !351
  %exitcond.not.i.i.i = icmp eq i64 %i.mt, %.sroa.0.0.lcssa.i.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.ep

bb.eq:                                            ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslkzCjlEuW1f_5xtask.exit6.i.i.i
  %i.mx = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !358, !noalias !351, !nonnull !5, !noundef !5
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mp
  store i8 10, ptr %i.my, align 1, !noalias !351
  %i.mz = add nuw i64 %i.mp, 1
  store i64 %i.mz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !358, !noalias !351
  %.val155.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i87.i, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %.val156.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i88.i, align 8, !noundef !5 ; 4 uses
  %i.na = icmp eq i64 %.val156.i.i, 0
  br i1 %i.na, label %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i, label %.preheader.i212.i.i.preheader

.preheader.i212.i.i.preheader:                    ; preds = %bb.eq
  %xtraiter557 = and i64 %.val156.i.i, 3          ; 3 uses
  %i.nb = icmp ult i64 %.val156.i.i, 4
  br i1 %i.nb, label %.preheader.i212.i.i.epil.preheader, label %.preheader.i212.i.i.preheader.new

.preheader.i212.i.i.preheader.new:                ; preds = %.preheader.i212.i.i.preheader
  %unroll_iter562 = and i64 %.val156.i.i, -4
  br label %.preheader.i212.i.i

.preheader.i212.i.i:                              ; preds = %.preheader.i212.i.i, %.preheader.i212.i.i.preheader.new
  %.sroa.04.0.i.i213.i.i = phi i64 [ 0, %.preheader.i212.i.i.preheader.new ], [ %i.nr, %.preheader.i212.i.i ] ; 5 uses
  %.sroa.02.0.i.i214.i.i = phi i64 [ 0, %.preheader.i212.i.i.preheader.new ], [ %i.nq, %.preheader.i212.i.i ]
  %niter563 = phi i64 [ 0, %.preheader.i212.i.i.preheader.new ], [ %niter563.next.3, %.preheader.i212.i.i ]
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %.val155.i.i, i64 %.sroa.04.0.i.i213.i.i
  %.val.i.i215.i.i = load i64, ptr %i.nc, align 8, !range !23, !noundef !5
  %i.nd = icmp eq i64 %.val.i.i215.i.i, 2
  %..i.i.i.i216.i.i = select i1 %i.nd, i64 3, i64 2
  %i.ne = add i64 %..i.i.i.i216.i.i, %.sroa.02.0.i.i214.i.i
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %.val155.i.i, i64 %.sroa.04.0.i.i213.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %.val.i.i215.i.i.1 = load i64, ptr %i.ng, align 8, !range !23, !noundef !5
  %i.nh = icmp eq i64 %.val.i.i215.i.i.1, 2
  %..i.i.i.i216.i.i.1 = select i1 %i.nh, i64 3, i64 2
  %i.ni = add i64 %..i.i.i.i216.i.i.1, %i.ne
  %i.nj = getelementptr inbounds nuw [16 x i8], ptr %.val155.i.i, i64 %.sroa.04.0.i.i213.i.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 32
  %.val.i.i215.i.i.2 = load i64, ptr %i.nk, align 8, !range !23, !noundef !5
  %i.nl = icmp eq i64 %.val.i.i215.i.i.2, 2
  %..i.i.i.i216.i.i.2 = select i1 %i.nl, i64 3, i64 2
  %i.nm = add i64 %..i.i.i.i216.i.i.2, %i.ni
  %i.nn = getelementptr inbounds nuw [16 x i8], ptr %.val155.i.i, i64 %.sroa.04.0.i.i213.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 48
  %.val.i.i215.i.i.3 = load i64, ptr %i.no, align 8, !range !23, !noundef !5
  %i.np = icmp eq i64 %.val.i.i215.i.i.3, 2
  %..i.i.i.i216.i.i.3 = select i1 %i.np, i64 3, i64 2
  %i.nq = add i64 %..i.i.i.i216.i.i.3, %i.nm      ; 3 uses
  %i.nr = add nuw i64 %.sroa.04.0.i.i213.i.i, 4   ; 2 uses
  %niter563.next.3 = add nuw i64 %niter563, 4     ; 2 uses
  %niter563.ncmp.3 = icmp eq i64 %niter563.next.3, %unroll_iter562
  br i1 %niter563.ncmp.3, label %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i.loopexit.unr-lcssa, label %.preheader.i212.i.i

_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i212.i.i
  %lcmp.mod559.not = icmp eq i64 %xtraiter557, 0
  br i1 %lcmp.mod559.not, label %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i, label %.preheader.i212.i.i.epil.preheader

.preheader.i212.i.i.epil.preheader:               ; preds = %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i.loopexit.unr-lcssa, %.preheader.i212.i.i.preheader
  %.sroa.04.0.i.i213.i.i.epil.init = phi i64 [ 0, %.preheader.i212.i.i.preheader ], [ %i.nr, %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i214.i.i.epil.init = phi i64 [ 0, %.preheader.i212.i.i.preheader ], [ %i.nq, %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i.loopexit.unr-lcssa ]
  %lcmp.mod561 = icmp ne i64 %xtraiter557, 0
  call void @llvm.assume(i1 %lcmp.mod561)
  br label %.preheader.i212.i.i.epil

.preheader.i212.i.i.epil:                         ; preds = %.preheader.i212.i.i.epil, %.preheader.i212.i.i.epil.preheader
  %.sroa.04.0.i.i213.i.i.epil = phi i64 [ %i.nv, %.preheader.i212.i.i.epil ], [ %.sroa.04.0.i.i213.i.i.epil.init, %.preheader.i212.i.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i214.i.i.epil = phi i64 [ %i.nu, %.preheader.i212.i.i.epil ], [ %.sroa.02.0.i.i214.i.i.epil.init, %.preheader.i212.i.i.epil.preheader ]
  %epil.iter558 = phi i64 [ %epil.iter558.next, %.preheader.i212.i.i.epil ], [ 0, %.preheader.i212.i.i.epil.preheader ]
  %i.ns = getelementptr inbounds nuw [16 x i8], ptr %.val155.i.i, i64 %.sroa.04.0.i.i213.i.i.epil
  %.val.i.i215.i.i.epil = load i64, ptr %i.ns, align 8, !range !23, !noundef !5
  %i.nt = icmp eq i64 %.val.i.i215.i.i.epil, 2
  %..i.i.i.i216.i.i.epil = select i1 %i.nt, i64 3, i64 2
  %i.nu = add i64 %..i.i.i.i216.i.i.epil, %.sroa.02.0.i.i214.i.i.epil ; 2 uses
  %i.nv = add nuw i64 %.sroa.04.0.i.i213.i.i.epil, 1
  %epil.iter558.next = add i64 %epil.iter558, 1   ; 2 uses
  %epil.iter558.cmp.not = icmp eq i64 %epil.iter558.next, %xtraiter557
  br i1 %epil.iter558.cmp.not, label %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i, label %.preheader.i212.i.i.epil, !llvm.loop !361

_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i: ; preds = %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i.loopexit.unr-lcssa, %.preheader.i212.i.i.epil, %bb.eq
  %.sroa.0.0.i.i217.i.i = phi i64 [ 0, %bb.eq ], [ %i.nq, %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i.loopexit.unr-lcssa ], [ %i.nu, %.preheader.i212.i.i.epil ] ; 2 uses
  %.not.i219.i.i = icmp eq i64 %.sroa.0.0.i.i217.i.i, 0
  br label %bb.er

bb.er:                                            ; preds = %.noexc239.i.i, %_RNvMs_NtNtCslkzCjlEuW1f_5xtask7publish5notesNtB4_11ListNesting6indent.exit218.i.i
  %i.nw = load i64, ptr %i.bb, align 8, !range !6, !noundef !5 ; 2 uses
  %.not.i.i222.i.i = icmp eq i64 %i.nw, -3
  br i1 %.not.i.i222.i.i, label %bb.es, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i.i

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !362
  invoke void @_RNvXs8_NtNtCsbSS6DM8SDEO_5alloc2io4utilINtB5_5LinesINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtB9_6string6StringEENtNtNtNtBU_4iter6traits8iterator8Iterator4nextCslkzCjlEuW1f_5xtask(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd)
          to label %.noexc229.i.i unwind label %.loopexit.split-lp.loopexit.i.i

.noexc229.i.i:                                    ; preds = %bb.es
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !362
  %i.nx = load i64, ptr %i.bb, align 8, !range !6, !noundef !5 ; 2 uses
  %i.ny = icmp ne i64 %i.nx, -3
  call void @llvm.assume(i1 %i.ny)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i.i: ; preds = %.noexc229.i.i, %bb.er
  %i.nz = phi i64 [ %i.nw, %bb.er ], [ %i.nx, %.noexc229.i.i ]
  switch i64 %i.nz, label %bb.eu [
    i64 -2, label %_RINvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB3_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE17process_paragraphNCNvB2_12process_lists_0EB7_.exit.thread.i.i
    i64 -1, label %bb.et
  ], !prof !13

bb.et:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %.sroa.520.0..sroa_idx.i.i, ptr %i.h, align 8, !captures !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCslkzCjlEuW1f_5xtask, ptr %.sroa.446.0..sroa_idx.i.i.i, align 8
  %i.oa = invoke fastcc noundef nonnull ptr @_RNvNtCsdRkQxkTxnTp_6anyhow9___private10format_err(ptr noundef nonnull @2, ptr noundef nonnull %i.g) #22
          to label %_RINvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB3_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE17process_paragraphNCNvB2_12process_lists_0EB7_.exit.thread19.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.i

_RINvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB3_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE17process_paragraphNCNvB2_12process_lists_0EB7_.exit.thread19.i.i: ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.loopexit47.i.i

bb.eu:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_INtNtB5_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtNtB5_2io5error5ErrorEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB2D_8PeekableINtNtNtB1c_2io4util5LinesINtNtB1O_6cursor6CursorRB18_EEE4peek0ECslkzCjlEuW1f_5xtask.exit.i.i.i
  %i.ob = load ptr, ptr %.sroa.520.0..sroa_idx.i.i, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.oc = load i64, ptr %i.ey, align 8, !noundef !5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.od = icmp eq i64 %i.oc, 0
  br i1 %i.od, label %_RINvMNtNtCslkzCjlEuW1f_5xtask7publish5notesINtB3_9ConverterINtNtNtCshzWfHUSfYae_4core2io6cursor6CursorRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE17process_paragraphNCNvB2_12process_lists_0EB7_.exit.thread.i.i, label %bb.ev
end_hunk_1
