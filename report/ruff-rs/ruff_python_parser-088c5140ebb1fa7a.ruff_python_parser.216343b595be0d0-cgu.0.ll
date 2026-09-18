Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser10parse_listNCNvMNtB5_10expressionBL_34parse_interpolated_string_elements0EB7_:bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !627, !inline_history !321
  unreachable

.body132.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.fy, %bb.ft
  %.sroa.043.2.i = phi i1 [ true, %bb.ft ], [ false, %bb.fy ], [ true, %.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ true, %.loopexit ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit ]
  %.pn.i = phi { ptr, i32 } [ %i.pw, %bb.ft ], [ %i.qb, %bb.fy ], [ %lpad.loopexit322, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit327, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp356, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit355, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp1232, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ], [ %lpad.loopexit2184, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit ], [ %lpad.loopexit.split-lp2185, %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(8) %i.t) #44
          to label %.body unwind label %bb.ch, !noalias !627, !inline_history !321

.loopexit:                                        ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

.loopexit.split-lp.loopexit:                      ; preds = %bb.hm
  %lpad.loopexit322 = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel
  %lpad.loopexit2184 = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit.split-lp: ; preds = %bb.im
  %lpad.loopexit.split-lp2185 = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %.peel.begin, %bb.gj
  %lpad.loopexit.split-lp1232 = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.fr, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i
  %lpad.loopexit327 = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit229.i.thread, %bb.fp, %.split.i.i.i.i, %.noexc9.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i, %bb.hr, %bb.ih, %bb.ik
  %lpad.loopexit355 = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc7.i.i.i.invoke, %.loopexit1234.invoke, %.invoke2167, %.invoke2165, %.noexc.i.i.i, %bb.hw
  %lpad.loopexit.split-lp356 = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

bb.fn:                                            ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit229.i.thread
  %i.pa = load i8, ptr %i.bc, align 4, !range !22, !alias.scope !691, !noalias !627, !noundef !15
  %i.pb = icmp eq i8 %i.pa, 39
  br i1 %i.pb, label %bb.fo, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i.thread

bb.fo:                                            ; preds = %bb.fn
  %i.pc = load i32, ptr %i.bh, align 4, !alias.scope !692, !noalias !627, !noundef !15
  %i.pd = load <2 x i32>, ptr %i.bg, align 8, !alias.scope !692, !noalias !627
  store i32 %i.pc, ptr %i.cc, align 4, !alias.scope !692, !noalias !627
  %i.pe = load i16, ptr %i.ce, align 8, !alias.scope !693, !noalias !627, !noundef !15
  %i.pf = load i64, ptr %i.cf, align 8, !alias.scope !694, !noalias !695, !noundef !15 ; 2 uses
  %i.pg = load i64, ptr %i.cd, align 8, !range !26, !alias.scope !694, !noalias !695, !noundef !15
  %i.ph = icmp eq i64 %i.pf, %i.pg
  br i1 %i.ph, label %bb.fp, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader

bb.fp:                                            ; preds = %bb.fo
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader: ; preds = %bb.fp, %bb.fo
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader
  %.sink9.i.i.i250.i = phi i64 [ %i.pf, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader ], [ %i.po, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge ] ; 2 uses
  %.sink2.i.i.i253.i = phi i16 [ %i.pe, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader ], [ %i.pn, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge ]
  %.sink.i.i.i254.i = phi i8 [ 39, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader ], [ %i.pl, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge ]
  %i.pi = phi <2 x i32> [ %i.pd, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader ], [ %i.pm, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge ]
  %i.pj = load ptr, ptr %i.cg, align 8, !alias.scope !693, !noalias !627, !nonnull !15, !noundef !15
  %i.pk = getelementptr inbounds nuw [12 x i8], ptr %i.pj, i64 %.sink9.i.i.i250.i ; 3 uses
  store <2 x i32> %i.pi, ptr %i.pk, align 4, !noalias !627
  %.sroa.5.0..sroa_idx.i.i.i.i256.i = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  store i16 %.sink2.i.i.i253.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i256.i, align 4, !noalias !627
  %.sroa.6.0..sroa_idx.i.i.i.i257.i = getelementptr inbounds nuw i8, ptr %i.pk, i64 10
  store i8 %.sink.i.i.i254.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i257.i, align 2, !noalias !627
  %storemerge.i.i.i258.i = add i64 %.sink9.i.i.i250.i, 1
  store i64 %storemerge.i.i.i258.i, ptr %i.cf, align 8, !alias.scope !693, !noalias !627
  %i.pl = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %0)
          to label %.noexc262.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321 ; 2 uses

.noexc262.i:                                      ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i
  switch i8 %i.pl, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i [
    i8 12, label %bb.fq
    i8 14, label %bb.fq
  ]

bb.fq:                                            ; preds = %.noexc262.i, %.noexc262.i
  %i.pm = load <2 x i32>, ptr %i.bg, align 8, !alias.scope !696, !noalias !627
  %i.pn = load i16, ptr %i.ce, align 8, !alias.scope !696, !noalias !627, !noundef !15
  %i.po = load i64, ptr %i.cf, align 8, !alias.scope !697, !noalias !698, !noundef !15 ; 2 uses
  %i.pp = load i64, ptr %i.cd, align 8, !range !26, !alias.scope !697, !noalias !698, !noundef !15
  %i.pq = icmp eq i64 %i.po, %i.pp
  br i1 %i.pq, label %bb.fr, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge

bb.fr:                                            ; preds = %bb.fq
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge: ; preds = %bb.fr, %bb.fq
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i: ; preds = %.noexc262.i
  %i.pr = load i32, ptr %.phi.trans.insert.i, align 8, !alias.scope !692, !noalias !627, !noundef !15
  %i.ps = add i32 %i.pr, 1
  store i32 %i.ps, ptr %.phi.trans.insert.i, align 8, !alias.scope !692, !noalias !627
  br label %bb.fs

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i.thread: ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !628
  %spec.select.i265.i = or disjoint i8 %i.ib, 40
  store i8 0, ptr %i.db, align 1, !alias.scope !699, !noalias !628
  store i8 %spec.select.i265.i, ptr %i.r, align 8, !alias.scope !699, !noalias !628
  %.val142.i = load i32, ptr %i.bg, align 8, !alias.scope !626, !noalias !627, !noundef !15
  %.val143.i = load i32, ptr %i.bh, align 4, !alias.scope !626, !noalias !627, !noundef !15
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.r, i32 noundef %.val142.i, i32 noundef %.val143.i)
          to label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_.exit268.i unwind label %bb.ft, !noalias !627, !inline_history !321

bb.fs:                                            ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_.exit268.i
  %.val150.i = load i32, ptr %i.cc, align 4, !alias.scope !626, !noalias !627, !noundef !15 ; 3 uses
  %.sroa.0.0.i266.i = call i32 @llvm.umin.i32(i32 %.val150.i, i32 %.val140.i) ; 11 uses
  %i.pt = load i8, ptr %i.dc, align 4, !alias.scope !626, !noalias !627, !noundef !15 ; 2 uses
  %i.pu = icmp eq i8 %i.pt, 3
  %i.pv = icmp ugt i8 %i.pt, 2
  br i1 %i.pu, label %bb.fu, label %bb.fv

bb.ft:                                            ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i.thread
  %i.pw = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_.exit268.i: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !628
  br label %bb.fs

bb.fu:                                            ; preds = %bb.fs
  %i.px = load i8, ptr %i.dd, align 1, !alias.scope !626, !noalias !627, !noundef !15
  %i.py = icmp ugt i8 %i.px, 11
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.fs
  %.sroa.044.0.i = phi i1 [ %i.py, %bb.fu ], [ %i.pv, %bb.fs ]
  %brmerge.i = or i1 %.sroa.044.0.i, %i.ic
  br i1 %brmerge.i, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %.not110.i = icmp eq ptr %storemerge, null
  br i1 %.not110.i, label %bb.gb, label %bb.ga

_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i316.i, %_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i, %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false), !noalias !628
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !700, !inline_history !321
  %i.pz = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !700, !inline_history !321 ; 3 uses
  %i.qa = icmp eq ptr %i.pz, null
  br i1 %i.qa, label %bb.fx, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser26parse_interpolated_element.exit, !prof !29

bb.fx:                                            ; preds = %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #41
          to label %.noexc269.i unwind label %bb.fy, !noalias !627, !inline_history !321

.noexc269.i:                                      ; preds = %bb.fx
  unreachable

bb.fy:                                            ; preds = %bb.fx
  %i.qb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.q) #44
          to label %.body132.i unwind label %bb.fz, !noalias !627, !inline_history !321

bb.fz:                                            ; preds = %bb.fy
  %i.qc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !627, !inline_history !321
  unreachable

bb.ga:                                            ; preds = %bb.fw
  %i.qd = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  %i.qe = load i32, ptr %i.qd, align 8, !noalias !627, !noundef !15 ; 2 uses
  %.not.i271.i = icmp ugt i32 %.sroa.0.0.i266.i, %i.qe
  br i1 %.not.i271.i, label %.invoke2165, label %bb.gb, !prof !14

.invoke2165:                                      ; preds = %bb.ii, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel, %bb.ga, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.qf = phi ptr [ @85, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i ], [ @85, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i ], [ @85, %bb.ii ], [ @85, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel ], [ @27, %bb.ga ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qf) #41
          to label %.cont2166 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627, !inline_history !321

.cont2166:                                        ; preds = %.invoke2165
  unreachable

bb.gb:                                            ; preds = %bb.fw, %bb.ga
  %.sroa.11.0.i = phi i32 [ %.val150.i, %bb.fw ], [ %i.qe, %bb.ga ] ; 3 uses
  %i.qg = and i16 %i.ia, 2                        ; 2 uses
  %.not.i.i273.i = icmp eq i16 %i.qg, 0           ; 5 uses
  %.not.i2.i.i = trunc i16 %i.ia to i1            ; 6 uses
  %..i.i = select i1 %.not.i2.i.i, ptr @643, ptr @642
  %.1.i.i = select i1 %.not.i2.i.i, ptr @641, ptr @640 ; 2 uses
  %.sroa.5.0.i.i.neg = select i1 %.not.i.i273.i, i64 -1, i64 -3
  %.sroa.5.0.i.i = select i1 %.not.i.i273.i, i64 1, i64 3 ; 11 uses
  %.sroa.0.0.i274.i = select i1 %.not.i.i273.i, ptr %..i.i, ptr %.1.i.i ; 9 uses
  %i.qh = icmp ne i16 %i.qg, 0                    ; 2 uses
  %..i55 = select i1 %i.qh, i32 3, i32 1
  %i.qi = load ptr, ptr %i.bl, align 8, !alias.scope !626, !noalias !627, !nonnull !15, !noundef !15 ; 8 uses
  %i.qj = load i64, ptr %i.bm, align 8, !alias.scope !626, !noalias !627, !noundef !15 ; 8 uses
  %i.qk = zext i32 %.sroa.0.0.i266.i to i64       ; 14 uses
  %i.ql = zext i32 %.sroa.11.0.i to i64           ; 14 uses
  %i.qm = icmp eq i32 %.sroa.0.0.i266.i, 0        ; 3 uses
  br i1 %i.qm, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %.not5.i.i = icmp ugt i64 %i.qj, %i.qk
  br i1 %.not5.i.i, label %bb.ge, label %.split.i.i

bb.gd:                                            ; preds = %bb.ge, %.split.i.i, %bb.gb
  %i.qn = icmp eq i32 %.sroa.11.0.i, 0            ; 3 uses
  br i1 %i.qn, label %.peel.begin, label %bb.gf

.split.i.i:                                       ; preds = %bb.gc
  %i.qo = icmp eq i64 %i.qj, %i.qk
  br i1 %i.qo, label %bb.gd, label %.invoke2167

bb.ge:                                            ; preds = %bb.gc
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qk
  %i.qq = load i8, ptr %i.qp, align 1, !alias.scope !701, !noalias !627, !noundef !15
  %i.qr = icmp sgt i8 %i.qq, -65
  br i1 %i.qr, label %bb.gd, label %.invoke2167

bb.gf:                                            ; preds = %bb.gd
  %.not6.i.i = icmp ugt i64 %i.qj, %i.ql
  br i1 %.not6.i.i, label %bb.gg, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.gf
  %i.qs = icmp eq i64 %i.qj, %i.ql
  br i1 %i.qs, label %.peel.begin, label %.invoke2167

bb.gg:                                            ; preds = %bb.gf
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.ql
  %i.qu = load i8, ptr %i.qt, align 1, !alias.scope !701, !noalias !627, !noundef !15
  %i.qv = icmp sgt i8 %i.qu, -65
  br i1 %i.qv, label %.peel.begin, label %.invoke2167

.peel.begin:                                      ; preds = %bb.gg, %.split7.i.i, %bb.gd
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qk ; 2 uses
  %i.qx = getelementptr i8, ptr %i.qi, i64 %i.ql  ; 2 uses
  %i.qy = ptrtoint ptr %i.qw to i64               ; 2 uses
  %i.qz = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !702, !nonnull !15, !noundef !15
  %i.ra = invoke { i64, ptr } %i.qz(i8 noundef 92, ptr noundef nonnull %i.qw, ptr noundef %i.qx)
          to label %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !627, !inline_history !451 ; 2 uses

_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel: ; preds = %.peel.begin
  %i.rb = extractvalue { i64, ptr } %i.ra, 0
  %i.rc = trunc nuw i64 %i.rb to i1
  br i1 %i.rc, label %bb.gh, label %.loopexit1233

bb.gh:                                            ; preds = %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel
  %i.rd = extractvalue { i64, ptr } %i.ra, 1      ; 4 uses
  %i.re = ptrtoint ptr %i.rd to i64
  %i.rf = sub i64 %i.re, %i.qy                    ; 3 uses
  %i.rg = icmp sgt i64 %i.rf, -1
  call void @llvm.assume(i1 %i.rg), !noalias !623
  %i.rh = icmp samesign ugt i64 %i.rf, 4294967295
  %i.ri = shl nuw i64 %i.rf, 32
  %.sroa.085.0.insert.insert.i.peel = select i1 %i.rh, i64 513, i64 %i.ri ; 2 uses
  %i.rj = trunc i64 %.sroa.085.0.insert.insert.i.peel to i1
  br i1 %i.rj, label %.loopexit1234, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel, !prof !14

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel: ; preds = %bb.gh
  %.sroa.6.0.extract.shift.i.i.peel = lshr i64 %.sroa.085.0.insert.insert.i.peel, 32
  %.sroa.6.0.extract.trunc.i.i.peel = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.peel to i32
  %i.rk = add i32 %.sroa.0.0.i266.i, %.sroa.6.0.extract.trunc.i.i.peel ; 3 uses
  %.not116.i.peel = icmp eq i32 %i.rk, -1
  br i1 %.not116.i.peel, label %.invoke2165, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel, !prof !14

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel
  %i.rl = load i8, ptr %i.dc, align 4, !alias.scope !703, !noalias !704, !noundef !15 ; 4 uses
  %i.rm = load i8, ptr %i.dd, align 1, !alias.scope !703, !noalias !704, !noundef !15 ; 3 uses
  %i.rn = icmp eq i8 %i.rl, 3
  %i.ro = icmp ult i8 %i.rl, 3
  %i.rp = icmp ult i8 %i.rm, 12
  %spec.select9.i.i329.i.peel = select i1 %i.rn, i1 %i.rp, i1 %i.ro
  br i1 %spec.select9.i.i329.i.peel, label %bb.gi, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader

bb.gi:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel
  %i.rq = load i64, ptr %i.df, align 8, !alias.scope !705, !noalias !706, !noundef !15 ; 3 uses
  %i.rr = load i64, ptr %i.de, align 8, !range !26, !alias.scope !705, !noalias !706, !noundef !15
  %i.rs = icmp eq i64 %i.rq, %i.rr
  br i1 %i.rs, label %bb.gj, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split

bb.gj:                                            ; preds = %bb.gi
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !noalias !627, !inline_history !321

.invoke2167:                                      ; preds = %.split.i305.i, %.split7.i309.i, %bb.ie, %bb.ig, %.split.i281.i, %.split7.i285.i, %bb.gn, %bb.gp, %.split.i.i, %.split7.i.i, %bb.ge, %bb.gg
  %i.rt = phi ptr [ %i.sm, %.split.i281.i ], [ %i.qi, %.split.i.i ], [ %i.qi, %bb.gg ], [ %i.qi, %bb.ge ], [ %i.qi, %.split7.i.i ], [ %i.sm, %bb.gp ], [ %i.sm, %bb.gn ], [ %i.sm, %.split7.i285.i ], [ %i.yy, %bb.ig ], [ %i.yy, %bb.ie ], [ %i.yy, %.split7.i309.i ], [ %i.yy, %.split.i305.i ]
  %i.ru = phi i64 [ %i.sn, %.split.i281.i ], [ %i.qj, %.split.i.i ], [ %i.qj, %bb.gg ], [ %i.qj, %bb.ge ], [ %i.qj, %.split7.i.i ], [ %i.sn, %bb.gp ], [ %i.sn, %bb.gn ], [ %i.sn, %.split7.i285.i ], [ %i.yz, %bb.ig ], [ %i.yz, %bb.ie ], [ %i.yz, %.split7.i309.i ], [ %i.yz, %.split.i305.i ]
  %i.rv = phi ptr [ @109, %.split.i281.i ], [ @108, %.split.i.i ], [ @108, %bb.gg ], [ @108, %bb.ge ], [ @108, %.split7.i.i ], [ @109, %bb.gp ], [ @109, %bb.gn ], [ @109, %.split7.i285.i ], [ @111, %bb.ig ], [ @111, %bb.ie ], [ @111, %.split7.i309.i ], [ @111, %.split.i305.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.rt, i64 noundef %i.ru, i64 noundef %i.qk, i64 noundef %i.ql, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rv) #41
          to label %.cont2168 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627, !inline_history !321

.cont2168:                                        ; preds = %.invoke2167
  unreachable

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split: ; preds = %bb.gi, %bb.gj, %bb.il, %bb.im
  %.sink2182 = phi i64 [ %i.aaj, %bb.il ], [ %i.aaj, %bb.im ], [ %i.rq, %bb.gj ], [ %i.rq, %bb.gi ] ; 2 uses
  %.sink2177 = phi i32 [ %i.sl, %bb.il ], [ %i.sl, %bb.im ], [ %i.rk, %bb.gj ], [ %i.rk, %bb.gi ] ; 2 uses
  %.sink2173 = phi i8 [ %i.aae, %bb.il ], [ %i.aae, %bb.im ], [ %i.rl, %bb.gj ], [ %i.rl, %bb.gi ]
  %.sink2171 = phi i8 [ %i.aaf, %bb.il ], [ %i.aaf, %bb.im ], [ %i.rm, %bb.gj ], [ %i.rm, %bb.gi ]
  %.pn.ph = phi ptr [ %i.sd, %bb.il ], [ %i.sd, %bb.im ], [ %i.rd, %bb.gj ], [ %i.rd, %bb.gi ]
  %.sink2175 = add nuw i32 %.sink2177, 1
  %i.rw = load ptr, ptr %i.dg, align 8, !alias.scope !707, !noalias !706, !nonnull !15, !noundef !15
  %i.rx = getelementptr inbounds nuw [40 x i8], ptr %i.rw, i64 %.sink2182 ; 6 uses
  store i8 12, ptr %i.rx, align 8, !noalias !627
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rx, i64 1
  store i8 0, ptr %.sroa.5213.0..sroa_idx, align 1, !noalias !627
  %.sroa.4.0..sroa_idx.i331.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  store i32 %.sink2177, ptr %.sroa.4.0..sroa_idx.i331.i, align 8, !noalias !704
  %.sroa.5.0..sroa_idx.i332.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 28
  store i32 %.sink2175, ptr %.sroa.5.0..sroa_idx.i332.i, align 4, !noalias !704
  %.sroa.6.0..sroa_idx.i333.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 32
  store i8 %.sink2173, ptr %.sroa.6.0..sroa_idx.i333.i, align 8, !noalias !704
  %.sroa.7.0..sroa_idx.i334.i = getelementptr inbounds nuw i8, ptr %i.rx, i64 33
  store i8 %.sink2171, ptr %.sroa.7.0..sroa_idx.i334.i, align 1, !noalias !704
  %i.ry = add i64 %.sink2182, 1
  store i64 %i.ry, ptr %i.df, align 8, !alias.scope !707, !noalias !706
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader: ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split
  %.pn.ph2183 = phi ptr [ %.pn.ph, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split ], [ %i.rd, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel ]
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i
  %.pn = phi ptr [ %i.sd, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i ], [ %.pn.ph2183, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader ]
  %.sroa.4.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.rz = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !702, !nonnull !15, !noundef !15
  %i.sa = invoke { i64, ptr } %i.rz(i8 noundef 92, ptr noundef nonnull %.sroa.4.0, ptr noundef %i.qx)
          to label %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.loopexit, !noalias !627, !inline_history !451 ; 2 uses

_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel
  %i.sb = extractvalue { i64, ptr } %i.sa, 0
  %i.sc = trunc nuw i64 %i.sb to i1
  br i1 %i.sc, label %bb.gk, label %.loopexit1233

bb.gk:                                            ; preds = %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.sd = extractvalue { i64, ptr } %i.sa, 1      ; 4 uses
  %i.se = ptrtoint ptr %i.sd to i64
  %i.sf = sub i64 %i.se, %i.qy                    ; 3 uses
  %i.sg = icmp sgt i64 %i.sf, -1
  call void @llvm.assume(i1 %i.sg), !noalias !623
  %i.sh = icmp samesign ugt i64 %i.sf, 4294967295
  %i.si = shl nuw i64 %i.sf, 32
  %.sroa.085.0.insert.insert.i = select i1 %i.sh, i64 513, i64 %i.si ; 2 uses
  %i.sj = trunc i64 %.sroa.085.0.insert.insert.i to i1
  br i1 %i.sj, label %.loopexit1234, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !14

.loopexit1234:                                    ; preds = %bb.gh, %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !708
  br label %.loopexit1234.invoke

.loopexit1234.invoke:                             ; preds = %bb.hp, %.noexc5.i.i.i, %.noexc4.i.i.i, %.loopexit1234
  %.sink = phi ptr [ %i.o, %bb.hp ], [ %i.g, %.noexc5.i.i.i ], [ %i.f, %.noexc4.i.i.i ], [ %i.p, %.loopexit1234 ] ; 2 uses
  %i.sk = phi ptr [ @110, %bb.hp ], [ @9, %.noexc5.i.i.i ], [ @10, %.noexc4.i.i.i ], [ @112, %.loopexit1234 ]
  store i8 2, ptr %.sink, align 1, !noalias !628
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sk) #41
          to label %.loopexit1234.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627, !inline_history !321

.loopexit1234.cont:                               ; preds = %.loopexit1234.invoke
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.gk
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.085.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %i.sl = add i32 %.sroa.0.0.i266.i, %.sroa.6.0.extract.trunc.i.i ; 3 uses
  %.not116.i = icmp eq i32 %i.sl, -1
  br i1 %.not116.i, label %.invoke2165, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i, !prof !14

.loopexit1233:                                    ; preds = %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i, %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel
  %.sroa.022.0.i.lcssa841 = phi i1 [ %i.qh, %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel ], [ true, %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i ]
  %i.sm = load ptr, ptr %i.bl, align 8, !alias.scope !626, !noalias !627, !nonnull !15, !noundef !15 ; 8 uses
  %i.sn = load i64, ptr %i.bm, align 8, !alias.scope !626, !noalias !627, !noundef !15 ; 8 uses
  br i1 %i.qm, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %.loopexit1233
  %.not5.i280.i = icmp ugt i64 %i.sn, %i.qk
  br i1 %.not5.i280.i, label %bb.gn, label %.split.i281.i

bb.gm:                                            ; preds = %bb.gn, %.split.i281.i, %.loopexit1233
  br i1 %i.qn, label %bb.gq, label %bb.go

.split.i281.i:                                    ; preds = %bb.gl
  %i.so = icmp eq i64 %i.sn, %i.qk
  br i1 %i.so, label %bb.gm, label %.invoke2167

bb.gn:                                            ; preds = %bb.gl
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.qk
  %i.sq = load i8, ptr %i.sp, align 1, !alias.scope !709, !noalias !627, !noundef !15
  %i.sr = icmp sgt i8 %i.sq, -65
  br i1 %i.sr, label %bb.gm, label %.invoke2167

bb.go:                                            ; preds = %bb.gm
  %.not6.i284.i = icmp ugt i64 %i.sn, %i.ql
  br i1 %.not6.i284.i, label %bb.gp, label %.split7.i285.i

.split7.i285.i:                                   ; preds = %bb.go
  %i.ss = icmp eq i64 %i.sn, %i.ql
  br i1 %i.ss, label %bb.gq, label %.invoke2167

bb.gp:                                            ; preds = %bb.go
  %i.st = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.ql
  %i.su = load i8, ptr %i.st, align 1, !alias.scope !709, !noalias !627, !noundef !15
  %i.sv = icmp sgt i8 %i.su, -65
  br i1 %i.sv, label %bb.gq, label %.invoke2167

bb.gq:                                            ; preds = %bb.gp, %.split7.i285.i, %bb.gm
  %i.sw = sub nuw nsw i64 %i.ql, %i.qk            ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.qk ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !710), !noalias !623
  call void @llvm.experimental.noalias.scope.decl(metadata !711), !noalias !623
  %i.sy = icmp samesign ult i64 %i.sw, 64
  br i1 %i.sy, label %bb.hj, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !712
  call void @llvm.experimental.noalias.scope.decl(metadata !713), !noalias !623
  call void @llvm.experimental.noalias.scope.decl(metadata !714), !noalias !623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !712
  call void @llvm.experimental.noalias.scope.decl(metadata !715), !noalias !623
  %i.sz = load i8, ptr %.sroa.0.0.i274.i, align 1, !alias.scope !716, !noalias !717, !noundef !15 ; 5 uses
  %i.ta = zext i8 %i.sz to i32                    ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i274.i, i64 %.sroa.5.0.i.i
  br i1 %.not.i.i273.i, label %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.gr
  %.sroa.5.0.peel.i.i.i.i.i = select i1 %.not.i2.i.i, i8 34, i8 39 ; 4 uses
  %i.tc = shl nuw nsw i32 %i.ta, 2
  %i.td = shl nuw nsw i8 %.sroa.5.0.peel.i.i.i.i.i, 1
  %i.te = zext nneg i8 %i.td to i32
  %i.tf = add nuw nsw i32 %i.tc, %i.te
  %i.tg = select i1 %.not.i2.i.i, i32 34, i32 39
  %i.th = add nuw nsw i32 %i.tf, %i.tg            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !718
  store i8 0, ptr %i.j, align 1, !noalias !718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !718
  store i8 1, ptr %i.i, align 1, !noalias !718
  %i.ti = zext nneg i8 %.sroa.5.0.peel.i.i.i.i.i to i64
  %i.tj = getelementptr inbounds nuw i8, ptr @383, i64 %i.ti
  %i.tk = load i8, ptr %i.tj, align 1, !noalias !718, !noundef !15
  %i.tl = zext i8 %i.sz to i64
  %i.tm = getelementptr inbounds nuw i8, ptr @383, i64 %i.tl
  %i.tn = load i8, ptr %i.tm, align 1, !noalias !718, !noundef !15
  %i.to = icmp ult i8 %i.tk, %i.tn
  br i1 %i.to, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %.peel.next.i.i.i.i.i
  store i8 1, ptr %i.j, align 1, !noalias !718
  store i8 0, ptr %i.i, align 1, !noalias !718
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %.peel.next.i.i.i.i.i
  %i.tp = phi i8 [ 0, %bb.gs ], [ 1, %.peel.next.i.i.i.i.i ]
  %i.tq = phi i8 [ 1, %bb.gs ], [ 0, %.peel.next.i.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i = phi i8 [ %i.sz, %bb.gs ], [ %.sroa.5.0.peel.i.i.i.i.i, %.peel.next.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %.sroa.5.0.peel.i.i.i.i.i, %bb.gs ], [ %i.sz, %.peel.next.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !718
  store ptr %.1.i.i, ptr %i.h, align 8, !noalias !718
  store ptr %i.tb, ptr %.sroa.09.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !718
  store i64 0, ptr %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !718
  store i64 255, ptr %.sroa.09.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !718
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !718
  br label %bb.gu

bb.gu:                                            ; preds = %bb.hg, %bb.gt
  %i.tr = phi i64 [ %.pr.i.i.i.i.i, %bb.hg ], [ 2, %bb.gt ] ; 2 uses
  %i.ts = phi i8 [ %i.ux, %bb.hg ], [ %i.tp, %bb.gt ] ; 7 uses
  %i.tt = phi i8 [ %i.uy, %bb.hg ], [ %i.tq, %bb.gt ] ; 10 uses
  %.sroa.06.1.i.i.i.i.i = phi i8 [ %.sroa.06.2.i.i.i.i.i, %bb.hg ], [ %.sroa.06.0.i.i.i.i.i, %bb.gt ] ; 3 uses
  %.sroa.01.1.i.i.i.i.i = phi i8 [ %.sroa.01.2.i.i.i.i.i, %bb.hg ], [ %.sroa.01.0.i.i.i.i.i, %bb.gt ] ; 6 uses
  %.not.i.i.i.i287.i = icmp eq i64 %i.tr, 0
  br i1 %.not.i.i.i.i287.i, label %bb.gv, label %bb.gw, !prof !30

bb.gv:                                            ; preds = %bb.gu
  %i.tu = load i64, ptr %.sroa.09.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !718, !noundef !15 ; 2 uses
  %i.tv = icmp eq i64 %i.tu, 0
  br i1 %i.tv, label %bb.gz, label %bb.gx

bb.gw:                                            ; preds = %bb.gu
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !718
  %i.tw = call fastcc { i64, ptr } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator3nthCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(32) %i.h, i64 noundef %i.tr), !noalias !718, !inline_history !321
  br label %bb.ha

bb.gx:                                            ; preds = %bb.gv
  %i.tx = add i64 %i.tu, -1
  store i64 %i.tx, ptr %.sroa.09.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !718
  %i.ty = load ptr, ptr %i.h, align 8, !alias.scope !719, !noalias !718, !nonnull !15, !noundef !15 ; 3 uses
  %i.tz = load ptr, ptr %.sroa.09.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !719, !noalias !718, !nonnull !15, !noundef !15
  %i.ua = icmp eq ptr %i.ty, %i.tz
  br i1 %i.ua, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ty, i64 1
  store ptr %i.ub, ptr %i.h, align 8, !alias.scope !719, !noalias !718
  %i.uc = load i64, ptr %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !720, !noalias !718, !noundef !15 ; 2 uses
  %i.ud = add i64 %i.uc, 1
  store i64 %i.ud, ptr %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !720, !noalias !718
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i: ; preds = %bb.gy, %bb.gx
  %.sroa.2.0.i.i.i.i.i.i = phi ptr [ %i.ty, %bb.gy ], [ null, %bb.gx ]
  %.sroa.0.0.i.i.i.i.i288.i = phi i64 [ %i.uc, %bb.gy ], [ undef, %bb.gx ]
  %i.ue = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.i.i288.i, 0
  %i.uf = insertvalue { i64, ptr } %i.ue, ptr %.sroa.2.0.i.i.i.i.i.i, 1
  br label %bb.ha

bb.gz:                                            ; preds = %bb.ha, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !718
  %i.ug = icmp eq i8 %i.tt, %i.ts
  br i1 %i.ug, label %.noexc.i.i.i, label %_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i, !prof !14

bb.ha:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, %bb.gw
  %.pn.i.i.i.i.i = phi { i64, ptr } [ %i.tw, %bb.gw ], [ %i.uf, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i = extractvalue { i64, ptr } %.pn.i.i.i.i.i, 1 ; 2 uses
  %.sroa.014.0.i.i.i.i.i = extractvalue { i64, ptr } %.pn.i.i.i.i.i, 0 ; 4 uses
  %.not29.i.i.i.i.i = icmp eq ptr %.sroa.7.0.i.i.i.i.i, null
  br i1 %.not29.i.i.i.i.i, label %bb.gz, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.uh = load i8, ptr %.sroa.7.0.i.i.i.i.i, align 1, !noalias !717, !noundef !15 ; 4 uses
  %i.ui = zext i8 %i.uh to i64
  %i.uj = getelementptr inbounds nuw i8, ptr @383, i64 %i.ui
  %i.uk = load i8, ptr %i.uj, align 1, !noalias !718, !noundef !15 ; 2 uses
  %i.ul = zext i8 %.sroa.01.1.i.i.i.i.i to i64
  %i.um = getelementptr inbounds nuw i8, ptr @383, i64 %i.ul
  %i.un = load i8, ptr %i.um, align 1, !noalias !718, !noundef !15
  %i.uo = icmp ult i8 %i.uk, %i.un
  br i1 %i.uo, label %bb.hd, label %bb.hc

.noexc.i.i.i:                                     ; preds = %bb.gz
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedhhECs9OSMwK5JXHk_12aho_corasick(i8 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #41
          to label %.noexc289.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627, !inline_history !321

.noexc289.i:                                      ; preds = %.noexc.i.i.i
  unreachable

bb.hc:                                            ; preds = %bb.hb
  %.not30.i.i.i.i.i = icmp eq i8 %i.uh, %.sroa.01.1.i.i.i.i.i
  br i1 %.not30.i.i.i.i.i, label %bb.hg, label %bb.he

bb.hd:                                            ; preds = %bb.hb
  store i8 %i.tt, ptr %i.i, align 1, !noalias !718
  %i.up = icmp ugt i64 %.sroa.014.0.i.i.i.i.i, 255
  br i1 %i.up, label %.noexc4.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i, !prof !14

.noexc4.i.i.i:                                    ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !721
  br label %.loopexit1234.invoke

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i: ; preds = %bb.hd
  %i.uq = trunc nuw i64 %.sroa.014.0.i.i.i.i.i to i8 ; 2 uses
  store i8 %i.uq, ptr %i.j, align 1, !noalias !718
  br label %bb.hg

bb.he:                                            ; preds = %bb.hc
  %i.ur = zext i8 %.sroa.06.1.i.i.i.i.i to i64
  %i.us = getelementptr inbounds nuw i8, ptr @383, i64 %i.ur
  %i.ut = load i8, ptr %i.us, align 1, !noalias !718, !noundef !15
  %i.uu = icmp ult i8 %i.uk, %i.ut
  br i1 %i.uu, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.uv = icmp ugt i64 %.sroa.014.0.i.i.i.i.i, 255
  br i1 %i.uv, label %.noexc5.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, !prof !14

.noexc5.i.i.i:                                    ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !722
  br label %.loopexit1234.invoke

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i: ; preds = %bb.hf
  %i.uw = trunc nuw i64 %.sroa.014.0.i.i.i.i.i to i8 ; 2 uses
  store i8 %i.uw, ptr %i.i, align 1, !noalias !718
  br label %bb.hg

bb.hg:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, %bb.he, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i, %bb.hc
  %i.ux = phi i8 [ %i.tt, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %i.uw, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %i.ts, %bb.he ], [ %i.ts, %bb.hc ]
  %i.uy = phi i8 [ %i.uq, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %i.tt, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %i.tt, %bb.he ], [ %i.tt, %bb.hc ]
  %.sroa.06.2.i.i.i.i.i = phi i8 [ %.sroa.01.1.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %i.uh, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %.sroa.06.1.i.i.i.i.i, %bb.he ], [ %.sroa.06.1.i.i.i.i.i, %bb.hc ]
  %.sroa.01.2.i.i.i.i.i = phi i8 [ %i.uh, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %.sroa.01.1.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %.sroa.01.1.i.i.i.i.i, %bb.he ], [ %.sroa.01.1.i.i.i.i.i, %bb.hc ]
  %.pr.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !718
  br label %bb.gu

_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i: ; preds = %bb.gz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !718
  %i.uz = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !723 ; 2 uses
  %i.va = icmp eq i64 %i.uz, 0
  br i1 %i.va, label %.split.i.i.i.i, label %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i, !prof !14

.split.i.i.i.i:                                   ; preds = %_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %i.vb = invoke noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc292.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321

.noexc292.i:                                      ; preds = %.split.i.i.i.i
  %i.vc = and i128 %i.vb, 32768
  %.not80.i.i.i.i = icmp eq i128 %i.vc, 0
  br i1 %.not80.i.i.i.i, label %bb.hh, label %.noexc9.i.i.i

_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i: ; preds = %_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %i.vd = and i64 %i.uz, 32768
  %.not.i.i.i.i = icmp eq i64 %i.vd, 0
  br i1 %.not.i.i.i.i, label %bb.hh, label %.noexc9.i.i.i

bb.hh:                                            ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i, %.noexc292.i
  %i.ve = zext i8 %i.tt to i64                    ; 3 uses
  %i.vf = icmp samesign ugt i64 %.sroa.5.0.i.i, %i.ve
  br i1 %i.vf, label %bb.hi, label %.noexc7.i.i.i.invoke

bb.hi:                                            ; preds = %bb.hh
  %i.vg = zext i8 %i.ts to i64                    ; 3 uses
  %i.vh = icmp samesign ugt i64 %.sroa.5.0.i.i, %i.vg
  br i1 %i.vh, label %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i, label %.noexc7.i.i.i.invoke

.noexc7.i.i.i.invoke:                             ; preds = %bb.hi, %bb.hh
  %i.vi = phi i64 [ %i.ve, %bb.hh ], [ %i.vg, %bb.hi ]
  %i.vj = phi ptr [ @169, %bb.hh ], [ @170, %bb.hi ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.vi, i64 noundef range(i64 2, 4) %.sroa.5.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vj) #41
          to label %.noexc7.i.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627, !inline_history !321

.noexc7.i.i.i.cont:                               ; preds = %.noexc7.i.i.i.invoke
  unreachable

_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i: ; preds = %bb.hi
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i274.i, i64 %i.ve
  %i.vl = load i8, ptr %i.vk, align 1, !alias.scope !724, !noalias !725, !noundef !15
  %i.vm = insertelement <16 x i8> poison, i8 %i.vl, i64 0
  %i.vn = shufflevector <16 x i8> %i.vm, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.i.i59.i.i.i.i = call noundef i8 @llvm.umax.i8(i8 %i.ts, i8 %i.tt)
  %i.vo = zext i8 %.sroa.0.0.i.i59.i.i.i.i to i64
  %i.vp = add nuw nsw i64 %i.vo, 16
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i274.i, i64 %i.vg
  %i.vr = load i8, ptr %i.vq, align 1, !alias.scope !724, !noalias !725, !noundef !15
  %i.vs = insertelement <16 x i8> poison, i8 %i.vr, i64 0
  %i.vt = shufflevector <16 x i8> %i.vs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i

.noexc9.i.i.i:                                    ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i, %.noexc292.i
  invoke fastcc void @_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644avx210packedpairNtB2_6Finder14with_pair_impl(ptr noalias noundef align 32 captures(none) dereferenceable(160) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i274.i, i64 noundef range(i64 1, 4) %.sroa.5.0.i.i, i8 noundef %i.tt, i8 noundef %i.ts)
          to label %.noexc295.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321

.noexc295.i:                                      ; preds = %.noexc9.i.i.i
  %.sroa.3.sroa.4.31.copyload.i.i.i.i = load i8, ptr %.sroa.3.sroa.4.31..sroa_idx.i.i.i.i, align 8, !noalias !726
  %.sroa.02.0.copyload3.i.i.i = load <16 x i8>, ptr %i.k, align 32, !noalias !726
  %.sroa.6.0.copyload5.i.i.i = load <16 x i8>, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 16, !noalias !726
  %.sroa.76.0.copyload8.i.i.i = load i64, ptr %.sroa.76.0..sroa_idx7.i.i.i, align 32, !noalias !726
  %.sroa.8.0.copyload10.i.i.i = load i8, ptr %.sroa.8.0..sroa_idx9.i.i.i, align 8, !noalias !726
  %.sroa.9.0.copyload12.i.i.i = load i8, ptr %.sroa.9.0..sroa_idx11.i.i.i, align 1, !noalias !726
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i

_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i: ; preds = %bb.gr
  %.sroa.02.0.vec.insert.i.i.i = insertelement <16 x i8> <i8 poison, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, i8 %i.sz, i64 0
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i

bb.hj:                                            ; preds = %bb.gq
  %i.vu = load i8, ptr %.sroa.0.0.i274.i, align 1, !alias.scope !727, !noalias !728, !noundef !15
  %i.vv = zext i8 %i.vu to i32                    ; 2 uses
  br i1 %.not.i.i273.i, label %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i, label %.peel.next.i.i.i

.peel.next.i.i.i:                                 ; preds = %bb.hj
  %i.vw = select i1 %.not.i2.i.i, i32 68, i32 78
  %i.vx = shl nuw nsw i32 %i.vv, 2
  %i.vy = add nuw nsw i32 %i.vw, %i.vx
  %i.vz = select i1 %.not.i2.i.i, i32 34, i32 39
  %i.wa = add nuw nsw i32 %i.vy, %i.vz
  br label %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i

_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i: ; preds = %.peel.next.i.i.i, %bb.hj
  %.sroa.6.1.lcssa.i.neg.i.i = phi i32 [ -1, %bb.hj ], [ -4, %.peel.next.i.i.i ]
  %.sroa.0.1.lcssa.i.i.i = phi i32 [ %i.vv, %bb.hj ], [ %i.wa, %.peel.next.i.i.i ]
  %i.wb = ptrtoint ptr %i.sx to i64
  %i.wc = icmp samesign ugt i64 %.sroa.5.0.i.i, %i.sw
  br i1 %i.wc, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, label %bb.hk

bb.hk:                                            ; preds = %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i
  %3 = getelementptr inbounds nuw i8, ptr %i.sx, i64 %.sroa.5.0.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %bb.hk
  %.sroa.010.02.i.i.i.i = phi ptr [ %5, %.lr.ph.i.i.i.i ], [ %i.sx, %bb.hk ] ; 2 uses
  %.sroa.013.01.i.i.i.i = phi i32 [ %i.wf, %.lr.ph.i.i.i.i ], [ 0, %bb.hk ]
  %i.wd = load i8, ptr %.sroa.010.02.i.i.i.i, align 1, !alias.scope !729, !noalias !730, !noundef !15
  %i.we = shl i32 %.sroa.013.01.i.i.i.i, 1
  %4 = zext i8 %i.wd to i32
  %i.wf = add i32 %i.we, %4                       ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.010.02.i.i.i.i, i64 1 ; 2 uses
  %6 = icmp ult ptr %5, %3
  br i1 %6, label %.lr.ph.i.i.i.i, label %.preheader.i.preheader.i.i.i

.preheader.i.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i.i
  %i.wg = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.ql
  %i.wh = getelementptr inbounds i8, ptr %i.wg, i64 %.sroa.5.0.i.i.neg
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.hn, %.preheader.i.preheader.i.i.i
  %.sroa.013.1.i.i.i.i = phi i32 [ %i.wr, %bb.hn ], [ %i.wf, %.preheader.i.preheader.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ws, %bb.hn ], [ %i.sx, %.preheader.i.preheader.i.i.i ] ; 6 uses
  %i.wi = icmp eq i32 %.sroa.0.1.lcssa.i.i.i, %.sroa.013.1.i.i.i.i
  br i1 %i.wi, label %bb.hm, label %bb.hl, !prof !14

bb.hl:                                            ; preds = %.noexc296.i, %.preheader.i.i.i.i
  %.not.i.i10.i.i = icmp ult ptr %.sroa.0.0.i.i.i.i, %i.wh
  br i1 %.not.i.i10.i.i, label %bb.hn, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

bb.hm:                                            ; preds = %.preheader.i.i.i.i
  %i.wj = invoke noundef zeroext i1 @_RNvNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarp12is_equal_raw(ptr noundef nonnull %.sroa.0.0.i.i.i.i, ptr noundef nonnull readonly %.sroa.0.0.i274.i, i64 noundef range(i64 1, 4) %.sroa.5.0.i.i)
          to label %.noexc296.i unwind label %.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321

.noexc296.i:                                      ; preds = %bb.hm
  br i1 %i.wj, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281, label %bb.hl

bb.hn:                                            ; preds = %bb.hl
  %i.wk = load i8, ptr %.sroa.0.0.i.i.i.i, align 1, !alias.scope !729, !noalias !730, !noundef !15
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.sroa.5.0.i.i
  %i.wm = load i8, ptr %i.wl, align 1, !alias.scope !729, !noalias !730, !noundef !15
  %i.wn = zext i8 %i.wk to i32
  %.neg.i.i = mul nsw i32 %.sroa.6.1.lcssa.i.neg.i.i, %i.wn
  %i.wo = add i32 %.neg.i.i, %.sroa.013.1.i.i.i.i
  %i.wp = shl i32 %i.wo, 1
  %i.wq = zext i8 %i.wm to i32
  %i.wr = add i32 %i.wp, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 1
  br label %.preheader.i.i.i.i

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281: ; preds = %.noexc296.i
  %i.wt = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64
  %i.wu = sub i64 %i.wt, %i.wb
  br label %bb.ho

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i: ; preds = %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i, %.noexc295.i, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i
  %.sroa.16.1.i.i.i = phi ptr [ @_RNvNtNtCsiVHPhtDv1FH_6memchr6memmem8searcher22searcher_kind_one_byte, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ @_RNvNtNtCsiVHPhtDv1FH_6memchr6memmem8searcher18searcher_kind_sse2, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ @_RNvNtNtCsiVHPhtDv1FH_6memchr6memmem8searcher18searcher_kind_avx2, %.noexc295.i ] ; 2 uses
  %.sroa.14.0.i.i.i = phi i32 [ 1, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ 4, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ 4, %.noexc295.i ]
  %.sroa.1215.0.i.i.i = phi i32 [ %i.ta, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.th, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %i.th, %.noexc295.i ]
  %.sroa.1014.1.i.i.i = phi i8 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ undef, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.3.sroa.4.31.copyload.i.i.i.i, %.noexc295.i ]
  %.sroa.9.1.i.i.i = phi i8 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.ts, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.9.0.copyload12.i.i.i, %.noexc295.i ]
  %.sroa.8.1.i.i.i = phi i8 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.tt, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.8.0.copyload10.i.i.i, %.noexc295.i ]
  %.sroa.76.1.i.i.i = phi i64 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.vp, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.76.0.copyload8.i.i.i, %.noexc295.i ]
  %.sroa.6.1.i.i.i = phi <16 x i8> [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.vt, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.6.0.copyload5.i.i.i, %.noexc295.i ]
  %.sroa.02.1.i.i.i = phi <16 x i8> [ %.sroa.02.0.vec.insert.i.i.i, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.vn, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.02.0.copyload3.i.i.i, %.noexc295.i ]
  store i64 0, ptr %i.dj, align 32, !alias.scope !713, !noalias !731
  store ptr %.sroa.0.0.i274.i, ptr %.sroa.5.0..sroa_idx1.i.i.i, align 8, !alias.scope !713, !noalias !731
  store i64 %.sroa.5.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !alias.scope !713, !noalias !731
  store <16 x i8> %.sroa.02.1.i.i.i, ptr %i.m, align 32, !alias.scope !713, !noalias !731
  store <16 x i8> %.sroa.6.1.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !alias.scope !713, !noalias !731
  store i64 %.sroa.76.1.i.i.i, ptr %.sroa.76.0..sroa_idx.i.i.i, align 32, !alias.scope !713, !noalias !731
  store i8 %.sroa.8.1.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !713, !noalias !731
  store i8 %.sroa.9.1.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 1, !alias.scope !713, !noalias !731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.10.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %i.di, i64 30, i1 false), !noalias !731
  store i8 %.sroa.1014.1.i.i.i, ptr %.sroa.1014.0..sroa_idx.i.i.i, align 8, !alias.scope !713, !noalias !731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.11.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(87) %i.dh, i64 87, i1 false), !noalias !731
  store i32 %.sroa.1215.0.i.i.i, ptr %.sroa.1215.0..sroa_idx.i.i.i, align 32, !alias.scope !713, !noalias !731
  store i32 %.sroa.14.0.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i, align 4, !alias.scope !713, !noalias !731
  store ptr %.sroa.16.1.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i, align 8, !alias.scope !713, !noalias !731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !712
  store i32 1, ptr %i.l, align 4, !noalias !712
  store i32 0, ptr %i.dk, align 4, !noalias !712
  %i.wv = invoke { i64, i64 } %.sroa.16.1.i.i.i(ptr noalias noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(256) %i.m, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.sx, i64 noundef range(i64 0, -9223372036854775808) %i.sw, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i274.i, i64 noundef range(i64 1, 4) %.sroa.5.0.i.i)
          to label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !496 ; 2 uses

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i:   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i
  %i.ww = extractvalue { i64, i64 } %i.wv, 1
  %i.wx = extractvalue { i64, i64 } %i.wv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !712
  %i.wy = trunc nuw i64 %i.wx to i1
  br i1 %i.wy, label %bb.ho, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

bb.ho:                                            ; preds = %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i
  %.sroa.3.0.i.pn.i.i285 = phi i64 [ %i.wu, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281 ], [ %i.ww, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i ] ; 2 uses
  %i.wz = icmp ugt i64 %.sroa.3.0.i.pn.i.i285, 4294967295
  %i.xa = shl nuw i64 %.sroa.3.0.i.pn.i.i285, 32
  %.sroa.081.0.insert.insert.i = select i1 %i.wz, i64 513, i64 %i.xa ; 2 uses
  %i.xb = trunc i64 %.sroa.081.0.insert.insert.i to i1
  br i1 %i.xb, label %bb.hp, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i, !prof !14

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !732
  br label %.loopexit1234.invoke

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i: ; preds = %bb.ho
  %.sroa.6.0.extract.shift.i126.i = lshr i64 %.sroa.081.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i127.i = trunc nuw i64 %.sroa.6.0.extract.shift.i126.i to i32
  %i.xc = add i32 %.sroa.0.0.i266.i, %.sroa.6.0.extract.trunc.i127.i ; 3 uses
  %i.xd = add i32 %i.xc, %..i55                   ; 2 uses
  %.not113.i = icmp ugt i32 %i.xc, %i.xd
  br i1 %.not113.i, label %.invoke2165, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i, !prof !14

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i
  call void @llvm.experimental.noalias.scope.decl(metadata !733), !noalias !623
  %i.xe = load i8, ptr %i.dc, align 4, !alias.scope !734, !noalias !735, !noundef !15 ; 3 uses
  %i.xf = load i8, ptr %i.dd, align 1, !alias.scope !734, !noalias !735, !noundef !15 ; 2 uses
  %i.xg = icmp eq i8 %i.xe, 3
  %i.xh = icmp ult i8 %i.xe, 3
  %i.xi = icmp ult i8 %i.xf, 12
  %spec.select9.i.i.i = select i1 %i.xg, i1 %i.xi, i1 %i.xh
  br i1 %spec.select9.i.i.i, label %bb.hq, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

bb.hq:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !736), !noalias !623
  %i.xj = load i64, ptr %i.df, align 8, !alias.scope !737, !noalias !738, !noundef !15 ; 3 uses
  %i.xk = load i64, ptr %i.de, align 8, !range !26, !alias.scope !737, !noalias !738, !noundef !15
  %i.xl = icmp eq i64 %i.xj, %i.xk
  br i1 %i.xl, label %bb.hr, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i

bb.hr:                                            ; preds = %bb.hq
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !noalias !627, !inline_history !321

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i: ; preds = %bb.hr, %bb.hq
  %i.xm = load ptr, ptr %i.dg, align 8, !alias.scope !737, !noalias !738, !nonnull !15, !noundef !15
  %i.xn = getelementptr inbounds nuw [40 x i8], ptr %i.xm, i64 %i.xj ; 6 uses
  store i8 12, ptr %i.xn, align 8, !noalias !739
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xn, i64 1
  store i8 3, ptr %.sroa.5216.0..sroa_idx, align 1, !noalias !739
  %.sroa.4.0..sroa_idx.i.i56 = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  store i32 %i.xc, ptr %.sroa.4.0..sroa_idx.i.i56, align 8, !noalias !740
  %.sroa.5.0..sroa_idx.i.i57 = getelementptr inbounds nuw i8, ptr %i.xn, i64 28
  store i32 %i.xd, ptr %.sroa.5.0..sroa_idx.i.i57, align 4, !noalias !740
  %.sroa.6.0..sroa_idx.i.i58 = getelementptr inbounds nuw i8, ptr %i.xn, i64 32
  store i8 %i.xe, ptr %.sroa.6.0..sroa_idx.i.i58, align 8, !noalias !740
  %.sroa.7.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %i.xn, i64 33
  store i8 %i.xf, ptr %.sroa.7.0..sroa_idx.i.i59, align 1, !noalias !740
  %i.xo = add i64 %i.xj, 1
  store i64 %i.xo, ptr %i.df, align 8, !alias.scope !737, !noalias !738
  br label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread: ; preds = %bb.hl, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !741), !noalias !623
  %.val.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !742, !noalias !627, !nonnull !15, !noundef !15 ; 7 uses
  %.val1.i.i = load i64, ptr %i.cf, align 8, !alias.scope !742, !noalias !627, !noundef !15 ; 11 uses
  %.idx = mul nuw nsw i64 %.val1.i.i, 12
  %i.xp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx ; 2 uses
  %.not.i.i299.i2156 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i299.i2156, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

bb.hs:                                            ; preds = %.lr.ph
  %.not.i.i299.i = icmp eq ptr %.val.i.i, %i.xr
  br i1 %.not.i.i299.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.hs
  %.sroa.03.0.i.i.i.i2157 = phi i64 [ %i.xs, %bb.hs ], [ %.val1.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.xq = phi ptr [ %i.xr, %bb.hs ], [ %i.xp, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.xr = getelementptr inbounds i8, ptr %i.xq, i64 -12 ; 3 uses
  %i.xs = add i64 %.sroa.03.0.i.i.i.i2157, -1     ; 3 uses
  %.val9.i.i.i.i = load i32, ptr %i.xr, align 4, !noalias !743, !noundef !15
  %i.xt = icmp eq i32 %.val9.i.i.i.i, %.sroa.0.0.i266.i
  br i1 %i.xt, label %bb.ht, label %bb.hs

bb.ht:                                            ; preds = %.lr.ph
  %i.xu = icmp ult i64 %i.xs, %.val1.i.i
  call void @llvm.assume(i1 %i.xu), !noalias !623
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i: ; preds = %bb.hs, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.ht
  %.not.i.i299.i1818 = phi i1 [ false, %bb.ht ], [ true, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ true, %bb.hs ]
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.xs, %bb.ht ], [ undef, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ undef, %bb.hs ] ; 4 uses
  %i.xv = icmp eq i64 %.val1.i.i, 0
  br i1 %i.xv, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2160

bb.hu:                                            ; preds = %.lr.ph2160
  %i.xw = getelementptr inbounds i8, ptr %i.xy, i64 -12 ; 2 uses
  %i.xx = icmp eq ptr %.val.i.i, %i.xw
  br i1 %i.xx, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2160

.lr.ph2160:                                       ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %bb.hu
  %.sroa.03.0.i7.i.i.i2159 = phi i64 [ %i.xz, %bb.hu ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 4 uses
  %i.xy = phi ptr [ %i.xw, %bb.hu ], [ %i.xp, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 2 uses
  %i.xz = add i64 %.sroa.03.0.i7.i.i.i2159, -1    ; 2 uses
  %i.ya = getelementptr i8, ptr %i.xy, i64 -8
  %.val9.i8.i.i.i = load i32, ptr %i.ya, align 4, !noalias !744, !noundef !15
  %i.yb = icmp eq i32 %.val9.i8.i.i.i, %.sroa.11.0.i
  br i1 %i.yb, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i, label %bb.hu

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i: ; preds = %.lr.ph2160
  %i.yc = icmp ult i64 %i.xz, %.val1.i.i
  call void @llvm.assume(i1 %i.yc), !noalias !623
  br i1 %.not.i.i299.i1818, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %bb.hv

bb.hv:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
  %i.yd = icmp ult i64 %.sroa.03.0.i7.i.i.i2159, %.sroa.3.0.i.i.i.i
  br i1 %i.yd, label %bb.hw, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, !prof !14

bb.hw:                                            ; preds = %bb.hv
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.3.0.i.i.i.i, i64 noundef %.sroa.03.0.i7.i.i.i2159, i64 noundef range(i64 0, 768614336404564651) %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41
          to label %.noexc301.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !627, !inline_history !321

.noexc301.i:                                      ; preds = %bb.hw
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.hv
  %i.ye = sub nuw nsw i64 %.sroa.03.0.i7.i.i.i2159, %.sroa.3.0.i.i.i.i
  %i.yf = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i, i64 %.sroa.3.0.i.i.i.i
  br label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i: ; preds = %bb.hu, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
end_hunk_0
