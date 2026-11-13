Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser10parse_listNCNvMNtB5_10expressionBL_34parse_interpolated_string_elements0EB7_:bb.a
  %.val144.i.pre = load i32, ptr %i.bg, align 8, !alias.scope !606, !noalias !603
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread: ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i._RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread_crit_edge, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit229.i
  %.val144.i = phi i32 [ %.val144.i.pre, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i._RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread_crit_edge ], [ %.val139.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit229.i ]
  %.val145.i = load i32, ptr %i.bh, align 4, !alias.scope !606, !noalias !603, !noundef !17
  invoke fastcc void @_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser31report_recursion_limit_exceededNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_(ptr noalias noundef nonnull align 8 dereferenceable(464) %0, i32 noundef %.val144.i, i32 noundef %.val145.i)
          to label %bb.fh unwind label %.loopexit.split-lp331.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

bb.fh:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i
  %.sroa.6197.0 = phi i64 [ %.sroa.5233.0.copyload, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i ], [ 0, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread ]
  %.sroa.5194.0 = phi ptr [ %.sroa.4232.0.copyload, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i ], [ inttoptr (i64 8 to ptr), %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread ]
  %.sroa.0192.0 = phi i64 [ %.sroa.0231.0.copyload, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i ], [ 0, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser14with_recursionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26InterpolatedStringElementsNCNvMNtB5_10expressionBL_26parse_interpolated_element0EB7_.exit.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !608
  %.val151.i = load i32, ptr %i.cc, align 4, !alias.scope !606, !noalias !603, !noundef !17 ; 2 uses
  %.sroa.0.0.i247.i = call i32 @llvm.umin.i32(i32 %.val151.i, i32 %.val139.i)
  store i32 %.sroa.0.0.i247.i, ptr %i.cy, align 8, !noalias !608
  store i32 %.val151.i, ptr %i.cz, align 4, !noalias !608
  store i32 -2, ptr %i.da, align 8, !noalias !608
  store i64 %.sroa.0192.0, ptr %i.s, align 8, !noalias !608
  store ptr %.sroa.5194.0, ptr %.sroa.4208.0..sroa_idx, align 8, !noalias !608
  store i64 %.sroa.6197.0, ptr %.sroa.5209.0..sroa_idx, align 8, !noalias !608
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !663, !inline_history !315
  %i.ou = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !663, !inline_history !315 ; 3 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bb.fi, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i, !prof !31

bb.fi:                                            ; preds = %bb.fh
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #41
          to label %.noexc248.i unwind label %bb.fj, !noalias !607, !inline_history !315

.noexc248.i:                                      ; preds = %bb.fi
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ou, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false), !noalias !607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !608
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit229.i.thread

bb.fj:                                            ; preds = %bb.fi
  %i.ow = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.s) #44
          to label %.body unwind label %bb.fk, !noalias !607, !inline_history !315

bb.fk:                                            ; preds = %bb.fj
  %i.ox = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !607, !inline_history !315
  unreachable

.body132.i:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.fv
  %.sroa.043.2.i = phi i1 [ false, %bb.fv ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn.i = phi { ptr, i32 } [ %i.py, %bb.fv ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes28InterpolatedStringFormatSpecEEECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(8) %i.t) #44
          to label %.body unwind label %bb.cg, !noalias !607, !inline_history !315

bb.fl:                                            ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit229.i.thread
  %i.oy = load i8, ptr %i.bc, align 4, !range !24, !alias.scope !664, !noalias !603, !noundef !17
  %i.oz = icmp eq i8 %i.oy, 39
  br i1 %i.oz, label %bb.fm, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i.thread

bb.fm:                                            ; preds = %bb.fl
  %i.pa = load i32, ptr %i.bh, align 4, !alias.scope !665, !noalias !603, !noundef !17
  %i.pb = load <2 x i32>, ptr %i.bg, align 8, !alias.scope !665, !noalias !603
  store i32 %i.pa, ptr %i.cc, align 4, !alias.scope !665, !noalias !603
  %i.pc = load i16, ptr %i.ce, align 8, !alias.scope !666, !noalias !603, !noundef !17
  %i.pd = load i64, ptr %i.cf, align 8, !alias.scope !667, !noalias !603, !noundef !17 ; 2 uses
  %i.pe = load i64, ptr %i.cd, align 8, !range !28, !alias.scope !667, !noalias !603, !noundef !17
  %i.pf = icmp eq i64 %i.pd, %i.pe
  br i1 %i.pf, label %bb.fn, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader

bb.fn:                                            ; preds = %bb.fm
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader: ; preds = %bb.fn, %bb.fm
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader
  %.sink9.i.i.i250.i = phi i64 [ %i.pd, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader ], [ %i.pm, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge ] ; 2 uses
  %.sink2.i.i.i253.i = phi i16 [ %i.pc, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader ], [ %i.pl, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge ]
  %.sink.i.i.i254.i = phi i8 [ 39, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader ], [ %i.pj, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge ]
  %i.pg = phi <2 x i32> [ %i.pb, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.preheader ], [ %i.pk, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge ]
  %i.ph = load ptr, ptr %i.cg, align 8, !alias.scope !666, !noalias !603, !nonnull !17, !noundef !17
  %i.pi = getelementptr inbounds nuw [12 x i8], ptr %i.ph, i64 %.sink9.i.i.i250.i ; 3 uses
  store <2 x i32> %i.pg, ptr %i.pi, align 4, !noalias !607
  %.sroa.5.0..sroa_idx.i.i.i.i256.i = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store i16 %.sink2.i.i.i253.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i256.i, align 4, !noalias !607
  %.sroa.6.0..sroa_idx.i.i.i.i257.i = getelementptr inbounds nuw i8, ptr %i.pi, i64 10
  store i8 %.sink.i.i.i254.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i257.i, align 2, !noalias !607
  %storemerge.i.i.i258.i = add i64 %.sink9.i.i.i250.i, 1
  store i64 %storemerge.i.i.i258.i, ptr %i.cf, align 8, !alias.scope !666, !noalias !603
  %i.pj = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %0)
          to label %.noexc262.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315 ; 2 uses

.noexc262.i:                                      ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i
  switch i8 %i.pj, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i [
    i8 12, label %bb.fo
    i8 14, label %bb.fo
  ]

bb.fo:                                            ; preds = %.noexc262.i, %.noexc262.i
  %i.pk = load <2 x i32>, ptr %i.bg, align 8, !alias.scope !668, !noalias !603
  %i.pl = load i16, ptr %i.ce, align 8, !alias.scope !668, !noalias !603, !noundef !17
  %i.pm = load i64, ptr %i.cf, align 8, !alias.scope !669, !noalias !603, !noundef !17 ; 2 uses
  %i.pn = load i64, ptr %i.cd, align 8, !range !28, !alias.scope !669, !noalias !603, !noundef !17
  %i.po = icmp eq i64 %i.pm, %i.pn
  br i1 %i.po, label %bb.fp, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge

bb.fp:                                            ; preds = %bb.fo
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i.backedge: ; preds = %bb.fp, %bb.fo
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i: ; preds = %.noexc262.i
  %i.pp = load i32, ptr %.phi.trans.insert.i, align 8, !alias.scope !665, !noalias !603, !noundef !17
  %i.pq = add i32 %i.pp, 1
  store i32 %i.pq, ptr %.phi.trans.insert.i, align 8, !alias.scope !665, !noalias !603
  br label %bb.fq

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i.thread: ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !608
  %spec.select.i265.i = or disjoint i8 %i.ib, 40
  store i8 0, ptr %i.db, align 1, !alias.scope !670, !noalias !608
  store i8 %spec.select.i265.i, ptr %i.r, align 8, !alias.scope !670, !noalias !608
  %.val142.i = load i32, ptr %i.bg, align 8, !alias.scope !606, !noalias !603, !noundef !17
  %.val143.i = load i32, ptr %i.bh, align 4, !alias.scope !606, !noalias !603, !noundef !17
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.bi, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.r, i32 noundef %.val142.i, i32 noundef %.val143.i)
          to label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_.exit268.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

bb.fq:                                            ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_.exit268.i
  %.val150.i = load i32, ptr %i.cc, align 4, !alias.scope !606, !noalias !603, !noundef !17 ; 3 uses
  %.sroa.0.0.i266.i = call i32 @llvm.umin.i32(i32 %.val150.i, i32 %.val140.i) ; 11 uses
  %i.pr = load i8, ptr %i.dc, align 4, !alias.scope !606, !noalias !603, !noundef !17 ; 2 uses
  %i.ps = icmp eq i8 %i.pr, 3
  %i.pt = icmp ugt i8 %i.pr, 2
  br i1 %i.ps, label %bb.fr, label %bb.fs

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fp, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE8push_mutCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i249.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i, %bb.hh, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit229.i.thread, %bb.fn, %.split.i.i.i.i, %.noexc9.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i, %bb.hm, %bb.ic, %bb.if, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i.thread, %bb.ih, %.peel.begin, %bb.gg, %.noexc.i.i.i, %bb.hr, %.loopexit1226.invoke, %.invoke2151, %.invoke2153, %.noexc8.i.i.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body132.i

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_.exit268.i: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit264.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !608
  br label %bb.fq

bb.fr:                                            ; preds = %bb.fq
  %i.pu = load i8, ptr %i.dd, align 1, !alias.scope !606, !noalias !603, !noundef !17
  %i.pv = icmp ugt i8 %i.pu, 11
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.044.0.i = phi i1 [ %i.pv, %bb.fr ], [ %i.pt, %bb.fq ]
  %brmerge.i = or i1 %.sroa.044.0.i, %i.ic
  br i1 %brmerge.i, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %.not110.i = icmp eq ptr %storemerge, null
  br i1 %.not110.i, label %bb.fy, label %bb.fx

_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i316.i, %_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i, %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i, %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false), !noalias !608
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !671, !inline_history !315
  %i.pw = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !671, !inline_history !315 ; 3 uses
  %i.px = icmp eq ptr %i.pw, null
  br i1 %i.px, label %bb.fu, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser26parse_interpolated_element.exit, !prof !31

bb.fu:                                            ; preds = %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #41
          to label %.noexc269.i unwind label %bb.fv, !noalias !607, !inline_history !315

.noexc269.i:                                      ; preds = %bb.fu
  unreachable

bb.fv:                                            ; preds = %bb.fu
  %i.py = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.q) #44
          to label %.body132.i unwind label %bb.fw, !noalias !607, !inline_history !315

bb.fw:                                            ; preds = %bb.fv
  %i.pz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !607, !inline_history !315
  unreachable

bb.fx:                                            ; preds = %bb.ft
  %i.qa = getelementptr inbounds nuw i8, ptr %storemerge, i64 24
  %i.qb = load i32, ptr %i.qa, align 8, !noalias !607, !noundef !17 ; 2 uses
  %.not.i271.i = icmp ugt i32 %.sroa.0.0.i266.i, %i.qb
  br i1 %.not.i271.i, label %.loopexit1226.invoke, label %bb.fy, !prof !16

bb.fy:                                            ; preds = %bb.ft, %bb.fx
  %.sroa.11.0.i = phi i32 [ %.val150.i, %bb.ft ], [ %i.qb, %bb.fx ] ; 3 uses
  %i.qc = and i16 %i.ia, 2
  %.not.i.i273.i = icmp ne i16 %i.qc, 0           ; 8 uses
  %.not.i2.i.i = trunc i16 %i.ia to i1            ; 6 uses
  %..i.i = select i1 %.not.i2.i.i, ptr @643, ptr @642
  %.1.i.i = select i1 %.not.i2.i.i, ptr @641, ptr @640 ; 2 uses
  %.sroa.5.0.i.i.neg = select i1 %.not.i.i273.i, i64 -3, i64 -1
  %.sroa.5.0.i.i = select i1 %.not.i.i273.i, i64 3, i64 1 ; 10 uses
  %.sroa.0.0.i274.i = select i1 %.not.i.i273.i, ptr %.1.i.i, ptr %..i.i ; 9 uses
  %..i55 = select i1 %.not.i.i273.i, i32 3, i32 1
  %i.qd = load ptr, ptr %i.bl, align 8, !alias.scope !606, !noalias !603, !nonnull !17, !noundef !17 ; 8 uses
  %i.qe = load i64, ptr %i.bm, align 8, !alias.scope !606, !noalias !603, !noundef !17 ; 8 uses
  %i.qf = zext i32 %.sroa.0.0.i266.i to i64       ; 14 uses
  %i.qg = zext i32 %.sroa.11.0.i to i64           ; 14 uses
  %i.qh = icmp eq i32 %.sroa.0.0.i266.i, 0        ; 3 uses
  br i1 %i.qh, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %.not5.i.i = icmp ugt i64 %i.qe, %i.qf
  br i1 %.not5.i.i, label %bb.gb, label %.split.i.i

bb.ga:                                            ; preds = %bb.gb, %.split.i.i, %bb.fy
  %i.qi = icmp eq i32 %.sroa.11.0.i, 0            ; 3 uses
  br i1 %i.qi, label %.peel.begin, label %bb.gc

.split.i.i:                                       ; preds = %bb.fz
  %i.qj = icmp eq i64 %i.qe, %i.qf
  br i1 %i.qj, label %bb.ga, label %.invoke2151

bb.gb:                                            ; preds = %bb.fz
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qf
  %i.ql = load i8, ptr %i.qk, align 1, !alias.scope !672, !noalias !607, !noundef !17
  %i.qm = icmp sgt i8 %i.ql, -65
  br i1 %i.qm, label %bb.ga, label %.invoke2151

bb.gc:                                            ; preds = %bb.ga
  %.not6.i.i = icmp ugt i64 %i.qe, %i.qg
  br i1 %.not6.i.i, label %bb.gd, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.gc
  %i.qn = icmp eq i64 %i.qe, %i.qg
  br i1 %i.qn, label %.peel.begin, label %.invoke2151

bb.gd:                                            ; preds = %bb.gc
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qg
  %i.qp = load i8, ptr %i.qo, align 1, !alias.scope !672, !noalias !607, !noundef !17
  %i.qq = icmp sgt i8 %i.qp, -65
  br i1 %i.qq, label %.peel.begin, label %.invoke2151

.peel.begin:                                      ; preds = %bb.gd, %.split7.i.i, %bb.ga
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qf ; 2 uses
  %i.qs = getelementptr i8, ptr %i.qd, i64 %i.qg  ; 2 uses
  %i.qt = ptrtoint ptr %i.qr to i64               ; 2 uses
  %i.qu = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !673, !nonnull !17, !noundef !17
  %i.qv = invoke { i64, ptr } %i.qu(i8 noundef 92, ptr noundef nonnull %i.qr, ptr noundef %i.qs)
          to label %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !434 ; 2 uses

_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel: ; preds = %.peel.begin
  %i.qw = extractvalue { i64, ptr } %i.qv, 0
  %i.qx = trunc nuw i64 %i.qw to i1
  br i1 %i.qx, label %bb.ge, label %.loopexit1224

bb.ge:                                            ; preds = %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel
  %i.qy = extractvalue { i64, ptr } %i.qv, 1      ; 4 uses
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = sub i64 %i.qz, %i.qt                    ; 3 uses
  %i.rb = icmp sgt i64 %i.ra, -1
  call void @llvm.assume(i1 %i.rb), !noalias !603
  %i.rc = icmp samesign ugt i64 %i.ra, 4294967295
  %i.rd = shl nuw i64 %i.ra, 32
  %.sroa.085.0.insert.insert.i.peel = select i1 %i.rc, i64 513, i64 %i.rd ; 2 uses
  %i.re = trunc i64 %.sroa.085.0.insert.insert.i.peel to i1
  br i1 %i.re, label %.loopexit1225, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel, !prof !16

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel: ; preds = %bb.ge
  %.sroa.6.0.extract.shift.i.i.peel = lshr i64 %.sroa.085.0.insert.insert.i.peel, 32
  %.sroa.6.0.extract.trunc.i.i.peel = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.peel to i32
  %i.rf = add i32 %.sroa.0.0.i266.i, %.sroa.6.0.extract.trunc.i.i.peel ; 3 uses
  %.not116.i.peel = icmp eq i32 %i.rf, -1
  br i1 %.not116.i.peel, label %.loopexit1226.invoke, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel, !prof !16

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.peel
  %i.rg = load i8, ptr %i.dc, align 4, !alias.scope !674, !noalias !603, !noundef !17 ; 4 uses
  %i.rh = load i8, ptr %i.dd, align 1, !alias.scope !674, !noalias !603, !noundef !17 ; 3 uses
  %i.ri = icmp eq i8 %i.rg, 3
  %i.rj = icmp ult i8 %i.rg, 3
  %i.rk = icmp ult i8 %i.rh, 12
  %spec.select9.i.i329.i.peel = select i1 %i.ri, i1 %i.rk, i1 %i.rj
  br i1 %spec.select9.i.i329.i.peel, label %bb.gf, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader

bb.gf:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel
  %i.rl = load i64, ptr %i.df, align 8, !alias.scope !675, !noalias !603, !noundef !17 ; 3 uses
  %i.rm = load i64, ptr %i.de, align 8, !range !28, !alias.scope !675, !noalias !603, !noundef !17
  %i.rn = icmp eq i64 %i.rl, %i.rm
  br i1 %i.rn, label %bb.gg, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split

bb.gg:                                            ; preds = %bb.gf
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split: ; preds = %bb.gf, %bb.gg, %bb.ig, %bb.ih
  %.sink2168 = phi i64 [ %i.aaj, %bb.ig ], [ %i.aaj, %bb.ih ], [ %i.rl, %bb.gg ], [ %i.rl, %bb.gf ] ; 2 uses
  %.sink2163 = phi i32 [ %i.sc, %bb.ig ], [ %i.sc, %bb.ih ], [ %i.rf, %bb.gg ], [ %i.rf, %bb.gf ] ; 2 uses
  %.sink2159 = phi i8 [ %i.aae, %bb.ig ], [ %i.aae, %bb.ih ], [ %i.rg, %bb.gg ], [ %i.rg, %bb.gf ]
  %.sink2157 = phi i8 [ %i.aaf, %bb.ig ], [ %i.aaf, %bb.ih ], [ %i.rh, %bb.gg ], [ %i.rh, %bb.gf ]
  %.pn.ph = phi ptr [ %i.rv, %bb.ig ], [ %i.rv, %bb.ih ], [ %i.qy, %bb.gg ], [ %i.qy, %bb.gf ]
  %.sink2161 = add nuw i32 %.sink2163, 1
  %i.ro = load ptr, ptr %i.dg, align 8, !alias.scope !606, !noalias !603, !nonnull !17, !noundef !17
  %i.rp = getelementptr inbounds nuw [40 x i8], ptr %i.ro, i64 %.sink2168 ; 6 uses
  store i8 12, ptr %i.rp, align 8, !noalias !607
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rp, i64 1
  store i8 0, ptr %.sroa.5213.0..sroa_idx, align 1, !noalias !607
  %.sroa.4.0..sroa_idx.i331.i = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  store i32 %.sink2163, ptr %.sroa.4.0..sroa_idx.i331.i, align 8, !noalias !676
  %.sroa.5.0..sroa_idx.i332.i = getelementptr inbounds nuw i8, ptr %i.rp, i64 28
  store i32 %.sink2161, ptr %.sroa.5.0..sroa_idx.i332.i, align 4, !noalias !676
  %.sroa.6.0..sroa_idx.i333.i = getelementptr inbounds nuw i8, ptr %i.rp, i64 32
  store i8 %.sink2159, ptr %.sroa.6.0..sroa_idx.i333.i, align 8, !noalias !676
  %.sroa.7.0..sroa_idx.i334.i = getelementptr inbounds nuw i8, ptr %i.rp, i64 33
  store i8 %.sink2157, ptr %.sroa.7.0..sroa_idx.i334.i, align 1, !noalias !676
  %i.rq = add i64 %.sink2168, 1
  store i64 %i.rq, ptr %i.df, align 8, !alias.scope !606, !noalias !603
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader: ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split
  %.pn.ph2173 = phi ptr [ %.pn.ph, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.sink.split ], [ %i.qy, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i.peel ]
  br label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel

_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i
  %.pn = phi ptr [ %i.rv, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i ], [ %.pn.ph2173, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel.preheader ]
  %.sroa.4.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.rr = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !673, !nonnull !17, !noundef !17
  %i.rs = invoke { i64, ptr } %i.rr(i8 noundef 92, ptr noundef nonnull %.sroa.4.0, ptr noundef %i.qs)
          to label %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !434 ; 2 uses

_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit339.i.peel
  %i.rt = extractvalue { i64, ptr } %i.rs, 0
  %i.ru = trunc nuw i64 %i.rt to i1
  br i1 %i.ru, label %bb.gh, label %.loopexit1224

bb.gh:                                            ; preds = %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.rv = extractvalue { i64, ptr } %i.rs, 1      ; 4 uses
  %i.rw = ptrtoint ptr %i.rv to i64
  %i.rx = sub i64 %i.rw, %i.qt                    ; 3 uses
  %i.ry = icmp sgt i64 %i.rx, -1
  call void @llvm.assume(i1 %i.ry), !noalias !603
  %i.rz = icmp samesign ugt i64 %i.rx, 4294967295
  %i.sa = shl nuw i64 %i.rx, 32
  %.sroa.085.0.insert.insert.i = select i1 %i.rz, i64 513, i64 %i.sa ; 2 uses
  %i.sb = trunc i64 %.sroa.085.0.insert.insert.i to i1
  br i1 %i.sb, label %.loopexit1225, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i, !prof !16

.loopexit1225:                                    ; preds = %bb.ge, %bb.gh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !677
  br label %.invoke2153

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.gh
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.085.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %i.sc = add i32 %.sroa.0.0.i266.i, %.sroa.6.0.extract.trunc.i.i ; 3 uses
  %.not116.i = icmp eq i32 %i.sc, -1
  br i1 %.not116.i, label %.loopexit1226.invoke, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i327.i, !prof !16

.loopexit1224:                                    ; preds = %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i, %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel
  %.sroa.022.0.i.lcssa840 = phi i1 [ %.not.i.i273.i, %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i.peel ], [ true, %_RNCNvXs_NtCsiVHPhtDv1FH_6memchr6memchrNtB6_6MemchrNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0Csb6FLkjZuKG_18ruff_python_parser.exit.i ]
  %i.sd = load ptr, ptr %i.bl, align 8, !alias.scope !606, !noalias !603, !nonnull !17, !noundef !17 ; 8 uses
  %i.se = load i64, ptr %i.bm, align 8, !alias.scope !606, !noalias !603, !noundef !17 ; 8 uses
  br i1 %i.qh, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %.loopexit1224
  %.not5.i280.i = icmp ugt i64 %i.se, %i.qf
  br i1 %.not5.i280.i, label %bb.gk, label %.split.i281.i

bb.gj:                                            ; preds = %bb.gk, %.split.i281.i, %.loopexit1224
  br i1 %i.qi, label %bb.gn, label %bb.gl

.split.i281.i:                                    ; preds = %bb.gi
  %i.sf = icmp eq i64 %i.se, %i.qf
  br i1 %i.sf, label %bb.gj, label %.invoke2151

bb.gk:                                            ; preds = %bb.gi
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.qf
  %i.sh = load i8, ptr %i.sg, align 1, !alias.scope !678, !noalias !607, !noundef !17
  %i.si = icmp sgt i8 %i.sh, -65
  br i1 %i.si, label %bb.gj, label %.invoke2151

bb.gl:                                            ; preds = %bb.gj
  %.not6.i284.i = icmp ugt i64 %i.se, %i.qg
  br i1 %.not6.i284.i, label %bb.gm, label %.split7.i285.i

.split7.i285.i:                                   ; preds = %bb.gl
  %i.sj = icmp eq i64 %i.se, %i.qg
  br i1 %i.sj, label %bb.gn, label %.invoke2151

bb.gm:                                            ; preds = %bb.gl
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.qg
  %i.sl = load i8, ptr %i.sk, align 1, !alias.scope !678, !noalias !607, !noundef !17
  %i.sm = icmp sgt i8 %i.sl, -65
  br i1 %i.sm, label %bb.gn, label %.invoke2151

bb.gn:                                            ; preds = %bb.gm, %.split7.i285.i, %bb.gj
  %i.sn = sub nuw nsw i64 %i.qg, %i.qf            ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.qf ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !679), !noalias !603
  call void @llvm.experimental.noalias.scope.decl(metadata !680), !noalias !603
  %i.sp = icmp samesign ult i64 %i.sn, 64
  br i1 %i.sp, label %3, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !681
  call void @llvm.experimental.noalias.scope.decl(metadata !682), !noalias !603
  call void @llvm.experimental.noalias.scope.decl(metadata !683), !noalias !603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !681
  call void @llvm.experimental.noalias.scope.decl(metadata !684), !noalias !603
  %i.sq = load i8, ptr %.sroa.0.0.i274.i, align 1, !alias.scope !685, !noalias !607, !noundef !17 ; 5 uses
  %i.sr = zext i8 %i.sq to i32                    ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i274.i, i64 %.sroa.5.0.i.i
  br i1 %.not.i.i273.i, label %.peel.next.i.i.i.i.i, label %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.go
  %.sroa.5.0.peel.i.i.i.i.i = select i1 %.not.i2.i.i, i8 34, i8 39 ; 4 uses
  %i.st = shl nuw nsw i32 %i.sr, 2
  %i.su = shl nuw nsw i8 %.sroa.5.0.peel.i.i.i.i.i, 1
  %i.sv = zext nneg i8 %i.su to i32
  %i.sw = add nuw nsw i32 %i.st, %i.sv
  %i.sx = select i1 %.not.i2.i.i, i32 34, i32 39
  %i.sy = add nuw nsw i32 %i.sw, %i.sx            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !686
  store i8 0, ptr %i.j, align 1, !noalias !686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !686
  store i8 1, ptr %i.i, align 1, !noalias !686
  %i.sz = zext nneg i8 %.sroa.5.0.peel.i.i.i.i.i to i64
  %i.ta = getelementptr inbounds nuw i8, ptr @383, i64 %i.sz
  %i.tb = load i8, ptr %i.ta, align 1, !noalias !686, !noundef !17
  %i.tc = zext i8 %i.sq to i64
  %i.td = getelementptr inbounds nuw i8, ptr @383, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1, !noalias !686, !noundef !17
  %i.tf = icmp ult i8 %i.tb, %i.te
  br i1 %i.tf, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %.peel.next.i.i.i.i.i
  store i8 1, ptr %i.j, align 1, !noalias !686
  store i8 0, ptr %i.i, align 1, !noalias !686
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.peel.next.i.i.i.i.i
  %i.tg = phi i8 [ 0, %bb.gp ], [ 1, %.peel.next.i.i.i.i.i ]
  %i.th = phi i8 [ 1, %bb.gp ], [ 0, %.peel.next.i.i.i.i.i ]
  %.sroa.06.0.i.i.i.i.i = phi i8 [ %i.sq, %bb.gp ], [ %.sroa.5.0.peel.i.i.i.i.i, %.peel.next.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %.sroa.5.0.peel.i.i.i.i.i, %bb.gp ], [ %i.sq, %.peel.next.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !686
  store ptr %.1.i.i, ptr %i.h, align 8, !noalias !686
  store ptr %i.ss, ptr %.sroa.09.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !686
  store i64 0, ptr %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !noalias !686
  store i64 255, ptr %.sroa.09.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !686
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !686
  br label %bb.gr

bb.gr:                                            ; preds = %bb.hd, %bb.gq
  %i.ti = phi i64 [ %.pr.i.i.i.i.i, %bb.hd ], [ 2, %bb.gq ] ; 2 uses
  %i.tj = phi i8 [ %i.uo, %bb.hd ], [ %i.tg, %bb.gq ] ; 7 uses
  %i.tk = phi i8 [ %i.up, %bb.hd ], [ %i.th, %bb.gq ] ; 10 uses
  %.sroa.06.1.i.i.i.i.i = phi i8 [ %.sroa.06.2.i.i.i.i.i, %bb.hd ], [ %.sroa.06.0.i.i.i.i.i, %bb.gq ] ; 3 uses
  %.sroa.01.1.i.i.i.i.i = phi i8 [ %.sroa.01.2.i.i.i.i.i, %bb.hd ], [ %.sroa.01.0.i.i.i.i.i, %bb.gq ] ; 6 uses
  %.not.i.i.i.i287.i = icmp eq i64 %i.ti, 0
  br i1 %.not.i.i.i.i287.i, label %bb.gs, label %bb.gt, !prof !32

bb.gs:                                            ; preds = %bb.gr
  %i.tl = load i64, ptr %.sroa.09.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !686, !noundef !17 ; 2 uses
  %i.tm = icmp eq i64 %i.tl, 0
  br i1 %i.tm, label %bb.gw, label %bb.gu

bb.gt:                                            ; preds = %bb.gr
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !686
  %i.tn = call fastcc { i64, ptr } @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB4_4TakeINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterhEEENtNtNtB8_6traits8iterator8Iterator3nthCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef align 8 dereferenceable(32) %i.h, i64 noundef %i.ti), !noalias !686, !inline_history !315
  br label %bb.gx

bb.gu:                                            ; preds = %bb.gs
  %i.to = add i64 %i.tl, -1
  store i64 %i.to, ptr %.sroa.09.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !686
  %i.tp = load ptr, ptr %i.h, align 8, !alias.scope !687, !noalias !686, !nonnull !17, !noundef !17 ; 3 uses
  %i.tq = load ptr, ptr %.sroa.09.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !687, !noalias !686, !nonnull !17, !noundef !17
  %i.tr = icmp eq ptr %i.tp, %i.tq
  br i1 %i.tr, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tp, i64 1
  store ptr %i.ts, ptr %i.h, align 8, !alias.scope !687, !noalias !686
  %i.tt = load i64, ptr %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !688, !noalias !686, !noundef !17 ; 2 uses
  %i.tu = add i64 %i.tt, 1
  store i64 %i.tu, ptr %.sroa.09.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !688, !noalias !686
  br label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i: ; preds = %bb.gv, %bb.gu
  %.sroa.2.0.i.i.i.i.i.i = phi ptr [ %i.tp, %bb.gv ], [ null, %bb.gu ]
  %.sroa.0.0.i.i.i.i.i288.i = phi i64 [ %i.tt, %bb.gv ], [ undef, %bb.gu ]
  %i.tv = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.i.i.i.i288.i, 0
  %i.tw = insertvalue { i64, ptr } %i.tv, ptr %.sroa.2.0.i.i.i.i.i.i, 1
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gx, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !686
  %i.tx = icmp eq i8 %i.tk, %i.tj
  br i1 %i.tx, label %.noexc.i.i.i, label %_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i, !prof !16

bb.gx:                                            ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, %bb.gt
  %.pn.i.i.i.i.i = phi { i64, ptr } [ %i.tn, %bb.gt ], [ %i.tw, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i = extractvalue { i64, ptr } %.pn.i.i.i.i.i, 1 ; 2 uses
  %.sroa.014.0.i.i.i.i.i = extractvalue { i64, ptr } %.pn.i.i.i.i.i, 0 ; 4 uses
  %.not29.i.i.i.i.i = icmp eq ptr %.sroa.7.0.i.i.i.i.i, null
  br i1 %.not29.i.i.i.i.i, label %bb.gw, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ty = load i8, ptr %.sroa.7.0.i.i.i.i.i, align 1, !noalias !689, !noundef !17 ; 4 uses
  %i.tz = zext i8 %i.ty to i64
  %i.ua = getelementptr inbounds nuw i8, ptr @383, i64 %i.tz
  %i.ub = load i8, ptr %i.ua, align 1, !noalias !686, !noundef !17 ; 2 uses
  %i.uc = zext i8 %.sroa.01.1.i.i.i.i.i to i64
  %i.ud = getelementptr inbounds nuw i8, ptr @383, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1, !noalias !686, !noundef !17
  %i.uf = icmp ult i8 %i.ub, %i.ue
  br i1 %i.uf, label %bb.ha, label %bb.gz

.noexc.i.i.i:                                     ; preds = %bb.gw
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedhhECs9OSMwK5JXHk_12aho_corasick(i8 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #41
          to label %.noexc289.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

.noexc289.i:                                      ; preds = %.noexc.i.i.i
  unreachable

bb.gz:                                            ; preds = %bb.gy
  %.not30.i.i.i.i.i = icmp eq i8 %i.ty, %.sroa.01.1.i.i.i.i.i
  br i1 %.not30.i.i.i.i.i, label %bb.hd, label %bb.hb

bb.ha:                                            ; preds = %bb.gy
  store i8 %i.tk, ptr %i.i, align 1, !noalias !686
  %i.ug = icmp ugt i64 %.sroa.014.0.i.i.i.i.i, 255
  br i1 %i.ug, label %.noexc4.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i, !prof !16

.noexc4.i.i.i:                                    ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !690
  br label %.invoke2153

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i: ; preds = %bb.ha
  %i.uh = trunc nuw i64 %.sroa.014.0.i.i.i.i.i to i8 ; 2 uses
  store i8 %i.uh, ptr %i.j, align 1, !noalias !686
  br label %bb.hd

bb.hb:                                            ; preds = %bb.gz
  %i.ui = zext i8 %.sroa.06.1.i.i.i.i.i to i64
  %i.uj = getelementptr inbounds nuw i8, ptr @383, i64 %i.ui
  %i.uk = load i8, ptr %i.uj, align 1, !noalias !686, !noundef !17
  %i.ul = icmp ult i8 %i.ub, %i.uk
  br i1 %i.ul, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.um = icmp ugt i64 %.sroa.014.0.i.i.i.i.i, 255
  br i1 %i.um, label %.noexc5.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, !prof !16

.noexc5.i.i.i:                                    ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !691
  br label %.invoke2153

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i: ; preds = %bb.hc
  %i.un = trunc nuw i64 %.sroa.014.0.i.i.i.i.i to i8 ; 2 uses
  store i8 %i.un, ptr %i.i, align 1, !noalias !686
  br label %bb.hd

bb.hd:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i, %bb.hb, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i, %bb.gz
  %i.uo = phi i8 [ %i.tk, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %i.un, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %i.tj, %bb.hb ], [ %i.tj, %bb.gz ]
  %i.up = phi i8 [ %i.uh, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %i.tk, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %i.tk, %bb.hb ], [ %i.tk, %bb.gz ]
  %.sroa.06.2.i.i.i.i.i = phi i8 [ %.sroa.01.1.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %i.ty, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %.sroa.06.1.i.i.i.i.i, %bb.hb ], [ %.sroa.06.1.i.i.i.i.i, %bb.gz ]
  %.sroa.01.2.i.i.i.i.i = phi i8 [ %i.ty, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit31.i.i.i.i.i ], [ %.sroa.01.1.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i.i ], [ %.sroa.01.1.i.i.i.i.i, %bb.hb ], [ %.sroa.01.1.i.i.i.i.i, %bb.gz ]
  %.pr.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !noalias !686
  br label %bb.gr

_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i: ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !686
  %i.uq = load atomic i64, ptr @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !692 ; 2 uses
  %i.ur = icmp eq i64 %i.uq, 0
  br i1 %i.ur, label %.split.i.i.i.i, label %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i, !prof !16

.split.i.i.i.i:                                   ; preds = %_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %i.us = invoke noundef i128 @_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc292.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

.noexc292.i:                                      ; preds = %.split.i.i.i.i
  %i.ut = and i128 %i.us, 32768
  %.not80.i.i.i.i = icmp eq i128 %i.ut, 0
  br i1 %.not80.i.i.i.i, label %bb.he, label %.noexc9.i.i.i

_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i: ; preds = %_RINvMs_NtNtNtCsiVHPhtDv1FH_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i.i
  %i.uu = and i64 %i.uq, 32768
  %.not.i.i.i.i = icmp eq i64 %i.uu, 0
  br i1 %.not.i.i.i.i, label %bb.he, label %.noexc9.i.i.i

bb.he:                                            ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i, %.noexc292.i
  %i.uv = zext i8 %i.tk to i64                    ; 3 uses
  %i.uw = icmp samesign ugt i64 %.sroa.5.0.i.i, %i.uv
  br i1 %i.uw, label %bb.hf, label %.noexc8.i.i.i.invoke

bb.hf:                                            ; preds = %bb.he
  %i.ux = zext i8 %i.tj to i64                    ; 3 uses
  %i.uy = icmp samesign ugt i64 %.sroa.5.0.i.i, %i.ux
  br i1 %i.uy, label %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i, label %.noexc8.i.i.i.invoke

.noexc8.i.i.i.invoke:                             ; preds = %bb.hf, %bb.he
  %i.uz = phi i64 [ %i.uv, %bb.he ], [ %i.ux, %bb.hf ]
  %i.va = phi ptr [ @169, %bb.he ], [ @170, %bb.hf ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.uz, i64 noundef range(i64 2, 4) %.sroa.5.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.va) #41
          to label %.noexc8.i.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

.noexc8.i.i.i.cont:                               ; preds = %.noexc8.i.i.i.invoke
  unreachable

_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i: ; preds = %bb.hf
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i274.i, i64 %i.uv
  %i.vc = load i8, ptr %i.vb, align 1, !alias.scope !693, !noalias !607, !noundef !17
  %i.vd = insertelement <16 x i8> poison, i8 %i.vc, i64 0
  %i.ve = shufflevector <16 x i8> %i.vd, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.i.i59.i.i.i.i = call noundef i8 @llvm.umax.i8(i8 %i.tj, i8 %i.tk)
  %i.vf = zext i8 %.sroa.0.0.i.i59.i.i.i.i to i64
  %i.vg = add nuw nsw i64 %i.vf, 16
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i274.i, i64 %i.ux
  %i.vi = load i8, ptr %i.vh, align 1, !alias.scope !693, !noalias !607, !noundef !17
  %i.vj = insertelement <16 x i8> poison, i8 %i.vi, i64 0
  %i.vk = shufflevector <16 x i8> %i.vj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i

.noexc9.i.i.i:                                    ; preds = %_RNvNtNtCs6fkgK6y3Hie_10std_detect6detect5cache4test.exit.i.i.i.i, %.noexc292.i
  invoke fastcc void @_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644avx210packedpairNtB2_6Finder14with_pair_impl(ptr noalias noundef align 32 captures(none) dereferenceable(160) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i274.i, i64 noundef range(i64 1, 4) %.sroa.5.0.i.i, i8 noundef %i.tk, i8 noundef %i.tj)
          to label %.noexc295.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

.noexc295.i:                                      ; preds = %.noexc9.i.i.i
  %.sroa.3.sroa.4.31.copyload.i.i.i.i = load i8, ptr %.sroa.3.sroa.4.31..sroa_idx.i.i.i.i, align 8, !noalias !694
  %.sroa.02.0.copyload3.i.i.i = load <16 x i8>, ptr %i.k, align 32, !noalias !694
  %.sroa.6.0.copyload5.i.i.i = load <16 x i8>, ptr %.sroa.6.0..sroa_idx4.i.i.i, align 16, !noalias !694
  %.sroa.76.0.copyload8.i.i.i = load i64, ptr %.sroa.76.0..sroa_idx7.i.i.i, align 32, !noalias !694
  %.sroa.8.0.copyload10.i.i.i = load i8, ptr %.sroa.8.0..sroa_idx9.i.i.i, align 8, !noalias !694
  %.sroa.9.0.copyload12.i.i.i = load i8, ptr %.sroa.9.0..sroa_idx11.i.i.i, align 1, !noalias !694
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i

_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i: ; preds = %bb.go
  %.sroa.02.0.vec.insert.i.i.i = insertelement <16 x i8> <i8 poison, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef, i8 undef>, i8 %i.sq, i64 0
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i

3:                                                ; preds = %bb.gn
  %4 = load i8, ptr %.sroa.0.0.i274.i, align 1, !alias.scope !695, !noalias !607, !noundef !17
  %5 = zext i8 %4 to i32                          ; 2 uses
  br i1 %.not.i.i273.i, label %.peel.next.i.i.i, label %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i

.peel.next.i.i.i:                                 ; preds = %3
  %6 = select i1 %.not.i2.i.i, i32 68, i32 78
  %i.vl = shl nuw nsw i32 %5, 2
  %i.vm = add nuw nsw i32 %6, %i.vl
  %i.vn = select i1 %.not.i2.i.i, i32 34, i32 39
  %7 = add nuw nsw i32 %i.vm, %i.vn
  br label %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i

_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i: ; preds = %.peel.next.i.i.i, %3
  %.sroa.6.1.lcssa.i.neg.i.i = phi i32 [ -1, %3 ], [ -4, %.peel.next.i.i.i ]
  %.sroa.0.1.lcssa.i.i.i = phi i32 [ %5, %3 ], [ %7, %.peel.next.i.i.i ]
  %8 = ptrtoint ptr %i.so to i64
  %9 = icmp samesign ugt i64 %.sroa.5.0.i.i, %i.sn
  br i1 %9, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i
  %i.vo = load i8, ptr %i.so, align 1, !alias.scope !696, !noalias !607, !noundef !17
  %i.vp = zext i8 %i.vo to i32                    ; 2 uses
  br i1 %.not.i.i273.i, label %.lr.ph.i.i.i.i.1, label %.preheader.i.preheader.i.i.i

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.so, i64 1
  %i.vr = load i8, ptr %i.vq, align 1, !alias.scope !696, !noalias !607, !noundef !17
  %i.vs = shl nuw nsw i32 %i.vp, 1
  %i.vt = zext i8 %i.vr to i32
  %i.vu = add nuw nsw i32 %i.vs, %i.vt
  %i.vv = getelementptr inbounds nuw i8, ptr %i.so, i64 2
  %i.vw = load i8, ptr %i.vv, align 1, !alias.scope !696, !noalias !607, !noundef !17
  %i.vx = shl nuw nsw i32 %i.vu, 1
  %i.vy = zext i8 %i.vw to i32
  %i.vz = add nuw nsw i32 %i.vx, %i.vy
  br label %.preheader.i.preheader.i.i.i

.preheader.i.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i
  %.lcssa2251 = phi i32 [ %i.vp, %.lr.ph.i.i.i.i ], [ %i.vz, %.lr.ph.i.i.i.i.1 ]
  %i.wa = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.qg
  %i.wb = getelementptr inbounds i8, ptr %i.wa, i64 %.sroa.5.0.i.i.neg
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.hi, %.preheader.i.preheader.i.i.i
  %.sroa.013.1.i.i.i.i = phi i32 [ %i.wl, %bb.hi ], [ %.lcssa2251, %.preheader.i.preheader.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.wm, %bb.hi ], [ %i.so, %.preheader.i.preheader.i.i.i ] ; 6 uses
  %i.wc = icmp eq i32 %.sroa.0.1.lcssa.i.i.i, %.sroa.013.1.i.i.i.i
  br i1 %i.wc, label %bb.hh, label %bb.hg, !prof !16

bb.hg:                                            ; preds = %.noexc296.i, %.preheader.i.i.i.i
  %.not.i.i10.i.i = icmp ult ptr %.sroa.0.0.i.i.i.i, %i.wb
  br i1 %.not.i.i10.i.i, label %bb.hi, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

bb.hh:                                            ; preds = %.preheader.i.i.i.i
  %i.wd = invoke noundef zeroext i1 @_RNvNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarp12is_equal_raw(ptr noundef nonnull %.sroa.0.0.i.i.i.i, ptr noundef nonnull readonly %.sroa.0.0.i274.i, i64 noundef range(i64 1, 4) %.sroa.5.0.i.i)
          to label %.noexc296.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

.noexc296.i:                                      ; preds = %bb.hh
  br i1 %i.wd, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281, label %bb.hg

bb.hi:                                            ; preds = %bb.hg
  %i.we = load i8, ptr %.sroa.0.0.i.i.i.i, align 1, !alias.scope !696, !noalias !607, !noundef !17
  %i.wf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %.sroa.5.0.i.i
  %i.wg = load i8, ptr %i.wf, align 1, !alias.scope !696, !noalias !607, !noundef !17
  %i.wh = zext i8 %i.we to i32
  %.neg.i.i = mul nsw i32 %.sroa.6.1.lcssa.i.neg.i.i, %i.wh
  %i.wi = add i32 %.neg.i.i, %.sroa.013.1.i.i.i.i
  %i.wj = shl i32 %i.wi, 1
  %i.wk = zext i8 %i.wg to i32
  %i.wl = add i32 %i.wj, %i.wk
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 1
  br label %.preheader.i.i.i.i

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281: ; preds = %.noexc296.i
  %i.wn = ptrtoint ptr %.sroa.0.0.i.i.i.i to i64
  %i.wo = sub i64 %i.wn, %8
  br label %bb.hj

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i: ; preds = %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i, %.noexc295.i, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i
  %.sroa.16.1.i.i.i = phi ptr [ @_RNvNtNtCsiVHPhtDv1FH_6memchr6memmem8searcher22searcher_kind_one_byte, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ @_RNvNtNtCsiVHPhtDv1FH_6memchr6memmem8searcher18searcher_kind_sse2, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ @_RNvNtNtCsiVHPhtDv1FH_6memchr6memmem8searcher18searcher_kind_avx2, %.noexc295.i ] ; 2 uses
  %.sroa.14.0.i.i.i = phi i32 [ 1, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ 4, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ 4, %.noexc295.i ]
  %.sroa.1215.0.i.i.i = phi i32 [ %i.sr, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.sy, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %i.sy, %.noexc295.i ]
  %.sroa.1014.1.i.i.i = phi i8 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ undef, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.3.sroa.4.31.copyload.i.i.i.i, %.noexc295.i ]
  %.sroa.9.1.i.i.i = phi i8 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.tj, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.9.0.copyload12.i.i.i, %.noexc295.i ]
  %.sroa.8.1.i.i.i = phi i8 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.tk, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.8.0.copyload10.i.i.i, %.noexc295.i ]
  %.sroa.76.1.i.i.i = phi i64 [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.vg, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.76.0.copyload8.i.i.i, %.noexc295.i ]
  %.sroa.6.1.i.i.i = phi <16 x i8> [ undef, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.vk, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.6.0.copyload5.i.i.i, %.noexc295.i ]
  %.sroa.02.1.i.i.i = phi <16 x i8> [ %.sroa.02.0.vec.insert.i.i.i, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.thread.i.i.i.i ], [ %i.ve, %_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl.exit.i.i.i.i ], [ %.sroa.02.0.copyload3.i.i.i, %.noexc295.i ]
  store i64 0, ptr %i.dj, align 32, !alias.scope !682, !noalias !681
  store ptr %.sroa.0.0.i274.i, ptr %.sroa.5.0..sroa_idx1.i.i.i, align 8, !alias.scope !682, !noalias !681
  store i64 %.sroa.5.0.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !alias.scope !682, !noalias !681
  store <16 x i8> %.sroa.02.1.i.i.i, ptr %i.m, align 32, !alias.scope !682, !noalias !681
  store <16 x i8> %.sroa.6.1.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 16, !alias.scope !682, !noalias !681
  store i64 %.sroa.76.1.i.i.i, ptr %.sroa.76.0..sroa_idx.i.i.i, align 32, !alias.scope !682, !noalias !681
  store i8 %.sroa.8.1.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !alias.scope !682, !noalias !681
  store i8 %.sroa.9.1.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 1, !alias.scope !682, !noalias !681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.10.0..sroa_idx.i.i.i, ptr noundef nonnull align 2 dereferenceable(30) %i.di, i64 30, i1 false), !noalias !697
  store i8 %.sroa.1014.1.i.i.i, ptr %.sroa.1014.0..sroa_idx.i.i.i, align 8, !alias.scope !682, !noalias !681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(87) %.sroa.11.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(87) %i.dh, i64 87, i1 false), !noalias !697
  store i32 %.sroa.1215.0.i.i.i, ptr %.sroa.1215.0..sroa_idx.i.i.i, align 32, !alias.scope !682, !noalias !681
  store i32 %.sroa.14.0.i.i.i, ptr %.sroa.14.0..sroa_idx.i.i.i, align 4, !alias.scope !682, !noalias !681
  store ptr %.sroa.16.1.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i, align 8, !alias.scope !682, !noalias !681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !681
  store i32 1, ptr %i.l, align 4, !noalias !681
  store i32 0, ptr %i.dk, align 4, !noalias !681
  %i.wp = invoke { i64, i64 } %.sroa.16.1.i.i.i(ptr noalias noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(256) %i.m, ptr noalias noundef nonnull align 4 dereferenceable(8) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.so, i64 noundef range(i64 0, -9223372036854775808) %i.sn, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i274.i, i64 noundef range(i64 1, 4) %.sroa.5.0.i.i)
          to label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !474 ; 2 uses

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i:   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsiVHPhtDv1FH_6memchr6memmem6FinderECsb6FLkjZuKG_18ruff_python_parser.exit15.i.i
  %i.wq = extractvalue { i64, i64 } %i.wp, 1
  %i.wr = extractvalue { i64, i64 } %i.wp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !681
  %i.ws = trunc nuw i64 %i.wr to i1
  br i1 %i.ws, label %bb.hj, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

bb.hj:                                            ; preds = %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i
  %.sroa.3.0.i.pn.i.i285 = phi i64 [ %i.wo, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread281 ], [ %i.wq, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i ] ; 2 uses
  %i.wt = icmp ugt i64 %.sroa.3.0.i.pn.i.i285, 4294967295
  %i.wu = shl nuw i64 %.sroa.3.0.i.pn.i.i285, 32
  %.sroa.081.0.insert.insert.i = select i1 %i.wt, i64 513, i64 %i.wu ; 2 uses
  %i.wv = trunc i64 %.sroa.081.0.insert.insert.i to i1
  br i1 %i.wv, label %bb.hk, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i, !prof !16

bb.hk:                                            ; preds = %bb.hj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !698
  br label %.invoke2153

.invoke2153:                                      ; preds = %.loopexit1225, %.noexc4.i.i.i, %.noexc5.i.i.i, %bb.hk
  %.sink = phi ptr [ %i.p, %.loopexit1225 ], [ %i.f, %.noexc4.i.i.i ], [ %i.g, %.noexc5.i.i.i ], [ %i.o, %bb.hk ] ; 2 uses
  %i.ww = phi ptr [ @112, %.loopexit1225 ], [ @10, %.noexc4.i.i.i ], [ @9, %.noexc5.i.i.i ], [ @110, %bb.hk ]
  store i8 2, ptr %.sink, align 1, !noalias !608
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ww) #41
          to label %.cont2154 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

.cont2154:                                        ; preds = %.invoke2153
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i: ; preds = %bb.hj
  %.sroa.6.0.extract.shift.i126.i = lshr i64 %.sroa.081.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i127.i = trunc nuw i64 %.sroa.6.0.extract.shift.i126.i to i32
  %i.wx = add i32 %.sroa.0.0.i266.i, %.sroa.6.0.extract.trunc.i127.i ; 3 uses
  %i.wy = add i32 %i.wx, %..i55                   ; 2 uses
  %.not113.i = icmp ugt i32 %i.wx, %i.wy
  br i1 %.not113.i, label %.loopexit1226.invoke, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i, !prof !16

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCsb6FLkjZuKG_18ruff_python_parser.exit131.i
  call void @llvm.experimental.noalias.scope.decl(metadata !699), !noalias !603
  %i.wz = load i8, ptr %i.dc, align 4, !alias.scope !700, !noalias !603, !noundef !17 ; 3 uses
  %i.xa = load i8, ptr %i.dd, align 1, !alias.scope !700, !noalias !603, !noundef !17 ; 2 uses
  %i.xb = icmp eq i8 %i.wz, 3
  %i.xc = icmp ult i8 %i.wz, 3
  %i.xd = icmp ult i8 %i.xa, 12
  %spec.select9.i.i.i = select i1 %i.xb, i1 %i.xd, i1 %i.xc
  br i1 %spec.select9.i.i.i, label %bb.hl, label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

bb.hl:                                            ; preds = %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !701), !noalias !603
  %i.xe = load i64, ptr %i.df, align 8, !alias.scope !702, !noalias !603, !noundef !17 ; 3 uses
  %i.xf = load i64, ptr %i.de, align 8, !range !28, !alias.scope !702, !noalias !603, !noundef !17
  %i.xg = icmp eq i64 %i.xe, %i.xf
  br i1 %i.xg, label %bb.hm, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i

bb.hm:                                            ; preds = %bb.hl
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i: ; preds = %bb.hm, %bb.hl
  %i.xh = load ptr, ptr %i.dg, align 8, !alias.scope !702, !noalias !603, !nonnull !17, !noundef !17
  %i.xi = getelementptr inbounds nuw [40 x i8], ptr %i.xh, i64 %i.xe ; 6 uses
  store i8 12, ptr %i.xi, align 8, !noalias !703
  %.sroa.5216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xi, i64 1
  store i8 3, ptr %.sroa.5216.0..sroa_idx, align 1, !noalias !703
  %.sroa.4.0..sroa_idx.i.i56 = getelementptr inbounds nuw i8, ptr %i.xi, i64 24
  store i32 %i.wx, ptr %.sroa.4.0..sroa_idx.i.i56, align 8, !noalias !704
  %.sroa.5.0..sroa_idx.i.i57 = getelementptr inbounds nuw i8, ptr %i.xi, i64 28
  store i32 %i.wy, ptr %.sroa.5.0..sroa_idx.i.i57, align 4, !noalias !704
  %.sroa.6.0..sroa_idx.i.i58 = getelementptr inbounds nuw i8, ptr %i.xi, i64 32
  store i8 %i.wz, ptr %.sroa.6.0..sroa_idx.i.i58, align 8, !noalias !704
  %.sroa.7.0..sroa_idx.i.i59 = getelementptr inbounds nuw i8, ptr %i.xi, i64 33
  store i8 %i.xa, ptr %.sroa.7.0..sroa_idx.i.i59, align 1, !noalias !704
  %i.xj = add i64 %i.xe, 1
  store i64 %i.xj, ptr %i.df, align 8, !alias.scope !702, !noalias !603
  br label %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread

_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread: ; preds = %bb.hg, %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE8push_mutBI_.exit.i.i, %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch3all9rabinkarpNtB2_6Finder3new.exit.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !705), !noalias !603
  %.val.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !706, !noalias !603, !nonnull !17, !noundef !17 ; 7 uses
  %.val1.i.i = load i64, ptr %i.cf, align 8, !alias.scope !706, !noalias !603, !noundef !17 ; 11 uses
  %.idx = mul nuw nsw i64 %.val1.i.i, 12
  %i.xk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx ; 2 uses
  %.not.i.i299.i2142 = icmp eq i64 %.val1.i.i, 0
  br i1 %.not.i.i299.i2142, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

bb.hn:                                            ; preds = %.lr.ph
  %.not.i.i299.i = icmp eq ptr %.val.i.i, %i.xm
  br i1 %.not.i.i299.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.hn
  %.sroa.03.0.i.i.i.i2143 = phi i64 [ %i.xn, %bb.hn ], [ %.val1.i.i, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.xl = phi ptr [ %i.xm, %bb.hn ], [ %i.xk, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ]
  %i.xm = getelementptr inbounds i8, ptr %i.xl, i64 -12 ; 3 uses
  %i.xn = add i64 %.sroa.03.0.i.i.i.i2143, -1     ; 3 uses
  %.val9.i.i.i.i = load i32, ptr %i.xm, align 4, !noalias !707, !noundef !17
  %i.xo = icmp eq i32 %.val9.i.i.i.i, %.sroa.0.0.i266.i
  br i1 %i.xo, label %bb.ho, label %bb.hn

bb.ho:                                            ; preds = %.lr.ph
  %i.xp = icmp ult i64 %i.xn, %.val1.i.i
  call void @llvm.assume(i1 %i.xp), !noalias !603
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i: ; preds = %bb.hn, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread, %bb.ho
  %.not.i.i299.i1810 = phi i1 [ false, %bb.ho ], [ true, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ true, %bb.hn ]
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.xn, %bb.ho ], [ undef, %_RNvNtCsiVHPhtDv1FH_6memchr6memmem4find.exit.i.thread ], [ undef, %bb.hn ] ; 4 uses
  %i.xq = icmp eq i64 %.val1.i.i, 0
  br i1 %i.xq, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2146

bb.hp:                                            ; preds = %.lr.ph2146
  %i.xr = getelementptr inbounds i8, ptr %i.xt, i64 -12 ; 2 uses
  %i.xs = icmp eq ptr %.val.i.i, %i.xr
  br i1 %i.xs, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %.lr.ph2146

.lr.ph2146:                                       ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %bb.hp
  %.sroa.03.0.i7.i.i.i2145 = phi i64 [ %i.xu, %bb.hp ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 4 uses
  %i.xt = phi ptr [ %i.xr, %bb.hp ], [ %i.xk, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ] ; 2 uses
  %i.xu = add i64 %.sroa.03.0.i7.i.i.i2145, -1    ; 2 uses
  %i.xv = getelementptr i8, ptr %i.xt, i64 -8
  %.val9.i8.i.i.i = load i32, ptr %i.xv, align 4, !noalias !708, !noundef !17
  %i.xw = icmp eq i32 %.val9.i8.i.i.i, %.sroa.11.0.i
  br i1 %i.xw, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i, label %bb.hp

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i: ; preds = %.lr.ph2146
  %i.xx = icmp ult i64 %i.xu, %.val1.i.i
  call void @llvm.assume(i1 %i.xx), !noalias !603
  br i1 %.not.i.i299.i1810, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i, label %bb.hq

bb.hq:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
  %i.xy = icmp ult i64 %.sroa.03.0.i7.i.i.i2145, %.sroa.3.0.i.i.i.i
  br i1 %i.xy, label %bb.hr, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, !prof !16

bb.hr:                                            ; preds = %bb.hq
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.3.0.i.i.i.i, i64 noundef %.sroa.03.0.i7.i.i.i2145, i64 noundef range(i64 0, 768614336404564651) %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #41
          to label %.noexc301.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

.noexc301.i:                                      ; preds = %bb.hr
  unreachable

_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i: ; preds = %bb.hq
  %i.xz = sub nuw nsw i64 %.sroa.03.0.i7.i.i.i2145, %.sroa.3.0.i.i.i.i
  %i.ya = getelementptr inbounds nuw [12 x i8], ptr %.val.i.i, i64 %.sroa.3.0.i.i.i.i
  br label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i: ; preds = %bb.hp, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i
  %.pn11.i.i.i = phi ptr [ %i.ya, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %.val.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i ], [ %.val.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ], [ %.val.i.i, %bb.hp ] ; 2 uses
  %.pn9.i.i.i = phi i64 [ %i.xz, %_RNvXs8_NtNtCs4NRVxsYgnAr_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenE5indexCsb6FLkjZuKG_18ruff_python_parser.exit.i.i.i ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_ranges_0EB2y_.exit.i.i.i ], [ %.val1.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENtNtNtNtBb_4iter6traits8iterator8Iterator9rpositionNCNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2w_11TokenSource8in_range0EB2y_.exit.i.i.i ], [ %.val1.i.i, %bb.hp ]
  %i.yb = getelementptr inbounds nuw [12 x i8], ptr %.pn11.i.i.i, i64 %.pn9.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !709), !noalias !603
  br label %bb.hs

bb.hs:                                            ; preds = %.noexc302.i, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i
  %.sroa.0.0.i300.i = phi i1 [ %.sroa.022.0.i.lcssa840, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i ], [ true, %.noexc302.i ]
  %i.yc = phi ptr [ %.pn11.i.i.i, %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource8in_range.exit.i.i ], [ %i.yf, %.noexc302.i ]
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hu, %bb.hs
  %i.yd = phi ptr [ %i.yf, %bb.hu ], [ %i.yc, %bb.hs ] ; 4 uses
  %i.ye = icmp eq ptr %i.yd, %i.yb
  br i1 %i.ye, label %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 12 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 10
  %i.yh = load i8, ptr %i.yg, align 2, !range !24, !noalias !710, !noundef !17
  %i.yi = icmp eq i8 %i.yh, 12
  br i1 %i.yi, label %bb.hv, label %bb.ht

bb.hv:                                            ; preds = %bb.hu
  %i.yj = load <2 x i32>, ptr %i.yd, align 4, !noalias !711
  %i.yk = load i8, ptr %i.dc, align 4, !alias.scope !706, !noalias !712, !noundef !17
  %i.yl = load i8, ptr %i.dd, align 1, !alias.scope !706, !noalias !712, !noundef !17
  %i.ym = load i64, ptr %i.df, align 8, !alias.scope !713, !noalias !603, !noundef !17 ; 5 uses
  %i.yn = icmp ult i64 %i.ym, 230584300921369396
  call void @llvm.assume(i1 %i.yn), !noalias !603
  %i.yo = load i64, ptr %i.de, align 8, !range !28, !alias.scope !713, !noalias !603, !noundef !17
  %i.yp = icmp eq i64 %i.ym, %i.yo
  br i1 %i.yp, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i, label %.noexc302.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i: ; preds = %bb.hv
  invoke fastcc void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.de, i64 noundef %i.ym, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 40)
          to label %.noexc302.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

.noexc302.i:                                      ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsb6FLkjZuKG_18ruff_python_parser5error22UnsupportedSyntaxErrorE7reserveBH_.exit.i.i.i, %bb.hv
  %i.yq = load ptr, ptr %i.dg, align 8, !alias.scope !713, !noalias !603, !nonnull !17, !noundef !17
  %i.yr = getelementptr inbounds nuw [40 x i8], ptr %i.yq, i64 %i.ym ; 5 uses
  store i8 12, ptr %i.yr, align 8, !noalias !714
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yr, i64 1
  store i8 1, ptr %.sroa.415.0..sroa_idx.i.i.i, align 1, !noalias !714
  %.sroa.617.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yr, i64 24
  store <2 x i32> %i.yj, ptr %.sroa.617.0..sroa_idx.i.i.i, align 8, !noalias !714
  %.sroa.819.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yr, i64 32
  store i8 %i.yk, ptr %.sroa.819.0..sroa_idx.i.i.i, align 8, !noalias !714
  %.sroa.920.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.yr, i64 33
  store i8 %i.yl, ptr %.sroa.920.0..sroa_idx.i.i.i, align 1, !noalias !714
  %i.ys = add nuw nsw i64 %i.ym, 1
  store i64 %i.ys, ptr %i.df, align 8, !alias.scope !713, !noalias !603
  br label %bb.hs

_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i: ; preds = %bb.ht
  br i1 %.sroa.0.0.i300.i, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i, label %bb.hw

bb.hw:                                            ; preds = %_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser10expressionNtB4_6Parser22check_fstring_comments.exit.i
  %i.yt = load ptr, ptr %i.bl, align 8, !alias.scope !606, !noalias !603, !nonnull !17, !noundef !17 ; 8 uses
  %i.yu = load i64, ptr %i.bm, align 8, !alias.scope !606, !noalias !603, !noundef !17 ; 8 uses
  br i1 %i.qh, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %.not5.i304.i = icmp ugt i64 %i.yu, %i.qf
  br i1 %.not5.i304.i, label %bb.hz, label %.split.i305.i

bb.hy:                                            ; preds = %bb.hz, %.split.i305.i, %bb.hw
  br i1 %i.qi, label %bb.ic, label %bb.ia

.split.i305.i:                                    ; preds = %bb.hx
  %i.yv = icmp eq i64 %i.yu, %i.qf
  br i1 %i.yv, label %bb.hy, label %.invoke2151

bb.hz:                                            ; preds = %bb.hx
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.qf
  %i.yx = load i8, ptr %i.yw, align 1, !alias.scope !715, !noalias !607, !noundef !17
  %i.yy = icmp sgt i8 %i.yx, -65
  br i1 %i.yy, label %bb.hy, label %.invoke2151

bb.ia:                                            ; preds = %bb.hy
  %.not6.i308.i = icmp ugt i64 %i.yu, %i.qg
  br i1 %.not6.i308.i, label %bb.ib, label %.split7.i309.i

.split7.i309.i:                                   ; preds = %bb.ia
  %i.yz = icmp eq i64 %i.yu, %i.qg
  br i1 %i.yz, label %bb.ic, label %.invoke2151

bb.ib:                                            ; preds = %bb.ia
  %i.za = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.qg
  %i.zb = load i8, ptr %i.za, align 1, !alias.scope !715, !noalias !607, !noundef !17
  %i.zc = icmp sgt i8 %i.zb, -65
  br i1 %i.zc, label %bb.ic, label %.invoke2151

bb.ic:                                            ; preds = %bb.ib, %.split7.i309.i, %bb.hy
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.qf ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yt, i64 %i.qg
  %i.zf = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr11memchr2_raw2FN monotonic, align 8, !noalias !716, !nonnull !17, !noundef !17
  %i.zg = invoke { i64, ptr } %i.zf(i8 noundef 10, i8 noundef 13, ptr noundef nonnull readonly %i.zd, ptr noundef nonnull readonly %i.ze)
          to label %_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !506 ; 2 uses

_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i: ; preds = %bb.ic
  %i.zh = extractvalue { i64, ptr } %i.zg, 0
  %i.zi = trunc nuw i64 %i.zh to i1
  br i1 %i.zi, label %bb.id, label %_RINvNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr7memchr20ECsb6FLkjZuKG_18ruff_python_parser.exit.i

.invoke2151:                                      ; preds = %.split.i305.i, %.split7.i309.i, %bb.hz, %bb.ib, %.split.i281.i, %.split7.i285.i, %bb.gk, %bb.gm, %.split.i.i, %.split7.i.i, %bb.gb, %bb.gd
  %i.zj = phi ptr [ %i.sd, %.split.i281.i ], [ %i.qd, %.split.i.i ], [ %i.qd, %bb.gd ], [ %i.qd, %bb.gb ], [ %i.qd, %.split7.i.i ], [ %i.sd, %bb.gm ], [ %i.sd, %bb.gk ], [ %i.sd, %.split7.i285.i ], [ %i.yt, %bb.ib ], [ %i.yt, %bb.hz ], [ %i.yt, %.split7.i309.i ], [ %i.yt, %.split.i305.i ]
  %i.zk = phi i64 [ %i.se, %.split.i281.i ], [ %i.qe, %.split.i.i ], [ %i.qe, %bb.gd ], [ %i.qe, %bb.gb ], [ %i.qe, %.split7.i.i ], [ %i.se, %bb.gm ], [ %i.se, %bb.gk ], [ %i.se, %.split7.i285.i ], [ %i.yu, %bb.ib ], [ %i.yu, %bb.hz ], [ %i.yu, %.split7.i309.i ], [ %i.yu, %.split.i305.i ]
  %i.zl = phi ptr [ @109, %.split.i281.i ], [ @108, %.split.i.i ], [ @108, %bb.gd ], [ @108, %bb.gb ], [ @108, %.split7.i.i ], [ @109, %bb.gm ], [ @109, %bb.gk ], [ @109, %.split7.i285.i ], [ @111, %bb.ib ], [ @111, %bb.hz ], [ @111, %.split7.i309.i ], [ @111, %.split.i305.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.zj, i64 noundef %i.zk, i64 noundef %i.qf, i64 noundef %i.qg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.zl) #41
          to label %.cont2152 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !607, !inline_history !315

.cont2152:                                        ; preds = %.invoke2151
  unreachable

bb.id:                                            ; preds = %_RNCNvNtCsiVHPhtDv1FH_6memchr6memchr7memchr20Csb6FLkjZuKG_18ruff_python_parser.exit.i
  %i.zm = extractvalue { i64, ptr } %i.zg, 1
  %i.zn = ptrtoint ptr %i.zm to i64
  %i.zo = ptrtoint ptr %i.zd to i64
  %i.zp = sub i64 %i.zn, %i.zo                    ; 2 uses
  %i.zq = icmp sgt i64 %i.zp, -1
  call void @llvm.assume(i1 %i.zq), !noalias !603
  %.not.i.i = icmp samesign ult i64 %i.zp, %i.sn
  call void @llvm.assume(i1 %.not.i.i), !noalias !603
  %.not115.i = icmp eq i32 %.sroa.0.0.i266.i, -1
  br i1 %.not115.i, label %.loopexit1226.invoke, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i, !prof !16

_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i313.i: ; preds = %bb.id
  %i.zr = add nuw i32 %.sroa.0.0.i266.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !717), !noalias !603
  %i.zs = load i8, ptr %i.dc, align 4, !alias.scope !718, !noalias !603, !noundef !17 ; 3 uses
  %i.zt = load i8, ptr %i.dd, align 1, !alias.scope !718, !noalias !603, !noundef !17 ; 2 uses
end_hunk_0
